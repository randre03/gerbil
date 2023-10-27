(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g15163_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15169_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15182_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15184_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15186_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15188_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15190_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15192_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15200_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15202_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15204_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15206_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15208_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15210_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15212_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15214_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15218_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15219_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15220_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15229_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15231_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15235_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15237_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15239_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g15241_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx13380_)
        (let* ((_g1338413408_
                (lambda (_g1338513404_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1338513404_)))
               (_g1338313494_
                (lambda (_g1338513412_)
                  (if (gx#stx-pair? _g1338513412_)
                      (let ((_e1339013415_ (gx#syntax-e _g1338513412_)))
                        (let ((_hd1338913419_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1339013415_)))
                              (_tl1338813422_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1339013415_))))
                          (if (gx#stx-pair? _tl1338813422_)
                              (let ((_e1339313425_
                                     (gx#syntax-e _tl1338813422_)))
                                (let ((_hd1339213429_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1339313425_)))
                                      (_tl1339113432_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1339313425_))))
                                  (if (gx#stx-pair/null? _tl1339113432_)
                                      (let ((_g15059_
                                             (gx#syntax-split-splice
                                              _tl1339113432_
                                              '0)))
                                        (begin
                                          (let ((_g15060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g15059_)
                                                       (##vector-length
                                                        _g15059_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g15060_ 2)))
                                                (error "Context expects 2 values"
                                                       _g15060_)))
                                          (let ((_target1339413435_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g15059_ 0)))
                                                (_tl1339613438_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g15059_ 1))))
                                            (if (gx#stx-null? _tl1339613438_)
                                                (letrec ((_loop1339713441_
                                                          (lambda (_hd1339513445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1340113448_)
                    (if (gx#stx-pair? _hd1339513445_)
                        (let ((_e1339813451_ (gx#syntax-e _hd1339513445_)))
                          (let ((_lp-hd1339913455_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1339813451_)))
                                (_lp-tl1340013458_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1339813451_))))
                            (_loop1339713441_
                             _lp-tl1340013458_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1339913455_ _body1340113448_)))))
                        (let ((_body1340213461_ (reverse _body1340113448_)))
                          ((lambda (_L13465_ _L13467_)
                             (let ((__tmp15072 (gx#datum->syntax '#f 'let))
                                   (__tmp15061
                                    (let ((__tmp15069
                                           (let ((__tmp15071
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp15070
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L13467_ '()))))
                                             (declare (not safe))
                                             (cons __tmp15071 __tmp15070)))
                                          (__tmp15062
                                           (let ((__tmp15063
                                                  (let ((__tmp15068
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp15064
                                                         (let ((__tmp15067
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp15065
                        (let ((__tmp15066
                               (lambda (_g1348513488_ _g1348613491_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1348513488_ _g1348613491_)))))
                          (declare (not safe))
                          (foldr1 __tmp15066 '() _L13465_))))
                   (declare (not safe))
                   (cons __tmp15067 __tmp15065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15068
                                                          __tmp15064))))
                                             (declare (not safe))
                                             (cons __tmp15063 '()))))
                                      (declare (not safe))
                                      (cons __tmp15069 __tmp15062))))
                               (declare (not safe))
                               (cons __tmp15072 __tmp15061)))
                           _body1340213461_
                           _hd1339213429_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1339713441_
                                                   _target1339413435_
                                                   '()))
                                                (_g1338413408_
                                                 _g1338513412_)))))
                                      (_g1338413408_ _g1338513412_))))
                              (_g1338413408_ _g1338513412_))))
                      (_g1338413408_ _g1338513412_)))))
          (_g1338313494_ _$stx13380_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx13499_)
        (letrec ((_generate113502_
                  (lambda (_hd14043_ _tgt14045_ _K14046_ _E14047_ _kws14048_)
                    (let* ((_g1405014058_
                            (lambda (_g1405114054_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1405114054_)))
                           (_g1404914485_
                            (lambda (_g1405114062_)
                              ((lambda (_L14065_)
                                 (let ()
                                   (let* ((___stx1496214963_ _hd14043_)
                                          (_g1407914093_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1496214963_))))
                                     (let ((___kont1496514966_
                                            (lambda (_L14307_ _L14309_)
                                              (let* ((_g1432014328_
                                                      (lambda (_g1432114324_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1432114324_)))
                                                     (_g1431914477_
                                                      (lambda (_g1432114332_)
                                                        ((lambda (_L14335_)
                                                           (let ()
                                                             (let* ((_g1434714355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1434814351_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1434814351_)))
                            (_g1434614473_
                             (lambda (_g1434814359_)
                               ((lambda (_L14362_)
                                  (let ()
                                    (let* ((_g1437514383_
                                            (lambda (_g1437614379_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1437614379_)))
                                           (_g1437414469_
                                            (lambda (_g1437614387_)
                                              ((lambda (_L14390_)
                                                 (let ()
                                                   (let* ((_g1440314411_
                                                           (lambda (_g1440414407_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1440414407_)))
                                                          (_g1440214465_
                                                           (lambda (_g1440414415_)
                                                             ((lambda (_L14418_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1443114439_
                                  (lambda (_g1443214435_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1443214435_)))
                                 (_g1443014461_
                                  (lambda (_g1443214443_)
                                    ((lambda (_L14446_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp15101
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp15073
                                                  (let ((__tmp15098
                                                         (let ((__tmp15100
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp15099
                        (let () (declare (not safe)) (cons _L14065_ '()))))
                   (declare (not safe))
                   (cons __tmp15100 __tmp15099)))
                (__tmp15074
                 (let ((__tmp15076
                        (let ((__tmp15097 (gx#datum->syntax '#f 'let*))
                              (__tmp15077
                               (let ((__tmp15079
                                      (let ((__tmp15092
                                             (let ((__tmp15093
                                                    (let ((__tmp15094
                                                           (let ((__tmp15096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp15095
                          (let () (declare (not safe)) (cons _L14065_ '()))))
                     (declare (not safe))
                     (cons __tmp15096 __tmp15095))))
              (declare (not safe))
              (cons __tmp15094 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14335_ __tmp15093)))
                                            (__tmp15080
                                             (let ((__tmp15087
                                                    (let ((__tmp15088
                                                           (let ((__tmp15089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp15091 (gx#datum->syntax '#f '##car))
                                (__tmp15090
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14335_ '()))))
                            (declare (not safe))
                            (cons __tmp15091 __tmp15090))))
                     (declare (not safe))
                     (cons __tmp15089 '()))))
              (declare (not safe))
              (cons _L14362_ __tmp15088)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp15081
                                                    (let ((__tmp15082
                                                           (let ((__tmp15083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp15084
                                 (let ((__tmp15086
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp15085
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14335_ '()))))
                                   (declare (not safe))
                                   (cons __tmp15086 __tmp15085))))
                            (declare (not safe))
                            (cons __tmp15084 '()))))
                     (declare (not safe))
                     (cons _L14390_ __tmp15083))))
              (declare (not safe))
              (cons __tmp15082 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp15087 __tmp15081))))
                                        (declare (not safe))
                                        (cons __tmp15092 __tmp15080)))
                                     (__tmp15078
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14418_ '()))))
                                 (declare (not safe))
                                 (cons __tmp15079 __tmp15078))))
                          (declare (not safe))
                          (cons __tmp15097 __tmp15077)))
                       (__tmp15075
                        (let () (declare (not safe)) (cons _L14446_ '()))))
                   (declare (not safe))
                   (cons __tmp15076 __tmp15075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15098
                                                          __tmp15074))))
                                             (declare (not safe))
                                             (cons __tmp15101 __tmp15073)))))
                                     _g1443214443_))))
                            (_g1443014461_ _E14047_))))
                      _g1440414415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1440214465_
                                                      (_generate113502_
                                                       _L14309_
                                                       _L14362_
                                                       (_generate113502_
                                                        _L14307_
                                                        _L14390_
                                                        _K14046_
                                                        _E14047_
                                                        _kws14048_)
                                                       _E14047_
                                                       _kws14048_)))))
                                               _g1437614387_))))
                                      (_g1437414469_ (gx#genident '$tl)))))
                                _g1434814359_))))
                       (_g1434614473_ (gx#genident '$hd)))))
                 _g1432114332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1431914477_
                                                 (gx#genident '$tgt)))))
                                           (___kont1496714968_
                                            (lambda (_L14182_)
                                              (if (gx#underscore? _L14182_)
                                                  _K14046_
                                                  (if (let ((__tmp15130
                                                             (lambda (_g1419014192_)
                                                               (gx#bound-identifier=?
                                                                _g1419014192_
                                                                _L14182_)))
                                                            (__tmp15129
                                                             (gx#syntax->list
                                                              _kws14048_)))
                                                        (declare (not safe))
                                                        (find __tmp15130
                                                              __tmp15129))
                                                      (let* ((_g1419614211_
                                                              (lambda (_g1419714207_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1419714207_)))
                     (_g1419514256_
                      (lambda (_g1419714215_)
                        (if (gx#stx-pair? _g1419714215_)
                            (let ((_e1420214218_ (gx#syntax-e _g1419714215_)))
                              (let ((_hd1420114222_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1420214218_)))
                                    (_tl1420014225_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1420214218_))))
                                (if (gx#stx-pair? _tl1420014225_)
                                    (let ((_e1420514228_
                                           (gx#syntax-e _tl1420014225_)))
                                      (let ((_hd1420414232_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1420514228_)))
                                            (_tl1420314235_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1420514228_))))
                                        (if (gx#stx-null? _tl1420314235_)
                                            ((lambda (_L14238_ _L14240_)
                                               (let ()
                                                 (let ((__tmp15128
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp15108
                                                        (let ((__tmp15111
                                                               (let ((__tmp15127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp15112
                              (let ((__tmp15124
                                     (let ((__tmp15126
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp15125
                                            (let ()
                                              (declare (not safe))
                                              (cons _L14065_ '()))))
                                       (declare (not safe))
                                       (cons __tmp15126 __tmp15125)))
                                    (__tmp15113
                                     (let ((__tmp15114
                                            (let ((__tmp15123
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp15115
                                                   (let ((__tmp15120
                                                          (let ((__tmp15122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp15121
                         (let () (declare (not safe)) (cons _L14065_ '()))))
                    (declare (not safe))
                    (cons __tmp15122 __tmp15121)))
                 (__tmp15116
                  (let ((__tmp15117
                         (let ((__tmp15119 (gx#datum->syntax '#f 'quote))
                               (__tmp15118
                                (let ()
                                  (declare (not safe))
                                  (cons _L14182_ '()))))
                           (declare (not safe))
                           (cons __tmp15119 __tmp15118))))
                    (declare (not safe))
                    (cons __tmp15117 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp15120
                                                           __tmp15116))))
                                              (declare (not safe))
                                              (cons __tmp15123 __tmp15115))))
                                       (declare (not safe))
                                       (cons __tmp15114 '()))))
                                (declare (not safe))
                                (cons __tmp15124 __tmp15113))))
                         (declare (not safe))
                         (cons __tmp15127 __tmp15112)))
                      (__tmp15109
                       (let ((__tmp15110
                              (let ()
                                (declare (not safe))
                                (cons _L14238_ '()))))
                         (declare (not safe))
                         (cons _L14240_ __tmp15110))))
                  (declare (not safe))
                  (cons __tmp15111 __tmp15109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp15128
                                                         __tmp15108))))
                                             _hd1420414232_
                                             _hd1420114222_)
                                            (_g1419614211_ _g1419714215_))))
                                    (_g1419614211_ _g1419714215_))))
                            (_g1419614211_ _g1419714215_)))))
                (_g1419514256_ (list _K14046_ _E14047_)))
              (let* ((_g1426014268_
                      (lambda (_g1426114264_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1426114264_)))
                     (_g1425914286_
                      (lambda (_g1426114272_)
                        ((lambda (_L14275_)
                           (let ()
                             (let ((__tmp15107 (gx#datum->syntax '#f 'let))
                                   (__tmp15102
                                    (let ((__tmp15104
                                           (let ((__tmp15105
                                                  (let ((__tmp15106
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L14065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L14182_
                                                          __tmp15106))))
                                             (declare (not safe))
                                             (cons __tmp15105 '())))
                                          (__tmp15103
                                           (let ()
                                             (declare (not safe))
                                             (cons _L14275_ '()))))
                                      (declare (not safe))
                                      (cons __tmp15104 __tmp15103))))
                               (declare (not safe))
                               (cons __tmp15107 __tmp15102))))
                         _g1426114272_))))
                (_g1425914286_ _K14046_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1496914970_
                                            (lambda (_L14100_)
                                              (let* ((_g1411114126_
                                                      (lambda (_g1411214122_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1411214122_)))
                                                     (_g1411014171_
                                                      (lambda (_g1411214130_)
                                                        (if (gx#stx-pair?
                                                             _g1411214130_)
                                                            (let ((_e1411714133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1411214130_)))
                      (let ((_hd1411614137_
                             (let ()
                               (declare (not safe))
                               (##car _e1411714133_)))
                            (_tl1411514140_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1411714133_))))
                        (if (gx#stx-pair? _tl1411514140_)
                            (let ((_e1412014143_ (gx#syntax-e _tl1411514140_)))
                              (let ((_hd1411914147_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1412014143_)))
                                    (_tl1411814150_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1412014143_))))
                                (if (gx#stx-null? _tl1411814150_)
                                    ((lambda (_L14153_ _L14155_)
                                       (let ()
                                         (let ((__tmp15144
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp15131
                                                (let ((__tmp15134
                                                       (let ((__tmp15143
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp15135
                                                              (let ((__tmp15140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp15142 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp15141
                                    (let ()
                                      (declare (not safe))
                                      (cons _L14065_ '()))))
                               (declare (not safe))
                               (cons __tmp15142 __tmp15141)))
                            (__tmp15136
                             (let ((__tmp15137
                                    (let ((__tmp15139
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp15138
                                           (let ()
                                             (declare (not safe))
                                             (cons _L14100_ '()))))
                                      (declare (not safe))
                                      (cons __tmp15139 __tmp15138))))
                               (declare (not safe))
                               (cons __tmp15137 '()))))
                        (declare (not safe))
                        (cons __tmp15140 __tmp15136))))
                 (declare (not safe))
                 (cons __tmp15143 __tmp15135)))
              (__tmp15132
               (let ((__tmp15133
                      (let () (declare (not safe)) (cons _L14153_ '()))))
                 (declare (not safe))
                 (cons _L14155_ __tmp15133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp15134
                                                        __tmp15132))))
                                           (declare (not safe))
                                           (cons __tmp15144 __tmp15131))))
                                     _hd1411914147_
                                     _hd1411614137_)
                                    (_g1411114126_ _g1411214130_))))
                            (_g1411114126_ _g1411214130_))))
                    (_g1411114126_ _g1411214130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1411014171_
                                                 (list _K14046_ _E14047_))))))
                                       (let ((_g1407714290_
                                              (lambda ()
                                                (let ((_L14182_
                                                       ___stx1496214963_))
                                                  (if (gx#identifier? _L14182_)
                                                      (___kont1496714968_
                                                       _L14182_)
                                                      (___kont1496914970_
                                                       ___stx1496214963_))))))
                                         (if (gx#stx-pair? ___stx1496214963_)
                                             (let ((_e1408514297_
                                                    (gx#syntax-e
                                                     ___stx1496214963_)))
                                               (let ((_tl1408314304_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1408514297_)))
                                                     (_hd1408414301_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1408514297_))))
                                                 (___kont1496514966_
                                                  _tl1408314304_
                                                  _hd1408414301_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1407714290_))))))))
                               _g1405114062_))))
                      (_g1404914485_ _tgt14045_)))))
          (let* ((_g1350513533_
                  (lambda (_g1350613529_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1350613529_)))
                 (_g1350414039_
                  (lambda (_g1350613537_)
                    (if (gx#stx-pair? _g1350613537_)
                        (let ((_e1351213540_ (gx#syntax-e _g1350613537_)))
                          (let ((_hd1351113544_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1351213540_)))
                                (_tl1351013547_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1351213540_))))
                            (if (gx#stx-pair? _tl1351013547_)
                                (let ((_e1351513550_
                                       (gx#syntax-e _tl1351013547_)))
                                  (let ((_hd1351413554_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1351513550_)))
                                        (_tl1351313557_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1351513550_))))
                                    (if (gx#stx-pair? _tl1351313557_)
                                        (let ((_e1351813560_
                                               (gx#syntax-e _tl1351313557_)))
                                          (let ((_hd1351713564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1351813560_)))
                                                (_tl1351613567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1351813560_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1351613567_)
                                                (let ((_g15145_
                                                       (gx#syntax-split-splice
                                                        _tl1351613567_
                                                        '0)))
                                                  (begin
                                                    (let ((_g15146_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g15145_)
                         (##vector-length _g15145_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g15146_ 2)))
                  (error "Context expects 2 values" _g15146_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1351913570_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g15145_
                                                              0)))
                                                          (_tl1352113573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g15145_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1352113573_)
                                                          (letrec ((_loop1352213576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1352013580_ _clause1352613583_)
                              (if (gx#stx-pair? _hd1352013580_)
                                  (let ((_e1352313586_
                                         (gx#syntax-e _hd1352013580_)))
                                    (let ((_lp-hd1352413590_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1352313586_)))
                                          (_lp-tl1352513593_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1352313586_))))
                                      (_loop1352213576_
                                       _lp-tl1352513593_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1352413590_
                                               _clause1352613583_)))))
                                  (let ((_clause1352713596_
                                         (reverse _clause1352613583_)))
                                    ((lambda (_L13600_ _L13602_ _L13603_)
                                       (let _recur13625_ ((_rest13628_
                                                           (let ((__tmp15168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1403014033_ _g1403114036_)
                            (let ()
                              (declare (not safe))
                              (cons _g1403014033_ _g1403114036_)))))
                     (declare (not safe))
                     (foldr1 __tmp15168 '() _L13600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1363013639_ _rest13628_)
                                                (_E1363313645_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1363013639_))))
                                           (let ((_K1363514015_
                                                  (lambda (_rest13661_
                                                           _hd13663_)
                                                    (let* ((_g1366513673_
                                                            (lambda (_g1366613669_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1366613669_)))
                                                           (_g1366414011_
                                                            (lambda (_g1366613677_)
                                                              ((lambda (_L13680_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1369813706_
                                   (lambda (_g1369913702_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1369913702_)))
                                  (_g1369714007_
                                   (lambda (_g1369913710_)
                                     ((lambda (_L13713_)
                                        (let ()
                                          (let* ((_g1372613734_
                                                  (lambda (_g1372713730_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1372713730_)))
                                                 (_g1372514003_
                                                  (lambda (_g1372713738_)
                                                    ((lambda (_L13741_)
                                                       (let ()
                                                         (let* ((_g1375413762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1375513758_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1375513758_)))
                        (_g1375313784_
                         (lambda (_g1375513766_)
                           ((lambda (_L13769_)
                              (let ()
                                (let ()
                                  (let ((__tmp15155
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp15147
                                         (let ((__tmp15149
                                                (let ((__tmp15150
                                                       (let ((__tmp15151
                                                              (let ((__tmp15154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp15152
                             (let ((__tmp15153
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13741_ '()))))
                               (declare (not safe))
                               (cons '() __tmp15153))))
                        (declare (not safe))
                        (cons __tmp15154 __tmp15152))))
                 (declare (not safe))
                 (cons __tmp15151 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L13680_ __tmp15150)))
                                               (__tmp15148
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13769_ '()))))
                                           (declare (not safe))
                                           (cons __tmp15149 __tmp15148))))
                                    (declare (not safe))
                                    (cons __tmp15155 __tmp15147)))))
                            _g1375513766_))))
                   (_g1375313784_
                    (let* ((___stx1498014981_ _hd13663_)
                           (_g1379013830_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1498014981_))))
                      (let ((___kont1498314984_
                             (lambda (_L13976_)
                               (let ((__tmp15158 (gx#datum->syntax '#f 'begin))
                                     (__tmp15156
                                      (let ((__tmp15157
                                             (lambda (_g1399013993_
                                                      _g1399113996_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1399013993_
                                                       _g1399113996_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp15157 '() _L13976_))))
                                 (declare (not safe))
                                 (cons __tmp15158 __tmp15156))))
                            (___kont1498714988_
                             (lambda (_L13914_ _L13916_)
                               (_generate113502_
                                _L13916_
                                _L13603_
                                _L13914_
                                _L13713_
                                _L13602_)))
                            (___kont1498914990_
                             (lambda (_L13867_ _L13869_ _L13870_)
                               (_generate113502_
                                _L13870_
                                _L13603_
                                (let ((__tmp15162 (gx#datum->syntax '#f 'if))
                                      (__tmp15159
                                       (let ((__tmp15160
                                              (let ((__tmp15161
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13713_ '()))))
                                                (declare (not safe))
                                                (cons _L13867_ __tmp15161))))
                                         (declare (not safe))
                                         (cons _L13869_ __tmp15160))))
                                  (declare (not safe))
                                  (cons __tmp15162 __tmp15159))
                                _L13713_
                                _L13602_))))
                        (let ((___match1500915010_
                               (lambda (_e1379513936_
                                        _hd1379413940_
                                        _tl1379313943_
                                        ___splice1498514986_
                                        _target1379613946_
                                        _tl1379813949_)
                                 (letrec ((_loop1379913952_
                                           (lambda (_hd1379713956_
                                                    _expr1380313959_)
                                             (if (gx#stx-pair? _hd1379713956_)
                                                 (let ((_e1380013962_
                                                        (gx#syntax-e
                                                         _hd1379713956_)))
                                                   (let ((_lp-tl1380213969_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1380013962_)))
                                                         (_lp-hd1380113966_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1380013962_))))
                                                     (_loop1379913952_
                                                      _lp-tl1380213969_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1380113966_
                                                              _expr1380313959_)))))
                                                 (let ((_expr1380413972_
                                                        (reverse _expr1380313959_)))
                                                   (___kont1498314984_
                                                    _expr1380413972_))))))
                                   (_loop1379913952_
                                    _target1379613946_
                                    '())))))
                          (if (gx#stx-pair? ___stx1498014981_)
                              (let ((_e1379513936_
                                     (gx#syntax-e ___stx1498014981_)))
                                (let ((_tl1379313943_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1379513936_)))
                                      (_hd1379413940_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1379513936_))))
                                  (if (gx#identifier? _hd1379413940_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g15163_|
                                           _hd1379413940_)
                                          (if (gx#stx-pair/null?
                                               _tl1379313943_)
                                              (let ((___splice1498514986_
                                                     (gx#syntax-split-splice
                                                      _tl1379313943_
                                                      '0)))
                                                (let ((_tl1379813949_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1498514986_
                                                          '1)))
                                                      (_target1379613946_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1498514986_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1379813949_)
                                                      (___match1500915010_
                                                       _e1379513936_
                                                       _hd1379413940_
                                                       _tl1379313943_
                                                       ___splice1498514986_
                                                       _target1379613946_
                                                       _tl1379813949_)
                                                      (if (gx#stx-pair?
                                                           _tl1379313943_)
                                                          (let ((_e1381213904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1379313943_)))
                    (let ((_tl1381013911_
                           (let () (declare (not safe)) (##cdr _e1381213904_)))
                          (_hd1381113908_
                           (let ()
                             (declare (not safe))
                             (##car _e1381213904_))))
                      (if (gx#stx-null? _tl1381013911_)
                          (___kont1498714988_ _hd1381113908_ _hd1379413940_)
                          (if (gx#stx-pair? _tl1381013911_)
                              (let ((_e1382413857_
                                     (gx#syntax-e _tl1381013911_)))
                                (let ((_tl1382213864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1382413857_)))
                                      (_hd1382313861_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1382413857_))))
                                  (if (gx#stx-null? _tl1382213864_)
                                      (___kont1498914990_
                                       _hd1382313861_
                                       _hd1381113908_
                                       _hd1379413940_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1379013830_)))))
                              (let () (declare (not safe)) (_g1379013830_))))))
                  (let () (declare (not safe)) (_g1379013830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1379313943_)
                                                  (let ((_e1381213904_
                                                         (gx#syntax-e
                                                          _tl1379313943_)))
                                                    (let ((_tl1381013911_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1381213904_)))
                                                          (_hd1381113908_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1381213904_))))
                                                      (if (gx#stx-null?
                                                           _tl1381013911_)
                                                          (___kont1498714988_
                                                           _hd1381113908_
                                                           _hd1379413940_)
                                                          (if (gx#stx-pair?
                                                               _tl1381013911_)
                                                              (let ((_e1382413857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1381013911_)))
                        (let ((_tl1382213864_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1382413857_)))
                              (_hd1382313861_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1382413857_))))
                          (if (gx#stx-null? _tl1382213864_)
                              (___kont1498914990_
                               _hd1382313861_
                               _hd1381113908_
                               _hd1379413940_)
                              (let () (declare (not safe)) (_g1379013830_)))))
                      (let () (declare (not safe)) (_g1379013830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1379013830_))))
                                          (if (gx#stx-pair? _tl1379313943_)
                                              (let ((_e1381213904_
                                                     (gx#syntax-e
                                                      _tl1379313943_)))
                                                (let ((_tl1381013911_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1381213904_)))
                                                      (_hd1381113908_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1381213904_))))
                                                  (if (gx#stx-null?
                                                       _tl1381013911_)
                                                      (___kont1498714988_
                                                       _hd1381113908_
                                                       _hd1379413940_)
                                                      (if (gx#stx-pair?
                                                           _tl1381013911_)
                                                          (let ((_e1382413857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1381013911_)))
                    (let ((_tl1382213864_
                           (let () (declare (not safe)) (##cdr _e1382413857_)))
                          (_hd1382313861_
                           (let ()
                             (declare (not safe))
                             (##car _e1382413857_))))
                      (if (gx#stx-null? _tl1382213864_)
                          (___kont1498914990_
                           _hd1382313861_
                           _hd1381113908_
                           _hd1379413940_)
                          (let () (declare (not safe)) (_g1379013830_)))))
                  (let () (declare (not safe)) (_g1379013830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1379013830_))))
                                      (if (gx#stx-pair? _tl1379313943_)
                                          (let ((_e1381213904_
                                                 (gx#syntax-e _tl1379313943_)))
                                            (let ((_tl1381013911_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1381213904_)))
                                                  (_hd1381113908_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1381213904_))))
                                              (if (gx#stx-null? _tl1381013911_)
                                                  (___kont1498714988_
                                                   _hd1381113908_
                                                   _hd1379413940_)
                                                  (if (gx#stx-pair?
                                                       _tl1381013911_)
                                                      (let ((_e1382413857_
                                                             (gx#syntax-e
                                                              _tl1381013911_)))
                                                        (let ((_tl1382213864_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1382413857_)))
                      (_hd1382313861_
                       (let () (declare (not safe)) (##car _e1382413857_))))
                  (if (gx#stx-null? _tl1382213864_)
                      (___kont1498914990_
                       _hd1382313861_
                       _hd1381113908_
                       _hd1379413940_)
                      (let () (declare (not safe)) (_g1379013830_)))))
              (let () (declare (not safe)) (_g1379013830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1379013830_))))))
                              (let ()
                                (declare (not safe))
                                (_g1379013830_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1372713738_))))
                                            (_g1372514003_
                                             (_recur13625_ _rest13661_)))))
                                      _g1369913710_))))
                             (_g1369714007_
                              (let ()
                                (declare (not safe))
                                (cons _L13680_ '()))))))
                       _g1366613677_))))
              (_g1366414011_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1363413653_
                                                  (lambda ()
                                                    (let ((__tmp15167
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp15164
                                                           (let ((__tmp15165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp15166
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13603_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax" __tmp15166))))
                     (declare (not safe))
                     (cons '#f __tmp15165))))
              (declare (not safe))
              (cons __tmp15167 __tmp15164)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1363213657_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1363013639_))
                                                          (_K1363413653_)
                                                          (_E1363313645_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1363013639_))
                                                   (let ((_tl1363714022_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1363013639_)))
                                                         (_hd1363614019_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1363013639_))))
                                                     (let ((_hd14025_
                                                            _hd1363614019_)
                                                           (_rest14028_
                                                            _tl1363714022_))
                                                       (_K1363514015_
                                                        _rest14028_
                                                        _hd14025_)))
                                                   (_try-match1363213657_)))))))
                                     _clause1352713596_
                                     _hd1351713564_
                                     _hd1351413554_))))))
                    (_loop1352213576_ _target1351913570_ '()))
                  (_g1350513533_ _g1350613537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1350513533_
                                                 _g1350613537_))))
                                        (_g1350513533_ _g1350613537_))))
                                (_g1350513533_ _g1350613537_))))
                        (_g1350513533_ _g1350613537_)))))
            (_g1350414039_ _stx13499_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g15169_|
       'expander-identifiers:
       (let ((__tmp15216
              (let ((__tmp15217 |[1]#_g15218_|))
                (declare (not safe))
                (cons __tmp15217 '())))
             (__tmp15170
              (let ((__tmp15215 |[1]#_g15169_|)
                    (__tmp15171
                     (let ((__tmp15213 |[1]#_g15214_|)
                           (__tmp15172
                            (let ((__tmp15211 |[1]#_g15212_|)
                                  (__tmp15173
                                   (let ((__tmp15193
                                          (let ((__tmp15209 |[1]#_g15210_|)
                                                (__tmp15194
                                                 (let ((__tmp15207
                                                        |[1]#_g15208_|)
                                                       (__tmp15195
                                                        (let ((__tmp15205
                                                               |[1]#_g15206_|)
                                                              (__tmp15196
                                                               (let ((__tmp15203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g15204_|)
                             (__tmp15197
                              (let ((__tmp15201 |[1]#_g15202_|)
                                    (__tmp15198
                                     (let ((__tmp15199 |[1]#_g15200_|))
                                       (declare (not safe))
                                       (cons __tmp15199 '()))))
                                (declare (not safe))
                                (cons __tmp15201 __tmp15198))))
                         (declare (not safe))
                         (cons __tmp15203 __tmp15197))))
                  (declare (not safe))
                  (cons __tmp15205 __tmp15196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp15207
                                                         __tmp15195))))
                                            (declare (not safe))
                                            (cons __tmp15209 __tmp15194)))
                                         (__tmp15174
                                          (let ((__tmp15175
                                                 (let ((__tmp15191
                                                        |[1]#_g15192_|)
                                                       (__tmp15176
                                                        (let ((__tmp15189
                                                               |[1]#_g15190_|)
                                                              (__tmp15177
                                                               (let ((__tmp15187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g15188_|)
                             (__tmp15178
                              (let ((__tmp15185 |[1]#_g15186_|)
                                    (__tmp15179
                                     (let ((__tmp15183 |[1]#_g15184_|)
                                           (__tmp15180
                                            (let ((__tmp15181 |[1]#_g15182_|))
                                              (declare (not safe))
                                              (cons __tmp15181 '()))))
                                       (declare (not safe))
                                       (cons __tmp15183 __tmp15180))))
                                (declare (not safe))
                                (cons __tmp15185 __tmp15179))))
                         (declare (not safe))
                         (cons __tmp15187 __tmp15178))))
                  (declare (not safe))
                  (cons __tmp15189 __tmp15177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp15191
                                                         __tmp15176))))
                                            (declare (not safe))
                                            (cons __tmp15175 '()))))
                                     (declare (not safe))
                                     (cons __tmp15193 __tmp15174))))
                              (declare (not safe))
                              (cons __tmp15211 __tmp15173))))
                       (declare (not safe))
                       (cons __tmp15213 __tmp15172))))
                (declare (not safe))
                (cons __tmp15215 __tmp15171))))
         (declare (not safe))
         (cons __tmp15216 __tmp15170))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g15219_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g15220_|
       'expander-identifiers:
       (let ((__tmp15221
              (let ((__tmp15242 |[1]#_g15220_|)
                    (__tmp15222
                     (let ((__tmp15240 |[1]#_g15241_|)
                           (__tmp15223
                            (let ((__tmp15238 |[1]#_g15239_|)
                                  (__tmp15224
                                   (let ((__tmp15232
                                          (let ((__tmp15236 |[1]#_g15237_|)
                                                (__tmp15233
                                                 (let ((__tmp15234
                                                        |[1]#_g15235_|))
                                                   (declare (not safe))
                                                   (cons __tmp15234 '()))))
                                            (declare (not safe))
                                            (cons __tmp15236 __tmp15233)))
                                         (__tmp15225
                                          (let ((__tmp15226
                                                 (let ((__tmp15230
                                                        |[1]#_g15231_|)
                                                       (__tmp15227
                                                        (let ((__tmp15228
                                                               |[1]#_g15229_|))
                                                          (declare (not safe))
                                                          (cons __tmp15228
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp15230
                                                         __tmp15227))))
                                            (declare (not safe))
                                            (cons __tmp15226 '()))))
                                     (declare (not safe))
                                     (cons __tmp15232 __tmp15225))))
                              (declare (not safe))
                              (cons __tmp15238 __tmp15224))))
                       (declare (not safe))
                       (cons __tmp15240 __tmp15223))))
                (declare (not safe))
                (cons __tmp15242 __tmp15222))))
         (declare (not safe))
         (cons '#f __tmp15221))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
