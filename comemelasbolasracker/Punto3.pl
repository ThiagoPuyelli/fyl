/*Predicado que relaciona una lista de temperaturas con la cantidad de temperaturas que se 
encuentran entre los 10º y los 20º.
?- cantidadBajoCero([15, 20, -2, -3, 14, 32], X).
 	X = 2*/

cantidadBajoCero([], 0).

cantidadBajoCero([Cab | Cola], X) :-
    cantidadBajoCero(Cola, Resultado),
    Cab >= 10,
    Cab =< 20,
    X is Resultado + 1.


cantidadBajoCero([Cab | Cola], X) :-
    cantidadBajoCero(Cola, X),
    Cab < 10.

cantidadBajoCero([Cab | Cola], X) :-
    cantidadBajoCero(Cola, X),
    Cab > 20.