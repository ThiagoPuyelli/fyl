#lang racket

(define (listaN lista n)
  (if (or (null? lista) (= n 0)) null (cons (car lista) (listaN (cdr lista) (- n 1)))))

(listaN '(3 6 8 49 5 4) 4)