/*Definir un predicado que relacione una temperatura expresada en grados Celsius con la misma 
temperatura expresada en grados Fahrenheit. 
Recordamos que F = (9/5) * C + 32*/

celAFah(Celsius, Fahrenheit) :-
    Fahrenheit is (9/5) * Celsius + 32.
