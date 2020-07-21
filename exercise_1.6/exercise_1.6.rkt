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


(sqrt 9) ; show original sqrt-iter result


; new-if procedure
(define (new-if predicate 
                then-clause 
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))


(define (sqrt-iter-v2 guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter-v2 (improve guess x) x)))

(define (sqrt-v2 x)
  (sqrt-iter-v2 1.0 x))

(sqrt-v2 9) ; sqrt-iter-v2 result