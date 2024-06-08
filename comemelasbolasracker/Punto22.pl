/*Predicado que relaciona una lista numérica L1, con otra L2, con los mismos elementos que L1, 
pero con el mayor de ellos en el último lugar.
?- ultimayo([6, 8, 12, 3, 7, 4, 9, 5], X).
X = [6, 8, 3, 7, 4, 9, 5, 12]*/

concatena([], L, L).

concatena([Cab | Cola], L2, [Cab2 | Cola2]) :-
    concatena(Cola, L2, Cola2).

conseguirMayor([Cab | Cola], M) :-
    Cab > M,
    conseguirMayor(Cola, Cab).

conseguirMayor([_|Cola], M) :-
    conseguirMayor(Cola, M).

meterAlFinal([], M) :-
    meterAlFinal([M], M).

meterAlFinal([Cab | Cola], M) :-
    Cab =:= M,
    meterAlFinal(Cola, M).

meterAlFinal([Cab | Cola], M) :-
    Cab = M.
