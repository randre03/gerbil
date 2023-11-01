(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g10917_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10924_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10926_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10928_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10936_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10939_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10941_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10943_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10945_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10955_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10957_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10959_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10964_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10966_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10968_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10970_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10972_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10978_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10979_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10980_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10988_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10991_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10993_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g10995_|
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
       |[1]#_g10917_|
       'expander-identifiers:
       (let ((__tmp10918
              (let ((__tmp10927 |[1]#_g10917_|)
                    (__tmp10919
                     (let ((__tmp10925 |[1]#_g10926_|)
                           (__tmp10920
                            (let ((__tmp10923 |[1]#_g10924_|)
                                  (__tmp10921
                                   (let ((__tmp10922
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp10922))))
                              (declare (not safe))
                              (cons __tmp10923 __tmp10921))))
                       (declare (not safe))
                       (cons __tmp10925 __tmp10920))))
                (declare (not safe))
                (cons __tmp10927 __tmp10919))))
         (declare (not safe))
         (cons '() __tmp10918))
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
       |[1]#_g10928_|
       'expander-identifiers:
       (let ((__tmp10929
              (let ((__tmp10944 |[1]#_g10928_|)
                    (__tmp10930
                     (let ((__tmp10942 |[1]#_g10943_|)
                           (__tmp10931
                            (let ((__tmp10940 |[1]#_g10941_|)
                                  (__tmp10932
                                   (let ((__tmp10937
                                          (let ((__tmp10938 |[1]#_g10939_|))
                                            (declare (not safe))
                                            (cons __tmp10938 '())))
                                         (__tmp10933
                                          (let ((__tmp10934
                                                 (let ((__tmp10935
                                                        |[1]#_g10936_|))
                                                   (declare (not safe))
                                                   (cons __tmp10935 '()))))
                                            (declare (not safe))
                                            (cons __tmp10934 '()))))
                                     (declare (not safe))
                                     (cons __tmp10937 __tmp10933))))
                              (declare (not safe))
                              (cons __tmp10940 __tmp10932))))
                       (declare (not safe))
                       (cons __tmp10942 __tmp10931))))
                (declare (not safe))
                (cons __tmp10944 __tmp10930))))
         (declare (not safe))
         (cons '() __tmp10929))
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
       |[1]#_g10945_|
       'expander-identifiers:
       (let ((__tmp10974
              (let ((__tmp10977 |[1]#_g10928_|)
                    (__tmp10975
                     (let ((__tmp10976 |[1]#_g10917_|))
                       (declare (not safe))
                       (cons __tmp10976 '()))))
                (declare (not safe))
                (cons __tmp10977 __tmp10975)))
             (__tmp10946
              (let ((__tmp10973 |[1]#_g10945_|)
                    (__tmp10947
                     (let ((__tmp10971 |[1]#_g10972_|)
                           (__tmp10948
                            (let ((__tmp10969 |[1]#_g10970_|)
                                  (__tmp10949
                                   (let ((__tmp10960
                                          (let ((__tmp10967 |[1]#_g10968_|)
                                                (__tmp10961
                                                 (let ((__tmp10965
                                                        |[1]#_g10966_|)
                                                       (__tmp10962
                                                        (let ((__tmp10963
                                                               |[1]#_g10964_|))
                                                          (declare (not safe))
                                                          (cons __tmp10963
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp10965
                                                         __tmp10962))))
                                            (declare (not safe))
                                            (cons __tmp10967 __tmp10961)))
                                         (__tmp10950
                                          (let ((__tmp10951
                                                 (let ((__tmp10958
                                                        |[1]#_g10959_|)
                                                       (__tmp10952
                                                        (let ((__tmp10956
                                                               |[1]#_g10957_|)
                                                              (__tmp10953
                                                               (let ((__tmp10954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g10955_|))
                         (declare (not safe))
                         (cons __tmp10954 '()))))
                  (declare (not safe))
                  (cons __tmp10956 __tmp10953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10958
                                                         __tmp10952))))
                                            (declare (not safe))
                                            (cons __tmp10951 '()))))
                                     (declare (not safe))
                                     (cons __tmp10960 __tmp10950))))
                              (declare (not safe))
                              (cons __tmp10969 __tmp10949))))
                       (declare (not safe))
                       (cons __tmp10971 __tmp10948))))
                (declare (not safe))
                (cons __tmp10973 __tmp10947))))
         (declare (not safe))
         (cons __tmp10974 __tmp10946))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g10978_| |[1]#_g10979_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g10980_|
       'expander-identifiers:
       (let ((__tmp10997
              (let ((__tmp11000 |[1]#_g10928_|)
                    (__tmp10998
                     (let ((__tmp10999 |[1]#_g10917_|))
                       (declare (not safe))
                       (cons __tmp10999 '()))))
                (declare (not safe))
                (cons __tmp11000 __tmp10998)))
             (__tmp10981
              (let ((__tmp10996 |[1]#_g10980_|)
                    (__tmp10982
                     (let ((__tmp10994 |[1]#_g10995_|)
                           (__tmp10983
                            (let ((__tmp10992 |[1]#_g10993_|)
                                  (__tmp10984
                                   (let ((__tmp10989
                                          (let ((__tmp10990 |[1]#_g10991_|))
                                            (declare (not safe))
                                            (cons __tmp10990 '())))
                                         (__tmp10985
                                          (let ((__tmp10986
                                                 (let ((__tmp10987
                                                        |[1]#_g10988_|))
                                                   (declare (not safe))
                                                   (cons __tmp10987 '()))))
                                            (declare (not safe))
                                            (cons __tmp10986 '()))))
                                     (declare (not safe))
                                     (cons __tmp10989 __tmp10985))))
                              (declare (not safe))
                              (cons __tmp10992 __tmp10984))))
                       (declare (not safe))
                       (cons __tmp10994 __tmp10983))))
                (declare (not safe))
                (cons __tmp10996 __tmp10982))))
         (declare (not safe))
         (cons __tmp10997 __tmp10981))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g10978_| |[1]#_g10979_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx9053_)
        (let* ((_g90579075_
                (lambda (_g90589071_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g90589071_)))
               (_g90569131_
                (lambda (_g90589079_)
                  (if (gx#stx-pair? _g90589079_)
                      (let ((_e90639082_ (gx#syntax-e _g90589079_)))
                        (let ((_hd90629086_
                               (let ()
                                 (declare (not safe))
                                 (##car _e90639082_)))
                              (_tl90619089_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e90639082_))))
                          (if (gx#stx-pair? _tl90619089_)
                              (let ((_e90669092_ (gx#syntax-e _tl90619089_)))
                                (let ((_hd90659096_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e90669092_)))
                                      (_tl90649099_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e90669092_))))
                                  (if (gx#stx-pair? _tl90649099_)
                                      (let ((_e90699102_
                                             (gx#syntax-e _tl90649099_)))
                                        (let ((_hd90689106_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e90699102_)))
                                              (_tl90679109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e90699102_))))
                                          (if (gx#stx-null? _tl90679109_)
                                              ((lambda (_L9112_ _L9114_)
                                                 (let ((__tmp11022
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp11001
                                                        (let ((__tmp11019
                                                               (let ((__tmp11021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp11020
                              (let ()
                                (declare (not safe))
                                (cons _L9114_ '()))))
                         (declare (not safe))
                         (cons __tmp11021 __tmp11020)))
                      (__tmp11002
                       (let ((__tmp11003
                              (let ((__tmp11018 (gx#datum->syntax '#f 'raise))
                                    (__tmp11004
                                     (let ((__tmp11005
                                            (let ((__tmp11017
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp11006
                                                   (let ((__tmp11007
                                                          (let ((__tmp11008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp11014
                                (let ((__tmp11016
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp11015
                                       (let ()
                                         (declare (not safe))
                                         (cons _L9112_ '()))))
                                  (declare (not safe))
                                  (cons __tmp11016 __tmp11015)))
                               (__tmp11009
                                (let ((__tmp11010
                                       (let ((__tmp11011
                                              (let ((__tmp11013
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp11012
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L9114_ '()))))
                                                (declare (not safe))
                                                (cons __tmp11013 __tmp11012))))
                                         (declare (not safe))
                                         (cons __tmp11011 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp11010))))
                           (declare (not safe))
                           (cons __tmp11014 __tmp11009))))
                    (declare (not safe))
                    (cons 'where: __tmp11008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp11007))))
                                              (declare (not safe))
                                              (cons __tmp11017 __tmp11006))))
                                       (declare (not safe))
                                       (cons __tmp11005 '()))))
                                (declare (not safe))
                                (cons __tmp11018 __tmp11004))))
                         (declare (not safe))
                         (cons __tmp11003 '()))))
                  (declare (not safe))
                  (cons __tmp11019 __tmp11002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp11022
                                                         __tmp11001)))
                                               _hd90689106_
                                               _hd90659096_)
                                              (_g90579075_ _g90589079_))))
                                      (_g90579075_ _g90589079_))))
                              (_g90579075_ _g90589079_))))
                      (_g90579075_ _g90589079_)))))
          (_g90569131_ _$stx9053_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx9135_)
        (let* ((_g91389165_
                (lambda (_g91399161_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g91399161_)))
               (_g91379400_
                (lambda (_g91399169_)
                  (if (gx#stx-pair? _g91399169_)
                      (let ((_e91449172_ (gx#syntax-e _g91399169_)))
                        (let ((_hd91439176_
                               (let ()
                                 (declare (not safe))
                                 (##car _e91449172_)))
                              (_tl91429179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e91449172_))))
                          (if (gx#stx-pair? _tl91429179_)
                              (let ((_e91479182_ (gx#syntax-e _tl91429179_)))
                                (let ((_hd91469186_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e91479182_)))
                                      (_tl91459189_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e91479182_))))
                                  (if (gx#stx-pair? _hd91469186_)
                                      (let ((_e91509192_
                                             (gx#syntax-e _hd91469186_)))
                                        (let ((_hd91499196_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e91509192_)))
                                              (_tl91489199_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e91509192_))))
                                          (if (gx#stx-pair/null? _tl91489199_)
                                              (let ((_g11023_
                                                     (gx#syntax-split-splice
                                                      _tl91489199_
                                                      '0)))
                                                (begin
                                                  (let ((_g11024_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g11023_)
                                                               (##vector-length
                                                                _g11023_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g11024_ 2)))
                (error "Context expects 2 values" _g11024_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target91519202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g11023_
                                                            0)))
                                                        (_tl91539205_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g11023_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl91539205_)
                                                        (letrec ((_loop91549208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd91529212_ _getf91589215_)
                            (if (gx#stx-pair? _hd91529212_)
                                (let ((_e91559218_ (gx#syntax-e _hd91529212_)))
                                  (let ((_lp-hd91569222_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e91559218_)))
                                        (_lp-tl91579225_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e91559218_))))
                                    (_loop91549208_
                                     _lp-tl91579225_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd91569222_
                                             _getf91589215_)))))
                                (let ((_getf91599228_
                                       (reverse _getf91589215_)))
                                  (if (gx#stx-null? _tl91459189_)
                                      ((lambda (_L9232_ _L9234_)
                                         (let* ((_g92549278_
                                                 (lambda (_g92559274_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g92559274_)))
                                                (_g92539385_
                                                 (lambda (_g92559282_)
                                                   (if (gx#stx-pair?
                                                        _g92559282_)
                                                       (let ((_e92609285_
                                                              (gx#syntax-e
                                                               _g92559282_)))
                                                         (let ((_hd92599289_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e92609285_)))
                       (_tl92589292_
                        (let () (declare (not safe)) (##cdr _e92609285_))))
                   (if (gx#stx-pair? _tl92589292_)
                       (let ((_e92639295_ (gx#syntax-e _tl92589292_)))
                         (let ((_hd92629299_
                                (let ()
                                  (declare (not safe))
                                  (##car _e92639295_)))
                               (_tl92619302_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e92639295_))))
                           (if (gx#stx-pair/null? _hd92629299_)
                               (let ((_g11025_
                                      (gx#syntax-split-splice
                                       _hd92629299_
                                       '0)))
                                 (begin
                                   (let ((_g11026_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g11025_)
                                                (##vector-length _g11025_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g11026_ 2)))
                                         (error "Context expects 2 values"
                                                _g11026_)))
                                   (let ((_target92649305_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g11025_ 0)))
                                         (_tl92669308_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g11025_ 1))))
                                     (if (gx#stx-null? _tl92669308_)
                                         (letrec ((_loop92679311_
                                                   (lambda (_hd92659315_
                                                            _macro-getf92719318_)
                                                     (if (gx#stx-pair?
                                                          _hd92659315_)
                                                         (let ((_e92689321_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd92659315_)))
                   (let ((_lp-hd92699325_
                          (let () (declare (not safe)) (##car _e92689321_)))
                         (_lp-tl92709328_
                          (let () (declare (not safe)) (##cdr _e92689321_))))
                     (_loop92679311_
                      _lp-tl92709328_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd92699325_ _macro-getf92719318_)))))
                 (let ((_macro-getf92729331_ (reverse _macro-getf92719318_)))
                   (if (gx#stx-null? _tl92619302_)
                       ((lambda (_L9335_ _L9337_)
                          (let ()
                            (let ((__tmp11150 (gx#datum->syntax '#f 'begin))
                                  (__tmp11027
                                   (let ((__tmp11145
                                          (let ((__tmp11149
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp11146
                                                 (let ((__tmp11147
                                                        (let ((__tmp11148
                                                               (lambda (_g93629365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g93639368_)
                         (let ()
                           (declare (not safe))
                           (cons _g93629365_ _g93639368_)))))
                  (declare (not safe))
                  (foldr1 __tmp11148 '() _L9335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9337_ __tmp11147))))
                                            (declare (not safe))
                                            (cons __tmp11149 __tmp11146)))
                                         (__tmp11028
                                          (let ((__tmp11112
                                                 (let ((__tmp11144
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp11113
                                                        (let ((__tmp11141
                                                               (let ((__tmp11142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp11143 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp11143 '()))))
                         (declare (not safe))
                         (cons _L9234_ __tmp11142)))
                      (__tmp11114
                       (let ((__tmp11115
                              (let ((__tmp11140 (gx#datum->syntax '#f 'if))
                                    (__tmp11116
                                     (let ((__tmp11136
                                            (let ((__tmp11139
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp11137
                                                   (let ((__tmp11138
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp11138 '()))))
                                              (declare (not safe))
                                              (cons __tmp11139 __tmp11137)))
                                           (__tmp11117
                                            (let ((__tmp11122
                                                   (let ((__tmp11135
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp11123
                                                          (let ((__tmp11128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp11134 (gx#datum->syntax '#f 'e))
                               (__tmp11129
                                (let ((__tmp11130
                                       (let ((__tmp11133
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp11131
                                              (let ((__tmp11132
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp11132 '()))))
                                         (declare (not safe))
                                         (cons __tmp11133 __tmp11131))))
                                  (declare (not safe))
                                  (cons __tmp11130 '()))))
                           (declare (not safe))
                           (cons __tmp11134 __tmp11129)))
                        (__tmp11124
                         (let ((__tmp11125
                                (let ((__tmp11126
                                       (let ((__tmp11127
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp11127 '()))))
                                  (declare (not safe))
                                  (cons _L9337_ __tmp11126))))
                           (declare (not safe))
                           (cons __tmp11125 '()))))
                    (declare (not safe))
                    (cons __tmp11128 __tmp11124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp11135
                                                           __tmp11123)))
                                                  (__tmp11118
                                                   (let ((__tmp11119
                                                          (let ((__tmp11120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp11121 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp11121 '()))))
                    (declare (not safe))
                    (cons _L9337_ __tmp11120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp11119 '()))))
                                              (declare (not safe))
                                              (cons __tmp11122 __tmp11118))))
                                       (declare (not safe))
                                       (cons __tmp11136 __tmp11117))))
                                (declare (not safe))
                                (cons __tmp11140 __tmp11116))))
                         (declare (not safe))
                         (cons __tmp11115 '()))))
                  (declare (not safe))
                  (cons __tmp11141 __tmp11114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp11144
                                                         __tmp11113)))
                                                (__tmp11029
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L9232_
                                                    _L9335_
                                                    _L9232_
                                                    _L9335_
                                                    _L9232_)
                                                   (let ((__tmp11030
                                                          (lambda (_g93569371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g93579374_
                           _g93589376_
                           _g93599378_
                           _g93609380_
                           _g93619382_)
                    (let ((__tmp11031
                           (let ((__tmp11111 (gx#datum->syntax '#f 'def))
                                 (__tmp11032
                                  (let ((__tmp11108
                                         (let ((__tmp11109
                                                (let ((__tmp11110
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp11110 '()))))
                                           (declare (not safe))
                                           (cons _g93569371_ __tmp11109)))
                                        (__tmp11033
                                         (let ((__tmp11034
                                                (let ((__tmp11107
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp11035
                                                       (let ((__tmp11103
                                                              (let ((__tmp11106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp11104
                             (let ((__tmp11105 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp11105 '()))))
                        (declare (not safe))
                        (cons __tmp11106 __tmp11104)))
                     (__tmp11036
                      (let ((__tmp11065
                             (let ((__tmp11102 (gx#datum->syntax '#f 'let))
                                   (__tmp11066
                                    (let ((__tmp11095
                                           (let ((__tmp11101
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp11096
                                                  (let ((__tmp11097
                                                         (let ((__tmp11100
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp11098
                        (let ((__tmp11099 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp11099 '()))))
                   (declare (not safe))
                   (cons __tmp11100 __tmp11098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp11097 '()))))
                                             (declare (not safe))
                                             (cons __tmp11101 __tmp11096)))
                                          (__tmp11067
                                           (let ((__tmp11068
                                                  (let ((__tmp11094
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp11069
                                                         (let ((__tmp11091
                                                                (let ((__tmp11092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp11093 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp11093 '()))))
                          (declare (not safe))
                          (cons _L9337_ __tmp11092)))
                       (__tmp11070
                        (let ((__tmp11088
                               (let ((__tmp11089
                                      (let ((__tmp11090
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp11090 '()))))
                                 (declare (not safe))
                                 (cons _g93579374_ __tmp11089)))
                              (__tmp11071
                               (let ((__tmp11072
                                      (let ((__tmp11087
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp11073
                                             (let ((__tmp11074
                                                    (let ((__tmp11084
                                                           (let ((__tmp11086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp11085
                          (let () (declare (not safe)) (cons _L9234_ '()))))
                     (declare (not safe))
                     (cons __tmp11086 __tmp11085)))
                  (__tmp11075
                   (let ((__tmp11076
                          (let ((__tmp11083 (gx#datum->syntax '#f '@list))
                                (__tmp11077
                                 (let ((__tmp11080
                                        (let ((__tmp11082
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp11081
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g93569371_ '()))))
                                          (declare (not safe))
                                          (cons __tmp11082 __tmp11081)))
                                       (__tmp11078
                                        (let ((__tmp11079
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp11079 '()))))
                                   (declare (not safe))
                                   (cons __tmp11080 __tmp11078))))
                            (declare (not safe))
                            (cons __tmp11083 __tmp11077))))
                     (declare (not safe))
                     (cons __tmp11076 '()))))
              (declare (not safe))
              (cons __tmp11084 __tmp11075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp11074))))
                                        (declare (not safe))
                                        (cons __tmp11087 __tmp11073))))
                                 (declare (not safe))
                                 (cons __tmp11072 '()))))
                          (declare (not safe))
                          (cons __tmp11088 __tmp11071))))
                   (declare (not safe))
                   (cons __tmp11091 __tmp11070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp11094
                                                          __tmp11069))))
                                             (declare (not safe))
                                             (cons __tmp11068 '()))))
                                      (declare (not safe))
                                      (cons __tmp11095 __tmp11067))))
                               (declare (not safe))
                               (cons __tmp11102 __tmp11066)))
                            (__tmp11037
                             (let ((__tmp11038
                                    (let ((__tmp11064
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp11039
                                           (let ((__tmp11061
                                                  (let ((__tmp11062
                                                         (let ((__tmp11063
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp11063 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L9337_ __tmp11062)))
                                                 (__tmp11040
                                                  (let ((__tmp11058
                                                         (let ((__tmp11059
                                                                (let ((__tmp11060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp11060 '()))))
                   (declare (not safe))
                   (cons _g93579374_ __tmp11059)))
                (__tmp11041
                 (let ((__tmp11042
                        (let ((__tmp11057 (gx#datum->syntax '#f 'error))
                              (__tmp11043
                               (let ((__tmp11044
                                      (let ((__tmp11054
                                             (let ((__tmp11056
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp11055
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L9234_ '()))))
                                               (declare (not safe))
                                               (cons __tmp11056 __tmp11055)))
                                            (__tmp11045
                                             (let ((__tmp11046
                                                    (let ((__tmp11053
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp11047
                                                           (let ((__tmp11050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp11052 (gx#datum->syntax '#f 'quote))
                                (__tmp11051
                                 (let ()
                                   (declare (not safe))
                                   (cons _g93569371_ '()))))
                            (declare (not safe))
                            (cons __tmp11052 __tmp11051)))
                         (__tmp11048
                          (let ((__tmp11049 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp11049 '()))))
                     (declare (not safe))
                     (cons __tmp11050 __tmp11048))))
              (declare (not safe))
              (cons __tmp11053 __tmp11047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp11046 '()))))
                                        (declare (not safe))
                                        (cons __tmp11054 __tmp11045))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp11044))))
                          (declare (not safe))
                          (cons __tmp11057 __tmp11043))))
                   (declare (not safe))
                   (cons __tmp11042 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp11058
                                                          __tmp11041))))
                                             (declare (not safe))
                                             (cons __tmp11061 __tmp11040))))
                                      (declare (not safe))
                                      (cons __tmp11064 __tmp11039))))
                               (declare (not safe))
                               (cons __tmp11038 '()))))
                        (declare (not safe))
                        (cons __tmp11065 __tmp11037))))
                 (declare (not safe))
                 (cons __tmp11103 __tmp11036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp11107
                                                        __tmp11035))))
                                           (declare (not safe))
                                           (cons __tmp11034 '()))))
                                    (declare (not safe))
                                    (cons __tmp11108 __tmp11033))))
                             (declare (not safe))
                             (cons __tmp11111 __tmp11032))))
                      (declare (not safe))
                      (cons __tmp11031 _g93619382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp11030
                                                             '()
                                                             _L9232_
                                                             _L9335_
                                                             _L9232_
                                                             _L9335_
                                                             _L9232_)))))
                                            (declare (not safe))
                                            (cons __tmp11112 __tmp11029))))
                                     (declare (not safe))
                                     (cons __tmp11145 __tmp11028))))
                              (declare (not safe))
                              (cons __tmp11150 __tmp11027))))
                        _macro-getf92729331_
                        _hd92599289_)
                       (_g92549278_ _g92559282_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop92679311_
                                            _target92649305_
                                            '()))
                                         (_g92549278_ _g92559282_)))))
                               (_g92549278_ _g92559282_))))
                       (_g92549278_ _g92559282_))))
               (_g92549278_ _g92559282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g92539385_
                                            (list (gx#stx-identifier
                                                   _L9234_
                                                   '"macro-"
                                                   _L9234_)
                                                  (map (lambda (_f9389_)
                                                         (gx#stx-identifier
                                                          _f9389_
                                                          '"macro-"
                                                          _f9389_))
                                                       (let ((__tmp11151
                                                              (lambda (_g93919394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g93929397_)
                        (let ()
                          (declare (not safe))
                          (cons _g93919394_ _g93929397_)))))
                 (declare (not safe))
                 (foldr1 __tmp11151 '() _L9232_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf91599228_
                                       _hd91499196_)
                                      (_g91389165_ _g91399169_)))))))
                  (_loop91549208_ _target91519202_ '()))
                (_g91389165_ _g91399169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g91389165_ _g91399169_))))
                                      (_g91389165_ _g91399169_))))
                              (_g91389165_ _g91399169_))))
                      (_g91389165_ _g91399169_)))))
          (_g91379400_ _stx9135_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx9406_)
        (let* ((_g94109430_
                (lambda (_g94119426_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g94119426_)))
               (_g94099501_
                (lambda (_g94119434_)
                  (if (gx#stx-pair? _g94119434_)
                      (let ((_e94159437_ (gx#syntax-e _g94119434_)))
                        (let ((_hd94149441_
                               (let ()
                                 (declare (not safe))
                                 (##car _e94159437_)))
                              (_tl94139444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e94159437_))))
                          (if (gx#stx-pair/null? _tl94139444_)
                              (let ((_g11152_
                                     (gx#syntax-split-splice _tl94139444_ '0)))
                                (begin
                                  (let ((_g11153_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g11152_)
                                               (##vector-length _g11152_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g11153_ 2)))
                                        (error "Context expects 2 values"
                                               _g11153_)))
                                  (let ((_target94169447_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g11152_ 0)))
                                        (_tl94189450_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g11152_ 1))))
                                    (if (gx#stx-null? _tl94189450_)
                                        (letrec ((_loop94199453_
                                                  (lambda (_hd94179457_
                                                           _defexn94239460_)
                                                    (if (gx#stx-pair?
                                                         _hd94179457_)
                                                        (let ((_e94209463_
                                                               (gx#syntax-e
                                                                _hd94179457_)))
                                                          (let ((_lp-hd94219467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e94209463_)))
                        (_lp-tl94229470_
                         (let () (declare (not safe)) (##cdr _e94209463_))))
                    (_loop94199453_
                     _lp-tl94229470_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd94219467_ _defexn94239460_)))))
                (let ((_defexn94249473_ (reverse _defexn94239460_)))
                  ((lambda (_L9477_)
                     (let ((__tmp11159 (gx#datum->syntax '#f 'begin))
                           (__tmp11154
                            (let ((__tmp11155
                                   (lambda (_g94929495_ _g94939498_)
                                     (let ((__tmp11156
                                            (let ((__tmp11158
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp11157
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g94929495_ '()))))
                                              (declare (not safe))
                                              (cons __tmp11158 __tmp11157))))
                                       (declare (not safe))
                                       (cons __tmp11156 _g94939498_)))))
                              (declare (not safe))
                              (foldr1 __tmp11155 '() _L9477_))))
                       (declare (not safe))
                       (cons __tmp11159 __tmp11154)))
                   _defexn94249473_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop94199453_
                                           _target94169447_
                                           '()))
                                        (_g94109430_ _g94119434_)))))
                              (_g94109430_ _g94119434_))))
                      (_g94109430_ _g94119434_)))))
          (_g94099501_ _$stx9406_))))))
