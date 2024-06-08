enesimo(1, [Cab|Cola],X) :-
    X is Cab.

enesimo(N, [Cab | Cola], X) :-
    N > 1,
    NE is N - 1,
    enesimo(NE, Cola, X).