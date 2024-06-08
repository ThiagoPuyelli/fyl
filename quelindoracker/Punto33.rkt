#lang racket

(define (puntaje p d)
  (cond ((and (> 1000 p) (< 20 d)) 1)
        ((and (> 1000 p) (>= 20 d)) 2)
        ((and (<= 1000 p) (< 20 d)) 3)
        (#t 4))
        )


(puntaje 3000 30)
        