(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1698333192)
  (begin
    (define type-descriptor?
      (lambda (_klass10898_)
        (if (let () (declare (not safe)) (##type? _klass10898_))
            (let ((__tmp10908
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass10898_))))
              (declare (not safe))
              (eq? __tmp10908 '12))
            '#f)))
    (define struct-type?
      (lambda (_klass10896_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10896_))
            (let ((__tmp10909
                   (let ()
                     (declare (not safe))
                     (type-descriptor-mixin _klass10896_))))
              (declare (not safe))
              (not __tmp10909))
            '#f)))
    (define class-type?
      (lambda (_klass10894_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10894_))
            (if (let ()
                  (declare (not safe))
                  (type-descriptor-mixin _klass10894_))
                '#t
                '#f)
            '#f)))
    (define make-type-descriptor
      (lambda (_type-id10790_
               _type-name10791_
               _type-super10792_
               _rtd-mixin10793_
               _rtd-fields10794_
               _rtd-plist10795_
               _rtd-ctor10796_
               _rtd-slots10797_
               _rtd-methods10798_)
        (letrec ((_put-props!10800_
                  (lambda (_ht10874_ _key10875_)
                    (letrec ((_put-plist!10877_
                              (lambda (_ht10883_ _key10884_ _plist10885_)
                                (let ((_$e10887_
                                       (let ()
                                         (declare (not safe))
                                         (assgetq _key10884_ _plist10885_))))
                                  (if _$e10887_
                                      ((lambda (_lst10890_)
                                         (for-each
                                          (lambda (_id10892_)
                                            (let ()
                                              (declare (not safe))
                                              (table-set!
                                               _ht10883_
                                               _id10892_
                                               '#t)))
                                          _lst10890_))
                                       _$e10887_)
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-plist!10877_
                         _ht10874_
                         _key10875_
                         _rtd-plist10795_))
                      (if _rtd-mixin10793_
                          (for-each
                           (lambda (_klass10879_)
                             (if (let ()
                                   (declare (not safe))
                                   (type-descriptor-mixin _klass10879_))
                                 (let ((_plist10881_
                                        (let ()
                                          (declare (not safe))
                                          (type-descriptor-plist
                                           _klass10879_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (assgetq 'transparent: _plist10881_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!10877_
                                          _ht10874_
                                          'slots:
                                          _plist10881_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!10877_
                                          _ht10874_
                                          _key10875_
                                          _plist10881_))))
                                 '#!void))
                           _rtd-mixin10793_)
                          '#!void)))))
          (let* ((_transparent?10802_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _rtd-plist10795_)))
                 (_field-names10807_
                  (let ((_$e10804_ (assq 'fields: _rtd-plist10795_)))
                    (if _$e10804_ (cdr _$e10804_) '())))
                 (_field-names10814_
                  (let ((_$e10809_ (assq 'slots: _rtd-plist10795_)))
                    (if _$e10809_
                        ((lambda (_slots10812_)
                           (append _field-names10807_ (cdr _slots10812_)))
                         _$e10809_)
                        _field-names10807_)))
                 (_g10910_
                  (if (fx= _rtd-fields10794_ (length _field-names10814_))
                      '#!void
                      (error '"Bad field descriptor; length mismatch"
                             _type-id10790_
                             _rtd-fields10794_
                             _field-names10814_)))
                 (_canonical-fields10817_
                  (if _type-super10792_
                      (list-tail
                       _field-names10814_
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _type-super10792_)))
                      _field-names10814_))
                 (_printable10821_
                  (if _transparent?10802_
                      '#f
                      (let ((_ht10819_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10800_ _ht10819_ 'print:))
                        _ht10819_)))
                 (_equality10825_
                  (if _transparent?10802_
                      '#f
                      (let ((_ht10823_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10800_ _ht10823_ 'equal:))
                        _ht10823_)))
                 (_field-info10866_
                  (let _recur10827_ ((_rest10829_ _canonical-fields10817_))
                    (let* ((_rest1083010838_ _rest10829_)
                           (_else1083210846_ (lambda () '()))
                           (_K1083410854_
                            (lambda (_rest10849_ _id10850_)
                              (let* ((_flags10852_
                                      (if _transparent?10802_
                                          '0
                                          (let ((__tmp10912
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _printable10821_
                                                        _id10850_
                                                        '#f))
                                                     '0
                                                     '1))
                                                (__tmp10911
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _equality10825_
                                                        _id10850_
                                                        '#f))
                                                     '0
                                                     '4)))
                                            (declare (not safe))
                                            (##fxior __tmp10912 __tmp10911))))
                                     (__tmp10913
                                      (let ((__tmp10914
                                             (let ((__tmp10915
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur10827_
                                                       _rest10849_))))
                                               (declare (not safe))
                                               (cons '#f __tmp10915))))
                                        (declare (not safe))
                                        (cons _flags10852_ __tmp10914))))
                                (declare (not safe))
                                (cons _id10850_ __tmp10913)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest1083010838_))
                          (let ((_hd1083510857_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest1083010838_)))
                                (_tl1083610859_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest1083010838_))))
                            (let* ((_id10862_ _hd1083510857_)
                                   (_rest10864_ _tl1083610859_))
                              (declare (not safe))
                              (_K1083410854_ _rest10864_ _id10862_)))
                          (let () (declare (not safe)) (_else1083210846_))))))
                 (_opaque?10871_
                  (if (or _transparent?10802_ (assq 'equal: _rtd-plist10795_))
                      (if _type-super10792_
                          (let ((__tmp10916
                                 (let ((__tmp10917
                                        (let ()
                                          (declare (not safe))
                                          (##type-flags _type-super10792_))))
                                   (declare (not safe))
                                   (##fxand __tmp10917 '1))))
                            (declare (not safe))
                            (##fx= __tmp10916 '1))
                          '#f)
                      '#t)))
            (let ((__tmp10919 (+ '24 (if _opaque?10871_ '1 '0)))
                  (__tmp10918 (list->vector _field-info10866_)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id10790_
               _type-name10791_
               __tmp10919
               _type-super10792_
               __tmp10918
               _rtd-mixin10793_
               _rtd-fields10794_
               _rtd-plist10795_
               _rtd-ctor10796_
               _rtd-slots10797_
               _rtd-methods10798_))))))
    (define make-struct-type-descriptor
      (lambda (_id10783_
               _name10784_
               _super10785_
               _fields10786_
               _plist10787_
               _ctor10788_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id10783_
           _name10784_
           _super10785_
           '#f
           _fields10786_
           _plist10787_
           _ctor10788_
           '#f
           '#f))))
    (define make-class-type-descriptor
      (lambda (_id10774_
               _name10775_
               _super10776_
               _mixin10777_
               _fields10778_
               _plist10779_
               _ctor10780_
               _slots10781_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id10774_
           _name10775_
           _super10776_
           _mixin10777_
           _fields10778_
           _plist10779_
           _ctor10780_
           _slots10781_
           '#f))))
    (define type-descriptor-mixin
      (lambda (_klass10772_)
        (let () (declare (not safe)) (##vector-ref _klass10772_ '6))))
    (define type-descriptor-fields
      (lambda (_klass10770_)
        (let () (declare (not safe)) (##vector-ref _klass10770_ '7))))
    (define type-descriptor-plist
      (lambda (_klass10768_)
        (let () (declare (not safe)) (##vector-ref _klass10768_ '8))))
    (define type-descriptor-ctor
      (lambda (_klass10766_)
        (let () (declare (not safe)) (##vector-ref _klass10766_ '9))))
    (define type-descriptor-slots
      (lambda (_klass10764_)
        (let () (declare (not safe)) (##vector-ref _klass10764_ '10))))
    (define type-descriptor-methods
      (lambda (_klass10762_)
        (let () (declare (not safe)) (##vector-ref _klass10762_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass10759_ _ht10760_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass10759_ '11 _ht10760_))))
    (define type-descriptor-sealed?
      (lambda (_klass10757_)
        (let ((__tmp10920
               (let () (declare (not safe)) (##type-flags _klass10757_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp10920))))
    (define type-descriptor-seal!
      (lambda (_klass10755_)
        (let ((__tmp10921
               (let ((__tmp10923
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp10922
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass10755_))))
                 (declare (not safe))
                 (##fxior __tmp10923 __tmp10922))))
          (declare (not safe))
          (##vector-set! _klass10755_ '3 __tmp10921))))
    (define make-struct-type__%
      (lambda (_id10704_
               _super10705_
               _fields10706_
               _name10707_
               _plist10708_
               _ctor10709_
               _field-names10710_)
        (if (and _super10705_
                 (let ((__tmp10924
                        (let ()
                          (declare (not safe))
                          (struct-type? _super10705_))))
                   (declare (not safe))
                   (not __tmp10924)))
            (error '"Illegal super type; not a struct-type" _super10705_)
            '#!void)
        (if (and _super10705_
                 (let ((__tmp10925
                        (let ()
                          (declare (not safe))
                          (type-descriptor-plist _super10705_))))
                   (declare (not safe))
                   (assgetq 'final: __tmp10925)))
            (error '"Cannot extend final struct" _super10705_)
            '#!void)
        (let* ((_super-fields10712_
                (if _super10705_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-fields _super10705_))
                    '0))
               (_std-fields10714_ (fx+ _fields10706_ _super-fields10712_))
               (_std-field-names10724_
                (let* ((_super-fields10716_
                        (if _super10705_
                            (let ((__tmp10926
                                   (let ()
                                     (declare (not safe))
                                     (type-descriptor-plist _super10705_))))
                              (declare (not safe))
                              (assgetq 'fields: __tmp10926))
                            '()))
                       (_field-names10721_
                        (let ((_$e10718_ _field-names10710_))
                          (if _$e10718_
                              _$e10718_
                              (make-list _fields10706_ ':)))))
                  (append _super-fields10716_ _field-names10721_)))
               (_g10928_
                (if (let ((__tmp10927 (length _std-field-names10724_)))
                      (declare (not safe))
                      (##fx= _std-fields10714_ __tmp10927))
                    '#!void
                    (error '"Bad field specification; length mismatch"
                           _id10704_
                           _std-fields10714_
                           _std-field-names10724_)))
               (_std-plist10727_
                (let ((__tmp10929
                       (let ()
                         (declare (not safe))
                         (cons 'fields: _std-field-names10724_))))
                  (declare (not safe))
                  (cons __tmp10929 _plist10708_)))
               (_ctor10732_
                (let ((_$e10729_ _ctor10709_))
                  (if _$e10729_
                      _$e10729_
                      (if _super10705_
                          (let ()
                            (declare (not safe))
                            (type-descriptor-ctor _super10705_))
                          '#f)))))
          (let ()
            (declare (not safe))
            (make-struct-type-descriptor
             _id10704_
             _name10707_
             _super10705_
             _std-fields10714_
             _std-plist10727_
             _ctor10732_)))))
    (define make-struct-type__0
      (lambda (_id10738_
               _super10739_
               _fields10740_
               _name10741_
               _plist10742_
               _ctor10743_)
        (let ((_field-names10745_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id10738_
           _super10739_
           _fields10740_
           _name10741_
           _plist10742_
           _ctor10743_
           _field-names10745_))))
    (define make-struct-type
      (lambda _g10931_
        (let ((_g10930_ (let () (declare (not safe)) (##length _g10931_))))
          (cond ((let () (declare (not safe)) (##fx= _g10930_ 6))
                 (apply (lambda (_id10738_
                                 _super10739_
                                 _fields10740_
                                 _name10741_
                                 _plist10742_
                                 _ctor10743_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id10738_
                             _super10739_
                             _fields10740_
                             _name10741_
                             _plist10742_
                             _ctor10743_)))
                        _g10931_))
                ((let () (declare (not safe)) (##fx= _g10930_ 7))
                 (apply (lambda (_id10747_
                                 _super10748_
                                 _fields10749_
                                 _name10750_
                                 _plist10751_
                                 _ctor10752_
                                 _field-names10753_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id10747_
                             _super10748_
                             _fields10749_
                             _name10750_
                             _plist10751_
                             _ctor10752_
                             _field-names10753_)))
                        _g10931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g10931_))))))
    (define make-struct-predicate
      (lambda (_klass10695_)
        (let ((_tid10697_
               (let () (declare (not safe)) (##type-id _klass10695_))))
          (if (let ((__tmp10932
                     (let ()
                       (declare (not safe))
                       (type-descriptor-plist _klass10695_))))
                (declare (not safe))
                (assgetq 'final: __tmp10932))
              (lambda (_obj10699_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj10699_ _tid10697_)))
              (lambda (_obj10701_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj10701_ _tid10697_)))))))
    (define make-struct-field-accessor
      (lambda (_klass10688_ _field10689_)
        (let ((_off10691_
               (let ((__tmp10933
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10688_ _field10689_))))
                 (declare (not safe))
                 (##fx+ __tmp10933 '1))))
          (lambda (_obj10693_)
            (let ()
              (declare (not safe))
              (##structure-ref _obj10693_ _off10691_ _klass10688_ '#f))))))
    (define make-struct-field-mutator
      (lambda (_klass10680_ _field10681_)
        (let ((_off10683_
               (let ((__tmp10934
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10680_ _field10681_))))
                 (declare (not safe))
                 (##fx+ __tmp10934 '1))))
          (lambda (_obj10685_ _val10686_)
            (let ()
              (declare (not safe))
              (##structure-set!
               _obj10685_
               _val10686_
               _off10683_
               _klass10680_
               '#f))))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass10673_ _field10674_)
        (let ((_off10676_
               (let ((__tmp10935
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10673_ _field10674_))))
                 (declare (not safe))
                 (##fx+ __tmp10935 '1))))
          (lambda (_obj10678_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj10678_
               _off10676_
               _klass10673_
               '#f))))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass10665_ _field10666_)
        (let ((_off10668_
               (let ((__tmp10936
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10665_ _field10666_))))
                 (declare (not safe))
                 (##fx+ __tmp10936 '1))))
          (lambda (_obj10670_ _val10671_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj10670_
               _val10671_
               _off10668_
               _klass10665_
               '#f))))))
    (define struct-field-offset
      (lambda (_klass10659_ _field10660_)
        (let ((__tmp10937
               (let ((_$e10662_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass10659_))))
                 (if _$e10662_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-fields _$e10662_))
                     '0))))
          (declare (not safe))
          (##fx+ _field10660_ __tmp10937))))
    (define struct-field-ref
      (lambda (_klass10655_ _obj10656_ _off10657_)
        (let ((__tmp10938 (let () (declare (not safe)) (##fx+ _off10657_ '1))))
          (declare (not safe))
          (##structure-ref _obj10656_ __tmp10938 _klass10655_ '#f))))
    (define struct-field-set!
      (lambda (_klass10650_ _obj10651_ _off10652_ _val10653_)
        (let ((__tmp10939 (let () (declare (not safe)) (##fx+ _off10652_ '1))))
          (declare (not safe))
          (##structure-set!
           _obj10651_
           _val10653_
           __tmp10939
           _klass10650_
           '#f))))
    (define struct-subtype?
      (lambda (_klass10641_ _xklass10642_)
        (let ((_klass-t10644_
               (let () (declare (not safe)) (##type-id _klass10641_))))
          (let _lp10646_ ((_next10648_ _xklass10642_))
            (if (let () (declare (not safe)) (not _next10648_))
                '#f
                (if (let ((__tmp10941
                           (let ()
                             (declare (not safe))
                             (##type-id _next10648_))))
                      (declare (not safe))
                      (eq? _klass-t10644_ __tmp10941))
                    '#t
                    (let ((__tmp10940
                           (let ()
                             (declare (not safe))
                             (##type-super _next10648_))))
                      (declare (not safe))
                      (_lp10646_ __tmp10940))))))))
    (define make-class-type
      (lambda (_id10348_
               _super10349_
               _slots10350_
               _name10351_
               _plist10352_
               _ctor10353_)
        (letrec ((_class-slots10355_
                  (lambda (_klass10639_)
                    (let ((__tmp10942
                           (let ()
                             (declare (not safe))
                             (type-descriptor-plist _klass10639_))))
                      (declare (not safe))
                      (assgetq 'slots: __tmp10942))))
                 (_make-slots10356_
                  (lambda (_off10590_)
                    (let ((_slot-table10592_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let _lp10594_ ((_rest10596_ _super10349_)
                                      (_off10597_ _off10590_)
                                      (_slot-list10598_ '()))
                        (let* ((_rest1059910607_ _rest10596_)
                               (_else1060110618_
                                (lambda ()
                                  (let ((__tmp10943
                                         (lambda (_off10615_ _slot-list10616_)
                                           (values _off10615_
                                                   _slot-table10592_
                                                   (reverse _slot-list10616_)))))
                                    (declare (not safe))
                                    (_merge-slots10357_
                                     _slot-table10592_
                                     _slots10350_
                                     _off10597_
                                     _slot-list10598_
                                     __tmp10943))))
                               (_K1060310627_
                                (lambda (_rest10621_ _hd10622_)
                                  (let ((__tmp10945
                                         (let ()
                                           (declare (not safe))
                                           (_class-slots10355_ _hd10622_)))
                                        (__tmp10944
                                         (lambda (_off10624_ _slot-list10625_)
                                           (let ()
                                             (declare (not safe))
                                             (_lp10594_
                                              _rest10621_
                                              _off10624_
                                              _slot-list10625_)))))
                                    (declare (not safe))
                                    (_merge-slots10357_
                                     _slot-table10592_
                                     __tmp10945
                                     _off10597_
                                     _slot-list10598_
                                     __tmp10944)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1059910607_))
                              (let ((_hd1060410630_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1059910607_)))
                                    (_tl1060510632_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1059910607_))))
                                (let* ((_hd10635_ _hd1060410630_)
                                       (_rest10637_ _tl1060510632_))
                                  (declare (not safe))
                                  (_K1060310627_ _rest10637_ _hd10635_)))
                              (let ()
                                (declare (not safe))
                                (_else1060110618_))))))))
                 (_merge-slots10357_
                  (lambda (_ht10545_ _lst10546_ _off10547_ _r10548_ _K10549_)
                    (let _lp10551_ ((_rest10553_ _lst10546_)
                                    (_off10554_ _off10547_)
                                    (_r10555_ _r10548_))
                      (let* ((_rest1055610564_ _rest10553_)
                             (_else1055810572_
                              (lambda () (_K10549_ _off10554_ _r10555_)))
                             (_K1056010578_
                              (lambda (_rest10575_ _slot10576_)
                                (if (let ()
                                      (declare (not safe))
                                      (table-ref _ht10545_ _slot10576_ '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_lp10551_
                                       _rest10575_
                                       _off10554_
                                       _r10555_))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (table-set!
                                         _ht10545_
                                         _slot10576_
                                         _off10554_))
                                      (let ((__tmp10946
                                             (symbol->keyword _slot10576_)))
                                        (declare (not safe))
                                        (table-set!
                                         _ht10545_
                                         __tmp10946
                                         _off10554_))
                                      (let ((__tmp10948
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _off10554_ '1)))
                                            (__tmp10947
                                             (let ()
                                               (declare (not safe))
                                               (cons _slot10576_ _r10555_))))
                                        (declare (not safe))
                                        (_lp10551_
                                         _rest10575_
                                         __tmp10948
                                         __tmp10947)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1055610564_))
                            (let ((_hd1056110581_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1055610564_)))
                                  (_tl1056210583_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1055610564_))))
                              (let* ((_slot10586_ _hd1056110581_)
                                     (_rest10588_ _tl1056210583_))
                                (declare (not safe))
                                (_K1056010578_ _rest10588_ _slot10586_)))
                            (let ()
                              (declare (not safe))
                              (_else1055810572_)))))))
                 (_find-super-ctor10358_
                  (lambda (_super10497_)
                    (let _lp10499_ ((_rest10501_ _super10497_)
                                    (_ctor10502_ '#f))
                      (let* ((_rest1050310511_ _rest10501_)
                             (_else1050510519_ (lambda () _ctor10502_))
                             (_K1050710533_
                              (lambda (_rest10522_ _hd10523_)
                                (let ((_$e10525_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-ctor _hd10523_))))
                                  (if _$e10525_
                                      ((lambda (_xctor10528_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (not _ctor10502_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _ctor10502_
                                                        _xctor10528_)))
                                             (let ()
                                               (declare (not safe))
                                               (_lp10499_
                                                _rest10522_
                                                _xctor10528_))
                                             (error '"Conflicting implicit constructors"
                                                    _ctor10502_
                                                    _xctor10528_)))
                                       _$e10525_)
                                      (let ()
                                        (declare (not safe))
                                        (_lp10499_
                                         _rest10522_
                                         _ctor10502_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1050310511_))
                            (let ((_hd1050810536_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1050310511_)))
                                  (_tl1050910538_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1050310511_))))
                              (let* ((_hd10541_ _hd1050810536_)
                                     (_rest10543_ _tl1050910538_))
                                (declare (not safe))
                                (_K1050710533_ _rest10543_ _hd10541_)))
                            (let ()
                              (declare (not safe))
                              (_else1050510519_)))))))
                 (_find-super-struct10359_
                  (lambda (_super10444_)
                    (letrec ((_base-struct10446_
                              (lambda (_super-struct10486_ _klass10487_)
                                (if _super-struct10486_
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-subtype?
                                           _super-struct10486_
                                           _klass10487_))
                                        (let _lp10489_ ((_klass10491_
                                                         _klass10487_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _klass10491_))
                                              _klass10491_
                                              (let ((__tmp10949
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _klass10491_))))
                                                (declare (not safe))
                                                (_lp10489_ __tmp10949))))
                                        (if (let ()
                                              (declare (not safe))
                                              (struct-subtype?
                                               _klass10487_
                                               _super-struct10486_))
                                            _super-struct10486_
                                            (error '"Bad mixin: incompatible struct bases"
                                                   _klass10487_
                                                   _super-struct10486_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-type? _klass10487_))
                                        _klass10487_
                                        (if (let ()
                                              (declare (not safe))
                                              (class-type? _klass10487_))
                                            (let _lp10493_ ((_next10495_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##type-super _klass10487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (not _next10495_))
                                                  '#f
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (struct-type?
                                                         _next10495_))
                                                      _next10495_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (class-type?
                                                             _next10495_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lp10493_
                                                             _next10495_))
                                                          '#f))))
                                            '#f))))))
                      (let _lp10448_ ((_rest10450_ _super10444_)
                                      (_super-struct10451_ '#f))
                        (let* ((_rest1045210460_ _rest10450_)
                               (_else1045410468_
                                (lambda () _super-struct10451_))
                               (_K1045610474_
                                (lambda (_rest10471_ _hd10472_)
                                  (let ((__tmp10950
                                         (let ()
                                           (declare (not safe))
                                           (_base-struct10446_
                                            _super-struct10451_
                                            _hd10472_))))
                                    (declare (not safe))
                                    (_lp10448_ _rest10471_ __tmp10950)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1045210460_))
                              (let ((_hd1045710477_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1045210460_)))
                                    (_tl1045810479_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1045210460_))))
                                (let* ((_hd10482_ _hd1045710477_)
                                       (_rest10484_ _tl1045810479_))
                                  (declare (not safe))
                                  (_K1045610474_ _rest10484_ _hd10482_)))
                              (let ()
                                (declare (not safe))
                                (_else1045410468_))))))))
                 (_expand-struct-mixin10360_
                  (lambda (_super10399_)
                    (let _lp10401_ ((_rest10403_ _super10399_)
                                    (_mixin10404_ '()))
                      (let* ((_rest1040510413_ _rest10403_)
                             (_else1040710421_
                              (lambda () (reverse _mixin10404_)))
                             (_K1040910432_
                              (lambda (_rest10424_ _hd10425_)
                                (if (let ()
                                      (declare (not safe))
                                      (struct-type? _hd10425_))
                                    (let _lp210427_ ((_next10429_ _hd10425_)
                                                     (_mixin10430_
                                                      _mixin10404_))
                                      (if (let ()
                                            (declare (not safe))
                                            (not _next10429_))
                                          (let ()
                                            (declare (not safe))
                                            (_lp10401_
                                             _rest10424_
                                             _mixin10430_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _next10429_))
                                              (let ((__tmp10953
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _next10429_)))
                                                    (__tmp10952
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _next10429_
                                                             _mixin10430_))))
                                                (declare (not safe))
                                                (_lp210427_
                                                 __tmp10953
                                                 __tmp10952))
                                              (let ()
                                                (declare (not safe))
                                                (_lp10401_
                                                 _rest10424_
                                                 _mixin10430_)))))
                                    (let ((__tmp10951
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd10425_ _mixin10404_))))
                                      (declare (not safe))
                                      (_lp10401_ _rest10424_ __tmp10951))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1040510413_))
                            (let ((_hd1041010435_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1040510413_)))
                                  (_tl1041110437_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1040510413_))))
                              (let* ((_hd10440_ _hd1041010435_)
                                     (_rest10442_ _tl1041110437_))
                                (declare (not safe))
                                (_K1040910432_ _rest10442_ _hd10440_)))
                            (let ()
                              (declare (not safe))
                              (_else1040710421_))))))))
          (let ((_$e10364_
                 (let ((__tmp10954
                        (lambda (_klass10362_)
                          (let ((__tmp10955
                                 (let ()
                                   (declare (not safe))
                                   (type-descriptor? _klass10362_))))
                            (declare (not safe))
                            (not __tmp10955)))))
                   (declare (not safe))
                   (find __tmp10954 _super10349_))))
            (if _$e10364_
                ((lambda (_klass10367_)
                   (error '"Illegal super class; not a type descriptor"
                          _klass10367_))
                 _$e10364_)
                (let ((_$e10371_
                       (let ((__tmp10956
                              (lambda (_klass10369_)
                                (let ((__tmp10957
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-plist
                                          _klass10369_))))
                                  (declare (not safe))
                                  (assgetq 'final: __tmp10957)))))
                         (declare (not safe))
                         (find __tmp10956 _super10349_))))
                  (if _$e10371_
                      ((lambda (_klass10374_)
                         (error '"Cannot extend final class" _klass10374_))
                       _$e10371_)
                      '#!void))))
          (let* ((_std-super10376_
                  (let ()
                    (declare (not safe))
                    (_find-super-struct10359_ _super10349_)))
                 (_mixin10378_
                  (if _std-super10376_
                      (let ()
                        (declare (not safe))
                        (_expand-struct-mixin10360_ _super10349_))
                      _super10349_)))
            (let ((_g10958_
                   (let ((__tmp10960
                          (if _std-super10376_
                              (let ()
                                (declare (not safe))
                                (type-descriptor-fields _std-super10376_))
                              '0)))
                     (declare (not safe))
                     (_make-slots10356_ __tmp10960))))
              (begin
                (let ((_g10959_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g10958_)
                             (##vector-length _g10958_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g10959_ 3)))
                      (error "Context expects 3 values" _g10959_)))
                (let ((_std-fields10381_
                       (let () (declare (not safe)) (##vector-ref _g10958_ 0)))
                      (_std-slots10382_
                       (let () (declare (not safe)) (##vector-ref _g10958_ 1)))
                      (_std-slot-list10383_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g10958_ 2))))
                  (let* ((_std-mixin10385_
                          (let ()
                            (declare (not safe))
                            (class-linearize-mixins _mixin10378_)))
                         (_std-plist10389_
                          (if _std-super10376_
                              (let* ((_fields10387_
                                      (let ((__tmp10961
                                             (let ()
                                               (declare (not safe))
                                               (type-descriptor-plist
                                                _std-super10376_))))
                                        (declare (not safe))
                                        (assgetq 'fields: __tmp10961)))
                                     (__tmp10962
                                      (let ()
                                        (declare (not safe))
                                        (cons 'fields: _fields10387_))))
                                (declare (not safe))
                                (cons __tmp10962 _plist10352_))
                              _plist10352_))
                         (_std-plist10391_
                          (let ((__tmp10963
                                 (let ()
                                   (declare (not safe))
                                   (cons 'slots: _std-slot-list10383_))))
                            (declare (not safe))
                            (cons __tmp10963 _std-plist10389_)))
                         (_std-ctor10396_
                          (let ((_$e10393_ _ctor10353_))
                            (if _$e10393_
                                _$e10393_
                                (let ()
                                  (declare (not safe))
                                  (_find-super-ctor10358_ _super10349_))))))
                    (let ()
                      (declare (not safe))
                      (make-class-type-descriptor
                       _id10348_
                       _name10351_
                       _std-super10376_
                       _std-mixin10385_
                       _std-fields10381_
                       _std-plist10391_
                       _std-ctor10396_
                       _std-slots10382_))))))))))
    (define class-linearize-mixins
      (lambda (_klass-lst10299_)
        (letrec ((_class->list10301_
                  (lambda (_klass10343_)
                    (let ((__tmp10964
                           (let ((_$e10345_
                                  (let ()
                                    (declare (not safe))
                                    (type-descriptor-mixin _klass10343_))))
                             (if _$e10345_ _$e10345_ '()))))
                      (declare (not safe))
                      (cons _klass10343_ __tmp10964)))))
          (let* ((_klass-lst1030210312_ _klass-lst10299_)
                 (_else1030510320_
                  (lambda ()
                    (let ((__tmp10965
                           (map _class->list10301_ _klass-lst10299_)))
                      (declare (not safe))
                      (__linearize-mixins __tmp10965)))))
            (let ((_K1031010340_ (lambda () '()))
                  (_K1030710326_
                   (lambda (_klass10324_)
                     (let ()
                       (declare (not safe))
                       (_class->list10301_ _klass10324_)))))
              (let ((_try-match1030410336_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _klass-lst1030210312_))
                           (let ((_tl1030910331_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _klass-lst1030210312_)))
                                 (_hd1030810329_
                                  (let ()
                                    (declare (not safe))
                                    (##car _klass-lst1030210312_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl1030910331_))
                                 (let ((_klass10334_ _hd1030810329_))
                                   (declare (not safe))
                                   (_class->list10301_ _klass10334_))
                                 (let ()
                                   (declare (not safe))
                                   (_else1030510320_))))
                           (let () (declare (not safe)) (_else1030510320_))))))
                (if (let ()
                      (declare (not safe))
                      (##null? _klass-lst1030210312_))
                    (let () (declare (not safe)) (_K1031010340_))
                    (let ()
                      (declare (not safe))
                      (_try-match1030410336_)))))))))
    (define __linearize-mixins
      (lambda (_lst10140_)
        (letrec ((_K10142_
                  (lambda (_rest10263_ _r10264_)
                    (let* ((_rest1026510273_ _rest10263_)
                           (_else1026710281_ (lambda () (reverse _r10264_)))
                           (_K1026910287_
                            (lambda (_rest10284_ _hd10285_)
                              (let ()
                                (declare (not safe))
                                (_linearize110143_
                                 _hd10285_
                                 _rest10284_
                                 _r10264_)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest1026510273_))
                          (let ((_hd1027010290_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest1026510273_)))
                                (_tl1027110292_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest1026510273_))))
                            (let* ((_hd10295_ _hd1027010290_)
                                   (_rest10297_ _tl1027110292_))
                              (declare (not safe))
                              (_K1026910287_ _rest10297_ _hd10295_)))
                          (let () (declare (not safe)) (_else1026710281_))))))
                 (_linearize110143_
                  (lambda (_hd10226_ _rest10227_ _r10228_)
                    (let* ((_hd1022910237_ _hd10226_)
                           (_else1023110245_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (_K10142_ _rest10227_ _r10228_))))
                           (_K1023310251_
                            (lambda (_hd-rest10248_ _hd-first10249_)
                              (if (let ()
                                    (declare (not safe))
                                    (_findq10146_ _hd-first10249_ _rest10227_))
                                  (let ((__tmp10968 (list _hd10226_)))
                                    (declare (not safe))
                                    (_linearize210144_
                                     _rest10227_
                                     __tmp10968
                                     _r10228_))
                                  (let ((__tmp10967
                                         (let ()
                                           (declare (not safe))
                                           (cons _hd-rest10248_ _rest10227_)))
                                        (__tmp10966
                                         (let ()
                                           (declare (not safe))
                                           (_putq10145_
                                            _hd-first10249_
                                            _r10228_))))
                                    (declare (not safe))
                                    (_K10142_ __tmp10967 __tmp10966))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd1022910237_))
                          (let ((_hd1023410254_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd1022910237_)))
                                (_tl1023510256_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd1022910237_))))
                            (let* ((_hd-first10259_ _hd1023410254_)
                                   (_hd-rest10261_ _tl1023510256_))
                              (declare (not safe))
                              (_K1023310251_ _hd-rest10261_ _hd-first10259_)))
                          (let () (declare (not safe)) (_else1023110245_))))))
                 (_linearize210144_
                  (lambda (_rest10156_ _pre10157_ _r10158_)
                    (let _lp10160_ ((_rest10162_ _rest10156_)
                                    (_pre10163_ _pre10157_))
                      (let* ((_rest1016410171_ _rest10162_)
                             (_E1016610175_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1016410171_)))
                             (_K1016710214_
                              (lambda (_rest10178_ _hd10179_)
                                (let* ((_hd1018010188_ _hd10179_)
                                       (_else1018210196_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_lp10160_
                                             _rest10178_
                                             _pre10163_))))
                                       (_K1018410202_
                                        (lambda (_hd-rest10199_
                                                 _hd-first10200_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_findq10146_
                                                 _hd-first10200_
                                                 _rest10178_))
                                              (let ((__tmp10972
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd10179_
                                                             _pre10163_))))
                                                (declare (not safe))
                                                (_lp10160_
                                                 _rest10178_
                                                 __tmp10972))
                                              (let ((__tmp10970
                                                     (let ((__tmp10971
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd-rest10199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest10178_))))
               (declare (not safe))
               (foldl1 cons __tmp10971 _pre10163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp10969
                                                     (let ()
                                                       (declare (not safe))
                                                       (_putq10145_
                                                        _hd-first10200_
                                                        _r10158_))))
                                                (declare (not safe))
                                                (_K10142_
                                                 __tmp10970
                                                 __tmp10969))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _hd1018010188_))
                                      (let ((_hd1018510205_
                                             (let ()
                                               (declare (not safe))
                                               (##car _hd1018010188_)))
                                            (_tl1018610207_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _hd1018010188_))))
                                        (let* ((_hd-first10210_ _hd1018510205_)
                                               (_hd-rest10212_ _tl1018610207_))
                                          (declare (not safe))
                                          (_K1018410202_
                                           _hd-rest10212_
                                           _hd-first10210_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else1018210196_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1016410171_))
                            (let ((_hd1016810217_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1016410171_)))
                                  (_tl1016910219_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1016410171_))))
                              (let* ((_hd10222_ _hd1016810217_)
                                     (_rest10224_ _tl1016910219_))
                                (declare (not safe))
                                (_K1016710214_ _rest10224_ _hd10222_)))
                            (let () (declare (not safe)) (_E1016610175_)))))))
                 (_putq10145_
                  (lambda (_hd10153_ _lst10154_)
                    (if (memq _hd10153_ _lst10154_)
                        _lst10154_
                        (let ()
                          (declare (not safe))
                          (cons _hd10153_ _lst10154_)))))
                 (_findq10146_
                  (lambda (_hd10148_ _rest10149_)
                    (let ((__tmp10973
                           (lambda (_lst10151_) (memq _hd10148_ _lst10151_))))
                      (declare (not safe))
                      (find __tmp10973 _rest10149_)))))
          (let () (declare (not safe)) (_K10142_ _lst10140_ '())))))
    (define make-class-predicate
      (lambda (_klass10134_)
        (if (let ((__tmp10975
                   (let ()
                     (declare (not safe))
                     (type-descriptor-plist _klass10134_))))
              (declare (not safe))
              (assgetq 'final: __tmp10975))
            (lambda (_obj10136_)
              (let ((__tmp10974
                     (let () (declare (not safe)) (##type-id _klass10134_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10136_ __tmp10974)))
            (lambda (_obj10138_)
              (let ()
                (declare (not safe))
                (class-instance? _klass10134_ _obj10138_))))))
    (define make-class-slot-accessor
      (lambda (_klass10129_ _slot10130_)
        (lambda (_obj10132_)
          (let () (declare (not safe)) (slot-ref _obj10132_ _slot10130_)))))
    (define make-class-slot-mutator
      (lambda (_klass10123_ _slot10124_)
        (lambda (_obj10126_ _val10127_)
          (let ()
            (declare (not safe))
            (slot-set! _obj10126_ _slot10124_ _val10127_)))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass10118_ _slot10119_)
        (lambda (_obj10121_)
          (let ()
            (declare (not safe))
            (unchecked-slot-ref _obj10121_ _slot10119_)))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass10112_ _slot10113_)
        (lambda (_obj10115_ _val10116_)
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _obj10115_ _slot10113_ _val10116_)))))
    (define class-slot-offset
      (lambda (_klass10104_ _slot10105_)
        (let ((_$e10107_
               (let ()
                 (declare (not safe))
                 (type-descriptor-slots _klass10104_))))
          (if _$e10107_
              ((lambda (_slots10110_)
                 (let ()
                   (declare (not safe))
                   (table-ref _slots10110_ _slot10105_ '#f)))
               _$e10107_)
              '#f))))
    (define class-slot-ref
      (lambda (_klass10098_ _obj10099_ _slot10100_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass10098_ _obj10099_))
            (let* ((_off10102_
                    (let ((__tmp10976
                           (let ()
                             (declare (not safe))
                             (object-type _obj10099_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10976 _slot10100_)))
                   (__tmp10977
                    (let () (declare (not safe)) (##fx+ _off10102_ '1))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj10099_
               __tmp10977
               _klass10098_
               '#f))
            (error '"not an instance" _klass10098_ _obj10099_))))
    (define class-slot-set!
      (lambda (_klass10091_ _obj10092_ _slot10093_ _val10094_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass10091_ _obj10092_))
            (let* ((_off10096_
                    (let ((__tmp10978
                           (let ()
                             (declare (not safe))
                             (object-type _obj10092_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10978 _slot10093_)))
                   (__tmp10979
                    (let () (declare (not safe)) (##fx+ _off10096_ '1))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj10092_
               _val10094_
               __tmp10979
               _klass10091_
               '#f))
            (error '"not an instance" _klass10091_ _obj10092_))))
    (define class-subtype?
      (lambda (_klass10076_ _xklass10077_)
        (let* ((_klass-t10079_
                (let () (declare (not safe)) (##type-id _klass10076_)))
               (_$e10081_
                (let ((__tmp10980
                       (let ()
                         (declare (not safe))
                         (##type-id _xklass10077_))))
                  (declare (not safe))
                  (eq? _klass-t10079_ __tmp10980))))
          (if _$e10081_
              _$e10081_
              (let ((_$e10084_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _xklass10077_))))
                (if _$e10084_
                    ((lambda (_mixin10087_)
                       (if (let ((__tmp10981
                                  (lambda (_xklass10089_)
                                    (let ((__tmp10982
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _xklass10089_))))
                                      (declare (not safe))
                                      (eq? _klass-t10079_ __tmp10982)))))
                             (declare (not safe))
                             (find __tmp10981 _mixin10087_))
                           '#t
                           '#f))
                     _$e10084_)
                    '#f))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass10073_ _obj10074_)
        (let ((__tmp10983
               (let () (declare (not safe)) (##type-id _klass10073_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj10074_ __tmp10983))))
    (define struct-instance?
      (lambda (_klass10070_ _obj10071_)
        (let ((__tmp10984
               (let () (declare (not safe)) (##type-id _klass10070_))))
          (declare (not safe))
          (##structure-instance-of? _obj10071_ __tmp10984))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass10054_ _obj10055_)
        (if (let () (declare (not safe)) (object? _obj10055_))
            (let ((_klass-id10057_
                   (let () (declare (not safe)) (##type-id _klass10054_)))
                  (_type10058_
                   (let () (declare (not safe)) (object-type _obj10055_))))
              (if (let () (declare (not safe)) (type-descriptor? _type10058_))
                  (let ((_$e10060_
                         (let ((__tmp10985
                                (let ()
                                  (declare (not safe))
                                  (##type-id _type10058_))))
                           (declare (not safe))
                           (eq? __tmp10985 _klass-id10057_))))
                    (if _$e10060_
                        _$e10060_
                        (let ((_$e10063_
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-mixin _type10058_))))
                          (if _$e10063_
                              ((lambda (_mixin10066_)
                                 (let ((__tmp10986
                                        (lambda (_type10068_)
                                          (let ((__tmp10987
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _type10068_))))
                                            (declare (not safe))
                                            (eq? __tmp10987
                                                 _klass-id10057_)))))
                                   (declare (not safe))
                                   (ormap1 __tmp10986 _mixin10066_)))
                               _$e10063_)
                              '#f))))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass10049_ _k10050_)
        (let ((_obj10052_
               (let ((__tmp10988
                      (let () (declare (not safe)) (##fx+ _k10050_ '1))))
                 (declare (not safe))
                 (##make-vector __tmp10988 '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj10052_ '0 _klass10049_))
          (let ((__tmp10989 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj10052_ __tmp10989))
          _obj10052_)))
    (define make-struct-instance
      (lambda (_klass10039_ . _args10040_)
        (let* ((_fields10042_
                (let ()
                  (declare (not safe))
                  (type-descriptor-fields _klass10039_)))
               (_$e10044_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass10039_))))
          (if _$e10044_
              ((lambda (_kons-id10047_)
                 (let ((__tmp10991
                        (let ()
                          (declare (not safe))
                          (make-object _klass10039_ _fields10042_))))
                   (declare (not safe))
                   (__constructor-init!
                    _klass10039_
                    _kons-id10047_
                    __tmp10991
                    _args10040_)))
               _$e10044_)
              (if (let ((__tmp10990 (length _args10040_)))
                    (declare (not safe))
                    (##fx= _fields10042_ __tmp10990))
                  (apply ##structure _klass10039_ _args10040_)
                  (error '"Arguments don't match object size"
                         _klass10039_
                         _fields10042_
                         _args10040_))))))
    (define make-class-instance
      (lambda (_klass10029_ . _args10030_)
        (let* ((_obj10032_
                (let ((__tmp10992
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _klass10029_))))
                  (declare (not safe))
                  (make-object _klass10029_ __tmp10992)))
               (_$e10034_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass10029_))))
          (if _$e10034_
              ((lambda (_kons-id10037_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass10029_
                    _kons-id10037_
                    _obj10032_
                    _args10030_)))
               _$e10034_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass10029_
                 _obj10032_
                 _args10030_))))))
    (define struct-instance-init!
      (lambda (_obj10026_ . _args10027_)
        (if (let ((__tmp10994 (length _args10027_))
                  (__tmp10993
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj10026_))))
              (declare (not safe))
              (##fx< __tmp10994 __tmp10993))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj10026_ _args10027_))
            (error '"Too many arguments for struct" _obj10026_ _args10027_))))
    (define __struct-instance-init!
      (lambda (_obj9985_ _args9986_)
        (let _lp9988_ ((_k9990_ '1) (_rest9991_ _args9986_))
          (let* ((_rest999210000_ _rest9991_)
                 (_else999410008_ (lambda () _obj9985_))
                 (_K999610014_
                  (lambda (_rest10011_ _hd10012_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj9985_ _k9990_ _hd10012_))
                    (let ((__tmp10995
                           (let () (declare (not safe)) (##fx+ _k9990_ '1))))
                      (declare (not safe))
                      (_lp9988_ __tmp10995 _rest10011_)))))
            (if (let () (declare (not safe)) (##pair? _rest999210000_))
                (let ((_hd999710017_
                       (let () (declare (not safe)) (##car _rest999210000_)))
                      (_tl999810019_
                       (let () (declare (not safe)) (##cdr _rest999210000_))))
                  (let* ((_hd10022_ _hd999710017_) (_rest10024_ _tl999810019_))
                    (declare (not safe))
                    (_K999610014_ _rest10024_ _hd10022_)))
                (let () (declare (not safe)) (_else999410008_)))))))
    (define class-instance-init!
      (lambda (_obj9982_ . _args9983_)
        (let ((__tmp10996
               (let () (declare (not safe)) (object-type _obj9982_))))
          (declare (not safe))
          (__class-instance-init! __tmp10996 _obj9982_ _args9983_))))
    (define __class-instance-init!
      (lambda (_klass9926_ _obj9927_ _args9928_)
        (let _lp9930_ ((_rest9932_ _args9928_))
          (let* ((_rest99339943_ _rest9932_)
                 (_else99359951_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest9932_))
                        _obj9927_
                        (error '"Unexpected class initializer arguments"
                               _rest9932_))))
                 (_K99379963_
                  (lambda (_rest9954_ _val9955_ _key9956_)
                    (let ((_$e9958_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass9926_ _key9956_))))
                      (if _$e9958_
                          ((lambda (_off9961_)
                             (let ((__tmp10997
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _off9961_ '1))))
                               (declare (not safe))
                               (##vector-set! _obj9927_ __tmp10997 _val9955_))
                             (let ()
                               (declare (not safe))
                               (_lp9930_ _rest9954_)))
                           _$e9958_)
                          (error '"No slot for keyword initializer"
                                 _klass9926_
                                 _key9956_))))))
            (if (let () (declare (not safe)) (##pair? _rest99339943_))
                (let ((_hd99389966_
                       (let () (declare (not safe)) (##car _rest99339943_)))
                      (_tl99399968_
                       (let () (declare (not safe)) (##cdr _rest99339943_))))
                  (let ((_key9971_ _hd99389966_))
                    (if (let () (declare (not safe)) (##pair? _tl99399968_))
                        (let ((_hd99409973_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl99399968_)))
                              (_tl99419975_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl99399968_))))
                          (let* ((_val9978_ _hd99409973_)
                                 (_rest9980_ _tl99419975_))
                            (declare (not safe))
                            (_K99379963_ _rest9980_ _val9978_ _key9971_)))
                        (let () (declare (not safe)) (_else99359951_)))))
                (let () (declare (not safe)) (_else99359951_)))))))
    (define constructor-init!
      (lambda (_klass9921_ _kons-id9922_ _obj9923_ . _args9924_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass9921_
           _kons-id9922_
           _obj9923_
           _args9924_))))
    (define __constructor-init!
      (lambda (_klass9911_ _kons-id9912_ _obj9913_ _args9914_)
        (let ((_$e9916_
               (let ()
                 (declare (not safe))
                 (__find-method _klass9911_ _kons-id9912_))))
          (if _$e9916_
              ((lambda (_kons9919_)
                 (apply _kons9919_ _obj9913_ _args9914_)
                 _obj9913_)
               _$e9916_)
              (error '"Missing constructor" _klass9911_ _kons-id9912_)))))
    (define struct-copy
      (lambda (_struct9909_)
        (if (let () (declare (not safe)) (##structure? _struct9909_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct9909_))
        (let () (declare (not safe)) (##structure-copy _struct9909_))))
    (define struct->list
      (lambda (_obj9907_)
        (if (let () (declare (not safe)) (object? _obj9907_))
            (let () (declare (not safe)) (##vector->list _obj9907_))
            (error '"Not an object" _obj9907_))))
    (define class->list
      (lambda (_obj9894_)
        (if (let () (declare (not safe)) (object? _obj9894_))
            (let ((_klass9896_
                   (let () (declare (not safe)) (object-type _obj9894_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass9896_))
                  (let ((_$e9898_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slots _klass9896_))))
                    (if _$e9898_
                        ((lambda (_slots9901_)
                           (let ((__tmp10998
                                  (let ((__tmp10999
                                         (lambda (_slot9903_ _off9904_ _r9905_)
                                           (if (keyword? _slot9903_)
                                               (let ((__tmp11000
                                                      (let ((__tmp11001
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-field-ref _obj9894_ _off9904_))))
                (declare (not safe))
                (cons __tmp11001 _r9905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _slot9903_ __tmp11000))
                                               _r9905_))))
                                    (declare (not safe))
                                    (hash-fold __tmp10999 '() _slots9901_))))
                             (declare (not safe))
                             (cons _klass9896_ __tmp10998)))
                         _$e9898_)
                        (list _klass9896_)))
                  (error '"Not a class type" _obj9894_ _klass9896_)))
            (error '"Not an object" _obj9894_))))
    (define unchecked-field-ref
      (lambda (_obj9891_ _off9892_)
        (let ((__tmp11002 (let () (declare (not safe)) (##fx+ _off9892_ '1))))
          (declare (not safe))
          (##vector-ref _obj9891_ __tmp11002))))
    (define unchecked-field-set!
      (lambda (_obj9887_ _off9888_ _val9889_)
        (let ((__tmp11003 (let () (declare (not safe)) (##fx+ _off9888_ '1))))
          (declare (not safe))
          (##vector-set! _obj9887_ __tmp11003 _val9889_))))
    (define unchecked-slot-ref
      (lambda (_obj9884_ _slot9885_)
        (let ((__tmp11004
               (let ((__tmp11005
                      (let () (declare (not safe)) (object-type _obj9884_))))
                 (declare (not safe))
                 (class-slot-offset __tmp11005 _slot9885_))))
          (declare (not safe))
          (unchecked-field-ref _obj9884_ __tmp11004))))
    (define unchecked-slot-set!
      (lambda (_obj9880_ _slot9881_ _val9882_)
        (let ((__tmp11006
               (let ((__tmp11007
                      (let () (declare (not safe)) (object-type _obj9880_))))
                 (declare (not safe))
                 (class-slot-offset __tmp11007 _slot9881_))))
          (declare (not safe))
          (unchecked-field-set! _obj9880_ __tmp11006 _val9882_))))
    (define slot-ref__%
      (lambda (_obj9856_ _slot9857_ _E9858_)
        (if (let () (declare (not safe)) (object? _obj9856_))
            (let* ((_klass9860_
                    (let () (declare (not safe)) (object-type _obj9856_)))
                   (_$e9863_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9860_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9860_ _slot9857_))
                        '#f)))
              (if _$e9863_
                  ((lambda (_off9866_)
                     (let ((__tmp11008
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9866_ '1))))
                       (declare (not safe))
                       (##vector-ref _obj9856_ __tmp11008)))
                   _$e9863_)
                  (_E9858_ _obj9856_ _slot9857_)))
            (_E9858_ _obj9856_ _slot9857_))))
    (define slot-ref__0
      (lambda (_obj9871_ _slot9872_)
        (let ((_E9874_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj9871_ _slot9872_ _E9874_))))
    (define slot-ref
      (lambda _g11010_
        (let ((_g11009_ (let () (declare (not safe)) (##length _g11010_))))
          (cond ((let () (declare (not safe)) (##fx= _g11009_ 2))
                 (apply (lambda (_obj9871_ _slot9872_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj9871_ _slot9872_)))
                        _g11010_))
                ((let () (declare (not safe)) (##fx= _g11009_ 3))
                 (apply (lambda (_obj9876_ _slot9877_ _E9878_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj9876_ _slot9877_ _E9878_)))
                        _g11010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g11010_))))))
    (define slot-set!__%
      (lambda (_obj9828_ _slot9829_ _val9830_ _E9831_)
        (if (let () (declare (not safe)) (object? _obj9828_))
            (let* ((_klass9833_
                    (let () (declare (not safe)) (object-type _obj9828_)))
                   (_$e9836_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9833_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9833_ _slot9829_))
                        '#f)))
              (if _$e9836_
                  ((lambda (_off9839_)
                     (let ((__tmp11011
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9839_ '1))))
                       (declare (not safe))
                       (##vector-set! _obj9828_ __tmp11011 _val9830_)))
                   _$e9836_)
                  (_E9831_ _obj9828_ _slot9829_)))
            (_E9831_ _obj9828_ _slot9829_))))
    (define slot-set!__0
      (lambda (_obj9844_ _slot9845_ _val9846_)
        (let ((_E9848_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj9844_ _slot9845_ _val9846_ _E9848_))))
    (define slot-set!
      (lambda _g11013_
        (let ((_g11012_ (let () (declare (not safe)) (##length _g11013_))))
          (cond ((let () (declare (not safe)) (##fx= _g11012_ 3))
                 (apply (lambda (_obj9844_ _slot9845_ _val9846_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj9844_ _slot9845_ _val9846_)))
                        _g11013_))
                ((let () (declare (not safe)) (##fx= _g11012_ 4))
                 (apply (lambda (_obj9850_ _slot9851_ _val9852_ _E9853_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj9850_
                             _slot9851_
                             _val9852_
                             _E9853_)))
                        _g11013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g11013_))))))
    (define __slot-error
      (lambda (_obj9824_ _slot9825_)
        (error '"Cannot find slot" _obj9824_ _slot9825_)))
    (define call-method
      (lambda (_obj9815_ _id9816_ . _args9817_)
        (let ((_$e9819_
               (let () (declare (not safe)) (method-ref _obj9815_ _id9816_))))
          (if _$e9819_
              ((lambda (_method9822_)
                 (apply _method9822_ _obj9815_ _args9817_))
               _$e9819_)
              (error '"Cannot find method" _obj9815_ _id9816_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj9812_ _id9813_)
        (if (let () (declare (not safe)) (object? _obj9812_))
            (let ((__tmp11014
                   (let () (declare (not safe)) (object-type _obj9812_))))
              (declare (not safe))
              (find-method __tmp11014 _id9813_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj9806_ _id9807_)
        (let ((_$e9809_
               (let () (declare (not safe)) (method-ref _obj9806_ _id9807_))))
          (if _$e9809_
              _$e9809_
              (error '"Missing method" _obj9806_ _id9807_)))))
    (define bound-method-ref
      (lambda (_obj9796_ _id9797_)
        (let ((_$e9799_
               (let () (declare (not safe)) (method-ref _obj9796_ _id9797_))))
          (if _$e9799_
              ((lambda (_method9802_)
                 (lambda _args9804_ (apply _method9802_ _obj9796_ _args9804_)))
               _$e9799_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj9789_ _id9790_)
        (let ((_method9792_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj9789_ _id9790_))))
          (lambda _args9794_ (apply _method9792_ _obj9789_ _args9794_)))))
    (define find-method
      (lambda (_klass9783_ _id9784_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9783_))
            (let () (declare (not safe)) (__find-method _klass9783_ _id9784_))
            (if (let () (declare (not safe)) (##type? _klass9783_))
                (let ((_$e9786_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass9783_ _id9784_))))
                  (if _$e9786_
                      _$e9786_
                      (let ((__tmp11015
                             (let ()
                               (declare (not safe))
                               (##type-super _klass9783_))))
                        (declare (not safe))
                        (builtin-find-method __tmp11015 _id9784_))))
                '#f))))
    (define __find-method
      (lambda (_klass9772_ _id9773_)
        (let ((_$e9775_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass9772_ _id9773_))))
          (if _$e9775_
              _$e9775_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9772_))
                  '#f
                  (let ((_$e9778_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-mixin _klass9772_))))
                    (if _$e9778_
                        ((lambda (_mixin9781_)
                           (let ()
                             (declare (not safe))
                             (mixin-find-method _mixin9781_ _id9773_)))
                         _$e9778_)
                        (let ((__tmp11016
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9772_))))
                          (declare (not safe))
                          (struct-find-method __tmp11016 _id9773_)))))))))
    (define struct-find-method
      (lambda (_klass9763_ _id9764_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9763_))
            (let ((_$e9766_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass9763_ _id9764_))))
              (if _$e9766_
                  _$e9766_
                  (let ((__tmp11018
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9763_))))
                    (declare (not safe))
                    (struct-find-method __tmp11018 _id9764_))))
            (if (let () (declare (not safe)) (##type? _klass9763_))
                (let ((_$e9769_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass9763_ _id9764_))))
                  (if _$e9769_
                      _$e9769_
                      (let ((__tmp11017
                             (let ()
                               (declare (not safe))
                               (##type-super _klass9763_))))
                        (declare (not safe))
                        (builtin-find-method __tmp11017 _id9764_))))
                '#f))))
    (define class-find-method
      (lambda (_klass9757_ _id9758_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9757_))
            (let ((_$e9760_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass9757_ _id9758_))))
              (if _$e9760_
                  _$e9760_
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass9757_ _id9758_))))
            '#f)))
    (define mixin-find-method
      (lambda (_mixin9714_ _id9715_)
        (let _lp9717_ ((_rest9719_ _mixin9714_))
          (let* ((_rest97209728_ _rest9719_)
                 (_else97229736_ (lambda () '#f))
                 (_K97249745_
                  (lambda (_rest9739_ _klass9740_)
                    (let ((_$e9742_
                           (let ()
                             (declare (not safe))
                             (direct-method-ref _klass9740_ _id9715_))))
                      (if _$e9742_
                          _$e9742_
                          (let ()
                            (declare (not safe))
                            (_lp9717_ _rest9739_)))))))
            (if (let () (declare (not safe)) (##pair? _rest97209728_))
                (let ((_hd97259748_
                       (let () (declare (not safe)) (##car _rest97209728_)))
                      (_tl97269750_
                       (let () (declare (not safe)) (##cdr _rest97209728_))))
                  (let* ((_klass9753_ _hd97259748_) (_rest9755_ _tl97269750_))
                    (declare (not safe))
                    (_K97249745_ _rest9755_ _klass9753_)))
                (let () (declare (not safe)) (_else97229736_)))))))
    (define builtin-find-method
      (lambda (_klass9708_ _id9709_)
        (if (let () (declare (not safe)) (##type? _klass9708_))
            (let ((_$e9711_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass9708_ _id9709_))))
              (if _$e9711_
                  _$e9711_
                  (let ((__tmp11019
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9708_))))
                    (declare (not safe))
                    (builtin-find-method __tmp11019 _id9709_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass9700_ _id9701_)
        (let ((_$e9703_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass9700_))))
          (if _$e9703_
              ((lambda (_ht9706_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht9706_ _id9701_ '#f)))
               _$e9703_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass9692_ _id9693_)
        (let ((_$e9695_
               (let ()
                 (declare (not safe))
                 (type-descriptor-mixin _klass9692_))))
          (if _$e9695_
              ((lambda (_mixin9698_)
                 (let ()
                   (declare (not safe))
                   (mixin-find-method _mixin9698_ _id9693_)))
               _$e9695_)
              '#f))))
    (define builtin-method-ref
      (lambda (_klass9684_ _id9685_)
        (let ((_$e9687_
               (let ((__tmp11020
                      (let () (declare (not safe)) (##type-id _klass9684_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp11020 '#f))))
          (if _$e9687_
              ((lambda (_mtab9690_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab9690_ _id9685_ '#f)))
               _$e9687_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass9650_ _id9651_ _proc9652_ _rebind?9653_)
        (letrec ((_bind!9655_
                  (lambda (_ht9668_)
                    (if (and (let () (declare (not safe)) (not _rebind?9653_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht9668_ _id9651_ '#f)))
                        (error '"Method already bound" _klass9650_ _id9651_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht9668_ _id9651_ _proc9652_))))))
          (if (let () (declare (not safe)) (procedure? _proc9652_))
              '#!void
              (error '"Bad method; expected procedure" _proc9652_))
          (if (let () (declare (not safe)) (type-descriptor? _klass9650_))
              (let ((_ht9657_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass9650_))))
                (if _ht9657_
                    (let () (declare (not safe)) (_bind!9655_ _ht9657_))
                    (let ((_ht9659_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9650_ _ht9659_))
                      (let () (declare (not safe)) (_bind!9655_ _ht9659_)))))
              (if (let () (declare (not safe)) (##type? _klass9650_))
                  (let ((_ht9666_
                         (let ((_$e9661_
                                (let ((__tmp11021
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass9650_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp11021
                                   '#f))))
                           (if _$e9661_
                               _$e9661_
                               (let ((_ht9664_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp11022
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass9650_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp11022
                                    _ht9664_))
                                 _ht9664_)))))
                    (declare (not safe))
                    (_bind!9655_ _ht9666_))
                  (error '"Bad class; expected type-descriptor"
                         _klass9650_))))))
    (define bind-method!__0
      (lambda (_klass9673_ _id9674_ _proc9675_)
        (let ((_rebind?9677_ '#t))
          (declare (not safe))
          (bind-method!__% _klass9673_ _id9674_ _proc9675_ _rebind?9677_))))
    (define bind-method!
      (lambda _g11024_
        (let ((_g11023_ (let () (declare (not safe)) (##length _g11024_))))
          (cond ((let () (declare (not safe)) (##fx= _g11023_ 3))
                 (apply (lambda (_klass9673_ _id9674_ _proc9675_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass9673_ _id9674_ _proc9675_)))
                        _g11024_))
                ((let () (declare (not safe)) (##fx= _g11023_ 4))
                 (apply (lambda (_klass9679_ _id9680_ _proc9681_ _rebind?9682_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass9679_
                             _id9680_
                             _proc9681_
                             _rebind?9682_)))
                        _g11024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g11024_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc9646_ _specializer9647_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc9646_ _specializer9647_))))
    (define seal-class!
      (lambda (_klass9561_)
        (letrec ((_collect-methods!9563_
                  (lambda (_mtab9579_)
                    (letrec ((_merge!9581_
                              (lambda (_tab9641_)
                                (let ((__tmp11025
                                       (lambda (_id9643_ _proc9644_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab9579_
                                            _id9643_
                                            _proc9644_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp11025 _tab9641_))))
                             (_collect-direct-methods!9582_
                              (lambda (_klass9636_)
                                (let ((_$e9638_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass9636_))))
                                  (if _$e9638_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!9581_ _$e9638_))
                                      '#!void)))))
                      (let ((_$e9584_
                             (let ()
                               (declare (not safe))
                               (type-descriptor-mixin _klass9561_))))
                        (if _$e9584_
                            ((lambda (_mixin9587_)
                               (let _recur9589_ ((_rest9591_ _mixin9587_))
                                 (let* ((_rest95929600_ _rest9591_)
                                        (_else95949608_ (lambda () '#!void))
                                        (_K95969617_
                                         (lambda (_rest9611_ _klass9612_)
                                           (let ()
                                             (declare (not safe))
                                             (_recur9589_ _rest9611_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (type-descriptor?
                                                  _klass9612_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_collect-direct-methods!9582_
                                                  _klass9612_))
                                               (let ((_$e9614_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type? _klass9612_))
                                                          (let ((__tmp11029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##type-id _klass9612_))))
                    (declare (not safe))
                    (table-ref __builtin-type-methods __tmp11029 '#f))
                  '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e9614_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_merge!9581_ _$e9614_))
                                                     '#!void))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest95929600_))
                                       (let ((_hd95979620_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest95929600_)))
                                             (_tl95989622_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest95929600_))))
                                         (let* ((_klass9625_ _hd95979620_)
                                                (_rest9627_ _tl95989622_))
                                           (declare (not safe))
                                           (_K95969617_
                                            _rest9627_
                                            _klass9625_)))
                                       '#!void))))
                             _$e9584_)
                            (let _recur9629_ ((_klass9631_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9561_))))
                              (if (let ()
                                    (declare (not safe))
                                    (type-descriptor? _klass9631_))
                                  (begin
                                    (let ((__tmp11028
                                           (let ()
                                             (declare (not safe))
                                             (##type-super _klass9631_))))
                                      (declare (not safe))
                                      (_recur9629_ __tmp11028))
                                    (let ()
                                      (declare (not safe))
                                      (_collect-direct-methods!9582_
                                       _klass9631_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _klass9631_))
                                      (begin
                                        (let ((__tmp11026
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9631_))))
                                          (declare (not safe))
                                          (_recur9629_ __tmp11026))
                                        (let ((_$e9633_
                                               (let ((__tmp11027
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9631_))))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __builtin-type-methods
                                                  __tmp11027
                                                  '#f))))
                                          (if _$e9633_
                                              (let ()
                                                (declare (not safe))
                                                (_merge!9581_ _$e9633_))
                                              '#!void)))
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_collect-direct-methods!9582_ _klass9561_))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9561_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9561_))
                  '#!void
                  (begin
                    (if (let ((__tmp11030
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-plist _klass9561_))))
                          (declare (not safe))
                          (assgetq 'final: __tmp11030))
                        '#!void
                        (error '"Cannot seal non-final class" _klass9561_))
                    (let ((_vtab9565_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab9566_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!9563_ _mtab9566_))
                      (let ((__tmp11031
                             (lambda (_id9568_ _proc9569_)
                               (let ((_$e9571_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc9569_
                                         '#f))))
                                 (if _$e9571_
                                     ((lambda (_specializer9574_)
                                        (let ((_proc9576_
                                               (_specializer9574_ _klass9561_))
                                              (_gid9577_
                                               (let ((__tmp11032
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9561_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp11032
                                                  '"::["
                                                  _id9568_
                                                  '"]"))))
                                          (eval (let ((__tmp11033
                                                       (let ((__tmp11034
                                                              (let ((__tmp11035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp11036
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc9576_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp11036))))
                        (declare (not safe))
                        (cons __tmp11035 '()))))
                 (declare (not safe))
                 (cons _gid9577_ __tmp11034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp11033)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab9565_
                                             _id9568_
                                             _proc9576_))))
                                      _$e9571_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab9565_
                                        _id9568_
                                        _proc9569_)))))))
                        (declare (not safe))
                        (table-for-each __tmp11031 _mtab9566_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9561_ _vtab9565_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass9561_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass9498_ _obj9499_ _id9500_)
        (let ((_klass9502_
               (let () (declare (not safe)) (object-type _obj9499_)))
              (_type-id9503_
               (let () (declare (not safe)) (##type-id _subklass9498_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9502_))
              (let ((_$e9505_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _klass9502_))))
                (if _$e9505_
                    ((lambda (_mixin9508_)
                       (let _lp9510_ ((_rest9512_
                                       (let ()
                                         (declare (not safe))
                                         (cons _klass9502_ _mixin9508_))))
                         (let* ((_rest95139521_ _rest9512_)
                                (_else95159529_ (lambda () '#f))
                                (_K95179535_
                                 (lambda (_rest9532_ _klass9533_)
                                   (if (let ((__tmp11041
                                              (let ()
                                                (declare (not safe))
                                                (##type-id _klass9533_))))
                                         (declare (not safe))
                                         (eq? _type-id9503_ __tmp11041))
                                       (let ()
                                         (declare (not safe))
                                         (mixin-find-method
                                          _rest9532_
                                          _id9500_))
                                       (let ()
                                         (declare (not safe))
                                         (_lp9510_ _rest9532_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest95139521_))
                               (let ((_hd95189538_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest95139521_)))
                                     (_tl95199540_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest95139521_))))
                                 (let* ((_klass9543_ _hd95189538_)
                                        (_rest9545_ _tl95199540_))
                                   (declare (not safe))
                                   (_K95179535_ _rest9545_ _klass9543_)))
                               (let ()
                                 (declare (not safe))
                                 (_else95159529_))))))
                     _$e9505_)
                    (let _lp9547_ ((_klass9549_ _klass9502_))
                      (if (let ((__tmp11040
                                 (let ()
                                   (declare (not safe))
                                   (##type-id _klass9549_))))
                            (declare (not safe))
                            (eq? _type-id9503_ __tmp11040))
                          (let ((__tmp11039
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass9549_))))
                            (declare (not safe))
                            (struct-find-method __tmp11039 _id9500_))
                          (let ((_$e9551_
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass9549_))))
                            (if _$e9551_
                                (let ()
                                  (declare (not safe))
                                  (_lp9547_ _$e9551_))
                                '#f))))))
              (if (let () (declare (not safe)) (##type? _klass9502_))
                  (let _lp9554_ ((_klass9556_ _klass9502_))
                    (if (let ((__tmp11038
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass9556_))))
                          (declare (not safe))
                          (eq? _type-id9503_ __tmp11038))
                        (let ((__tmp11037
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9556_))))
                          (declare (not safe))
                          (builtin-find-method __tmp11037 _id9500_))
                        (let ((_$e9558_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9556_))))
                          (if _$e9558_
                              (let () (declare (not safe)) (_lp9554_ _$e9558_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass9488_ _obj9489_ _id9490_ . _args9491_)
        (let ((_$e9493_
               (let ()
                 (declare (not safe))
                 (next-method _subklass9488_ _obj9489_ _id9490_))))
          (if _$e9493_
              ((lambda (_methodf9496_)
                 (apply _methodf9496_ _obj9489_ _args9491_))
               _$e9493_)
              (error '"Cannot find next method" _obj9489_ _id9490_)))))
    (define write-style (lambda (_we9486_) (macro-writeenv-style _we9486_)))
    (define write-object
      (lambda (_we9478_ _obj9479_)
        (let ((_$e9481_
               (let () (declare (not safe)) (method-ref _obj9479_ ':wr))))
          (if _$e9481_
              ((lambda (_method9484_) (_method9484_ _obj9479_ _we9478_))
               _$e9481_)
              (let ()
                (declare (not safe))
                (##default-wr _we9478_ _obj9479_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
