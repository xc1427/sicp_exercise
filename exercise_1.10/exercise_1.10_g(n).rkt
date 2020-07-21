#lang sicp
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (f n)
  (A 0 n))

(define (g n)
  (if (= n 1)
      2
      (f (g (- n 1)))))

(g 10)
(g 9)