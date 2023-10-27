(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx34401_)
      (let* ((___stx4254542546_ _$stx34401_)
             (_g3440634425_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4254542546_))))
        (let ((___kont4254842549_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (___kont4255042551_
               (lambda (_L34452_ _L34454_ _L34455_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _L34454_
                                   (cons (cons _L34455_ _L34452_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _L34454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? ___stx4254542546_)
              (let ((_e3441034478_ (gx#syntax-e ___stx4254542546_)))
                (let ((_tl3440834485_
                       (let () (declare (not safe)) (##cdr _e3441034478_)))
                      (_hd3440934482_
                       (let () (declare (not safe)) (##car _e3441034478_))))
                  (if (gx#stx-null? _tl3440834485_)
                      (___kont4254842549_)
                      (if (gx#stx-pair? _tl3440834485_)
                          (let ((_e3441934442_ (gx#syntax-e _tl3440834485_)))
                            (let ((_tl3441734449_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3441934442_)))
                                  (_hd3441834446_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3441934442_))))
                              (___kont4255042551_
                               _tl3441734449_
                               _hd3441834446_
                               _hd3440934482_)))
                          (let () (declare (not safe)) (_g3440634425_))))))
              (let () (declare (not safe)) (_g3440634425_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx34496_)
      (let* ((___stx4257542576_ _$stx34496_)
             (_g3450134541_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4257542576_))))
        (let ((___kont4257842579_
               (lambda (_L34679_ _L34681_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34681_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _L34679_ '()))
                                   '())))))
              (___kont4258042581_
               (lambda (_L34608_ _L34610_ _L34611_ _L34612_)
                 (cons _L34612_
                       (cons _L34611_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34610_
                                               (foldr (lambda (_g3463334636_
                                                               _g3463434639_)
                                                        (cons _g3463334636_
                                                              _g3463434639_))
                                                      '()
                                                      _L34608_)))
                                   '()))))))
          (let* ((___match4263042631_
                  (lambda (_e3452034548_
                           _hd3451934552_
                           _tl3451834555_
                           _e3452334558_
                           _hd3452234562_
                           _tl3452134565_
                           _e3452634568_
                           _hd3452534572_
                           _tl3452434575_
                           ___splice4258242583_
                           _target3452734578_
                           _tl3452934581_)
                    (letrec ((_loop3453034584_
                              (lambda (_hd3452834588_ _body3453434591_)
                                (if (gx#stx-pair? _hd3452834588_)
                                    (let ((_e3453134594_
                                           (gx#syntax-e _hd3452834588_)))
                                      (let ((_lp-tl3453334601_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3453134594_)))
                                            (_lp-hd3453234598_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3453134594_))))
                                        (_loop3453034584_
                                         _lp-tl3453334601_
                                         (cons _lp-hd3453234598_
                                               _body3453434591_))))
                                    (let ((_body3453534604_
                                           (reverse _body3453434591_)))
                                      (let ((_L34608_ _body3453534604_)
                                            (_L34610_ _tl3452434575_)
                                            (_L34611_ _hd3452534572_)
                                            (_L34612_ _hd3451934552_))
                                        (if (gx#identifier? _L34611_)
                                            (___kont4258042581_
                                             _L34608_
                                             _L34610_
                                             _L34611_
                                             _L34612_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3450134541_)))))))))
                      (_loop3453034584_ _target3452734578_ '()))))
                 (___match4260442605_
                  (lambda (_e3450734649_
                           _hd3450634653_
                           _tl3450534656_
                           _e3451034659_
                           _hd3450934663_
                           _tl3450834666_
                           _e3451334669_
                           _hd3451234673_
                           _tl3451134676_)
                    (let ((_L34679_ _hd3451234673_) (_L34681_ _hd3450934663_))
                      (if (gx#identifier? _L34681_)
                          (___kont4257842579_ _L34679_ _L34681_)
                          (if (gx#stx-pair? _hd3450934663_)
                              (let ((_e3452634568_
                                     (gx#syntax-e _hd3450934663_)))
                                (let ((_tl3452434575_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3452634568_)))
                                      (_hd3452534572_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3452634568_))))
                                  (if (gx#stx-pair/null? _tl3450834666_)
                                      (let ((___splice4258242583_
                                             (gx#syntax-split-splice
                                              _tl3450834666_
                                              '0)))
                                        (let ((_tl3452934581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4258242583_
                                                  '1)))
                                              (_target3452734578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4258242583_
                                                  '0))))
                                          (if (gx#stx-null? _tl3452934581_)
                                              (___match4263042631_
                                               _e3450734649_
                                               _hd3450634653_
                                               _tl3450534656_
                                               _e3451034659_
                                               _hd3450934663_
                                               _tl3450834666_
                                               _e3452634568_
                                               _hd3452534572_
                                               _tl3452434575_
                                               ___splice4258242583_
                                               _target3452734578_
                                               _tl3452934581_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3450134541_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3450134541_)))))
                              (let ()
                                (declare (not safe))
                                (_g3450134541_))))))))
            (if (gx#stx-pair? ___stx4257542576_)
                (let ((_e3450734649_ (gx#syntax-e ___stx4257542576_)))
                  (let ((_tl3450534656_
                         (let () (declare (not safe)) (##cdr _e3450734649_)))
                        (_hd3450634653_
                         (let () (declare (not safe)) (##car _e3450734649_))))
                    (if (gx#stx-pair? _tl3450534656_)
                        (let ((_e3451034659_ (gx#syntax-e _tl3450534656_)))
                          (let ((_tl3450834666_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3451034659_)))
                                (_hd3450934663_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3451034659_))))
                            (if (gx#stx-pair? _tl3450834666_)
                                (let ((_e3451334669_
                                       (gx#syntax-e _tl3450834666_)))
                                  (let ((_tl3451134676_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3451334669_)))
                                        (_hd3451234673_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3451334669_))))
                                    (if (gx#stx-null? _tl3451134676_)
                                        (___match4260442605_
                                         _e3450734649_
                                         _hd3450634653_
                                         _tl3450534656_
                                         _e3451034659_
                                         _hd3450934663_
                                         _tl3450834666_
                                         _e3451334669_
                                         _hd3451234673_
                                         _tl3451134676_)
                                        (if (gx#stx-pair? _hd3450934663_)
                                            (let ((_e3452634568_
                                                   (gx#syntax-e
                                                    _hd3450934663_)))
                                              (let ((_tl3452434575_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3452634568_)))
                                                    (_hd3452534572_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3452634568_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3450834666_)
                                                    (let ((___splice4258242583_
                                                           (gx#syntax-split-splice
                                                            _tl3450834666_
                                                            '0)))
                                                      (let ((_tl3452934581_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4258242583_ '1)))
                    (_target3452734578_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4258242583_ '0))))
                (if (gx#stx-null? _tl3452934581_)
                    (___match4263042631_
                     _e3450734649_
                     _hd3450634653_
                     _tl3450534656_
                     _e3451034659_
                     _hd3450934663_
                     _tl3450834666_
                     _e3452634568_
                     _hd3452534572_
                     _tl3452434575_
                     ___splice4258242583_
                     _target3452734578_
                     _tl3452934581_)
                    (let () (declare (not safe)) (_g3450134541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3450134541_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3450134541_))))))
                                (if (gx#stx-pair? _hd3450934663_)
                                    (let ((_e3452634568_
                                           (gx#syntax-e _hd3450934663_)))
                                      (let ((_tl3452434575_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3452634568_)))
                                            (_hd3452534572_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3452634568_))))
                                        (if (gx#stx-pair/null? _tl3450834666_)
                                            (let ((___splice4258242583_
                                                   (gx#syntax-split-splice
                                                    _tl3450834666_
                                                    '0)))
                                              (let ((_tl3452934581_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4258242583_
                                                        '1)))
                                                    (_target3452734578_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4258242583_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3452934581_)
                                                    (___match4263042631_
                                                     _e3450734649_
                                                     _hd3450634653_
                                                     _tl3450534656_
                                                     _e3451034659_
                                                     _hd3450934663_
                                                     _tl3450834666_
                                                     _e3452634568_
                                                     _hd3452534572_
                                                     _tl3452434575_
                                                     ___splice4258242583_
                                                     _target3452734578_
                                                     _tl3452934581_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3450134541_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3450134541_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3450134541_))))))
                        (let () (declare (not safe)) (_g3450134541_)))))
                (let () (declare (not safe)) (_g3450134541_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx34701_)
      (let* ((___stx4263342634_ _$stx34701_)
             (_g3470634746_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4263342634_))))
        (let ((___kont4263642637_
               (lambda (_L34884_ _L34886_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34886_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _L34884_ '()))
                                   '())))))
              (___kont4263842639_
               (lambda (_L34813_ _L34815_ _L34816_ _L34817_)
                 (cons _L34817_
                       (cons _L34816_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34815_
                                               (foldr (lambda (_g3483834841_
                                                               _g3483934844_)
                                                        (cons _g3483834841_
                                                              _g3483934844_))
                                                      '()
                                                      _L34813_)))
                                   '()))))))
          (let* ((___match4268842689_
                  (lambda (_e3472534753_
                           _hd3472434757_
                           _tl3472334760_
                           _e3472834763_
                           _hd3472734767_
                           _tl3472634770_
                           _e3473134773_
                           _hd3473034777_
                           _tl3472934780_
                           ___splice4264042641_
                           _target3473234783_
                           _tl3473434786_)
                    (letrec ((_loop3473534789_
                              (lambda (_hd3473334793_ _body3473934796_)
                                (if (gx#stx-pair? _hd3473334793_)
                                    (let ((_e3473634799_
                                           (gx#syntax-e _hd3473334793_)))
                                      (let ((_lp-tl3473834806_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3473634799_)))
                                            (_lp-hd3473734803_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3473634799_))))
                                        (_loop3473534789_
                                         _lp-tl3473834806_
                                         (cons _lp-hd3473734803_
                                               _body3473934796_))))
                                    (let ((_body3474034809_
                                           (reverse _body3473934796_)))
                                      (let ((_L34813_ _body3474034809_)
                                            (_L34815_ _tl3472934780_)
                                            (_L34816_ _hd3473034777_)
                                            (_L34817_ _hd3472434757_))
                                        (if (gx#identifier? _L34816_)
                                            (___kont4263842639_
                                             _L34813_
                                             _L34815_
                                             _L34816_
                                             _L34817_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3470634746_)))))))))
                      (_loop3473534789_ _target3473234783_ '()))))
                 (___match4266242663_
                  (lambda (_e3471234854_
                           _hd3471134858_
                           _tl3471034861_
                           _e3471534864_
                           _hd3471434868_
                           _tl3471334871_
                           _e3471834874_
                           _hd3471734878_
                           _tl3471634881_)
                    (let ((_L34884_ _hd3471734878_) (_L34886_ _hd3471434868_))
                      (if (gx#identifier? _L34886_)
                          (___kont4263642637_ _L34884_ _L34886_)
                          (if (gx#stx-pair? _hd3471434868_)
                              (let ((_e3473134773_
                                     (gx#syntax-e _hd3471434868_)))
                                (let ((_tl3472934780_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3473134773_)))
                                      (_hd3473034777_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3473134773_))))
                                  (if (gx#stx-pair/null? _tl3471334871_)
                                      (let ((___splice4264042641_
                                             (gx#syntax-split-splice
                                              _tl3471334871_
                                              '0)))
                                        (let ((_tl3473434786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4264042641_
                                                  '1)))
                                              (_target3473234783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4264042641_
                                                  '0))))
                                          (if (gx#stx-null? _tl3473434786_)
                                              (___match4268842689_
                                               _e3471234854_
                                               _hd3471134858_
                                               _tl3471034861_
                                               _e3471534864_
                                               _hd3471434868_
                                               _tl3471334871_
                                               _e3473134773_
                                               _hd3473034777_
                                               _tl3472934780_
                                               ___splice4264042641_
                                               _target3473234783_
                                               _tl3473434786_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3470634746_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3470634746_)))))
                              (let ()
                                (declare (not safe))
                                (_g3470634746_))))))))
            (if (gx#stx-pair? ___stx4263342634_)
                (let ((_e3471234854_ (gx#syntax-e ___stx4263342634_)))
                  (let ((_tl3471034861_
                         (let () (declare (not safe)) (##cdr _e3471234854_)))
                        (_hd3471134858_
                         (let () (declare (not safe)) (##car _e3471234854_))))
                    (if (gx#stx-pair? _tl3471034861_)
                        (let ((_e3471534864_ (gx#syntax-e _tl3471034861_)))
                          (let ((_tl3471334871_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3471534864_)))
                                (_hd3471434868_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3471534864_))))
                            (if (gx#stx-pair? _tl3471334871_)
                                (let ((_e3471834874_
                                       (gx#syntax-e _tl3471334871_)))
                                  (let ((_tl3471634881_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3471834874_)))
                                        (_hd3471734878_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3471834874_))))
                                    (if (gx#stx-null? _tl3471634881_)
                                        (___match4266242663_
                                         _e3471234854_
                                         _hd3471134858_
                                         _tl3471034861_
                                         _e3471534864_
                                         _hd3471434868_
                                         _tl3471334871_
                                         _e3471834874_
                                         _hd3471734878_
                                         _tl3471634881_)
                                        (if (gx#stx-pair? _hd3471434868_)
                                            (let ((_e3473134773_
                                                   (gx#syntax-e
                                                    _hd3471434868_)))
                                              (let ((_tl3472934780_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3473134773_)))
                                                    (_hd3473034777_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3473134773_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3471334871_)
                                                    (let ((___splice4264042641_
                                                           (gx#syntax-split-splice
                                                            _tl3471334871_
                                                            '0)))
                                                      (let ((_tl3473434786_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4264042641_ '1)))
                    (_target3473234783_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4264042641_ '0))))
                (if (gx#stx-null? _tl3473434786_)
                    (___match4268842689_
                     _e3471234854_
                     _hd3471134858_
                     _tl3471034861_
                     _e3471534864_
                     _hd3471434868_
                     _tl3471334871_
                     _e3473134773_
                     _hd3473034777_
                     _tl3472934780_
                     ___splice4264042641_
                     _target3473234783_
                     _tl3473434786_)
                    (let () (declare (not safe)) (_g3470634746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3470634746_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3470634746_))))))
                                (if (gx#stx-pair? _hd3471434868_)
                                    (let ((_e3473134773_
                                           (gx#syntax-e _hd3471434868_)))
                                      (let ((_tl3472934780_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3473134773_)))
                                            (_hd3473034777_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3473134773_))))
                                        (if (gx#stx-pair/null? _tl3471334871_)
                                            (let ((___splice4264042641_
                                                   (gx#syntax-split-splice
                                                    _tl3471334871_
                                                    '0)))
                                              (let ((_tl3473434786_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4264042641_
                                                        '1)))
                                                    (_target3473234783_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4264042641_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3473434786_)
                                                    (___match4268842689_
                                                     _e3471234854_
                                                     _hd3471134858_
                                                     _tl3471034861_
                                                     _e3471534864_
                                                     _hd3471434868_
                                                     _tl3471334871_
                                                     _e3473134773_
                                                     _hd3473034777_
                                                     _tl3472934780_
                                                     ___splice4264042641_
                                                     _target3473234783_
                                                     _tl3473434786_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3470634746_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3470634746_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3470634746_))))))
                        (let () (declare (not safe)) (_g3470634746_)))))
                (let () (declare (not safe)) (_g3470634746_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import-export|
    (lambda (_$stx34906_)
      (let* ((___stx4269142692_ _$stx34906_)
             (_g3491134951_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4269142692_))))
        (let ((___kont4269442695_
               (lambda (_L35089_ _L35091_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L35091_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _L35089_ '()))
                                   '())))))
              (___kont4269642697_
               (lambda (_L35018_ _L35020_ _L35021_ _L35022_)
                 (cons _L35022_
                       (cons _L35021_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L35020_
                                               (foldr (lambda (_g3504335046_
                                                               _g3504435049_)
                                                        (cons _g3504335046_
                                                              _g3504435049_))
                                                      '()
                                                      _L35018_)))
                                   '()))))))
          (let* ((___match4274642747_
                  (lambda (_e3493034958_
                           _hd3492934962_
                           _tl3492834965_
                           _e3493334968_
                           _hd3493234972_
                           _tl3493134975_
                           _e3493634978_
                           _hd3493534982_
                           _tl3493434985_
                           ___splice4269842699_
                           _target3493734988_
                           _tl3493934991_)
                    (letrec ((_loop3494034994_
                              (lambda (_hd3493834998_ _body3494435001_)
                                (if (gx#stx-pair? _hd3493834998_)
                                    (let ((_e3494135004_
                                           (gx#syntax-e _hd3493834998_)))
                                      (let ((_lp-tl3494335011_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3494135004_)))
                                            (_lp-hd3494235008_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3494135004_))))
                                        (_loop3494034994_
                                         _lp-tl3494335011_
                                         (cons _lp-hd3494235008_
                                               _body3494435001_))))
                                    (let ((_body3494535014_
                                           (reverse _body3494435001_)))
                                      (let ((_L35018_ _body3494535014_)
                                            (_L35020_ _tl3493434985_)
                                            (_L35021_ _hd3493534982_)
                                            (_L35022_ _hd3492934962_))
                                        (if (gx#identifier? _L35021_)
                                            (___kont4269642697_
                                             _L35018_
                                             _L35020_
                                             _L35021_
                                             _L35022_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3491134951_)))))))))
                      (_loop3494034994_ _target3493734988_ '()))))
                 (___match4272042721_
                  (lambda (_e3491735059_
                           _hd3491635063_
                           _tl3491535066_
                           _e3492035069_
                           _hd3491935073_
                           _tl3491835076_
                           _e3492335079_
                           _hd3492235083_
                           _tl3492135086_)
                    (let ((_L35089_ _hd3492235083_) (_L35091_ _hd3491935073_))
                      (if (gx#identifier? _L35091_)
                          (___kont4269442695_ _L35089_ _L35091_)
                          (if (gx#stx-pair? _hd3491935073_)
                              (let ((_e3493634978_
                                     (gx#syntax-e _hd3491935073_)))
                                (let ((_tl3493434985_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3493634978_)))
                                      (_hd3493534982_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3493634978_))))
                                  (if (gx#stx-pair/null? _tl3491835076_)
                                      (let ((___splice4269842699_
                                             (gx#syntax-split-splice
                                              _tl3491835076_
                                              '0)))
                                        (let ((_tl3493934991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4269842699_
                                                  '1)))
                                              (_target3493734988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4269842699_
                                                  '0))))
                                          (if (gx#stx-null? _tl3493934991_)
                                              (___match4274642747_
                                               _e3491735059_
                                               _hd3491635063_
                                               _tl3491535066_
                                               _e3492035069_
                                               _hd3491935073_
                                               _tl3491835076_
                                               _e3493634978_
                                               _hd3493534982_
                                               _tl3493434985_
                                               ___splice4269842699_
                                               _target3493734988_
                                               _tl3493934991_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3491134951_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3491134951_)))))
                              (let ()
                                (declare (not safe))
                                (_g3491134951_))))))))
            (if (gx#stx-pair? ___stx4269142692_)
                (let ((_e3491735059_ (gx#syntax-e ___stx4269142692_)))
                  (let ((_tl3491535066_
                         (let () (declare (not safe)) (##cdr _e3491735059_)))
                        (_hd3491635063_
                         (let () (declare (not safe)) (##car _e3491735059_))))
                    (if (gx#stx-pair? _tl3491535066_)
                        (let ((_e3492035069_ (gx#syntax-e _tl3491535066_)))
                          (let ((_tl3491835076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3492035069_)))
                                (_hd3491935073_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3492035069_))))
                            (if (gx#stx-pair? _tl3491835076_)
                                (let ((_e3492335079_
                                       (gx#syntax-e _tl3491835076_)))
                                  (let ((_tl3492135086_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3492335079_)))
                                        (_hd3492235083_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3492335079_))))
                                    (if (gx#stx-null? _tl3492135086_)
                                        (___match4272042721_
                                         _e3491735059_
                                         _hd3491635063_
                                         _tl3491535066_
                                         _e3492035069_
                                         _hd3491935073_
                                         _tl3491835076_
                                         _e3492335079_
                                         _hd3492235083_
                                         _tl3492135086_)
                                        (if (gx#stx-pair? _hd3491935073_)
                                            (let ((_e3493634978_
                                                   (gx#syntax-e
                                                    _hd3491935073_)))
                                              (let ((_tl3493434985_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3493634978_)))
                                                    (_hd3493534982_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3493634978_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3491835076_)
                                                    (let ((___splice4269842699_
                                                           (gx#syntax-split-splice
                                                            _tl3491835076_
                                                            '0)))
                                                      (let ((_tl3493934991_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4269842699_ '1)))
                    (_target3493734988_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4269842699_ '0))))
                (if (gx#stx-null? _tl3493934991_)
                    (___match4274642747_
                     _e3491735059_
                     _hd3491635063_
                     _tl3491535066_
                     _e3492035069_
                     _hd3491935073_
                     _tl3491835076_
                     _e3493634978_
                     _hd3493534982_
                     _tl3493434985_
                     ___splice4269842699_
                     _target3493734988_
                     _tl3493934991_)
                    (let () (declare (not safe)) (_g3491134951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3491134951_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3491134951_))))))
                                (if (gx#stx-pair? _hd3491935073_)
                                    (let ((_e3493634978_
                                           (gx#syntax-e _hd3491935073_)))
                                      (let ((_tl3493434985_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3493634978_)))
                                            (_hd3493534982_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3493634978_))))
                                        (if (gx#stx-pair/null? _tl3491835076_)
                                            (let ((___splice4269842699_
                                                   (gx#syntax-split-splice
                                                    _tl3491835076_
                                                    '0)))
                                              (let ((_tl3493934991_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4269842699_
                                                        '1)))
                                                    (_target3493734988_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4269842699_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3493934991_)
                                                    (___match4274642747_
                                                     _e3491735059_
                                                     _hd3491635063_
                                                     _tl3491535066_
                                                     _e3492035069_
                                                     _hd3491935073_
                                                     _tl3491835076_
                                                     _e3493634978_
                                                     _hd3493534982_
                                                     _tl3493434985_
                                                     ___splice4269842699_
                                                     _target3493734988_
                                                     _tl3493934991_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3491134951_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3491134951_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3491134951_))))))
                        (let () (declare (not safe)) (_g3491134951_)))))
                (let () (declare (not safe)) (_g3491134951_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx35111_)
       (let* ((_g3511435134_
               (lambda (_g3511535130_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3511535130_)))
              (_g3511335205_
               (lambda (_g3511535138_)
                 (if (gx#stx-pair? _g3511535138_)
                     (let ((_e3511935141_ (gx#syntax-e _g3511535138_)))
                       (let ((_hd3511835145_
                              (let ()
                                (declare (not safe))
                                (##car _e3511935141_)))
                             (_tl3511735148_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3511935141_))))
                         (if (gx#stx-pair/null? _tl3511735148_)
                             (let ((_g43175_
                                    (gx#syntax-split-splice
                                     _tl3511735148_
                                     '0)))
                               (begin
                                 (let ((_g43176_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g43175_)
                                              (##vector-length _g43175_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g43176_ 2)))
                                       (error "Context expects 2 values"
                                              _g43176_)))
                                 (let ((_target3512035151_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43175_ 0)))
                                       (_tl3512235154_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43175_ 1))))
                                   (if (gx#stx-null? _tl3512235154_)
                                       (letrec ((_loop3512335157_
                                                 (lambda (_hd3512135161_
                                                          _body3512735164_)
                                                   (if (gx#stx-pair?
                                                        _hd3512135161_)
                                                       (let ((_e3512435167_
                                                              (gx#syntax-e
                                                               _hd3512135161_)))
                                                         (let ((_lp-hd3512535171_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3512435167_)))
                       (_lp-tl3512635174_
                        (let () (declare (not safe)) (##cdr _e3512435167_))))
                   (_loop3512335157_
                    _lp-tl3512635174_
                    (cons _lp-hd3512535171_ _body3512735164_))))
               (let ((_body3512835177_ (reverse _body3512735164_)))
                 ((lambda (_L35181_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_g3519635199_ _g3519735202_)
                                         (cons _g3519635199_ _g3519735202_))
                                       '()
                                       _L35181_))))
                  _body3512835177_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3512335157_
                                          _target3512035151_
                                          '()))
                                       (_g3511435134_ _g3511535138_)))))
                             (_g3511435134_ _g3511535138_))))
                     (_g3511435134_ _g3511535138_)))))
         (_g3511335205_ _stx35111_)))))
  (define |gerbil/core$<module-sugar>[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx35210_)
       (let* ((_g3521335233_
               (lambda (_g3521435229_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3521435229_)))
              (_g3521235304_
               (lambda (_g3521435237_)
                 (if (gx#stx-pair? _g3521435237_)
                     (let ((_e3521835240_ (gx#syntax-e _g3521435237_)))
                       (let ((_hd3521735244_
                              (let ()
                                (declare (not safe))
                                (##car _e3521835240_)))
                             (_tl3521635247_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3521835240_))))
                         (if (gx#stx-pair/null? _tl3521635247_)
                             (let ((_g43177_
                                    (gx#syntax-split-splice
                                     _tl3521635247_
                                     '0)))
                               (begin
                                 (let ((_g43178_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g43177_)
                                              (##vector-length _g43177_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g43178_ 2)))
                                       (error "Context expects 2 values"
                                              _g43178_)))
                                 (let ((_target3521935250_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43177_ 0)))
                                       (_tl3522135253_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43177_ 1))))
                                   (if (gx#stx-null? _tl3522135253_)
                                       (letrec ((_loop3522235256_
                                                 (lambda (_hd3522035260_
                                                          _body3522635263_)
                                                   (if (gx#stx-pair?
                                                        _hd3522035260_)
                                                       (let ((_e3522335266_
                                                              (gx#syntax-e
                                                               _hd3522035260_)))
                                                         (let ((_lp-hd3522435270_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3522335266_)))
                       (_lp-tl3522535273_
                        (let () (declare (not safe)) (##cdr _e3522335266_))))
                   (_loop3522235256_
                    _lp-tl3522535273_
                    (cons _lp-hd3522435270_ _body3522635263_))))
               (let ((_body3522735276_ (reverse _body3522635263_)))
                 ((lambda (_L35280_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_g3529535298_ _g3529635301_)
                                         (cons _g3529535298_ _g3529635301_))
                                       '()
                                       _L35280_))))
                  _body3522735276_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3522235256_
                                          _target3521935250_
                                          '()))
                                       (_g3521335233_ _g3521435237_)))))
                             (_g3521335233_ _g3521435237_))))
                     (_g3521335233_ _g3521435237_)))))
         (_g3521235304_ _stx35210_)))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx35309_)
       (let* ((_g3531235336_
               (lambda (_g3531335332_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3531335332_)))
              (_g3531135458_
               (lambda (_g3531335340_)
                 (if (gx#stx-pair? _g3531335340_)
                     (let ((_e3531835343_ (gx#syntax-e _g3531335340_)))
                       (let ((_hd3531735347_
                              (let ()
                                (declare (not safe))
                                (##car _e3531835343_)))
                             (_tl3531635350_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3531835343_))))
                         (if (gx#stx-pair? _tl3531635350_)
                             (let ((_e3532135353_
                                    (gx#syntax-e _tl3531635350_)))
                               (let ((_hd3532035357_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3532135353_)))
                                     (_tl3531935360_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3532135353_))))
                                 (if (gx#stx-pair/null? _tl3531935360_)
                                     (let ((_g43179_
                                            (gx#syntax-split-splice
                                             _tl3531935360_
                                             '0)))
                                       (begin
                                         (let ((_g43180_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g43179_)
                                                      (##vector-length
                                                       _g43179_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g43180_ 2)))
                                               (error "Context expects 2 values"
                                                      _g43180_)))
                                         (let ((_target3532235363_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43179_ 0)))
                                               (_tl3532435366_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43179_ 1))))
                                           (if (gx#stx-null? _tl3532435366_)
                                               (letrec ((_loop3532535369_
                                                         (lambda (_hd3532335373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3532935376_)
                   (if (gx#stx-pair? _hd3532335373_)
                       (let ((_e3532635379_ (gx#syntax-e _hd3532335373_)))
                         (let ((_lp-hd3532735383_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3532635379_)))
                               (_lp-tl3532835386_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3532635379_))))
                           (_loop3532535369_
                            _lp-tl3532835386_
                            (cons _lp-hd3532735383_ _id3532935376_))))
                       (let ((_id3533035389_ (reverse _id3532935376_)))
                         ((lambda (_L35393_ _L35395_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3541235415_ _g3541335418_)
                                          (cons _g3541235415_ _g3541335418_))
                                        '()
                                        _L35393_))
                                (let* ((_keys35429_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3542035423_
                                                         _g3542135426_)
                                                  (cons _g3542035423_
                                                        _g3542135426_))
                                                '()
                                                _L35393_)))
                                       (_keytab35440_
                                        (let ((_ht35432_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3543435436_)
                                             (hash-put!
                                              _ht35432_
                                              _g3543435436_
                                              '#t))
                                           _keys35429_)
                                          _ht35432_))
                                       (_imports35443_
                                        (gx#core-expand-import-source
                                         _L35395_))
                                       (_fold-e35453_
                                        (letrec ((_fold-e35446_
                                                  (lambda (_in35449_ _r35451_)
                                                    (if (gx#module-import?
                                                         _in35449_)
                                                        (if (hash-get
                                                             _keytab35440_
                                                             (gx#module-import-name
                                                              _in35449_))
                                                            (cons _in35449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r35451_)
                    _r35451_)
                (if (gx#import-set? _in35449_)
                    (foldl _fold-e35446_
                           _r35451_
                           (gx#import-set-imports _in35449_))
                    _r35451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35446_)))
                                  (cons 'begin:
                                        (foldl _fold-e35453_
                                               '()
                                               _imports35443_)))
                                (_g3531235336_ _g3531335340_)))
                          _id3533035389_
                          _hd3532035357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3532535369_
                                                  _target3532235363_
                                                  '()))
                                               (_g3531235336_
                                                _g3531335340_)))))
                                     (_g3531235336_ _g3531335340_))))
                             (_g3531235336_ _g3531335340_))))
                     (_g3531235336_ _g3531335340_)))))
         (_g3531135458_ _stx35309_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx35463_)
       (let* ((_g3546635490_
               (lambda (_g3546735486_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3546735486_)))
              (_g3546535612_
               (lambda (_g3546735494_)
                 (if (gx#stx-pair? _g3546735494_)
                     (let ((_e3547235497_ (gx#syntax-e _g3546735494_)))
                       (let ((_hd3547135501_
                              (let ()
                                (declare (not safe))
                                (##car _e3547235497_)))
                             (_tl3547035504_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3547235497_))))
                         (if (gx#stx-pair? _tl3547035504_)
                             (let ((_e3547535507_
                                    (gx#syntax-e _tl3547035504_)))
                               (let ((_hd3547435511_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3547535507_)))
                                     (_tl3547335514_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3547535507_))))
                                 (if (gx#stx-pair/null? _tl3547335514_)
                                     (let ((_g43181_
                                            (gx#syntax-split-splice
                                             _tl3547335514_
                                             '0)))
                                       (begin
                                         (let ((_g43182_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g43181_)
                                                      (##vector-length
                                                       _g43181_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g43182_ 2)))
                                               (error "Context expects 2 values"
                                                      _g43182_)))
                                         (let ((_target3547635517_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43181_ 0)))
                                               (_tl3547835520_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43181_ 1))))
                                           (if (gx#stx-null? _tl3547835520_)
                                               (letrec ((_loop3547935523_
                                                         (lambda (_hd3547735527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3548335530_)
                   (if (gx#stx-pair? _hd3547735527_)
                       (let ((_e3548035533_ (gx#syntax-e _hd3547735527_)))
                         (let ((_lp-hd3548135537_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3548035533_)))
                               (_lp-tl3548235540_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3548035533_))))
                           (_loop3547935523_
                            _lp-tl3548235540_
                            (cons _lp-hd3548135537_ _id3548335530_))))
                       (let ((_id3548435543_ (reverse _id3548335530_)))
                         ((lambda (_L35547_ _L35549_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3556635569_ _g3556735572_)
                                          (cons _g3556635569_ _g3556735572_))
                                        '()
                                        _L35547_))
                                (let* ((_keys35583_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3557435577_
                                                         _g3557535580_)
                                                  (cons _g3557435577_
                                                        _g3557535580_))
                                                '()
                                                _L35547_)))
                                       (_keytab35594_
                                        (let ((_ht35586_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3558835590_)
                                             (hash-put!
                                              _ht35586_
                                              _g3558835590_
                                              '#t))
                                           _keys35583_)
                                          _ht35586_))
                                       (_imports35597_
                                        (gx#core-expand-import-source
                                         _L35549_))
                                       (_fold-e35607_
                                        (letrec ((_fold-e35600_
                                                  (lambda (_in35603_ _r35605_)
                                                    (if (gx#module-import?
                                                         _in35603_)
                                                        (if (hash-get
                                                             _keytab35594_
                                                             (gx#module-import-name
                                                              _in35603_))
                                                            _r35605_
                                                            (cons _in35603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r35605_))
                (if (gx#import-set? _in35603_)
                    (foldl _fold-e35600_
                           _r35605_
                           (gx#import-set-imports _in35603_))
                    (cons _in35603_ _r35605_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35600_)))
                                  (cons 'begin:
                                        (foldl _fold-e35607_
                                               '()
                                               _imports35597_)))
                                (_g3546635490_ _g3546735494_)))
                          _id3548435543_
                          _hd3547435511_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3547935523_
                                                  _target3547635517_
                                                  '()))
                                               (_g3546635490_
                                                _g3546735494_)))))
                                     (_g3546635490_ _g3546735494_))))
                             (_g3546635490_ _g3546735494_))))
                     (_g3546635490_ _g3546735494_)))))
         (_g3546535612_ _stx35463_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in35664_ _rename35666_)
      (gx#make-module-import
       (gx#module-import-source _in35664_)
       _rename35666_
       (gx#module-import-phi _in35664_)
       (gx#module-import-weak? _in35664_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name35617_ _pre35619_)
      (let* ((_name3562035628_ _name35617_)
             (_else3562235640_
              (lambda () (make-symbol _pre35619_ _name35617_)))
             (_K3562435648_
              (lambda (_mark35644_ _id35646_)
                (cons (make-symbol _pre35619_ _id35646_) _mark35644_))))
        (if (let () (declare (not safe)) (##pair? _name3562035628_))
            (let ((_hd3562535652_
                   (let () (declare (not safe)) (##car _name3562035628_)))
                  (_tl3562635655_
                   (let () (declare (not safe)) (##cdr _name3562035628_))))
              (let* ((_id35658_ _hd3562535652_) (_mark35661_ _tl3562635655_))
                (declare (not safe))
                (_K3562435648_ _mark35661_ _id35658_)))
            (let () (declare (not safe)) (_else3562235640_))))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx35668_)
       (let* ((_g3567135704_
               (lambda (_g3567235700_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3567235700_)))
              (_g3567035890_
               (lambda (_g3567235708_)
                 (if (gx#stx-pair? _g3567235708_)
                     (let ((_e3567835711_ (gx#syntax-e _g3567235708_)))
                       (let ((_hd3567735715_
                              (let ()
                                (declare (not safe))
                                (##car _e3567835711_)))
                             (_tl3567635718_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3567835711_))))
                         (if (gx#stx-pair? _tl3567635718_)
                             (let ((_e3568135721_
                                    (gx#syntax-e _tl3567635718_)))
                               (let ((_hd3568035725_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3568135721_)))
                                     (_tl3567935728_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3568135721_))))
                                 (if (gx#stx-pair/null? _tl3567935728_)
                                     (let ((_g43183_
                                            (gx#syntax-split-splice
                                             _tl3567935728_
                                             '0)))
                                       (begin
                                         (let ((_g43184_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g43183_)
                                                      (##vector-length
                                                       _g43183_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g43184_ 2)))
                                               (error "Context expects 2 values"
                                                      _g43184_)))
                                         (let ((_target3568235731_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43183_ 0)))
                                               (_tl3568435734_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43183_ 1))))
                                           (if (gx#stx-null? _tl3568435734_)
                                               (letrec ((_loop3568535737_
                                                         (lambda (_hd3568335741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3568935744_
                          _id3569035746_)
                   (if (gx#stx-pair? _hd3568335741_)
                       (let ((_e3568635749_ (gx#syntax-e _hd3568335741_)))
                         (let ((_lp-hd3568735753_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3568635749_)))
                               (_lp-tl3568835756_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3568635749_))))
                           (if (gx#stx-pair? _lp-hd3568735753_)
                               (let ((_e3569535759_
                                      (gx#syntax-e _lp-hd3568735753_)))
                                 (let ((_hd3569435763_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3569535759_)))
                                       (_tl3569335766_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3569535759_))))
                                   (if (gx#stx-pair? _tl3569335766_)
                                       (let ((_e3569835769_
                                              (gx#syntax-e _tl3569335766_)))
                                         (let ((_hd3569735773_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3569835769_)))
                                               (_tl3569635776_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3569835769_))))
                                           (if (gx#stx-null? _tl3569635776_)
                                               (_loop3568535737_
                                                _lp-tl3568835756_
                                                (cons _hd3569735773_
                                                      _new-id3568935744_)
                                                (cons _hd3569435763_
                                                      _id3569035746_))
                                               (_g3567135704_ _g3567235708_))))
                                       (_g3567135704_ _g3567235708_))))
                               (_g3567135704_ _g3567235708_))))
                       (let ((_new-id3569135779_ (reverse _new-id3568935744_))
                             (_id3569235782_ (reverse _id3569035746_)))
                         ((lambda (_L35785_ _L35787_ _L35788_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g3580635809_
                                                      _g3580735812_)
                                               (cons _g3580635809_
                                                     _g3580735812_))
                                             '()
                                             _L35787_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3581435817_
                                                      _g3581535820_)
                                               (cons _g3581435817_
                                                     _g3581535820_))
                                             '()
                                             _L35785_)))
                                (let* ((_keytab35823_ (make-hash-table))
                                       (_found35826_ (make-hash-table))
                                       (_g43185_
                                        (for-each
                                         (lambda (_id35829_ _new-id35831_)
                                           (hash-put!
                                            _keytab35823_
                                            (gx#core-identifier-key _id35829_)
                                            (gx#core-identifier-key
                                             _new-id35831_)))
                                         (foldr (lambda (_g3583235835_
                                                         _g3583335838_)
                                                  (cons _g3583235835_
                                                        _g3583335838_))
                                                '()
                                                _L35787_)
                                         (foldr (lambda (_g3584035843_
                                                         _g3584135846_)
                                                  (cons _g3584035843_
                                                        _g3584135846_))
                                                '()
                                                _L35785_)))
                                       (_imports35851_
                                        (gx#core-expand-import-source
                                         _L35788_))
                                       (_fold-e35871_
                                        (letrec ((_fold-e35854_
                                                  (lambda (_in35857_ _r35859_)
                                                    (if (gx#module-import?
                                                         _in35857_)
                                                        (let* ((_name35861_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in35857_))
                       (_$e35864_ (hash-get _keytab35823_ _name35861_)))
                  (if _$e35864_
                      ((lambda (_rename35868_)
                         (hash-put! _found35826_ _name35861_ '#t)
                         (cons (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                  _in35857_
                                  _rename35868_))
                               _r35859_))
                       _$e35864_)
                      (cons _in35857_ _r35859_)))
                (if (gx#import-set? _in35857_)
                    (foldl _fold-e35854_
                           _r35859_
                           (gx#import-set-imports _in35857_))
                    (cons _in35857_ _r35859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35854_))
                                       (_new-imports35874_
                                        (foldl _fold-e35871_
                                               '()
                                               _imports35851_)))
                                  (for-each
                                   (lambda (_id35879_)
                                     (if (hash-get
                                          _found35826_
                                          (gx#core-identifier-key _id35879_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; identifier is not in the import set"
                                          _stx35668_
                                          _id35879_)))
                                   (foldr (lambda (_g3588135884_ _g3588235887_)
                                            (cons _g3588135884_ _g3588235887_))
                                          '()
                                          _L35787_))
                                  (cons 'begin: _new-imports35874_))
                                (_g3567135704_ _g3567235708_)))
                          _new-id3569135779_
                          _id3569235782_
                          _hd3568035725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3568535737_
                                                  _target3568235731_
                                                  '()
                                                  '()))
                                               (_g3567135704_
                                                _g3567235708_)))))
                                     (_g3567135704_ _g3567235708_))))
                             (_g3567135704_ _g3567235708_))))
                     (_g3567135704_ _g3567235708_)))))
         (_g3567035890_ _stx35668_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx35896_)
       (let* ((_g3589935917_
               (lambda (_g3590035913_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3590035913_)))
              (_g3589835996_
               (lambda (_g3590035921_)
                 (if (gx#stx-pair? _g3590035921_)
                     (let ((_e3590535924_ (gx#syntax-e _g3590035921_)))
                       (let ((_hd3590435928_
                              (let ()
                                (declare (not safe))
                                (##car _e3590535924_)))
                             (_tl3590335931_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3590535924_))))
                         (if (gx#stx-pair? _tl3590335931_)
                             (let ((_e3590835934_
                                    (gx#syntax-e _tl3590335931_)))
                               (let ((_hd3590735938_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3590835934_)))
                                     (_tl3590635941_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3590835934_))))
                                 (if (gx#stx-pair? _tl3590635941_)
                                     (let ((_e3591135944_
                                            (gx#syntax-e _tl3590635941_)))
                                       (let ((_hd3591035948_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3591135944_)))
                                             (_tl3590935951_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3591135944_))))
                                         (if (gx#stx-null? _tl3590935951_)
                                             ((lambda (_L35954_ _L35956_)
                                                (if (gx#identifier? _L35954_)
                                                    (let* ((_pre35972_
                                                            (gx#stx-e
                                                             _L35954_))
                                                           (_imports35975_
                                                            (gx#core-expand-import-source
                                                             _L35956_))
                                                           (_rename-e35981_
                                                            (lambda (_name35978_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name35978_
                         _pre35972_))))
                   (_fold-e35991_
                    (letrec ((_fold-e35984_
                              (lambda (_in35987_ _r35989_)
                                (if (gx#module-import? _in35987_)
                                    (cons (let ((__tmp43186
                                                 (_rename-e35981_
                                                  (gx#module-import-name
                                                   _in35987_))))
                                            (declare (not safe))
                                            (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                             _in35987_
                                             __tmp43186))
                                          _r35989_)
                                    (if (gx#import-set? _in35987_)
                                        (foldl _fold-e35984_
                                               _r35989_
                                               (gx#import-set-imports
                                                _in35987_))
                                        (cons _in35987_ _r35989_))))))
                      _fold-e35984_)))
              (cons 'begin: (foldl _fold-e35991_ '() _imports35975_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3589935917_
                                                     _g3590035921_)))
                                              _hd3591035948_
                                              _hd3590735938_)
                                             (_g3589935917_ _g3590035921_))))
                                     (_g3589935917_ _g3590035921_))))
                             (_g3589935917_ _g3590035921_))))
                     (_g3589935917_ _g3590035921_)))))
         (_g3589835996_ _stx35896_)))))
  (define |gerbil/core$<module-sugar>[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx36000_)
       (letrec ((_flatten36003_
                 (lambda (_list-of-lists36258_)
                   (foldr (lambda (_v36261_ _acc36263_)
                            (if (null? _v36261_)
                                _acc36263_
                                (if (pair? _v36261_)
                                    (append (_flatten36003_ _v36261_)
                                            _acc36263_)
                                    (cons _v36261_ _acc36263_))))
                          '()
                          _list-of-lists36258_)))
                (_expand-path36005_
                 (lambda (_top36126_ _mod36128_)
                   (let* ((___stx4274942750_ _mod36128_)
                          (_g3613136153_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4274942750_))))
                     (let ((___kont4275242753_
                            (lambda (_L36221_ _L36223_)
                              (map (lambda (_mod36238_)
                                     (gx#stx-identifier
                                      _top36126_
                                      _top36126_
                                      '"/"
                                      _mod36238_))
                                   (_flatten36003_
                                    (map (lambda (_g3624036242_)
                                           (_expand-path36005_
                                            _L36223_
                                            _g3624036242_))
                                         (foldr (lambda (_g3624536248_
                                                         _g3624636251_)
                                                  (cons _g3624536248_
                                                        _g3624636251_))
                                                '()
                                                _L36221_))))))
                           (___kont4275642757_
                            (lambda (_L36160_)
                              (gx#stx-identifier
                               _top36126_
                               _top36126_
                               '"/"
                               _L36160_))))
                       (let* ((_g3613036174_
                               (lambda ()
                                 (let ((_L36160_ ___stx4274942750_))
                                   (if (or (gx#identifier? _L36160_)
                                           (gx#stx-fixnum? _L36160_))
                                       (___kont4275642757_ _L36160_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3613136153_))))))
                              (___match4277242773_
                               (lambda (_e3613736181_
                                        _hd3613636185_
                                        _tl3613536188_
                                        ___splice4275442755_
                                        _target3613836191_
                                        _tl3614036194_)
                                 (letrec ((_loop3614136197_
                                           (lambda (_hd3613936201_
                                                    _mod3614536204_)
                                             (if (gx#stx-pair? _hd3613936201_)
                                                 (let ((_e3614236207_
                                                        (gx#syntax-e
                                                         _hd3613936201_)))
                                                   (let ((_lp-tl3614436214_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3614236207_)))
                                                         (_lp-hd3614336211_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3614236207_))))
                                                     (_loop3614136197_
                                                      _lp-tl3614436214_
                                                      (cons _lp-hd3614336211_
                                                            _mod3614536204_))))
                                                 (let ((_mod3614636217_
                                                        (reverse _mod3614536204_)))
                                                   (___kont4275242753_
                                                    _mod3614636217_
                                                    _hd3613636185_))))))
                                   (_loop3614136197_
                                    _target3613836191_
                                    '())))))
                         (if (gx#stx-pair? ___stx4274942750_)
                             (let ((_e3613736181_
                                    (gx#syntax-e ___stx4274942750_)))
                               (let ((_tl3613536188_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3613736181_)))
                                     (_hd3613636185_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3613736181_))))
                                 (if (gx#stx-pair/null? _tl3613536188_)
                                     (let ((___splice4275442755_
                                            (gx#syntax-split-splice
                                             _tl3613536188_
                                             '0)))
                                       (let ((_tl3614036194_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4275442755_
                                                 '1)))
                                             (_target3613836191_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4275442755_
                                                 '0))))
                                         (if (gx#stx-null? _tl3614036194_)
                                             (___match4277242773_
                                              _e3613736181_
                                              _hd3613636185_
                                              _tl3613536188_
                                              ___splice4275442755_
                                              _target3613836191_
                                              _tl3614036194_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3613036174_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3613036174_)))))
                             (let ()
                               (declare (not safe))
                               (_g3613036174_)))))))))
         (let* ((_g3600736031_
                 (lambda (_g3600836027_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g3600836027_)))
                (_g3600636122_
                 (lambda (_g3600836035_)
                   (if (gx#stx-pair? _g3600836035_)
                       (let ((_e3601336038_ (gx#syntax-e _g3600836035_)))
                         (let ((_hd3601236042_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3601336038_)))
                               (_tl3601136045_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3601336038_))))
                           (if (gx#stx-pair? _tl3601136045_)
                               (let ((_e3601636048_
                                      (gx#syntax-e _tl3601136045_)))
                                 (let ((_hd3601536052_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3601636048_)))
                                       (_tl3601436055_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3601636048_))))
                                   (if (gx#stx-pair/null? _tl3601436055_)
                                       (let ((_g43187_
                                              (gx#syntax-split-splice
                                               _tl3601436055_
                                               '0)))
                                         (begin
                                           (let ((_g43188_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g43187_)
                                                        (##vector-length
                                                         _g43187_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g43188_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g43188_)))
                                           (let ((_target3601736058_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g43187_ 0)))
                                                 (_tl3601936061_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g43187_
                                                     1))))
                                             (if (gx#stx-null? _tl3601936061_)
                                                 (letrec ((_loop3602036064_
                                                           (lambda (_hd3601836068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod3602436071_)
                     (if (gx#stx-pair? _hd3601836068_)
                         (let ((_e3602136074_ (gx#syntax-e _hd3601836068_)))
                           (let ((_lp-hd3602236078_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3602136074_)))
                                 (_lp-tl3602336081_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3602136074_))))
                             (_loop3602036064_
                              _lp-tl3602336081_
                              (cons _lp-hd3602236078_ _mod3602436071_))))
                         (let ((_mod3602536084_ (reverse _mod3602436071_)))
                           ((lambda (_L36088_ _L36090_)
                              (cons 'begin:
                                    (_flatten36003_
                                     (map (lambda (_g3610836110_)
                                            (_expand-path36005_
                                             _L36090_
                                             _g3610836110_))
                                          (foldr (lambda (_g3611336116_
                                                          _g3611436119_)
                                                   (cons _g3611336116_
                                                         _g3611436119_))
                                                 '()
                                                 _L36088_)))))
                            _mod3602536084_
                            _hd3601536052_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3602036064_
                                                    _target3601736058_
                                                    '()))
                                                 (_g3600736031_
                                                  _g3600836035_)))))
                                       (_g3600736031_ _g3600836035_))))
                               (_g3600736031_ _g3600836035_))))
                       (_g3600736031_ _g3600836035_)))))
           (_g3600636122_ _stx36000_))))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx36267_)
       (let* ((_g3627036294_
               (lambda (_g3627136290_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3627136290_)))
              (_g3626936416_
               (lambda (_g3627136298_)
                 (if (gx#stx-pair? _g3627136298_)
                     (let ((_e3627636301_ (gx#syntax-e _g3627136298_)))
                       (let ((_hd3627536305_
                              (let ()
                                (declare (not safe))
                                (##car _e3627636301_)))
                             (_tl3627436308_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3627636301_))))
                         (if (gx#stx-pair? _tl3627436308_)
                             (let ((_e3627936311_
                                    (gx#syntax-e _tl3627436308_)))
                               (let ((_hd3627836315_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3627936311_)))
                                     (_tl3627736318_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3627936311_))))
                                 (if (gx#stx-pair/null? _tl3627736318_)
                                     (let ((_g43189_
                                            (gx#syntax-split-splice
                                             _tl3627736318_
                                             '0)))
                                       (begin
                                         (let ((_g43190_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g43189_)
                                                      (##vector-length
                                                       _g43189_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g43190_ 2)))
                                               (error "Context expects 2 values"
                                                      _g43190_)))
                                         (let ((_target3628036321_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43189_ 0)))
                                               (_tl3628236324_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43189_ 1))))
                                           (if (gx#stx-null? _tl3628236324_)
                                               (letrec ((_loop3628336327_
                                                         (lambda (_hd3628136331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3628736334_)
                   (if (gx#stx-pair? _hd3628136331_)
                       (let ((_e3628436337_ (gx#syntax-e _hd3628136331_)))
                         (let ((_lp-hd3628536341_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3628436337_)))
                               (_lp-tl3628636344_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3628436337_))))
                           (_loop3628336327_
                            _lp-tl3628636344_
                            (cons _lp-hd3628536341_ _id3628736334_))))
                       (let ((_id3628836347_ (reverse _id3628736334_)))
                         ((lambda (_L36351_ _L36353_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3637036373_ _g3637136376_)
                                          (cons _g3637036373_ _g3637136376_))
                                        '()
                                        _L36351_))
                                (let* ((_keys36387_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3637836381_
                                                         _g3637936384_)
                                                  (cons _g3637836381_
                                                        _g3637936384_))
                                                '()
                                                _L36351_)))
                                       (_keytab36398_
                                        (let ((_ht36390_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3639236394_)
                                             (hash-put!
                                              _ht36390_
                                              _g3639236394_
                                              '#t))
                                           _keys36387_)
                                          _ht36390_))
                                       (_exports36401_
                                        (gx#core-expand-export-source
                                         _L36353_))
                                       (_fold-e36411_
                                        (letrec ((_fold-e36404_
                                                  (lambda (_out36407_ _r36409_)
                                                    (if (gx#module-export?
                                                         _out36407_)
                                                        (if (hash-get
                                                             _keytab36398_
                                                             (gx#module-export-name
                                                              _out36407_))
                                                            _r36409_
                                                            (cons _out36407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r36409_))
                (if (gx#export-set? _out36407_)
                    (foldl _fold-e36404_
                           _r36409_
                           (gx#export-set-exports _out36407_))
                    _r36409_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36404_)))
                                  (cons 'begin:
                                        (foldl _fold-e36411_
                                               '()
                                               _exports36401_)))
                                (_g3627036294_ _g3627136298_)))
                          _id3628836347_
                          _hd3627836315_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3628336327_
                                                  _target3628036321_
                                                  '()))
                                               (_g3627036294_
                                                _g3627136298_)))))
                                     (_g3627036294_ _g3627136298_))))
                             (_g3627036294_ _g3627136298_))))
                     (_g3627036294_ _g3627136298_)))))
         (_g3626936416_ _stx36267_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out36421_ _rename36423_)
      (gx#make-module-export
       (gx#module-export-context _out36421_)
       (gx#module-export-key _out36421_)
       (gx#module-export-phi _out36421_)
       _rename36423_
       (gx#module-export-weak? _out36421_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx36425_)
       (let* ((_g3642836461_
               (lambda (_g3642936457_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3642936457_)))
              (_g3642736647_
               (lambda (_g3642936465_)
                 (if (gx#stx-pair? _g3642936465_)
                     (let ((_e3643536468_ (gx#syntax-e _g3642936465_)))
                       (let ((_hd3643436472_
                              (let ()
                                (declare (not safe))
                                (##car _e3643536468_)))
                             (_tl3643336475_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3643536468_))))
                         (if (gx#stx-pair? _tl3643336475_)
                             (let ((_e3643836478_
                                    (gx#syntax-e _tl3643336475_)))
                               (let ((_hd3643736482_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3643836478_)))
                                     (_tl3643636485_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3643836478_))))
                                 (if (gx#stx-pair/null? _tl3643636485_)
                                     (let ((_g43191_
                                            (gx#syntax-split-splice
                                             _tl3643636485_
                                             '0)))
                                       (begin
                                         (let ((_g43192_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g43191_)
                                                      (##vector-length
                                                       _g43191_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g43192_ 2)))
                                               (error "Context expects 2 values"
                                                      _g43192_)))
                                         (let ((_target3643936488_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43191_ 0)))
                                               (_tl3644136491_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43191_ 1))))
                                           (if (gx#stx-null? _tl3644136491_)
                                               (letrec ((_loop3644236494_
                                                         (lambda (_hd3644036498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3644636501_
                          _id3644736503_)
                   (if (gx#stx-pair? _hd3644036498_)
                       (let ((_e3644336506_ (gx#syntax-e _hd3644036498_)))
                         (let ((_lp-hd3644436510_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3644336506_)))
                               (_lp-tl3644536513_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3644336506_))))
                           (if (gx#stx-pair? _lp-hd3644436510_)
                               (let ((_e3645236516_
                                      (gx#syntax-e _lp-hd3644436510_)))
                                 (let ((_hd3645136520_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3645236516_)))
                                       (_tl3645036523_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3645236516_))))
                                   (if (gx#stx-pair? _tl3645036523_)
                                       (let ((_e3645536526_
                                              (gx#syntax-e _tl3645036523_)))
                                         (let ((_hd3645436530_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3645536526_)))
                                               (_tl3645336533_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3645536526_))))
                                           (if (gx#stx-null? _tl3645336533_)
                                               (_loop3644236494_
                                                _lp-tl3644536513_
                                                (cons _hd3645436530_
                                                      _new-id3644636501_)
                                                (cons _hd3645136520_
                                                      _id3644736503_))
                                               (_g3642836461_ _g3642936465_))))
                                       (_g3642836461_ _g3642936465_))))
                               (_g3642836461_ _g3642936465_))))
                       (let ((_new-id3644836536_ (reverse _new-id3644636501_))
                             (_id3644936539_ (reverse _id3644736503_)))
                         ((lambda (_L36542_ _L36544_ _L36545_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g3656336566_
                                                      _g3656436569_)
                                               (cons _g3656336566_
                                                     _g3656436569_))
                                             '()
                                             _L36544_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3657136574_
                                                      _g3657236577_)
                                               (cons _g3657136574_
                                                     _g3657236577_))
                                             '()
                                             _L36542_)))
                                (let* ((_keytab36580_ (make-hash-table))
                                       (_found36583_ (make-hash-table))
                                       (_g43193_
                                        (for-each
                                         (lambda (_id36586_ _new-id36588_)
                                           (hash-put!
                                            _keytab36580_
                                            (gx#core-identifier-key _id36586_)
                                            (gx#core-identifier-key
                                             _new-id36588_)))
                                         (foldr (lambda (_g3658936592_
                                                         _g3659036595_)
                                                  (cons _g3658936592_
                                                        _g3659036595_))
                                                '()
                                                _L36544_)
                                         (foldr (lambda (_g3659736600_
                                                         _g3659836603_)
                                                  (cons _g3659736600_
                                                        _g3659836603_))
                                                '()
                                                _L36542_)))
                                       (_exports36608_
                                        (gx#core-expand-export-source
                                         _L36545_))
                                       (_fold-e36628_
                                        (letrec ((_fold-e36611_
                                                  (lambda (_out36614_ _r36616_)
                                                    (if (gx#module-export?
                                                         _out36614_)
                                                        (let* ((_name36618_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out36614_))
                       (_$e36621_ (hash-get _keytab36580_ _name36618_)))
                  (if _$e36621_
                      ((lambda (_rename36625_)
                         (hash-put! _found36583_ _name36618_ '#t)
                         (cons (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                  _out36614_
                                  _rename36625_))
                               _r36616_))
                       _$e36621_)
                      (cons _out36614_ _r36616_)))
                (if (gx#export-set? _out36614_)
                    (foldl _fold-e36611_
                           _r36616_
                           (gx#export-set-exports _out36614_))
                    (cons _out36614_ _r36616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36611_))
                                       (_new-exports36631_
                                        (foldl _fold-e36628_
                                               '()
                                               _exports36608_)))
                                  (for-each
                                   (lambda (_id36636_)
                                     (if (hash-get
                                          _found36583_
                                          (gx#core-identifier-key _id36636_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; identifier is not in the export set"
                                          _stx36425_
                                          _id36636_)))
                                   (foldr (lambda (_g3663836641_ _g3663936644_)
                                            (cons _g3663836641_ _g3663936644_))
                                          '()
                                          _L36544_))
                                  (cons 'begin: _new-exports36631_))
                                (_g3642836461_ _g3642936465_)))
                          _new-id3644836536_
                          _id3644936539_
                          _hd3643736482_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3644236494_
                                                  _target3643936488_
                                                  '()
                                                  '()))
                                               (_g3642836461_
                                                _g3642936465_)))))
                                     (_g3642836461_ _g3642936465_))))
                             (_g3642836461_ _g3642936465_))))
                     (_g3642836461_ _g3642936465_)))))
         (_g3642736647_ _stx36425_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx36653_)
       (let* ((_g3665636674_
               (lambda (_g3665736670_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3665736670_)))
              (_g3665536753_
               (lambda (_g3665736678_)
                 (if (gx#stx-pair? _g3665736678_)
                     (let ((_e3666236681_ (gx#syntax-e _g3665736678_)))
                       (let ((_hd3666136685_
                              (let ()
                                (declare (not safe))
                                (##car _e3666236681_)))
                             (_tl3666036688_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3666236681_))))
                         (if (gx#stx-pair? _tl3666036688_)
                             (let ((_e3666536691_
                                    (gx#syntax-e _tl3666036688_)))
                               (let ((_hd3666436695_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3666536691_)))
                                     (_tl3666336698_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3666536691_))))
                                 (if (gx#stx-pair? _tl3666336698_)
                                     (let ((_e3666836701_
                                            (gx#syntax-e _tl3666336698_)))
                                       (let ((_hd3666736705_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3666836701_)))
                                             (_tl3666636708_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3666836701_))))
                                         (if (gx#stx-null? _tl3666636708_)
                                             ((lambda (_L36711_ _L36713_)
                                                (if (gx#identifier? _L36711_)
                                                    (let* ((_pre36729_
                                                            (gx#stx-e
                                                             _L36711_))
                                                           (_exports36732_
                                                            (gx#core-expand-export-source
                                                             _L36713_))
                                                           (_rename-e36738_
                                                            (lambda (_name36735_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36735_
                         _pre36729_))))
                   (_fold-e36748_
                    (letrec ((_fold-e36741_
                              (lambda (_out36744_ _r36746_)
                                (if (gx#module-export? _out36744_)
                                    (cons (let ((__tmp43194
                                                 (_rename-e36738_
                                                  (gx#module-export-name
                                                   _out36744_))))
                                            (declare (not safe))
                                            (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                             _out36744_
                                             __tmp43194))
                                          _r36746_)
                                    (if (gx#export-set? _out36744_)
                                        (foldl _fold-e36741_
                                               _r36746_
                                               (gx#export-set-exports
                                                _out36744_))
                                        (cons _out36744_ _r36746_))))))
                      _fold-e36741_)))
              (cons 'begin: (foldl _fold-e36748_ '() _exports36732_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3665636674_
                                                     _g3665736678_)))
                                              _hd3666736705_
                                              _hd3666436695_)
                                             (_g3665636674_ _g3665736678_))))
                                     (_g3665636674_ _g3665736678_))))
                             (_g3665636674_ _g3665736678_))))
                     (_g3665636674_ _g3665736678_)))))
         (_g3665536753_ _stx36653_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx36757_)
       (let* ((_g3676036780_
               (lambda (_g3676136776_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3676136776_)))
              (_g3675937015_
               (lambda (_g3676136784_)
                 (if (gx#stx-pair? _g3676136784_)
                     (let ((_e3676536787_ (gx#syntax-e _g3676136784_)))
                       (let ((_hd3676436791_
                              (let ()
                                (declare (not safe))
                                (##car _e3676536787_)))
                             (_tl3676336794_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3676536787_))))
                         (if (gx#stx-pair/null? _tl3676336794_)
                             (let ((_g43195_
                                    (gx#syntax-split-splice
                                     _tl3676336794_
                                     '0)))
                               (begin
                                 (let ((_g43196_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g43195_)
                                              (##vector-length _g43195_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g43196_ 2)))
                                       (error "Context expects 2 values"
                                              _g43196_)))
                                 (let ((_target3676636797_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43195_ 0)))
                                       (_tl3676836800_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43195_ 1))))
                                   (if (gx#stx-null? _tl3676836800_)
                                       (letrec ((_loop3676936803_
                                                 (lambda (_hd3676736807_
                                                          _id3677336810_)
                                                   (if (gx#stx-pair?
                                                        _hd3676736807_)
                                                       (let ((_e3677036813_
                                                              (gx#syntax-e
                                                               _hd3676736807_)))
                                                         (let ((_lp-hd3677136817_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3677036813_)))
                       (_lp-tl3677236820_
                        (let () (declare (not safe)) (##cdr _e3677036813_))))
                   (_loop3676936803_
                    _lp-tl3677236820_
                    (cons _lp-hd3677136817_ _id3677336810_))))
               (let ((_id3677436823_ (reverse _id3677336810_)))
                 ((lambda (_L36827_)
                    (let _lp36843_ ((_rest36846_
                                     (foldr (lambda (_g3700637009_
                                                     _g3700737012_)
                                              (cons _g3700637009_
                                                    _g3700737012_))
                                            '()
                                            _L36827_))
                                    (_ids36848_ '()))
                      (let* ((___stx4277542776_ _rest36846_)
                             (_g3685136863_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4277542776_))))
                        (let ((___kont4277842779_
                               (lambda (_L36891_ _L36893_)
                                 (let ((_info36908_
                                        (gx#syntax-local-value
                                         _L36893_
                                         false)))
                                   (if (let ()
                                         (declare (not safe))
                                         (class-instance?
                                          |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                                          _info36908_))
                                       (let* ((_g3691036927_
                                               (slot-ref
                                                _info36908_
                                                'expander-identifiers))
                                              (_E3691236933_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _g3691036927_)))
                                              (_K3691336945_
                                               (lambda (_setf36937_
                                                        _getf36939_
                                                        _type?36940_
                                                        _make-type36941_
                                                        _type::t36942_
                                                        _super36943_)
                                                 (_lp36843_
                                                  _L36891_
                                                  (cons _L36893_
                                                        (cons _type::t36942_
                                                              (cons _make-type36941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _type?36940_
                                  (foldr cons
                                         (foldr cons _ids36848_ _setf36937_)
                                         _getf36939_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _g3691036927_))
                                             (let ((_hd3691436949_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _g3691036927_)))
                                                   (_tl3691536952_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _g3691036927_))))
                                               (let ((_super36955_
                                                      _hd3691436949_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _tl3691536952_))
                                                     (let ((_hd3691636958_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _tl3691536952_)))
                                                           (_tl3691736961_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _tl3691536952_))))
                                                       (let ((_type::t36964_
                                                              _hd3691636958_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##pair? _tl3691736961_))
                     (let ((_hd3691836967_
                            (let ()
                              (declare (not safe))
                              (##car _tl3691736961_)))
                           (_tl3691936970_
                            (let ()
                              (declare (not safe))
                              (##cdr _tl3691736961_))))
                       (let ((_make-type36973_ _hd3691836967_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _tl3691936970_))
                             (let ((_hd3692036976_
                                    (let ()
                                      (declare (not safe))
                                      (##car _tl3691936970_)))
                                   (_tl3692136979_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl3691936970_))))
                               (let ((_type?36982_ _hd3692036976_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _tl3692136979_))
                                     (let ((_hd3692236985_
                                            (let ()
                                              (declare (not safe))
                                              (##car _tl3692136979_)))
                                           (_tl3692336988_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _tl3692136979_))))
                                       (let ((_getf36991_ _hd3692236985_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _tl3692336988_))
                                             (let ((_hd3692436994_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _tl3692336988_)))
                                                   (_tl3692536997_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _tl3692336988_))))
                                               (let ((_setf37000_
                                                      _hd3692436994_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _tl3692536997_))
                                                     (_K3691336945_
                                                      _setf37000_
                                                      _getf36991_
                                                      _type?36982_
                                                      _make-type36973_
                                                      _type::t36964_
                                                      _super36955_)
                                                     (_E3691236933_))))
                                             (_E3691236933_))))
                                     (_E3691236933_))))
                             (_E3691236933_))))
                     (_E3691236933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E3691236933_))))
                                             (_E3691236933_)))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Incomplete type info"
                                        _stx36757_
                                        _L36893_)))))
                              (___kont4278042781_
                               (lambda () (cons 'begin: _ids36848_))))
                          (if (gx#stx-pair? ___stx4277542776_)
                              (let ((_e3685736881_
                                     (gx#syntax-e ___stx4277542776_)))
                                (let ((_tl3685536888_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3685736881_)))
                                      (_hd3685636885_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3685736881_))))
                                  (___kont4277842779_
                                   _tl3685536888_
                                   _hd3685636885_)))
                              (___kont4278042781_))))))
                  _id3677436823_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3676936803_
                                          _target3676636797_
                                          '()))
                                       (_g3676036780_ _g3676136784_)))))
                             (_g3676036780_ _g3676136784_))))
                     (_g3676036780_ _g3676136784_)))))
         (_g3675937015_ _stx36757_))))))
