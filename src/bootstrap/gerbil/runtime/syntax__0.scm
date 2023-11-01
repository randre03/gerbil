(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1698867094)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       (cons Exception::t '())
       '(message irritants where context phi marks)
       'SyntaxError
       '((final: . #t))
       '#f))
    (define SyntaxError? (make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _$args12921_
        (apply make-class-instance SyntaxError::t _$args12921_)))
    (define SyntaxError-message
      (make-class-slot-accessor SyntaxError::t 'message))
    (define SyntaxError-irritants
      (make-class-slot-accessor SyntaxError::t 'irritants))
    (define SyntaxError-where (make-class-slot-accessor SyntaxError::t 'where))
    (define SyntaxError-context
      (make-class-slot-accessor SyntaxError::t 'context))
    (define SyntaxError-phi (make-class-slot-accessor SyntaxError::t 'phi))
    (define SyntaxError-marks (make-class-slot-accessor SyntaxError::t 'marks))
    (define SyntaxError-message-set!
      (make-class-slot-mutator SyntaxError::t 'message))
    (define SyntaxError-irritants-set!
      (make-class-slot-mutator SyntaxError::t 'irritants))
    (define SyntaxError-where-set!
      (make-class-slot-mutator SyntaxError::t 'where))
    (define SyntaxError-context-set!
      (make-class-slot-mutator SyntaxError::t 'context))
    (define SyntaxError-phi-set! (make-class-slot-mutator SyntaxError::t 'phi))
    (define SyntaxError-marks-set!
      (make-class-slot-mutator SyntaxError::t 'marks))
    (define &SyntaxError-message
      (make-class-slot-unchecked-accessor SyntaxError::t 'message))
    (define &SyntaxError-irritants
      (make-class-slot-unchecked-accessor SyntaxError::t 'irritants))
    (define &SyntaxError-where
      (make-class-slot-unchecked-accessor SyntaxError::t 'where))
    (define &SyntaxError-context
      (make-class-slot-unchecked-accessor SyntaxError::t 'context))
    (define &SyntaxError-phi
      (make-class-slot-unchecked-accessor SyntaxError::t 'phi))
    (define &SyntaxError-marks
      (make-class-slot-unchecked-accessor SyntaxError::t 'marks))
    (define &SyntaxError-message-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'message))
    (define &SyntaxError-irritants-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'irritants))
    (define &SyntaxError-where-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'where))
    (define &SyntaxError-context-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'context))
    (define &SyntaxError-phi-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'phi))
    (define &SyntaxError-marks-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'marks))
    (define SyntaxError::display-exception
      (lambda (_self12824_ _port12825_)
        (letrec ((_location12827_
                  (lambda ()
                    (let _lp12881_ ((_rest12883_
                                     (slot-ref _self12824_ 'irritants)))
                      (let* ((_rest1288412892_ _rest12883_)
                             (_else1288612900_ (lambda () '#f))
                             (_K1288812909_
                              (lambda (_rest12903_ _hd12904_)
                                (let ((_$e12906_ (__AST-source _hd12904_)))
                                  (if _$e12906_
                                      _$e12906_
                                      (_lp12881_ _rest12903_))))))
                        (if (##pair? _rest1288412892_)
                            (let ((_hd1288912912_ (##car _rest1288412892_))
                                  (_tl1289012914_ (##cdr _rest1288412892_)))
                              (let* ((_hd12917_ _hd1288912912_)
                                     (_rest12919_ _tl1289012914_))
                                (_K1288812909_ _rest12919_ _hd12917_)))
                            (_else1288612900_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e12830_ (_location12827_)))
               (if _$e12830_
                   ((lambda (_where12833_)
                      (##display-locat _where12833_ '#t (current-output-port)))
                    _$e12830_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e12835_ (slot-ref _self12824_ 'where)))
               (if _$e12835_
                   ((lambda (_where12838_)
                      (displayln
                       '" at "
                       _where12838_
                       '": "
                       (slot-ref _self12824_ 'message)))
                    _$e12835_)
                   (displayln '": " (slot-ref _self12824_ 'message))))
             (let* ((_g1283912847_ (slot-ref _self12824_ 'irritants))
                    (_else1284112855_ (lambda () '#!void))
                    (_K1284312868_
                     (lambda (_rest12858_ _stx12859_)
                       (display '"... form:   ")
                       (__pp-syntax _stx12859_)
                       (for-each
                        (lambda (_detail12861_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail12861_))
                          (let ((_$e12863_ (__AST-source _detail12861_)))
                            (if _$e12863_
                                ((lambda (_loc12866_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc12866_
                                    '#t
                                    (current-output-port)))
                                 _$e12863_)
                                '#!void))
                          (newline))
                        _rest12858_))))
               (if (##pair? _g1283912847_)
                   (let ((_hd1284412871_ (##car _g1283912847_))
                         (_tl1284512873_ (##cdr _g1283912847_)))
                     (let* ((_stx12876_ _hd1284412871_)
                            (_rest12878_ _tl1284512873_))
                       (_K1284312868_ _rest12878_ _stx12876_)))
                   '#!void)))
           current-output-port
           _port12825_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message12695_
               _irritants12696_
               _where12697_
               _context12698_
               _marks12699_
               _phi12700_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message12695_
         'irritants:
         _irritants12696_
         'where:
         _where12697_
         'context:
         _context12698_
         'marks:
         _marks12699_
         'phi:
         _phi12700_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where12690_ _message12691_ _stx12692_ . _details12693_)
        (raise (make-syntax-error
                _message12691_
                (cons _stx12692_ _details12693_)
                _where12690_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args12687_ (apply make-struct-instance AST::t _$args12687_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx12685_)
        (if (##structure-instance-of? _stx12685_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx12685_ '1 AST::t '#f)
            _stx12685_)))
    (define __AST-source
      (lambda (_stx12679_)
        (let _lp12681_ ((_src12683_ _stx12679_))
          (if (##structure-instance-of? _src12683_ 'gerbil#AST::t)
              (_lp12681_ (##unchecked-structure-ref _src12683_ '2 AST::t '#f))
              (if (##locat? _src12683_) _src12683_ '#f)))))
    (define __AST
      (lambda (_e12671_ _src-stx12672_)
        (let ((_src12674_ (__AST-source _src-stx12672_)))
          (if (or (##structure-instance-of? _e12671_ 'gerbil#AST::t)
                  (not _src12674_))
              _e12671_
              (##structure AST::t _e12671_ _src12674_)))))
    (define __AST-eq?
      (lambda (_stx12668_ _obj12669_) (eq? (__AST-e _stx12668_) _obj12669_)))
    (define __AST-pair? (lambda (_stx12666_) (pair? (__AST-e _stx12666_))))
    (define __AST-null? (lambda (_stx12664_) (null? (__AST-e _stx12664_))))
    (define __AST-datum?
      (lambda (_stx12645_)
        (let* ((_e12647_ (__AST-e _stx12645_)) (_$e12649_ (number? _e12647_)))
          (if _$e12649_
              _$e12649_
              (let ((_$e12652_ (string? _e12647_)))
                (if _$e12652_
                    _$e12652_
                    (let ((_$e12655_ (char? _e12647_)))
                      (if _$e12655_
                          _$e12655_
                          (let ((_$e12658_ (keyword? _e12647_)))
                            (if _$e12658_
                                _$e12658_
                                (let ((_$e12661_ (boolean? _e12647_)))
                                  (if _$e12661_
                                      _$e12661_
                                      (eq? _e12647_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx12643_) (symbol? (__AST-e _stx12643_))))
    (define __AST-id-list?__%
      (lambda (_stx12594_ _tail?12595_)
        (let _lp12597_ ((_rest12599_ _stx12594_))
          (let* ((_$e12601_ _rest12599_)
                 (_$E1260312616_
                  (lambda ()
                    (let* ((_$E1260412611_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e12601_)))
                           (_rest12614_ _$e12601_))
                      (_tail?12595_ _rest12614_)))))
            (if (__AST-pair? _$e12601_)
                (let* ((_$tgt1260512619_ (__AST-e _$e12601_))
                       (_$hd1260612622_ (##car _$tgt1260512619_))
                       (_$tl1260712625_ (##cdr _$tgt1260512619_)))
                  (let* ((_hd12629_ _$hd1260612622_)
                         (_rest12631_ _$tl1260712625_))
                    (if (__AST-id? _hd12629_) (_lp12597_ _rest12631_) '#f)))
                (_$E1260312616_))))))
    (define __AST-id-list?__0
      (lambda (_stx12636_)
        (let ((_tail?12638_ __AST-null?))
          (__AST-id-list?__% _stx12636_ _tail?12638_))))
    (define __AST-id-list?
      (lambda _g13016_
        (let ((_g13015_ (##length _g13016_)))
          (cond ((##fx= _g13015_ 1)
                 (apply (lambda (_stx12636_) (__AST-id-list?__0 _stx12636_))
                        _g13016_))
                ((##fx= _g13015_ 2)
                 (apply (lambda (_stx12640_ _tail?12641_)
                          (__AST-id-list?__% _stx12640_ _tail?12641_))
                        _g13016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g13016_))))))
    (define __AST-bind-list?
      (lambda (_stx12586_)
        (__AST-id-list?__%
         _stx12586_
         (lambda (_e12588_)
           (let ((_$e12590_ (__AST-null? _e12588_)))
             (if _$e12590_ _$e12590_ (__AST-id? _e12588_)))))))
    (define __AST-list?__%
      (lambda (_stx12539_ _tail?12540_)
        (let _lp12542_ ((_rest12544_ _stx12539_))
          (let* ((_$e12546_ _rest12544_)
                 (_$E1254812561_
                  (lambda ()
                    (let* ((_$E1254912556_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e12546_)))
                           (_rest12559_ _$e12546_))
                      (_tail?12540_ _rest12559_)))))
            (if (__AST-pair? _$e12546_)
                (let* ((_$tgt1255012564_ (__AST-e _$e12546_))
                       (_$hd1255112567_ (##car _$tgt1255012564_))
                       (_$tl1255212570_ (##cdr _$tgt1255012564_)))
                  (let ((_rest12574_ _$tl1255212570_))
                    (_lp12542_ _rest12574_)))
                (_$E1254812561_))))))
    (define __AST-list?__0
      (lambda (_stx12579_)
        (let ((_tail?12581_ __AST-null?))
          (__AST-list?__% _stx12579_ _tail?12581_))))
    (define __AST-list?
      (lambda _g13018_
        (let ((_g13017_ (##length _g13018_)))
          (cond ((##fx= _g13017_ 1)
                 (apply (lambda (_stx12579_) (__AST-list?__0 _stx12579_))
                        _g13018_))
                ((##fx= _g13017_ 2)
                 (apply (lambda (_stx12583_ _tail?12584_)
                          (__AST-list?__% _stx12583_ _tail?12584_))
                        _g13018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g13018_))))))
    (define __AST->list
      (lambda (_stx12504_)
        (let* ((_$e12506_ _stx12504_)
               (_$E1250812521_
                (lambda ()
                  (let* ((_$E1250912516_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e12506_)))
                         (_rest12519_ _$e12506_))
                    (__AST-e _rest12519_)))))
          (if (__AST-pair? _$e12506_)
              (let* ((_$tgt1251012524_ (__AST-e _$e12506_))
                     (_$hd1251112527_ (##car _$tgt1251012524_))
                     (_$tl1251212530_ (##cdr _$tgt1251012524_)))
                (let* ((_hd12534_ _$hd1251112527_)
                       (_rest12536_ _$tl1251212530_))
                  (cons _hd12534_ (__AST->list _rest12536_))))
              (_$E1250812521_)))))
    (define __AST->datum
      (lambda (_stx12502_)
        (if (##structure-instance-of? _stx12502_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx12502_))
            (if (pair? _stx12502_)
                (cons (__AST->datum (car _stx12502_))
                      (__AST->datum (cdr _stx12502_)))
                (if (vector? _stx12502_)
                    (vector-map __AST->datum _stx12502_)
                    (if (box? _stx12502_)
                        (box (__AST->datum (unbox _stx12502_)))
                        _stx12502_))))))
    (define get-readenv
      (lambda (_port12500_)
        (##make-readenv
         _port12500_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in12488_)
        (let ((_e12490_ (##read-datum-or-eof (get-readenv _in12488_))))
          (if (eof-object? (__AST-e _e12490_)) (__AST-e _e12490_) _e12490_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in12496_ (current-input-port))) (read-syntax__% _in12496_))))
    (define read-syntax
      (lambda _g13020_
        (let ((_g13019_ (##length _g13020_)))
          (cond ((##fx= _g13019_ 0)
                 (apply (lambda () (read-syntax__0)) _g13020_))
                ((##fx= _g13019_ 1)
                 (apply (lambda (_in12498_) (read-syntax__% _in12498_))
                        _g13020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g13020_))))))
    (define read-syntax-from-file
      (lambda (_path12483_)
        (let ((_r12485_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path12483_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r12485_)
              (cdr (__AST-e (vector-ref _r12485_ '1)))
              (error (err-code->string _r12485_) _path12483_)))))
    (define __wrap-syntax
      (lambda (_re12480_ _e12481_)
        (if (eof-object? _e12481_)
            _e12481_
            (##structure AST::t _e12481_ (##readenv->locat _re12480_)))))
    (define __unwrap-syntax (lambda (_re12477_ _e12478_) (__AST-e _e12478_)))
    (define __pp-syntax (lambda (_stx12475_) (pp (__AST->datum _stx12475_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt12473_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt12473_ '#t)
          (macro-readtable-bracket-handler-set! _rt12473_ '@list)
          (macro-readtable-brace-handler-set! _rt12473_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt12473_
           '#\!
           __read-sharp-bang)
          _rt12473_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt12469_ _kw12470_)
        (macro-readtable-bracket-handler-set! _rt12469_ _kw12470_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt12466_ _kw12467_)
        (macro-readtable-brace-handler-set! _rt12466_ _kw12467_)))
    (define __read-sharp-bang
      (lambda (_re12457_ _next12458_ _start-pos12459_)
        (if (eq? _start-pos12459_ '0)
            (let* ((_line12461_
                    (##read-line
                     (macro-readenv-port _re12457_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line12463_
                    (substring _line12461_ '1 (string-length _line12461_))))
              (macro-readenv-script-line-set! _re12457_ _script-line12463_)
              (##script-marker))
            (##read-sharp-bang _re12457_ _next12458_ _start-pos12459_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj12455_)
        (if (source-location? _obj12455_)
            (string? (##locat-container _obj12455_))
            '#f)))
    (define source-location-path
      (lambda (_obj12453_)
        (if (##locat? _obj12453_)
            (##container->path (##locat-container _obj12453_))
            '#f)))))
