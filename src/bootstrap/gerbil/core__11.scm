(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g43107_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43109_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43110_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43111_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43112_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__tmp43113 |gerbil/core$<match>[2]#_g43110_|)
          (__tmp43108
           (cons (cons |gerbil/core$<match>[2]#_g43109_| '())
                 (cons |gerbil/core$<match>[2]#_g43110_|
                       (cons |gerbil/core$<match>[2]#_g43111_|
                             (cons |gerbil/core$<match>[2]#_g43112_|
                                   (cons '() (cons '() '())))))))
          (__tmp43105
           (let ((__tmp43106 (list |gerbil/core$<match>[2]#_g43107_|)))
             (declare (not safe))
             (##structure
              |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
              'gerbil.core#match-macro::t
              __tmp43106
              'match-macro
              '#f
              '()
              '()))))
      (declare (not safe))
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       __tmp43113
       'expander-identifiers:
       __tmp43108
       'type-exhibitor:
       __tmp43105))))
