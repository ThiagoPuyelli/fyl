#lang racket
; 1.* Escribir una función llamada "tres" que, dado cualquier valor, devuelve el número 3.
 
(define (tres n) 3)


; 2.* Escribir una función llamada triple que, dado cualquier valor x, devuelve el triple de x.

(define (triple n) (* 3 n))


; 3.* Función que, dado cualquier número, devuelve la mitad del mismo.

(define (mitad n) (/ n 2))


; 4.* Función que, dado cualquier número, devuelve la diferencia ese número y 20.

(define (diferencia20 n) (- n 20))


; 5.* Escribir una función que, dado cualquier valor x, devuelve el el duplo de la suma de 15 + x.

(define (duplo x) (* 2 (+ 15 x)))


; 6.* Definir "circunferencia", que dado el radio retorne la longitud de la misma.

(define (circunferencia r) (* 2 r pi))


; 7.* Escribir una función que, dada una temperatura en grados Celsius, la devuelva expresada en grados Fahrenheit. La fórmula de conversión es

;                    f = (9/5)c + 32

(define (c2f c) (+ (* (/ 9 5) c) 32))


; 8.* Sabiendo que: 1 pie = 12 pulgadas; 1 yarda = 3 pies; 1 pulgada = 2.54 centímetros. Definir tres funciones (yardas, pulgadas y  pies), que dado un valor en centímetros, devuelva esa longitud expresada en esas unidades.

(define (pulgadas c) (/ c 2.54))

(define (pies c) (/ (pulgadas c) 12))

(define (yardas c) (/ (pies c) 3))

; Funciones de dos variables

; 9.* Definir "superficieRectangulo", una función que dado el ancho y el largo de una habitación retorne su superficie.

(define (superficieRectangulo ancho largo) (* ancho largo)) 


; 10.* Definir una función para ingresarle la base y la altura de un triángulo, y devuelva el valor del área.

(define (superficieTriangulo base altura) (/ (* base altura) 2))


; 11.* La relación entre los lados (a,b) de un triángulo y la hipotenusa viene dada por la fórmula a2 + b2 = h2. Definir una función para que dadas las longitudes de los lados, calcule y devuelva la hipotenusa.

(define (pitagoras a b)
       (sqrt (+ (* a a) (* b b))))


; Funciones de tres o mas variables


; 12.* La fuerza de atracción entre dos masas, m1 y m2, separadas por una distancia d, está dada por la fórmula:  

;                   F = G * m1 * m2 / d^2

; donde G es la constante de gravitación universal, y es igual a 

; G=6.673*10-8 cm3/g*seg2

; Definir una función para ingresarle los valores m1, m2 y d, y devuelva la fuerza de atracción entre las masas.

(define (fuerza m1 m2 d)
        (/ (* 6.673E-8 m1 m2) (* d d)))

        
; 13.* El área de un triángulo cuyos lados son a, b y c se puede calcular por la fórmula: 

;      A = sqrt(p * (p - a) * (p - b) * (p - c))  

; donde p = (a+b+c)/2. Definir una función para ingresarle a, b y c, y devuelva el área del triángulo.

; Para mejor claridad, se puede definir una funcion para p:

(define (p a b c) (/ (+ a b c) 2))

(define (heron a b c) 
     (sqrt (* (p a b c) 
              (- (p a b c) a) 
              (- (p a b c) b)
              (- (p a b c) c))))


; 14.* Definir una función que acepte los coeficientes a, b y c de la ecuación de primer grado a * x + b = c, y devuelva el valor de la raiz.
; Despejando la x:
;        x = (c - b) / a

(define (raiz a b c) (/ (- c b) a))

; 15.* En una carrera de turismo carretera el tiempo se mide en minutos, segundos y centésimas de segundo y, el espacio recorrido se mide en metros. Definir una función para ingresarle la distancia recorrida y el tiempo tardado, y devuelva la velocidad promedio de un automóvil en km/hr.
; Sabiendo que 1 metro/segundo = 3.6 Km/hr, se puede hacer el calculo en m/s y convertir. Para mayor claridad pasamos el tiempo a segundos:

