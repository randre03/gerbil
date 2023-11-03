(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1698867094)
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
      (lambda _$args15591_
        (apply make-struct-instance __context::t _$args15591_)))
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
      (lambda _$args15588_
        (apply make-struct-instance __runtime::t _$args15588_)))
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
      (lambda _$args15585_
        (apply make-struct-instance __syntax::t _$args15585_)))
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
      (lambda _$args15582_
        (apply make-struct-instance __macro::t _$args15582_)))
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
      (lambda _$args15579_
        (apply make-struct-instance __special-form::t _$args15579_)))
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
      (lambda _$args15576_
        (apply make-struct-instance __core-form::t _$args15576_)))
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
      (lambda _$args15573_
        (apply make-struct-instance __core-expression::t _$args15573_)))
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
      (lambda _$args15570_
        (apply make-struct-instance __core-special-form::t _$args15570_)))
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
      (lambda _$args15567_
        (apply make-struct-instance __struct-info::t _$args15567_)))
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
      (lambda _$args15564_
        (apply make-struct-instance __feature::t _$args15564_)))
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
      (lambda _$args15561_
        (apply make-struct-instance __module::t _$args15561_)))
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
      (let ((__tmp15777
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp15776 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp15777 __tmp15776)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id15536_ _ctx15537_)
        (if _ctx15537_
            (let ((_id15539_
                   (let () (declare (not safe)) (__AST-e _id15536_))))
              (let _lp15541_ ((_ctx15543_ _ctx15537_))
                (let ((_$e15545_
                       (table-ref
                        (##structure-ref _ctx15543_ '4 __context::t '#f)
                        _id15539_
                        '#f)))
                  (if _$e15545_
                      (values _$e15545_)
                      (let ((_$e15548_
                             (##structure-ref _ctx15543_ '3 __context::t '#f)))
                        (if _$e15548_
                            (let () (declare (not safe)) (_lp15541_ _$e15548_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id15554_)
        (let ((_ctx15556_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id15554_ _ctx15556_))))
    (define __core-resolve
      (lambda _g15779_
        (let ((_g15778_ (let () (declare (not safe)) (##length _g15779_))))
          (cond ((let () (declare (not safe)) (##fx= _g15778_ 1))
                 (apply (lambda (_id15554_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id15554_)))
                        _g15779_))
                ((let () (declare (not safe)) (##fx= _g15778_ 2))
                 (apply (lambda (_id15558_ _ctx15559_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id15558_ _ctx15559_)))
                        _g15779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g15779_))))))
    (define __core-bound-id?__%
      (lambda (_id15519_ _is?15520_)
        (let ((_$e15522_
               (let () (declare (not safe)) (__core-resolve__0 _id15519_))))
          (if _$e15522_ (_is?15520_ _$e15522_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id15528_)
        (let ((_is?15530_ true))
          (declare (not safe))
          (__core-bound-id?__% _id15528_ _is?15530_))))
    (define __core-bound-id?
      (lambda _g15781_
        (let ((_g15780_ (let () (declare (not safe)) (##length _g15781_))))
          (cond ((let () (declare (not safe)) (##fx= _g15780_ 1))
                 (apply (lambda (_id15528_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id15528_)))
                        _g15781_))
                ((let () (declare (not safe)) (##fx= _g15780_ 2))
                 (apply (lambda (_id15532_ _is?15533_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id15532_ _is?15533_)))
                        _g15781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g15781_))))))
    (define __core-bind-runtime!__%
      (lambda (_id15502_ _eid15503_ _ctx15504_)
        (if _eid15503_
            (let ((__tmp15784 (##structure-ref _ctx15504_ '4 __context::t '#f))
                  (__tmp15783
                   (let () (declare (not safe)) (__AST-e _id15502_)))
                  (__tmp15782
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid15503_))))
              (declare (not safe))
              (table-set! __tmp15784 __tmp15783 __tmp15782))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id15509_ _eid15510_)
        (let ((_ctx15512_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id15509_ _eid15510_ _ctx15512_))))
    (define __core-bind-runtime!
      (lambda _g15786_
        (let ((_g15785_ (let () (declare (not safe)) (##length _g15786_))))
          (cond ((let () (declare (not safe)) (##fx= _g15785_ 2))
                 (apply (lambda (_id15509_ _eid15510_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id15509_ _eid15510_)))
                        _g15786_))
                ((let () (declare (not safe)) (##fx= _g15785_ 3))
                 (apply (lambda (_id15514_ _eid15515_ _ctx15516_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id15514_
                             _eid15515_
                             _ctx15516_)))
                        _g15786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g15786_))))))
    (define __core-bind-syntax!__%
      (lambda (_id15485_ _e15486_ _make15487_)
        (let ((__tmp15787
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e15486_
                      'gerbil/runtime/eval#__syntax::t))
                   _e15486_
                   (_make15487_ _e15486_ _id15485_))))
          (declare (not safe))
          (table-set! __*core* _id15485_ __tmp15787))))
    (define __core-bind-syntax!__0
      (lambda (_id15492_ _e15493_)
        (let ((_make15495_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id15492_ _e15493_ _make15495_))))
    (define __core-bind-syntax!
      (lambda _g15789_
        (let ((_g15788_ (let () (declare (not safe)) (##length _g15789_))))
          (cond ((let () (declare (not safe)) (##fx= _g15788_ 2))
                 (apply (lambda (_id15492_ _e15493_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id15492_ _e15493_)))
                        _g15789_))
                ((let () (declare (not safe)) (##fx= _g15788_ 3))
                 (apply (lambda (_id15497_ _e15498_ _make15499_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id15497_
                             _e15498_
                             _make15499_)))
                        _g15789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g15789_))))))
    (define __core-bind-macro!
      (lambda (_id15481_ _e15482_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id15481_ _e15482_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id15478_ _e15479_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id15478_ _e15479_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id15462_ _e15463_ _ctx15464_)
        (let ((__tmp15793 (##structure-ref _ctx15464_ '4 __context::t '#f))
              (__tmp15792 (let () (declare (not safe)) (__AST-e _id15462_)))
              (__tmp15790
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e15463_
                      'gerbil/runtime/eval#__syntax::t))
                   _e15463_
                   (let ((__tmp15791
                          (let () (declare (not safe)) (__AST-e _id15462_))))
                     (declare (not safe))
                     (##structure __syntax::t _e15463_ __tmp15791)))))
          (declare (not safe))
          (table-set! __tmp15793 __tmp15792 __tmp15790))))
    (define __core-bind-user-syntax!__0
      (lambda (_id15469_ _e15470_)
        (let ((_ctx15472_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id15469_ _e15470_ _ctx15472_))))
    (define __core-bind-user-syntax!
      (lambda _g15795_
        (let ((_g15794_ (let () (declare (not safe)) (##length _g15795_))))
          (cond ((let () (declare (not safe)) (##fx= _g15794_ 2))
                 (apply (lambda (_id15469_ _e15470_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id15469_ _e15470_)))
                        _g15795_))
                ((let () (declare (not safe)) (##fx= _g15794_ 3))
                 (apply (lambda (_id15474_ _e15475_ _ctx15476_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id15474_
                             _e15475_
                             _ctx15476_)))
                        _g15795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g15795_))))))
    (define make-__runtime-id__%
      (lambda (_id15443_ _ctx15444_)
        (let ((_id15446_ (let () (declare (not safe)) (__AST-e _id15443_))))
          (if (let () (declare (not safe)) (eq? _id15446_ '_))
              '#f
              (if (uninterned-symbol? _id15446_)
                  (gensym _id15446_)
                  (if (let () (declare (not safe)) (symbol? _id15446_))
                      (let ((_$e15448_
                             (##structure-ref _ctx15444_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e15448_))
                            (gensym _id15446_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e15448_))
                                (let ((__tmp15796
                                       (##structure-ref
                                        _ctx15444_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp15796 '"#" _id15446_))
                                _id15446_)))
                      (error '"Illegal runtime identifier" _id15446_)))))))
    (define make-__runtime-id__0
      (lambda (_id15454_)
        (let ((_ctx15456_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id15454_ _ctx15456_))))
    (define make-__runtime-id
      (lambda _g15798_
        (let ((_g15797_ (let () (declare (not safe)) (##length _g15798_))))
          (cond ((let () (declare (not safe)) (##fx= _g15797_ 1))
                 (apply (lambda (_id15454_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id15454_)))
                        _g15798_))
                ((let () (declare (not safe)) (##fx= _g15797_ 2))
                 (apply (lambda (_id15458_ _ctx15459_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id15458_ _ctx15459_)))
                        _g15798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g15798_))))))
    (define make-__context-local__%
      (lambda (_super15432_)
        (let ((__tmp15799
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super15432_ __tmp15799))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super15438_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super15438_))))
    (define make-__context-local
      (lambda _g15801_
        (let ((_g15800_ (let () (declare (not safe)) (##length _g15801_))))
          (cond ((let () (declare (not safe)) (##fx= _g15800_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g15801_))
                ((let () (declare (not safe)) (##fx= _g15800_ 1))
                 (apply (lambda (_super15440_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super15440_)))
                        _g15801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g15801_))))))
    (define make-__context-module__%
      (lambda (_id15412_ _ns15413_ _path15414_ _super15415_)
        (let ((__tmp15802
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns15413_
           _super15415_
           __tmp15802
           _id15412_
           _path15414_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id15420_ _ns15421_ _path15422_)
        (let ((_super15424_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id15420_
           _ns15421_
           _path15422_
           _super15424_))))
    (define make-__context-module
      (lambda _g15804_
        (let ((_g15803_ (let () (declare (not safe)) (##length _g15804_))))
          (cond ((let () (declare (not safe)) (##fx= _g15803_ 3))
                 (apply (lambda (_id15420_ _ns15421_ _path15422_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id15420_
                             _ns15421_
                             _path15422_)))
                        _g15804_))
                ((let () (declare (not safe)) (##fx= _g15803_ 4))
                 (apply (lambda (_id15426_ _ns15427_ _path15428_ _super15429_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id15426_
                             _ns15427_
                             _path15428_
                             _super15429_)))
                        _g15804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g15804_))))))
    (define __SRC__%
      (lambda (_e15395_ _src-stx15396_)
        (if (or (let () (declare (not safe)) (pair? _e15395_))
                (let () (declare (not safe)) (symbol? _e15395_)))
            (let ((__tmp15808
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx15396_
                          'gerbil#AST::t))
                       (let ((__tmp15809
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx15396_))))
                         (declare (not safe))
                         (__locat __tmp15809))
                       '#f)))
              (declare (not safe))
              (##make-source _e15395_ __tmp15808))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e15395_ 'gerbil#AST::t))
                (let ((__tmp15807
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e15395_ '1 AST::t '#f)))
                      (__tmp15805
                       (let ((__tmp15806
                              (let ()
                                (declare (not safe))
                                (__AST-source _e15395_))))
                         (declare (not safe))
                         (__locat __tmp15806))))
                  (declare (not safe))
                  (##make-source __tmp15807 __tmp15805))
                (error '"BUG! Cannot sourcify object" _e15395_)))))
    (define __SRC__0
      (lambda (_e15404_)
        (let ((_src-stx15406_ '#f))
          (declare (not safe))
          (__SRC__% _e15404_ _src-stx15406_))))
    (define __SRC
      (lambda _g15811_
        (let ((_g15810_ (let () (declare (not safe)) (##length _g15811_))))
          (cond ((let () (declare (not safe)) (##fx= _g15810_ 1))
                 (apply (lambda (_e15404_)
                          (let () (declare (not safe)) (__SRC__0 _e15404_)))
                        _g15811_))
                ((let () (declare (not safe)) (##fx= _g15810_ 2))
                 (apply (lambda (_e15408_ _src-stx15409_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e15408_ _src-stx15409_)))
                        _g15811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g15811_))))))
    (define __locat
      (lambda (_loc15392_)
        (if (let () (declare (not safe)) (##locat? _loc15392_))
            _loc15392_
            '#f)))
    (define __check-values
      (lambda (_obj15387_ _k15388_)
        (let ((_count15390_
               (if (let () (declare (not safe)) (##values? _obj15387_))
                   (let () (declare (not safe)) (##vector-length _obj15387_))
                   '1)))
          (if (fx= _count15390_ _k15388_)
              '#!void
              (error (if (fx< _count15390_ _k15388_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj15387_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj15387_))
                         _obj15387_)
                     _k15388_)))))
    (define __compile
      (lambda (_stx15357_)
        (let* ((_$e15359_ _stx15357_)
               (_$E1536115367_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15359_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15359_))
              (let* ((_$tgt1536215370_
                      (let () (declare (not safe)) (__AST-e _$e15359_)))
                     (_$hd1536315373_
                      (let () (declare (not safe)) (##car _$tgt1536215370_)))
                     (_$tl1536415376_
                      (let () (declare (not safe)) (##cdr _$tgt1536215370_))))
                (let* ((_form15380_ _$hd1536315373_)
                       (_$e15382_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form15380_))))
                  (if _$e15382_
                      ((lambda (_bind15385_)
                         ((##structure-ref _bind15385_ '1 __syntax::t '#f)
                          _stx15357_))
                       _$e15382_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx15357_
                         _form15380_)))))
              (let () (declare (not safe)) (_$E1536115367_))))))
    (define __compile-error__%
      (lambda (_stx15344_ _detail15345_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx15344_
           _detail15345_))))
    (define __compile-error__0
      (lambda (_stx15350_)
        (let ((_detail15352_ '#f))
          (declare (not safe))
          (__compile-error__% _stx15350_ _detail15352_))))
    (define __compile-error
      (lambda _g15813_
        (let ((_g15812_ (let () (declare (not safe)) (##length _g15813_))))
          (cond ((let () (declare (not safe)) (##fx= _g15812_ 1))
                 (apply (lambda (_stx15350_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx15350_)))
                        _g15813_))
                ((let () (declare (not safe)) (##fx= _g15812_ 2))
                 (apply (lambda (_stx15354_ _detail15355_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx15354_ _detail15355_)))
                        _g15813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g15813_))))))
    (define __compile-ignore%
      (lambda (_stx15341_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx15341_))))
    (define __compile-begin%
      (lambda (_stx15316_)
        (let* ((_$e15318_ _stx15316_)
               (_$E1532015326_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15318_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15318_))
              (let* ((_$tgt1532115329_
                      (let () (declare (not safe)) (__AST-e _$e15318_)))
                     (_$hd1532215332_
                      (let () (declare (not safe)) (##car _$tgt1532115329_)))
                     (_$tl1532315335_
                      (let () (declare (not safe)) (##cdr _$tgt1532115329_))))
                (let* ((_body15339_ _$tl1532315335_)
                       (__tmp15814
                        (let ((__tmp15815 (map __compile _body15339_)))
                          (declare (not safe))
                          (cons 'begin __tmp15815))))
                  (declare (not safe))
                  (__SRC__% __tmp15814 _stx15316_)))
              (let () (declare (not safe)) (_$E1532015326_))))))
    (define __compile-begin-foreign%
      (lambda (_stx15291_)
        (let* ((_$e15293_ _stx15291_)
               (_$E1529515301_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15293_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15293_))
              (let* ((_$tgt1529615304_
                      (let () (declare (not safe)) (__AST-e _$e15293_)))
                     (_$hd1529715307_
                      (let () (declare (not safe)) (##car _$tgt1529615304_)))
                     (_$tl1529815310_
                      (let () (declare (not safe)) (##cdr _$tgt1529615304_))))
                (let* ((_body15314_ _$tl1529815310_)
                       (__tmp15816
                        (let ((__tmp15817
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body15314_))))
                          (declare (not safe))
                          (cons 'begin __tmp15817))))
                  (declare (not safe))
                  (__SRC__% __tmp15816 _stx15291_)))
              (let () (declare (not safe)) (_$E1529515301_))))))
    (define __compile-import%
      (lambda (_stx15266_)
        (let* ((_$e15268_ _stx15266_)
               (_$E1527015276_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15268_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15268_))
              (let* ((_$tgt1527115279_
                      (let () (declare (not safe)) (__AST-e _$e15268_)))
                     (_$hd1527215282_
                      (let () (declare (not safe)) (##car _$tgt1527115279_)))
                     (_$tl1527315285_
                      (let () (declare (not safe)) (##cdr _$tgt1527115279_))))
                (let* ((_body15289_ _$tl1527315285_)
                       (__tmp15818
                        (let ((__tmp15819
                               (let ((__tmp15820
                                      (let ((__tmp15821
                                             (let ()
                                               (declare (not safe))
                                               (cons _body15289_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp15821))))
                                 (declare (not safe))
                                 (cons __tmp15820 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp15819))))
                  (declare (not safe))
                  (__SRC__% __tmp15818 _stx15266_)))
              (let () (declare (not safe)) (_$E1527015276_))))))
    (define __compile-begin-annotation%
      (lambda (_stx15213_)
        (let* ((_$e15215_ _stx15213_)
               (_$E1521715229_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15215_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15215_))
              (let* ((_$tgt1521815232_
                      (let () (declare (not safe)) (__AST-e _$e15215_)))
                     (_$hd1521915235_
                      (let () (declare (not safe)) (##car _$tgt1521815232_)))
                     (_$tl1522015238_
                      (let () (declare (not safe)) (##cdr _$tgt1521815232_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1522015238_))
                    (let* ((_$tgt1522115242_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1522015238_)))
                           (_$hd1522215245_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1522115242_)))
                           (_$tl1522315248_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1522115242_))))
                      (let ((_ann15252_ _$hd1522215245_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1522315248_))
                            (let* ((_$tgt1522415254_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1522315248_)))
                                   (_$hd1522515257_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1522415254_)))
                                   (_$tl1522615260_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1522415254_))))
                              (let ((_expr15264_ _$hd1522515257_))
                                (if (let ((__tmp15822
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1522615260_))))
                                      (declare (not safe))
                                      (equal? __tmp15822 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr15264_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1521715229_)))))
                            (let () (declare (not safe)) (_$E1521715229_)))))
                    (let () (declare (not safe)) (_$E1521715229_))))
              (let () (declare (not safe)) (_$E1521715229_))))))
    (define __compile-define-values%
      (lambda (_stx15104_)
        (let* ((_$e15106_ _stx15104_)
               (_$E1510815120_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15106_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15106_))
              (let* ((_$tgt1510915123_
                      (let () (declare (not safe)) (__AST-e _$e15106_)))
                     (_$hd1511015126_
                      (let () (declare (not safe)) (##car _$tgt1510915123_)))
                     (_$tl1511115129_
                      (let () (declare (not safe)) (##cdr _$tgt1510915123_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1511115129_))
                    (let* ((_$tgt1511215133_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1511115129_)))
                           (_$hd1511315136_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1511215133_)))
                           (_$tl1511415139_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1511215133_))))
                      (let ((_hd15143_ _$hd1511315136_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1511415139_))
                            (let* ((_$tgt1511515145_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1511415139_)))
                                   (_$hd1511615148_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1511515145_)))
                                   (_$tl1511715151_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1511515145_))))
                              (let ((_expr15155_ _$hd1511615148_))
                                (if (let ((__tmp15855
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1511715151_))))
                                      (declare (not safe))
                                      (equal? __tmp15855 '()))
                                    (let* ((_$e15157_ _hd15143_)
                                           (_$E1515915200_
                                            (lambda ()
                                              (let ((_$E1516015185_
                                                     (lambda ()
                                                       (let* ((_$E1516115172_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e15157_))))
                      (_ids15175_ _hd15143_)
                      (_len15177_ (length _ids15175_))
                      (_tmp15179_
                       (let ((__tmp15823 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp15823))))
                 (let ((__tmp15824
                        (let ((__tmp15825
                               (let ((__tmp15842
                                      (let ((__tmp15843
                                             (let ((__tmp15844
                                                    (let ((__tmp15845
                                                           (let ((__tmp15846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr15155_))))
                     (declare (not safe))
                     (cons __tmp15846 '()))))
              (declare (not safe))
              (cons _tmp15179_ __tmp15845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp15844))))
                                        (declare (not safe))
                                        (__SRC__% __tmp15843 _stx15104_)))
                                     (__tmp15826
                                      (let ((__tmp15838
                                             (let ((__tmp15839
                                                    (let ((__tmp15840
                                                           (let ((__tmp15841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len15177_ '()))))
                     (declare (not safe))
                     (cons _tmp15179_ __tmp15841))))
              (declare (not safe))
              (cons '__check-values __tmp15840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp15839
                                                _stx15104_)))
                                            (__tmp15827
                                             (let ((__tmp15828
                                                    (let ((__tmp15830
                                                           (lambda (_id15182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k15183_)
                     (if (let () (declare (not safe)) (__AST-e _id15182_))
                         (let ((__tmp15831
                                (let ((__tmp15832
                                       (let ((__tmp15837
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id15182_)))
                                             (__tmp15833
                                              (let ((__tmp15834
                                                     (let ((__tmp15835
                                                            (let ((__tmp15836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k15183_ '()))))
                      (declare (not safe))
                      (cons _tmp15179_ __tmp15836))))
               (declare (not safe))
               (cons '##vector-ref __tmp15835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp15834 '()))))
                                         (declare (not safe))
                                         (cons __tmp15837 __tmp15833))))
                                  (declare (not safe))
                                  (cons 'define __tmp15832))))
                           (declare (not safe))
                           (__SRC__% __tmp15831 _stx15104_))
                         '#f)))
                  (__tmp15829 (let () (declare (not safe)) (iota _len15177_))))
              (declare (not safe))
              (filter-map2 __tmp15830 _ids15175_ __tmp15829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp15828))))
                                        (declare (not safe))
                                        (cons __tmp15838 __tmp15827))))
                                 (declare (not safe))
                                 (cons __tmp15842 __tmp15826))))
                          (declare (not safe))
                          (cons 'begin __tmp15825))))
                   (declare (not safe))
                   (__SRC__% __tmp15824 _stx15104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e15157_))
                                                    (let* ((_$tgt1516215188_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e15157_)))
                                                           (_$hd1516315191_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1516215188_)))
                                                           (_$tl1516415194_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1516215188_))))
                                                      (let ((_id15198_
                                                             _$hd1516315191_))
                                                        (if (let ((__tmp15852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1516415194_))))
                      (declare (not safe))
                      (equal? __tmp15852 '()))
                    (let ((__tmp15847
                           (let ((__tmp15848
                                  (let ((__tmp15851
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id15198_)))
                                        (__tmp15849
                                         (let ((__tmp15850
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr15155_))))
                                           (declare (not safe))
                                           (cons __tmp15850 '()))))
                                    (declare (not safe))
                                    (cons __tmp15851 __tmp15849))))
                             (declare (not safe))
                             (cons 'define __tmp15848))))
                      (declare (not safe))
                      (__SRC__% __tmp15847 _stx15104_))
                    (let () (declare (not safe)) (_$E1516015185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1516015185_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e15157_))
                                          (let* ((_$tgt1516515203_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e15157_)))
                                                 (_$hd1516615206_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1516515203_)))
                                                 (_$tl1516715209_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1516515203_))))
                                            (if (let ((__tmp15854
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1516615206_))))
                                                  (declare (not safe))
                                                  (equal? __tmp15854 '#f))
                                                (if (let ((__tmp15853
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1516715209_))))
                                                      (declare (not safe))
                                                      (equal? __tmp15853 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr15155_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1515915200_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1515915200_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1515915200_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1510815120_)))))
                            (let () (declare (not safe)) (_$E1510815120_)))))
                    (let () (declare (not safe)) (_$E1510815120_))))
              (let () (declare (not safe)) (_$E1510815120_))))))
    (define __compile-head-id
      (lambda (_e15102_)
        (let ((__tmp15856
               (if (let () (declare (not safe)) (__AST-e _e15102_))
                   _e15102_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp15856))))
    (define __compile-lambda-head
      (lambda (_hd15059_)
        (let _recur15061_ ((_rest15063_ _hd15059_))
          (let* ((_$e15065_ _rest15063_)
                 (_$E1506715085_
                  (lambda ()
                    (let ((_$E1506815082_
                           (lambda ()
                             (let* ((_$E1506915077_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e15065_))))
                                    (_tail15080_ _$e15065_))
                               (declare (not safe))
                               (__compile-head-id _tail15080_)))))
                      (if (let ((__tmp15857
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e15065_))))
                            (declare (not safe))
                            (equal? __tmp15857 '()))
                          '()
                          (let () (declare (not safe)) (_$E1506815082_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e15065_))
                (let* ((_$tgt1507015088_
                        (let () (declare (not safe)) (__AST-e _$e15065_)))
                       (_$hd1507115091_
                        (let () (declare (not safe)) (##car _$tgt1507015088_)))
                       (_$tl1507215094_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1507015088_))))
                  (let* ((_hd15098_ _$hd1507115091_)
                         (_rest15100_ _$tl1507215094_))
                    (let ((__tmp15859
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd15098_)))
                          (__tmp15858
                           (let ()
                             (declare (not safe))
                             (_recur15061_ _rest15100_))))
                      (declare (not safe))
                      (cons __tmp15859 __tmp15858))))
                (let () (declare (not safe)) (_$E1506715085_)))))))
    (define __compile-lambda%
      (lambda (_stx15006_)
        (let* ((_$e15008_ _stx15006_)
               (_$E1501015022_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e15008_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15008_))
              (let* ((_$tgt1501115025_
                      (let () (declare (not safe)) (__AST-e _$e15008_)))
                     (_$hd1501215028_
                      (let () (declare (not safe)) (##car _$tgt1501115025_)))
                     (_$tl1501315031_
                      (let () (declare (not safe)) (##cdr _$tgt1501115025_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1501315031_))
                    (let* ((_$tgt1501415035_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1501315031_)))
                           (_$hd1501515038_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1501415035_)))
                           (_$tl1501615041_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1501415035_))))
                      (let ((_hd15045_ _$hd1501515038_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1501615041_))
                            (let* ((_$tgt1501715047_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1501615041_)))
                                   (_$hd1501815050_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1501715047_)))
                                   (_$tl1501915053_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1501715047_))))
                              (let ((_body15057_ _$hd1501815050_))
                                (if (let ((__tmp15865
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1501915053_))))
                                      (declare (not safe))
                                      (equal? __tmp15865 '()))
                                    (let ((__tmp15860
                                           (let ((__tmp15861
                                                  (let ((__tmp15864
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd15045_)))
                                                        (__tmp15862
                                                         (let ((__tmp15863
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body15057_))))
                   (declare (not safe))
                   (cons __tmp15863 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15864
                                                          __tmp15862))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp15861))))
                                      (declare (not safe))
                                      (__SRC__% __tmp15860 _stx15006_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1501015022_)))))
                            (let () (declare (not safe)) (_$E1501015022_)))))
                    (let () (declare (not safe)) (_$E1501015022_))))
              (let () (declare (not safe)) (_$E1501015022_))))))
    (define __compile-case-lambda%
      (lambda (_stx14798_)
        (letrec ((_variadic?14800_
                  (lambda (_hd14971_)
                    (let* ((_$e14973_ _hd14971_)
                           (_$E1497514991_
                            (lambda ()
                              (let ((_$E1497614988_
                                     (lambda ()
                                       (let ((_$E1497714985_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e14973_)))))
                                         '#t))))
                                (if (let ((__tmp15866
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e14973_))))
                                      (declare (not safe))
                                      (equal? __tmp15866 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1497614988_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e14973_))
                          (let* ((_$tgt1497814994_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e14973_)))
                                 (_$hd1497914997_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1497814994_)))
                                 (_$tl1498015000_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1497814994_))))
                            (let ((_rest15004_ _$tl1498015000_))
                              (declare (not safe))
                              (_variadic?14800_ _rest15004_)))
                          (let () (declare (not safe)) (_$E1497514991_))))))
                 (_arity14801_
                  (lambda (_hd14936_)
                    (let _lp14938_ ((_rest14940_ _hd14936_) (_k14941_ '0))
                      (let* ((_$e14943_ _rest14940_)
                             (_$E1494514956_
                              (lambda ()
                                (let ((_$E1494614953_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e14943_)))))
                                  _k14941_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e14943_))
                            (let* ((_$tgt1494714959_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e14943_)))
                                   (_$hd1494814962_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1494714959_)))
                                   (_$tl1494914965_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1494714959_))))
                              (let* ((_rest14969_ _$tl1494914965_)
                                     (__tmp15867
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k14941_ '1))))
                                (declare (not safe))
                                (_lp14938_ _rest14969_ __tmp15867)))
                            (let () (declare (not safe)) (_$E1494514956_)))))))
                 (_generate14802_
                  (lambda (_rest14863_ _args14864_ _len14865_)
                    (let* ((_$e14867_ _rest14863_)
                           (_$E1486914880_
                            (lambda ()
                              (let* ((_$E1487014877_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e14867_))))
                                     (__tmp15868
                                      (let ((__tmp15869
                                             (let ((__tmp15870
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args14864_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp15870))))
                                        (declare (not safe))
                                        (cons 'error __tmp15869))))
                                (declare (not safe))
                                (__SRC__% __tmp15868 _stx14798_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e14867_))
                          (let* ((_$tgt1487114883_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e14867_)))
                                 (_$hd1487214886_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1487114883_)))
                                 (_$tl1487314889_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1487114883_))))
                            (let* ((_clause14893_ _$hd1487214886_)
                                   (_rest14895_ _$tl1487314889_)
                                   (_$e14897_ _clause14893_)
                                   (_$E1489914908_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e14897_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e14897_))
                                  (let* ((_$tgt1490014911_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e14897_)))
                                         (_$hd1490114914_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1490014911_)))
                                         (_$tl1490214917_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1490014911_))))
                                    (let ((_hd14921_ _$hd1490114914_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1490214917_))
                                          (let* ((_$tgt1490314923_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1490214917_)))
                                                 (_$hd1490414926_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1490314923_)))
                                                 (_$tl1490514929_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1490314923_))))
                                            (if (let ((__tmp15885
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1490514929_))))
                                                  (declare (not safe))
                                                  (equal? __tmp15885 '()))
                                                (let ((_clen14933_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity14801_
                                                          _hd14921_)))
                                                      (_cmp14934_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?14800_
                                                              _hd14921_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp15871
                                                         (let ((__tmp15872
                                                                (let ((__tmp15882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp15883
                                      (let ((__tmp15884
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen14933_ '()))))
                                        (declare (not safe))
                                        (cons _len14865_ __tmp15884))))
                                 (declare (not safe))
                                 (cons _cmp14934_ __tmp15883)))
                              (__tmp15873
                               (let ((__tmp15876
                                      (let ((__tmp15877
                                             (let ((__tmp15878
                                                    (let ((__tmp15880
                                                           (let ((__tmp15881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause14893_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp15881)))
                  (__tmp15879
                   (let () (declare (not safe)) (cons _args14864_ '()))))
              (declare (not safe))
              (cons __tmp15880 __tmp15879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp15878))))
                                        (declare (not safe))
                                        (__SRC__% __tmp15877 _stx14798_)))
                                     (__tmp15874
                                      (let ((__tmp15875
                                             (let ()
                                               (declare (not safe))
                                               (_generate14802_
                                                _rest14895_
                                                _args14864_
                                                _len14865_))))
                                        (declare (not safe))
                                        (cons __tmp15875 '()))))
                                 (declare (not safe))
                                 (cons __tmp15876 __tmp15874))))
                          (declare (not safe))
                          (cons __tmp15882 __tmp15873))))
                   (declare (not safe))
                   (cons 'if __tmp15872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp15871
                                                     _stx14798_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1489914908_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1489914908_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1489914908_)))))
                          (let () (declare (not safe)) (_$E1486914880_)))))))
          (let* ((_$e14804_ _stx14798_)
                 (_$E1480614838_
                  (lambda ()
                    (let ((_$E1480714820_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e14804_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e14804_))
                          (let* ((_$tgt1480814823_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e14804_)))
                                 (_$hd1480914826_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1480814823_)))
                                 (_$tl1481014829_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1480814823_))))
                            (let ((_clauses14833_ _$tl1481014829_))
                              (let ((_args14835_
                                     (let ((__tmp15886 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp15886 _stx14798_)))
                                    (_len14836_
                                     (let ((__tmp15887 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp15887 _stx14798_))))
                                (let ((__tmp15888
                                       (let ((__tmp15889
                                              (let ((__tmp15890
                                                     (let ((__tmp15891
                                                            (let ((__tmp15892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp15893
                                  (let ((__tmp15896
                                         (let ((__tmp15897
                                                (let ((__tmp15898
                                                       (let ((__tmp15899
                                                              (let ((__tmp15900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp15901
                                    (let ()
                                      (declare (not safe))
                                      (cons _args14835_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp15901))))
                        (declare (not safe))
                        (__SRC__% __tmp15900 _stx14798_))))
                 (declare (not safe))
                 (cons __tmp15899 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len14836_
                                                        __tmp15898))))
                                           (declare (not safe))
                                           (cons __tmp15897 '())))
                                        (__tmp15894
                                         (let ((__tmp15895
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate14802_
                                                   _clauses14833_
                                                   _args14835_
                                                   _len14836_))))
                                           (declare (not safe))
                                           (cons __tmp15895 '()))))
                                    (declare (not safe))
                                    (cons __tmp15896 __tmp15894))))
                             (declare (not safe))
                             (cons 'let __tmp15893))))
                      (declare (not safe))
                      (__SRC__% __tmp15892 _stx14798_))))
               (declare (not safe))
               (cons __tmp15891 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args14835_
                                                      __tmp15890))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp15889))))
                                  (declare (not safe))
                                  (__SRC__% __tmp15888 _stx14798_)))))
                          (let () (declare (not safe)) (_$E1480714820_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e14804_))
                (let* ((_$tgt1481114841_
                        (let () (declare (not safe)) (__AST-e _$e14804_)))
                       (_$hd1481214844_
                        (let () (declare (not safe)) (##car _$tgt1481114841_)))
                       (_$tl1481314847_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1481114841_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1481314847_))
                      (let* ((_$tgt1481414851_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1481314847_)))
                             (_$hd1481514854_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1481414851_)))
                             (_$tl1481614857_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1481414851_))))
                        (let ((_clause14861_ _$hd1481514854_))
                          (if (let ((__tmp15903
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1481614857_))))
                                (declare (not safe))
                                (equal? __tmp15903 '()))
                              (let ((__tmp15902
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause14861_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp15902))
                              (let () (declare (not safe)) (_$E1480614838_)))))
                      (let () (declare (not safe)) (_$E1480614838_))))
                (let () (declare (not safe)) (_$E1480614838_)))))))
    (define __compile-let-form
      (lambda (_stx14567_ _compile-simple14568_ _compile-values14569_)
        (letrec ((_simple-bind?14571_
                  (lambda (_hd14756_)
                    (let* ((_hd1475714767_ _hd14756_)
                           (_else1476014775_ (lambda () '#f)))
                      (let ((_K1476314788_ (lambda (_id14786_) '#t))
                            (_K1476214780_ (lambda () '#t)))
                        (let ((_try-match1475914783_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1475714767_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1476214780_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1476014775_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1475714767_))
                              (let ((_tl1476514793_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1475714767_)))
                                    (_hd1476414791_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1475714767_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1476514793_))
                                    (let ((_id14796_ _hd1476414791_))
                                      (declare (not safe))
                                      (_K1476314788_ _id14796_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1475914783_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1475914783_))))))))
                 (_car-e14572_
                  (lambda (_hd14754_)
                    (if (let () (declare (not safe)) (pair? _hd14754_))
                        (car _hd14754_)
                        _hd14754_))))
          (let* ((_$e14574_ _stx14567_)
                 (_$E1457614719_
                  (lambda ()
                    (let ((_$E1457714599_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e14574_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e14574_))
                          (let* ((_$tgt1457814602_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e14574_)))
                                 (_$hd1457914605_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1457814602_)))
                                 (_$tl1458014608_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1457814602_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1458014608_))
                                (let* ((_$tgt1458114612_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1458014608_)))
                                       (_$hd1458214615_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1458114612_)))
                                       (_$tl1458314618_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1458114612_))))
                                  (let ((_hd14622_ _$hd1458214615_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1458314618_))
                                        (let* ((_$tgt1458414624_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1458314618_)))
                                               (_$hd1458514627_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1458414624_)))
                                               (_$tl1458614630_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1458414624_))))
                                          (let ((_body14634_ _$hd1458514627_))
                                            (if (let ((__tmp15906
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1458614630_))))
                                                  (declare (not safe))
                                                  (equal? __tmp15906 '()))
                                                (let* ((_hd-ids14674_
                                                        (map (lambda (_bind14636_)
                                                               (let* ((_$e14638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind14636_)
                              (_$E1464014649_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e14638_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e14638_))
                             (let* ((_$tgt1464114652_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e14638_)))
                                    (_$hd1464214655_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1464114652_)))
                                    (_$tl1464314658_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1464114652_))))
                               (let ((_ids14662_ _$hd1464214655_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1464314658_))
                                     (let* ((_$tgt1464414664_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1464314658_)))
                                            (_$hd1464514667_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1464414664_)))
                                            (_$tl1464614670_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1464414664_))))
                                       (if (let ((__tmp15904
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1464614670_))))
                                             (declare (not safe))
                                             (equal? __tmp15904 '()))
                                           _ids14662_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1464014649_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1464014649_)))))
                             (let () (declare (not safe)) (_$E1464014649_)))))
                     _hd14622_))
               (_exprs14714_
                (map (lambda (_bind14676_)
                       (let* ((_$e14678_ _bind14676_)
                              (_$E1468014689_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e14678_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e14678_))
                             (let* ((_$tgt1468114692_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e14678_)))
                                    (_$hd1468214695_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1468114692_)))
                                    (_$tl1468314698_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1468114692_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1468314698_))
                                   (let* ((_$tgt1468414702_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1468314698_)))
                                          (_$hd1468514705_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1468414702_)))
                                          (_$tl1468614708_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1468414702_))))
                                     (let ((_expr14712_ _$hd1468514705_))
                                       (if (let ((__tmp15905
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1468614708_))))
                                             (declare (not safe))
                                             (equal? __tmp15905 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr14712_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1468014689_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1468014689_))))
                             (let () (declare (not safe)) (_$E1468014689_)))))
                     _hd14622_))
               (_body14716_
                (let () (declare (not safe)) (__compile _body14634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?14571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids14674_))
              (_compile-simple14568_
               (map _car-e14572_ _hd-ids14674_)
               _exprs14714_
               _body14716_)
              (_compile-values14569_ _hd-ids14674_ _exprs14714_ _body14716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1457714599_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1457714599_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1457714599_))))
                          (let () (declare (not safe)) (_$E1457714599_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e14574_))
                (let* ((_$tgt1458714722_
                        (let () (declare (not safe)) (__AST-e _$e14574_)))
                       (_$hd1458814725_
                        (let () (declare (not safe)) (##car _$tgt1458714722_)))
                       (_$tl1458914728_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1458714722_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1458914728_))
                      (let* ((_$tgt1459014732_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1458914728_)))
                             (_$hd1459114735_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1459014732_)))
                             (_$tl1459214738_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1459014732_))))
                        (if (let ((__tmp15908
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1459114735_))))
                              (declare (not safe))
                              (equal? __tmp15908 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1459214738_))
                                (let* ((_$tgt1459314742_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1459214738_)))
                                       (_$hd1459414745_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1459314742_)))
                                       (_$tl1459514748_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1459314742_))))
                                  (let ((_body14752_ _$hd1459414745_))
                                    (if (let ((__tmp15907
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1459514748_))))
                                          (declare (not safe))
                                          (equal? __tmp15907 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body14752_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1457614719_)))))
                                (let () (declare (not safe)) (_$E1457614719_)))
                            (let () (declare (not safe)) (_$E1457614719_))))
                      (let () (declare (not safe)) (_$E1457614719_))))
                (let () (declare (not safe)) (_$E1457614719_)))))))
    (define __compile-let-values%
      (lambda (_stx14382_)
        (letrec ((_compile-simple14384_
                  (lambda (_hd-ids14563_ _exprs14564_ _body14565_)
                    (let ((__tmp15909
                           (let ((__tmp15910
                                  (let ((__tmp15912
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids14563_)
                                              _exprs14564_))
                                        (__tmp15911
                                         (let ()
                                           (declare (not safe))
                                           (cons _body14565_ '()))))
                                    (declare (not safe))
                                    (cons __tmp15912 __tmp15911))))
                             (declare (not safe))
                             (cons 'let __tmp15910))))
                      (declare (not safe))
                      (__SRC__% __tmp15909 _stx14382_))))
                 (_compile-values14385_
                  (lambda (_hd-ids14481_ _exprs14482_ _body14483_)
                    (let _lp14485_ ((_rest14487_ _hd-ids14481_)
                                    (_exprs14488_ _exprs14482_)
                                    (_bind14489_ '())
                                    (_post14490_ '()))
                      (let* ((_rest1449114505_ _rest14487_)
                             (_else1449414513_
                              (lambda ()
                                (let ((__tmp15913
                                       (let ((__tmp15914
                                              (let ((__tmp15917
                                                     (reverse _bind14489_))
                                                    (__tmp15915
                                                     (let ((__tmp15916
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post14386_
                                                               _post14490_
                                                               _body14483_))))
                                                       (declare (not safe))
                                                       (cons __tmp15916 '()))))
                                                (declare (not safe))
                                                (cons __tmp15917 __tmp15915))))
                                         (declare (not safe))
                                         (cons 'let __tmp15914))))
                                  (declare (not safe))
                                  (__SRC__% __tmp15913 _stx14382_)))))
                        (let ((_K1449914546_
                               (lambda (_rest14543_ _id14544_)
                                 (let ((__tmp15923 (cdr _exprs14488_))
                                       (__tmp15918
                                        (let ((__tmp15919
                                               (let ((__tmp15922
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id14544_)))
                                                     (__tmp15920
                                                      (let ((__tmp15921
                                                             (car _exprs14488_)))
                                                        (declare (not safe))
                                                        (cons __tmp15921
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp15922
                                                       __tmp15920))))
                                          (declare (not safe))
                                          (cons __tmp15919 _bind14489_))))
                                   (declare (not safe))
                                   (_lp14485_
                                    _rest14543_
                                    __tmp15923
                                    __tmp15918
                                    _post14490_))))
                              (_K1449614528_
                               (lambda (_rest14517_ _hd14518_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd14518_))
                                     (let ((__tmp15944 (cdr _exprs14488_))
                                           (__tmp15937
                                            (let ((__tmp15938
                                                   (let ((__tmp15943
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd14518_)))
                                                         (__tmp15939
                                                          (let ((__tmp15940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp15941
                                (let ((__tmp15942 (car _exprs14488_)))
                                  (declare (not safe))
                                  (cons __tmp15942 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp15941))))
                    (declare (not safe))
                    (cons __tmp15940 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp15943
                                                           __tmp15939))))
                                              (declare (not safe))
                                              (cons __tmp15938 _bind14489_))))
                                       (declare (not safe))
                                       (_lp14485_
                                        _rest14517_
                                        __tmp15944
                                        __tmp15937
                                        _post14490_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd14518_))
                                         (let* ((_len14520_ (length _hd14518_))
                                                (_tmp14522_
                                                 (let ((__tmp15924 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp15924))))
                                           (let ((__tmp15936
                                                  (cdr _exprs14488_))
                                                 (__tmp15932
                                                  (let ((__tmp15933
                                                         (let ((__tmp15934
                                                                (let ((__tmp15935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs14488_)))
                          (declare (not safe))
                          (cons __tmp15935 '()))))
                   (declare (not safe))
                   (cons _tmp14522_ __tmp15934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15933
                                                          _bind14489_)))
                                                 (__tmp15925
                                                  (let ((__tmp15926
                                                         (let ((__tmp15927
                                                                (let ((__tmp15928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp15930
                                      (lambda (_id14525_ _k14526_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id14525_))
                                            (let ((__tmp15931
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id14525_))))
                                              (declare (not safe))
                                              (cons __tmp15931 _k14526_))
                                            '#f)))
                                     (__tmp15929
                                      (let ()
                                        (declare (not safe))
                                        (iota _len14520_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp15930
                                  _hd14518_
                                  __tmp15929))))
                          (declare (not safe))
                          (cons _len14520_ __tmp15928))))
                   (declare (not safe))
                   (cons _tmp14522_ __tmp15927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15926
                                                          _post14490_))))
                                             (declare (not safe))
                                             (_lp14485_
                                              _rest14517_
                                              __tmp15936
                                              __tmp15932
                                              __tmp15925)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx14382_
                                            _hd14518_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1449114505_))
                              (let ((_tl1450114551_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1449114505_)))
                                    (_hd1450014549_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1449114505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1450014549_))
                                    (let ((_tl1450314556_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1450014549_)))
                                          (_hd1450214554_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1450014549_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1450314556_))
                                          (let ((_id14559_ _hd1450214554_)
                                                (_rest14561_ _tl1450114551_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1449914546_
                                               _rest14561_
                                               _id14559_)))
                                          (let ((_hd14536_ _hd1450014549_)
                                                (_rest14538_ _tl1450114551_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1449614528_
                                               _rest14538_
                                               _hd14536_)))))
                                    (let ((_hd14536_ _hd1450014549_)
                                          (_rest14538_ _tl1450114551_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1449614528_
                                         _rest14538_
                                         _hd14536_)))))
                              (let ()
                                (declare (not safe))
                                (_else1449414513_))))))))
                 (_compile-post14386_
                  (lambda (_post14388_ _body14389_)
                    (let _lp14391_ ((_rest14393_ _post14388_)
                                    (_check14394_ '())
                                    (_bind14395_ '()))
                      (let* ((_rest1439614408_ _rest14393_)
                             (_else1439814416_
                              (lambda ()
                                (let ((__tmp15945
                                       (let ((__tmp15946
                                              (let ((__tmp15947
                                                     (let ((__tmp15948
                                                            (let ((__tmp15949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp15950
                                  (let ((__tmp15951
                                         (let ()
                                           (declare (not safe))
                                           (cons _body14389_ '()))))
                                    (declare (not safe))
                                    (cons _bind14395_ __tmp15951))))
                             (declare (not safe))
                             (cons 'let __tmp15950))))
                      (declare (not safe))
                      (__SRC__% __tmp15949 _stx14382_))))
               (declare (not safe))
               (cons __tmp15948 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp15947
                                                        _check14394_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp15946))))
                                  (declare (not safe))
                                  (__SRC__% __tmp15945 _stx14382_))))
                             (_K1440014455_
                              (lambda (_rest14419_
                                       _init14420_
                                       _len14421_
                                       _tmp14422_)
                                (let ((__tmp15959
                                       (let ((__tmp15960
                                              (let ((__tmp15961
                                                     (let ((__tmp15962
                                                            (let ((__tmp15963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len14421_ '()))))
                      (declare (not safe))
                      (cons _tmp14422_ __tmp15963))))
               (declare (not safe))
               (cons '__check-values __tmp15962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp15961
                                                 _stx14382_))))
                                         (declare (not safe))
                                         (cons __tmp15960 _check14394_)))
                                      (__tmp15952
                                       (let ((__tmp15953
                                              (lambda (_hd14424_ _r14425_)
                                                (let* ((_hd1442614433_
                                                        _hd14424_)
                                                       (_E1442814437_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1442614433_)))
               (_K1442914443_
                (lambda (_k14440_ _id14441_)
                  (let ((__tmp15954
                         (let ((__tmp15955
                                (let ((__tmp15956
                                       (let ((__tmp15957
                                              (let ((__tmp15958
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k14440_ '()))))
                                                (declare (not safe))
                                                (cons _tmp14422_ __tmp15958))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp15957))))
                                  (declare (not safe))
                                  (cons __tmp15956 '()))))
                           (declare (not safe))
                           (cons _id14441_ __tmp15955))))
                    (declare (not safe))
                    (cons __tmp15954 _r14425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1442614433_))
                                                      (let ((_hd1443014446_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1442614433_)))
                    (_tl1443114448_
                     (let () (declare (not safe)) (##cdr _hd1442614433_))))
                (let* ((_id14451_ _hd1443014446_) (_k14453_ _tl1443114448_))
                  (declare (not safe))
                  (_K1442914443_ _k14453_ _id14451_)))
              (let () (declare (not safe)) (_E1442814437_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp15953
                                                 _bind14395_
                                                 _init14420_))))
                                  (declare (not safe))
                                  (_lp14391_
                                   _rest14419_
                                   __tmp15959
                                   __tmp15952)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1439614408_))
                            (let ((_hd1440114458_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1439614408_)))
                                  (_tl1440214460_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1439614408_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1440114458_))
                                  (let ((_hd1440314463_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1440114458_)))
                                        (_tl1440414465_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1440114458_))))
                                    (let ((_tmp14468_ _hd1440314463_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1440414465_))
                                          (let ((_hd1440514470_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1440414465_)))
                                                (_tl1440614472_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1440414465_))))
                                            (let* ((_len14475_ _hd1440514470_)
                                                   (_init14477_ _tl1440614472_)
                                                   (_rest14479_
                                                    _tl1440214460_))
                                              (declare (not safe))
                                              (_K1440014455_
                                               _rest14479_
                                               _init14477_
                                               _len14475_
                                               _tmp14468_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1439814416_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1439814416_))))
                            (let ()
                              (declare (not safe))
                              (_else1439814416_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx14382_
             _compile-simple14384_
             _compile-values14385_)))))
    (define __compile-letrec-values%
      (lambda (_stx14182_)
        (letrec ((_compile-simple14184_
                  (lambda (_hd-ids14378_ _exprs14379_ _body14380_)
                    (let ((__tmp15964
                           (let ((__tmp15965
                                  (let ((__tmp15967
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids14378_)
                                              _exprs14379_))
                                        (__tmp15966
                                         (let ()
                                           (declare (not safe))
                                           (cons _body14380_ '()))))
                                    (declare (not safe))
                                    (cons __tmp15967 __tmp15966))))
                             (declare (not safe))
                             (cons 'letrec __tmp15965))))
                      (declare (not safe))
                      (__SRC__% __tmp15964 _stx14182_))))
                 (_compile-values14185_
                  (lambda (_hd-ids14292_ _exprs14293_ _body14294_)
                    (let _lp14296_ ((_rest14298_ _hd-ids14292_)
                                    (_exprs14299_ _exprs14293_)
                                    (_pre14300_ '())
                                    (_bind14301_ '())
                                    (_post14302_ '()))
                      (let* ((_rest1430314317_ _rest14298_)
                             (_else1430614325_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner14186_
                                   _pre14300_
                                   _bind14301_
                                   _post14302_
                                   _body14294_)))))
                        (let ((_K1431114361_
                               (lambda (_rest14358_ _id14359_)
                                 (let ((__tmp15973 (cdr _exprs14299_))
                                       (__tmp15968
                                        (let ((__tmp15969
                                               (let ((__tmp15972
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id14359_)))
                                                     (__tmp15970
                                                      (let ((__tmp15971
                                                             (car _exprs14299_)))
                                                        (declare (not safe))
                                                        (cons __tmp15971
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp15972
                                                       __tmp15970))))
                                          (declare (not safe))
                                          (cons __tmp15969 _bind14301_))))
                                   (declare (not safe))
                                   (_lp14296_
                                    _rest14358_
                                    __tmp15973
                                    _pre14300_
                                    __tmp15968
                                    _post14302_))))
                              (_K1430814343_
                               (lambda (_rest14329_ _hd14330_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd14330_))
                                     (let ((__tmp16001 (cdr _exprs14299_))
                                           (__tmp15994
                                            (let ((__tmp15995
                                                   (let ((__tmp16000
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd14330_)))
                                                         (__tmp15996
                                                          (let ((__tmp15997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp15998
                                (let ((__tmp15999 (car _exprs14299_)))
                                  (declare (not safe))
                                  (cons __tmp15999 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp15998))))
                    (declare (not safe))
                    (cons __tmp15997 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp16000
                                                           __tmp15996))))
                                              (declare (not safe))
                                              (cons __tmp15995 _bind14301_))))
                                       (declare (not safe))
                                       (_lp14296_
                                        _rest14329_
                                        __tmp16001
                                        _pre14300_
                                        __tmp15994
                                        _post14302_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd14330_))
                                         (let* ((_len14332_ (length _hd14330_))
                                                (_tmp14334_
                                                 (let ((__tmp15974 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp15974))))
                                           (let ((__tmp15993
                                                  (cdr _exprs14299_))
                                                 (__tmp15986
                                                  (let ((__tmp15987
                                                         (lambda (_id14337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r14338_)
                   (if (let () (declare (not safe)) (__AST-e _id14337_))
                       (let ((__tmp15988
                              (let ((__tmp15992
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id14337_)))
                                    (__tmp15989
                                     (let ((__tmp15990
                                            (let ((__tmp15991
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp15991))))
                                       (declare (not safe))
                                       (cons __tmp15990 '()))))
                                (declare (not safe))
                                (cons __tmp15992 __tmp15989))))
                         (declare (not safe))
                         (cons __tmp15988 _r14338_))
                       _r14338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp15987
                                                            _pre14300_
                                                            _hd14330_)))
                                                 (__tmp15982
                                                  (let ((__tmp15983
                                                         (let ((__tmp15984
                                                                (let ((__tmp15985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs14299_)))
                          (declare (not safe))
                          (cons __tmp15985 '()))))
                   (declare (not safe))
                   (cons _tmp14334_ __tmp15984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15983
                                                          _bind14301_)))
                                                 (__tmp15975
                                                  (let ((__tmp15976
                                                         (let ((__tmp15977
                                                                (let ((__tmp15978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp15980
                                      (lambda (_id14340_ _k14341_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id14340_))
                                            (let ((__tmp15981
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id14340_))))
                                              (declare (not safe))
                                              (cons __tmp15981 _k14341_))
                                            '#f)))
                                     (__tmp15979
                                      (let ()
                                        (declare (not safe))
                                        (iota _len14332_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp15980
                                  _hd14330_
                                  __tmp15979))))
                          (declare (not safe))
                          (cons _len14332_ __tmp15978))))
                   (declare (not safe))
                   (cons _tmp14334_ __tmp15977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp15976
                                                          _post14302_))))
                                             (declare (not safe))
                                             (_lp14296_
                                              _rest14329_
                                              __tmp15993
                                              __tmp15986
                                              __tmp15982
                                              __tmp15975)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx14182_
                                            _hd14330_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1430314317_))
                              (let ((_tl1431314366_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1430314317_)))
                                    (_hd1431214364_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1430314317_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1431214364_))
                                    (let ((_tl1431514371_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1431214364_)))
                                          (_hd1431414369_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1431214364_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1431514371_))
                                          (let ((_id14374_ _hd1431414369_)
                                                (_rest14376_ _tl1431314366_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1431114361_
                                               _rest14376_
                                               _id14374_)))
                                          (let ((_hd14351_ _hd1431214364_)
                                                (_rest14353_ _tl1431314366_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1430814343_
                                               _rest14353_
                                               _hd14351_)))))
                                    (let ((_hd14351_ _hd1431214364_)
                                          (_rest14353_ _tl1431314366_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1430814343_
                                         _rest14353_
                                         _hd14351_)))))
                              (let ()
                                (declare (not safe))
                                (_else1430614325_))))))))
                 (_compile-inner14186_
                  (lambda (_pre14287_ _bind14288_ _post14289_ _body14290_)
                    (if (let () (declare (not safe)) (null? _pre14287_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind14187_
                           _bind14288_
                           _post14289_
                           _body14290_))
                        (let ((__tmp16002
                               (let ((__tmp16003
                                      (let ((__tmp16006 (reverse _pre14287_))
                                            (__tmp16004
                                             (let ((__tmp16005
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind14187_
                                                       _bind14288_
                                                       _post14289_
                                                       _body14290_))))
                                               (declare (not safe))
                                               (cons __tmp16005 '()))))
                                        (declare (not safe))
                                        (cons __tmp16006 __tmp16004))))
                                 (declare (not safe))
                                 (cons 'let __tmp16003))))
                          (declare (not safe))
                          (__SRC__% __tmp16002 _stx14182_)))))
                 (_compile-bind14187_
                  (lambda (_bind14283_ _post14284_ _body14285_)
                    (let ((__tmp16007
                           (let ((__tmp16008
                                  (let ((__tmp16011 (reverse _bind14283_))
                                        (__tmp16009
                                         (let ((__tmp16010
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post14188_
                                                   _post14284_
                                                   _body14285_))))
                                           (declare (not safe))
                                           (cons __tmp16010 '()))))
                                    (declare (not safe))
                                    (cons __tmp16011 __tmp16009))))
                             (declare (not safe))
                             (cons 'letrec __tmp16008))))
                      (declare (not safe))
                      (__SRC__% __tmp16007 _stx14182_))))
                 (_compile-post14188_
                  (lambda (_post14190_ _body14191_)
                    (let _lp14193_ ((_rest14195_ _post14190_)
                                    (_check14196_ '())
                                    (_bind14197_ '()))
                      (let* ((_rest1419814210_ _rest14195_)
                             (_else1420014218_
                              (lambda ()
                                (let ((__tmp16012
                                       (let ((__tmp16013
                                              (let ((__tmp16014
                                                     (let ((__tmp16015
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body14191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp16015 _bind14197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp16014
                                                        _check14196_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp16013))))
                                  (declare (not safe))
                                  (__SRC__% __tmp16012 _stx14182_))))
                             (_K1420214257_
                              (lambda (_rest14221_
                                       _init14222_
                                       _len14223_
                                       _tmp14224_)
                                (let ((__tmp16024
                                       (let ((__tmp16025
                                              (let ((__tmp16026
                                                     (let ((__tmp16027
                                                            (let ((__tmp16028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len14223_ '()))))
                      (declare (not safe))
                      (cons _tmp14224_ __tmp16028))))
               (declare (not safe))
               (cons '__check-values __tmp16027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp16026
                                                 _stx14182_))))
                                         (declare (not safe))
                                         (cons __tmp16025 _check14196_)))
                                      (__tmp16016
                                       (let ((__tmp16017
                                              (lambda (_hd14226_ _r14227_)
                                                (let* ((_hd1422814235_
                                                        _hd14226_)
                                                       (_E1423014239_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1422814235_)))
               (_K1423114245_
                (lambda (_k14242_ _id14243_)
                  (let ((__tmp16018
                         (let ((__tmp16019
                                (let ((__tmp16020
                                       (let ((__tmp16021
                                              (let ((__tmp16022
                                                     (let ((__tmp16023
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k14242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp14224_ __tmp16023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp16022))))
                                         (declare (not safe))
                                         (cons __tmp16021 '()))))
                                  (declare (not safe))
                                  (cons _id14243_ __tmp16020))))
                           (declare (not safe))
                           (cons 'set! __tmp16019))))
                    (declare (not safe))
                    (cons __tmp16018 _r14227_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1422814235_))
                                                      (let ((_hd1423214248_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1422814235_)))
                    (_tl1423314250_
                     (let () (declare (not safe)) (##cdr _hd1422814235_))))
                (let* ((_id14253_ _hd1423214248_) (_k14255_ _tl1423314250_))
                  (declare (not safe))
                  (_K1423114245_ _k14255_ _id14253_)))
              (let () (declare (not safe)) (_E1423014239_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp16017
                                                 _bind14197_
                                                 _init14222_))))
                                  (declare (not safe))
                                  (_lp14193_
                                   _rest14221_
                                   __tmp16024
                                   __tmp16016)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1419814210_))
                            (let ((_hd1420314260_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1419814210_)))
                                  (_tl1420414262_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1419814210_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1420314260_))
                                  (let ((_hd1420514265_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1420314260_)))
                                        (_tl1420614267_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1420314260_))))
                                    (let ((_tmp14270_ _hd1420514265_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1420614267_))
                                          (let ((_hd1420714272_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1420614267_)))
                                                (_tl1420814274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1420614267_))))
                                            (let* ((_len14277_ _hd1420714272_)
                                                   (_init14279_ _tl1420814274_)
                                                   (_rest14281_
                                                    _tl1420414262_))
                                              (declare (not safe))
                                              (_K1420214257_
                                               _rest14281_
                                               _init14279_
                                               _len14277_
                                               _tmp14270_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1420014218_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1420014218_))))
                            (let ()
                              (declare (not safe))
                              (_else1420014218_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx14182_
             _compile-simple14184_
             _compile-values14185_)))))
    (define __compile-letrec*-values%
      (lambda (_stx13937_)
        (letrec ((_compile-simple13939_
                  (lambda (_hd-ids14178_ _exprs14179_ _body14180_)
                    (let ((__tmp16029
                           (let ((__tmp16030
                                  (let ((__tmp16032
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids14178_)
                                              _exprs14179_))
                                        (__tmp16031
                                         (let ()
                                           (declare (not safe))
                                           (cons _body14180_ '()))))
                                    (declare (not safe))
                                    (cons __tmp16032 __tmp16031))))
                             (declare (not safe))
                             (cons 'letrec* __tmp16030))))
                      (declare (not safe))
                      (__SRC__% __tmp16029 _stx13937_))))
                 (_compile-values13940_
                  (lambda (_hd-ids14089_ _exprs14090_ _body14091_)
                    (let _lp14093_ ((_rest14095_ _hd-ids14089_)
                                    (_exprs14096_ _exprs14090_)
                                    (_bind14097_ '())
                                    (_post14098_ '()))
                      (let* ((_rest1409914113_ _rest14095_)
                             (_else1410214121_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind13941_
                                   _bind14097_
                                   _post14098_
                                   _body14091_)))))
                        (let ((_K1410714161_
                               (lambda (_rest14156_ _hd14157_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd14157_))
                                     (let ((_id14159_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd14157_))))
                                       (let ((__tmp16047 (cdr _exprs14096_))
                                             (__tmp16042
                                              (let ((__tmp16043
                                                     (let ((__tmp16044
                                                            (let ((__tmp16045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp16046
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp16046))))
                      (declare (not safe))
                      (cons __tmp16045 '()))))
               (declare (not safe))
               (cons _id14159_ __tmp16044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp16043 _bind14097_)))
                                             (__tmp16038
                                              (let ((__tmp16039
                                                     (let ((__tmp16040
                                                            (let ((__tmp16041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs14096_)))
                      (declare (not safe))
                      (cons __tmp16041 '()))))
               (declare (not safe))
               (cons _id14159_ __tmp16040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp16039
                                                      _post14098_))))
                                         (declare (not safe))
                                         (_lp14093_
                                          _rest14156_
                                          __tmp16047
                                          __tmp16042
                                          __tmp16038)))
                                     (let ((__tmp16037 (cdr _exprs14096_))
                                           (__tmp16033
                                            (let ((__tmp16034
                                                   (let ((__tmp16035
                                                          (let ((__tmp16036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs14096_)))
                    (declare (not safe))
                    (cons __tmp16036 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp16035))))
                                              (declare (not safe))
                                              (cons __tmp16034 _post14098_))))
                                       (declare (not safe))
                                       (_lp14093_
                                        _rest14156_
                                        __tmp16037
                                        _bind14097_
                                        __tmp16033)))))
                              (_K1410414141_
                               (lambda (_rest14125_ _hd14126_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd14126_))
                                     (let ((_id14128_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd14126_))))
                                       (let ((__tmp16083 (cdr _exprs14096_))
                                             (__tmp16078
                                              (let ((__tmp16079
                                                     (let ((__tmp16080
                                                            (let ((__tmp16081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp16082
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp16082))))
                      (declare (not safe))
                      (cons __tmp16081 '()))))
               (declare (not safe))
               (cons _id14128_ __tmp16080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp16079 _bind14097_)))
                                             (__tmp16072
                                              (let ((__tmp16073
                                                     (let ((__tmp16074
                                                            (let ((__tmp16075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp16076
                                  (let ((__tmp16077 (car _exprs14096_)))
                                    (declare (not safe))
                                    (cons __tmp16077 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp16076))))
                      (declare (not safe))
                      (cons __tmp16075 '()))))
               (declare (not safe))
               (cons _id14128_ __tmp16074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp16073
                                                      _post14098_))))
                                         (declare (not safe))
                                         (_lp14093_
                                          _rest14125_
                                          __tmp16083
                                          __tmp16078
                                          __tmp16072)))
                                     (if (let ((__tmp16071
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd14126_))))
                                           (declare (not safe))
                                           (not __tmp16071))
                                         (let ((__tmp16070 (cdr _exprs14096_))
                                               (__tmp16066
                                                (let ((__tmp16067
                                                       (let ((__tmp16068
                                                              (let ((__tmp16069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs14096_)))
                        (declare (not safe))
                        (cons __tmp16069 '()))))
                 (declare (not safe))
                 (cons '#f __tmp16068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp16067
                                                        _post14098_))))
                                           (declare (not safe))
                                           (_lp14093_
                                            _rest14125_
                                            __tmp16070
                                            _bind14097_
                                            __tmp16066))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd14126_))
                                             (let* ((_len14130_
                                                     (length _hd14126_))
                                                    (_tmp14132_
                                                     (let ((__tmp16048
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp16048))))
                                               (let ((__tmp16065
                                                      (cdr _exprs14096_))
                                                     (__tmp16058
                                                      (let ((__tmp16059
                                                             (lambda (_id14135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r14136_)
                       (if (let () (declare (not safe)) (__AST-e _id14135_))
                           (let ((__tmp16060
                                  (let ((__tmp16064
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id14135_)))
                                        (__tmp16061
                                         (let ((__tmp16062
                                                (let ((__tmp16063
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp16063))))
                                           (declare (not safe))
                                           (cons __tmp16062 '()))))
                                    (declare (not safe))
                                    (cons __tmp16064 __tmp16061))))
                             (declare (not safe))
                             (cons __tmp16060 _r14136_))
                           _r14136_))))
                (declare (not safe))
                (foldl1 __tmp16059 _bind14097_ _hd14126_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp16049
                                                      (let ((__tmp16050
                                                             (let ((__tmp16051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp16057 (car _exprs14096_))
                                  (__tmp16052
                                   (let ((__tmp16053
                                          (let ((__tmp16055
                                                 (lambda (_id14138_ _k14139_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id14138_))
                                                       (let ((__tmp16056
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id14138_))))
                 (declare (not safe))
                 (cons __tmp16056 _k14139_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp16054
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len14130_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp16055
                                             _hd14126_
                                             __tmp16054))))
                                     (declare (not safe))
                                     (cons _len14130_ __tmp16053))))
                              (declare (not safe))
                              (cons __tmp16057 __tmp16052))))
                       (declare (not safe))
                       (cons _tmp14132_ __tmp16051))))
                (declare (not safe))
                (cons __tmp16050 _post14098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp14093_
                                                  _rest14125_
                                                  __tmp16065
                                                  __tmp16058
                                                  __tmp16049)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx13937_
                                                _hd14126_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1409914113_))
                              (let ((_tl1410914166_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1409914113_)))
                                    (_hd1410814164_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1409914113_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1410814164_))
                                    (let ((_tl1411114171_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1410814164_)))
                                          (_hd1411014169_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1410814164_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1411114171_))
                                          (let ((_hd14174_ _hd1411014169_)
                                                (_rest14176_ _tl1410914166_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1410714161_
                                               _rest14176_
                                               _hd14174_)))
                                          (let ((_hd14149_ _hd1410814164_)
                                                (_rest14151_ _tl1410914166_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1410414141_
                                               _rest14151_
                                               _hd14149_)))))
                                    (let ((_hd14149_ _hd1410814164_)
                                          (_rest14151_ _tl1410914166_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1410414141_
                                         _rest14151_
                                         _hd14149_)))))
                              (let ()
                                (declare (not safe))
                                (_else1410214121_))))))))
                 (_compile-bind13941_
                  (lambda (_bind14085_ _post14086_ _body14087_)
                    (let ((__tmp16084
                           (let ((__tmp16085
                                  (let ((__tmp16088 (reverse _bind14085_))
                                        (__tmp16086
                                         (let ((__tmp16087
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post13942_
                                                   _post14086_
                                                   _body14087_))))
                                           (declare (not safe))
                                           (cons __tmp16087 '()))))
                                    (declare (not safe))
                                    (cons __tmp16088 __tmp16086))))
                             (declare (not safe))
                             (cons 'let __tmp16085))))
                      (declare (not safe))
                      (__SRC__% __tmp16084 _stx13937_))))
                 (_compile-post13942_
                  (lambda (_post13944_ _body13945_)
                    (let ((__tmp16089
                           (let ((__tmp16090
                                  (let ((__tmp16091
                                         (let ((__tmp16093
                                                (lambda (_hd13947_ _r13948_)
                                                  (let* ((_hd1394913972_
                                                          _hd13947_)
                                                         (_E1395313976_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1394913972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1396614070_
                                                           (lambda (_expr14068_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr14068_ _r13948_))))
                  (_K1396114048_
                   (lambda (_expr14045_ _id14046_)
                     (let ((__tmp16094
                            (let ((__tmp16095
                                   (let ((__tmp16096
                                          (let ((__tmp16097
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr14045_ '()))))
                                            (declare (not safe))
                                            (cons _id14046_ __tmp16097))))
                                     (declare (not safe))
                                     (cons 'set! __tmp16096))))
                              (declare (not safe))
                              (__SRC__% __tmp16095 _stx13937_))))
                       (declare (not safe))
                       (cons __tmp16094 _r13948_))))
                  (_K1395414015_
                   (lambda (_init13980_ _len13981_ _expr13982_ _tmp13983_)
                     (let ((__tmp16098
                            (let ((__tmp16099
                                   (let ((__tmp16100
                                          (let ((__tmp16114
                                                 (let ((__tmp16115
                                                        (let ((__tmp16116
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr13982_ '()))))
                  (declare (not safe))
                  (cons _tmp13983_ __tmp16116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp16115 '())))
                                                (__tmp16101
                                                 (let ((__tmp16110
                                                        (let ((__tmp16111
                                                               (let ((__tmp16112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp16113
                                     (let ()
                                       (declare (not safe))
                                       (cons _len13981_ '()))))
                                (declare (not safe))
                                (cons _tmp13983_ __tmp16113))))
                         (declare (not safe))
                         (cons '__check-values __tmp16112))))
                  (declare (not safe))
                  (__SRC__% __tmp16111 _stx13937_)))
               (__tmp16102
                (let ((__tmp16103
                       (map (lambda (_hd13985_)
                              (let* ((_hd1398613993_ _hd13985_)
                                     (_E1398813997_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1398613993_)))
                                     (_K1398914003_
                                      (lambda (_k14000_ _id14001_)
                                        (let ((__tmp16104
                                               (let ((__tmp16105
                                                      (let ((__tmp16106
                                                             (let ((__tmp16107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp16108
                                   (let ((__tmp16109
                                          (let ()
                                            (declare (not safe))
                                            (cons _k14000_ '()))))
                                     (declare (not safe))
                                     (cons _tmp13983_ __tmp16109))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp16108))))
                       (declare (not safe))
                       (cons __tmp16107 '()))))
                (declare (not safe))
                (cons _id14001_ __tmp16106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp16105))))
                                          (declare (not safe))
                                          (__SRC__% __tmp16104 _stx13937_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1398613993_))
                                    (let ((_hd1399014006_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1398613993_)))
                                          (_tl1399114008_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1398613993_))))
                                      (let* ((_id14011_ _hd1399014006_)
                                             (_k14013_ _tl1399114008_))
                                        (declare (not safe))
                                        (_K1398914003_ _k14013_ _id14011_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1398813997_)))))
                            _init13980_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp16103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp16110
                                                         __tmp16102))))
                                            (declare (not safe))
                                            (cons __tmp16114 __tmp16101))))
                                     (declare (not safe))
                                     (cons 'let __tmp16100))))
                              (declare (not safe))
                              (__SRC__% __tmp16099 _stx13937_))))
                       (declare (not safe))
                       (cons __tmp16098 _r13948_)))))
              (if (let () (declare (not safe)) (##pair? _hd1394913972_))
                  (let ((_tl1396814075_
                         (let () (declare (not safe)) (##cdr _hd1394913972_)))
                        (_hd1396714073_
                         (let () (declare (not safe)) (##car _hd1394913972_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1396714073_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1396814075_))
                            (let ((_tl1397014080_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1396814075_)))
                                  (_hd1396914078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1396814075_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1397014080_))
                                  (let ((_expr14083_ _hd1396914078_))
                                    (declare (not safe))
                                    (_K1396614070_ _expr14083_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1397014080_))
                                      (let ((_tl1396014034_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1397014080_)))
                                            (_hd1395914032_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1397014080_))))
                                        (let ((_tmp14023_ _hd1396714073_)
                                              (_expr14030_ _hd1396914078_)
                                              (_len14037_ _hd1395914032_)
                                              (_init14039_ _tl1396014034_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1395414015_
                                             _init14039_
                                             _len14037_
                                             _expr14030_
                                             _tmp14023_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1395313976_)))))
                            (let () (declare (not safe)) (_E1395313976_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1396814075_))
                            (let ((_tl1396514060_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1396814075_)))
                                  (_hd1396414058_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1396814075_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1396514060_))
                                  (let ((_id14056_ _hd1396714073_)
                                        (_expr14063_ _hd1396414058_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1396114048_ _expr14063_ _id14056_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1396514060_))
                                      (let ((_tl1396014034_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1396514060_)))
                                            (_hd1395914032_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1396514060_))))
                                        (let ((_tmp14023_ _hd1396714073_)
                                              (_expr14030_ _hd1396414058_)
                                              (_len14037_ _hd1395914032_)
                                              (_init14039_ _tl1396014034_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1395414015_
                                             _init14039_
                                             _len14037_
                                             _expr14030_
                                             _tmp14023_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1395313976_)))))
                            (let () (declare (not safe)) (_E1395313976_)))))
                  (let () (declare (not safe)) (_E1395313976_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp16092 (list _body13945_)))
                                           (declare (not safe))
                                           (foldl1 __tmp16093
                                                   __tmp16092
                                                   _post13944_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp16091))))
                             (declare (not safe))
                             (cons 'begin __tmp16090))))
                      (declare (not safe))
                      (__SRC__% __tmp16089 _stx13937_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx13937_
             _compile-simple13939_
             _compile-values13940_)))))
    (define __compile-call%
      (lambda (_stx13897_)
        (let* ((_$e13899_ _stx13897_)
               (_$E1390113910_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13899_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13899_))
              (let* ((_$tgt1390213913_
                      (let () (declare (not safe)) (__AST-e _$e13899_)))
                     (_$hd1390313916_
                      (let () (declare (not safe)) (##car _$tgt1390213913_)))
                     (_$tl1390413919_
                      (let () (declare (not safe)) (##cdr _$tgt1390213913_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1390413919_))
                    (let* ((_$tgt1390513923_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1390413919_)))
                           (_$hd1390613926_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1390513923_)))
                           (_$tl1390713929_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1390513923_))))
                      (let* ((_rator13933_ _$hd1390613926_)
                             (_rands13935_ _$tl1390713929_)
                             (__tmp16117
                              (let ((__tmp16119
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator13933_)))
                                    (__tmp16118 (map __compile _rands13935_)))
                                (declare (not safe))
                                (cons __tmp16119 __tmp16118))))
                        (declare (not safe))
                        (__SRC__% __tmp16117 _stx13897_)))
                    (let () (declare (not safe)) (_$E1390113910_))))
              (let () (declare (not safe)) (_$E1390113910_))))))
    (define __compile-ref%
      (lambda (_stx13859_)
        (let* ((_$e13861_ _stx13859_)
               (_$E1386313872_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13861_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13861_))
              (let* ((_$tgt1386413875_
                      (let () (declare (not safe)) (__AST-e _$e13861_)))
                     (_$hd1386513878_
                      (let () (declare (not safe)) (##car _$tgt1386413875_)))
                     (_$tl1386613881_
                      (let () (declare (not safe)) (##cdr _$tgt1386413875_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1386613881_))
                    (let* ((_$tgt1386713885_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1386613881_)))
                           (_$hd1386813888_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1386713885_)))
                           (_$tl1386913891_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1386713885_))))
                      (let ((_id13895_ _$hd1386813888_))
                        (if (let ((__tmp16120
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1386913891_))))
                              (declare (not safe))
                              (equal? __tmp16120 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id13895_ _stx13859_))
                            (let () (declare (not safe)) (_$E1386313872_)))))
                    (let () (declare (not safe)) (_$E1386313872_))))
              (let () (declare (not safe)) (_$E1386313872_))))))
    (define __compile-setq%
      (lambda (_stx13806_)
        (let* ((_$e13808_ _stx13806_)
               (_$E1381013822_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13808_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13808_))
              (let* ((_$tgt1381113825_
                      (let () (declare (not safe)) (__AST-e _$e13808_)))
                     (_$hd1381213828_
                      (let () (declare (not safe)) (##car _$tgt1381113825_)))
                     (_$tl1381313831_
                      (let () (declare (not safe)) (##cdr _$tgt1381113825_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1381313831_))
                    (let* ((_$tgt1381413835_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1381313831_)))
                           (_$hd1381513838_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1381413835_)))
                           (_$tl1381613841_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1381413835_))))
                      (let ((_id13845_ _$hd1381513838_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1381613841_))
                            (let* ((_$tgt1381713847_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1381613841_)))
                                   (_$hd1381813850_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1381713847_)))
                                   (_$tl1381913853_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1381713847_))))
                              (let ((_expr13857_ _$hd1381813850_))
                                (if (let ((__tmp16126
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1381913853_))))
                                      (declare (not safe))
                                      (equal? __tmp16126 '()))
                                    (let ((__tmp16121
                                           (let ((__tmp16122
                                                  (let ((__tmp16125
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id13845_
                                                            _stx13806_)))
                                                        (__tmp16123
                                                         (let ((__tmp16124
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr13857_))))
                   (declare (not safe))
                   (cons __tmp16124 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp16125
                                                          __tmp16123))))
                                             (declare (not safe))
                                             (cons 'set! __tmp16122))))
                                      (declare (not safe))
                                      (__SRC__% __tmp16121 _stx13806_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1381013822_)))))
                            (let () (declare (not safe)) (_$E1381013822_)))))
                    (let () (declare (not safe)) (_$E1381013822_))))
              (let () (declare (not safe)) (_$E1381013822_))))))
    (define __compile-if%
      (lambda (_stx13738_)
        (let* ((_$e13740_ _stx13738_)
               (_$E1374213757_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13740_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13740_))
              (let* ((_$tgt1374313760_
                      (let () (declare (not safe)) (__AST-e _$e13740_)))
                     (_$hd1374413763_
                      (let () (declare (not safe)) (##car _$tgt1374313760_)))
                     (_$tl1374513766_
                      (let () (declare (not safe)) (##cdr _$tgt1374313760_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1374513766_))
                    (let* ((_$tgt1374613770_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1374513766_)))
                           (_$hd1374713773_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1374613770_)))
                           (_$tl1374813776_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1374613770_))))
                      (let ((_p13780_ _$hd1374713773_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1374813776_))
                            (let* ((_$tgt1374913782_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1374813776_)))
                                   (_$hd1375013785_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1374913782_)))
                                   (_$tl1375113788_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1374913782_))))
                              (let ((_t13792_ _$hd1375013785_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1375113788_))
                                    (let* ((_$tgt1375213794_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1375113788_)))
                                           (_$hd1375313797_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1375213794_)))
                                           (_$tl1375413800_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1375213794_))))
                                      (let ((_f13804_ _$hd1375313797_))
                                        (if (let ((__tmp16134
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1375413800_))))
                                              (declare (not safe))
                                              (equal? __tmp16134 '()))
                                            (let ((__tmp16127
                                                   (let ((__tmp16128
                                                          (let ((__tmp16133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p13780_)))
                        (__tmp16129
                         (let ((__tmp16132
                                (let ()
                                  (declare (not safe))
                                  (__compile _t13792_)))
                               (__tmp16130
                                (let ((__tmp16131
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f13804_))))
                                  (declare (not safe))
                                  (cons __tmp16131 '()))))
                           (declare (not safe))
                           (cons __tmp16132 __tmp16130))))
                    (declare (not safe))
                    (cons __tmp16133 __tmp16129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp16128))))
                                              (declare (not safe))
                                              (__SRC__% __tmp16127 _stx13738_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1374213757_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1374213757_)))))
                            (let () (declare (not safe)) (_$E1374213757_)))))
                    (let () (declare (not safe)) (_$E1374213757_))))
              (let () (declare (not safe)) (_$E1374213757_))))))
    (define __compile-quote%
      (lambda (_stx13700_)
        (let* ((_$e13702_ _stx13700_)
               (_$E1370413713_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13702_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13702_))
              (let* ((_$tgt1370513716_
                      (let () (declare (not safe)) (__AST-e _$e13702_)))
                     (_$hd1370613719_
                      (let () (declare (not safe)) (##car _$tgt1370513716_)))
                     (_$tl1370713722_
                      (let () (declare (not safe)) (##cdr _$tgt1370513716_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1370713722_))
                    (let* ((_$tgt1370813726_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1370713722_)))
                           (_$hd1370913729_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1370813726_)))
                           (_$tl1371013732_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1370813726_))))
                      (let ((_e13736_ _$hd1370913729_))
                        (if (let ((__tmp16138
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1371013732_))))
                              (declare (not safe))
                              (equal? __tmp16138 '()))
                            (let ((__tmp16135
                                   (let ((__tmp16136
                                          (let ((__tmp16137
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e13736_))))
                                            (declare (not safe))
                                            (cons __tmp16137 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp16136))))
                              (declare (not safe))
                              (__SRC__% __tmp16135 _stx13700_))
                            (let () (declare (not safe)) (_$E1370413713_)))))
                    (let () (declare (not safe)) (_$E1370413713_))))
              (let () (declare (not safe)) (_$E1370413713_))))))
    (define __compile-quote-syntax%
      (lambda (_stx13662_)
        (let* ((_$e13664_ _stx13662_)
               (_$E1366613675_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e13664_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e13664_))
              (let* ((_$tgt1366713678_
                      (let () (declare (not safe)) (__AST-e _$e13664_)))
                     (_$hd1366813681_
                      (let () (declare (not safe)) (##car _$tgt1366713678_)))
                     (_$tl1366913684_
                      (let () (declare (not safe)) (##cdr _$tgt1366713678_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1366913684_))
                    (let* ((_$tgt1367013688_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1366913684_)))
                           (_$hd1367113691_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1367013688_)))
                           (_$tl1367213694_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1367013688_))))
                      (let ((_e13698_ _$hd1367113691_))
                        (if (let ((__tmp16141
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1367213694_))))
                              (declare (not safe))
                              (equal? __tmp16141 '()))
                            (let ((__tmp16139
                                   (let ((__tmp16140
                                          (let ()
                                            (declare (not safe))
                                            (cons _e13698_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp16140))))
                              (declare (not safe))
                              (__SRC__% __tmp16139 _stx13662_))
                            (let () (declare (not safe)) (_$E1366613675_)))))
                    (let () (declare (not safe)) (_$E1366613675_))))
              (let () (declare (not safe)) (_$E1366613675_))))))
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
