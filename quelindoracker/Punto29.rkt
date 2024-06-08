#lang racket

(define (joven e1 e2 e3)
  (if (< e1 e2)
    (if (< e1 e3) e1 e3)
    (if (< e2 e3) e2 e3)))


(joven 10 9 16)