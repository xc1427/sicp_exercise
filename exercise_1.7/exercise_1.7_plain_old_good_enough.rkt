#lang sicp
(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(display (sqrt 16))
(display "\n\n")

(display "below is sqrt of a very small number\n")
(display (sqrt 1e-50))
(display "\n\n")

(display "below is sqrt of another very small number\n")
(display (sqrt 1e-40))
(display "\n\n")

(display "below is sqrt of a very large number\n")
(display (sqrt 1e+50))