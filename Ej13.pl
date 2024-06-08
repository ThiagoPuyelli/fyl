/*Definir un predicado que vincule las notas de cuatro parciales con la nota promedio.*/

notaPromedio(N1, N2, N3, N4, Prom) :-
    Prom is (N1 + N2 + N3 + N4)/4.