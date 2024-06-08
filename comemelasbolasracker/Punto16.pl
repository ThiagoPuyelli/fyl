/*Predicado que relaciona una lista L1 y un número N, con otra lista L2, con los elementos de L1 
menos los primeros N.
?- menosn(4, [a, b, c, d, e, f, g, h, i, j], X).
X = [e, f, g, h, i, j]
*/

menosn(0, L, L).

menosn(N, [Cab | Cola], X) :- 
    N > 0,
    NewN is N - 1,
    menosn(NewN, Cola, X).
