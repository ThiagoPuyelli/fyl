suma([], 0).

suma(Lista, R) :-
    calcular(Lista, SI, SP),
    SI >= SP,
    R is SI.

suma(Lista, R) :-
    calcular(Lista, SI, SP),
    SP > SI,
    R is SP.

calcular([], 0, 0).

calcular([Cab | Cola], SI, SP) :-
    Cab mod 2 =:= 0,
    calcular(Cola, SI, SumaP),
    SP is Cab + SumaP.

calcular([Cab | Cola], SI, SP) :-
    Cab mod 2 =:= 1,
    calcular(Cola, SumaI, SP),
    SI is Cab + SumaI.