#lang racket

#|  Exercise 1.8: Newton’s method for cube roots is based on the
    fact that if y is an approximation to the cube root of x,
    then a better approximation is given by the value x/y2+2y3.
    Use this formula to implement a cube-root procedure analogous
    to the square-root procedure. (In 1.3.4 we will see how to implement
    Newton’s method in general as an abstraction of these square-root and cube-root procedures.)
|#

(define (improve x y)
  ( / (+ (/ x (* y y)) (* 2 y)) 3))

(define (stop-iter? old-y new-y)
  (< (abs (- old-y new-y)) 0.0001))

(define (cube-root-iter x y)
  (if (stop-iter? y (improve x y))
      y
      (cube-root-iter x (improve x y))))

(define (cube-root x)
  (cube-root-iter x 1.0))

(cube-root 9)
; 2.0801035255095734


; And in block structure
(define (cube-root x)
  (define (improve x y)
    ( / (+ (/ x (* y y)) (* 2 y)) 3))

  (define (stop-iter? old-y new-y)
    (< (abs (- old-y new-y)) 0.0001))

  (define (cube-root-iter x y)
    (if (stop-iter? y (improve x y))
        y
        (cube-root-iter x (improve x y))))
  (cube-root-iter x 1.0))
