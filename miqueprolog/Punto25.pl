/*En un grupo de tres personas hay dos mellizos, el restante es mucho más viejo. 
Preparar un predicado que relacione las tres edades con la edad de los mellizos.*/

mellizos(X, Y, Z) :- X = Y,Z > Y.
mellizos(X, Y, Z) :- Z = X,Y > Z.
mellizos(X, Y, Z) :- Z = Y,X > Y.

/*seCumple(X, Y, Z) :- mellizos(X, Y, Z).*/