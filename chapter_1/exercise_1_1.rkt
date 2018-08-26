#lang scheme

#|Exercise 1.1: Below is a sequence of expressions.
  What is the result printed by the interpreter in
  response to each expression? Assume that the sequence
  is to be evaluated in the order in which it is presented.
|#

(+ 5 3 4)
(- 9 1)
(/ 6 2)

(define a 3)
(define b (+ a 1))

(+ a b (* a b))
(= a b)

(if (and (> b a) (< b (* a b)))
    a
    b)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
