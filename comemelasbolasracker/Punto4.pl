/*Predicado que vincula una lista numérica, con la suma de sus elementos.
?- suma([6, 7, 4, 3, 2, 8], X).
 	X = 30*/

sumaElementos([], 0).

sumaElementos([Cab | Cola], X) :-
    sumaElementos(Cola, Resultado),
    X is Resultado + Cab.
