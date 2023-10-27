(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g43137_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43139_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43140_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43141_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43142_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__tmp43143 |gerbil/core$<match>[2]#_g43140_|)
          (__tmp43138
           (cons (cons |gerbil/core$<match>[2]#_g43139_| '())
                 (cons |gerbil/core$<match>[2]#_g43140_|
                       (cons |gerbil/core$<match>[2]#_g43141_|
                             (cons |gerbil/core$<match>[2]#_g43142_|
                                   (cons '() (cons '() '())))))))
          (__tmp43135
           (let ((__tmp43136 (list |gerbil/core$<match>[2]#_g43137_|)))
             (declare (not safe))
             (##structure
              |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
              'gerbil.core#match-macro::t
              __tmp43136
              'match-macro
              '#f
              '()
              '()))))
      (declare (not safe))
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       __tmp43143
       'expander-identifiers:
       __tmp43138
       'type-exhibitor:
       __tmp43135))))
