#lang racket

(define (longitud lista)
  (if (null? lista) 0 (longitudaux lista 0)))

(define (longitudaux lista n)
  (if (null? lista) n (longitudaux (cdr lista) (+ n 1))))

(define (ultimos lista n)
  (cond ((> n (longitud lista)) null) 
        ((= n (longitud lista)) lista)
        (else (ultimos (cdr lista) n))))

(ultimos '(5 6 4 8 97 8 5 4) 4)
