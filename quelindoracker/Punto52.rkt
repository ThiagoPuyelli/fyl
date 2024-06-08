#lang racket

(define (metro long medida)
  (cond ((equal? medida "mm") (* long 1000))
        ((equal? medida "cm") (* long 100))
        ((equal? medida "dm") (* long 10))))

(define (decimetro long medida)
  (cond ((equal? medida "mm") (* long 100))
        ((equal? medida "cm") (* long 10))
        ((equal? medida "m")  (/ long 10))))

(define (centimetro long medida)
  (cond ((equal? medida "mm") (* long 10))
        ((equal? medida "dm") (/ long 10))
        ((equal? medida "m")  (/ long 100))))

(define (milimetro long medida)
  (cond ((equal? medida "cm") (/ long 10))
        ((equal? medida "dm") (/ long 100))
        ((equal? medida "m")  (/ long 1000))))

(define (convertir long medida medidaR)
  (cond ((equal? medida "mm") (milimetro long medidaR))
        ((equal? medida "cm") (centimetro long medidaR))
        ((equal? medida "dm") (decimetro long medidaR))
        ((equal? medida "m") (metro long medidaR))))

(convertir 50 "m" "cm")