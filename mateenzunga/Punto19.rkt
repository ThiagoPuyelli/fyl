#lang racket

(define (posiciones n lista)
  (if (null? lista) 0 (posicionesaux n lista 0)))

(define (posicionesaux n lista p)
  (cond ((null? lista) null)
        (else (if (equal? n (car lista)) (cons p (posicionesaux n (cdr lista) (+ p 1))) (posicionesaux n (cdr lista) (+ p 1))))))

(posiciones 3 '(1 6 3 3 4 3))