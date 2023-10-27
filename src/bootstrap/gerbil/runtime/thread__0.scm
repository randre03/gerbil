(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1698333192)
  (begin
    (define spawn
      (lambda (_f13359_ . _args13360_)
        (if (let () (declare (not safe)) (procedure? _f13359_))
            '#!void
            (raise (let ((__tmp13361
                          (let () (declare (not safe)) (cons _f13359_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      __tmp13361))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13359_ _args13360_ '#!void '#f))))
    (define spawn/name
      (lambda (_name13355_ _f13356_ . _args13357_)
        (if (let () (declare (not safe)) (procedure? _f13356_))
            '#!void
            (raise (let ((__tmp13362
                          (let () (declare (not safe)) (cons _f13356_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      __tmp13362))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13356_ _args13357_ _name13355_ '#f))))
    (define spawn/group
      (lambda (_name13349_ _f13350_ . _args13351_)
        (if (let () (declare (not safe)) (procedure? _f13350_))
            '#!void
            (raise (let ((__tmp13363
                          (let () (declare (not safe)) (cons _f13350_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      __tmp13363))))
        (let ((_tgroup13353_ (make-thread-group _name13349_)))
          (declare (not safe))
          (spawn-actor _f13350_ _args13351_ _name13349_ _tgroup13353_))))
    (define spawn-actor
      (lambda (_f13322_ _args13323_ _name13324_ _tgroup13325_)
        (letrec ((_thread-main13327_
                  (lambda (_thunk13341_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn13344_)
                         (let ((__tmp13364
                                (lambda (_cont13346_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp13365
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont13346_
                                                _exn13344_))))
                                        (declare (not safe))
                                        (with-catch void __tmp13365))
                                      '#!void)
                                  (let ((__tmp13366
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont13346_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp13366
                                     ##primordial-exception-handler
                                     _exn13344_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp13364)))
                       _thunk13341_)))))
          (let* ((_thunk13330_
                  (if (let () (declare (not safe)) (null? _args13323_))
                      _f13322_
                      (lambda () (apply _f13322_ _args13323_))))
                 (_thunk13333_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk13330_))))
                 (_tgroup13338_
                  (let ((_$e13335_ _tgroup13325_))
                    (if _$e13335_
                        _$e13335_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main13327_ _thunk13333_))
              _name13324_
              _tgroup13338_))))))
    (define spawn-thread__%
      (lambda (_thunk13300_ _name13301_ _tgroup13302_)
        (thread-start! (make-thread _thunk13300_ _name13301_ _tgroup13302_))))
    (define spawn-thread__0
      (lambda (_thunk13307_)
        (let* ((_name13309_ absent-obj) (_tgroup13311_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13307_ _name13309_ _tgroup13311_))))
    (define spawn-thread__1
      (lambda (_thunk13313_ _name13314_)
        (let ((_tgroup13316_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13313_ _name13314_ _tgroup13316_))))
    (define spawn-thread
      (lambda _g13368_
        (let ((_g13367_ (let () (declare (not safe)) (##length _g13368_))))
          (cond ((let () (declare (not safe)) (##fx= _g13367_ 1))
                 (apply (lambda (_thunk13307_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk13307_)))
                        _g13368_))
                ((let () (declare (not safe)) (##fx= _g13367_ 2))
                 (apply (lambda (_thunk13313_ _name13314_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk13313_ _name13314_)))
                        _g13368_))
                ((let () (declare (not safe)) (##fx= _g13367_ 3))
                 (apply (lambda (_thunk13318_ _name13319_ _tgroup13320_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk13318_
                             _name13319_
                             _tgroup13320_)))
                        _g13368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g13368_))))))
    (define thread-local-ref__%
      (lambda (_key13284_ _default13285_)
        (let ((_tab13287_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab13287_ _key13284_ _default13285_))))
    (define thread-local-ref__0
      (lambda (_key13292_)
        (let ((_default13294_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key13292_ _default13294_))))
    (define thread-local-ref
      (lambda _g13370_
        (let ((_g13369_ (let () (declare (not safe)) (##length _g13370_))))
          (cond ((let () (declare (not safe)) (##fx= _g13369_ 1))
                 (apply (lambda (_key13292_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key13292_)))
                        _g13370_))
                ((let () (declare (not safe)) (##fx= _g13369_ 2))
                 (apply (lambda (_key13296_ _default13297_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key13296_ _default13297_)))
                        _g13370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g13370_))))))
    (define thread-local-get
      (lambda (_key13281_)
        (let () (declare (not safe)) (thread-local-ref _key13281_ '#f))))
    (define thread-local-set!
      (lambda (_key13276_ _value13277_)
        (let ((_tab13279_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13279_ _key13276_ _value13277_))))
    (define thread-local-clear!
      (lambda (_key13272_)
        (let ((_tab13274_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13274_ _key13272_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr13258_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr13258_))
              (let ((_$e13260_ (actor-thread-locals _thr13258_)))
                (if _$e13260_
                    (values _$e13260_)
                    (let ((_tab13263_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr13258_ _tab13263_)
                      _tab13263_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr13258_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e13265_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr13258_ '#f))))
                      (if _$e13265_
                          ((lambda (_tab13268_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab13268_)
                           _$e13265_)
                          (let ((_tab13270_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr13258_
                               _tab13270_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab13270_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc13255_)
        (if (let () (declare (not safe)) (procedure? _proc13255_))
            '#!void
            (raise (let ((__tmp13371
                          (let ()
                            (declare (not safe))
                            (cons _proc13255_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp13371))))
        (set! __unhandled-actor-exception-hook _proc13255_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx13243_ _proc13244_)
        (let ((_handler13246_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e13248_)
             (let ((__tmp13372
                    (lambda ()
                      (mutex-unlock! _mx13243_)
                      (_handler13246_ _e13248_))))
               (declare (not safe))
               (with-catch void __tmp13372))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e13248_)))
           (lambda ()
             (mutex-lock! _mx13243_)
             (let ((_result13252_ (_proc13244_)))
               (mutex-unlock! _mx13243_)
               _result13252_))))))
    (define with-dynamic-lock
      (lambda (_mx13238_ _proc13239_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx13238_))
         _proc13239_
         (lambda () (mutex-unlock! _mx13238_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk13219_ _error-port13220_)
        (with-exception-handler
         (let ((_E13222_ (current-exception-handler)))
           (lambda (_exn13224_)
             (continuation-capture
              (lambda (_cont13226_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont13226_
                       _exn13224_
                       _error-port13220_))
                    '#!void)
                (_E13222_ _exn13224_)))))
         _thunk13219_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk13231_)
        (let ((_error-port13233_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk13231_ _error-port13233_))))
    (define with-exception-stack-trace
      (lambda _g13374_
        (let ((_g13373_ (let () (declare (not safe)) (##length _g13374_))))
          (cond ((let () (declare (not safe)) (##fx= _g13373_ 1))
                 (apply (lambda (_thunk13231_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk13231_)))
                        _g13374_))
                ((let () (declare (not safe)) (##fx= _g13373_ 2))
                 (apply (lambda (_thunk13235_ _error-port13236_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk13235_
                             _error-port13236_)))
                        _g13374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g13374_))))))
    (define dump-stack-trace!__%
      (lambda (_cont13200_ _exn13201_ _error-port13202_)
        (let ((_out13204_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out13204_))
          (display '"*** Unhandled exception in " _out13204_)
          (display (current-thread) _out13204_)
          (newline _out13204_)
          (display-exception _exn13201_ _out13204_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn13201_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out13204_)
                (newline _out13204_)
                (display-continuation-backtrace _cont13200_ _out13204_)))
          (let ((__tmp13375 (get-output-string _out13204_)))
            (declare (not safe))
            (##write-string __tmp13375 _error-port13202_)))))
    (define dump-stack-trace!__0
      (lambda (_cont13209_ _exn13210_)
        (let ((_error-port13212_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont13209_ _exn13210_ _error-port13212_))))
    (define dump-stack-trace!
      (lambda _g13377_
        (let ((_g13376_ (let () (declare (not safe)) (##length _g13377_))))
          (cond ((let () (declare (not safe)) (##fx= _g13376_ 2))
                 (apply (lambda (_cont13209_ _exn13210_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont13209_ _exn13210_)))
                        _g13377_))
                ((let () (declare (not safe)) (##fx= _g13376_ 3))
                 (apply (lambda (_cont13214_ _exn13215_ _error-port13216_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont13214_
                             _exn13215_
                             _error-port13216_)))
                        _g13377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g13377_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
