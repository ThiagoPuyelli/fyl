/*Predicado que relaciona una lista L1 y un elemento A perteneciente a la misma, con otra lista L2, 
formada con los mismos elementos de L1, menos A.
?- menos1(d, [a, b, c, d, e, f, g, h, i, j], X).
X = [a, b, c, e, f, g, h, i, j]*/

menos1(C, [], []).

menos1(C, [C | Cola], L) :-
    menos1(C, Cola, L).

menos1(C, [Cab | Cola], [Cab | L]) :-
    menos1(C, Cola, L).
