#lang racket

(define (divisor n m)
  (zero? (modulo n m)))

(define (primo n)
  (if (= n 1) #t (primoaux n (- n 1))))

(define (primoaux n m)
  (if (= m 1) #t (if (zero? (modulo n m)) #f (primoaux n (- m 1)))))

(primo 11)