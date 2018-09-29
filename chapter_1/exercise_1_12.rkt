# lang scheme

#| Exercise 1.12: The following pattern of numbers is called Pascal’s triangle.

         1
       1   1
     1   2   1
   1   3   3   1
 1   4   6   4   1
       . . .

The numbers at the edge of the triangle are all 1, and each number inside the
triangle is the sum of the two numbers above it. Write a procedure that
computes elements of Pascal’s triangle by means of a recursive process.

|#

(define (binom n k)
  (if (or (= k 0) (= k n))
      1
      (+ (binom (- n 1) (- k 1)) (binom (- n 1) k))))

(binom 1 1) ;1
(binom 2 1) ;2
(binom 3 2) ;3
(binom 4 3) ;4
(binom 5 4) ;5
