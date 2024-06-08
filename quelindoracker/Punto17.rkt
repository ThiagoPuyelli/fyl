#lang racket

(define (seg s)
  (list (truncate (/ (/ s 60) 60)) (truncate (/ s 60)) s))

(seg 90000000)