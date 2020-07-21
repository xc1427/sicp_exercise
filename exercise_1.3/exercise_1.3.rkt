#lang sicp

(define (larger-of a b)
  (if (> a b) a b))

(define (smaller-of a b)
  (if (= a (larger-of a b)) b a))

(define (largest-of a b c)
  (larger-of a (larger-of b c)))

(define (medium-of a b c)
  (smaller-of a (larger-of b c)))

(define (sum-of-square a b)
  (+ (* a a) (* b b)))

(define (sum-of-square-of-two-larger a b c)
  (sum-of-square (largest-of a b c) (medium-of a b c)))

(sum-of-square-of-two-larger 4 3 5)