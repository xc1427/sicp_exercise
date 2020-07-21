#lang sicp

(define (square x)
  (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess guess_prev x)
  (< (/ (abs (- guess guess_prev)) guess) 0.00000001))

(define (cube-root-iter guess guess_prev x)
  (if (good-enough? guess guess_prev x)
      guess
      (cube-root-iter (improve guess x) guess x)))

(define (cube-root x)
  (cube-root-iter 1.0 x x))


(cube-root 8)

(display "")

(cube-root 1e+3)