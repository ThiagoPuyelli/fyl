/*Definir un predicado ternario "mayor_o_igual" que relaciona dos números con el mayor de ambos, 
o con uno de ellos si son iguales.*/

mayor_o_igual(X, Y, X) :- X >= Y.
mayor_o_igual(X, Y, Y) :- Y > X.

