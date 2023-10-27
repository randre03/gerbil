(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17790_ _struct?17792_)
      (letrec ((_wrap17794_
                (lambda (_e-stx19395_)
                  (gx#stx-wrap-source
                   _e-stx19395_
                   (gx#stx-source _stx17790_))))
               (_slotify17796_
                (lambda (_field19260_ _off19262_)
                  (let* ((___stx3970339704_ _field19260_)
                         (_g1926519292_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3970339704_))))
                    (let ((___kont3970639707_
                           (lambda (_L19376_ _L19378_)
                             (cons _off19262_
                                   (cons _L19378_ (cons _L19376_ '())))))
                          (___kont3970839709_
                           (lambda (_L19329_ _L19331_ _L19332_)
                             (cons _off19262_
                                   (cons _L19331_ (cons _L19329_ '()))))))
                      (if (gx#stx-pair? ___stx3970339704_)
                          (let ((_e1927119356_
                                 (gx#syntax-e ___stx3970339704_)))
                            (let ((_tl1926919363_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1927119356_)))
                                  (_hd1927019360_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1927119356_))))
                              (if (gx#stx-pair? _tl1926919363_)
                                  (let ((_e1927419366_
                                         (gx#syntax-e _tl1926919363_)))
                                    (let ((_tl1927219373_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1927419366_)))
                                          (_hd1927319370_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1927419366_))))
                                      (if (gx#stx-null? _tl1927219373_)
                                          (___kont3970639707_
                                           _hd1927319370_
                                           _hd1927019360_)
                                          (if (gx#stx-pair? _tl1927219373_)
                                              (let ((_e1928619319_
                                                     (gx#syntax-e
                                                      _tl1927219373_)))
                                                (let ((_tl1928419326_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1928619319_)))
                                                      (_hd1928519323_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1928619319_))))
                                                  (if (gx#stx-null?
                                                       _tl1928419326_)
                                                      (___kont3970839709_
                                                       _hd1928519323_
                                                       _hd1927319370_
                                                       _hd1927019360_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1926519292_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1926519292_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1926519292_)))))
                          (let () (declare (not safe)) (_g1926519292_)))))))
               (_field-id17797_
                (lambda (_field19126_)
                  (let* ((___stx3974739748_ _field19126_)
                         (_g1913019157_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3974739748_))))
                    (let ((___kont3975039751_ (lambda (_L19241_ _L19243_) ':))
                          (___kont3975239753_
                           (lambda (_L19194_ _L19196_ _L19197_) _L19197_)))
                      (if (gx#stx-pair? ___stx3974739748_)
                          (let ((_e1913619221_
                                 (gx#syntax-e ___stx3974739748_)))
                            (let ((_tl1913419228_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1913619221_)))
                                  (_hd1913519225_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1913619221_))))
                              (if (gx#stx-pair? _tl1913419228_)
                                  (let ((_e1913919231_
                                         (gx#syntax-e _tl1913419228_)))
                                    (let ((_tl1913719238_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1913919231_)))
                                          (_hd1913819235_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1913919231_))))
                                      (if (gx#stx-null? _tl1913719238_)
                                          (___kont3975039751_
                                           _hd1913819235_
                                           _hd1913519225_)
                                          (if (gx#stx-pair? _tl1913719238_)
                                              (let ((_e1915119184_
                                                     (gx#syntax-e
                                                      _tl1913719238_)))
                                                (let ((_tl1914919191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1915119184_)))
                                                      (_hd1915019188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1915119184_))))
                                                  (if (gx#stx-null?
                                                       _tl1914919191_)
                                                      (___kont3975239753_
                                                       _hd1915019188_
                                                       _hd1913819235_
                                                       _hd1913519225_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1913019157_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1913019157_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1913019157_)))))
                          (let () (declare (not safe)) (_g1913019157_)))))))
               (_struct-opt?17798_
                (lambda (_key19123_)
                  (memq (gx#stx-e _key19123_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17799_
                (lambda (_key19120_)
                  (memq (gx#stx-e _key19120_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17800_
                (lambda (_type-t19107_)
                  (let ((_$e19110_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e19110_
                        ((lambda (_ns19114_)
                           (gx#stx-identifier
                            _type-t19107_
                            _ns19114_
                            '"#"
                            _type-t19107_))
                         _$e19110_)
                        (let ((_mid19117_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t19107_
                           _mid19117_
                           '"#"
                           _type-t19107_)))))))
        (let* ((_g1780217829_
                (lambda (_g1780317825_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1780317825_)))
               (_g1780119103_
                (lambda (_g1780317833_)
                  (if (gx#stx-pair? _g1780317833_)
                      (let ((_e1781117836_ (gx#syntax-e _g1780317833_)))
                        (let ((_hd1781017840_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1781117836_)))
                              (_tl1780917843_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1781117836_))))
                          (if (gx#stx-pair? _tl1780917843_)
                              (let ((_e1781417846_
                                     (gx#syntax-e _tl1780917843_)))
                                (let ((_hd1781317850_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1781417846_)))
                                      (_tl1781217853_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1781417846_))))
                                  (if (gx#stx-pair? _tl1781217853_)
                                      (let ((_e1781717856_
                                             (gx#syntax-e _tl1781217853_)))
                                        (let ((_hd1781617860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1781717856_)))
                                              (_tl1781517863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1781717856_))))
                                          (if (gx#stx-pair? _tl1781517863_)
                                              (let ((_e1782017866_
                                                     (gx#syntax-e
                                                      _tl1781517863_)))
                                                (let ((_hd1781917870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1782017866_)))
                                                      (_tl1781817873_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1782017866_))))
                                                  (if (gx#stx-pair?
                                                       _tl1781817873_)
                                                      (let ((_e1782317876_
                                                             (gx#syntax-e
                                                              _tl1781817873_)))
                                                        (let ((_hd1782217880_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1782317876_)))
                      (_tl1782117883_
                       (let () (declare (not safe)) (##cdr _e1782317876_))))
                  ((lambda (_L17886_ _L17888_ _L17889_ _L17890_ _L17891_)
                     (if (and (gx#identifier? _L17891_)
                              (or (gx#identifier? _L17889_)
                                  (gx#stx-false? _L17889_))
                              (gx#identifier? _L17888_)
                              (gx#stx-plist?
                               _L17886_
                               (if _struct?17792_
                                   _struct-opt?17798_
                                   _class-opt?17799_)))
                         (let* ((_els17925_
                                 (let ((_$e17921_
                                        (gx#stx-getq
                                         (if _struct?17792_ 'fields: 'slots:)
                                         _L17886_)))
                                   (if _$e17921_ _$e17921_ '())))
                                (_g1792817959_
                                 (lambda (_g1792917955_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1792917955_)))
                                (_g1792719099_
                                 (lambda (_g1792917963_)
                                   (if (gx#stx-pair? _g1792917963_)
                                       (let ((_e1793817966_
                                              (gx#syntax-e _g1792917963_)))
                                         (let ((_hd1793717970_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e1793817966_)))
                                               (_tl1793617973_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e1793817966_))))
                                           (if (gx#stx-pair? _tl1793617973_)
                                               (let ((_e1794117976_
                                                      (gx#syntax-e
                                                       _tl1793617973_)))
                                                 (let ((_hd1794017980_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1794117976_)))
                                                       (_tl1793917983_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1794117976_))))
                                                   (if (gx#stx-pair?
                                                        _tl1793917983_)
                                                       (let ((_e1794417986_
                                                              (gx#syntax-e
                                                               _tl1793917983_)))
                                                         (let ((_hd1794317990_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1794417986_)))
                       (_tl1794217993_
                        (let () (declare (not safe)) (##cdr _e1794417986_))))
                   (if (gx#stx-pair? _tl1794217993_)
                       (let ((_e1794717996_ (gx#syntax-e _tl1794217993_)))
                         (let ((_hd1794618000_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1794717996_)))
                               (_tl1794518003_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1794717996_))))
                           (if (gx#stx-pair? _tl1794518003_)
                               (let ((_e1795018006_
                                      (gx#syntax-e _tl1794518003_)))
                                 (let ((_hd1794918010_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e1795018006_)))
                                       (_tl1794818013_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e1795018006_))))
                                   (if (gx#stx-pair? _tl1794818013_)
                                       (let ((_e1795318016_
                                              (gx#syntax-e _tl1794818013_)))
                                         (let ((_hd1795218020_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e1795318016_)))
                                               (_tl1795118023_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e1795318016_))))
                                           (if (gx#stx-null? _tl1795118023_)
                                               ((lambda (_L18026_
                                                         _L18028_
                                                         _L18029_
                                                         _L18030_
                                                         _L18031_
                                                         _L18032_)
                                                  (let ()
                                                    (let* ((_g1806118069_
                                                            (lambda (_g1806218065_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1806218065_)))
                                                           (_g1806019091_
                                                            (lambda (_g1806218073_)
                                                              ((lambda (_L18076_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1808918097_
                                   (lambda (_g1809018093_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1809018093_)))
                                  (_g1808819083_
                                   (lambda (_g1809018101_)
                                     ((lambda (_L18104_)
                                        (let ()
                                          (let* ((_g1811718125_
                                                  (lambda (_g1811818121_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1811818121_)))
                                                 (_g1811619075_
                                                  (lambda (_g1811818129_)
                                                    ((lambda (_L18132_)
                                                       (let ()
                                                         (let* ((_g1814518153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1814618149_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1814618149_)))
                        (_g1814419071_
                         (lambda (_g1814618157_)
                           ((lambda (_L18160_)
                              (let ()
                                (let* ((_g1817318181_
                                        (lambda (_g1817418177_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1817418177_)))
                                       (_g1817218787_
                                        (lambda (_g1817418185_)
                                          ((lambda (_L18188_)
                                             (let ()
                                               (let* ((_g1820118209_
                                                       (lambda (_g1820218205_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1820218205_)))
                                                      (_g1820018783_
                                                       (lambda (_g1820218213_)
                                                         ((lambda (_L18216_)
                                                            (let ()
                                                              (let* ((_g1822918237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1823018233_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1823018233_)))
                             (_g1822818779_
                              (lambda (_g1823018241_)
                                ((lambda (_L18244_)
                                   (let ()
                                     (let* ((_g1825718265_
                                             (lambda (_g1825818261_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1825818261_)))
                                            (_g1825618775_
                                             (lambda (_g1825818269_)
                                               ((lambda (_L18272_)
                                                  (let ()
                                                    (let* ((_attrs18285_
                                                            (if _struct?17792_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17796_
                         _els17925_
                         (iota (gx#stx-length _els17925_)))
                        _els17925_))
                   (_g1828818314_
                    (lambda (_g1828918310_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1828918310_)))
                   (_g1828718687_
                    (lambda (_g1828918318_)
                      (if (gx#stx-pair/null? _g1828918318_)
                          (let ((_g42904_
                                 (gx#syntax-split-splice _g1828918318_ '0)))
                            (begin
                              (let ((_g42905_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g42904_)
                                           (##vector-length _g42904_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g42905_ 2)))
                                    (error "Context expects 2 values"
                                           _g42905_)))
                              (let ((_target1829218321_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42904_ 0)))
                                    (_tl1829418324_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42904_ 1))))
                                (if (gx#stx-null? _tl1829418324_)
                                    (letrec ((_loop1829518327_
                                              (lambda (_hd1829318331_
                                                       _def-setf1829918334_
                                                       _def-getf1830018336_)
                                                (if (gx#stx-pair?
                                                     _hd1829318331_)
                                                    (let ((_e1829618339_
                                                           (gx#syntax-e
                                                            _hd1829318331_)))
                                                      (let ((_lp-hd1829718343_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1829618339_)))
                    (_lp-tl1829818346_
                     (let () (declare (not safe)) (##cdr _e1829618339_))))
                (if (gx#stx-pair? _lp-hd1829718343_)
                    (let ((_e1830518349_ (gx#syntax-e _lp-hd1829718343_)))
                      (let ((_hd1830418353_
                             (let ()
                               (declare (not safe))
                               (##car _e1830518349_)))
                            (_tl1830318356_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1830518349_))))
                        (if (gx#stx-pair? _tl1830318356_)
                            (let ((_e1830818359_ (gx#syntax-e _tl1830318356_)))
                              (let ((_hd1830718363_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1830818359_)))
                                    (_tl1830618366_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1830818359_))))
                                (if (gx#stx-null? _tl1830618366_)
                                    (let ((__tmp42916
                                           (cons _hd1830718363_
                                                 _def-setf1829918334_))
                                          (__tmp42915
                                           (cons _hd1830418353_
                                                 _def-getf1830018336_)))
                                      (declare (not safe))
                                      (_loop1829518327_
                                       _lp-tl1829818346_
                                       __tmp42916
                                       __tmp42915))
                                    (let ()
                                      (declare (not safe))
                                      (_g1828818314_ _g1828918318_)))))
                            (let ()
                              (declare (not safe))
                              (_g1828818314_ _g1828918318_)))))
                    (let ()
                      (declare (not safe))
                      (_g1828818314_ _g1828918318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_def-setf1830118369_
                                                           (reverse _def-setf1829918334_))
                                                          (_def-getf1830218372_
                                                           (reverse _def-getf1830018336_)))
                                                      ((lambda (_L18375_
                                                                _L18377_)
                                                         (let ()
                                                           (let* ((_g1839518421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1839618417_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1839618417_)))
                          (_g1839418535_
                           (lambda (_g1839618425_)
                             (if (gx#stx-pair/null? _g1839618425_)
                                 (let ((_g42906_
                                        (gx#syntax-split-splice
                                         _g1839618425_
                                         '0)))
                                   (begin
                                     (let ((_g42907_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g42906_)
                                                  (##vector-length _g42906_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g42907_ 2)))
                                           (error "Context expects 2 values"
                                                  _g42907_)))
                                     (let ((_target1839918428_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g42906_ 0)))
                                           (_tl1840118431_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g42906_ 1))))
                                       (if (gx#stx-null? _tl1840118431_)
                                           (letrec ((_loop1840218434_
                                                     (lambda (_hd1840018438_
                                                              _def-usetf1840618441_
                                                              _def-ugetf1840718443_)
                                                       (if (gx#stx-pair?
                                                            _hd1840018438_)
                                                           (let ((_e1840318446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1840018438_)))
                     (let ((_lp-hd1840418450_
                            (let ()
                              (declare (not safe))
                              (##car _e1840318446_)))
                           (_lp-tl1840518453_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1840318446_))))
                       (if (gx#stx-pair? _lp-hd1840418450_)
                           (let ((_e1841218456_
                                  (gx#syntax-e _lp-hd1840418450_)))
                             (let ((_hd1841118460_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1841218456_)))
                                   (_tl1841018463_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1841218456_))))
                               (if (gx#stx-pair? _tl1841018463_)
                                   (let ((_e1841518466_
                                          (gx#syntax-e _tl1841018463_)))
                                     (let ((_hd1841418470_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1841518466_)))
                                           (_tl1841318473_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1841518466_))))
                                       (if (gx#stx-null? _tl1841318473_)
                                           (let ((__tmp42910
                                                  (cons _hd1841418470_
                                                        _def-usetf1840618441_))
                                                 (__tmp42909
                                                  (cons _hd1841118460_
                                                        _def-ugetf1840718443_)))
                                             (declare (not safe))
                                             (_loop1840218434_
                                              _lp-tl1840518453_
                                              __tmp42910
                                              __tmp42909))
                                           (let ()
                                             (declare (not safe))
                                             (_g1839518421_ _g1839618425_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1839518421_ _g1839618425_)))))
                           (let ()
                             (declare (not safe))
                             (_g1839518421_ _g1839618425_)))))
                   (let ((_def-usetf1840818476_
                          (reverse _def-usetf1840618441_))
                         (_def-ugetf1840918479_
                          (reverse _def-ugetf1840718443_)))
                     ((lambda (_L18482_ _L18484_)
                        (let ()
                          (let ()
                            (let ((__tmp42908
                                   (cons (gx#datum->syntax '#f 'begin)
                                         (cons _L18216_
                                               (cons _L18272_
                                                     (cons _L18244_
                                                           (foldr (lambda (_g1850218511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1850318514_)
                            (cons _g1850218511_ _g1850318514_))
                          (foldr (lambda (_g1850418517_ _g1850518520_)
                                   (cons _g1850418517_ _g1850518520_))
                                 (foldr (lambda (_g1850618523_ _g1850718526_)
                                          (cons _g1850618523_ _g1850718526_))
                                        (foldr (lambda (_g1850818529_
                                                        _g1850918532_)
                                                 (cons _g1850818529_
                                                       _g1850918532_))
                                               '()
                                               _L18482_)
                                        _L18484_)
                                 _L18375_)
                          _L18377_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (_wrap17794_ __tmp42908)))))
                      _def-usetf1840818476_
                      _def-ugetf1840918479_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop1840218434_
                                                _target1839918428_
                                                '()
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g1839518421_ _g1839618425_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g1839518421_ _g1839618425_)))))
                          (__tmp42911
                           (if (gx#stx-e (gx#stx-getq 'unchecked: _L17886_))
                               (gx#stx-map
                                (lambda (_ref18539_)
                                  (let* ((_g1854218561_
                                          (lambda (_g1854318557_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1854318557_)))
                                         (_g1854118683_
                                          (lambda (_g1854318565_)
                                            (if (gx#stx-pair? _g1854318565_)
                                                (let ((_e1854918568_
                                                       (gx#syntax-e
                                                        _g1854318565_)))
                                                  (let ((_hd1854818572_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1854918568_)))
                                                        (_tl1854718575_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1854918568_))))
                                                    (if (gx#stx-pair?
                                                         _tl1854718575_)
                                                        (let ((_e1855218578_
                                                               (gx#syntax-e
                                                                _tl1854718575_)))
                                                          (let ((_hd1855118582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1855218578_)))
                        (_tl1855018585_
                         (let () (declare (not safe)) (##cdr _e1855218578_))))
                    (if (gx#stx-pair? _tl1855018585_)
                        (let ((_e1855518588_ (gx#syntax-e _tl1855018585_)))
                          (let ((_hd1855418592_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1855518588_)))
                                (_tl1855318595_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1855518588_))))
                            (if (gx#stx-null? _tl1855318595_)
                                ((lambda (_L18598_ _L18600_ _L18601_)
                                   (let* ((_g1861918634_
                                           (lambda (_g1862018630_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1862018630_)))
                                          (_g1861818679_
                                           (lambda (_g1862018638_)
                                             (if (gx#stx-pair? _g1862018638_)
                                                 (let ((_e1862518641_
                                                        (gx#syntax-e
                                                         _g1862018638_)))
                                                   (let ((_hd1862418645_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1862518641_)))
                                                         (_tl1862318648_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1862518641_))))
                                                     (if (gx#stx-pair?
                                                          _tl1862318648_)
                                                         (let ((_e1862818651_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1862318648_)))
                   (let ((_hd1862718655_
                          (let () (declare (not safe)) (##car _e1862818651_)))
                         (_tl1862618658_
                          (let () (declare (not safe)) (##cdr _e1862818651_))))
                     (if (gx#stx-null? _tl1862618658_)
                         ((lambda (_L18661_ _L18663_)
                            (let ()
                              (cons (let ((__tmp42912
                                           (cons (gx#datum->syntax '#f 'def)
                                                 (cons _L18663_
                                                       (cons (cons _L18028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L17891_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L18601_ '()))
                                       '())))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (_wrap17794_ __tmp42912))
                                    (cons (let ((__tmp42913
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons _L18661_
                                                             (cons (cons _L18026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L17891_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L18601_ '()))
                                             '())))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_wrap17794_ __tmp42913))
                                          '()))))
                          _hd1862718655_
                          _hd1862418645_)
                         (let ()
                           (declare (not safe))
                           (_g1861918634_ _g1862018638_)))))
                 (let () (declare (not safe)) (_g1861918634_ _g1862018638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g1861918634_
                                                    _g1862018638_)))))
                                          (__tmp42914
                                           (list (gx#stx-identifier
                                                  _L18600_
                                                  '"&"
                                                  _L18600_)
                                                 (gx#stx-identifier
                                                  _L18598_
                                                  '"&"
                                                  _L18598_))))
                                     (declare (not safe))
                                     (_g1861818679_ __tmp42914)))
                                 _hd1855418592_
                                 _hd1855118582_
                                 _hd1854818572_)
                                (let ()
                                  (declare (not safe))
                                  (_g1854218561_ _g1854318565_)))))
                        (let ()
                          (declare (not safe))
                          (_g1854218561_ _g1854318565_)))))
                (let () (declare (not safe)) (_g1854218561_ _g1854318565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1854218561_
                                                   _g1854318565_))))))
                                    (declare (not safe))
                                    (_g1854118683_ _ref18539_)))
                                _attrs18285_)
                               '())))
                     (declare (not safe))
                     (_g1839418535_ __tmp42911))))
               _def-setf1830118369_
               _def-getf1830218372_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop1829518327_
                                         _target1829218321_
                                         '()
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g1828818314_ _g1828918318_))))))
                          (let ()
                            (declare (not safe))
                            (_g1828818314_ _g1828918318_)))))
                   (__tmp42917
                    (gx#stx-map
                     (lambda (_ref18691_)
                       (let* ((_g1869418713_
                               (lambda (_g1869518709_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1869518709_)))
                              (_g1869318771_
                               (lambda (_g1869518717_)
                                 (if (gx#stx-pair? _g1869518717_)
                                     (let ((_e1870118720_
                                            (gx#syntax-e _g1869518717_)))
                                       (let ((_hd1870018724_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1870118720_)))
                                             (_tl1869918727_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1870118720_))))
                                         (if (gx#stx-pair? _tl1869918727_)
                                             (let ((_e1870418730_
                                                    (gx#syntax-e
                                                     _tl1869918727_)))
                                               (let ((_hd1870318734_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1870418730_)))
                                                     (_tl1870218737_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1870418730_))))
                                                 (if (gx#stx-pair?
                                                      _tl1870218737_)
                                                     (let ((_e1870718740_
                                                            (gx#syntax-e
                                                             _tl1870218737_)))
                                                       (let ((_hd1870618744_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1870718740_)))
                     (_tl1870518747_
                      (let () (declare (not safe)) (##cdr _e1870718740_))))
                 (if (gx#stx-null? _tl1870518747_)
                     ((lambda (_L18750_ _L18752_ _L18753_)
                        (cons (let ((__tmp42918
                                     (cons (gx#datum->syntax '#f 'def)
                                           (cons _L18752_
                                                 (cons (cons _L18030_
                                                             (cons _L17891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L18753_ '()))
                                 '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_wrap17794_ __tmp42918))
                              (cons (let ((__tmp42919
                                           (cons (gx#datum->syntax '#f 'def)
                                                 (cons _L18750_
                                                       (cons (cons _L18029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L17891_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L18753_ '()))
                                       '())))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (_wrap17794_ __tmp42919))
                                    '())))
                      _hd1870618744_
                      _hd1870318734_
                      _hd1870018724_)
                     (let ()
                       (declare (not safe))
                       (_g1869418713_ _g1869518717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1869418713_
                                                        _g1869518717_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g1869418713_
                                                _g1869518717_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g1869418713_ _g1869518717_))))))
                         (declare (not safe))
                         (_g1869318771_ _ref18691_)))
                     _attrs18285_)))
              (declare (not safe))
              (_g1828718687_ __tmp42917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1825818269_)))
                                            (__tmp42920
                                             (let ((__tmp42921
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L17888_
                                                                (cons (cons _L18031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _L17891_ '()))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_wrap17794_ __tmp42921))))
                                       (declare (not safe))
                                       (_g1825618775_ __tmp42920))))
                                 _g1823018241_)))
                             (__tmp42922
                              (if (gx#stx-false? _L17889_)
                                  (cons (gx#datum->syntax '#f 'begin) '())
                                  (let ((__tmp42923
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _L17889_
                                                           (gx#datum->syntax
                                                            '#f
                                                            '$args))
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'apply)
                         (cons _L18032_
                               (cons _L17891_
                                     (cons (gx#datum->syntax '#f '$args)
                                           '()))))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (_wrap17794_ __tmp42923)))))
                        (declare (not safe))
                        (_g1822818779_ __tmp42922))))
                  _g1820218213_)))
              (__tmp42924
               (let ((__tmp42925
                      (cons (gx#datum->syntax '#f 'def)
                            (cons _L17891_ (cons _L18188_ '())))))
                 (declare (not safe))
                 (_wrap17794_ __tmp42925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1820018783_ __tmp42924))))
                                           _g1817418185_)))
                                       (__tmp42926
                                        (if _struct?17792_
                                            (let* ((_g1879118815_
                                                    (lambda (_g1879218811_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1879218811_)))
                                                   (_g1879018902_
                                                    (lambda (_g1879218819_)
                                                      (if (gx#stx-pair?
                                                           _g1879218819_)
                                                          (let ((_e1879718822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g1879218819_)))
                    (let ((_hd1879618826_
                           (let () (declare (not safe)) (##car _e1879718822_)))
                          (_tl1879518829_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1879718822_))))
                      (if (gx#stx-pair? _tl1879518829_)
                          (let ((_e1880018832_ (gx#syntax-e _tl1879518829_)))
                            (let ((_hd1879918836_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1880018832_)))
                                  (_tl1879818839_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1880018832_))))
                              (if (gx#stx-pair/null? _hd1879918836_)
                                  (let ((_g42934_
                                         (gx#syntax-split-splice
                                          _hd1879918836_
                                          '0)))
                                    (begin
                                      (let ((_g42935_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42934_)
                                                   (##vector-length _g42934_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42935_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42935_)))
                                      (let ((_target1880118842_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42934_ 0)))
                                            (_tl1880318845_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42934_ 1))))
                                        (if (gx#stx-null? _tl1880318845_)
                                            (letrec ((_loop1880418848_
                                                      (lambda (_hd1880218852_
                                                               _field-id1880818855_)
                                                        (if (gx#stx-pair?
                                                             _hd1880218852_)
                                                            (let ((_e1880518858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1880218852_)))
                      (let ((_lp-hd1880618862_
                             (let ()
                               (declare (not safe))
                               (##car _e1880518858_)))
                            (_lp-tl1880718865_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1880518858_))))
                        (let ((__tmp42936
                               (cons _lp-hd1880618862_ _field-id1880818855_)))
                          (declare (not safe))
                          (_loop1880418848_ _lp-tl1880718865_ __tmp42936))))
                    (let ((_field-id1880918868_
                           (reverse _field-id1880818855_)))
                      (if (gx#stx-null? _tl1879818839_)
                          ((lambda (_L18872_ _L18874_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'make-struct-type)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L18076_ '()))
                                           (cons _L17890_
                                                 (cons _L18874_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _L18104_ '()))
                     (cons _L18132_
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L18160_ '()))
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons (foldr (lambda (_g1889318896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1889418899_)
                    (cons _g1889318896_ _g1889418899_))
                  '()
                  _L18872_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _field-id1880918868_
                           _hd1879618826_)
                          (let ()
                            (declare (not safe))
                            (_g1879118815_ _g1879218819_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1880418848_
                                                 _target1880118842_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g1879118815_
                                               _g1879218819_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1879118815_ _g1879218819_)))))
                          (let ()
                            (declare (not safe))
                            (_g1879118815_ _g1879218819_)))))
                  (let ()
                    (declare (not safe))
                    (_g1879118815_ _g1879218819_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp42937
                                                    (list (gx#stx-length
                                                           _els17925_)
                                                          (gx#stx-map
                                                           _field-id17797_
                                                           _els17925_))))
                                              (declare (not safe))
                                              (_g1879018902_ __tmp42937))
                                            (let* ((_g1890618939_
                                                    (lambda (_g1890718935_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1890718935_)))
                                                   (_g1890519067_
                                                    (lambda (_g1890718943_)
                                                      (if (gx#stx-pair?
                                                           _g1890718943_)
                                                          (let ((_e1891218946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g1890718943_)))
                    (let ((_hd1891118950_
                           (let () (declare (not safe)) (##car _e1891218946_)))
                          (_tl1891018953_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1891218946_))))
                      (if (gx#stx-pair/null? _hd1891118950_)
                          (let ((_g42927_
                                 (gx#syntax-split-splice _hd1891118950_ '0)))
                            (begin
                              (let ((_g42928_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g42927_)
                                           (##vector-length _g42927_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g42928_ 2)))
                                    (error "Context expects 2 values"
                                           _g42928_)))
                              (let ((_target1891318956_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42927_ 0)))
                                    (_tl1891518959_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42927_ 1))))
                                (if (gx#stx-null? _tl1891518959_)
                                    (letrec ((_loop1891618962_
                                              (lambda (_hd1891418966_
                                                       _super1892018969_)
                                                (if (gx#stx-pair?
                                                     _hd1891418966_)
                                                    (let ((_e1891718972_
                                                           (gx#syntax-e
                                                            _hd1891418966_)))
                                                      (let ((_lp-hd1891818976_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1891718972_)))
                    (_lp-tl1891918979_
                     (let () (declare (not safe)) (##cdr _e1891718972_))))
                (let ((__tmp42932 (cons _lp-hd1891818976_ _super1892018969_)))
                  (declare (not safe))
                  (_loop1891618962_ _lp-tl1891918979_ __tmp42932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_super1892118982_
                                                           (reverse _super1892018969_)))
                                                      (if (gx#stx-pair?
                                                           _tl1891018953_)
                                                          (let ((_e1892418986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1891018953_)))
                    (let ((_hd1892318990_
                           (let () (declare (not safe)) (##car _e1892418986_)))
                          (_tl1892218993_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1892418986_))))
                      (if (gx#stx-pair/null? _hd1892318990_)
                          (let ((_g42929_
                                 (gx#syntax-split-splice _hd1892318990_ '0)))
                            (begin
                              (let ((_g42930_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g42929_)
                                           (##vector-length _g42929_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g42930_ 2)))
                                    (error "Context expects 2 values"
                                           _g42930_)))
                              (let ((_target1892518996_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42929_ 0)))
                                    (_tl1892718999_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42929_ 1))))
                                (if (gx#stx-null? _tl1892718999_)
                                    (letrec ((_loop1892819002_
                                              (lambda (_hd1892619006_
                                                       _slot1893219009_)
                                                (if (gx#stx-pair?
                                                     _hd1892619006_)
                                                    (let ((_e1892919012_
                                                           (gx#syntax-e
                                                            _hd1892619006_)))
                                                      (let ((_lp-hd1893019016_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1892919012_)))
                    (_lp-tl1893119019_
                     (let () (declare (not safe)) (##cdr _e1892919012_))))
                (let ((__tmp42931 (cons _lp-hd1893019016_ _slot1893219009_)))
                  (declare (not safe))
                  (_loop1892819002_ _lp-tl1893119019_ __tmp42931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_slot1893319022_
                                                           (reverse _slot1893219009_)))
                                                      (if (gx#stx-null?
                                                           _tl1892218993_)
                                                          ((lambda (_L19026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19028_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'make-class-type)
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L18076_ '()))
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (foldr (lambda (_g1905219055_
                                                               _g1905319058_)
                                                        (cons _g1905219055_
                                                              _g1905319058_))
                                                      '()
                                                      _L19028_))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons (foldr (lambda (_g1905019061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1905119064_)
                            (cons _g1905019061_ _g1905119064_))
                          '()
                          _L19026_)
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L18104_ '()))
                                                     (cons _L18132_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L18160_ '()))
                         '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                   _slot1893319022_
                   _super1892118982_)
                  (let ()
                    (declare (not safe))
                    (_g1890618939_ _g1890718943_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop1892819002_
                                         _target1892518996_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g1890618939_ _g1890718943_))))))
                          (let ()
                            (declare (not safe))
                            (_g1890618939_ _g1890718943_)))))
                  (let ()
                    (declare (not safe))
                    (_g1890618939_ _g1890718943_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop1891618962_
                                         _target1891318956_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g1890618939_ _g1890718943_))))))
                          (let ()
                            (declare (not safe))
                            (_g1890618939_ _g1890718943_)))))
                  (let ()
                    (declare (not safe))
                    (_g1890618939_ _g1890718943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp42933
                                                    (list _L17890_
                                                          (gx#stx-map
                                                           gx#stx-car
                                                           _els17925_))))
                                              (declare (not safe))
                                              (_g1890519067_ __tmp42933)))))
                                  (declare (not safe))
                                  (_g1817218787_ __tmp42926))))
                            _g1814618157_)))
                        (__tmp42938 (gx#stx-getq 'constructor: _L17886_)))
                   (declare (not safe))
                   (_g1814419071_ __tmp42938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1811818129_)))
                                                 (__tmp42939
                                                  (let ((_$e19079_
                                                         (gx#stx-getq
                                                          'plist:
                                                          _L17886_)))
                                                    (if _$e19079_
                                                        _$e19079_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '@list)
                                                              '())))))
                                            (declare (not safe))
                                            (_g1811619075_ __tmp42939))))
                                      _g1809018101_)))
                                  (__tmp42940
                                   (let ((_$e19087_
                                          (gx#stx-getq 'name: _L17886_)))
                                     (if _$e19087_ _$e19087_ _L17891_))))
                             (declare (not safe))
                             (_g1808819083_ __tmp42940))))
                       _g1806218073_)))
                   (__tmp42941
                    (let ((_$e19095_ (gx#stx-getq 'id: _L17886_)))
                      (if _$e19095_
                          _$e19095_
                          (if (gx#module-context?
                               (gx#current-expander-context))
                              (let ()
                                (declare (not safe))
                                (_module-type-id17800_ _L17891_))
                              (gx#genident _L17891_))))))
              (declare (not safe))
              (_g1806019091_ __tmp42941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1795218020_
                                                _hd1794918010_
                                                _hd1794618000_
                                                _hd1794317990_
                                                _hd1794017980_
                                                _hd1793717970_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1792817959_
                                                  _g1792917963_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1792817959_ _g1792917963_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g1792817959_ _g1792917963_)))))
                       (let ()
                         (declare (not safe))
                         (_g1792817959_ _g1792917963_)))))
               (let () (declare (not safe)) (_g1792817959_ _g1792917963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1792817959_
                                                  _g1792917963_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1792817959_ _g1792917963_)))))
                                (__tmp42942
                                 (if _struct?17792_
                                     (cons (gx#datum->syntax
                                            '#f
                                            'make-struct-instance)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'make-struct-predicate)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'make-struct-field-accessor)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'make-struct-field-mutator)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'make-struct-field-unchecked-accessor)
                           (cons (gx#datum->syntax
                                  '#f
                                  'make-struct-field-unchecked-mutator)
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (gx#datum->syntax
                                            '#f
                                            'make-class-instance)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'make-class-predicate)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'make-class-slot-accessor)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'make-class-slot-mutator)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'make-class-slot-unchecked-accessor)
                           (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-unchecked-mutator)
                                 '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (_g1792719099_ __tmp42942))
                         (let ()
                           (declare (not safe))
                           (_g1780217829_ _g1780317833_))))
                   _tl1782117883_
                   _hd1782217880_
                   _hd1781917870_
                   _hd1781617860_
                   _hd1781317850_)))
              (let () (declare (not safe)) (_g1780217829_ _g1780317833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1780217829_
                                                 _g1780317833_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1780217829_ _g1780317833_)))))
                              (let ()
                                (declare (not safe))
                                (_g1780217829_ _g1780317833_)))))
                      (let ()
                        (declare (not safe))
                        (_g1780217829_ _g1780317833_))))))
          (declare (not safe))
          (_g1780119103_ _stx17790_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19403_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19403_ '#t))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19406_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19406_ '#f)))))
