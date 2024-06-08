#lang racket

(define (porcentaje h m)
  (list (/ (* m 100) (+ h m)) (/ (* h 100) (+ h m))))

(porcentaje 20 50)