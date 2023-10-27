(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1698333193)
  (begin
    (define __context::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '#f
         '4
         '__context
         '()
         '#f
         '(t ns super table))))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args17629_
        (apply make-struct-instance __context::t _$args17629_)))
    (define __context-t
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '0)))
    (define __context-ns
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '1)))
    (define __context-super
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '2)))
    (define __context-table
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '3)))
    (define __context-t-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '0)))
    (define __context-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '1)))
    (define __context-super-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '2)))
    (define __context-table-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '3)))
    (define &__context-t
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '0)))
    (define &__context-ns
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '1)))
    (define &__context-super
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '2)))
    (define &__context-table
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '3)))
    (define &__context-t-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '0)))
    (define &__context-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '1)))
    (define &__context-super-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '2)))
    (define &__context-table-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '3)))
    (define __runtime::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '#f
         '1
         '__runtime
         '()
         '#f
         '(id))))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args17626_
        (apply make-struct-instance __runtime::t _$args17626_)))
    (define __runtime-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __runtime::t '0)))
    (define __runtime-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __runtime::t '0)))
    (define &__runtime-id
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __runtime::t '0)))
    (define &__runtime-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __runtime::t '0)))
    (define __syntax::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '#f
         '2
         '__syntax
         '()
         '#f
         '(e id))))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args17623_
        (apply make-struct-instance __syntax::t _$args17623_)))
    (define __syntax-e
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __syntax::t '0)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __syntax::t '1)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (make-struct-field-mutator __syntax::t '0)))
    (define __syntax-id-set!
      (let () (declare (not safe)) (make-struct-field-mutator __syntax::t '1)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __syntax::t '0)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __syntax::t '1)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __syntax::t '0)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __syntax::t '1)))
    (define __macro::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         __syntax::t
         '0
         '__macro
         '()
         '#f
         '())))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args17620_
        (apply make-struct-instance __macro::t _$args17620_)))
    (define __special-form::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         __macro::t
         '0
         '__special-form
         '()
         '#f
         '())))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args17617_
        (apply make-struct-instance __special-form::t _$args17617_)))
    (define __core-form::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         __syntax::t
         '0
         '__core-form
         '()
         '#f
         '())))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args17614_
        (apply make-struct-instance __core-form::t _$args17614_)))
    (define __core-expression::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         __core-form::t
         '0
         '__core-expression
         '()
         '#f
         '())))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args17611_
        (apply make-struct-instance __core-expression::t _$args17611_)))
    (define __core-special-form::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         __core-form::t
         '0
         '__core-special-form
         '()
         '#f
         '())))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args17608_
        (apply make-struct-instance __core-special-form::t _$args17608_)))
    (define __struct-info::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         __syntax::t
         '0
         '__struct-info
         '()
         '#f
         '())))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args17605_
        (apply make-struct-instance __struct-info::t _$args17605_)))
    (define __feature::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         __syntax::t
         '0
         '__feature
         '()
         '#f
         '())))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args17602_
        (apply make-struct-instance __feature::t _$args17602_)))
    (define __module::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         __context::t
         '4
         '__module
         '()
         '#f
         '(id path import export))))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args17599_
        (apply make-struct-instance __module::t _$args17599_)))
    (define __module-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '0)))
    (define __module-path
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '1)))
    (define __module-import
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '2)))
    (define __module-export
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '3)))
    (define __module-id-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '0)))
    (define __module-path-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '1)))
    (define __module-import-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '2)))
    (define __module-export-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '3)))
    (define &__module-id
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '0)))
    (define &__module-path
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '1)))
    (define &__module-import
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '2)))
    (define &__module-export
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '3)))
    (define &__module-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '0)))
    (define &__module-path-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '1)))
    (define &__module-import-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '2)))
    (define &__module-export-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '3)))
    (define __*modules* (let () (declare (not safe)) (make-table)))
    (define __*core* (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __*top*
      (let ((__tmp17815
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp17814 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp17815 __tmp17814)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id17574_ _ctx17575_)
        (if _ctx17575_
            (let ((_id17577_
                   (let () (declare (not safe)) (__AST-e _id17574_))))
              (let _lp17579_ ((_ctx17581_ _ctx17575_))
                (let ((_$e17583_
                       (table-ref
                        (##structure-ref _ctx17581_ '4 __context::t '#f)
                        _id17577_
                        '#f)))
                  (if _$e17583_
                      (values _$e17583_)
                      (let ((_$e17586_
                             (##structure-ref _ctx17581_ '3 __context::t '#f)))
                        (if _$e17586_
                            (let () (declare (not safe)) (_lp17579_ _$e17586_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id17592_)
        (let ((_ctx17594_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id17592_ _ctx17594_))))
    (define __core-resolve
      (lambda _g17817_
        (let ((_g17816_ (let () (declare (not safe)) (##length _g17817_))))
          (cond ((let () (declare (not safe)) (##fx= _g17816_ 1))
                 (apply (lambda (_id17592_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id17592_)))
                        _g17817_))
                ((let () (declare (not safe)) (##fx= _g17816_ 2))
                 (apply (lambda (_id17596_ _ctx17597_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id17596_ _ctx17597_)))
                        _g17817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g17817_))))))
    (define __core-bound-id?__%
      (lambda (_id17557_ _is?17558_)
        (let ((_$e17560_
               (let () (declare (not safe)) (__core-resolve__0 _id17557_))))
          (if _$e17560_ (_is?17558_ _$e17560_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id17566_)
        (let ((_is?17568_ true))
          (declare (not safe))
          (__core-bound-id?__% _id17566_ _is?17568_))))
    (define __core-bound-id?
      (lambda _g17819_
        (let ((_g17818_ (let () (declare (not safe)) (##length _g17819_))))
          (cond ((let () (declare (not safe)) (##fx= _g17818_ 1))
                 (apply (lambda (_id17566_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id17566_)))
                        _g17819_))
                ((let () (declare (not safe)) (##fx= _g17818_ 2))
                 (apply (lambda (_id17570_ _is?17571_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id17570_ _is?17571_)))
                        _g17819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g17819_))))))
    (define __core-bind-runtime!__%
      (lambda (_id17540_ _eid17541_ _ctx17542_)
        (if _eid17541_
            (let ((__tmp17822 (##structure-ref _ctx17542_ '4 __context::t '#f))
                  (__tmp17821
                   (let () (declare (not safe)) (__AST-e _id17540_)))
                  (__tmp17820
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid17541_))))
              (declare (not safe))
              (table-set! __tmp17822 __tmp17821 __tmp17820))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id17547_ _eid17548_)
        (let ((_ctx17550_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id17547_ _eid17548_ _ctx17550_))))
    (define __core-bind-runtime!
      (lambda _g17824_
        (let ((_g17823_ (let () (declare (not safe)) (##length _g17824_))))
          (cond ((let () (declare (not safe)) (##fx= _g17823_ 2))
                 (apply (lambda (_id17547_ _eid17548_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id17547_ _eid17548_)))
                        _g17824_))
                ((let () (declare (not safe)) (##fx= _g17823_ 3))
                 (apply (lambda (_id17552_ _eid17553_ _ctx17554_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id17552_
                             _eid17553_
                             _ctx17554_)))
                        _g17824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g17824_))))))
    (define __core-bind-syntax!__%
      (lambda (_id17523_ _e17524_ _make17525_)
        (let ((__tmp17825
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17524_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17524_
                   (_make17525_ _e17524_ _id17523_))))
          (declare (not safe))
          (table-set! __*core* _id17523_ __tmp17825))))
    (define __core-bind-syntax!__0
      (lambda (_id17530_ _e17531_)
        (let ((_make17533_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id17530_ _e17531_ _make17533_))))
    (define __core-bind-syntax!
      (lambda _g17827_
        (let ((_g17826_ (let () (declare (not safe)) (##length _g17827_))))
          (cond ((let () (declare (not safe)) (##fx= _g17826_ 2))
                 (apply (lambda (_id17530_ _e17531_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id17530_ _e17531_)))
                        _g17827_))
                ((let () (declare (not safe)) (##fx= _g17826_ 3))
                 (apply (lambda (_id17535_ _e17536_ _make17537_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id17535_
                             _e17536_
                             _make17537_)))
                        _g17827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g17827_))))))
    (define __core-bind-macro!
      (lambda (_id17519_ _e17520_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17519_ _e17520_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id17516_ _e17517_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17516_ _e17517_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id17500_ _e17501_ _ctx17502_)
        (let ((__tmp17831 (##structure-ref _ctx17502_ '4 __context::t '#f))
              (__tmp17830 (let () (declare (not safe)) (__AST-e _id17500_)))
              (__tmp17828
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17501_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17501_
                   (let ((__tmp17829
                          (let () (declare (not safe)) (__AST-e _id17500_))))
                     (declare (not safe))
                     (##structure __syntax::t _e17501_ __tmp17829)))))
          (declare (not safe))
          (table-set! __tmp17831 __tmp17830 __tmp17828))))
    (define __core-bind-user-syntax!__0
      (lambda (_id17507_ _e17508_)
        (let ((_ctx17510_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id17507_ _e17508_ _ctx17510_))))
    (define __core-bind-user-syntax!
      (lambda _g17833_
        (let ((_g17832_ (let () (declare (not safe)) (##length _g17833_))))
          (cond ((let () (declare (not safe)) (##fx= _g17832_ 2))
                 (apply (lambda (_id17507_ _e17508_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id17507_ _e17508_)))
                        _g17833_))
                ((let () (declare (not safe)) (##fx= _g17832_ 3))
                 (apply (lambda (_id17512_ _e17513_ _ctx17514_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id17512_
                             _e17513_
                             _ctx17514_)))
                        _g17833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g17833_))))))
    (define make-__runtime-id__%
      (lambda (_id17481_ _ctx17482_)
        (let ((_id17484_ (let () (declare (not safe)) (__AST-e _id17481_))))
          (if (let () (declare (not safe)) (eq? _id17484_ '_))
              '#f
              (if (uninterned-symbol? _id17484_)
                  (gensym _id17484_)
                  (if (let () (declare (not safe)) (symbol? _id17484_))
                      (let ((_$e17486_
                             (##structure-ref _ctx17482_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e17486_))
                            (gensym _id17484_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e17486_))
                                (let ((__tmp17834
                                       (##structure-ref
                                        _ctx17482_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp17834 '"#" _id17484_))
                                _id17484_)))
                      (error '"Illegal runtime identifier" _id17484_)))))))
    (define make-__runtime-id__0
      (lambda (_id17492_)
        (let ((_ctx17494_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id17492_ _ctx17494_))))
    (define make-__runtime-id
      (lambda _g17836_
        (let ((_g17835_ (let () (declare (not safe)) (##length _g17836_))))
          (cond ((let () (declare (not safe)) (##fx= _g17835_ 1))
                 (apply (lambda (_id17492_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id17492_)))
                        _g17836_))
                ((let () (declare (not safe)) (##fx= _g17835_ 2))
                 (apply (lambda (_id17496_ _ctx17497_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id17496_ _ctx17497_)))
                        _g17836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g17836_))))))
    (define make-__context-local__%
      (lambda (_super17470_)
        (let ((__tmp17837
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super17470_ __tmp17837))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super17476_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super17476_))))
    (define make-__context-local
      (lambda _g17839_
        (let ((_g17838_ (let () (declare (not safe)) (##length _g17839_))))
          (cond ((let () (declare (not safe)) (##fx= _g17838_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g17839_))
                ((let () (declare (not safe)) (##fx= _g17838_ 1))
                 (apply (lambda (_super17478_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super17478_)))
                        _g17839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g17839_))))))
    (define make-__context-module__%
      (lambda (_id17450_ _ns17451_ _path17452_ _super17453_)
        (let ((__tmp17840
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns17451_
           _super17453_
           __tmp17840
           _id17450_
           _path17452_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id17458_ _ns17459_ _path17460_)
        (let ((_super17462_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id17458_
           _ns17459_
           _path17460_
           _super17462_))))
    (define make-__context-module
      (lambda _g17842_
        (let ((_g17841_ (let () (declare (not safe)) (##length _g17842_))))
          (cond ((let () (declare (not safe)) (##fx= _g17841_ 3))
                 (apply (lambda (_id17458_ _ns17459_ _path17460_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id17458_
                             _ns17459_
                             _path17460_)))
                        _g17842_))
                ((let () (declare (not safe)) (##fx= _g17841_ 4))
                 (apply (lambda (_id17464_ _ns17465_ _path17466_ _super17467_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id17464_
                             _ns17465_
                             _path17466_
                             _super17467_)))
                        _g17842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g17842_))))))
    (define __SRC__%
      (lambda (_e17433_ _src-stx17434_)
        (if (or (let () (declare (not safe)) (pair? _e17433_))
                (let () (declare (not safe)) (symbol? _e17433_)))
            (let ((__tmp17846
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx17434_
                          'gerbil#AST::t))
                       (let ((__tmp17847
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx17434_))))
                         (declare (not safe))
                         (__locat __tmp17847))
                       '#f)))
              (declare (not safe))
              (##make-source _e17433_ __tmp17846))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e17433_ 'gerbil#AST::t))
                (let ((__tmp17845
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e17433_ '1 AST::t '#f)))
                      (__tmp17843
                       (let ((__tmp17844
                              (let ()
                                (declare (not safe))
                                (__AST-source _e17433_))))
                         (declare (not safe))
                         (__locat __tmp17844))))
                  (declare (not safe))
                  (##make-source __tmp17845 __tmp17843))
                (error '"BUG! Cannot sourcify object" _e17433_)))))
    (define __SRC__0
      (lambda (_e17442_)
        (let ((_src-stx17444_ '#f))
          (declare (not safe))
          (__SRC__% _e17442_ _src-stx17444_))))
    (define __SRC
      (lambda _g17849_
        (let ((_g17848_ (let () (declare (not safe)) (##length _g17849_))))
          (cond ((let () (declare (not safe)) (##fx= _g17848_ 1))
                 (apply (lambda (_e17442_)
                          (let () (declare (not safe)) (__SRC__0 _e17442_)))
                        _g17849_))
                ((let () (declare (not safe)) (##fx= _g17848_ 2))
                 (apply (lambda (_e17446_ _src-stx17447_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e17446_ _src-stx17447_)))
                        _g17849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g17849_))))))
    (define __locat
      (lambda (_loc17430_)
        (if (let () (declare (not safe)) (##locat? _loc17430_))
            _loc17430_
            '#f)))
    (define __check-values
      (lambda (_obj17425_ _k17426_)
        (let ((_count17428_
               (if (let () (declare (not safe)) (##values? _obj17425_))
                   (let () (declare (not safe)) (##vector-length _obj17425_))
                   '1)))
          (if (fx= _count17428_ _k17426_)
              '#!void
              (error (if (fx< _count17428_ _k17426_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj17425_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj17425_))
                         _obj17425_)
                     _k17426_)))))
    (define __compile
      (lambda (_stx17395_)
        (let* ((_$e17397_ _stx17395_)
               (_$E1739917405_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17397_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17397_))
              (let* ((_$tgt1740017408_
                      (let () (declare (not safe)) (__AST-e _$e17397_)))
                     (_$hd1740117411_
                      (let () (declare (not safe)) (##car _$tgt1740017408_)))
                     (_$tl1740217414_
                      (let () (declare (not safe)) (##cdr _$tgt1740017408_))))
                (let* ((_form17418_ _$hd1740117411_)
                       (_$e17420_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form17418_))))
                  (if _$e17420_
                      ((lambda (_bind17423_)
                         ((##structure-ref _bind17423_ '1 __syntax::t '#f)
                          _stx17395_))
                       _$e17420_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx17395_
                         _form17418_)))))
              (let () (declare (not safe)) (_$E1739917405_))))))
    (define __compile-error__%
      (lambda (_stx17382_ _detail17383_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx17382_
           _detail17383_))))
    (define __compile-error__0
      (lambda (_stx17388_)
        (let ((_detail17390_ '#f))
          (declare (not safe))
          (__compile-error__% _stx17388_ _detail17390_))))
    (define __compile-error
      (lambda _g17851_
        (let ((_g17850_ (let () (declare (not safe)) (##length _g17851_))))
          (cond ((let () (declare (not safe)) (##fx= _g17850_ 1))
                 (apply (lambda (_stx17388_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx17388_)))
                        _g17851_))
                ((let () (declare (not safe)) (##fx= _g17850_ 2))
                 (apply (lambda (_stx17392_ _detail17393_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx17392_ _detail17393_)))
                        _g17851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g17851_))))))
    (define __compile-ignore%
      (lambda (_stx17379_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx17379_))))
    (define __compile-begin%
      (lambda (_stx17354_)
        (let* ((_$e17356_ _stx17354_)
               (_$E1735817364_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17356_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17356_))
              (let* ((_$tgt1735917367_
                      (let () (declare (not safe)) (__AST-e _$e17356_)))
                     (_$hd1736017370_
                      (let () (declare (not safe)) (##car _$tgt1735917367_)))
                     (_$tl1736117373_
                      (let () (declare (not safe)) (##cdr _$tgt1735917367_))))
                (let* ((_body17377_ _$tl1736117373_)
                       (__tmp17852
                        (let ((__tmp17853 (map __compile _body17377_)))
                          (declare (not safe))
                          (cons 'begin __tmp17853))))
                  (declare (not safe))
                  (__SRC__% __tmp17852 _stx17354_)))
              (let () (declare (not safe)) (_$E1735817364_))))))
    (define __compile-begin-foreign%
      (lambda (_stx17329_)
        (let* ((_$e17331_ _stx17329_)
               (_$E1733317339_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17331_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17331_))
              (let* ((_$tgt1733417342_
                      (let () (declare (not safe)) (__AST-e _$e17331_)))
                     (_$hd1733517345_
                      (let () (declare (not safe)) (##car _$tgt1733417342_)))
                     (_$tl1733617348_
                      (let () (declare (not safe)) (##cdr _$tgt1733417342_))))
                (let* ((_body17352_ _$tl1733617348_)
                       (__tmp17854
                        (let ((__tmp17855
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body17352_))))
                          (declare (not safe))
                          (cons 'begin __tmp17855))))
                  (declare (not safe))
                  (__SRC__% __tmp17854 _stx17329_)))
              (let () (declare (not safe)) (_$E1733317339_))))))
    (define __compile-import%
      (lambda (_stx17304_)
        (let* ((_$e17306_ _stx17304_)
               (_$E1730817314_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17306_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17306_))
              (let* ((_$tgt1730917317_
                      (let () (declare (not safe)) (__AST-e _$e17306_)))
                     (_$hd1731017320_
                      (let () (declare (not safe)) (##car _$tgt1730917317_)))
                     (_$tl1731117323_
                      (let () (declare (not safe)) (##cdr _$tgt1730917317_))))
                (let* ((_body17327_ _$tl1731117323_)
                       (__tmp17856
                        (let ((__tmp17857
                               (let ((__tmp17858
                                      (let ((__tmp17859
                                             (let ()
                                               (declare (not safe))
                                               (cons _body17327_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp17859))))
                                 (declare (not safe))
                                 (cons __tmp17858 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp17857))))
                  (declare (not safe))
                  (__SRC__% __tmp17856 _stx17304_)))
              (let () (declare (not safe)) (_$E1730817314_))))))
    (define __compile-begin-annotation%
      (lambda (_stx17251_)
        (let* ((_$e17253_ _stx17251_)
               (_$E1725517267_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17253_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17253_))
              (let* ((_$tgt1725617270_
                      (let () (declare (not safe)) (__AST-e _$e17253_)))
                     (_$hd1725717273_
                      (let () (declare (not safe)) (##car _$tgt1725617270_)))
                     (_$tl1725817276_
                      (let () (declare (not safe)) (##cdr _$tgt1725617270_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1725817276_))
                    (let* ((_$tgt1725917280_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1725817276_)))
                           (_$hd1726017283_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1725917280_)))
                           (_$tl1726117286_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1725917280_))))
                      (let ((_ann17290_ _$hd1726017283_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1726117286_))
                            (let* ((_$tgt1726217292_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1726117286_)))
                                   (_$hd1726317295_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1726217292_)))
                                   (_$tl1726417298_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1726217292_))))
                              (let ((_expr17302_ _$hd1726317295_))
                                (if (let ((__tmp17860
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1726417298_))))
                                      (declare (not safe))
                                      (equal? __tmp17860 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr17302_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1725517267_)))))
                            (let () (declare (not safe)) (_$E1725517267_)))))
                    (let () (declare (not safe)) (_$E1725517267_))))
              (let () (declare (not safe)) (_$E1725517267_))))))
    (define __compile-define-values%
      (lambda (_stx17142_)
        (let* ((_$e17144_ _stx17142_)
               (_$E1714617158_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17144_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17144_))
              (let* ((_$tgt1714717161_
                      (let () (declare (not safe)) (__AST-e _$e17144_)))
                     (_$hd1714817164_
                      (let () (declare (not safe)) (##car _$tgt1714717161_)))
                     (_$tl1714917167_
                      (let () (declare (not safe)) (##cdr _$tgt1714717161_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1714917167_))
                    (let* ((_$tgt1715017171_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1714917167_)))
                           (_$hd1715117174_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1715017171_)))
                           (_$tl1715217177_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1715017171_))))
                      (let ((_hd17181_ _$hd1715117174_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1715217177_))
                            (let* ((_$tgt1715317183_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1715217177_)))
                                   (_$hd1715417186_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1715317183_)))
                                   (_$tl1715517189_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1715317183_))))
                              (let ((_expr17193_ _$hd1715417186_))
                                (if (let ((__tmp17893
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1715517189_))))
                                      (declare (not safe))
                                      (equal? __tmp17893 '()))
                                    (let* ((_$e17195_ _hd17181_)
                                           (_$E1719717238_
                                            (lambda ()
                                              (let ((_$E1719817223_
                                                     (lambda ()
                                                       (let* ((_$E1719917210_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _$e17195_))))
                      (_ids17213_ _hd17181_)
                      (_len17215_ (length _ids17213_))
                      (_tmp17217_
                       (let ((__tmp17861 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp17861))))
                 (let ((__tmp17862
                        (let ((__tmp17863
                               (let ((__tmp17880
                                      (let ((__tmp17881
                                             (let ((__tmp17882
                                                    (let ((__tmp17883
                                                           (let ((__tmp17884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr17193_))))
                     (declare (not safe))
                     (cons __tmp17884 '()))))
              (declare (not safe))
              (cons _tmp17217_ __tmp17883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp17882))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17881 _stx17142_)))
                                     (__tmp17864
                                      (let ((__tmp17876
                                             (let ((__tmp17877
                                                    (let ((__tmp17878
                                                           (let ((__tmp17879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len17215_ '()))))
                     (declare (not safe))
                     (cons _tmp17217_ __tmp17879))))
              (declare (not safe))
              (cons '__check-values __tmp17878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp17877
                                                _stx17142_)))
                                            (__tmp17865
                                             (let ((__tmp17866
                                                    (let ((__tmp17868
                                                           (lambda (_id17220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k17221_)
                     (if (let () (declare (not safe)) (__AST-e _id17220_))
                         (let ((__tmp17869
                                (let ((__tmp17870
                                       (let ((__tmp17875
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id17220_)))
                                             (__tmp17871
                                              (let ((__tmp17872
                                                     (let ((__tmp17873
                                                            (let ((__tmp17874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k17221_ '()))))
                      (declare (not safe))
                      (cons _tmp17217_ __tmp17874))))
               (declare (not safe))
               (cons '##vector-ref __tmp17873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17872 '()))))
                                         (declare (not safe))
                                         (cons __tmp17875 __tmp17871))))
                                  (declare (not safe))
                                  (cons 'define __tmp17870))))
                           (declare (not safe))
                           (__SRC__% __tmp17869 _stx17142_))
                         '#f)))
                  (__tmp17867 (let () (declare (not safe)) (iota _len17215_))))
              (declare (not safe))
              (filter-map2 __tmp17868 _ids17213_ __tmp17867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp17866))))
                                        (declare (not safe))
                                        (cons __tmp17876 __tmp17865))))
                                 (declare (not safe))
                                 (cons __tmp17880 __tmp17864))))
                          (declare (not safe))
                          (cons 'begin __tmp17863))))
                   (declare (not safe))
                   (__SRC__% __tmp17862 _stx17142_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e17195_))
                                                    (let* ((_$tgt1720017226_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e17195_)))
                                                           (_$hd1720117229_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1720017226_)))
                                                           (_$tl1720217232_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1720017226_))))
                                                      (let ((_id17236_
                                                             _$hd1720117229_))
                                                        (if (let ((__tmp17890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1720217232_))))
                      (declare (not safe))
                      (equal? __tmp17890 '()))
                    (let ((__tmp17885
                           (let ((__tmp17886
                                  (let ((__tmp17889
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id17236_)))
                                        (__tmp17887
                                         (let ((__tmp17888
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr17193_))))
                                           (declare (not safe))
                                           (cons __tmp17888 '()))))
                                    (declare (not safe))
                                    (cons __tmp17889 __tmp17887))))
                             (declare (not safe))
                             (cons 'define __tmp17886))))
                      (declare (not safe))
                      (__SRC__% __tmp17885 _stx17142_))
                    (let () (declare (not safe)) (_$E1719817223_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1719817223_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e17195_))
                                          (let* ((_$tgt1720317241_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e17195_)))
                                                 (_$hd1720417244_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1720317241_)))
                                                 (_$tl1720517247_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1720317241_))))
                                            (if (let ((__tmp17892
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1720417244_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17892 '#f))
                                                (if (let ((__tmp17891
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1720517247_))))
                                                      (declare (not safe))
                                                      (equal? __tmp17891 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr17193_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1719717238_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1719717238_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1719717238_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1714617158_)))))
                            (let () (declare (not safe)) (_$E1714617158_)))))
                    (let () (declare (not safe)) (_$E1714617158_))))
              (let () (declare (not safe)) (_$E1714617158_))))))
    (define __compile-head-id
      (lambda (_e17140_)
        (let ((__tmp17894
               (if (let () (declare (not safe)) (__AST-e _e17140_))
                   _e17140_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp17894))))
    (define __compile-lambda-head
      (lambda (_hd17097_)
        (let _recur17099_ ((_rest17101_ _hd17097_))
          (let* ((_$e17103_ _rest17101_)
                 (_$E1710517123_
                  (lambda ()
                    (let ((_$E1710617120_
                           (lambda ()
                             (let* ((_$E1710717115_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _$e17103_))))
                                    (_tail17118_ _$e17103_))
                               (declare (not safe))
                               (__compile-head-id _tail17118_)))))
                      (if (let ((__tmp17895
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e17103_))))
                            (declare (not safe))
                            (equal? __tmp17895 '()))
                          '()
                          (let () (declare (not safe)) (_$E1710617120_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e17103_))
                (let* ((_$tgt1710817126_
                        (let () (declare (not safe)) (__AST-e _$e17103_)))
                       (_$hd1710917129_
                        (let () (declare (not safe)) (##car _$tgt1710817126_)))
                       (_$tl1711017132_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1710817126_))))
                  (let* ((_hd17136_ _$hd1710917129_)
                         (_rest17138_ _$tl1711017132_))
                    (let ((__tmp17897
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd17136_)))
                          (__tmp17896
                           (let ()
                             (declare (not safe))
                             (_recur17099_ _rest17138_))))
                      (declare (not safe))
                      (cons __tmp17897 __tmp17896))))
                (let () (declare (not safe)) (_$E1710517123_)))))))
    (define __compile-lambda%
      (lambda (_stx17044_)
        (let* ((_$e17046_ _stx17044_)
               (_$E1704817060_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17046_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17046_))
              (let* ((_$tgt1704917063_
                      (let () (declare (not safe)) (__AST-e _$e17046_)))
                     (_$hd1705017066_
                      (let () (declare (not safe)) (##car _$tgt1704917063_)))
                     (_$tl1705117069_
                      (let () (declare (not safe)) (##cdr _$tgt1704917063_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1705117069_))
                    (let* ((_$tgt1705217073_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1705117069_)))
                           (_$hd1705317076_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1705217073_)))
                           (_$tl1705417079_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1705217073_))))
                      (let ((_hd17083_ _$hd1705317076_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1705417079_))
                            (let* ((_$tgt1705517085_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1705417079_)))
                                   (_$hd1705617088_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1705517085_)))
                                   (_$tl1705717091_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1705517085_))))
                              (let ((_body17095_ _$hd1705617088_))
                                (if (let ((__tmp17903
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1705717091_))))
                                      (declare (not safe))
                                      (equal? __tmp17903 '()))
                                    (let ((__tmp17898
                                           (let ((__tmp17899
                                                  (let ((__tmp17902
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd17083_)))
                                                        (__tmp17900
                                                         (let ((__tmp17901
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body17095_))))
                   (declare (not safe))
                   (cons __tmp17901 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17902
                                                          __tmp17900))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp17899))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17898 _stx17044_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1704817060_)))))
                            (let () (declare (not safe)) (_$E1704817060_)))))
                    (let () (declare (not safe)) (_$E1704817060_))))
              (let () (declare (not safe)) (_$E1704817060_))))))
    (define __compile-case-lambda%
      (lambda (_stx16836_)
        (letrec ((_variadic?16838_
                  (lambda (_hd17009_)
                    (let* ((_$e17011_ _hd17009_)
                           (_$E1701317029_
                            (lambda ()
                              (let ((_$E1701417026_
                                     (lambda ()
                                       (let ((_$E1701517023_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _$e17011_)))))
                                         '#t))))
                                (if (let ((__tmp17904
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e17011_))))
                                      (declare (not safe))
                                      (equal? __tmp17904 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1701417026_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e17011_))
                          (let* ((_$tgt1701617032_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e17011_)))
                                 (_$hd1701717035_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1701617032_)))
                                 (_$tl1701817038_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1701617032_))))
                            (let ((_rest17042_ _$tl1701817038_))
                              (declare (not safe))
                              (_variadic?16838_ _rest17042_)))
                          (let () (declare (not safe)) (_$E1701317029_))))))
                 (_arity16839_
                  (lambda (_hd16974_)
                    (let _lp16976_ ((_rest16978_ _hd16974_) (_k16979_ '0))
                      (let* ((_$e16981_ _rest16978_)
                             (_$E1698316994_
                              (lambda ()
                                (let ((_$E1698416991_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _$e16981_)))))
                                  _k16979_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e16981_))
                            (let* ((_$tgt1698516997_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e16981_)))
                                   (_$hd1698617000_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1698516997_)))
                                   (_$tl1698717003_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1698516997_))))
                              (let* ((_rest17007_ _$tl1698717003_)
                                     (__tmp17905
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k16979_ '1))))
                                (declare (not safe))
                                (_lp16976_ _rest17007_ __tmp17905)))
                            (let () (declare (not safe)) (_$E1698316994_)))))))
                 (_generate16840_
                  (lambda (_rest16901_ _args16902_ _len16903_)
                    (let* ((_$e16905_ _rest16901_)
                           (_$E1690716918_
                            (lambda ()
                              (let* ((_$E1690816915_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _$e16905_))))
                                     (__tmp17906
                                      (let ((__tmp17907
                                             (let ((__tmp17908
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args16902_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp17908))))
                                        (declare (not safe))
                                        (cons 'error __tmp17907))))
                                (declare (not safe))
                                (__SRC__% __tmp17906 _stx16836_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16905_))
                          (let* ((_$tgt1690916921_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16905_)))
                                 (_$hd1691016924_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1690916921_)))
                                 (_$tl1691116927_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1690916921_))))
                            (let* ((_clause16931_ _$hd1691016924_)
                                   (_rest16933_ _$tl1691116927_)
                                   (_$e16935_ _clause16931_)
                                   (_$E1693716946_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _$e16935_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e16935_))
                                  (let* ((_$tgt1693816949_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e16935_)))
                                         (_$hd1693916952_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1693816949_)))
                                         (_$tl1694016955_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1693816949_))))
                                    (let ((_hd16959_ _$hd1693916952_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1694016955_))
                                          (let* ((_$tgt1694116961_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1694016955_)))
                                                 (_$hd1694216964_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1694116961_)))
                                                 (_$tl1694316967_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1694116961_))))
                                            (if (let ((__tmp17923
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1694316967_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17923 '()))
                                                (let ((_clen16971_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity16839_
                                                          _hd16959_)))
                                                      (_cmp16972_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?16838_
                                                              _hd16959_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp17909
                                                         (let ((__tmp17910
                                                                (let ((__tmp17920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17921
                                      (let ((__tmp17922
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen16971_ '()))))
                                        (declare (not safe))
                                        (cons _len16903_ __tmp17922))))
                                 (declare (not safe))
                                 (cons _cmp16972_ __tmp17921)))
                              (__tmp17911
                               (let ((__tmp17914
                                      (let ((__tmp17915
                                             (let ((__tmp17916
                                                    (let ((__tmp17918
                                                           (let ((__tmp17919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause16931_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp17919)))
                  (__tmp17917
                   (let () (declare (not safe)) (cons _args16902_ '()))))
              (declare (not safe))
              (cons __tmp17918 __tmp17917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp17916))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17915 _stx16836_)))
                                     (__tmp17912
                                      (let ((__tmp17913
                                             (let ()
                                               (declare (not safe))
                                               (_generate16840_
                                                _rest16933_
                                                _args16902_
                                                _len16903_))))
                                        (declare (not safe))
                                        (cons __tmp17913 '()))))
                                 (declare (not safe))
                                 (cons __tmp17914 __tmp17912))))
                          (declare (not safe))
                          (cons __tmp17920 __tmp17911))))
                   (declare (not safe))
                   (cons 'if __tmp17910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp17909
                                                     _stx16836_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1693716946_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1693716946_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1693716946_)))))
                          (let () (declare (not safe)) (_$E1690716918_)))))))
          (let* ((_$e16842_ _stx16836_)
                 (_$E1684416876_
                  (lambda ()
                    (let ((_$E1684516858_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16842_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16842_))
                          (let* ((_$tgt1684616861_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16842_)))
                                 (_$hd1684716864_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1684616861_)))
                                 (_$tl1684816867_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1684616861_))))
                            (let ((_clauses16871_ _$tl1684816867_))
                              (let ((_args16873_
                                     (let ((__tmp17924 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17924 _stx16836_)))
                                    (_len16874_
                                     (let ((__tmp17925 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17925 _stx16836_))))
                                (let ((__tmp17926
                                       (let ((__tmp17927
                                              (let ((__tmp17928
                                                     (let ((__tmp17929
                                                            (let ((__tmp17930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17931
                                  (let ((__tmp17934
                                         (let ((__tmp17935
                                                (let ((__tmp17936
                                                       (let ((__tmp17937
                                                              (let ((__tmp17938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17939
                                    (let ()
                                      (declare (not safe))
                                      (cons _args16873_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp17939))))
                        (declare (not safe))
                        (__SRC__% __tmp17938 _stx16836_))))
                 (declare (not safe))
                 (cons __tmp17937 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len16874_
                                                        __tmp17936))))
                                           (declare (not safe))
                                           (cons __tmp17935 '())))
                                        (__tmp17932
                                         (let ((__tmp17933
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate16840_
                                                   _clauses16871_
                                                   _args16873_
                                                   _len16874_))))
                                           (declare (not safe))
                                           (cons __tmp17933 '()))))
                                    (declare (not safe))
                                    (cons __tmp17934 __tmp17932))))
                             (declare (not safe))
                             (cons 'let __tmp17931))))
                      (declare (not safe))
                      (__SRC__% __tmp17930 _stx16836_))))
               (declare (not safe))
               (cons __tmp17929 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args16873_
                                                      __tmp17928))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp17927))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17926 _stx16836_)))))
                          (let () (declare (not safe)) (_$E1684516858_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16842_))
                (let* ((_$tgt1684916879_
                        (let () (declare (not safe)) (__AST-e _$e16842_)))
                       (_$hd1685016882_
                        (let () (declare (not safe)) (##car _$tgt1684916879_)))
                       (_$tl1685116885_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1684916879_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1685116885_))
                      (let* ((_$tgt1685216889_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1685116885_)))
                             (_$hd1685316892_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1685216889_)))
                             (_$tl1685416895_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1685216889_))))
                        (let ((_clause16899_ _$hd1685316892_))
                          (if (let ((__tmp17941
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1685416895_))))
                                (declare (not safe))
                                (equal? __tmp17941 '()))
                              (let ((__tmp17940
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause16899_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp17940))
                              (let () (declare (not safe)) (_$E1684416876_)))))
                      (let () (declare (not safe)) (_$E1684416876_))))
                (let () (declare (not safe)) (_$E1684416876_)))))))
    (define __compile-let-form
      (lambda (_stx16605_ _compile-simple16606_ _compile-values16607_)
        (letrec ((_simple-bind?16609_
                  (lambda (_hd16794_)
                    (let* ((_hd1679516805_ _hd16794_)
                           (_else1679816813_ (lambda () '#f)))
                      (let ((_K1680116826_ (lambda (_id16824_) '#t))
                            (_K1680016818_ (lambda () '#t)))
                        (let ((_try-match1679716821_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1679516805_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1680016818_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1679816813_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1679516805_))
                              (let ((_tl1680316831_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1679516805_)))
                                    (_hd1680216829_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1679516805_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1680316831_))
                                    (let ((_id16834_ _hd1680216829_))
                                      (declare (not safe))
                                      (_K1680116826_ _id16834_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1679716821_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1679716821_))))))))
                 (_car-e16610_
                  (lambda (_hd16792_)
                    (if (let () (declare (not safe)) (pair? _hd16792_))
                        (car _hd16792_)
                        _hd16792_))))
          (let* ((_$e16612_ _stx16605_)
                 (_$E1661416757_
                  (lambda ()
                    (let ((_$E1661516637_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16612_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16612_))
                          (let* ((_$tgt1661616640_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16612_)))
                                 (_$hd1661716643_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1661616640_)))
                                 (_$tl1661816646_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1661616640_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1661816646_))
                                (let* ((_$tgt1661916650_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1661816646_)))
                                       (_$hd1662016653_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1661916650_)))
                                       (_$tl1662116656_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1661916650_))))
                                  (let ((_hd16660_ _$hd1662016653_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1662116656_))
                                        (let* ((_$tgt1662216662_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1662116656_)))
                                               (_$hd1662316665_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1662216662_)))
                                               (_$tl1662416668_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1662216662_))))
                                          (let ((_body16672_ _$hd1662316665_))
                                            (if (let ((__tmp17944
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1662416668_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17944 '()))
                                                (let* ((_hd-ids16712_
                                                        (map (lambda (_bind16674_)
                                                               (let* ((_$e16676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind16674_)
                              (_$E1667816687_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _$e16676_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16676_))
                             (let* ((_$tgt1667916690_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16676_)))
                                    (_$hd1668016693_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1667916690_)))
                                    (_$tl1668116696_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1667916690_))))
                               (let ((_ids16700_ _$hd1668016693_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1668116696_))
                                     (let* ((_$tgt1668216702_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1668116696_)))
                                            (_$hd1668316705_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1668216702_)))
                                            (_$tl1668416708_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1668216702_))))
                                       (if (let ((__tmp17942
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1668416708_))))
                                             (declare (not safe))
                                             (equal? __tmp17942 '()))
                                           _ids16700_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1667816687_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1667816687_)))))
                             (let () (declare (not safe)) (_$E1667816687_)))))
                     _hd16660_))
               (_exprs16752_
                (map (lambda (_bind16714_)
                       (let* ((_$e16716_ _bind16714_)
                              (_$E1671816727_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _$e16716_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16716_))
                             (let* ((_$tgt1671916730_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16716_)))
                                    (_$hd1672016733_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1671916730_)))
                                    (_$tl1672116736_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1671916730_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1672116736_))
                                   (let* ((_$tgt1672216740_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1672116736_)))
                                          (_$hd1672316743_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1672216740_)))
                                          (_$tl1672416746_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1672216740_))))
                                     (let ((_expr16750_ _$hd1672316743_))
                                       (if (let ((__tmp17943
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1672416746_))))
                                             (declare (not safe))
                                             (equal? __tmp17943 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr16750_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1671816727_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1671816727_))))
                             (let () (declare (not safe)) (_$E1671816727_)))))
                     _hd16660_))
               (_body16754_
                (let () (declare (not safe)) (__compile _body16672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?16609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids16712_))
              (_compile-simple16606_
               (map _car-e16610_ _hd-ids16712_)
               _exprs16752_
               _body16754_)
              (_compile-values16607_ _hd-ids16712_ _exprs16752_ _body16754_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1661516637_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1661516637_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1661516637_))))
                          (let () (declare (not safe)) (_$E1661516637_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16612_))
                (let* ((_$tgt1662516760_
                        (let () (declare (not safe)) (__AST-e _$e16612_)))
                       (_$hd1662616763_
                        (let () (declare (not safe)) (##car _$tgt1662516760_)))
                       (_$tl1662716766_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1662516760_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1662716766_))
                      (let* ((_$tgt1662816770_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1662716766_)))
                             (_$hd1662916773_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1662816770_)))
                             (_$tl1663016776_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1662816770_))))
                        (if (let ((__tmp17946
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1662916773_))))
                              (declare (not safe))
                              (equal? __tmp17946 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1663016776_))
                                (let* ((_$tgt1663116780_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1663016776_)))
                                       (_$hd1663216783_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1663116780_)))
                                       (_$tl1663316786_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1663116780_))))
                                  (let ((_body16790_ _$hd1663216783_))
                                    (if (let ((__tmp17945
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1663316786_))))
                                          (declare (not safe))
                                          (equal? __tmp17945 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body16790_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1661416757_)))))
                                (let () (declare (not safe)) (_$E1661416757_)))
                            (let () (declare (not safe)) (_$E1661416757_))))
                      (let () (declare (not safe)) (_$E1661416757_))))
                (let () (declare (not safe)) (_$E1661416757_)))))))
    (define __compile-let-values%
      (lambda (_stx16420_)
        (letrec ((_compile-simple16422_
                  (lambda (_hd-ids16601_ _exprs16602_ _body16603_)
                    (let ((__tmp17947
                           (let ((__tmp17948
                                  (let ((__tmp17950
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16601_)
                                              _exprs16602_))
                                        (__tmp17949
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16603_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17950 __tmp17949))))
                             (declare (not safe))
                             (cons 'let __tmp17948))))
                      (declare (not safe))
                      (__SRC__% __tmp17947 _stx16420_))))
                 (_compile-values16423_
                  (lambda (_hd-ids16519_ _exprs16520_ _body16521_)
                    (let _lp16523_ ((_rest16525_ _hd-ids16519_)
                                    (_exprs16526_ _exprs16520_)
                                    (_bind16527_ '())
                                    (_post16528_ '()))
                      (let* ((_rest1652916543_ _rest16525_)
                             (_else1653216551_
                              (lambda ()
                                (let ((__tmp17951
                                       (let ((__tmp17952
                                              (let ((__tmp17955
                                                     (reverse _bind16527_))
                                                    (__tmp17953
                                                     (let ((__tmp17954
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post16424_
                                                               _post16528_
                                                               _body16521_))))
                                                       (declare (not safe))
                                                       (cons __tmp17954 '()))))
                                                (declare (not safe))
                                                (cons __tmp17955 __tmp17953))))
                                         (declare (not safe))
                                         (cons 'let __tmp17952))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17951 _stx16420_)))))
                        (let ((_K1653716584_
                               (lambda (_rest16581_ _id16582_)
                                 (let ((__tmp17961 (cdr _exprs16526_))
                                       (__tmp17956
                                        (let ((__tmp17957
                                               (let ((__tmp17960
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16582_)))
                                                     (__tmp17958
                                                      (let ((__tmp17959
                                                             (car _exprs16526_)))
                                                        (declare (not safe))
                                                        (cons __tmp17959
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17960
                                                       __tmp17958))))
                                          (declare (not safe))
                                          (cons __tmp17957 _bind16527_))))
                                   (declare (not safe))
                                   (_lp16523_
                                    _rest16581_
                                    __tmp17961
                                    __tmp17956
                                    _post16528_))))
                              (_K1653416566_
                               (lambda (_rest16555_ _hd16556_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16556_))
                                     (let ((__tmp17982 (cdr _exprs16526_))
                                           (__tmp17975
                                            (let ((__tmp17976
                                                   (let ((__tmp17981
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16556_)))
                                                         (__tmp17977
                                                          (let ((__tmp17978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17979
                                (let ((__tmp17980 (car _exprs16526_)))
                                  (declare (not safe))
                                  (cons __tmp17980 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17979))))
                    (declare (not safe))
                    (cons __tmp17978 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17981
                                                           __tmp17977))))
                                              (declare (not safe))
                                              (cons __tmp17976 _bind16527_))))
                                       (declare (not safe))
                                       (_lp16523_
                                        _rest16555_
                                        __tmp17982
                                        __tmp17975
                                        _post16528_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16556_))
                                         (let* ((_len16558_ (length _hd16556_))
                                                (_tmp16560_
                                                 (let ((__tmp17962 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17962))))
                                           (let ((__tmp17974
                                                  (cdr _exprs16526_))
                                                 (__tmp17970
                                                  (let ((__tmp17971
                                                         (let ((__tmp17972
                                                                (let ((__tmp17973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16526_)))
                          (declare (not safe))
                          (cons __tmp17973 '()))))
                   (declare (not safe))
                   (cons _tmp16560_ __tmp17972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17971
                                                          _bind16527_)))
                                                 (__tmp17963
                                                  (let ((__tmp17964
                                                         (let ((__tmp17965
                                                                (let ((__tmp17966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17968
                                      (lambda (_id16563_ _k16564_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16563_))
                                            (let ((__tmp17969
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16563_))))
                                              (declare (not safe))
                                              (cons __tmp17969 _k16564_))
                                            '#f)))
                                     (__tmp17967
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16558_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17968
                                  _hd16556_
                                  __tmp17967))))
                          (declare (not safe))
                          (cons _len16558_ __tmp17966))))
                   (declare (not safe))
                   (cons _tmp16560_ __tmp17965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17964
                                                          _post16528_))))
                                             (declare (not safe))
                                             (_lp16523_
                                              _rest16555_
                                              __tmp17974
                                              __tmp17970
                                              __tmp17963)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16420_
                                            _hd16556_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1652916543_))
                              (let ((_tl1653916589_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1652916543_)))
                                    (_hd1653816587_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1652916543_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1653816587_))
                                    (let ((_tl1654116594_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1653816587_)))
                                          (_hd1654016592_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1653816587_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1654116594_))
                                          (let ((_id16597_ _hd1654016592_)
                                                (_rest16599_ _tl1653916589_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1653716584_
                                               _rest16599_
                                               _id16597_)))
                                          (let ((_hd16574_ _hd1653816587_)
                                                (_rest16576_ _tl1653916589_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1653416566_
                                               _rest16576_
                                               _hd16574_)))))
                                    (let ((_hd16574_ _hd1653816587_)
                                          (_rest16576_ _tl1653916589_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1653416566_
                                         _rest16576_
                                         _hd16574_)))))
                              (let ()
                                (declare (not safe))
                                (_else1653216551_))))))))
                 (_compile-post16424_
                  (lambda (_post16426_ _body16427_)
                    (let _lp16429_ ((_rest16431_ _post16426_)
                                    (_check16432_ '())
                                    (_bind16433_ '()))
                      (let* ((_rest1643416446_ _rest16431_)
                             (_else1643616454_
                              (lambda ()
                                (let ((__tmp17983
                                       (let ((__tmp17984
                                              (let ((__tmp17985
                                                     (let ((__tmp17986
                                                            (let ((__tmp17987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17988
                                  (let ((__tmp17989
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16427_ '()))))
                                    (declare (not safe))
                                    (cons _bind16433_ __tmp17989))))
                             (declare (not safe))
                             (cons 'let __tmp17988))))
                      (declare (not safe))
                      (__SRC__% __tmp17987 _stx16420_))))
               (declare (not safe))
               (cons __tmp17986 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17985
                                                        _check16432_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17984))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17983 _stx16420_))))
                             (_K1643816493_
                              (lambda (_rest16457_
                                       _init16458_
                                       _len16459_
                                       _tmp16460_)
                                (let ((__tmp17997
                                       (let ((__tmp17998
                                              (let ((__tmp17999
                                                     (let ((__tmp18000
                                                            (let ((__tmp18001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16459_ '()))))
                      (declare (not safe))
                      (cons _tmp16460_ __tmp18001))))
               (declare (not safe))
               (cons '__check-values __tmp18000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17999
                                                 _stx16420_))))
                                         (declare (not safe))
                                         (cons __tmp17998 _check16432_)))
                                      (__tmp17990
                                       (let ((__tmp17991
                                              (lambda (_hd16462_ _r16463_)
                                                (let* ((_hd1646416471_
                                                        _hd16462_)
                                                       (_E1646616475_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1646416471_)))
               (_K1646716481_
                (lambda (_k16478_ _id16479_)
                  (let ((__tmp17992
                         (let ((__tmp17993
                                (let ((__tmp17994
                                       (let ((__tmp17995
                                              (let ((__tmp17996
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k16478_ '()))))
                                                (declare (not safe))
                                                (cons _tmp16460_ __tmp17996))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp17995))))
                                  (declare (not safe))
                                  (cons __tmp17994 '()))))
                           (declare (not safe))
                           (cons _id16479_ __tmp17993))))
                    (declare (not safe))
                    (cons __tmp17992 _r16463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1646416471_))
                                                      (let ((_hd1646816484_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1646416471_)))
                    (_tl1646916486_
                     (let () (declare (not safe)) (##cdr _hd1646416471_))))
                (let* ((_id16489_ _hd1646816484_) (_k16491_ _tl1646916486_))
                  (declare (not safe))
                  (_K1646716481_ _k16491_ _id16489_)))
              (let () (declare (not safe)) (_E1646616475_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17991
                                                 _bind16433_
                                                 _init16458_))))
                                  (declare (not safe))
                                  (_lp16429_
                                   _rest16457_
                                   __tmp17997
                                   __tmp17990)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1643416446_))
                            (let ((_hd1643916496_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1643416446_)))
                                  (_tl1644016498_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1643416446_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1643916496_))
                                  (let ((_hd1644116501_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1643916496_)))
                                        (_tl1644216503_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1643916496_))))
                                    (let ((_tmp16506_ _hd1644116501_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1644216503_))
                                          (let ((_hd1644316508_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1644216503_)))
                                                (_tl1644416510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1644216503_))))
                                            (let* ((_len16513_ _hd1644316508_)
                                                   (_init16515_ _tl1644416510_)
                                                   (_rest16517_
                                                    _tl1644016498_))
                                              (declare (not safe))
                                              (_K1643816493_
                                               _rest16517_
                                               _init16515_
                                               _len16513_
                                               _tmp16506_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1643616454_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1643616454_))))
                            (let ()
                              (declare (not safe))
                              (_else1643616454_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16420_
             _compile-simple16422_
             _compile-values16423_)))))
    (define __compile-letrec-values%
      (lambda (_stx16220_)
        (letrec ((_compile-simple16222_
                  (lambda (_hd-ids16416_ _exprs16417_ _body16418_)
                    (let ((__tmp18002
                           (let ((__tmp18003
                                  (let ((__tmp18005
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16416_)
                                              _exprs16417_))
                                        (__tmp18004
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16418_ '()))))
                                    (declare (not safe))
                                    (cons __tmp18005 __tmp18004))))
                             (declare (not safe))
                             (cons 'letrec __tmp18003))))
                      (declare (not safe))
                      (__SRC__% __tmp18002 _stx16220_))))
                 (_compile-values16223_
                  (lambda (_hd-ids16330_ _exprs16331_ _body16332_)
                    (let _lp16334_ ((_rest16336_ _hd-ids16330_)
                                    (_exprs16337_ _exprs16331_)
                                    (_pre16338_ '())
                                    (_bind16339_ '())
                                    (_post16340_ '()))
                      (let* ((_rest1634116355_ _rest16336_)
                             (_else1634416363_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner16224_
                                   _pre16338_
                                   _bind16339_
                                   _post16340_
                                   _body16332_)))))
                        (let ((_K1634916399_
                               (lambda (_rest16396_ _id16397_)
                                 (let ((__tmp18011 (cdr _exprs16337_))
                                       (__tmp18006
                                        (let ((__tmp18007
                                               (let ((__tmp18010
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16397_)))
                                                     (__tmp18008
                                                      (let ((__tmp18009
                                                             (car _exprs16337_)))
                                                        (declare (not safe))
                                                        (cons __tmp18009
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp18010
                                                       __tmp18008))))
                                          (declare (not safe))
                                          (cons __tmp18007 _bind16339_))))
                                   (declare (not safe))
                                   (_lp16334_
                                    _rest16396_
                                    __tmp18011
                                    _pre16338_
                                    __tmp18006
                                    _post16340_))))
                              (_K1634616381_
                               (lambda (_rest16367_ _hd16368_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16368_))
                                     (let ((__tmp18039 (cdr _exprs16337_))
                                           (__tmp18032
                                            (let ((__tmp18033
                                                   (let ((__tmp18038
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16368_)))
                                                         (__tmp18034
                                                          (let ((__tmp18035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp18036
                                (let ((__tmp18037 (car _exprs16337_)))
                                  (declare (not safe))
                                  (cons __tmp18037 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp18036))))
                    (declare (not safe))
                    (cons __tmp18035 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18038
                                                           __tmp18034))))
                                              (declare (not safe))
                                              (cons __tmp18033 _bind16339_))))
                                       (declare (not safe))
                                       (_lp16334_
                                        _rest16367_
                                        __tmp18039
                                        _pre16338_
                                        __tmp18032
                                        _post16340_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16368_))
                                         (let* ((_len16370_ (length _hd16368_))
                                                (_tmp16372_
                                                 (let ((__tmp18012 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp18012))))
                                           (let ((__tmp18031
                                                  (cdr _exprs16337_))
                                                 (__tmp18024
                                                  (let ((__tmp18025
                                                         (lambda (_id16375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r16376_)
                   (if (let () (declare (not safe)) (__AST-e _id16375_))
                       (let ((__tmp18026
                              (let ((__tmp18030
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id16375_)))
                                    (__tmp18027
                                     (let ((__tmp18028
                                            (let ((__tmp18029
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp18029))))
                                       (declare (not safe))
                                       (cons __tmp18028 '()))))
                                (declare (not safe))
                                (cons __tmp18030 __tmp18027))))
                         (declare (not safe))
                         (cons __tmp18026 _r16376_))
                       _r16376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp18025
                                                            _pre16338_
                                                            _hd16368_)))
                                                 (__tmp18020
                                                  (let ((__tmp18021
                                                         (let ((__tmp18022
                                                                (let ((__tmp18023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16337_)))
                          (declare (not safe))
                          (cons __tmp18023 '()))))
                   (declare (not safe))
                   (cons _tmp16372_ __tmp18022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18021
                                                          _bind16339_)))
                                                 (__tmp18013
                                                  (let ((__tmp18014
                                                         (let ((__tmp18015
                                                                (let ((__tmp18016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp18018
                                      (lambda (_id16378_ _k16379_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16378_))
                                            (let ((__tmp18019
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16378_))))
                                              (declare (not safe))
                                              (cons __tmp18019 _k16379_))
                                            '#f)))
                                     (__tmp18017
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16370_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp18018
                                  _hd16368_
                                  __tmp18017))))
                          (declare (not safe))
                          (cons _len16370_ __tmp18016))))
                   (declare (not safe))
                   (cons _tmp16372_ __tmp18015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18014
                                                          _post16340_))))
                                             (declare (not safe))
                                             (_lp16334_
                                              _rest16367_
                                              __tmp18031
                                              __tmp18024
                                              __tmp18020
                                              __tmp18013)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16220_
                                            _hd16368_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1634116355_))
                              (let ((_tl1635116404_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1634116355_)))
                                    (_hd1635016402_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1634116355_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1635016402_))
                                    (let ((_tl1635316409_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1635016402_)))
                                          (_hd1635216407_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1635016402_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1635316409_))
                                          (let ((_id16412_ _hd1635216407_)
                                                (_rest16414_ _tl1635116404_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1634916399_
                                               _rest16414_
                                               _id16412_)))
                                          (let ((_hd16389_ _hd1635016402_)
                                                (_rest16391_ _tl1635116404_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1634616381_
                                               _rest16391_
                                               _hd16389_)))))
                                    (let ((_hd16389_ _hd1635016402_)
                                          (_rest16391_ _tl1635116404_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1634616381_
                                         _rest16391_
                                         _hd16389_)))))
                              (let ()
                                (declare (not safe))
                                (_else1634416363_))))))))
                 (_compile-inner16224_
                  (lambda (_pre16325_ _bind16326_ _post16327_ _body16328_)
                    (if (let () (declare (not safe)) (null? _pre16325_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind16225_
                           _bind16326_
                           _post16327_
                           _body16328_))
                        (let ((__tmp18040
                               (let ((__tmp18041
                                      (let ((__tmp18044 (reverse _pre16325_))
                                            (__tmp18042
                                             (let ((__tmp18043
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind16225_
                                                       _bind16326_
                                                       _post16327_
                                                       _body16328_))))
                                               (declare (not safe))
                                               (cons __tmp18043 '()))))
                                        (declare (not safe))
                                        (cons __tmp18044 __tmp18042))))
                                 (declare (not safe))
                                 (cons 'let __tmp18041))))
                          (declare (not safe))
                          (__SRC__% __tmp18040 _stx16220_)))))
                 (_compile-bind16225_
                  (lambda (_bind16321_ _post16322_ _body16323_)
                    (let ((__tmp18045
                           (let ((__tmp18046
                                  (let ((__tmp18049 (reverse _bind16321_))
                                        (__tmp18047
                                         (let ((__tmp18048
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post16226_
                                                   _post16322_
                                                   _body16323_))))
                                           (declare (not safe))
                                           (cons __tmp18048 '()))))
                                    (declare (not safe))
                                    (cons __tmp18049 __tmp18047))))
                             (declare (not safe))
                             (cons 'letrec __tmp18046))))
                      (declare (not safe))
                      (__SRC__% __tmp18045 _stx16220_))))
                 (_compile-post16226_
                  (lambda (_post16228_ _body16229_)
                    (let _lp16231_ ((_rest16233_ _post16228_)
                                    (_check16234_ '())
                                    (_bind16235_ '()))
                      (let* ((_rest1623616248_ _rest16233_)
                             (_else1623816256_
                              (lambda ()
                                (let ((__tmp18050
                                       (let ((__tmp18051
                                              (let ((__tmp18052
                                                     (let ((__tmp18053
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body16229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp18053 _bind16235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp18052
                                                        _check16234_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp18051))))
                                  (declare (not safe))
                                  (__SRC__% __tmp18050 _stx16220_))))
                             (_K1624016295_
                              (lambda (_rest16259_
                                       _init16260_
                                       _len16261_
                                       _tmp16262_)
                                (let ((__tmp18062
                                       (let ((__tmp18063
                                              (let ((__tmp18064
                                                     (let ((__tmp18065
                                                            (let ((__tmp18066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16261_ '()))))
                      (declare (not safe))
                      (cons _tmp16262_ __tmp18066))))
               (declare (not safe))
               (cons '__check-values __tmp18065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp18064
                                                 _stx16220_))))
                                         (declare (not safe))
                                         (cons __tmp18063 _check16234_)))
                                      (__tmp18054
                                       (let ((__tmp18055
                                              (lambda (_hd16264_ _r16265_)
                                                (let* ((_hd1626616273_
                                                        _hd16264_)
                                                       (_E1626816277_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1626616273_)))
               (_K1626916283_
                (lambda (_k16280_ _id16281_)
                  (let ((__tmp18056
                         (let ((__tmp18057
                                (let ((__tmp18058
                                       (let ((__tmp18059
                                              (let ((__tmp18060
                                                     (let ((__tmp18061
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k16280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp16262_ __tmp18061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp18060))))
                                         (declare (not safe))
                                         (cons __tmp18059 '()))))
                                  (declare (not safe))
                                  (cons _id16281_ __tmp18058))))
                           (declare (not safe))
                           (cons 'set! __tmp18057))))
                    (declare (not safe))
                    (cons __tmp18056 _r16265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1626616273_))
                                                      (let ((_hd1627016286_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1626616273_)))
                    (_tl1627116288_
                     (let () (declare (not safe)) (##cdr _hd1626616273_))))
                (let* ((_id16291_ _hd1627016286_) (_k16293_ _tl1627116288_))
                  (declare (not safe))
                  (_K1626916283_ _k16293_ _id16291_)))
              (let () (declare (not safe)) (_E1626816277_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp18055
                                                 _bind16235_
                                                 _init16260_))))
                                  (declare (not safe))
                                  (_lp16231_
                                   _rest16259_
                                   __tmp18062
                                   __tmp18054)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1623616248_))
                            (let ((_hd1624116298_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1623616248_)))
                                  (_tl1624216300_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1623616248_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1624116298_))
                                  (let ((_hd1624316303_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1624116298_)))
                                        (_tl1624416305_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1624116298_))))
                                    (let ((_tmp16308_ _hd1624316303_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1624416305_))
                                          (let ((_hd1624516310_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1624416305_)))
                                                (_tl1624616312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1624416305_))))
                                            (let* ((_len16315_ _hd1624516310_)
                                                   (_init16317_ _tl1624616312_)
                                                   (_rest16319_
                                                    _tl1624216300_))
                                              (declare (not safe))
                                              (_K1624016295_
                                               _rest16319_
                                               _init16317_
                                               _len16315_
                                               _tmp16308_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1623816256_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1623816256_))))
                            (let ()
                              (declare (not safe))
                              (_else1623816256_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16220_
             _compile-simple16222_
             _compile-values16223_)))))
    (define __compile-letrec*-values%
      (lambda (_stx15975_)
        (letrec ((_compile-simple15977_
                  (lambda (_hd-ids16216_ _exprs16217_ _body16218_)
                    (let ((__tmp18067
                           (let ((__tmp18068
                                  (let ((__tmp18070
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16216_)
                                              _exprs16217_))
                                        (__tmp18069
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16218_ '()))))
                                    (declare (not safe))
                                    (cons __tmp18070 __tmp18069))))
                             (declare (not safe))
                             (cons 'letrec* __tmp18068))))
                      (declare (not safe))
                      (__SRC__% __tmp18067 _stx15975_))))
                 (_compile-values15978_
                  (lambda (_hd-ids16127_ _exprs16128_ _body16129_)
                    (let _lp16131_ ((_rest16133_ _hd-ids16127_)
                                    (_exprs16134_ _exprs16128_)
                                    (_bind16135_ '())
                                    (_post16136_ '()))
                      (let* ((_rest1613716151_ _rest16133_)
                             (_else1614016159_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind15979_
                                   _bind16135_
                                   _post16136_
                                   _body16129_)))))
                        (let ((_K1614516199_
                               (lambda (_rest16194_ _hd16195_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16195_))
                                     (let ((_id16197_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd16195_))))
                                       (let ((__tmp18085 (cdr _exprs16134_))
                                             (__tmp18080
                                              (let ((__tmp18081
                                                     (let ((__tmp18082
                                                            (let ((__tmp18083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp18084
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp18084))))
                      (declare (not safe))
                      (cons __tmp18083 '()))))
               (declare (not safe))
               (cons _id16197_ __tmp18082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18081 _bind16135_)))
                                             (__tmp18076
                                              (let ((__tmp18077
                                                     (let ((__tmp18078
                                                            (let ((__tmp18079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs16134_)))
                      (declare (not safe))
                      (cons __tmp18079 '()))))
               (declare (not safe))
               (cons _id16197_ __tmp18078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18077
                                                      _post16136_))))
                                         (declare (not safe))
                                         (_lp16131_
                                          _rest16194_
                                          __tmp18085
                                          __tmp18080
                                          __tmp18076)))
                                     (let ((__tmp18075 (cdr _exprs16134_))
                                           (__tmp18071
                                            (let ((__tmp18072
                                                   (let ((__tmp18073
                                                          (let ((__tmp18074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs16134_)))
                    (declare (not safe))
                    (cons __tmp18074 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp18073))))
                                              (declare (not safe))
                                              (cons __tmp18072 _post16136_))))
                                       (declare (not safe))
                                       (_lp16131_
                                        _rest16194_
                                        __tmp18075
                                        _bind16135_
                                        __tmp18071)))))
                              (_K1614216179_
                               (lambda (_rest16163_ _hd16164_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16164_))
                                     (let ((_id16166_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd16164_))))
                                       (let ((__tmp18121 (cdr _exprs16134_))
                                             (__tmp18116
                                              (let ((__tmp18117
                                                     (let ((__tmp18118
                                                            (let ((__tmp18119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp18120
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp18120))))
                      (declare (not safe))
                      (cons __tmp18119 '()))))
               (declare (not safe))
               (cons _id16166_ __tmp18118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18117 _bind16135_)))
                                             (__tmp18110
                                              (let ((__tmp18111
                                                     (let ((__tmp18112
                                                            (let ((__tmp18113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp18114
                                  (let ((__tmp18115 (car _exprs16134_)))
                                    (declare (not safe))
                                    (cons __tmp18115 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp18114))))
                      (declare (not safe))
                      (cons __tmp18113 '()))))
               (declare (not safe))
               (cons _id16166_ __tmp18112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18111
                                                      _post16136_))))
                                         (declare (not safe))
                                         (_lp16131_
                                          _rest16163_
                                          __tmp18121
                                          __tmp18116
                                          __tmp18110)))
                                     (if (let ((__tmp18109
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd16164_))))
                                           (declare (not safe))
                                           (not __tmp18109))
                                         (let ((__tmp18108 (cdr _exprs16134_))
                                               (__tmp18104
                                                (let ((__tmp18105
                                                       (let ((__tmp18106
                                                              (let ((__tmp18107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs16134_)))
                        (declare (not safe))
                        (cons __tmp18107 '()))))
                 (declare (not safe))
                 (cons '#f __tmp18106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp18105
                                                        _post16136_))))
                                           (declare (not safe))
                                           (_lp16131_
                                            _rest16163_
                                            __tmp18108
                                            _bind16135_
                                            __tmp18104))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd16164_))
                                             (let* ((_len16168_
                                                     (length _hd16164_))
                                                    (_tmp16170_
                                                     (let ((__tmp18086
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp18086))))
                                               (let ((__tmp18103
                                                      (cdr _exprs16134_))
                                                     (__tmp18096
                                                      (let ((__tmp18097
                                                             (lambda (_id16173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r16174_)
                       (if (let () (declare (not safe)) (__AST-e _id16173_))
                           (let ((__tmp18098
                                  (let ((__tmp18102
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id16173_)))
                                        (__tmp18099
                                         (let ((__tmp18100
                                                (let ((__tmp18101
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp18101))))
                                           (declare (not safe))
                                           (cons __tmp18100 '()))))
                                    (declare (not safe))
                                    (cons __tmp18102 __tmp18099))))
                             (declare (not safe))
                             (cons __tmp18098 _r16174_))
                           _r16174_))))
                (declare (not safe))
                (foldl1 __tmp18097 _bind16135_ _hd16164_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp18087
                                                      (let ((__tmp18088
                                                             (let ((__tmp18089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18095 (car _exprs16134_))
                                  (__tmp18090
                                   (let ((__tmp18091
                                          (let ((__tmp18093
                                                 (lambda (_id16176_ _k16177_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id16176_))
                                                       (let ((__tmp18094
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id16176_))))
                 (declare (not safe))
                 (cons __tmp18094 _k16177_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp18092
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len16168_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp18093
                                             _hd16164_
                                             __tmp18092))))
                                     (declare (not safe))
                                     (cons _len16168_ __tmp18091))))
                              (declare (not safe))
                              (cons __tmp18095 __tmp18090))))
                       (declare (not safe))
                       (cons _tmp16170_ __tmp18089))))
                (declare (not safe))
                (cons __tmp18088 _post16136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp16131_
                                                  _rest16163_
                                                  __tmp18103
                                                  __tmp18096
                                                  __tmp18087)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx15975_
                                                _hd16164_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1613716151_))
                              (let ((_tl1614716204_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1613716151_)))
                                    (_hd1614616202_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1613716151_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1614616202_))
                                    (let ((_tl1614916209_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1614616202_)))
                                          (_hd1614816207_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1614616202_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1614916209_))
                                          (let ((_hd16212_ _hd1614816207_)
                                                (_rest16214_ _tl1614716204_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1614516199_
                                               _rest16214_
                                               _hd16212_)))
                                          (let ((_hd16187_ _hd1614616202_)
                                                (_rest16189_ _tl1614716204_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1614216179_
                                               _rest16189_
                                               _hd16187_)))))
                                    (let ((_hd16187_ _hd1614616202_)
                                          (_rest16189_ _tl1614716204_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1614216179_
                                         _rest16189_
                                         _hd16187_)))))
                              (let ()
                                (declare (not safe))
                                (_else1614016159_))))))))
                 (_compile-bind15979_
                  (lambda (_bind16123_ _post16124_ _body16125_)
                    (let ((__tmp18122
                           (let ((__tmp18123
                                  (let ((__tmp18126 (reverse _bind16123_))
                                        (__tmp18124
                                         (let ((__tmp18125
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15980_
                                                   _post16124_
                                                   _body16125_))))
                                           (declare (not safe))
                                           (cons __tmp18125 '()))))
                                    (declare (not safe))
                                    (cons __tmp18126 __tmp18124))))
                             (declare (not safe))
                             (cons 'let __tmp18123))))
                      (declare (not safe))
                      (__SRC__% __tmp18122 _stx15975_))))
                 (_compile-post15980_
                  (lambda (_post15982_ _body15983_)
                    (let ((__tmp18127
                           (let ((__tmp18128
                                  (let ((__tmp18129
                                         (let ((__tmp18131
                                                (lambda (_hd15985_ _r15986_)
                                                  (let* ((_hd1598716010_
                                                          _hd15985_)
                                                         (_E1599116014_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1598716010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1600416108_
                                                           (lambda (_expr16106_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr16106_ _r15986_))))
                  (_K1599916086_
                   (lambda (_expr16083_ _id16084_)
                     (let ((__tmp18132
                            (let ((__tmp18133
                                   (let ((__tmp18134
                                          (let ((__tmp18135
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr16083_ '()))))
                                            (declare (not safe))
                                            (cons _id16084_ __tmp18135))))
                                     (declare (not safe))
                                     (cons 'set! __tmp18134))))
                              (declare (not safe))
                              (__SRC__% __tmp18133 _stx15975_))))
                       (declare (not safe))
                       (cons __tmp18132 _r15986_))))
                  (_K1599216053_
                   (lambda (_init16018_ _len16019_ _expr16020_ _tmp16021_)
                     (let ((__tmp18136
                            (let ((__tmp18137
                                   (let ((__tmp18138
                                          (let ((__tmp18152
                                                 (let ((__tmp18153
                                                        (let ((__tmp18154
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr16020_ '()))))
                  (declare (not safe))
                  (cons _tmp16021_ __tmp18154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18153 '())))
                                                (__tmp18139
                                                 (let ((__tmp18148
                                                        (let ((__tmp18149
                                                               (let ((__tmp18150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp18151
                                     (let ()
                                       (declare (not safe))
                                       (cons _len16019_ '()))))
                                (declare (not safe))
                                (cons _tmp16021_ __tmp18151))))
                         (declare (not safe))
                         (cons '__check-values __tmp18150))))
                  (declare (not safe))
                  (__SRC__% __tmp18149 _stx15975_)))
               (__tmp18140
                (let ((__tmp18141
                       (map (lambda (_hd16023_)
                              (let* ((_hd1602416031_ _hd16023_)
                                     (_E1602616035_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1602416031_)))
                                     (_K1602716041_
                                      (lambda (_k16038_ _id16039_)
                                        (let ((__tmp18142
                                               (let ((__tmp18143
                                                      (let ((__tmp18144
                                                             (let ((__tmp18145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18146
                                   (let ((__tmp18147
                                          (let ()
                                            (declare (not safe))
                                            (cons _k16038_ '()))))
                                     (declare (not safe))
                                     (cons _tmp16021_ __tmp18147))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp18146))))
                       (declare (not safe))
                       (cons __tmp18145 '()))))
                (declare (not safe))
                (cons _id16039_ __tmp18144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp18143))))
                                          (declare (not safe))
                                          (__SRC__% __tmp18142 _stx15975_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1602416031_))
                                    (let ((_hd1602816044_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1602416031_)))
                                          (_tl1602916046_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1602416031_))))
                                      (let* ((_id16049_ _hd1602816044_)
                                             (_k16051_ _tl1602916046_))
                                        (declare (not safe))
                                        (_K1602716041_ _k16051_ _id16049_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1602616035_)))))
                            _init16018_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp18141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18148
                                                         __tmp18140))))
                                            (declare (not safe))
                                            (cons __tmp18152 __tmp18139))))
                                     (declare (not safe))
                                     (cons 'let __tmp18138))))
                              (declare (not safe))
                              (__SRC__% __tmp18137 _stx15975_))))
                       (declare (not safe))
                       (cons __tmp18136 _r15986_)))))
              (if (let () (declare (not safe)) (##pair? _hd1598716010_))
                  (let ((_tl1600616113_
                         (let () (declare (not safe)) (##cdr _hd1598716010_)))
                        (_hd1600516111_
                         (let () (declare (not safe)) (##car _hd1598716010_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1600516111_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1600616113_))
                            (let ((_tl1600816118_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1600616113_)))
                                  (_hd1600716116_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1600616113_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1600816118_))
                                  (let ((_expr16121_ _hd1600716116_))
                                    (declare (not safe))
                                    (_K1600416108_ _expr16121_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1600816118_))
                                      (let ((_tl1599816072_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1600816118_)))
                                            (_hd1599716070_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1600816118_))))
                                        (let ((_tmp16061_ _hd1600516111_)
                                              (_expr16068_ _hd1600716116_)
                                              (_len16075_ _hd1599716070_)
                                              (_init16077_ _tl1599816072_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1599216053_
                                             _init16077_
                                             _len16075_
                                             _expr16068_
                                             _tmp16061_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1599116014_)))))
                            (let () (declare (not safe)) (_E1599116014_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1600616113_))
                            (let ((_tl1600316098_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1600616113_)))
                                  (_hd1600216096_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1600616113_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1600316098_))
                                  (let ((_id16094_ _hd1600516111_)
                                        (_expr16101_ _hd1600216096_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1599916086_ _expr16101_ _id16094_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1600316098_))
                                      (let ((_tl1599816072_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1600316098_)))
                                            (_hd1599716070_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1600316098_))))
                                        (let ((_tmp16061_ _hd1600516111_)
                                              (_expr16068_ _hd1600216096_)
                                              (_len16075_ _hd1599716070_)
                                              (_init16077_ _tl1599816072_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1599216053_
                                             _init16077_
                                             _len16075_
                                             _expr16068_
                                             _tmp16061_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1599116014_)))))
                            (let () (declare (not safe)) (_E1599116014_)))))
                  (let () (declare (not safe)) (_E1599116014_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp18130 (list _body15983_)))
                                           (declare (not safe))
                                           (foldl1 __tmp18131
                                                   __tmp18130
                                                   _post15982_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp18129))))
                             (declare (not safe))
                             (cons 'begin __tmp18128))))
                      (declare (not safe))
                      (__SRC__% __tmp18127 _stx15975_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15975_
             _compile-simple15977_
             _compile-values15978_)))))
    (define __compile-call%
      (lambda (_stx15935_)
        (let* ((_$e15937_ _stx15935_)
               (_$E1593915948_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15937_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15937_))
              (let* ((_$tgt1594015951_
                      (let () (declare (not safe)) (__AST-e _$e15937_)))
                     (_$hd1594115954_
                      (let () (declare (not safe)) (##car _$tgt1594015951_)))
                     (_$tl1594215957_
                      (let () (declare (not safe)) (##cdr _$tgt1594015951_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1594215957_))
                    (let* ((_$tgt1594315961_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1594215957_)))
                           (_$hd1594415964_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1594315961_)))
                           (_$tl1594515967_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1594315961_))))
                      (let* ((_rator15971_ _$hd1594415964_)
                             (_rands15973_ _$tl1594515967_)
                             (__tmp18155
                              (let ((__tmp18157
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator15971_)))
                                    (__tmp18156 (map __compile _rands15973_)))
                                (declare (not safe))
                                (cons __tmp18157 __tmp18156))))
                        (declare (not safe))
                        (__SRC__% __tmp18155 _stx15935_)))
                    (let () (declare (not safe)) (_$E1593915948_))))
              (let () (declare (not safe)) (_$E1593915948_))))))
    (define __compile-ref%
      (lambda (_stx15897_)
        (let* ((_$e15899_ _stx15897_)
               (_$E1590115910_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15899_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15899_))
              (let* ((_$tgt1590215913_
                      (let () (declare (not safe)) (__AST-e _$e15899_)))
                     (_$hd1590315916_
                      (let () (declare (not safe)) (##car _$tgt1590215913_)))
                     (_$tl1590415919_
                      (let () (declare (not safe)) (##cdr _$tgt1590215913_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1590415919_))
                    (let* ((_$tgt1590515923_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1590415919_)))
                           (_$hd1590615926_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1590515923_)))
                           (_$tl1590715929_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1590515923_))))
                      (let ((_id15933_ _$hd1590615926_))
                        (if (let ((__tmp18158
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1590715929_))))
                              (declare (not safe))
                              (equal? __tmp18158 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id15933_ _stx15897_))
                            (let () (declare (not safe)) (_$E1590115910_)))))
                    (let () (declare (not safe)) (_$E1590115910_))))
              (let () (declare (not safe)) (_$E1590115910_))))))
    (define __compile-setq%
      (lambda (_stx15844_)
        (let* ((_$e15846_ _stx15844_)
               (_$E1584815860_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15846_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15846_))
              (let* ((_$tgt1584915863_
                      (let () (declare (not safe)) (__AST-e _$e15846_)))
                     (_$hd1585015866_
                      (let () (declare (not safe)) (##car _$tgt1584915863_)))
                     (_$tl1585115869_
                      (let () (declare (not safe)) (##cdr _$tgt1584915863_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1585115869_))
                    (let* ((_$tgt1585215873_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1585115869_)))
                           (_$hd1585315876_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1585215873_)))
                           (_$tl1585415879_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1585215873_))))
                      (let ((_id15883_ _$hd1585315876_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1585415879_))
                            (let* ((_$tgt1585515885_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1585415879_)))
                                   (_$hd1585615888_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1585515885_)))
                                   (_$tl1585715891_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1585515885_))))
                              (let ((_expr15895_ _$hd1585615888_))
                                (if (let ((__tmp18164
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1585715891_))))
                                      (declare (not safe))
                                      (equal? __tmp18164 '()))
                                    (let ((__tmp18159
                                           (let ((__tmp18160
                                                  (let ((__tmp18163
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id15883_
                                                            _stx15844_)))
                                                        (__tmp18161
                                                         (let ((__tmp18162
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr15895_))))
                   (declare (not safe))
                   (cons __tmp18162 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18163
                                                          __tmp18161))))
                                             (declare (not safe))
                                             (cons 'set! __tmp18160))))
                                      (declare (not safe))
                                      (__SRC__% __tmp18159 _stx15844_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1584815860_)))))
                            (let () (declare (not safe)) (_$E1584815860_)))))
                    (let () (declare (not safe)) (_$E1584815860_))))
              (let () (declare (not safe)) (_$E1584815860_))))))
    (define __compile-if%
      (lambda (_stx15776_)
        (let* ((_$e15778_ _stx15776_)
               (_$E1578015795_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15778_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15778_))
              (let* ((_$tgt1578115798_
                      (let () (declare (not safe)) (__AST-e _$e15778_)))
                     (_$hd1578215801_
                      (let () (declare (not safe)) (##car _$tgt1578115798_)))
                     (_$tl1578315804_
                      (let () (declare (not safe)) (##cdr _$tgt1578115798_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1578315804_))
                    (let* ((_$tgt1578415808_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1578315804_)))
                           (_$hd1578515811_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1578415808_)))
                           (_$tl1578615814_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1578415808_))))
                      (let ((_p15818_ _$hd1578515811_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1578615814_))
                            (let* ((_$tgt1578715820_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1578615814_)))
                                   (_$hd1578815823_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1578715820_)))
                                   (_$tl1578915826_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1578715820_))))
                              (let ((_t15830_ _$hd1578815823_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1578915826_))
                                    (let* ((_$tgt1579015832_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1578915826_)))
                                           (_$hd1579115835_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1579015832_)))
                                           (_$tl1579215838_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1579015832_))))
                                      (let ((_f15842_ _$hd1579115835_))
                                        (if (let ((__tmp18172
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1579215838_))))
                                              (declare (not safe))
                                              (equal? __tmp18172 '()))
                                            (let ((__tmp18165
                                                   (let ((__tmp18166
                                                          (let ((__tmp18171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p15818_)))
                        (__tmp18167
                         (let ((__tmp18170
                                (let ()
                                  (declare (not safe))
                                  (__compile _t15830_)))
                               (__tmp18168
                                (let ((__tmp18169
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f15842_))))
                                  (declare (not safe))
                                  (cons __tmp18169 '()))))
                           (declare (not safe))
                           (cons __tmp18170 __tmp18168))))
                    (declare (not safe))
                    (cons __tmp18171 __tmp18167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp18166))))
                                              (declare (not safe))
                                              (__SRC__% __tmp18165 _stx15776_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1578015795_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1578015795_)))))
                            (let () (declare (not safe)) (_$E1578015795_)))))
                    (let () (declare (not safe)) (_$E1578015795_))))
              (let () (declare (not safe)) (_$E1578015795_))))))
    (define __compile-quote%
      (lambda (_stx15738_)
        (let* ((_$e15740_ _stx15738_)
               (_$E1574215751_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15740_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15740_))
              (let* ((_$tgt1574315754_
                      (let () (declare (not safe)) (__AST-e _$e15740_)))
                     (_$hd1574415757_
                      (let () (declare (not safe)) (##car _$tgt1574315754_)))
                     (_$tl1574515760_
                      (let () (declare (not safe)) (##cdr _$tgt1574315754_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1574515760_))
                    (let* ((_$tgt1574615764_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1574515760_)))
                           (_$hd1574715767_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1574615764_)))
                           (_$tl1574815770_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1574615764_))))
                      (let ((_e15774_ _$hd1574715767_))
                        (if (let ((__tmp18176
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1574815770_))))
                              (declare (not safe))
                              (equal? __tmp18176 '()))
                            (let ((__tmp18173
                                   (let ((__tmp18174
                                          (let ((__tmp18175
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e15774_))))
                                            (declare (not safe))
                                            (cons __tmp18175 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp18174))))
                              (declare (not safe))
                              (__SRC__% __tmp18173 _stx15738_))
                            (let () (declare (not safe)) (_$E1574215751_)))))
                    (let () (declare (not safe)) (_$E1574215751_))))
              (let () (declare (not safe)) (_$E1574215751_))))))
    (define __compile-quote-syntax%
      (lambda (_stx15700_)
        (let* ((_$e15702_ _stx15700_)
               (_$E1570415713_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15702_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15702_))
              (let* ((_$tgt1570515716_
                      (let () (declare (not safe)) (__AST-e _$e15702_)))
                     (_$hd1570615719_
                      (let () (declare (not safe)) (##car _$tgt1570515716_)))
                     (_$tl1570715722_
                      (let () (declare (not safe)) (##cdr _$tgt1570515716_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1570715722_))
                    (let* ((_$tgt1570815726_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1570715722_)))
                           (_$hd1570915729_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1570815726_)))
                           (_$tl1571015732_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1570815726_))))
                      (let ((_e15736_ _$hd1570915729_))
                        (if (let ((__tmp18179
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1571015732_))))
                              (declare (not safe))
                              (equal? __tmp18179 '()))
                            (let ((__tmp18177
                                   (let ((__tmp18178
                                          (let ()
                                            (declare (not safe))
                                            (cons _e15736_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp18178))))
                              (declare (not safe))
                              (__SRC__% __tmp18177 _stx15700_))
                            (let () (declare (not safe)) (_$E1570415713_)))))
                    (let () (declare (not safe)) (_$E1570415713_))))
              (let () (declare (not safe)) (_$E1570415713_))))))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin
       __compile-begin%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-foreign
       __compile-begin-foreign%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#module
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#import
       __compile-import%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#export
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#provide
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-values
       __compile-define-values%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-alias
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-runtime
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#extern
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#declare
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-annotation
       __compile-begin-annotation%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote
       __compile-quote%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote-syntax
       __compile-quote-syntax%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#lambda
       __compile-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#case-lambda
       __compile-case-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#let-values
       __compile-let-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-values
       __compile-letrec-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec*-values
       __compile-letrec*-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#include __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-syntax
       __compile-error
       make-__core-form))))
