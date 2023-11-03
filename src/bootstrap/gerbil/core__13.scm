(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g43131_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43133_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43134_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43135_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43136_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43141_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43142_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43143_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (let ((__tmp43137 |gerbil/core$<more-sugar>[2]#_g43134_|)
            (__tmp43132
             (cons (cons |gerbil/core$<more-sugar>[2]#_g43133_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g43134_|
                         (cons |gerbil/core$<more-sugar>[2]#_g43135_|
                               (cons |gerbil/core$<more-sugar>[2]#_g43136_|
                                     (cons '() (cons '() '())))))))
            (__tmp43129
             (let ((__tmp43130 (list |gerbil/core$<more-sugar>[2]#_g43131_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setq-macro::t
                __tmp43130
                'setq-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp43137
         'expander-identifiers:
         __tmp43132
         'type-exhibitor:
         __tmp43129)))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (let ((__tmp43144 |gerbil/core$<more-sugar>[2]#_g43141_|)
            (__tmp43140
             (cons (cons |gerbil/core$<more-sugar>[2]#_g43133_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g43141_|
                         (cons |gerbil/core$<more-sugar>[2]#_g43142_|
                               (cons |gerbil/core$<more-sugar>[2]#_g43143_|
                                     (cons '() (cons '() '())))))))
            (__tmp43138
             (let ((__tmp43139 (list |gerbil/core$<more-sugar>[2]#_g43131_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setf-macro::t
                __tmp43139
                'setf-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp43144
         'expander-identifiers:
         __tmp43140
         'type-exhibitor:
         __tmp43138)))))
