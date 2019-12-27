(define (problem book-problem)
  (:domain book)
  (:objects HarryPotter1 HarryPotter2 HarryPotter3 Pokemon1 - book
            Month1 Month2 Month3 Month4 Month5 Month6 Month7 Month8 Month9 Month10 Month11 Month12 - month)
  (:init (next HarryPotter1 HarryPotter2)
         
         
         
         (not_assigned HarryPotter1)
         (not_assigned HarryPotter2)
        
         
         ;(= (page_count) 0)
         
         
      


         (next Month1 Month2)
         
         
         
	

         
         ;(book_pages HarryPotter1 10)
         ;(book_pages HarryPotter2 10)
         ;(book_pages HarryPotter3 10) 
         ;(book_pages Pokemon1   10)
         

  )
  (:goal (forall (?book - book) (assigned ?book)))
)
