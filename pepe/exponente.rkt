#lang racket

(define (potencia n m)
  (cond ((zero? m) 1)
        ((equal? m 1) n)
        (#t (potenciaaux n m 1))
  )
)

(define (potenciaaux n m s)
  (if (> m 0) (potenciaaux n (- m 1) (* s n)) s))

(potencia 2 6)