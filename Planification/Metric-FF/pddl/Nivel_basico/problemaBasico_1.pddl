(define (problem book-problem)
    (:domain book)
    (:objects
        HarryPotter1 HarryPotter2 GameOfThrones1 DeathNote1 DeathNote2 - book
        Month1 Month2 Month3 Month4 Month5 Month6 Month7 Month8 Month9 Month10 Month11 Month12 - month
    )
    (:init
        
;;;;;;;;;;;;;;;;;;;;;;;;;Conjunto de libros a leer;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
        (wanna_read DeathNote2)
        (wanna_read HarryPotter2)
        (wanna_read GameOfThrones1)
        
;;;;;;;;;;;;;;;;;;;;;;;;;Relacion de los libros;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
        (next HarryPotter1 HarryPotter2)
        (next DeathNote1 DeathNote2)
        
;;;;;;;;;;;;;;;;;;;;;;;;;Constantes para todo problema;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;Assignacion de los meses;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
        (next Month1 Month2)
        (next Month1 Month3)
        (next Month1 Month4)
        (next Month1 Month5)
        (next Month1 Month6)
        (next Month1 Month7)
        (next Month1 Month8)
        (next Month1 Month9)
        (next Month1 Month10)
        (next Month1 Month11)
        (next Month1 Month12)
         
        (next Month2 Month3)
        (next Month2 Month4)
        (next Month2 Month5)
        (next Month2 Month6)
        (next Month2 Month7)
        (next Month2 Month8)
        (next Month2 Month9)
        (next Month2 Month10)
        (next Month2 Month11)
        (next Month2 Month12)
         
        (next Month3 Month4)
        (next Month3 Month5)
        (next Month3 Month6)
        (next Month3 Month7)
        (next Month3 Month8)
        (next Month3 Month9)
        (next Month3 Month10)
        (next Month3 Month11)
        (next Month3 Month12)
         
        (next Month4 Month5)
        (next Month4 Month6)
        (next Month4 Month7)
        (next Month4 Month8)
        (next Month4 Month9)
        (next Month4 Month10)
        (next Month4 Month11)
        (next Month4 Month12)
         
        (next Month5 Month6)
        (next Month5 Month7)
        (next Month5 Month8)
        (next Month5 Month9)
        (next Month5 Month10)
        (next Month5 Month11)
        (next Month5 Month12)
         
        (next Month6 Month7)
        (next Month6 Month8)
        (next Month6 Month9)
        (next Month6 Month10)
        (next Month6 Month11)
        (next Month6 Month12)
         
        (next Month7 Month8)
        (next Month7 Month9)
        (next Month7 Month10)
        (next Month7 Month11)
        (next Month7 Month12)
         
        (next Month8 Month9)
        (next Month8 Month10)
        (next Month8 Month11)
        (next Month8 Month12)
         
        (next Month9 Month10)
        (next Month9 Month11)
        (next Month9 Month12)
         
        (next Month10 Month11)
        (next Month10 Month12)
         
        (next Month11 Month12)
    )
    (:goal (forall (?b - book) (or (not (wanna_read ?b)) (assigned ?b))))
)
