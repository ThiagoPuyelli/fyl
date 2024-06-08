menor([Cab | Cola], N) :-
    calcularMenor(Cola, Cab, N).

calcularMenor([], Menor, Menor).

calcularMenor([Cab | Cola], MenorHastaAhora, N) :-
    Cab < MenorHastaAhora,
    calcularMenor(Cola, Cab, N).

calcularMenor([Cab | Cola], MenorHastaAhora, N) :-
    Cab >= MenorHastaAhora,
    calcularMenor(Cola, MenorHastaAhora, N).