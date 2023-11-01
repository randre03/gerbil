(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g13125_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13131_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13144_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13146_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13148_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13150_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13152_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13154_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13162_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13164_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13166_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13168_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13170_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13172_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13174_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13176_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13180_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13181_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13182_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13191_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13193_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13197_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13199_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13201_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13203_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx11342_)
        (let* ((_g1134611370_
                (lambda (_g1134711366_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1134711366_)))
               (_g1134511456_
                (lambda (_g1134711374_)
                  (if (gx#stx-pair? _g1134711374_)
                      (let ((_e1135211377_ (gx#syntax-e _g1134711374_)))
                        (let ((_hd1135111381_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1135211377_)))
                              (_tl1135011384_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1135211377_))))
                          (if (gx#stx-pair? _tl1135011384_)
                              (let ((_e1135511387_
                                     (gx#syntax-e _tl1135011384_)))
                                (let ((_hd1135411391_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1135511387_)))
                                      (_tl1135311394_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1135511387_))))
                                  (if (gx#stx-pair/null? _tl1135311394_)
                                      (let ((_g13021_
                                             (gx#syntax-split-splice
                                              _tl1135311394_
                                              '0)))
                                        (begin
                                          (let ((_g13022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g13021_)
                                                       (##vector-length
                                                        _g13021_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g13022_ 2)))
                                                (error "Context expects 2 values"
                                                       _g13022_)))
                                          (let ((_target1135611397_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g13021_ 0)))
                                                (_tl1135811400_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g13021_ 1))))
                                            (if (gx#stx-null? _tl1135811400_)
                                                (letrec ((_loop1135911403_
                                                          (lambda (_hd1135711407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1136311410_)
                    (if (gx#stx-pair? _hd1135711407_)
                        (let ((_e1136011413_ (gx#syntax-e _hd1135711407_)))
                          (let ((_lp-hd1136111417_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1136011413_)))
                                (_lp-tl1136211420_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1136011413_))))
                            (_loop1135911403_
                             _lp-tl1136211420_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1136111417_ _body1136311410_)))))
                        (let ((_body1136411423_ (reverse _body1136311410_)))
                          ((lambda (_L11427_ _L11429_)
                             (let ((__tmp13034 (gx#datum->syntax '#f 'let))
                                   (__tmp13023
                                    (let ((__tmp13031
                                           (let ((__tmp13033
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp13032
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L11429_ '()))))
                                             (declare (not safe))
                                             (cons __tmp13033 __tmp13032)))
                                          (__tmp13024
                                           (let ((__tmp13025
                                                  (let ((__tmp13030
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp13026
                                                         (let ((__tmp13029
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp13027
                        (let ((__tmp13028
                               (lambda (_g1144711450_ _g1144811453_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1144711450_ _g1144811453_)))))
                          (declare (not safe))
                          (foldr1 __tmp13028 '() _L11427_))))
                   (declare (not safe))
                   (cons __tmp13029 __tmp13027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp13030
                                                          __tmp13026))))
                                             (declare (not safe))
                                             (cons __tmp13025 '()))))
                                      (declare (not safe))
                                      (cons __tmp13031 __tmp13024))))
                               (declare (not safe))
                               (cons __tmp13034 __tmp13023)))
                           _body1136411423_
                           _hd1135411391_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1135911403_
                                                   _target1135611397_
                                                   '()))
                                                (_g1134611370_
                                                 _g1134711374_)))))
                                      (_g1134611370_ _g1134711374_))))
                              (_g1134611370_ _g1134711374_))))
                      (_g1134611370_ _g1134711374_)))))
          (_g1134511456_ _$stx11342_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx11461_)
        (letrec ((_generate111464_
                  (lambda (_hd12005_ _tgt12007_ _K12008_ _E12009_ _kws12010_)
                    (let* ((_g1201212020_
                            (lambda (_g1201312016_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1201312016_)))
                           (_g1201112447_
                            (lambda (_g1201312024_)
                              ((lambda (_L12027_)
                                 (let ()
                                   (let* ((___stx1292412925_ _hd12005_)
                                          (_g1204112055_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx1292412925_))))
                                     (let ((___kont1292712928_
                                            (lambda (_L12269_ _L12271_)
                                              (let* ((_g1228212290_
                                                      (lambda (_g1228312286_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1228312286_)))
                                                     (_g1228112439_
                                                      (lambda (_g1228312294_)
                                                        ((lambda (_L12297_)
                                                           (let ()
                                                             (let* ((_g1230912317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1231012313_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1231012313_)))
                            (_g1230812435_
                             (lambda (_g1231012321_)
                               ((lambda (_L12324_)
                                  (let ()
                                    (let* ((_g1233712345_
                                            (lambda (_g1233812341_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g1233812341_)))
                                           (_g1233612431_
                                            (lambda (_g1233812349_)
                                              ((lambda (_L12352_)
                                                 (let ()
                                                   (let* ((_g1236512373_
                                                           (lambda (_g1236612369_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1236612369_)))
                                                          (_g1236412427_
                                                           (lambda (_g1236612377_)
                                                             ((lambda (_L12380_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1239312401_
                                  (lambda (_g1239412397_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1239412397_)))
                                 (_g1239212423_
                                  (lambda (_g1239412405_)
                                    ((lambda (_L12408_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp13063
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp13035
                                                  (let ((__tmp13060
                                                         (let ((__tmp13062
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp13061
                        (let () (declare (not safe)) (cons _L12027_ '()))))
                   (declare (not safe))
                   (cons __tmp13062 __tmp13061)))
                (__tmp13036
                 (let ((__tmp13038
                        (let ((__tmp13059 (gx#datum->syntax '#f 'let*))
                              (__tmp13039
                               (let ((__tmp13041
                                      (let ((__tmp13054
                                             (let ((__tmp13055
                                                    (let ((__tmp13056
                                                           (let ((__tmp13058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp13057
                          (let () (declare (not safe)) (cons _L12027_ '()))))
                     (declare (not safe))
                     (cons __tmp13058 __tmp13057))))
              (declare (not safe))
              (cons __tmp13056 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L12297_ __tmp13055)))
                                            (__tmp13042
                                             (let ((__tmp13049
                                                    (let ((__tmp13050
                                                           (let ((__tmp13051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp13053 (gx#datum->syntax '#f '##car))
                                (__tmp13052
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12297_ '()))))
                            (declare (not safe))
                            (cons __tmp13053 __tmp13052))))
                     (declare (not safe))
                     (cons __tmp13051 '()))))
              (declare (not safe))
              (cons _L12324_ __tmp13050)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp13043
                                                    (let ((__tmp13044
                                                           (let ((__tmp13045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp13046
                                 (let ((__tmp13048
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp13047
                                        (let ()
                                          (declare (not safe))
                                          (cons _L12297_ '()))))
                                   (declare (not safe))
                                   (cons __tmp13048 __tmp13047))))
                            (declare (not safe))
                            (cons __tmp13046 '()))))
                     (declare (not safe))
                     (cons _L12352_ __tmp13045))))
              (declare (not safe))
              (cons __tmp13044 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp13049 __tmp13043))))
                                        (declare (not safe))
                                        (cons __tmp13054 __tmp13042)))
                                     (__tmp13040
                                      (let ()
                                        (declare (not safe))
                                        (cons _L12380_ '()))))
                                 (declare (not safe))
                                 (cons __tmp13041 __tmp13040))))
                          (declare (not safe))
                          (cons __tmp13059 __tmp13039)))
                       (__tmp13037
                        (let () (declare (not safe)) (cons _L12408_ '()))))
                   (declare (not safe))
                   (cons __tmp13038 __tmp13037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp13060
                                                          __tmp13036))))
                                             (declare (not safe))
                                             (cons __tmp13063 __tmp13035)))))
                                     _g1239412405_))))
                            (_g1239212423_ _E12009_))))
                      _g1236612377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1236412427_
                                                      (_generate111464_
                                                       _L12271_
                                                       _L12324_
                                                       (_generate111464_
                                                        _L12269_
                                                        _L12352_
                                                        _K12008_
                                                        _E12009_
                                                        _kws12010_)
                                                       _E12009_
                                                       _kws12010_)))))
                                               _g1233812349_))))
                                      (_g1233612431_ (gx#genident '$tl)))))
                                _g1231012321_))))
                       (_g1230812435_ (gx#genident '$hd)))))
                 _g1228312294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1228112439_
                                                 (gx#genident '$tgt)))))
                                           (___kont1292912930_
                                            (lambda (_L12144_)
                                              (if (gx#underscore? _L12144_)
                                                  _K12008_
                                                  (if (let ((__tmp13092
                                                             (lambda (_g1215212154_)
                                                               (gx#bound-identifier=?
                                                                _g1215212154_
                                                                _L12144_)))
                                                            (__tmp13091
                                                             (gx#syntax->list
                                                              _kws12010_)))
                                                        (declare (not safe))
                                                        (find __tmp13092
                                                              __tmp13091))
                                                      (let* ((_g1215812173_
                                                              (lambda (_g1215912169_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1215912169_)))
                     (_g1215712218_
                      (lambda (_g1215912177_)
                        (if (gx#stx-pair? _g1215912177_)
                            (let ((_e1216412180_ (gx#syntax-e _g1215912177_)))
                              (let ((_hd1216312184_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1216412180_)))
                                    (_tl1216212187_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1216412180_))))
                                (if (gx#stx-pair? _tl1216212187_)
                                    (let ((_e1216712190_
                                           (gx#syntax-e _tl1216212187_)))
                                      (let ((_hd1216612194_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1216712190_)))
                                            (_tl1216512197_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1216712190_))))
                                        (if (gx#stx-null? _tl1216512197_)
                                            ((lambda (_L12200_ _L12202_)
                                               (let ()
                                                 (let ((__tmp13090
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp13070
                                                        (let ((__tmp13073
                                                               (let ((__tmp13089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp13074
                              (let ((__tmp13086
                                     (let ((__tmp13088
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp13087
                                            (let ()
                                              (declare (not safe))
                                              (cons _L12027_ '()))))
                                       (declare (not safe))
                                       (cons __tmp13088 __tmp13087)))
                                    (__tmp13075
                                     (let ((__tmp13076
                                            (let ((__tmp13085
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp13077
                                                   (let ((__tmp13082
                                                          (let ((__tmp13084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp13083
                         (let () (declare (not safe)) (cons _L12027_ '()))))
                    (declare (not safe))
                    (cons __tmp13084 __tmp13083)))
                 (__tmp13078
                  (let ((__tmp13079
                         (let ((__tmp13081 (gx#datum->syntax '#f 'quote))
                               (__tmp13080
                                (let ()
                                  (declare (not safe))
                                  (cons _L12144_ '()))))
                           (declare (not safe))
                           (cons __tmp13081 __tmp13080))))
                    (declare (not safe))
                    (cons __tmp13079 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp13082
                                                           __tmp13078))))
                                              (declare (not safe))
                                              (cons __tmp13085 __tmp13077))))
                                       (declare (not safe))
                                       (cons __tmp13076 '()))))
                                (declare (not safe))
                                (cons __tmp13086 __tmp13075))))
                         (declare (not safe))
                         (cons __tmp13089 __tmp13074)))
                      (__tmp13071
                       (let ((__tmp13072
                              (let ()
                                (declare (not safe))
                                (cons _L12200_ '()))))
                         (declare (not safe))
                         (cons _L12202_ __tmp13072))))
                  (declare (not safe))
                  (cons __tmp13073 __tmp13071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp13090
                                                         __tmp13070))))
                                             _hd1216612194_
                                             _hd1216312184_)
                                            (_g1215812173_ _g1215912177_))))
                                    (_g1215812173_ _g1215912177_))))
                            (_g1215812173_ _g1215912177_)))))
                (_g1215712218_ (list _K12008_ _E12009_)))
              (let* ((_g1222212230_
                      (lambda (_g1222312226_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1222312226_)))
                     (_g1222112248_
                      (lambda (_g1222312234_)
                        ((lambda (_L12237_)
                           (let ()
                             (let ((__tmp13069 (gx#datum->syntax '#f 'let))
                                   (__tmp13064
                                    (let ((__tmp13066
                                           (let ((__tmp13067
                                                  (let ((__tmp13068
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L12027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L12144_
                                                          __tmp13068))))
                                             (declare (not safe))
                                             (cons __tmp13067 '())))
                                          (__tmp13065
                                           (let ()
                                             (declare (not safe))
                                             (cons _L12237_ '()))))
                                      (declare (not safe))
                                      (cons __tmp13066 __tmp13065))))
                               (declare (not safe))
                               (cons __tmp13069 __tmp13064))))
                         _g1222312234_))))
                (_g1222112248_ _K12008_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1293112932_
                                            (lambda (_L12062_)
                                              (let* ((_g1207312088_
                                                      (lambda (_g1207412084_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g1207412084_)))
                                                     (_g1207212133_
                                                      (lambda (_g1207412092_)
                                                        (if (gx#stx-pair?
                                                             _g1207412092_)
                                                            (let ((_e1207912095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1207412092_)))
                      (let ((_hd1207812099_
                             (let ()
                               (declare (not safe))
                               (##car _e1207912095_)))
                            (_tl1207712102_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1207912095_))))
                        (if (gx#stx-pair? _tl1207712102_)
                            (let ((_e1208212105_ (gx#syntax-e _tl1207712102_)))
                              (let ((_hd1208112109_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1208212105_)))
                                    (_tl1208012112_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1208212105_))))
                                (if (gx#stx-null? _tl1208012112_)
                                    ((lambda (_L12115_ _L12117_)
                                       (let ()
                                         (let ((__tmp13106
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp13093
                                                (let ((__tmp13096
                                                       (let ((__tmp13105
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp13097
                                                              (let ((__tmp13102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp13104 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp13103
                                    (let ()
                                      (declare (not safe))
                                      (cons _L12027_ '()))))
                               (declare (not safe))
                               (cons __tmp13104 __tmp13103)))
                            (__tmp13098
                             (let ((__tmp13099
                                    (let ((__tmp13101
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp13100
                                           (let ()
                                             (declare (not safe))
                                             (cons _L12062_ '()))))
                                      (declare (not safe))
                                      (cons __tmp13101 __tmp13100))))
                               (declare (not safe))
                               (cons __tmp13099 '()))))
                        (declare (not safe))
                        (cons __tmp13102 __tmp13098))))
                 (declare (not safe))
                 (cons __tmp13105 __tmp13097)))
              (__tmp13094
               (let ((__tmp13095
                      (let () (declare (not safe)) (cons _L12115_ '()))))
                 (declare (not safe))
                 (cons _L12117_ __tmp13095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp13096
                                                        __tmp13094))))
                                           (declare (not safe))
                                           (cons __tmp13106 __tmp13093))))
                                     _hd1208112109_
                                     _hd1207812099_)
                                    (_g1207312088_ _g1207412092_))))
                            (_g1207312088_ _g1207412092_))))
                    (_g1207312088_ _g1207412092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1207212133_
                                                 (list _K12008_ _E12009_))))))
                                       (let ((_g1203912252_
                                              (lambda ()
                                                (let ((_L12144_
                                                       ___stx1292412925_))
                                                  (if (gx#identifier? _L12144_)
                                                      (___kont1292912930_
                                                       _L12144_)
                                                      (___kont1293112932_
                                                       ___stx1292412925_))))))
                                         (if (gx#stx-pair? ___stx1292412925_)
                                             (let ((_e1204712259_
                                                    (gx#syntax-e
                                                     ___stx1292412925_)))
                                               (let ((_tl1204512266_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1204712259_)))
                                                     (_hd1204612263_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1204712259_))))
                                                 (___kont1292712928_
                                                  _tl1204512266_
                                                  _hd1204612263_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1203912252_))))))))
                               _g1201312024_))))
                      (_g1201112447_ _tgt12007_)))))
          (let* ((_g1146711495_
                  (lambda (_g1146811491_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1146811491_)))
                 (_g1146612001_
                  (lambda (_g1146811499_)
                    (if (gx#stx-pair? _g1146811499_)
                        (let ((_e1147411502_ (gx#syntax-e _g1146811499_)))
                          (let ((_hd1147311506_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1147411502_)))
                                (_tl1147211509_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1147411502_))))
                            (if (gx#stx-pair? _tl1147211509_)
                                (let ((_e1147711512_
                                       (gx#syntax-e _tl1147211509_)))
                                  (let ((_hd1147611516_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1147711512_)))
                                        (_tl1147511519_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1147711512_))))
                                    (if (gx#stx-pair? _tl1147511519_)
                                        (let ((_e1148011522_
                                               (gx#syntax-e _tl1147511519_)))
                                          (let ((_hd1147911526_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1148011522_)))
                                                (_tl1147811529_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1148011522_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1147811529_)
                                                (let ((_g13107_
                                                       (gx#syntax-split-splice
                                                        _tl1147811529_
                                                        '0)))
                                                  (begin
                                                    (let ((_g13108_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g13107_)
                         (##vector-length _g13107_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g13108_ 2)))
                  (error "Context expects 2 values" _g13108_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1148111532_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g13107_
                                                              0)))
                                                          (_tl1148311535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g13107_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1148311535_)
                                                          (letrec ((_loop1148411538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1148211542_ _clause1148811545_)
                              (if (gx#stx-pair? _hd1148211542_)
                                  (let ((_e1148511548_
                                         (gx#syntax-e _hd1148211542_)))
                                    (let ((_lp-hd1148611552_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1148511548_)))
                                          (_lp-tl1148711555_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1148511548_))))
                                      (_loop1148411538_
                                       _lp-tl1148711555_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1148611552_
                                               _clause1148811545_)))))
                                  (let ((_clause1148911558_
                                         (reverse _clause1148811545_)))
                                    ((lambda (_L11562_ _L11564_ _L11565_)
                                       (let _recur11587_ ((_rest11590_
                                                           (let ((__tmp13130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1199211995_ _g1199311998_)
                            (let ()
                              (declare (not safe))
                              (cons _g1199211995_ _g1199311998_)))))
                     (declare (not safe))
                     (foldr1 __tmp13130 '() _L11562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1159211601_ _rest11590_)
                                                (_E1159511607_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1159211601_))))
                                           (let ((_K1159711977_
                                                  (lambda (_rest11623_
                                                           _hd11625_)
                                                    (let* ((_g1162711635_
                                                            (lambda (_g1162811631_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1162811631_)))
                                                           (_g1162611973_
                                                            (lambda (_g1162811639_)
                                                              ((lambda (_L11642_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1166011668_
                                   (lambda (_g1166111664_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1166111664_)))
                                  (_g1165911969_
                                   (lambda (_g1166111672_)
                                     ((lambda (_L11675_)
                                        (let ()
                                          (let* ((_g1168811696_
                                                  (lambda (_g1168911692_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1168911692_)))
                                                 (_g1168711965_
                                                  (lambda (_g1168911700_)
                                                    ((lambda (_L11703_)
                                                       (let ()
                                                         (let* ((_g1171611724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1171711720_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1171711720_)))
                        (_g1171511746_
                         (lambda (_g1171711728_)
                           ((lambda (_L11731_)
                              (let ()
                                (let ()
                                  (let ((__tmp13117
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp13109
                                         (let ((__tmp13111
                                                (let ((__tmp13112
                                                       (let ((__tmp13113
                                                              (let ((__tmp13116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp13114
                             (let ((__tmp13115
                                    (let ()
                                      (declare (not safe))
                                      (cons _L11703_ '()))))
                               (declare (not safe))
                               (cons '() __tmp13115))))
                        (declare (not safe))
                        (cons __tmp13116 __tmp13114))))
                 (declare (not safe))
                 (cons __tmp13113 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L11642_ __tmp13112)))
                                               (__tmp13110
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L11731_ '()))))
                                           (declare (not safe))
                                           (cons __tmp13111 __tmp13110))))
                                    (declare (not safe))
                                    (cons __tmp13117 __tmp13109)))))
                            _g1171711728_))))
                   (_g1171511746_
                    (let* ((___stx1294212943_ _hd11625_)
                           (_g1175211792_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx1294212943_))))
                      (let ((___kont1294512946_
                             (lambda (_L11938_)
                               (let ((__tmp13120 (gx#datum->syntax '#f 'begin))
                                     (__tmp13118
                                      (let ((__tmp13119
                                             (lambda (_g1195211955_
                                                      _g1195311958_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1195211955_
                                                       _g1195311958_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp13119 '() _L11938_))))
                                 (declare (not safe))
                                 (cons __tmp13120 __tmp13118))))
                            (___kont1294912950_
                             (lambda (_L11876_ _L11878_)
                               (_generate111464_
                                _L11878_
                                _L11565_
                                _L11876_
                                _L11675_
                                _L11564_)))
                            (___kont1295112952_
                             (lambda (_L11829_ _L11831_ _L11832_)
                               (_generate111464_
                                _L11832_
                                _L11565_
                                (let ((__tmp13124 (gx#datum->syntax '#f 'if))
                                      (__tmp13121
                                       (let ((__tmp13122
                                              (let ((__tmp13123
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L11675_ '()))))
                                                (declare (not safe))
                                                (cons _L11829_ __tmp13123))))
                                         (declare (not safe))
                                         (cons _L11831_ __tmp13122))))
                                  (declare (not safe))
                                  (cons __tmp13124 __tmp13121))
                                _L11675_
                                _L11564_))))
                        (let ((___match1297112972_
                               (lambda (_e1175711898_
                                        _hd1175611902_
                                        _tl1175511905_
                                        ___splice1294712948_
                                        _target1175811908_
                                        _tl1176011911_)
                                 (letrec ((_loop1176111914_
                                           (lambda (_hd1175911918_
                                                    _expr1176511921_)
                                             (if (gx#stx-pair? _hd1175911918_)
                                                 (let ((_e1176211924_
                                                        (gx#syntax-e
                                                         _hd1175911918_)))
                                                   (let ((_lp-tl1176411931_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1176211924_)))
                                                         (_lp-hd1176311928_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1176211924_))))
                                                     (_loop1176111914_
                                                      _lp-tl1176411931_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1176311928_
                                                              _expr1176511921_)))))
                                                 (let ((_expr1176611934_
                                                        (reverse _expr1176511921_)))
                                                   (___kont1294512946_
                                                    _expr1176611934_))))))
                                   (_loop1176111914_
                                    _target1175811908_
                                    '())))))
                          (if (gx#stx-pair? ___stx1294212943_)
                              (let ((_e1175711898_
                                     (gx#syntax-e ___stx1294212943_)))
                                (let ((_tl1175511905_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1175711898_)))
                                      (_hd1175611902_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1175711898_))))
                                  (if (gx#identifier? _hd1175611902_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g13125_|
                                           _hd1175611902_)
                                          (if (gx#stx-pair/null?
                                               _tl1175511905_)
                                              (let ((___splice1294712948_
                                                     (gx#syntax-split-splice
                                                      _tl1175511905_
                                                      '0)))
                                                (let ((_tl1176011911_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1294712948_
                                                          '1)))
                                                      (_target1175811908_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1294712948_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1176011911_)
                                                      (___match1297112972_
                                                       _e1175711898_
                                                       _hd1175611902_
                                                       _tl1175511905_
                                                       ___splice1294712948_
                                                       _target1175811908_
                                                       _tl1176011911_)
                                                      (if (gx#stx-pair?
                                                           _tl1175511905_)
                                                          (let ((_e1177411866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1175511905_)))
                    (let ((_tl1177211873_
                           (let () (declare (not safe)) (##cdr _e1177411866_)))
                          (_hd1177311870_
                           (let ()
                             (declare (not safe))
                             (##car _e1177411866_))))
                      (if (gx#stx-null? _tl1177211873_)
                          (___kont1294912950_ _hd1177311870_ _hd1175611902_)
                          (if (gx#stx-pair? _tl1177211873_)
                              (let ((_e1178611819_
                                     (gx#syntax-e _tl1177211873_)))
                                (let ((_tl1178411826_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1178611819_)))
                                      (_hd1178511823_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1178611819_))))
                                  (if (gx#stx-null? _tl1178411826_)
                                      (___kont1295112952_
                                       _hd1178511823_
                                       _hd1177311870_
                                       _hd1175611902_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1175211792_)))))
                              (let () (declare (not safe)) (_g1175211792_))))))
                  (let () (declare (not safe)) (_g1175211792_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1175511905_)
                                                  (let ((_e1177411866_
                                                         (gx#syntax-e
                                                          _tl1175511905_)))
                                                    (let ((_tl1177211873_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1177411866_)))
                                                          (_hd1177311870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1177411866_))))
                                                      (if (gx#stx-null?
                                                           _tl1177211873_)
                                                          (___kont1294912950_
                                                           _hd1177311870_
                                                           _hd1175611902_)
                                                          (if (gx#stx-pair?
                                                               _tl1177211873_)
                                                              (let ((_e1178611819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1177211873_)))
                        (let ((_tl1178411826_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1178611819_)))
                              (_hd1178511823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1178611819_))))
                          (if (gx#stx-null? _tl1178411826_)
                              (___kont1295112952_
                               _hd1178511823_
                               _hd1177311870_
                               _hd1175611902_)
                              (let () (declare (not safe)) (_g1175211792_)))))
                      (let () (declare (not safe)) (_g1175211792_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1175211792_))))
                                          (if (gx#stx-pair? _tl1175511905_)
                                              (let ((_e1177411866_
                                                     (gx#syntax-e
                                                      _tl1175511905_)))
                                                (let ((_tl1177211873_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1177411866_)))
                                                      (_hd1177311870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1177411866_))))
                                                  (if (gx#stx-null?
                                                       _tl1177211873_)
                                                      (___kont1294912950_
                                                       _hd1177311870_
                                                       _hd1175611902_)
                                                      (if (gx#stx-pair?
                                                           _tl1177211873_)
                                                          (let ((_e1178611819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1177211873_)))
                    (let ((_tl1178411826_
                           (let () (declare (not safe)) (##cdr _e1178611819_)))
                          (_hd1178511823_
                           (let ()
                             (declare (not safe))
                             (##car _e1178611819_))))
                      (if (gx#stx-null? _tl1178411826_)
                          (___kont1295112952_
                           _hd1178511823_
                           _hd1177311870_
                           _hd1175611902_)
                          (let () (declare (not safe)) (_g1175211792_)))))
                  (let () (declare (not safe)) (_g1175211792_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1175211792_))))
                                      (if (gx#stx-pair? _tl1175511905_)
                                          (let ((_e1177411866_
                                                 (gx#syntax-e _tl1175511905_)))
                                            (let ((_tl1177211873_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1177411866_)))
                                                  (_hd1177311870_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1177411866_))))
                                              (if (gx#stx-null? _tl1177211873_)
                                                  (___kont1294912950_
                                                   _hd1177311870_
                                                   _hd1175611902_)
                                                  (if (gx#stx-pair?
                                                       _tl1177211873_)
                                                      (let ((_e1178611819_
                                                             (gx#syntax-e
                                                              _tl1177211873_)))
                                                        (let ((_tl1178411826_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1178611819_)))
                      (_hd1178511823_
                       (let () (declare (not safe)) (##car _e1178611819_))))
                  (if (gx#stx-null? _tl1178411826_)
                      (___kont1295112952_
                       _hd1178511823_
                       _hd1177311870_
                       _hd1175611902_)
                      (let () (declare (not safe)) (_g1175211792_)))))
              (let () (declare (not safe)) (_g1175211792_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1175211792_))))))
                              (let ()
                                (declare (not safe))
                                (_g1175211792_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1168911700_))))
                                            (_g1168711965_
                                             (_recur11587_ _rest11623_)))))
                                      _g1166111672_))))
                             (_g1165911969_
                              (let ()
                                (declare (not safe))
                                (cons _L11642_ '()))))))
                       _g1162811639_))))
              (_g1162611973_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1159611615_
                                                  (lambda ()
                                                    (let ((__tmp13129
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp13126
                                                           (let ((__tmp13127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp13128
                                 (let ()
                                   (declare (not safe))
                                   (cons _L11565_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax; malformed ast clause"
                                  __tmp13128))))
                     (declare (not safe))
                     (cons '#f __tmp13127))))
              (declare (not safe))
              (cons __tmp13129 __tmp13126)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1159411619_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1159211601_))
                                                          (_K1159611615_)
                                                          (_E1159511607_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1159211601_))
                                                   (let ((_tl1159911984_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1159211601_)))
                                                         (_hd1159811981_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1159211601_))))
                                                     (let ((_hd11987_
                                                            _hd1159811981_)
                                                           (_rest11990_
                                                            _tl1159911984_))
                                                       (_K1159711977_
                                                        _rest11990_
                                                        _hd11987_)))
                                                   (_try-match1159411619_)))))))
                                     _clause1148911558_
                                     _hd1147911526_
                                     _hd1147611516_))))))
                    (_loop1148411538_ _target1148111532_ '()))
                  (_g1146711495_ _g1146811499_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1146711495_
                                                 _g1146811499_))))
                                        (_g1146711495_ _g1146811499_))))
                                (_g1146711495_ _g1146811499_))))
                        (_g1146711495_ _g1146811499_)))))
            (_g1146612001_ _stx11461_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g13131_|
       'expander-identifiers:
       (let ((__tmp13178
              (let ((__tmp13179 |[1]#_g13180_|))
                (declare (not safe))
                (cons __tmp13179 '())))
             (__tmp13132
              (let ((__tmp13177 |[1]#_g13131_|)
                    (__tmp13133
                     (let ((__tmp13175 |[1]#_g13176_|)
                           (__tmp13134
                            (let ((__tmp13173 |[1]#_g13174_|)
                                  (__tmp13135
                                   (let ((__tmp13155
                                          (let ((__tmp13171 |[1]#_g13172_|)
                                                (__tmp13156
                                                 (let ((__tmp13169
                                                        |[1]#_g13170_|)
                                                       (__tmp13157
                                                        (let ((__tmp13167
                                                               |[1]#_g13168_|)
                                                              (__tmp13158
                                                               (let ((__tmp13165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g13166_|)
                             (__tmp13159
                              (let ((__tmp13163 |[1]#_g13164_|)
                                    (__tmp13160
                                     (let ((__tmp13161 |[1]#_g13162_|))
                                       (declare (not safe))
                                       (cons __tmp13161 '()))))
                                (declare (not safe))
                                (cons __tmp13163 __tmp13160))))
                         (declare (not safe))
                         (cons __tmp13165 __tmp13159))))
                  (declare (not safe))
                  (cons __tmp13167 __tmp13158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp13169
                                                         __tmp13157))))
                                            (declare (not safe))
                                            (cons __tmp13171 __tmp13156)))
                                         (__tmp13136
                                          (let ((__tmp13137
                                                 (let ((__tmp13153
                                                        |[1]#_g13154_|)
                                                       (__tmp13138
                                                        (let ((__tmp13151
                                                               |[1]#_g13152_|)
                                                              (__tmp13139
                                                               (let ((__tmp13149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g13150_|)
                             (__tmp13140
                              (let ((__tmp13147 |[1]#_g13148_|)
                                    (__tmp13141
                                     (let ((__tmp13145 |[1]#_g13146_|)
                                           (__tmp13142
                                            (let ((__tmp13143 |[1]#_g13144_|))
                                              (declare (not safe))
                                              (cons __tmp13143 '()))))
                                       (declare (not safe))
                                       (cons __tmp13145 __tmp13142))))
                                (declare (not safe))
                                (cons __tmp13147 __tmp13141))))
                         (declare (not safe))
                         (cons __tmp13149 __tmp13140))))
                  (declare (not safe))
                  (cons __tmp13151 __tmp13139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp13153
                                                         __tmp13138))))
                                            (declare (not safe))
                                            (cons __tmp13137 '()))))
                                     (declare (not safe))
                                     (cons __tmp13155 __tmp13136))))
                              (declare (not safe))
                              (cons __tmp13173 __tmp13135))))
                       (declare (not safe))
                       (cons __tmp13175 __tmp13134))))
                (declare (not safe))
                (cons __tmp13177 __tmp13133))))
         (declare (not safe))
         (cons __tmp13178 __tmp13132))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g13181_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g13182_|
       'expander-identifiers:
       (let ((__tmp13183
              (let ((__tmp13204 |[1]#_g13182_|)
                    (__tmp13184
                     (let ((__tmp13202 |[1]#_g13203_|)
                           (__tmp13185
                            (let ((__tmp13200 |[1]#_g13201_|)
                                  (__tmp13186
                                   (let ((__tmp13194
                                          (let ((__tmp13198 |[1]#_g13199_|)
                                                (__tmp13195
                                                 (let ((__tmp13196
                                                        |[1]#_g13197_|))
                                                   (declare (not safe))
                                                   (cons __tmp13196 '()))))
                                            (declare (not safe))
                                            (cons __tmp13198 __tmp13195)))
                                         (__tmp13187
                                          (let ((__tmp13188
                                                 (let ((__tmp13192
                                                        |[1]#_g13193_|)
                                                       (__tmp13189
                                                        (let ((__tmp13190
                                                               |[1]#_g13191_|))
                                                          (declare (not safe))
                                                          (cons __tmp13190
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp13192
                                                         __tmp13189))))
                                            (declare (not safe))
                                            (cons __tmp13188 '()))))
                                     (declare (not safe))
                                     (cons __tmp13194 __tmp13187))))
                              (declare (not safe))
                              (cons __tmp13200 __tmp13186))))
                       (declare (not safe))
                       (cons __tmp13202 __tmp13185))))
                (declare (not safe))
                (cons __tmp13204 __tmp13184))))
         (declare (not safe))
         (cons '#f __tmp13183))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
