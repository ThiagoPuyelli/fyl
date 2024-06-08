#lang racket

(define (concatena lista1 lista2)
  (if (null? lista1) lista2 (cons (car lista1) (concatena (cdr lista1) lista2))))


(concatena '(2 3 1) '(5 4 6))