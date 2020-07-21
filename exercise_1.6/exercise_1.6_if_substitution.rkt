#lang sicp
(define (square x) (* x x))

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



; below is substitution step by step
(sqrt 9)

(sqrt-iter 1.0 9)

(if (good-enough? 1.0 9)
    1.0
    (sqrt-iter (improve 1.0 9) 9))

(if (< (abs (- (square 1.0) 9) 0.001))
    1.0
    (sqrt-iter (improve 1.0 9) 9))

(if (< (abs (- (* 1.0 1.0) 9) 0.001))
    1.0
    (sqrt-iter (improve 1.0 9) 9))