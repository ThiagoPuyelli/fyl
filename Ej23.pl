/*Escribir una regla para "cuñado_de" dada una base como:
esposos(ana, luis).
...
hermanos(maria, juan).
*/
/*Con la misma base anterior definir "concuñado_de".*/

esposos(ana, luis).
esposos(maria, juan).
hermanos(luis, juan).



cunado_de(X, Y) :- esposos(X, Z), hermanos(Z, Y).
cuando_de(X, Y) :- esposos(Z, X), hermanos(Z, Y).
concunado(X, Y) :- esposos(X,Z), esposos(Y, W), hermanos(Z,W).
concunado(X, Y) :- esposos(Z,X), esposos(W, Y), hermanos(Z,W).

/*concuñado_de(X, Y) :- esposos(X, Z), esposos(Z, W), hermanos(W, Y).
concuñado_de(X, Y) :- esposos(X, Z), esposos(Z, W), hermanos(Y, W).
concuñado_de(X, Y) :- esposos(W, X), esposos(Z, W), hermanos(Y, Z).
concuñado_de(X, Y) :- esposos(W, X), esposos(Z, W), hermanos(Z, Y). CHATGPT ME TIRO ESTO, CUIDADO*/
