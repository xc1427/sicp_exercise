#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;substitution
(A 3 3)

(A 2 (A 3 2))

; from then on, the calculation will last very long, by observation. So I just comment them.
;(A 2 (A 2 (A 2 2)))

;(A 2 (A 2 (A 2 (A 2 1))))

;(A 2 (A 2 (A 2 2)))

;(A 2 (A 2 16))

;The number should be very very large.