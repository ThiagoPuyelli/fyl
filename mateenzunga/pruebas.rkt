#lang racket

(define (fun17 L)
  (if (null? L) null (cons (car L) (fun17 (cdr L)))))

;(fun17 '(1 2 3))

(define (fun23 x y)
  (if (= x y) x
    (if (> x y) 
      (fun23 y (- x y))
      (fun23 x (- y x)))))

;(fun23 36 48)

(define (fun30 x y z)
  (cond
      ((< z 59) (list x y (+ z 1)))
      (#t (cond ((< y 59) (list x (+ y 1) 0))
          (#t (cond ((< x 23) (list (+ x 1) 0 0))
            (#t (list 0 0 0))))))))

;(fun30 18 59 59)

(define (fun31 L)
  (cond ((null? L) '())
        (#t (append (fun31 (cdr L)) (list (car L))))))

(define (fun32 L)
  (fun31 (cdr (fun31 (cdr L)))))

;(fun32 '(a b c d e))

(define (fun33 m n)
  (if (= m n) m
      (+ m (fun33 (+ m 1) n))))

;(fun33 4 9)

(define (fun1 a b)
  (if (> a b)
      (list b a)
      (list a b)))

(define (fun2 a b c)
  (car (fun1 a (car (fun1 b c)))))

;(fun2 7 8 3)

(define (fun3 x y)
  (if (> x y) y x))

(define (fun4 x y z)
  (+ (fun3 (fun3 x y) z) z))

;(fun4 7 8 3)

(define (fun5 x)
  (+ (car x) (car (cdr x))))

(define (fun6 x y)
  (if (> x y) y x))

(define (fun7 x y)
  (fun6 (fun5 x) (fun5 y)))

;(fun7 '(4 9) '(6 3))

(define (fun12 n)
  (= 0 (modulo n 3)))

(define (fun11 l)
  (if (fun12 (car l))
      (cons (car l) (fun10 (cdr l)))
      (fun10 (cdr l))))

(define (fun10 l)
  (if (null? l)
    null
    (fun11 l)))

;(fun10 '(4 5 9 12 7))

(define (fun16 L)
  (cond ((null? L) 1)
        ((atom? L) 0)
        (#t (max (+ (fun16 (car L)) 1)
          (fun16 (cdr L))))))

(fun16 '(3 5 9))