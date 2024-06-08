#lang racket

(define (anteriores n lista)
  (cond ((null? lista) null)
        ((not (equal? n (car lista))) (cons (car lista) (anteriores n (cdr lista))))
        (else null)))

(anteriores 5 '(1 3 4 5 6 4))