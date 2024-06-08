#lang racket


(define (par n)
  (if (zero? (modulo n 2)) #t #f))

(par 2)