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
      (next_catalogo ?book - book)
      (parallel_catalogo ?book -book)
      (wanna_read ?book - book)
      
      (next ?book - object ?book2 - object)
      (next_or_equal ?month1 -month ?month2 -month)
      (parallel ?book - book ?book - book)
      (assigned ?book - book)
      (not_assigned ?book - book)
      (book_month ?book - book ?month - month)
    )
    
    
    (:action buscar_parallel_i_next
        :parameters (?book1 - book)
        :precondition (and (wanna_read ?book1) (or (next_catalogo ?book2 ?book1 ) (parallel_catalogo ?book2 ?book1)) )
        :effect 
        (next ?book2 ?book2)
        
    )
    (:action buscar_parallel_i_next2 
         :parameters (?book1 - book)
         :precondition (and (forall (?book2 - book) (or (not (next_catalogo ?book2 ?book1))    (next ?book2 ?book1) (wanna_read ?book2))) 
                        (forall (?book2 - book) (or (not (parallel_catalogo ?book2 ?book1))    (parallel ?book2 ?book1) (wanna_read ?book2))))
         :effect 
             (not_assigned ?book1)
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


