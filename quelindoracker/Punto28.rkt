#lang racket

(define (mellizos n m s)
  (if (= n m) n s))

(mellizos 5 2 2)