% 7) Un silogismo puede ser más complejo, incluyendo una cadena de inferencias, por
% ejemplo: "Colita es un perro, todos los perros son animales, todos los animales son
% mortales, por lo tanto, Colita es mortal". Escribir estas expresiones en Prolog.


esPerro(colita).

esAnimal(Y) :- esPerro(Y).
esMortal(X) :- esAnimal(X). 