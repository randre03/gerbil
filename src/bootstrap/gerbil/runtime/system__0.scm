(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1698867094)
  (begin
    (define gerbil-version-string (lambda () '"v0.18-18-gb81f43ad"))
    (define gerbil-system-manifest
      (let ((__tmp7138
             (let ((__tmp7139
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp7139)))
            (__tmp7135
             (let ((__tmp7136
                    (let ((__tmp7137 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp7137))))
               (declare (not safe))
               (cons __tmp7136 '()))))
        (declare (not safe))
        (cons __tmp7138 __tmp7135)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest7081_ _port7082_)
        (letrec* ((_p7084_ (lambda (_x7118_) (display _x7118_ _port7082_)))
                  (_l7085_ (length _manifest7081_))
                  (_i7086_ '0))
          (for-each
           (lambda (_layer7088_)
             (if (let () (declare (not safe)) (zero? _i7086_))
                 '#!void
                 (if (= _i7086_ '1)
                     (let () (declare (not safe)) (_p7084_ '" on "))
                     (let () (declare (not safe)) (_p7084_ '", "))))
             (let* ((_layer70897096_ _layer7088_)
                    (_E70917100_
                     (lambda () (error '"No clause matching" _layer70897096_)))
                    (_K70927106_
                     (lambda (_version7103_ _name7104_)
                       (let () (declare (not safe)) (_p7084_ _name7104_))
                       (let () (declare (not safe)) (_p7084_ '" "))
                       (let () (declare (not safe)) (_p7084_ _version7103_)))))
               (if (let () (declare (not safe)) (##pair? _layer70897096_))
                   (let ((_hd70937109_
                          (let ()
                            (declare (not safe))
                            (##car _layer70897096_)))
                         (_tl70947111_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer70897096_))))
                     (let* ((_name7114_ _hd70937109_)
                            (_version7116_ _tl70947111_))
                       (declare (not safe))
                       (_K70927106_ _version7116_ _name7114_)))
                   (let () (declare (not safe)) (_E70917100_))))
             (set! _i7086_ (+ _i7086_ '1)))
           _manifest7081_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest7124_ build-manifest)
               (_port7126_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest7124_ _port7126_))))
    (define display-build-manifest__1
      (lambda (_manifest7128_)
        (let ((_port7130_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest7128_ _port7130_))))
    (define display-build-manifest
      (lambda _g7141_
        (let ((_g7140_ (let () (declare (not safe)) (##length _g7141_))))
          (cond ((let () (declare (not safe)) (##fx= _g7140_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g7141_))
                ((let () (declare (not safe)) (##fx= _g7140_ 1))
                 (apply (lambda (_manifest7128_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest7128_)))
                        _g7141_))
                ((let () (declare (not safe)) (##fx= _g7140_ 2))
                 (apply (lambda (_manifest7132_ _port7133_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest7132_
                             _port7133_)))
                        _g7141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g7141_))))))
    (define build-manifest/layer
      (lambda (_layer7076_)
        (let ((_l7078_ (assoc _layer7076_ build-manifest)))
          (if _l7078_ (let () (declare (not safe)) (cons _l7078_ '())) '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp7142 (car build-manifest)))
          (declare (not safe))
          (cons __tmp7142 '()))))
    (define build-manifest-string__%
      (lambda (_manifest7063_)
        (call-with-output-string
         '()
         (lambda (_p7065_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest7063_ _p7065_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest7071_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest7071_))))
    (define build-manifest-string
      (lambda _g7144_
        (let ((_g7143_ (let () (declare (not safe)) (##length _g7144_))))
          (cond ((let () (declare (not safe)) (##fx= _g7143_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g7144_))
                ((let () (declare (not safe)) (##fx= _g7143_ 1))
                 (apply (lambda (_manifest7073_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest7073_)))
                        _g7144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g7144_))))))
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
        (let ((_$e7057_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e7057_ _$e7057_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e7053_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e7053_ _$e7053_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp7145 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp7145 '#\')))))))
