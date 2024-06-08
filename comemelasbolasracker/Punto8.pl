/*Predicado cuyos sujetos son dos listas, y que es verdadero cuando la primera lista es un 
subconjunto de la segunda.
 
?- subconjunto([d, a, b], [m, b, f, r, d, a]).
YES
?- subconjunto([d, a, b], [m, k, f, r, d, a]).
FAIL
*/

/*subconjunto([Cab | Cola], Conjunto) :-
    Cant is 0,
    comprobar(Cab, Conjunto, Cant),
    Cant \== 0,
    subconjunto(Cola, Conjunto).

comprobar(Num, [Cab | Cola], Cant) :-
    Num = Cab,
    Suma is Cant + 1,
    comprobar(Num, Cola, Suma),
    Suma > 0.

comprobar(Num, [Cab | Cola], Cant) :-
    Num \== Cab,
    comprobar(Num, Cola, Cant).*/

subconjuntos([],X).

subconjuntos([Cabeza| Cola],Lista):-
  comprobar(Cabeza,Lista),
  subconjuntos(Cola,Lista).

comprobar(X,[X]).
comprobar(X,[X|_]).
comprobar(X,[Cabeza| Cola]):-  % recorro la lista .
    comprobar(X,Cola).