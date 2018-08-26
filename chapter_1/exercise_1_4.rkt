#lang scheme

#| Exercise 1.4: Observe that our model of evaluation
   allows for combinations whose operators are compound
   expressions. Use this observation to describe the behavior
   of the following procedure:
|#

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 1 1)  ; == 2
(a-plus-abs-b 1 -1) ; == 2

#| Answer: The procedure will change the operation to be
           performed based on the sign of parameter b.

           For positive numbers it will perform addition
           (e.g. (+ 1 1)), while for negative numbers it will
           perform a subtraction, which will reverse the sign
           and will result to an addition (e.g. (- (- 1) 1)).

           Hence, b will always evaluated as a positive number.
|#