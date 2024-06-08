#lang racket

(define (mayor e1 e2 e3)
  (if (and (> e1 e2) (> e1 e3)) e1 (if (> e2 e3) e2 e3)))

(define (menor e1 e2 e3)
  (if (and (< e1 e2) (< e1 e3)) e1 (if (< e2 e3) e2 e3)))

(define (diferencia e1 e2 e3)
  (- (mayor e1 e2 e3) (menor e1 e2 e3)))


(diferencia 3 5 7)