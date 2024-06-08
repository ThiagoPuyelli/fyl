/*Dada una base como:
perro(colita).
humano(juan).
…
Escribir una regla para escribir en Prolog: "los perros, los gatos y los humanos son mortales".
*/

esGato(garfield).
esHumano(george).
esPerro(colita).


esMortal(X) :- esGato(X).
esMortal(X) :- esHumano(X).
esMortal(X) :- esPerro(X).





