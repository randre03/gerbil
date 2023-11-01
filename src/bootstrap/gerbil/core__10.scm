(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g42987_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42988_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42992_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42993_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42994_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42996_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42997_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42998_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42999_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g43000_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g43001_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g43002_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43003_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43004_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43005_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43068_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g43090_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g43093_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g43094_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43100_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43101_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43102_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43103_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43104_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30428_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30428_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30425_)
        (if (gx#identifier? _stx30425_)
            (let ((__tmp42986 (gx#syntax-local-value _stx30425_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp42986))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28731_ _match-stx28733_)
        (letrec ((_parse128735_
                  (lambda (_hd29088_)
                    (let* ((___stx4020540206_ _hd29088_)
                           (_g2911429256_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4020540206_))))
                      (let ((___kont4020840209_
                             (lambda (_L30188_ _L30190_)
                               (let* ((___stx4012540126_ _L30188_)
                                      (_g3020730240_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4012540126_))))
                                 (let ((___kont4012840129_
                                        (lambda ()
                                          (cons '?: (cons _L30190_ '()))))
                                       (___kont4013040131_
                                        (lambda (_L30381_)
                                          (cons '?:
                                                (cons _L30190_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse128735_
                                                               _L30381_))
                                                            '())))))
                                       (___kont4013240133_
                                        (lambda (_L30351_)
                                          (cons '?:
                                                (cons _L30190_
                                                      (cons '=>:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (_parse128735_ _L30351_))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont4013440135_
                                        (lambda (_L30302_ _L30304_)
                                          (cons '?:
                                                (cons _L30190_
                                                      (cons '::
                                                            (cons _L30304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (let ()
                                        (declare (not safe))
                                        (_parse128735_ _L30302_))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont4013640137_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28742_ _hd29088_)))))
                                   (let ((_g3020330392_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4012540126_)
                                                (let ((_e3021230371_
                                                       (gx#syntax-e
                                                        ___stx4012540126_)))
                                                  (let ((_tl3021030378_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3021230371_)))
                                                        (_hd3021130375_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3021230371_))))
                                                    (if (gx#stx-null?
                                                         _tl3021030378_)
                                                        (___kont4013040131_
                                                         _hd3021130375_)
                                                        (if (gx#identifier?
                                                             _hd3021130375_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42988_|
                         _hd3021130375_)
                        (if (gx#stx-pair? _tl3021030378_)
                            (let ((_e3021930341_ (gx#syntax-e _tl3021030378_)))
                              (let ((_tl3021730348_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3021930341_)))
                                    (_hd3021830345_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3021930341_))))
                                (if (gx#stx-null? _tl3021730348_)
                                    (___kont4013240133_ _hd3021830345_)
                                    (___kont4013640137_))))
                            (___kont4013640137_))
                        (___kont4013640137_))
                    (if (gx#stx-datum? _hd3021130375_)
                        (let ((_e3022530268_ (gx#stx-e _hd3021130375_)))
                          (if (equal? _e3022530268_ '::)
                              (if (gx#stx-pair? _tl3021030378_)
                                  (let ((_e3022830272_
                                         (gx#syntax-e _tl3021030378_)))
                                    (let ((_tl3022630279_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3022830272_)))
                                          (_hd3022730276_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3022830272_))))
                                      (if (gx#stx-pair? _tl3022630279_)
                                          (let ((_e3023130282_
                                                 (gx#syntax-e _tl3022630279_)))
                                            (let ((_tl3022930289_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3023130282_)))
                                                  (_hd3023030286_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3023130282_))))
                                              (if (gx#identifier?
                                                   _hd3023030286_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42987_|
                                                       _hd3023030286_)
                                                      (if (gx#stx-pair?
                                                           _tl3022930289_)
                                                          (let ((_e3023430292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3022930289_)))
                    (let ((_tl3023230299_
                           (let () (declare (not safe)) (##cdr _e3023430292_)))
                          (_hd3023330296_
                           (let ()
                             (declare (not safe))
                             (##car _e3023430292_))))
                      (if (gx#stx-null? _tl3023230299_)
                          (___kont4013440135_ _hd3023330296_ _hd3022730276_)
                          (___kont4013640137_))))
                  (___kont4013640137_))
              (___kont4013640137_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4013640137_))))
                                          (___kont4013640137_))))
                                  (___kont4013640137_))
                              (___kont4013640137_)))
                        (___kont4013640137_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4013640137_)))))
                                     (if (gx#stx-null? ___stx4012540126_)
                                         (___kont4012840129_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3020330392_))))))))
                            (___kont4021040211_
                             (lambda (_L30093_)
                               (let* ((___stx4010740108_ _L30093_)
                                      (_g3010530116_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4010740108_))))
                                 (let ((___kont4011040111_
                                        (lambda (_L30144_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128735_ _L30144_))))
                                       (___kont4011240113_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse128735_
                                                 _L30093_)))))
                                   (if (gx#stx-pair? ___stx4010740108_)
                                       (let ((_e3011030134_
                                              (gx#syntax-e ___stx4010740108_)))
                                         (let ((_tl3010830141_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3011030134_)))
                                               (_hd3010930138_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3011030134_))))
                                           (if (gx#stx-null? _tl3010830141_)
                                               (___kont4011040111_
                                                _hd3010930138_)
                                               (___kont4011240113_))))
                                       (___kont4011240113_))))))
                            (___kont4021240213_
                             (lambda (_L30008_)
                               (let* ((___stx4008940090_ _L30008_)
                                      (_g3002030031_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4008940090_))))
                                 (let ((___kont4009240093_
                                        (lambda (_L30059_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128735_ _L30059_))))
                                       (___kont4009440095_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse128735_
                                                 _L30008_)))))
                                   (if (gx#stx-pair? ___stx4008940090_)
                                       (let ((_e3002530049_
                                              (gx#syntax-e ___stx4008940090_)))
                                         (let ((_tl3002330056_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3002530049_)))
                                               (_hd3002430053_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3002530049_))))
                                           (if (gx#stx-null? _tl3002330056_)
                                               (___kont4009240093_
                                                _hd3002430053_)
                                               (___kont4009440095_))))
                                       (___kont4009440095_))))))
                            (___kont4021440215_
                             (lambda (_L29978_)
                               (cons 'not:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128735_ _L29978_))
                                           '()))))
                            (___kont4021640217_
                             (lambda (_L29934_ _L29936_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128735_ _L29936_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse128735_ _L29934_))
                                                 '())))))
                            (___kont4021840219_
                             (lambda (_L29878_ _L29880_ _L29881_)
                               (if (gx#stx-null? _L29878_)
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_parse128735_ _L29881_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (_parse128735_
                                                        _L29880_))
                                                     '())))
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_parse128735_ _L29881_))
                                               (cons (let ((__tmp42989
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons*)
                          (cons _L29880_ _L29878_))))
               (declare (not safe))
               (_parse128735_ __tmp42989))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont4022040221_
                             (lambda (_L29830_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28737_ _L29830_))))
                            (___kont4022240223_
                             (lambda (_L29800_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128735_ _L29800_))
                                           '()))))
                            (___kont4022440225_
                             (lambda (_L29763_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128735_ _L29763_))
                                           '()))))
                            (___kont4022640227_
                             (lambda (_L29739_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128735_ _L29739_))))
                            (___kont4022840229_
                             (lambda (_L29701_)
                               (cons 'values:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse-vector28738_ _L29701_))
                                           '()))))
                            (___kont4023040231_
                             (lambda (_L29673_)
                               (cons 'vector:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse-vector28738_ _L29673_))
                                           '()))))
                            (___kont4023240233_
                             (lambda (_L29634_)
                               (cons 'vector:
                                     (cons (let ((__tmp42990
                                                  (foldr (lambda (_g2964729650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2964829653_)
                   (cons _g2964729650_ _g2964829653_))
                 '()
                 _L29634_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_parse-vector28738_ __tmp42990))
                                           '()))))
                            (___kont4023640237_
                             (lambda (_L29580_ _L29582_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L29582_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-vector28738_
                                                    _L29580_))
                                                 '())))))
                            (___kont4023840239_
                             (lambda (_L29550_ _L29552_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L29552_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-class-body28740_
                                                    _L29550_))
                                                 '())))))
                            (___kont4024040241_
                             (lambda (_L29510_ _L29512_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _L29512_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _L29510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (___kont4024240243_
                             (lambda (_L29470_)
                               (cons 'datum: (cons (gx#stx-e _L29470_) '()))))
                            (___kont4024440245_
                             (lambda (_L29430_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28741_ _L29430_))))
                            (___kont4024640247_
                             (lambda (_L29386_ _L29388_)
                               (cons 'apply:
                                     (cons _L29388_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse128735_ _L29386_))
                                                 '())))))
                            (___kont4024840249_
                             (lambda (_L29334_)
                               (let ((__tmp42991
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29334_)
                                       (gx#stx-wrap-source
                                        (cons 'match: _hd29088_)
                                        (let ((_$e29345_
                                               (gx#stx-source _hd29088_)))
                                          (if _$e29345_
                                              _$e29345_
                                              (gx#stx-source _stx28731_)))))))
                                 (declare (not safe))
                                 (_parse128735_ __tmp42991))))
                            (___kont4025040251_
                             (lambda (_L29308_) (cons 'any: '())))
                            (___kont4025240253_
                             (lambda (_L29292_)
                               (cons 'var: (cons _L29292_ '()))))
                            (___kont4025440255_
                             (lambda (_L29274_)
                               (cons 'datum: (cons (gx#stx-e _L29274_) '()))))
                            (___kont4025640257_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28742_ _hd29088_)))))
                        (let* ((_g2911229285_
                                (lambda ()
                                  (let ((_L29274_ ___stx4020540206_))
                                    (if (gx#stx-datum? _L29274_)
                                        (___kont4025440255_ _L29274_)
                                        (___kont4025640257_)))))
                               (_g2911129301_
                                (lambda ()
                                  (let ((_L29292_ ___stx4020540206_))
                                    (if (and (gx#identifier? _L29292_)
                                             (not (gx#ellipsis? _L29292_)))
                                        (___kont4025240253_ _L29292_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2911229285_))))))
                               (_g2911029317_
                                (lambda ()
                                  (let ((_L29308_ ___stx4020540206_))
                                    (if (gx#underscore? _L29308_)
                                        (___kont4025040251_ _L29308_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2911129301_))))))
                               (___match4053240533_
                                (lambda (_e2924729324_
                                         _hd2924629328_
                                         _tl2924529331_)
                                  (let ((_L29334_ _hd2924629328_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29334_))
                                        (___kont4024840249_ _L29334_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2911029317_))))))
                               (___match4046640467_
                                (lambda (_e2921529490_
                                         _hd2921429494_
                                         _tl2921329497_
                                         _e2921829500_
                                         _hd2921729504_
                                         _tl2921629507_)
                                  (let ((_L29510_ _hd2921729504_)
                                        (_L29512_ _hd2921429494_))
                                    (if (and (gx#identifier? _L29512_)
                                             (or (gx#free-identifier=?
                                                  _L29512_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29512_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29512_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4024040241_ _L29510_ _L29512_)
                                        (if (gx#identifier? _hd2921429494_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g42993_|
                                                 _hd2921429494_)
                                                (___kont4024240243_
                                                 _hd2921729504_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g42992_|
                                                     _hd2921429494_)
                                                    (___kont4024440245_
                                                     _hd2921729504_)
                                                    (___match4053240533_
                                                     _e2921529490_
                                                     _hd2921429494_
                                                     _tl2921329497_)))
                                            (___match4053240533_
                                             _e2921529490_
                                             _hd2921429494_
                                             _tl2921329497_))))))
                               (___match4045240453_
                                (lambda (_e2921029540_
                                         _hd2920929544_
                                         _tl2920829547_)
                                  (let ((_L29550_ _tl2920829547_)
                                        (_L29552_ _hd2920929544_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                           _L29552_))
                                        (___kont4023840239_ _L29550_ _L29552_)
                                        (if (gx#stx-pair? _tl2920829547_)
                                            (let ((_e2921829500_
                                                   (gx#syntax-e
                                                    _tl2920829547_)))
                                              (let ((_tl2921629507_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2921829500_)))
                                                    (_hd2921729504_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2921829500_))))
                                                (if (gx#stx-null?
                                                     _tl2921629507_)
                                                    (___match4046640467_
                                                     _e2921029540_
                                                     _hd2920929544_
                                                     _tl2920829547_
                                                     _e2921829500_
                                                     _hd2921729504_
                                                     _tl2921629507_)
                                                    (if (gx#identifier?
                                                         _hd2920929544_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g42993_|
                                                             _hd2920929544_)
                                                            (___match4053240533_
                                                             _e2921029540_
                                                             _hd2920929544_
                                                             _tl2920829547_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42992_|
                         _hd2920929544_)
                        (___match4053240533_
                         _e2921029540_
                         _hd2920929544_
                         _tl2920829547_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42994_|
                             _hd2920929544_)
                            (if (gx#stx-pair? _tl2921629507_)
                                (let ((_e2924329376_
                                       (gx#syntax-e _tl2921629507_)))
                                  (let ((_tl2924129383_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2924329376_)))
                                        (_hd2924229380_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2924329376_))))
                                    (if (gx#stx-null? _tl2924129383_)
                                        (___kont4024640247_
                                         _hd2924229380_
                                         _hd2921729504_)
                                        (___match4053240533_
                                         _e2921029540_
                                         _hd2920929544_
                                         _tl2920829547_))))
                                (___match4053240533_
                                 _e2921029540_
                                 _hd2920929544_
                                 _tl2920829547_))
                            (___match4053240533_
                             _e2921029540_
                             _hd2920929544_
                             _tl2920829547_))))
                (___match4053240533_
                 _e2921029540_
                 _hd2920929544_
                 _tl2920829547_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4053240533_
                                             _e2921029540_
                                             _hd2920929544_
                                             _tl2920829547_))))))
                               (___match4044640447_
                                (lambda (_e2920529570_
                                         _hd2920429574_
                                         _tl2920329577_)
                                  (let ((_L29580_ _tl2920329577_)
                                        (_L29582_ _hd2920429574_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                           _L29582_))
                                        (___kont4023640237_ _L29580_ _L29582_)
                                        (___match4045240453_
                                         _e2920529570_
                                         _hd2920429574_
                                         _tl2920329577_)))))
                               (___match4044040441_
                                (lambda (_e2919129600_
                                         ___splice4023440235_
                                         _target2919229604_
                                         _tl2919429607_)
                                  (letrec ((_loop2919529610_
                                            (lambda (_hd2919329614_
                                                     _body2919929617_)
                                              (if (gx#stx-pair? _hd2919329614_)
                                                  (let ((_e2919629620_
                                                         (gx#syntax-e
                                                          _hd2919329614_)))
                                                    (let ((_lp-tl2919829627_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2919629620_)))
                                                          (_lp-hd2919729624_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2919629620_))))
                                                      (let ((__tmp42995
                                                             (cons _lp-hd2919729624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2919929617_)))
                (declare (not safe))
                (_loop2919529610_ _lp-tl2919829627_ __tmp42995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2920029630_
                                                         (reverse _body2919929617_)))
                                                    (___kont4023240233_
                                                     _body2920029630_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2919529610_
                                       _target2919229604_
                                       '())))))
                               (_g2910229656_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4020540206_)
                                      (let ((_e2919129600_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4020540206_))))
                                        (if (gx#stx-pair/null? _e2919129600_)
                                            (let ((___splice4023440235_
                                                   (gx#syntax-split-splice
                                                    _e2919129600_
                                                    '0)))
                                              (let ((_tl2919429607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4023440235_
                                                        '1)))
                                                    (_target2919229604_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4023440235_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2919429607_)
                                                    (___match4044040441_
                                                     _e2919129600_
                                                     ___splice4023440235_
                                                     _target2919229604_
                                                     _tl2919429607_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2911029317_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2911029317_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2911029317_)))))
                               (_g2909829773_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4020540206_)
                                      (let ((_e2917429759_
                                             (unbox (gx#syntax-e
                                                     ___stx4020540206_))))
                                        (___kont4022440225_ _e2917429759_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2910229656_)))))
                               (___match4029440295_
                                (lambda (_e2913129998_
                                         _hd2913030002_
                                         _tl2912930005_)
                                  (let ((_L30008_ _tl2912930005_))
                                    (if (gx#stx-list? _L30008_)
                                        (___kont4021240213_ _L30008_)
                                        (___match4044640447_
                                         _e2913129998_
                                         _hd2913030002_
                                         _tl2912930005_)))))
                               (___match4028440285_
                                (lambda (_e2912730083_
                                         _hd2912630087_
                                         _tl2912530090_)
                                  (let ((_L30093_ _tl2912530090_))
                                    (if (gx#stx-list? _L30093_)
                                        (___kont4021040211_ _L30093_)
                                        (___match4044640447_
                                         _e2912730083_
                                         _hd2912630087_
                                         _tl2912530090_))))))
                          (if (gx#stx-pair? ___stx4020540206_)
                              (let ((_e2912030168_
                                     (gx#syntax-e ___stx4020540206_)))
                                (let ((_tl2911830175_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2912030168_)))
                                      (_hd2911930172_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2912030168_))))
                                  (if (gx#identifier? _hd2911930172_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g43005_|
                                           _hd2911930172_)
                                          (if (gx#stx-pair? _tl2911830175_)
                                              (let ((_e2912330178_
                                                     (gx#syntax-e
                                                      _tl2911830175_)))
                                                (let ((_tl2912130185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2912330178_)))
                                                      (_hd2912230182_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2912330178_))))
                                                  (___kont4020840209_
                                                   _tl2912130185_
                                                   _hd2912230182_)))
                                              (___match4044640447_
                                               _e2912030168_
                                               _hd2911930172_
                                               _tl2911830175_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g43004_|
                                               _hd2911930172_)
                                              (___match4028440285_
                                               _e2912030168_
                                               _hd2911930172_
                                               _tl2911830175_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g43003_|
                                                   _hd2911930172_)
                                                  (___match4029440295_
                                                   _e2912030168_
                                                   _hd2911930172_
                                                   _tl2911830175_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g43002_|
                                                       _hd2911930172_)
                                                      (if (gx#stx-pair?
                                                           _tl2911830175_)
                                                          (let ((_e2913829968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2911830175_)))
                    (let ((_tl2913629975_
                           (let () (declare (not safe)) (##cdr _e2913829968_)))
                          (_hd2913729972_
                           (let ()
                             (declare (not safe))
                             (##car _e2913829968_))))
                      (if (gx#stx-null? _tl2913629975_)
                          (___kont4021440215_ _hd2913729972_)
                          (___match4044640447_
                           _e2912030168_
                           _hd2911930172_
                           _tl2911830175_))))
                  (___match4044640447_
                   _e2912030168_
                   _hd2911930172_
                   _tl2911830175_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g43001_|
                   _hd2911930172_)
                  (if (gx#stx-pair? _tl2911830175_)
                      (let ((_e2914629914_ (gx#syntax-e _tl2911830175_)))
                        (let ((_tl2914429921_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2914629914_)))
                              (_hd2914529918_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2914629914_))))
                          (if (gx#stx-pair? _tl2914429921_)
                              (let ((_e2914929924_
                                     (gx#syntax-e _tl2914429921_)))
                                (let ((_tl2914729931_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2914929924_)))
                                      (_hd2914829928_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2914929924_))))
                                  (if (gx#stx-null? _tl2914729931_)
                                      (___kont4021640217_
                                       _hd2914829928_
                                       _hd2914529918_)
                                      (___match4044640447_
                                       _e2912030168_
                                       _hd2911930172_
                                       _tl2911830175_))))
                              (___match4044640447_
                               _e2912030168_
                               _hd2911930172_
                               _tl2911830175_))))
                      (___match4044640447_
                       _e2912030168_
                       _hd2911930172_
                       _tl2911830175_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g43000_|
                       _hd2911930172_)
                      (if (gx#stx-pair? _tl2911830175_)
                          (let ((_e2915829858_ (gx#syntax-e _tl2911830175_)))
                            (let ((_tl2915629865_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2915829858_)))
                                  (_hd2915729862_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2915829858_))))
                              (if (gx#stx-pair? _tl2915629865_)
                                  (let ((_e2916129868_
                                         (gx#syntax-e _tl2915629865_)))
                                    (let ((_tl2915929875_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2916129868_)))
                                          (_hd2916029872_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2916129868_))))
                                      (___kont4021840219_
                                       _tl2915929875_
                                       _hd2916029872_
                                       _hd2915729862_)))
                                  (___match4044640447_
                                   _e2912030168_
                                   _hd2911930172_
                                   _tl2911830175_))))
                          (___match4044640447_
                           _e2912030168_
                           _hd2911930172_
                           _tl2911830175_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g42999_|
                           _hd2911930172_)
                          (___kont4022040221_ _tl2911830175_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42998_|
                               _hd2911930172_)
                              (if (gx#stx-pair? _tl2911830175_)
                                  (let ((_e2917229790_
                                         (gx#syntax-e _tl2911830175_)))
                                    (let ((_tl2917029797_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2917229790_)))
                                          (_hd2917129794_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2917229790_))))
                                      (if (gx#stx-null? _tl2917029797_)
                                          (___kont4022240223_ _hd2917129794_)
                                          (___match4044640447_
                                           _e2912030168_
                                           _hd2911930172_
                                           _tl2911830175_))))
                                  (___match4044640447_
                                   _e2912030168_
                                   _hd2911930172_
                                   _tl2911830175_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42997_|
                                   _hd2911930172_)
                                  (if (gx#stx-pair? _tl2911830175_)
                                      (let ((_e2918129729_
                                             (gx#syntax-e _tl2911830175_)))
                                        (let ((_tl2917929736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2918129729_)))
                                              (_hd2918029733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2918129729_))))
                                          (if (gx#stx-null? _tl2917929736_)
                                              (___kont4022640227_
                                               _hd2918029733_)
                                              (___kont4022840229_
                                               _tl2911830175_))))
                                      (___kont4022840229_ _tl2911830175_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42996_|
                                       _hd2911930172_)
                                      (___kont4023040231_ _tl2911830175_)
                                      (___match4044640447_
                                       _e2912030168_
                                       _hd2911930172_
                                       _tl2911830175_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4044640447_
                                       _e2912030168_
                                       _hd2911930172_
                                       _tl2911830175_))))
                              (let ()
                                (declare (not safe))
                                (_g2909829773_))))))))
                 (_parse-list28737_
                  (lambda (_body28917_)
                    (let* ((___stx4053540536_ _body28917_)
                           (_g2892328952_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4053540536_))))
                      (let ((___kont4053840539_
                             (lambda (_L29070_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128735_ _L29070_))))
                            (___kont4054040541_
                             (lambda (_L29022_ _L29024_ _L29025_)
                               (cons 'splice:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128735_ _L29025_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-list28737_
                                                    _L29022_))
                                                 '())))))
                            (___kont4054240543_
                             (lambda (_L28980_ _L28982_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128735_ _L28982_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-list28737_
                                                    _L28980_))
                                                 '())))))
                            (___kont4054440545_
                             (lambda ()
                               (if (gx#stx-null? _body28917_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _body28917_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128735_ _body28917_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28742_ _body28917_)))))))
                        (let* ((___match4058440585_
                                (lambda (_e2894628970_
                                         _hd2894528974_
                                         _tl2894428977_)
                                  (let ((_L28980_ _tl2894428977_)
                                        (_L28982_ _hd2894528974_))
                                    (if (not (gx#ellipsis? _L28982_))
                                        (___kont4054240543_ _L28980_ _L28982_)
                                        (___kont4054440545_)))))
                               (___match4057840579_
                                (lambda (_e2893829002_
                                         _hd2893729006_
                                         _tl2893629009_
                                         _e2894129012_
                                         _hd2894029016_
                                         _tl2893929019_)
                                  (let ((_L29022_ _tl2893929019_)
                                        (_L29024_ _hd2894029016_)
                                        (_L29025_ _hd2893729006_))
                                    (if (gx#ellipsis? _L29024_)
                                        (___kont4054040541_
                                         _L29022_
                                         _L29024_
                                         _L29025_)
                                        (___match4058440585_
                                         _e2893829002_
                                         _hd2893729006_
                                         _tl2893629009_))))))
                          (if (gx#stx-pair? ___stx4053540536_)
                              (let ((_e2892829046_
                                     (gx#syntax-e ___stx4053540536_)))
                                (let ((_tl2892629053_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2892829046_)))
                                      (_hd2892729050_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2892829046_))))
                                  (if (gx#stx-datum? _hd2892729050_)
                                      (let ((_e2892929056_
                                             (gx#stx-e _hd2892729050_)))
                                        (if (equal? _e2892929056_ '::)
                                            (if (gx#stx-pair? _tl2892629053_)
                                                (let ((_e2893229060_
                                                       (gx#syntax-e
                                                        _tl2892629053_)))
                                                  (let ((_tl2893029067_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2893229060_)))
                                                        (_hd2893129064_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2893229060_))))
                                                    (if (gx#stx-null?
                                                         _tl2893029067_)
                                                        (___kont4053840539_
                                                         _hd2893129064_)
                                                        (___match4057840579_
                                                         _e2892829046_
                                                         _hd2892729050_
                                                         _tl2892629053_
                                                         _e2893229060_
                                                         _hd2893129064_
                                                         _tl2893029067_))))
                                                (___match4058440585_
                                                 _e2892829046_
                                                 _hd2892729050_
                                                 _tl2892629053_))
                                            (if (gx#stx-pair? _tl2892629053_)
                                                (let ((_e2894129012_
                                                       (gx#syntax-e
                                                        _tl2892629053_)))
                                                  (let ((_tl2893929019_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2894129012_)))
                                                        (_hd2894029016_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2894129012_))))
                                                    (___match4057840579_
                                                     _e2892829046_
                                                     _hd2892729050_
                                                     _tl2892629053_
                                                     _e2894129012_
                                                     _hd2894029016_
                                                     _tl2893929019_)))
                                                (___match4058440585_
                                                 _e2892829046_
                                                 _hd2892729050_
                                                 _tl2892629053_))))
                                      (if (gx#stx-pair? _tl2892629053_)
                                          (let ((_e2894129012_
                                                 (gx#syntax-e _tl2892629053_)))
                                            (let ((_tl2893929019_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2894129012_)))
                                                  (_hd2894029016_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2894129012_))))
                                              (___match4057840579_
                                               _e2892829046_
                                               _hd2892729050_
                                               _tl2892629053_
                                               _e2894129012_
                                               _hd2894029016_
                                               _tl2893929019_)))
                                          (___match4058440585_
                                           _e2892829046_
                                           _hd2892729050_
                                           _tl2892629053_)))))
                              (___kont4054440545_)))))))
                 (_parse-vector28738_
                  (lambda (_body28914_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28739_ _body28914_))
                        (cons 'simple:
                              (cons (gx#stx-map _parse128735_ _body28914_)
                                    '()))
                        (cons 'list:
                              (cons (let ()
                                      (declare (not safe))
                                      (_parse-list28737_ _body28914_))
                                    '())))))
                 (_simple-vector?28739_
                  (lambda (_body28851_)
                    (let* ((___stx4058740588_ _body28851_)
                           (_g2885528867_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4058740588_))))
                      (let ((___kont4059040591_
                             (lambda (_L28895_ _L28897_)
                               (if (not (gx#ellipsis? _L28897_))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28739_ _L28895_))
                                   '#f)))
                            (___kont4059240593_
                             (lambda () (gx#stx-null? _body28851_))))
                        (if (gx#stx-pair? ___stx4058740588_)
                            (let ((_e2886128885_
                                   (gx#syntax-e ___stx4058740588_)))
                              (let ((_tl2885928892_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2886128885_)))
                                    (_hd2886028889_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2886128885_))))
                                (___kont4059040591_
                                 _tl2885928892_
                                 _hd2886028889_)))
                            (___kont4059240593_))))))
                 (_parse-class-body28740_
                  (lambda (_body28760_)
                    (let _recur28763_ ((_rest28766_ _body28760_))
                      (let* ((___stx4060340604_ _rest28766_)
                             (_g2877028786_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4060340604_))))
                        (let ((___kont4060640607_
                               (lambda (_L28824_ _L28826_ _L28827_)
                                 (cons* _L28827_
                                        (let ()
                                          (declare (not safe))
                                          (_parse128735_ _L28826_))
                                        (let ()
                                          (declare (not safe))
                                          (_recur28763_ _L28824_)))))
                              (___kont4060840609_
                               (lambda ()
                                 (if (gx#stx-null? _rest28766_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28742_ _rest28766_))))))
                          (let ((___match4062240623_
                                 (lambda (_e2877728804_
                                          _hd2877628808_
                                          _tl2877528811_
                                          _e2878028814_
                                          _hd2877928818_
                                          _tl2877828821_)
                                   (let ((_L28824_ _tl2877828821_)
                                         (_L28826_ _hd2877928818_)
                                         (_L28827_ _hd2877628808_))
                                     (if (gx#stx-keyword? _L28827_)
                                         (___kont4060640607_
                                          _L28824_
                                          _L28826_
                                          _L28827_)
                                         (___kont4060840609_))))))
                            (if (gx#stx-pair? ___stx4060340604_)
                                (let ((_e2877728804_
                                       (gx#syntax-e ___stx4060340604_)))
                                  (let ((_tl2877528811_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2877728804_)))
                                        (_hd2877628808_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2877728804_))))
                                    (if (gx#stx-pair? _tl2877528811_)
                                        (let ((_e2878028814_
                                               (gx#syntax-e _tl2877528811_)))
                                          (let ((_tl2877828821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2878028814_)))
                                                (_hd2877928818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2878028814_))))
                                            (___match4062240623_
                                             _e2877728804_
                                             _hd2877628808_
                                             _tl2877528811_
                                             _e2878028814_
                                             _hd2877928818_
                                             _tl2877828821_)))
                                        (___kont4060840609_))))
                                (___kont4060840609_))))))))
                 (_parse-qq28741_
                  (lambda (_hd28747_)
                    (let ((_g2874928756_
                           (lambda (_g2875028752_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2875028752_))))
                      (declare (not safe))
                      (_g2874928756_ _hd28747_))))
                 (_parse-error28742_
                  (lambda (_hd28744_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"Bad syntax; illegal pattern"
                           (if _match-stx28733_
                               (cons _match-stx28733_
                                     (cons _stx28731_ (cons _hd28744_ '())))
                               (cons _stx28731_ (cons _hd28744_ '())))))))
          (let () (declare (not safe)) (_parse128735_ _stx28731_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30415_)
        (let ((_match-stx30418_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30415_
           _match-stx30418_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g43007_
        (let ((_g43006_ (let () (declare (not safe)) (##length _g43007_))))
          (cond ((let () (declare (not safe)) (##fx= _g43006_ 1))
                 (apply (lambda (_stx30415_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30415_)))
                        _g43007_))
                ((let () (declare (not safe)) (##fx= _g43006_ 2))
                 (apply (lambda (_stx30421_ _match-stx30423_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30421_
                             _match-stx30423_)))
                        _g43007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g43007_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28715_)
        (call-with-current-continuation
         (lambda (_E28719_)
           (with-exception-handler
            (let ((_E!28722_ (current-exception-handler)))
              (lambda (_e28725_)
                (if (syntax-error? _e28725_)
                    (_E28719_ '#f)
                    (_E!28722_ _e28725_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28715_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27450_)
        (letrec ((_loop27453_
                  (lambda (_ptree27740_ _vars27742_ _K27743_)
                    (let* ((___stx4072140722_ _ptree27740_)
                           (_g2775627866_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4072140722_))))
                      (let ((___kont4072440725_
                             (lambda (_L28496_)
                               (let* ((___stx4064140642_ _L28496_)
                                      (_g2851328547_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4064140642_))))
                                 (let ((___kont4064440645_
                                        (lambda (_L28696_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27453_
                                             _L28696_
                                             _vars27742_
                                             _K27743_))))
                                       (___kont4064640647_
                                        (lambda (_L28665_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27453_
                                             _L28665_
                                             _vars27742_
                                             _K27743_))))
                                       (___kont4064840649_
                                        (lambda (_L28613_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27453_
                                             _L28613_
                                             _vars27742_
                                             _K27743_))))
                                       (___kont4065040651_
                                        (lambda () (_K27743_ _vars27742_))))
                                   (if (gx#stx-pair? ___stx4064140642_)
                                       (let ((_e2851828686_
                                              (gx#syntax-e ___stx4064140642_)))
                                         (let ((_tl2851628693_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2851828686_)))
                                               (_hd2851728690_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2851828686_))))
                                           (if (gx#stx-null? _tl2851628693_)
                                               (___kont4064440645_
                                                _hd2851728690_)
                                               (if (gx#stx-datum?
                                                    _hd2851728690_)
                                                   (let ((_e2852328651_
                                                          (gx#stx-e
                                                           _hd2851728690_)))
                                                     (if (equal? _e2852328651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _tl2851628693_)
                     (let ((_e2852628655_ (gx#syntax-e _tl2851628693_)))
                       (let ((_tl2852428662_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2852628655_)))
                             (_hd2852528659_
                              (let ()
                                (declare (not safe))
                                (##car _e2852628655_))))
                         (if (gx#stx-null? _tl2852428662_)
                             (___kont4064640647_ _hd2852528659_)
                             (___kont4065040651_))))
                     (___kont4065040651_))
                 (if (equal? _e2852328651_ '::)
                     (if (gx#stx-pair? _tl2851628693_)
                         (let ((_e2853428579_ (gx#syntax-e _tl2851628693_)))
                           (let ((_tl2853228586_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2853428579_)))
                                 (_hd2853328583_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2853428579_))))
                             (if (gx#stx-pair? _tl2853228586_)
                                 (let ((_e2853728589_
                                        (gx#syntax-e _tl2853228586_)))
                                   (let ((_tl2853528596_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2853728589_)))
                                         (_hd2853628593_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2853728589_))))
                                     (if (gx#stx-datum? _hd2853628593_)
                                         (let ((_e2853828599_
                                                (gx#stx-e _hd2853628593_)))
                                           (if (equal? _e2853828599_ '=>:)
                                               (if (gx#stx-pair?
                                                    _tl2853528596_)
                                                   (let ((_e2854128603_
                                                          (gx#syntax-e
                                                           _tl2853528596_)))
                                                     (let ((_tl2853928610_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2854128603_)))
                                                           (_hd2854028607_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2854128603_))))
                                                       (if (gx#stx-null?
                                                            _tl2853928610_)
                                                           (___kont4064840649_
                                                            _hd2854028607_)
                                                           (___kont4065040651_))))
                                                   (___kont4065040651_))
                                               (___kont4065040651_)))
                                         (___kont4065040651_))))
                                 (___kont4065040651_))))
                         (___kont4065040651_))
                     (___kont4065040651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4065040651_)))))
                                       (___kont4065040651_))))))
                            (___kont4072640727_
                             (lambda (_L28383_ _L28385_)
                               (let* ((___stx4062540626_ _L28383_)
                                      (_g2840128413_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4062540626_))))
                                 (let ((___kont4062840629_
                                        (lambda (_L28441_ _L28443_)
                                          (let ((__tmp43008
                                                 (lambda (_g2845528457_)
                                                   (let ((__tmp43009
                                                          (cons _L28385_
                                                                _L28441_)))
                                                     (declare (not safe))
                                                     (_loop27453_
                                                      __tmp43009
                                                      _g2845528457_
                                                      _K27743_)))))
                                            (declare (not safe))
                                            (_loop27453_
                                             _L28443_
                                             _vars27742_
                                             __tmp43008))))
                                       (___kont4063040631_
                                        (lambda () (_K27743_ _vars27742_))))
                                   (if (gx#stx-pair? ___stx4062540626_)
                                       (let ((_e2840728431_
                                              (gx#syntax-e ___stx4062540626_)))
                                         (let ((_tl2840528438_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2840728431_)))
                                               (_hd2840628435_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2840728431_))))
                                           (___kont4062840629_
                                            _tl2840528438_
                                            _hd2840628435_)))
                                       (___kont4063040631_))))))
                            (___kont4072840729_
                             (lambda (_L28352_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27453_ _L28352_ _vars27742_ _K27743_))))
                            (___kont4073040731_
                             (lambda (_L28298_ _L28300_)
                               (let ((__tmp43010
                                      (lambda (_g2831528317_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27453_
                                           _L28298_
                                           _g2831528317_
                                           _K27743_)))))
                                 (declare (not safe))
                                 (_loop27453_
                                  _L28300_
                                  _vars27742_
                                  __tmp43010))))
                            (___kont4073240733_
                             (lambda (_L28234_ _L28236_)
                               (let ((__tmp43011
                                      (lambda (_g2825128253_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27453_
                                           _L28234_
                                           _g2825128253_
                                           _K27743_)))))
                                 (declare (not safe))
                                 (_loop27453_
                                  _L28236_
                                  _vars27742_
                                  __tmp43011))))
                            (___kont4073440735_
                             (lambda (_L28179_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27453_ _L28179_ _vars27742_ _K27743_))))
                            (___kont4073640737_
                             (lambda (_L28129_ _L28131_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27455_
                                  _L28129_
                                  _vars27742_
                                  _K27743_))))
                            (___kont4073840739_
                             (lambda (_L28086_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27455_
                                  _L28086_
                                  _vars27742_
                                  _K27743_))))
                            (___kont4074040741_
                             (lambda (_L28029_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27457_
                                  _L28029_
                                  _vars27742_
                                  _K27743_))))
                            (___kont4074240743_
                             (lambda (_L27970_ _L27972_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27453_ _L27970_ _vars27742_ _K27743_))))
                            (___kont4074440745_
                             (lambda (_L27908_)
                               (if (find (lambda (_g2792327925_)
                                           (gx#bound-identifier=?
                                            _g2792327925_
                                            _L27908_))
                                         _vars27742_)
                                   (_K27743_ _vars27742_)
                                   (_K27743_ (cons _L27908_ _vars27742_)))))
                            (___kont4074640747_
                             (lambda () (_K27743_ _vars27742_))))
                        (let* ((___match4087840879_
                                (lambda (_e2781528109_
                                         _hd2781428113_
                                         _tl2781328116_
                                         _e2781828119_
                                         _hd2781728123_
                                         _tl2781628126_)
                                  (let ((_L28129_ _hd2781728123_)
                                        (_L28131_ _hd2781428113_))
                                    (if (or (gx#stx-eq? 'values: _L28131_)
                                            (gx#stx-eq? 'vector: _L28131_))
                                        (___kont4073640737_ _L28129_ _L28131_)
                                        (if (gx#stx-datum? _hd2781428113_)
                                            (let ((_e2782328062_
                                                   (gx#stx-e _hd2781428113_)))
                                              (if (equal? _e2782328062_
                                                          'struct:)
                                                  (___kont4074640747_)
                                                  (if (equal? _e2782328062_
                                                              'class:)
                                                      (___kont4074640747_)
                                                      (if (equal? _e2782328062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (___kont4074640747_)
                  (if (equal? _e2782328062_ 'var:)
                      (___kont4074440745_ _hd2781728123_)
                      (___kont4074640747_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4074640747_))))))
                               (___match4077240773_
                                (lambda (_e2777028373_
                                         _hd2776928377_
                                         _tl2776828380_)
                                  (let ((_L28383_ _tl2776828380_)
                                        (_L28385_ _hd2776928377_))
                                    (if (or (gx#stx-eq? 'and: _L28385_)
                                            (gx#stx-eq? 'or: _L28385_))
                                        (___kont4072640727_ _L28383_ _L28385_)
                                        (if (gx#stx-datum? _hd2776928377_)
                                            (let ((_e2777528338_
                                                   (gx#stx-e _hd2776928377_)))
                                              (if (equal? _e2777528338_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl2776828380_)
                                                      (let ((_e2777828342_
                                                             (gx#syntax-e
                                                              _tl2776828380_)))
                                                        (let ((_tl2777628349_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2777828342_)))
                      (_hd2777728346_
                       (let () (declare (not safe)) (##car _e2777828342_))))
                  (if (gx#stx-null? _tl2777628349_)
                      (___kont4072840729_ _hd2777728346_)
                      (___kont4074640747_))))
              (___kont4074640747_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _e2777528338_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl2776828380_)
                                                          (let ((_e2778728278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2776828380_)))
                    (let ((_tl2778528285_
                           (let () (declare (not safe)) (##cdr _e2778728278_)))
                          (_hd2778628282_
                           (let ()
                             (declare (not safe))
                             (##car _e2778728278_))))
                      (if (gx#stx-pair? _tl2778528285_)
                          (let ((_e2779028288_ (gx#syntax-e _tl2778528285_)))
                            (let ((_tl2778828295_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2779028288_)))
                                  (_hd2778928292_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2779028288_))))
                              (if (gx#stx-null? _tl2778828295_)
                                  (___kont4073040731_
                                   _hd2778928292_
                                   _hd2778628282_)
                                  (___kont4074640747_))))
                          (if (gx#stx-null? _tl2778528285_)
                              (___match4087840879_
                               _e2777028373_
                               _hd2776928377_
                               _tl2776828380_
                               _e2778728278_
                               _hd2778628282_
                               _tl2778528285_)
                              (___kont4074640747_)))))
                  (___kont4074640747_))
              (if (equal? _e2777528338_ 'splice:)
                  (if (gx#stx-pair? _tl2776828380_)
                      (let ((_e2779928214_ (gx#syntax-e _tl2776828380_)))
                        (let ((_tl2779728221_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2779928214_)))
                              (_hd2779828218_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2779928214_))))
                          (if (gx#stx-pair? _tl2779728221_)
                              (let ((_e2780228224_
                                     (gx#syntax-e _tl2779728221_)))
                                (let ((_tl2780028231_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2780228224_)))
                                      (_hd2780128228_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2780228224_))))
                                  (if (gx#stx-null? _tl2780028231_)
                                      (___kont4073240733_
                                       _hd2780128228_
                                       _hd2779828218_)
                                      (___kont4074640747_))))
                              (if (gx#stx-null? _tl2779728221_)
                                  (___match4087840879_
                                   _e2777028373_
                                   _hd2776928377_
                                   _tl2776828380_
                                   _e2779928214_
                                   _hd2779828218_
                                   _tl2779728221_)
                                  (___kont4074640747_)))))
                      (___kont4074640747_))
                  (if (equal? _e2777528338_ 'box:)
                      (if (gx#stx-pair? _tl2776828380_)
                          (let ((_e2781028169_ (gx#syntax-e _tl2776828380_)))
                            (let ((_tl2780828176_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2781028169_)))
                                  (_hd2780928173_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2781028169_))))
                              (if (gx#stx-null? _tl2780828176_)
                                  (___kont4073440735_ _hd2780928173_)
                                  (___kont4074640747_))))
                          (___kont4074640747_))
                      (if (gx#stx-pair? _tl2776828380_)
                          (let ((_e2781828119_ (gx#syntax-e _tl2776828380_)))
                            (let ((_tl2781628126_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2781828119_)))
                                  (_hd2781728123_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2781828119_))))
                              (if (gx#stx-null? _tl2781628126_)
                                  (___match4087840879_
                                   _e2777028373_
                                   _hd2776928377_
                                   _tl2776828380_
                                   _e2781828119_
                                   _hd2781728123_
                                   _tl2781628126_)
                                  (if (equal? _e2777528338_ 'struct:)
                                      (if (gx#stx-pair? _tl2781628126_)
                                          (let ((_e2782928076_
                                                 (gx#syntax-e _tl2781628126_)))
                                            (let ((_tl2782728083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2782928076_)))
                                                  (_hd2782828080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2782928076_))))
                                              (if (gx#stx-null? _tl2782728083_)
                                                  (___kont4073840739_
                                                   _hd2782828080_)
                                                  (___kont4074640747_))))
                                          (___kont4074640747_))
                                      (if (equal? _e2777528338_ 'class:)
                                          (if (gx#stx-pair? _tl2781628126_)
                                              (let ((_e2784028019_
                                                     (gx#syntax-e
                                                      _tl2781628126_)))
                                                (let ((_tl2783828026_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2784028019_)))
                                                      (_hd2783928023_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2784028019_))))
                                                  (if (gx#stx-null?
                                                       _tl2783828026_)
                                                      (___kont4074040741_
                                                       _hd2783928023_)
                                                      (___kont4074640747_))))
                                              (___kont4074640747_))
                                          (if (equal? _e2777528338_ 'apply:)
                                              (if (gx#stx-pair? _tl2781628126_)
                                                  (let ((_e2785227960_
                                                         (gx#syntax-e
                                                          _tl2781628126_)))
                                                    (let ((_tl2785027967_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2785227960_)))
                                                          (_hd2785127964_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2785227960_))))
                                                      (if (gx#stx-null?
                                                           _tl2785027967_)
                                                          (___kont4074240743_
                                                           _hd2785127964_
                                                           _hd2781728123_)
                                                          (___kont4074640747_))))
                                                  (___kont4074640747_))
                                              (___kont4074640747_)))))))
                          (___kont4074640747_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2776828380_)
                                                (let ((_e2781828119_
                                                       (gx#syntax-e
                                                        _tl2776828380_)))
                                                  (let ((_tl2781628126_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2781828119_)))
                                                        (_hd2781728123_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2781828119_))))
                                                    (if (gx#stx-null?
                                                         _tl2781628126_)
                                                        (___match4087840879_
                                                         _e2777028373_
                                                         _hd2776928377_
                                                         _tl2776828380_
                                                         _e2781828119_
                                                         _hd2781728123_
                                                         _tl2781628126_)
                                                        (___kont4074640747_))))
                                                (___kont4074640747_))))))))
                          (if (gx#stx-pair? ___stx4072140722_)
                              (let ((_e2776128472_
                                     (gx#syntax-e ___stx4072140722_)))
                                (let ((_tl2775928479_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2776128472_)))
                                      (_hd2776028476_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2776128472_))))
                                  (if (gx#stx-datum? _hd2776028476_)
                                      (let ((_e2776228482_
                                             (gx#stx-e _hd2776028476_)))
                                        (if (equal? _e2776228482_ '?:)
                                            (if (gx#stx-pair? _tl2775928479_)
                                                (let ((_e2776528486_
                                                       (gx#syntax-e
                                                        _tl2775928479_)))
                                                  (let ((_tl2776328493_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2776528486_)))
                                                        (_hd2776428490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2776528486_))))
                                                    (___kont4072440725_
                                                     _tl2776328493_)))
                                                (___match4077240773_
                                                 _e2776128472_
                                                 _hd2776028476_
                                                 _tl2775928479_))
                                            (___match4077240773_
                                             _e2776128472_
                                             _hd2776028476_
                                             _tl2775928479_)))
                                      (___match4077240773_
                                       _e2776128472_
                                       _hd2776028476_
                                       _tl2775928479_))))
                              (___kont4074640747_)))))))
                 (_loop-vector27455_
                  (lambda (_body27616_ _vars27618_ _K27619_)
                    (let* ((___stx4097940980_ _body27616_)
                           (_g2762227645_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4097940980_))))
                      (let ((___kont4098240983_
                             (lambda (_L27722_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27456_
                                  _L27722_
                                  _vars27618_
                                  _K27619_))))
                            (___kont4098440985_
                             (lambda (_L27676_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27453_
                                  _L27676_
                                  _vars27618_
                                  _K27619_)))))
                        (if (gx#stx-pair? ___stx4097940980_)
                            (let ((_e2762727698_
                                   (gx#syntax-e ___stx4097940980_)))
                              (let ((_tl2762527705_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2762727698_)))
                                    (_hd2762627702_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2762727698_))))
                                (if (gx#stx-datum? _hd2762627702_)
                                    (let ((_e2762827708_
                                           (gx#stx-e _hd2762627702_)))
                                      (if (equal? _e2762827708_ 'simple:)
                                          (if (gx#stx-pair? _tl2762527705_)
                                              (let ((_e2763127712_
                                                     (gx#syntax-e
                                                      _tl2762527705_)))
                                                (let ((_tl2762927719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2763127712_)))
                                                      (_hd2763027716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2763127712_))))
                                                  (if (gx#stx-null?
                                                       _tl2762927719_)
                                                      (___kont4098240983_
                                                       _hd2763027716_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2762227645_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2762227645_)))
                                          (if (equal? _e2762827708_ 'list:)
                                              (if (gx#stx-pair? _tl2762527705_)
                                                  (let ((_e2763927666_
                                                         (gx#syntax-e
                                                          _tl2762527705_)))
                                                    (let ((_tl2763727673_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2763927666_)))
                                                          (_hd2763827670_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2763927666_))))
                                                      (if (gx#stx-null?
                                                           _tl2763727673_)
                                                          (___kont4098440985_
                                                           _hd2763827670_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2762227645_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2762227645_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2762227645_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2762227645_)))))
                            (let () (declare (not safe)) (_g2762227645_)))))))
                 (_loop-list27456_
                  (lambda (_rest27546_ _vars27548_ _K27549_)
                    (let* ((___stx4102941030_ _rest27546_)
                           (_g2755227564_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4102941030_))))
                      (let ((___kont4103241033_
                             (lambda (_L27592_ _L27594_)
                               (let ((__tmp43012
                                      (lambda (_g2760627608_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27456_
                                           _L27592_
                                           _g2760627608_
                                           _K27549_)))))
                                 (declare (not safe))
                                 (_loop27453_
                                  _L27594_
                                  _vars27548_
                                  __tmp43012))))
                            (___kont4103441035_
                             (lambda () (_K27549_ _vars27548_))))
                        (if (gx#stx-pair? ___stx4102941030_)
                            (let ((_e2755827582_
                                   (gx#syntax-e ___stx4102941030_)))
                              (let ((_tl2755627589_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2755827582_)))
                                    (_hd2755727586_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2755827582_))))
                                (___kont4103241033_
                                 _tl2755627589_
                                 _hd2755727586_)))
                            (___kont4103441035_))))))
                 (_loop-class-list27457_
                  (lambda (_rest27459_ _vars27461_ _K27462_)
                    (let* ((___stx4104541046_ _rest27459_)
                           (_g2746527480_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4104541046_))))
                      (let ((___kont4104841049_
                             (lambda (_L27518_ _L27520_)
                               (let ((__tmp43013
                                      (lambda (_g2753627538_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27457_
                                           _L27518_
                                           _g2753627538_
                                           _K27462_)))))
                                 (declare (not safe))
                                 (_loop27453_
                                  _L27520_
                                  _vars27461_
                                  __tmp43013))))
                            (___kont4105041051_
                             (lambda () (_K27462_ _vars27461_))))
                        (if (gx#stx-pair? ___stx4104541046_)
                            (let ((_e2747127498_
                                   (gx#syntax-e ___stx4104541046_)))
                              (let ((_tl2746927505_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2747127498_)))
                                    (_hd2747027502_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2747127498_))))
                                (if (gx#stx-pair? _tl2746927505_)
                                    (let ((_e2747427508_
                                           (gx#syntax-e _tl2746927505_)))
                                      (let ((_tl2747227515_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2747427508_)))
                                            (_hd2747327512_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2747427508_))))
                                        (___kont4104841049_
                                         _tl2747227515_
                                         _hd2747327512_)))
                                    (___kont4105041051_))))
                            (___kont4105041051_)))))))
          (let ()
            (declare (not safe))
            (_loop27453_ _ptree27450_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx24033_ _tgt24035_ _ptree24036_ _K24037_ _E24038_)
        (letrec ((_generate124040_
                  (lambda (_tgt25663_ _ptree25665_ _K25666_ _E25667_)
                    (let* ((_g2566925677_
                            (lambda (_g2567025673_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2567025673_)))
                           (_g2566827446_
                            (lambda (_g2567025681_)
                              ((lambda (_L25684_)
                                 (let ()
                                   (let* ((___stx4128141282_ _ptree25665_)
                                          (_g2571125853_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4128141282_))))
                                     (let ((___kont4128441285_
                                            (lambda (_L27161_ _L27163_)
                                              (let* ((___stx4119941200_
                                                      _L27161_)
                                                     (_g2718027215_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4119941200_))))
                                                (let ((___kont4120241203_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L27163_ (cons _L25684_ '())))
                             (cons _K25666_ (cons _E25667_ '()))))))
              (___kont4120441205_
               (lambda (_L27416_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _L27163_ (cons _L25684_ '())))
                             (cons (let ()
                                     (declare (not safe))
                                     (_generate124040_
                                      _tgt25663_
                                      _L27416_
                                      _K25666_
                                      _E25667_))
                                   (cons _E25667_ '()))))))
              (___kont4120641207_
               (lambda (_L27354_)
                 (let* ((_g2736827376_
                         (lambda (_g2736927372_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2736927372_)))
                        (_g2736727395_
                         (lambda (_g2736927380_)
                           ((lambda (_L27383_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _L27383_
                                                        (cons (cons _L27163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L25684_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _L27383_
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (_generate124040_
                               _L27383_
                               _L27354_
                               _K25666_
                               _E25667_))
                            (cons _E25667_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g2736927380_)))
                        (__tmp43014 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2736727395_ __tmp43014))))
              (___kont4120841209_
               (lambda (_L27270_ _L27272_)
                 (let* ((_g2729227300_
                         (lambda (_g2729327296_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2729327296_)))
                        (_g2729127319_
                         (lambda (_g2729327304_)
                           ((lambda (_L27307_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L27163_
                                                        (cons _L25684_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L27307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L27272_ (cons _L25684_ '()))
                                        '()))
                            '())
                      (cons (let ()
                              (declare (not safe))
                              (_generate124040_
                               _L27307_
                               _L27270_
                               _K25666_
                               _E25667_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25667_ '()))))))
                            _g2729327304_)))
                        (__tmp43015 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2729127319_ __tmp43015)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2717727427_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4119941200_)
                                                               (let ((_e2718527406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4119941200_)))
                         (let ((_tl2718327413_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2718527406_)))
                               (_hd2718427410_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2718527406_))))
                           (if (gx#stx-null? _tl2718327413_)
                               (___kont4120441205_ _hd2718427410_)
                               (if (gx#stx-datum? _hd2718427410_)
                                   (let ((_e2719027340_
                                          (gx#stx-e _hd2718427410_)))
                                     (if (equal? _e2719027340_ '=>:)
                                         (if (gx#stx-pair? _tl2718327413_)
                                             (let ((_e2719327344_
                                                    (gx#syntax-e
                                                     _tl2718327413_)))
                                               (let ((_tl2719127351_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2719327344_)))
                                                     (_hd2719227348_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2719327344_))))
                                                 (if (gx#stx-null?
                                                      _tl2719127351_)
                                                     (___kont4120641207_
                                                      _hd2719227348_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2718027215_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2718027215_)))
                                         (if (equal? _e2719027340_ '::)
                                             (if (gx#stx-pair? _tl2718327413_)
                                                 (let ((_e2720227236_
                                                        (gx#syntax-e
                                                         _tl2718327413_)))
                                                   (let ((_tl2720027243_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2720227236_)))
                                                         (_hd2720127240_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2720227236_))))
                                                     (if (gx#stx-pair?
                                                          _tl2720027243_)
                                                         (let ((_e2720527246_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2720027243_)))
                   (let ((_tl2720327253_
                          (let () (declare (not safe)) (##cdr _e2720527246_)))
                         (_hd2720427250_
                          (let () (declare (not safe)) (##car _e2720527246_))))
                     (if (gx#stx-datum? _hd2720427250_)
                         (let ((_e2720627256_ (gx#stx-e _hd2720427250_)))
                           (if (equal? _e2720627256_ '=>:)
                               (if (gx#stx-pair? _tl2720327253_)
                                   (let ((_e2720927260_
                                          (gx#syntax-e _tl2720327253_)))
                                     (let ((_tl2720727267_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2720927260_)))
                                           (_hd2720827264_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2720927260_))))
                                       (if (gx#stx-null? _tl2720727267_)
                                           (___kont4120841209_
                                            _hd2720827264_
                                            _hd2720127240_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2718027215_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2718027215_)))
                               (let () (declare (not safe)) (_g2718027215_))))
                         (let () (declare (not safe)) (_g2718027215_)))))
                 (let () (declare (not safe)) (_g2718027215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2718027215_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2718027215_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2718027215_))))))
                       (let () (declare (not safe)) (_g2718027215_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4119941200_)
                                                        (___kont4120241203_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2717727427_))))))))
                                           (___kont4128641287_
                                            (lambda (_L27058_)
                                              (let* ((___stx4118341184_
                                                      _L27058_)
                                                     (_g2707127083_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4118341184_))))
                                                (let ((___kont4118641187_
                                                       (lambda (_L27111_
                                                                _L27113_)
                                                         (let ((__tmp43016
                                                                (let ((__tmp43017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'and: _L27111_)))
                          (declare (not safe))
                          (_generate124040_
                           _tgt25663_
                           __tmp43017
                           _K25666_
                           _E25667_))))
                   (declare (not safe))
                   (_generate124040_
                    _tgt25663_
                    _L27113_
                    __tmp43016
                    _E25667_))))
              (___kont4118841189_ (lambda () _K25666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4118341184_)
                                                      (let ((_e2707727101_
                                                             (gx#syntax-e
                                                              ___stx4118341184_)))
                                                        (let ((_tl2707527108_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2707727101_)))
                      (_hd2707627105_
                       (let () (declare (not safe)) (##car _e2707727101_))))
                  (___kont4118641187_ _tl2707527108_ _hd2707627105_)))
              (___kont4118841189_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4128841289_
                                            (lambda (_L26965_)
                                              (let* ((___stx4116741168_
                                                      _L26965_)
                                                     (_g2697826990_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4116741168_))))
                                                (let ((___kont4117041171_
                                                       (lambda (_L27018_
                                                                _L27020_)
                                                         (let ((__tmp43018
                                                                (let ((__tmp43019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'or: _L27018_)))
                          (declare (not safe))
                          (_generate124040_
                           _tgt25663_
                           __tmp43019
                           _K25666_
                           _E25667_))))
                   (declare (not safe))
                   (_generate124040_
                    _tgt25663_
                    _L27020_
                    _K25666_
                    __tmp43018))))
              (___kont4117241173_ (lambda () _E25667_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4116741168_)
                                                      (let ((_e2698427008_
                                                             (gx#syntax-e
                                                              ___stx4116741168_)))
                                                        (let ((_tl2698227015_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2698427008_)))
                      (_hd2698327012_
                       (let () (declare (not safe)) (##car _e2698427008_))))
                  (___kont4117041171_ _tl2698227015_ _hd2698327012_)))
              (___kont4117241173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4129041291_
                                            (lambda (_L26930_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124040_
                                                 _tgt25663_
                                                 _L26930_
                                                 _E25667_
                                                 _K25666_))))
                                           (___kont4129241293_
                                            (lambda (_L26812_ _L26814_)
                                              (let* ((_g2683126846_
                                                      (lambda (_g2683226842_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2683226842_)))
                                                     (_g2683026895_
                                                      (lambda (_g2683226850_)
                                                        (if (gx#stx-pair?
                                                             _g2683226850_)
                                                            (let ((_e2683726853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2683226850_)))
                      (let ((_hd2683626857_
                             (let ()
                               (declare (not safe))
                               (##car _e2683726853_)))
                            (_tl2683526860_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2683726853_))))
                        (if (gx#stx-pair? _tl2683526860_)
                            (let ((_e2684026863_ (gx#syntax-e _tl2683526860_)))
                              (let ((_hd2683926867_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2684026863_)))
                                    (_tl2683826870_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2684026863_))))
                                (if (gx#stx-null? _tl2683826870_)
                                    ((lambda (_L26873_ _L26875_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _L25684_ '()))
                                                     (cons (let ((_hd-pat26891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _L26814_))
                         (_tl-pat26893_ (gx#stx-e _L26812_)))
                     (if (and (equal? _hd-pat26891_ '(any:))
                              (equal? _tl-pat26893_ '(any:)))
                         _K25666_
                         (if (equal? _tl-pat26893_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _L26875_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _L25684_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_generate124040_
                                                  _L26875_
                                                  _L26814_
                                                  _K25666_
                                                  _E25667_))
                                               '())))
                             (if (equal? _hd-pat26891_ '(any:))
                                 (cons 'let
                                       (cons (cons (cons _L26873_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L25684_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (_generate124040_
                                                      _L26873_
                                                      _L26812_
                                                      _K25666_
                                                      _E25667_))
                                                   '())))
                                 (cons 'let
                                       (cons (cons (cons _L26875_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L25684_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L26873_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L25684_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (let ((__tmp43020
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_generate124040_
                                                             _L26873_
                                                             _L26812_
                                                             _K25666_
                                                             _E25667_))))
                                                     (declare (not safe))
                                                     (_generate124040_
                                                      _L26875_
                                                      _L26814_
                                                      __tmp43020
                                                      _E25667_))
                                                   '())))))))
                   (cons _E25667_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2683926867_
                                     _hd2683626857_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2683126846_ _g2683226850_)))))
                            (let ()
                              (declare (not safe))
                              (_g2683126846_ _g2683226850_)))))
                    (let ()
                      (declare (not safe))
                      (_g2683126846_ _g2683226850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp43021
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2683026895_ __tmp43021))))
                                           (___kont4129441295_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _L25684_ '()))
                  (cons _K25666_ (cons _E25667_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4129641297_
                                            (lambda (_L26728_ _L26730_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24042_
                                                 _tgt25663_
                                                 _L26730_
                                                 _L26728_
                                                 _K25666_
                                                 _E25667_))))
                                           (___kont4129841299_
                                            (lambda (_L26642_)
                                              (let* ((_g2665626664_
                                                      (lambda (_g2665726660_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2665726660_)))
                                                     (_g2665526683_
                                                      (lambda (_g2665726668_)
                                                        ((lambda (_L26671_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _L25684_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _L26671_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _L25684_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_generate124040_
                                                            _L26671_
                                                            _L26642_
                                                            _K25666_
                                                            _E25667_))
                                                         '())))
                                       (cons _E25667_ '()))))))
                 _g2665726668_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp43022
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2665526683_ __tmp43022))))
                                           (___kont4130041301_
                                            (lambda (_L26447_)
                                              (let* ((___stx4111741118_
                                                      _L26447_)
                                                     (_g2646226485_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4111741118_))))
                                                (let ((___kont4112041121_
                                                       (lambda (_L26562_)
                                                         (let* ((_g2657626584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2657726580_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2657726580_)))
                        (_g2657526603_
                         (lambda (_g2657726588_)
                           ((lambda (_L26591_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L25684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L26591_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (_generate-simple-vector24043_
                                                     _tgt25663_
                                                     _L26562_
                                                     '0
                                                     _K25666_
                                                     _E25667_))
                                                  (cons _E25667_ '()))))))
                            _g2657726588_)))
                        (__tmp43023 (gx#stx-length _L26562_)))
                   (declare (not safe))
                   (_g2657526603_ __tmp43023))))
              (___kont4112241123_
               (lambda (_L26516_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector24044_
                    _tgt25663_
                    _L26516_
                    'values->list
                    _K25666_
                    _E25667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4111741118_)
                                                      (let ((_e2646726538_
                                                             (gx#syntax-e
                                                              ___stx4111741118_)))
                                                        (let ((_tl2646526545_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2646726538_)))
                      (_hd2646626542_
                       (let () (declare (not safe)) (##car _e2646726538_))))
                  (if (gx#stx-datum? _hd2646626542_)
                      (let ((_e2646826548_ (gx#stx-e _hd2646626542_)))
                        (if (equal? _e2646826548_ 'simple:)
                            (if (gx#stx-pair? _tl2646526545_)
                                (let ((_e2647126552_
                                       (gx#syntax-e _tl2646526545_)))
                                  (let ((_tl2646926559_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2647126552_)))
                                        (_hd2647026556_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2647126552_))))
                                    (if (gx#stx-null? _tl2646926559_)
                                        (___kont4112041121_ _hd2647026556_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2646226485_)))))
                                (let () (declare (not safe)) (_g2646226485_)))
                            (if (equal? _e2646826548_ 'list:)
                                (if (gx#stx-pair? _tl2646526545_)
                                    (let ((_e2647926506_
                                           (gx#syntax-e _tl2646526545_)))
                                      (let ((_tl2647726513_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2647926506_)))
                                            (_hd2647826510_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2647926506_))))
                                        (if (gx#stx-null? _tl2647726513_)
                                            (___kont4112241123_ _hd2647826510_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2646226485_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2646226485_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2646226485_)))))
                      (let () (declare (not safe)) (_g2646226485_)))))
              (let () (declare (not safe)) (_g2646226485_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4130241303_
                                            (lambda (_L26252_)
                                              (let* ((___stx4106741068_
                                                      _L26252_)
                                                     (_g2626726290_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4106741068_))))
                                                (let ((___kont4107041071_
                                                       (lambda (_L26367_)
                                                         (let* ((_g2638126389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2638226385_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2638226385_)))
                        (_g2638026408_
                         (lambda (_g2638226393_)
                           ((lambda (_L26396_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _L25684_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _L25684_ '()))
                                  (cons _L26396_ '())))
                      (cons (let ()
                              (declare (not safe))
                              (_generate-simple-vector24043_
                               _tgt25663_
                               _L26367_
                               '0
                               _K25666_
                               _E25667_))
                            (cons _E25667_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25667_ '()))))))
                            _g2638226393_)))
                        (__tmp43024 (gx#stx-length _L26367_)))
                   (declare (not safe))
                   (_g2638026408_ __tmp43024))))
              (___kont4107241073_
               (lambda (_L26321_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L25684_ '()))
                             (cons (let ()
                                     (declare (not safe))
                                     (_generate-list-vector24044_
                                      _tgt25663_
                                      _L26321_
                                      'vector->list
                                      _K25666_
                                      _E25667_))
                                   (cons _E25667_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4106741068_)
                                                      (let ((_e2627226343_
                                                             (gx#syntax-e
                                                              ___stx4106741068_)))
                                                        (let ((_tl2627026350_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2627226343_)))
                      (_hd2627126347_
                       (let () (declare (not safe)) (##car _e2627226343_))))
                  (if (gx#stx-datum? _hd2627126347_)
                      (let ((_e2627326353_ (gx#stx-e _hd2627126347_)))
                        (if (equal? _e2627326353_ 'simple:)
                            (if (gx#stx-pair? _tl2627026350_)
                                (let ((_e2627626357_
                                       (gx#syntax-e _tl2627026350_)))
                                  (let ((_tl2627426364_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2627626357_)))
                                        (_hd2627526361_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2627626357_))))
                                    (if (gx#stx-null? _tl2627426364_)
                                        (___kont4107041071_ _hd2627526361_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2626726290_)))))
                                (let () (declare (not safe)) (_g2626726290_)))
                            (if (equal? _e2627326353_ 'list:)
                                (if (gx#stx-pair? _tl2627026350_)
                                    (let ((_e2628426311_
                                           (gx#syntax-e _tl2627026350_)))
                                      (let ((_tl2628226318_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2628426311_)))
                                            (_hd2628326315_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2628426311_))))
                                        (if (gx#stx-null? _tl2628226318_)
                                            (___kont4107241073_ _hd2628326315_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2626726290_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2626726290_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2626726290_)))))
                      (let () (declare (not safe)) (_g2626726290_)))))
              (let () (declare (not safe)) (_g2626726290_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4130441305_
                                            (lambda (_L26203_ _L26205_)
                                              (let ((__tmp43025
                                                     (gx#stx-e _L26205_)))
                                                (declare (not safe))
                                                (_generate-struct24045_
                                                 __tmp43025
                                                 _tgt25663_
                                                 _L26203_
                                                 _K25666_
                                                 _E25667_))))
                                           (___kont4130641307_
                                            (lambda (_L26144_ _L26146_)
                                              (let ((__tmp43026
                                                     (gx#stx-e _L26146_)))
                                                (declare (not safe))
                                                (_generate-class24046_
                                                 __tmp43026
                                                 _tgt25663_
                                                 _L26144_
                                                 _K25666_
                                                 _E25667_))))
                                           (___kont4130841309_
                                            (lambda (_L26047_)
                                              (let* ((_g2606126069_
                                                      (lambda (_g2606226065_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2606226065_)))
                                                     (_g2606026088_
                                                      (lambda (_g2606226073_)
                                                        ((lambda (_L26076_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _L26076_
                                       (cons _L25684_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _L26047_ '()))
                                                   '())))
                                 (cons _K25666_ (cons _E25667_ '()))))))
                 _g2606226073_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp43027
                                                      (let ((_e26092_
                                                             (gx#stx-e
                                                              _L26047_)))
                                                        (if (or (symbol? _e26092_)
                                                                (keyword?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e26092_)
                        (immediate? _e26092_))
                    '##eq?
                    (if (number? _e26092_) 'eqv? 'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2606026088_ __tmp43027))))
                                           (___kont4131041311_
                                            (lambda (_L25967_ _L25969_)
                                              (let* ((_g2598525993_
                                                      (lambda (_g2598625989_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2598625989_)))
                                                     (_g2598426012_
                                                      (lambda (_g2598625997_)
                                                        ((lambda (_L26000_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _L26000_
                                             (cons (cons _L25969_
                                                         (cons _L25684_ '()))
                                                   '()))
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (_generate124040_
                                          _L26000_
                                          _L25967_
                                          _K25666_
                                          _E25667_))
                                       '())))))
                 _g2598625997_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp43028
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2598426012_ __tmp43028))))
                                           (___kont4131241313_
                                            (lambda (_L25909_)
                                              (cons 'let
                                                    (cons (cons (cons _L25909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L25684_ '()))
                        '())
                  (cons _K25666_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4131441315_
                                            (lambda () _K25666_)))
                                       (if (gx#stx-pair? ___stx4128141282_)
                                           (let ((_e2571727137_
                                                  (gx#syntax-e
                                                   ___stx4128141282_)))
                                             (let ((_tl2571527144_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2571727137_)))
                                                   (_hd2571627141_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2571727137_))))
                                               (if (gx#stx-datum?
                                                    _hd2571627141_)
                                                   (let ((_e2571827147_
                                                          (gx#stx-e
                                                           _hd2571627141_)))
                                                     (if (equal? _e2571827147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl2571527144_)
                     (let ((_e2572127151_ (gx#syntax-e _tl2571527144_)))
                       (let ((_tl2571927158_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2572127151_)))
                             (_hd2572027155_
                              (let ()
                                (declare (not safe))
                                (##car _e2572127151_))))
                         (___kont4128441285_ _tl2571927158_ _hd2572027155_)))
                     (let () (declare (not safe)) (_g2571125853_)))
                 (if (equal? _e2571827147_ 'and:)
                     (___kont4128641287_ _tl2571527144_)
                     (if (equal? _e2571827147_ 'or:)
                         (___kont4128841289_ _tl2571527144_)
                         (if (equal? _e2571827147_ 'not:)
                             (if (gx#stx-pair? _tl2571527144_)
                                 (let ((_e2573926920_
                                        (gx#syntax-e _tl2571527144_)))
                                   (let ((_tl2573726927_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2573926920_)))
                                         (_hd2573826924_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2573926920_))))
                                     (if (gx#stx-null? _tl2573726927_)
                                         (___kont4129041291_ _hd2573826924_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2571125853_)))))
                                 (let () (declare (not safe)) (_g2571125853_)))
                             (if (equal? _e2571827147_ 'cons:)
                                 (if (gx#stx-pair? _tl2571527144_)
                                     (let ((_e2574826792_
                                            (gx#syntax-e _tl2571527144_)))
                                       (let ((_tl2574626799_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2574826792_)))
                                             (_hd2574726796_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2574826792_))))
                                         (if (gx#stx-pair? _tl2574626799_)
                                             (let ((_e2575126802_
                                                    (gx#syntax-e
                                                     _tl2574626799_)))
                                               (let ((_tl2574926809_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2575126802_)))
                                                     (_hd2575026806_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2575126802_))))
                                                 (if (gx#stx-null?
                                                      _tl2574926809_)
                                                     (___kont4129241293_
                                                      _hd2575026806_
                                                      _hd2574726796_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2571125853_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2571125853_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2571125853_)))
                                 (if (equal? _e2571827147_ 'null:)
                                     (if (gx#stx-null? _tl2571527144_)
                                         (___kont4129441295_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2571125853_)))
                                     (if (equal? _e2571827147_ 'splice:)
                                         (if (gx#stx-pair? _tl2571527144_)
                                             (let ((_e2576426708_
                                                    (gx#syntax-e
                                                     _tl2571527144_)))
                                               (let ((_tl2576226715_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2576426708_)))
                                                     (_hd2576326712_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2576426708_))))
                                                 (if (gx#stx-pair?
                                                      _tl2576226715_)
                                                     (let ((_e2576726718_
                                                            (gx#syntax-e
                                                             _tl2576226715_)))
                                                       (let ((_tl2576526725_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2576726718_)))
                     (_hd2576626722_
                      (let () (declare (not safe)) (##car _e2576726718_))))
                 (if (gx#stx-null? _tl2576526725_)
                     (___kont4129641297_ _hd2576626722_ _hd2576326712_)
                     (let () (declare (not safe)) (_g2571125853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2571125853_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2571125853_)))
                                         (if (equal? _e2571827147_ 'box:)
                                             (if (gx#stx-pair? _tl2571527144_)
                                                 (let ((_e2577526632_
                                                        (gx#syntax-e
                                                         _tl2571527144_)))
                                                   (let ((_tl2577326639_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2577526632_)))
                                                         (_hd2577426636_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2577526632_))))
                                                     (if (gx#stx-null?
                                                          _tl2577326639_)
                                                         (___kont4129841299_
                                                          _hd2577426636_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2571125853_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2571125853_)))
                                             (if (equal? _e2571827147_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl2571527144_)
                                                     (let ((_e2578326437_
                                                            (gx#syntax-e
                                                             _tl2571527144_)))
                                                       (let ((_tl2578126444_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2578326437_)))
                     (_hd2578226441_
                      (let () (declare (not safe)) (##car _e2578326437_))))
                 (if (gx#stx-null? _tl2578126444_)
                     (___kont4130041301_ _hd2578226441_)
                     (let () (declare (not safe)) (_g2571125853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2571125853_)))
                                                 (if (equal? _e2571827147_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl2571527144_)
                                                         (let ((_e2579126242_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2571527144_)))
                   (let ((_tl2578926249_
                          (let () (declare (not safe)) (##cdr _e2579126242_)))
                         (_hd2579026246_
                          (let () (declare (not safe)) (##car _e2579126242_))))
                     (if (gx#stx-null? _tl2578926249_)
                         (___kont4130241303_ _hd2579026246_)
                         (let () (declare (not safe)) (_g2571125853_)))))
                 (let () (declare (not safe)) (_g2571125853_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e2571827147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl2571527144_)
                     (let ((_e2580026183_ (gx#syntax-e _tl2571527144_)))
                       (let ((_tl2579826190_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2580026183_)))
                             (_hd2579926187_
                              (let ()
                                (declare (not safe))
                                (##car _e2580026183_))))
                         (if (gx#stx-pair? _tl2579826190_)
                             (let ((_e2580326193_
                                    (gx#syntax-e _tl2579826190_)))
                               (let ((_tl2580126200_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2580326193_)))
                                     (_hd2580226197_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2580326193_))))
                                 (if (gx#stx-null? _tl2580126200_)
                                     (___kont4130441305_
                                      _hd2580226197_
                                      _hd2579926187_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2571125853_)))))
                             (let () (declare (not safe)) (_g2571125853_)))))
                     (let () (declare (not safe)) (_g2571125853_)))
                 (if (equal? _e2571827147_ 'class:)
                     (if (gx#stx-pair? _tl2571527144_)
                         (let ((_e2581226124_ (gx#syntax-e _tl2571527144_)))
                           (let ((_tl2581026131_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2581226124_)))
                                 (_hd2581126128_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2581226124_))))
                             (if (gx#stx-pair? _tl2581026131_)
                                 (let ((_e2581526134_
                                        (gx#syntax-e _tl2581026131_)))
                                   (let ((_tl2581326141_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2581526134_)))
                                         (_hd2581426138_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2581526134_))))
                                     (if (gx#stx-null? _tl2581326141_)
                                         (___kont4130641307_
                                          _hd2581426138_
                                          _hd2581126128_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2571125853_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2571125853_)))))
                         (let () (declare (not safe)) (_g2571125853_)))
                     (if (equal? _e2571827147_ 'datum:)
                         (if (gx#stx-pair? _tl2571527144_)
                             (let ((_e2582326037_
                                    (gx#syntax-e _tl2571527144_)))
                               (let ((_tl2582126044_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2582326037_)))
                                     (_hd2582226041_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2582326037_))))
                                 (if (gx#stx-null? _tl2582126044_)
                                     (___kont4130841309_ _hd2582226041_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2571125853_)))))
                             (let () (declare (not safe)) (_g2571125853_)))
                         (if (equal? _e2571827147_ 'apply:)
                             (if (gx#stx-pair? _tl2571527144_)
                                 (let ((_e2583225947_
                                        (gx#syntax-e _tl2571527144_)))
                                   (let ((_tl2583025954_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2583225947_)))
                                         (_hd2583125951_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2583225947_))))
                                     (if (gx#stx-pair? _tl2583025954_)
                                         (let ((_e2583525957_
                                                (gx#syntax-e _tl2583025954_)))
                                           (let ((_tl2583325964_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2583525957_)))
                                                 (_hd2583425961_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2583525957_))))
                                             (if (gx#stx-null? _tl2583325964_)
                                                 (___kont4131041311_
                                                  _hd2583425961_
                                                  _hd2583125951_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2571125853_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2571125853_)))))
                                 (let () (declare (not safe)) (_g2571125853_)))
                             (if (equal? _e2571827147_ 'var:)
                                 (if (gx#stx-pair? _tl2571527144_)
                                     (let ((_e2584325899_
                                            (gx#syntax-e _tl2571527144_)))
                                       (let ((_tl2584125906_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2584325899_)))
                                             (_hd2584225903_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2584325899_))))
                                         (if (gx#stx-null? _tl2584125906_)
                                             (___kont4131241313_
                                              _hd2584225903_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2571125853_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2571125853_)))
                                 (if (equal? _e2571827147_ 'any:)
                                     (if (gx#stx-null? _tl2571527144_)
                                         (___kont4131441315_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2571125853_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2571125853_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2571125853_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2571125853_)))))))
                               _g2567025681_))))
                      (declare (not safe))
                      (_g2566827446_ _tgt25663_))))
                 (_generate-splice24042_
                  (lambda (_tgt25035_ _hd25037_ _rest25038_ _K25039_ _E25040_)
                    (let* ((_g2504225059_
                            (lambda (_g2504325055_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2504325055_)))
                           (_g2504125659_
                            (lambda (_g2504325063_)
                              (if (gx#stx-pair/null? _g2504325063_)
                                  (let ((_g43029_
                                         (gx#syntax-split-splice
                                          _g2504325063_
                                          '0)))
                                    (begin
                                      (let ((_g43030_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g43029_)
                                                   (##vector-length _g43029_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g43030_ 2)))
                                            (error "Context expects 2 values"
                                                   _g43030_)))
                                      (let ((_target2504525066_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g43029_ 0)))
                                            (_tl2504725069_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g43029_ 1))))
                                        (if (gx#stx-null? _tl2504725069_)
                                            (letrec ((_loop2504825072_
                                                      (lambda (_hd2504625076_
                                                               _var2505225079_)
                                                        (if (gx#stx-pair?
                                                             _hd2504625076_)
                                                            (let ((_e2504925082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2504625076_)))
                      (let ((_lp-hd2505025086_
                             (let ()
                               (declare (not safe))
                               (##car _e2504925082_)))
                            (_lp-tl2505125089_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2504925082_))))
                        (let ((__tmp43048
                               (cons _lp-hd2505025086_ _var2505225079_)))
                          (declare (not safe))
                          (_loop2504825072_ _lp-tl2505125089_ __tmp43048))))
                    (let ((_var2505325092_ (reverse _var2505225079_)))
                      ((lambda (_L25096_)
                         (let ()
                           (let* ((_g2511225129_
                                   (lambda (_g2511325125_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2511325125_)))
                                  (_g2511125647_
                                   (lambda (_g2511325133_)
                                     (if (gx#stx-pair/null? _g2511325133_)
                                         (let ((_g43031_
                                                (gx#syntax-split-splice
                                                 _g2511325133_
                                                 '0)))
                                           (begin
                                             (let ((_g43032_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g43031_)
                                                          (##vector-length
                                                           _g43031_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g43032_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g43032_)))
                                             (let ((_target2511525136_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g43031_
                                                       0)))
                                                   (_tl2511725139_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g43031_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2511725139_)
                                                   (letrec ((_loop2511825142_
                                                             (lambda (_hd2511625146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2512225149_)
                       (if (gx#stx-pair? _hd2511625146_)
                           (let ((_e2511925152_ (gx#syntax-e _hd2511625146_)))
                             (let ((_lp-hd2512025156_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2511925152_)))
                                   (_lp-tl2512125159_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2511925152_))))
                               (let ((__tmp43046
                                      (cons _lp-hd2512025156_
                                            _var-r2512225149_)))
                                 (declare (not safe))
                                 (_loop2511825142_
                                  _lp-tl2512125159_
                                  __tmp43046))))
                           (let ((_var-r2512325162_
                                  (reverse _var-r2512225149_)))
                             ((lambda (_L25166_)
                                (let ()
                                  (let* ((_g2518325200_
                                          (lambda (_g2518425196_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2518425196_)))
                                         (_g2518225635_
                                          (lambda (_g2518425204_)
                                            (if (gx#stx-pair/null?
                                                 _g2518425204_)
                                                (let ((_g43033_
                                                       (gx#syntax-split-splice
                                                        _g2518425204_
                                                        '0)))
                                                  (begin
                                                    (let ((_g43034_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g43033_)
                         (##vector-length _g43033_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g43034_ 2)))
                  (error "Context expects 2 values" _g43034_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2518625207_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g43033_
                                                              0)))
                                                          (_tl2518825210_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g43033_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2518825210_)
                                                          (letrec ((_loop2518925213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2518725217_ _init2519325220_)
                              (if (gx#stx-pair? _hd2518725217_)
                                  (let ((_e2519025223_
                                         (gx#syntax-e _hd2518725217_)))
                                    (let ((_lp-hd2519125227_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2519025223_)))
                                          (_lp-tl2519225230_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2519025223_))))
                                      (let ((__tmp43044
                                             (cons _lp-hd2519125227_
                                                   _init2519325220_)))
                                        (declare (not safe))
                                        (_loop2518925213_
                                         _lp-tl2519225230_
                                         __tmp43044))))
                                  (let ((_init2519425233_
                                         (reverse _init2519325220_)))
                                    ((lambda (_L25237_)
                                       (let ()
                                         (let* ((_g2525425262_
                                                 (lambda (_g2525525258_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2525525258_)))
                                                (_g2525325631_
                                                 (lambda (_g2525525266_)
                                                   ((lambda (_L25269_)
                                                      (let ()
                                                        (let* ((_g2528225290_
                                                                (lambda (_g2528325286_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2528325286_)))
                       (_g2528125627_
                        (lambda (_g2528325294_)
                          ((lambda (_L25297_)
                             (let ()
                               (let* ((_g2531025318_
                                       (lambda (_g2531125314_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2531125314_)))
                                      (_g2530925623_
                                       (lambda (_g2531125322_)
                                         ((lambda (_L25325_)
                                            (let ()
                                              (let* ((_g2533825346_
                                                      (lambda (_g2533925342_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2533925342_)))
                                                     (_g2533725619_
                                                      (lambda (_g2533925350_)
                                                        ((lambda (_L25353_)
                                                           (let ()
                                                             (let* ((_g2536625374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2536725370_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2536725370_)))
                            (_g2536525615_
                             (lambda (_g2536725378_)
                               ((lambda (_L25381_)
                                  (let ()
                                    (let* ((_g2539425402_
                                            (lambda (_g2539525398_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2539525398_)))
                                           (_g2539325611_
                                            (lambda (_g2539525406_)
                                              ((lambda (_L25409_)
                                                 (let ()
                                                   (let* ((_g2542225430_
                                                           (lambda (_g2542325426_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2542325426_)))
                                                          (_g2542125607_
                                                           (lambda (_g2542325434_)
                                                             ((lambda (_L25437_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2545025458_
                                  (lambda (_g2545125454_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2545125454_)))
                                 (_g2544925592_
                                  (lambda (_g2545125462_)
                                    ((lambda (_L25465_)
                                       (let ()
                                         (let* ((_g2547825486_
                                                 (lambda (_g2547925482_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2547925482_)))
                                                (_g2547725580_
                                                 (lambda (_g2547925490_)
                                                   ((lambda (_L25493_)
                                                      (let ()
                                                        (let* ((_g2550625514_
                                                                (lambda (_g2550725510_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2550725510_)))
                       (_g2550525576_
                        (lambda (_g2550725518_)
                          ((lambda (_L25521_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _L25297_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _L25409_
                                         (foldr (lambda (_g2554325546_
                                                         _g2554425549_)
                                                  (cons _g2554325546_
                                                        _g2554425549_))
                                                '()
                                                _L25096_))
                                   (cons _L25437_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L25353_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _L25381_
                                               (cons _L25409_
                                                     (foldr (lambda (_g2554125552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2554225555_)
                      (cons _g2554125552_ _g2554225555_))
                    '()
                    _L25166_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _L25521_ '())))
                             '()))
                 (cons (cons _L25325_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L25409_
                                                     (foldr (lambda (_g2553925558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2554025561_)
                      (cons _g2553925558_ _g2554025561_))
                    '()
                    _L25166_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _L25409_ '()))
                         (cons (cons _L25353_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _L25409_ '()))
                                           (cons _L25409_
                                                 (foldr (lambda (_g2553725564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2553825567_)
                  (cons _g2553725564_ _g2553825567_))
                '()
                _L25166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L25493_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L25325_
                                                         (cons _L25269_
                                                               (foldr (lambda (_g2553525570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2553625573_)
                                (cons _g2553525570_ _g2553625573_))
                              '()
                              _L25237_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g2550725518_)))
                       (__tmp43035
                        (let ()
                          (declare (not safe))
                          (_generate124040_
                           _L25381_
                           _hd25037_
                           _L25465_
                           _L25493_))))
                  (declare (not safe))
                  (_g2550525576_ __tmp43035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2547925490_)))
                                                (__tmp43036
                                                 (cons _L25297_
                                                       (cons _L25409_
                                                             (foldr (lambda (_g2558325586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2558425589_)
                              (cons (cons (gx#datum->syntax '#f 'reverse)
                                          (cons _g2558325586_ '()))
                                    _g2558425589_))
                            '()
                            _L25166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g2547725580_ __tmp43036))))
                                     _g2545125462_)))
                                 (__tmp43037
                                  (cons _L25325_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##cdr)
                                                    (cons _L25409_ '()))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L25166_
                                                 _L25096_)
                                                (foldr (lambda (_g2559525599_
                                                                _g2559625602_
                                                                _g2559725604_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'cons)
                             (cons _g2559625602_ (cons _g2559525599_ '())))
                       _g2559725604_))
               '()
               _L25166_
               _L25096_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (declare (not safe))
                            (_g2544925592_ __tmp43037))))
                      _g2542325434_)))
                  (__tmp43038
                   (let ()
                     (declare (not safe))
                     (_generate124040_
                      _L25409_
                      _rest25038_
                      _K25039_
                      _E25040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2542125607_
                                                      __tmp43038))))
                                               _g2539525406_)))
                                           (__tmp43039 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2539325611_ __tmp43039))))
                                _g2536725378_)))
                            (__tmp43040 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2536525615_ __tmp43040))))
                 _g2533925350_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp43041
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2533725619_ __tmp43041))))
                                          _g2531125322_)))
                                      (__tmp43042 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2530925623_ __tmp43042))))
                           _g2528325294_)))
                       (__tmp43043 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2528125627_ __tmp43043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2525525266_))))
                                           (declare (not safe))
                                           (_g2525325631_ _tgt25035_))))
                                     _init2519425233_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2518925213_ _target2518625207_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2518325200_ _g2518425204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2518325200_
                                                   _g2518425204_)))))
                                         (__tmp43045
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_g2563825641_
                                                            _g2563925644_)
                                                     (cons _g2563825641_
                                                           _g2563925644_))
                                                   '()
                                                   _L25096_))
                                           (cons (gx#datum->syntax '#f '@list)
                                                 '()))))
                                    (declare (not safe))
                                    (_g2518225635_ __tmp43045))))
                              _var-r2512325162_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2511825142_
                                                        _target2511525136_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2511225129_
                                                      _g2511325133_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2511225129_ _g2511325133_)))))
                                  (__tmp43047
                                   (gx#gentemps
                                    (foldr (lambda (_g2565025653_
                                                    _g2565125656_)
                                             (cons _g2565025653_
                                                   _g2565125656_))
                                           '()
                                           _L25096_))))
                             (declare (not safe))
                             (_g2511125647_ __tmp43047))))
                       _var2505325092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2504825072_
                                                 _target2504525066_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2504225059_
                                               _g2504325063_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2504225059_ _g2504325063_)))))
                           (__tmp43049
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25037_))))
                      (declare (not safe))
                      (_g2504125659_ __tmp43049))))
                 (_generate-simple-vector24043_
                  (lambda (_tgt24877_
                           _body24879_
                           _start24880_
                           _K24881_
                           _E24882_)
                    (let _recur24884_ ((_rest24887_ _body24879_)
                                       (_off24889_ _start24880_))
                      (let* ((___stx4163941640_ _rest24887_)
                             (_g2489224904_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4163941640_))))
                        (let ((___kont4164241643_
                               (lambda (_L24932_ _L24934_)
                                 (let* ((_g2494924968_
                                         (lambda (_g2495024964_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2495024964_)))
                                        (_g2494825027_
                                         (lambda (_g2495024972_)
                                           (if (gx#stx-pair? _g2495024972_)
                                               (let ((_e2495624975_
                                                      (gx#syntax-e
                                                       _g2495024972_)))
                                                 (let ((_hd2495524979_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2495624975_)))
                                                       (_tl2495424982_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2495624975_))))
                                                   (if (gx#stx-pair?
                                                        _tl2495424982_)
                                                       (let ((_e2495924985_
                                                              (gx#syntax-e
                                                               _tl2495424982_)))
                                                         (let ((_hd2495824989_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2495924985_)))
                       (_tl2495724992_
                        (let () (declare (not safe)) (##cdr _e2495924985_))))
                   (if (gx#stx-pair? _tl2495724992_)
                       (let ((_e2496224995_ (gx#syntax-e _tl2495724992_)))
                         (let ((_hd2496124999_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2496224995_)))
                               (_tl2496025002_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2496224995_))))
                           (if (gx#stx-null? _tl2496025002_)
                               ((lambda (_L25005_ _L25007_ _L25008_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _L25008_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L25007_ (cons _L25005_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (let ((__tmp43050
                                                             (let ((__tmp43051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (fx1+ _off24889_)))
                       (declare (not safe))
                       (_recur24884_ _L24932_ __tmp43051))))
                (declare (not safe))
                (_generate124040_ _L25008_ _L24934_ __tmp43050 _E24882_))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _hd2496124999_
                                _hd2495824989_
                                _hd2495524979_)
                               (let ()
                                 (declare (not safe))
                                 (_g2494924968_ _g2495024972_)))))
                       (let ()
                         (declare (not safe))
                         (_g2494924968_ _g2495024972_)))))
               (let () (declare (not safe)) (_g2494924968_ _g2495024972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2494924968_
                                                  _g2495024972_)))))
                                        (__tmp43052
                                         (list (gx#genident 'e)
                                               _tgt24877_
                                               _off24889_)))
                                   (declare (not safe))
                                   (_g2494825027_ __tmp43052))))
                              (___kont4164441645_ (lambda () _K24881_)))
                          (if (gx#stx-pair? ___stx4163941640_)
                              (let ((_e2489824922_
                                     (gx#syntax-e ___stx4163941640_)))
                                (let ((_tl2489624929_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2489824922_)))
                                      (_hd2489724926_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2489824922_))))
                                  (___kont4164241643_
                                   _tl2489624929_
                                   _hd2489724926_)))
                              (___kont4164441645_)))))))
                 (_generate-list-vector24044_
                  (lambda (_tgt24769_
                           _body24771_
                           _->list24772_
                           _K24773_
                           _E24774_)
                    (let* ((_g2477624784_
                            (lambda (_g2477724780_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2477724780_)))
                           (_g2477524873_
                            (lambda (_g2477724788_)
                              ((lambda (_L24791_)
                                 (let ()
                                   (let* ((_g2480324811_
                                           (lambda (_g2480424807_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2480424807_)))
                                          (_g2480224869_
                                           (lambda (_g2480424815_)
                                             ((lambda (_L24818_)
                                                (let ()
                                                  (let* ((_g2483124839_
                                                          (lambda (_g2483224835_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2483224835_)))
                                                         (_g2483024861_
                                                          (lambda (_g2483224843_)
                                                            ((lambda (_L24846_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _L24791_
                                                   (cons _L24846_ '()))
                                             '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (_generate124040_
                                                _L24791_
                                                _body24771_
                                                _K24773_
                                                _E24774_))
                                             '()))))))
                     _g2483224843_)))
                 (__tmp43053
                  (let ((_$e24865_ _->list24772_))
                    (if (eq? 'values->list _$e24865_)
                        (cons (gx#datum->syntax '#f 'values->list)
                              (cons _L24818_ '()))
                        (if (eq? 'vector->list _$e24865_)
                            (cons (gx#datum->syntax '#f '##vector->list)
                                  (cons _L24818_ '()))
                            (if (eq? 'struct->list _$e24865_)
                                (cons (gx#datum->syntax '#f '##cdr)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector->list)
                                                  (cons _L24818_ '()))
                                            '()))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24033_
                                 _->list24772_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2483024861_
                                                     __tmp43053))))
                                              _g2480424815_))))
                                     (declare (not safe))
                                     (_g2480224869_ _tgt24769_))))
                               _g2477724788_)))
                           (__tmp43054 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2477524873_ __tmp43054))))
                 (_generate-struct24045_
                  (lambda (_info24427_
                           _tgt24429_
                           _body24430_
                           _K24431_
                           _E24432_)
                    (let* ((_rtd24434_
                            (if (let ()
                                  (declare (not safe))
                                  (class-instance?
                                   |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
                                   _info24427_))
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _info24427_
                                   'type-exhibitor))
                                '#f))
                           (_fields24444_
                            (let _lp24437_ ((_rtd24440_ _rtd24434_)
                                            (_k24442_ '0))
                              (if _rtd24440_
                                  (let ((__tmp43056
                                         (let ((__tmp43057
                                                (##structure-ref
                                                 _rtd24440_
                                                 '2
                                                 |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                 '#f)))
                                           (declare (not safe))
                                           (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                            __tmp43057)))
                                        (__tmp43055
                                         (fx+ (length (##structure-ref
                                                       _rtd24440_
                                                       '6
                                                       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
                                                       '#f))
                                              _k24442_)))
                                    (declare (not safe))
                                    (_lp24437_ __tmp43056 __tmp43055))
                                  _k24442_)))
                           (_final?24447_
                            (if _rtd24434_
                                (assgetq 'final:
                                         (##structure-ref
                                          _rtd24434_
                                          '5
                                          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                          '#f))
                                '#f))
                           (_g2445024458_
                            (lambda (_g2445124454_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2445124454_)))
                           (_g2444924765_
                            (lambda (_g2445124462_)
                              ((lambda (_L24465_)
                                 (let ()
                                   (let* ((_g2448024488_
                                           (lambda (_g2448124484_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2448124484_)))
                                          (_g2447924667_
                                           (lambda (_g2448124492_)
                                             ((lambda (_L24495_)
                                                (let ()
                                                  (let ()
                                                    (let* ((___stx4165541656_
                                                            _body24430_)
                                                           (_g2451124534_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               ___stx4165541656_))))
                                                      (let ((___kont4165841659_
                                                             (lambda (_L24613_)
                                                               (let ((_K24627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_generate-simple-vector24043_
                                 _tgt24429_
                                 _L24613_
                                 '1
                                 _K24431_
                                 _E24432_)))
                             (_len24629_ (gx#stx-length _L24613_)))
                         (if (and _rtd24434_ (fx<= _len24629_ _fields24444_))
                             (cons 'if
                                   (cons _L24495_
                                         (cons _K24627_ (cons _E24432_ '()))))
                             (let* ((_g2463124639_
                                     (lambda (_g2463224635_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g2463224635_)))
                                    (_g2463024659_
                                     (lambda (_g2463224643_)
                                       ((lambda (_L24646_)
                                          (let ()
                                            (cons 'if
                                                  (cons _L24495_
                                                        (cons (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx<)
                                        (cons _L24646_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector-length)
                                                          (cons _L24465_ '()))
                                                    '())))
                                  (cons _K24627_ (cons _E24432_ '()))))
                      (cons _E24432_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2463224643_))))
                               (declare (not safe))
                               (_g2463024659_ _len24629_))))))
                    (___kont4166041661_
                     (lambda (_L24565_)
                       (cons 'if
                             (cons _L24495_
                                   (cons (let ()
                                           (declare (not safe))
                                           (_generate-list-vector24044_
                                            _tgt24429_
                                            _L24565_
                                            'struct->list
                                            _K24431_
                                            _E24432_))
                                         (cons _E24432_ '())))))))
                (if (gx#stx-pair? ___stx4165541656_)
                    (let ((_e2451624589_ (gx#syntax-e ___stx4165541656_)))
                      (let ((_tl2451424596_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2451624589_)))
                            (_hd2451524593_
                             (let ()
                               (declare (not safe))
                               (##car _e2451624589_))))
                        (if (gx#stx-datum? _hd2451524593_)
                            (let ((_e2451724599_ (gx#stx-e _hd2451524593_)))
                              (if (equal? _e2451724599_ 'simple:)
                                  (if (gx#stx-pair? _tl2451424596_)
                                      (let ((_e2452024603_
                                             (gx#syntax-e _tl2451424596_)))
                                        (let ((_tl2451824610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2452024603_)))
                                              (_hd2451924607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2452024603_))))
                                          (if (gx#stx-null? _tl2451824610_)
                                              (___kont4165841659_
                                               _hd2451924607_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2451124534_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2451124534_)))
                                  (if (equal? _e2451724599_ 'list:)
                                      (if (gx#stx-pair? _tl2451424596_)
                                          (let ((_e2452824555_
                                                 (gx#syntax-e _tl2451424596_)))
                                            (let ((_tl2452624562_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2452824555_)))
                                                  (_hd2452724559_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2452824555_))))
                                              (if (gx#stx-null? _tl2452624562_)
                                                  (___kont4166041661_
                                                   _hd2452724559_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2451124534_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2451124534_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2451124534_)))))
                            (let () (declare (not safe)) (_g2451124534_)))))
                    (let () (declare (not safe)) (_g2451124534_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2448124492_)))
                                          (__tmp43058
                                           (if (let ()
                                                 (declare (not safe))
                                                 (class-instance?
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                                                  _info24427_))
                                               (let* ((_g2467124679_
                                                       (lambda (_g2467224675_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2467224675_)))
                                                      (_g2467024698_
                                                       (lambda (_g2467224683_)
                                                         ((lambda (_L24686_)
                                                            (let ()
                                                              (cons _L24686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L24465_ '()))))
                  _g2467224683_)))
              (__tmp43060
               (cadddr (let ()
                         (declare (not safe))
                         (unchecked-slot-ref
                          _info24427_
                          'expander-identifiers)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2467024698_ __tmp43060))
                                               (let* ((_g2470224717_
                                                       (lambda (_g2470324713_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2470324713_)))
                                                      (_g2470124761_
                                                       (lambda (_g2470324721_)
                                                         (if (gx#stx-pair?
                                                              _g2470324721_)
                                                             (let ((_e2470824724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2470324721_)))
                       (let ((_hd2470724728_
                              (let ()
                                (declare (not safe))
                                (##car _e2470824724_)))
                             (_tl2470624731_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2470824724_))))
                         (if (gx#stx-pair? _tl2470624731_)
                             (let ((_e2471124734_
                                    (gx#syntax-e _tl2470624731_)))
                               (let ((_hd2471024738_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2471124734_)))
                                     (_tl2470924741_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2471124734_))))
                                 (if (gx#stx-null? _tl2470924741_)
                                     ((lambda (_L24744_ _L24746_)
                                        (let ()
                                          (cons _L24744_
                                                (cons _L24746_
                                                      (cons _L24465_ '())))))
                                      _hd2471024738_
                                      _hd2470724728_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2470224717_ _g2470324721_)))))
                             (let ()
                               (declare (not safe))
                               (_g2470224717_ _g2470324721_)))))
                     (let ()
                       (declare (not safe))
                       (_g2470224717_ _g2470324721_)))))
              (__tmp43059
               (list (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _info24427_ 'runtime-identifier))
                     (if _final?24447_
                         (gx#datum->syntax '#f 'direct-instance?)
                         (gx#datum->syntax '#f 'struct-instance?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2470124761_ __tmp43059)))))
                                     (declare (not safe))
                                     (_g2447924667_ __tmp43058))))
                               _g2445124462_))))
                      (declare (not safe))
                      (_g2444924765_ _tgt24429_))))
                 (_generate-class24046_
                  (lambda (_info24048_
                           _tgt24050_
                           _body24051_
                           _K24052_
                           _E24053_)
                    (letrec* ((_rtd24055_
                               (if (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
                                      _info24048_))
                                   (let ()
                                     (declare (not safe))
                                     (unchecked-slot-ref
                                      _info24048_
                                      'type-exhibitor))
                                   '#f))
                              (_known-slot?24057_
                               (if _rtd24055_
                                   (lambda (_key24421_)
                                     (let ((_slot24424_
                                            (keyword->symbol
                                             (gx#stx-e _key24421_))))
                                       (declare (not safe))
                                       (_rtd-known-slot?24059_
                                        _rtd24055_
                                        _slot24424_)))
                                   false))
                              (_final?24058_
                               (if _rtd24055_
                                   (assgetq 'final:
                                            (##structure-ref
                                             _rtd24055_
                                             '5
                                             |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                             '#f))
                                   '#f))
                              (_rtd-known-slot?24059_
                               (lambda (_rtd24408_ _slot24410_)
                                 (if _rtd24408_
                                     (let ((_$e24412_
                                            (memq _slot24410_
                                                  (##structure-ref
                                                   _rtd24408_
                                                   '6
                                                   |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                                                   '#f))))
                                       (if _$e24412_
                                           _$e24412_
                                           (ormap (lambda (_g2441524417_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_rtd-known-slot?24059_
                                                       _g2441524417_
                                                       _slot24410_)))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (##structure-ref
                                                        _rtd24408_
                                                        '2
                                                        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                        '#f)))))
                                     '#f)))
                              (_recur24060_
                               (lambda (_klass24194_ _rest24196_)
                                 (let* ((___stx4170541706_ _rest24196_)
                                        (_g2419924215_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4170541706_))))
                                   (let ((___kont4170841709_
                                          (lambda (_L24253_ _L24255_ _L24256_)
                                            (let* ((_g2427224280_
                                                    (lambda (_g2427324276_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g2427324276_)))
                                                   (_g2427124400_
                                                    (lambda (_g2427324284_)
                                                      ((lambda (_L24287_)
                                                         (let ()
                                                           (let* ((_g2429924307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2430024303_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2430024303_)))
                          (_g2429824396_
                           (lambda (_g2430024311_)
                             ((lambda (_L24314_)
                                (let ()
                                  (let* ((_g2432724335_
                                          (lambda (_g2432824331_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2432824331_)))
                                         (_g2432624392_
                                          (lambda (_g2432824339_)
                                            ((lambda (_L24342_)
                                               (let ()
                                                 (let* ((_g2435524363_
                                                         (lambda (_g2435624359_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g2435624359_)))
                                                        (_g2435424388_
                                                         (lambda (_g2435624367_)
                                                           ((lambda (_L24370_)
                                                              (let ()
                                                                (let ((_K24383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'let
                                     (cons (cons (cons _L24370_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##vector-ref)
                           (cons _L24287_
                                 (cons (cons (gx#datum->syntax '#f 'fx1+)
                                             (cons _L24342_ '()))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (let ((__tmp43061
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur24060_
                                                           _klass24194_
                                                           _L24253_))))
                                                   (declare (not safe))
                                                   (_generate124040_
                                                    _L24370_
                                                    _L24255_
                                                    __tmp43061
                                                    _E24053_))
                                                 '())))))
                          (if (_known-slot?24057_ _L24256_)
                              (cons 'let
                                    (cons (cons (cons _L24342_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L24314_ (cons _L24256_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons _K24383_ '())))
                              (cons 'let
                                    (cons (cons (cons _L24342_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L24314_ (cons _L24256_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons 'if
                                                      (cons _L24342_
                                                            (cons _K24383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E24053_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
                    _g2435624367_)))
                (__tmp43062 (gx#genident 'e)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2435424388_
                                                    __tmp43062))))
                                             _g2432824339_)))
                                         (__tmp43063 (gx#genident 'slot)))
                                    (declare (not safe))
                                    (_g2432624392_ __tmp43063))))
                              _g2430024311_))))
                     (declare (not safe))
                     (_g2429824396_ _klass24194_))))
               _g2427324284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g2427124400_ _tgt24050_))))
                                         (___kont4171041711_
                                          (lambda () _K24052_)))
                                     (if (gx#stx-pair? ___stx4170541706_)
                                         (let ((_e2420624233_
                                                (gx#syntax-e
                                                 ___stx4170541706_)))
                                           (let ((_tl2420424240_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2420624233_)))
                                                 (_hd2420524237_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2420624233_))))
                                             (if (gx#stx-pair? _tl2420424240_)
                                                 (let ((_e2420924243_
                                                        (gx#syntax-e
                                                         _tl2420424240_)))
                                                   (let ((_tl2420724250_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2420924243_)))
                                                         (_hd2420824247_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2420924243_))))
                                                     (___kont4170841709_
                                                      _tl2420724250_
                                                      _hd2420824247_
                                                      _hd2420524237_)))
                                                 (___kont4171041711_))))
                                         (___kont4171041711_)))))))
                      (let* ((_g2406224070_
                              (lambda (_g2406324066_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2406324066_)))
                             (_g2406124190_
                              (lambda (_g2406324074_)
                                ((lambda (_L24077_)
                                   (let ()
                                     (let* ((_g2409224100_
                                             (lambda (_g2409324096_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2409324096_)))
                                            (_g2409124186_
                                             (lambda (_g2409324104_)
                                               ((lambda (_L24107_)
                                                  (let ()
                                                    (let* ((_g2412024128_
                                                            (lambda (_g2412124124_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2412124124_)))
                                                           (_g2411924182_
                                                            (lambda (_g2412124132_)
                                                              ((lambda (_L24135_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2414824156_
                                   (lambda (_g2414924152_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2414924152_)))
                                  (_g2414724178_
                                   (lambda (_g2414924160_)
                                     ((lambda (_L24163_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L24163_
                                                              (cons _L24135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L24107_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L24077_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L24107_ '()))
                                                    '()))
                                        '())
                                  (cons (let ()
                                          (declare (not safe))
                                          (_recur24060_ _L24077_ _body24051_))
                                        '())))
                      (cons _E24053_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2414924160_)))
                                  (__tmp43064
                                   (if _final?24058_
                                       (gx#datum->syntax '#f 'direct-instance?)
                                       (gx#datum->syntax
                                        '#f
                                        'class-instance?))))
                             (declare (not safe))
                             (_g2414724178_ __tmp43064))))
                       _g2412124132_)))
                   (__tmp43065
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-ref _info24048_ 'runtime-identifier))))
              (declare (not safe))
              (_g2411924182_ __tmp43065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2409324104_))))
                                       (declare (not safe))
                                       (_g2409124186_ _tgt24050_))))
                                 _g2406324074_)))
                             (__tmp43066 (gx#genident 'class)))
                        (declare (not safe))
                        (_g2406124190_ __tmp43066))))))
          (let ()
            (declare (not safe))
            (_generate124040_ _tgt24035_ _ptree24036_ _K24037_ _E24038_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx22929_ _tgt-lst22931_ _clauses22932_)
        (letrec ((_parse-body22934_
                  (lambda (_hd-len23855_)
                    (let _lp23858_ ((_rest23861_ _clauses22932_)
                                    (_r23863_ '()))
                      (let* ((___stx4175541756_ _rest23861_)
                             (_g2386623878_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4175541756_))))
                        (let ((___kont4175841759_
                               (lambda (_L23906_ _L23908_)
                                 (let* ((___stx4172741728_ _L23908_)
                                        (_g2392523941_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4172741728_))))
                                   (let ((___kont4173041731_
                                          (lambda (_L24010_)
                                            (if (gx#stx-null? _L23906_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin) _L24010_)
                                 (let ((_$e24021_ (gx#stx-source _L23908_)))
                                   (if _$e24021_
                                       _$e24021_
                                       (gx#stx-source _stx22929_))))
                                '())))
              _r23863_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx22929_
                                                 _L23908_))))
                                         (___kont4173241733_
                                          (lambda (_L23969_ _L23971_)
                                            (let ((__tmp43067
                                                   (cons (cons (gx#genident
                                                                'try-match)
                                                               (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2398323985_)
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                   _g2398323985_
                                   _stx22929_)))
                              _L23971_)
                             (cons (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'begin)
                                          _L23969_)
                                    (let ((_$e23989_ (gx#stx-source _L23908_)))
                                      (if _$e23989_
                                          _$e23989_
                                          (gx#stx-source _stx22929_))))
                                   '())))
                 _r23863_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_lp23858_
                                               _L23906_
                                               __tmp43067))))
                                         (___kont4173441735_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal match clause"
                                             _stx22929_
                                             _L23908_))))
                                     (let* ((___match4175241753_
                                             (lambda (_e2393523959_
                                                      _hd2393423963_
                                                      _tl2393323966_)
                                               (let ((_L23969_ _tl2393323966_)
                                                     (_L23971_ _hd2393423963_))
                                                 (if (and (gx#stx-list?
                                                           _L23971_)
                                                          (fx= (gx#stx-length
                                                                _L23971_)
                                                               _hd-len23855_)
                                                          (gx#stx-list?
                                                           _L23969_)
                                                          (not (gx#stx-null?
                                                                _L23969_)))
                                                     (___kont4173241733_
                                                      _L23969_
                                                      _L23971_)
                                                     (___kont4173441735_)))))
                                            (___match4174641747_
                                             (lambda (_e2393024000_
                                                      _hd2392924004_
                                                      _tl2392824007_)
                                               (let ((_L24010_ _tl2392824007_))
                                                 (if (and (gx#stx-list?
                                                           _L24010_)
                                                          (not (gx#stx-null?
                                                                _L24010_)))
                                                     (___kont4173041731_
                                                      _L24010_)
                                                     (___match4175241753_
                                                      _e2393024000_
                                                      _hd2392924004_
                                                      _tl2392824007_))))))
                                       (if (gx#stx-pair? ___stx4172741728_)
                                           (let ((_e2393024000_
                                                  (gx#syntax-e
                                                   ___stx4172741728_)))
                                             (let ((_tl2392824007_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2393024000_)))
                                                   (_hd2392924004_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2393024000_))))
                                               (if (gx#identifier?
                                                    _hd2392924004_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g43068_|
                                                        _hd2392924004_)
                                                       (___match4174641747_
                                                        _e2393024000_
                                                        _hd2392924004_
                                                        _tl2392824007_)
                                                       (___match4175241753_
                                                        _e2393024000_
                                                        _hd2392924004_
                                                        _tl2392824007_))
                                                   (___match4175241753_
                                                    _e2393024000_
                                                    _hd2392924004_
                                                    _tl2392824007_))))
                                           (___kont4173441735_)))))))
                              (___kont4176041761_ (lambda () _r23863_)))
                          (if (gx#stx-pair? ___stx4175541756_)
                              (let ((_e2387223896_
                                     (gx#syntax-e ___stx4175541756_)))
                                (let ((_tl2387023903_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2387223896_)))
                                      (_hd2387123900_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2387223896_))))
                                  (___kont4175841759_
                                   _tl2387023903_
                                   _hd2387123900_)))
                              (___kont4176041761_)))))))
                 (_generate-body22936_
                  (lambda (_body23640_)
                    (let* ((_g2364323651_
                            (lambda (_g2364423647_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2364423647_)))
                           (_g2364223851_
                            (lambda (_g2364423655_)
                              ((lambda (_L23658_)
                                 (let ()
                                   (let* ((_g2367023687_
                                           (lambda (_g2367123683_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2367123683_)))
                                          (_g2366923847_
                                           (lambda (_g2367123691_)
                                             (if (gx#stx-pair/null?
                                                  _g2367123691_)
                                                 (let ((_g43069_
                                                        (gx#syntax-split-splice
                                                         _g2367123691_
                                                         '0)))
                                                   (begin
                                                     (let ((_g43070_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g43069_)
                          (##vector-length _g43069_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g43070_ 2)))
                   (error "Context expects 2 values" _g43070_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2367323694_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g43069_
                                                               0)))
                                                           (_tl2367523697_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g43069_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2367523697_)
                                                           (letrec ((_loop2367623700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2367423704_ _target2368023707_)
                               (if (gx#stx-pair? _hd2367423704_)
                                   (let ((_e2367723710_
                                          (gx#syntax-e _hd2367423704_)))
                                     (let ((_lp-hd2367823714_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2367723710_)))
                                           (_lp-tl2367923717_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2367723710_))))
                                       (let ((__tmp43075
                                              (cons _lp-hd2367823714_
                                                    _target2368023707_)))
                                         (declare (not safe))
                                         (_loop2367623700_
                                          _lp-tl2367923717_
                                          __tmp43075))))
                                   (let ((_target2368123720_
                                          (reverse _target2368023707_)))
                                     ((lambda (_L23724_)
                                        (let ()
                                          (let* ((_g2374123749_
                                                  (lambda (_g2374223745_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2374223745_)))
                                                 (_g2374023835_
                                                  (lambda (_g2374223753_)
                                                    ((lambda (_L23756_)
                                                       (let ()
                                                         (let* ((_g2376923777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2377023773_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2377023773_)))
                        (_g2376823831_
                         (lambda (_g2377023781_)
                           ((lambda (_L23784_)
                              (let ()
                                (let* ((_g2379723805_
                                        (lambda (_g2379823801_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2379823801_)))
                                       (_g2379623827_
                                        (lambda (_g2379823809_)
                                          ((lambda (_L23812_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match)
                                                             (cons _L23812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g2379823809_)))
                                       (__tmp43071
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _L23658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23756_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L23784_ '())))
                                         (gx#stx-source _stx22929_))))
                                  (declare (not safe))
                                  (_g2379623827_ __tmp43071))))
                            _g2377023781_)))
                        (__tmp43072
                         (let ((__tmp43073 (cons _L23658_ '())))
                           (declare (not safe))
                           (_generate-clauses22937_ _body23640_ __tmp43073))))
                   (declare (not safe))
                   (_g2376823831_ __tmp43072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2374223753_)))
                                                 (__tmp43074
                                                  (gx#stx-wrap-source
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'error)
                                   (cons '"No clause matching"
                                         (foldr (lambda (_g2383823841_
                                                         _g2383923844_)
                                                  (cons _g2383823841_
                                                        _g2383923844_))
                                                '()
                                                _L23724_)))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _stx22929_))))
                                            (declare (not safe))
                                            (_g2374023835_ __tmp43074))))
                                      _target2368123720_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2367623700_ _target2367323694_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2367023687_ _g2367123691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2367023687_
                                                    _g2367123691_))))))
                                     (declare (not safe))
                                     (_g2366923847_ _tgt-lst22931_))))
                               _g2364423655_)))
                           (__tmp43076 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2364223851_ __tmp43076))))
                 (_generate-clauses22937_
                  (lambda (_rest23292_ _E23294_)
                    (let* ((___stx4177141772_ _rest23292_)
                           (_g2329823314_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4177141772_))))
                      (let ((___kont4177441775_
                             (lambda (_L23548_)
                               (let* ((_g2355923577_
                                       (lambda (_g2356023573_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2356023573_)))
                                      (_g2355823632_
                                       (lambda (_g2356023581_)
                                         (if (gx#stx-pair? _g2356023581_)
                                             (let ((_e2356523584_
                                                    (gx#syntax-e
                                                     _g2356023581_)))
                                               (let ((_hd2356423588_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2356523584_)))
                                                     (_tl2356323591_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2356523584_))))
                                                 (if (gx#stx-pair?
                                                      _tl2356323591_)
                                                     (let ((_e2356823594_
                                                            (gx#syntax-e
                                                             _tl2356323591_)))
                                                       (let ((_hd2356723598_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2356823594_)))
                     (_tl2356623601_
                      (let () (declare (not safe)) (##cdr _e2356823594_))))
                 (if (gx#stx-pair? _tl2356623601_)
                     (let ((_e2357123604_ (gx#syntax-e _tl2356623601_)))
                       (let ((_hd2357023608_
                              (let ()
                                (declare (not safe))
                                (##car _e2357123604_)))
                             (_tl2356923611_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2357123604_))))
                         (if (gx#stx-null? _tl2356923611_)
                             ((lambda (_L23614_ _L23616_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L23616_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate122938_
                                                         _L23616_
                                                         _L23614_
                                                         _E23294_))
                                                      _L23614_)
                                                  '()))))
                              _hd2357023608_
                              _hd2356723598_)
                             (let ()
                               (declare (not safe))
                               (_g2355923577_ _g2356023581_)))))
                     (let ()
                       (declare (not safe))
                       (_g2355923577_ _g2356023581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2355923577_
                                                        _g2356023581_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2355923577_
                                                _g2356023581_))))))
                                 (declare (not safe))
                                 (_g2355823632_ _L23548_))))
                            (___kont4177641777_
                             (lambda (_L23342_ _L23344_)
                               (let* ((_g2335723376_
                                       (lambda (_g2335823372_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2335823372_)))
                                      (_g2335623527_
                                       (lambda (_g2335823380_)
                                         (if (gx#stx-pair? _g2335823380_)
                                             (let ((_e2336423383_
                                                    (gx#syntax-e
                                                     _g2335823380_)))
                                               (let ((_hd2336323387_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2336423383_)))
                                                     (_tl2336223390_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2336423383_))))
                                                 (if (gx#stx-pair?
                                                      _tl2336223390_)
                                                     (let ((_e2336723393_
                                                            (gx#syntax-e
                                                             _tl2336223390_)))
                                                       (let ((_hd2336623397_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2336723393_)))
                     (_tl2336523400_
                      (let () (declare (not safe)) (##cdr _e2336723393_))))
                 (if (gx#stx-pair? _tl2336523400_)
                     (let ((_e2337023403_ (gx#syntax-e _tl2336523400_)))
                       (let ((_hd2336923407_
                              (let ()
                                (declare (not safe))
                                (##car _e2337023403_)))
                             (_tl2336823410_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2337023403_))))
                         (if (gx#stx-null? _tl2336823410_)
                             ((lambda (_L23413_ _L23415_ _L23416_)
                                (if (gx#stx-e _L23415_)
                                    (let* ((_g2343323448_
                                            (lambda (_g2343423444_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2343423444_)))
                                           (_g2343223493_
                                            (lambda (_g2343423452_)
                                              (if (gx#stx-pair? _g2343423452_)
                                                  (let ((_e2343923455_
                                                         (gx#syntax-e
                                                          _g2343423452_)))
                                                    (let ((_hd2343823459_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2343923455_)))
                                                          (_tl2343723462_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2343923455_))))
                                                      (if (gx#stx-pair?
                                                           _tl2343723462_)
                                                          (let ((_e2344223465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2343723462_)))
                    (let ((_hd2344123469_
                           (let () (declare (not safe)) (##car _e2344223465_)))
                          (_tl2344023472_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2344223465_))))
                      (if (gx#stx-null? _tl2344023472_)
                          ((lambda (_L23475_ _L23477_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L23416_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L23477_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _L23475_ '())))))
                           _hd2344123469_
                           _hd2343823459_)
                          (let ()
                            (declare (not safe))
                            (_g2343323448_ _g2343423452_)))))
                  (let ()
                    (declare (not safe))
                    (_g2343323448_ _g2343423452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2343323448_
                                                     _g2343423452_)))))
                                           (__tmp43079
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate122938_
                                                     _L23415_
                                                     _L23413_
                                                     _E23294_))
                                                  (let ((__tmp43080
                                                         (cons _L23416_ '())))
                                                    (declare (not safe))
                                                    (_generate-clauses22937_
                                                     _L23342_
                                                     __tmp43080)))))
                                      (declare (not safe))
                                      (_g2343223493_ __tmp43079))
                                    (let* ((_g2349723505_
                                            (lambda (_g2349823501_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2349823501_)))
                                           (_g2349623523_
                                            (lambda (_g2349823509_)
                                              ((lambda (_L23512_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L23416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@match-else)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _L23413_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _L23512_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2349823509_)))
                                           (__tmp43077
                                            (let ((__tmp43078
                                                   (cons _L23416_ '())))
                                              (declare (not safe))
                                              (_generate-clauses22937_
                                               _L23342_
                                               __tmp43078))))
                                      (declare (not safe))
                                      (_g2349623523_ __tmp43077))))
                              _hd2336923407_
                              _hd2336623397_
                              _hd2336323387_)
                             (let ()
                               (declare (not safe))
                               (_g2335723376_ _g2335823380_)))))
                     (let ()
                       (declare (not safe))
                       (_g2335723376_ _g2335823380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2335723376_
                                                        _g2335823380_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2335723376_
                                                _g2335823380_))))))
                                 (declare (not safe))
                                 (_g2335623527_ _L23344_))))
                            (___kont4177841779_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E23294_ '()))))))
                        (if (gx#stx-pair? ___stx4177141772_)
                            (let ((_e2330323538_
                                   (gx#syntax-e ___stx4177141772_)))
                              (let ((_tl2330123545_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2330323538_)))
                                    (_hd2330223542_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2330323538_))))
                                (if (gx#stx-null? _tl2330123545_)
                                    (___kont4177441775_ _hd2330223542_)
                                    (___kont4177641777_
                                     _tl2330123545_
                                     _hd2330223542_))))
                            (___kont4177841779_))))))
                 (_generate122938_
                  (lambda (_clause22940_ _body22942_ _E22943_)
                    (let* ((_g2294522969_
                            (lambda (_g2294622965_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2294622965_)))
                           (_g2294423288_
                            (lambda (_g2294622973_)
                              (if (gx#stx-pair? _g2294622973_)
                                  (let ((_e2295122976_
                                         (gx#syntax-e _g2294622973_)))
                                    (let ((_hd2295022980_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2295122976_)))
                                          (_tl2294922983_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2295122976_))))
                                      (if (gx#stx-pair? _tl2294922983_)
                                          (let ((_e2295422986_
                                                 (gx#syntax-e _tl2294922983_)))
                                            (let ((_hd2295322990_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2295422986_)))
                                                  (_tl2295222993_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2295422986_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2295322990_)
                                                  (let ((_g43081_
                                                         (gx#syntax-split-splice
                                                          _hd2295322990_
                                                          '0)))
                                                    (begin
                                                      (let ((_g43082_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g43081_)
                           (##vector-length _g43081_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g43082_ 2)))
                    (error "Context expects 2 values" _g43082_)))
              (let ((_target2295522996_
                     (let () (declare (not safe)) (##vector-ref _g43081_ 0)))
                    (_tl2295722999_
                     (let () (declare (not safe)) (##vector-ref _g43081_ 1))))
                (if (gx#stx-null? _tl2295722999_)
                    (letrec ((_loop2295823002_
                              (lambda (_hd2295623006_ _var2296223009_)
                                (if (gx#stx-pair? _hd2295623006_)
                                    (let ((_e2295923012_
                                           (gx#syntax-e _hd2295623006_)))
                                      (let ((_lp-hd2296023016_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2295923012_)))
                                            (_lp-tl2296123019_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2295923012_))))
                                        (let ((__tmp43086
                                               (cons _lp-hd2296023016_
                                                     _var2296223009_)))
                                          (declare (not safe))
                                          (_loop2295823002_
                                           _lp-tl2296123019_
                                           __tmp43086))))
                                    (let ((_var2296323022_
                                           (reverse _var2296223009_)))
                                      (if (gx#stx-null? _tl2295222993_)
                                          ((lambda (_L23026_ _L23028_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g2304923052_
                                                                _g2305023055_)
                                                         (cons _g2304923052_
                                                               _g2305023055_))
                                                       '()
                                                       _L23026_)
                                                _stx22929_)
                                               (let* ((_g2305823066_
                                                       (lambda (_g2305923062_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2305923062_)))
                                                      (_g2305723160_
                                                       (lambda (_g2305923070_)
                                                         ((lambda (_L23073_)
                                                            (let ()
                                                              (let* ((_g2308623094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2308723090_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2308723090_)))
                             (_g2308523156_
                              (lambda (_g2308723098_)
                                ((lambda (_L23101_)
                                   (let ()
                                     (let* ((_g2311423122_
                                             (lambda (_g2311523118_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2311523118_)))
                                            (_g2311323144_
                                             (lambda (_g2311523126_)
                                               ((lambda (_L23129_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons _L23028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L23129_ '()))
                           (cons _L23073_ '())))
               (gx#stx-source _stx22929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2311523126_)))
                                            (__tmp43083
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons (foldr (lambda (_g2314723150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2314823153_)
                           (cons _g2314723150_ _g2314823153_))
                         '()
                         _L23026_)
                  (cons _L23101_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx22929_))))
                                       (declare (not safe))
                                       (_g2311323144_ __tmp43083))))
                                 _g2308723098_))))
                        (declare (not safe))
                        (_g2308523156_ _body22942_))))
                  _g2305923070_)))
              (__tmp43084
               (let _recur23164_ ((_rest23167_ _clause22940_)
                                  (_rest-targets23169_ _tgt-lst22931_))
                 (let* ((___stx4179741798_ _rest23167_)
                        (_g2317223184_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4179741798_))))
                   (let ((___kont4180041801_
                          (lambda (_L23220_ _L23222_)
                            (let* ((_g2323723249_
                                    (lambda (_g2323823245_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2323823245_)))
                                   (_g2323623280_
                                    (lambda (_g2323823253_)
                                      (if (gx#stx-pair? _g2323823253_)
                                          (let ((_e2324323256_
                                                 (gx#syntax-e _g2323823253_)))
                                            (let ((_hd2324223260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2324323256_)))
                                                  (_tl2324123263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2324323256_))))
                                              ((lambda (_L23266_ _L23268_)
                                                 (let ((__tmp43085
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23164_
                                                           _L23220_
                                                           _L23266_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx22929_
                                                    _L23268_
                                                    _L23222_
                                                    __tmp43085
                                                    _E22943_)))
                                               _tl2324123263_
                                               _hd2324223260_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2323723249_ _g2323823253_))))))
                              (declare (not safe))
                              (_g2323623280_ _rest-targets23169_))))
                         (___kont4180241803_
                          (lambda ()
                            (cons _L23028_
                                  (foldr (lambda (_g2319423197_ _g2319523200_)
                                           (cons _g2319423197_ _g2319523200_))
                                         '()
                                         _L23026_)))))
                     (if (gx#stx-pair? ___stx4179741798_)
                         (let ((_e2317823210_ (gx#syntax-e ___stx4179741798_)))
                           (let ((_tl2317623217_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2317823210_)))
                                 (_hd2317723214_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2317823210_))))
                             (___kont4180041801_
                              _tl2317623217_
                              _hd2317723214_)))
                         (___kont4180241803_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2305723160_ __tmp43084))))
                                           _var2296323022_
                                           _hd2295022980_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2294522969_
                                             _g2294622973_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2295823002_ _target2295522996_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2294522969_ _g2294622973_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2294522969_
                                                     _g2294622973_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2294522969_ _g2294622973_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2294522969_ _g2294622973_)))))
                           (__tmp43087
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause22940_)))))
                      (declare (not safe))
                      (_g2294423288_ __tmp43087)))))
          (let ((__tmp43088
                 (let ((__tmp43089 (gx#stx-length _tgt-lst22931_)))
                   (declare (not safe))
                   (_parse-body22934_ __tmp43089))))
            (declare (not safe))
            (_generate-body22936_ __tmp43088)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx22831_ _tgt22833_ _clauses22834_)
        (letrec ((_reclause22836_
                  (lambda (_clause22839_)
                    (let* ((___stx4181341814_ _clause22839_)
                           (_g2284422859_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4181341814_))))
                      (let ((___kont4181641817_ (lambda () _clause22839_))
                            (___kont4181841819_
                             (lambda (_L22887_ _L22889_)
                               (gx#stx-wrap-source
                                (cons (cons _L22889_ '()) _L22887_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4182041821_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx22831_
                                _clause22839_))))
                        (if (gx#stx-pair? ___stx4181341814_)
                            (let ((_e2284822911_
                                   (gx#syntax-e ___stx4181341814_)))
                              (let ((_tl2284622918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2284822911_)))
                                    (_hd2284722915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2284822911_))))
                                (if (gx#identifier? _hd2284722915_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g43090_|
                                         _hd2284722915_)
                                        (___kont4181641817_)
                                        (___kont4181841819_
                                         _tl2284622918_
                                         _hd2284722915_))
                                    (___kont4181841819_
                                     _tl2284622918_
                                     _hd2284722915_))))
                            (___kont4182041821_)))))))
          (let ((__tmp43092 (cons _tgt22833_ '()))
                (__tmp43091 (gx#stx-map _reclause22836_ _clauses22834_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx22831_
             __tmp43092
             __tmp43091)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30440_)
        (let* ((___stx4184141842_ _stx30440_)
               (_g3044530474_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4184141842_))))
          (let ((___kont4184441845_
                 (lambda (_L30714_)
                   (let* ((_g3072730735_
                           (lambda (_g3072830731_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3072830731_)))
                          (_g3072630788_
                           (lambda (_g3072830739_)
                             ((lambda (_L30742_)
                                (let ()
                                  (let* ((_g3075430762_
                                          (lambda (_g3075530758_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3075530758_)))
                                         (_g3075330784_
                                          (lambda (_g3075530766_)
                                            ((lambda (_L30769_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L30742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L30769_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3075530766_))))
                                    (_g3075330784_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30742_ _L30714_))
                                      (gx#stx-source _stx30440_))))))
                              _g3072830739_))))
                     (_g3072630788_ (gx#genident 'e)))))
                (___kont4184641847_
                 (lambda (_L30609_)
                   (let* ((_g3062230630_
                           (lambda (_g3062330626_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3062330626_)))
                          (_g3062130683_
                           (lambda (_g3062330634_)
                             ((lambda (_L30637_)
                                (let ()
                                  (let* ((_g3064930657_
                                          (lambda (_g3065030653_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3065030653_)))
                                         (_g3064830679_
                                          (lambda (_g3065030661_)
                                            ((lambda (_L30664_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _L30637_
                                                               (cons _L30664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3065030661_))))
                                    (_g3064830679_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30637_ _L30609_))
                                      (gx#stx-source _stx30440_))))))
                              _g3062330634_))))
                     (_g3062130683_ (gx#genident 'args)))))
                (___kont4184841849_
                 (lambda (_L30501_ _L30503_)
                   (let* ((_g3051730525_
                           (lambda (_g3051830521_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3051830521_)))
                          (_g3051630578_
                           (lambda (_g3051830529_)
                             ((lambda (_L30532_)
                                (let ()
                                  (let* ((_g3054430552_
                                          (lambda (_g3054530548_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3054530548_)))
                                         (_g3054330574_
                                          (lambda (_g3054530556_)
                                            ((lambda (_L30559_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L30532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L30503_ '()))
                             '())
                       (cons _L30559_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3054530556_))))
                                    (_g3054330574_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30440_
                                        _L30532_
                                        _L30501_))))))
                              _g3051830529_))))
                     (_g3051630578_ (gx#genident _L30503_))))))
            (let* ((___match4189441895_
                    (lambda (_e3046530481_
                             _hd3046430485_
                             _tl3046330488_
                             _e3046830491_
                             _hd3046730495_
                             _tl3046630498_)
                      (let ((_L30501_ _tl3046630498_)
                            (_L30503_ _hd3046730495_))
                        (if (gx#stx-list? _L30501_)
                            (___kont4184841849_ _L30501_ _L30503_)
                            (let () (declare (not safe)) (_g3044530474_))))))
                   (___match4188241883_
                    (lambda (_e3045730589_
                             _hd3045630593_
                             _tl3045530596_
                             _e3046030599_
                             _hd3045930603_
                             _tl3045830606_)
                      (let ((_L30609_ _tl3045830606_))
                        (if (gx#stx-list? _L30609_)
                            (___kont4184641847_ _L30609_)
                            (___match4189441895_
                             _e3045730589_
                             _hd3045630593_
                             _tl3045530596_
                             _e3046030599_
                             _hd3045930603_
                             _tl3045830606_)))))
                   (___match4186641867_
                    (lambda (_e3045030694_
                             _hd3044930698_
                             _tl3044830701_
                             _e3045330704_
                             _hd3045230708_
                             _tl3045130711_)
                      (let ((_L30714_ _tl3045130711_))
                        (if (gx#stx-list? _L30714_)
                            (___kont4184441845_ _L30714_)
                            (___match4189441895_
                             _e3045030694_
                             _hd3044930698_
                             _tl3044830701_
                             _e3045330704_
                             _hd3045230708_
                             _tl3045130711_))))))
              (if (gx#stx-pair? ___stx4184141842_)
                  (let ((_e3045030694_ (gx#syntax-e ___stx4184141842_)))
                    (let ((_tl3044830701_
                           (let () (declare (not safe)) (##cdr _e3045030694_)))
                          (_hd3044930698_
                           (let ()
                             (declare (not safe))
                             (##car _e3045030694_))))
                      (if (gx#stx-pair? _tl3044830701_)
                          (let ((_e3045330704_ (gx#syntax-e _tl3044830701_)))
                            (let ((_tl3045130711_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3045330704_)))
                                  (_hd3045230708_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3045330704_))))
                              (if (gx#identifier? _hd3045230708_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g43094_|
                                       _hd3045230708_)
                                      (___match4186641867_
                                       _e3045030694_
                                       _hd3044930698_
                                       _tl3044830701_
                                       _e3045330704_
                                       _hd3045230708_
                                       _tl3045130711_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g43093_|
                                           _hd3045230708_)
                                          (___match4188241883_
                                           _e3045030694_
                                           _hd3044930698_
                                           _tl3044830701_
                                           _e3045330704_
                                           _hd3045230708_
                                           _tl3045130711_)
                                          (___match4189441895_
                                           _e3045030694_
                                           _hd3044930698_
                                           _tl3044830701_
                                           _e3045330704_
                                           _hd3045230708_
                                           _tl3045130711_)))
                                  (___match4189441895_
                                   _e3045030694_
                                   _hd3044930698_
                                   _tl3044830701_
                                   _e3045330704_
                                   _hd3045230708_
                                   _tl3045130711_))))
                          (let () (declare (not safe)) (_g3044530474_)))))
                  (let () (declare (not safe)) (_g3044530474_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30796_)
        (let* ((_g3079930823_
                (lambda (_g3080030819_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3080030819_)))
               (_g3079831035_
                (lambda (_g3080030827_)
                  (if (gx#stx-pair? _g3080030827_)
                      (let ((_e3080530830_ (gx#syntax-e _g3080030827_)))
                        (let ((_hd3080430834_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3080530830_)))
                              (_tl3080330837_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3080530830_))))
                          (if (gx#stx-pair? _tl3080330837_)
                              (let ((_e3080830840_
                                     (gx#syntax-e _tl3080330837_)))
                                (let ((_hd3080730844_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3080830840_)))
                                      (_tl3080630847_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3080830840_))))
                                  (if (gx#stx-pair/null? _hd3080730844_)
                                      (let ((_g43095_
                                             (gx#syntax-split-splice
                                              _hd3080730844_
                                              '0)))
                                        (begin
                                          (let ((_g43096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g43095_)
                                                       (##vector-length
                                                        _g43095_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g43096_ 2)))
                                                (error "Context expects 2 values"
                                                       _g43096_)))
                                          (let ((_target3080930850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g43095_ 0)))
                                                (_tl3081130853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g43095_ 1))))
                                            (if (gx#stx-null? _tl3081130853_)
                                                (letrec ((_loop3081230856_
                                                          (lambda (_hd3081030860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3081630863_)
                    (if (gx#stx-pair? _hd3081030860_)
                        (let ((_e3081330866_ (gx#syntax-e _hd3081030860_)))
                          (let ((_lp-hd3081430870_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3081330866_)))
                                (_lp-tl3081530873_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3081330866_))))
                            (_loop3081230856_
                             _lp-tl3081530873_
                             (cons _lp-hd3081430870_ _e3081630863_))))
                        (let ((_e3081730876_ (reverse _e3081630863_)))
                          ((lambda (_L30880_ _L30882_)
                             (if (gx#stx-list? _L30880_)
                                 (let* ((_g3090030917_
                                         (lambda (_g3090130913_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3090130913_)))
                                        (_g3089931023_
                                         (lambda (_g3090130921_)
                                           (if (gx#stx-pair/null?
                                                _g3090130921_)
                                               (let ((_g43097_
                                                      (gx#syntax-split-splice
                                                       _g3090130921_
                                                       '0)))
                                                 (begin
                                                   (let ((_g43098_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g43097_)
                        (##vector-length _g43097_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g43098_ 2)))
                 (error "Context expects 2 values" _g43098_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3090330924_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g43097_
                                                             0)))
                                                         (_tl3090530927_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g43097_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3090530927_)
                                                         (letrec ((_loop3090630930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3090430934_ _$e3091030937_)
                             (if (gx#stx-pair? _hd3090430934_)
                                 (let ((_e3090730940_
                                        (gx#syntax-e _hd3090430934_)))
                                   (let ((_lp-hd3090830944_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3090730940_)))
                                         (_lp-tl3090930947_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3090730940_))))
                                     (_loop3090630930_
                                      _lp-tl3090930947_
                                      (cons _lp-hd3090830944_
                                            _$e3091030937_))))
                                 (let ((_$e3091130950_
                                        (reverse _$e3091030937_)))
                                   ((lambda (_L30954_)
                                      (let ()
                                        (let* ((_g3097030978_
                                                (lambda (_g3097130974_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3097130974_)))
                                               (_g3096931011_
                                                (lambda (_g3097130982_)
                                                  ((lambda (_L30985_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L30882_
                                _L30954_)
                               (foldr (lambda (_g3099931003_
                                               _g3100031006_
                                               _g3100131008_)
                                        (cons (cons _g3100031006_
                                                    (cons _g3099931003_ '()))
                                              _g3100131008_))
                                      '()
                                      _L30882_
                                      _L30954_))
                             (cons _L30985_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3097130982_))))
                                          (_g3096931011_
                                           (let ((__tmp43099
                                                  (foldr (lambda (_g3101431017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3101531020_)
                   (cons _g3101431017_ _g3101531020_))
                 '()
                 _L30954_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx30796_
                                              __tmp43099
                                              _L30880_))))))
                                    _$e3091130950_))))))
                   (_loop3090630930_ _target3090330924_ '()))
                 (_g3090030917_ _g3090130921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3090030917_
                                                _g3090130921_)))))
                                   (_g3089931023_
                                    (gx#gentemps
                                     (foldr (lambda (_g3102631029_
                                                     _g3102731032_)
                                              (cons _g3102631029_
                                                    _g3102731032_))
                                            '()
                                            _L30882_))))
                                 (_g3079930823_ _g3080030827_)))
                           _tl3080630847_
                           _e3081730876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3081230856_
                                                   _target3080930850_
                                                   '()))
                                                (_g3079930823_
                                                 _g3080030827_)))))
                                      (_g3079930823_ _g3080030827_))))
                              (_g3079930823_ _g3080030827_))))
                      (_g3079930823_ _g3080030827_)))))
          (_g3079831035_ _stx30796_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx31041_)
        (let* ((___stx4189741898_ _$stx31041_)
               (_g3104731130_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4189741898_))))
          (let ((___kont4190041901_
                 (lambda (_L31460_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3147631479_ _g3147731482_)
                                        (cons _g3147631479_ _g3147731482_))
                                      '()
                                      _L31460_)))))
                (___kont4190441905_
                 (lambda (_L31368_ _L31370_ _L31371_ _L31372_)
                   (cons _L31372_
                         (cons (cons (cons _L31371_ (cons _L31370_ '())) '())
                               (foldr (lambda (_g3139431397_ _g3139531400_)
                                        (cons _g3139431397_ _g3139531400_))
                                      '()
                                      _L31368_)))))
                (___kont4190841909_
                 (lambda (_L31241_ _L31243_ _L31244_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_g3127031273_ _g3127131276_)
                                        (cons _g3127031273_ _g3127131276_))
                                      '()
                                      _L31243_)
                               (cons (cons (foldr (lambda (_g3126831279_
                                                           _g3126931282_)
                                                    (cons _g3126831279_
                                                          _g3126931282_))
                                                  '()
                                                  _L31244_)
                                           (foldr (lambda (_g3126631285_
                                                           _g3126731288_)
                                                    (cons _g3126631285_
                                                          _g3126731288_))
                                                  '()
                                                  _L31241_))
                                     '()))))))
            (let* ((___match4199041991_
                    (lambda (_e3109531137_
                             _hd3109431141_
                             _tl3109331144_
                             _e3109831147_
                             _hd3109731151_
                             _tl3109631154_
                             ___splice4191041911_
                             _target3109931157_
                             _tl3110131160_)
                      (letrec ((_loop3110231163_
                                (lambda (_hd3110031167_
                                         _expr3110631170_
                                         _hd3110731172_)
                                  (if (gx#stx-pair? _hd3110031167_)
                                      (let ((_e3110331175_
                                             (gx#syntax-e _hd3110031167_)))
                                        (let ((_lp-tl3110531182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3110331175_)))
                                              (_lp-hd3110431179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3110331175_))))
                                          (if (gx#stx-pair? _lp-hd3110431179_)
                                              (let ((_e3111231185_
                                                     (gx#syntax-e
                                                      _lp-hd3110431179_)))
                                                (let ((_tl3111031192_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3111231185_)))
                                                      (_hd3111131189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3111231185_))))
                                                  (if (gx#stx-pair?
                                                       _tl3111031192_)
                                                      (let ((_e3111531195_
                                                             (gx#syntax-e
                                                              _tl3111031192_)))
                                                        (let ((_tl3111331202_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3111531195_)))
                      (_hd3111431199_
                       (let () (declare (not safe)) (##car _e3111531195_))))
                  (if (gx#stx-null? _tl3111331202_)
                      (_loop3110231163_
                       _lp-tl3110531182_
                       (cons _hd3111431199_ _expr3110631170_)
                       (cons _hd3111131189_ _hd3110731172_))
                      (let () (declare (not safe)) (_g3104731130_)))))
              (let () (declare (not safe)) (_g3104731130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3104731130_)))))
                                      (let ((_hd3110931208_
                                             (reverse _hd3110731172_))
                                            (_expr3110831205_
                                             (reverse _expr3110631170_)))
                                        (if (gx#stx-pair/null? _tl3109631154_)
                                            (let ((___splice4191241913_
                                                   (gx#syntax-split-splice
                                                    _tl3109631154_
                                                    '0)))
                                              (let ((_tl3111831214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4191241913_
                                                        '1)))
                                                    (_target3111631211_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4191241913_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3111831214_)
                                                    (letrec ((_loop3111931217_
                                                              (lambda (_hd3111731221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3112331224_)
                        (if (gx#stx-pair? _hd3111731221_)
                            (let ((_e3112031227_ (gx#syntax-e _hd3111731221_)))
                              (let ((_lp-tl3112231234_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3112031227_)))
                                    (_lp-hd3112131231_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3112031227_))))
                                (_loop3111931217_
                                 _lp-tl3112231234_
                                 (cons _lp-hd3112131231_ _body3112331224_))))
                            (let ((_body3112431237_
                                   (reverse _body3112331224_)))
                              (___kont4190841909_
                               _body3112431237_
                               _expr3110831205_
                               _hd3110931208_))))))
              (_loop3111931217_ _target3111631211_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3104731130_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3104731130_))))))))
                        (_loop3110231163_ _target3109931157_ '() '()))))
                   (___match4198241983_
                    (lambda (_e3109531137_
                             _hd3109431141_
                             _tl3109331144_
                             _e3109831147_
                             _hd3109731151_
                             _tl3109631154_)
                      (if (gx#stx-pair/null? _hd3109731151_)
                          (let ((___splice4191041911_
                                 (gx#syntax-split-splice _hd3109731151_ '0)))
                            (let ((_tl3110131160_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4191041911_ '1)))
                                  (_target3109931157_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4191041911_ '0))))
                              (if (gx#stx-null? _tl3110131160_)
                                  (___match4199041991_
                                   _e3109531137_
                                   _hd3109431141_
                                   _tl3109331144_
                                   _e3109831147_
                                   _hd3109731151_
                                   _tl3109631154_
                                   ___splice4191041911_
                                   _target3109931157_
                                   _tl3110131160_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3104731130_)))))
                          (let () (declare (not safe)) (_g3104731130_)))))
                   (___match4197041971_
                    (lambda (_e3107131298_
                             _hd3107031302_
                             _tl3106931305_
                             _e3107431308_
                             _hd3107331312_
                             _tl3107231315_
                             _e3107731318_
                             _hd3107631322_
                             _tl3107531325_
                             _e3108031328_
                             _hd3107931332_
                             _tl3107831335_
                             ___splice4190641907_
                             _target3108131338_
                             _tl3108331341_)
                      (letrec ((_loop3108431344_
                                (lambda (_hd3108231348_ _body3108831351_)
                                  (if (gx#stx-pair? _hd3108231348_)
                                      (let ((_e3108531354_
                                             (gx#syntax-e _hd3108231348_)))
                                        (let ((_lp-tl3108731361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3108531354_)))
                                              (_lp-hd3108631358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3108531354_))))
                                          (_loop3108431344_
                                           _lp-tl3108731361_
                                           (cons _lp-hd3108631358_
                                                 _body3108831351_))))
                                      (let ((_body3108931364_
                                             (reverse _body3108831351_)))
                                        (let ((_L31368_ _body3108931364_)
                                              (_L31370_ _hd3107931332_)
                                              (_L31371_ _hd3107631322_)
                                              (_L31372_ _hd3107031302_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31371_))
                                              (___kont4190441905_
                                               _L31368_
                                               _L31370_
                                               _L31371_
                                               _L31372_)
                                              (___match4198241983_
                                               _e3107131298_
                                               _hd3107031302_
                                               _tl3106931305_
                                               _e3107431308_
                                               _hd3107331312_
                                               _tl3107231315_))))))))
                        (_loop3108431344_ _target3108131338_ '()))))
                   (___match4193641937_
                    (lambda (_e3105231410_
                             _hd3105131414_
                             _tl3105031417_
                             _e3105531420_
                             _hd3105431424_
                             _tl3105331427_
                             ___splice4190241903_
                             _target3105631430_
                             _tl3105831433_)
                      (letrec ((_loop3105931436_
                                (lambda (_hd3105731440_ _body3106331443_)
                                  (if (gx#stx-pair? _hd3105731440_)
                                      (let ((_e3106031446_
                                             (gx#syntax-e _hd3105731440_)))
                                        (let ((_lp-tl3106231453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3106031446_)))
                                              (_lp-hd3106131450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3106031446_))))
                                          (_loop3105931436_
                                           _lp-tl3106231453_
                                           (cons _lp-hd3106131450_
                                                 _body3106331443_))))
                                      (let ((_body3106431456_
                                             (reverse _body3106331443_)))
                                        (___kont4190041901_
                                         _body3106431456_))))))
                        (_loop3105931436_ _target3105631430_ '())))))
              (if (gx#stx-pair? ___stx4189741898_)
                  (let ((_e3105231410_ (gx#syntax-e ___stx4189741898_)))
                    (let ((_tl3105031417_
                           (let () (declare (not safe)) (##cdr _e3105231410_)))
                          (_hd3105131414_
                           (let ()
                             (declare (not safe))
                             (##car _e3105231410_))))
                      (if (gx#stx-pair? _tl3105031417_)
                          (let ((_e3105531420_ (gx#syntax-e _tl3105031417_)))
                            (let ((_tl3105331427_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3105531420_)))
                                  (_hd3105431424_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3105531420_))))
                              (if (gx#stx-null? _hd3105431424_)
                                  (if (gx#stx-pair/null? _tl3105331427_)
                                      (let ((___splice4190241903_
                                             (gx#syntax-split-splice
                                              _tl3105331427_
                                              '0)))
                                        (let ((_tl3105831433_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4190241903_
                                                  '1)))
                                              (_target3105631430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4190241903_
                                                  '0))))
                                          (if (gx#stx-null? _tl3105831433_)
                                              (___match4193641937_
                                               _e3105231410_
                                               _hd3105131414_
                                               _tl3105031417_
                                               _e3105531420_
                                               _hd3105431424_
                                               _tl3105331427_
                                               ___splice4190241903_
                                               _target3105631430_
                                               _tl3105831433_)
                                              (if (gx#stx-pair/null?
                                                   _hd3105431424_)
                                                  (let ((___splice4191041911_
                                                         (gx#syntax-split-splice
                                                          _hd3105431424_
                                                          '0)))
                                                    (let ((_tl3110131160_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4191041911_
                                                              '1)))
                                                          (_target3109931157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4191041911_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3110131160_)
                                                          (___match4199041991_
                                                           _e3105231410_
                                                           _hd3105131414_
                                                           _tl3105031417_
                                                           _e3105531420_
                                                           _hd3105431424_
                                                           _tl3105331427_
                                                           ___splice4191041911_
                                                           _target3109931157_
                                                           _tl3110131160_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3104731130_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3104731130_))))))
                                      (if (gx#stx-pair/null? _hd3105431424_)
                                          (let ((___splice4191041911_
                                                 (gx#syntax-split-splice
                                                  _hd3105431424_
                                                  '0)))
                                            (let ((_tl3110131160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4191041911_
                                                      '1)))
                                                  (_target3109931157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4191041911_
                                                      '0))))
                                              (if (gx#stx-null? _tl3110131160_)
                                                  (___match4199041991_
                                                   _e3105231410_
                                                   _hd3105131414_
                                                   _tl3105031417_
                                                   _e3105531420_
                                                   _hd3105431424_
                                                   _tl3105331427_
                                                   ___splice4191041911_
                                                   _target3109931157_
                                                   _tl3110131160_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3104731130_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3104731130_))))
                                  (if (gx#stx-pair? _hd3105431424_)
                                      (let ((_e3107731318_
                                             (gx#syntax-e _hd3105431424_)))
                                        (let ((_tl3107531325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3107731318_)))
                                              (_hd3107631322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3107731318_))))
                                          (if (gx#stx-pair? _tl3107531325_)
                                              (let ((_e3108031328_
                                                     (gx#syntax-e
                                                      _tl3107531325_)))
                                                (let ((_tl3107831335_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3108031328_)))
                                                      (_hd3107931332_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3108031328_))))
                                                  (if (gx#stx-null?
                                                       _tl3107831335_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3105331427_)
                                                          (let ((___splice4190641907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3105331427_ '0)))
                    (let ((_tl3108331341_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4190641907_ '1)))
                          (_target3108131338_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4190641907_ '0))))
                      (if (gx#stx-null? _tl3108331341_)
                          (___match4197041971_
                           _e3105231410_
                           _hd3105131414_
                           _tl3105031417_
                           _e3105531420_
                           _hd3105431424_
                           _tl3105331427_
                           _e3107731318_
                           _hd3107631322_
                           _tl3107531325_
                           _e3108031328_
                           _hd3107931332_
                           _tl3107831335_
                           ___splice4190641907_
                           _target3108131338_
                           _tl3108331341_)
                          (if (gx#stx-pair/null? _hd3105431424_)
                              (let ((___splice4191041911_
                                     (gx#syntax-split-splice
                                      _hd3105431424_
                                      '0)))
                                (let ((_tl3110131160_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4191041911_
                                          '1)))
                                      (_target3109931157_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4191041911_
                                          '0))))
                                  (if (gx#stx-null? _tl3110131160_)
                                      (___match4199041991_
                                       _e3105231410_
                                       _hd3105131414_
                                       _tl3105031417_
                                       _e3105531420_
                                       _hd3105431424_
                                       _tl3105331427_
                                       ___splice4191041911_
                                       _target3109931157_
                                       _tl3110131160_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3104731130_)))))
                              (let () (declare (not safe)) (_g3104731130_))))))
                  (if (gx#stx-pair/null? _hd3105431424_)
                      (let ((___splice4191041911_
                             (gx#syntax-split-splice _hd3105431424_ '0)))
                        (let ((_tl3110131160_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4191041911_ '1)))
                              (_target3109931157_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4191041911_ '0))))
                          (if (gx#stx-null? _tl3110131160_)
                              (___match4199041991_
                               _e3105231410_
                               _hd3105131414_
                               _tl3105031417_
                               _e3105531420_
                               _hd3105431424_
                               _tl3105331427_
                               ___splice4191041911_
                               _target3109931157_
                               _tl3110131160_)
                              (let () (declare (not safe)) (_g3104731130_)))))
                      (let () (declare (not safe)) (_g3104731130_))))
              (if (gx#stx-pair/null? _hd3105431424_)
                  (let ((___splice4191041911_
                         (gx#syntax-split-splice _hd3105431424_ '0)))
                    (let ((_tl3110131160_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4191041911_ '1)))
                          (_target3109931157_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4191041911_ '0))))
                      (if (gx#stx-null? _tl3110131160_)
                          (___match4199041991_
                           _e3105231410_
                           _hd3105131414_
                           _tl3105031417_
                           _e3105531420_
                           _hd3105431424_
                           _tl3105331427_
                           ___splice4191041911_
                           _target3109931157_
                           _tl3110131160_)
                          (let () (declare (not safe)) (_g3104731130_)))))
                  (let () (declare (not safe)) (_g3104731130_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3105431424_)
                                                  (let ((___splice4191041911_
                                                         (gx#syntax-split-splice
                                                          _hd3105431424_
                                                          '0)))
                                                    (let ((_tl3110131160_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4191041911_
                                                              '1)))
                                                          (_target3109931157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4191041911_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3110131160_)
                                                          (___match4199041991_
                                                           _e3105231410_
                                                           _hd3105131414_
                                                           _tl3105031417_
                                                           _e3105531420_
                                                           _hd3105431424_
                                                           _tl3105331427_
                                                           ___splice4191041911_
                                                           _target3109931157_
                                                           _tl3110131160_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3104731130_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3104731130_))))))
                                      (if (gx#stx-pair/null? _hd3105431424_)
                                          (let ((___splice4191041911_
                                                 (gx#syntax-split-splice
                                                  _hd3105431424_
                                                  '0)))
                                            (let ((_tl3110131160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4191041911_
                                                      '1)))
                                                  (_target3109931157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4191041911_
                                                      '0))))
                                              (if (gx#stx-null? _tl3110131160_)
                                                  (___match4199041991_
                                                   _e3105231410_
                                                   _hd3105131414_
                                                   _tl3105031417_
                                                   _e3105531420_
                                                   _hd3105431424_
                                                   _tl3105331427_
                                                   ___splice4191041911_
                                                   _target3109931157_
                                                   _tl3110131160_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3104731130_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3104731130_)))))))
                          (let () (declare (not safe)) (_g3104731130_)))))
                  (let () (declare (not safe)) (_g3104731130_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31493_)
        (let* ((___stx4199341994_ _$stx31493_)
               (_g3149831550_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4199341994_))))
          (let ((___kont4199641997_
                 (lambda (_L31720_ _L31722_ _L31723_ _L31724_ _L31725_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _L31724_ (cons _L31723_ '())) '())
                               (cons (cons _L31725_
                                           (cons _L31722_
                                                 (foldr (lambda (_g3175031753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3175131756_)
                  (cons _g3175031753_ _g3175131756_))
                '()
                _L31720_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4200042001_
                 (lambda (_L31607_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3162431627_ _g3162531630_)
                                        (cons _g3162431627_ _g3162531630_))
                                      '()
                                      _L31607_))))))
            (let* ((___match4206642067_
                    (lambda (_e3153231557_
                             _hd3153131561_
                             _tl3153031564_
                             _e3153531567_
                             _hd3153431571_
                             _tl3153331574_
                             ___splice4200242003_
                             _target3153631577_
                             _tl3153831580_)
                      (letrec ((_loop3153931583_
                                (lambda (_hd3153731587_ _body3154331590_)
                                  (if (gx#stx-pair? _hd3153731587_)
                                      (let ((_e3154031593_
                                             (gx#syntax-e _hd3153731587_)))
                                        (let ((_lp-tl3154231600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3154031593_)))
                                              (_lp-hd3154131597_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3154031593_))))
                                          (_loop3153931583_
                                           _lp-tl3154231600_
                                           (cons _lp-hd3154131597_
                                                 _body3154331590_))))
                                      (let ((_body3154431603_
                                             (reverse _body3154331590_)))
                                        (___kont4200042001_
                                         _body3154431603_))))))
                        (_loop3153931583_ _target3153631577_ '()))))
                   (___match4204442045_
                    (lambda (_e3150731640_
                             _hd3150631644_
                             _tl3150531647_
                             _e3151031650_
                             _hd3150931654_
                             _tl3150831657_
                             _e3151331660_
                             _hd3151231664_
                             _tl3151131667_
                             _e3151631670_
                             _hd3151531674_
                             _tl3151431677_
                             _e3151931680_
                             _hd3151831684_
                             _tl3151731687_
                             ___splice4199841999_
                             _target3152031690_
                             _tl3152231693_)
                      (letrec ((_loop3152331696_
                                (lambda (_hd3152131700_ _body3152731703_)
                                  (if (gx#stx-pair? _hd3152131700_)
                                      (let ((_e3152431706_
                                             (gx#syntax-e _hd3152131700_)))
                                        (let ((_lp-tl3152631713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3152431706_)))
                                              (_lp-hd3152531710_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3152431706_))))
                                          (_loop3152331696_
                                           _lp-tl3152631713_
                                           (cons _lp-hd3152531710_
                                                 _body3152731703_))))
                                      (let ((_body3152831716_
                                             (reverse _body3152731703_)))
                                        (___kont4199641997_
                                         _body3152831716_
                                         _tl3151131667_
                                         _hd3151831684_
                                         _hd3151531674_
                                         _hd3150631644_))))))
                        (_loop3152331696_ _target3152031690_ '())))))
              (if (gx#stx-pair? ___stx4199341994_)
                  (let ((_e3150731640_ (gx#syntax-e ___stx4199341994_)))
                    (let ((_tl3150531647_
                           (let () (declare (not safe)) (##cdr _e3150731640_)))
                          (_hd3150631644_
                           (let ()
                             (declare (not safe))
                             (##car _e3150731640_))))
                      (if (gx#stx-pair? _tl3150531647_)
                          (let ((_e3151031650_ (gx#syntax-e _tl3150531647_)))
                            (let ((_tl3150831657_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3151031650_)))
                                  (_hd3150931654_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3151031650_))))
                              (if (gx#stx-pair? _hd3150931654_)
                                  (let ((_e3151331660_
                                         (gx#syntax-e _hd3150931654_)))
                                    (let ((_tl3151131667_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3151331660_)))
                                          (_hd3151231664_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3151331660_))))
                                      (if (gx#stx-pair? _hd3151231664_)
                                          (let ((_e3151631670_
                                                 (gx#syntax-e _hd3151231664_)))
                                            (let ((_tl3151431677_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3151631670_)))
                                                  (_hd3151531674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3151631670_))))
                                              (if (gx#stx-pair? _tl3151431677_)
                                                  (let ((_e3151931680_
                                                         (gx#syntax-e
                                                          _tl3151431677_)))
                                                    (let ((_tl3151731687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3151931680_)))
                                                          (_hd3151831684_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3151931680_))))
                                                      (if (gx#stx-null?
                                                           _tl3151731687_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3150831657_)
                                                              (let ((___splice4199841999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3150831657_ '0)))
                        (let ((_tl3152231693_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4199841999_ '1)))
                              (_target3152031690_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4199841999_ '0))))
                          (if (gx#stx-null? _tl3152231693_)
                              (___match4204442045_
                               _e3150731640_
                               _hd3150631644_
                               _tl3150531647_
                               _e3151031650_
                               _hd3150931654_
                               _tl3150831657_
                               _e3151331660_
                               _hd3151231664_
                               _tl3151131667_
                               _e3151631670_
                               _hd3151531674_
                               _tl3151431677_
                               _e3151931680_
                               _hd3151831684_
                               _tl3151731687_
                               ___splice4199841999_
                               _target3152031690_
                               _tl3152231693_)
                              (let () (declare (not safe)) (_g3149831550_)))))
                      (let () (declare (not safe)) (_g3149831550_)))
                  (let () (declare (not safe)) (_g3149831550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3149831550_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3149831550_)))))
                                  (if (gx#stx-null? _hd3150931654_)
                                      (if (gx#stx-pair/null? _tl3150831657_)
                                          (let ((___splice4200242003_
                                                 (gx#syntax-split-splice
                                                  _tl3150831657_
                                                  '0)))
                                            (let ((_tl3153831580_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4200242003_
                                                      '1)))
                                                  (_target3153631577_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4200242003_
                                                      '0))))
                                              (if (gx#stx-null? _tl3153831580_)
                                                  (___match4206642067_
                                                   _e3150731640_
                                                   _hd3150631644_
                                                   _tl3150531647_
                                                   _e3151031650_
                                                   _hd3150931654_
                                                   _tl3150831657_
                                                   ___splice4200242003_
                                                   _target3153631577_
                                                   _tl3153831580_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3149831550_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3149831550_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3149831550_))))))
                          (let () (declare (not safe)) (_g3149831550_)))))
                  (let () (declare (not safe)) (_g3149831550_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31765_)
        (let* ((___stx4206942070_ _$stx31765_)
               (_g3177631922_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4206942070_))))
          (let ((___kont4207242073_
                 (lambda (_L32526_ _L32528_ _L32529_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_g3255032553_ _g3255132556_)
                                  (cons (cons _L32529_
                                              (cons _g3255032553_
                                                    (cons _L32526_ '())))
                                        _g3255132556_))
                                '()
                                _L32528_))))
                (___kont4207642077_
                 (lambda (_L32416_ _L32418_ _L32419_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_g3244032443_ _g3244132446_)
                                  (cons (cons _L32419_
                                              (cons _g3244032443_
                                                    (cons _L32416_ '())))
                                        _g3244132446_))
                                '()
                                _L32418_))))
                (___kont4208042081_
                 (lambda (_L32316_ _L32318_ _L32319_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _L32319_
                                     (cons _L32318_ (cons _L32316_ '())))
                               '()))))
                (___kont4208242083_
                 (lambda (_L32242_ _L32244_)
                   (cons _L32244_ (cons _L32242_ '()))))
                (___kont4208442085_
                 (lambda (_L32190_ _L32192_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _L32192_
                                           (cons _L32190_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (___kont4208642087_
                 (lambda (_L32142_ _L32144_ _L32145_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _L32145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L32144_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L32142_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4208842089_
                 (lambda (_L32073_ _L32075_ _L32076_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L32076_
                                                       (cons _L32075_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L32073_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4209042091_
                 (lambda (_L31993_ _L31995_ _L31996_ _L31997_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31997_
                                                       (cons _L31996_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31993_
                                                             (cons (cons _L31995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match4224242243_
                    (lambda (_e3186832102_
                             _hd3186732106_
                             _tl3186632109_
                             _e3187132112_
                             _hd3187032116_
                             _tl3186932119_
                             _e3187432122_
                             _hd3187332126_
                             _tl3187232129_)
                      (if (gx#identifier? _hd3187332126_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g43101_|
                               _hd3187332126_)
                              (if (gx#stx-pair? _tl3187232129_)
                                  (let ((_e3187732132_
                                         (gx#syntax-e _tl3187232129_)))
                                    (let ((_tl3187532139_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3187732132_)))
                                          (_hd3187632136_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3187732132_))))
                                      (if (gx#stx-null? _tl3187532139_)
                                          (___kont4208642087_
                                           _hd3187632136_
                                           _hd3187032116_
                                           _hd3186732106_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3177631922_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3177631922_)))
                              (let () (declare (not safe)) (_g3177631922_)))
                          (if (gx#stx-datum? _hd3187332126_)
                              (let ((_e3189032059_ (gx#stx-e _hd3187332126_)))
                                (if (equal? _e3189032059_ '::)
                                    (if (gx#stx-pair? _tl3187232129_)
                                        (let ((_e3189332063_
                                               (gx#syntax-e _tl3187232129_)))
                                          (let ((_tl3189132070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3189332063_)))
                                                (_hd3189232067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3189332063_))))
                                            (if (gx#stx-null? _tl3189132070_)
                                                (___kont4208842089_
                                                 _hd3189232067_
                                                 _hd3187032116_
                                                 _hd3186732106_)
                                                (if (gx#stx-pair?
                                                     _tl3189132070_)
                                                    (let ((_e3191331973_
                                                           (gx#syntax-e
                                                            _tl3189132070_)))
                                                      (let ((_tl3191131980_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3191331973_)))
                    (_hd3191231977_
                     (let () (declare (not safe)) (##car _e3191331973_))))
                (if (gx#identifier? _hd3191231977_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g43100_|
                         _hd3191231977_)
                        (if (gx#stx-pair? _tl3191131980_)
                            (let ((_e3191631983_ (gx#syntax-e _tl3191131980_)))
                              (let ((_tl3191431990_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3191631983_)))
                                    (_hd3191531987_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3191631983_))))
                                (if (gx#stx-null? _tl3191431990_)
                                    (___kont4209042091_
                                     _hd3191531987_
                                     _hd3189232067_
                                     _hd3187032116_
                                     _hd3186732106_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_)))))
                            (let () (declare (not safe)) (_g3177631922_)))
                        (let () (declare (not safe)) (_g3177631922_)))
                    (let () (declare (not safe)) (_g3177631922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3177631922_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3177631922_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_))))
                              (let () (declare (not safe)) (_g3177631922_))))))
                   (___match4222242223_
                    (lambda (_e3185932170_
                             _hd3185832174_
                             _tl3185732177_
                             _e3186232180_
                             _hd3186132184_
                             _tl3186032187_)
                      (if (gx#stx-null? _tl3186032187_)
                          (___kont4208442085_ _hd3186132184_ _hd3185832174_)
                          (if (gx#stx-pair? _tl3186032187_)
                              (let ((_e3187432122_
                                     (gx#syntax-e _tl3186032187_)))
                                (let ((_tl3187232129_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3187432122_)))
                                      (_hd3187332126_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3187432122_))))
                                  (if (gx#identifier? _hd3187332126_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g43101_|
                                           _hd3187332126_)
                                          (if (gx#stx-pair? _tl3187232129_)
                                              (let ((_e3187732132_
                                                     (gx#syntax-e
                                                      _tl3187232129_)))
                                                (let ((_tl3187532139_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3187732132_)))
                                                      (_hd3187632136_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3187732132_))))
                                                  (if (gx#stx-null?
                                                       _tl3187532139_)
                                                      (___kont4208642087_
                                                       _hd3187632136_
                                                       _hd3186132184_
                                                       _hd3185832174_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3177631922_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3177631922_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3177631922_)))
                                      (if (gx#stx-datum? _hd3187332126_)
                                          (let ((_e3189032059_
                                                 (gx#stx-e _hd3187332126_)))
                                            (if (equal? _e3189032059_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3187232129_)
                                                    (let ((_e3189332063_
                                                           (gx#syntax-e
                                                            _tl3187232129_)))
                                                      (let ((_tl3189132070_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3189332063_)))
                    (_hd3189232067_
                     (let () (declare (not safe)) (##car _e3189332063_))))
                (if (gx#stx-null? _tl3189132070_)
                    (___kont4208842089_
                     _hd3189232067_
                     _hd3186132184_
                     _hd3185832174_)
                    (if (gx#stx-pair? _tl3189132070_)
                        (let ((_e3191331973_ (gx#syntax-e _tl3189132070_)))
                          (let ((_tl3191131980_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3191331973_)))
                                (_hd3191231977_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3191331973_))))
                            (if (gx#identifier? _hd3191231977_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g43100_|
                                     _hd3191231977_)
                                    (if (gx#stx-pair? _tl3191131980_)
                                        (let ((_e3191631983_
                                               (gx#syntax-e _tl3191131980_)))
                                          (let ((_tl3191431990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3191631983_)))
                                                (_hd3191531987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3191631983_))))
                                            (if (gx#stx-null? _tl3191431990_)
                                                (___kont4209042091_
                                                 _hd3191531987_
                                                 _hd3189232067_
                                                 _hd3186132184_
                                                 _hd3185832174_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3177631922_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3177631922_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3177631922_)))))
                        (let () (declare (not safe)) (_g3177631922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3177631922_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3177631922_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3177631922_))))))
                              (let () (declare (not safe)) (_g3177631922_))))))
                   (___match4215242153_
                    (lambda (_e3180732346_
                             _hd3180632350_
                             _tl3180532353_
                             _e3181032356_
                             _hd3180932360_
                             _tl3180832363_
                             _e3181332366_
                             _hd3181232370_
                             _tl3181132373_
                             ___splice4207842079_
                             _target3181432376_
                             _tl3181632379_)
                      (letrec ((_loop3181732382_
                                (lambda (_hd3181532386_ _pred3182132389_)
                                  (if (gx#stx-pair? _hd3181532386_)
                                      (let ((_e3181832392_
                                             (gx#syntax-e _hd3181532386_)))
                                        (let ((_lp-tl3182032399_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3181832392_)))
                                              (_lp-hd3181932396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3181832392_))))
                                          (_loop3181732382_
                                           _lp-tl3182032399_
                                           (cons _lp-hd3181932396_
                                                 _pred3182132389_))))
                                      (let ((_pred3182232402_
                                             (reverse _pred3182132389_)))
                                        (if (gx#stx-pair? _tl3180832363_)
                                            (let ((_e3182532406_
                                                   (gx#syntax-e
                                                    _tl3180832363_)))
                                              (let ((_tl3182332413_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3182532406_)))
                                                    (_hd3182432410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3182532406_))))
                                                (if (gx#stx-null?
                                                     _tl3182332413_)
                                                    (___kont4207642077_
                                                     _hd3182432410_
                                                     _pred3182232402_
                                                     _hd3180632350_)
                                                    (___match4224242243_
                                                     _e3180732346_
                                                     _hd3180632350_
                                                     _tl3180532353_
                                                     _e3181032356_
                                                     _hd3180932360_
                                                     _tl3180832363_
                                                     _e3182532406_
                                                     _hd3182432410_
                                                     _tl3182332413_))))
                                            (___match4222242223_
                                             _e3180732346_
                                             _hd3180632350_
                                             _tl3180532353_
                                             _e3181032356_
                                             _hd3180932360_
                                             _tl3180832363_)))))))
                        (_loop3181732382_ _target3181432376_ '()))))
                   (___match4212242123_
                    (lambda (_e3178332456_
                             _hd3178232460_
                             _tl3178132463_
                             _e3178632466_
                             _hd3178532470_
                             _tl3178432473_
                             _e3178932476_
                             _hd3178832480_
                             _tl3178732483_
                             ___splice4207442075_
                             _target3179032486_
                             _tl3179232489_)
                      (letrec ((_loop3179332492_
                                (lambda (_hd3179132496_ _pred3179732499_)
                                  (if (gx#stx-pair? _hd3179132496_)
                                      (let ((_e3179432502_
                                             (gx#syntax-e _hd3179132496_)))
                                        (let ((_lp-tl3179632509_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3179432502_)))
                                              (_lp-hd3179532506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3179432502_))))
                                          (_loop3179332492_
                                           _lp-tl3179632509_
                                           (cons _lp-hd3179532506_
                                                 _pred3179732499_))))
                                      (let ((_pred3179832512_
                                             (reverse _pred3179732499_)))
                                        (if (gx#stx-pair? _tl3178432473_)
                                            (let ((_e3180132516_
                                                   (gx#syntax-e
                                                    _tl3178432473_)))
                                              (let ((_tl3179932523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3180132516_)))
                                                    (_hd3180032520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3180132516_))))
                                                (if (gx#stx-null?
                                                     _tl3179932523_)
                                                    (___kont4207242073_
                                                     _hd3180032520_
                                                     _pred3179832512_
                                                     _hd3178232460_)
                                                    (___match4224242243_
                                                     _e3178332456_
                                                     _hd3178232460_
                                                     _tl3178132463_
                                                     _e3178632466_
                                                     _hd3178532470_
                                                     _tl3178432473_
                                                     _e3180132516_
                                                     _hd3180032520_
                                                     _tl3179932523_))))
                                            (___match4222242223_
                                             _e3178332456_
                                             _hd3178232460_
                                             _tl3178132463_
                                             _e3178632466_
                                             _hd3178532470_
                                             _tl3178432473_)))))))
                        (_loop3179332492_ _target3179032486_ '())))))
              (if (gx#stx-pair? ___stx4206942070_)
                  (let ((_e3178332456_ (gx#syntax-e ___stx4206942070_)))
                    (let ((_tl3178132463_
                           (let () (declare (not safe)) (##cdr _e3178332456_)))
                          (_hd3178232460_
                           (let ()
                             (declare (not safe))
                             (##car _e3178332456_))))
                      (if (gx#stx-pair? _tl3178132463_)
                          (let ((_e3178632466_ (gx#syntax-e _tl3178132463_)))
                            (let ((_tl3178432473_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3178632466_)))
                                  (_hd3178532470_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3178632466_))))
                              (if (gx#stx-pair? _hd3178532470_)
                                  (let ((_e3178932476_
                                         (gx#syntax-e _hd3178532470_)))
                                    (let ((_tl3178732483_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3178932476_)))
                                          (_hd3178832480_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3178932476_))))
                                      (if (gx#identifier? _hd3178832480_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g43104_|
                                               _hd3178832480_)
                                              (if (gx#stx-pair/null?
                                                   _tl3178732483_)
                                                  (let ((___splice4207442075_
                                                         (gx#syntax-split-splice
                                                          _tl3178732483_
                                                          '0)))
                                                    (let ((_tl3179232489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4207442075_
                                                              '1)))
                                                          (_target3179032486_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4207442075_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3179232489_)
                                                          (___match4212242123_
                                                           _e3178332456_
                                                           _hd3178232460_
                                                           _tl3178132463_
                                                           _e3178632466_
                                                           _hd3178532470_
                                                           _tl3178432473_
                                                           _e3178932476_
                                                           _hd3178832480_
                                                           _tl3178732483_
                                                           ___splice4207442075_
                                                           _target3179032486_
                                                           _tl3179232489_)
                                                          (if (gx#stx-pair?
                                                               _tl3178432473_)
                                                              (let ((_e3185432232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3178432473_)))
                        (let ((_tl3185232239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3185432232_)))
                              (_hd3185332236_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3185432232_))))
                          (if (gx#stx-null? _tl3185232239_)
                              (___kont4208242083_
                               _hd3185332236_
                               _hd3178532470_)
                              (if (gx#identifier? _hd3185332236_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g43101_|
                                       _hd3185332236_)
                                      (if (gx#stx-pair? _tl3185232239_)
                                          (let ((_e3187732132_
                                                 (gx#syntax-e _tl3185232239_)))
                                            (let ((_tl3187532139_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3187732132_)))
                                                  (_hd3187632136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3187732132_))))
                                              (if (gx#stx-null? _tl3187532139_)
                                                  (___kont4208642087_
                                                   _hd3187632136_
                                                   _hd3178532470_
                                                   _hd3178232460_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3177631922_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3177631922_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3177631922_)))
                                  (if (gx#stx-datum? _hd3185332236_)
                                      (let ((_e3189032059_
                                             (gx#stx-e _hd3185332236_)))
                                        (if (equal? _e3189032059_ '::)
                                            (if (gx#stx-pair? _tl3185232239_)
                                                (let ((_e3189332063_
                                                       (gx#syntax-e
                                                        _tl3185232239_)))
                                                  (let ((_tl3189132070_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3189332063_)))
                                                        (_hd3189232067_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3189332063_))))
                                                    (if (gx#stx-null?
                                                         _tl3189132070_)
                                                        (___kont4208842089_
                                                         _hd3189232067_
                                                         _hd3178532470_
                                                         _hd3178232460_)
                                                        (if (gx#stx-pair?
                                                             _tl3189132070_)
                                                            (let ((_e3191331973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3189132070_)))
                      (let ((_tl3191131980_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3191331973_)))
                            (_hd3191231977_
                             (let ()
                               (declare (not safe))
                               (##car _e3191331973_))))
                        (if (gx#identifier? _hd3191231977_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g43100_|
                                 _hd3191231977_)
                                (if (gx#stx-pair? _tl3191131980_)
                                    (let ((_e3191631983_
                                           (gx#syntax-e _tl3191131980_)))
                                      (let ((_tl3191431990_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3191631983_)))
                                            (_hd3191531987_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3191631983_))))
                                        (if (gx#stx-null? _tl3191431990_)
                                            (___kont4209042091_
                                             _hd3191531987_
                                             _hd3189232067_
                                             _hd3178532470_
                                             _hd3178232460_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3177631922_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_)))
                                (let () (declare (not safe)) (_g3177631922_)))
                            (let () (declare (not safe)) (_g3177631922_)))))
                    (let () (declare (not safe)) (_g3177631922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3177631922_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3177631922_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3177631922_)))))))
                      (if (gx#stx-null? _tl3178432473_)
                          (___kont4208442085_ _hd3178532470_ _hd3178232460_)
                          (let () (declare (not safe)) (_g3177631922_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3178432473_)
                                                      (let ((_e3185432232_
                                                             (gx#syntax-e
                                                              _tl3178432473_)))
                                                        (let ((_tl3185232239_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3185432232_)))
                      (_hd3185332236_
                       (let () (declare (not safe)) (##car _e3185432232_))))
                  (if (gx#stx-null? _tl3185232239_)
                      (___kont4208242083_ _hd3185332236_ _hd3178532470_)
                      (if (gx#identifier? _hd3185332236_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g43101_|
                               _hd3185332236_)
                              (if (gx#stx-pair? _tl3185232239_)
                                  (let ((_e3187732132_
                                         (gx#syntax-e _tl3185232239_)))
                                    (let ((_tl3187532139_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3187732132_)))
                                          (_hd3187632136_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3187732132_))))
                                      (if (gx#stx-null? _tl3187532139_)
                                          (___kont4208642087_
                                           _hd3187632136_
                                           _hd3178532470_
                                           _hd3178232460_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3177631922_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3177631922_)))
                              (let () (declare (not safe)) (_g3177631922_)))
                          (if (gx#stx-datum? _hd3185332236_)
                              (let ((_e3189032059_ (gx#stx-e _hd3185332236_)))
                                (if (equal? _e3189032059_ '::)
                                    (if (gx#stx-pair? _tl3185232239_)
                                        (let ((_e3189332063_
                                               (gx#syntax-e _tl3185232239_)))
                                          (let ((_tl3189132070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3189332063_)))
                                                (_hd3189232067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3189332063_))))
                                            (if (gx#stx-null? _tl3189132070_)
                                                (___kont4208842089_
                                                 _hd3189232067_
                                                 _hd3178532470_
                                                 _hd3178232460_)
                                                (if (gx#stx-pair?
                                                     _tl3189132070_)
                                                    (let ((_e3191331973_
                                                           (gx#syntax-e
                                                            _tl3189132070_)))
                                                      (let ((_tl3191131980_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3191331973_)))
                    (_hd3191231977_
                     (let () (declare (not safe)) (##car _e3191331973_))))
                (if (gx#identifier? _hd3191231977_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g43100_|
                         _hd3191231977_)
                        (if (gx#stx-pair? _tl3191131980_)
                            (let ((_e3191631983_ (gx#syntax-e _tl3191131980_)))
                              (let ((_tl3191431990_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3191631983_)))
                                    (_hd3191531987_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3191631983_))))
                                (if (gx#stx-null? _tl3191431990_)
                                    (___kont4209042091_
                                     _hd3191531987_
                                     _hd3189232067_
                                     _hd3178532470_
                                     _hd3178232460_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_)))))
                            (let () (declare (not safe)) (_g3177631922_)))
                        (let () (declare (not safe)) (_g3177631922_)))
                    (let () (declare (not safe)) (_g3177631922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3177631922_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3177631922_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_))))
                              (let ()
                                (declare (not safe))
                                (_g3177631922_)))))))
              (if (gx#stx-null? _tl3178432473_)
                  (___kont4208442085_ _hd3178532470_ _hd3178232460_)
                  (let () (declare (not safe)) (_g3177631922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g43103_|
                                                   _hd3178832480_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3178732483_)
                                                      (let ((___splice4207842079_
                                                             (gx#syntax-split-splice
                                                              _tl3178732483_
                                                              '0)))
                                                        (let ((_tl3181632379_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4207842079_ '1)))
                      (_target3181432376_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4207842079_ '0))))
                  (if (gx#stx-null? _tl3181632379_)
                      (___match4215242153_
                       _e3178332456_
                       _hd3178232460_
                       _tl3178132463_
                       _e3178632466_
                       _hd3178532470_
                       _tl3178432473_
                       _e3178932476_
                       _hd3178832480_
                       _tl3178732483_
                       ___splice4207842079_
                       _target3181432376_
                       _tl3181632379_)
                      (if (gx#stx-pair? _tl3178432473_)
                          (let ((_e3185432232_ (gx#syntax-e _tl3178432473_)))
                            (let ((_tl3185232239_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3185432232_)))
                                  (_hd3185332236_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3185432232_))))
                              (if (gx#stx-null? _tl3185232239_)
                                  (___kont4208242083_
                                   _hd3185332236_
                                   _hd3178532470_)
                                  (if (gx#identifier? _hd3185332236_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g43101_|
                                           _hd3185332236_)
                                          (if (gx#stx-pair? _tl3185232239_)
                                              (let ((_e3187732132_
                                                     (gx#syntax-e
                                                      _tl3185232239_)))
                                                (let ((_tl3187532139_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3187732132_)))
                                                      (_hd3187632136_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3187732132_))))
                                                  (if (gx#stx-null?
                                                       _tl3187532139_)
                                                      (___kont4208642087_
                                                       _hd3187632136_
                                                       _hd3178532470_
                                                       _hd3178232460_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3177631922_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3177631922_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3177631922_)))
                                      (if (gx#stx-datum? _hd3185332236_)
                                          (let ((_e3189032059_
                                                 (gx#stx-e _hd3185332236_)))
                                            (if (equal? _e3189032059_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3185232239_)
                                                    (let ((_e3189332063_
                                                           (gx#syntax-e
                                                            _tl3185232239_)))
                                                      (let ((_tl3189132070_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3189332063_)))
                    (_hd3189232067_
                     (let () (declare (not safe)) (##car _e3189332063_))))
                (if (gx#stx-null? _tl3189132070_)
                    (___kont4208842089_
                     _hd3189232067_
                     _hd3178532470_
                     _hd3178232460_)
                    (if (gx#stx-pair? _tl3189132070_)
                        (let ((_e3191331973_ (gx#syntax-e _tl3189132070_)))
                          (let ((_tl3191131980_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3191331973_)))
                                (_hd3191231977_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3191331973_))))
                            (if (gx#identifier? _hd3191231977_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g43100_|
                                     _hd3191231977_)
                                    (if (gx#stx-pair? _tl3191131980_)
                                        (let ((_e3191631983_
                                               (gx#syntax-e _tl3191131980_)))
                                          (let ((_tl3191431990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3191631983_)))
                                                (_hd3191531987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3191631983_))))
                                            (if (gx#stx-null? _tl3191431990_)
                                                (___kont4209042091_
                                                 _hd3191531987_
                                                 _hd3189232067_
                                                 _hd3178532470_
                                                 _hd3178232460_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3177631922_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3177631922_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3177631922_)))))
                        (let () (declare (not safe)) (_g3177631922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3177631922_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3177631922_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3177631922_)))))))
                          (if (gx#stx-null? _tl3178432473_)
                              (___kont4208442085_
                               _hd3178532470_
                               _hd3178232460_)
                              (let ()
                                (declare (not safe))
                                (_g3177631922_)))))))
              (if (gx#stx-pair? _tl3178432473_)
                  (let ((_e3185432232_ (gx#syntax-e _tl3178432473_)))
                    (let ((_tl3185232239_
                           (let () (declare (not safe)) (##cdr _e3185432232_)))
                          (_hd3185332236_
                           (let ()
                             (declare (not safe))
                             (##car _e3185432232_))))
                      (if (gx#stx-null? _tl3185232239_)
                          (___kont4208242083_ _hd3185332236_ _hd3178532470_)
                          (if (gx#identifier? _hd3185332236_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g43101_|
                                   _hd3185332236_)
                                  (if (gx#stx-pair? _tl3185232239_)
                                      (let ((_e3187732132_
                                             (gx#syntax-e _tl3185232239_)))
                                        (let ((_tl3187532139_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3187732132_)))
                                              (_hd3187632136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3187732132_))))
                                          (if (gx#stx-null? _tl3187532139_)
                                              (___kont4208642087_
                                               _hd3187632136_
                                               _hd3178532470_
                                               _hd3178232460_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3177631922_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3177631922_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3177631922_)))
                              (if (gx#stx-datum? _hd3185332236_)
                                  (let ((_e3189032059_
                                         (gx#stx-e _hd3185332236_)))
                                    (if (equal? _e3189032059_ '::)
                                        (if (gx#stx-pair? _tl3185232239_)
                                            (let ((_e3189332063_
                                                   (gx#syntax-e
                                                    _tl3185232239_)))
                                              (let ((_tl3189132070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3189332063_)))
                                                    (_hd3189232067_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3189332063_))))
                                                (if (gx#stx-null?
                                                     _tl3189132070_)
                                                    (___kont4208842089_
                                                     _hd3189232067_
                                                     _hd3178532470_
                                                     _hd3178232460_)
                                                    (if (gx#stx-pair?
                                                         _tl3189132070_)
                                                        (let ((_e3191331973_
                                                               (gx#syntax-e
                                                                _tl3189132070_)))
                                                          (let ((_tl3191131980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3191331973_)))
                        (_hd3191231977_
                         (let () (declare (not safe)) (##car _e3191331973_))))
                    (if (gx#identifier? _hd3191231977_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g43100_|
                             _hd3191231977_)
                            (if (gx#stx-pair? _tl3191131980_)
                                (let ((_e3191631983_
                                       (gx#syntax-e _tl3191131980_)))
                                  (let ((_tl3191431990_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3191631983_)))
                                        (_hd3191531987_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3191631983_))))
                                    (if (gx#stx-null? _tl3191431990_)
                                        (___kont4209042091_
                                         _hd3191531987_
                                         _hd3189232067_
                                         _hd3178532470_
                                         _hd3178232460_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3177631922_)))))
                                (let () (declare (not safe)) (_g3177631922_)))
                            (let () (declare (not safe)) (_g3177631922_)))
                        (let () (declare (not safe)) (_g3177631922_)))))
                (let () (declare (not safe)) (_g3177631922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3177631922_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3177631922_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3177631922_)))))))
                  (if (gx#stx-null? _tl3178432473_)
                      (___kont4208442085_ _hd3178532470_ _hd3178232460_)
                      (let () (declare (not safe)) (_g3177631922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g43102_|
                                                       _hd3178832480_)
                                                      (if (gx#stx-pair?
                                                           _tl3178732483_)
                                                          (let ((_e3184032296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3178732483_)))
                    (let ((_tl3183832303_
                           (let () (declare (not safe)) (##cdr _e3184032296_)))
                          (_hd3183932300_
                           (let ()
                             (declare (not safe))
                             (##car _e3184032296_))))
                      (if (gx#stx-null? _tl3183832303_)
                          (if (gx#stx-pair? _tl3178432473_)
                              (let ((_e3184332306_
                                     (gx#syntax-e _tl3178432473_)))
                                (let ((_tl3184132313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3184332306_)))
                                      (_hd3184232310_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3184332306_))))
                                  (if (gx#stx-null? _tl3184132313_)
                                      (___kont4208042081_
                                       _hd3184232310_
                                       _hd3183932300_
                                       _hd3178232460_)
                                      (if (gx#identifier? _hd3184232310_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g43101_|
                                               _hd3184232310_)
                                              (if (gx#stx-pair? _tl3184132313_)
                                                  (let ((_e3187732132_
                                                         (gx#syntax-e
                                                          _tl3184132313_)))
                                                    (let ((_tl3187532139_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3187732132_)))
                                                          (_hd3187632136_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3187732132_))))
                                                      (if (gx#stx-null?
                                                           _tl3187532139_)
                                                          (___kont4208642087_
                                                           _hd3187632136_
                                                           _hd3178532470_
                                                           _hd3178232460_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3177631922_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3177631922_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3177631922_)))
                                          (if (gx#stx-datum? _hd3184232310_)
                                              (let ((_e3189032059_
                                                     (gx#stx-e
                                                      _hd3184232310_)))
                                                (if (equal? _e3189032059_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3184132313_)
                                                        (let ((_e3189332063_
                                                               (gx#syntax-e
                                                                _tl3184132313_)))
                                                          (let ((_tl3189132070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3189332063_)))
                        (_hd3189232067_
                         (let () (declare (not safe)) (##car _e3189332063_))))
                    (if (gx#stx-null? _tl3189132070_)
                        (___kont4208842089_
                         _hd3189232067_
                         _hd3178532470_
                         _hd3178232460_)
                        (if (gx#stx-pair? _tl3189132070_)
                            (let ((_e3191331973_ (gx#syntax-e _tl3189132070_)))
                              (let ((_tl3191131980_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3191331973_)))
                                    (_hd3191231977_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3191331973_))))
                                (if (gx#identifier? _hd3191231977_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g43100_|
                                         _hd3191231977_)
                                        (if (gx#stx-pair? _tl3191131980_)
                                            (let ((_e3191631983_
                                                   (gx#syntax-e
                                                    _tl3191131980_)))
                                              (let ((_tl3191431990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3191631983_)))
                                                    (_hd3191531987_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3191631983_))))
                                                (if (gx#stx-null?
                                                     _tl3191431990_)
                                                    (___kont4209042091_
                                                     _hd3191531987_
                                                     _hd3189232067_
                                                     _hd3178532470_
                                                     _hd3178232460_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3177631922_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3177631922_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3177631922_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_)))))
                            (let () (declare (not safe)) (_g3177631922_))))))
                (let () (declare (not safe)) (_g3177631922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3177631922_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3177631922_)))))))
                              (if (gx#stx-null? _tl3178432473_)
                                  (___kont4208442085_
                                   _hd3178532470_
                                   _hd3178232460_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3177631922_))))
                          (if (gx#stx-pair? _tl3178432473_)
                              (let ((_e3185432232_
                                     (gx#syntax-e _tl3178432473_)))
                                (let ((_tl3185232239_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3185432232_)))
                                      (_hd3185332236_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3185432232_))))
                                  (if (gx#stx-null? _tl3185232239_)
                                      (___kont4208242083_
                                       _hd3185332236_
                                       _hd3178532470_)
                                      (if (gx#identifier? _hd3185332236_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g43101_|
                                               _hd3185332236_)
                                              (if (gx#stx-pair? _tl3185232239_)
                                                  (let ((_e3187732132_
                                                         (gx#syntax-e
                                                          _tl3185232239_)))
                                                    (let ((_tl3187532139_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3187732132_)))
                                                          (_hd3187632136_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3187732132_))))
                                                      (if (gx#stx-null?
                                                           _tl3187532139_)
                                                          (___kont4208642087_
                                                           _hd3187632136_
                                                           _hd3178532470_
                                                           _hd3178232460_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3177631922_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3177631922_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3177631922_)))
                                          (if (gx#stx-datum? _hd3185332236_)
                                              (let ((_e3189032059_
                                                     (gx#stx-e
                                                      _hd3185332236_)))
                                                (if (equal? _e3189032059_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3185232239_)
                                                        (let ((_e3189332063_
                                                               (gx#syntax-e
                                                                _tl3185232239_)))
                                                          (let ((_tl3189132070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3189332063_)))
                        (_hd3189232067_
                         (let () (declare (not safe)) (##car _e3189332063_))))
                    (if (gx#stx-null? _tl3189132070_)
                        (___kont4208842089_
                         _hd3189232067_
                         _hd3178532470_
                         _hd3178232460_)
                        (if (gx#stx-pair? _tl3189132070_)
                            (let ((_e3191331973_ (gx#syntax-e _tl3189132070_)))
                              (let ((_tl3191131980_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3191331973_)))
                                    (_hd3191231977_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3191331973_))))
                                (if (gx#identifier? _hd3191231977_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g43100_|
                                         _hd3191231977_)
                                        (if (gx#stx-pair? _tl3191131980_)
                                            (let ((_e3191631983_
                                                   (gx#syntax-e
                                                    _tl3191131980_)))
                                              (let ((_tl3191431990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3191631983_)))
                                                    (_hd3191531987_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3191631983_))))
                                                (if (gx#stx-null?
                                                     _tl3191431990_)
                                                    (___kont4209042091_
                                                     _hd3191531987_
                                                     _hd3189232067_
                                                     _hd3178532470_
                                                     _hd3178232460_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3177631922_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3177631922_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3177631922_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_)))))
                            (let () (declare (not safe)) (_g3177631922_))))))
                (let () (declare (not safe)) (_g3177631922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3177631922_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3177631922_)))))))
                              (if (gx#stx-null? _tl3178432473_)
                                  (___kont4208442085_
                                   _hd3178532470_
                                   _hd3178232460_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3177631922_)))))))
                  (if (gx#stx-pair? _tl3178432473_)
                      (let ((_e3185432232_ (gx#syntax-e _tl3178432473_)))
                        (let ((_tl3185232239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3185432232_)))
                              (_hd3185332236_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3185432232_))))
                          (if (gx#stx-null? _tl3185232239_)
                              (___kont4208242083_
                               _hd3185332236_
                               _hd3178532470_)
                              (if (gx#identifier? _hd3185332236_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g43101_|
                                       _hd3185332236_)
                                      (if (gx#stx-pair? _tl3185232239_)
                                          (let ((_e3187732132_
                                                 (gx#syntax-e _tl3185232239_)))
                                            (let ((_tl3187532139_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3187732132_)))
                                                  (_hd3187632136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3187732132_))))
                                              (if (gx#stx-null? _tl3187532139_)
                                                  (___kont4208642087_
                                                   _hd3187632136_
                                                   _hd3178532470_
                                                   _hd3178232460_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3177631922_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3177631922_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3177631922_)))
                                  (if (gx#stx-datum? _hd3185332236_)
                                      (let ((_e3189032059_
                                             (gx#stx-e _hd3185332236_)))
                                        (if (equal? _e3189032059_ '::)
                                            (if (gx#stx-pair? _tl3185232239_)
                                                (let ((_e3189332063_
                                                       (gx#syntax-e
                                                        _tl3185232239_)))
                                                  (let ((_tl3189132070_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3189332063_)))
                                                        (_hd3189232067_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3189332063_))))
                                                    (if (gx#stx-null?
                                                         _tl3189132070_)
                                                        (___kont4208842089_
                                                         _hd3189232067_
                                                         _hd3178532470_
                                                         _hd3178232460_)
                                                        (if (gx#stx-pair?
                                                             _tl3189132070_)
                                                            (let ((_e3191331973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3189132070_)))
                      (let ((_tl3191131980_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3191331973_)))
                            (_hd3191231977_
                             (let ()
                               (declare (not safe))
                               (##car _e3191331973_))))
                        (if (gx#identifier? _hd3191231977_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g43100_|
                                 _hd3191231977_)
                                (if (gx#stx-pair? _tl3191131980_)
                                    (let ((_e3191631983_
                                           (gx#syntax-e _tl3191131980_)))
                                      (let ((_tl3191431990_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3191631983_)))
                                            (_hd3191531987_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3191631983_))))
                                        (if (gx#stx-null? _tl3191431990_)
                                            (___kont4209042091_
                                             _hd3191531987_
                                             _hd3189232067_
                                             _hd3178532470_
                                             _hd3178232460_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3177631922_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_)))
                                (let () (declare (not safe)) (_g3177631922_)))
                            (let () (declare (not safe)) (_g3177631922_)))))
                    (let () (declare (not safe)) (_g3177631922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3177631922_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3177631922_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3177631922_)))))))
                      (if (gx#stx-null? _tl3178432473_)
                          (___kont4208442085_ _hd3178532470_ _hd3178232460_)
                          (let () (declare (not safe)) (_g3177631922_)))))
              (if (gx#stx-pair? _tl3178432473_)
                  (let ((_e3185432232_ (gx#syntax-e _tl3178432473_)))
                    (let ((_tl3185232239_
                           (let () (declare (not safe)) (##cdr _e3185432232_)))
                          (_hd3185332236_
                           (let ()
                             (declare (not safe))
                             (##car _e3185432232_))))
                      (if (gx#stx-null? _tl3185232239_)
                          (___kont4208242083_ _hd3185332236_ _hd3178532470_)
                          (if (gx#identifier? _hd3185332236_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g43101_|
                                   _hd3185332236_)
                                  (if (gx#stx-pair? _tl3185232239_)
                                      (let ((_e3187732132_
                                             (gx#syntax-e _tl3185232239_)))
                                        (let ((_tl3187532139_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3187732132_)))
                                              (_hd3187632136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3187732132_))))
                                          (if (gx#stx-null? _tl3187532139_)
                                              (___kont4208642087_
                                               _hd3187632136_
                                               _hd3178532470_
                                               _hd3178232460_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3177631922_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3177631922_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3177631922_)))
                              (if (gx#stx-datum? _hd3185332236_)
                                  (let ((_e3189032059_
                                         (gx#stx-e _hd3185332236_)))
                                    (if (equal? _e3189032059_ '::)
                                        (if (gx#stx-pair? _tl3185232239_)
                                            (let ((_e3189332063_
                                                   (gx#syntax-e
                                                    _tl3185232239_)))
                                              (let ((_tl3189132070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3189332063_)))
                                                    (_hd3189232067_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3189332063_))))
                                                (if (gx#stx-null?
                                                     _tl3189132070_)
                                                    (___kont4208842089_
                                                     _hd3189232067_
                                                     _hd3178532470_
                                                     _hd3178232460_)
                                                    (if (gx#stx-pair?
                                                         _tl3189132070_)
                                                        (let ((_e3191331973_
                                                               (gx#syntax-e
                                                                _tl3189132070_)))
                                                          (let ((_tl3191131980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3191331973_)))
                        (_hd3191231977_
                         (let () (declare (not safe)) (##car _e3191331973_))))
                    (if (gx#identifier? _hd3191231977_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g43100_|
                             _hd3191231977_)
                            (if (gx#stx-pair? _tl3191131980_)
                                (let ((_e3191631983_
                                       (gx#syntax-e _tl3191131980_)))
                                  (let ((_tl3191431990_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3191631983_)))
                                        (_hd3191531987_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3191631983_))))
                                    (if (gx#stx-null? _tl3191431990_)
                                        (___kont4209042091_
                                         _hd3191531987_
                                         _hd3189232067_
                                         _hd3178532470_
                                         _hd3178232460_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3177631922_)))))
                                (let () (declare (not safe)) (_g3177631922_)))
                            (let () (declare (not safe)) (_g3177631922_)))
                        (let () (declare (not safe)) (_g3177631922_)))))
                (let () (declare (not safe)) (_g3177631922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3177631922_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3177631922_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3177631922_)))))))
                  (if (gx#stx-null? _tl3178432473_)
                      (___kont4208442085_ _hd3178532470_ _hd3178232460_)
                      (let () (declare (not safe)) (_g3177631922_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3178432473_)
                                              (let ((_e3185432232_
                                                     (gx#syntax-e
                                                      _tl3178432473_)))
                                                (let ((_tl3185232239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3185432232_)))
                                                      (_hd3185332236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3185432232_))))
                                                  (if (gx#stx-null?
                                                       _tl3185232239_)
                                                      (___kont4208242083_
                                                       _hd3185332236_
                                                       _hd3178532470_)
                                                      (if (gx#identifier?
                                                           _hd3185332236_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g43101_|
                                                               _hd3185332236_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3185232239_)
                          (let ((_e3187732132_ (gx#syntax-e _tl3185232239_)))
                            (let ((_tl3187532139_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3187732132_)))
                                  (_hd3187632136_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3187732132_))))
                              (if (gx#stx-null? _tl3187532139_)
                                  (___kont4208642087_
                                   _hd3187632136_
                                   _hd3178532470_
                                   _hd3178232460_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3177631922_)))))
                          (let () (declare (not safe)) (_g3177631922_)))
                      (let () (declare (not safe)) (_g3177631922_)))
                  (if (gx#stx-datum? _hd3185332236_)
                      (let ((_e3189032059_ (gx#stx-e _hd3185332236_)))
                        (if (equal? _e3189032059_ '::)
                            (if (gx#stx-pair? _tl3185232239_)
                                (let ((_e3189332063_
                                       (gx#syntax-e _tl3185232239_)))
                                  (let ((_tl3189132070_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3189332063_)))
                                        (_hd3189232067_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3189332063_))))
                                    (if (gx#stx-null? _tl3189132070_)
                                        (___kont4208842089_
                                         _hd3189232067_
                                         _hd3178532470_
                                         _hd3178232460_)
                                        (if (gx#stx-pair? _tl3189132070_)
                                            (let ((_e3191331973_
                                                   (gx#syntax-e
                                                    _tl3189132070_)))
                                              (let ((_tl3191131980_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3191331973_)))
                                                    (_hd3191231977_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3191331973_))))
                                                (if (gx#identifier?
                                                     _hd3191231977_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g43100_|
                                                         _hd3191231977_)
                                                        (if (gx#stx-pair?
                                                             _tl3191131980_)
                                                            (let ((_e3191631983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3191131980_)))
                      (let ((_tl3191431990_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3191631983_)))
                            (_hd3191531987_
                             (let ()
                               (declare (not safe))
                               (##car _e3191631983_))))
                        (if (gx#stx-null? _tl3191431990_)
                            (___kont4209042091_
                             _hd3191531987_
                             _hd3189232067_
                             _hd3178532470_
                             _hd3178232460_)
                            (let () (declare (not safe)) (_g3177631922_)))))
                    (let () (declare (not safe)) (_g3177631922_)))
                (let () (declare (not safe)) (_g3177631922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3177631922_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3177631922_))))))
                                (let () (declare (not safe)) (_g3177631922_)))
                            (let () (declare (not safe)) (_g3177631922_))))
                      (let () (declare (not safe)) (_g3177631922_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3178432473_)
                                                  (___kont4208442085_
                                                   _hd3178532470_
                                                   _hd3178232460_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3177631922_)))))))
                                  (if (gx#stx-pair? _tl3178432473_)
                                      (let ((_e3185432232_
                                             (gx#syntax-e _tl3178432473_)))
                                        (let ((_tl3185232239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3185432232_)))
                                              (_hd3185332236_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3185432232_))))
                                          (if (gx#stx-null? _tl3185232239_)
                                              (___kont4208242083_
                                               _hd3185332236_
                                               _hd3178532470_)
                                              (if (gx#identifier?
                                                   _hd3185332236_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g43101_|
                                                       _hd3185332236_)
                                                      (if (gx#stx-pair?
                                                           _tl3185232239_)
                                                          (let ((_e3187732132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3185232239_)))
                    (let ((_tl3187532139_
                           (let () (declare (not safe)) (##cdr _e3187732132_)))
                          (_hd3187632136_
                           (let ()
                             (declare (not safe))
                             (##car _e3187732132_))))
                      (if (gx#stx-null? _tl3187532139_)
                          (___kont4208642087_
                           _hd3187632136_
                           _hd3178532470_
                           _hd3178232460_)
                          (let () (declare (not safe)) (_g3177631922_)))))
                  (let () (declare (not safe)) (_g3177631922_)))
              (let () (declare (not safe)) (_g3177631922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3185332236_)
                                                      (let ((_e3189032059_
                                                             (gx#stx-e
                                                              _hd3185332236_)))
                                                        (if (equal? _e3189032059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3185232239_)
                        (let ((_e3189332063_ (gx#syntax-e _tl3185232239_)))
                          (let ((_tl3189132070_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3189332063_)))
                                (_hd3189232067_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3189332063_))))
                            (if (gx#stx-null? _tl3189132070_)
                                (___kont4208842089_
                                 _hd3189232067_
                                 _hd3178532470_
                                 _hd3178232460_)
                                (if (gx#stx-pair? _tl3189132070_)
                                    (let ((_e3191331973_
                                           (gx#syntax-e _tl3189132070_)))
                                      (let ((_tl3191131980_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3191331973_)))
                                            (_hd3191231977_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3191331973_))))
                                        (if (gx#identifier? _hd3191231977_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g43100_|
                                                 _hd3191231977_)
                                                (if (gx#stx-pair?
                                                     _tl3191131980_)
                                                    (let ((_e3191631983_
                                                           (gx#syntax-e
                                                            _tl3191131980_)))
                                                      (let ((_tl3191431990_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3191631983_)))
                    (_hd3191531987_
                     (let () (declare (not safe)) (##car _e3191631983_))))
                (if (gx#stx-null? _tl3191431990_)
                    (___kont4209042091_
                     _hd3191531987_
                     _hd3189232067_
                     _hd3178532470_
                     _hd3178232460_)
                    (let () (declare (not safe)) (_g3177631922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3177631922_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3177631922_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3177631922_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3177631922_))))))
                        (let () (declare (not safe)) (_g3177631922_)))
                    (let () (declare (not safe)) (_g3177631922_))))
              (let () (declare (not safe)) (_g3177631922_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3178432473_)
                                          (___kont4208442085_
                                           _hd3178532470_
                                           _hd3178232460_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3177631922_)))))))
                          (let () (declare (not safe)) (_g3177631922_)))))
                  (let () (declare (not safe)) (_g3177631922_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32565_)
        (let* ((___stx4233742338_ _$stx32565_)
               (_g3257032604_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4233742338_))))
          (let ((___kont4234042341_
                 (lambda (_L32708_ _L32710_ _L32711_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _L32711_
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'make-match-macro)
                                           (cons 'macro:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        '$match-e)
                                       (cons _L32710_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _L32708_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'syntax-case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$stx)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (cons 'match:
                                               (gx#datum->syntax '#f 'body))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-apply-expander)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$match-e)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-wrap-source)
                               (cons (cons (gx#datum->syntax '#f 'syntax)
                                           (cons (gx#datum->syntax '#f 'body)
                                                 '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'stx-source)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$stx)
                                                       '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f '_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'core-apply-expander)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$macro-e)
                         (cons (gx#datum->syntax '#f '$stx) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4234242343_
                 (lambda (_L32641_ _L32643_ _L32644_)
                   (cons _L32644_
                         (cons _L32643_
                               (cons _L32641_
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$stx)
                                                             '())
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'raise-syntax-error)
                           (cons '#f
                                 (cons '"Bad syntax; no macro definition for defsyntax-for-match"
                                       (cons (gx#datum->syntax '#f '$stx)
                                             '()))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let ((___match4237042371_
                   (lambda (_e3257732668_
                            _hd3257632672_
                            _tl3257532675_
                            _e3258032678_
                            _hd3257932682_
                            _tl3257832685_
                            _e3258332688_
                            _hd3258232692_
                            _tl3258132695_
                            _e3258632698_
                            _hd3258532702_
                            _tl3258432705_)
                     (let ((_L32708_ _hd3258532702_)
                           (_L32710_ _hd3258232692_)
                           (_L32711_ _hd3257932682_))
                       (if (gx#identifier? _L32711_)
                           (___kont4234042341_ _L32708_ _L32710_ _L32711_)
                           (let () (declare (not safe)) (_g3257032604_)))))))
              (if (gx#stx-pair? ___stx4233742338_)
                  (let ((_e3257732668_ (gx#syntax-e ___stx4233742338_)))
                    (let ((_tl3257532675_
                           (let () (declare (not safe)) (##cdr _e3257732668_)))
                          (_hd3257632672_
                           (let ()
                             (declare (not safe))
                             (##car _e3257732668_))))
                      (if (gx#stx-pair? _tl3257532675_)
                          (let ((_e3258032678_ (gx#syntax-e _tl3257532675_)))
                            (let ((_tl3257832685_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3258032678_)))
                                  (_hd3257932682_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3258032678_))))
                              (if (gx#stx-pair? _tl3257832685_)
                                  (let ((_e3258332688_
                                         (gx#syntax-e _tl3257832685_)))
                                    (let ((_tl3258132695_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3258332688_)))
                                          (_hd3258232692_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3258332688_))))
                                      (if (gx#stx-pair? _tl3258132695_)
                                          (let ((_e3258632698_
                                                 (gx#syntax-e _tl3258132695_)))
                                            (let ((_tl3258432705_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3258632698_)))
                                                  (_hd3258532702_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3258632698_))))
                                              (if (gx#stx-null? _tl3258432705_)
                                                  (___match4237042371_
                                                   _e3257732668_
                                                   _hd3257632672_
                                                   _tl3257532675_
                                                   _e3258032678_
                                                   _hd3257932682_
                                                   _tl3257832685_
                                                   _e3258332688_
                                                   _hd3258232692_
                                                   _tl3258132695_
                                                   _e3258632698_
                                                   _hd3258532702_
                                                   _tl3258432705_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3257032604_)))))
                                          (if (gx#stx-null? _tl3258132695_)
                                              (___kont4234242343_
                                               _hd3258232692_
                                               _hd3257932682_
                                               _hd3257632672_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3257032604_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3257032604_)))))
                          (let () (declare (not safe)) (_g3257032604_)))))
                  (let () (declare (not safe)) (_g3257032604_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32733_)
        (let* ((_g3273732752_
                (lambda (_g3273832748_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3273832748_)))
               (_g3273632795_
                (lambda (_g3273832756_)
                  (if (gx#stx-pair? _g3273832756_)
                      (let ((_e3274332759_ (gx#syntax-e _g3273832756_)))
                        (let ((_hd3274232763_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3274332759_)))
                              (_tl3274132766_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3274332759_))))
                          (if (gx#stx-pair? _tl3274132766_)
                              (let ((_e3274632769_
                                     (gx#syntax-e _tl3274132766_)))
                                (let ((_hd3274532773_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3274632769_)))
                                      (_tl3274432776_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3274632769_))))
                                  ((lambda (_L32779_ _L32781_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L32781_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L32779_)
                                                       '()))))
                                   _tl3274432776_
                                   _hd3274532773_)))
                              (_g3273732752_ _g3273832756_))))
                      (_g3273732752_ _g3273832756_)))))
          (_g3273632795_ _$stx32733_))))))
