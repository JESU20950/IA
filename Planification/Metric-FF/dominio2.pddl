(define (domain book)
   (:requirements :adl :typing :fluents)
   (:types book month - object
           pages
    )
   
   (:functions
    (page_count)
    )
   
   (:predicates 
      (next ?book - object ?book2 - object)
      (assigned ?book - object)
      (not_assigned ?book - object)
      (book_pages ?book - book ?pages - pages)
    )

    (:action asignar_libro
        :parameters (?book1 - book ?month1 - month)
        :precondition (and  (not_assigned ?book1) (forall (?book2 - book) (or (not (next ?book2 ?book1))  (assigned ?book2)))  
        (not_assigned ?month1) (forall (?month2 - month) (or (not (next ?month2 ?month1))  (assigned ?month2))) 
        )
	:effect (and (assigned ?book1)  (not (not_assigned ?book1)) (assigned ?month1)  (not (not_assigned ?month1)) )
     )

)


