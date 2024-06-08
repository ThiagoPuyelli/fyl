#lang racket

(define (iguale2 e1 e2 e3)
  (or (= e1 e2) (= e1 e3) (= e2 e3)))

(iguale2 1 3 2)