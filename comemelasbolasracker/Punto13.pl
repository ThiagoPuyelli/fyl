/*Predicado que relaciona dos átomos A y B, y dos listas C y D, tal que D es igual a C, 
pero con el átomo A sustituido por el B, en su primera ocurrencia.
?- sustituida1(d, m, [a, b, c, d, e, f, g, h, i, j], X).
X = [a, b, c, m, e, f, g, h, i, j]
*/

sustituida1(_, _, [], []).

sustituida1(D, M, [D | Cola], [M | Lista]) :-
    sustituida1(D, M, Cola, Lista).

sustituida1(D, M, [Cab | Cola], [Cab | Lista]) :-
    Cab \= D,
    sustituida1(D, M, Cola, Lista).


/*sustituida1(_, _, [], []).
sustituida1(D, M, [D | Cola], [M | Cola]) :- !.
sustituida1(D, M, [Cab | Cola], [Cab | Lista]) :-
    sustituida1(D, M, Cola, Lista).*/