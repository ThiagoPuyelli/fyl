/*Potencia con exponente natural: 
Escribir la regla de un predicado que vincule un número base y otro exponente con la correspondiente potencia.*/

potenciaNatural(N, 0, 1).

potenciaNatural(N, E, R) :-
    Expo is E - 1,
    potenciaNatural(N, Expo, P),
    R is N * P.