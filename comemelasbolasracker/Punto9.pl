/*Predicado que relaciona dos listas con una tercera, formada con los elementos de ambas.
?- concatenadas([d, a, b], [m, k, f, r, d, a], X).
X = [d, a, b, m, k, f, r, d, a]
*/

concatenadas([], L, L).

concatenadas([Cab | Cola], L2, [Cab | Cola2]) :-
    concatenadas(Cola, L2, Cola2).