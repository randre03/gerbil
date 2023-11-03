(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[:0:]#:|
    (lambda (_$stx32800_)
      (let ((_g3280332810_
             (lambda (_g3280432806_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3280432806_))))
        (_g3280332810_ _$stx32800_))))
  (define |gerbil/core$<more-sugar>[:0:]#:~|
    (lambda (_$stx32814_)
      (let ((_g3281732824_
             (lambda (_g3281832820_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3281832820_))))
        (_g3281732824_ _$stx32814_))))
  (define |gerbil/core$<more-sugar>[:0:]#:-|
    (lambda (_$stx32828_)
      (let ((_g3283132838_
             (lambda (_g3283232834_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3283232834_))))
        (_g3283132838_ _$stx32828_))))
  (define |gerbil/core$<more-sugar>[:0:]#:=|
    (lambda (_$stx32842_)
      (let ((_g3284532852_
             (lambda (_g3284632848_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3284632848_))))
        (_g3284532852_ _$stx32842_))))
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args32867_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32867_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args32863_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32863_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx32860_)
      (if (gx#identifier? _stx32860_)
          (let ((__tmp43114 (gx#syntax-local-value _stx32860_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp43114))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32857_)
      (if (gx#identifier? _stx32857_)
          (let ((__tmp43115 (gx#syntax-local-value _stx32857_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp43115))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32871_)
      (let* ((___stx4239342394_ _stx32871_)
             (_g3287732936_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4239342394_))))
        (let ((___kont4239642397_
               (lambda (_L33209_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33209_)
                  _stx32871_)))
              (___kont4239842399_
               (lambda (_L33108_ _L33110_ _L33111_)
                 (let* ((_g3313333141_
                         (lambda (_g3313433137_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3313433137_)))
                        (_g3313233168_
                         (lambda (_g3313433145_)
                           ((lambda (_L33148_)
                              (let ()
                                (cons _L33148_
                                      (foldr (lambda (_g3315933162_
                                                      _g3316033165_)
                                               (cons _g3315933162_
                                                     _g3316033165_))
                                             (cons _L33108_ '())
                                             _L33110_))))
                            _g3313433145_))))
                   (_g3313233168_
                    (gx#stx-identifier _L33111_ _L33111_ '"-set!")))))
              (___kont4240242403_
               (lambda (_L33018_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33018_)
                  _stx32871_)))
              (___kont4240442405_
               (lambda (_L32973_ _L32975_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32975_ (cons _L32973_ '()))))))
          (let* ((___match4248442485_
                  (lambda (_e3292432943_
                           _hd3292332947_
                           _tl3292232950_
                           _e3292732953_
                           _hd3292632957_
                           _tl3292532960_
                           _e3293032963_
                           _hd3292932967_
                           _tl3292832970_)
                    (let ((_L32973_ _hd3292932967_) (_L32975_ _hd3292632957_))
                      (if (gx#identifier? _L32975_)
                          (___kont4240442405_ _L32973_ _L32975_)
                          (let () (declare (not safe)) (_g3287732936_))))))
                 (___match4246442465_
                  (lambda (_e3291632998_
                           _hd3291533002_
                           _tl3291433005_
                           _e3291933008_
                           _hd3291833012_
                           _tl3291733015_)
                    (let ((_L33018_ _hd3291833012_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                             _L33018_))
                          (___kont4240242403_ _L33018_)
                          (if (gx#stx-pair? _tl3291733015_)
                              (let ((_e3293032963_
                                     (gx#syntax-e _tl3291733015_)))
                                (let ((_tl3292832970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3293032963_)))
                                      (_hd3292932967_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3293032963_))))
                                  (if (gx#stx-null? _tl3292832970_)
                                      (___match4248442485_
                                       _e3291632998_
                                       _hd3291533002_
                                       _tl3291433005_
                                       _e3291933008_
                                       _hd3291833012_
                                       _tl3291733015_
                                       _e3293032963_
                                       _hd3292932967_
                                       _tl3292832970_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3287732936_)))))
                              (let ()
                                (declare (not safe))
                                (_g3287732936_)))))))
                 (___match4245242453_
                  (lambda (_e3289433038_
                           _hd3289333042_
                           _tl3289233045_
                           _e3289733048_
                           _hd3289633052_
                           _tl3289533055_
                           _e3290033058_
                           _hd3289933062_
                           _tl3289833065_
                           ___splice4240042401_
                           _target3290133068_
                           _tl3290333071_)
                    (letrec ((_loop3290433074_
                              (lambda (_hd3290233078_ _arg3290833081_)
                                (if (gx#stx-pair? _hd3290233078_)
                                    (let ((_e3290533084_
                                           (gx#syntax-e _hd3290233078_)))
                                      (let ((_lp-tl3290733091_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3290533084_)))
                                            (_lp-hd3290633088_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3290533084_))))
                                        (_loop3290433074_
                                         _lp-tl3290733091_
                                         (cons _lp-hd3290633088_
                                               _arg3290833081_))))
                                    (let ((_arg3290933094_
                                           (reverse _arg3290833081_)))
                                      (if (gx#stx-pair? _tl3289533055_)
                                          (let ((_e3291233098_
                                                 (gx#syntax-e _tl3289533055_)))
                                            (let ((_tl3291033105_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3291233098_)))
                                                  (_hd3291133102_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3291233098_))))
                                              (if (gx#stx-null? _tl3291033105_)
                                                  (let ((_L33108_
                                                         _hd3291133102_)
                                                        (_L33110_
                                                         _arg3290933094_)
                                                        (_L33111_
                                                         _hd3289933062_))
                                                    (if (gx#identifier?
                                                         _L33111_)
                                                        (___kont4239842399_
                                                         _L33108_
                                                         _L33110_
                                                         _L33111_)
                                                        (___match4246442465_
                                                         _e3289433038_
                                                         _hd3289333042_
                                                         _tl3289233045_
                                                         _e3289733048_
                                                         _hd3289633052_
                                                         _tl3289533055_)))
                                                  (___match4246442465_
                                                   _e3289433038_
                                                   _hd3289333042_
                                                   _tl3289233045_
                                                   _e3289733048_
                                                   _hd3289633052_
                                                   _tl3289533055_))))
                                          (___match4246442465_
                                           _e3289433038_
                                           _hd3289333042_
                                           _tl3289233045_
                                           _e3289733048_
                                           _hd3289633052_
                                           _tl3289533055_)))))))
                      (_loop3290433074_ _target3290133068_ '())))))
            (if (gx#stx-pair? ___stx4239342394_)
                (let ((_e3288233179_ (gx#syntax-e ___stx4239342394_)))
                  (let ((_tl3288033186_
                         (let () (declare (not safe)) (##cdr _e3288233179_)))
                        (_hd3288133183_
                         (let () (declare (not safe)) (##car _e3288233179_))))
                    (if (gx#stx-pair? _tl3288033186_)
                        (let ((_e3288533189_ (gx#syntax-e _tl3288033186_)))
                          (let ((_tl3288333196_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3288533189_)))
                                (_hd3288433193_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3288533189_))))
                            (if (gx#stx-pair? _hd3288433193_)
                                (let ((_e3288833199_
                                       (gx#syntax-e _hd3288433193_)))
                                  (let ((_tl3288633206_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3288833199_)))
                                        (_hd3288733203_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3288833199_))))
                                    (if (let ((__tmp43116
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp43116))
                                        (let ((_L33209_ _hd3288733203_))
                                          (___kont4239642397_ _L33209_))
                                        (if (gx#stx-pair/null? _tl3288633206_)
                                            (let ((___splice4240042401_
                                                   (gx#syntax-split-splice
                                                    _tl3288633206_
                                                    '0)))
                                              (let ((_tl3290333071_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4240042401_
                                                        '1)))
                                                    (_target3290133068_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4240042401_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3290333071_)
                                                    (___match4245242453_
                                                     _e3288233179_
                                                     _hd3288133183_
                                                     _tl3288033186_
                                                     _e3288533189_
                                                     _hd3288433193_
                                                     _tl3288333196_
                                                     _e3288833199_
                                                     _hd3288733203_
                                                     _tl3288633206_
                                                     ___splice4240042401_
                                                     _target3290133068_
                                                     _tl3290333071_)
                                                    (___match4246442465_
                                                     _e3288233179_
                                                     _hd3288133183_
                                                     _tl3288033186_
                                                     _e3288533189_
                                                     _hd3288433193_
                                                     _tl3288333196_))))
                                            (___match4246442465_
                                             _e3288233179_
                                             _hd3288133183_
                                             _tl3288033186_
                                             _e3288533189_
                                             _hd3288433193_
                                             _tl3288333196_)))))
                                (___match4246442465_
                                 _e3288233179_
                                 _hd3288133183_
                                 _tl3288033186_
                                 _e3288533189_
                                 _hd3288433193_
                                 _tl3288333196_))))
                        (let () (declare (not safe)) (_g3287732936_)))))
                (let () (declare (not safe)) (_g3287732936_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx33229_)
      (let* ((_g3323233256_
              (lambda (_g3323333252_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3323333252_)))
             (_g3323133434_
              (lambda (_g3323333260_)
                (if (gx#stx-pair? _g3323333260_)
                    (let ((_e3323833263_ (gx#syntax-e _g3323333260_)))
                      (let ((_hd3323733267_
                             (let ()
                               (declare (not safe))
                               (##car _e3323833263_)))
                            (_tl3323633270_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3323833263_))))
                        (if (gx#stx-pair/null? _tl3323633270_)
                            (if (fx>= (gx#stx-length _tl3323633270_) '1)
                                (let ((_g43117_
                                       (gx#syntax-split-splice
                                        _tl3323633270_
                                        '1)))
                                  (begin
                                    (let ((_g43118_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g43117_)
                                                 (##vector-length _g43117_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g43118_ 2)))
                                          (error "Context expects 2 values"
                                                 _g43118_)))
                                    (let ((_target3323933273_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g43117_ 0)))
                                          (_tl3324133276_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g43117_ 1))))
                                      (if (gx#stx-pair? _tl3324133276_)
                                          (let ((_e3325033279_
                                                 (gx#syntax-e _tl3324133276_)))
                                            (let ((_hd3324933283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3325033279_)))
                                                  (_tl3324833286_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3325033279_))))
                                              (if (gx#stx-null? _tl3324833286_)
                                                  (letrec ((_loop3324233289_
                                                            (lambda (_hd3324033293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3324633296_)
                      (if (gx#stx-pair? _hd3324033293_)
                          (let ((_e3324333299_ (gx#syntax-e _hd3324033293_)))
                            (let ((_lp-hd3324433303_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3324333299_)))
                                  (_lp-tl3324533306_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3324333299_))))
                              (_loop3324233289_
                               _lp-tl3324533306_
                               (cons _lp-hd3324433303_ _tgt3324633296_))))
                          (let ((_tgt3324733309_ (reverse _tgt3324633296_)))
                            ((lambda (_L33313_ _L33315_)
                               (let* ((_g3333333350_
                                       (lambda (_g3333433346_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3333433346_)))
                                      (_g3333233422_
                                       (lambda (_g3333433354_)
                                         (if (gx#stx-pair/null? _g3333433354_)
                                             (let ((_g43119_
                                                    (gx#syntax-split-splice
                                                     _g3333433354_
                                                     '0)))
                                               (begin
                                                 (let ((_g43120_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g43119_)
                                                              (##vector-length
                                                               _g43119_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g43120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g43120_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3333633357_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g43119_
                                                           0)))
                                                       (_tl3333833360_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g43119_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl3333833360_)
                                                       (letrec ((_loop3333933363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3333733367_ _$e3334333370_)
                           (if (gx#stx-pair? _hd3333733367_)
                               (let ((_e3334033373_
                                      (gx#syntax-e _hd3333733367_)))
                                 (let ((_lp-hd3334133377_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3334033373_)))
                                       (_lp-tl3334233380_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3334033373_))))
                                   (_loop3333933363_
                                    _lp-tl3334233380_
                                    (cons _lp-hd3334133377_ _$e3334333370_))))
                               (let ((_$e3334433383_ (reverse _$e3334333370_)))
                                 ((lambda (_L33387_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_g3340533408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3340633411_)
                               (cons _g3340533408_ _g3340633411_))
                             '()
                             _L33387_)
                      (cons _L33313_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L33387_
                                                     _L33315_)
                                                    (foldr (lambda (_g3340233414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3340333417_
                            _g3340433419_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3340333417_ (cons _g3340233414_ '())))
                           _g3340433419_))
                   '()
                   _L33387_
                   _L33315_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3334433383_))))))
                 (_loop3333933363_ _target3333633357_ '()))
               (_g3333333350_ _g3333433354_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3333333350_ _g3333433354_)))))
                                 (_g3333233422_
                                  (gx#gentemps
                                   (foldr (lambda (_g3342533428_ _g3342633431_)
                                            (cons _g3342533428_ _g3342633431_))
                                          '()
                                          _L33315_)))))
                             _hd3324933283_
                             _tgt3324733309_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3324233289_
                                                     _target3323933273_
                                                     '()))
                                                  (_g3323233256_
                                                   _g3323333260_))))
                                          (_g3323233256_ _g3323333260_)))))
                                (_g3323233256_ _g3323333260_))
                            (_g3323233256_ _g3323333260_))))
                    (_g3323233256_ _g3323333260_)))))
        (_g3323133434_ _stx33229_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx33440_)
      (let* ((___stx4248742488_ _stx33440_)
             (_g3344433502_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4248742488_))))
        (let ((___kont4249042491_
               (lambda (_L33836_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_g3385233855_ _g3385333858_)
                                      (cons _g3385233855_ _g3385333858_))
                                    '()
                                    _L33836_)))))
              (___kont4249442495_
               (lambda (_L33613_ _L33615_ _L33616_)
                 (let* ((_g3363933647_
                         (lambda (_g3364033643_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3364033643_)))
                        (_g3363833767_
                         (lambda (_g3364033651_)
                           ((lambda (_L33654_)
                              (let ()
                                (let* ((_g3366633683_
                                        (lambda (_g3366733679_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3366733679_)))
                                       (_g3366533747_
                                        (lambda (_g3366733687_)
                                          (if (gx#stx-pair/null? _g3366733687_)
                                              (let ((_g43121_
                                                     (gx#syntax-split-splice
                                                      _g3366733687_
                                                      '0)))
                                                (begin
                                                  (let ((_g43122_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g43121_)
                                                               (##vector-length
                                                                _g43121_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g43122_ 2)))
                (error "Context expects 2 values" _g43122_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3366933690_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g43121_
                                                            0)))
                                                        (_tl3367133693_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g43121_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl3367133693_)
                                                        (letrec ((_loop3367233696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3367033700_ _arg3367633703_)
                            (if (gx#stx-pair? _hd3367033700_)
                                (let ((_e3367333706_
                                       (gx#syntax-e _hd3367033700_)))
                                  (let ((_lp-hd3367433710_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3367333706_)))
                                        (_lp-tl3367533713_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3367333706_))))
                                    (_loop3367233696_
                                     _lp-tl3367533713_
                                     (cons _lp-hd3367433710_
                                           _arg3367633703_))))
                                (let ((_arg3367733716_
                                       (reverse _arg3367633703_)))
                                  ((lambda (_L33720_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L33654_
                                                     (foldr (lambda (_g3373833741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3373933744_)
                      (cons _g3373833741_ _g3373933744_))
                    '()
                    _L33720_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3367733716_))))))
                  (_loop3367233696_ _target3366933690_ '()))
                (_g3366633683_ _g3366733687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3366633683_ _g3366733687_)))))
                                  (_g3366533747_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g3375033753_
                                                           _g3375133756_)
                                                    (cons _g3375033753_
                                                          _g3375133756_))
                                                  '()
                                                  _L33616_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g3375833761_
                                                           _g3375933764_)
                                                    (cons _g3375833761_
                                                          _g3375933764_))
                                                  '()
                                                  _L33615_)))))))
                            _g3364033651_))))
                   (_g3363833767_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_g3377033773_ _g3377133776_)
                                          (cons _g3377033773_ _g3377133776_))
                                        '()
                                        _L33613_)))
                     (gx#stx-source _stx33440_)))))))
          (let* ((___match4254242543_
                  (lambda (_e3346733509_
                           _hd3346633513_
                           _tl3346533516_
                           _e3347033519_
                           _hd3346933523_
                           _tl3346833526_
                           ___splice4249642497_
                           _target3347133529_
                           _tl3347333532_)
                    (letrec ((_loop3347433535_
                              (lambda (_hd3347233539_
                                       _expr3347833542_
                                       _param3347933544_)
                                (if (gx#stx-pair? _hd3347233539_)
                                    (let ((_e3347533547_
                                           (gx#syntax-e _hd3347233539_)))
                                      (let ((_lp-tl3347733554_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3347533547_)))
                                            (_lp-hd3347633551_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3347533547_))))
                                        (if (gx#stx-pair? _lp-hd3347633551_)
                                            (let ((_e3348433557_
                                                   (gx#syntax-e
                                                    _lp-hd3347633551_)))
                                              (let ((_tl3348233564_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3348433557_)))
                                                    (_hd3348333561_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3348433557_))))
                                                (if (gx#stx-pair?
                                                     _tl3348233564_)
                                                    (let ((_e3348733567_
                                                           (gx#syntax-e
                                                            _tl3348233564_)))
                                                      (let ((_tl3348533574_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3348733567_)))
                    (_hd3348633571_
                     (let () (declare (not safe)) (##car _e3348733567_))))
                (if (gx#stx-null? _tl3348533574_)
                    (_loop3347433535_
                     _lp-tl3347733554_
                     (cons _hd3348633571_ _expr3347833542_)
                     (cons _hd3348333561_ _param3347933544_))
                    (let () (declare (not safe)) (_g3344433502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3344433502_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3344433502_)))))
                                    (let ((_param3348133580_
                                           (reverse _param3347933544_))
                                          (_expr3348033577_
                                           (reverse _expr3347833542_)))
                                      (if (gx#stx-pair/null? _tl3346833526_)
                                          (let ((___splice4249842499_
                                                 (gx#syntax-split-splice
                                                  _tl3346833526_
                                                  '0)))
                                            (let ((_tl3349033586_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4249842499_
                                                      '1)))
                                                  (_target3348833583_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4249842499_
                                                      '0))))
                                              (if (gx#stx-null? _tl3349033586_)
                                                  (letrec ((_loop3349133589_
                                                            (lambda (_hd3348933593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3349533596_)
                      (if (gx#stx-pair? _hd3348933593_)
                          (let ((_e3349233599_ (gx#syntax-e _hd3348933593_)))
                            (let ((_lp-tl3349433606_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3349233599_)))
                                  (_lp-hd3349333603_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3349233599_))))
                              (_loop3349133589_
                               _lp-tl3349433606_
                               (cons _lp-hd3349333603_ _body3349533596_))))
                          (let ((_body3349633609_ (reverse _body3349533596_)))
                            (___kont4249442495_
                             _body3349633609_
                             _expr3348033577_
                             _param3348133580_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3349133589_
                                                     _target3348833583_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3344433502_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3344433502_))))))))
                      (_loop3347433535_ _target3347133529_ '() '()))))
                 (___match4252242523_
                  (lambda (_e3344933786_
                           _hd3344833790_
                           _tl3344733793_
                           _e3345233796_
                           _hd3345133800_
                           _tl3345033803_
                           ___splice4249242493_
                           _target3345333806_
                           _tl3345533809_)
                    (letrec ((_loop3345633812_
                              (lambda (_hd3345433816_ _body3346033819_)
                                (if (gx#stx-pair? _hd3345433816_)
                                    (let ((_e3345733822_
                                           (gx#syntax-e _hd3345433816_)))
                                      (let ((_lp-tl3345933829_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3345733822_)))
                                            (_lp-hd3345833826_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3345733822_))))
                                        (_loop3345633812_
                                         _lp-tl3345933829_
                                         (cons _lp-hd3345833826_
                                               _body3346033819_))))
                                    (let ((_body3346133832_
                                           (reverse _body3346033819_)))
                                      (___kont4249042491_
                                       _body3346133832_))))))
                      (_loop3345633812_ _target3345333806_ '())))))
            (if (gx#stx-pair? ___stx4248742488_)
                (let ((_e3344933786_ (gx#syntax-e ___stx4248742488_)))
                  (let ((_tl3344733793_
                         (let () (declare (not safe)) (##cdr _e3344933786_)))
                        (_hd3344833790_
                         (let () (declare (not safe)) (##car _e3344933786_))))
                    (if (gx#stx-pair? _tl3344733793_)
                        (let ((_e3345233796_ (gx#syntax-e _tl3344733793_)))
                          (let ((_tl3345033803_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3345233796_)))
                                (_hd3345133800_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3345233796_))))
                            (if (gx#stx-null? _hd3345133800_)
                                (if (gx#stx-pair/null? _tl3345033803_)
                                    (let ((___splice4249242493_
                                           (gx#syntax-split-splice
                                            _tl3345033803_
                                            '0)))
                                      (let ((_tl3345533809_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4249242493_
                                                '1)))
                                            (_target3345333806_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4249242493_
                                                '0))))
                                        (if (gx#stx-null? _tl3345533809_)
                                            (___match4252242523_
                                             _e3344933786_
                                             _hd3344833790_
                                             _tl3344733793_
                                             _e3345233796_
                                             _hd3345133800_
                                             _tl3345033803_
                                             ___splice4249242493_
                                             _target3345333806_
                                             _tl3345533809_)
                                            (if (gx#stx-pair/null?
                                                 _hd3345133800_)
                                                (let ((___splice4249642497_
                                                       (gx#syntax-split-splice
                                                        _hd3345133800_
                                                        '0)))
                                                  (let ((_tl3347333532_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4249642497_
                                                            '1)))
                                                        (_target3347133529_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4249642497_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3347333532_)
                                                        (___match4254242543_
                                                         _e3344933786_
                                                         _hd3344833790_
                                                         _tl3344733793_
                                                         _e3345233796_
                                                         _hd3345133800_
                                                         _tl3345033803_
                                                         ___splice4249642497_
                                                         _target3347133529_
                                                         _tl3347333532_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3344433502_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3344433502_))))))
                                    (if (gx#stx-pair/null? _hd3345133800_)
                                        (let ((___splice4249642497_
                                               (gx#syntax-split-splice
                                                _hd3345133800_
                                                '0)))
                                          (let ((_tl3347333532_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4249642497_
                                                    '1)))
                                                (_target3347133529_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4249642497_
                                                    '0))))
                                            (if (gx#stx-null? _tl3347333532_)
                                                (___match4254242543_
                                                 _e3344933786_
                                                 _hd3344833790_
                                                 _tl3344733793_
                                                 _e3345233796_
                                                 _hd3345133800_
                                                 _tl3345033803_
                                                 ___splice4249642497_
                                                 _target3347133529_
                                                 _tl3347333532_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3344433502_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3344433502_))))
                                (if (gx#stx-pair/null? _hd3345133800_)
                                    (let ((___splice4249642497_
                                           (gx#syntax-split-splice
                                            _hd3345133800_
                                            '0)))
                                      (let ((_tl3347333532_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4249642497_
                                                '1)))
                                            (_target3347133529_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4249642497_
                                                '0))))
                                        (if (gx#stx-null? _tl3347333532_)
                                            (___match4254242543_
                                             _e3344933786_
                                             _hd3344833790_
                                             _tl3344733793_
                                             _e3345233796_
                                             _hd3345133800_
                                             _tl3345033803_
                                             ___splice4249642497_
                                             _target3347133529_
                                             _tl3347333532_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3344433502_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3344433502_))))))
                        (let () (declare (not safe)) (_g3344433502_)))))
                (let () (declare (not safe)) (_g3344433502_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33869_)
      (let* ((_g3387333897_
              (lambda (_g3387433893_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3387433893_)))
             (_g3387233982_
              (lambda (_g3387433901_)
                (if (gx#stx-pair? _g3387433901_)
                    (let ((_e3387933904_ (gx#syntax-e _g3387433901_)))
                      (let ((_hd3387833908_
                             (let ()
                               (declare (not safe))
                               (##car _e3387933904_)))
                            (_tl3387733911_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3387933904_))))
                        (if (gx#stx-pair? _tl3387733911_)
                            (let ((_e3388233914_ (gx#syntax-e _tl3387733911_)))
                              (let ((_hd3388133918_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3388233914_)))
                                    (_tl3388033921_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3388233914_))))
                                (if (gx#stx-pair/null? _tl3388033921_)
                                    (let ((_g43123_
                                           (gx#syntax-split-splice
                                            _tl3388033921_
                                            '0)))
                                      (begin
                                        (let ((_g43124_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g43123_)
                                                     (##vector-length _g43123_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g43124_ 2)))
                                              (error "Context expects 2 values"
                                                     _g43124_)))
                                        (let ((_target3388333924_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g43123_ 0)))
                                              (_tl3388533927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g43123_ 1))))
                                          (if (gx#stx-null? _tl3388533927_)
                                              (letrec ((_loop3388633930_
                                                        (lambda (_hd3388433934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3389033937_)
                  (if (gx#stx-pair? _hd3388433934_)
                      (let ((_e3388733940_ (gx#syntax-e _hd3388433934_)))
                        (let ((_lp-hd3388833944_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3388733940_)))
                              (_lp-tl3388933947_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3388733940_))))
                          (_loop3388633930_
                           _lp-tl3388933947_
                           (cons _lp-hd3388833944_ _body3389033937_))))
                      (let ((_body3389133950_ (reverse _body3389033937_)))
                        ((lambda (_L33954_ _L33956_)
                           (if (gx#identifier? _L33956_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33956_ '())
                                                       (foldr (lambda (_g3397333976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3397433979_)
                        (cons _g3397333976_ _g3397433979_))
                      '()
                      _L33954_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3387333897_ _g3387433901_)))
                         _body3389133950_
                         _hd3388133918_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3388633930_
                                                 _target3388333924_
                                                 '()))
                                              (_g3387333897_ _g3387433901_)))))
                                    (_g3387333897_ _g3387433901_))))
                            (_g3387333897_ _g3387433901_))))
                    (_g3387333897_ _g3387433901_)))))
        (_g3387233982_ _$stx33869_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33987_)
      (let* ((_g3399134015_
              (lambda (_g3399234011_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3399234011_)))
             (_g3399034100_
              (lambda (_g3399234019_)
                (if (gx#stx-pair? _g3399234019_)
                    (let ((_e3399734022_ (gx#syntax-e _g3399234019_)))
                      (let ((_hd3399634026_
                             (let ()
                               (declare (not safe))
                               (##car _e3399734022_)))
                            (_tl3399534029_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3399734022_))))
                        (if (gx#stx-pair? _tl3399534029_)
                            (let ((_e3400034032_ (gx#syntax-e _tl3399534029_)))
                              (let ((_hd3399934036_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3400034032_)))
                                    (_tl3399834039_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3400034032_))))
                                (if (gx#stx-pair/null? _tl3399834039_)
                                    (let ((_g43125_
                                           (gx#syntax-split-splice
                                            _tl3399834039_
                                            '0)))
                                      (begin
                                        (let ((_g43126_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g43125_)
                                                     (##vector-length _g43125_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g43126_ 2)))
                                              (error "Context expects 2 values"
                                                     _g43126_)))
                                        (let ((_target3400134042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g43125_ 0)))
                                              (_tl3400334045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g43125_ 1))))
                                          (if (gx#stx-null? _tl3400334045_)
                                              (letrec ((_loop3400434048_
                                                        (lambda (_hd3400234052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3400834055_)
                  (if (gx#stx-pair? _hd3400234052_)
                      (let ((_e3400534058_ (gx#syntax-e _hd3400234052_)))
                        (let ((_lp-hd3400634062_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3400534058_)))
                              (_lp-tl3400734065_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3400534058_))))
                          (_loop3400434048_
                           _lp-tl3400734065_
                           (cons _lp-hd3400634062_ _body3400834055_))))
                      (let ((_body3400934068_ (reverse _body3400834055_)))
                        ((lambda (_L34072_ _L34074_)
                           (if (gx#identifier? _L34074_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L34074_ '())
                                                       (foldr (lambda (_g3409134094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3409234097_)
                        (cons _g3409134094_ _g3409234097_))
                      '()
                      _L34072_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3399134015_ _g3399234019_)))
                         _body3400934068_
                         _hd3399934036_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3400434048_
                                                 _target3400134042_
                                                 '()))
                                              (_g3399134015_ _g3399234019_)))))
                                    (_g3399134015_ _g3399234019_))))
                            (_g3399134015_ _g3399234019_))))
                    (_g3399134015_ _g3399234019_)))))
        (_g3399034100_ _$stx33987_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx34105_)
      (let* ((_g3410934137_
              (lambda (_g3411034133_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3411034133_)))
             (_g3410834236_
              (lambda (_g3411034141_)
                (if (gx#stx-pair? _g3411034141_)
                    (let ((_e3411634144_ (gx#syntax-e _g3411034141_)))
                      (let ((_hd3411534148_
                             (let ()
                               (declare (not safe))
                               (##car _e3411634144_)))
                            (_tl3411434151_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3411634144_))))
                        (if (gx#stx-pair? _tl3411434151_)
                            (let ((_e3411934154_ (gx#syntax-e _tl3411434151_)))
                              (let ((_hd3411834158_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3411934154_)))
                                    (_tl3411734161_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3411934154_))))
                                (if (gx#stx-pair? _tl3411734161_)
                                    (let ((_e3412234164_
                                           (gx#syntax-e _tl3411734161_)))
                                      (let ((_hd3412134168_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3412234164_)))
                                            (_tl3412034171_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3412234164_))))
                                        (if (gx#stx-pair/null? _tl3412034171_)
                                            (let ((_g43127_
                                                   (gx#syntax-split-splice
                                                    _tl3412034171_
                                                    '0)))
                                              (begin
                                                (let ((_g43128_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g43127_)
                                                             (##vector-length
                                                              _g43127_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g43128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g43128_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3412334174_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g43127_
                                                          0)))
                                                      (_tl3412534177_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g43127_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl3412534177_)
                                                      (letrec ((_loop3412634180_
                                                                (lambda (_hd3412434184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3413034187_)
                          (if (gx#stx-pair? _hd3412434184_)
                              (let ((_e3412734190_
                                     (gx#syntax-e _hd3412434184_)))
                                (let ((_lp-hd3412834194_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3412734190_)))
                                      (_lp-tl3412934197_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3412734190_))))
                                  (_loop3412634180_
                                   _lp-tl3412934197_
                                   (cons _lp-hd3412834194_ _rest3413034187_))))
                              (let ((_rest3413134200_
                                     (reverse _rest3413034187_)))
                                ((lambda (_L34204_ _L34206_ _L34207_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L34207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L34206_
                               (foldr (lambda (_g3422734230_ _g3422834233_)
                                        (cons _g3422734230_ _g3422834233_))
                                      '()
                                      _L34204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3413134200_
                                 _hd3412134168_
                                 _hd3411834158_))))))
                (_loop3412634180_ _target3412334174_ '()))
              (_g3410934137_ _g3411034141_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3410934137_ _g3411034141_))))
                                    (_g3410934137_ _g3411034141_))))
                            (_g3410934137_ _g3411034141_))))
                    (_g3410934137_ _g3411034141_)))))
        (_g3410834236_ _$stx34105_))))
  (define |gerbil/core$<more-sugar>[:0:]#@bytes|
    (lambda (_stx34241_)
      (let* ((_g3424434258_
              (lambda (_g3424534254_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3424534254_)))
             (_g3424334330_
              (lambda (_g3424534262_)
                (if (gx#stx-pair? _g3424534262_)
                    (let ((_e3424934265_ (gx#syntax-e _g3424534262_)))
                      (let ((_hd3424834269_
                             (let ()
                               (declare (not safe))
                               (##car _e3424934265_)))
                            (_tl3424734272_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3424934265_))))
                        (if (gx#stx-pair? _tl3424734272_)
                            (let ((_e3425234275_ (gx#syntax-e _tl3424734272_)))
                              (let ((_hd3425134279_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3425234275_)))
                                    (_tl3425034282_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3425234275_))))
                                (if (gx#stx-null? _tl3425034282_)
                                    ((lambda (_L34285_)
                                       (if (gx#stx-string? _L34285_)
                                           (let* ((_g3429934307_
                                                   (lambda (_g3430034303_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g3430034303_)))
                                                  (_g3429834326_
                                                   (lambda (_g3430034311_)
                                                     ((lambda (_L34314_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L34314_ '()))))
              _g3430034311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3429834326_
                                              (string->bytes
                                               (gx#stx-e _L34285_))))
                                           (_g3424434258_ _g3424534262_)))
                                     _hd3425134279_)
                                    (_g3424434258_ _g3424534262_))))
                            (_g3424434258_ _g3424534262_))))
                    (_g3424434258_ _g3424534262_)))))
        (_g3424334330_ _stx34241_)))))
