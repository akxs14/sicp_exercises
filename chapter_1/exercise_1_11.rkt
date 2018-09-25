#lang racket

#| 	Exercise 1.11: A function ff is defined by the rule that
	   f(n)=nf(n)=n if n<3n<3
    and
       f(n)=f(n−1)+2f(n−2)+3f(n−3)f(n) if n≥3n≥3
	Write a procedure that computes ff by means of a recursive process.
	Write a procedure that computes ff by means of an iterative process.
|#

; Recursive version

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


; Iterative version

(define (f-iter a b c count)
    (if (= count 3)
        (+ a (* 2 b) (* 3 c))
        (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

(define (f n)
    (if (< n 3)
        n
        (f-iter 2 1 0 n)))


(f 1) ; 1
(f 2) ; 2
(f 3) ; 3
(f 4) ; 11
(f 5) ; 25
