#lang racket

(define (hipo c1 c2)
  (sqrt (+ (expt c1 2) (expt c2 2))))

(hipo 3 4)