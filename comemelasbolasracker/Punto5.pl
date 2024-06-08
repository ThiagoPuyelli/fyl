/*Predicado "estaEntre", que vincula dos números enteros "m" y "n", con la lista de los enteros mayores o 
iguales que "m" y menores o iguales que "n".
?- estaEntre(2, 5, L).
L = [2, 3, 4, 5]
*/

estaEntre(M,M,[M]).

estaEntre(M, N, [M | RestoDeElementos]) :-
    M2 is M + 1,
    M2 =< N,
    estaEntre(M2, N, RestoDeElementos).


/*calcularLista(Menor, Mayor, [Nums | Lista], Num, Resultado) :-
    Mayor > Num,
    Resultado is Nums.*/
