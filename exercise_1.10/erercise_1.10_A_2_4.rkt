#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;substitution model
(A 2 4)

(A 1 (A 2 3))

(A 1 (A 1 (A 2 2)))

(A 1 (A 1 (A 1 (A 2 1))))

(A 1 (A 1 (A 1 2)))

(A 1 (A 1 4))

(A 1 16)

;2^16 = 2^10 & 2^6 = 1024 * 64 = 65536

(A 2 3)
;reduced to
(A 1 4)

(A 2 2)
;reduced to
(A 1 2)


; try to print (A 2 5), scary!
(A 2 5)
; it should be reduced to (A 1 65536)
(A 1 65536)
;which is reduced from 
;(A 1 (A 2 4))
