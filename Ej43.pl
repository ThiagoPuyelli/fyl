/*Definir un predicado recursivo que sea verdadero cuando su argumento es un número primo.*/

esPrimo(2).

esPrimo(N) :-
    N > 1,
    M is N - 1,
    esPrimoAux(N, M).

/*CASO BASE -> CUANDO M LLEGA A 2 VERIFICA SI EL MOD ES DIFERENTE DE 0. SI LO ES, N ES IMPAR, POR TANTO, ES PRIMO*/
esPrimoAux(N, 2) :-
    N mod 2 =\= 0.

esPrimoAux(N, M) :-
    M > 1,
    N mod M =\= 0,
    M1 is M - 1,
    esPrimoAux(N, M1).

