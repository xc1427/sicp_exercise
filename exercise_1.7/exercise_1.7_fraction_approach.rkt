#lang sicp

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))



;new approach
(define (good-enough-bis? guess guess_prev)
  (< (/ (abs (- guess guess_prev)) guess) 0.00000001))

(define (sqrt-iter-bis guess guess_prev x)
  (if (good-enough-bis? guess guess_prev)
      guess
      (sqrt-iter-bis (improve guess x) guess x)))

(define (sqrt-bis x)
  (sqrt-iter-bis 1.0 x x))


(display "below is the result using fraction approach: \n")

(display (sqrt-bis 1e-40))

(display "\n\n")

(display "below is the result using old approach: \n")

(display (sqrt 1e-40))

(display "\n\n")

(display "below is the result calculating sqrt of very big number by using fraction approach \n")

(display (sqrt-bis 1e+50))