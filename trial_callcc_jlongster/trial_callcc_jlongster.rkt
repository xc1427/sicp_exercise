#lang racket

;https://jlongster.com/Whats-in-a-Continuation

(define (foo)
  (let ([x (call/cc
            (lambda(cont)
              (display "captured continuation.")
              (cont 5)
              (display "continuation called.")))])
    (display "returning x.")
    x))

(display (foo))
;Expected that "continuation called"  is never logged