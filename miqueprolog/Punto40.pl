/*Potencia con exponente natural: Escribir la regla de un predicado que vincule 
un número base y otro exponente con la correspondiente potencia.*/

potencia(0, Exponente, Resultado) :-
    Resultado is 0.

potencia(Base, 1, Resultado) :-
    Resultado is Base.

potencia(Base, Exponente, Resultado) :-
    Exponente > 0,
    Base \== 0,
    Exponente \== 1,
    E is Exponente - 1,
    potencia(Base,E,Total),
    Resultado is Base * Total.
