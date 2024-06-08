/*Resolver el problema de encontrar el MCD entre dos números, sabiendo que, si los números son iguales, 
el MCD es el mismo número, en otro caso el MCD es igual al MCD entre el menor de ellos y la diferencia entre ambos.*/

mcd(N, N, N).

mcd(N, M, MCD) :-
    N > M,
    Dife is N - M,
    mcd(Dife, M, MCD).

mcd(N, M, MCD) :-
    N < M,
    Dife is M - N,
    mcd(Dife, N, MCD).


