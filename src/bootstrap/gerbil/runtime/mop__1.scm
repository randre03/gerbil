(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx7570_)
    (let* ((_g75747600_
            (lambda (_g75757596_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g75757596_)))
           (_g75737684_
            (lambda (_g75757604_)
              (if (gx#stx-pair? _g75757604_)
                  (let ((_e75827607_ (gx#syntax-e _g75757604_)))
                    (let ((_hd75817611_
                           (let () (declare (not safe)) (##car _e75827607_)))
                          (_tl75807614_
                           (let () (declare (not safe)) (##cdr _e75827607_))))
                      (if (gx#stx-pair? _tl75807614_)
                          (let ((_e75857617_ (gx#syntax-e _tl75807614_)))
                            (let ((_hd75847621_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e75857617_)))
                                  (_tl75837624_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e75857617_))))
                              (if (gx#stx-pair? _tl75837624_)
                                  (let ((_e75887627_
                                         (gx#syntax-e _tl75837624_)))
                                    (let ((_hd75877631_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e75887627_)))
                                          (_tl75867634_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e75887627_))))
                                      (if (gx#stx-pair? _tl75867634_)
                                          (let ((_e75917637_
                                                 (gx#syntax-e _tl75867634_)))
                                            (let ((_hd75907641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e75917637_)))
                                                  (_tl75897644_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e75917637_))))
                                              (if (gx#stx-pair? _tl75897644_)
                                                  (let ((_e75947647_
                                                         (gx#syntax-e
                                                          _tl75897644_)))
                                                    (let ((_hd75937651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e75947647_)))
                                                          (_tl75927654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e75947647_))))
                                                      (if (gx#stx-null?
                                                           _tl75927654_)
                                                          ((lambda (_L7657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7659_
                            _L7660_
                            _L7661_)
                     (let ((__tmp9050 (gx#datum->syntax '#f 'if))
                           (__tmp9004
                            (let ((__tmp9047
                                   (let ((__tmp9049
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp9048
                                          (let ()
                                            (declare (not safe))
                                            (cons _L7661_ '()))))
                                     (declare (not safe))
                                     (cons __tmp9049 __tmp9048)))
                                  (__tmp9005
                                   (let ((__tmp9010
                                          (let ((__tmp9046
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp9011
                                                 (let ((__tmp9040
                                                        (let ((__tmp9045
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp9041
                                                               (let ((__tmp9042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp9044
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp9043
                                     (let ()
                                       (declare (not safe))
                                       (cons _L7661_ '()))))
                                (declare (not safe))
                                (cons __tmp9044 __tmp9043))))
                         (declare (not safe))
                         (cons __tmp9042 '()))))
                  (declare (not safe))
                  (cons __tmp9045 __tmp9041)))
               (__tmp9012
                (let ((__tmp9013
                       (let ((__tmp9039 (gx#datum->syntax '#f 'cond))
                             (__tmp9014
                              (let ((__tmp9022
                                     (let ((__tmp9026
                                            (let ((__tmp9038
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp9027
                                                   (let ((__tmp9034
                                                          (let ((__tmp9037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp9035
                         (let ((__tmp9036 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp9036 '()))))
                    (declare (not safe))
                    (cons __tmp9037 __tmp9035)))
                 (__tmp9028
                  (let ((__tmp9029
                         (let ((__tmp9033
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp9030
                                (let ((__tmp9032 (gx#datum->syntax '#f 'klass))
                                      (__tmp9031
                                       (let ()
                                         (declare (not safe))
                                         (cons _L7660_ '()))))
                                  (declare (not safe))
                                  (cons __tmp9032 __tmp9031))))
                           (declare (not safe))
                           (cons __tmp9033 __tmp9030))))
                    (declare (not safe))
                    (cons __tmp9029 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp9034
                                                           __tmp9028))))
                                              (declare (not safe))
                                              (cons __tmp9038 __tmp9027)))
                                           (__tmp9023
                                            (let ((__tmp9025
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp9024
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L7659_ '()))))
                                              (declare (not safe))
                                              (cons __tmp9025 __tmp9024))))
                                       (declare (not safe))
                                       (cons __tmp9026 __tmp9023)))
                                    (__tmp9015
                                     (let ((__tmp9016
                                            (let ((__tmp9021
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp9017
                                                   (let ((__tmp9018
                                                          (let ((__tmp9019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp9020
                                (let ()
                                  (declare (not safe))
                                  (cons _L7660_ '()))))
                           (declare (not safe))
                           (cons _L7661_ __tmp9020))))
                    (declare (not safe))
                    (cons _L7657_ __tmp9019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp9018 '()))))
                                              (declare (not safe))
                                              (cons __tmp9021 __tmp9017))))
                                       (declare (not safe))
                                       (cons __tmp9016 '()))))
                                (declare (not safe))
                                (cons __tmp9022 __tmp9015))))
                         (declare (not safe))
                         (cons __tmp9039 __tmp9014))))
                  (declare (not safe))
                  (cons __tmp9013 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp9040
                                                         __tmp9012))))
                                            (declare (not safe))
                                            (cons __tmp9046 __tmp9011)))
                                         (__tmp9006
                                          (let ((__tmp9007
                                                 (let ((__tmp9008
                                                        (let ((__tmp9009
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L7660_ '()))))
                  (declare (not safe))
                  (cons _L7661_ __tmp9009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L7657_ __tmp9008))))
                                            (declare (not safe))
                                            (cons __tmp9007 '()))))
                                     (declare (not safe))
                                     (cons __tmp9010 __tmp9006))))
                              (declare (not safe))
                              (cons __tmp9047 __tmp9005))))
                       (declare (not safe))
                       (cons __tmp9050 __tmp9004)))
                   _hd75937651_
                   _hd75907641_
                   _hd75877631_
                   _hd75847621_)
                  (_g75747600_ _g75757604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75747600_ _g75757604_))))
                                          (_g75747600_ _g75757604_))))
                                  (_g75747600_ _g75757604_))))
                          (_g75747600_ _g75757604_))))
                  (_g75747600_ _g75757604_)))))
      (_g75737684_ _$stx7570_))))
