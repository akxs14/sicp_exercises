#lang racket

#| 	Exercise 1.11: A function ff is defined by the rule that 
	f(n)=nf(n)=n if n<3n<3 and f(n)=f(n−1)+2f(n−2)+3f(n−3)f(n)=f(n−1)+2f(n−2)+3f(n−3) 
	if n≥3n≥3. Write a procedure that computes ff by means of a recursive process. 
	Write a procedure that computes ff by means of an iterative process.
|#

# Iterative version

(define (f-recur n)
  (if (< n 3)
     n
    (+ (f-recur (- n 1))
             (* 2 (f-recur (- n 2)))
             (* 3 (f-recur (- n 3))))))


(f-recur 1) ; 1
(f-recur 2) ; 2
(f-recur 3) ; 3
(f-recur 4) ; 11
(f-recur 5) ; 25
