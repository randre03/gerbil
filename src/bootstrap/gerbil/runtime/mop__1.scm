(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx9360_)
    (let* ((_g93649390_
            (lambda (_g93659386_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g93659386_)))
           (_g93639474_
            (lambda (_g93659394_)
              (if (gx#stx-pair? _g93659394_)
                  (let ((_e93729397_ (gx#syntax-e _g93659394_)))
                    (let ((_hd93719401_
                           (let () (declare (not safe)) (##car _e93729397_)))
                          (_tl93709404_
                           (let () (declare (not safe)) (##cdr _e93729397_))))
                      (if (gx#stx-pair? _tl93709404_)
                          (let ((_e93759407_ (gx#syntax-e _tl93709404_)))
                            (let ((_hd93749411_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e93759407_)))
                                  (_tl93739414_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e93759407_))))
                              (if (gx#stx-pair? _tl93739414_)
                                  (let ((_e93789417_
                                         (gx#syntax-e _tl93739414_)))
                                    (let ((_hd93779421_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e93789417_)))
                                          (_tl93769424_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e93789417_))))
                                      (if (gx#stx-pair? _tl93769424_)
                                          (let ((_e93819427_
                                                 (gx#syntax-e _tl93769424_)))
                                            (let ((_hd93809431_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e93819427_)))
                                                  (_tl93799434_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e93819427_))))
                                              (if (gx#stx-pair? _tl93799434_)
                                                  (let ((_e93849437_
                                                         (gx#syntax-e
                                                          _tl93799434_)))
                                                    (let ((_hd93839441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e93849437_)))
                                                          (_tl93829444_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e93849437_))))
                                                      (if (gx#stx-null?
                                                           _tl93829444_)
                                                          ((lambda (_L9447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9449_
                            _L9450_
                            _L9451_)
                     (let ((__tmp11088 (gx#datum->syntax '#f 'if))
                           (__tmp11042
                            (let ((__tmp11085
                                   (let ((__tmp11087
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp11086
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9451_ '()))))
                                     (declare (not safe))
                                     (cons __tmp11087 __tmp11086)))
                                  (__tmp11043
                                   (let ((__tmp11048
                                          (let ((__tmp11084
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp11049
                                                 (let ((__tmp11078
                                                        (let ((__tmp11083
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp11079
                                                               (let ((__tmp11080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp11082
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp11081
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9451_ '()))))
                                (declare (not safe))
                                (cons __tmp11082 __tmp11081))))
                         (declare (not safe))
                         (cons __tmp11080 '()))))
                  (declare (not safe))
                  (cons __tmp11083 __tmp11079)))
               (__tmp11050
                (let ((__tmp11051
                       (let ((__tmp11077 (gx#datum->syntax '#f 'cond))
                             (__tmp11052
                              (let ((__tmp11060
                                     (let ((__tmp11064
                                            (let ((__tmp11076
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp11065
                                                   (let ((__tmp11072
                                                          (let ((__tmp11075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp11073
                         (let ((__tmp11074 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp11074 '()))))
                    (declare (not safe))
                    (cons __tmp11075 __tmp11073)))
                 (__tmp11066
                  (let ((__tmp11067
                         (let ((__tmp11071
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp11068
                                (let ((__tmp11070
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp11069
                                       (let ()
                                         (declare (not safe))
                                         (cons _L9450_ '()))))
                                  (declare (not safe))
                                  (cons __tmp11070 __tmp11069))))
                           (declare (not safe))
                           (cons __tmp11071 __tmp11068))))
                    (declare (not safe))
                    (cons __tmp11067 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp11072
                                                           __tmp11066))))
                                              (declare (not safe))
                                              (cons __tmp11076 __tmp11065)))
                                           (__tmp11061
                                            (let ((__tmp11063
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp11062
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9449_ '()))))
                                              (declare (not safe))
                                              (cons __tmp11063 __tmp11062))))
                                       (declare (not safe))
                                       (cons __tmp11064 __tmp11061)))
                                    (__tmp11053
                                     (let ((__tmp11054
                                            (let ((__tmp11059
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp11055
                                                   (let ((__tmp11056
                                                          (let ((__tmp11057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp11058
                                (let ()
                                  (declare (not safe))
                                  (cons _L9450_ '()))))
                           (declare (not safe))
                           (cons _L9451_ __tmp11058))))
                    (declare (not safe))
                    (cons _L9447_ __tmp11057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp11056 '()))))
                                              (declare (not safe))
                                              (cons __tmp11059 __tmp11055))))
                                       (declare (not safe))
                                       (cons __tmp11054 '()))))
                                (declare (not safe))
                                (cons __tmp11060 __tmp11053))))
                         (declare (not safe))
                         (cons __tmp11077 __tmp11052))))
                  (declare (not safe))
                  (cons __tmp11051 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp11078
                                                         __tmp11050))))
                                            (declare (not safe))
                                            (cons __tmp11084 __tmp11049)))
                                         (__tmp11044
                                          (let ((__tmp11045
                                                 (let ((__tmp11046
                                                        (let ((__tmp11047
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L9450_ '()))))
                  (declare (not safe))
                  (cons _L9451_ __tmp11047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9447_ __tmp11046))))
                                            (declare (not safe))
                                            (cons __tmp11045 '()))))
                                     (declare (not safe))
                                     (cons __tmp11048 __tmp11044))))
                              (declare (not safe))
                              (cons __tmp11085 __tmp11043))))
                       (declare (not safe))
                       (cons __tmp11088 __tmp11042)))
                   _hd93839441_
                   _hd93809431_
                   _hd93779421_
                   _hd93749411_)
                  (_g93649390_ _g93659394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g93649390_ _g93659394_))))
                                          (_g93649390_ _g93659394_))))
                                  (_g93649390_ _g93659394_))))
                          (_g93649390_ _g93659394_))))
                  (_g93649390_ _g93659394_)))))
      (_g93639474_ _$stx9360_))))
