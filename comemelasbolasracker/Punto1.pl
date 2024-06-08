/*Predicado que relaciona una lista numérica de dos elementos con otra lista con esos dos 
elementos ordenados de menor a mayor.
?- acomodados( [5, 8], X).
 	X = [5, 8]
?- acomodados( [8, 5], X).
 	X = [5, 8]*/

ordenar([Primero | Segundo], [Primero | Segundo]) :-
    Primero < Segundo.

ordenar([Primero | Segundo], [Segundo | Primero]) :-
    Primero >= Segundo.