(define (segundos min seg cen) 
          (+ (* min 60) seg (/ cen 100)))

(define (velocidad min seg cen met) 
          (* (/ met (segundos min seg cen)) 3.6))

; Funciones que devuelven listas

; 16.* Definir una función que acepte dos números enteros, y devuelva una lista con el cociente y el resto la división entera entre los dos números.

(define (dcyr n1 n2) 
         (list (quotient n1 n2) (modulo n1 n2))) 

; 17.* Definir una función que dada una cantidad de segundos, devuelva una lista con la misma cantidad expresada en minutos y segundos.

(define (hms seg) 
       (list (truncate (/ seg 60)) (modulo seg 60)))

; 18.* Definir una función que acepte la cantidad de varones y mujeres que hay en un recinto, y devuelva una lista con el porcentaje de varones y mujeres.

(define (porcentajeDeVyM v m)
       (list (* 100 (/ v (+ v m))) (* 100 (/ m (+ v m))))) 


; 19.* Utilizando las expresiones descriptas anteriormente, definir la función  pasaje, que reciba una medida en centímetros, y retorne una lista con esa medida expresada en pulgadas, pies y yardas. 

; Usando las funciones ya definidas:

(define (pasaje cm)
       (list (pulgadas cm) (pies cm) (yardas cm)))

;20.* Definir una función que acepte los coeficientes de un sistema de dos ecuaciones con dos incógnitas:

; a11 * x1 + a12 * x2 = b1
; a21 * x1 + a22 * x2 = b2

; y devuelva una lista con los valores de las incógnitas.

(define (resuelveSistema a11 a12 b1 a21 a22 b2)
             (list 
				(/ (- b1 (* a12 (/ (- b2 (* a21 (/ b1 a11))) (- a22 (/ (* a21 a12) a11)))))  a11)
				(/ (- b2 (* a21 (/ b1 a11))) (- a22 (/ (* a21 a12) a11)))
             )
)

; Decisiones
;21.* Definir un predicado que acepta un número y devuelve verdadero si ese número es par

