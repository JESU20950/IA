(define (domain book)
   (:requirements :adl :typing :fluents)
   (:types book month - object
           
    )
   
   (:functions
    (page_count ?month - month)
    (number_pages ?book - book)
    )
   
   (:predicates 
      (next_catalogo ?book1 - book ?book2 - book)
      (parallel_catalogo ?book1 - book ?book2 - book)
      (wanna_read ?book - book)
      
      (next ?book - object ?book2 - object)
      (next_or_equal ?month1 -month ?month2 -month)
      (parallel ?book - book ?book - book)
      (assigned ?book - book)
      (not_assigned ?book - book)
      (book_month ?book - book ?month - month)
    )
    
     (:action obtener_libro_predecesor
        :parameters (?book2 - book)
        :precondition (exists (?book1 - book)  (and (next ?book2 ?book1) (wanna_read ?book1))) 
        :effect (wanna_read ?book2)
    )
    (:action obtener_libro_parallel
        :parameters (?book2 - book)
        :precondition (exists (?book1 - book)  (and (parallel ?book2 ?book1) (wanna_read ?book1))) 
        :effect (wanna_read ?book2)
    )
    
    
    (:action asignar_libro_mes
        :parameters (?book1 - book ?month1 - month)
        :precondition (and  
        (wanna_read ?book1)
        
        (forall (?book2 -book) (or (not (parallel ?book2 ?book1)) (wanna_read ?book2)))
        
        (forall (?book2 - book) (or (not (next ?book2 ?book1))  (exists (?month2 - month) (and (book_month ?book2 ?month2) (next ?month2 ?month1)))      ))
        
        (forall (?book2 - book) (forall (?month2 - month) (or (not (parallel ?book2 ?book1)) (not (book_month ?book2 ?month2)) (next_or_equal ?month2 ?month1))))
        
        
        
        
        
       
        (<= (+ (page_count ?month1) (number_pages ?book1)) 800) 
        
        )
        :effect (and (assigned ?book1)  (book_month ?book1 ?month1)  (increase (page_count ?month1) (number_pages ?book1)) )  
		 
     )

)


