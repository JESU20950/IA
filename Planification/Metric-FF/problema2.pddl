(define (problem book-problem)
  (:domain book)
  (:objects HarryPotter1 HarryPotter2 HarryPotter3 Pokemon1 - book
            Month1 Month2 Month3 Month4 - month)
  (:init (next HarryPotter1 HarryPotter2)
         (next HarryPotter2 HarryPotter3)
         (next Pokemon1 HarryPotter2)
         
         (not_assigned HarryPotter1)
         (not_assigned HarryPotter2)
         (not_assigned HarryPotter3)
         (not_assigned Pokemon1)
         (= (page_count) 0)
         
         
         (not_assigned Month1)
         (not_assigned Month2)
         (not_assigned Month3)
         (not_assigned Month4)
         
         (next Month1 Month2)
         (next Month2 Month3)
         (next Month3 Month4)
         
         
         (book_pages HarryPotter1 10)
         (book_pages HarryPotter2 10)
         (book_pages HarryPotter3 10) 
         (book_pages Pokemon1   10)
         

  )
  (:goal (forall (?book - book) (assigned ?book)))
)
