#lang sicp
(define (square x) (* x x))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

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



; below is substitution step by step

(sqrt-v2 9)

(sqrt-iter-v2 1.0 9)

(new-if (good-enough? 1.0 9)
        1.0
        (sqrt-iter-v2 (improve 1.0 9) 9))

(new-if (< (abs (- (square 1.0) 9)) 0.001)
        1.0
        (sqrt-iter-v2 (improve 1.0 9) 9))

(new-if (< (abs (- (square 1.0) 9)) 0.001)
        1.0
        (new-if (good-enough? (improve 1.0 9) 9)
                (improve 1.0 9)
                (sqrt-iter-v2 (improve (improve 1.0 9) 9) 9)))