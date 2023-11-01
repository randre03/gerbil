(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1698867094)
  (begin
    (define spawn
      (lambda (_f11321_ . _args11322_)
        (if (let () (declare (not safe)) (procedure? _f11321_))
            '#!void
            (raise (let ((__tmp11323
                          (let () (declare (not safe)) (cons _f11321_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      __tmp11323))))
        (let ()
          (declare (not safe))
          (spawn-actor _f11321_ _args11322_ '#!void '#f))))
    (define spawn/name
      (lambda (_name11317_ _f11318_ . _args11319_)
        (if (let () (declare (not safe)) (procedure? _f11318_))
            '#!void
            (raise (let ((__tmp11324
                          (let () (declare (not safe)) (cons _f11318_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      __tmp11324))))
        (let ()
          (declare (not safe))
          (spawn-actor _f11318_ _args11319_ _name11317_ '#f))))
    (define spawn/group
      (lambda (_name11311_ _f11312_ . _args11313_)
        (if (let () (declare (not safe)) (procedure? _f11312_))
            '#!void
            (raise (let ((__tmp11325
                          (let () (declare (not safe)) (cons _f11312_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      __tmp11325))))
        (let ((_tgroup11315_ (make-thread-group _name11311_)))
          (declare (not safe))
          (spawn-actor _f11312_ _args11313_ _name11311_ _tgroup11315_))))
    (define spawn-actor
      (lambda (_f11284_ _args11285_ _name11286_ _tgroup11287_)
        (letrec ((_thread-main11289_
                  (lambda (_thunk11303_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn11306_)
                         (let ((__tmp11326
                                (lambda (_cont11308_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp11327
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont11308_
                                                _exn11306_))))
                                        (declare (not safe))
                                        (with-catch void __tmp11327))
                                      '#!void)
                                  (let ((__tmp11328
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont11308_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp11328
                                     ##primordial-exception-handler
                                     _exn11306_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp11326)))
                       _thunk11303_)))))
          (let* ((_thunk11292_
                  (if (let () (declare (not safe)) (null? _args11285_))
                      _f11284_
                      (lambda () (apply _f11284_ _args11285_))))
                 (_thunk11295_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk11292_))))
                 (_tgroup11300_
                  (let ((_$e11297_ _tgroup11287_))
                    (if _$e11297_
                        _$e11297_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main11289_ _thunk11295_))
              _name11286_
              _tgroup11300_))))))
    (define spawn-thread__%
      (lambda (_thunk11262_ _name11263_ _tgroup11264_)
        (thread-start! (make-thread _thunk11262_ _name11263_ _tgroup11264_))))
    (define spawn-thread__0
      (lambda (_thunk11269_)
        (let* ((_name11271_ absent-obj) (_tgroup11273_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk11269_ _name11271_ _tgroup11273_))))
    (define spawn-thread__1
      (lambda (_thunk11275_ _name11276_)
        (let ((_tgroup11278_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk11275_ _name11276_ _tgroup11278_))))
    (define spawn-thread
      (lambda _g11330_
        (let ((_g11329_ (let () (declare (not safe)) (##length _g11330_))))
          (cond ((let () (declare (not safe)) (##fx= _g11329_ 1))
                 (apply (lambda (_thunk11269_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk11269_)))
                        _g11330_))
                ((let () (declare (not safe)) (##fx= _g11329_ 2))
                 (apply (lambda (_thunk11275_ _name11276_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk11275_ _name11276_)))
                        _g11330_))
                ((let () (declare (not safe)) (##fx= _g11329_ 3))
                 (apply (lambda (_thunk11280_ _name11281_ _tgroup11282_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk11280_
                             _name11281_
                             _tgroup11282_)))
                        _g11330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g11330_))))))
    (define thread-local-ref__%
      (lambda (_key11246_ _default11247_)
        (let ((_tab11249_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab11249_ _key11246_ _default11247_))))
    (define thread-local-ref__0
      (lambda (_key11254_)
        (let ((_default11256_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key11254_ _default11256_))))
    (define thread-local-ref
      (lambda _g11332_
        (let ((_g11331_ (let () (declare (not safe)) (##length _g11332_))))
          (cond ((let () (declare (not safe)) (##fx= _g11331_ 1))
                 (apply (lambda (_key11254_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key11254_)))
                        _g11332_))
                ((let () (declare (not safe)) (##fx= _g11331_ 2))
                 (apply (lambda (_key11258_ _default11259_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key11258_ _default11259_)))
                        _g11332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g11332_))))))
    (define thread-local-get
      (lambda (_key11243_)
        (let () (declare (not safe)) (thread-local-ref _key11243_ '#f))))
    (define thread-local-set!
      (lambda (_key11238_ _value11239_)
        (let ((_tab11241_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab11241_ _key11238_ _value11239_))))
    (define thread-local-clear!
      (lambda (_key11234_)
        (let ((_tab11236_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab11236_ _key11234_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr11220_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr11220_))
              (let ((_$e11222_ (actor-thread-locals _thr11220_)))
                (if _$e11222_
                    (values _$e11222_)
                    (let ((_tab11225_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr11220_ _tab11225_)
                      _tab11225_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr11220_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e11227_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr11220_ '#f))))
                      (if _$e11227_
                          ((lambda (_tab11230_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab11230_)
                           _$e11227_)
                          (let ((_tab11232_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr11220_
                               _tab11232_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab11232_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc11217_)
        (if (let () (declare (not safe)) (procedure? _proc11217_))
            '#!void
            (raise (let ((__tmp11333
                          (let ()
                            (declare (not safe))
                            (cons _proc11217_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp11333))))
        (set! __unhandled-actor-exception-hook _proc11217_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx11205_ _proc11206_)
        (let ((_handler11208_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e11210_)
             (let ((__tmp11334
                    (lambda ()
                      (mutex-unlock! _mx11205_)
                      (_handler11208_ _e11210_))))
               (declare (not safe))
               (with-catch void __tmp11334))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e11210_)))
           (lambda ()
             (mutex-lock! _mx11205_)
             (let ((_result11214_ (_proc11206_)))
               (mutex-unlock! _mx11205_)
               _result11214_))))))
    (define with-dynamic-lock
      (lambda (_mx11200_ _proc11201_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx11200_))
         _proc11201_
         (lambda () (mutex-unlock! _mx11200_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk11181_ _error-port11182_)
        (with-exception-handler
         (let ((_E11184_ (current-exception-handler)))
           (lambda (_exn11186_)
             (continuation-capture
              (lambda (_cont11188_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont11188_
                       _exn11186_
                       _error-port11182_))
                    '#!void)
                (_E11184_ _exn11186_)))))
         _thunk11181_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk11193_)
        (let ((_error-port11195_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk11193_ _error-port11195_))))
    (define with-exception-stack-trace
      (lambda _g11336_
        (let ((_g11335_ (let () (declare (not safe)) (##length _g11336_))))
          (cond ((let () (declare (not safe)) (##fx= _g11335_ 1))
                 (apply (lambda (_thunk11193_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk11193_)))
                        _g11336_))
                ((let () (declare (not safe)) (##fx= _g11335_ 2))
                 (apply (lambda (_thunk11197_ _error-port11198_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk11197_
                             _error-port11198_)))
                        _g11336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g11336_))))))
    (define dump-stack-trace!__%
      (lambda (_cont11162_ _exn11163_ _error-port11164_)
        (let ((_out11166_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out11166_))
          (display '"*** Unhandled exception in " _out11166_)
          (display (current-thread) _out11166_)
          (newline _out11166_)
          (display-exception _exn11163_ _out11166_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn11163_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out11166_)
                (newline _out11166_)
                (display-continuation-backtrace _cont11162_ _out11166_)))
          (let ((__tmp11337 (get-output-string _out11166_)))
            (declare (not safe))
            (##write-string __tmp11337 _error-port11164_)))))
    (define dump-stack-trace!__0
      (lambda (_cont11171_ _exn11172_)
        (let ((_error-port11174_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont11171_ _exn11172_ _error-port11174_))))
    (define dump-stack-trace!
      (lambda _g11339_
        (let ((_g11338_ (let () (declare (not safe)) (##length _g11339_))))
          (cond ((let () (declare (not safe)) (##fx= _g11338_ 2))
                 (apply (lambda (_cont11171_ _exn11172_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont11171_ _exn11172_)))
                        _g11339_))
                ((let () (declare (not safe)) (##fx= _g11338_ 3))
                 (apply (lambda (_cont11176_ _exn11177_ _error-port11178_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont11176_
                             _exn11177_
                             _error-port11178_)))
                        _g11339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g11339_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
