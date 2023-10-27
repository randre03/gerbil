(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12955_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12962_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12964_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12966_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12974_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12977_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12979_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12981_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12983_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12993_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12995_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12997_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13002_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13004_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13006_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13008_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13010_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13016_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13017_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13018_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13026_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13029_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13031_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13033_|
    (##structure
     gx#syntax-quote::t
     'make-RuntimeException
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#Exception|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12955_|
       'expander-identifiers:
       (let ((__tmp12956
              (let ((__tmp12965 |[1]#_g12955_|)
                    (__tmp12957
                     (let ((__tmp12963 |[1]#_g12964_|)
                           (__tmp12958
                            (let ((__tmp12961 |[1]#_g12962_|)
                                  (__tmp12959
                                   (let ((__tmp12960
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp12960))))
                              (declare (not safe))
                              (cons __tmp12961 __tmp12959))))
                       (declare (not safe))
                       (cons __tmp12963 __tmp12958))))
                (declare (not safe))
                (cons __tmp12965 __tmp12957))))
         (declare (not safe))
         (cons '() __tmp12956))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list)
        'Exception
        '#f
        '()
        '())))
    (define |[:0:]#StackTrace|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12966_|
       'expander-identifiers:
       (let ((__tmp12967
              (let ((__tmp12982 |[1]#_g12966_|)
                    (__tmp12968
                     (let ((__tmp12980 |[1]#_g12981_|)
                           (__tmp12969
                            (let ((__tmp12978 |[1]#_g12979_|)
                                  (__tmp12970
                                   (let ((__tmp12975
                                          (let ((__tmp12976 |[1]#_g12977_|))
                                            (declare (not safe))
                                            (cons __tmp12976 '())))
                                         (__tmp12971
                                          (let ((__tmp12972
                                                 (let ((__tmp12973
                                                        |[1]#_g12974_|))
                                                   (declare (not safe))
                                                   (cons __tmp12973 '()))))
                                            (declare (not safe))
                                            (cons __tmp12972 '()))))
                                     (declare (not safe))
                                     (cons __tmp12975 __tmp12971))))
                              (declare (not safe))
                              (cons __tmp12978 __tmp12970))))
                       (declare (not safe))
                       (cons __tmp12980 __tmp12969))))
                (declare (not safe))
                (cons __tmp12982 __tmp12968))))
         (declare (not safe))
         (cons '() __tmp12967))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list)
        'StackTrace
        '#f
        '()
        '(continuation))))
    (define |[:0:]#Error|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12983_|
       'expander-identifiers:
       (let ((__tmp13012
              (let ((__tmp13015 |[1]#_g12966_|)
                    (__tmp13013
                     (let ((__tmp13014 |[1]#_g12955_|))
                       (declare (not safe))
                       (cons __tmp13014 '()))))
                (declare (not safe))
                (cons __tmp13015 __tmp13013)))
             (__tmp12984
              (let ((__tmp13011 |[1]#_g12983_|)
                    (__tmp12985
                     (let ((__tmp13009 |[1]#_g13010_|)
                           (__tmp12986
                            (let ((__tmp13007 |[1]#_g13008_|)
                                  (__tmp12987
                                   (let ((__tmp12998
                                          (let ((__tmp13005 |[1]#_g13006_|)
                                                (__tmp12999
                                                 (let ((__tmp13003
                                                        |[1]#_g13004_|)
                                                       (__tmp13000
                                                        (let ((__tmp13001
                                                               |[1]#_g13002_|))
                                                          (declare (not safe))
                                                          (cons __tmp13001
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp13003
                                                         __tmp13000))))
                                            (declare (not safe))
                                            (cons __tmp13005 __tmp12999)))
                                         (__tmp12988
                                          (let ((__tmp12989
                                                 (let ((__tmp12996
                                                        |[1]#_g12997_|)
                                                       (__tmp12990
                                                        (let ((__tmp12994
                                                               |[1]#_g12995_|)
                                                              (__tmp12991
                                                               (let ((__tmp12992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12993_|))
                         (declare (not safe))
                         (cons __tmp12992 '()))))
                  (declare (not safe))
                  (cons __tmp12994 __tmp12991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12996
                                                         __tmp12990))))
                                            (declare (not safe))
                                            (cons __tmp12989 '()))))
                                     (declare (not safe))
                                     (cons __tmp12998 __tmp12988))))
                              (declare (not safe))
                              (cons __tmp13007 __tmp12987))))
                       (declare (not safe))
                       (cons __tmp13009 __tmp12986))))
                (declare (not safe))
                (cons __tmp13011 __tmp12985))))
         (declare (not safe))
         (cons __tmp13012 __tmp12984))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g13016_| |[1]#_g13017_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g13018_|
       'expander-identifiers:
       (let ((__tmp13035
              (let ((__tmp13038 |[1]#_g12966_|)
                    (__tmp13036
                     (let ((__tmp13037 |[1]#_g12955_|))
                       (declare (not safe))
                       (cons __tmp13037 '()))))
                (declare (not safe))
                (cons __tmp13038 __tmp13036)))
             (__tmp13019
              (let ((__tmp13034 |[1]#_g13018_|)
                    (__tmp13020
                     (let ((__tmp13032 |[1]#_g13033_|)
                           (__tmp13021
                            (let ((__tmp13030 |[1]#_g13031_|)
                                  (__tmp13022
                                   (let ((__tmp13027
                                          (let ((__tmp13028 |[1]#_g13029_|))
                                            (declare (not safe))
                                            (cons __tmp13028 '())))
                                         (__tmp13023
                                          (let ((__tmp13024
                                                 (let ((__tmp13025
                                                        |[1]#_g13026_|))
                                                   (declare (not safe))
                                                   (cons __tmp13025 '()))))
                                            (declare (not safe))
                                            (cons __tmp13024 '()))))
                                     (declare (not safe))
                                     (cons __tmp13027 __tmp13023))))
                              (declare (not safe))
                              (cons __tmp13030 __tmp13022))))
                       (declare (not safe))
                       (cons __tmp13032 __tmp13021))))
                (declare (not safe))
                (cons __tmp13034 __tmp13020))))
         (declare (not safe))
         (cons __tmp13035 __tmp13019))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g13016_| |[1]#_g13017_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx11091_)
        (let* ((_g1109511113_
                (lambda (_g1109611109_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1109611109_)))
               (_g1109411169_
                (lambda (_g1109611117_)
                  (if (gx#stx-pair? _g1109611117_)
                      (let ((_e1110111120_ (gx#syntax-e _g1109611117_)))
                        (let ((_hd1110011124_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1110111120_)))
                              (_tl1109911127_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1110111120_))))
                          (if (gx#stx-pair? _tl1109911127_)
                              (let ((_e1110411130_
                                     (gx#syntax-e _tl1109911127_)))
                                (let ((_hd1110311134_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1110411130_)))
                                      (_tl1110211137_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1110411130_))))
                                  (if (gx#stx-pair? _tl1110211137_)
                                      (let ((_e1110711140_
                                             (gx#syntax-e _tl1110211137_)))
                                        (let ((_hd1110611144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1110711140_)))
                                              (_tl1110511147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1110711140_))))
                                          (if (gx#stx-null? _tl1110511147_)
                                              ((lambda (_L11150_ _L11152_)
                                                 (let ((__tmp13060
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp13039
                                                        (let ((__tmp13057
                                                               (let ((__tmp13059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp13058
                              (let ()
                                (declare (not safe))
                                (cons _L11152_ '()))))
                         (declare (not safe))
                         (cons __tmp13059 __tmp13058)))
                      (__tmp13040
                       (let ((__tmp13041
                              (let ((__tmp13056 (gx#datum->syntax '#f 'raise))
                                    (__tmp13042
                                     (let ((__tmp13043
                                            (let ((__tmp13055
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp13044
                                                   (let ((__tmp13045
                                                          (let ((__tmp13046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp13052
                                (let ((__tmp13054
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp13053
                                       (let ()
                                         (declare (not safe))
                                         (cons _L11150_ '()))))
                                  (declare (not safe))
                                  (cons __tmp13054 __tmp13053)))
                               (__tmp13047
                                (let ((__tmp13048
                                       (let ((__tmp13049
                                              (let ((__tmp13051
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp13050
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L11152_ '()))))
                                                (declare (not safe))
                                                (cons __tmp13051 __tmp13050))))
                                         (declare (not safe))
                                         (cons __tmp13049 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp13048))))
                           (declare (not safe))
                           (cons __tmp13052 __tmp13047))))
                    (declare (not safe))
                    (cons 'where: __tmp13046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp13045))))
                                              (declare (not safe))
                                              (cons __tmp13055 __tmp13044))))
                                       (declare (not safe))
                                       (cons __tmp13043 '()))))
                                (declare (not safe))
                                (cons __tmp13056 __tmp13042))))
                         (declare (not safe))
                         (cons __tmp13041 '()))))
                  (declare (not safe))
                  (cons __tmp13057 __tmp13040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp13060
                                                         __tmp13039)))
                                               _hd1110611144_
                                               _hd1110311134_)
                                              (_g1109511113_ _g1109611117_))))
                                      (_g1109511113_ _g1109611117_))))
                              (_g1109511113_ _g1109611117_))))
                      (_g1109511113_ _g1109611117_)))))
          (_g1109411169_ _$stx11091_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx11173_)
        (let* ((_g1117611203_
                (lambda (_g1117711199_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1117711199_)))
               (_g1117511438_
                (lambda (_g1117711207_)
                  (if (gx#stx-pair? _g1117711207_)
                      (let ((_e1118211210_ (gx#syntax-e _g1117711207_)))
                        (let ((_hd1118111214_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1118211210_)))
                              (_tl1118011217_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1118211210_))))
                          (if (gx#stx-pair? _tl1118011217_)
                              (let ((_e1118511220_
                                     (gx#syntax-e _tl1118011217_)))
                                (let ((_hd1118411224_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1118511220_)))
                                      (_tl1118311227_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1118511220_))))
                                  (if (gx#stx-pair? _hd1118411224_)
                                      (let ((_e1118811230_
                                             (gx#syntax-e _hd1118411224_)))
                                        (let ((_hd1118711234_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1118811230_)))
                                              (_tl1118611237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1118811230_))))
                                          (if (gx#stx-pair/null?
                                               _tl1118611237_)
                                              (let ((_g13061_
                                                     (gx#syntax-split-splice
                                                      _tl1118611237_
                                                      '0)))
                                                (begin
                                                  (let ((_g13062_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g13061_)
                                                               (##vector-length
                                                                _g13061_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g13062_ 2)))
                (error "Context expects 2 values" _g13062_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1118911240_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g13061_
                                                            0)))
                                                        (_tl1119111243_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g13061_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1119111243_)
                                                        (letrec ((_loop1119211246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1119011250_ _getf1119611253_)
                            (if (gx#stx-pair? _hd1119011250_)
                                (let ((_e1119311256_
                                       (gx#syntax-e _hd1119011250_)))
                                  (let ((_lp-hd1119411260_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1119311256_)))
                                        (_lp-tl1119511263_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1119311256_))))
                                    (_loop1119211246_
                                     _lp-tl1119511263_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1119411260_
                                             _getf1119611253_)))))
                                (let ((_getf1119711266_
                                       (reverse _getf1119611253_)))
                                  (if (gx#stx-null? _tl1118311227_)
                                      ((lambda (_L11270_ _L11272_)
                                         (let* ((_g1129211316_
                                                 (lambda (_g1129311312_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1129311312_)))
                                                (_g1129111423_
                                                 (lambda (_g1129311320_)
                                                   (if (gx#stx-pair?
                                                        _g1129311320_)
                                                       (let ((_e1129811323_
                                                              (gx#syntax-e
                                                               _g1129311320_)))
                                                         (let ((_hd1129711327_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1129811323_)))
                       (_tl1129611330_
                        (let () (declare (not safe)) (##cdr _e1129811323_))))
                   (if (gx#stx-pair? _tl1129611330_)
                       (let ((_e1130111333_ (gx#syntax-e _tl1129611330_)))
                         (let ((_hd1130011337_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1130111333_)))
                               (_tl1129911340_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1130111333_))))
                           (if (gx#stx-pair/null? _hd1130011337_)
                               (let ((_g13063_
                                      (gx#syntax-split-splice
                                       _hd1130011337_
                                       '0)))
                                 (begin
                                   (let ((_g13064_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g13063_)
                                                (##vector-length _g13063_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g13064_ 2)))
                                         (error "Context expects 2 values"
                                                _g13064_)))
                                   (let ((_target1130211343_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g13063_ 0)))
                                         (_tl1130411346_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g13063_ 1))))
                                     (if (gx#stx-null? _tl1130411346_)
                                         (letrec ((_loop1130511349_
                                                   (lambda (_hd1130311353_
                                                            _macro-getf1130911356_)
                                                     (if (gx#stx-pair?
                                                          _hd1130311353_)
                                                         (let ((_e1130611359_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1130311353_)))
                   (let ((_lp-hd1130711363_
                          (let () (declare (not safe)) (##car _e1130611359_)))
                         (_lp-tl1130811366_
                          (let () (declare (not safe)) (##cdr _e1130611359_))))
                     (_loop1130511349_
                      _lp-tl1130811366_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1130711363_ _macro-getf1130911356_)))))
                 (let ((_macro-getf1131011369_
                        (reverse _macro-getf1130911356_)))
                   (if (gx#stx-null? _tl1129911340_)
                       ((lambda (_L11373_ _L11375_)
                          (let ()
                            (let ((__tmp13188 (gx#datum->syntax '#f 'begin))
                                  (__tmp13065
                                   (let ((__tmp13183
                                          (let ((__tmp13187
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp13184
                                                 (let ((__tmp13185
                                                        (let ((__tmp13186
                                                               (lambda (_g1140011403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1140111406_)
                         (let ()
                           (declare (not safe))
                           (cons _g1140011403_ _g1140111406_)))))
                  (declare (not safe))
                  (foldr1 __tmp13186 '() _L11373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L11375_
                                                         __tmp13185))))
                                            (declare (not safe))
                                            (cons __tmp13187 __tmp13184)))
                                         (__tmp13066
                                          (let ((__tmp13150
                                                 (let ((__tmp13182
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp13151
                                                        (let ((__tmp13179
                                                               (let ((__tmp13180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp13181 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp13181 '()))))
                         (declare (not safe))
                         (cons _L11272_ __tmp13180)))
                      (__tmp13152
                       (let ((__tmp13153
                              (let ((__tmp13178 (gx#datum->syntax '#f 'if))
                                    (__tmp13154
                                     (let ((__tmp13174
                                            (let ((__tmp13177
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp13175
                                                   (let ((__tmp13176
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp13176 '()))))
                                              (declare (not safe))
                                              (cons __tmp13177 __tmp13175)))
                                           (__tmp13155
                                            (let ((__tmp13160
                                                   (let ((__tmp13173
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp13161
                                                          (let ((__tmp13166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp13172 (gx#datum->syntax '#f 'e))
                               (__tmp13167
                                (let ((__tmp13168
                                       (let ((__tmp13171
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp13169
                                              (let ((__tmp13170
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp13170 '()))))
                                         (declare (not safe))
                                         (cons __tmp13171 __tmp13169))))
                                  (declare (not safe))
                                  (cons __tmp13168 '()))))
                           (declare (not safe))
                           (cons __tmp13172 __tmp13167)))
                        (__tmp13162
                         (let ((__tmp13163
                                (let ((__tmp13164
                                       (let ((__tmp13165
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp13165 '()))))
                                  (declare (not safe))
                                  (cons _L11375_ __tmp13164))))
                           (declare (not safe))
                           (cons __tmp13163 '()))))
                    (declare (not safe))
                    (cons __tmp13166 __tmp13162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp13173
                                                           __tmp13161)))
                                                  (__tmp13156
                                                   (let ((__tmp13157
                                                          (let ((__tmp13158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp13159 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp13159 '()))))
                    (declare (not safe))
                    (cons _L11375_ __tmp13158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp13157 '()))))
                                              (declare (not safe))
                                              (cons __tmp13160 __tmp13156))))
                                       (declare (not safe))
                                       (cons __tmp13174 __tmp13155))))
                                (declare (not safe))
                                (cons __tmp13178 __tmp13154))))
                         (declare (not safe))
                         (cons __tmp13153 '()))))
                  (declare (not safe))
                  (cons __tmp13179 __tmp13152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp13182
                                                         __tmp13151)))
                                                (__tmp13067
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L11270_
                                                    _L11373_
                                                    _L11270_
                                                    _L11373_
                                                    _L11270_)
                                                   (let ((__tmp13068
                                                          (lambda (_g1139411409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1139511412_
                           _g1139611414_
                           _g1139711416_
                           _g1139811418_
                           _g1139911420_)
                    (let ((__tmp13069
                           (let ((__tmp13149 (gx#datum->syntax '#f 'def))
                                 (__tmp13070
                                  (let ((__tmp13146
                                         (let ((__tmp13147
                                                (let ((__tmp13148
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp13148 '()))))
                                           (declare (not safe))
                                           (cons _g1139411409_ __tmp13147)))
                                        (__tmp13071
                                         (let ((__tmp13072
                                                (let ((__tmp13145
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp13073
                                                       (let ((__tmp13141
                                                              (let ((__tmp13144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp13142
                             (let ((__tmp13143 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp13143 '()))))
                        (declare (not safe))
                        (cons __tmp13144 __tmp13142)))
                     (__tmp13074
                      (let ((__tmp13103
                             (let ((__tmp13140 (gx#datum->syntax '#f 'let))
                                   (__tmp13104
                                    (let ((__tmp13133
                                           (let ((__tmp13139
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp13134
                                                  (let ((__tmp13135
                                                         (let ((__tmp13138
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp13136
                        (let ((__tmp13137 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp13137 '()))))
                   (declare (not safe))
                   (cons __tmp13138 __tmp13136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp13135 '()))))
                                             (declare (not safe))
                                             (cons __tmp13139 __tmp13134)))
                                          (__tmp13105
                                           (let ((__tmp13106
                                                  (let ((__tmp13132
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp13107
                                                         (let ((__tmp13129
                                                                (let ((__tmp13130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp13131 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp13131 '()))))
                          (declare (not safe))
                          (cons _L11375_ __tmp13130)))
                       (__tmp13108
                        (let ((__tmp13126
                               (let ((__tmp13127
                                      (let ((__tmp13128
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp13128 '()))))
                                 (declare (not safe))
                                 (cons _g1139511412_ __tmp13127)))
                              (__tmp13109
                               (let ((__tmp13110
                                      (let ((__tmp13125
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp13111
                                             (let ((__tmp13112
                                                    (let ((__tmp13122
                                                           (let ((__tmp13124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp13123
                          (let () (declare (not safe)) (cons _L11272_ '()))))
                     (declare (not safe))
                     (cons __tmp13124 __tmp13123)))
                  (__tmp13113
                   (let ((__tmp13114
                          (let ((__tmp13121 (gx#datum->syntax '#f '@list))
                                (__tmp13115
                                 (let ((__tmp13118
                                        (let ((__tmp13120
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp13119
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1139411409_ '()))))
                                          (declare (not safe))
                                          (cons __tmp13120 __tmp13119)))
                                       (__tmp13116
                                        (let ((__tmp13117
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp13117 '()))))
                                   (declare (not safe))
                                   (cons __tmp13118 __tmp13116))))
                            (declare (not safe))
                            (cons __tmp13121 __tmp13115))))
                     (declare (not safe))
                     (cons __tmp13114 '()))))
              (declare (not safe))
              (cons __tmp13122 __tmp13113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp13112))))
                                        (declare (not safe))
                                        (cons __tmp13125 __tmp13111))))
                                 (declare (not safe))
                                 (cons __tmp13110 '()))))
                          (declare (not safe))
                          (cons __tmp13126 __tmp13109))))
                   (declare (not safe))
                   (cons __tmp13129 __tmp13108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp13132
                                                          __tmp13107))))
                                             (declare (not safe))
                                             (cons __tmp13106 '()))))
                                      (declare (not safe))
                                      (cons __tmp13133 __tmp13105))))
                               (declare (not safe))
                               (cons __tmp13140 __tmp13104)))
                            (__tmp13075
                             (let ((__tmp13076
                                    (let ((__tmp13102
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp13077
                                           (let ((__tmp13099
                                                  (let ((__tmp13100
                                                         (let ((__tmp13101
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp13101 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L11375_
                                                          __tmp13100)))
                                                 (__tmp13078
                                                  (let ((__tmp13096
                                                         (let ((__tmp13097
                                                                (let ((__tmp13098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp13098 '()))))
                   (declare (not safe))
                   (cons _g1139511412_ __tmp13097)))
                (__tmp13079
                 (let ((__tmp13080
                        (let ((__tmp13095 (gx#datum->syntax '#f 'error))
                              (__tmp13081
                               (let ((__tmp13082
                                      (let ((__tmp13092
                                             (let ((__tmp13094
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp13093
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L11272_ '()))))
                                               (declare (not safe))
                                               (cons __tmp13094 __tmp13093)))
                                            (__tmp13083
                                             (let ((__tmp13084
                                                    (let ((__tmp13091
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp13085
                                                           (let ((__tmp13088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp13090 (gx#datum->syntax '#f 'quote))
                                (__tmp13089
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1139411409_ '()))))
                            (declare (not safe))
                            (cons __tmp13090 __tmp13089)))
                         (__tmp13086
                          (let ((__tmp13087 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp13087 '()))))
                     (declare (not safe))
                     (cons __tmp13088 __tmp13086))))
              (declare (not safe))
              (cons __tmp13091 __tmp13085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp13084 '()))))
                                        (declare (not safe))
                                        (cons __tmp13092 __tmp13083))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp13082))))
                          (declare (not safe))
                          (cons __tmp13095 __tmp13081))))
                   (declare (not safe))
                   (cons __tmp13080 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp13096
                                                          __tmp13079))))
                                             (declare (not safe))
                                             (cons __tmp13099 __tmp13078))))
                                      (declare (not safe))
                                      (cons __tmp13102 __tmp13077))))
                               (declare (not safe))
                               (cons __tmp13076 '()))))
                        (declare (not safe))
                        (cons __tmp13103 __tmp13075))))
                 (declare (not safe))
                 (cons __tmp13141 __tmp13074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp13145
                                                        __tmp13073))))
                                           (declare (not safe))
                                           (cons __tmp13072 '()))))
                                    (declare (not safe))
                                    (cons __tmp13146 __tmp13071))))
                             (declare (not safe))
                             (cons __tmp13149 __tmp13070))))
                      (declare (not safe))
                      (cons __tmp13069 _g1139911420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp13068
                                                             '()
                                                             _L11270_
                                                             _L11373_
                                                             _L11270_
                                                             _L11373_
                                                             _L11270_)))))
                                            (declare (not safe))
                                            (cons __tmp13150 __tmp13067))))
                                     (declare (not safe))
                                     (cons __tmp13183 __tmp13066))))
                              (declare (not safe))
                              (cons __tmp13188 __tmp13065))))
                        _macro-getf1131011369_
                        _hd1129711327_)
                       (_g1129211316_ _g1129311320_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1130511349_
                                            _target1130211343_
                                            '()))
                                         (_g1129211316_ _g1129311320_)))))
                               (_g1129211316_ _g1129311320_))))
                       (_g1129211316_ _g1129311320_))))
               (_g1129211316_ _g1129311320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1129111423_
                                            (list (gx#stx-identifier
                                                   _L11272_
                                                   '"macro-"
                                                   _L11272_)
                                                  (map (lambda (_f11427_)
                                                         (gx#stx-identifier
                                                          _f11427_
                                                          '"macro-"
                                                          _f11427_))
                                                       (let ((__tmp13189
                                                              (lambda (_g1142911432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1143011435_)
                        (let ()
                          (declare (not safe))
                          (cons _g1142911432_ _g1143011435_)))))
                 (declare (not safe))
                 (foldr1 __tmp13189 '() _L11270_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf1119711266_
                                       _hd1118711234_)
                                      (_g1117611203_ _g1117711207_)))))))
                  (_loop1119211246_ _target1118911240_ '()))
                (_g1117611203_ _g1117711207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1117611203_ _g1117711207_))))
                                      (_g1117611203_ _g1117711207_))))
                              (_g1117611203_ _g1117711207_))))
                      (_g1117611203_ _g1117711207_)))))
          (_g1117511438_ _stx11173_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx11444_)
        (let* ((_g1144811468_
                (lambda (_g1144911464_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1144911464_)))
               (_g1144711539_
                (lambda (_g1144911472_)
                  (if (gx#stx-pair? _g1144911472_)
                      (let ((_e1145311475_ (gx#syntax-e _g1144911472_)))
                        (let ((_hd1145211479_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1145311475_)))
                              (_tl1145111482_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1145311475_))))
                          (if (gx#stx-pair/null? _tl1145111482_)
                              (let ((_g13190_
                                     (gx#syntax-split-splice
                                      _tl1145111482_
                                      '0)))
                                (begin
                                  (let ((_g13191_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g13190_)
                                               (##vector-length _g13190_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g13191_ 2)))
                                        (error "Context expects 2 values"
                                               _g13191_)))
                                  (let ((_target1145411485_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g13190_ 0)))
                                        (_tl1145611488_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g13190_ 1))))
                                    (if (gx#stx-null? _tl1145611488_)
                                        (letrec ((_loop1145711491_
                                                  (lambda (_hd1145511495_
                                                           _defexn1146111498_)
                                                    (if (gx#stx-pair?
                                                         _hd1145511495_)
                                                        (let ((_e1145811501_
                                                               (gx#syntax-e
                                                                _hd1145511495_)))
                                                          (let ((_lp-hd1145911505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1145811501_)))
                        (_lp-tl1146011508_
                         (let () (declare (not safe)) (##cdr _e1145811501_))))
                    (_loop1145711491_
                     _lp-tl1146011508_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd1145911505_ _defexn1146111498_)))))
                (let ((_defexn1146211511_ (reverse _defexn1146111498_)))
                  ((lambda (_L11515_)
                     (let ((__tmp13197 (gx#datum->syntax '#f 'begin))
                           (__tmp13192
                            (let ((__tmp13193
                                   (lambda (_g1153011533_ _g1153111536_)
                                     (let ((__tmp13194
                                            (let ((__tmp13196
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp13195
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1153011533_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp13196 __tmp13195))))
                                       (declare (not safe))
                                       (cons __tmp13194 _g1153111536_)))))
                              (declare (not safe))
                              (foldr1 __tmp13193 '() _L11515_))))
                       (declare (not safe))
                       (cons __tmp13197 __tmp13192)))
                   _defexn1146211511_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1145711491_
                                           _target1145411485_
                                           '()))
                                        (_g1144811468_ _g1144911472_)))))
                              (_g1144811468_ _g1144911472_))))
                      (_g1144811468_ _g1144911472_)))))
          (_g1144711539_ _$stx11444_))))))
