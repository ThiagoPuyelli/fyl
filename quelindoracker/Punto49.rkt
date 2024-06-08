#lang racket
;
;(define (mcd n m)
;  (if (= n m) n (if (> n m) (mcdaux n m n) (mcdaux n m m))))
;
;(define (mcdaux n m s)
;  (if (and (zero? (modulo n s)) (zero? (modulo m s))) s (mcdaux n m (- s 1))))
;
;
;(mcd 10 15)

(define (menor a b)
  (if (> a b) b a))

(define (mcd2 a b)
  (if (= a b) a (mcd2 (menor a b) (abs (- a b)))))

(mcd2 10 15)