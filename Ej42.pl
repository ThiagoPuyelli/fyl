/*La sucesión de Leonardo de Pisa (Fibonacci) Resolver el problema de encontrar el enésimo término de la sucesión de Fibonacci.*/

fibo(0, 0).
fibo(1, 1).

fibo(Termino, Fibonacci) :-
    Termino > 1,
    T1 is Termino - 1,
    T2 is Termino - 2,
    fibo(T1, F1),
    fibo(T2, F2),
    Fibonacci is F1 + F2.
    