(define (par n) (if (zero? (modulo n 2)) #t #f))

;Definición alternativa: devuelve directamente el valor de retorno de la función booleana zero?
(define (par_alt n) (zero? (modulo n 2)))

;22.* Definir un predicado que acepta un número y devuelve verdadero si ese número es divisible por tres y falso de otro modo.

(define (divisiblepor3 n) (if (zero? (modulo n 3)) #t #f))

; también se puede hacer sin el "if", lo mismo que el anterior.

(define (divisibleportresalt n) (zero? (modulo n 3)))


;23.* Definir un predicado que acepta un número y devuelve T si ese número es divisible por seis, un número es divisible por seis si es divisible por dos y por tres.

(define (divisiblepor6 n)
       (and (par n) (divisiblepor3 n)))


;24.* Definir un predicado que acepta un número real y devuelve T si ese número pertenece al intervalo [0,1].

(define (entre0y1 n) (<= 0 n 1))   


;25.* Definir una función para aceptar dos números y devolver el mayor

(define (mayor n1 n2) (if (> n1 n2) n1 n2))

  
; 26.* Definir un predicado que acepta dos números y devuelve T si el segundo es múltiplo del primero.

(define (multiplo m n) (zero? (modulo n m)))


; 27.* Definir un predicado que acepta dos números y devuelve T si el segundo es múltiplo del primero o viceversa

(define (multiploODivisor m n) 
       (or (zero? (modulo n m))
           (zero? (modulo m n))))


; 28.* En un grupo de tres personas hay dos mellizos, el restante es mucho mas viejo. Preparar una función que acepte las tres edades y devuelva la edad de los mellizos.

(define (mellizosYViejo e1 e2 e3)
       (if (= e1 e2) e1 e3))  

; Observar que si e1 no es igual que e2, una sola de ellas representa la edad de un mellizo, razón por la cual e3 necesariamente debe representar la edad del otro.
  

;29.* En un grupo de tres personas hay un joven y dos adultos. Construir una función para ingresarle las tres edades y devuelva la edad del joven.

(define (jovenYAdultos e1 e2 e3)
        (if (< e1 e2)
            (if (< e1 e3) e1 e3)
            (if (< e2 e3) e2 e3)))

; Una solución un poco mas elaborada:

(define (jovenYAdultosalt e1 e2 e3)
            (if (and (< e1 e2) (< e1 e3)) e1
                (if (< e2 e3) e2 e3)))

 
; 30.* Escribir un predicado que acepta tres números y devuelve T si los tres números son iguales

(define (iguales n1 n2 n3) (= n1 n2 n3))


; 31.* Escribir una función que acepte tres números y devuelva la diferencia entre el mayor y el menor

(define (menor3 n1 n2 n3)
            (if (and (< n1 n2) (< n1 n3)) n1
                (if (< n2 n3) n2 n3)))

(define (mayor3 n1 n2 n3)
            (if (and (> n1 n2) (> n1 n3)) n1
                (if (> n2 n3) n2 n3)))

(define (diferencia n1 n2 n3)
            (- (mayor3 n1 n2 n3) (menor3 n1 n2 n3)))


; 32.* Escribir un predicado que acepta tres números y devuelve T si dos de ellos son iguales

(define (dosiguales n1 n2 n3)
          (or (= n1 n2)
              (= n2 n3)
              (= n1 n3)))

; 33.* En una fábrica, la eficiencia de una máquina se calcula en función de las piezas producidas por una parte, y de las piezas defectuosas por la otra. Las condiciones son las siguientes:

; a. Producción mínima: 1000 piezas
; b. Máximo de piezas defectuosas: 20

; El puntaje asignado a la máquina se calcula como sigue:

; Puntaje 1: si no cumple con ninguna de las condiciones

; Puntaje 2: si cumple solo con la segunda
 
; Puntaje 3: si cumple solo con la primera
 
; Puntaje 4: si cumple con las dos

; Definir una función que acepta la cantidad de piezas producidas y la cantidad de defectuosas y devuelve el puntaje asignado.

(define (puntaje p d)
       (cond (((and (< p 1000) (> d 20)) 1)
              ((and (< p 1000) (<= d 20)) 2)
              ((and (>= p 1000) (> d 20)) 3)
              (#t 4)
              )
       )
)

; 34. Desarrollar una función que acepte las longitudes de tres segmentos, y que devuelva T si forman triángulo. Recordar que la suma de las longitudes dos lados cualesquiera de un triángulo siempre debe ser mayor que la longitud del restante.

(define (triangulo l1 l2 l3)
       (and (< l1 (+ l2 l3))
            (< l2 (+ l1 l3))
            (< l3 (+ l1 l2))))


; 35.* Suponiendo los días de la semana numerados como domingo:1, lunes:2, etc, aceptar un número entre 1 y 7 y devolver el día de la semana correspondiente.

(define (diasemana n)
      (cond ((> n 7) #f)
            ((= n 1) 'domingo)
            ((= n 2) 'lunes)
            ((= n 3) 'miercoles)
            ((= n 4) 'jueves)
            ((= n 5) 'viernes)
            ((= n 6) 'lunes)
            ((= n 7) 'sabado)))


; 36.* A un tanque le llega agua a través de una canilla, mientras que simultaneamente desagua a través de un sumidero. La capacidad del tanque es de T litros, por la canilla llegan C litros por minuto, y por el sumidero desaguan S litros por minuto. Inicialmente el tanque tiene L litros. Desarrollar una función que acepte los valores de T, C, S y L, y que calcule cuantos minutos tarda en llenarse o vaciarse el tanque.

(define (tanque T C S L)
     (if (= C S) #f
        (if (> C S)  
            (/ (- T L) (- C S))
            (/ L (- S C)))))     


; 37.* Función que acepta un número que representa un año, y devuelve T si ese año es bisiesto. Un año es bisiesto si es divisible por 4, pero no es divisible por 100, salvo que sea divisible por 400

; Teniendo definida la función múltiplo:

(define (bisiesto año)
         (cond ((multiplo 400 año) #t)
               ((and (multiplo 4 año)
                    (not (multiplo 100 año))) #t)
               (#t #f)))


; 38.* En el cálculo de raíces de la ecuación de segundo grado, visto anteriormente, se producirá un error si la expresión B ^ 2 - 4 * A * C da resultado negativo, porque en ese caso la ecuación tiene raíces imaginarias. Modificar la función para que evalúe la expresión, y en caso necesario, devuelva el cartel : "Raíces imaginarias". 

; para el cálculo del determinante:

(define (det a b c) (- (* b b) (* 4 a c)))

(define (raices a b c)
 (if (< (det a b c) 0) '"raices imaginarias"
  (list (/ (+ (* -1 b) (sqrt (det a b c))) (* 2 a))                  (/ (- (* -1 b) (sqrt (det a b c))) (* 2 a)))))      


; 39.* Definir una función que acepte una hora dada en horas, minutos y segundos, y devuelva una lista con las horas, minutos y segundos que serán un segundo mas tarde.

(define (siguiente h m s) 
(cond
      ((< s 59) (list h m (+ s 1)))
       (#t (cond ((< m 59) (list h (+ m 1) 0))
                 (#t (cond ((< h 23) (list (+ h 1) 0 0))
                          (#t (list 0 0 0))))))))


; 39.* Un vendedor cobra una comisión del 3 % sobre sus ventas, pero si vendió mas de $1000.- recibe un 1 % más, además de un premio fijo de $200.-; preparar una función que acepte el total vendido, y devuelva la comisión a cobrar.

(define (comision v)
    (if (> v 1000) (+ (/ (* 4 v) 100) 200)
                   (/ (* 3 v) 100)))  


;40.* Dos vendedores cobran 3 % de comisión sobre sus ventas. Además el que mas vendió recibe una comisión extra del 1 %. Construir una función que acepte los montos vendidos y que devuelva las comisiones a cobrar por cada uno.

(define (comisiones v1 v2)
    (if (> v1 v2) (list (/ (* 4 v1) 100) (/ (* 3 v2) 100))
                  (list (/ (* 4 v2) 100) (/ (* 3 v1) 100))))
                 

; 41.* Modificar la función anterior para que las ventas puedan ser iguales, en cuyo caso los dos vendedores cobran una comisión del 3%.

(define (comisiones2 v1 v2)
  (if (= v1 v2) (list (/ (* 3 v1) 100) (/ (* 3 v2) 100))
   (if (> v1 v2) (list (/ (* 4 v1) 100) (/ (* 3 v2) 100))
                 (list (/ (* 4 v2) 100) (/ (* 3 v1) 100)))))
 

; 42.* Funciones calendario: la cantidad de días transcurridos entre dos fechas puede calcularse transformándolas en días Julianos. Esta es una convención astronómica que representa cada fecha como el número de días transcurridos desde el 1 de enero de 4713 AC. Para transformar una fecha expresada como DIA, MES y AÑO en dias Julianos se usa la siguiente fórmula:
; DJ = ENT (365.25 * AP) + ENT (30.6001 * MP) + DIA + 1720982
; donde DJ es el día Juliano, y AP y MP son dos constantes que se obtienen como sigue:
;     Si MES = 1 ó 2:
;          AP = AÑO - 1
;          MP = MES + 13
;     Si MES > 2:
;          AP = AÑO
;          MP = MES + 1
;La cantidad de días entre dos fechas es igual a la diferencia entre los respectivos días Julianos:
;días = (día Juliano 2) - (día Juliano 1)
;Preparar una función que acepte una fecha como DIA, MES, y AÑO y devuelva el dia juliano correspondiente.

(define (ap mes año)
        (if (< mes 3) (- año 1) año))
(define (mp mes año)
        (if (< mes 3) (+ mes 13) (+ mes 1)))
(define (juliano dia mes año)
        (+ (truncate (* 365.25 (ap mes año)))
           (truncate (* 30.6001 (mp mes año)))
           dia 1720982))


;43.* Preparar una función que acepte dos fechas como DIA1, MES1, AÑO1, y DIA2, MES2, AÑO2 respectivamente, y devuelva la cantidad de días transcurridos entre ambas.

(define (dias dia1 mes1 año1 dia2 mes2 año2)
       (- (juliano dia2 mes2 año2)
          (juliano dia1 mes1 año1)))


;44.* Definir una función que acepte un día juliano y devuelva una lista (día mes año) con la fecha correspondiente.
; Las siguientes son fórmulas que pueden aplicarse:
; Primero calculamos las variables auxiliares diap, app y mpp:
; DIAP = DJ - 1720982
; APP = ENT ( (DIAP - 122.1) / 365.25)
; MPP = ENT ((DIAP - ENT(365.25 * APP)) / 30.6001)
;Para calcular el día
; DIA = DIAP - ENT(365.25 * APP) - ENT(30.6001 * MPP)
; Para calcular el mes
; Si MPP = 14 ó 15:
;         MES = MPP - 13
; Si MPP < 14:
;        MES = MPP - 1
; Para calcular el año
; Si MES > 2:
;         AÑO = APP
;
; Si MES = 1 ó 2:
;         AÑO = APP + 1
; R:
; Cálculo de las variables auxiliares diap, app y mpp
;
(define (diap dj) (- dj 1720982))

(define (app dj) (truncate (/ (- (diap dj) 122.1) 365.25)))

(define (mpp dj) 
  (truncate (/ (- (diap dj) (* (app dj) 365.25)) 30.6001)))

; Cálculo del día

(define (dia dj) (- (diap dj) 
                   (truncate (* 365.25 (app dj)))
                   (truncate (* 30.6001 (mpp dj)))))

; Cálculo del mes:

(define (mes dj) (if (< (mpp dj) 14) (- (mpp dj) 1)
                                    (- (mpp dj) 13)))

; Cálculo del año:

(define (año dj) (if (> (mes dj) 2) (app dj) 
                                   (+ (app dj) 1)))
; Con lo cual la fecha es:

(define (fecha dj) (list (dia dj) (mes dj) (año dj)))

;MPP = ENT ((DIAP - ENT(365.25 * APP)) / 30.6001)
(define (mpp2 J)

    (exact-round (/ (- (diap J) (exact-round (* 365.25 (app J)))) 30.6001))
)

; 45.* Definir una función que acepte un día juliano y devuelva el día de la semana. Las fórmulas  son:

; DS = 7 * FRAC ( (DIAP + 5) / 7)

; donde DS = 0  ---->  domingo
;      DS = 1  ---->  lunes
;      .....
;      DS = 6  ---->  sábado

(define (ds dj) (* 7 (modulo (/ (+ (diap dj) 5) 7))))

(define (diadelasemana dj)
      (cond ((> (ds dj) 6) #f)
            ((= (ds dj) 0) 'domingo)
            ((= (ds dj) 1) 'lunes)
            ((= (ds dj) 2) 'martes)
            ((= (ds dj) 3) 'miércoles)
            ((= (ds dj) 4) 'jueves)
            ((= (ds dj) 5) 'viernes)
            ((= (ds dj) 6) 'sabado)))

; 46.* Definir una función que acepte una fecha y una cantidad "n" de días, y devuelva una lista con la fecha que será "n" días mas adelante.

(define (fechafutura d1 m1 a1 n)
      (fecha (+ n (juliano d1 m1 a1))))

