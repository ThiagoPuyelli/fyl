/*Predicado que relaciona dos vectores de igual dimensión con su producto escalar. 
Las coordenadas de cada vector son elementos de una lista.
?- producto([2,1,3],[2,2,1],N).
N = 9
*/
producto([], [], 0).

producto([Cab1|Cola1], [Cab2|Cola2], N) :-
    producto(Cola1, Cola2, New),
    N is New + (Cab1 * Cab2).