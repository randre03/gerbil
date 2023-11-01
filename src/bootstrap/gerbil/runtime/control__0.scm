(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1698867094)
  (begin
    (define make-promise
      (lambda (_thunk6966_)
        (let () (declare (not safe)) (##make-delay-promise _thunk6966_))))
    (define call-with-parameters
      (lambda (_thunk6914_ . _rest6915_)
        (let* ((_rest69166927_ _rest6915_)
               (_E69196931_
                (lambda () (error '"No clause matching" _rest69166927_))))
          (let ((_K69216947_
                 (lambda (_rest6942_ _val6943_ _param6944_)
                   (let ((__tmp7266
                          (if (let () (declare (not safe)) (null? _rest6942_))
                              _thunk6914_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk6914_
                                       _rest6942_)))))
                     (declare (not safe))
                     (##parameterize1 _param6944_ _val6943_ __tmp7266))))
                (_K69206936_ (lambda () (_thunk6914_))))
            (let ((_try-match69186939_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest69166927_))
                         (let () (declare (not safe)) (_thunk6914_))
                         (let () (declare (not safe)) (_E69196931_))))))
              (if (let () (declare (not safe)) (##pair? _rest69166927_))
                  (let ((_tl69236952_
                         (let () (declare (not safe)) (##cdr _rest69166927_)))
                        (_hd69226950_
                         (let () (declare (not safe)) (##car _rest69166927_))))
                    (if (let () (declare (not safe)) (##pair? _tl69236952_))
                        (let ((_tl69256959_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl69236952_)))
                              (_hd69246957_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl69236952_))))
                          (let ((_param6955_ _hd69226950_)
                                (_val6962_ _hd69246957_)
                                (_rest6964_ _tl69256959_))
                            (let ()
                              (declare (not safe))
                              (_K69216947_ _rest6964_ _val6962_ _param6955_))))
                        (let () (declare (not safe)) (_E69196931_))))
                  (let () (declare (not safe)) (_try-match69186939_))))))))
    (define with-unwind-protect
      (lambda (_K6907_ _fini6908_)
        (let ((_once6910_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once6910_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once6910_ '#t)))
           _K6907_
           _fini6908_))))
    (define keyword-dispatch
      (lambda (_kwt6804_ _K6805_ . _all-args6806_)
        (if _kwt6804_
            (if (let () (declare (not safe)) (vector? _kwt6804_))
                '#!void
                (error '"expected vector" _kwt6804_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K6805_))
            '#!void
            (error '"expected procedure" _K6805_))
        (let ((_keys6808_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp6810_ ((_rest6812_ _all-args6806_)
                         (_args6813_ '#f)
                         (_tail6814_ '#f))
            (let* ((_rest68156823_ _rest6812_)
                   (_else68176831_
                    (lambda ()
                      (if _args6813_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail6814_ '()))
                            (let ((__tmp7267
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys6808_ _args6813_))))
                              (declare (not safe))
                              (##apply _K6805_ __tmp7267)))
                          (_K6805_ _keys6808_))))
                   (_K68196895_
                    (lambda (_hd-rest6834_ _hd6835_)
                      (if (keyword? _hd6835_)
                          (let* ((_hd-rest68366843_ _hd-rest6834_)
                                 (_E68386847_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest68366843_)))
                                 (_K68396855_
                                  (lambda (_rest6850_ _val6851_)
                                    (if _kwt6804_
                                        (let ((_pos6853_
                                               (let ((__tmp7271
                                                      (keyword-hash _hd6835_))
                                                     (__tmp7270
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt6804_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp7271
                                                  __tmp7270))))
                                          (if (let ((__tmp7272
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt6804_
                                                        _pos6853_))))
                                                (declare (not safe))
                                                (eq? _hd6835_ __tmp7272))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K6805_
                                                     _hd6835_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys6808_ _hd6835_))
                                        (error '"Duplicate keyword argument"
                                               _K6805_
                                               _hd6835_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys6808_
                                       _hd6835_
                                       _val6851_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp6810_
                                       _rest6850_
                                       _args6813_
                                       _tail6814_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest68366843_))
                                (let ((_hd68406858_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest68366843_)))
                                      (_tl68416860_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest68366843_))))
                                  (let* ((_val6863_ _hd68406858_)
                                         (_rest6865_ _tl68416860_))
                                    (declare (not safe))
                                    (_K68396855_ _rest6865_ _val6863_)))
                                (let () (declare (not safe)) (_E68386847_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd6835_ '#!key))
                              (let* ((_hd-rest68666873_ _hd-rest6834_)
                                     (_E68686877_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest68666873_)))
                                     (_K68696883_
                                      (lambda (_rest6880_ _val6881_)
                                        (if _args6813_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail6814_
                                                 _hd-rest6834_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp6810_
                                                 _rest6880_
                                                 _args6813_
                                                 _hd-rest6834_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp6810_
                                               _rest6880_
                                               _hd-rest6834_
                                               _hd-rest6834_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest68666873_))
                                    (let ((_hd68706886_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest68666873_)))
                                          (_tl68716888_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest68666873_))))
                                      (let* ((_val6891_ _hd68706886_)
                                             (_rest6893_ _tl68716888_))
                                        (declare (not safe))
                                        (_K68696883_ _rest6893_ _val6891_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E68686877_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd6835_ '#!rest))
                                  (if _args6813_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail6814_
                                           _hd-rest6834_))
                                        (let ((__tmp7269
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys6808_
                                                       _args6813_))))
                                          (declare (not safe))
                                          (##apply _K6805_ __tmp7269)))
                                      (let ((__tmp7268
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys6808_
                                                     _hd-rest6834_))))
                                        (declare (not safe))
                                        (##apply _K6805_ __tmp7268)))
                                  (if _args6813_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail6814_ _rest6812_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp6810_
                                           _hd-rest6834_
                                           _args6813_
                                           _rest6812_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp6810_
                                         _hd-rest6834_
                                         _rest6812_
                                         _rest6812_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest68156823_))
                  (let ((_hd68206898_
                         (let () (declare (not safe)) (##car _rest68156823_)))
                        (_tl68216900_
                         (let () (declare (not safe)) (##cdr _rest68156823_))))
                    (let* ((_hd6903_ _hd68206898_)
                           (_hd-rest6905_ _tl68216900_))
                      (declare (not safe))
                      (_K68196895_ _hd-rest6905_ _hd6903_)))
                  (let () (declare (not safe)) (_else68176831_))))))))
    (define keyword-rest
      (lambda (_kwt6795_ . _drop6796_)
        (for-each
         (lambda (_kw6798_)
           (let () (declare (not safe)) (table-set! _kwt6795_ _kw6798_)))
         _drop6796_)
        (let ((__tmp7273
               (lambda (_k6800_ _v6801_ _r6802_)
                 (let ((__tmp7274
                        (let () (declare (not safe)) (cons _v6801_ _r6802_))))
                   (declare (not safe))
                   (cons _k6800_ __tmp7274)))))
          (declare (not safe))
          (hash-fold __tmp7273 '() _kwt6795_))))))
