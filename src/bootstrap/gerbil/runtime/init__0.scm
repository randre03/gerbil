(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1698867094)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry
         (let () (declare (not safe)) (make-table)))
        (gx#current-expander-module-import gx#core-import-module)
        (gx#current-expander-module-eval gx#core-eval-module)
        (gx#current-expander-compile __compile-top)
        (gx#current-expander-eval ##eval)
        (gx#core-bind-root-syntax! ':<root> (gx#make-prelude-context '#f) '#t)
        (__current-context __*top*)
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)))
    (define __load-gxi
      (lambda ()
        (letrec* ((_+readtable+16565_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core16567_ (gx#import-module ':gerbil/core))
                 (_pre16569_ (gx#make-prelude-context _core16567_)))
            (gx#current-expander-module-prelude _pre16569_)
            (gx#core-bind-root-syntax! ':<core> _pre16569_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port16572_)
             (input-port-readtable-set! _port16572_ _+readtable+16565_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port16574_)
             (output-port-readtable-set!
              _port16574_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port16574_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline16562_) '#!void))
    (define load-scheme
      (lambda (_path16557_)
        (let ((__tmp16576
               (lambda ()
                 (let ((__tmp16577 (lambda _args16560_ '#f)))
                   (declare (not safe))
                   (##load _path16557_ __tmp16577 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp16576
           __loading-scheme-source
           _path16557_))))
    (define load-path
      (lambda ()
        (values (let () (declare (not safe)) (current-module-library-path))
                (let ()
                  (declare (not safe))
                  (gx#current-expander-module-library-path)))))
    (define library-load-path (lambda () (current-module-library-path)))
    (define expander-load-path
      (lambda () (gx#current-expander-module-library-path)))
    (define add-load-path
      (lambda _paths16552_
        (apply add-library-load-path _paths16552_)
        (apply add-expander-load-path _paths16552_)))
    (define add-library-load-path
      (lambda _paths16541_
        (let* ((_current16543_ (current-module-library-path))
               (_paths16545_ (map path-expand _paths16541_))
               (_paths16549_
                (let ((__tmp16578
                       (lambda (_x16547_)
                         (let ((__tmp16579 (member _x16547_ _current16543_)))
                           (declare (not safe))
                           (not __tmp16579)))))
                  (declare (not safe))
                  (filter __tmp16578 _paths16545_))))
          (current-module-library-path (append _current16543_ _paths16549_)))))
    (define add-expander-load-path
      (lambda _paths16530_
        (let* ((_current16532_ (gx#current-expander-module-library-path))
               (_paths16534_ (map path-expand _paths16530_))
               (_paths16538_
                (let ((__tmp16580
                       (lambda (_x16536_)
                         (let ((__tmp16581 (member _x16536_ _current16532_)))
                           (declare (not safe))
                           (not __tmp16581)))))
                  (declare (not safe))
                  (filter __tmp16580 _paths16534_))))
          (gx#current-expander-module-library-path
           (append _current16532_ _paths16538_)))))
    (define cons-load-path
      (lambda _paths16528_
        (apply cons-library-load-path _paths16528_)
        (apply cons-expander-load-path _paths16528_)))
    (define cons-library-load-path
      (lambda _paths16523_
        (let ((_current16525_ (current-module-library-path))
              (_paths16526_ (map path-expand _paths16523_)))
          (current-module-library-path (append _paths16526_ _current16525_)))))
    (define cons-expander-load-path
      (lambda _paths16518_
        (let ((_current16520_ (gx#current-expander-module-library-path))
              (_paths16521_ (map path-expand _paths16518_)))
          (gx#current-expander-module-library-path
           (append _paths16521_ _current16520_)))))
    (define with-cons-load-path
      (lambda (_thunk16514_ . _paths16515_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk16514_
                        _paths16515_))
               _paths16515_)))
    (define with-cons-library-load-path
      (lambda (_thunk16507_ . _paths16508_)
        (let ((_current16510_ (current-module-library-path))
              (_paths16511_ (map path-expand _paths16508_)))
          (let ((__tmp16583 (lambda () (_thunk16507_)))
                (__tmp16582 (append _paths16511_ _current16510_)))
            (declare (not safe))
            (call-with-parameters
             __tmp16583
             current-module-library-path
             __tmp16582)))))
    (define with-cons-expander-load-path
      (lambda (_thunk16500_ . _paths16501_)
        (let ((_current16503_ (gx#current-expander-module-library-path))
              (_paths16504_ (map path-expand _paths16501_)))
          (let ((__tmp16585 (lambda () (_thunk16500_)))
                (__tmp16584 (append _paths16504_ _current16503_)))
            (declare (not safe))
            (call-with-parameters
             __tmp16585
             gx#current-expander-module-library-path
             __tmp16584)))))
    (define __expand-source
      (lambda (_src16486_)
        (letrec ((_expand16488_
                  (lambda (_src16498_)
                    (let ((__tmp16586
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src16498_)))))
                      (declare (not safe))
                      (__compile-top __tmp16586))))
                 (_no-expand16489_
                  (lambda (_src16494_)
                    (if (__loading-scheme-source)
                        _src16494_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src16494_))
                            (let ((_code16496_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src16494_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code16496_))
                                  (if (let ((__tmp16587
                                             (let ()
                                               (declare (not safe))
                                               (##car _code16496_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp16587))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code16496_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e16491_
                 (let () (declare (not safe)) (_no-expand16489_ _src16486_))))
            (if _$e16491_
                _$e16491_
                (let () (declare (not safe)) (_expand16488_ _src16486_)))))))
    (define __macro-descr
      (lambda (_src16472_ _def-syntax?16473_)
        (letrec ((_fail!16475_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src16472_))))
                 (_make-descr16476_
                  (lambda (_size16480_)
                    (let ((_expander16483_
                           (let ((__tmp16588
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src16472_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp16588
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander16483_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?16473_
                             _size16480_
                             _expander16483_
                             _src16472_))
                          (let () (declare (not safe)) (_fail!16475_)))))))
          (if _def-syntax?16473_
              (let () (declare (not safe)) (_make-descr16476_ '-1))
              (let ((_code16478_
                     (let () (declare (not safe)) (##source-code _src16472_))))
                (if (and (let () (declare (not safe)) (##pair? _code16478_))
                         (let ((__tmp16592
                                (let ((__tmp16593
                                       (let ((__tmp16594
                                              (let ()
                                                (declare (not safe))
                                                (##car _code16478_))))
                                         (declare (not safe))
                                         (##sourcify __tmp16594 _src16472_))))
                                  (declare (not safe))
                                  (##source-code __tmp16593))))
                           (declare (not safe))
                           (##memq __tmp16592 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src16472_ _src16472_ '-3))
                      (let ((__tmp16589
                             (let ((__tmp16590
                                    (let ((__tmp16591
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code16478_))))
                                      (declare (not safe))
                                      (##sourcify __tmp16591 _src16472_))))
                               (declare (not safe))
                               (##form-size __tmp16590))))
                        (declare (not safe))
                        (_make-descr16476_ __tmp16589)))
                    (let () (declare (not safe)) (_fail!16475_))))))))
    (define __source->syntax
      (lambda (_src16466_)
        (let _recur16468_ ((_e16470_ _src16466_))
          (if (let () (declare (not safe)) (##source? _e16470_))
              (let ((__tmp16602
                     (let ((__tmp16603
                            (let ()
                              (declare (not safe))
                              (##source-code _e16470_))))
                       (declare (not safe))
                       (_recur16468_ __tmp16603)))
                    (__tmp16601
                     (let () (declare (not safe)) (##source-locat _e16470_))))
                (declare (not safe))
                (##structure AST::t __tmp16602 __tmp16601))
              (if (let () (declare (not safe)) (pair? _e16470_))
                  (let ((__tmp16599
                         (let ((__tmp16600
                                (let ()
                                  (declare (not safe))
                                  (##car _e16470_))))
                           (declare (not safe))
                           (_recur16468_ __tmp16600)))
                        (__tmp16597
                         (let ((__tmp16598
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e16470_))))
                           (declare (not safe))
                           (_recur16468_ __tmp16598))))
                    (declare (not safe))
                    (cons __tmp16599 __tmp16597))
                  (if (let () (declare (not safe)) (vector? _e16470_))
                      (vector-map _recur16468_ _e16470_)
                      (if (let () (declare (not safe)) (box? _e16470_))
                          (let ((__tmp16595
                                 (let ((__tmp16596 (unbox _e16470_)))
                                   (declare (not safe))
                                   (_recur16468_ __tmp16596))))
                            (declare (not safe))
                            (box __tmp16595))
                          _e16470_)))))))
    (define __compile-top-source
      (lambda (_stx16464_)
        (let ((__tmp16604
               (let () (declare (not safe)) (__compile-top _stx16464_))))
          (declare (not safe))
          (cons '__noexpand: __tmp16604))))
    (define __compile-top
      (lambda (_stx16462_)
        (let ((__tmp16605 (gx#core-compile-top-syntax _stx16462_)))
          (declare (not safe))
          (__compile __tmp16605))))
    (define __eval-import
      (lambda (_in16443_)
        (letrec* ((_mods16445_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import116446_
                   (lambda (_in16453_ _phi16454_)
                     (if (gx#module-import? _in16453_)
                         (let ((_iphi16456_
                                (fx+ _phi16454_
                                     (gx#module-import-phi _in16453_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi16456_))
                               (let ((__tmp16607
                                      (gx#module-export-context
                                       (gx#module-import-source _in16453_))))
                                 (declare (not safe))
                                 (_eval116447_ __tmp16607))
                               '#!void))
                         (if (gx#module-context? _in16453_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi16454_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval116447_ _in16453_))
                                 '#!void)
                             (if (gx#import-set? _in16453_)
                                 (let ((_iphi16458_
                                        (fx+ _phi16454_
                                             (gx#import-set-phi _in16453_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi16458_))
                                       (let ((__tmp16606
                                              (gx#import-set-source
                                               _in16453_)))
                                         (declare (not safe))
                                         (_eval116447_ __tmp16606))
                                       (if (fxpositive? _iphi16458_)
                                           (for-each
                                            (lambda (_in16460_)
                                              (let ()
                                                (declare (not safe))
                                                (_import116446_
                                                 _in16460_
                                                 _iphi16458_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in16453_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in16453_))))))
                  (_eval116447_
                   (lambda (_ctx16451_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods16445_ _ctx16451_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods16445_ _ctx16451_ '#t))
                           (__eval-module _ctx16451_))))))
          (if (let () (declare (not safe)) (pair? _in16443_))
              (for-each
               (lambda (_in16449_)
                 (let () (declare (not safe)) (_import116446_ _in16449_ '0)))
               _in16443_)
              (let () (declare (not safe)) (_import116446_ _in16443_ '0))))))
    (define __eval-module
      (lambda (_obj16436_)
        (let* ((_key16438_
                (if (gx#module-context? _obj16436_)
                    (gx#module-context-path _obj16436_)
                    _obj16436_))
               (_$e16440_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key16438_ '#f))))
          (if _$e16440_ (values _$e16440_) (gx#core-eval-module _obj16436_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules16371_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home16373_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir16375_ (path-expand '"lib" _home16373_))
                     (_userpath16377_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath16379_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir16375_ '()))
                          (let ((__tmp16608
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir16375_ '()))))
                            (declare (not safe))
                            (cons _userpath16377_ __tmp16608))))
                     (_loadpath16388_
                      (let ((_$e16381_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e16381_
                            ((lambda (_envvar16384_)
                               (append (let ((__tmp16610
                                              (lambda (_x16386_)
                                                (let ((__tmp16611
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x16386_))))
                                                  (declare (not safe))
                                                  (not __tmp16611))))
                                             (__tmp16609
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar16384_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp16610 __tmp16609))
                                       _loadpath16379_))
                             _$e16381_)
                            _loadpath16379_))))
                (current-module-library-path _loadpath16388_))
              (let* ((_registry-entry16393_
                      (lambda (_m16391_)
                        (let ()
                          (declare (not safe))
                          (cons _m16391_ 'builtin))))
                     (_module-registry16433_
                      (let _lp16395_ ((_rest16397_ _builtin-modules16371_)
                                      (_registry16398_ '()))
                        (let* ((_rest1639916407_ _rest16397_)
                               (_else1640116415_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry16398_))))
                               (_K1640316421_
                                (lambda (_rest16418_ _mod16419_)
                                  (let ((__tmp16612
                                         (let ((__tmp16616
                                                (let ((__tmp16617
                                                       (string-append
                                                        _mod16419_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry16393_
                                                   __tmp16617)))
                                               (__tmp16613
                                                (let ((__tmp16614
                                                       (let ((__tmp16615
                                                              (string-append
                                                               _mod16419_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry16393_
                                                          __tmp16615))))
                                                  (declare (not safe))
                                                  (cons __tmp16614
                                                        _registry16398_))))
                                           (declare (not safe))
                                           (cons __tmp16616 __tmp16613))))
                                    (declare (not safe))
                                    (_lp16395_ _rest16418_ __tmp16612)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1639916407_))
                              (let ((_hd1640416424_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1639916407_)))
                                    (_tl1640516426_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1639916407_))))
                                (let* ((_mod16429_ _hd1640416424_)
                                       (_rest16431_ _tl1640516426_))
                                  (declare (not safe))
                                  (_K1640316421_ _rest16431_ _mod16429_)))
                              (let ()
                                (declare (not safe))
                                (_else1640116415_)))))))
                (current-module-registry _module-registry16433_))
              (current-readtable __*readtable*)
              (random-source-randomize! default-random-source)
              (set! __runtime-initialized '#t)))))
    (define __expander-loaded '#f)
    (define __runtime-initialized '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __runtime-initialized
            '#!void
            (error '"runtime has not been initialized"))
        (if __expander-loaded
            '#!void
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
