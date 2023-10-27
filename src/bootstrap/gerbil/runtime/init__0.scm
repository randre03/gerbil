(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1698333193)
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
        (letrec* ((_+readtable+18603_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core18605_ (gx#import-module ':gerbil/core))
                 (_pre18607_ (gx#make-prelude-context _core18605_)))
            (gx#current-expander-module-prelude _pre18607_)
            (gx#core-bind-root-syntax! ':<core> _pre18607_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port18610_)
             (input-port-readtable-set! _port18610_ _+readtable+18603_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port18612_)
             (output-port-readtable-set!
              _port18612_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port18612_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline18600_) '#!void))
    (define load-scheme
      (lambda (_path18595_)
        (let ((__tmp18614
               (lambda ()
                 (let ((__tmp18615 (lambda _args18598_ '#f)))
                   (declare (not safe))
                   (##load _path18595_ __tmp18615 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp18614
           __loading-scheme-source
           _path18595_))))
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
      (lambda _paths18590_
        (apply add-library-load-path _paths18590_)
        (apply add-expander-load-path _paths18590_)))
    (define add-library-load-path
      (lambda _paths18579_
        (let* ((_current18581_ (current-module-library-path))
               (_paths18583_ (map path-expand _paths18579_))
               (_paths18587_
                (let ((__tmp18616
                       (lambda (_x18585_)
                         (let ((__tmp18617 (member _x18585_ _current18581_)))
                           (declare (not safe))
                           (not __tmp18617)))))
                  (declare (not safe))
                  (filter __tmp18616 _paths18583_))))
          (current-module-library-path (append _current18581_ _paths18587_)))))
    (define add-expander-load-path
      (lambda _paths18568_
        (let* ((_current18570_ (gx#current-expander-module-library-path))
               (_paths18572_ (map path-expand _paths18568_))
               (_paths18576_
                (let ((__tmp18618
                       (lambda (_x18574_)
                         (let ((__tmp18619 (member _x18574_ _current18570_)))
                           (declare (not safe))
                           (not __tmp18619)))))
                  (declare (not safe))
                  (filter __tmp18618 _paths18572_))))
          (gx#current-expander-module-library-path
           (append _current18570_ _paths18576_)))))
    (define cons-load-path
      (lambda _paths18566_
        (apply cons-library-load-path _paths18566_)
        (apply cons-expander-load-path _paths18566_)))
    (define cons-library-load-path
      (lambda _paths18561_
        (let ((_current18563_ (current-module-library-path))
              (_paths18564_ (map path-expand _paths18561_)))
          (current-module-library-path (append _paths18564_ _current18563_)))))
    (define cons-expander-load-path
      (lambda _paths18556_
        (let ((_current18558_ (gx#current-expander-module-library-path))
              (_paths18559_ (map path-expand _paths18556_)))
          (gx#current-expander-module-library-path
           (append _paths18559_ _current18558_)))))
    (define with-cons-load-path
      (lambda (_thunk18552_ . _paths18553_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk18552_
                        _paths18553_))
               _paths18553_)))
    (define with-cons-library-load-path
      (lambda (_thunk18545_ . _paths18546_)
        (let ((_current18548_ (current-module-library-path))
              (_paths18549_ (map path-expand _paths18546_)))
          (let ((__tmp18621 (lambda () (_thunk18545_)))
                (__tmp18620 (append _paths18549_ _current18548_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18621
             current-module-library-path
             __tmp18620)))))
    (define with-cons-expander-load-path
      (lambda (_thunk18538_ . _paths18539_)
        (let ((_current18541_ (gx#current-expander-module-library-path))
              (_paths18542_ (map path-expand _paths18539_)))
          (let ((__tmp18623 (lambda () (_thunk18538_)))
                (__tmp18622 (append _paths18542_ _current18541_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18623
             gx#current-expander-module-library-path
             __tmp18622)))))
    (define __expand-source
      (lambda (_src18524_)
        (letrec ((_expand18526_
                  (lambda (_src18536_)
                    (let ((__tmp18624
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src18536_)))))
                      (declare (not safe))
                      (__compile-top __tmp18624))))
                 (_no-expand18527_
                  (lambda (_src18532_)
                    (if (__loading-scheme-source)
                        _src18532_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src18532_))
                            (let ((_code18534_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src18532_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code18534_))
                                  (if (let ((__tmp18625
                                             (let ()
                                               (declare (not safe))
                                               (##car _code18534_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp18625))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code18534_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e18529_
                 (let () (declare (not safe)) (_no-expand18527_ _src18524_))))
            (if _$e18529_
                _$e18529_
                (let () (declare (not safe)) (_expand18526_ _src18524_)))))))
    (define __macro-descr
      (lambda (_src18510_ _def-syntax?18511_)
        (letrec ((_fail!18513_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src18510_))))
                 (_make-descr18514_
                  (lambda (_size18518_)
                    (let ((_expander18521_
                           (let ((__tmp18626
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src18510_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp18626
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander18521_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?18511_
                             _size18518_
                             _expander18521_
                             _src18510_))
                          (let () (declare (not safe)) (_fail!18513_)))))))
          (if _def-syntax?18511_
              (let () (declare (not safe)) (_make-descr18514_ '-1))
              (let ((_code18516_
                     (let () (declare (not safe)) (##source-code _src18510_))))
                (if (and (let () (declare (not safe)) (##pair? _code18516_))
                         (let ((__tmp18630
                                (let ((__tmp18631
                                       (let ((__tmp18632
                                              (let ()
                                                (declare (not safe))
                                                (##car _code18516_))))
                                         (declare (not safe))
                                         (##sourcify __tmp18632 _src18510_))))
                                  (declare (not safe))
                                  (##source-code __tmp18631))))
                           (declare (not safe))
                           (##memq __tmp18630 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src18510_ _src18510_ '-3))
                      (let ((__tmp18627
                             (let ((__tmp18628
                                    (let ((__tmp18629
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code18516_))))
                                      (declare (not safe))
                                      (##sourcify __tmp18629 _src18510_))))
                               (declare (not safe))
                               (##form-size __tmp18628))))
                        (declare (not safe))
                        (_make-descr18514_ __tmp18627)))
                    (let () (declare (not safe)) (_fail!18513_))))))))
    (define __source->syntax
      (lambda (_src18504_)
        (let _recur18506_ ((_e18508_ _src18504_))
          (if (let () (declare (not safe)) (##source? _e18508_))
              (let ((__tmp18640
                     (let ((__tmp18641
                            (let ()
                              (declare (not safe))
                              (##source-code _e18508_))))
                       (declare (not safe))
                       (_recur18506_ __tmp18641)))
                    (__tmp18639
                     (let () (declare (not safe)) (##source-locat _e18508_))))
                (declare (not safe))
                (##structure AST::t __tmp18640 __tmp18639))
              (if (let () (declare (not safe)) (pair? _e18508_))
                  (let ((__tmp18637
                         (let ((__tmp18638
                                (let ()
                                  (declare (not safe))
                                  (##car _e18508_))))
                           (declare (not safe))
                           (_recur18506_ __tmp18638)))
                        (__tmp18635
                         (let ((__tmp18636
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e18508_))))
                           (declare (not safe))
                           (_recur18506_ __tmp18636))))
                    (declare (not safe))
                    (cons __tmp18637 __tmp18635))
                  (if (let () (declare (not safe)) (vector? _e18508_))
                      (vector-map _recur18506_ _e18508_)
                      (if (let () (declare (not safe)) (box? _e18508_))
                          (let ((__tmp18633
                                 (let ((__tmp18634 (unbox _e18508_)))
                                   (declare (not safe))
                                   (_recur18506_ __tmp18634))))
                            (declare (not safe))
                            (box __tmp18633))
                          _e18508_)))))))
    (define __compile-top-source
      (lambda (_stx18502_)
        (let ((__tmp18642
               (let () (declare (not safe)) (__compile-top _stx18502_))))
          (declare (not safe))
          (cons '__noexpand: __tmp18642))))
    (define __compile-top
      (lambda (_stx18500_)
        (let ((__tmp18643 (gx#core-compile-top-syntax _stx18500_)))
          (declare (not safe))
          (__compile __tmp18643))))
    (define __eval-import
      (lambda (_in18481_)
        (letrec* ((_mods18483_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import118484_
                   (lambda (_in18491_ _phi18492_)
                     (if (gx#module-import? _in18491_)
                         (let ((_iphi18494_
                                (fx+ _phi18492_
                                     (gx#module-import-phi _in18491_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi18494_))
                               (let ((__tmp18645
                                      (gx#module-export-context
                                       (gx#module-import-source _in18491_))))
                                 (declare (not safe))
                                 (_eval118485_ __tmp18645))
                               '#!void))
                         (if (gx#module-context? _in18491_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi18492_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval118485_ _in18491_))
                                 '#!void)
                             (if (gx#import-set? _in18491_)
                                 (let ((_iphi18496_
                                        (fx+ _phi18492_
                                             (gx#import-set-phi _in18491_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi18496_))
                                       (let ((__tmp18644
                                              (gx#import-set-source
                                               _in18491_)))
                                         (declare (not safe))
                                         (_eval118485_ __tmp18644))
                                       (if (fxpositive? _iphi18496_)
                                           (for-each
                                            (lambda (_in18498_)
                                              (let ()
                                                (declare (not safe))
                                                (_import118484_
                                                 _in18498_
                                                 _iphi18496_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in18491_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in18491_))))))
                  (_eval118485_
                   (lambda (_ctx18489_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods18483_ _ctx18489_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods18483_ _ctx18489_ '#t))
                           (__eval-module _ctx18489_))))))
          (if (let () (declare (not safe)) (pair? _in18481_))
              (for-each
               (lambda (_in18487_)
                 (let () (declare (not safe)) (_import118484_ _in18487_ '0)))
               _in18481_)
              (let () (declare (not safe)) (_import118484_ _in18481_ '0))))))
    (define __eval-module
      (lambda (_obj18474_)
        (let* ((_key18476_
                (if (gx#module-context? _obj18474_)
                    (gx#module-context-path _obj18474_)
                    _obj18474_))
               (_$e18478_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key18476_ '#f))))
          (if _$e18478_ (values _$e18478_) (gx#core-eval-module _obj18474_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules18409_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home18411_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir18413_ (path-expand '"lib" _home18411_))
                     (_userpath18415_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath18417_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir18413_ '()))
                          (let ((__tmp18646
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir18413_ '()))))
                            (declare (not safe))
                            (cons _userpath18415_ __tmp18646))))
                     (_loadpath18426_
                      (let ((_$e18419_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e18419_
                            ((lambda (_envvar18422_)
                               (append (let ((__tmp18648
                                              (lambda (_x18424_)
                                                (let ((__tmp18649
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x18424_))))
                                                  (declare (not safe))
                                                  (not __tmp18649))))
                                             (__tmp18647
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar18422_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp18648 __tmp18647))
                                       _loadpath18417_))
                             _$e18419_)
                            _loadpath18417_))))
                (current-module-library-path _loadpath18426_))
              (let* ((_registry-entry18431_
                      (lambda (_m18429_)
                        (let ()
                          (declare (not safe))
                          (cons _m18429_ 'builtin))))
                     (_module-registry18471_
                      (let _lp18433_ ((_rest18435_ _builtin-modules18409_)
                                      (_registry18436_ '()))
                        (let* ((_rest1843718445_ _rest18435_)
                               (_else1843918453_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry18436_))))
                               (_K1844118459_
                                (lambda (_rest18456_ _mod18457_)
                                  (let ((__tmp18650
                                         (let ((__tmp18654
                                                (let ((__tmp18655
                                                       (string-append
                                                        _mod18457_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry18431_
                                                   __tmp18655)))
                                               (__tmp18651
                                                (let ((__tmp18652
                                                       (let ((__tmp18653
                                                              (string-append
                                                               _mod18457_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry18431_
                                                          __tmp18653))))
                                                  (declare (not safe))
                                                  (cons __tmp18652
                                                        _registry18436_))))
                                           (declare (not safe))
                                           (cons __tmp18654 __tmp18651))))
                                    (declare (not safe))
                                    (_lp18433_ _rest18456_ __tmp18650)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1843718445_))
                              (let ((_hd1844218462_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1843718445_)))
                                    (_tl1844318464_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1843718445_))))
                                (let* ((_mod18467_ _hd1844218462_)
                                       (_rest18469_ _tl1844318464_))
                                  (declare (not safe))
                                  (_K1844118459_ _rest18469_ _mod18467_)))
                              (let ()
                                (declare (not safe))
                                (_else1843918453_)))))))
                (current-module-registry _module-registry18471_))
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
