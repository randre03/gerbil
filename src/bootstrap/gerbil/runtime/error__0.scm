(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1698867094)
  (begin
    (define Exception::t
      (let ()
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         '()
         '()
         'Exception
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args10672_
        (apply make-class-instance Exception::t _$args10672_)))
    (define StackTrace::t
      (let ()
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         '()
         '(continuation)
         'StackTrace
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args10669_
        (apply make-class-instance StackTrace::t _$args10669_)))
    (define StackTrace-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-accessor StackTrace::t 'continuation)))
    (define StackTrace-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator StackTrace::t 'continuation)))
    (define &StackTrace-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor StackTrace::t 'continuation)))
    (define &StackTrace-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator StackTrace::t 'continuation)))
    (define Error::t
      (let ((__tmp10692
             (let ((__tmp10693
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp10693))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp10692
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args10666_ (apply make-class-instance Error::t _$args10666_)))
    (define Error-message
      (let ()
        (declare (not safe))
        (make-class-slot-accessor Error::t 'message)))
    (define Error-irritants
      (let ()
        (declare (not safe))
        (make-class-slot-accessor Error::t 'irritants)))
    (define Error-where
      (let () (declare (not safe)) (make-class-slot-accessor Error::t 'where)))
    (define Error-message-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator Error::t 'message)))
    (define Error-irritants-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator Error::t 'irritants)))
    (define Error-where-set!
      (let () (declare (not safe)) (make-class-slot-mutator Error::t 'where)))
    (define &Error-message
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor Error::t 'message)))
    (define &Error-irritants
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor Error::t 'irritants)))
    (define &Error-where
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor Error::t 'where)))
    (define &Error-message-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator Error::t 'message)))
    (define &Error-irritants-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator Error::t 'irritants)))
    (define &Error-where-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator Error::t 'where)))
    (define RuntimeException::t
      (let ((__tmp10694
             (let ((__tmp10695
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp10695))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp10694
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args10663_
        (apply make-class-instance RuntimeException::t _$args10663_)))
    (define RuntimeException-exception
      (let ()
        (declare (not safe))
        (make-class-slot-accessor RuntimeException::t 'exception)))
    (define RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator RuntimeException::t 'exception)))
    (define &RuntimeException-exception
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor RuntimeException::t 'exception)))
    (define &RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator RuntimeException::t 'exception)))
    (define gerbil-exception-handler-hook
      (lambda (_exn10658_ _continue10659_)
        (let ((_exn10661_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn10658_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn10661_ _continue10659_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn10654_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn10654_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn10654_ 'continuation))
                '#!void
                (let ((__tmp10696
                       (lambda (_cont10656_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn10654_
                            'continuation
                            _cont10656_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp10696)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn10654_))))
    (define error
      (lambda (_message10651_ . _irritants10652_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message10651_
                  'irritants:
                  _irritants10652_)))))
    (define with-exception-handler
      (lambda (_handler10644_ _thunk10645_)
        (if (let () (declare (not safe)) (procedure? _handler10644_))
            '#!void
            (raise (let ((__tmp10697
                          (let ()
                            (declare (not safe))
                            (cons _handler10644_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp10697))))
        (if (let () (declare (not safe)) (procedure? _thunk10645_))
            '#!void
            (raise (let ((__tmp10698
                          (let ()
                            (declare (not safe))
                            (cons _thunk10645_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp10698))))
        (let ((__tmp10699
               (lambda (_exn10647_)
                 (let ((_exn10649_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn10647_))))
                   (_handler10644_ _exn10649_)))))
          (declare (not safe))
          (##with-exception-handler __tmp10699 _thunk10645_))))
    (define with-catch
      (lambda (_handler10637_ _thunk10638_)
        (if (let () (declare (not safe)) (procedure? _handler10637_))
            '#!void
            (raise (let ((__tmp10700
                          (let ()
                            (declare (not safe))
                            (cons _handler10637_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp10700))))
        (if (let () (declare (not safe)) (procedure? _thunk10638_))
            '#!void
            (raise (let ((__tmp10701
                          (let ()
                            (declare (not safe))
                            (cons _thunk10638_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp10701))))
        (let ((__tmp10702
               (lambda (_cont10640_)
                 (with-exception-handler
                  (lambda (_exn10642_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont10640_
                       _handler10637_
                       _exn10642_)))
                  _thunk10638_))))
          (declare (not safe))
          (##continuation-capture __tmp10702))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn10628_)
        (if (or (heap-overflow-exception? _exn10628_)
                (stack-overflow-exception? _exn10628_))
            _exn10628_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn10628_))
                _exn10628_
                (if (macro-exception? _exn10628_)
                    (let ((_rte10633_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn10628_))))
                      (let ((__tmp10703
                             (lambda (_cont10635_)
                               (let ((__tmp10704
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont10635_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte10633_
                                  'continuation
                                  __tmp10704)))))
                        (declare (not safe))
                        (##continuation-capture __tmp10703))
                      _rte10633_)
                    _exn10628_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj10623_)
        (let ((_$e10625_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj10623_))))
          (if _$e10625_ _$e10625_ (error-exception? _obj10623_)))))
    (define error-message
      (lambda (_obj10621_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj10621_))
            (let () (declare (not safe)) (slot-ref _obj10621_ 'message))
            (if (error-exception? _obj10621_)
                (error-exception-message _obj10621_)
                '#f))))
    (define error-irritants
      (lambda (_obj10619_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj10619_))
            (let () (declare (not safe)) (slot-ref _obj10619_ 'irritants))
            (if (error-exception? _obj10619_)
                (error-exception-parameters _obj10619_)
                '#f))))
    (define error-trace
      (lambda (_obj10617_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj10617_))
            (let () (declare (not safe)) (slot-ref _obj10617_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e10599_ _port10600_)
        (let ((_$e10602_
               (let ()
                 (declare (not safe))
                 (method-ref _e10599_ 'display-exception))))
          (if _$e10602_
              ((lambda (_f10605_) (_f10605_ _e10599_ _port10600_)) _$e10602_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e10599_ _port10600_))))))
    (define display-exception__0
      (lambda (_e10610_)
        (let ((_port10612_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e10610_ _port10612_))))
    (define display-exception
      (lambda _g10706_
        (let ((_g10705_ (let () (declare (not safe)) (##length _g10706_))))
          (cond ((let () (declare (not safe)) (##fx= _g10705_ 1))
                 (apply (lambda (_e10610_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e10610_)))
                        _g10706_))
                ((let () (declare (not safe)) (##fx= _g10705_ 2))
                 (apply (lambda (_e10614_ _port10615_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e10614_ _port10615_)))
                        _g10706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g10706_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self10588_ _message10589_ . _rest10590_)
        (let ((_message10596_
               (if (let () (declare (not safe)) (string? _message10589_))
                   _message10589_
                   (call-with-output-string
                    '""
                    (lambda (_g1059110593_)
                      (display _message10589_ _g1059110593_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self10588_ 'message _message10596_))
          (apply class-instance-init! _self10588_ _rest10590_))))
    (define Error:::init!::specialize
      (lambda (__t10674)
        (let ((__message10675
               (let ((__tmp10676
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10674 'message))))
                 (if __tmp10676
                     (let () (declare (not safe)) (##fx+ __tmp10676 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self10588_ _message10589_ . _rest10590_)
            (let ((_message10596_
                   (if (let () (declare (not safe)) (string? _message10589_))
                       _message10589_
                       (call-with-output-string
                        '""
                        (lambda (_g1059110593_)
                          (display _message10589_ _g1059110593_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self10588_
                 _message10596_
                 __message10675
                 __t10674
                 '#f))
              (apply class-instance-init! _self10588_ _rest10590_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self10446_ _port10447_)
        (let ((_tmp-port10449_ (open-output-string))
              (_display-error-newline10450_
               (> (output-port-column _port10447_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port10449_))
          (let ((__tmp10707
                 (lambda ()
                   (if _display-error-newline10450_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e10453_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self10446_ 'where))))
                     (if _$e10453_ (display _$e10453_) (display '"?")))
                   (let ((__tmp10708
                          (let ((__tmp10709
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self10446_))))
                            (declare (not safe))
                            (##type-name __tmp10709))))
                     (declare (not safe))
                     (display* '" [" __tmp10708 '"]: "))
                   (let ((__tmp10710
                          (let ()
                            (declare (not safe))
                            (slot-ref _self10446_ 'message))))
                     (declare (not safe))
                     (displayln __tmp10710))
                   (let ((_irritants10456_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self10446_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants10456_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj10458_)
                              (write _obj10458_)
                              (write-char '#\space))
                            _irritants10456_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self10446_))
                            (dump-stack-trace?))
                       (let ((_cont1045910461_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self10446_ 'continuation))))
                         (if _cont1045910461_
                             (let ((_cont10464_ _cont1045910461_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont10464_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp10707
             current-output-port
             _tmp-port10449_))
          (let ((__tmp10711 (get-output-string _tmp-port10449_)))
            (declare (not safe))
            (##write-string __tmp10711 _port10447_)))))
    (define Error::display-exception::specialize
      (lambda (__t10677)
        (let ((__message10678
               (let ((__tmp10682
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10677 'message))))
                 (if __tmp10682
                     (let () (declare (not safe)) (##fx+ __tmp10682 '1))
                     (error '"Unknown slot" 'message))))
              (__continuation10679
               (let ((__tmp10683
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10677 'continuation))))
                 (if __tmp10683
                     (let () (declare (not safe)) (##fx+ __tmp10683 '1))
                     (error '"Unknown slot" 'continuation))))
              (__where10680
               (let ((__tmp10684
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10677 'where))))
                 (if __tmp10684
                     (let () (declare (not safe)) (##fx+ __tmp10684 '1))
                     (error '"Unknown slot" 'where))))
              (__irritants10681
               (let ((__tmp10685
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10677 'irritants))))
                 (if __tmp10685
                     (let () (declare (not safe)) (##fx+ __tmp10685 '1))
                     (error '"Unknown slot" 'irritants))))
              (__class10686
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t10677))))
          (lambda (_self10446_ _port10447_)
            (let ((_tmp-port10449_ (open-output-string))
                  (_display-error-newline10450_
                   (> (output-port-column _port10447_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port10449_))
              (let ((__tmp10712
                     (lambda ()
                       (if _display-error-newline10450_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e10453_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self10446_
                                 __where10680
                                 __t10677
                                 '#f))))
                         (if _$e10453_ (display _$e10453_) (display '"?")))
                       (let ((__tmp10713
                              (let ((__tmp10714
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self10446_))))
                                (declare (not safe))
                                (##type-name __tmp10714))))
                         (declare (not safe))
                         (display* '" [" __tmp10713 '"]: "))
                       (let ((__tmp10715
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self10446_
                                 __message10678
                                 __t10677
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp10715))
                       (let ((_irritants10456_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self10446_
                                 __irritants10681
                                 __t10677
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants10456_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj10458_)
                                  (write _obj10458_)
                                  (write-char '#\space))
                                _irritants10456_)
                               (newline))))
                       (if (and __class10686 (dump-stack-trace?))
                           (let ((_cont1045910461_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self10446_
                                     __continuation10679
                                     __t10677
                                     '#f))))
                             (if _cont1045910461_
                                 (let ((_cont10464_ _cont1045910461_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont10464_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp10712
                 current-output-port
                 _tmp-port10449_))
              (let ((__tmp10716 (get-output-string _tmp-port10449_)))
                (declare (not safe))
                (##write-string __tmp10716 _port10447_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self10313_ _port10314_)
        (let ((_tmp-port10316_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port10316_))
          (let ((__tmp10717
                 (let ()
                   (declare (not safe))
                   (slot-ref _self10313_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp10717 _tmp-port10316_))
          (let ((_cont1031710319_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self10313_ 'continuation))))
            (if _cont1031710319_
                (let ((_cont10322_ _cont1031710319_))
                  (display '"--- continuation backtrace:" _tmp-port10316_)
                  (newline _tmp-port10316_)
                  (display-continuation-backtrace _cont10322_ _tmp-port10316_))
                '#f))
          (let ((__tmp10718 (get-output-string _tmp-port10316_)))
            (declare (not safe))
            (##write-string __tmp10718 _port10314_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t10687)
        (let ((__continuation10688
               (let ((__tmp10690
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10687 'continuation))))
                 (if __tmp10690
                     (let () (declare (not safe)) (##fx+ __tmp10690 '1))
                     (error '"Unknown slot" 'continuation))))
              (__exception10689
               (let ((__tmp10691
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10687 'exception))))
                 (if __tmp10691
                     (let () (declare (not safe)) (##fx+ __tmp10691 '1))
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self10313_ _port10314_)
            (let ((_tmp-port10316_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port10316_))
              (let ((__tmp10719
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self10313_
                        __exception10689
                        __t10687
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp10719 _tmp-port10316_))
              (let ((_cont1031710319_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self10313_
                        __continuation10688
                        __t10687
                        '#f))))
                (if _cont1031710319_
                    (let ((_cont10322_ _cont1031710319_))
                      (display '"--- continuation backtrace:" _tmp-port10316_)
                      (newline _tmp-port10316_)
                      (display-continuation-backtrace
                       _cont10322_
                       _tmp-port10316_))
                    '#f))
              (let ((__tmp10720 (get-output-string _tmp-port10316_)))
                (declare (not safe))
                (##write-string __tmp10720 _port10314_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       RuntimeException::display-exception
       RuntimeException::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_port10185_)
        (if (macro-character-port? _port10185_)
            (let ((_old-width10187_
                   (macro-character-port-output-width _port10185_)))
              (macro-character-port-output-width-set!
               _port10185_
               (lambda (_port10189_) '256))
              _old-width10187_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port10182_ _old-width10183_)
        (if (macro-character-port? _port10182_)
            (macro-character-port-output-width-set!
             _port10182_
             _old-width10183_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e10180_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e10180_))))
    (define abandoned-mutex-exception?
      (lambda (_exn10174_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10174_))
            (let ((_e10177_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10174_ 'exception))))
              (macro-abandoned-mutex-exception? _e10177_))
            (macro-abandoned-mutex-exception? _exn10174_))))
    (define cfun-conversion-exception?
      (lambda (_exn10170_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10170_))
            (let ((_e10172_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10170_ 'exception))))
              (macro-cfun-conversion-exception? _e10172_))
            (macro-cfun-conversion-exception? _exn10170_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn10166_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10166_))
            (let ((_e10168_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10166_ 'exception))))
              (if (macro-cfun-conversion-exception? _e10168_)
                  (macro-cfun-conversion-exception-arguments _e10168_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp10722
                                (let ()
                                  (declare (not safe))
                                  (cons _e10168_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp10722)))))
            (if (macro-cfun-conversion-exception? _exn10166_)
                (macro-cfun-conversion-exception-arguments _exn10166_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp10721
                              (let ()
                                (declare (not safe))
                                (cons _exn10166_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp10721)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn10162_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10162_))
            (let ((_e10164_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10162_ 'exception))))
              (if (macro-cfun-conversion-exception? _e10164_)
                  (macro-cfun-conversion-exception-code _e10164_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp10724
                                (let ()
                                  (declare (not safe))
                                  (cons _e10164_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp10724)))))
            (if (macro-cfun-conversion-exception? _exn10162_)
                (macro-cfun-conversion-exception-code _exn10162_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp10723
                              (let ()
                                (declare (not safe))
                                (cons _exn10162_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp10723)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn10158_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10158_))
            (let ((_e10160_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10158_ 'exception))))
              (if (macro-cfun-conversion-exception? _e10160_)
                  (macro-cfun-conversion-exception-message _e10160_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp10726
                                (let ()
                                  (declare (not safe))
                                  (cons _e10160_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp10726)))))
            (if (macro-cfun-conversion-exception? _exn10158_)
                (macro-cfun-conversion-exception-message _exn10158_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp10725
                              (let ()
                                (declare (not safe))
                                (cons _exn10158_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp10725)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn10152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10152_))
            (let ((_e10155_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10152_ 'exception))))
              (if (macro-cfun-conversion-exception? _e10155_)
                  (macro-cfun-conversion-exception-procedure _e10155_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp10728
                                (let ()
                                  (declare (not safe))
                                  (cons _e10155_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp10728)))))
            (if (macro-cfun-conversion-exception? _exn10152_)
                (macro-cfun-conversion-exception-procedure _exn10152_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp10727
                              (let ()
                                (declare (not safe))
                                (cons _exn10152_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp10727)))))))
    (define datum-parsing-exception?
      (lambda (_exn10148_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10148_))
            (let ((_e10150_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10148_ 'exception))))
              (macro-datum-parsing-exception? _e10150_))
            (macro-datum-parsing-exception? _exn10148_))))
    (define datum-parsing-exception-kind
      (lambda (_exn10144_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10144_))
            (let ((_e10146_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10144_ 'exception))))
              (if (macro-datum-parsing-exception? _e10146_)
                  (macro-datum-parsing-exception-kind _e10146_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp10730
                                (let ()
                                  (declare (not safe))
                                  (cons _e10146_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp10730)))))
            (if (macro-datum-parsing-exception? _exn10144_)
                (macro-datum-parsing-exception-kind _exn10144_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp10729
                              (let ()
                                (declare (not safe))
                                (cons _exn10144_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp10729)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn10140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10140_))
            (let ((_e10142_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10140_ 'exception))))
              (if (macro-datum-parsing-exception? _e10142_)
                  (macro-datum-parsing-exception-parameters _e10142_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp10732
                                (let ()
                                  (declare (not safe))
                                  (cons _e10142_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp10732)))))
            (if (macro-datum-parsing-exception? _exn10140_)
                (macro-datum-parsing-exception-parameters _exn10140_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp10731
                              (let ()
                                (declare (not safe))
                                (cons _exn10140_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp10731)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn10134_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10134_))
            (let ((_e10137_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10134_ 'exception))))
              (if (macro-datum-parsing-exception? _e10137_)
                  (macro-datum-parsing-exception-readenv _e10137_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp10734
                                (let ()
                                  (declare (not safe))
                                  (cons _e10137_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp10734)))))
            (if (macro-datum-parsing-exception? _exn10134_)
                (macro-datum-parsing-exception-readenv _exn10134_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp10733
                              (let ()
                                (declare (not safe))
                                (cons _exn10134_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp10733)))))))
    (define deadlock-exception?
      (lambda (_exn10128_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10128_))
            (let ((_e10131_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10128_ 'exception))))
              (macro-deadlock-exception? _e10131_))
            (macro-deadlock-exception? _exn10128_))))
    (define divide-by-zero-exception?
      (lambda (_exn10124_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10124_))
            (let ((_e10126_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10124_ 'exception))))
              (macro-divide-by-zero-exception? _e10126_))
            (macro-divide-by-zero-exception? _exn10124_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn10120_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10120_))
            (let ((_e10122_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10120_ 'exception))))
              (if (macro-divide-by-zero-exception? _e10122_)
                  (macro-divide-by-zero-exception-arguments _e10122_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp10736
                                (let ()
                                  (declare (not safe))
                                  (cons _e10122_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp10736)))))
            (if (macro-divide-by-zero-exception? _exn10120_)
                (macro-divide-by-zero-exception-arguments _exn10120_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp10735
                              (let ()
                                (declare (not safe))
                                (cons _exn10120_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp10735)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn10114_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10114_))
            (let ((_e10117_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10114_ 'exception))))
              (if (macro-divide-by-zero-exception? _e10117_)
                  (macro-divide-by-zero-exception-procedure _e10117_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp10738
                                (let ()
                                  (declare (not safe))
                                  (cons _e10117_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp10738)))))
            (if (macro-divide-by-zero-exception? _exn10114_)
                (macro-divide-by-zero-exception-procedure _exn10114_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp10737
                              (let ()
                                (declare (not safe))
                                (cons _exn10114_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp10737)))))))
    (define error-exception?
      (lambda (_exn10110_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10110_))
            (let ((_e10112_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10110_ 'exception))))
              (macro-error-exception? _e10112_))
            (macro-error-exception? _exn10110_))))
    (define error-exception-message
      (lambda (_exn10106_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10106_))
            (let ((_e10108_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10106_ 'exception))))
              (if (macro-error-exception? _e10108_)
                  (macro-error-exception-message _e10108_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp10740
                                (let ()
                                  (declare (not safe))
                                  (cons _e10108_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp10740)))))
            (if (macro-error-exception? _exn10106_)
                (macro-error-exception-message _exn10106_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp10739
                              (let ()
                                (declare (not safe))
                                (cons _exn10106_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp10739)))))))
    (define error-exception-parameters
      (lambda (_exn10100_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10100_))
            (let ((_e10103_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10100_ 'exception))))
              (if (macro-error-exception? _e10103_)
                  (macro-error-exception-parameters _e10103_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp10742
                                (let ()
                                  (declare (not safe))
                                  (cons _e10103_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp10742)))))
            (if (macro-error-exception? _exn10100_)
                (macro-error-exception-parameters _exn10100_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp10741
                              (let ()
                                (declare (not safe))
                                (cons _exn10100_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp10741)))))))
    (define expression-parsing-exception?
      (lambda (_exn10096_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10096_))
            (let ((_e10098_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10096_ 'exception))))
              (macro-expression-parsing-exception? _e10098_))
            (macro-expression-parsing-exception? _exn10096_))))
    (define expression-parsing-exception-kind
      (lambda (_exn10092_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10092_))
            (let ((_e10094_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10092_ 'exception))))
              (if (macro-expression-parsing-exception? _e10094_)
                  (macro-expression-parsing-exception-kind _e10094_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp10744
                                (let ()
                                  (declare (not safe))
                                  (cons _e10094_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp10744)))))
            (if (macro-expression-parsing-exception? _exn10092_)
                (macro-expression-parsing-exception-kind _exn10092_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp10743
                              (let ()
                                (declare (not safe))
                                (cons _exn10092_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp10743)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn10088_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10088_))
            (let ((_e10090_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10088_ 'exception))))
              (if (macro-expression-parsing-exception? _e10090_)
                  (macro-expression-parsing-exception-parameters _e10090_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp10746
                                (let ()
                                  (declare (not safe))
                                  (cons _e10090_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp10746)))))
            (if (macro-expression-parsing-exception? _exn10088_)
                (macro-expression-parsing-exception-parameters _exn10088_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp10745
                              (let ()
                                (declare (not safe))
                                (cons _exn10088_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp10745)))))))
    (define expression-parsing-exception-source
      (lambda (_exn10082_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10082_))
            (let ((_e10085_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10082_ 'exception))))
              (if (macro-expression-parsing-exception? _e10085_)
                  (macro-expression-parsing-exception-source _e10085_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp10748
                                (let ()
                                  (declare (not safe))
                                  (cons _e10085_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp10748)))))
            (if (macro-expression-parsing-exception? _exn10082_)
                (macro-expression-parsing-exception-source _exn10082_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp10747
                              (let ()
                                (declare (not safe))
                                (cons _exn10082_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp10747)))))))
    (define file-exists-exception?
      (lambda (_exn10078_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10078_))
            (let ((_e10080_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10078_ 'exception))))
              (macro-file-exists-exception? _e10080_))
            (macro-file-exists-exception? _exn10078_))))
    (define file-exists-exception-arguments
      (lambda (_exn10074_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10074_))
            (let ((_e10076_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10074_ 'exception))))
              (if (macro-file-exists-exception? _e10076_)
                  (macro-file-exists-exception-arguments _e10076_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp10750
                                (let ()
                                  (declare (not safe))
                                  (cons _e10076_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp10750)))))
            (if (macro-file-exists-exception? _exn10074_)
                (macro-file-exists-exception-arguments _exn10074_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp10749
                              (let ()
                                (declare (not safe))
                                (cons _exn10074_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp10749)))))))
    (define file-exists-exception-procedure
      (lambda (_exn10068_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10068_))
            (let ((_e10071_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10068_ 'exception))))
              (if (macro-file-exists-exception? _e10071_)
                  (macro-file-exists-exception-procedure _e10071_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp10752
                                (let ()
                                  (declare (not safe))
                                  (cons _e10071_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp10752)))))
            (if (macro-file-exists-exception? _exn10068_)
                (macro-file-exists-exception-procedure _exn10068_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp10751
                              (let ()
                                (declare (not safe))
                                (cons _exn10068_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp10751)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn10064_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10064_))
            (let ((_e10066_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10064_ 'exception))))
              (macro-fixnum-overflow-exception? _e10066_))
            (macro-fixnum-overflow-exception? _exn10064_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn10060_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10060_))
            (let ((_e10062_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10060_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e10062_)
                  (macro-fixnum-overflow-exception-arguments _e10062_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp10754
                                (let ()
                                  (declare (not safe))
                                  (cons _e10062_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp10754)))))
            (if (macro-fixnum-overflow-exception? _exn10060_)
                (macro-fixnum-overflow-exception-arguments _exn10060_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp10753
                              (let ()
                                (declare (not safe))
                                (cons _exn10060_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp10753)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn10054_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10054_))
            (let ((_e10057_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10054_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e10057_)
                  (macro-fixnum-overflow-exception-procedure _e10057_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp10756
                                (let ()
                                  (declare (not safe))
                                  (cons _e10057_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp10756)))))
            (if (macro-fixnum-overflow-exception? _exn10054_)
                (macro-fixnum-overflow-exception-procedure _exn10054_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp10755
                              (let ()
                                (declare (not safe))
                                (cons _exn10054_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp10755)))))))
    (define heap-overflow-exception?
      (lambda (_exn10048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10048_))
            (let ((_e10051_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10048_ 'exception))))
              (macro-heap-overflow-exception? _e10051_))
            (macro-heap-overflow-exception? _exn10048_))))
    (define inactive-thread-exception?
      (lambda (_exn10044_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10044_))
            (let ((_e10046_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10044_ 'exception))))
              (macro-inactive-thread-exception? _e10046_))
            (macro-inactive-thread-exception? _exn10044_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn10040_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10040_))
            (let ((_e10042_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10040_ 'exception))))
              (if (macro-inactive-thread-exception? _e10042_)
                  (macro-inactive-thread-exception-arguments _e10042_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp10758
                                (let ()
                                  (declare (not safe))
                                  (cons _e10042_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp10758)))))
            (if (macro-inactive-thread-exception? _exn10040_)
                (macro-inactive-thread-exception-arguments _exn10040_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp10757
                              (let ()
                                (declare (not safe))
                                (cons _exn10040_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp10757)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn10034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10034_))
            (let ((_e10037_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10034_ 'exception))))
              (if (macro-inactive-thread-exception? _e10037_)
                  (macro-inactive-thread-exception-procedure _e10037_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp10760
                                (let ()
                                  (declare (not safe))
                                  (cons _e10037_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp10760)))))
            (if (macro-inactive-thread-exception? _exn10034_)
                (macro-inactive-thread-exception-procedure _exn10034_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp10759
                              (let ()
                                (declare (not safe))
                                (cons _exn10034_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp10759)))))))
    (define initialized-thread-exception?
      (lambda (_exn10030_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10030_))
            (let ((_e10032_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10030_ 'exception))))
              (macro-initialized-thread-exception? _e10032_))
            (macro-initialized-thread-exception? _exn10030_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn10026_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10026_))
            (let ((_e10028_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10026_ 'exception))))
              (if (macro-initialized-thread-exception? _e10028_)
                  (macro-initialized-thread-exception-arguments _e10028_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp10762
                                (let ()
                                  (declare (not safe))
                                  (cons _e10028_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp10762)))))
            (if (macro-initialized-thread-exception? _exn10026_)
                (macro-initialized-thread-exception-arguments _exn10026_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp10761
                              (let ()
                                (declare (not safe))
                                (cons _exn10026_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp10761)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn10020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10020_))
            (let ((_e10023_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10020_ 'exception))))
              (if (macro-initialized-thread-exception? _e10023_)
                  (macro-initialized-thread-exception-procedure _e10023_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp10764
                                (let ()
                                  (declare (not safe))
                                  (cons _e10023_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp10764)))))
            (if (macro-initialized-thread-exception? _exn10020_)
                (macro-initialized-thread-exception-procedure _exn10020_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp10763
                              (let ()
                                (declare (not safe))
                                (cons _exn10020_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp10763)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn10016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10016_))
            (let ((_e10018_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10016_ 'exception))))
              (macro-invalid-hash-number-exception? _e10018_))
            (macro-invalid-hash-number-exception? _exn10016_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn10012_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10012_))
            (let ((_e10014_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10012_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e10014_)
                  (macro-invalid-hash-number-exception-arguments _e10014_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp10766
                                (let ()
                                  (declare (not safe))
                                  (cons _e10014_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp10766)))))
            (if (macro-invalid-hash-number-exception? _exn10012_)
                (macro-invalid-hash-number-exception-arguments _exn10012_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp10765
                              (let ()
                                (declare (not safe))
                                (cons _exn10012_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp10765)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn10006_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10006_))
            (let ((_e10009_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10006_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e10009_)
                  (macro-invalid-hash-number-exception-procedure _e10009_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp10768
                                (let ()
                                  (declare (not safe))
                                  (cons _e10009_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp10768)))))
            (if (macro-invalid-hash-number-exception? _exn10006_)
                (macro-invalid-hash-number-exception-procedure _exn10006_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp10767
                              (let ()
                                (declare (not safe))
                                (cons _exn10006_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp10767)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn10002_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10002_))
            (let ((_e10004_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10002_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e10004_))
            (macro-invalid-utf8-encoding-exception? _exn10002_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn9998_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9998_))
            (let ((_e10000_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn9998_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e10000_)
                  (macro-invalid-utf8-encoding-exception-arguments _e10000_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp10770
                                (let ()
                                  (declare (not safe))
                                  (cons _e10000_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp10770)))))
            (if (macro-invalid-utf8-encoding-exception? _exn9998_)
                (macro-invalid-utf8-encoding-exception-arguments _exn9998_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp10769
                              (let ()
                                (declare (not safe))
                                (cons _exn9998_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp10769)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn9992_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9992_))
            (let ((_e9995_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9992_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e9995_)
                  (macro-invalid-utf8-encoding-exception-procedure _e9995_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp10772
                                (let ()
                                  (declare (not safe))
                                  (cons _e9995_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp10772)))))
            (if (macro-invalid-utf8-encoding-exception? _exn9992_)
                (macro-invalid-utf8-encoding-exception-procedure _exn9992_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp10771
                              (let ()
                                (declare (not safe))
                                (cons _exn9992_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp10771)))))))
    (define join-timeout-exception?
      (lambda (_exn9988_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9988_))
            (let ((_e9990_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9988_ 'exception))))
              (macro-join-timeout-exception? _e9990_))
            (macro-join-timeout-exception? _exn9988_))))
    (define join-timeout-exception-arguments
      (lambda (_exn9984_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9984_))
            (let ((_e9986_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9984_ 'exception))))
              (if (macro-join-timeout-exception? _e9986_)
                  (macro-join-timeout-exception-arguments _e9986_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp10774
                                (let ()
                                  (declare (not safe))
                                  (cons _e9986_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp10774)))))
            (if (macro-join-timeout-exception? _exn9984_)
                (macro-join-timeout-exception-arguments _exn9984_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp10773
                              (let ()
                                (declare (not safe))
                                (cons _exn9984_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp10773)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn9978_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9978_))
            (let ((_e9981_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9978_ 'exception))))
              (if (macro-join-timeout-exception? _e9981_)
                  (macro-join-timeout-exception-procedure _e9981_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp10776
                                (let ()
                                  (declare (not safe))
                                  (cons _e9981_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp10776)))))
            (if (macro-join-timeout-exception? _exn9978_)
                (macro-join-timeout-exception-procedure _exn9978_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp10775
                              (let ()
                                (declare (not safe))
                                (cons _exn9978_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp10775)))))))
    (define keyword-expected-exception?
      (lambda (_exn9974_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9974_))
            (let ((_e9976_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9974_ 'exception))))
              (macro-keyword-expected-exception? _e9976_))
            (macro-keyword-expected-exception? _exn9974_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn9970_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9970_))
            (let ((_e9972_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9970_ 'exception))))
              (if (macro-keyword-expected-exception? _e9972_)
                  (macro-keyword-expected-exception-arguments _e9972_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp10778
                                (let ()
                                  (declare (not safe))
                                  (cons _e9972_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp10778)))))
            (if (macro-keyword-expected-exception? _exn9970_)
                (macro-keyword-expected-exception-arguments _exn9970_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp10777
                              (let ()
                                (declare (not safe))
                                (cons _exn9970_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp10777)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn9964_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9964_))
            (let ((_e9967_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9964_ 'exception))))
              (if (macro-keyword-expected-exception? _e9967_)
                  (macro-keyword-expected-exception-procedure _e9967_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp10780
                                (let ()
                                  (declare (not safe))
                                  (cons _e9967_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp10780)))))
            (if (macro-keyword-expected-exception? _exn9964_)
                (macro-keyword-expected-exception-procedure _exn9964_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp10779
                              (let ()
                                (declare (not safe))
                                (cons _exn9964_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp10779)))))))
    (define length-mismatch-exception?
      (lambda (_exn9960_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9960_))
            (let ((_e9962_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9960_ 'exception))))
              (macro-length-mismatch-exception? _e9962_))
            (macro-length-mismatch-exception? _exn9960_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn9956_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9956_))
            (let ((_e9958_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9956_ 'exception))))
              (if (macro-length-mismatch-exception? _e9958_)
                  (macro-length-mismatch-exception-arg-id _e9958_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp10782
                                (let ()
                                  (declare (not safe))
                                  (cons _e9958_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp10782)))))
            (if (macro-length-mismatch-exception? _exn9956_)
                (macro-length-mismatch-exception-arg-id _exn9956_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp10781
                              (let ()
                                (declare (not safe))
                                (cons _exn9956_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp10781)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn9952_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9952_))
            (let ((_e9954_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9952_ 'exception))))
              (if (macro-length-mismatch-exception? _e9954_)
                  (macro-length-mismatch-exception-arguments _e9954_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp10784
                                (let ()
                                  (declare (not safe))
                                  (cons _e9954_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp10784)))))
            (if (macro-length-mismatch-exception? _exn9952_)
                (macro-length-mismatch-exception-arguments _exn9952_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp10783
                              (let ()
                                (declare (not safe))
                                (cons _exn9952_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp10783)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn9946_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9946_))
            (let ((_e9949_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9946_ 'exception))))
              (if (macro-length-mismatch-exception? _e9949_)
                  (macro-length-mismatch-exception-procedure _e9949_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp10786
                                (let ()
                                  (declare (not safe))
                                  (cons _e9949_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp10786)))))
            (if (macro-length-mismatch-exception? _exn9946_)
                (macro-length-mismatch-exception-procedure _exn9946_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp10785
                              (let ()
                                (declare (not safe))
                                (cons _exn9946_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp10785)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn9942_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9942_))
            (let ((_e9944_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9942_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e9944_))
            (macro-mailbox-receive-timeout-exception? _exn9942_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn9938_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9938_))
            (let ((_e9940_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9938_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e9940_)
                  (macro-mailbox-receive-timeout-exception-arguments _e9940_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp10788
                                (let ()
                                  (declare (not safe))
                                  (cons _e9940_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp10788)))))
            (if (macro-mailbox-receive-timeout-exception? _exn9938_)
                (macro-mailbox-receive-timeout-exception-arguments _exn9938_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp10787
                              (let ()
                                (declare (not safe))
                                (cons _exn9938_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp10787)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn9932_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9932_))
            (let ((_e9935_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9932_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e9935_)
                  (macro-mailbox-receive-timeout-exception-procedure _e9935_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp10790
                                (let ()
                                  (declare (not safe))
                                  (cons _e9935_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp10790)))))
            (if (macro-mailbox-receive-timeout-exception? _exn9932_)
                (macro-mailbox-receive-timeout-exception-procedure _exn9932_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp10789
                              (let ()
                                (declare (not safe))
                                (cons _exn9932_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp10789)))))))
    (define module-not-found-exception?
      (lambda (_exn9928_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9928_))
            (let ((_e9930_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9928_ 'exception))))
              (macro-module-not-found-exception? _e9930_))
            (macro-module-not-found-exception? _exn9928_))))
    (define module-not-found-exception-arguments
      (lambda (_exn9924_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9924_))
            (let ((_e9926_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9924_ 'exception))))
              (if (macro-module-not-found-exception? _e9926_)
                  (macro-module-not-found-exception-arguments _e9926_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp10792
                                (let ()
                                  (declare (not safe))
                                  (cons _e9926_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp10792)))))
            (if (macro-module-not-found-exception? _exn9924_)
                (macro-module-not-found-exception-arguments _exn9924_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp10791
                              (let ()
                                (declare (not safe))
                                (cons _exn9924_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp10791)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn9918_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9918_))
            (let ((_e9921_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9918_ 'exception))))
              (if (macro-module-not-found-exception? _e9921_)
                  (macro-module-not-found-exception-procedure _e9921_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp10794
                                (let ()
                                  (declare (not safe))
                                  (cons _e9921_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp10794)))))
            (if (macro-module-not-found-exception? _exn9918_)
                (macro-module-not-found-exception-procedure _exn9918_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp10793
                              (let ()
                                (declare (not safe))
                                (cons _exn9918_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp10793)))))))
    (define multiple-c-return-exception?
      (lambda (_exn9912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9912_))
            (let ((_e9915_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9912_ 'exception))))
              (macro-multiple-c-return-exception? _e9915_))
            (macro-multiple-c-return-exception? _exn9912_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn9908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9908_))
            (let ((_e9910_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9908_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e9910_))
            (macro-no-such-file-or-directory-exception? _exn9908_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn9904_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9904_))
            (let ((_e9906_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9904_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e9906_)
                  (macro-no-such-file-or-directory-exception-arguments _e9906_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp10796
                                (let ()
                                  (declare (not safe))
                                  (cons _e9906_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp10796)))))
            (if (macro-no-such-file-or-directory-exception? _exn9904_)
                (macro-no-such-file-or-directory-exception-arguments _exn9904_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp10795
                              (let ()
                                (declare (not safe))
                                (cons _exn9904_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp10795)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn9898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9898_))
            (let ((_e9901_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9898_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e9901_)
                  (macro-no-such-file-or-directory-exception-procedure _e9901_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp10798
                                (let ()
                                  (declare (not safe))
                                  (cons _e9901_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp10798)))))
            (if (macro-no-such-file-or-directory-exception? _exn9898_)
                (macro-no-such-file-or-directory-exception-procedure _exn9898_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp10797
                              (let ()
                                (declare (not safe))
                                (cons _exn9898_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp10797)))))))
    (define noncontinuable-exception?
      (lambda (_exn9894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9894_))
            (let ((_e9896_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9894_ 'exception))))
              (macro-noncontinuable-exception? _e9896_))
            (macro-noncontinuable-exception? _exn9894_))))
    (define noncontinuable-exception-reason
      (lambda (_exn9888_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9888_))
            (let ((_e9891_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9888_ 'exception))))
              (if (macro-noncontinuable-exception? _e9891_)
                  (macro-noncontinuable-exception-reason _e9891_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp10800
                                (let ()
                                  (declare (not safe))
                                  (cons _e9891_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp10800)))))
            (if (macro-noncontinuable-exception? _exn9888_)
                (macro-noncontinuable-exception-reason _exn9888_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp10799
                              (let ()
                                (declare (not safe))
                                (cons _exn9888_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp10799)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn9884_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9884_))
            (let ((_e9886_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9884_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e9886_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn9884_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn9880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9880_))
            (let ((_e9882_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9880_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e9882_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e9882_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp10802
                                (let ()
                                  (declare (not safe))
                                  (cons _e9882_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp10802)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn9880_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn9880_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp10801
                              (let ()
                                (declare (not safe))
                                (cons _exn9880_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp10801)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn9874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9874_))
            (let ((_e9877_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9874_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e9877_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e9877_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp10804
                                (let ()
                                  (declare (not safe))
                                  (cons _e9877_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp10804)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn9874_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn9874_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp10803
                              (let ()
                                (declare (not safe))
                                (cons _exn9874_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp10803)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn9870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9870_))
            (let ((_e9872_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9870_ 'exception))))
              (macro-nonprocedure-operator-exception? _e9872_))
            (macro-nonprocedure-operator-exception? _exn9870_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn9866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9866_))
            (let ((_e9868_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9866_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e9868_)
                  (macro-nonprocedure-operator-exception-arguments _e9868_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp10806
                                (let ()
                                  (declare (not safe))
                                  (cons _e9868_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp10806)))))
            (if (macro-nonprocedure-operator-exception? _exn9866_)
                (macro-nonprocedure-operator-exception-arguments _exn9866_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp10805
                              (let ()
                                (declare (not safe))
                                (cons _exn9866_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp10805)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn9862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9862_))
            (let ((_e9864_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9862_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e9864_)
                  (macro-nonprocedure-operator-exception-code _e9864_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp10808
                                (let ()
                                  (declare (not safe))
                                  (cons _e9864_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp10808)))))
            (if (macro-nonprocedure-operator-exception? _exn9862_)
                (macro-nonprocedure-operator-exception-code _exn9862_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp10807
                              (let ()
                                (declare (not safe))
                                (cons _exn9862_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp10807)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn9858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9858_))
            (let ((_e9860_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9858_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e9860_)
                  (macro-nonprocedure-operator-exception-operator _e9860_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp10810
                                (let ()
                                  (declare (not safe))
                                  (cons _e9860_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp10810)))))
            (if (macro-nonprocedure-operator-exception? _exn9858_)
                (macro-nonprocedure-operator-exception-operator _exn9858_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp10809
                              (let ()
                                (declare (not safe))
                                (cons _exn9858_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp10809)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn9852_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9852_))
            (let ((_e9855_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9852_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e9855_)
                  (macro-nonprocedure-operator-exception-rte _e9855_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp10812
                                (let ()
                                  (declare (not safe))
                                  (cons _e9855_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp10812)))))
            (if (macro-nonprocedure-operator-exception? _exn9852_)
                (macro-nonprocedure-operator-exception-rte _exn9852_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp10811
                              (let ()
                                (declare (not safe))
                                (cons _exn9852_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp10811)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn9848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9848_))
            (let ((_e9850_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9848_ 'exception))))
              (macro-not-in-compilation-context-exception? _e9850_))
            (macro-not-in-compilation-context-exception? _exn9848_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn9844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9844_))
            (let ((_e9846_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9844_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e9846_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e9846_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp10814
                                (let ()
                                  (declare (not safe))
                                  (cons _e9846_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp10814)))))
            (if (macro-not-in-compilation-context-exception? _exn9844_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn9844_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp10813
                              (let ()
                                (declare (not safe))
                                (cons _exn9844_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp10813)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn9838_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9838_))
            (let ((_e9841_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9838_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e9841_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e9841_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp10816
                                (let ()
                                  (declare (not safe))
                                  (cons _e9841_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp10816)))))
            (if (macro-not-in-compilation-context-exception? _exn9838_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn9838_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp10815
                              (let ()
                                (declare (not safe))
                                (cons _exn9838_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp10815)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn9834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9834_))
            (let ((_e9836_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9834_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e9836_))
            (macro-number-of-arguments-limit-exception? _exn9834_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn9830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9830_))
            (let ((_e9832_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9830_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e9832_)
                  (macro-number-of-arguments-limit-exception-arguments _e9832_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp10818
                                (let ()
                                  (declare (not safe))
                                  (cons _e9832_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp10818)))))
            (if (macro-number-of-arguments-limit-exception? _exn9830_)
                (macro-number-of-arguments-limit-exception-arguments _exn9830_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp10817
                              (let ()
                                (declare (not safe))
                                (cons _exn9830_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp10817)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn9824_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9824_))
            (let ((_e9827_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9824_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e9827_)
                  (macro-number-of-arguments-limit-exception-procedure _e9827_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp10820
                                (let ()
                                  (declare (not safe))
                                  (cons _e9827_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp10820)))))
            (if (macro-number-of-arguments-limit-exception? _exn9824_)
                (macro-number-of-arguments-limit-exception-procedure _exn9824_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp10819
                              (let ()
                                (declare (not safe))
                                (cons _exn9824_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp10819)))))))
    (define os-exception?
      (lambda (_exn9820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9820_))
            (let ((_e9822_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9820_ 'exception))))
              (macro-os-exception? _e9822_))
            (macro-os-exception? _exn9820_))))
    (define os-exception-arguments
      (lambda (_exn9816_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9816_))
            (let ((_e9818_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9816_ 'exception))))
              (if (macro-os-exception? _e9818_)
                  (macro-os-exception-arguments _e9818_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp10822
                                (let ()
                                  (declare (not safe))
                                  (cons _e9818_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp10822)))))
            (if (macro-os-exception? _exn9816_)
                (macro-os-exception-arguments _exn9816_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp10821
                              (let ()
                                (declare (not safe))
                                (cons _exn9816_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp10821)))))))
    (define os-exception-code
      (lambda (_exn9812_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9812_))
            (let ((_e9814_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9812_ 'exception))))
              (if (macro-os-exception? _e9814_)
                  (macro-os-exception-code _e9814_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp10824
                                (let ()
                                  (declare (not safe))
                                  (cons _e9814_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp10824)))))
            (if (macro-os-exception? _exn9812_)
                (macro-os-exception-code _exn9812_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp10823
                              (let ()
                                (declare (not safe))
                                (cons _exn9812_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp10823)))))))
    (define os-exception-message
      (lambda (_exn9808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9808_))
            (let ((_e9810_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9808_ 'exception))))
              (if (macro-os-exception? _e9810_)
                  (macro-os-exception-message _e9810_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp10826
                                (let ()
                                  (declare (not safe))
                                  (cons _e9810_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp10826)))))
            (if (macro-os-exception? _exn9808_)
                (macro-os-exception-message _exn9808_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp10825
                              (let ()
                                (declare (not safe))
                                (cons _exn9808_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp10825)))))))
    (define os-exception-procedure
      (lambda (_exn9802_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9802_))
            (let ((_e9805_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9802_ 'exception))))
              (if (macro-os-exception? _e9805_)
                  (macro-os-exception-procedure _e9805_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp10828
                                (let ()
                                  (declare (not safe))
                                  (cons _e9805_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp10828)))))
            (if (macro-os-exception? _exn9802_)
                (macro-os-exception-procedure _exn9802_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp10827
                              (let ()
                                (declare (not safe))
                                (cons _exn9802_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp10827)))))))
    (define permission-denied-exception?
      (lambda (_exn9798_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9798_))
            (let ((_e9800_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9798_ 'exception))))
              (macro-permission-denied-exception? _e9800_))
            (macro-permission-denied-exception? _exn9798_))))
    (define permission-denied-exception-arguments
      (lambda (_exn9794_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9794_))
            (let ((_e9796_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9794_ 'exception))))
              (if (macro-permission-denied-exception? _e9796_)
                  (macro-permission-denied-exception-arguments _e9796_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp10830
                                (let ()
                                  (declare (not safe))
                                  (cons _e9796_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp10830)))))
            (if (macro-permission-denied-exception? _exn9794_)
                (macro-permission-denied-exception-arguments _exn9794_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp10829
                              (let ()
                                (declare (not safe))
                                (cons _exn9794_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp10829)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn9788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9788_))
            (let ((_e9791_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9788_ 'exception))))
              (if (macro-permission-denied-exception? _e9791_)
                  (macro-permission-denied-exception-procedure _e9791_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp10832
                                (let ()
                                  (declare (not safe))
                                  (cons _e9791_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp10832)))))
            (if (macro-permission-denied-exception? _exn9788_)
                (macro-permission-denied-exception-procedure _exn9788_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp10831
                              (let ()
                                (declare (not safe))
                                (cons _exn9788_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp10831)))))))
    (define range-exception?
      (lambda (_exn9784_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9784_))
            (let ((_e9786_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9784_ 'exception))))
              (macro-range-exception? _e9786_))
            (macro-range-exception? _exn9784_))))
    (define range-exception-arg-id
      (lambda (_exn9780_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9780_))
            (let ((_e9782_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9780_ 'exception))))
              (if (macro-range-exception? _e9782_)
                  (macro-range-exception-arg-id _e9782_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp10834
                                (let ()
                                  (declare (not safe))
                                  (cons _e9782_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp10834)))))
            (if (macro-range-exception? _exn9780_)
                (macro-range-exception-arg-id _exn9780_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp10833
                              (let ()
                                (declare (not safe))
                                (cons _exn9780_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp10833)))))))
    (define range-exception-arguments
      (lambda (_exn9776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9776_))
            (let ((_e9778_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9776_ 'exception))))
              (if (macro-range-exception? _e9778_)
                  (macro-range-exception-arguments _e9778_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp10836
                                (let ()
                                  (declare (not safe))
                                  (cons _e9778_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp10836)))))
            (if (macro-range-exception? _exn9776_)
                (macro-range-exception-arguments _exn9776_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp10835
                              (let ()
                                (declare (not safe))
                                (cons _exn9776_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp10835)))))))
    (define range-exception-procedure
      (lambda (_exn9770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9770_))
            (let ((_e9773_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9770_ 'exception))))
              (if (macro-range-exception? _e9773_)
                  (macro-range-exception-procedure _e9773_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp10838
                                (let ()
                                  (declare (not safe))
                                  (cons _e9773_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp10838)))))
            (if (macro-range-exception? _exn9770_)
                (macro-range-exception-procedure _exn9770_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp10837
                              (let ()
                                (declare (not safe))
                                (cons _exn9770_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp10837)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn9766_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9766_))
            (let ((_e9768_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9766_ 'exception))))
              (macro-rpc-remote-error-exception? _e9768_))
            (macro-rpc-remote-error-exception? _exn9766_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn9762_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9762_))
            (let ((_e9764_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9762_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e9764_)
                  (macro-rpc-remote-error-exception-arguments _e9764_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp10840
                                (let ()
                                  (declare (not safe))
                                  (cons _e9764_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp10840)))))
            (if (macro-rpc-remote-error-exception? _exn9762_)
                (macro-rpc-remote-error-exception-arguments _exn9762_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp10839
                              (let ()
                                (declare (not safe))
                                (cons _exn9762_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp10839)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn9758_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9758_))
            (let ((_e9760_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9758_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e9760_)
                  (macro-rpc-remote-error-exception-message _e9760_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp10842
                                (let ()
                                  (declare (not safe))
                                  (cons _e9760_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp10842)))))
            (if (macro-rpc-remote-error-exception? _exn9758_)
                (macro-rpc-remote-error-exception-message _exn9758_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp10841
                              (let ()
                                (declare (not safe))
                                (cons _exn9758_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp10841)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn9752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9752_))
            (let ((_e9755_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9752_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e9755_)
                  (macro-rpc-remote-error-exception-procedure _e9755_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp10844
                                (let ()
                                  (declare (not safe))
                                  (cons _e9755_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp10844)))))
            (if (macro-rpc-remote-error-exception? _exn9752_)
                (macro-rpc-remote-error-exception-procedure _exn9752_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp10843
                              (let ()
                                (declare (not safe))
                                (cons _exn9752_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp10843)))))))
    (define scheduler-exception?
      (lambda (_exn9748_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9748_))
            (let ((_e9750_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9748_ 'exception))))
              (macro-scheduler-exception? _e9750_))
            (macro-scheduler-exception? _exn9748_))))
    (define scheduler-exception-reason
      (lambda (_exn9742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9742_))
            (let ((_e9745_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9742_ 'exception))))
              (if (macro-scheduler-exception? _e9745_)
                  (macro-scheduler-exception-reason _e9745_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp10846
                                (let ()
                                  (declare (not safe))
                                  (cons _e9745_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp10846)))))
            (if (macro-scheduler-exception? _exn9742_)
                (macro-scheduler-exception-reason _exn9742_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp10845
                              (let ()
                                (declare (not safe))
                                (cons _exn9742_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp10845)))))))
    (define sfun-conversion-exception?
      (lambda (_exn9738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9738_))
            (let ((_e9740_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9738_ 'exception))))
              (macro-sfun-conversion-exception? _e9740_))
            (macro-sfun-conversion-exception? _exn9738_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn9734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9734_))
            (let ((_e9736_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9734_ 'exception))))
              (if (macro-sfun-conversion-exception? _e9736_)
                  (macro-sfun-conversion-exception-arguments _e9736_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp10848
                                (let ()
                                  (declare (not safe))
                                  (cons _e9736_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp10848)))))
            (if (macro-sfun-conversion-exception? _exn9734_)
                (macro-sfun-conversion-exception-arguments _exn9734_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp10847
                              (let ()
                                (declare (not safe))
                                (cons _exn9734_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp10847)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn9730_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9730_))
            (let ((_e9732_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9730_ 'exception))))
              (if (macro-sfun-conversion-exception? _e9732_)
                  (macro-sfun-conversion-exception-code _e9732_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp10850
                                (let ()
                                  (declare (not safe))
                                  (cons _e9732_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp10850)))))
            (if (macro-sfun-conversion-exception? _exn9730_)
                (macro-sfun-conversion-exception-code _exn9730_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp10849
                              (let ()
                                (declare (not safe))
                                (cons _exn9730_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp10849)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn9726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9726_))
            (let ((_e9728_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9726_ 'exception))))
              (if (macro-sfun-conversion-exception? _e9728_)
                  (macro-sfun-conversion-exception-message _e9728_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp10852
                                (let ()
                                  (declare (not safe))
                                  (cons _e9728_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp10852)))))
            (if (macro-sfun-conversion-exception? _exn9726_)
                (macro-sfun-conversion-exception-message _exn9726_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp10851
                              (let ()
                                (declare (not safe))
                                (cons _exn9726_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp10851)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn9720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9720_))
            (let ((_e9723_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9720_ 'exception))))
              (if (macro-sfun-conversion-exception? _e9723_)
                  (macro-sfun-conversion-exception-procedure _e9723_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp10854
                                (let ()
                                  (declare (not safe))
                                  (cons _e9723_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp10854)))))
            (if (macro-sfun-conversion-exception? _exn9720_)
                (macro-sfun-conversion-exception-procedure _exn9720_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp10853
                              (let ()
                                (declare (not safe))
                                (cons _exn9720_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp10853)))))))
    (define stack-overflow-exception?
      (lambda (_exn9714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9714_))
            (let ((_e9717_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9714_ 'exception))))
              (macro-stack-overflow-exception? _e9717_))
            (macro-stack-overflow-exception? _exn9714_))))
    (define started-thread-exception?
      (lambda (_exn9710_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9710_))
            (let ((_e9712_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9710_ 'exception))))
              (macro-started-thread-exception? _e9712_))
            (macro-started-thread-exception? _exn9710_))))
    (define started-thread-exception-arguments
      (lambda (_exn9706_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9706_))
            (let ((_e9708_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9706_ 'exception))))
              (if (macro-started-thread-exception? _e9708_)
                  (macro-started-thread-exception-arguments _e9708_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp10856
                                (let ()
                                  (declare (not safe))
                                  (cons _e9708_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp10856)))))
            (if (macro-started-thread-exception? _exn9706_)
                (macro-started-thread-exception-arguments _exn9706_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp10855
                              (let ()
                                (declare (not safe))
                                (cons _exn9706_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp10855)))))))
    (define started-thread-exception-procedure
      (lambda (_exn9700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9700_))
            (let ((_e9703_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9700_ 'exception))))
              (if (macro-started-thread-exception? _e9703_)
                  (macro-started-thread-exception-procedure _e9703_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp10858
                                (let ()
                                  (declare (not safe))
                                  (cons _e9703_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp10858)))))
            (if (macro-started-thread-exception? _exn9700_)
                (macro-started-thread-exception-procedure _exn9700_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp10857
                              (let ()
                                (declare (not safe))
                                (cons _exn9700_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp10857)))))))
    (define terminated-thread-exception?
      (lambda (_exn9696_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9696_))
            (let ((_e9698_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9696_ 'exception))))
              (macro-terminated-thread-exception? _e9698_))
            (macro-terminated-thread-exception? _exn9696_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn9692_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9692_))
            (let ((_e9694_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9692_ 'exception))))
              (if (macro-terminated-thread-exception? _e9694_)
                  (macro-terminated-thread-exception-arguments _e9694_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp10860
                                (let ()
                                  (declare (not safe))
                                  (cons _e9694_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp10860)))))
            (if (macro-terminated-thread-exception? _exn9692_)
                (macro-terminated-thread-exception-arguments _exn9692_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp10859
                              (let ()
                                (declare (not safe))
                                (cons _exn9692_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp10859)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn9686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9686_))
            (let ((_e9689_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9686_ 'exception))))
              (if (macro-terminated-thread-exception? _e9689_)
                  (macro-terminated-thread-exception-procedure _e9689_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp10862
                                (let ()
                                  (declare (not safe))
                                  (cons _e9689_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp10862)))))
            (if (macro-terminated-thread-exception? _exn9686_)
                (macro-terminated-thread-exception-procedure _exn9686_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp10861
                              (let ()
                                (declare (not safe))
                                (cons _exn9686_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp10861)))))))
    (define type-exception?
      (lambda (_exn9682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9682_))
            (let ((_e9684_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9682_ 'exception))))
              (macro-type-exception? _e9684_))
            (macro-type-exception? _exn9682_))))
    (define type-exception-arg-id
      (lambda (_exn9678_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9678_))
            (let ((_e9680_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9678_ 'exception))))
              (if (macro-type-exception? _e9680_)
                  (macro-type-exception-arg-id _e9680_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp10864
                                (let ()
                                  (declare (not safe))
                                  (cons _e9680_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp10864)))))
            (if (macro-type-exception? _exn9678_)
                (macro-type-exception-arg-id _exn9678_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp10863
                              (let ()
                                (declare (not safe))
                                (cons _exn9678_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp10863)))))))
    (define type-exception-arguments
      (lambda (_exn9674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9674_))
            (let ((_e9676_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9674_ 'exception))))
              (if (macro-type-exception? _e9676_)
                  (macro-type-exception-arguments _e9676_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp10866
                                (let ()
                                  (declare (not safe))
                                  (cons _e9676_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp10866)))))
            (if (macro-type-exception? _exn9674_)
                (macro-type-exception-arguments _exn9674_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp10865
                              (let ()
                                (declare (not safe))
                                (cons _exn9674_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp10865)))))))
    (define type-exception-procedure
      (lambda (_exn9670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9670_))
            (let ((_e9672_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9670_ 'exception))))
              (if (macro-type-exception? _e9672_)
                  (macro-type-exception-procedure _e9672_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp10868
                                (let ()
                                  (declare (not safe))
                                  (cons _e9672_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp10868)))))
            (if (macro-type-exception? _exn9670_)
                (macro-type-exception-procedure _exn9670_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp10867
                              (let ()
                                (declare (not safe))
                                (cons _exn9670_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp10867)))))))
    (define type-exception-type-id
      (lambda (_exn9664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9664_))
            (let ((_e9667_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9664_ 'exception))))
              (if (macro-type-exception? _e9667_)
                  (macro-type-exception-type-id _e9667_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp10870
                                (let ()
                                  (declare (not safe))
                                  (cons _e9667_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp10870)))))
            (if (macro-type-exception? _exn9664_)
                (macro-type-exception-type-id _exn9664_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp10869
                              (let ()
                                (declare (not safe))
                                (cons _exn9664_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp10869)))))))
    (define unbound-global-exception?
      (lambda (_exn9660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9660_))
            (let ((_e9662_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9660_ 'exception))))
              (macro-unbound-global-exception? _e9662_))
            (macro-unbound-global-exception? _exn9660_))))
    (define unbound-global-exception-code
      (lambda (_exn9656_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9656_))
            (let ((_e9658_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9656_ 'exception))))
              (if (macro-unbound-global-exception? _e9658_)
                  (macro-unbound-global-exception-code _e9658_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp10872
                                (let ()
                                  (declare (not safe))
                                  (cons _e9658_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp10872)))))
            (if (macro-unbound-global-exception? _exn9656_)
                (macro-unbound-global-exception-code _exn9656_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp10871
                              (let ()
                                (declare (not safe))
                                (cons _exn9656_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp10871)))))))
    (define unbound-global-exception-rte
      (lambda (_exn9652_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9652_))
            (let ((_e9654_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9652_ 'exception))))
              (if (macro-unbound-global-exception? _e9654_)
                  (macro-unbound-global-exception-rte _e9654_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp10874
                                (let ()
                                  (declare (not safe))
                                  (cons _e9654_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp10874)))))
            (if (macro-unbound-global-exception? _exn9652_)
                (macro-unbound-global-exception-rte _exn9652_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp10873
                              (let ()
                                (declare (not safe))
                                (cons _exn9652_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp10873)))))))
    (define unbound-global-exception-variable
      (lambda (_exn9646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9646_))
            (let ((_e9649_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9646_ 'exception))))
              (if (macro-unbound-global-exception? _e9649_)
                  (macro-unbound-global-exception-variable _e9649_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp10876
                                (let ()
                                  (declare (not safe))
                                  (cons _e9649_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp10876)))))
            (if (macro-unbound-global-exception? _exn9646_)
                (macro-unbound-global-exception-variable _exn9646_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp10875
                              (let ()
                                (declare (not safe))
                                (cons _exn9646_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp10875)))))))
    (define unbound-key-exception?
      (lambda (_exn9642_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9642_))
            (let ((_e9644_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9642_ 'exception))))
              (macro-unbound-key-exception? _e9644_))
            (macro-unbound-key-exception? _exn9642_))))
    (define unbound-key-exception-arguments
      (lambda (_exn9638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9638_))
            (let ((_e9640_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9638_ 'exception))))
              (if (macro-unbound-key-exception? _e9640_)
                  (macro-unbound-key-exception-arguments _e9640_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp10878
                                (let ()
                                  (declare (not safe))
                                  (cons _e9640_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp10878)))))
            (if (macro-unbound-key-exception? _exn9638_)
                (macro-unbound-key-exception-arguments _exn9638_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp10877
                              (let ()
                                (declare (not safe))
                                (cons _exn9638_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp10877)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn9632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9632_))
            (let ((_e9635_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9632_ 'exception))))
              (if (macro-unbound-key-exception? _e9635_)
                  (macro-unbound-key-exception-procedure _e9635_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp10880
                                (let ()
                                  (declare (not safe))
                                  (cons _e9635_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp10880)))))
            (if (macro-unbound-key-exception? _exn9632_)
                (macro-unbound-key-exception-procedure _exn9632_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp10879
                              (let ()
                                (declare (not safe))
                                (cons _exn9632_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp10879)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn9628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9628_))
            (let ((_e9630_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9628_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e9630_))
            (macro-unbound-os-environment-variable-exception? _exn9628_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn9624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9624_))
            (let ((_e9626_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9624_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e9626_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e9626_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp10882
                                (let ()
                                  (declare (not safe))
                                  (cons _e9626_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp10882)))))
            (if (macro-unbound-os-environment-variable-exception? _exn9624_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn9624_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp10881
                              (let ()
                                (declare (not safe))
                                (cons _exn9624_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp10881)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn9618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9618_))
            (let ((_e9621_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9618_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e9621_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e9621_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp10884
                                (let ()
                                  (declare (not safe))
                                  (cons _e9621_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp10884)))))
            (if (macro-unbound-os-environment-variable-exception? _exn9618_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn9618_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp10883
                              (let ()
                                (declare (not safe))
                                (cons _exn9618_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp10883)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn9614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9614_))
            (let ((_e9616_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9614_ 'exception))))
              (macro-unbound-serial-number-exception? _e9616_))
            (macro-unbound-serial-number-exception? _exn9614_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn9610_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9610_))
            (let ((_e9612_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9610_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e9612_)
                  (macro-unbound-serial-number-exception-arguments _e9612_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp10886
                                (let ()
                                  (declare (not safe))
                                  (cons _e9612_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp10886)))))
            (if (macro-unbound-serial-number-exception? _exn9610_)
                (macro-unbound-serial-number-exception-arguments _exn9610_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp10885
                              (let ()
                                (declare (not safe))
                                (cons _exn9610_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp10885)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn9604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9604_))
            (let ((_e9607_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9604_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e9607_)
                  (macro-unbound-serial-number-exception-procedure _e9607_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp10888
                                (let ()
                                  (declare (not safe))
                                  (cons _e9607_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp10888)))))
            (if (macro-unbound-serial-number-exception? _exn9604_)
                (macro-unbound-serial-number-exception-procedure _exn9604_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp10887
                              (let ()
                                (declare (not safe))
                                (cons _exn9604_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp10887)))))))
    (define uncaught-exception?
      (lambda (_exn9600_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9600_))
            (let ((_e9602_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9600_ 'exception))))
              (macro-uncaught-exception? _e9602_))
            (macro-uncaught-exception? _exn9600_))))
    (define uncaught-exception-arguments
      (lambda (_exn9596_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9596_))
            (let ((_e9598_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9596_ 'exception))))
              (if (macro-uncaught-exception? _e9598_)
                  (macro-uncaught-exception-arguments _e9598_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp10890
                                (let ()
                                  (declare (not safe))
                                  (cons _e9598_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp10890)))))
            (if (macro-uncaught-exception? _exn9596_)
                (macro-uncaught-exception-arguments _exn9596_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp10889
                              (let ()
                                (declare (not safe))
                                (cons _exn9596_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp10889)))))))
    (define uncaught-exception-procedure
      (lambda (_exn9592_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9592_))
            (let ((_e9594_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9592_ 'exception))))
              (if (macro-uncaught-exception? _e9594_)
                  (macro-uncaught-exception-procedure _e9594_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp10892
                                (let ()
                                  (declare (not safe))
                                  (cons _e9594_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp10892)))))
            (if (macro-uncaught-exception? _exn9592_)
                (macro-uncaught-exception-procedure _exn9592_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp10891
                              (let ()
                                (declare (not safe))
                                (cons _exn9592_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp10891)))))))
    (define uncaught-exception-reason
      (lambda (_exn9586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9586_))
            (let ((_e9589_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9586_ 'exception))))
              (if (macro-uncaught-exception? _e9589_)
                  (macro-uncaught-exception-reason _e9589_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp10894
                                (let ()
                                  (declare (not safe))
                                  (cons _e9589_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp10894)))))
            (if (macro-uncaught-exception? _exn9586_)
                (macro-uncaught-exception-reason _exn9586_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp10893
                              (let ()
                                (declare (not safe))
                                (cons _exn9586_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp10893)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn9582_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9582_))
            (let ((_e9584_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9582_ 'exception))))
              (macro-uninitialized-thread-exception? _e9584_))
            (macro-uninitialized-thread-exception? _exn9582_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn9578_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9578_))
            (let ((_e9580_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9578_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e9580_)
                  (macro-uninitialized-thread-exception-arguments _e9580_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp10896
                                (let ()
                                  (declare (not safe))
                                  (cons _e9580_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp10896)))))
            (if (macro-uninitialized-thread-exception? _exn9578_)
                (macro-uninitialized-thread-exception-arguments _exn9578_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp10895
                              (let ()
                                (declare (not safe))
                                (cons _exn9578_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp10895)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn9572_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9572_))
            (let ((_e9575_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9572_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e9575_)
                  (macro-uninitialized-thread-exception-procedure _e9575_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp10898
                                (let ()
                                  (declare (not safe))
                                  (cons _e9575_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp10898)))))
            (if (macro-uninitialized-thread-exception? _exn9572_)
                (macro-uninitialized-thread-exception-procedure _exn9572_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp10897
                              (let ()
                                (declare (not safe))
                                (cons _exn9572_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp10897)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn9568_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9568_))
            (let ((_e9570_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9568_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e9570_))
            (macro-unknown-keyword-argument-exception? _exn9568_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn9564_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9564_))
            (let ((_e9566_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9564_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e9566_)
                  (macro-unknown-keyword-argument-exception-arguments _e9566_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp10900
                                (let ()
                                  (declare (not safe))
                                  (cons _e9566_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp10900)))))
            (if (macro-unknown-keyword-argument-exception? _exn9564_)
                (macro-unknown-keyword-argument-exception-arguments _exn9564_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp10899
                              (let ()
                                (declare (not safe))
                                (cons _exn9564_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp10899)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn9558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9558_))
            (let ((_e9561_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9558_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e9561_)
                  (macro-unknown-keyword-argument-exception-procedure _e9561_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp10902
                                (let ()
                                  (declare (not safe))
                                  (cons _e9561_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp10902)))))
            (if (macro-unknown-keyword-argument-exception? _exn9558_)
                (macro-unknown-keyword-argument-exception-procedure _exn9558_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp10901
                              (let ()
                                (declare (not safe))
                                (cons _exn9558_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp10901)))))))
    (define unterminated-process-exception?
      (lambda (_exn9554_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9554_))
            (let ((_e9556_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9554_ 'exception))))
              (macro-unterminated-process-exception? _e9556_))
            (macro-unterminated-process-exception? _exn9554_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn9550_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9550_))
            (let ((_e9552_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9550_ 'exception))))
              (if (macro-unterminated-process-exception? _e9552_)
                  (macro-unterminated-process-exception-arguments _e9552_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp10904
                                (let ()
                                  (declare (not safe))
                                  (cons _e9552_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp10904)))))
            (if (macro-unterminated-process-exception? _exn9550_)
                (macro-unterminated-process-exception-arguments _exn9550_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp10903
                              (let ()
                                (declare (not safe))
                                (cons _exn9550_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp10903)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn9544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9544_))
            (let ((_e9547_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9544_ 'exception))))
              (if (macro-unterminated-process-exception? _e9547_)
                  (macro-unterminated-process-exception-procedure _e9547_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp10906
                                (let ()
                                  (declare (not safe))
                                  (cons _e9547_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp10906)))))
            (if (macro-unterminated-process-exception? _exn9544_)
                (macro-unterminated-process-exception-procedure _exn9544_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp10905
                              (let ()
                                (declare (not safe))
                                (cons _exn9544_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp10905)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn9540_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9540_))
            (let ((_e9542_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9540_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e9542_))
            (macro-wrong-number-of-arguments-exception? _exn9540_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn9536_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9536_))
            (let ((_e9538_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9536_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e9538_)
                  (macro-wrong-number-of-arguments-exception-arguments _e9538_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp10908
                                (let ()
                                  (declare (not safe))
                                  (cons _e9538_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp10908)))))
            (if (macro-wrong-number-of-arguments-exception? _exn9536_)
                (macro-wrong-number-of-arguments-exception-arguments _exn9536_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp10907
                              (let ()
                                (declare (not safe))
                                (cons _exn9536_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp10907)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn9530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9530_))
            (let ((_e9533_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9530_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e9533_)
                  (macro-wrong-number-of-arguments-exception-procedure _e9533_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp10910
                                (let ()
                                  (declare (not safe))
                                  (cons _e9533_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp10910)))))
            (if (macro-wrong-number-of-arguments-exception? _exn9530_)
                (macro-wrong-number-of-arguments-exception-procedure _exn9530_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp10909
                              (let ()
                                (declare (not safe))
                                (cons _exn9530_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp10909)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn9526_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9526_))
            (let ((_e9528_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9526_ 'exception))))
              (macro-wrong-number-of-values-exception? _e9528_))
            (macro-wrong-number-of-values-exception? _exn9526_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn9522_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9522_))
            (let ((_e9524_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9522_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e9524_)
                  (macro-wrong-number-of-values-exception-code _e9524_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp10912
                                (let ()
                                  (declare (not safe))
                                  (cons _e9524_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp10912)))))
            (if (macro-wrong-number-of-values-exception? _exn9522_)
                (macro-wrong-number-of-values-exception-code _exn9522_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp10911
                              (let ()
                                (declare (not safe))
                                (cons _exn9522_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp10911)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn9518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9518_))
            (let ((_e9520_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9518_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e9520_)
                  (macro-wrong-number-of-values-exception-rte _e9520_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp10914
                                (let ()
                                  (declare (not safe))
                                  (cons _e9520_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp10914)))))
            (if (macro-wrong-number-of-values-exception? _exn9518_)
                (macro-wrong-number-of-values-exception-rte _exn9518_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp10913
                              (let ()
                                (declare (not safe))
                                (cons _exn9518_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp10913)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn9512_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9512_))
            (let ((_e9515_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9512_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e9515_)
                  (macro-wrong-number-of-values-exception-vals _e9515_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp10916
                                (let ()
                                  (declare (not safe))
                                  (cons _e9515_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp10916)))))
            (if (macro-wrong-number-of-values-exception? _exn9512_)
                (macro-wrong-number-of-values-exception-vals _exn9512_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp10915
                              (let ()
                                (declare (not safe))
                                (cons _exn9512_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp10915)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn9506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9506_))
            (let ((_e9509_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9506_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e9509_))
            (macro-wrong-processor-c-return-exception? _exn9506_))))))
