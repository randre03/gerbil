(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx34337_)
      (let* ((_g3434134352_
              (lambda (_g3434234348_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3434234348_)))
             (_g3434034382_
              (lambda (_g3434234356_)
                (if (gx#stx-pair? _g3434234356_)
                    (let ((_e3434634359_ (gx#syntax-e _g3434234356_)))
                      (let ((_hd3434534363_
                             (let ()
                               (declare (not safe))
                               (##car _e3434634359_)))
                            (_tl3434434366_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3434634359_))))
                        ((lambda (_L34369_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L34369_)
                                             '()))))
                         _tl3434434366_)))
                    (_g3434134352_ _g3434234356_)))))
        (_g3434034382_ _$stx34337_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx34386_)
      (let ((_g3438934396_
             (lambda (_g3439034392_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3439034392_))))
        (_g3438934396_ _$stx34386_)))))
