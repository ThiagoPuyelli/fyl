/*Predicado que relaciona una lista cualquiera con el elemento que se encuentra en el último lugar.
?- ultimo([a, b, c, r, f, h], X).
 	X = h*/


ultimo([Cab], Cab).

ultimo([Cab | Cola], X) :-
    ultimo(Cola, X).
