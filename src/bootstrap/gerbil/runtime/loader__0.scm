(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1698867094)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath7227_ _reload?7228_)
        (let ((_$e7230_
               (if (let () (declare (not safe)) (not _reload?7228_))
                   (let ((__tmp7249 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp7249 _modpath7227_ '#f))
                   '#f)))
          (if _$e7230_
              _$e7230_
              (let ((_$e7233_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath7227_))))
                (if _$e7233_
                    ((lambda (_path7236_)
                       (let ((_lpath7238_ (load _path7236_)))
                         (let ((__tmp7250 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp7250 _modpath7227_ _lpath7238_))
                         _lpath7238_))
                     _$e7233_)
                    (error '"module not found" _modpath7227_)))))))
    (define load-module__0
      (lambda (_modpath7243_)
        (let ((_reload?7245_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath7243_ _reload?7245_))))
    (define load-module
      (lambda _g7252_
        (let ((_g7251_ (let () (declare (not safe)) (##length _g7252_))))
          (cond ((let () (declare (not safe)) (##fx= _g7251_ 1))
                 (apply (lambda (_modpath7243_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath7243_)))
                        _g7252_))
                ((let () (declare (not safe)) (##fx= _g7251_ 2))
                 (apply (lambda (_modpath7247_ _reload?7248_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath7247_ _reload?7248_)))
                        _g7252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g7252_))))))
    (define find-library-module
      (lambda (_modpath7161_)
        (letrec ((_find-compiled-file7163_
                  (lambda (_npath7215_)
                    (let ((_basepath7217_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath7215_ '".o"))))
                      (let _lp7219_ ((_current7221_ '#f) (_n7222_ '1))
                        (let ((_next7224_
                               (let ((__tmp7253 (number->string _n7222_)))
                                 (declare (not safe))
                                 (##string-append _basepath7217_ __tmp7253))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next7224_))
                              (let ((__tmp7254
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n7222_ '1))))
                                (declare (not safe))
                                (_lp7219_ _next7224_ __tmp7254))
                              _current7221_))))))
                 (_find-source-file7164_
                  (lambda (_npath7211_)
                    (let ((_spath7213_ (string-append _npath7211_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath7213_))
                          _spath7213_
                          '#f)))))
          (let _lp7166_ ((_rest7168_ (current-module-library-path)))
            (let* ((_rest71697177_ _rest7168_)
                   (_else71717185_ (lambda () '#f))
                   (_K71737199_
                    (lambda (_rest7188_ _dir7189_)
                      (let* ((_npath7191_
                              (path-expand
                               _modpath7161_
                               (path-expand _dir7189_)))
                             (_$e7193_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file7163_ _npath7191_))))
                        (if _$e7193_
                            (path-normalize _$e7193_)
                            (let ((_$e7196_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file7164_ _npath7191_))))
                              (if _$e7196_
                                  (path-normalize _$e7196_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp7166_ _rest7188_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest71697177_))
                  (let ((_hd71747202_
                         (let () (declare (not safe)) (##car _rest71697177_)))
                        (_tl71757204_
                         (let () (declare (not safe)) (##cdr _rest71697177_))))
                    (let* ((_dir7207_ _hd71747202_) (_rest7209_ _tl71757204_))
                      (declare (not safe))
                      (_K71737199_ _rest7209_ _dir7207_)))
                  (let () (declare (not safe)) (_else71717185_))))))))))
