#lang racket


(define (factorial n)
  (if (= n 0) 1 (factorialaux n 1)))

(define (factorialaux n m)
  (if (> n 0) (factorialaux (- n 1) (* m n)) m))

(factorial 1)