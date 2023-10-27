(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1698333192)
  (begin
    (define gerbil-version-string (lambda () '"v0.18-8-g9c013074"))
    (define gerbil-system-manifest
      (let ((__tmp8716
             (let ((__tmp8717
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp8717)))
            (__tmp8713
             (let ((__tmp8714
                    (let ((__tmp8715 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp8715))))
               (declare (not safe))
               (cons __tmp8714 '()))))
        (declare (not safe))
        (cons __tmp8716 __tmp8713)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest6570_ _port6571_)
        (letrec* ((_p6573_ (lambda (_x6607_) (display _x6607_ _port6571_)))
                  (_l6574_ (length _manifest6570_))
                  (_i6575_ '0))
          (for-each
           (lambda (_layer6577_)
             (if (let () (declare (not safe)) (zero? _i6575_))
                 '#!void
                 (if (= _i6575_ '1)
                     (let () (declare (not safe)) (_p6573_ '" on "))
                     (let () (declare (not safe)) (_p6573_ '", "))))
             (let* ((_layer65786585_ _layer6577_)
                    (_E65806589_
                     (lambda () (error '"No clause matching" _layer65786585_)))
                    (_K65816595_
                     (lambda (_version6592_ _name6593_)
                       (let () (declare (not safe)) (_p6573_ _name6593_))
                       (let () (declare (not safe)) (_p6573_ '" "))
                       (let () (declare (not safe)) (_p6573_ _version6592_)))))
               (if (let () (declare (not safe)) (##pair? _layer65786585_))
                   (let ((_hd65826598_
                          (let ()
                            (declare (not safe))
                            (##car _layer65786585_)))
                         (_tl65836600_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer65786585_))))
                     (let* ((_name6603_ _hd65826598_)
                            (_version6605_ _tl65836600_))
                       (declare (not safe))
                       (_K65816595_ _version6605_ _name6603_)))
                   (let () (declare (not safe)) (_E65806589_))))
             (set! _i6575_ (+ _i6575_ '1)))
           _manifest6570_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest6613_ build-manifest)
               (_port6615_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest6613_ _port6615_))))
    (define display-build-manifest__1
      (lambda (_manifest6617_)
        (let ((_port6619_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest6617_ _port6619_))))
    (define display-build-manifest
      (lambda _g8719_
        (let ((_g8718_ (let () (declare (not safe)) (##length _g8719_))))
          (cond ((let () (declare (not safe)) (##fx= _g8718_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g8719_))
                ((let () (declare (not safe)) (##fx= _g8718_ 1))
                 (apply (lambda (_manifest6617_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest6617_)))
                        _g8719_))
                ((let () (declare (not safe)) (##fx= _g8718_ 2))
                 (apply (lambda (_manifest6621_ _port6622_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest6621_
                             _port6622_)))
                        _g8719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g8719_))))))
    (define build-manifest-string__%
      (lambda (_manifest6557_)
        (call-with-output-string
         '()
         (lambda (_p6559_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest6557_ _p6559_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest6565_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest6565_))))
    (define build-manifest-string
      (lambda _g8721_
        (let ((_g8720_ (let () (declare (not safe)) (##length _g8721_))))
          (cond ((let () (declare (not safe)) (##fx= _g8720_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g8721_))
                ((let () (declare (not safe)) (##fx= _g8720_ 1))
                 (apply (lambda (_manifest6567_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest6567_)))
                        _g8721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g8721_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let ()
          (declare (not safe))
          (build-manifest-string__% gerbil-system-manifest))))
    (define gerbil-greeting
      (let () (declare (not safe)) (gerbil-system-version-string)))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_$e6551_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e6551_ _$e6551_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e6547_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e6547_ _$e6547_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp8722 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp8722 '#\')))))))
