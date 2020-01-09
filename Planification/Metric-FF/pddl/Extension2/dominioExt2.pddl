(define (domain book)
    (:requirements :adl :typing)
    (:types book month - object)
    (:predicates
        (wanna_read ?x - book)
        (next ?x - object ?y - object)
        (parallel ?x - book ?y - book)
        (next_or_equal ?x -month ?y -month)
        (assigned ?x - book)
        (book_month ?x - book ?y - month)
    )
    
    (:action obtener_libro_parallel
        :parameters (?b1 - book)
        :precondition (exists (?b2 - book) (and (parallel ?b1 ?b2) (wanna_read ?b2))) 
        :effect (wanna_read ?b1)
    )
    
    (:action obtener_libro_predecesor
        :parameters (?b1 - book)
        :precondition (exists (?b2 - book) (and (next ?b1 ?b2) (wanna_read ?b2)))
        :effect (wanna_read ?b1)
    )
    
    (:action asignar_libro_mes
        :parameters (?b1 - book ?m1 - month)
        :precondition (and
            (wanna_read ?b1)
            (forall (?b2 - book) (or (not (next ?b2 ?b1)) (exists (?m2 - month) (and (book_month ?b2 ?m2) (next ?m2 ?m1)))))
            (forall (?b2 -book) (or (not (parallel ?b2 ?b1)) (wanna_read ?b2)))
            (forall (?b2 - book) (forall (?m2 - month) (or (not (parallel ?b2 ?b1)) (not (book_month ?b2 ?m2)) (next_or_equal ?m2 ?m1))))
        )
        :effect (and (assigned ?b1) (book_month ?b1 ?m1)) 
    )
)
