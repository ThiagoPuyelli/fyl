#lang racket

(define (potencia n m)
  (cond ((= m 0) 1)
        ((= m 1) n)
        ((potenciaaux n m 1))))

(define (potenciaaux n m s)
  (if (= m 0) s (potenciaaux n (- m 1) (* s n))))

(potencia 4 3)