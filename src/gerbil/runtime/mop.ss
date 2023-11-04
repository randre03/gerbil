;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil MOP
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util" "c3")

;; Gerbil rtd [runtime type descriptor]:
;;  {##struct-t id super fields name plist ctor slots methods}
;;  {##class-t  id super fields name plist ctor slots methods}
;; NB: the "plist" field is actually an alist!!! TODO: clean that up at some point.
;;
;; Gambit structure rtd:
;;  (define-type type
;;    (id      unprintable: equality-test:)
;;    (name    unprintable: equality-skip:)
;;    (flags   unprintable: equality-skip:)
;;    (super   unprintable: equality-skip:)
;;    (fields  unprintable: equality-skip:))
;;
;; Gerbil rtd on gambit
;; ##structure ##type-type
;;  1  ##type-id                                  :: Symbol (sometimes uninterned)
;;  2  ##type-name                                :: Symbol
;;  3  ##type-flags                               :: Fixnum
;;  4  ##type-super                               :: (OrFalse StructTypeDescriptor)
;;  5  ##type-fields                              :: (Vector [Symbol ??? ???] ...)
;;  6                 type-descriptor-mixin       :: (List TypeDescriptor)
;;  7                 type-descriptor-fields      :: Fixnum
;;  8                 type-descriptor-plist       :: AList (!)
;;  9                 type-descriptor-ctor        :: Symbol
;; 10                 type-descriptor-slots       :: (Table (Or Symbol Keyword) -> Fixnum)
;; 11                 type-descriptor-methods     :: (Table Symbol -> Function)
;;
;; Standard "plist" keys:
;; slots:         (List Symbol)  list of all non-struct slots in order
;; fields:        (List Symbol)  list of all struct fields in order
;; direct-slots:  (List Symbol)  list of directly defines slots in order
;; final:         Bool           is this class final?
;; transparent:   Bool           is this class transparent?

(def (type=? x y)
  (eq? (##type-id x) (##type-id y)))

(def (type-descriptor? klass)
  (and (##type? klass)
       (eq? (##structure-length klass) 12)))

(def (struct-type? klass)
  (and (type-descriptor? klass)
       (not (type-descriptor-mixin klass))))

(def (class-type? klass)
  (and (type-descriptor? klass)
       (type-descriptor-mixin klass)
       #t))

;;; meta constructor: create type descriptors for struct or class types
(def (make-type-descriptor type-id type-name type-super
                           rtd-mixin rtd-fields rtd-plist
                           rtd-ctor rtd-slots rtd-methods)

  (def (put-props! ht key)
    (def (put-plist! ht key plist)
      (cond
       ((assgetq key plist)
        => (lambda (lst)
             (for-each (lambda (id) (hash-put! ht id #t)) lst)))))

    (put-plist! ht key rtd-plist)
    (when rtd-mixin
      (for-each (lambda (klass)
                  (when (type-descriptor-mixin klass) ; ignore structs
                    (let (plist (type-descriptor-plist klass))
                      (if (assgetq transparent: plist)
                        (put-plist! ht slots: plist)
                        (put-plist! ht key plist)))))
                rtd-mixin)))

  (let* ((transparent? (assgetq transparent: rtd-plist))
         (field-names
          (cond
           ((assq fields: rtd-plist) => cdr)
           (else '())))
         (field-names
          (cond
           ((assq slots: rtd-plist)
            => (lambda (slots)
                 (append field-names (cdr slots))))
           (else field-names)))
         (_
          (unless (fx= rtd-fields (length field-names))
            (error "Bad field descriptor; length mismatch" type-id rtd-fields field-names)))
         (canonical-fields
          (if type-super
            (list-tail field-names (type-descriptor-fields type-super))
            field-names))
         (printable
          (if transparent?
            #f                          ; all printable
            (let (ht (make-hash-table-eq))
              (put-props! ht print:)
              ht)))
         (equality
          (if transparent?
            #f                          ; all equality comparable
            (let (ht (make-hash-table-eq))
              (put-props! ht equal:)
              ht)))
         (field-info
          (let recur ((rest canonical-fields))
            (match rest
              ([id . rest]
               (let (flags
                     (if transparent? 0
                         (##fxior (if (hash-get printable id) 0 1)
                                  (if (hash-get equality id)  0 4))))
                 (cons* id flags #f (recur rest))))
              (else '()))))
         (opaque?
          (if (or transparent? (assq equal: rtd-plist))
            (if type-super
              (##fx= (##fxand (##type-flags type-super) 1) 1)
              #f)
            #t)))
    (##structure ##type-type
                 type-id type-name
                 (+ 24 (if opaque? 1 0))
                 type-super
                 (list->vector field-info)
                 rtd-mixin rtd-fields rtd-plist rtd-ctor
                 rtd-slots rtd-methods)))

;;; type descriptor utilities
(def (make-struct-type-descriptor id name super fields plist ctor)
  (make-type-descriptor id name super #f fields plist ctor #f #f))

(def (make-class-type-descriptor id name super mixin fields plist ctor slots)
  (make-type-descriptor id name super mixin fields plist ctor slots #f))

(def (type-descriptor-mixin klass)
  (##vector-ref klass 6))
(def (type-descriptor-fields klass)
  (##vector-ref klass 7))
(def (type-descriptor-plist klass)
  (##vector-ref klass 8))
(def (type-descriptor-ctor klass)
  (##vector-ref klass 9))
(def (type-descriptor-slots klass)
  (##vector-ref klass 10))
(def (type-descriptor-methods klass)
  (##vector-ref klass 11))
(def (type-descriptor-methods-set! klass ht)
  (##vector-set! klass 11 ht))

(def (type-descriptor-sealed? klass)
  (##fxbit-set? 20 (##type-flags klass)))
(def (type-descriptor-seal! klass)
  (##vector-set! klass 3 (##fxior (##fxarithmetic-shift 1 20) (##type-flags klass))))

;;; struct types
(def (make-struct-type id super fields name plist ctor (field-names #f))
  (when (and super (not (struct-type? super)))
    (error "Illegal super type; not a struct-type" super))
  (when (and super (assgetq final: (type-descriptor-plist super)))
    (error "Cannot extend final struct" super))

  (let* ((super-fields
          (if super (type-descriptor-fields super) 0))
         (std-fields
          (fx+ fields super-fields))
         (std-field-names
          (let* ((super-fields
                  (if super
                    (assgetq fields: (type-descriptor-plist super))
                    '()))
                 (field-names
                  (or field-names (make-list fields ':))))
            (append super-fields field-names)))
         (_
          (unless (##fx= std-fields (length std-field-names))
            (error "Bad field specification; length mismatch" id std-fields std-field-names)))
         (std-plist
          (cons (cons fields: std-field-names) plist))
         (ctor
          (or ctor (and super (type-descriptor-ctor super)))))
    (make-struct-type-descriptor id name super std-fields std-plist ctor)))

(def (make-struct-predicate klass)
  (let (tid (##type-id klass))
    (if (assgetq final: (type-descriptor-plist klass))
      (lambda (obj)
        (##structure-direct-instance-of? obj tid))
      (lambda (obj)
        (##structure-instance-of? obj tid)))))

(def (make-struct-field-accessor klass field)
  (let (off (##fx+ (struct-field-offset klass field) 1))
    (lambda (obj)
      (##structure-ref obj off klass #f))))

(def (make-struct-field-mutator klass field)
  (let (off (##fx+ (struct-field-offset klass field) 1))
    (lambda (obj val)
      (##structure-set! obj val off klass #f))))

(def (make-struct-field-unchecked-accessor klass field)
  (let (off (##fx+ (struct-field-offset klass field) 1))
    (lambda (obj)
      (##unchecked-structure-ref obj off klass #f))))

(def (make-struct-field-unchecked-mutator klass field)
  (let (off (##fx+ (struct-field-offset klass field) 1))
    (lambda (obj val)
      (##unchecked-structure-set! obj val off klass #f))))

(def (struct-field-offset klass field)
  (##fx+ field
         (cond
          ((##type-super klass) => type-descriptor-fields)
          (else 0))))

(def (struct-field-ref klass obj off)
  (##structure-ref obj (##fx+ off 1) klass #f))

(def (struct-field-set! klass obj off val)
  (##structure-set! obj val (##fx+ off 1) klass #f))

;; Does xklass inherit from struct klass ?
;; : StructTypeDescriptor TypeDescriptor -> Bool
(def (struct-subtype? klass xklass)
  (let (klass-t (##type-id klass))
    (let lp ((next xklass))
      (cond
       ((not next)
        #f)
       ((eq? klass-t (##type-id next))
        #t)
       (else
        (lp (##type-super next)))))))

;; Which is the most specific struct class if any that klass is or inherits from?
;; : TypeDescriptor -> (OrFalse StructTypeDescriptor)
(def (base-struct/1 klass)
  (cond
   ((struct-type? klass) klass)
   ((class-type? klass) (##type-super klass))
   ((not klass) #f)
   (else (error "Not a class or false" klass))))

;; Which is the most specific struct class if any that both klass1 and klass2 are or inherit from?
;; : TypeDescriptor TypeDescriptor -> (OrFalse StructTypeDescriptor)
(def (base-struct/2 klass1 klass2)
  (def s1 (base-struct/1 klass1))
  (def s2 (base-struct/1 klass2))
  (cond
   ((or (not s1) (and s2 (struct-subtype? s1 s2))) s2)
   ((or (not s2) (and s1 (struct-subtype? s2 s1))) s1)
   (else (error "Bad mixin: incompatible struct bases" klass1 klass2 s1 s2))))

;; Which is the most specific struct class if any that all argument classes are or inherit from?
;; : TypeDescriptor ... -> (OrFalse StructTypeDescriptor)
(def (base-struct . all-supers)
  (match all-supers
    ([] #f)
    ([x] (base-struct/1 x))
    ([x y] (base-struct/2 x y))
    ([x y ...] (foldr base-struct/2 x y))))

;; Find the constructor method name for the TypeDescriptor
;; : (List TypeDescriptor) -> Symbol
(def (find-super-ctor super)
  (let lp ((rest super) (ctor #f))
    (match rest
      ([hd . rest]
       (cond
        ((type-descriptor-ctor hd)
         => (lambda (xctor)
              (if (or (not ctor) (eq? ctor xctor))
                (lp rest xctor)
                (error "Conflicting implicit constructors" ctor xctor))))
        (else (lp rest ctor))))
      (else ctor))))

;; Given a struct super class (or false if none),
;; a list of super-classes, and
;; a list of slots,
;; return the total number of fields and slots
;; a list of inherited struct fields in offset order,
;; a table mapping symbol and keyword names to offset, and
;; a list of non-struct slots.
;; : (OrFalse StructTypeDescriptor) (List TypeDescriptor) (List Symbol) \
;; -> Fixnum (List Symbol) (Table (Or Symbol Keyword) -> Fixnum) (List Symbol)
(def (compute-class-slots std-super mixins slots)
  (let* ((std-fields (if std-super (type-descriptor-fields std-super) 0))
         (field-list (if std-super (assgetq fields: (type-descriptor-plist std-super)) []))
         (slot-table (make-hash-table-eq))
         (r-slots [])
         (process-slot
          (lambda (slot)
            (cond
             ((memq slot field-list) (void)) ;; ignore if already a field
             ((hash-key? slot-table slot) (void)) ;; ignore if already a slot
             (else
              (set! r-slots (cons slot r-slots))
              (hash-put! slot-table slot std-fields)
              (hash-put! slot-table (symbol->keyword slot) std-fields)
              (set! std-fields (fx1+ std-fields))))))
         (process-slots (cut for-each process-slot <>)))
    (for-each (lambda (mixin) (process-slots
                          (assgetq direct-slots: (type-descriptor-plist mixin) [])))
              (reverse mixins))
    (process-slots slots)
    (values std-fields field-list slot-table (reverse r-slots))))

;;; ClassTypeDescriptor
;; : Symbol (List TypeDescriptor) (List Symbol) Symbol PList Constructor???? -> ClassTypeDescriptor
(def (make-class-type id super slots name plist ctor)
  (cond
   ((find (lambda (klass) (not (type-descriptor? klass))) super)
    => (cut error "Illegal super class; not a type descriptor" <>))
   ((find (lambda (klass) (assgetq final: (type-descriptor-plist klass))) super)
    => (cut error "Cannot extend final class" <>)))

  (let*-values (((std-super) (apply base-struct super)) ;; super struct, if any
                ((std-mixin) (class-linearize-mixins super))
                ((std-fields field-list std-slots std-slot-list)
                 (compute-class-slots std-super std-mixin slots))
                ((std-plist)
                 [[slots: . std-slot-list]
                  (if std-super [[fields: . field-list]] [])...
                  [direct-slots: . slots]
                  plist ...])
                ((std-ctor) (or ctor (find-super-ctor super))))

    (make-class-type-descriptor id name std-super std-mixin std-fields std-plist std-ctor std-slots)))

(def (struct-precedence-list strukt)
  (cons strukt
        (let (super (##type-super strukt))
          (if super (struct-precedence-list super) []))))

(def (class-precedence-list klass)
  (let (mixins (type-descriptor-mixin klass))
    (if mixins (cons klass mixins) (struct-precedence-list klass))))

(def (class-linearize-mixins klass-lst)
  (c3-linearize [] klass-lst class-precedence-list eqv? ##type-name))

(def (make-class-predicate klass)
  (if (assgetq final: (type-descriptor-plist klass))
    (lambda (obj)
      (direct-class-instance? klass obj))
    (lambda (obj)
      (class-instance? klass obj))))

(def (make-class-slot-accessor klass slot)
  (lambda (obj)
    (slot-ref obj slot)))

(def (make-class-slot-mutator klass slot)
  (lambda (obj val)
    (slot-set! obj slot val)))

(def (make-class-slot-unchecked-accessor klass slot)
  (lambda (obj)
    (unchecked-slot-ref obj slot)))

(def (make-class-slot-unchecked-mutator klass slot)
  (lambda (obj val)
    (unchecked-slot-set! obj slot val)))

(def (class-slot-offset klass slot)
  (cond
   ((type-descriptor-slots klass)
    => (lambda (slots) (hash-get slots slot)))
   (else #f)))

(def (class-slot-ref klass obj slot)
  (if (class-instance? klass obj)
    (let (off (class-slot-offset (object-type obj) slot))
      (##unchecked-structure-ref obj (##fx+ off 1) klass #f))
    (error "not an instance" klass obj)))

(def (class-slot-set! klass obj slot val)
  (if (class-instance? klass obj)
    (let (off (class-slot-offset (object-type obj) slot))
      (##unchecked-structure-set! obj val (##fx+ off 1) klass #f))
    (error "not an instance" klass obj)))

(def (class-subtype? klass xklass)
  (let (klass-t (##type-id klass))
    (cond
     ((eq? klass-t (##type-id xklass)))
     ((type-descriptor-mixin xklass)
      => (lambda (mixin)
           (and (find (lambda (xklass) (eq? klass-t (##type-id xklass)))
                      mixin)
                #t)))
     (else #f))))

;;; generic object utilities
(def object?
  ##structure?)
(def object-type
  ##structure-type)

(def (direct-instance? klass obj)
  (##structure-direct-instance-of? obj (##type-id klass)))

(def (struct-instance? klass obj)
  (##structure-instance-of? obj (##type-id klass)))

(def direct-struct-instance?
  direct-instance?)

(def (class-instance? klass obj)
  (and (object? obj)
       (let ((klass-id (##type-id klass))
             (type (object-type obj)))
         (and (type-descriptor? type)
              (or (eq? (##type-id type) klass-id)
                  (cond
                   ((type-descriptor-mixin type)
                    => (lambda (mixin)
                         (ormap (lambda (type) (eq? (##type-id type) klass-id))
                                mixin)))
                   (else #f)))))))

(def direct-class-instance?
  direct-instance?)

(def (make-object klass k)
  (let (obj (##make-vector (##fx+ k 1) #f))
    (##vector-set! obj 0 klass)
    (##subtype-set! obj (macro-subtype-structure))
    obj))

(def (make-struct-instance klass . args)
  (let (fields (type-descriptor-fields klass))
    (cond
     ((type-descriptor-ctor klass)
      => (lambda (kons-id)
           (__constructor-init! klass kons-id (make-object klass fields) args)))
     ((##fx= fields (length args))
      (apply ##structure klass args))
     (else
      (error "Arguments don't match object size"
        klass fields args)))))

(def (make-class-instance klass . args)
  (let (obj (make-object klass (type-descriptor-fields klass)))
    (cond
     ((type-descriptor-ctor klass)
      => (lambda (kons-id)
           (__constructor-init! klass kons-id obj args)))
     (else
      (__class-instance-init! klass obj args)))))

(def (struct-instance-init! obj . args)
  (if (##fx< (length args) (##structure-length obj))
    (__struct-instance-init! obj args)
    (error "Too many arguments for struct" obj args)))

(def (__struct-instance-init! obj args)
  (let lp ((k 1) (rest args))
    (match rest
      ([hd . rest]
       (##vector-set! obj k hd)
       (lp (##fx+ k 1) rest))
      (else obj))))

(def (class-instance-init! obj . args)
  (__class-instance-init! (object-type obj) obj args))

(def (__class-instance-init! klass obj args)
  (let lp ((rest args))
    (match rest
      ([key val . rest]
       (cond
        ((class-slot-offset klass key)
         => (lambda (off)
              (##vector-set! obj (##fx+ off 1) val)
              (lp rest)))
        (else
         (error "No slot for keyword initializer" klass key))))
      (else
       (if (null? rest) obj
           (error "Unexpected class initializer arguments" rest))))))

(def (constructor-init! klass kons-id obj . args)
  (__constructor-init! klass kons-id obj args))

(def (__constructor-init! klass kons-id obj args)
  (cond
   ((__find-method klass kons-id)
    => (lambda (kons)
         (apply kons obj args)
         obj))
   (else
    (error "Missing constructor" klass kons-id))))

(def (struct-copy struct)
  (unless (##structure? struct)
    (error "Not a structure" 'struct-copy struct))
  (##structure-copy struct))

(def (struct->list obj)
  (if (object? obj)
    (##vector->list obj)
    (error "Not an object" obj)))

(def (class->list obj)
  (if (object? obj)
    (let (klass (object-type obj))
      (if (type-descriptor? klass)
        (cond
         ((type-descriptor-slots klass)
          => (lambda (slots)
               (cons klass
                     (hash-fold
                      (lambda (slot off r)
                        (if (keyword? slot)
                          (cons* slot (unchecked-field-ref obj off) r)
                          r))
                      '() slots))))
         (else
          (list klass)))
        (error "Not a class type" obj klass)))
    (error "Not an object" obj)))

(def (unchecked-field-ref obj off)
  (##vector-ref obj (##fx+ off 1)))
(def (unchecked-field-set! obj off val)
  (##vector-set! obj (##fx+ off 1) val))
(def (unchecked-slot-ref obj slot)
  (unchecked-field-ref obj (class-slot-offset (object-type obj) slot)))
(def (unchecked-slot-set! obj slot val)
  (unchecked-field-set! obj (class-slot-offset (object-type obj) slot) val))

(defrules __slot-e ()
  ((_ obj slot K E)
   (if (object? obj)
     (let (klass (object-type obj))
       (cond
        ((and (type-descriptor? klass) (class-slot-offset klass slot))
         => K)
        (else (E obj slot))))
     (E obj slot))))

(def (slot-ref obj slot (E __slot-error))
  (__slot-e obj slot (lambda (off) (##vector-ref obj (##fx+ off 1))) E))

(def (slot-set! obj slot val (E __slot-error))
  (__slot-e obj slot (lambda (off) (##vector-set! obj (##fx+ off 1) val)) E))

(def (__slot-error obj slot)
  (error "Cannot find slot" obj slot))

;;; Methods
(def (call-method obj id . args)
  (cond
   ((method-ref obj id)
    => (lambda (method) (apply method obj args)))
   (else
    (error "Cannot find method" obj id))))

(def __builtin-type-methods
  (make-table test: eq?))

(def (method-ref obj id)
  (and (object? obj)
       (find-method (object-type obj) id)))

(def (checked-method-ref obj id)
  (or (method-ref obj id)
      (error "Missing method" obj id)))

(def (bound-method-ref obj id)
  (cond
   ((method-ref obj id)
    => (lambda (method)
         (lambda args
           (apply method obj args))))
   (else #f)))

(def (checked-bound-method-ref obj id)
  (let (method (checked-method-ref obj id))
    (lambda args
      (apply method obj args))))

(def (find-method klass id)
  (cond
   ((type-descriptor? klass)
    (__find-method klass id))
   ((##type? klass)
    (or (builtin-method-ref klass id)
        (builtin-find-method (##type-super klass) id)))
   (else #f)))

(def (__find-method klass id)
  (cond
   ((direct-method-ref klass id))
   ((type-descriptor-sealed? klass)
    #f)
   ((type-descriptor-mixin klass)
    => (lambda (mixin)
         (mixin-find-method mixin id)))
   (else
    (struct-find-method (##type-super klass) id))))

(def (struct-find-method klass id)
  (cond
   ((type-descriptor? klass)
    (or (direct-method-ref klass id)
        (struct-find-method (##type-super klass) id)))
   ((##type? klass)
    (or (builtin-method-ref klass id)
        (builtin-find-method (##type-super klass) id)))
   (else #f)))

(def (class-find-method klass id)
  (and (type-descriptor? klass)
       (or (direct-method-ref klass id)
           (mixin-method-ref klass id))))

(def (mixin-find-method mixin id)
  (let lp ((rest mixin))
    (match rest
      ([klass . rest]
       (or (direct-method-ref klass id)
           (lp rest)))
      (else #f))))

(def (builtin-find-method klass id)
  (and (##type? klass)
       (or (builtin-method-ref klass id)
           (builtin-find-method (##type-super klass) id))))

(def (direct-method-ref klass id)
  (cond
   ((type-descriptor-methods klass)
    => (lambda (ht) (hash-get ht id)))
   (else #f)))

(def (mixin-method-ref klass id)
  (cond
   ((type-descriptor-mixin klass)
    => (lambda (mixin)
         (mixin-find-method mixin id)))
   (else #f)))

(def (builtin-method-ref klass id)
  (cond
   ((hash-get __builtin-type-methods (##type-id klass))
    => (lambda (mtab)
         (hash-get mtab id)))
   (else #f)))

(def (bind-method! klass id proc (rebind? #t))
  (def (bind! ht)
    (if (and (not rebind?) (hash-get ht id))
      (error "Method already bound" klass id)
      (hash-put! ht id proc)))

  (unless (procedure? proc)
    (error "Bad method; expected procedure" proc))

  (cond
   ((type-descriptor? klass)
    (let (ht (type-descriptor-methods klass))
      (if ht
        (bind! ht)
        (let (ht (make-hash-table-eq))
          (type-descriptor-methods-set! klass ht)
          (bind! ht)))))
   ((##type? klass)
    (let (ht
          (cond
           ((hash-get __builtin-type-methods (##type-id klass)))
           (else
            (let (ht (make-hash-table-eq))
              (hash-put! __builtin-type-methods (##type-id klass) ht)
              ht))))
      (bind! ht)))
   (else
    (error "Bad class; expected type-descriptor" klass))))

(def __method-specializers
  (make-table test: eq?))

(def (bind-specializer! proc specializer)
  (hash-put! __method-specializers proc specializer))

(def (seal-class! klass)
  (def (collect-methods! mtab)
    (def (merge! tab)
      (hash-for-each (lambda (id proc) (hash-put! mtab id proc))
                     tab))

    (def (collect-direct-methods! klass)
      (cond
       ((type-descriptor-methods klass) => merge!)))

    (cond
     ((type-descriptor-mixin klass)
      => (lambda (mixin)
           (let recur ((rest mixin))
             (match rest
               ([klass . rest]
                (recur rest)
                (cond
                 ((type-descriptor? klass)
                  (collect-direct-methods! klass))
                 ((and (##type? klass) (hash-get __builtin-type-methods (##type-id klass)))
                  => merge!)))
               (else (void))))))
     (else
      (let recur ((klass (##type-super klass)))
        (cond
         ((type-descriptor? klass)
          (recur (##type-super klass))
          (collect-direct-methods! klass))
         ((##type? klass)
          (recur (##type-super klass))
          (cond
           ((hash-get __builtin-type-methods (##type-id klass))
            => merge!)))))))
    (collect-direct-methods! klass))

  (when (type-descriptor? klass)
    (unless (type-descriptor-sealed? klass)
      (unless (assgetq final: (type-descriptor-plist klass))
        (error "Cannot seal non-final class" klass))
      (let ((vtab (make-hash-table-eq))
            (mtab (make-hash-table-eq)))
        (collect-methods! mtab)
        (hash-for-each
         (lambda (id proc)
           (cond
            ((hash-get __method-specializers proc)
             => (lambda (specializer)
                  (let ((proc (specializer klass))
                        (gid (make-symbol (##type-id klass) "::[" id "]")))
                    ;; give the proecure a name and make it accesible to the debugger
                    (eval `(def ,gid (quote ,proc)))
                    (hash-put! vtab id proc))))
            (else
             (hash-put! vtab id proc))))
         mtab)
        (type-descriptor-methods-set! klass vtab)
        (type-descriptor-seal! klass)))))

(def (next-method subklass obj id)
  (let ((klass (object-type obj))
        (type-id (##type-id subklass)))
    (cond
     ((type-descriptor? klass)
      (cond
       ((type-descriptor-mixin klass)
        => (lambda (mixin)
             (let lp ((rest (cons klass mixin)))
               (match rest
                 ([klass . rest]
                  (if (eq? type-id (##type-id klass))
                    (mixin-find-method rest id)
                    (lp rest)))
                 (else #f)))))
       (else
        (let lp ((klass klass))
          (cond
           ((eq? type-id (##type-id klass))
            (struct-find-method (##type-super klass) id))
           ((##type-super klass)
            => lp)
           (else #f))))))
     ((##type? klass)
      (let lp ((klass klass))
        (cond
         ((eq? type-id (##type-id klass))
          (builtin-find-method (##type-super klass) id))
         ((##type-super klass)
          => lp)
         (else #f))))
     (else #f))))

(def (call-next-method subklass obj id . args)
  (cond
   ((next-method subklass obj id)
    => (lambda (methodf) (apply methodf obj args)))
   (else
    (error "Cannot find next method" obj id))))

;;; custom writers
(def (write-style we)
  (macro-writeenv-style we))

(def (write-object we obj)
  (cond
   ((method-ref obj ':wr)
    => (lambda (method) (method obj we)))
   (else
    (##default-wr we obj))))

(##wr-set! write-object)
