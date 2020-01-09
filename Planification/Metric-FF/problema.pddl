(define (problem book-problem)
  (:domain book)
  (:objects HarryPotter1 HarryPotter2 HarryPotter3 Pokemon1 - book)
  (:init (next HarryPotter1 HarryPotter2)
         (next HarryPotter2 HarryPotter3)
         (next Pokemon1 HarryPotter2)
         
         ;(catalogo HarryPotter1)
         (catalogo HarryPotter2)
         ;(catalogo HarryPotter3)
         (catalogo Pokemon1)
         
         (not_assigned HarryPotter1)
         (not_assigned HarryPotter2)
         (not_assigned HarryPotter3)
         (not_assigned Pokemon1)

         

  )
  (:goal (forall (?book - book) (or (assigned ?book) (not (catalogo ?book)))))
)
