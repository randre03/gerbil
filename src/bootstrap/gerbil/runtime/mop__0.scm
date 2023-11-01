(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1698867094)
  (begin
    (define type=?
      (lambda (_x8853_ _y8854_)
        (let ((__tmp8879 (let () (declare (not safe)) (##type-id _x8853_)))
              (__tmp8878 (let () (declare (not safe)) (##type-id _y8854_))))
          (declare (not safe))
          (eq? __tmp8879 __tmp8878))))
    (define type-descriptor?
      (lambda (_klass8851_)
        (if (let () (declare (not safe)) (##type? _klass8851_))
            (let ((__tmp8880
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass8851_))))
              (declare (not safe))
              (eq? __tmp8880 '12))
            '#f)))
    (define struct-type?
      (lambda (_klass8849_)
        (if (let () (declare (not safe)) (type-descriptor? _klass8849_))
            (let ((__tmp8881
                   (let ()
                     (declare (not safe))
                     (type-descriptor-mixin _klass8849_))))
              (declare (not safe))
              (not __tmp8881))
            '#f)))
    (define class-type?
      (lambda (_klass8847_)
        (if (let () (declare (not safe)) (type-descriptor? _klass8847_))
            (if (let ()
                  (declare (not safe))
                  (type-descriptor-mixin _klass8847_))
                '#t
                '#f)
            '#f)))
    (define make-type-descriptor
      (lambda (_type-id8743_
               _type-name8744_
               _type-super8745_
               _rtd-mixin8746_
               _rtd-fields8747_
               _rtd-plist8748_
               _rtd-ctor8749_
               _rtd-slots8750_
               _rtd-methods8751_)
        (letrec ((_put-props!8753_
                  (lambda (_ht8827_ _key8828_)
                    (letrec ((_put-plist!8830_
                              (lambda (_ht8836_ _key8837_ _plist8838_)
                                (let ((_$e8840_
                                       (let ()
                                         (declare (not safe))
                                         (assgetq _key8837_ _plist8838_))))
                                  (if _$e8840_
                                      ((lambda (_lst8843_)
                                         (for-each
                                          (lambda (_id8845_)
                                            (let ()
                                              (declare (not safe))
                                              (table-set!
                                               _ht8836_
                                               _id8845_
                                               '#t)))
                                          _lst8843_))
                                       _$e8840_)
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-plist!8830_ _ht8827_ _key8828_ _rtd-plist8748_))
                      (if _rtd-mixin8746_
                          (for-each
                           (lambda (_klass8832_)
                             (if (let ()
                                   (declare (not safe))
                                   (type-descriptor-mixin _klass8832_))
                                 (let ((_plist8834_
                                        (let ()
                                          (declare (not safe))
                                          (type-descriptor-plist
                                           _klass8832_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (assgetq 'transparent: _plist8834_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!8830_
                                          _ht8827_
                                          'slots:
                                          _plist8834_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!8830_
                                          _ht8827_
                                          _key8828_
                                          _plist8834_))))
                                 '#!void))
                           _rtd-mixin8746_)
                          '#!void)))))
          (let* ((_transparent?8755_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _rtd-plist8748_)))
                 (_field-names8760_
                  (let ((_$e8757_ (assq 'fields: _rtd-plist8748_)))
                    (if _$e8757_ (cdr _$e8757_) '())))
                 (_field-names8767_
                  (let ((_$e8762_ (assq 'slots: _rtd-plist8748_)))
                    (if _$e8762_
                        ((lambda (_slots8765_)
                           (append _field-names8760_ (cdr _slots8765_)))
                         _$e8762_)
                        _field-names8760_)))
                 (_g8882_ (if (fx= _rtd-fields8747_ (length _field-names8767_))
                              '#!void
                              (error '"Bad field descriptor; length mismatch"
                                     _type-id8743_
                                     _rtd-fields8747_
                                     _field-names8767_)))
                 (_canonical-fields8770_
                  (if _type-super8745_
                      (list-tail
                       _field-names8767_
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _type-super8745_)))
                      _field-names8767_))
                 (_printable8774_
                  (if _transparent?8755_
                      '#f
                      (let ((_ht8772_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!8753_ _ht8772_ 'print:))
                        _ht8772_)))
                 (_equality8778_
                  (if _transparent?8755_
                      '#f
                      (let ((_ht8776_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!8753_ _ht8776_ 'equal:))
                        _ht8776_)))
                 (_field-info8819_
                  (let _recur8780_ ((_rest8782_ _canonical-fields8770_))
                    (let* ((_rest87838791_ _rest8782_)
                           (_else87858799_ (lambda () '()))
                           (_K87878807_
                            (lambda (_rest8802_ _id8803_)
                              (let* ((_flags8805_
                                      (if _transparent?8755_
                                          '0
                                          (let ((__tmp8884
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _printable8774_
                                                        _id8803_
                                                        '#f))
                                                     '0
                                                     '1))
                                                (__tmp8883
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _equality8778_
                                                        _id8803_
                                                        '#f))
                                                     '0
                                                     '4)))
                                            (declare (not safe))
                                            (##fxior __tmp8884 __tmp8883))))
                                     (__tmp8885
                                      (let ((__tmp8886
                                             (let ((__tmp8887
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur8780_
                                                       _rest8802_))))
                                               (declare (not safe))
                                               (cons '#f __tmp8887))))
                                        (declare (not safe))
                                        (cons _flags8805_ __tmp8886))))
                                (declare (not safe))
                                (cons _id8803_ __tmp8885)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest87838791_))
                          (let ((_hd87888810_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest87838791_)))
                                (_tl87898812_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest87838791_))))
                            (let* ((_id8815_ _hd87888810_)
                                   (_rest8817_ _tl87898812_))
                              (declare (not safe))
                              (_K87878807_ _rest8817_ _id8815_)))
                          (let () (declare (not safe)) (_else87858799_))))))
                 (_opaque?8824_
                  (if (or _transparent?8755_ (assq 'equal: _rtd-plist8748_))
                      (if _type-super8745_
                          (let ((__tmp8888
                                 (let ((__tmp8889
                                        (let ()
                                          (declare (not safe))
                                          (##type-flags _type-super8745_))))
                                   (declare (not safe))
                                   (##fxand __tmp8889 '1))))
                            (declare (not safe))
                            (##fx= __tmp8888 '1))
                          '#f)
                      '#t)))
            (let ((__tmp8891 (+ '24 (if _opaque?8824_ '1 '0)))
                  (__tmp8890 (list->vector _field-info8819_)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id8743_
               _type-name8744_
               __tmp8891
               _type-super8745_
               __tmp8890
               _rtd-mixin8746_
               _rtd-fields8747_
               _rtd-plist8748_
               _rtd-ctor8749_
               _rtd-slots8750_
               _rtd-methods8751_))))))
    (define make-struct-type-descriptor
      (lambda (_id8736_
               _name8737_
               _super8738_
               _fields8739_
               _plist8740_
               _ctor8741_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id8736_
           _name8737_
           _super8738_
           '#f
           _fields8739_
           _plist8740_
           _ctor8741_
           '#f
           '#f))))
    (define make-class-type-descriptor
      (lambda (_id8727_
               _name8728_
               _super8729_
               _mixin8730_
               _fields8731_
               _plist8732_
               _ctor8733_
               _slots8734_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id8727_
           _name8728_
           _super8729_
           _mixin8730_
           _fields8731_
           _plist8732_
           _ctor8733_
           _slots8734_
           '#f))))
    (define type-descriptor-mixin
      (lambda (_klass8725_)
        (let () (declare (not safe)) (##vector-ref _klass8725_ '6))))
    (define type-descriptor-fields
      (lambda (_klass8723_)
        (let () (declare (not safe)) (##vector-ref _klass8723_ '7))))
    (define type-descriptor-plist
      (lambda (_klass8721_)
        (let () (declare (not safe)) (##vector-ref _klass8721_ '8))))
    (define type-descriptor-ctor
      (lambda (_klass8719_)
        (let () (declare (not safe)) (##vector-ref _klass8719_ '9))))
    (define type-descriptor-slots
      (lambda (_klass8717_)
        (let () (declare (not safe)) (##vector-ref _klass8717_ '10))))
    (define type-descriptor-methods
      (lambda (_klass8715_)
        (let () (declare (not safe)) (##vector-ref _klass8715_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass8712_ _ht8713_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass8712_ '11 _ht8713_))))
    (define type-descriptor-sealed?
      (lambda (_klass8710_)
        (let ((__tmp8892
               (let () (declare (not safe)) (##type-flags _klass8710_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp8892))))
    (define type-descriptor-seal!
      (lambda (_klass8708_)
        (let ((__tmp8893
               (let ((__tmp8895
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp8894
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass8708_))))
                 (declare (not safe))
                 (##fxior __tmp8895 __tmp8894))))
          (declare (not safe))
          (##vector-set! _klass8708_ '3 __tmp8893))))
    (define make-struct-type__%
      (lambda (_id8657_
               _super8658_
               _fields8659_
               _name8660_
               _plist8661_
               _ctor8662_
               _field-names8663_)
        (if (and _super8658_
                 (let ((__tmp8896
                        (let ()
                          (declare (not safe))
                          (struct-type? _super8658_))))
                   (declare (not safe))
                   (not __tmp8896)))
            (error '"Illegal super type; not a struct-type" _super8658_)
            '#!void)
        (if (and _super8658_
                 (let ((__tmp8897
                        (let ()
                          (declare (not safe))
                          (type-descriptor-plist _super8658_))))
                   (declare (not safe))
                   (assgetq 'final: __tmp8897)))
            (error '"Cannot extend final struct" _super8658_)
            '#!void)
        (let* ((_super-fields8665_
                (if _super8658_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-fields _super8658_))
                    '0))
               (_std-fields8667_ (fx+ _fields8659_ _super-fields8665_))
               (_std-field-names8677_
                (let* ((_super-fields8669_
                        (if _super8658_
                            (let ((__tmp8898
                                   (let ()
                                     (declare (not safe))
                                     (type-descriptor-plist _super8658_))))
                              (declare (not safe))
                              (assgetq 'fields: __tmp8898))
                            '()))
                       (_field-names8674_
                        (let ((_$e8671_ _field-names8663_))
                          (if _$e8671_ _$e8671_ (make-list _fields8659_ ':)))))
                  (append _super-fields8669_ _field-names8674_)))
               (_g8900_ (if (let ((__tmp8899 (length _std-field-names8677_)))
                              (declare (not safe))
                              (##fx= _std-fields8667_ __tmp8899))
                            '#!void
                            (error '"Bad field specification; length mismatch"
                                   _id8657_
                                   _std-fields8667_
                                   _std-field-names8677_)))
               (_std-plist8680_
                (let ((__tmp8901
                       (let ()
                         (declare (not safe))
                         (cons 'fields: _std-field-names8677_))))
                  (declare (not safe))
                  (cons __tmp8901 _plist8661_)))
               (_ctor8685_
                (let ((_$e8682_ _ctor8662_))
                  (if _$e8682_
                      _$e8682_
                      (if _super8658_
                          (let ()
                            (declare (not safe))
                            (type-descriptor-ctor _super8658_))
                          '#f)))))
          (let ()
            (declare (not safe))
            (make-struct-type-descriptor
             _id8657_
             _name8660_
             _super8658_
             _std-fields8667_
             _std-plist8680_
             _ctor8685_)))))
    (define make-struct-type__0
      (lambda (_id8691_
               _super8692_
               _fields8693_
               _name8694_
               _plist8695_
               _ctor8696_)
        (let ((_field-names8698_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id8691_
           _super8692_
           _fields8693_
           _name8694_
           _plist8695_
           _ctor8696_
           _field-names8698_))))
    (define make-struct-type
      (lambda _g8903_
        (let ((_g8902_ (let () (declare (not safe)) (##length _g8903_))))
          (cond ((let () (declare (not safe)) (##fx= _g8902_ 6))
                 (apply (lambda (_id8691_
                                 _super8692_
                                 _fields8693_
                                 _name8694_
                                 _plist8695_
                                 _ctor8696_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id8691_
                             _super8692_
                             _fields8693_
                             _name8694_
                             _plist8695_
                             _ctor8696_)))
                        _g8903_))
                ((let () (declare (not safe)) (##fx= _g8902_ 7))
                 (apply (lambda (_id8700_
                                 _super8701_
                                 _fields8702_
                                 _name8703_
                                 _plist8704_
                                 _ctor8705_
                                 _field-names8706_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id8700_
                             _super8701_
                             _fields8702_
                             _name8703_
                             _plist8704_
                             _ctor8705_
                             _field-names8706_)))
                        _g8903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g8903_))))))
    (define make-struct-predicate
      (lambda (_klass8648_)
        (let ((_tid8650_
               (let () (declare (not safe)) (##type-id _klass8648_))))
          (if (let ((__tmp8904
                     (let ()
                       (declare (not safe))
                       (type-descriptor-plist _klass8648_))))
                (declare (not safe))
                (assgetq 'final: __tmp8904))
              (lambda (_obj8652_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj8652_ _tid8650_)))
              (lambda (_obj8654_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj8654_ _tid8650_)))))))
    (define make-struct-field-accessor
      (lambda (_klass8641_ _field8642_)
        (let ((_off8644_
               (let ((__tmp8905
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass8641_ _field8642_))))
                 (declare (not safe))
                 (##fx+ __tmp8905 '1))))
          (lambda (_obj8646_)
            (let ()
              (declare (not safe))
              (##structure-ref _obj8646_ _off8644_ _klass8641_ '#f))))))
    (define make-struct-field-mutator
      (lambda (_klass8633_ _field8634_)
        (let ((_off8636_
               (let ((__tmp8906
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass8633_ _field8634_))))
                 (declare (not safe))
                 (##fx+ __tmp8906 '1))))
          (lambda (_obj8638_ _val8639_)
            (let ()
              (declare (not safe))
              (##structure-set!
               _obj8638_
               _val8639_
               _off8636_
               _klass8633_
               '#f))))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass8626_ _field8627_)
        (let ((_off8629_
               (let ((__tmp8907
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass8626_ _field8627_))))
                 (declare (not safe))
                 (##fx+ __tmp8907 '1))))
          (lambda (_obj8631_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj8631_
               _off8629_
               _klass8626_
               '#f))))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass8618_ _field8619_)
        (let ((_off8621_
               (let ((__tmp8908
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass8618_ _field8619_))))
                 (declare (not safe))
                 (##fx+ __tmp8908 '1))))
          (lambda (_obj8623_ _val8624_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj8623_
               _val8624_
               _off8621_
               _klass8618_
               '#f))))))
    (define struct-field-offset
      (lambda (_klass8612_ _field8613_)
        (let ((__tmp8909
               (let ((_$e8615_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass8612_))))
                 (if _$e8615_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-fields _$e8615_))
                     '0))))
          (declare (not safe))
          (##fx+ _field8613_ __tmp8909))))
    (define struct-field-ref
      (lambda (_klass8608_ _obj8609_ _off8610_)
        (let ((__tmp8910 (let () (declare (not safe)) (##fx+ _off8610_ '1))))
          (declare (not safe))
          (##structure-ref _obj8609_ __tmp8910 _klass8608_ '#f))))
    (define struct-field-set!
      (lambda (_klass8603_ _obj8604_ _off8605_ _val8606_)
        (let ((__tmp8911 (let () (declare (not safe)) (##fx+ _off8605_ '1))))
          (declare (not safe))
          (##structure-set! _obj8604_ _val8606_ __tmp8911 _klass8603_ '#f))))
    (define struct-subtype?
      (lambda (_klass8594_ _xklass8595_)
        (let ((_klass-t8597_
               (let () (declare (not safe)) (##type-id _klass8594_))))
          (let _lp8599_ ((_next8601_ _xklass8595_))
            (if (let () (declare (not safe)) (not _next8601_))
                '#f
                (if (let ((__tmp8913
                           (let ()
                             (declare (not safe))
                             (##type-id _next8601_))))
                      (declare (not safe))
                      (eq? _klass-t8597_ __tmp8913))
                    '#t
                    (let ((__tmp8912
                           (let ()
                             (declare (not safe))
                             (##type-super _next8601_))))
                      (declare (not safe))
                      (_lp8599_ __tmp8912))))))))
    (define base-struct/1
      (lambda (_klass8592_)
        (if (let () (declare (not safe)) (struct-type? _klass8592_))
            _klass8592_
            (if (let () (declare (not safe)) (class-type? _klass8592_))
                (let () (declare (not safe)) (##type-super _klass8592_))
                (if (let () (declare (not safe)) (not _klass8592_))
                    '#f
                    (error '"Not a class or false" _klass8592_))))))
    (define base-struct/2
      (lambda (_klass18580_ _klass28581_)
        (letrec* ((_s18583_
                   (let () (declare (not safe)) (base-struct/1 _klass18580_)))
                  (_s28584_
                   (let () (declare (not safe)) (base-struct/1 _klass28581_))))
          (if (or (let () (declare (not safe)) (not _s18583_))
                  (and _s28584_
                       (let ()
                         (declare (not safe))
                         (struct-subtype? _s18583_ _s28584_))))
              _s28584_
              (if (or (let () (declare (not safe)) (not _s28584_))
                      (and _s18583_
                           (let ()
                             (declare (not safe))
                             (struct-subtype? _s28584_ _s18583_))))
                  _s18583_
                  (error '"Bad mixin: incompatible struct bases"
                         _klass18580_
                         _klass28581_
                         _s18583_
                         _s28584_))))))
    (define base-struct
      (lambda _all-supers8464_
        (let* ((_all-supers84658490_ _all-supers8464_)
               (_E84708494_
                (lambda ()
                  (error '"No clause matching" _all-supers84658490_))))
          (let ((_K84888577_ (lambda () '#f))
                (_K84858563_
                 (lambda (_x8561_)
                   (let () (declare (not safe)) (base-struct/1 _x8561_))))
                (_K84808540_
                 (lambda (_y8537_ _x8538_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x8538_ _y8537_))))
                (_K84718501_
                 (lambda (_y8498_ _x8499_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x8499_ _y8498_)))))
            (let* ((___match88768877_
                    (lambda (_hd84728504_ _tl84738506_)
                      (let ((_x8509_ _hd84728504_))
                        (letrec ((_splice-rest84758511_
                                  (lambda (_rest84798518_ _y8520_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest84798518_))
                                        (let ()
                                          (declare (not safe))
                                          (_K84718501_ _y8520_ _x8509_))
                                        (let ()
                                          (declare (not safe))
                                          (_E84708494_)))))
                                 (_splice-try84778513_
                                  (lambda (_hd84788522_
                                           _rest84798524_
                                           _y84748525_)
                                    (let ((_y8528_ _hd84788522_))
                                      (let ((__tmp8915
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest84798524_)))
                                            (__tmp8914
                                             (let ()
                                               (declare (not safe))
                                               (cons _y8528_ _y84748525_))))
                                        (declare (not safe))
                                        (_splice-loop84768515_
                                         __tmp8915
                                         __tmp8914)))))
                                 (_splice-loop84768515_
                                  (lambda (_rest84798530_ _y84748531_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest84798530_))
                                        (let ((__tmp8917
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest84798530_))))
                                          (declare (not safe))
                                          (_splice-try84778513_
                                           __tmp8917
                                           _rest84798530_
                                           _y84748531_))
                                        (let ((__tmp8916
                                               (reverse _y84748531_)))
                                          (declare (not safe))
                                          (_splice-rest84758511_
                                           _rest84798530_
                                           __tmp8916))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop84768515_ _tl84738506_ '()))))))
                   (_try-match84678573_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers84658490_))
                          (let ((_tl84878568_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers84658490_)))
                                (_hd84868566_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers84658490_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl84878568_))
                                (let ((_x8571_ _hd84868566_))
                                  (declare (not safe))
                                  (base-struct/1 _x8571_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl84878568_))
                                    (let ((_tl84848552_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl84878568_)))
                                          (_hd84838550_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl84878568_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl84848552_))
                                          (let ((_x8548_ _hd84868566_)
                                                (_y8555_ _hd84838550_))
                                            (let ()
                                              (declare (not safe))
                                              (_K84808540_ _y8555_ _x8548_)))
                                          (___match88768877_
                                           _hd84868566_
                                           _tl84878568_)))
                                    (___match88768877_
                                     _hd84868566_
                                     _tl84878568_))))
                          (let () (declare (not safe)) (_E84708494_))))))
              (if (let () (declare (not safe)) (##null? _all-supers84658490_))
                  (let () (declare (not safe)) (_K84888577_))
                  (let () (declare (not safe)) (_try-match84678573_))))))))
    (define find-super-ctor
      (lambda (_super8416_)
        (let _lp8418_ ((_rest8420_ _super8416_) (_ctor8421_ '#f))
          (let* ((_rest84228430_ _rest8420_)
                 (_else84248438_ (lambda () _ctor8421_))
                 (_K84268452_
                  (lambda (_rest8441_ _hd8442_)
                    (let ((_$e8444_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-ctor _hd8442_))))
                      (if _$e8444_
                          ((lambda (_xctor8447_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _ctor8421_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _ctor8421_ _xctor8447_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp8418_ _rest8441_ _xctor8447_))
                                 (error '"Conflicting implicit constructors"
                                        _ctor8421_
                                        _xctor8447_)))
                           _$e8444_)
                          (let ()
                            (declare (not safe))
                            (_lp8418_ _rest8441_ _ctor8421_)))))))
            (if (let () (declare (not safe)) (##pair? _rest84228430_))
                (let ((_hd84278455_
                       (let () (declare (not safe)) (##car _rest84228430_)))
                      (_tl84288457_
                       (let () (declare (not safe)) (##cdr _rest84228430_))))
                  (let* ((_hd8460_ _hd84278455_) (_rest8462_ _tl84288457_))
                    (declare (not safe))
                    (_K84268452_ _rest8462_ _hd8460_)))
                (let () (declare (not safe)) (_else84248438_)))))))
    (define compute-class-slots
      (lambda (_std-super8397_ _mixins8398_ _slots8399_)
        (letrec* ((_std-fields8401_
                   (if _std-super8397_
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _std-super8397_))
                       '0))
                  (_field-list8402_
                   (if _std-super8397_
                       (let ((__tmp8918
                              (let ()
                                (declare (not safe))
                                (type-descriptor-plist _std-super8397_))))
                         (declare (not safe))
                         (assgetq 'fields: __tmp8918))
                       '()))
                  (_slot-table8403_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_r-slots8404_ '())
                  (_process-slot8405_
                   (lambda (_slot8414_)
                     (if (memq _slot8414_ _field-list8402_)
                         '#!void
                         (if (let ()
                               (declare (not safe))
                               (hash-key? _slot-table8403_ _slot8414_))
                             '#!void
                             (begin
                               (set! _r-slots8404_
                                     (let ()
                                       (declare (not safe))
                                       (cons _slot8414_ _r-slots8404_)))
                               (let ()
                                 (declare (not safe))
                                 (table-set!
                                  _slot-table8403_
                                  _slot8414_
                                  _std-fields8401_))
                               (let ((__tmp8919 (symbol->keyword _slot8414_)))
                                 (declare (not safe))
                                 (table-set!
                                  _slot-table8403_
                                  __tmp8919
                                  _std-fields8401_))
                               (set! _std-fields8401_
                                     (let ()
                                       (declare (not safe))
                                       (+ _std-fields8401_ '1))))))))
                  (_process-slots8406_
                   (lambda (_g84098411_)
                     (for-each _process-slot8405_ _g84098411_))))
          (for-each
           (lambda (_mixin8408_)
             (let ((__tmp8920
                    (let ((__tmp8921
                           (let ()
                             (declare (not safe))
                             (type-descriptor-plist _mixin8408_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp8921 '()))))
               (declare (not safe))
               (_process-slots8406_ __tmp8920)))
           (reverse _mixins8398_))
          (let () (declare (not safe)) (_process-slots8406_ _slots8399_))
          (values _std-fields8401_
                  _field-list8402_
                  _slot-table8403_
                  (reverse _r-slots8404_)))))
    (define make-class-type
      (lambda (_id8360_
               _super8361_
               _slots8362_
               _name8363_
               _plist8364_
               _ctor8365_)
        (let ((_$e8369_
               (let ((__tmp8922
                      (lambda (_klass8367_)
                        (let ((__tmp8923
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass8367_))))
                          (declare (not safe))
                          (not __tmp8923)))))
                 (declare (not safe))
                 (find __tmp8922 _super8361_))))
          (if _$e8369_
              ((lambda (_g83718373_)
                 (error '"Illegal super class; not a type descriptor"
                        _g83718373_))
               _$e8369_)
              (let ((_$e8378_
                     (let ((__tmp8924
                            (lambda (_klass8376_)
                              (let ((__tmp8925
                                     (let ()
                                       (declare (not safe))
                                       (type-descriptor-plist _klass8376_))))
                                (declare (not safe))
                                (assgetq 'final: __tmp8925)))))
                       (declare (not safe))
                       (find __tmp8924 _super8361_))))
                (if _$e8378_
                    ((lambda (_g83808382_)
                       (error '"Cannot extend final class" _g83808382_))
                     _$e8378_)
                    '#!void))))
        (letrec* ((_std-super8385_ (apply base-struct _super8361_))
                  (_std-mixin8386_
                   (let ()
                     (declare (not safe))
                     (class-linearize-mixins _super8361_)))
                  (_g8926_ (let ((_g8927_ (let ()
                                            (declare (not safe))
                                            (compute-class-slots
                                             _std-super8385_
                                             _std-mixin8386_
                                             _slots8362_))))
                             (let ((_g8928_ (let ()
                                              (declare (not safe))
                                              (if (##values? _g8927_)
                                                  (##vector-length _g8927_)
                                                  1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g8928_ 4)))
                                   (error "Context expects 4 values" _g8928_)))
                             _g8927_))
                  (_std-fields8387_
                   (let () (declare (not safe)) (##vector-ref _g8926_ 0)))
                  (_field-list8388_
                   (let () (declare (not safe)) (##vector-ref _g8926_ 1)))
                  (_std-slots8389_
                   (let () (declare (not safe)) (##vector-ref _g8926_ 2)))
                  (_std-slot-list8390_
                   (let () (declare (not safe)) (##vector-ref _g8926_ 3)))
                  (_std-plist8391_
                   (let ((__tmp8934
                          (let ()
                            (declare (not safe))
                            (cons 'slots: _std-slot-list8390_)))
                         (__tmp8929
                          (let ((__tmp8932
                                 (let ((__tmp8933
                                        (let ()
                                          (declare (not safe))
                                          (cons 'direct-slots: _slots8362_))))
                                   (declare (not safe))
                                   (cons __tmp8933 _plist8364_)))
                                (__tmp8930
                                 (if _std-super8385_
                                     (let ((__tmp8931
                                            (let ()
                                              (declare (not safe))
                                              (cons 'fields:
                                                    _field-list8388_))))
                                       (declare (not safe))
                                       (cons __tmp8931 '()))
                                     '())))
                            (declare (not safe))
                            (foldr1 cons __tmp8932 __tmp8930))))
                     (declare (not safe))
                     (cons __tmp8934 __tmp8929)))
                  (_std-ctor8392_
                   (let ((_$e8394_ _ctor8365_))
                     (if _$e8394_
                         _$e8394_
                         (let ()
                           (declare (not safe))
                           (find-super-ctor _super8361_))))))
          (let ()
            (declare (not safe))
            (make-class-type-descriptor
             _id8360_
             _name8363_
             _std-super8385_
             _std-mixin8386_
             _std-fields8387_
             _std-plist8391_
             _std-ctor8392_
             _std-slots8389_)))))
    (define struct-precedence-list
      (lambda (_strukt8356_)
        (let ((__tmp8935
               (let ((_super8358_
                      (let ()
                        (declare (not safe))
                        (##type-super _strukt8356_))))
                 (if _super8358_
                     (let ()
                       (declare (not safe))
                       (struct-precedence-list _super8358_))
                     '()))))
          (declare (not safe))
          (cons _strukt8356_ __tmp8935))))
    (define class-precedence-list
      (lambda (_klass8352_)
        (let ((_mixins8354_
               (let ()
                 (declare (not safe))
                 (type-descriptor-mixin _klass8352_))))
          (if _mixins8354_
              (let () (declare (not safe)) (cons _klass8352_ _mixins8354_))
              (let ()
                (declare (not safe))
                (struct-precedence-list _klass8352_))))))
    (define class-linearize-mixins
      (lambda (_klass-lst8350_)
        (let ()
          (declare (not safe))
          (c3-linearize__%
           '()
           _klass-lst8350_
           class-precedence-list
           eqv?
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass8344_)
        (if (let ((__tmp8937
                   (let ()
                     (declare (not safe))
                     (type-descriptor-plist _klass8344_))))
              (declare (not safe))
              (assgetq 'final: __tmp8937))
            (lambda (_obj8346_)
              (let ((__tmp8936
                     (let () (declare (not safe)) (##type-id _klass8344_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj8346_ __tmp8936)))
            (lambda (_obj8348_)
              (let ()
                (declare (not safe))
                (class-instance? _klass8344_ _obj8348_))))))
    (define make-class-slot-accessor
      (lambda (_klass8339_ _slot8340_)
        (lambda (_obj8342_)
          (let () (declare (not safe)) (slot-ref _obj8342_ _slot8340_)))))
    (define make-class-slot-mutator
      (lambda (_klass8333_ _slot8334_)
        (lambda (_obj8336_ _val8337_)
          (let ()
            (declare (not safe))
            (slot-set! _obj8336_ _slot8334_ _val8337_)))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass8328_ _slot8329_)
        (lambda (_obj8331_)
          (let ()
            (declare (not safe))
            (unchecked-slot-ref _obj8331_ _slot8329_)))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass8322_ _slot8323_)
        (lambda (_obj8325_ _val8326_)
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _obj8325_ _slot8323_ _val8326_)))))
    (define class-slot-offset
      (lambda (_klass8314_ _slot8315_)
        (let ((_$e8317_
               (let ()
                 (declare (not safe))
                 (type-descriptor-slots _klass8314_))))
          (if _$e8317_
              ((lambda (_slots8320_)
                 (let ()
                   (declare (not safe))
                   (table-ref _slots8320_ _slot8315_ '#f)))
               _$e8317_)
              '#f))))
    (define class-slot-ref
      (lambda (_klass8308_ _obj8309_ _slot8310_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass8308_ _obj8309_))
            (let* ((_off8312_
                    (let ((__tmp8938
                           (let ()
                             (declare (not safe))
                             (object-type _obj8309_))))
                      (declare (not safe))
                      (class-slot-offset __tmp8938 _slot8310_)))
                   (__tmp8939
                    (let () (declare (not safe)) (##fx+ _off8312_ '1))))
              (declare (not safe))
              (##unchecked-structure-ref _obj8309_ __tmp8939 _klass8308_ '#f))
            (error '"not an instance" _klass8308_ _obj8309_))))
    (define class-slot-set!
      (lambda (_klass8301_ _obj8302_ _slot8303_ _val8304_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass8301_ _obj8302_))
            (let* ((_off8306_
                    (let ((__tmp8940
                           (let ()
                             (declare (not safe))
                             (object-type _obj8302_))))
                      (declare (not safe))
                      (class-slot-offset __tmp8940 _slot8303_)))
                   (__tmp8941
                    (let () (declare (not safe)) (##fx+ _off8306_ '1))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj8302_
               _val8304_
               __tmp8941
               _klass8301_
               '#f))
            (error '"not an instance" _klass8301_ _obj8302_))))
    (define class-subtype?
      (lambda (_klass8286_ _xklass8287_)
        (let* ((_klass-t8289_
                (let () (declare (not safe)) (##type-id _klass8286_)))
               (_$e8291_
                (let ((__tmp8942
                       (let () (declare (not safe)) (##type-id _xklass8287_))))
                  (declare (not safe))
                  (eq? _klass-t8289_ __tmp8942))))
          (if _$e8291_
              _$e8291_
              (let ((_$e8294_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _xklass8287_))))
                (if _$e8294_
                    ((lambda (_mixin8297_)
                       (if (let ((__tmp8943
                                  (lambda (_xklass8299_)
                                    (let ((__tmp8944
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _xklass8299_))))
                                      (declare (not safe))
                                      (eq? _klass-t8289_ __tmp8944)))))
                             (declare (not safe))
                             (find __tmp8943 _mixin8297_))
                           '#t
                           '#f))
                     _$e8294_)
                    '#f))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass8283_ _obj8284_)
        (let ((__tmp8945
               (let () (declare (not safe)) (##type-id _klass8283_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj8284_ __tmp8945))))
    (define struct-instance?
      (lambda (_klass8280_ _obj8281_)
        (let ((__tmp8946
               (let () (declare (not safe)) (##type-id _klass8280_))))
          (declare (not safe))
          (##structure-instance-of? _obj8281_ __tmp8946))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass8264_ _obj8265_)
        (if (let () (declare (not safe)) (object? _obj8265_))
            (let ((_klass-id8267_
                   (let () (declare (not safe)) (##type-id _klass8264_)))
                  (_type8268_
                   (let () (declare (not safe)) (object-type _obj8265_))))
              (if (let () (declare (not safe)) (type-descriptor? _type8268_))
                  (let ((_$e8270_
                         (let ((__tmp8947
                                (let ()
                                  (declare (not safe))
                                  (##type-id _type8268_))))
                           (declare (not safe))
                           (eq? __tmp8947 _klass-id8267_))))
                    (if _$e8270_
                        _$e8270_
                        (let ((_$e8273_
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-mixin _type8268_))))
                          (if _$e8273_
                              ((lambda (_mixin8276_)
                                 (let ((__tmp8948
                                        (lambda (_type8278_)
                                          (let ((__tmp8949
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _type8278_))))
                                            (declare (not safe))
                                            (eq? __tmp8949 _klass-id8267_)))))
                                   (declare (not safe))
                                   (ormap1 __tmp8948 _mixin8276_)))
                               _$e8273_)
                              '#f))))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass8259_ _k8260_)
        (let ((_obj8262_
               (let ((__tmp8950
                      (let () (declare (not safe)) (##fx+ _k8260_ '1))))
                 (declare (not safe))
                 (##make-vector __tmp8950 '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj8262_ '0 _klass8259_))
          (let ((__tmp8951 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj8262_ __tmp8951))
          _obj8262_)))
    (define make-struct-instance
      (lambda (_klass8249_ . _args8250_)
        (let* ((_fields8252_
                (let ()
                  (declare (not safe))
                  (type-descriptor-fields _klass8249_)))
               (_$e8254_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass8249_))))
          (if _$e8254_
              ((lambda (_kons-id8257_)
                 (let ((__tmp8953
                        (let ()
                          (declare (not safe))
                          (make-object _klass8249_ _fields8252_))))
                   (declare (not safe))
                   (__constructor-init!
                    _klass8249_
                    _kons-id8257_
                    __tmp8953
                    _args8250_)))
               _$e8254_)
              (if (let ((__tmp8952 (length _args8250_)))
                    (declare (not safe))
                    (##fx= _fields8252_ __tmp8952))
                  (apply ##structure _klass8249_ _args8250_)
                  (error '"Arguments don't match object size"
                         _klass8249_
                         _fields8252_
                         _args8250_))))))
    (define make-class-instance
      (lambda (_klass8239_ . _args8240_)
        (let* ((_obj8242_
                (let ((__tmp8954
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _klass8239_))))
                  (declare (not safe))
                  (make-object _klass8239_ __tmp8954)))
               (_$e8244_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass8239_))))
          (if _$e8244_
              ((lambda (_kons-id8247_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass8239_
                    _kons-id8247_
                    _obj8242_
                    _args8240_)))
               _$e8244_)
              (let ()
                (declare (not safe))
                (__class-instance-init! _klass8239_ _obj8242_ _args8240_))))))
    (define struct-instance-init!
      (lambda (_obj8236_ . _args8237_)
        (if (let ((__tmp8956 (length _args8237_))
                  (__tmp8955
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj8236_))))
              (declare (not safe))
              (##fx< __tmp8956 __tmp8955))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj8236_ _args8237_))
            (error '"Too many arguments for struct" _obj8236_ _args8237_))))
    (define __struct-instance-init!
      (lambda (_obj8195_ _args8196_)
        (let _lp8198_ ((_k8200_ '1) (_rest8201_ _args8196_))
          (let* ((_rest82028210_ _rest8201_)
                 (_else82048218_ (lambda () _obj8195_))
                 (_K82068224_
                  (lambda (_rest8221_ _hd8222_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj8195_ _k8200_ _hd8222_))
                    (let ((__tmp8957
                           (let () (declare (not safe)) (##fx+ _k8200_ '1))))
                      (declare (not safe))
                      (_lp8198_ __tmp8957 _rest8221_)))))
            (if (let () (declare (not safe)) (##pair? _rest82028210_))
                (let ((_hd82078227_
                       (let () (declare (not safe)) (##car _rest82028210_)))
                      (_tl82088229_
                       (let () (declare (not safe)) (##cdr _rest82028210_))))
                  (let* ((_hd8232_ _hd82078227_) (_rest8234_ _tl82088229_))
                    (declare (not safe))
                    (_K82068224_ _rest8234_ _hd8232_)))
                (let () (declare (not safe)) (_else82048218_)))))))
    (define class-instance-init!
      (lambda (_obj8192_ . _args8193_)
        (let ((__tmp8958
               (let () (declare (not safe)) (object-type _obj8192_))))
          (declare (not safe))
          (__class-instance-init! __tmp8958 _obj8192_ _args8193_))))
    (define __class-instance-init!
      (lambda (_klass8136_ _obj8137_ _args8138_)
        (let _lp8140_ ((_rest8142_ _args8138_))
          (let* ((_rest81438153_ _rest8142_)
                 (_else81458161_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest8142_))
                        _obj8137_
                        (error '"Unexpected class initializer arguments"
                               _rest8142_))))
                 (_K81478173_
                  (lambda (_rest8164_ _val8165_ _key8166_)
                    (let ((_$e8168_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass8136_ _key8166_))))
                      (if _$e8168_
                          ((lambda (_off8171_)
                             (let ((__tmp8959
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _off8171_ '1))))
                               (declare (not safe))
                               (##vector-set! _obj8137_ __tmp8959 _val8165_))
                             (let ()
                               (declare (not safe))
                               (_lp8140_ _rest8164_)))
                           _$e8168_)
                          (error '"No slot for keyword initializer"
                                 _klass8136_
                                 _key8166_))))))
            (if (let () (declare (not safe)) (##pair? _rest81438153_))
                (let ((_hd81488176_
                       (let () (declare (not safe)) (##car _rest81438153_)))
                      (_tl81498178_
                       (let () (declare (not safe)) (##cdr _rest81438153_))))
                  (let ((_key8181_ _hd81488176_))
                    (if (let () (declare (not safe)) (##pair? _tl81498178_))
                        (let ((_hd81508183_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl81498178_)))
                              (_tl81518185_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl81498178_))))
                          (let* ((_val8188_ _hd81508183_)
                                 (_rest8190_ _tl81518185_))
                            (declare (not safe))
                            (_K81478173_ _rest8190_ _val8188_ _key8181_)))
                        (let () (declare (not safe)) (_else81458161_)))))
                (let () (declare (not safe)) (_else81458161_)))))))
    (define constructor-init!
      (lambda (_klass8131_ _kons-id8132_ _obj8133_ . _args8134_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass8131_
           _kons-id8132_
           _obj8133_
           _args8134_))))
    (define __constructor-init!
      (lambda (_klass8121_ _kons-id8122_ _obj8123_ _args8124_)
        (let ((_$e8126_
               (let ()
                 (declare (not safe))
                 (__find-method _klass8121_ _kons-id8122_))))
          (if _$e8126_
              ((lambda (_kons8129_)
                 (apply _kons8129_ _obj8123_ _args8124_)
                 _obj8123_)
               _$e8126_)
              (error '"Missing constructor" _klass8121_ _kons-id8122_)))))
    (define struct-copy
      (lambda (_struct8119_)
        (if (let () (declare (not safe)) (##structure? _struct8119_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct8119_))
        (let () (declare (not safe)) (##structure-copy _struct8119_))))
    (define struct->list
      (lambda (_obj8117_)
        (if (let () (declare (not safe)) (object? _obj8117_))
            (let () (declare (not safe)) (##vector->list _obj8117_))
            (error '"Not an object" _obj8117_))))
    (define class->list
      (lambda (_obj8104_)
        (if (let () (declare (not safe)) (object? _obj8104_))
            (let ((_klass8106_
                   (let () (declare (not safe)) (object-type _obj8104_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass8106_))
                  (let ((_$e8108_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slots _klass8106_))))
                    (if _$e8108_
                        ((lambda (_slots8111_)
                           (let ((__tmp8960
                                  (let ((__tmp8961
                                         (lambda (_slot8113_ _off8114_ _r8115_)
                                           (if (keyword? _slot8113_)
                                               (let ((__tmp8962
                                                      (let ((__tmp8963
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-field-ref _obj8104_ _off8114_))))
                (declare (not safe))
                (cons __tmp8963 _r8115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _slot8113_ __tmp8962))
                                               _r8115_))))
                                    (declare (not safe))
                                    (hash-fold __tmp8961 '() _slots8111_))))
                             (declare (not safe))
                             (cons _klass8106_ __tmp8960)))
                         _$e8108_)
                        (list _klass8106_)))
                  (error '"Not a class type" _obj8104_ _klass8106_)))
            (error '"Not an object" _obj8104_))))
    (define unchecked-field-ref
      (lambda (_obj8101_ _off8102_)
        (let ((__tmp8964 (let () (declare (not safe)) (##fx+ _off8102_ '1))))
          (declare (not safe))
          (##vector-ref _obj8101_ __tmp8964))))
    (define unchecked-field-set!
      (lambda (_obj8097_ _off8098_ _val8099_)
        (let ((__tmp8965 (let () (declare (not safe)) (##fx+ _off8098_ '1))))
          (declare (not safe))
          (##vector-set! _obj8097_ __tmp8965 _val8099_))))
    (define unchecked-slot-ref
      (lambda (_obj8094_ _slot8095_)
        (let ((__tmp8966
               (let ((__tmp8967
                      (let () (declare (not safe)) (object-type _obj8094_))))
                 (declare (not safe))
                 (class-slot-offset __tmp8967 _slot8095_))))
          (declare (not safe))
          (unchecked-field-ref _obj8094_ __tmp8966))))
    (define unchecked-slot-set!
      (lambda (_obj8090_ _slot8091_ _val8092_)
        (let ((__tmp8968
               (let ((__tmp8969
                      (let () (declare (not safe)) (object-type _obj8090_))))
                 (declare (not safe))
                 (class-slot-offset __tmp8969 _slot8091_))))
          (declare (not safe))
          (unchecked-field-set! _obj8090_ __tmp8968 _val8092_))))
    (define slot-ref__%
      (lambda (_obj8066_ _slot8067_ _E8068_)
        (if (let () (declare (not safe)) (object? _obj8066_))
            (let* ((_klass8070_
                    (let () (declare (not safe)) (object-type _obj8066_)))
                   (_$e8073_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass8070_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass8070_ _slot8067_))
                        '#f)))
              (if _$e8073_
                  ((lambda (_off8076_)
                     (let ((__tmp8970
                            (let ()
                              (declare (not safe))
                              (##fx+ _off8076_ '1))))
                       (declare (not safe))
                       (##vector-ref _obj8066_ __tmp8970)))
                   _$e8073_)
                  (_E8068_ _obj8066_ _slot8067_)))
            (_E8068_ _obj8066_ _slot8067_))))
    (define slot-ref__0
      (lambda (_obj8081_ _slot8082_)
        (let ((_E8084_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj8081_ _slot8082_ _E8084_))))
    (define slot-ref
      (lambda _g8972_
        (let ((_g8971_ (let () (declare (not safe)) (##length _g8972_))))
          (cond ((let () (declare (not safe)) (##fx= _g8971_ 2))
                 (apply (lambda (_obj8081_ _slot8082_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj8081_ _slot8082_)))
                        _g8972_))
                ((let () (declare (not safe)) (##fx= _g8971_ 3))
                 (apply (lambda (_obj8086_ _slot8087_ _E8088_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj8086_ _slot8087_ _E8088_)))
                        _g8972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g8972_))))))
    (define slot-set!__%
      (lambda (_obj8038_ _slot8039_ _val8040_ _E8041_)
        (if (let () (declare (not safe)) (object? _obj8038_))
            (let* ((_klass8043_
                    (let () (declare (not safe)) (object-type _obj8038_)))
                   (_$e8046_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass8043_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass8043_ _slot8039_))
                        '#f)))
              (if _$e8046_
                  ((lambda (_off8049_)
                     (let ((__tmp8973
                            (let ()
                              (declare (not safe))
                              (##fx+ _off8049_ '1))))
                       (declare (not safe))
                       (##vector-set! _obj8038_ __tmp8973 _val8040_)))
                   _$e8046_)
                  (_E8041_ _obj8038_ _slot8039_)))
            (_E8041_ _obj8038_ _slot8039_))))
    (define slot-set!__0
      (lambda (_obj8054_ _slot8055_ _val8056_)
        (let ((_E8058_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj8054_ _slot8055_ _val8056_ _E8058_))))
    (define slot-set!
      (lambda _g8975_
        (let ((_g8974_ (let () (declare (not safe)) (##length _g8975_))))
          (cond ((let () (declare (not safe)) (##fx= _g8974_ 3))
                 (apply (lambda (_obj8054_ _slot8055_ _val8056_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj8054_ _slot8055_ _val8056_)))
                        _g8975_))
                ((let () (declare (not safe)) (##fx= _g8974_ 4))
                 (apply (lambda (_obj8060_ _slot8061_ _val8062_ _E8063_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj8060_
                             _slot8061_
                             _val8062_
                             _E8063_)))
                        _g8975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g8975_))))))
    (define __slot-error
      (lambda (_obj8034_ _slot8035_)
        (error '"Cannot find slot" _obj8034_ _slot8035_)))
    (define call-method
      (lambda (_obj8025_ _id8026_ . _args8027_)
        (let ((_$e8029_
               (let () (declare (not safe)) (method-ref _obj8025_ _id8026_))))
          (if _$e8029_
              ((lambda (_method8032_)
                 (apply _method8032_ _obj8025_ _args8027_))
               _$e8029_)
              (error '"Cannot find method" _obj8025_ _id8026_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj8022_ _id8023_)
        (if (let () (declare (not safe)) (object? _obj8022_))
            (let ((__tmp8976
                   (let () (declare (not safe)) (object-type _obj8022_))))
              (declare (not safe))
              (find-method __tmp8976 _id8023_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj8016_ _id8017_)
        (let ((_$e8019_
               (let () (declare (not safe)) (method-ref _obj8016_ _id8017_))))
          (if _$e8019_
              _$e8019_
              (error '"Missing method" _obj8016_ _id8017_)))))
    (define bound-method-ref
      (lambda (_obj8006_ _id8007_)
        (let ((_$e8009_
               (let () (declare (not safe)) (method-ref _obj8006_ _id8007_))))
          (if _$e8009_
              ((lambda (_method8012_)
                 (lambda _args8014_ (apply _method8012_ _obj8006_ _args8014_)))
               _$e8009_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj7999_ _id8000_)
        (let ((_method8002_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj7999_ _id8000_))))
          (lambda _args8004_ (apply _method8002_ _obj7999_ _args8004_)))))
    (define find-method
      (lambda (_klass7993_ _id7994_)
        (if (let () (declare (not safe)) (type-descriptor? _klass7993_))
            (let () (declare (not safe)) (__find-method _klass7993_ _id7994_))
            (if (let () (declare (not safe)) (##type? _klass7993_))
                (let ((_$e7996_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass7993_ _id7994_))))
                  (if _$e7996_
                      _$e7996_
                      (let ((__tmp8977
                             (let ()
                               (declare (not safe))
                               (##type-super _klass7993_))))
                        (declare (not safe))
                        (builtin-find-method __tmp8977 _id7994_))))
                '#f))))
    (define __find-method
      (lambda (_klass7982_ _id7983_)
        (let ((_$e7985_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass7982_ _id7983_))))
          (if _$e7985_
              _$e7985_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass7982_))
                  '#f
                  (let ((_$e7988_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-mixin _klass7982_))))
                    (if _$e7988_
                        ((lambda (_mixin7991_)
                           (let ()
                             (declare (not safe))
                             (mixin-find-method _mixin7991_ _id7983_)))
                         _$e7988_)
                        (let ((__tmp8978
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass7982_))))
                          (declare (not safe))
                          (struct-find-method __tmp8978 _id7983_)))))))))
    (define struct-find-method
      (lambda (_klass7973_ _id7974_)
        (if (let () (declare (not safe)) (type-descriptor? _klass7973_))
            (let ((_$e7976_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass7973_ _id7974_))))
              (if _$e7976_
                  _$e7976_
                  (let ((__tmp8980
                         (let ()
                           (declare (not safe))
                           (##type-super _klass7973_))))
                    (declare (not safe))
                    (struct-find-method __tmp8980 _id7974_))))
            (if (let () (declare (not safe)) (##type? _klass7973_))
                (let ((_$e7979_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass7973_ _id7974_))))
                  (if _$e7979_
                      _$e7979_
                      (let ((__tmp8979
                             (let ()
                               (declare (not safe))
                               (##type-super _klass7973_))))
                        (declare (not safe))
                        (builtin-find-method __tmp8979 _id7974_))))
                '#f))))
    (define class-find-method
      (lambda (_klass7967_ _id7968_)
        (if (let () (declare (not safe)) (type-descriptor? _klass7967_))
            (let ((_$e7970_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass7967_ _id7968_))))
              (if _$e7970_
                  _$e7970_
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass7967_ _id7968_))))
            '#f)))
    (define mixin-find-method
      (lambda (_mixin7924_ _id7925_)
        (let _lp7927_ ((_rest7929_ _mixin7924_))
          (let* ((_rest79307938_ _rest7929_)
                 (_else79327946_ (lambda () '#f))
                 (_K79347955_
                  (lambda (_rest7949_ _klass7950_)
                    (let ((_$e7952_
                           (let ()
                             (declare (not safe))
                             (direct-method-ref _klass7950_ _id7925_))))
                      (if _$e7952_
                          _$e7952_
                          (let ()
                            (declare (not safe))
                            (_lp7927_ _rest7949_)))))))
            (if (let () (declare (not safe)) (##pair? _rest79307938_))
                (let ((_hd79357958_
                       (let () (declare (not safe)) (##car _rest79307938_)))
                      (_tl79367960_
                       (let () (declare (not safe)) (##cdr _rest79307938_))))
                  (let* ((_klass7963_ _hd79357958_) (_rest7965_ _tl79367960_))
                    (declare (not safe))
                    (_K79347955_ _rest7965_ _klass7963_)))
                (let () (declare (not safe)) (_else79327946_)))))))
    (define builtin-find-method
      (lambda (_klass7918_ _id7919_)
        (if (let () (declare (not safe)) (##type? _klass7918_))
            (let ((_$e7921_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass7918_ _id7919_))))
              (if _$e7921_
                  _$e7921_
                  (let ((__tmp8981
                         (let ()
                           (declare (not safe))
                           (##type-super _klass7918_))))
                    (declare (not safe))
                    (builtin-find-method __tmp8981 _id7919_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass7910_ _id7911_)
        (let ((_$e7913_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass7910_))))
          (if _$e7913_
              ((lambda (_ht7916_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht7916_ _id7911_ '#f)))
               _$e7913_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass7902_ _id7903_)
        (let ((_$e7905_
               (let ()
                 (declare (not safe))
                 (type-descriptor-mixin _klass7902_))))
          (if _$e7905_
              ((lambda (_mixin7908_)
                 (let ()
                   (declare (not safe))
                   (mixin-find-method _mixin7908_ _id7903_)))
               _$e7905_)
              '#f))))
    (define builtin-method-ref
      (lambda (_klass7894_ _id7895_)
        (let ((_$e7897_
               (let ((__tmp8982
                      (let () (declare (not safe)) (##type-id _klass7894_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp8982 '#f))))
          (if _$e7897_
              ((lambda (_mtab7900_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab7900_ _id7895_ '#f)))
               _$e7897_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass7860_ _id7861_ _proc7862_ _rebind?7863_)
        (letrec ((_bind!7865_
                  (lambda (_ht7878_)
                    (if (and (let () (declare (not safe)) (not _rebind?7863_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht7878_ _id7861_ '#f)))
                        (error '"Method already bound" _klass7860_ _id7861_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht7878_ _id7861_ _proc7862_))))))
          (if (let () (declare (not safe)) (procedure? _proc7862_))
              '#!void
              (error '"Bad method; expected procedure" _proc7862_))
          (if (let () (declare (not safe)) (type-descriptor? _klass7860_))
              (let ((_ht7867_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass7860_))))
                (if _ht7867_
                    (let () (declare (not safe)) (_bind!7865_ _ht7867_))
                    (let ((_ht7869_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass7860_ _ht7869_))
                      (let () (declare (not safe)) (_bind!7865_ _ht7869_)))))
              (if (let () (declare (not safe)) (##type? _klass7860_))
                  (let ((_ht7876_
                         (let ((_$e7871_
                                (let ((__tmp8983
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass7860_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp8983
                                   '#f))))
                           (if _$e7871_
                               _$e7871_
                               (let ((_ht7874_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp8984
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass7860_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp8984
                                    _ht7874_))
                                 _ht7874_)))))
                    (declare (not safe))
                    (_bind!7865_ _ht7876_))
                  (error '"Bad class; expected type-descriptor"
                         _klass7860_))))))
    (define bind-method!__0
      (lambda (_klass7883_ _id7884_ _proc7885_)
        (let ((_rebind?7887_ '#t))
          (declare (not safe))
          (bind-method!__% _klass7883_ _id7884_ _proc7885_ _rebind?7887_))))
    (define bind-method!
      (lambda _g8986_
        (let ((_g8985_ (let () (declare (not safe)) (##length _g8986_))))
          (cond ((let () (declare (not safe)) (##fx= _g8985_ 3))
                 (apply (lambda (_klass7883_ _id7884_ _proc7885_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass7883_ _id7884_ _proc7885_)))
                        _g8986_))
                ((let () (declare (not safe)) (##fx= _g8985_ 4))
                 (apply (lambda (_klass7889_ _id7890_ _proc7891_ _rebind?7892_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass7889_
                             _id7890_
                             _proc7891_
                             _rebind?7892_)))
                        _g8986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g8986_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc7856_ _specializer7857_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc7856_ _specializer7857_))))
    (define seal-class!
      (lambda (_klass7771_)
        (letrec ((_collect-methods!7773_
                  (lambda (_mtab7789_)
                    (letrec ((_merge!7791_
                              (lambda (_tab7851_)
                                (let ((__tmp8987
                                       (lambda (_id7853_ _proc7854_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab7789_
                                            _id7853_
                                            _proc7854_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp8987 _tab7851_))))
                             (_collect-direct-methods!7792_
                              (lambda (_klass7846_)
                                (let ((_$e7848_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass7846_))))
                                  (if _$e7848_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!7791_ _$e7848_))
                                      '#!void)))))
                      (let ((_$e7794_
                             (let ()
                               (declare (not safe))
                               (type-descriptor-mixin _klass7771_))))
                        (if _$e7794_
                            ((lambda (_mixin7797_)
                               (let _recur7799_ ((_rest7801_ _mixin7797_))
                                 (let* ((_rest78027810_ _rest7801_)
                                        (_else78047818_ (lambda () '#!void))
                                        (_K78067827_
                                         (lambda (_rest7821_ _klass7822_)
                                           (let ()
                                             (declare (not safe))
                                             (_recur7799_ _rest7821_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (type-descriptor?
                                                  _klass7822_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_collect-direct-methods!7792_
                                                  _klass7822_))
                                               (let ((_$e7824_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type? _klass7822_))
                                                          (let ((__tmp8991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##type-id _klass7822_))))
                    (declare (not safe))
                    (table-ref __builtin-type-methods __tmp8991 '#f))
                  '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e7824_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_merge!7791_ _$e7824_))
                                                     '#!void))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest78027810_))
                                       (let ((_hd78077830_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest78027810_)))
                                             (_tl78087832_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest78027810_))))
                                         (let* ((_klass7835_ _hd78077830_)
                                                (_rest7837_ _tl78087832_))
                                           (declare (not safe))
                                           (_K78067827_
                                            _rest7837_
                                            _klass7835_)))
                                       '#!void))))
                             _$e7794_)
                            (let _recur7839_ ((_klass7841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass7771_))))
                              (if (let ()
                                    (declare (not safe))
                                    (type-descriptor? _klass7841_))
                                  (begin
                                    (let ((__tmp8990
                                           (let ()
                                             (declare (not safe))
                                             (##type-super _klass7841_))))
                                      (declare (not safe))
                                      (_recur7839_ __tmp8990))
                                    (let ()
                                      (declare (not safe))
                                      (_collect-direct-methods!7792_
                                       _klass7841_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _klass7841_))
                                      (begin
                                        (let ((__tmp8988
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass7841_))))
                                          (declare (not safe))
                                          (_recur7839_ __tmp8988))
                                        (let ((_$e7843_
                                               (let ((__tmp8989
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass7841_))))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __builtin-type-methods
                                                  __tmp8989
                                                  '#f))))
                                          (if _$e7843_
                                              (let ()
                                                (declare (not safe))
                                                (_merge!7791_ _$e7843_))
                                              '#!void)))
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_collect-direct-methods!7792_ _klass7771_))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass7771_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass7771_))
                  '#!void
                  (begin
                    (if (let ((__tmp8992
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-plist _klass7771_))))
                          (declare (not safe))
                          (assgetq 'final: __tmp8992))
                        '#!void
                        (error '"Cannot seal non-final class" _klass7771_))
                    (let ((_vtab7775_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab7776_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!7773_ _mtab7776_))
                      (let ((__tmp8993
                             (lambda (_id7778_ _proc7779_)
                               (let ((_$e7781_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc7779_
                                         '#f))))
                                 (if _$e7781_
                                     ((lambda (_specializer7784_)
                                        (let ((_proc7786_
                                               (_specializer7784_ _klass7771_))
                                              (_gid7787_
                                               (let ((__tmp8994
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass7771_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp8994
                                                  '"::["
                                                  _id7778_
                                                  '"]"))))
                                          (eval (let ((__tmp8995
                                                       (let ((__tmp8996
                                                              (let ((__tmp8997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp8998
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc7786_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp8998))))
                        (declare (not safe))
                        (cons __tmp8997 '()))))
                 (declare (not safe))
                 (cons _gid7787_ __tmp8996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp8995)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab7775_
                                             _id7778_
                                             _proc7786_))))
                                      _$e7781_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab7775_
                                        _id7778_
                                        _proc7779_)))))))
                        (declare (not safe))
                        (table-for-each __tmp8993 _mtab7776_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass7771_ _vtab7775_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass7771_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass7708_ _obj7709_ _id7710_)
        (let ((_klass7712_
               (let () (declare (not safe)) (object-type _obj7709_)))
              (_type-id7713_
               (let () (declare (not safe)) (##type-id _subklass7708_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass7712_))
              (let ((_$e7715_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _klass7712_))))
                (if _$e7715_
                    ((lambda (_mixin7718_)
                       (let _lp7720_ ((_rest7722_
                                       (let ()
                                         (declare (not safe))
                                         (cons _klass7712_ _mixin7718_))))
                         (let* ((_rest77237731_ _rest7722_)
                                (_else77257739_ (lambda () '#f))
                                (_K77277745_
                                 (lambda (_rest7742_ _klass7743_)
                                   (if (let ((__tmp9003
                                              (let ()
                                                (declare (not safe))
                                                (##type-id _klass7743_))))
                                         (declare (not safe))
                                         (eq? _type-id7713_ __tmp9003))
                                       (let ()
                                         (declare (not safe))
                                         (mixin-find-method
                                          _rest7742_
                                          _id7710_))
                                       (let ()
                                         (declare (not safe))
                                         (_lp7720_ _rest7742_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest77237731_))
                               (let ((_hd77287748_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest77237731_)))
                                     (_tl77297750_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest77237731_))))
                                 (let* ((_klass7753_ _hd77287748_)
                                        (_rest7755_ _tl77297750_))
                                   (declare (not safe))
                                   (_K77277745_ _rest7755_ _klass7753_)))
                               (let ()
                                 (declare (not safe))
                                 (_else77257739_))))))
                     _$e7715_)
                    (let _lp7757_ ((_klass7759_ _klass7712_))
                      (if (let ((__tmp9002
                                 (let ()
                                   (declare (not safe))
                                   (##type-id _klass7759_))))
                            (declare (not safe))
                            (eq? _type-id7713_ __tmp9002))
                          (let ((__tmp9001
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass7759_))))
                            (declare (not safe))
                            (struct-find-method __tmp9001 _id7710_))
                          (let ((_$e7761_
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass7759_))))
                            (if _$e7761_
                                (let ()
                                  (declare (not safe))
                                  (_lp7757_ _$e7761_))
                                '#f))))))
              (if (let () (declare (not safe)) (##type? _klass7712_))
                  (let _lp7764_ ((_klass7766_ _klass7712_))
                    (if (let ((__tmp9000
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass7766_))))
                          (declare (not safe))
                          (eq? _type-id7713_ __tmp9000))
                        (let ((__tmp8999
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass7766_))))
                          (declare (not safe))
                          (builtin-find-method __tmp8999 _id7710_))
                        (let ((_$e7768_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass7766_))))
                          (if _$e7768_
                              (let () (declare (not safe)) (_lp7764_ _$e7768_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass7698_ _obj7699_ _id7700_ . _args7701_)
        (let ((_$e7703_
               (let ()
                 (declare (not safe))
                 (next-method _subklass7698_ _obj7699_ _id7700_))))
          (if _$e7703_
              ((lambda (_methodf7706_)
                 (apply _methodf7706_ _obj7699_ _args7701_))
               _$e7703_)
              (error '"Cannot find next method" _obj7699_ _id7700_)))))
    (define write-style (lambda (_we7696_) (macro-writeenv-style _we7696_)))
    (define write-object
      (lambda (_we7688_ _obj7689_)
        (let ((_$e7691_
               (let () (declare (not safe)) (method-ref _obj7689_ ':wr))))
          (if _$e7691_
              ((lambda (_method7694_) (_method7694_ _obj7689_ _we7688_))
               _$e7691_)
              (let ()
                (declare (not safe))
                (##default-wr _we7688_ _obj7689_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
