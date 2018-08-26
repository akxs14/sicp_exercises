#lang scheme

#| Exercise 1.3: Define a procedure that takes three
   numbers as arguments and returns the sum of the
   squares of the two larger numbers.
|#

(define (sum-two-biggest a b c)
  (define a-sqrt (* a a))
  (define b-sqrt (* b b))
  (define c-sqrt (* c c))
  (cond ((> (+ a-sqrt b-sqrt) (+ a-sqrt c-sqrt)) (+ a-sqrt b-sqrt))
        ((> (+ b-sqrt c-sqrt) (+ a-sqrt c-sqrt)) (+ b-sqrt c-sqrt))
        (else (+ a-sqrt c-sqrt))))

(sum-two-biggest 2 2 1)
(sum-two-biggest 1 2 2)
(sum-two-biggest 2 1 2)
