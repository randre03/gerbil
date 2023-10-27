(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1698333192)
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
      (lambda _$args14959_
        (apply make-class-instance SyntaxError::t _$args14959_)))
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
      (lambda (_self14862_ _port14863_)
        (letrec ((_location14865_
                  (lambda ()
                    (let _lp14919_ ((_rest14921_
                                     (slot-ref _self14862_ 'irritants)))
                      (let* ((_rest1492214930_ _rest14921_)
                             (_else1492414938_ (lambda () '#f))
                             (_K1492614947_
                              (lambda (_rest14941_ _hd14942_)
                                (let ((_$e14944_ (__AST-source _hd14942_)))
                                  (if _$e14944_
                                      _$e14944_
                                      (_lp14919_ _rest14941_))))))
                        (if (##pair? _rest1492214930_)
                            (let ((_hd1492714950_ (##car _rest1492214930_))
                                  (_tl1492814952_ (##cdr _rest1492214930_)))
                              (let* ((_hd14955_ _hd1492714950_)
                                     (_rest14957_ _tl1492814952_))
                                (_K1492614947_ _rest14957_ _hd14955_)))
                            (_else1492414938_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e14868_ (_location14865_)))
               (if _$e14868_
                   ((lambda (_where14871_)
                      (##display-locat _where14871_ '#t (current-output-port)))
                    _$e14868_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e14873_ (slot-ref _self14862_ 'where)))
               (if _$e14873_
                   ((lambda (_where14876_)
                      (displayln
                       '" at "
                       _where14876_
                       '": "
                       (slot-ref _self14862_ 'message)))
                    _$e14873_)
                   (displayln '": " (slot-ref _self14862_ 'message))))
             (let* ((_g1487714885_ (slot-ref _self14862_ 'irritants))
                    (_else1487914893_ (lambda () '#!void))
                    (_K1488114906_
                     (lambda (_rest14896_ _stx14897_)
                       (display '"... form:   ")
                       (__pp-syntax _stx14897_)
                       (for-each
                        (lambda (_detail14899_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail14899_))
                          (let ((_$e14901_ (__AST-source _detail14899_)))
                            (if _$e14901_
                                ((lambda (_loc14904_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc14904_
                                    '#t
                                    (current-output-port)))
                                 _$e14901_)
                                '#!void))
                          (newline))
                        _rest14896_))))
               (if (##pair? _g1487714885_)
                   (let ((_hd1488214909_ (##car _g1487714885_))
                         (_tl1488314911_ (##cdr _g1487714885_)))
                     (let* ((_stx14914_ _hd1488214909_)
                            (_rest14916_ _tl1488314911_))
                       (_K1488114906_ _rest14916_ _stx14914_)))
                   '#!void)))
           current-output-port
           _port14863_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message14733_
               _irritants14734_
               _where14735_
               _context14736_
               _marks14737_
               _phi14738_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message14733_
         'irritants:
         _irritants14734_
         'where:
         _where14735_
         'context:
         _context14736_
         'marks:
         _marks14737_
         'phi:
         _phi14738_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where14728_ _message14729_ _stx14730_ . _details14731_)
        (raise (make-syntax-error
                _message14729_
                (cons _stx14730_ _details14731_)
                _where14728_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args14725_ (apply make-struct-instance AST::t _$args14725_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx14723_)
        (if (##structure-instance-of? _stx14723_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx14723_ '1 AST::t '#f)
            _stx14723_)))
    (define __AST-source
      (lambda (_stx14717_)
        (let _lp14719_ ((_src14721_ _stx14717_))
          (if (##structure-instance-of? _src14721_ 'gerbil#AST::t)
              (_lp14719_ (##unchecked-structure-ref _src14721_ '2 AST::t '#f))
              (if (##locat? _src14721_) _src14721_ '#f)))))
    (define __AST
      (lambda (_e14709_ _src-stx14710_)
        (let ((_src14712_ (__AST-source _src-stx14710_)))
          (if (or (##structure-instance-of? _e14709_ 'gerbil#AST::t)
                  (not _src14712_))
              _e14709_
              (##structure AST::t _e14709_ _src14712_)))))
    (define __AST-eq?
      (lambda (_stx14706_ _obj14707_) (eq? (__AST-e _stx14706_) _obj14707_)))
    (define __AST-pair? (lambda (_stx14704_) (pair? (__AST-e _stx14704_))))
    (define __AST-null? (lambda (_stx14702_) (null? (__AST-e _stx14702_))))
    (define __AST-datum?
      (lambda (_stx14683_)
        (let* ((_e14685_ (__AST-e _stx14683_)) (_$e14687_ (number? _e14685_)))
          (if _$e14687_
              _$e14687_
              (let ((_$e14690_ (string? _e14685_)))
                (if _$e14690_
                    _$e14690_
                    (let ((_$e14693_ (char? _e14685_)))
                      (if _$e14693_
                          _$e14693_
                          (let ((_$e14696_ (keyword? _e14685_)))
                            (if _$e14696_
                                _$e14696_
                                (let ((_$e14699_ (boolean? _e14685_)))
                                  (if _$e14699_
                                      _$e14699_
                                      (eq? _e14685_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx14681_) (symbol? (__AST-e _stx14681_))))
    (define __AST-id-list?__%
      (lambda (_stx14632_ _tail?14633_)
        (let _lp14635_ ((_rest14637_ _stx14632_))
          (let* ((_$e14639_ _rest14637_)
                 (_$E1464114654_
                  (lambda ()
                    (let* ((_$E1464214649_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e14639_)))
                           (_rest14652_ _$e14639_))
                      (_tail?14633_ _rest14652_)))))
            (if (__AST-pair? _$e14639_)
                (let* ((_$tgt1464314657_ (__AST-e _$e14639_))
                       (_$hd1464414660_ (##car _$tgt1464314657_))
                       (_$tl1464514663_ (##cdr _$tgt1464314657_)))
                  (let* ((_hd14667_ _$hd1464414660_)
                         (_rest14669_ _$tl1464514663_))
                    (if (__AST-id? _hd14667_) (_lp14635_ _rest14669_) '#f)))
                (_$E1464114654_))))))
    (define __AST-id-list?__0
      (lambda (_stx14674_)
        (let ((_tail?14676_ __AST-null?))
          (__AST-id-list?__% _stx14674_ _tail?14676_))))
    (define __AST-id-list?
      (lambda _g15054_
        (let ((_g15053_ (##length _g15054_)))
          (cond ((##fx= _g15053_ 1)
                 (apply (lambda (_stx14674_) (__AST-id-list?__0 _stx14674_))
                        _g15054_))
                ((##fx= _g15053_ 2)
                 (apply (lambda (_stx14678_ _tail?14679_)
                          (__AST-id-list?__% _stx14678_ _tail?14679_))
                        _g15054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g15054_))))))
    (define __AST-bind-list?
      (lambda (_stx14624_)
        (__AST-id-list?__%
         _stx14624_
         (lambda (_e14626_)
           (let ((_$e14628_ (__AST-null? _e14626_)))
             (if _$e14628_ _$e14628_ (__AST-id? _e14626_)))))))
    (define __AST-list?__%
      (lambda (_stx14577_ _tail?14578_)
        (let _lp14580_ ((_rest14582_ _stx14577_))
          (let* ((_$e14584_ _rest14582_)
                 (_$E1458614599_
                  (lambda ()
                    (let* ((_$E1458714594_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e14584_)))
                           (_rest14597_ _$e14584_))
                      (_tail?14578_ _rest14597_)))))
            (if (__AST-pair? _$e14584_)
                (let* ((_$tgt1458814602_ (__AST-e _$e14584_))
                       (_$hd1458914605_ (##car _$tgt1458814602_))
                       (_$tl1459014608_ (##cdr _$tgt1458814602_)))
                  (let ((_rest14612_ _$tl1459014608_))
                    (_lp14580_ _rest14612_)))
                (_$E1458614599_))))))
    (define __AST-list?__0
      (lambda (_stx14617_)
        (let ((_tail?14619_ __AST-null?))
          (__AST-list?__% _stx14617_ _tail?14619_))))
    (define __AST-list?
      (lambda _g15056_
        (let ((_g15055_ (##length _g15056_)))
          (cond ((##fx= _g15055_ 1)
                 (apply (lambda (_stx14617_) (__AST-list?__0 _stx14617_))
                        _g15056_))
                ((##fx= _g15055_ 2)
                 (apply (lambda (_stx14621_ _tail?14622_)
                          (__AST-list?__% _stx14621_ _tail?14622_))
                        _g15056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g15056_))))))
    (define __AST->list
      (lambda (_stx14542_)
        (let* ((_$e14544_ _stx14542_)
               (_$E1454614559_
                (lambda ()
                  (let* ((_$E1454714554_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _$e14544_)))
                         (_rest14557_ _$e14544_))
                    (__AST-e _rest14557_)))))
          (if (__AST-pair? _$e14544_)
              (let* ((_$tgt1454814562_ (__AST-e _$e14544_))
                     (_$hd1454914565_ (##car _$tgt1454814562_))
                     (_$tl1455014568_ (##cdr _$tgt1454814562_)))
                (let* ((_hd14572_ _$hd1454914565_)
                       (_rest14574_ _$tl1455014568_))
                  (cons _hd14572_ (__AST->list _rest14574_))))
              (_$E1454614559_)))))
    (define __AST->datum
      (lambda (_stx14540_)
        (if (##structure-instance-of? _stx14540_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx14540_))
            (if (pair? _stx14540_)
                (cons (__AST->datum (car _stx14540_))
                      (__AST->datum (cdr _stx14540_)))
                (if (vector? _stx14540_)
                    (vector-map __AST->datum _stx14540_)
                    (if (box? _stx14540_)
                        (box (__AST->datum (unbox _stx14540_)))
                        _stx14540_))))))
    (define get-readenv
      (lambda (_port14538_)
        (##make-readenv
         _port14538_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in14526_)
        (let ((_e14528_ (##read-datum-or-eof (get-readenv _in14526_))))
          (if (eof-object? (__AST-e _e14528_)) (__AST-e _e14528_) _e14528_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in14534_ (current-input-port))) (read-syntax__% _in14534_))))
    (define read-syntax
      (lambda _g15058_
        (let ((_g15057_ (##length _g15058_)))
          (cond ((##fx= _g15057_ 0)
                 (apply (lambda () (read-syntax__0)) _g15058_))
                ((##fx= _g15057_ 1)
                 (apply (lambda (_in14536_) (read-syntax__% _in14536_))
                        _g15058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g15058_))))))
    (define read-syntax-from-file
      (lambda (_path14521_)
        (let ((_r14523_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path14521_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r14523_)
              (cdr (__AST-e (vector-ref _r14523_ '1)))
              (error (err-code->string _r14523_) _path14521_)))))
    (define __wrap-syntax
      (lambda (_re14518_ _e14519_)
        (if (eof-object? _e14519_)
            _e14519_
            (##structure AST::t _e14519_ (##readenv->locat _re14518_)))))
    (define __unwrap-syntax (lambda (_re14515_ _e14516_) (__AST-e _e14516_)))
    (define __pp-syntax (lambda (_stx14513_) (pp (__AST->datum _stx14513_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt14511_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt14511_ '#t)
          (macro-readtable-bracket-handler-set! _rt14511_ '@list)
          (macro-readtable-brace-handler-set! _rt14511_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt14511_
           '#\!
           __read-sharp-bang)
          _rt14511_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt14507_ _kw14508_)
        (macro-readtable-bracket-handler-set! _rt14507_ _kw14508_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt14504_ _kw14505_)
        (macro-readtable-brace-handler-set! _rt14504_ _kw14505_)))
    (define __read-sharp-bang
      (lambda (_re14495_ _next14496_ _start-pos14497_)
        (if (eq? _start-pos14497_ '0)
            (let* ((_line14499_
                    (##read-line
                     (macro-readenv-port _re14495_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line14501_
                    (substring _line14499_ '1 (string-length _line14499_))))
              (macro-readenv-script-line-set! _re14495_ _script-line14501_)
              (##script-marker))
            (##read-sharp-bang _re14495_ _next14496_ _start-pos14497_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj14493_)
        (if (source-location? _obj14493_)
            (string? (##locat-container _obj14493_))
            '#f)))
    (define source-location-path
      (lambda (_obj14491_)
        (if (##locat? _obj14491_)
            (##container->path (##locat-container _obj14491_))
            '#f)))))
