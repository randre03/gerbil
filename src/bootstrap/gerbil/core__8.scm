(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
    (make-class-type
     'gerbil.core#macro-object::t
     '()
     '(macro)
     'macro-object
     '()
     '#f))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object?|
    (make-class-predicate |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#make-macro-object|
    (lambda _$args22825_
      (apply make-class-instance
             |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
             _$args22825_)))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object-macro|
    (make-class-slot-accessor
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object-macro-set!|
    (make-class-slot-mutator
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#&macro-object-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#&macro-object-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
    (lambda (_self22821_ _stx22823_)
      (gx#core-apply-expander
       (let () (declare (not safe)) (unchecked-slot-ref _self22821_ 'macro))
       _stx22823_)))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander::specialize|
    (lambda (__t37083)
      (let ((__macro37084
             (let ((__tmp37085 (class-slot-offset __t37083 'macro)))
               (if __tmp37085
                   (let () (declare (not safe)) (##fx+ __tmp37085 '1))
                   (error '"Unknown slot" 'macro)))))
        (lambda (_self22821_ _stx22823_)
          (gx#core-apply-expander
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _self22821_ __macro37084 __t37083 '#f))
           _stx22823_)))))
  (bind-specializer!
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander::specialize|)
  (bind-method!
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
   'apply-macro-expander
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
   '#f))
