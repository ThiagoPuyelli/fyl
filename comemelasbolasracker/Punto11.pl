/*
Predicado que relaciona una lista L1 con otra lista L2, con los mismos elementos que L1, 
pero rotados N lugares a la izquierda.
?- rotadan(4, [a, b, c, d, e, f, g, h, i, j], X).
X = [e, f, g, h, i, j, a, b, c, d]
*/

concatenadas([], L, L).

concatenadas([Cab | Cola], L2, [Cab | Cola2]) :-
    concatenadas(Cola, L2, Cola2).

rotada1([Cab | Cola], X) :-
    concatenadas(Cola, [Cab], X).    

rotadan(0, Lista,Lista).

rotadan(N, Lista, X) :-
    N > 0,
    rotada1(Lista, NuevaLista),
    NewNum is N - 1,
    rotadan(NewNum, NuevaLista, X).