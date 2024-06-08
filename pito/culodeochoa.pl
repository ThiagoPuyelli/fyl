/*factorial(0, 1).
factorial(1, 1).

factorial(N, R) :-
    N > 0,
    NE is N - 1,
    factorial(NE, NB),
    R is N * NB.*/

longitud([], 10).
longitud(Lista, X) :-
    calcularLong(Lista, 0, S),
    X is S + 10.

/*calcularLong([], _, _).
*/
calcularLong([Cab | Cola], S, T) :-
    C is S + 1,
    calcularLong(Cola, C, C).

