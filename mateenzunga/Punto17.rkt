#lang racket

(define (concatena lista1 lista2)
  (if (null? lista1) lista2 (cons (car lista1) (concatena (cdr lista1) lista2))))

(define (invertir lista)
  (if (null? lista) null (concatena (invertir (cdr lista)) (list (car lista)))))

(invertir '(5 1 3 6 4))