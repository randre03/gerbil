(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx6463_)
    (let* ((_g64676485_
            (lambda (_g64686481_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g64686481_)))
           (_g64666541_
            (lambda (_g64686489_)
              (if (gx#stx-pair? _g64686489_)
                  (let ((_e64736492_ (gx#syntax-e _g64686489_)))
                    (let ((_hd64726496_
                           (let () (declare (not safe)) (##car _e64736492_)))
                          (_tl64716499_
                           (let () (declare (not safe)) (##cdr _e64736492_))))
                      (if (gx#stx-pair? _tl64716499_)
                          (let ((_e64766502_ (gx#syntax-e _tl64716499_)))
                            (let ((_hd64756506_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e64766502_)))
                                  (_tl64746509_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e64766502_))))
                              (if (gx#stx-pair? _tl64746509_)
                                  (let ((_e64796512_
                                         (gx#syntax-e _tl64746509_)))
                                    (let ((_hd64786516_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e64796512_)))
                                          (_tl64776519_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e64796512_))))
                                      (if (gx#stx-null? _tl64776519_)
                                          ((lambda (_L6522_ _L6524_)
                                             (let ((__tmp8736
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp8723
                                                    (let ((__tmp8732
                                                           (let ((__tmp8735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp8733
                          (let ((__tmp8734
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6522_ '()))))
                            (declare (not safe))
                            (cons _L6524_ __tmp8734))))
                     (declare (not safe))
                     (cons __tmp8735 __tmp8733)))
                  (__tmp8724
                   (let ((__tmp8728
                          (let ((__tmp8731 (gx#datum->syntax '#f 'set!))
                                (__tmp8729
                                 (let ((__tmp8730
                                        (let ()
                                          (declare (not safe))
                                          (cons _L6524_ '()))))
                                   (declare (not safe))
                                   (cons _L6524_ __tmp8730))))
                            (declare (not safe))
                            (cons __tmp8731 __tmp8729)))
                         (__tmp8725
                          (let ((__tmp8726
                                 (let ((__tmp8727
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp8727 '()))))
                            (declare (not safe))
                            (cons __tmp8726 '()))))
                     (declare (not safe))
                     (cons __tmp8728 __tmp8725))))
              (declare (not safe))
              (cons __tmp8732 __tmp8724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp8736 __tmp8723)))
                                           _hd64786516_
                                           _hd64756506_)
                                          (_g64676485_ _g64686489_))))
                                  (_g64676485_ _g64686489_))))
                          (_g64676485_ _g64686489_))))
                  (_g64676485_ _g64686489_)))))
      (_g64666541_ _$stx6463_))))
