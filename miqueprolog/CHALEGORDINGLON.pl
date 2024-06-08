
concatenar([], L, L).

concatenar([Cabeza | Cola], L2, [Cabeza | ColaR]) :-
    concatenar(Cola, L2, ColaR).