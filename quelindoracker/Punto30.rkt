#lang racket

(define (iguales e1 e2 e3)
  (if (= e1 e2 e3) #t #f))

(iguales 2 2 3)