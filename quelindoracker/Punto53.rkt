#lang racket

(define (divisible7 n)
  (if (> n (modulo n 10)) (divisible7 (- (truncate (/ n 10)) (* (modulo n 10) 2))) (zero? (modulo n 7))))

(divisible7 140)


