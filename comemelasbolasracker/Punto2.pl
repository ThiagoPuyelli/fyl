/*Predicado que vincula una lista de números enteros, con la cantidad de números naturales que contiene.
?- naturales([6, -7, -4, 3, 2, 8], X).
 	X = 4*/
naturales([], 0).

naturales([Cab | Cola], X) :-
    naturales(Cola, Resultado),
    Cab >= 0,
    X is Resultado + 1.

naturales([Cab | Cola], X) :-
    naturales(Cola, X),
    Cab < 0.

