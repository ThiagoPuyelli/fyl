#lang racket

(define (sustituida1 a b lista)
  (cond ((null? lista) null)
        (else (if (equal? (car lista) a) 
                  (cons b (sustituida1 a b (cdr lista))) 
                  (cons (car lista) (sustituida1 a b (cdr lista)))))))

(sustituida1 2 6 '(1 5 2 4 2 8 2))