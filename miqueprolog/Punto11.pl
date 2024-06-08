/*Construir una regla para definir un predicado que vincule a X, y 
los coeficientes A, B y C del polinomio: P(x) = Ax^2 + Bx + C, y el valor del polinomio.*/

polinomio(X, A, B, C, Resultado) :-
    Resultado is A*X * A*X + B*X + C*X.