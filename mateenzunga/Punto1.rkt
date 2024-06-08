#lang racket

(define (pertenece n lista)
  (cond ((null? lista) #f)
        ((equal? (car lista) n) #t)
        (else (pertenece n (cdr lista)))))

(pertenece 2 '(5 6 4 2))