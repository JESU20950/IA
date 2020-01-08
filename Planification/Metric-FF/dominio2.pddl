(define (domain book)
   (:requirements :adl :typing :fluents)
   (:types book month - object
           pages
    )
   
   (:functions
    (page_count ?month - month)
    (number_pages ?book - book)
    )
   
   (:predicates 
      (next ?book - object ?book2 - object)
      (next_or_equal ?month1 -month ?month2 -month)
      (parallel ?book - book ?book - book)
      (assigned ?book - book)
      (not_assigned ?book - book)
      (book_month ?book - book ?month - month)
    )
    
    

    
    
    (:action asignar_libro
        :parameters (?book1 - book ?month1 - month)
        :precondition (and  
        (not_assigned ?book1) (forall (?book2 - book) (or (not (next ?book2 ?book1))  (assigned ?book2))) 
        
        
        (forall (?book2 - book) (or (not (next ?book2 ?book1)) (not (assigned ?book2)) (exists (?month2 - month) (and (book_month ?book2 ?month2) (next ?month2 ?month1)))      ))
        
        (forall (?book2 - book) (or (not (parallel ?book2 ?book1)) (not (assigned ?book2)) (exists (?month2 - month) (and (book_month ?book2 ?month2) (next_or_equal ?month2 ?month1)))      ))
        
       
        (<= (+ (page_count ?month1) (number_pages ?book1)) 800) 
        
        )
        :effect (and (assigned ?book1)  (not (not_assigned ?book1)) (book_month ?book1 ?month1)  (increase (page_count ?month1) (number_pages ?book1)) )  
        
		 
     )

)


