#lang racket

(define (divisible6 n)
  (and (if (zero? (modulo n 3)) #t #f)) (if (zero? (modulo n 2)) #t #f))

(divisible6 6)