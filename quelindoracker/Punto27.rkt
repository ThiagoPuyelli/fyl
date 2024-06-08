#lang racket

(define (multiplos n m)
  (or (zero? (modulo n m)) 
      (zero? (modulo m n))))

(multiplos 6 6)