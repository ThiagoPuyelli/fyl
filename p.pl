/*Una empresa de ventas paga a sus empleados un salario fijo de 800 pesos, más una comisión de $50 por cada venta realizada, 
más el 8% sobre el monto total de ventas. Escribir la regla de un predicado ternario que vincule la cantidad de ventas, 
con el monto total de ventas y el sueldo del vendedor.*/

salario(CantVentas, MontoVentas, Total) :-
    Ventas is CantVentas * 50,
    Monto is MontoVentas * 0.08,
    Total is 800 + Ventas + Monto.

/*Construir una regla para definir un predicado que 
vincule a X, y los coeficientes A, B y C del polinomio: P(x) = Ax^2 + Bx + C, y el valor del polinomio.*/

polinomio(X, A, B, C, Poli) :-
    Poli is ((X^2)*A) + (X*B) + C.

/*Definir un predicado unario "par" que es verdadero cuando su único sujeto es un número par.*/

esPar(X) :-
    N is X mod 2,
    N = 0.

/* Definir un predicado binario "paridad" que relaciona un número con la palabra 
"par" si el número es par, o con la palabra "impar" de otro modo.*/

paridad(X, par) :-
    N is X mod 2,
    N = 0.

paridad(X, impar) :-
    N is X mod 2,
    N = 1.

/*Preparar un predicado binario que sea verdadero cuando sus dos sujetos sean números tales que el 
primero es múltiplo del segundo.*/

esMultiplo(X, Y) :-
    N is X mod Y,
    N = 0.

/*Un vendedor cobra una comisión del 3% sobre sus ventas, pero si vendió más de $50000 recibe 
un 1% más, además de un premio fijo de $1200. Preparar un predicado que relacione el total vendido con la comisión a cobrar.*/

sueldo(Ventas, Comision) :-
    Ventas > 50000,
    Comision is (Ventas * 0.04) + 1200.

sueldo(Ventas, Comision) :-
    Ventas =< 50000,
    Comision is (Ventas * 0.03).

/*El factorial
Definición recursiva

  	| 1       		si N = 0
    N! = 	|
 	| N*(N-1)!	de otro modo*/

esFactorial(1, 0).
esFactorial(Fact, N) :-
    N > 0,
    M is N - 1,
    esFactorial(FactM, M),
    Fact is N * FactM.

/*Potencia con exponente natural: Escribir la regla de un predicado que vincule un número base y 
otro exponente con la correspondiente potencia.*/

/*potencia(Base, 0, 1).
potencia(Base, Exponente, Potencia) :-
    Expo is Exponente - 1,
    potencia(Base, Expo, Pote),
    Potencia is Base * Pote.*/

/*La sucesión de Leonardo de Pisa (Fibonacci) Resolver el problema de encontrar el enésimo término de la sucesión de Fibonacci.*/

fibo(0,0).
fibo(1,1).

fibo(T, F) :-
    T > 1,
    T1 is T - 1,
    T2 is T - 2,
    fibo(T1, F1),
    fibo(T2, F2),
    F is F1 + F2.

/*Un número es divisible por 7 cuando separando la primera cifra de la derecha, multiplicándola por 2, restando 
este producto de lo que queda a la izquierda y así sucesivamente, da cero o múltiplo de 7.
Por ejemplo, los siguientes números son divisibles entre 7, porque:3
32291 			última cifra 1 -> 1x2=2 	
3229-2 = 3227 	última cifra 7 -> 7x2=14 	
322-14 = 308 		última cifra 8 -> 8x2=16 
30-16 = 14 		resultado parcial 14. 
Como 14 pertenece a la tabla del 7 (7x1 … 7x10) el número original es divisible por 7.
Generar un algoritmo que decida si un número dado es múltiplo de 7 o no, utilizando este método*/

esDivisiblePor7(N) :-
    N =< 70,
    N1 is N mod 7,
    N1 = 0.

esDivisiblePor7(N) :-
    N > 70,
    C is N mod 10,
    P is C * 2,
    N1 is N // 10,
    R is N1 - P,
    esDivisiblePor7(R).

/*Una empresa tiene 5 gerentes, 23 empleados administrativos y 7 ordenanzas. 
Preparar un predicado que vincule el sueldo de cada categoría con el total que la empresa debe pagar a fin de mes.*/

aPagar(Ger, Adm, Ord, Total) :-
    TotGer is Ger * 5,
    TotAdm is Adm * 23,
    TotOrd is Ord * 7,
    Total is TotAdm + TotGer + TotOrd.