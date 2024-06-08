/*Construir una regla para definir un predicado que 
vincule a X, y los coeficientes A, B y C del polinomio: P(x) = Ax^2 + Bx + C, y el valor del polinomio.*/

polinomio(X, A, B, C, Valor) :-
    Grado2 is A * (X^2),
    Grado1 is B * X,
    Valor is Grado2 + Grado1 + C.

    