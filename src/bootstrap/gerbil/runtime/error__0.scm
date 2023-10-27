(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1698333192)
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
      (lambda _$args12710_
        (apply make-class-instance Exception::t _$args12710_)))
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
      (lambda _$args12707_
        (apply make-class-instance StackTrace::t _$args12707_)))
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
      (let ((__tmp12730
             (let ((__tmp12731
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12731))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp12730
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args12704_ (apply make-class-instance Error::t _$args12704_)))
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
      (let ((__tmp12732
             (let ((__tmp12733
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12733))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp12732
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args12701_
        (apply make-class-instance RuntimeException::t _$args12701_)))
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
      (lambda (_exn12696_ _continue12697_)
        (let ((_exn12699_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn12696_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn12699_ _continue12697_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn12692_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn12692_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn12692_ 'continuation))
                '#!void
                (let ((__tmp12734
                       (lambda (_cont12694_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn12692_
                            'continuation
                            _cont12694_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp12734)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn12692_))))
    (define error
      (lambda (_message12689_ . _irritants12690_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message12689_
                  'irritants:
                  _irritants12690_)))))
    (define with-exception-handler
      (lambda (_handler12682_ _thunk12683_)
        (if (let () (declare (not safe)) (procedure? _handler12682_))
            '#!void
            (raise (let ((__tmp12735
                          (let ()
                            (declare (not safe))
                            (cons _handler12682_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12735))))
        (if (let () (declare (not safe)) (procedure? _thunk12683_))
            '#!void
            (raise (let ((__tmp12736
                          (let ()
                            (declare (not safe))
                            (cons _thunk12683_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12736))))
        (let ((__tmp12737
               (lambda (_exn12685_)
                 (let ((_exn12687_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn12685_))))
                   (_handler12682_ _exn12687_)))))
          (declare (not safe))
          (##with-exception-handler __tmp12737 _thunk12683_))))
    (define with-catch
      (lambda (_handler12675_ _thunk12676_)
        (if (let () (declare (not safe)) (procedure? _handler12675_))
            '#!void
            (raise (let ((__tmp12738
                          (let ()
                            (declare (not safe))
                            (cons _handler12675_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12738))))
        (if (let () (declare (not safe)) (procedure? _thunk12676_))
            '#!void
            (raise (let ((__tmp12739
                          (let ()
                            (declare (not safe))
                            (cons _thunk12676_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12739))))
        (let ((__tmp12740
               (lambda (_cont12678_)
                 (with-exception-handler
                  (lambda (_exn12680_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont12678_
                       _handler12675_
                       _exn12680_)))
                  _thunk12676_))))
          (declare (not safe))
          (##continuation-capture __tmp12740))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn12666_)
        (if (or (heap-overflow-exception? _exn12666_)
                (stack-overflow-exception? _exn12666_))
            _exn12666_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn12666_))
                _exn12666_
                (if (macro-exception? _exn12666_)
                    (let ((_rte12671_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn12666_))))
                      (let ((__tmp12741
                             (lambda (_cont12673_)
                               (let ((__tmp12742
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont12673_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte12671_
                                  'continuation
                                  __tmp12742)))))
                        (declare (not safe))
                        (##continuation-capture __tmp12741))
                      _rte12671_)
                    _exn12666_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj12661_)
        (let ((_$e12663_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj12661_))))
          (if _$e12663_ _$e12663_ (error-exception? _obj12661_)))))
    (define error-message
      (lambda (_obj12659_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12659_))
            (let () (declare (not safe)) (slot-ref _obj12659_ 'message))
            (if (error-exception? _obj12659_)
                (error-exception-message _obj12659_)
                '#f))))
    (define error-irritants
      (lambda (_obj12657_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12657_))
            (let () (declare (not safe)) (slot-ref _obj12657_ 'irritants))
            (if (error-exception? _obj12657_)
                (error-exception-parameters _obj12657_)
                '#f))))
    (define error-trace
      (lambda (_obj12655_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12655_))
            (let () (declare (not safe)) (slot-ref _obj12655_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e12637_ _port12638_)
        (let ((_$e12640_
               (let ()
                 (declare (not safe))
                 (method-ref _e12637_ 'display-exception))))
          (if _$e12640_
              ((lambda (_f12643_) (_f12643_ _e12637_ _port12638_)) _$e12640_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e12637_ _port12638_))))))
    (define display-exception__0
      (lambda (_e12648_)
        (let ((_port12650_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e12648_ _port12650_))))
    (define display-exception
      (lambda _g12744_
        (let ((_g12743_ (let () (declare (not safe)) (##length _g12744_))))
          (cond ((let () (declare (not safe)) (##fx= _g12743_ 1))
                 (apply (lambda (_e12648_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e12648_)))
                        _g12744_))
                ((let () (declare (not safe)) (##fx= _g12743_ 2))
                 (apply (lambda (_e12652_ _port12653_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e12652_ _port12653_)))
                        _g12744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g12744_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self12626_ _message12627_ . _rest12628_)
        (let ((_message12634_
               (if (let () (declare (not safe)) (string? _message12627_))
                   _message12627_
                   (call-with-output-string
                    '""
                    (lambda (_g1262912631_)
                      (display _message12627_ _g1262912631_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self12626_ 'message _message12634_))
          (apply class-instance-init! _self12626_ _rest12628_))))
    (define Error:::init!::specialize
      (lambda (__t12712)
        (let ((__message12713
               (let ((__tmp12714
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12712 'message))))
                 (if __tmp12714
                     (let () (declare (not safe)) (##fx+ __tmp12714 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self12626_ _message12627_ . _rest12628_)
            (let ((_message12634_
                   (if (let () (declare (not safe)) (string? _message12627_))
                       _message12627_
                       (call-with-output-string
                        '""
                        (lambda (_g1262912631_)
                          (display _message12627_ _g1262912631_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self12626_
                 _message12634_
                 __message12713
                 __t12712
                 '#f))
              (apply class-instance-init! _self12626_ _rest12628_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self12484_ _port12485_)
        (let ((_tmp-port12487_ (open-output-string))
              (_display-error-newline12488_
               (> (output-port-column _port12485_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12487_))
          (let ((__tmp12745
                 (lambda ()
                   (if _display-error-newline12488_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e12491_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12484_ 'where))))
                     (if _$e12491_ (display _$e12491_) (display '"?")))
                   (let ((__tmp12746
                          (let ((__tmp12747
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self12484_))))
                            (declare (not safe))
                            (##type-name __tmp12747))))
                     (declare (not safe))
                     (display* '" [" __tmp12746 '"]: "))
                   (let ((__tmp12748
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12484_ 'message))))
                     (declare (not safe))
                     (displayln __tmp12748))
                   (let ((_irritants12494_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12484_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants12494_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj12496_)
                              (write _obj12496_)
                              (write-char '#\space))
                            _irritants12494_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self12484_))
                            (dump-stack-trace?))
                       (let ((_cont1249712499_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self12484_ 'continuation))))
                         (if _cont1249712499_
                             (let ((_cont12502_ _cont1249712499_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont12502_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp12745
             current-output-port
             _tmp-port12487_))
          (let ((__tmp12749 (get-output-string _tmp-port12487_)))
            (declare (not safe))
            (##write-string __tmp12749 _port12485_)))))
    (define Error::display-exception::specialize
      (lambda (__t12715)
        (let ((__continuation12716
               (let ((__tmp12720
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12715 'continuation))))
                 (if __tmp12720
                     (let () (declare (not safe)) (##fx+ __tmp12720 '1))
                     (error '"Unknown slot" 'continuation))))
              (__message12717
               (let ((__tmp12721
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12715 'message))))
                 (if __tmp12721
                     (let () (declare (not safe)) (##fx+ __tmp12721 '1))
                     (error '"Unknown slot" 'message))))
              (__irritants12718
               (let ((__tmp12722
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12715 'irritants))))
                 (if __tmp12722
                     (let () (declare (not safe)) (##fx+ __tmp12722 '1))
                     (error '"Unknown slot" 'irritants))))
              (__where12719
               (let ((__tmp12723
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12715 'where))))
                 (if __tmp12723
                     (let () (declare (not safe)) (##fx+ __tmp12723 '1))
                     (error '"Unknown slot" 'where))))
              (__class12724
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t12715))))
          (lambda (_self12484_ _port12485_)
            (let ((_tmp-port12487_ (open-output-string))
                  (_display-error-newline12488_
                   (> (output-port-column _port12485_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12487_))
              (let ((__tmp12750
                     (lambda ()
                       (if _display-error-newline12488_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e12491_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12484_
                                 __where12719
                                 __t12715
                                 '#f))))
                         (if _$e12491_ (display _$e12491_) (display '"?")))
                       (let ((__tmp12751
                              (let ((__tmp12752
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self12484_))))
                                (declare (not safe))
                                (##type-name __tmp12752))))
                         (declare (not safe))
                         (display* '" [" __tmp12751 '"]: "))
                       (let ((__tmp12753
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12484_
                                 __message12717
                                 __t12715
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp12753))
                       (let ((_irritants12494_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12484_
                                 __irritants12718
                                 __t12715
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants12494_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj12496_)
                                  (write _obj12496_)
                                  (write-char '#\space))
                                _irritants12494_)
                               (newline))))
                       (if (and __class12724 (dump-stack-trace?))
                           (let ((_cont1249712499_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self12484_
                                     __continuation12716
                                     __t12715
                                     '#f))))
                             (if _cont1249712499_
                                 (let ((_cont12502_ _cont1249712499_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont12502_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp12750
                 current-output-port
                 _tmp-port12487_))
              (let ((__tmp12754 (get-output-string _tmp-port12487_)))
                (declare (not safe))
                (##write-string __tmp12754 _port12485_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self12351_ _port12352_)
        (let ((_tmp-port12354_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12354_))
          (let ((__tmp12755
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12351_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp12755 _tmp-port12354_))
          (let ((_cont1235512357_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12351_ 'continuation))))
            (if _cont1235512357_
                (let ((_cont12360_ _cont1235512357_))
                  (display '"--- continuation backtrace:" _tmp-port12354_)
                  (newline _tmp-port12354_)
                  (display-continuation-backtrace _cont12360_ _tmp-port12354_))
                '#f))
          (let ((__tmp12756 (get-output-string _tmp-port12354_)))
            (declare (not safe))
            (##write-string __tmp12756 _port12352_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t12725)
        (let ((__continuation12726
               (let ((__tmp12728
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12725 'continuation))))
                 (if __tmp12728
                     (let () (declare (not safe)) (##fx+ __tmp12728 '1))
                     (error '"Unknown slot" 'continuation))))
              (__exception12727
               (let ((__tmp12729
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12725 'exception))))
                 (if __tmp12729
                     (let () (declare (not safe)) (##fx+ __tmp12729 '1))
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self12351_ _port12352_)
            (let ((_tmp-port12354_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12354_))
              (let ((__tmp12757
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12351_
                        __exception12727
                        __t12725
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp12757 _tmp-port12354_))
              (let ((_cont1235512357_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12351_
                        __continuation12726
                        __t12725
                        '#f))))
                (if _cont1235512357_
                    (let ((_cont12360_ _cont1235512357_))
                      (display '"--- continuation backtrace:" _tmp-port12354_)
                      (newline _tmp-port12354_)
                      (display-continuation-backtrace
                       _cont12360_
                       _tmp-port12354_))
                    '#f))
              (let ((__tmp12758 (get-output-string _tmp-port12354_)))
                (declare (not safe))
                (##write-string __tmp12758 _port12352_)))))))
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
      (lambda (_port12223_)
        (if (macro-character-port? _port12223_)
            (let ((_old-width12225_
                   (macro-character-port-output-width _port12223_)))
              (macro-character-port-output-width-set!
               _port12223_
               (lambda (_port12227_) '256))
              _old-width12225_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port12220_ _old-width12221_)
        (if (macro-character-port? _port12220_)
            (macro-character-port-output-width-set!
             _port12220_
             _old-width12221_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e12218_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e12218_))))
    (define abandoned-mutex-exception?
      (lambda (_exn12212_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12212_))
            (let ((_e12215_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12212_ 'exception))))
              (macro-abandoned-mutex-exception? _e12215_))
            (macro-abandoned-mutex-exception? _exn12212_))))
    (define cfun-conversion-exception?
      (lambda (_exn12208_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12208_))
            (let ((_e12210_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12208_ 'exception))))
              (macro-cfun-conversion-exception? _e12210_))
            (macro-cfun-conversion-exception? _exn12208_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn12204_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12204_))
            (let ((_e12206_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12204_ 'exception))))
              (if (macro-cfun-conversion-exception? _e12206_)
                  (macro-cfun-conversion-exception-arguments _e12206_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12760
                                (let ()
                                  (declare (not safe))
                                  (cons _e12206_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp12760)))))
            (if (macro-cfun-conversion-exception? _exn12204_)
                (macro-cfun-conversion-exception-arguments _exn12204_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12759
                              (let ()
                                (declare (not safe))
                                (cons _exn12204_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp12759)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn12200_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12200_))
            (let ((_e12202_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12200_ 'exception))))
              (if (macro-cfun-conversion-exception? _e12202_)
                  (macro-cfun-conversion-exception-code _e12202_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12762
                                (let ()
                                  (declare (not safe))
                                  (cons _e12202_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp12762)))))
            (if (macro-cfun-conversion-exception? _exn12200_)
                (macro-cfun-conversion-exception-code _exn12200_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12761
                              (let ()
                                (declare (not safe))
                                (cons _exn12200_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp12761)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn12196_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12196_))
            (let ((_e12198_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12196_ 'exception))))
              (if (macro-cfun-conversion-exception? _e12198_)
                  (macro-cfun-conversion-exception-message _e12198_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12764
                                (let ()
                                  (declare (not safe))
                                  (cons _e12198_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp12764)))))
            (if (macro-cfun-conversion-exception? _exn12196_)
                (macro-cfun-conversion-exception-message _exn12196_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12763
                              (let ()
                                (declare (not safe))
                                (cons _exn12196_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp12763)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn12190_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12190_))
            (let ((_e12193_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12190_ 'exception))))
              (if (macro-cfun-conversion-exception? _e12193_)
                  (macro-cfun-conversion-exception-procedure _e12193_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12766
                                (let ()
                                  (declare (not safe))
                                  (cons _e12193_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp12766)))))
            (if (macro-cfun-conversion-exception? _exn12190_)
                (macro-cfun-conversion-exception-procedure _exn12190_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12765
                              (let ()
                                (declare (not safe))
                                (cons _exn12190_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp12765)))))))
    (define datum-parsing-exception?
      (lambda (_exn12186_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12186_))
            (let ((_e12188_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12186_ 'exception))))
              (macro-datum-parsing-exception? _e12188_))
            (macro-datum-parsing-exception? _exn12186_))))
    (define datum-parsing-exception-kind
      (lambda (_exn12182_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12182_))
            (let ((_e12184_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12182_ 'exception))))
              (if (macro-datum-parsing-exception? _e12184_)
                  (macro-datum-parsing-exception-kind _e12184_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12768
                                (let ()
                                  (declare (not safe))
                                  (cons _e12184_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp12768)))))
            (if (macro-datum-parsing-exception? _exn12182_)
                (macro-datum-parsing-exception-kind _exn12182_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12767
                              (let ()
                                (declare (not safe))
                                (cons _exn12182_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp12767)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn12178_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12178_))
            (let ((_e12180_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12178_ 'exception))))
              (if (macro-datum-parsing-exception? _e12180_)
                  (macro-datum-parsing-exception-parameters _e12180_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12770
                                (let ()
                                  (declare (not safe))
                                  (cons _e12180_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp12770)))))
            (if (macro-datum-parsing-exception? _exn12178_)
                (macro-datum-parsing-exception-parameters _exn12178_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12769
                              (let ()
                                (declare (not safe))
                                (cons _exn12178_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp12769)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn12172_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12172_))
            (let ((_e12175_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12172_ 'exception))))
              (if (macro-datum-parsing-exception? _e12175_)
                  (macro-datum-parsing-exception-readenv _e12175_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12772
                                (let ()
                                  (declare (not safe))
                                  (cons _e12175_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp12772)))))
            (if (macro-datum-parsing-exception? _exn12172_)
                (macro-datum-parsing-exception-readenv _exn12172_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12771
                              (let ()
                                (declare (not safe))
                                (cons _exn12172_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp12771)))))))
    (define deadlock-exception?
      (lambda (_exn12166_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12166_))
            (let ((_e12169_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12166_ 'exception))))
              (macro-deadlock-exception? _e12169_))
            (macro-deadlock-exception? _exn12166_))))
    (define divide-by-zero-exception?
      (lambda (_exn12162_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12162_))
            (let ((_e12164_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12162_ 'exception))))
              (macro-divide-by-zero-exception? _e12164_))
            (macro-divide-by-zero-exception? _exn12162_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn12158_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12158_))
            (let ((_e12160_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12158_ 'exception))))
              (if (macro-divide-by-zero-exception? _e12160_)
                  (macro-divide-by-zero-exception-arguments _e12160_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12774
                                (let ()
                                  (declare (not safe))
                                  (cons _e12160_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp12774)))))
            (if (macro-divide-by-zero-exception? _exn12158_)
                (macro-divide-by-zero-exception-arguments _exn12158_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12773
                              (let ()
                                (declare (not safe))
                                (cons _exn12158_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp12773)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn12152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12152_))
            (let ((_e12155_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12152_ 'exception))))
              (if (macro-divide-by-zero-exception? _e12155_)
                  (macro-divide-by-zero-exception-procedure _e12155_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12776
                                (let ()
                                  (declare (not safe))
                                  (cons _e12155_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp12776)))))
            (if (macro-divide-by-zero-exception? _exn12152_)
                (macro-divide-by-zero-exception-procedure _exn12152_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12775
                              (let ()
                                (declare (not safe))
                                (cons _exn12152_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp12775)))))))
    (define error-exception?
      (lambda (_exn12148_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12148_))
            (let ((_e12150_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12148_ 'exception))))
              (macro-error-exception? _e12150_))
            (macro-error-exception? _exn12148_))))
    (define error-exception-message
      (lambda (_exn12144_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12144_))
            (let ((_e12146_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12144_ 'exception))))
              (if (macro-error-exception? _e12146_)
                  (macro-error-exception-message _e12146_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12778
                                (let ()
                                  (declare (not safe))
                                  (cons _e12146_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp12778)))))
            (if (macro-error-exception? _exn12144_)
                (macro-error-exception-message _exn12144_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12777
                              (let ()
                                (declare (not safe))
                                (cons _exn12144_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp12777)))))))
    (define error-exception-parameters
      (lambda (_exn12138_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12138_))
            (let ((_e12141_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12138_ 'exception))))
              (if (macro-error-exception? _e12141_)
                  (macro-error-exception-parameters _e12141_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12780
                                (let ()
                                  (declare (not safe))
                                  (cons _e12141_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp12780)))))
            (if (macro-error-exception? _exn12138_)
                (macro-error-exception-parameters _exn12138_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12779
                              (let ()
                                (declare (not safe))
                                (cons _exn12138_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp12779)))))))
    (define expression-parsing-exception?
      (lambda (_exn12134_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12134_))
            (let ((_e12136_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12134_ 'exception))))
              (macro-expression-parsing-exception? _e12136_))
            (macro-expression-parsing-exception? _exn12134_))))
    (define expression-parsing-exception-kind
      (lambda (_exn12130_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12130_))
            (let ((_e12132_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12130_ 'exception))))
              (if (macro-expression-parsing-exception? _e12132_)
                  (macro-expression-parsing-exception-kind _e12132_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12782
                                (let ()
                                  (declare (not safe))
                                  (cons _e12132_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp12782)))))
            (if (macro-expression-parsing-exception? _exn12130_)
                (macro-expression-parsing-exception-kind _exn12130_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12781
                              (let ()
                                (declare (not safe))
                                (cons _exn12130_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp12781)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn12126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12126_))
            (let ((_e12128_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12126_ 'exception))))
              (if (macro-expression-parsing-exception? _e12128_)
                  (macro-expression-parsing-exception-parameters _e12128_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12784
                                (let ()
                                  (declare (not safe))
                                  (cons _e12128_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp12784)))))
            (if (macro-expression-parsing-exception? _exn12126_)
                (macro-expression-parsing-exception-parameters _exn12126_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12783
                              (let ()
                                (declare (not safe))
                                (cons _exn12126_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp12783)))))))
    (define expression-parsing-exception-source
      (lambda (_exn12120_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12120_))
            (let ((_e12123_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12120_ 'exception))))
              (if (macro-expression-parsing-exception? _e12123_)
                  (macro-expression-parsing-exception-source _e12123_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12786
                                (let ()
                                  (declare (not safe))
                                  (cons _e12123_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp12786)))))
            (if (macro-expression-parsing-exception? _exn12120_)
                (macro-expression-parsing-exception-source _exn12120_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12785
                              (let ()
                                (declare (not safe))
                                (cons _exn12120_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp12785)))))))
    (define file-exists-exception?
      (lambda (_exn12116_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12116_))
            (let ((_e12118_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12116_ 'exception))))
              (macro-file-exists-exception? _e12118_))
            (macro-file-exists-exception? _exn12116_))))
    (define file-exists-exception-arguments
      (lambda (_exn12112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12112_))
            (let ((_e12114_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12112_ 'exception))))
              (if (macro-file-exists-exception? _e12114_)
                  (macro-file-exists-exception-arguments _e12114_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12788
                                (let ()
                                  (declare (not safe))
                                  (cons _e12114_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp12788)))))
            (if (macro-file-exists-exception? _exn12112_)
                (macro-file-exists-exception-arguments _exn12112_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12787
                              (let ()
                                (declare (not safe))
                                (cons _exn12112_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp12787)))))))
    (define file-exists-exception-procedure
      (lambda (_exn12106_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12106_))
            (let ((_e12109_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12106_ 'exception))))
              (if (macro-file-exists-exception? _e12109_)
                  (macro-file-exists-exception-procedure _e12109_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12790
                                (let ()
                                  (declare (not safe))
                                  (cons _e12109_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp12790)))))
            (if (macro-file-exists-exception? _exn12106_)
                (macro-file-exists-exception-procedure _exn12106_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12789
                              (let ()
                                (declare (not safe))
                                (cons _exn12106_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp12789)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn12102_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12102_))
            (let ((_e12104_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12102_ 'exception))))
              (macro-fixnum-overflow-exception? _e12104_))
            (macro-fixnum-overflow-exception? _exn12102_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn12098_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12098_))
            (let ((_e12100_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12098_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e12100_)
                  (macro-fixnum-overflow-exception-arguments _e12100_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12792
                                (let ()
                                  (declare (not safe))
                                  (cons _e12100_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp12792)))))
            (if (macro-fixnum-overflow-exception? _exn12098_)
                (macro-fixnum-overflow-exception-arguments _exn12098_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12791
                              (let ()
                                (declare (not safe))
                                (cons _exn12098_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp12791)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn12092_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12092_))
            (let ((_e12095_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12092_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e12095_)
                  (macro-fixnum-overflow-exception-procedure _e12095_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12794
                                (let ()
                                  (declare (not safe))
                                  (cons _e12095_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp12794)))))
            (if (macro-fixnum-overflow-exception? _exn12092_)
                (macro-fixnum-overflow-exception-procedure _exn12092_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12793
                              (let ()
                                (declare (not safe))
                                (cons _exn12092_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp12793)))))))
    (define heap-overflow-exception?
      (lambda (_exn12086_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12086_))
            (let ((_e12089_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12086_ 'exception))))
              (macro-heap-overflow-exception? _e12089_))
            (macro-heap-overflow-exception? _exn12086_))))
    (define inactive-thread-exception?
      (lambda (_exn12082_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12082_))
            (let ((_e12084_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12082_ 'exception))))
              (macro-inactive-thread-exception? _e12084_))
            (macro-inactive-thread-exception? _exn12082_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn12078_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12078_))
            (let ((_e12080_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12078_ 'exception))))
              (if (macro-inactive-thread-exception? _e12080_)
                  (macro-inactive-thread-exception-arguments _e12080_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12796
                                (let ()
                                  (declare (not safe))
                                  (cons _e12080_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp12796)))))
            (if (macro-inactive-thread-exception? _exn12078_)
                (macro-inactive-thread-exception-arguments _exn12078_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12795
                              (let ()
                                (declare (not safe))
                                (cons _exn12078_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp12795)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn12072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12072_))
            (let ((_e12075_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12072_ 'exception))))
              (if (macro-inactive-thread-exception? _e12075_)
                  (macro-inactive-thread-exception-procedure _e12075_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12798
                                (let ()
                                  (declare (not safe))
                                  (cons _e12075_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp12798)))))
            (if (macro-inactive-thread-exception? _exn12072_)
                (macro-inactive-thread-exception-procedure _exn12072_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12797
                              (let ()
                                (declare (not safe))
                                (cons _exn12072_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp12797)))))))
    (define initialized-thread-exception?
      (lambda (_exn12068_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12068_))
            (let ((_e12070_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12068_ 'exception))))
              (macro-initialized-thread-exception? _e12070_))
            (macro-initialized-thread-exception? _exn12068_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn12064_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12064_))
            (let ((_e12066_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12064_ 'exception))))
              (if (macro-initialized-thread-exception? _e12066_)
                  (macro-initialized-thread-exception-arguments _e12066_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12800
                                (let ()
                                  (declare (not safe))
                                  (cons _e12066_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp12800)))))
            (if (macro-initialized-thread-exception? _exn12064_)
                (macro-initialized-thread-exception-arguments _exn12064_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12799
                              (let ()
                                (declare (not safe))
                                (cons _exn12064_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp12799)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn12058_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12058_))
            (let ((_e12061_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12058_ 'exception))))
              (if (macro-initialized-thread-exception? _e12061_)
                  (macro-initialized-thread-exception-procedure _e12061_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12802
                                (let ()
                                  (declare (not safe))
                                  (cons _e12061_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp12802)))))
            (if (macro-initialized-thread-exception? _exn12058_)
                (macro-initialized-thread-exception-procedure _exn12058_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12801
                              (let ()
                                (declare (not safe))
                                (cons _exn12058_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp12801)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn12054_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12054_))
            (let ((_e12056_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12054_ 'exception))))
              (macro-invalid-hash-number-exception? _e12056_))
            (macro-invalid-hash-number-exception? _exn12054_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn12050_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12050_))
            (let ((_e12052_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12050_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e12052_)
                  (macro-invalid-hash-number-exception-arguments _e12052_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12804
                                (let ()
                                  (declare (not safe))
                                  (cons _e12052_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp12804)))))
            (if (macro-invalid-hash-number-exception? _exn12050_)
                (macro-invalid-hash-number-exception-arguments _exn12050_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12803
                              (let ()
                                (declare (not safe))
                                (cons _exn12050_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp12803)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn12044_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12044_))
            (let ((_e12047_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12044_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e12047_)
                  (macro-invalid-hash-number-exception-procedure _e12047_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12806
                                (let ()
                                  (declare (not safe))
                                  (cons _e12047_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp12806)))))
            (if (macro-invalid-hash-number-exception? _exn12044_)
                (macro-invalid-hash-number-exception-procedure _exn12044_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12805
                              (let ()
                                (declare (not safe))
                                (cons _exn12044_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp12805)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn12040_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12040_))
            (let ((_e12042_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12040_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e12042_))
            (macro-invalid-utf8-encoding-exception? _exn12040_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn12036_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12036_))
            (let ((_e12038_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12036_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e12038_)
                  (macro-invalid-utf8-encoding-exception-arguments _e12038_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12808
                                (let ()
                                  (declare (not safe))
                                  (cons _e12038_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp12808)))))
            (if (macro-invalid-utf8-encoding-exception? _exn12036_)
                (macro-invalid-utf8-encoding-exception-arguments _exn12036_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12807
                              (let ()
                                (declare (not safe))
                                (cons _exn12036_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp12807)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn12030_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12030_))
            (let ((_e12033_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12030_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e12033_)
                  (macro-invalid-utf8-encoding-exception-procedure _e12033_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12810
                                (let ()
                                  (declare (not safe))
                                  (cons _e12033_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp12810)))))
            (if (macro-invalid-utf8-encoding-exception? _exn12030_)
                (macro-invalid-utf8-encoding-exception-procedure _exn12030_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12809
                              (let ()
                                (declare (not safe))
                                (cons _exn12030_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp12809)))))))
    (define join-timeout-exception?
      (lambda (_exn12026_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12026_))
            (let ((_e12028_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12026_ 'exception))))
              (macro-join-timeout-exception? _e12028_))
            (macro-join-timeout-exception? _exn12026_))))
    (define join-timeout-exception-arguments
      (lambda (_exn12022_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12022_))
            (let ((_e12024_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12022_ 'exception))))
              (if (macro-join-timeout-exception? _e12024_)
                  (macro-join-timeout-exception-arguments _e12024_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12812
                                (let ()
                                  (declare (not safe))
                                  (cons _e12024_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp12812)))))
            (if (macro-join-timeout-exception? _exn12022_)
                (macro-join-timeout-exception-arguments _exn12022_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12811
                              (let ()
                                (declare (not safe))
                                (cons _exn12022_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp12811)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn12016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12016_))
            (let ((_e12019_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12016_ 'exception))))
              (if (macro-join-timeout-exception? _e12019_)
                  (macro-join-timeout-exception-procedure _e12019_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12814
                                (let ()
                                  (declare (not safe))
                                  (cons _e12019_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp12814)))))
            (if (macro-join-timeout-exception? _exn12016_)
                (macro-join-timeout-exception-procedure _exn12016_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12813
                              (let ()
                                (declare (not safe))
                                (cons _exn12016_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp12813)))))))
    (define keyword-expected-exception?
      (lambda (_exn12012_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12012_))
            (let ((_e12014_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12012_ 'exception))))
              (macro-keyword-expected-exception? _e12014_))
            (macro-keyword-expected-exception? _exn12012_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn12008_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12008_))
            (let ((_e12010_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12008_ 'exception))))
              (if (macro-keyword-expected-exception? _e12010_)
                  (macro-keyword-expected-exception-arguments _e12010_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12816
                                (let ()
                                  (declare (not safe))
                                  (cons _e12010_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp12816)))))
            (if (macro-keyword-expected-exception? _exn12008_)
                (macro-keyword-expected-exception-arguments _exn12008_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12815
                              (let ()
                                (declare (not safe))
                                (cons _exn12008_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp12815)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn12002_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12002_))
            (let ((_e12005_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12002_ 'exception))))
              (if (macro-keyword-expected-exception? _e12005_)
                  (macro-keyword-expected-exception-procedure _e12005_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12818
                                (let ()
                                  (declare (not safe))
                                  (cons _e12005_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp12818)))))
            (if (macro-keyword-expected-exception? _exn12002_)
                (macro-keyword-expected-exception-procedure _exn12002_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12817
                              (let ()
                                (declare (not safe))
                                (cons _exn12002_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp12817)))))))
    (define length-mismatch-exception?
      (lambda (_exn11998_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11998_))
            (let ((_e12000_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11998_ 'exception))))
              (macro-length-mismatch-exception? _e12000_))
            (macro-length-mismatch-exception? _exn11998_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn11994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11994_))
            (let ((_e11996_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11994_ 'exception))))
              (if (macro-length-mismatch-exception? _e11996_)
                  (macro-length-mismatch-exception-arg-id _e11996_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12820
                                (let ()
                                  (declare (not safe))
                                  (cons _e11996_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp12820)))))
            (if (macro-length-mismatch-exception? _exn11994_)
                (macro-length-mismatch-exception-arg-id _exn11994_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12819
                              (let ()
                                (declare (not safe))
                                (cons _exn11994_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp12819)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn11990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11990_))
            (let ((_e11992_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11990_ 'exception))))
              (if (macro-length-mismatch-exception? _e11992_)
                  (macro-length-mismatch-exception-arguments _e11992_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12822
                                (let ()
                                  (declare (not safe))
                                  (cons _e11992_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp12822)))))
            (if (macro-length-mismatch-exception? _exn11990_)
                (macro-length-mismatch-exception-arguments _exn11990_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12821
                              (let ()
                                (declare (not safe))
                                (cons _exn11990_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp12821)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn11984_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11984_))
            (let ((_e11987_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11984_ 'exception))))
              (if (macro-length-mismatch-exception? _e11987_)
                  (macro-length-mismatch-exception-procedure _e11987_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12824
                                (let ()
                                  (declare (not safe))
                                  (cons _e11987_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp12824)))))
            (if (macro-length-mismatch-exception? _exn11984_)
                (macro-length-mismatch-exception-procedure _exn11984_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12823
                              (let ()
                                (declare (not safe))
                                (cons _exn11984_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp12823)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn11980_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11980_))
            (let ((_e11982_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11980_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e11982_))
            (macro-mailbox-receive-timeout-exception? _exn11980_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn11976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11976_))
            (let ((_e11978_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11976_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11978_)
                  (macro-mailbox-receive-timeout-exception-arguments _e11978_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12826
                                (let ()
                                  (declare (not safe))
                                  (cons _e11978_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp12826)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11976_)
                (macro-mailbox-receive-timeout-exception-arguments _exn11976_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12825
                              (let ()
                                (declare (not safe))
                                (cons _exn11976_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp12825)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn11970_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11970_))
            (let ((_e11973_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11970_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11973_)
                  (macro-mailbox-receive-timeout-exception-procedure _e11973_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12828
                                (let ()
                                  (declare (not safe))
                                  (cons _e11973_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp12828)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11970_)
                (macro-mailbox-receive-timeout-exception-procedure _exn11970_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12827
                              (let ()
                                (declare (not safe))
                                (cons _exn11970_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp12827)))))))
    (define module-not-found-exception?
      (lambda (_exn11966_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11966_))
            (let ((_e11968_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11966_ 'exception))))
              (macro-module-not-found-exception? _e11968_))
            (macro-module-not-found-exception? _exn11966_))))
    (define module-not-found-exception-arguments
      (lambda (_exn11962_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11962_))
            (let ((_e11964_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11962_ 'exception))))
              (if (macro-module-not-found-exception? _e11964_)
                  (macro-module-not-found-exception-arguments _e11964_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12830
                                (let ()
                                  (declare (not safe))
                                  (cons _e11964_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp12830)))))
            (if (macro-module-not-found-exception? _exn11962_)
                (macro-module-not-found-exception-arguments _exn11962_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12829
                              (let ()
                                (declare (not safe))
                                (cons _exn11962_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp12829)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn11956_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11956_))
            (let ((_e11959_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11956_ 'exception))))
              (if (macro-module-not-found-exception? _e11959_)
                  (macro-module-not-found-exception-procedure _e11959_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12832
                                (let ()
                                  (declare (not safe))
                                  (cons _e11959_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp12832)))))
            (if (macro-module-not-found-exception? _exn11956_)
                (macro-module-not-found-exception-procedure _exn11956_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12831
                              (let ()
                                (declare (not safe))
                                (cons _exn11956_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp12831)))))))
    (define multiple-c-return-exception?
      (lambda (_exn11950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11950_))
            (let ((_e11953_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11950_ 'exception))))
              (macro-multiple-c-return-exception? _e11953_))
            (macro-multiple-c-return-exception? _exn11950_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn11946_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11946_))
            (let ((_e11948_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11946_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e11948_))
            (macro-no-such-file-or-directory-exception? _exn11946_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn11942_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11942_))
            (let ((_e11944_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11942_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11944_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e11944_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12834
                                (let ()
                                  (declare (not safe))
                                  (cons _e11944_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp12834)))))
            (if (macro-no-such-file-or-directory-exception? _exn11942_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn11942_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12833
                              (let ()
                                (declare (not safe))
                                (cons _exn11942_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp12833)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn11936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11936_))
            (let ((_e11939_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11936_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11939_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e11939_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12836
                                (let ()
                                  (declare (not safe))
                                  (cons _e11939_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp12836)))))
            (if (macro-no-such-file-or-directory-exception? _exn11936_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn11936_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12835
                              (let ()
                                (declare (not safe))
                                (cons _exn11936_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp12835)))))))
    (define noncontinuable-exception?
      (lambda (_exn11932_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11932_))
            (let ((_e11934_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11932_ 'exception))))
              (macro-noncontinuable-exception? _e11934_))
            (macro-noncontinuable-exception? _exn11932_))))
    (define noncontinuable-exception-reason
      (lambda (_exn11926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11926_))
            (let ((_e11929_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11926_ 'exception))))
              (if (macro-noncontinuable-exception? _e11929_)
                  (macro-noncontinuable-exception-reason _e11929_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp12838
                                (let ()
                                  (declare (not safe))
                                  (cons _e11929_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp12838)))))
            (if (macro-noncontinuable-exception? _exn11926_)
                (macro-noncontinuable-exception-reason _exn11926_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp12837
                              (let ()
                                (declare (not safe))
                                (cons _exn11926_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp12837)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn11922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11922_))
            (let ((_e11924_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11922_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e11924_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn11922_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn11918_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11918_))
            (let ((_e11920_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11918_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11920_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e11920_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12840
                                (let ()
                                  (declare (not safe))
                                  (cons _e11920_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp12840)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11918_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn11918_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12839
                              (let ()
                                (declare (not safe))
                                (cons _exn11918_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp12839)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn11912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11912_))
            (let ((_e11915_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11912_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11915_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e11915_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12842
                                (let ()
                                  (declare (not safe))
                                  (cons _e11915_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp12842)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11912_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn11912_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12841
                              (let ()
                                (declare (not safe))
                                (cons _exn11912_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp12841)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn11908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11908_))
            (let ((_e11910_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11908_ 'exception))))
              (macro-nonprocedure-operator-exception? _e11910_))
            (macro-nonprocedure-operator-exception? _exn11908_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn11904_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11904_))
            (let ((_e11906_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11904_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11906_)
                  (macro-nonprocedure-operator-exception-arguments _e11906_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12844
                                (let ()
                                  (declare (not safe))
                                  (cons _e11906_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp12844)))))
            (if (macro-nonprocedure-operator-exception? _exn11904_)
                (macro-nonprocedure-operator-exception-arguments _exn11904_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12843
                              (let ()
                                (declare (not safe))
                                (cons _exn11904_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp12843)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn11900_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11900_))
            (let ((_e11902_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11900_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11902_)
                  (macro-nonprocedure-operator-exception-code _e11902_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12846
                                (let ()
                                  (declare (not safe))
                                  (cons _e11902_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp12846)))))
            (if (macro-nonprocedure-operator-exception? _exn11900_)
                (macro-nonprocedure-operator-exception-code _exn11900_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12845
                              (let ()
                                (declare (not safe))
                                (cons _exn11900_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp12845)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn11896_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11896_))
            (let ((_e11898_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11896_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11898_)
                  (macro-nonprocedure-operator-exception-operator _e11898_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12848
                                (let ()
                                  (declare (not safe))
                                  (cons _e11898_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp12848)))))
            (if (macro-nonprocedure-operator-exception? _exn11896_)
                (macro-nonprocedure-operator-exception-operator _exn11896_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12847
                              (let ()
                                (declare (not safe))
                                (cons _exn11896_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp12847)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn11890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11890_))
            (let ((_e11893_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11890_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11893_)
                  (macro-nonprocedure-operator-exception-rte _e11893_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12850
                                (let ()
                                  (declare (not safe))
                                  (cons _e11893_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp12850)))))
            (if (macro-nonprocedure-operator-exception? _exn11890_)
                (macro-nonprocedure-operator-exception-rte _exn11890_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12849
                              (let ()
                                (declare (not safe))
                                (cons _exn11890_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp12849)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn11886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11886_))
            (let ((_e11888_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11886_ 'exception))))
              (macro-not-in-compilation-context-exception? _e11888_))
            (macro-not-in-compilation-context-exception? _exn11886_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn11882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11882_))
            (let ((_e11884_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11882_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11884_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e11884_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12852
                                (let ()
                                  (declare (not safe))
                                  (cons _e11884_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp12852)))))
            (if (macro-not-in-compilation-context-exception? _exn11882_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn11882_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12851
                              (let ()
                                (declare (not safe))
                                (cons _exn11882_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp12851)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn11876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11876_))
            (let ((_e11879_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11876_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11879_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e11879_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12854
                                (let ()
                                  (declare (not safe))
                                  (cons _e11879_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp12854)))))
            (if (macro-not-in-compilation-context-exception? _exn11876_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn11876_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12853
                              (let ()
                                (declare (not safe))
                                (cons _exn11876_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp12853)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn11872_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11872_))
            (let ((_e11874_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11872_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e11874_))
            (macro-number-of-arguments-limit-exception? _exn11872_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn11868_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11868_))
            (let ((_e11870_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11868_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11870_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e11870_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12856
                                (let ()
                                  (declare (not safe))
                                  (cons _e11870_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp12856)))))
            (if (macro-number-of-arguments-limit-exception? _exn11868_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn11868_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12855
                              (let ()
                                (declare (not safe))
                                (cons _exn11868_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp12855)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn11862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11862_))
            (let ((_e11865_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11862_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11865_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e11865_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12858
                                (let ()
                                  (declare (not safe))
                                  (cons _e11865_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp12858)))))
            (if (macro-number-of-arguments-limit-exception? _exn11862_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn11862_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12857
                              (let ()
                                (declare (not safe))
                                (cons _exn11862_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp12857)))))))
    (define os-exception?
      (lambda (_exn11858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11858_))
            (let ((_e11860_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11858_ 'exception))))
              (macro-os-exception? _e11860_))
            (macro-os-exception? _exn11858_))))
    (define os-exception-arguments
      (lambda (_exn11854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11854_))
            (let ((_e11856_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11854_ 'exception))))
              (if (macro-os-exception? _e11856_)
                  (macro-os-exception-arguments _e11856_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12860
                                (let ()
                                  (declare (not safe))
                                  (cons _e11856_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp12860)))))
            (if (macro-os-exception? _exn11854_)
                (macro-os-exception-arguments _exn11854_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12859
                              (let ()
                                (declare (not safe))
                                (cons _exn11854_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp12859)))))))
    (define os-exception-code
      (lambda (_exn11850_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11850_))
            (let ((_e11852_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11850_ 'exception))))
              (if (macro-os-exception? _e11852_)
                  (macro-os-exception-code _e11852_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12862
                                (let ()
                                  (declare (not safe))
                                  (cons _e11852_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp12862)))))
            (if (macro-os-exception? _exn11850_)
                (macro-os-exception-code _exn11850_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12861
                              (let ()
                                (declare (not safe))
                                (cons _exn11850_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp12861)))))))
    (define os-exception-message
      (lambda (_exn11846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11846_))
            (let ((_e11848_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11846_ 'exception))))
              (if (macro-os-exception? _e11848_)
                  (macro-os-exception-message _e11848_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12864
                                (let ()
                                  (declare (not safe))
                                  (cons _e11848_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp12864)))))
            (if (macro-os-exception? _exn11846_)
                (macro-os-exception-message _exn11846_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12863
                              (let ()
                                (declare (not safe))
                                (cons _exn11846_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp12863)))))))
    (define os-exception-procedure
      (lambda (_exn11840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11840_))
            (let ((_e11843_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11840_ 'exception))))
              (if (macro-os-exception? _e11843_)
                  (macro-os-exception-procedure _e11843_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12866
                                (let ()
                                  (declare (not safe))
                                  (cons _e11843_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp12866)))))
            (if (macro-os-exception? _exn11840_)
                (macro-os-exception-procedure _exn11840_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12865
                              (let ()
                                (declare (not safe))
                                (cons _exn11840_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp12865)))))))
    (define permission-denied-exception?
      (lambda (_exn11836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11836_))
            (let ((_e11838_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11836_ 'exception))))
              (macro-permission-denied-exception? _e11838_))
            (macro-permission-denied-exception? _exn11836_))))
    (define permission-denied-exception-arguments
      (lambda (_exn11832_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11832_))
            (let ((_e11834_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11832_ 'exception))))
              (if (macro-permission-denied-exception? _e11834_)
                  (macro-permission-denied-exception-arguments _e11834_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12868
                                (let ()
                                  (declare (not safe))
                                  (cons _e11834_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp12868)))))
            (if (macro-permission-denied-exception? _exn11832_)
                (macro-permission-denied-exception-arguments _exn11832_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12867
                              (let ()
                                (declare (not safe))
                                (cons _exn11832_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp12867)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn11826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11826_))
            (let ((_e11829_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11826_ 'exception))))
              (if (macro-permission-denied-exception? _e11829_)
                  (macro-permission-denied-exception-procedure _e11829_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12870
                                (let ()
                                  (declare (not safe))
                                  (cons _e11829_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp12870)))))
            (if (macro-permission-denied-exception? _exn11826_)
                (macro-permission-denied-exception-procedure _exn11826_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12869
                              (let ()
                                (declare (not safe))
                                (cons _exn11826_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp12869)))))))
    (define range-exception?
      (lambda (_exn11822_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11822_))
            (let ((_e11824_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11822_ 'exception))))
              (macro-range-exception? _e11824_))
            (macro-range-exception? _exn11822_))))
    (define range-exception-arg-id
      (lambda (_exn11818_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11818_))
            (let ((_e11820_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11818_ 'exception))))
              (if (macro-range-exception? _e11820_)
                  (macro-range-exception-arg-id _e11820_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12872
                                (let ()
                                  (declare (not safe))
                                  (cons _e11820_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp12872)))))
            (if (macro-range-exception? _exn11818_)
                (macro-range-exception-arg-id _exn11818_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12871
                              (let ()
                                (declare (not safe))
                                (cons _exn11818_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp12871)))))))
    (define range-exception-arguments
      (lambda (_exn11814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11814_))
            (let ((_e11816_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11814_ 'exception))))
              (if (macro-range-exception? _e11816_)
                  (macro-range-exception-arguments _e11816_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12874
                                (let ()
                                  (declare (not safe))
                                  (cons _e11816_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp12874)))))
            (if (macro-range-exception? _exn11814_)
                (macro-range-exception-arguments _exn11814_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12873
                              (let ()
                                (declare (not safe))
                                (cons _exn11814_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp12873)))))))
    (define range-exception-procedure
      (lambda (_exn11808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11808_))
            (let ((_e11811_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11808_ 'exception))))
              (if (macro-range-exception? _e11811_)
                  (macro-range-exception-procedure _e11811_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12876
                                (let ()
                                  (declare (not safe))
                                  (cons _e11811_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp12876)))))
            (if (macro-range-exception? _exn11808_)
                (macro-range-exception-procedure _exn11808_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12875
                              (let ()
                                (declare (not safe))
                                (cons _exn11808_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp12875)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn11804_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11804_))
            (let ((_e11806_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11804_ 'exception))))
              (macro-rpc-remote-error-exception? _e11806_))
            (macro-rpc-remote-error-exception? _exn11804_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn11800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11800_))
            (let ((_e11802_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11800_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11802_)
                  (macro-rpc-remote-error-exception-arguments _e11802_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12878
                                (let ()
                                  (declare (not safe))
                                  (cons _e11802_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp12878)))))
            (if (macro-rpc-remote-error-exception? _exn11800_)
                (macro-rpc-remote-error-exception-arguments _exn11800_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12877
                              (let ()
                                (declare (not safe))
                                (cons _exn11800_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp12877)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn11796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11796_))
            (let ((_e11798_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11796_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11798_)
                  (macro-rpc-remote-error-exception-message _e11798_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12880
                                (let ()
                                  (declare (not safe))
                                  (cons _e11798_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp12880)))))
            (if (macro-rpc-remote-error-exception? _exn11796_)
                (macro-rpc-remote-error-exception-message _exn11796_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12879
                              (let ()
                                (declare (not safe))
                                (cons _exn11796_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp12879)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn11790_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11790_))
            (let ((_e11793_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11790_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11793_)
                  (macro-rpc-remote-error-exception-procedure _e11793_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12882
                                (let ()
                                  (declare (not safe))
                                  (cons _e11793_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp12882)))))
            (if (macro-rpc-remote-error-exception? _exn11790_)
                (macro-rpc-remote-error-exception-procedure _exn11790_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12881
                              (let ()
                                (declare (not safe))
                                (cons _exn11790_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp12881)))))))
    (define scheduler-exception?
      (lambda (_exn11786_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11786_))
            (let ((_e11788_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11786_ 'exception))))
              (macro-scheduler-exception? _e11788_))
            (macro-scheduler-exception? _exn11786_))))
    (define scheduler-exception-reason
      (lambda (_exn11780_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11780_))
            (let ((_e11783_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11780_ 'exception))))
              (if (macro-scheduler-exception? _e11783_)
                  (macro-scheduler-exception-reason _e11783_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp12884
                                (let ()
                                  (declare (not safe))
                                  (cons _e11783_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp12884)))))
            (if (macro-scheduler-exception? _exn11780_)
                (macro-scheduler-exception-reason _exn11780_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp12883
                              (let ()
                                (declare (not safe))
                                (cons _exn11780_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp12883)))))))
    (define sfun-conversion-exception?
      (lambda (_exn11776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11776_))
            (let ((_e11778_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11776_ 'exception))))
              (macro-sfun-conversion-exception? _e11778_))
            (macro-sfun-conversion-exception? _exn11776_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn11772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11772_))
            (let ((_e11774_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11772_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11774_)
                  (macro-sfun-conversion-exception-arguments _e11774_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12886
                                (let ()
                                  (declare (not safe))
                                  (cons _e11774_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp12886)))))
            (if (macro-sfun-conversion-exception? _exn11772_)
                (macro-sfun-conversion-exception-arguments _exn11772_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12885
                              (let ()
                                (declare (not safe))
                                (cons _exn11772_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp12885)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn11768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11768_))
            (let ((_e11770_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11768_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11770_)
                  (macro-sfun-conversion-exception-code _e11770_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12888
                                (let ()
                                  (declare (not safe))
                                  (cons _e11770_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp12888)))))
            (if (macro-sfun-conversion-exception? _exn11768_)
                (macro-sfun-conversion-exception-code _exn11768_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12887
                              (let ()
                                (declare (not safe))
                                (cons _exn11768_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp12887)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn11764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11764_))
            (let ((_e11766_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11764_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11766_)
                  (macro-sfun-conversion-exception-message _e11766_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12890
                                (let ()
                                  (declare (not safe))
                                  (cons _e11766_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp12890)))))
            (if (macro-sfun-conversion-exception? _exn11764_)
                (macro-sfun-conversion-exception-message _exn11764_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12889
                              (let ()
                                (declare (not safe))
                                (cons _exn11764_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp12889)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn11758_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11758_))
            (let ((_e11761_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11758_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11761_)
                  (macro-sfun-conversion-exception-procedure _e11761_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12892
                                (let ()
                                  (declare (not safe))
                                  (cons _e11761_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp12892)))))
            (if (macro-sfun-conversion-exception? _exn11758_)
                (macro-sfun-conversion-exception-procedure _exn11758_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12891
                              (let ()
                                (declare (not safe))
                                (cons _exn11758_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp12891)))))))
    (define stack-overflow-exception?
      (lambda (_exn11752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11752_))
            (let ((_e11755_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11752_ 'exception))))
              (macro-stack-overflow-exception? _e11755_))
            (macro-stack-overflow-exception? _exn11752_))))
    (define started-thread-exception?
      (lambda (_exn11748_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11748_))
            (let ((_e11750_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11748_ 'exception))))
              (macro-started-thread-exception? _e11750_))
            (macro-started-thread-exception? _exn11748_))))
    (define started-thread-exception-arguments
      (lambda (_exn11744_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11744_))
            (let ((_e11746_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11744_ 'exception))))
              (if (macro-started-thread-exception? _e11746_)
                  (macro-started-thread-exception-arguments _e11746_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12894
                                (let ()
                                  (declare (not safe))
                                  (cons _e11746_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp12894)))))
            (if (macro-started-thread-exception? _exn11744_)
                (macro-started-thread-exception-arguments _exn11744_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12893
                              (let ()
                                (declare (not safe))
                                (cons _exn11744_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp12893)))))))
    (define started-thread-exception-procedure
      (lambda (_exn11738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11738_))
            (let ((_e11741_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11738_ 'exception))))
              (if (macro-started-thread-exception? _e11741_)
                  (macro-started-thread-exception-procedure _e11741_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12896
                                (let ()
                                  (declare (not safe))
                                  (cons _e11741_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp12896)))))
            (if (macro-started-thread-exception? _exn11738_)
                (macro-started-thread-exception-procedure _exn11738_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12895
                              (let ()
                                (declare (not safe))
                                (cons _exn11738_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp12895)))))))
    (define terminated-thread-exception?
      (lambda (_exn11734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11734_))
            (let ((_e11736_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11734_ 'exception))))
              (macro-terminated-thread-exception? _e11736_))
            (macro-terminated-thread-exception? _exn11734_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn11730_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11730_))
            (let ((_e11732_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11730_ 'exception))))
              (if (macro-terminated-thread-exception? _e11732_)
                  (macro-terminated-thread-exception-arguments _e11732_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12898
                                (let ()
                                  (declare (not safe))
                                  (cons _e11732_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp12898)))))
            (if (macro-terminated-thread-exception? _exn11730_)
                (macro-terminated-thread-exception-arguments _exn11730_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12897
                              (let ()
                                (declare (not safe))
                                (cons _exn11730_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp12897)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn11724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11724_))
            (let ((_e11727_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11724_ 'exception))))
              (if (macro-terminated-thread-exception? _e11727_)
                  (macro-terminated-thread-exception-procedure _e11727_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12900
                                (let ()
                                  (declare (not safe))
                                  (cons _e11727_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp12900)))))
            (if (macro-terminated-thread-exception? _exn11724_)
                (macro-terminated-thread-exception-procedure _exn11724_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12899
                              (let ()
                                (declare (not safe))
                                (cons _exn11724_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp12899)))))))
    (define type-exception?
      (lambda (_exn11720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11720_))
            (let ((_e11722_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11720_ 'exception))))
              (macro-type-exception? _e11722_))
            (macro-type-exception? _exn11720_))))
    (define type-exception-arg-id
      (lambda (_exn11716_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11716_))
            (let ((_e11718_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11716_ 'exception))))
              (if (macro-type-exception? _e11718_)
                  (macro-type-exception-arg-id _e11718_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12902
                                (let ()
                                  (declare (not safe))
                                  (cons _e11718_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp12902)))))
            (if (macro-type-exception? _exn11716_)
                (macro-type-exception-arg-id _exn11716_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12901
                              (let ()
                                (declare (not safe))
                                (cons _exn11716_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp12901)))))))
    (define type-exception-arguments
      (lambda (_exn11712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11712_))
            (let ((_e11714_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11712_ 'exception))))
              (if (macro-type-exception? _e11714_)
                  (macro-type-exception-arguments _e11714_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12904
                                (let ()
                                  (declare (not safe))
                                  (cons _e11714_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp12904)))))
            (if (macro-type-exception? _exn11712_)
                (macro-type-exception-arguments _exn11712_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12903
                              (let ()
                                (declare (not safe))
                                (cons _exn11712_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp12903)))))))
    (define type-exception-procedure
      (lambda (_exn11708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11708_))
            (let ((_e11710_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11708_ 'exception))))
              (if (macro-type-exception? _e11710_)
                  (macro-type-exception-procedure _e11710_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12906
                                (let ()
                                  (declare (not safe))
                                  (cons _e11710_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp12906)))))
            (if (macro-type-exception? _exn11708_)
                (macro-type-exception-procedure _exn11708_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12905
                              (let ()
                                (declare (not safe))
                                (cons _exn11708_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp12905)))))))
    (define type-exception-type-id
      (lambda (_exn11702_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11702_))
            (let ((_e11705_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11702_ 'exception))))
              (if (macro-type-exception? _e11705_)
                  (macro-type-exception-type-id _e11705_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12908
                                (let ()
                                  (declare (not safe))
                                  (cons _e11705_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp12908)))))
            (if (macro-type-exception? _exn11702_)
                (macro-type-exception-type-id _exn11702_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12907
                              (let ()
                                (declare (not safe))
                                (cons _exn11702_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp12907)))))))
    (define unbound-global-exception?
      (lambda (_exn11698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11698_))
            (let ((_e11700_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11698_ 'exception))))
              (macro-unbound-global-exception? _e11700_))
            (macro-unbound-global-exception? _exn11698_))))
    (define unbound-global-exception-code
      (lambda (_exn11694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11694_))
            (let ((_e11696_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11694_ 'exception))))
              (if (macro-unbound-global-exception? _e11696_)
                  (macro-unbound-global-exception-code _e11696_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12910
                                (let ()
                                  (declare (not safe))
                                  (cons _e11696_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp12910)))))
            (if (macro-unbound-global-exception? _exn11694_)
                (macro-unbound-global-exception-code _exn11694_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12909
                              (let ()
                                (declare (not safe))
                                (cons _exn11694_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp12909)))))))
    (define unbound-global-exception-rte
      (lambda (_exn11690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11690_))
            (let ((_e11692_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11690_ 'exception))))
              (if (macro-unbound-global-exception? _e11692_)
                  (macro-unbound-global-exception-rte _e11692_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12912
                                (let ()
                                  (declare (not safe))
                                  (cons _e11692_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp12912)))))
            (if (macro-unbound-global-exception? _exn11690_)
                (macro-unbound-global-exception-rte _exn11690_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12911
                              (let ()
                                (declare (not safe))
                                (cons _exn11690_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp12911)))))))
    (define unbound-global-exception-variable
      (lambda (_exn11684_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11684_))
            (let ((_e11687_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11684_ 'exception))))
              (if (macro-unbound-global-exception? _e11687_)
                  (macro-unbound-global-exception-variable _e11687_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12914
                                (let ()
                                  (declare (not safe))
                                  (cons _e11687_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp12914)))))
            (if (macro-unbound-global-exception? _exn11684_)
                (macro-unbound-global-exception-variable _exn11684_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12913
                              (let ()
                                (declare (not safe))
                                (cons _exn11684_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp12913)))))))
    (define unbound-key-exception?
      (lambda (_exn11680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11680_))
            (let ((_e11682_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11680_ 'exception))))
              (macro-unbound-key-exception? _e11682_))
            (macro-unbound-key-exception? _exn11680_))))
    (define unbound-key-exception-arguments
      (lambda (_exn11676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11676_))
            (let ((_e11678_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11676_ 'exception))))
              (if (macro-unbound-key-exception? _e11678_)
                  (macro-unbound-key-exception-arguments _e11678_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12916
                                (let ()
                                  (declare (not safe))
                                  (cons _e11678_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp12916)))))
            (if (macro-unbound-key-exception? _exn11676_)
                (macro-unbound-key-exception-arguments _exn11676_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12915
                              (let ()
                                (declare (not safe))
                                (cons _exn11676_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp12915)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn11670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11670_))
            (let ((_e11673_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11670_ 'exception))))
              (if (macro-unbound-key-exception? _e11673_)
                  (macro-unbound-key-exception-procedure _e11673_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12918
                                (let ()
                                  (declare (not safe))
                                  (cons _e11673_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp12918)))))
            (if (macro-unbound-key-exception? _exn11670_)
                (macro-unbound-key-exception-procedure _exn11670_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12917
                              (let ()
                                (declare (not safe))
                                (cons _exn11670_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp12917)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn11666_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11666_))
            (let ((_e11668_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11666_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e11668_))
            (macro-unbound-os-environment-variable-exception? _exn11666_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn11662_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11662_))
            (let ((_e11664_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11662_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11664_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e11664_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12920
                                (let ()
                                  (declare (not safe))
                                  (cons _e11664_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp12920)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11662_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn11662_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12919
                              (let ()
                                (declare (not safe))
                                (cons _exn11662_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp12919)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn11656_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11656_))
            (let ((_e11659_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11656_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11659_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e11659_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12922
                                (let ()
                                  (declare (not safe))
                                  (cons _e11659_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp12922)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11656_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn11656_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12921
                              (let ()
                                (declare (not safe))
                                (cons _exn11656_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp12921)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn11652_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11652_))
            (let ((_e11654_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11652_ 'exception))))
              (macro-unbound-serial-number-exception? _e11654_))
            (macro-unbound-serial-number-exception? _exn11652_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn11648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11648_))
            (let ((_e11650_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11648_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11650_)
                  (macro-unbound-serial-number-exception-arguments _e11650_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12924
                                (let ()
                                  (declare (not safe))
                                  (cons _e11650_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp12924)))))
            (if (macro-unbound-serial-number-exception? _exn11648_)
                (macro-unbound-serial-number-exception-arguments _exn11648_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12923
                              (let ()
                                (declare (not safe))
                                (cons _exn11648_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp12923)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn11642_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11642_))
            (let ((_e11645_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11642_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11645_)
                  (macro-unbound-serial-number-exception-procedure _e11645_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12926
                                (let ()
                                  (declare (not safe))
                                  (cons _e11645_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp12926)))))
            (if (macro-unbound-serial-number-exception? _exn11642_)
                (macro-unbound-serial-number-exception-procedure _exn11642_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12925
                              (let ()
                                (declare (not safe))
                                (cons _exn11642_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp12925)))))))
    (define uncaught-exception?
      (lambda (_exn11638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11638_))
            (let ((_e11640_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11638_ 'exception))))
              (macro-uncaught-exception? _e11640_))
            (macro-uncaught-exception? _exn11638_))))
    (define uncaught-exception-arguments
      (lambda (_exn11634_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11634_))
            (let ((_e11636_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11634_ 'exception))))
              (if (macro-uncaught-exception? _e11636_)
                  (macro-uncaught-exception-arguments _e11636_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12928
                                (let ()
                                  (declare (not safe))
                                  (cons _e11636_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp12928)))))
            (if (macro-uncaught-exception? _exn11634_)
                (macro-uncaught-exception-arguments _exn11634_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12927
                              (let ()
                                (declare (not safe))
                                (cons _exn11634_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp12927)))))))
    (define uncaught-exception-procedure
      (lambda (_exn11630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11630_))
            (let ((_e11632_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11630_ 'exception))))
              (if (macro-uncaught-exception? _e11632_)
                  (macro-uncaught-exception-procedure _e11632_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12930
                                (let ()
                                  (declare (not safe))
                                  (cons _e11632_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp12930)))))
            (if (macro-uncaught-exception? _exn11630_)
                (macro-uncaught-exception-procedure _exn11630_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12929
                              (let ()
                                (declare (not safe))
                                (cons _exn11630_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp12929)))))))
    (define uncaught-exception-reason
      (lambda (_exn11624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11624_))
            (let ((_e11627_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11624_ 'exception))))
              (if (macro-uncaught-exception? _e11627_)
                  (macro-uncaught-exception-reason _e11627_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12932
                                (let ()
                                  (declare (not safe))
                                  (cons _e11627_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp12932)))))
            (if (macro-uncaught-exception? _exn11624_)
                (macro-uncaught-exception-reason _exn11624_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12931
                              (let ()
                                (declare (not safe))
                                (cons _exn11624_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp12931)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn11620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11620_))
            (let ((_e11622_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11620_ 'exception))))
              (macro-uninitialized-thread-exception? _e11622_))
            (macro-uninitialized-thread-exception? _exn11620_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn11616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11616_))
            (let ((_e11618_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11616_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11618_)
                  (macro-uninitialized-thread-exception-arguments _e11618_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12934
                                (let ()
                                  (declare (not safe))
                                  (cons _e11618_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp12934)))))
            (if (macro-uninitialized-thread-exception? _exn11616_)
                (macro-uninitialized-thread-exception-arguments _exn11616_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12933
                              (let ()
                                (declare (not safe))
                                (cons _exn11616_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp12933)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn11610_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11610_))
            (let ((_e11613_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11610_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11613_)
                  (macro-uninitialized-thread-exception-procedure _e11613_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12936
                                (let ()
                                  (declare (not safe))
                                  (cons _e11613_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp12936)))))
            (if (macro-uninitialized-thread-exception? _exn11610_)
                (macro-uninitialized-thread-exception-procedure _exn11610_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12935
                              (let ()
                                (declare (not safe))
                                (cons _exn11610_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp12935)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn11606_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11606_))
            (let ((_e11608_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11606_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e11608_))
            (macro-unknown-keyword-argument-exception? _exn11606_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn11602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11602_))
            (let ((_e11604_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11602_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11604_)
                  (macro-unknown-keyword-argument-exception-arguments _e11604_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12938
                                (let ()
                                  (declare (not safe))
                                  (cons _e11604_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp12938)))))
            (if (macro-unknown-keyword-argument-exception? _exn11602_)
                (macro-unknown-keyword-argument-exception-arguments _exn11602_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12937
                              (let ()
                                (declare (not safe))
                                (cons _exn11602_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp12937)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn11596_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11596_))
            (let ((_e11599_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11596_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11599_)
                  (macro-unknown-keyword-argument-exception-procedure _e11599_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12940
                                (let ()
                                  (declare (not safe))
                                  (cons _e11599_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp12940)))))
            (if (macro-unknown-keyword-argument-exception? _exn11596_)
                (macro-unknown-keyword-argument-exception-procedure _exn11596_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12939
                              (let ()
                                (declare (not safe))
                                (cons _exn11596_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp12939)))))))
    (define unterminated-process-exception?
      (lambda (_exn11592_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11592_))
            (let ((_e11594_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11592_ 'exception))))
              (macro-unterminated-process-exception? _e11594_))
            (macro-unterminated-process-exception? _exn11592_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn11588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11588_))
            (let ((_e11590_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11588_ 'exception))))
              (if (macro-unterminated-process-exception? _e11590_)
                  (macro-unterminated-process-exception-arguments _e11590_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12942
                                (let ()
                                  (declare (not safe))
                                  (cons _e11590_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp12942)))))
            (if (macro-unterminated-process-exception? _exn11588_)
                (macro-unterminated-process-exception-arguments _exn11588_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12941
                              (let ()
                                (declare (not safe))
                                (cons _exn11588_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp12941)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn11582_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11582_))
            (let ((_e11585_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11582_ 'exception))))
              (if (macro-unterminated-process-exception? _e11585_)
                  (macro-unterminated-process-exception-procedure _e11585_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12944
                                (let ()
                                  (declare (not safe))
                                  (cons _e11585_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp12944)))))
            (if (macro-unterminated-process-exception? _exn11582_)
                (macro-unterminated-process-exception-procedure _exn11582_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12943
                              (let ()
                                (declare (not safe))
                                (cons _exn11582_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp12943)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn11578_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11578_))
            (let ((_e11580_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11578_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e11580_))
            (macro-wrong-number-of-arguments-exception? _exn11578_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn11574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11574_))
            (let ((_e11576_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11574_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11576_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e11576_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12946
                                (let ()
                                  (declare (not safe))
                                  (cons _e11576_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp12946)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11574_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn11574_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12945
                              (let ()
                                (declare (not safe))
                                (cons _exn11574_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp12945)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn11568_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11568_))
            (let ((_e11571_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11568_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11571_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e11571_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12948
                                (let ()
                                  (declare (not safe))
                                  (cons _e11571_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp12948)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11568_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn11568_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12947
                              (let ()
                                (declare (not safe))
                                (cons _exn11568_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp12947)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn11564_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11564_))
            (let ((_e11566_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11564_ 'exception))))
              (macro-wrong-number-of-values-exception? _e11566_))
            (macro-wrong-number-of-values-exception? _exn11564_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn11560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11560_))
            (let ((_e11562_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11560_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11562_)
                  (macro-wrong-number-of-values-exception-code _e11562_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12950
                                (let ()
                                  (declare (not safe))
                                  (cons _e11562_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp12950)))))
            (if (macro-wrong-number-of-values-exception? _exn11560_)
                (macro-wrong-number-of-values-exception-code _exn11560_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12949
                              (let ()
                                (declare (not safe))
                                (cons _exn11560_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp12949)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn11556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11556_))
            (let ((_e11558_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11556_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11558_)
                  (macro-wrong-number-of-values-exception-rte _e11558_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12952
                                (let ()
                                  (declare (not safe))
                                  (cons _e11558_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp12952)))))
            (if (macro-wrong-number-of-values-exception? _exn11556_)
                (macro-wrong-number-of-values-exception-rte _exn11556_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12951
                              (let ()
                                (declare (not safe))
                                (cons _exn11556_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp12951)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn11550_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11550_))
            (let ((_e11553_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11550_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11553_)
                  (macro-wrong-number-of-values-exception-vals _e11553_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12954
                                (let ()
                                  (declare (not safe))
                                  (cons _e11553_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp12954)))))
            (if (macro-wrong-number-of-values-exception? _exn11550_)
                (macro-wrong-number-of-values-exception-vals _exn11550_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12953
                              (let ()
                                (declare (not safe))
                                (cons _exn11550_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp12953)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn11544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11544_))
            (let ((_e11547_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11544_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e11547_))
            (macro-wrong-processor-c-return-exception? _exn11544_))))))
