#lang scheme

#|  Exercise 1.7: The good-enough? test used in computing square roots
    will not be very effective for finding the square roots of very
    small numbers. Also, in real computers, arithmetic operations are
    almost always performed with limited precision. This makes our test
    inadequate for very large numbers. Explain these statements, with
    examples showing how the test fails for small and large numbers.
    An alternative strategy for implementing good-enough? is to watch
    how guess changes from one iteration to the next and to stop when
    the change is a very small fraction of the guess. Design a square-root
    procedure that uses this kind of end test. Does this work better for
    small and large numbers?
|#




#lang scheme
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (if (guess-good-enough? (improve guess x) guess)
       (sqrt-iter (improve guess x) x)
       guess)))

(define (guess-good-enough? new-guess old-guess)
  (if (< (- (abs new-guess) (abs old-guess)) (/ old-guess 100))
      new-guess
      old-guess))


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1 x))

;Works very well for smaller numbers
(sqrt 0.0000001)
(sqrt 0.00000001)

; Doesn't work very well for big numbers
(sqrt 10000001)
(sqrt 1000000001)
