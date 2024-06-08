#lang racket

(define (aPartirN n lista)
  (cond ((= n 0) lista)
        (else (aPartirN (- n 1) (cdr lista)))))

(aPartirN 3 '(1 5 6 8 94 2 5 143 1 2 5 6 12 6))