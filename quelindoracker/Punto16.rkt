#lang racket

(define (dcyr n d)
  (list (quotient n d) (modulo n d)))

(dcyr 6 10)