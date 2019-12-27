(define (problem book-problem)
  (:domain book)
  (:objects b1  b2  b3 b4 - book
            Month3 Month4 Month2 Month1 - month)
  (:init ;(next b1 b2)
         ;(next b1 b3)
         ;(next b2 b4)
         ;(next b3 b4)
         
         (parallel b2 b3)
         (parallel b2 b4)
         (parallel b3 b2)
         (parallel b4 b2)
         
         (next b1 b2)
         (next b1 b3)
         (next b1 b4)
         
         (not_assigned b1)
         (not_assigned b2)
         (not_assigned b3)
         (not_assigned b4)
         ;(= (page_count) 0)
         
         
         ;(not_assigned Month1)
         ;(not_assigned Month2)
         ;(not_assigned Month3)
         ;(not_assigned Month4)
         
         (next Month1 Month2)
         (next Month1 Month3)
         (next Month1 Month4)
         (next Month2 Month3)
         (next Month2 Month4)
         (next Month3 Month4)
         
         (next_consecutive_or_equal Month1 Month2)
         (next_consecutive_or_equal Month2 Month3)
         (next_consecutive_or_equal Month3 Month4)
         (next_consecutive_or_equal Month1 Month1)
         (next_consecutive_or_equal Month2 Month2)
         (next_consecutive_or_equal Month3 Month3)
         (next_consecutive_or_equal Month4 Month4)
         
         ;(book_pages HarryPotter1 10)
         ;(book_pages HarryPotter2 10)
         ;(book_pages HarryPotter3 10) 
         ;(book_pages Pokemon1   10)
         

  )
  (:goal (forall (?book - book) (assigned ?book)))
)
