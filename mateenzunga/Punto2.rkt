#lang racket

(define (longitud lista)
  (if (null? lista) 0 (longitudaux lista 0)))

(define (longitudaux lista n)
  (if (null? lista) n (longitudaux (cdr lista) (+ n 1))))

(longitud '(2 2))