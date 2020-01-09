(define (domain book)
   (:requirements :adl :typing)
   (:types book 
    )
   (:predicates 
      (next ?book - book ?book2 - book)
      (assigned ?book - book)
      (not_assigned ?book - book)
      (catalogo ?book - book)
    )

    (:action asignar_libro_predecesor
        :parameters (?book2 - book)
        :precondition (exists (?book1 - book)  (and (next ?book2 ?book1) (catalogo ?book1))) 
        :effect (catalogo ?book2)
    )
        
    (:action asignar_libro
        :parameters (?book1 - book) 
        :precondition (and  (not_assigned ?book1 ) (catalogo ?book1) (forall (?book2 - book) (or (not (next ?book2 ?book1))  (assigned ?book2)))  )
        :effect (and (assigned ?book1)  (not (not_assigned ?book1)))
     )

)


