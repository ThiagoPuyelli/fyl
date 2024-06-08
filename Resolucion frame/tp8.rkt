#lang racket
;1
(define (pertenece? elemento lista)
    (cond
        ((null? lista) #f)
        ((equal? (car lista) elemento) #t)
        (else (pertenece? elemento (cdr lista)))
    )
)

;2
(define (tamano lista)
    (if (null? lista)
        0
        (+ 1 (tamano (cdr lista) ) )
    )
)

;3
(define (sumatoria lista)
    (if (null? lista)
        0
        (+ (car lista) (sumatoria (cdr lista) ) )
    )
)

;4 Escribir una función que acepte una lista de números enteros y devuelva la cantidad de números naturales que contiene la lista.
; (cantidadNaturales lista)
; > (cantidadNaturales '(-1 2 3 -4 5 0 2))  => 4

(define (cantidadNaturales lista)
   (cond ((null? lista) 0)
         ((> (car lista) 0) (+ 1 (cantidadNaturales (cdr lista))))
         (#t (cantidadNaturales (cdr lista)))))


;5 Escribir una función "estaEntre", que acepta dos números enteros m y n, y devuelve la lista de los enteros mayores o iguales que m y menores o iguales que n.
; (estaEntre m n)
;> (estaEntre 2 5)  => '(2 3 4 5)

(define (estaEntre m n) (cond
           ((< m n) (cons m (estaEntre (+ 1 m) n)))
            (#t (cons n '()))))
           

;6 Definir una función que acepta una lista devuelve el último elemento de la misma.
	; (ultimo lista)
;> (ultimo '(a b c d e))  => e

(define (ultimo lista)
              (cond ((null? lista) null)
                    ((null? (cdr lista)) (car lista))
                    (#t (ultimo (cdr lista)))))
     

;7 
; Definir una función que acepte dos listas y devuelva una lista que sea la concatenación de las mismas.
	; (concatenadas lista1 lista2)
; > (concatenadas '(a b c) '(d e)) => (a b c d e)

(define (concatenadas lista1 lista2)
 (if (null? lista1) lista2
    (cons (car lista1) (concatenadas (cdr lista1) lista2))))
     
;Definir una función que acepta una lista y dos átomos "a" y "b", y devuelve otra lista con los elementos de la primera, pero con el átomo "a" sustituido por el "b", en su primera ocurrencia.
	; (sustituida1 elB elR lista)
;> (sustituida1 'd 'a '(a b c d e d f)) => (a b c a e d f)

;8 
;Definir una función que acepta una lista y dos átomos "a" y "b", y devuelve otra lista con los elementos de la primera, pero con el átomo "a" sustituido por el "b", en su primera ocurrencia.
	; (sustituida1 elB elR lista)
;> (sustituida1 'd 'a '(a b c d e d f)) => (a b c a e d f)

(define (sustituida1 a b lista)
  (cond ((null? lista) null)
  (#t (if (equal? a (car lista))
         (cons b (cdr lista))
         (cons (car lista) (sustituida1 a b (cdr lista)))))))
         
;9
; Escribir una función que acepta dos átomos A y B y una lista C, y devuelve una lista D, tal que D es igual a C, pero con el átomo A sustituido por el B, en todas sus ocurrencias.
		; (sustituida elementoBuscado elementoReemplazo lista)
;> (sustituida 'd 'a '(a b c d e d f)) => (a b c a e a f)

(define (sustituida a b lista)
  (cond ((null? lista) null)
  (#t (if (equal? a (car lista))
         (cons b (sustituida a b (cdr lista)))
         (cons (car lista) (sustituida a b (cdr lista)))))))
     

;10 Dada una lista y un número N, devuelve los N primeros elementos de L.
; (nPrimeros cantidad lista)
;> (nPrimeros 4 '(6 5 1 2 4 7)) => (6 5 1 2)

(define nPrimeros (lambda (N L)
            (if (= N 0) '()
               (cons (car L) (nPrimeros (- N 1) (cdr L))))))
;11 Dada una lista y un número N, devuelve los N últimos elementos de L.
		; (nUltimos cantidad lista)
; > (nUltimos 3 '(71 82 23 14 25 6)) => (14 25 6)

(define (nUltimos N L) 
                   (if (or (null? L) (> N (tamano L) )) #f                  
                   (cond ((= N 1) (cdr L))
                         ((= N 0) L)
                         (else (nUltimos (- N 1) (cdr L) )))
                   )
)                         
;12                         

;Dada una lista y un número N, devuelve una lista con los elementos a partir de la posición n (sin tomar el elemento de la posición n).
		; (aPartirN indice lista)
; > (aPartirN 3 '(7 6 5 4 3 2)) => (4 3 2)


(define (aPartirN N L)
        (if (= N 0) L
            (aPartirN (- N 1) (cdr L))
        )
)

;13 Dada una lista numérica y un número N, devuelve una lista con los elementos menores que N.
			; (xMenores lista valor)
;> (xMenores '(1 8 3 4 5 2 7) 4) => (1 2 3)

;14
;Dada una lista numérica y un número N, devuelve una lista con los elementos mayores que N.
			; (xMayores lista valor)
;> (xMayores '(1 8 3 4 5 2 7) 4) => (5 6 7)

;15 Dada una lista numérica y un elemento X, devuelve una lista con los elementos anteriores a X.
			; (anteriores valor lista)
;> (anteriores 4 '(1 8 3 4 5 2 7)) => (1 8 3)

(define (anteriores X L)
    (if (null? L) '()
        (if (equal? (car L) X) '()
            (cons (car L) (anteriores X (cdr L))))))

;16 Dada una lista numérica y un elemento X, devuelve una lista con los elementos siguientes a X.
; (siguientes valor lista)
;> (siguientes 4 '(1 8 3 4 5 2 7)) => (5 2 7)

(define (siguientes X L)
    (if (null? L) '()
        (if (equal? (car L) X) (cdr L)
            (siguientes X (cdr L)))))

;17 Devuelve la lista L invertida.
		; (invertir lista)
;> (invertir '(1 2 3 4 5 6)) => (6 5 4 3 2 1)

(define (invertir L)
       (if (null? L) '()  (concatenadas (invertir (cdr L)) (list (car L)))))



;18 Dada una lista numérica y un número N, devuelve una lista conteniendo dos sublistas, una con elementos menores que N y otra con los mayores a N.
	; (xMayMen lista separador)
;> (xMayMen '(1 8 3 4 5 2 7) 4) => ((1 3 2) (8 5 7))

; Dada una lista L y un elemento X, devuelve una lista con todas las posiciones de X en L.
; (ocurrencias lista elementoBuscado)
;> (ocurrencias '(1 3 2 4 6 5 7 3) 3) => (2 8)

(define ocurrencias (lambda (L X) (ocurrenciasAux L X 1)))

(define ocurrenciasAux (lambda (L X A) 
(if (null? L) '()
          (if (= (car L) X)  (cons A  (ocurrenciasAux (cdr L) X (+ A 1)))
                             (ocurrenciasAux (cdr L) X (+ A 1))))))


;Dada una lista numérica y un número N, devuelve una lista con los primeros N elementos movidos al final de la lista.
		; (moverAtras lista cantidad)
;> (moverAtras '(1 2 3 4 5 6) 3) => (4 5 6 1 2 3)

(define (moverAtras L N)
                 (if(or(equal? N 0) (null? L)) L
                    (moverAtras (concatenadas (cdr L) (list(car L))) (- N 1))))
