#lang racket

(define (ultimo lista)
  (cond ((null? lista) null)
        ((null? (cdr lista)) (car lista))
        (else (ultimo (cdr lista)))))

(ultimo '(5 1 6))