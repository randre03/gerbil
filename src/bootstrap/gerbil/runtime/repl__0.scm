(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1698333193)
  (define replx
    (lambda ()
      (letrec ((_write-reason18395_
                (lambda (_exn18401_)
                  (lambda (_cont18403_ _port18404_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn18401_
                       _cont18403_
                       _port18404_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn18397_)
           (let ((__tmp18405
                  (lambda (_cont18399_)
                    (let ((__tmp18406
                           (let ()
                             (declare (not safe))
                             (_write-reason18395_ _exn18397_))))
                      (declare (not safe))
                      (##repl-within _cont18399_ __tmp18406 _exn18397_)))))
             (declare (not safe))
             (##continuation-capture __tmp18405)))
         ##repl)))))
