#lang racket

(define (estaEntre n m)
  (cond ((< n m) (cons n (estaEntre (+ n 1) m)))
        (else (cons m '()))))

(estaEntre 2 5)