(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1698333192)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath9137_ _reload?9138_)
        (let ((_$e9140_
               (if (let () (declare (not safe)) (not _reload?9138_))
                   (let ((__tmp9159 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp9159 _modpath9137_ '#f))
                   '#f)))
          (if _$e9140_
              _$e9140_
              (let ((_$e9143_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath9137_))))
                (if _$e9143_
                    ((lambda (_path9146_)
                       (let ((_lpath9148_ (load _path9146_)))
                         (let ((__tmp9160 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp9160 _modpath9137_ _lpath9148_))
                         _lpath9148_))
                     _$e9143_)
                    (error '"module not found" _modpath9137_)))))))
    (define load-module__0
      (lambda (_modpath9153_)
        (let ((_reload?9155_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath9153_ _reload?9155_))))
    (define load-module
      (lambda _g9162_
        (let ((_g9161_ (let () (declare (not safe)) (##length _g9162_))))
          (cond ((let () (declare (not safe)) (##fx= _g9161_ 1))
                 (apply (lambda (_modpath9153_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath9153_)))
                        _g9162_))
                ((let () (declare (not safe)) (##fx= _g9161_ 2))
                 (apply (lambda (_modpath9157_ _reload?9158_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath9157_ _reload?9158_)))
                        _g9162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g9162_))))))
    (define find-library-module
      (lambda (_modpath9071_)
        (letrec ((_find-compiled-file9073_
                  (lambda (_npath9125_)
                    (let ((_basepath9127_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath9125_ '".o"))))
                      (let _lp9129_ ((_current9131_ '#f) (_n9132_ '1))
                        (let ((_next9134_
                               (let ((__tmp9163 (number->string _n9132_)))
                                 (declare (not safe))
                                 (##string-append _basepath9127_ __tmp9163))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next9134_))
                              (let ((__tmp9164
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n9132_ '1))))
                                (declare (not safe))
                                (_lp9129_ _next9134_ __tmp9164))
                              _current9131_))))))
                 (_find-source-file9074_
                  (lambda (_npath9121_)
                    (let ((_spath9123_ (string-append _npath9121_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath9123_))
                          _spath9123_
                          '#f)))))
          (let _lp9076_ ((_rest9078_ (current-module-library-path)))
            (let* ((_rest90799087_ _rest9078_)
                   (_else90819095_ (lambda () '#f))
                   (_K90839109_
                    (lambda (_rest9098_ _dir9099_)
                      (let* ((_npath9101_
                              (path-expand
                               _modpath9071_
                               (path-expand _dir9099_)))
                             (_$e9103_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file9073_ _npath9101_))))
                        (if _$e9103_
                            (path-normalize _$e9103_)
                            (let ((_$e9106_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file9074_ _npath9101_))))
                              (if _$e9106_
                                  (path-normalize _$e9106_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp9076_ _rest9098_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest90799087_))
                  (let ((_hd90849112_
                         (let () (declare (not safe)) (##car _rest90799087_)))
                        (_tl90859114_
                         (let () (declare (not safe)) (##cdr _rest90799087_))))
                    (let* ((_dir9117_ _hd90849112_) (_rest9119_ _tl90859114_))
                      (declare (not safe))
                      (_K90839109_ _rest9119_ _dir9117_)))
                  (let () (declare (not safe)) (_else90819095_))))))))))
