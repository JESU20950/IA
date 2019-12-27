(define (domain book)
   (:requirements :adl :typing :fluents)
   (:types book month - object
           pages
    )
   
   (:functions
    (page_count ?month)
    )
   
   (:predicates 
      (next ?book - object ?book2 - object)
      (next_consecutive_or_equal ?month -month ?month2 - month)
      (assigned ?book - object)
      (not_assigned ?book - object)
      (book_month ?book - book ?month - month)
      (parallel ?book1 - book ?book2 - book)
      ;(book_pages ?book - book ?pages - pages)
    )

    (:action asignar_libro
        :parameters (?book1 - book ?month1 - month)
        :precondition 
        
        
        (and  
        ;se cumple la restriccion de precondicion
        (not_assigned ?book1) (forall (?book2 - book) (or (not (next ?book2 ?book1))  (assigned ?book2)))  
        (forall (?book2 - book) (or (not (next ?book2 ?book1)) (not (assigned ?book2)) (exists (?month2 - month) (and (book_month ?book2 ?month2) (next ?month2 ?month1)))      ))
        
        ;se cumple la restriccion de paralelo
        (forall (?book2 - book) (or (not (parallel ?book2 ?book1)) (not (assigned ?book2)) (exists (?month2 - month) (and (book_month ?book2 ?month2) (next_consecutive_or_equal ?month2 ?month1)))      ))
        
        
        )
        :effect (and (assigned ?book1)  (not (not_assigned ?book1))  (book_month ?book1 ?month1))
     )

)


