(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1698333192)
  (begin
    (define make-promise
      (lambda (_thunk9337_)
        (let () (declare (not safe)) (##make-delay-promise _thunk9337_))))
    (define call-with-parameters
      (lambda (_thunk9285_ . _rest9286_)
        (let* ((_rest92879298_ _rest9286_)
               (_E92909302_
                (lambda () (error '"No clause matching" _rest92879298_))))
          (let ((_K92929318_
                 (lambda (_rest9313_ _val9314_ _param9315_)
                   (let ((__tmp9349
                          (if (let () (declare (not safe)) (null? _rest9313_))
                              _thunk9285_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk9285_
                                       _rest9313_)))))
                     (declare (not safe))
                     (##parameterize1 _param9315_ _val9314_ __tmp9349))))
                (_K92919307_ (lambda () (_thunk9285_))))
            (let ((_try-match92899310_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest92879298_))
                         (let () (declare (not safe)) (_thunk9285_))
                         (let () (declare (not safe)) (_E92909302_))))))
              (if (let () (declare (not safe)) (##pair? _rest92879298_))
                  (let ((_tl92949323_
                         (let () (declare (not safe)) (##cdr _rest92879298_)))
                        (_hd92939321_
                         (let () (declare (not safe)) (##car _rest92879298_))))
                    (if (let () (declare (not safe)) (##pair? _tl92949323_))
                        (let ((_tl92969330_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl92949323_)))
                              (_hd92959328_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl92949323_))))
                          (let ((_param9326_ _hd92939321_)
                                (_val9333_ _hd92959328_)
                                (_rest9335_ _tl92969330_))
                            (let ()
                              (declare (not safe))
                              (_K92929318_ _rest9335_ _val9333_ _param9326_))))
                        (let () (declare (not safe)) (_E92909302_))))
                  (let () (declare (not safe)) (_try-match92899310_))))))))
    (define with-unwind-protect
      (lambda (_K9278_ _fini9279_)
        (let ((_once9281_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once9281_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once9281_ '#t)))
           _K9278_
           _fini9279_))))
    (define keyword-dispatch
      (lambda (_kwt9175_ _K9176_ . _all-args9177_)
        (if _kwt9175_
            (if (let () (declare (not safe)) (vector? _kwt9175_))
                '#!void
                (error '"expected vector" _kwt9175_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K9176_))
            '#!void
            (error '"expected procedure" _K9176_))
        (let ((_keys9179_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp9181_ ((_rest9183_ _all-args9177_)
                         (_args9184_ '#f)
                         (_tail9185_ '#f))
            (let* ((_rest91869194_ _rest9183_)
                   (_else91889202_
                    (lambda ()
                      (if _args9184_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail9185_ '()))
                            (let ((__tmp9350
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys9179_ _args9184_))))
                              (declare (not safe))
                              (##apply _K9176_ __tmp9350)))
                          (_K9176_ _keys9179_))))
                   (_K91909266_
                    (lambda (_hd-rest9205_ _hd9206_)
                      (if (keyword? _hd9206_)
                          (let* ((_hd-rest92079214_ _hd-rest9205_)
                                 (_E92099218_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest92079214_)))
                                 (_K92109226_
                                  (lambda (_rest9221_ _val9222_)
                                    (if _kwt9175_
                                        (let ((_pos9224_
                                               (let ((__tmp9354
                                                      (keyword-hash _hd9206_))
                                                     (__tmp9353
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt9175_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp9354
                                                  __tmp9353))))
                                          (if (let ((__tmp9355
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt9175_
                                                        _pos9224_))))
                                                (declare (not safe))
                                                (eq? _hd9206_ __tmp9355))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K9176_
                                                     _hd9206_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys9179_ _hd9206_))
                                        (error '"Duplicate keyword argument"
                                               _K9176_
                                               _hd9206_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys9179_
                                       _hd9206_
                                       _val9222_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp9181_
                                       _rest9221_
                                       _args9184_
                                       _tail9185_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest92079214_))
                                (let ((_hd92119229_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest92079214_)))
                                      (_tl92129231_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest92079214_))))
                                  (let* ((_val9234_ _hd92119229_)
                                         (_rest9236_ _tl92129231_))
                                    (declare (not safe))
                                    (_K92109226_ _rest9236_ _val9234_)))
                                (let () (declare (not safe)) (_E92099218_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd9206_ '#!key))
                              (let* ((_hd-rest92379244_ _hd-rest9205_)
                                     (_E92399248_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest92379244_)))
                                     (_K92409254_
                                      (lambda (_rest9251_ _val9252_)
                                        (if _args9184_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail9185_
                                                 _hd-rest9205_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp9181_
                                                 _rest9251_
                                                 _args9184_
                                                 _hd-rest9205_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp9181_
                                               _rest9251_
                                               _hd-rest9205_
                                               _hd-rest9205_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest92379244_))
                                    (let ((_hd92419257_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest92379244_)))
                                          (_tl92429259_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest92379244_))))
                                      (let* ((_val9262_ _hd92419257_)
                                             (_rest9264_ _tl92429259_))
                                        (declare (not safe))
                                        (_K92409254_ _rest9264_ _val9262_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E92399248_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd9206_ '#!rest))
                                  (if _args9184_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail9185_
                                           _hd-rest9205_))
                                        (let ((__tmp9352
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys9179_
                                                       _args9184_))))
                                          (declare (not safe))
                                          (##apply _K9176_ __tmp9352)))
                                      (let ((__tmp9351
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys9179_
                                                     _hd-rest9205_))))
                                        (declare (not safe))
                                        (##apply _K9176_ __tmp9351)))
                                  (if _args9184_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail9185_ _rest9183_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp9181_
                                           _hd-rest9205_
                                           _args9184_
                                           _rest9183_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp9181_
                                         _hd-rest9205_
                                         _rest9183_
                                         _rest9183_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest91869194_))
                  (let ((_hd91919269_
                         (let () (declare (not safe)) (##car _rest91869194_)))
                        (_tl91929271_
                         (let () (declare (not safe)) (##cdr _rest91869194_))))
                    (let* ((_hd9274_ _hd91919269_)
                           (_hd-rest9276_ _tl91929271_))
                      (declare (not safe))
                      (_K91909266_ _hd-rest9276_ _hd9274_)))
                  (let () (declare (not safe)) (_else91889202_))))))))
    (define keyword-rest
      (lambda (_kwt9166_ . _drop9167_)
        (for-each
         (lambda (_kw9169_)
           (let () (declare (not safe)) (table-set! _kwt9166_ _kw9169_)))
         _drop9167_)
        (let ((__tmp9356
               (lambda (_k9171_ _v9172_ _r9173_)
                 (let ((__tmp9357
                        (let () (declare (not safe)) (cons _v9172_ _r9173_))))
                   (declare (not safe))
                   (cons _k9171_ __tmp9357)))))
          (declare (not safe))
          (hash-fold __tmp9356 '() _kwt9166_))))))
