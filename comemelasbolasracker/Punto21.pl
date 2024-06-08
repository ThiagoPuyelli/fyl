/*Predicado que relaciona una lista numérica con el menor de sus elementos.
?- menor([6, 8, 2, 3, 7, 4, 9, 5], X).
X = 2
*/
menor([Cab|Cola], Menor) :-
    calcularMenor(Cola, Cab, Menor).

calcularMenor([], Menor, Menor).
calcularMenor([Cab|Cola], MenorActual, Menor) :-
    Cab < MenorActual,
    calcularMenor(Cola, Cab, Menor).
calcularMenor([_|Cola], MenorActual, Menor) :-
    calcularMenor(Cola, MenorActual, Menor).