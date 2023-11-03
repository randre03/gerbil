(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1698867094)
  (begin
    (define c3-linearize__%
      (lambda (_rhead7506_
               _supers7507_
               _get-precedence-list7508_
               _eqpred7509_
               _get-name7510_)
        (letrec* ((_super-precedence-lists7512_
                   (map _get-precedence-list7508_ _supers7507_)))
          (let ((__tmp7553
                 (let ((__tmp7554
                        (append _super-precedence-lists7512_
                                (let ()
                                  (declare (not safe))
                                  (cons _supers7507_ '())))))
                   (declare (not safe))
                   (remove-nulls __tmp7554))))
            (declare (not safe))
            (c3-linearize-loop__%
             _rhead7506_
             __tmp7553
             _eqpred7509_
             _get-name7510_)))))
    (define c3-linearize__0
      (lambda (_rhead7517_ _supers7518_ _get-precedence-list7519_)
        (let* ((_eqpred7521_ eqv?) (_get-name7523_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead7517_
           _supers7518_
           _get-precedence-list7519_
           _eqpred7521_
           _get-name7523_))))
    (define c3-linearize__1
      (lambda (_rhead7525_ _supers7526_ _get-precedence-list7527_ _eqpred7528_)
        (let ((_get-name7530_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead7525_
           _supers7526_
           _get-precedence-list7527_
           _eqpred7528_
           _get-name7530_))))
    (define c3-linearize
      (lambda _g7556_
        (let ((_g7555_ (let () (declare (not safe)) (##length _g7556_))))
          (cond ((let () (declare (not safe)) (##fx= _g7555_ 3))
                 (apply (lambda (_rhead7517_
                                 _supers7518_
                                 _get-precedence-list7519_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__0
                             _rhead7517_
                             _supers7518_
                             _get-precedence-list7519_)))
                        _g7556_))
                ((let () (declare (not safe)) (##fx= _g7555_ 4))
                 (apply (lambda (_rhead7525_
                                 _supers7526_
                                 _get-precedence-list7527_
                                 _eqpred7528_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__1
                             _rhead7525_
                             _supers7526_
                             _get-precedence-list7527_
                             _eqpred7528_)))
                        _g7556_))
                ((let () (declare (not safe)) (##fx= _g7555_ 5))
                 (apply (lambda (_rhead7532_
                                 _supers7533_
                                 _get-precedence-list7534_
                                 _eqpred7535_
                                 _get-name7536_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%
                             _rhead7532_
                             _supers7533_
                             _get-precedence-list7534_
                             _eqpred7535_
                             _get-name7536_)))
                        _g7556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize
                  _g7556_))))))
    (define c3-linearize-loop__%
      (lambda (_rhead7429_ _tails7430_ _eqpred7431_ _get-name7432_)
        (let* ((_tails74337443_ _tails7430_)
               (_else74367461_
                (lambda ()
                  (let* ((_err7456_
                          (lambda ()
                            (error '"Inconsistent precedence graph"
                                   'head:
                                   (map _get-name7432_ (reverse _rhead7429_))
                                   'tails:
                                   (map (lambda (_g74517453_)
                                          (map _get-name7432_ _g74517453_))
                                        _tails7430_))))
                         (_next7458_
                          (let ()
                            (declare (not safe))
                            (c3-select-next
                             _tails7430_
                             _eqpred7431_
                             _err7456_))))
                    (let ((__tmp7558
                           (let ()
                             (declare (not safe))
                             (cons _next7458_ _rhead7429_)))
                          (__tmp7557
                           (let ()
                             (declare (not safe))
                             (remove-next__%
                              _next7458_
                              _tails7430_
                              _eqpred7431_))))
                      (declare (not safe))
                      (c3-linearize-loop__%
                       __tmp7558
                       __tmp7557
                       _eqpred7431_
                       _get-name7432_))))))
          (let ((_K74417481_ (lambda () (reverse _rhead7429_)))
                (_K74387467_
                 (lambda (_tail7465_)
                   (let ()
                     (declare (not safe))
                     (append-reverse _rhead7429_ _tail7465_)))))
            (let ((_try-match74357477_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##pair? _tails74337443_))
                         (let ((_tl74407472_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _tails74337443_)))
                               (_hd74397470_
                                (let ()
                                  (declare (not safe))
                                  (##car _tails74337443_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##null? _tl74407472_))
                               (let ((_tail7475_ _hd74397470_))
                                 (declare (not safe))
                                 (_K74387467_ _tail7475_))
                               (let () (declare (not safe)) (_else74367461_))))
                         (let () (declare (not safe)) (_else74367461_))))))
              (if (let () (declare (not safe)) (##null? _tails74337443_))
                  (let () (declare (not safe)) (_K74417481_))
                  (let () (declare (not safe)) (_try-match74357477_))))))))
    (define c3-linearize-loop__0
      (lambda (_rhead7487_ _tails7488_)
        (let* ((_eqpred7490_ eqv?) (_get-name7492_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead7487_
           _tails7488_
           _eqpred7490_
           _get-name7492_))))
    (define c3-linearize-loop__1
      (lambda (_rhead7494_ _tails7495_ _eqpred7496_)
        (let ((_get-name7498_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead7494_
           _tails7495_
           _eqpred7496_
           _get-name7498_))))
    (define c3-linearize-loop
      (lambda _g7560_
        (let ((_g7559_ (let () (declare (not safe)) (##length _g7560_))))
          (cond ((let () (declare (not safe)) (##fx= _g7559_ 2))
                 (apply (lambda (_rhead7487_ _tails7488_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__0 _rhead7487_ _tails7488_)))
                        _g7560_))
                ((let () (declare (not safe)) (##fx= _g7559_ 3))
                 (apply (lambda (_rhead7494_ _tails7495_ _eqpred7496_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__1
                             _rhead7494_
                             _tails7495_
                             _eqpred7496_)))
                        _g7560_))
                ((let () (declare (not safe)) (##fx= _g7559_ 4))
                 (apply (lambda (_rhead7500_
                                 _tails7501_
                                 _eqpred7502_
                                 _get-name7503_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__%
                             _rhead7500_
                             _tails7501_
                             _eqpred7502_
                             _get-name7503_)))
                        _g7560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize-loop
                  _g7560_))))))
    (define c3-select-next
      (lambda (_tails7376_ _eqpred7377_ _err7378_)
        (letrec ((_candidate?7380_
                  (lambda (_c7424_)
                    (let ((__tmp7561
                           (lambda (_tail7426_)
                             (let ((__tmp7562
                                    (member _c7424_
                                            (cdr _tail7426_)
                                            _eqpred7377_)))
                               (declare (not safe))
                               (not __tmp7562)))))
                      (declare (not safe))
                      (every/1 __tmp7561 _tails7376_)))))
          (let _loop7382_ ((_ts7384_ _tails7376_))
            (let* ((_ts73857395_ _ts7384_)
                   (_else73877403_ (lambda () (_err7378_)))
                   (_K73897409_
                    (lambda (_rts7406_ _c7407_)
                      (if (let ()
                            (declare (not safe))
                            (_candidate?7380_ _c7407_))
                          _c7407_
                          (let ()
                            (declare (not safe))
                            (_loop7382_ _rts7406_))))))
              (if (let () (declare (not safe)) (##pair? _ts73857395_))
                  (let ((_hd73907412_
                         (let () (declare (not safe)) (##car _ts73857395_)))
                        (_tl73917414_
                         (let () (declare (not safe)) (##cdr _ts73857395_))))
                    (if (let () (declare (not safe)) (##pair? _hd73907412_))
                        (let* ((_hd73927417_
                                (let ()
                                  (declare (not safe))
                                  (##car _hd73907412_)))
                               (_c7420_ _hd73927417_)
                               (_rts7422_ _tl73917414_))
                          (declare (not safe))
                          (_K73897409_ _rts7422_ _c7420_))
                        (let () (declare (not safe)) (_err7378_))))
                  (let () (declare (not safe)) (_err7378_))))))))
    (define remove-next__%
      (lambda (_next7358_ _tails7359_ _eqpred7360_)
        (let ((__tmp7563
               (map (lambda (_l7362_)
                      (if (_eqpred7360_ (car _l7362_) _next7358_)
                          (cdr _l7362_)
                          _l7362_))
                    _tails7359_)))
          (declare (not safe))
          (remove-nulls __tmp7563))))
    (define remove-next__0
      (lambda (_next7367_ _tails7368_)
        (let ((_eqpred7370_ eqv?))
          (declare (not safe))
          (remove-next__% _next7367_ _tails7368_ _eqpred7370_))))
    (define remove-next
      (lambda _g7565_
        (let ((_g7564_ (let () (declare (not safe)) (##length _g7565_))))
          (cond ((let () (declare (not safe)) (##fx= _g7564_ 2))
                 (apply (lambda (_next7367_ _tails7368_)
                          (let ()
                            (declare (not safe))
                            (remove-next__0 _next7367_ _tails7368_)))
                        _g7565_))
                ((let () (declare (not safe)) (##fx= _g7564_ 3))
                 (apply (lambda (_next7372_ _tails7373_ _eqpred7374_)
                          (let ()
                            (declare (not safe))
                            (remove-next__%
                             _next7372_
                             _tails7373_
                             _eqpred7374_)))
                        _g7565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  remove-next
                  _g7565_))))))
    (define not-null?
      (lambda (_l7355_)
        (let ((__tmp7566 (let () (declare (not safe)) (null? _l7355_))))
          (declare (not safe))
          (not __tmp7566))))
    (define remove-nulls
      (lambda (_l7353_)
        (let () (declare (not safe)) (filter not-null? _l7353_))))
    (define append-reverse
      (lambda (_rev-head7312_ _tail7313_)
        (let* ((_rev-head73147323_ _rev-head7312_)
               (_E73177327_
                (lambda () (error '"No clause matching" _rev-head73147323_))))
          (let ((_K73197341_
                 (lambda (_tl7338_ _hd7339_)
                   (let ((__tmp7567
                          (let ()
                            (declare (not safe))
                            (cons _hd7339_ _tail7313_))))
                     (declare (not safe))
                     (append-reverse _tl7338_ __tmp7567))))
                (_K73187332_ (lambda () _tail7313_)))
            (let ((_try-match73167335_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rev-head73147323_))
                         (let () (declare (not safe)) (_K73187332_))
                         (let () (declare (not safe)) (_E73177327_))))))
              (if (let () (declare (not safe)) (##pair? _rev-head73147323_))
                  (let ((_tl73217346_
                         (let ()
                           (declare (not safe))
                           (##cdr _rev-head73147323_)))
                        (_hd73207344_
                         (let ()
                           (declare (not safe))
                           (##car _rev-head73147323_))))
                    (let ((_hd7349_ _hd73207344_) (_tl7351_ _tl73217346_))
                      (let ()
                        (declare (not safe))
                        (_K73197341_ _tl7351_ _hd7349_))))
                  (let () (declare (not safe)) (_try-match73167335_))))))))
    (define every/1
      (lambda (_pred7276_ _list7277_)
        (let* ((_list72787286_ _list7277_)
               (_else72807294_ (lambda () '#t))
               (_K72827300_
                (lambda (_r7297_ _x7298_)
                  (if (_pred7276_ _x7298_)
                      (let ()
                        (declare (not safe))
                        (every/1 _pred7276_ _r7297_))
                      '#f))))
          (if (let () (declare (not safe)) (##pair? _list72787286_))
              (let ((_hd72837303_
                     (let () (declare (not safe)) (##car _list72787286_)))
                    (_tl72847305_
                     (let () (declare (not safe)) (##cdr _list72787286_))))
                (let* ((_x7308_ _hd72837303_) (_r7310_ _tl72847305_))
                  (declare (not safe))
                  (_K72827300_ _r7310_ _x7308_)))
              (let () (declare (not safe)) (_else72807294_))))))))
