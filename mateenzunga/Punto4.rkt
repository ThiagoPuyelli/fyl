#lang racket

(define (naturales lista)
  (if (null? lista) 0 (naturalesaux lista 0)))

(define (naturalesaux lista n)
  (if (null? lista) n (if (>= (car lista) 0) (naturalesaux (cdr lista) (+ n 1)) (naturalesaux (cdr lista) n))))

(naturales '(1 5 -6))