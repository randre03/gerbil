(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g42956_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
      (make-class-type
       'gerbil.core#runtime-type-info::t
       '()
       '(runtime-identifier)
       'runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
      (make-class-type
       'gerbil.core#runtime-struct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
      (lambda _$args20885_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20885_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
      (make-class-type
       'gerbil.core#runtime-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
      (lambda _$args20881_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20881_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
      (make-class-type
       'gerbil.core#expander-type-info::t
       '()
       '(expander-identifiers)
       'expander-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
      (make-class-type
       'gerbil.core#extended-runtime-type-info
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '(type-exhibitor)
       'extended-runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
      (make-class-type
       'gerbil.core#extended-stuct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
      (lambda _$args20877_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20877_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
      (make-class-type
       'gerbil.core#extended-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
      (lambda _$args20873_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20873_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f
       '(id super name ctor plist)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-struct-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'struct-exhibitor
       '()
       '#f
       '(fields)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      (lambda _$args20869_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20869_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-class-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'class-exhibitor
       '()
       '#f
       '(slots)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
      (lambda _$args20865_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20865_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
      (lambda (_stx20839_ _is?20841_)
        (if (gx#identifier? _stx20839_)
            (let ((_e2084220844_ (gx#syntax-local-value _stx20839_ false)))
              (if _e2084220844_
                  (let ((_e20848_ _e2084220844_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
                           _e20848_))
                        (_is?20841_ _e20848_)
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
      (lambda (_stx20855_)
        (let ((_is?20858_ true))
          (declare (not safe))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20855_
           _is?20858_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (lambda _g42914_
        (let ((_g42913_ (let () (declare (not safe)) (##length _g42914_))))
          (cond ((let () (declare (not safe)) (##fx= _g42913_ 1))
                 (apply (lambda (_stx20855_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                             _stx20855_)))
                        _g42914_))
                ((let () (declare (not safe)) (##fx= _g42913_ 2))
                 (apply (lambda (_stx20861_ _is?20863_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                             _stx20861_
                             _is?20863_)))
                        _g42914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g42914_))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20835_)
        (let ()
          (declare (not safe))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20835_
           |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20832_)
        (let ()
          (declare (not safe))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20832_
           |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20826_)
        (if _id20826_
            (let ((_info20829_ (gx#syntax-local-value _id20826_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                     _info20829_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _info20829_ 'type-exhibitor))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20591_ _stx20593_)
        (let* ((_g2059520615_
                (lambda (_g2059620611_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2059620611_)))
               (_g2059420822_
                (lambda (_g2059620619_)
                  (if (gx#stx-pair? _g2059620619_)
                      (let ((_e2060020622_ (gx#syntax-e _g2059620619_)))
                        (let ((_hd2059920626_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2060020622_)))
                              (_tl2059820629_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2060020622_))))
                          (if (gx#stx-pair/null? _tl2059820629_)
                              (let ((_g42915_
                                     (gx#syntax-split-splice
                                      _tl2059820629_
                                      '0)))
                                (begin
                                  (let ((_g42916_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g42915_)
                                               (##vector-length _g42915_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g42916_ 2)))
                                        (error "Context expects 2 values"
                                               _g42916_)))
                                  (let ((_target2060120632_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g42915_ 0)))
                                        (_tl2060320635_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g42915_ 1))))
                                    (if (gx#stx-null? _tl2060320635_)
                                        (letrec ((_loop2060420638_
                                                  (lambda (_hd2060220642_
                                                           _arg2060820645_)
                                                    (if (gx#stx-pair?
                                                         _hd2060220642_)
                                                        (let ((_e2060520648_
                                                               (gx#syntax-e
                                                                _hd2060220642_)))
                                                          (let ((_lp-hd2060620652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2060520648_)))
                        (_lp-tl2060720655_
                         (let () (declare (not safe)) (##cdr _e2060520648_))))
                    (let ((__tmp42918
                           (cons _lp-hd2060620652_ _arg2060820645_)))
                      (declare (not safe))
                      (_loop2060420638_ _lp-tl2060720655_ __tmp42918))))
                (let ((_arg2060920658_ (reverse _arg2060820645_)))
                  ((lambda (_L20662_)
                     (let* ((_g2067820709_
                             (lambda (_g2067920705_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2067920705_)))
                            (_g2067720818_
                             (lambda (_g2067920713_)
                               (if (gx#stx-pair? _g2067920713_)
                                   (let ((_e2068820716_
                                          (gx#syntax-e _g2067920713_)))
                                     (let ((_hd2068720720_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2068820716_)))
                                           (_tl2068620723_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2068820716_))))
                                       (if (gx#stx-pair? _tl2068620723_)
                                           (let ((_e2069120726_
                                                  (gx#syntax-e
                                                   _tl2068620723_)))
                                             (let ((_hd2069020730_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2069120726_)))
                                                   (_tl2068920733_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2069120726_))))
                                               (if (gx#stx-pair?
                                                    _tl2068920733_)
                                                   (let ((_e2069420736_
                                                          (gx#syntax-e
                                                           _tl2068920733_)))
                                                     (let ((_hd2069320740_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2069420736_)))
                                                           (_tl2069220743_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2069420736_))))
                                                       (if (gx#stx-pair?
                                                            _tl2069220743_)
                                                           (let ((_e2069720746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2069220743_)))
                     (let ((_hd2069620750_
                            (let ()
                              (declare (not safe))
                              (##car _e2069720746_)))
                           (_tl2069520753_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2069720746_))))
                       (if (gx#stx-pair? _tl2069520753_)
                           (let ((_e2070020756_ (gx#syntax-e _tl2069520753_)))
                             (let ((_hd2069920760_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2070020756_)))
                                   (_tl2069820763_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2070020756_))))
                               (if (gx#stx-pair? _tl2069820763_)
                                   (let ((_e2070320766_
                                          (gx#syntax-e _tl2069820763_)))
                                     (let ((_hd2070220770_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2070320766_)))
                                           (_tl2070120773_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2070320766_))))
                                       (if (gx#stx-null? _tl2070120773_)
                                           ((lambda (_L20776_
                                                     _L20778_
                                                     _L20779_
                                                     _L20780_
                                                     _L20781_
                                                     _L20782_)
                                              (let ()
                                                (cons _L20780_
                                                      (foldr (lambda (_g2080920812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2081020815_)
                       (cons _g2080920812_ _g2081020815_))
                     '()
                     _L20662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2070220770_
                                            _hd2069920760_
                                            _hd2069620750_
                                            _hd2069320740_
                                            _hd2069020730_
                                            _hd2068720720_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2067820709_ _g2067920713_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2067820709_ _g2067920713_)))))
                           (let ()
                             (declare (not safe))
                             (_g2067820709_ _g2067920713_)))))
                   (let ()
                     (declare (not safe))
                     (_g2067820709_ _g2067920713_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2067820709_
                                                      _g2067920713_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2067820709_ _g2067920713_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2067820709_ _g2067920713_)))))
                            (__tmp42917
                             (let ()
                               (declare (not safe))
                               (unchecked-slot-ref
                                _self20591_
                                'expander-identifiers))))
                       (declare (not safe))
                       (_g2067720818_ __tmp42917)))
                   _arg2060920658_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2060420638_
                                             _target2060120632_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2059520615_ _g2059620619_))))))
                              (let ()
                                (declare (not safe))
                                (_g2059520615_ _g2059620619_)))))
                      (let ()
                        (declare (not safe))
                        (_g2059520615_ _g2059620619_))))))
          (declare (not safe))
          (_g2059420822_ _stx20593_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20582_)
        (letrec ((_body-opt?20585_
                  (lambda (_key20588_)
                    (memq (gx#stx-e _key20588_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20582_ _body-opt?20585_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx19410_
               _id19412_
               _super-ref19413_
               _els19414_
               _body19415_
               _struct?19416_)
        (letrec* ((_wrap19418_
                   (lambda (_e-stx20579_)
                     (gx#stx-wrap-source
                      _e-stx20579_
                      (gx#stx-source _stx19410_))))
                  (_make-id19420_
                   (if (uninterned-symbol? (gx#stx-e _id19412_))
                       (lambda _g42919_ (gx#genident _id19412_))
                       (lambda _args20576_
                         (apply gx#stx-identifier _id19412_ _args20576_)))))
          (gx#check-duplicate-identifiers _els19414_ _stx19410_)
          (let* ((_name19422_ (symbol->string (gx#stx-e _id19412_)))
                 (_super19425_
                  (if _struct?19416_
                      (if _super-ref19413_
                          (gx#syntax-local-value _super-ref19413_)
                          '#f)
                      (map gx#syntax-local-value _super-ref19413_)))
                 (_g1942819436_
                  (lambda (_g1942919432_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1942919432_)))
                 (_g1942720570_
                  (lambda (_g1942919440_)
                    ((lambda (_L19443_)
                       (let ()
                         (let* ((_g1945919467_
                                 (lambda (_g1946019463_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1946019463_)))
                                (_g1945820566_
                                 (lambda (_g1946019471_)
                                   ((lambda (_L19474_)
                                      (let ()
                                        (let* ((_g1948719495_
                                                (lambda (_g1948819491_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1948819491_)))
                                               (_g1948620562_
                                                (lambda (_g1948819499_)
                                                  ((lambda (_L19502_)
                                                     (let ()
                                                       (let* ((_g1951519523_
                                                               (lambda (_g1951619519_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g1951619519_)))
                      (_g1951420558_
                       (lambda (_g1951619527_)
                         ((lambda (_L19530_)
                            (let ()
                              (let* ((_g1954319551_
                                      (lambda (_g1954419547_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1954419547_)))
                                     (_g1954220554_
                                      (lambda (_g1954419555_)
                                        ((lambda (_L19558_)
                                           (let ()
                                             (let* ((_g1957119579_
                                                     (lambda (_g1957219575_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g1957219575_)))
                                                    (_g1957020550_
                                                     (lambda (_g1957219583_)
                                                       ((lambda (_L19586_)
                                                          (let ()
                                                            (let* ((_g1959919616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1960019612_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1960019612_)))
                           (_g1959820546_
                            (lambda (_g1960019620_)
                              (if (gx#stx-pair/null? _g1960019620_)
                                  (let ((_g42920_
                                         (gx#syntax-split-splice
                                          _g1960019620_
                                          '0)))
                                    (begin
                                      (let ((_g42921_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42920_)
                                                   (##vector-length _g42920_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42921_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42921_)))
                                      (let ((_target1960219623_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42920_ 0)))
                                            (_tl1960419626_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42920_ 1))))
                                        (if (gx#stx-null? _tl1960419626_)
                                            (letrec ((_loop1960519629_
                                                      (lambda (_hd1960319633_
                                                               _attr1960919636_)
                                                        (if (gx#stx-pair?
                                                             _hd1960319633_)
                                                            (let ((_e1960619639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1960319633_)))
                      (let ((_lp-hd1960719643_
                             (let ()
                               (declare (not safe))
                               (##car _e1960619639_)))
                            (_lp-tl1960819646_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1960619639_))))
                        (let ((__tmp42949
                               (cons _lp-hd1960719643_ _attr1960919636_)))
                          (declare (not safe))
                          (_loop1960519629_ _lp-tl1960819646_ __tmp42949))))
                    (let ((_attr1961019649_ (reverse _attr1960919636_)))
                      ((lambda (_L19653_)
                         (let ()
                           (let* ((_g1967019687_
                                   (lambda (_g1967119683_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1967119683_)))
                                  (_g1966920537_
                                   (lambda (_g1967119691_)
                                     (if (gx#stx-pair/null? _g1967119691_)
                                         (let ((_g42922_
                                                (gx#syntax-split-splice
                                                 _g1967119691_
                                                 '0)))
                                           (begin
                                             (let ((_g42923_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g42922_)
                                                          (##vector-length
                                                           _g42922_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g42923_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g42923_)))
                                             (let ((_target1967319694_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42922_
                                                       0)))
                                                   (_tl1967519697_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42922_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl1967519697_)
                                                   (letrec ((_loop1967619700_
                                                             (lambda (_hd1967419704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _getf1968019707_)
                       (if (gx#stx-pair? _hd1967419704_)
                           (let ((_e1967719710_ (gx#syntax-e _hd1967419704_)))
                             (let ((_lp-hd1967819714_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1967719710_)))
                                   (_lp-tl1967919717_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1967719710_))))
                               (let ((__tmp42947
                                      (cons _lp-hd1967819714_
                                            _getf1968019707_)))
                                 (declare (not safe))
                                 (_loop1967619700_
                                  _lp-tl1967919717_
                                  __tmp42947))))
                           (let ((_getf1968119720_ (reverse _getf1968019707_)))
                             ((lambda (_L19724_)
                                (let ()
                                  (let* ((_g1974119758_
                                          (lambda (_g1974219754_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g1974219754_)))
                                         (_g1974020528_
                                          (lambda (_g1974219762_)
                                            (if (gx#stx-pair/null?
                                                 _g1974219762_)
                                                (let ((_g42924_
                                                       (gx#syntax-split-splice
                                                        _g1974219762_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42925_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42924_)
                         (##vector-length _g42924_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42925_ 2)))
                  (error "Context expects 2 values" _g42925_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1974419765_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42924_
                                                              0)))
                                                          (_tl1974619768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42924_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1974619768_)
                                                          (letrec ((_loop1974719771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1974519775_ _setf1975119778_)
                              (if (gx#stx-pair? _hd1974519775_)
                                  (let ((_e1974819781_
                                         (gx#syntax-e _hd1974519775_)))
                                    (let ((_lp-hd1974919785_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1974819781_)))
                                          (_lp-tl1975019788_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1974819781_))))
                                      (let ((__tmp42945
                                             (cons _lp-hd1974919785_
                                                   _setf1975119778_)))
                                        (declare (not safe))
                                        (_loop1974719771_
                                         _lp-tl1975019788_
                                         __tmp42945))))
                                  (let ((_setf1975219791_
                                         (reverse _setf1975119778_)))
                                    ((lambda (_L19795_)
                                       (let ()
                                         (let* ((_type-attr19840_
                                                 (if (gx#stx-null? _els19414_)
                                                     '()
                                                     (if _struct?19416_
                                                         (cons 'fields:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L19795_
                                _L19724_
                                _L19653_)
                               (foldr (lambda (_g1981119816_
                                               _g1981219819_
                                               _g1981319821_
                                               _g1981419823_)
                                        (cons (cons _g1981319821_
                                                    (cons _g1981219819_
                                                          (cons _g1981119816_
                                                                '())))
                                              _g1981419823_))
                                      '()
                                      _L19795_
                                      _L19724_
                                      _L19653_))
                             '()))
                 (cons 'slots:
                       (cons (begin
                               (gx#syntax-check-splice-targets
                                _L19795_
                                _L19724_
                                _L19653_)
                               (foldr (lambda (_g1982519830_
                                               _g1982619833_
                                               _g1982719835_
                                               _g1982819837_)
                                        (cons (cons _g1982719835_
                                                    (cons _g1982619833_
                                                          (cons _g1982519830_
                                                                '())))
                                              _g1982819837_))
                                      '()
                                      _L19795_
                                      _L19724_
                                      _L19653_))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-name19847_
                                                 (cons 'name:
                                                       (cons (let ((_$e19843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-getq 'name: _body19415_)))
                       (if _$e19843_ _$e19843_ _id19412_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-id19862_
                                                 (let ((_$e19858_
                                                        (let ((_e1984919851_
                                                               (gx#stx-getq
                                                                'id:
                                                                _body19415_)))
                                                          (if _e1984919851_
                                                              (let ((_e19855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1984919851_))
                        (cons 'id: (cons _e19855_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19858_
                                                       _$e19858_
                                                       '())))
                                                (_type-ctor19877_
                                                 (let ((_$e19873_
                                                        (let ((_e1986419866_
                                                               (gx#stx-getq
                                                                'constructor:
                                                                _body19415_)))
                                                          (if _e1986419866_
                                                              (let ((_e19870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1986419866_))
                        (cons 'constructor: (cons _e19870_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19873_
                                                       _$e19873_
                                                       '())))
                                                (_plist19921_
                                                 (let* ((_plist19884_
                                                         (let ((_$e19880_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'plist:
                         _body19415_)))
                   (if _$e19880_ _$e19880_ '())))
                (_plist19887_
                 (if (gx#stx-e (gx#stx-getq 'transparent: _body19415_))
                     (cons (cons 'transparent: '#t) _plist19884_)
                     _plist19884_))
                (_plist19890_
                 (if (gx#stx-e (gx#stx-getq 'final: _body19415_))
                     (cons (cons 'final: '#t) _plist19887_)
                     _plist19887_))
                (_plist19903_
                 (let ((_$e19893_
                        (gx#stx-e (gx#stx-getq 'print: _body19415_))))
                   (if _$e19893_
                       ((lambda (_print19897_)
                          (let ((_print19900_
                                 (if (eq? _print19897_ '#t)
                                     _els19414_
                                     _print19897_)))
                            (cons (cons 'print: _print19900_) _plist19890_)))
                        _$e19893_)
                       _plist19890_)))
                (_plist19916_
                 (let ((_$e19906_
                        (gx#stx-e (gx#stx-getq 'equal: _body19415_))))
                   (if _$e19906_
                       ((lambda (_equal19910_)
                          (let ((_equal19913_
                                 (if (eq? _equal19910_ '#t)
                                     _els19414_
                                     _equal19910_)))
                            (cons (cons 'equal: _equal19913_) _plist19903_)))
                        _$e19906_)
                       _plist19903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _plist19916_))
                                                (_type-plist19961_
                                                 (if (null? _plist19921_)
                                                     _plist19921_
                                                     (let* ((_g1992419932_
                                                             (lambda (_g1992519928_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g1992519928_)))
                                                            (_g1992319957_
                                                             (lambda (_g1992519936_)
                                                               ((lambda (_L19939_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons 'plist:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L19939_ '()))
                                        '()))))
                        _g1992519936_))))
               (declare (not safe))
               (_g1992319957_ _plist19921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-unchecked19976_
                                                 (let ((_$e19972_
                                                        (let ((_e1996319965_
                                                               (gx#stx-getq
                                                                'unchecked:
                                                                _body19415_)))
                                                          (if _e1996319965_
                                                              (let ((_e19969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1996319965_))
                        (cons 'unchecked: (cons _e19969_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19972_
                                                       _$e19972_
                                                       (cons 'unchecked:
                                                             (cons '#t '())))))
                                                (_g1997919996_
                                                 (lambda (_g1998019992_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1998019992_)))
                                                (_g1997820524_
                                                 (lambda (_g1998020000_)
                                                   (if (gx#stx-pair/null?
                                                        _g1998020000_)
                                                       (let ((_g42926_
                                                              (gx#syntax-split-splice
                                                               _g1998020000_
                                                               '0)))
                                                         (begin
                                                           (let ((_g42927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g42926_)
                                (##vector-length _g42926_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g42927_ 2)))
                         (error "Context expects 2 values" _g42927_)))
                   (let ((_target1998220003_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42926_ 0)))
                         (_tl1998420006_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42926_ 1))))
                     (if (gx#stx-null? _tl1998420006_)
                         (letrec ((_loop1998520009_
                                   (lambda (_hd1998320013_
                                            _type-body1998920016_)
                                     (if (gx#stx-pair? _hd1998320013_)
                                         (let ((_e1998620019_
                                                (gx#syntax-e _hd1998320013_)))
                                           (let ((_lp-hd1998720023_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1998620019_)))
                                                 (_lp-tl1998820026_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1998620019_))))
                                             (let ((__tmp42943
                                                    (cons _lp-hd1998720023_
                                                          _type-body1998920016_)))
                                               (declare (not safe))
                                               (_loop1998520009_
                                                _lp-tl1998820026_
                                                __tmp42943))))
                                         (let ((_type-body1999020029_
                                                (reverse _type-body1998920016_)))
                                           ((lambda (_L20033_)
                                              (let ()
                                                (let* ((_g2005020058_
                                                        (lambda (_g2005120054_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g2005120054_)))
                                                       (_g2004920512_
                                                        (lambda (_g2005120062_)
                                                          ((lambda (_L20065_)
                                                             (let ()
                                                               (let* ((_g2007820086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2007920082_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g2007920082_)))
                              (_g2007720508_
                               (lambda (_g2007920090_)
                                 ((lambda (_L20093_)
                                    (let ()
                                      (let* ((_g2010620114_
                                              (lambda (_g2010720110_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g2010720110_)))
                                             (_g2010520422_
                                              (lambda (_g2010720118_)
                                                ((lambda (_L20121_)
                                                   (let ()
                                                     (let* ((_g2013420142_
                                                             (lambda (_g2013520138_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g2013520138_)))
                                                            (_g2013320418_
                                                             (lambda (_g2013520146_)
                                                               ((lambda (_L20149_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2016220170_
                                    (lambda (_g2016320166_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2016320166_)))
                                   (_g2016120414_
                                    (lambda (_g2016320174_)
                                      ((lambda (_L20177_)
                                         (let ()
                                           (let* ((_g2019020198_
                                                   (lambda (_g2019120194_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g2019120194_)))
                                                  (_g2018920372_
                                                   (lambda (_g2019120202_)
                                                     ((lambda (_L20205_)
                                                        (let ()
                                                          (let* ((_g2021820226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2021920222_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2021920222_)))
                         (_g2021720368_
                          (lambda (_g2021920230_)
                            ((lambda (_L20233_)
                               (let ()
                                 (let* ((_g2024620254_
                                         (lambda (_g2024720250_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2024720250_)))
                                        (_g2024520364_
                                         (lambda (_g2024720258_)
                                           ((lambda (_L20261_)
                                              (let ()
                                                (let* ((_g2027420282_
                                                        (lambda (_g2027520278_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g2027520278_)))
                                                       (_g2027320360_
                                                        (lambda (_g2027520286_)
                                                          ((lambda (_L20289_)
                                                             (let ()
                                                               (let* ((_g2030220310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2030320306_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g2030320306_)))
                              (_g2030120332_
                               (lambda (_g2030320314_)
                                 ((lambda (_L20317_)
                                    (let ()
                                      (let ()
                                        (let ((__tmp42928
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons _L20065_
                                                           (cons _L20317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_wrap19418_ __tmp42928)))))
                                  _g2030320314_)))
                              (__tmp42929
                               (let ((__tmp42930
                                      (cons (gx#datum->syntax '#f 'defsyntax)
                                            (cons _L19474_
                                                  (cons (cons _L20093_
                                                              (cons 'runtime-identifier:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                        (cons _L19502_ '()))
                                  (cons 'expander-identifiers:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons _L20121_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _L19502_ '()))
                        (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _L19530_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L19558_ '()))
                                    (cons (cons (gx#datum->syntax '#f '@list)
                                                (foldr (lambda (_g2033920342_
                                                                _g2034020345_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote-syntax)
                             (cons _g2033920342_ '()))
                       _g2034020345_))
               '()
               _L19724_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (foldr (lambda (_g2033720348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2033820351_)
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _g2033720348_ '()))
                             _g2033820351_))
                     '()
                     _L19795_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons 'type-exhibitor:
                                                    (cons (cons _L20149_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote)
                                    (cons _L20177_ '()))
                              (cons _L20205_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L20233_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L20261_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L20289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons (foldr (lambda (_g2033520354_ _g2033620357_)
                                         (cons _g2033520354_ _g2033620357_))
                                       '()
                                       _L19653_)
                                '()))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (_wrap19418_ __tmp42930))))
                         (declare (not safe))
                         (_g2030120332_ __tmp42929))))
                   _g2027520286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g2027320360_
                                                   _plist19921_))))
                                            _g2024720258_)))
                                        (__tmp42931
                                         (if (not (null? _type-ctor19877_))
                                             (cadr _type-ctor19877_)
                                             '#f)))
                                   (declare (not safe))
                                   (_g2024520364_ __tmp42931))))
                             _g2021920230_)))
                         (__tmp42932 (cadr _type-name19847_)))
                    (declare (not safe))
                    (_g2021720368_ __tmp42932))))
              _g2019120202_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp42933
                                                   (let ((_quote-e20411_
                                                          (lambda (_x-ref20376_)
                                                            (if _x-ref20376_
                                                                (let* ((_g2037920387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2038020383_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g2038020383_)))
                               (_g2037820407_
                                (lambda (_g2038020391_)
                                  ((lambda (_L20394_)
                                     (let ()
                                       (cons (gx#datum->syntax
                                              '#f
                                              'quote-syntax)
                                             (cons _L20394_ '()))))
                                   _g2038020391_))))
                          (declare (not safe))
                          (_g2037820407_ _x-ref20376_))
                        '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _struct?19416_
                                                         (let ()
                                                           (declare (not safe))
                                                           (_quote-e20411_
                                                            _super-ref19413_))
                                                         (cons 'list
                                                               (map _quote-e20411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _super-ref19413_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_g2018920372_ __tmp42933))))
                                       _g2016320174_)))
                                   (__tmp42934
                                    (if (not (null? _type-id19862_))
                                        (cadr _type-id19862_)
                                        '#f)))
                              (declare (not safe))
                              (_g2016120414_ __tmp42934))))
                        _g2013520146_)))
                    (__tmp42935
                     (if _struct?19416_
                         (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                         (gx#datum->syntax
                          '#f
                          'make-runtime-class-exhibitor))))
               (declare (not safe))
               (_g2013320418_ __tmp42935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2010720118_)))
                                             (__tmp42936
                                              (if _struct?19416_
                                                  (if _super19425_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quote-syntax)
                                                            (cons _L19586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_g2042620443_
                                                          (lambda (_g2042720439_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2042720439_)))
                                                         (_g2042520504_
                                                          (lambda (_g2042720447_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2042720447_)
                        (let ((_g42937_
                               (gx#syntax-split-splice _g2042720447_ '0)))
                          (begin
                            (let ((_g42938_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g42937_)
                                         (##vector-length _g42937_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g42938_ 2)))
                                  (error "Context expects 2 values" _g42938_)))
                            (let ((_target2042920450_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42937_ 0)))
                                  (_tl2043120453_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42937_ 1))))
                              (if (gx#stx-null? _tl2043120453_)
                                  (letrec ((_loop2043220456_
                                            (lambda (_hd2043020460_
                                                     _super-id2043620463_)
                                              (if (gx#stx-pair? _hd2043020460_)
                                                  (let ((_e2043320466_
                                                         (gx#syntax-e
                                                          _hd2043020460_)))
                                                    (let ((_lp-hd2043420470_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2043320466_)))
                                                          (_lp-tl2043520473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2043320466_))))
                                                      (let ((__tmp42939
                                                             (cons _lp-hd2043420470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _super-id2043620463_)))
                (declare (not safe))
                (_loop2043220456_ _lp-tl2043520473_ __tmp42939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_super-id2043720476_
                                                         (reverse _super-id2043620463_)))
                                                    ((lambda (_L20480_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_g2049520498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2049620501_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g2049520498_ '()))
                                      _g2049620501_))
                              '()
                              _L20480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _super-id2043720476_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2043220456_
                                       _target2042920450_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g2042620443_ _g2042720447_))))))
                        (let ()
                          (declare (not safe))
                          (_g2042620443_ _g2042720447_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2042520504_
                                                     _L19586_)))))
                                        (declare (not safe))
                                        (_g2010520422_ __tmp42936))))
                                  _g2007920090_)))
                              (__tmp42940
                               (if _struct?19416_
                                   (gx#datum->syntax
                                    '#f
                                    'make-extended-struct-info)
                                   (gx#datum->syntax
                                    '#f
                                    'make-extended-class-info))))
                         (declare (not safe))
                         (_g2007720508_ __tmp42940))))
                   _g2005120062_)))
               (__tmp42941
                (let ((__tmp42942
                       (cons _L19443_
                             (cons _L19502_
                                   (cons _L19586_
                                         (cons _L19530_
                                               (cons _L19558_
                                                     (foldr (lambda (_g2051520518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2051620521_)
                      (cons _g2051520518_ _g2051620521_))
                    '()
                    _L20033_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  (declare (not safe))
                  (_wrap19418_ __tmp42942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g2004920512_ __tmp42941))))
                                            _type-body1999020029_))))))
                           (let ()
                             (declare (not safe))
                             (_loop1998520009_ _target1998220003_ '())))
                         (let ()
                           (declare (not safe))
                           (_g1997919996_ _g1998020000_))))))
               (let () (declare (not safe)) (_g1997919996_ _g1998020000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp42944
                                                 (foldr cons
                                                        (foldr cons
                                                               (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr cons
                                     (foldr cons
                                            _type-unchecked19976_
                                            _type-plist19961_)
                                     _type-ctor19877_)
                              _type-name19847_)
                       _type-id19862_)
                _type-attr19840_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g1997820524_ __tmp42944))))
                                     _setf1975219791_))))))
                    (let ()
                      (declare (not safe))
                      (_loop1974719771_ _target1974419765_ '())))
                  (let ()
                    (declare (not safe))
                    (_g1974119758_ _g1974219762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1974119758_
                                                   _g1974219762_)))))
                                         (__tmp42946
                                          (gx#stx-map
                                           (lambda (_g2053120533_)
                                             (_make-id19420_
                                              _name19422_
                                              '"-"
                                              _g2053120533_
                                              '"-set!"))
                                           _els19414_)))
                                    (declare (not safe))
                                    (_g1974020528_ __tmp42946))))
                              _getf1968119720_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop1967619700_
                                                        _target1967319694_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1967019687_
                                                      _g1967119691_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1967019687_ _g1967119691_)))))
                                  (__tmp42948
                                   (gx#stx-map
                                    (lambda (_g2054020542_)
                                      (_make-id19420_
                                       _name19422_
                                       '"-"
                                       _g2054020542_))
                                    _els19414_)))
                             (declare (not safe))
                             (_g1966920537_ __tmp42948))))
                       _attr1961019649_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1960519629_
                                                 _target1960219623_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g1959919616_
                                               _g1960019620_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1959919616_ _g1960019620_))))))
                      (declare (not safe))
                      (_g1959820546_ _els19414_))))
                _g1957219583_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp42950
                                                     (if _struct?19416_
                                                         (if _super19425_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-slot-ref _super19425_ 'runtime-identifier))
                     '#f)
                 (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                      _super19425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g1957020550_ __tmp42950))))
                                         _g1954419555_)))
                                     (__tmp42951
                                      (_make-id19420_ _name19422_ '"?")))
                                (declare (not safe))
                                (_g1954220554_ __tmp42951))))
                          _g1951619527_)))
                      (__tmp42952 (_make-id19420_ '"make-" _name19422_)))
                 (declare (not safe))
                 (_g1951420558_ __tmp42952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1948819499_)))
                                               (__tmp42953
                                                (_make-id19420_
                                                 _name19422_
                                                 '"::t")))
                                          (declare (not safe))
                                          (_g1948620562_ __tmp42953))))
                                    _g1946019471_))))
                           (declare (not safe))
                           (_g1945820566_ _id19412_))))
                     _g1942919440_)))
                 (__tmp42954
                  (if _struct?19416_
                      (gx#datum->syntax '#f 'defstruct-type)
                      (gx#datum->syntax '#f 'defclass-type))))
            (declare (not safe))
            (_g1942720570_ __tmp42954)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20898_)
        (letrec ((_generate20901_
                  (lambda (_hd20985_ _fields20987_ _body20988_)
                    (let* ((___stx3979139792_ _hd20985_)
                           (_g2099121006_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3979139792_))))
                      (let ((___kont3979439795_
                             (lambda (_L21044_ _L21046_)
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                  _stx20898_
                                  _L21046_
                                  _L21044_
                                  _fields20987_
                                  _body20988_
                                  '#t))))
                            (___kont3979639797_
                             (lambda ()
                               (if (gx#identifier? _hd20985_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20898_
                                      _hd20985_
                                      '#f
                                      _fields20987_
                                      _body20988_
                                      '#t))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; struct name not an identifier"
                                    _stx20898_
                                    _hd20985_)))))
                        (let ((___match3981239813_
                               (lambda (_e2099721024_
                                        _hd2099621028_
                                        _tl2099521031_
                                        _e2100021034_
                                        _hd2099921038_
                                        _tl2099821041_)
                                 (let ((_L21044_ _hd2099921038_)
                                       (_L21046_ _hd2099621028_))
                                   (if (and (gx#identifier? _L21046_)
                                            (let ()
                                              (declare (not safe))
                                              (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                               _L21044_)))
                                       (___kont3979439795_ _L21044_ _L21046_)
                                       (___kont3979639797_))))))
                          (if (gx#stx-pair? ___stx3979139792_)
                              (let ((_e2099721024_
                                     (gx#syntax-e ___stx3979139792_)))
                                (let ((_tl2099521031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2099721024_)))
                                      (_hd2099621028_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2099721024_))))
                                  (if (gx#stx-pair? _tl2099521031_)
                                      (let ((_e2100021034_
                                             (gx#syntax-e _tl2099521031_)))
                                        (let ((_tl2099821041_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2100021034_)))
                                              (_hd2099921038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2100021034_))))
                                          (if (gx#stx-null? _tl2099821041_)
                                              (___match3981239813_
                                               _e2099721024_
                                               _hd2099621028_
                                               _tl2099521031_
                                               _e2100021034_
                                               _hd2099921038_
                                               _tl2099821041_)
                                              (___kont3979639797_))))
                                      (___kont3979639797_))))
                              (___kont3979639797_))))))))
          (let* ((_g2090420923_
                  (lambda (_g2090520919_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2090520919_)))
                 (_g2090320981_
                  (lambda (_g2090520927_)
                    (if (gx#stx-pair? _g2090520927_)
                        (let ((_e2091120930_ (gx#syntax-e _g2090520927_)))
                          (let ((_hd2091020934_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2091120930_)))
                                (_tl2090920937_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2091120930_))))
                            (if (gx#stx-pair? _tl2090920937_)
                                (let ((_e2091420940_
                                       (gx#syntax-e _tl2090920937_)))
                                  (let ((_hd2091320944_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2091420940_)))
                                        (_tl2091220947_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2091420940_))))
                                    (if (gx#stx-pair? _tl2091220947_)
                                        (let ((_e2091720950_
                                               (gx#syntax-e _tl2091220947_)))
                                          (let ((_hd2091620954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2091720950_)))
                                                (_tl2091520957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2091720950_))))
                                            ((lambda (_L20960_
                                                      _L20962_
                                                      _L20963_)
                                               (if (and (gx#identifier-list?
                                                         _L20962_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                           _L20960_)))
                                                   (_generate20901_
                                                    _L20963_
                                                    _L20962_
                                                    _L20960_)
                                                   (_g2090420923_
                                                    _g2090520927_)))
                                             _tl2091520957_
                                             _hd2091620954_
                                             _hd2091320944_)))
                                        (_g2090420923_ _g2090520927_))))
                                (_g2090420923_ _g2090520927_))))
                        (_g2090420923_ _g2090520927_)))))
            (_g2090320981_ _stx20898_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx21065_)
        (letrec ((_generate21068_
                  (lambda (_hd21152_ _slots21154_ _body21155_)
                    (let* ((___stx3981539816_ _hd21152_)
                           (_g2115821170_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3981539816_))))
                      (let ((___kont3981839819_
                             (lambda (_L21198_ _L21200_)
                               (let ((__tmp42955 (gx#syntax->list _L21198_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                  _stx21065_
                                  _L21200_
                                  __tmp42955
                                  _slots21154_
                                  _body21155_
                                  '#f))))
                            (___kont3982039821_
                             (lambda ()
                               (if (gx#identifier? _hd21152_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx21065_
                                      _hd21152_
                                      '()
                                      _slots21154_
                                      _body21155_
                                      '#f))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; class name should be an identifier"
                                    _stx21065_
                                    _hd21152_)))))
                        (let ((___match3982839829_
                               (lambda (_e2116421188_
                                        _hd2116321192_
                                        _tl2116221195_)
                                 (let ((_L21198_ _tl2116221195_)
                                       (_L21200_ _hd2116321192_))
                                   (if (and (gx#stx-list? _L21198_)
                                            (gx#stx-andmap
                                             |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                             _L21198_))
                                       (___kont3981839819_ _L21198_ _L21200_)
                                       (___kont3982039821_))))))
                          (if (gx#stx-pair? ___stx3981539816_)
                              (let ((_e2116421188_
                                     (gx#syntax-e ___stx3981539816_)))
                                (let ((_tl2116221195_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2116421188_)))
                                      (_hd2116321192_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2116421188_))))
                                  (___match3982839829_
                                   _e2116421188_
                                   _hd2116321192_
                                   _tl2116221195_)))
                              (___kont3982039821_))))))))
          (let* ((_g2107121090_
                  (lambda (_g2107221086_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2107221086_)))
                 (_g2107021148_
                  (lambda (_g2107221094_)
                    (if (gx#stx-pair? _g2107221094_)
                        (let ((_e2107821097_ (gx#syntax-e _g2107221094_)))
                          (let ((_hd2107721101_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2107821097_)))
                                (_tl2107621104_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2107821097_))))
                            (if (gx#stx-pair? _tl2107621104_)
                                (let ((_e2108121107_
                                       (gx#syntax-e _tl2107621104_)))
                                  (let ((_hd2108021111_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2108121107_)))
                                        (_tl2107921114_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2108121107_))))
                                    (if (gx#stx-pair? _tl2107921114_)
                                        (let ((_e2108421117_
                                               (gx#syntax-e _tl2107921114_)))
                                          (let ((_hd2108321121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2108421117_)))
                                                (_tl2108221124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2108421117_))))
                                            ((lambda (_L21127_
                                                      _L21129_
                                                      _L21130_)
                                               (if (and (gx#identifier-list?
                                                         _L21129_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                           _L21127_)))
                                                   (_generate21068_
                                                    _L21130_
                                                    _L21129_
                                                    _L21127_)
                                                   (_g2107121090_
                                                    _g2107221094_)))
                                             _tl2108221124_
                                             _hd2108321121_
                                             _hd2108021111_)))
                                        (_g2107121090_ _g2107221094_))))
                                (_g2107121090_ _g2107221094_))))
                        (_g2107121090_ _g2107221094_)))))
            (_g2107021148_ _stx21065_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx21217_)
        (letrec ((_wrap21220_
                  (lambda (_e-stx21557_)
                    (gx#stx-wrap-source
                     _e-stx21557_
                     (gx#stx-source _stx21217_))))
                 (_method-opt?21222_
                  (lambda (_x21554_) (memq (gx#stx-e _x21554_) '(rebind:)))))
          (let* ((_g2122421253_
                  (lambda (_g2122521249_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2122521249_)))
                 (_g2122321550_
                  (lambda (_g2122521257_)
                    (if (gx#stx-pair? _g2122521257_)
                        (let ((_e2123221260_ (gx#syntax-e _g2122521257_)))
                          (let ((_hd2123121264_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2123221260_)))
                                (_tl2123021267_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2123221260_))))
                            (if (gx#stx-pair? _tl2123021267_)
                                (let ((_e2123521270_
                                       (gx#syntax-e _tl2123021267_)))
                                  (let ((_hd2123421274_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2123521270_)))
                                        (_tl2123321277_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2123521270_))))
                                    (if (gx#stx-pair? _hd2123421274_)
                                        (let ((_e2123821280_
                                               (gx#syntax-e _hd2123421274_)))
                                          (let ((_hd2123721284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2123821280_)))
                                                (_tl2123621287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2123821280_))))
                                            (if (gx#identifier? _hd2123721284_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g42956_|
                                                     _hd2123721284_)
                                                    (if (gx#stx-pair?
                                                         _tl2123621287_)
                                                        (let ((_e2124121290_
                                                               (gx#syntax-e
                                                                _tl2123621287_)))
                                                          (let ((_hd2124021294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2124121290_)))
                        (_tl2123921297_
                         (let () (declare (not safe)) (##cdr _e2124121290_))))
                    (if (gx#stx-pair? _tl2123921297_)
                        (let ((_e2124421300_ (gx#syntax-e _tl2123921297_)))
                          (let ((_hd2124321304_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2124421300_)))
                                (_tl2124221307_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2124421300_))))
                            (if (gx#stx-null? _tl2124221307_)
                                (if (gx#stx-pair? _tl2123321277_)
                                    (let ((_e2124721310_
                                           (gx#syntax-e _tl2123321277_)))
                                      (let ((_hd2124621314_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2124721310_)))
                                            (_tl2124521317_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2124721310_))))
                                        ((lambda (_L21320_
                                                  _L21322_
                                                  _L21323_
                                                  _L21324_)
                                           (if (and (gx#identifier? _L21324_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                       _L21323_))
                                                    (gx#stx-plist?
                                                     _L21320_
                                                     _method-opt?21222_))
                                               (let* ((_klass21349_
                                                       (gx#syntax-local-value
                                                        _L21323_))
                                                      (_rebind?21352_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L21320_))
                                                           '#t
                                                           '#f))
                                                      (_g2135521363_
                                                       (lambda (_g2135621359_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2135621359_)))
                                                      (_g2135421546_
                                                       (lambda (_g2135621367_)
                                                         ((lambda (_L21370_)
                                                            (let ()
                                                              (let* ((_g2138421392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2138521388_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2138521388_)))
                             (_g2138321542_
                              (lambda (_g2138521396_)
                                ((lambda (_L21399_)
                                   (let ()
                                     (let* ((_g2141221420_
                                             (lambda (_g2141321416_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2141321416_)))
                                            (_g2141121538_
                                             (lambda (_g2141321424_)
                                               ((lambda (_L21427_)
                                                  (let ()
                                                    (let* ((_g2144021448_
                                                            (lambda (_g2144121444_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2144121444_)))
                                                           (_g2143921534_
                                                            (lambda (_g2144121452_)
                                                              ((lambda (_L21455_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2146821476_
                                   (lambda (_g2146921472_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2146921472_)))
                                  (_g2146721530_
                                   (lambda (_g2146921480_)
                                     ((lambda (_L21483_)
                                        (let ()
                                          (let* ((_g2149621504_
                                                  (lambda (_g2149721500_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2149721500_)))
                                                 (_g2149521526_
                                                  (lambda (_g2149721508_)
                                                    ((lambda (_L21511_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21220_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L21455_ (cons _L21511_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2149721508_))))
                                            (_g2149521526_
                                             (_wrap21220_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L21370_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L21324_ '()))
                        (cons _L21399_ (cons _L21483_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2146921480_))))
                             (_g2146721530_ _rebind?21352_))))
                       _g2144121452_))))
              (_g2143921534_
               (_wrap21220_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L21399_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L21427_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons '()
                                    (cons (cons (cons (gx#datum->syntax '#f '_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'obj)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'arg)
                          (cons (gx#datum->syntax '#f '...) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'call-next-method)
                                                            (cons _L21370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L21324_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L21322_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2141321424_))))
                                       (_g2141121538_
                                        (gx#stx-identifier
                                         _L21324_
                                         '@next-method)))))
                                 _g2138521396_))))
                        (_g2138321542_
                         (gx#stx-identifier
                          _L21324_
                          _L21323_
                          '"::"
                          _L21324_)))))
                  _g2135621367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2135421546_
                                                  (let ()
                                                    (declare (not safe))
                                                    (unchecked-slot-ref
                                                     _klass21349_
                                                     'runtime-identifier))))
                                               (if (not (gx#identifier?
                                                         _L21324_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx21217_
                                                    _L21324_)
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                               _L21323_)))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx21217_
                                                        _L21323_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx21217_)))))
                                         _tl2124521317_
                                         _hd2124621314_
                                         _hd2124321304_
                                         _hd2124021294_)))
                                    (_g2122421253_ _g2122521257_))
                                (_g2122421253_ _g2122521257_))))
                        (_g2122421253_ _g2122521257_))))
                (_g2122421253_ _g2122521257_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2122421253_
                                                     _g2122521257_))
                                                (_g2122421253_
                                                 _g2122521257_))))
                                        (_g2122421253_ _g2122521257_))))
                                (_g2122421253_ _g2122521257_))))
                        (_g2122421253_ _g2122521257_)))))
            (_g2122321550_ _stx21217_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_stx21560_)
        (letrec ((_dotted-identifier?21563_
                  (lambda (_id22196_)
                    (if (gx#identifier? _id22196_)
                        (let ((_id-str22199_
                               (symbol->string (gx#stx-e _id22196_))))
                          (if (string-index _id-str22199_ '#\.)
                              (let ((_split22202_
                                     (string-split _id-str22199_ '#\.)))
                                (fx= (length _split22202_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted21565_
                  (lambda (_id22185_)
                    (let* ((_id-str22188_
                            (symbol->string (gx#stx-e _id22185_)))
                           (_split22191_ (string-split _id-str22188_ '#\.)))
                      (cons (gx#stx-identifier _id22185_ (car _split22191_))
                            (cons (gx#stx-identifier
                                   _id22185_
                                   (cadr _split22191_))
                                  '()))))))
          (let* ((___stx3983139832_ _stx21560_)
                 (_g2157021657_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3983139832_))))
            (let ((___kont3983439835_
                   (lambda (_L22078_ _L22080_ _L22081_)
                     (let* ((_g2210922124_
                             (lambda (_g2211022120_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2211022120_)))
                            (_g2210822177_
                             (lambda (_g2211022128_)
                               (if (gx#stx-pair? _g2211022128_)
                                   (let ((_e2211522131_
                                          (gx#syntax-e _g2211022128_)))
                                     (let ((_hd2211422135_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2211522131_)))
                                           (_tl2211322138_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2211522131_))))
                                       (if (gx#stx-pair? _tl2211322138_)
                                           (let ((_e2211822141_
                                                  (gx#syntax-e
                                                   _tl2211322138_)))
                                             (let ((_hd2211722145_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2211822141_)))
                                                   (_tl2211622148_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2211822141_))))
                                               (if (gx#stx-null?
                                                    _tl2211622148_)
                                                   ((lambda (_L22151_ _L22153_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'apply)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'call-method)
                            (cons _L22153_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L22151_ '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (foldr (lambda (_g2216822171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2216922174_)
                     (cons _g2216822171_ _g2216922174_))
                   '()
                   _L22080_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2211722145_
                                                    _hd2211422135_)
                                                   (_g2210922124_
                                                    _g2211022128_))))
                                           (_g2210922124_ _g2211022128_))))
                                   (_g2210922124_ _g2211022128_)))))
                       (_g2210822177_ (_split-dotted21565_ _L22081_)))))
                  (___kont3983839839_
                   (lambda (_L21920_ _L21922_)
                     (let* ((_g2193921954_
                             (lambda (_g2194021950_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2194021950_)))
                            (_g2193822007_
                             (lambda (_g2194021958_)
                               (if (gx#stx-pair? _g2194021958_)
                                   (let ((_e2194521961_
                                          (gx#syntax-e _g2194021958_)))
                                     (let ((_hd2194421965_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2194521961_)))
                                           (_tl2194321968_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2194521961_))))
                                       (if (gx#stx-pair? _tl2194321968_)
                                           (let ((_e2194821971_
                                                  (gx#syntax-e
                                                   _tl2194321968_)))
                                             (let ((_hd2194721975_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2194821971_)))
                                                   (_tl2194621978_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2194821971_))))
                                               (if (gx#stx-null?
                                                    _tl2194621978_)
                                                   ((lambda (_L21981_ _L21983_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'call-method)
                                                              (cons _L21983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L21981_ '()))
                                  (foldr (lambda (_g2199822001_ _g2199922004_)
                                           (cons _g2199822001_ _g2199922004_))
                                         '()
                                         _L21920_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2194721975_
                                                    _hd2194421965_)
                                                   (_g2193921954_
                                                    _g2194021958_))))
                                           (_g2193921954_ _g2194021958_))))
                                   (_g2193921954_ _g2194021958_)))))
                       (_g2193822007_ (_split-dotted21565_ _L21922_)))))
                  (___kont3984239843_
                   (lambda (_L21824_ _L21826_ _L21827_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _L21826_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L21827_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_g2185421857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2185521860_)
                          (cons _g2185421857_ _g2185521860_))
                        '()
                        _L21824_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (___kont3984639847_
                   (lambda (_L21724_ _L21726_ _L21727_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _L21726_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L21727_ '()))
                                       (foldr (lambda (_g2174821751_
                                                       _g2174921754_)
                                                (cons _g2174821751_
                                                      _g2174921754_))
                                              '()
                                              _L21724_)))))))
              (let* ((___match3995039951_
                      (lambda (_e2163621664_
                               _hd2163521668_
                               _tl2163421671_
                               _e2163921674_
                               _hd2163821678_
                               _tl2163721681_
                               _e2164221684_
                               _hd2164121688_
                               _tl2164021691_
                               ___splice3984839849_
                               _target2164321694_
                               _tl2164521697_)
                        (letrec ((_loop2164621700_
                                  (lambda (_hd2164421704_ _arg2165021707_)
                                    (if (gx#stx-pair? _hd2164421704_)
                                        (let ((_e2164721710_
                                               (gx#syntax-e _hd2164421704_)))
                                          (let ((_lp-tl2164921717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2164721710_)))
                                                (_lp-hd2164821714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2164721710_))))
                                            (_loop2164621700_
                                             _lp-tl2164921717_
                                             (cons _lp-hd2164821714_
                                                   _arg2165021707_))))
                                        (let ((_arg2165121720_
                                               (reverse _arg2165021707_)))
                                          (let ((_L21724_ _arg2165121720_)
                                                (_L21726_ _hd2164121688_)
                                                (_L21727_ _hd2163821678_))
                                            (if (gx#identifier? _L21727_)
                                                (___kont3984639847_
                                                 _L21724_
                                                 _L21726_
                                                 _L21727_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2157021657_)))))))))
                          (_loop2164621700_ _target2164321694_ '()))))
                     (___match3992439925_
                      (lambda (_e2161521764_
                               _hd2161421768_
                               _tl2161321771_
                               _e2161821774_
                               _hd2161721778_
                               _tl2161621781_
                               _e2162121784_
                               _hd2162021788_
                               _tl2161921791_
                               ___splice3984439845_
                               _target2162221794_
                               _tl2162421797_)
                        (letrec ((_loop2162521800_
                                  (lambda (_hd2162321804_ _arg2162921807_)
                                    (if (gx#stx-pair? _hd2162321804_)
                                        (let ((_e2162621810_
                                               (gx#syntax-e _hd2162321804_)))
                                          (let ((_lp-tl2162821817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2162621810_)))
                                                (_lp-hd2162721814_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2162621810_))))
                                            (_loop2162521800_
                                             _lp-tl2162821817_
                                             (cons _lp-hd2162721814_
                                                   _arg2162921807_))))
                                        (let ((_arg2163021820_
                                               (reverse _arg2162921807_)))
                                          (let ((_L21824_ _arg2163021820_)
                                                (_L21826_ _hd2162021788_)
                                                (_L21827_ _hd2161721778_))
                                            (if (and (gx#identifier? _L21827_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g2184621849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2184721852_)
                       (cons _g2184621849_ _g2184721852_))
                     '()
                     _L21824_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3984239843_
                                                 _L21824_
                                                 _L21826_
                                                 _L21827_)
                                                (___match3995039951_
                                                 _e2161521764_
                                                 _hd2161421768_
                                                 _tl2161321771_
                                                 _e2161821774_
                                                 _hd2161721778_
                                                 _tl2161621781_
                                                 _e2162121784_
                                                 _hd2162021788_
                                                 _tl2161921791_
                                                 ___splice3984439845_
                                                 _target2162221794_
                                                 _tl2162421797_))))))))
                          (_loop2162521800_ _target2162221794_ '()))))
                     (___match3991039911_
                      (lambda (_e2161521764_
                               _hd2161421768_
                               _tl2161321771_
                               _e2161821774_
                               _hd2161721778_
                               _tl2161621781_)
                        (if (gx#stx-pair? _tl2161621781_)
                            (let ((_e2162121784_ (gx#syntax-e _tl2161621781_)))
                              (let ((_tl2161921791_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2162121784_)))
                                    (_hd2162021788_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2162121784_))))
                                (if (gx#stx-pair/null? _tl2161921791_)
                                    (let ((___splice3984439845_
                                           (gx#syntax-split-splice
                                            _tl2161921791_
                                            '0)))
                                      (let ((_tl2162421797_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3984439845_
                                                '1)))
                                            (_target2162221794_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3984439845_
                                                '0))))
                                        (if (gx#stx-null? _tl2162421797_)
                                            (___match3992439925_
                                             _e2161521764_
                                             _hd2161421768_
                                             _tl2161321771_
                                             _e2161821774_
                                             _hd2161721778_
                                             _tl2161621781_
                                             _e2162121784_
                                             _hd2162021788_
                                             _tl2161921791_
                                             ___splice3984439845_
                                             _target2162221794_
                                             _tl2162421797_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2157021657_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2157021657_)))))
                            (let () (declare (not safe)) (_g2157021657_)))))
                     (___match3989839899_
                      (lambda (_e2159721870_
                               _hd2159621874_
                               _tl2159521877_
                               _e2160021880_
                               _hd2159921884_
                               _tl2159821887_
                               ___splice3984039841_
                               _target2160121890_
                               _tl2160321893_)
                        (letrec ((_loop2160421896_
                                  (lambda (_hd2160221900_ _arg2160821903_)
                                    (if (gx#stx-pair? _hd2160221900_)
                                        (let ((_e2160521906_
                                               (gx#syntax-e _hd2160221900_)))
                                          (let ((_lp-tl2160721913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2160521906_)))
                                                (_lp-hd2160621910_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2160521906_))))
                                            (_loop2160421896_
                                             _lp-tl2160721913_
                                             (cons _lp-hd2160621910_
                                                   _arg2160821903_))))
                                        (let ((_arg2160921916_
                                               (reverse _arg2160821903_)))
                                          (let ((_L21920_ _arg2160921916_)
                                                (_L21922_ _hd2159921884_))
                                            (if (_dotted-identifier?21563_
                                                 _L21922_)
                                                (___kont3983839839_
                                                 _L21920_
                                                 _L21922_)
                                                (___match3991039911_
                                                 _e2159721870_
                                                 _hd2159621874_
                                                 _tl2159521877_
                                                 _e2160021880_
                                                 _hd2159921884_
                                                 _tl2159821887_))))))))
                          (_loop2160421896_ _target2160121890_ '()))))
                     (___match3989639897_
                      (lambda (_e2159721870_
                               _hd2159621874_
                               _tl2159521877_
                               _e2160021880_
                               _hd2159921884_
                               _tl2159821887_
                               ___splice3984039841_
                               _target2160121890_
                               _tl2160321893_)
                        (if (gx#stx-null? _tl2160321893_)
                            (___match3989839899_
                             _e2159721870_
                             _hd2159621874_
                             _tl2159521877_
                             _e2160021880_
                             _hd2159921884_
                             _tl2159821887_
                             ___splice3984039841_
                             _target2160121890_
                             _tl2160321893_)
                            (if (gx#stx-pair? _tl2159821887_)
                                (let ((_e2162121784_
                                       (gx#syntax-e _tl2159821887_)))
                                  (let ((_tl2161921791_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2162121784_)))
                                        (_hd2162021788_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2162121784_))))
                                    (if (gx#stx-pair/null? _tl2161921791_)
                                        (let ((___splice3984439845_
                                               (gx#syntax-split-splice
                                                _tl2161921791_
                                                '0)))
                                          (let ((_tl2162421797_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3984439845_
                                                    '1)))
                                                (_target2162221794_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3984439845_
                                                    '0))))
                                            (if (gx#stx-null? _tl2162421797_)
                                                (___match3992439925_
                                                 _e2159721870_
                                                 _hd2159621874_
                                                 _tl2159521877_
                                                 _e2160021880_
                                                 _hd2159921884_
                                                 _tl2159821887_
                                                 _e2162121784_
                                                 _hd2162021788_
                                                 _tl2161921791_
                                                 ___splice3984439845_
                                                 _target2162221794_
                                                 _tl2162421797_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2157021657_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2157021657_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2157021657_))))))
                     (___match3987839879_
                      (lambda (_e2157722018_
                               _hd2157622022_
                               _tl2157522025_
                               _e2158022028_
                               _hd2157922032_
                               _tl2157822035_
                               ___splice3983639837_
                               _target2158122038_
                               _tl2158322041_
                               _e2159222044_
                               _hd2159122048_
                               _tl2159022051_)
                        (letrec ((_loop2158422054_
                                  (lambda (_hd2158222058_ _arg2158822061_)
                                    (if (gx#stx-pair? _hd2158222058_)
                                        (let ((_e2158522064_
                                               (gx#syntax-e _hd2158222058_)))
                                          (let ((_lp-tl2158722071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2158522064_)))
                                                (_lp-hd2158622068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2158522064_))))
                                            (_loop2158422054_
                                             _lp-tl2158722071_
                                             (cons _lp-hd2158622068_
                                                   _arg2158822061_))))
                                        (let ((_arg2158922074_
                                               (reverse _arg2158822061_)))
                                          (let ((_L22078_ _hd2159122048_)
                                                (_L22080_ _arg2158922074_)
                                                (_L22081_ _hd2157922032_))
                                            (if (and (_dotted-identifier?21563_
                                                      _L22081_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g2210022103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2210122106_)
                       (cons _g2210022103_ _g2210122106_))
                     '()
                     _L22080_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3983439835_
                                                 _L22078_
                                                 _L22080_
                                                 _L22081_)
                                                (let ((___splice3984039841_
                                                       (gx#syntax-split-splice
                                                        _tl2157822035_
                                                        '0)))
                                                  (let ((_tl2160321893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3984039841_
                                                            '1)))
                                                        (_target2160121890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3984039841_
                                                            '0))))
                                                    (___match3989639897_
                                                     _e2157722018_
                                                     _hd2157622022_
                                                     _tl2157522025_
                                                     _e2158022028_
                                                     _hd2157922032_
                                                     _tl2157822035_
                                                     ___splice3984039841_
                                                     _target2160121890_
                                                     _tl2160321893_))))))))))
                          (_loop2158422054_ _target2158122038_ '())))))
                (if (gx#stx-pair? ___stx3983139832_)
                    (let ((_e2157722018_ (gx#syntax-e ___stx3983139832_)))
                      (let ((_tl2157522025_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2157722018_)))
                            (_hd2157622022_
                             (let ()
                               (declare (not safe))
                               (##car _e2157722018_))))
                        (if (gx#stx-pair? _tl2157522025_)
                            (let ((_e2158022028_ (gx#syntax-e _tl2157522025_)))
                              (let ((_tl2157822035_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2158022028_)))
                                    (_hd2157922032_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2158022028_))))
                                (if (gx#stx-pair/null? _tl2157822035_)
                                    (if (fx>= (gx#stx-length _tl2157822035_)
                                              '1)
                                        (let ((___splice3983639837_
                                               (gx#syntax-split-splice
                                                _tl2157822035_
                                                '1)))
                                          (let ((_tl2158322041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3983639837_
                                                    '1)))
                                                (_target2158122038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3983639837_
                                                    '0))))
                                            (if (gx#stx-pair? _tl2158322041_)
                                                (let ((_e2159222044_
                                                       (gx#syntax-e
                                                        _tl2158322041_)))
                                                  (let ((_tl2159022051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2159222044_)))
                                                        (_hd2159122048_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2159222044_))))
                                                    (if (gx#stx-null?
                                                         _tl2159022051_)
                                                        (___match3987839879_
                                                         _e2157722018_
                                                         _hd2157622022_
                                                         _tl2157522025_
                                                         _e2158022028_
                                                         _hd2157922032_
                                                         _tl2157822035_
                                                         ___splice3983639837_
                                                         _target2158122038_
                                                         _tl2158322041_
                                                         _e2159222044_
                                                         _hd2159122048_
                                                         _tl2159022051_)
                                                        (let ((___splice3984039841_
                                                               (gx#syntax-split-splice
                                                                _tl2157822035_
                                                                '0)))
                                                          (let ((_tl2160321893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3984039841_ '1)))
                        (_target2160121890_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3984039841_ '0))))
                    (if (gx#stx-null? _tl2160321893_)
                        (___match3989839899_
                         _e2157722018_
                         _hd2157622022_
                         _tl2157522025_
                         _e2158022028_
                         _hd2157922032_
                         _tl2157822035_
                         ___splice3984039841_
                         _target2160121890_
                         _tl2160321893_)
                        (if (gx#stx-pair? _tl2157822035_)
                            (let ((_e2162121784_ (gx#syntax-e _tl2157822035_)))
                              (let ((_tl2161921791_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2162121784_)))
                                    (_hd2162021788_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2162121784_))))
                                (if (gx#stx-pair/null? _tl2161921791_)
                                    (let ((___splice3984439845_
                                           (gx#syntax-split-splice
                                            _tl2161921791_
                                            '0)))
                                      (let ((_tl2162421797_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3984439845_
                                                '1)))
                                            (_target2162221794_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3984439845_
                                                '0))))
                                        (if (gx#stx-null? _tl2162421797_)
                                            (___match3992439925_
                                             _e2157722018_
                                             _hd2157622022_
                                             _tl2157522025_
                                             _e2158022028_
                                             _hd2157922032_
                                             _tl2157822035_
                                             _e2162121784_
                                             _hd2162021788_
                                             _tl2161921791_
                                             ___splice3984439845_
                                             _target2162221794_
                                             _tl2162421797_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2157021657_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2157021657_)))))
                            (let ()
                              (declare (not safe))
                              (_g2157021657_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice3984039841_
                                                       (gx#syntax-split-splice
                                                        _tl2157822035_
                                                        '0)))
                                                  (let ((_tl2160321893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3984039841_
                                                            '1)))
                                                        (_target2160121890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3984039841_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2160321893_)
                                                        (___match3989839899_
                                                         _e2157722018_
                                                         _hd2157622022_
                                                         _tl2157522025_
                                                         _e2158022028_
                                                         _hd2157922032_
                                                         _tl2157822035_
                                                         ___splice3984039841_
                                                         _target2160121890_
                                                         _tl2160321893_)
                                                        (if (gx#stx-pair?
                                                             _tl2157822035_)
                                                            (let ((_e2162121784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2157822035_)))
                      (let ((_tl2161921791_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2162121784_)))
                            (_hd2162021788_
                             (let ()
                               (declare (not safe))
                               (##car _e2162121784_))))
                        (if (gx#stx-pair/null? _tl2161921791_)
                            (let ((___splice3984439845_
                                   (gx#syntax-split-splice _tl2161921791_ '0)))
                              (let ((_tl2162421797_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice3984439845_ '1)))
                                    (_target2162221794_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice3984439845_
                                        '0))))
                                (if (gx#stx-null? _tl2162421797_)
                                    (___match3992439925_
                                     _e2157722018_
                                     _hd2157622022_
                                     _tl2157522025_
                                     _e2158022028_
                                     _hd2157922032_
                                     _tl2157822035_
                                     _e2162121784_
                                     _hd2162021788_
                                     _tl2161921791_
                                     ___splice3984439845_
                                     _target2162221794_
                                     _tl2162421797_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2157021657_)))))
                            (let () (declare (not safe)) (_g2157021657_)))))
                    (let () (declare (not safe)) (_g2157021657_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice3984039841_
                                               (gx#syntax-split-splice
                                                _tl2157822035_
                                                '0)))
                                          (let ((_tl2160321893_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3984039841_
                                                    '1)))
                                                (_target2160121890_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3984039841_
                                                    '0))))
                                            (if (gx#stx-null? _tl2160321893_)
                                                (___match3989839899_
                                                 _e2157722018_
                                                 _hd2157622022_
                                                 _tl2157522025_
                                                 _e2158022028_
                                                 _hd2157922032_
                                                 _tl2157822035_
                                                 ___splice3984039841_
                                                 _target2160121890_
                                                 _tl2160321893_)
                                                (if (gx#stx-pair?
                                                     _tl2157822035_)
                                                    (let ((_e2162121784_
                                                           (gx#syntax-e
                                                            _tl2157822035_)))
                                                      (let ((_tl2161921791_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2162121784_)))
                    (_hd2162021788_
                     (let () (declare (not safe)) (##car _e2162121784_))))
                (if (gx#stx-pair/null? _tl2161921791_)
                    (let ((___splice3984439845_
                           (gx#syntax-split-splice _tl2161921791_ '0)))
                      (let ((_tl2162421797_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3984439845_ '1)))
                            (_target2162221794_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3984439845_ '0))))
                        (if (gx#stx-null? _tl2162421797_)
                            (___match3992439925_
                             _e2157722018_
                             _hd2157622022_
                             _tl2157522025_
                             _e2158022028_
                             _hd2157922032_
                             _tl2157822035_
                             _e2162121784_
                             _hd2162021788_
                             _tl2161921791_
                             ___splice3984439845_
                             _target2162221794_
                             _tl2162421797_)
                            (let () (declare (not safe)) (_g2157021657_)))))
                    (let () (declare (not safe)) (_g2157021657_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2157021657_)))))))
                                    (if (gx#stx-pair? _tl2157822035_)
                                        (let ((_e2162121784_
                                               (gx#syntax-e _tl2157822035_)))
                                          (let ((_tl2161921791_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2162121784_)))
                                                (_hd2162021788_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2162121784_))))
                                            (if (gx#stx-pair/null?
                                                 _tl2161921791_)
                                                (let ((___splice3984439845_
                                                       (gx#syntax-split-splice
                                                        _tl2161921791_
                                                        '0)))
                                                  (let ((_tl2162421797_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3984439845_
                                                            '1)))
                                                        (_target2162221794_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3984439845_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2162421797_)
                                                        (___match3992439925_
                                                         _e2157722018_
                                                         _hd2157622022_
                                                         _tl2157522025_
                                                         _e2158022028_
                                                         _hd2157922032_
                                                         _tl2157822035_
                                                         _e2162121784_
                                                         _hd2162021788_
                                                         _tl2161921791_
                                                         ___splice3984439845_
                                                         _target2162221794_
                                                         _tl2162421797_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2157021657_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2157021657_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2157021657_))))))
                            (let () (declare (not safe)) (_g2157021657_)))))
                    (let () (declare (not safe)) (_g2157021657_)))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx22209_)
        (let* ((___stx3995339954_ _$stx22209_)
               (_g2221422254_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3995339954_))))
          (let ((___kont3995639957_
                 (lambda (_L22392_ _L22394_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L22394_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22392_ '()))
                                     '())))))
                (___kont3995839959_
                 (lambda (_L22321_ _L22323_ _L22324_ _L22325_)
                   (cons _L22325_
                         (cons (cons _L22325_
                                     (cons _L22324_ (cons _L22323_ '())))
                               (foldr (lambda (_g2234622349_ _g2234722352_)
                                        (cons _g2234622349_ _g2234722352_))
                                      '()
                                      _L22321_))))))
            (let* ((___match4000840009_
                    (lambda (_e2223322261_
                             _hd2223222265_
                             _tl2223122268_
                             _e2223622271_
                             _hd2223522275_
                             _tl2223422278_
                             _e2223922281_
                             _hd2223822285_
                             _tl2223722288_
                             ___splice3996039961_
                             _target2224022291_
                             _tl2224222294_)
                      (letrec ((_loop2224322297_
                                (lambda (_hd2224122301_ _rest2224722304_)
                                  (if (gx#stx-pair? _hd2224122301_)
                                      (let ((_e2224422307_
                                             (gx#syntax-e _hd2224122301_)))
                                        (let ((_lp-tl2224622314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2224422307_)))
                                              (_lp-hd2224522311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2224422307_))))
                                          (_loop2224322297_
                                           _lp-tl2224622314_
                                           (cons _lp-hd2224522311_
                                                 _rest2224722304_))))
                                      (let ((_rest2224822317_
                                             (reverse _rest2224722304_)))
                                        (___kont3995839959_
                                         _rest2224822317_
                                         _hd2223822285_
                                         _hd2223522275_
                                         _hd2223222265_))))))
                        (_loop2224322297_ _target2224022291_ '()))))
                   (___match3998239983_
                    (lambda (_e2222022362_
                             _hd2221922366_
                             _tl2221822369_
                             _e2222322372_
                             _hd2222222376_
                             _tl2222122379_
                             _e2222622382_
                             _hd2222522386_
                             _tl2222422389_)
                      (let ((_L22392_ _hd2222522386_)
                            (_L22394_ _hd2222222376_))
                        (if (gx#identifier? _L22392_)
                            (___kont3995639957_ _L22392_ _L22394_)
                            (if (gx#stx-pair/null? _tl2222422389_)
                                (let ((___splice3996039961_
                                       (gx#syntax-split-splice
                                        _tl2222422389_
                                        '0)))
                                  (let ((_tl2224222294_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3996039961_
                                            '1)))
                                        (_target2224022291_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3996039961_
                                            '0))))
                                    (if (gx#stx-null? _tl2224222294_)
                                        (___match4000840009_
                                         _e2222022362_
                                         _hd2221922366_
                                         _tl2221822369_
                                         _e2222322372_
                                         _hd2222222376_
                                         _tl2222122379_
                                         _e2222622382_
                                         _hd2222522386_
                                         _tl2222422389_
                                         ___splice3996039961_
                                         _target2224022291_
                                         _tl2224222294_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2221422254_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2221422254_))))))))
              (if (gx#stx-pair? ___stx3995339954_)
                  (let ((_e2222022362_ (gx#syntax-e ___stx3995339954_)))
                    (let ((_tl2221822369_
                           (let () (declare (not safe)) (##cdr _e2222022362_)))
                          (_hd2221922366_
                           (let ()
                             (declare (not safe))
                             (##car _e2222022362_))))
                      (if (gx#stx-pair? _tl2221822369_)
                          (let ((_e2222322372_ (gx#syntax-e _tl2221822369_)))
                            (let ((_tl2222122379_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2222322372_)))
                                  (_hd2222222376_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2222322372_))))
                              (if (gx#stx-pair? _tl2222122379_)
                                  (let ((_e2222622382_
                                         (gx#syntax-e _tl2222122379_)))
                                    (let ((_tl2222422389_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2222622382_)))
                                          (_hd2222522386_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2222622382_))))
                                      (if (gx#stx-null? _tl2222422389_)
                                          (___match3998239983_
                                           _e2222022362_
                                           _hd2221922366_
                                           _tl2221822369_
                                           _e2222322372_
                                           _hd2222222376_
                                           _tl2222122379_
                                           _e2222622382_
                                           _hd2222522386_
                                           _tl2222422389_)
                                          (if (gx#stx-pair/null?
                                               _tl2222422389_)
                                              (let ((___splice3996039961_
                                                     (gx#syntax-split-splice
                                                      _tl2222422389_
                                                      '0)))
                                                (let ((_tl2224222294_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3996039961_
                                                          '1)))
                                                      (_target2224022291_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3996039961_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2224222294_)
                                                      (___match4000840009_
                                                       _e2222022362_
                                                       _hd2221922366_
                                                       _tl2221822369_
                                                       _e2222322372_
                                                       _hd2222222376_
                                                       _tl2222122379_
                                                       _e2222622382_
                                                       _hd2222522386_
                                                       _tl2222422389_
                                                       ___splice3996039961_
                                                       _target2224022291_
                                                       _tl2224222294_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2221422254_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2221422254_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2221422254_)))))
                          (let () (declare (not safe)) (_g2221422254_)))))
                  (let () (declare (not safe)) (_g2221422254_))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx22414_)
        (let* ((___stx4001140012_ _$stx22414_)
               (_g2241922471_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4001140012_))))
          (let ((___kont4001440015_
                 (lambda (_L22647_ _L22649_ _L22650_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L22650_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22649_ '()))
                                     (cons _L22647_ '()))))))
                (___kont4001640017_
                 (lambda (_L22558_
                          _L22560_
                          _L22561_
                          _L22562_
                          _L22563_
                          _L22564_)
                   (cons _L22564_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L22563_
                                           (cons _L22562_
                                                 (foldr (lambda (_g2259122594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2259222597_)
                  (cons _g2259122594_ _g2259222597_))
                '()
                _L22561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L22560_ (cons _L22558_ '())))))))
            (let* ((___match4008640087_
                    (lambda (_e2244422478_
                             _hd2244322482_
                             _tl2244222485_
                             _e2244722488_
                             _hd2244622492_
                             _tl2244522495_
                             _e2245022498_
                             _hd2244922502_
                             _tl2244822505_
                             ___splice4001840019_
                             _target2245122508_
                             _tl2245322511_
                             _e2246222514_
                             _hd2246122518_
                             _tl2246022521_
                             _e2246522524_
                             _hd2246422528_
                             _tl2246322531_)
                      (letrec ((_loop2245422534_
                                (lambda (_hd2245222538_ _path2245822541_)
                                  (if (gx#stx-pair? _hd2245222538_)
                                      (let ((_e2245522544_
                                             (gx#syntax-e _hd2245222538_)))
                                        (let ((_lp-tl2245722551_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2245522544_)))
                                              (_lp-hd2245622548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2245522544_))))
                                          (_loop2245422534_
                                           _lp-tl2245722551_
                                           (cons _lp-hd2245622548_
                                                 _path2245822541_))))
                                      (let ((_path2245922554_
                                             (reverse _path2245822541_)))
                                        (___kont4001640017_
                                         _hd2246422528_
                                         _hd2246122518_
                                         _path2245922554_
                                         _hd2244922502_
                                         _hd2244622492_
                                         _hd2244322482_))))))
                        (_loop2245422534_ _target2245122508_ '()))))
                   (___match4004640047_
                    (lambda (_e2242622607_
                             _hd2242522611_
                             _tl2242422614_
                             _e2242922617_
                             _hd2242822621_
                             _tl2242722624_
                             _e2243222627_
                             _hd2243122631_
                             _tl2243022634_
                             _e2243522637_
                             _hd2243422641_
                             _tl2243322644_)
                      (let ((_L22647_ _hd2243422641_)
                            (_L22649_ _hd2243122631_)
                            (_L22650_ _hd2242822621_))
                        (if (gx#identifier? _L22649_)
                            (___kont4001440015_ _L22647_ _L22649_ _L22650_)
                            (if (gx#stx-pair/null? _tl2243022634_)
                                (if (fx>= (gx#stx-length _tl2243022634_) '2)
                                    (let ((___splice4001840019_
                                           (gx#syntax-split-splice
                                            _tl2243022634_
                                            '2)))
                                      (let ((_tl2245322511_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4001840019_
                                                '1)))
                                            (_target2245122508_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4001840019_
                                                '0))))
                                        (if (gx#stx-pair? _tl2245322511_)
                                            (let ((_e2246222514_
                                                   (gx#syntax-e
                                                    _tl2245322511_)))
                                              (let ((_tl2246022521_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2246222514_)))
                                                    (_hd2246122518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2246222514_))))
                                                (if (gx#stx-pair?
                                                     _tl2246022521_)
                                                    (let ((_e2246522524_
                                                           (gx#syntax-e
                                                            _tl2246022521_)))
                                                      (let ((_tl2246322531_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2246522524_)))
                    (_hd2246422528_
                     (let () (declare (not safe)) (##car _e2246522524_))))
                (if (gx#stx-null? _tl2246322531_)
                    (___match4008640087_
                     _e2242622607_
                     _hd2242522611_
                     _tl2242422614_
                     _e2242922617_
                     _hd2242822621_
                     _tl2242722624_
                     _e2243222627_
                     _hd2243122631_
                     _tl2243022634_
                     ___splice4001840019_
                     _target2245122508_
                     _tl2245322511_
                     _e2246222514_
                     _hd2246122518_
                     _tl2246022521_
                     _e2246522524_
                     _hd2246422528_
                     _tl2246322531_)
                    (let () (declare (not safe)) (_g2241922471_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2241922471_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2241922471_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2241922471_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2241922471_))))))))
              (if (gx#stx-pair? ___stx4001140012_)
                  (let ((_e2242622607_ (gx#syntax-e ___stx4001140012_)))
                    (let ((_tl2242422614_
                           (let () (declare (not safe)) (##cdr _e2242622607_)))
                          (_hd2242522611_
                           (let ()
                             (declare (not safe))
                             (##car _e2242622607_))))
                      (if (gx#stx-pair? _tl2242422614_)
                          (let ((_e2242922617_ (gx#syntax-e _tl2242422614_)))
                            (let ((_tl2242722624_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2242922617_)))
                                  (_hd2242822621_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2242922617_))))
                              (if (gx#stx-pair? _tl2242722624_)
                                  (let ((_e2243222627_
                                         (gx#syntax-e _tl2242722624_)))
                                    (let ((_tl2243022634_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2243222627_)))
                                          (_hd2243122631_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2243222627_))))
                                      (if (gx#stx-pair? _tl2243022634_)
                                          (let ((_e2243522637_
                                                 (gx#syntax-e _tl2243022634_)))
                                            (let ((_tl2243322644_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2243522637_)))
                                                  (_hd2243422641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2243522637_))))
                                              (if (gx#stx-null? _tl2243322644_)
                                                  (___match4004640047_
                                                   _e2242622607_
                                                   _hd2242522611_
                                                   _tl2242422614_
                                                   _e2242922617_
                                                   _hd2242822621_
                                                   _tl2242722624_
                                                   _e2243222627_
                                                   _hd2243122631_
                                                   _tl2243022634_
                                                   _e2243522637_
                                                   _hd2243422641_
                                                   _tl2243322644_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2243022634_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2243022634_)
                        '2)
                  (let ((___splice4001840019_
                         (gx#syntax-split-splice _tl2243022634_ '2)))
                    (let ((_tl2245322511_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4001840019_ '1)))
                          (_target2245122508_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4001840019_ '0))))
                      (if (gx#stx-pair? _tl2245322511_)
                          (let ((_e2246222514_ (gx#syntax-e _tl2245322511_)))
                            (let ((_tl2246022521_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2246222514_)))
                                  (_hd2246122518_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2246222514_))))
                              (if (gx#stx-pair? _tl2246022521_)
                                  (let ((_e2246522524_
                                         (gx#syntax-e _tl2246022521_)))
                                    (let ((_tl2246322531_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2246522524_)))
                                          (_hd2246422528_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2246522524_))))
                                      (if (gx#stx-null? _tl2246322531_)
                                          (___match4008640087_
                                           _e2242622607_
                                           _hd2242522611_
                                           _tl2242422614_
                                           _e2242922617_
                                           _hd2242822621_
                                           _tl2242722624_
                                           _e2243222627_
                                           _hd2243122631_
                                           _tl2243022634_
                                           ___splice4001840019_
                                           _target2245122508_
                                           _tl2245322511_
                                           _e2246222514_
                                           _hd2246122518_
                                           _tl2246022521_
                                           _e2246522524_
                                           _hd2246422528_
                                           _tl2246322531_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2241922471_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2241922471_)))))
                          (let () (declare (not safe)) (_g2241922471_)))))
                  (let () (declare (not safe)) (_g2241922471_)))
              (let () (declare (not safe)) (_g2241922471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2243022634_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2243022634_)
                                                        '2)
                                                  (let ((___splice4001840019_
                                                         (gx#syntax-split-splice
                                                          _tl2243022634_
                                                          '2)))
                                                    (let ((_tl2245322511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4001840019_
                                                              '1)))
                                                          (_target2245122508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4001840019_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2245322511_)
                                                          (let ((_e2246222514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2245322511_)))
                    (let ((_tl2246022521_
                           (let () (declare (not safe)) (##cdr _e2246222514_)))
                          (_hd2246122518_
                           (let ()
                             (declare (not safe))
                             (##car _e2246222514_))))
                      (if (gx#stx-pair? _tl2246022521_)
                          (let ((_e2246522524_ (gx#syntax-e _tl2246022521_)))
                            (let ((_tl2246322531_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2246522524_)))
                                  (_hd2246422528_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2246522524_))))
                              (if (gx#stx-null? _tl2246322531_)
                                  (___match4008640087_
                                   _e2242622607_
                                   _hd2242522611_
                                   _tl2242422614_
                                   _e2242922617_
                                   _hd2242822621_
                                   _tl2242722624_
                                   _e2243222627_
                                   _hd2243122631_
                                   _tl2243022634_
                                   ___splice4001840019_
                                   _target2245122508_
                                   _tl2245322511_
                                   _e2246222514_
                                   _hd2246122518_
                                   _tl2246022521_
                                   _e2246522524_
                                   _hd2246422528_
                                   _tl2246322531_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2241922471_)))))
                          (let () (declare (not safe)) (_g2241922471_)))))
                  (let () (declare (not safe)) (_g2241922471_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2241922471_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2241922471_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2241922471_)))))
                          (let () (declare (not safe)) (_g2241922471_)))))
                  (let () (declare (not safe)) (_g2241922471_))))))))))
