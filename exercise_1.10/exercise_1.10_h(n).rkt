#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (g n)
  (A 1 n))

(define (h n)
  (if (= n 1)
      2
      (g (h (- n 1)))))

(h 3)
(h 4)
(h 5)