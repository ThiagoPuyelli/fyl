#lang racket

(define (sumatoria lista)
  (if (null? lista) 0 (sumatoriaaux lista 0)))

(define (sumatoriaaux lista n)
  (if (null? lista) n (sumatoriaaux (cdr lista) (+ (car lista) n))))

(sumatoria '(3 3 3))