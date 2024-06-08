#lang racket

(define (semana d)
  (cond ((= d 1) 'domingo)
        ((= d 2) 'lunes)
        ((= d 3) 'martes)
        ((= d 4) 'miercoles)
        ((= d 5) 'jueves)
        ((= d 6) 'viernes)
        ((= d 7) 'sabado)
        (#t #f)))

(semana -5)