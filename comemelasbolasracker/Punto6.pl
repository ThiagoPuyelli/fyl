/*Predicado unario que es verdadero cuando su sujeto es una lista numérica ordenada en forma creciente.
?- ordenada([3, 6, 8]).
 	YES
?- ordenada([6, 3, 8]).
 	FAIL*/



/*ordenada([Cab | Cola]) :-
    verificar([Cab | Cola], Cab).

verificar([Cab | Cola], Num) :-
    SigNum is Cab,
    verificar(Cola, SigNum),
    Cab >= SigNum.
*/

%VALEN

/*ordenada([]).
ordenada([X]).
ordenada([X,Y|L]) :- X =< Y, ordenada([Y|L]).*/

ordenada([]).
ordenada([_]).

ordenada([ElementoActual, ElementoSiguiente | ElementosRestantes]) :-
    ordenada([ElementoSiguiente | ElementosRestantes]),
    ElementoActual =< ElementoSiguiente.