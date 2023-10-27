(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g43161_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43163_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43164_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43165_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43166_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43171_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43172_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43173_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (let ((__tmp43167 |gerbil/core$<more-sugar>[2]#_g43164_|)
            (__tmp43162
             (cons (cons |gerbil/core$<more-sugar>[2]#_g43163_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g43164_|
                         (cons |gerbil/core$<more-sugar>[2]#_g43165_|
                               (cons |gerbil/core$<more-sugar>[2]#_g43166_|
                                     (cons '() (cons '() '())))))))
            (__tmp43159
             (let ((__tmp43160 (list |gerbil/core$<more-sugar>[2]#_g43161_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setq-macro::t
                __tmp43160
                'setq-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp43167
         'expander-identifiers:
         __tmp43162
         'type-exhibitor:
         __tmp43159)))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (let ((__tmp43174 |gerbil/core$<more-sugar>[2]#_g43171_|)
            (__tmp43170
             (cons (cons |gerbil/core$<more-sugar>[2]#_g43163_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g43171_|
                         (cons |gerbil/core$<more-sugar>[2]#_g43172_|
                               (cons |gerbil/core$<more-sugar>[2]#_g43173_|
                                     (cons '() (cons '() '())))))))
            (__tmp43168
             (let ((__tmp43169 (list |gerbil/core$<more-sugar>[2]#_g43161_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setf-macro::t
                __tmp43169
                'setf-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp43174
         'expander-identifiers:
         __tmp43170
         'type-exhibitor:
         __tmp43168)))))
