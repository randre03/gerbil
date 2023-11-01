(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1698867094)
  (define replx
    (lambda ()
      (letrec ((_write-reason16357_
                (lambda (_exn16363_)
                  (lambda (_cont16365_ _port16366_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn16363_
                       _cont16365_
                       _port16366_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn16359_)
           (let ((__tmp16367
                  (lambda (_cont16361_)
                    (let ((__tmp16368
                           (let ()
                             (declare (not safe))
                             (_write-reason16357_ _exn16359_))))
                      (declare (not safe))
                      (##repl-within _cont16361_ __tmp16368 _exn16359_)))))
             (declare (not safe))
             (##continuation-capture __tmp16367)))
         ##repl)))))
