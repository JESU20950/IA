(define (problem book-problem)
    (:domain book)
    (:objects
        HarryPotter1 HarryPotter2 HarryPotter3 HarryPotter4 DComicsA DComicsB DComicsC - book
        Month1 Month2 Month3 Month4 Month5 Month6 Month7 Month8 Month9 Month10 Month11 Month12 - month
    )
    (:init
        
;;;;;;;;;;;;;;;;;;;;;;;;;Conjunto de libros a leer;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
        (wanna_read DComicsB)
        (wanna_read HarryPotter4)
        
;;;;;;;;;;;;;;;;;;;;;;;;;Relacion de los libros;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
        (next HarryPotter1 HarryPotter2)
        (next HarryPotter2 HarryPotter3)
        (next HarryPotter3 HarryPotter4)
        
        (parallel DComicsA DComicsB)
        (parallel DComicsB DComicsA)
        (parallel DComicsA DComicsC)
        (parallel DComicsC DComicsA)
        (parallel DComicsB DComicsC)
        (parallel DComicsC DComicsB)
        
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
        
;;;;;;;;;;;;;;;;;;;;;;;;;;Meses consecutivos;;;;;;;;;;;;;;;;;;;;;;;;;;

        (next_or_equal Month1 Month1)
        (next_or_equal Month1 Month2)
         
        (next_or_equal Month2 Month2)
        (next_or_equal Month2 Month3)
         
        (next_or_equal Month3 Month3)
        (next_or_equal Month3 Month4)
         
        (next_or_equal Month4 Month4)
        (next_or_equal Month4 Month5)
         
        (next_or_equal Month5 Month5)
        (next_or_equal Month5 Month6)
         
        (next_or_equal Month6 Month6)
        (next_or_equal Month6 Month7)
         
        (next_or_equal Month7 Month7)
        (next_or_equal Month7 Month8)
         
        (next_or_equal Month8 Month8)
        (next_or_equal Month8 Month9)
         
        (next_or_equal Month9 Month9)
        (next_or_equal Month9 Month10)
         
        (next_or_equal Month10 Month10)
        (next_or_equal Month10 Month11)
         
        (next_or_equal Month11 Month11)
        (next_or_equal Month11 Month12)
         
        (next_or_equal Month12 Month12)
        
    )
    (:goal (forall (?b - book) (or (not (wanna_read ?b)) (assigned ?b))))
)
