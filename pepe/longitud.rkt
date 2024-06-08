#lang racket

(define (longitud lista)
  (if (null? lista) 0 (+ (longitud (cdr lista)) 1)))

(longitud '(1 5 6 4 3))