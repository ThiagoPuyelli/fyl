/*Predicado que relaciona una lista L1 con otra lista L2, con los mismos elementos que L1, 
pero rotados un lugar a la izquierda.
?- rotada1([a, b, c, d], X).
X = [b, c, d, a]
*/

concatenadas([], L, L).

concatenadas([Cab | Cola], L2, [Cab | Cola2]) :-
    concatenadas(Cola, L2, Cola2).

rotada1([Cab | Cola], X) :-
    concatenadas(Cola, [Cab], X).
