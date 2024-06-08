#lang racket

(define (siguientes n lista)
  (cond ((null? lista) null)
        ((equal? n (car lista)) (cdr lista))
        (else (siguientes n (cdr lista)))))

(siguientes 5 '(1 3 1 4 7 5 6 9 8 7))