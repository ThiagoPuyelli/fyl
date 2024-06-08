#lang racket

(define (menoresque n lista)
  (cond ((null? lista) null)
        ((> n (car lista)) (menoresque n (cdr lista)))
        (else (cons (car lista) (menoresque n (cdr lista))))))

(menoresque 3 '(1 2 1 3 1 5 6 4 2 7 1))