
borrar(Elemento, [Elemento | Cola], Cola2).

borrar(Elemento, [Cab | Cola], [Cab2 | Cola2]) :-
    Elemento \= Cab,
    borrar(Elemento, Cola, Cola2).

borrar(_, [], []).
