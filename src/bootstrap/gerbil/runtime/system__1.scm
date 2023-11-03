(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx6969_)
    (let* ((_g69736991_
            (lambda (_g69746987_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g69746987_)))
           (_g69727047_
            (lambda (_g69746995_)
              (if (gx#stx-pair? _g69746995_)
                  (let ((_e69796998_ (gx#syntax-e _g69746995_)))
                    (let ((_hd69787002_
                           (let () (declare (not safe)) (##car _e69796998_)))
                          (_tl69777005_
                           (let () (declare (not safe)) (##cdr _e69796998_))))
                      (if (gx#stx-pair? _tl69777005_)
                          (let ((_e69827008_ (gx#syntax-e _tl69777005_)))
                            (let ((_hd69817012_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e69827008_)))
                                  (_tl69807015_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e69827008_))))
                              (if (gx#stx-pair? _tl69807015_)
                                  (let ((_e69857018_
                                         (gx#syntax-e _tl69807015_)))
                                    (let ((_hd69847022_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e69857018_)))
                                          (_tl69837025_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e69857018_))))
                                      (if (gx#stx-null? _tl69837025_)
                                          ((lambda (_L7028_ _L7030_)
                                             (let ((__tmp7159
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp7146
                                                    (let ((__tmp7155
                                                           (let ((__tmp7158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp7156
                          (let ((__tmp7157
                                 (let ()
                                   (declare (not safe))
                                   (cons _L7028_ '()))))
                            (declare (not safe))
                            (cons _L7030_ __tmp7157))))
                     (declare (not safe))
                     (cons __tmp7158 __tmp7156)))
                  (__tmp7147
                   (let ((__tmp7151
                          (let ((__tmp7154 (gx#datum->syntax '#f 'set!))
                                (__tmp7152
                                 (let ((__tmp7153
                                        (let ()
                                          (declare (not safe))
                                          (cons _L7030_ '()))))
                                   (declare (not safe))
                                   (cons _L7030_ __tmp7153))))
                            (declare (not safe))
                            (cons __tmp7154 __tmp7152)))
                         (__tmp7148
                          (let ((__tmp7149
                                 (let ((__tmp7150
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp7150 '()))))
                            (declare (not safe))
                            (cons __tmp7149 '()))))
                     (declare (not safe))
                     (cons __tmp7151 __tmp7148))))
              (declare (not safe))
              (cons __tmp7155 __tmp7147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp7159 __tmp7146)))
                                           _hd69847022_
                                           _hd69817012_)
                                          (_g69736991_ _g69746995_))))
                                  (_g69736991_ _g69746995_))))
                          (_g69736991_ _g69746995_))))
                  (_g69736991_ _g69746995_)))))
      (_g69727047_ _$stx6969_))))
