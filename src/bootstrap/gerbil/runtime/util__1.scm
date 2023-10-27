(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defassget|
    (lambda (_$stx4251_)
      (let* ((_g42554273_
              (lambda (_g42564269_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42564269_)))
             (_g42544329_
              (lambda (_g42564277_)
                (if (gx#stx-pair? _g42564277_)
                    (let ((_e42614280_ (gx#syntax-e _g42564277_)))
                      (let ((_hd42604284_
                             (let () (declare (not safe)) (##car _e42614280_)))
                            (_tl42594287_
                             (let ()
                               (declare (not safe))
                               (##cdr _e42614280_))))
                        (if (gx#stx-pair? _tl42594287_)
                            (let ((_e42644290_ (gx#syntax-e _tl42594287_)))
                              (let ((_hd42634294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e42644290_)))
                                    (_tl42624297_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e42644290_))))
                                (if (gx#stx-pair? _tl42624297_)
                                    (let ((_e42674300_
                                           (gx#syntax-e _tl42624297_)))
                                      (let ((_hd42664304_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e42674300_)))
                                            (_tl42654307_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e42674300_))))
                                        (if (gx#stx-null? _tl42654307_)
                                            ((lambda (_L4310_ _L4312_)
                                               (let ((__tmp8928
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8880
                                                      (let ((__tmp8919
                                                             (let ((__tmp8920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8927 (gx#datum->syntax '#f 'key))
                                  (__tmp8921
                                   (let ((__tmp8926
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8922
                                          (let ((__tmp8923
                                                 (let ((__tmp8925
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8924
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8925
                                                         __tmp8924))))
                                            (declare (not safe))
                                            (cons __tmp8923 '()))))
                                     (declare (not safe))
                                     (cons __tmp8926 __tmp8922))))
                              (declare (not safe))
                              (cons __tmp8927 __tmp8921))))
                       (declare (not safe))
                       (cons _L4312_ __tmp8920)))
                    (__tmp8881
                     (let ((__tmp8882
                            (let ((__tmp8918 (gx#datum->syntax '#f 'cond))
                                  (__tmp8883
                                   (let ((__tmp8900
                                          (let ((__tmp8905
                                                 (let ((__tmp8917
                                                        (gx#datum->syntax
                                                         '#f
                                                         'and))
                                                       (__tmp8906
                                                        (let ((__tmp8913
                                                               (let ((__tmp8916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'pair?))
                             (__tmp8914
                              (let ((__tmp8915 (gx#datum->syntax '#f 'lst)))
                                (declare (not safe))
                                (cons __tmp8915 '()))))
                         (declare (not safe))
                         (cons __tmp8916 __tmp8914)))
                      (__tmp8907
                       (let ((__tmp8908
                              (let ((__tmp8909
                                     (let ((__tmp8912
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp8910
                                            (let ((__tmp8911
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lst)))
                                              (declare (not safe))
                                              (cons __tmp8911 '()))))
                                       (declare (not safe))
                                       (cons __tmp8912 __tmp8910))))
                                (declare (not safe))
                                (cons _L4310_ __tmp8909))))
                         (declare (not safe))
                         (cons __tmp8908 '()))))
                  (declare (not safe))
                  (cons __tmp8913 __tmp8907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8917 __tmp8906)))
                                                (__tmp8901
                                                 (let ((__tmp8904
                                                        (gx#datum->syntax
                                                         '#f
                                                         '=>))
                                                       (__tmp8902
                                                        (let ((__tmp8903
                                                               (gx#datum->syntax
                                                                '#f
                                                                'cdr)))
                                                          (declare (not safe))
                                                          (cons __tmp8903
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8904
                                                         __tmp8902))))
                                            (declare (not safe))
                                            (cons __tmp8905 __tmp8901)))
                                         (__tmp8884
                                          (let ((__tmp8890
                                                 (let ((__tmp8896
                                                        (let ((__tmp8899
                                                               (gx#datum->syntax
                                                                '#f
                                                                'procedure?))
                                                              (__tmp8897
                                                               (let ((__tmp8898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8898 '()))))
                  (declare (not safe))
                  (cons __tmp8899 __tmp8897)))
               (__tmp8891
                (let ((__tmp8892
                       (let ((__tmp8895 (gx#datum->syntax '#f 'default))
                             (__tmp8893
                              (let ((__tmp8894 (gx#datum->syntax '#f 'key)))
                                (declare (not safe))
                                (cons __tmp8894 '()))))
                         (declare (not safe))
                         (cons __tmp8895 __tmp8893))))
                  (declare (not safe))
                  (cons __tmp8892 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8896 __tmp8891)))
                                                (__tmp8885
                                                 (let ((__tmp8886
                                                        (let ((__tmp8889
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp8887
                                                               (let ((__tmp8888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8888 '()))))
                  (declare (not safe))
                  (cons __tmp8889 __tmp8887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8886 '()))))
                                            (declare (not safe))
                                            (cons __tmp8890 __tmp8885))))
                                     (declare (not safe))
                                     (cons __tmp8900 __tmp8884))))
                              (declare (not safe))
                              (cons __tmp8918 __tmp8883))))
                       (declare (not safe))
                       (cons __tmp8882 '()))))
                (declare (not safe))
                (cons __tmp8919 __tmp8881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8928 __tmp8880)))
                                             _hd42664304_
                                             _hd42634294_)
                                            (_g42554273_ _g42564277_))))
                                    (_g42554273_ _g42564277_))))
                            (_g42554273_ _g42564277_))))
                    (_g42554273_ _g42564277_)))))
        (_g42544329_ _$stx4251_))))
  (define |[:0:]#defpget|
    (lambda (_$stx4333_)
      (let* ((_g43374355_
              (lambda (_g43384351_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43384351_)))
             (_g43364410_
              (lambda (_g43384359_)
                (if (gx#stx-pair? _g43384359_)
                    (let ((_e43434362_ (gx#syntax-e _g43384359_)))
                      (let ((_hd43424366_
                             (let () (declare (not safe)) (##car _e43434362_)))
                            (_tl43414369_
                             (let ()
                               (declare (not safe))
                               (##cdr _e43434362_))))
                        (if (gx#stx-pair? _tl43414369_)
                            (let ((_e43464372_ (gx#syntax-e _tl43414369_)))
                              (let ((_hd43454376_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e43464372_)))
                                    (_tl43444379_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e43464372_))))
                                (if (gx#stx-pair? _tl43444379_)
                                    (let ((_e43494382_
                                           (gx#syntax-e _tl43444379_)))
                                      (let ((_hd43484386_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e43494382_)))
                                            (_tl43474389_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e43494382_))))
                                        (if (gx#stx-null? _tl43474389_)
                                            ((lambda (_L4392_ _L4394_)
                                               (let ((__tmp8998
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8929
                                                      (let ((__tmp8989
                                                             (let ((__tmp8990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8997 (gx#datum->syntax '#f 'key))
                                  (__tmp8991
                                   (let ((__tmp8996
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8992
                                          (let ((__tmp8993
                                                 (let ((__tmp8995
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8994
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8995
                                                         __tmp8994))))
                                            (declare (not safe))
                                            (cons __tmp8993 '()))))
                                     (declare (not safe))
                                     (cons __tmp8996 __tmp8992))))
                              (declare (not safe))
                              (cons __tmp8997 __tmp8991))))
                       (declare (not safe))
                       (cons _L4394_ __tmp8990)))
                    (__tmp8930
                     (let ((__tmp8931
                            (let ((__tmp8988 (gx#datum->syntax '#f 'let))
                                  (__tmp8932
                                   (let ((__tmp8987 (gx#datum->syntax '#f 'lp))
                                         (__tmp8933
                                          (let ((__tmp8982
                                                 (let ((__tmp8983
                                                        (let ((__tmp8986
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8984
                                                               (let ((__tmp8985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8985 '()))))
                  (declare (not safe))
                  (cons __tmp8986 __tmp8984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8983 '())))
                                                (__tmp8934
                                                 (let ((__tmp8935
                                                        (let ((__tmp8981
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8936
                                                               (let ((__tmp8980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8937
                              (let ((__tmp8956
                                     (let ((__tmp8973
                                            (let ((__tmp8979
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8974
                                                   (let ((__tmp8978
                                                          (gx#datum->syntax
                                                           '#f
                                                           'k))
                                                         (__tmp8975
                                                          (let ((__tmp8977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'v))
                        (__tmp8976 (gx#datum->syntax '#f 'rest)))
                    (declare (not safe))
                    (cons __tmp8977 __tmp8976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8978
                                                           __tmp8975))))
                                              (declare (not safe))
                                              (cons __tmp8979 __tmp8974)))
                                           (__tmp8957
                                            (let ((__tmp8958
                                                   (let ((__tmp8972
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8959
                                                          (let ((__tmp8967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8968
                                (let ((__tmp8971 (gx#datum->syntax '#f 'k))
                                      (__tmp8969
                                       (let ((__tmp8970
                                              (gx#datum->syntax '#f 'key)))
                                         (declare (not safe))
                                         (cons __tmp8970 '()))))
                                  (declare (not safe))
                                  (cons __tmp8971 __tmp8969))))
                           (declare (not safe))
                           (cons _L4392_ __tmp8968)))
                        (__tmp8960
                         (let ((__tmp8966 (gx#datum->syntax '#f 'v))
                               (__tmp8961
                                (let ((__tmp8962
                                       (let ((__tmp8965
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8963
                                              (let ((__tmp8964
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest)))
                                                (declare (not safe))
                                                (cons __tmp8964 '()))))
                                         (declare (not safe))
                                         (cons __tmp8965 __tmp8963))))
                                  (declare (not safe))
                                  (cons __tmp8962 '()))))
                           (declare (not safe))
                           (cons __tmp8966 __tmp8961))))
                    (declare (not safe))
                    (cons __tmp8967 __tmp8960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8972
                                                           __tmp8959))))
                                              (declare (not safe))
                                              (cons __tmp8958 '()))))
                                       (declare (not safe))
                                       (cons __tmp8973 __tmp8957)))
                                    (__tmp8938
                                     (let ((__tmp8939
                                            (let ((__tmp8955
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8940
                                                   (let ((__tmp8941
                                                          (let ((__tmp8954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'if))
                        (__tmp8942
                         (let ((__tmp8950
                                (let ((__tmp8953
                                       (gx#datum->syntax '#f 'procedure?))
                                      (__tmp8951
                                       (let ((__tmp8952
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8952 '()))))
                                  (declare (not safe))
                                  (cons __tmp8953 __tmp8951)))
                               (__tmp8943
                                (let ((__tmp8946
                                       (let ((__tmp8949
                                              (gx#datum->syntax '#f 'default))
                                             (__tmp8947
                                              (let ((__tmp8948
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key)))
                                                (declare (not safe))
                                                (cons __tmp8948 '()))))
                                         (declare (not safe))
                                         (cons __tmp8949 __tmp8947)))
                                      (__tmp8944
                                       (let ((__tmp8945
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8945 '()))))
                                  (declare (not safe))
                                  (cons __tmp8946 __tmp8944))))
                           (declare (not safe))
                           (cons __tmp8950 __tmp8943))))
                    (declare (not safe))
                    (cons __tmp8954 __tmp8942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8941 '()))))
                                              (declare (not safe))
                                              (cons __tmp8955 __tmp8940))))
                                       (declare (not safe))
                                       (cons __tmp8939 '()))))
                                (declare (not safe))
                                (cons __tmp8956 __tmp8938))))
                         (declare (not safe))
                         (cons __tmp8980 __tmp8937))))
                  (declare (not safe))
                  (cons __tmp8981 __tmp8936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8935 '()))))
                                            (declare (not safe))
                                            (cons __tmp8982 __tmp8934))))
                                     (declare (not safe))
                                     (cons __tmp8987 __tmp8933))))
                              (declare (not safe))
                              (cons __tmp8988 __tmp8932))))
                       (declare (not safe))
                       (cons __tmp8931 '()))))
                (declare (not safe))
                (cons __tmp8989 __tmp8930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8998 __tmp8929)))
                                             _hd43484386_
                                             _hd43454376_)
                                            (_g43374355_ _g43384359_))))
                                    (_g43374355_ _g43384359_))))
                            (_g43374355_ _g43384359_))))
                    (_g43374355_ _g43384359_)))))
        (_g43364410_ _$stx4333_))))
  (define |[:0:]#defremove1|
    (lambda (_$stx4414_)
      (let* ((_g44184436_
              (lambda (_g44194432_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44194432_)))
             (_g44174491_
              (lambda (_g44194440_)
                (if (gx#stx-pair? _g44194440_)
                    (let ((_e44244443_ (gx#syntax-e _g44194440_)))
                      (let ((_hd44234447_
                             (let () (declare (not safe)) (##car _e44244443_)))
                            (_tl44224450_
                             (let ()
                               (declare (not safe))
                               (##cdr _e44244443_))))
                        (if (gx#stx-pair? _tl44224450_)
                            (let ((_e44274453_ (gx#syntax-e _tl44224450_)))
                              (let ((_hd44264457_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e44274453_)))
                                    (_tl44254460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e44274453_))))
                                (if (gx#stx-pair? _tl44254460_)
                                    (let ((_e44304463_
                                           (gx#syntax-e _tl44254460_)))
                                      (let ((_hd44294467_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e44304463_)))
                                            (_tl44284470_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e44304463_))))
                                        (if (gx#stx-null? _tl44284470_)
                                            ((lambda (_L4473_ _L4475_)
                                               (let ((__tmp9069
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8999
                                                      (let ((__tmp9064
                                                             (let ((__tmp9065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp9068 (gx#datum->syntax '#f 'el))
                                  (__tmp9066
                                   (let ((__tmp9067
                                          (gx#datum->syntax '#f 'lst)))
                                     (declare (not safe))
                                     (cons __tmp9067 '()))))
                              (declare (not safe))
                              (cons __tmp9068 __tmp9066))))
                       (declare (not safe))
                       (cons _L4475_ __tmp9065)))
                    (__tmp9000
                     (let ((__tmp9001
                            (let ((__tmp9063 (gx#datum->syntax '#f 'let))
                                  (__tmp9002
                                   (let ((__tmp9062 (gx#datum->syntax '#f 'lp))
                                         (__tmp9003
                                          (let ((__tmp9051
                                                 (let ((__tmp9058
                                                        (let ((__tmp9061
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp9059
                                                               (let ((__tmp9060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp9060 '()))))
                  (declare (not safe))
                  (cons __tmp9061 __tmp9059)))
               (__tmp9052
                (let ((__tmp9053
                       (let ((__tmp9057 (gx#datum->syntax '#f 'r))
                             (__tmp9054
                              (let ((__tmp9055
                                     (let ((__tmp9056
                                            (gx#datum->syntax '#f '@list)))
                                       (declare (not safe))
                                       (cons __tmp9056 '()))))
                                (declare (not safe))
                                (cons __tmp9055 '()))))
                         (declare (not safe))
                         (cons __tmp9057 __tmp9054))))
                  (declare (not safe))
                  (cons __tmp9053 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp9058 __tmp9052)))
                                                (__tmp9004
                                                 (let ((__tmp9005
                                                        (let ((__tmp9050
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp9006
                                                               (let ((__tmp9049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp9007
                              (let ((__tmp9013
                                     (let ((__tmp9044
                                            (let ((__tmp9048
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp9045
                                                   (let ((__tmp9047
                                                          (gx#datum->syntax
                                                           '#f
                                                           'hd))
                                                         (__tmp9046
                                                          (gx#datum->syntax
                                                           '#f
                                                           'rest)))
                                                     (declare (not safe))
                                                     (cons __tmp9047
                                                           __tmp9046))))
                                              (declare (not safe))
                                              (cons __tmp9048 __tmp9045)))
                                           (__tmp9014
                                            (let ((__tmp9015
                                                   (let ((__tmp9043
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp9016
                                                          (let ((__tmp9038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp9039
                                (let ((__tmp9042 (gx#datum->syntax '#f 'el))
                                      (__tmp9040
                                       (let ((__tmp9041
                                              (gx#datum->syntax '#f 'hd)))
                                         (declare (not safe))
                                         (cons __tmp9041 '()))))
                                  (declare (not safe))
                                  (cons __tmp9042 __tmp9040))))
                           (declare (not safe))
                           (cons _L4473_ __tmp9039)))
                        (__tmp9017
                         (let ((__tmp9030
                                (let ((__tmp9037
                                       (gx#datum->syntax '#f 'foldl1))
                                      (__tmp9031
                                       (let ((__tmp9036
                                              (gx#datum->syntax '#f 'cons))
                                             (__tmp9032
                                              (let ((__tmp9035
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp9033
                                                     (let ((__tmp9034
                                                            (gx#datum->syntax
                                                             '#f
                                                             'r)))
                                                       (declare (not safe))
                                                       (cons __tmp9034 '()))))
                                                (declare (not safe))
                                                (cons __tmp9035 __tmp9033))))
                                         (declare (not safe))
                                         (cons __tmp9036 __tmp9032))))
                                  (declare (not safe))
                                  (cons __tmp9037 __tmp9031)))
                               (__tmp9018
                                (let ((__tmp9019
                                       (let ((__tmp9029
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp9020
                                              (let ((__tmp9028
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp9021
                                                     (let ((__tmp9022
                                                            (let ((__tmp9027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'cons))
                          (__tmp9023
                           (let ((__tmp9026 (gx#datum->syntax '#f 'hd))
                                 (__tmp9024
                                  (let ((__tmp9025 (gx#datum->syntax '#f 'r)))
                                    (declare (not safe))
                                    (cons __tmp9025 '()))))
                             (declare (not safe))
                             (cons __tmp9026 __tmp9024))))
                      (declare (not safe))
                      (cons __tmp9027 __tmp9023))))
               (declare (not safe))
               (cons __tmp9022 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp9028 __tmp9021))))
                                         (declare (not safe))
                                         (cons __tmp9029 __tmp9020))))
                                  (declare (not safe))
                                  (cons __tmp9019 '()))))
                           (declare (not safe))
                           (cons __tmp9030 __tmp9018))))
                    (declare (not safe))
                    (cons __tmp9038 __tmp9017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp9043
                                                           __tmp9016))))
                                              (declare (not safe))
                                              (cons __tmp9015 '()))))
                                       (declare (not safe))
                                       (cons __tmp9044 __tmp9014)))
                                    (__tmp9008
                                     (let ((__tmp9009
                                            (let ((__tmp9012
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp9010
                                                   (let ((__tmp9011
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lst)))
                                                     (declare (not safe))
                                                     (cons __tmp9011 '()))))
                                              (declare (not safe))
                                              (cons __tmp9012 __tmp9010))))
                                       (declare (not safe))
                                       (cons __tmp9009 '()))))
                                (declare (not safe))
                                (cons __tmp9013 __tmp9008))))
                         (declare (not safe))
                         (cons __tmp9049 __tmp9007))))
                  (declare (not safe))
                  (cons __tmp9050 __tmp9006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp9005 '()))))
                                            (declare (not safe))
                                            (cons __tmp9051 __tmp9004))))
                                     (declare (not safe))
                                     (cons __tmp9062 __tmp9003))))
                              (declare (not safe))
                              (cons __tmp9063 __tmp9002))))
                       (declare (not safe))
                       (cons __tmp9001 '()))))
                (declare (not safe))
                (cons __tmp9064 __tmp9000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp9069 __tmp8999)))
                                             _hd44294467_
                                             _hd44264457_)
                                            (_g44184436_ _g44194440_))))
                                    (_g44184436_ _g44194440_))))
                            (_g44184436_ _g44194440_))))
                    (_g44184436_ _g44194440_)))))
        (_g44174491_ _$stx4414_)))))
