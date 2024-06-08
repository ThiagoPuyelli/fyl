#lang racket

(define (trian e1 e2 e3)
  (and (> (+ e1 e2) e3) (> (+ e1 e3) e2) (> (+ e2 e3) e1)))


(trian 8 7 30)