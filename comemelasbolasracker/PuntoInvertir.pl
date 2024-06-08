invertir(Lista, Resultado) :-
    invertirLista(Lista, [], Resultado).

invertirLista([], Acumulador, Acumulador).
invertirLista([Cab|Cola], Acumulador, Resultado) :-
    invertirLista(Cola, [Cab|Acumulador], Resultado).