(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core$<special>[:0:]#eval-when-compile|
  (lambda (_stx37021_)
    (let* ((_g3702437038_
            (lambda (_g3702537034_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g3702537034_)))
           (_g3702337080_
            (lambda (_g3702537042_)
              (if (gx#stx-pair? _g3702537042_)
                  (let ((_e3702937045_ (gx#syntax-e _g3702537042_)))
                    (let ((_hd3702837049_
                           (let () (declare (not safe)) (##car _e3702937045_)))
                          (_tl3702737052_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3702937045_))))
                      (if (gx#stx-pair? _tl3702737052_)
                          (let ((_e3703237055_ (gx#syntax-e _tl3702737052_)))
                            (let ((_hd3703137059_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3703237055_)))
                                  (_tl3703037062_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3703237055_))))
                              (if (gx#stx-null? _tl3703037062_)
                                  ((lambda (_L37065_)
                                     (if (gx#current-expander-compiling?)
                                         (gx#eval-syntax _L37065_)
                                         '#!void)
                                     (cons (gx#datum->syntax '#f 'void) '()))
                                   _hd3703137059_)
                                  (_g3702437038_ _g3702537042_))))
                          (_g3702437038_ _g3702537042_))))
                  (_g3702437038_ _g3702537042_)))))
      (_g3702337080_ _stx37021_))))
