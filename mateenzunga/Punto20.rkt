#lang racket

(define (concatena lista1 lista2)
  (if (null? lista1) lista2 (cons (car lista1) (concatena (cdr lista1) lista2))))

(define (movidos n lista)
  (cond ((null? lista) null)
        ((> n 0) (movidos (- n 1) (concatena (cdr lista) (list (car lista)))))
        (#t lista)))

(movidos 3 '(1 2 3 4 5 6))