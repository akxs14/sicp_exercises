
#lang scheme

#| Exercise 1.6: Alyssa P. Hacker doesn’t see why if needs to be provided as a special form. “Why can’t I just define it as an ordinary procedure in terms of cond?” she asks. Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)
5

(new-if (= 1 1) 0 5)
0
Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
What happens when Alyssa attempts to use this to compute square roots? Explain.

#|

#|
Answer: The if form ensures that the else clause will be evaluated as the result of the form, hence it
        ensures termination and avoidance of infinite loops.

        The cond form evaluates every predicate separately and an improperly designed recursive function will
        never be exit and its results will not be returned as the form's evaluation result, hence it will it not
        be able to terminate.
|#


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess z)
  (new-if (good-enough? guess z)
          guess
          (sqrt-iter (improve guess z)
                     z)))

(sqrt-iter 1 5)
