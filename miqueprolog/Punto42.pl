/*La sucesión de Leonardo de Pisa (Fibonacci) Resolver el problema de encontrar el 
enésimo término de la sucesión de Fibonacci.*/

fibonacci(0, 0).
fibonacci(1, 1).

fibonacci(Numero, Resultado) :-
    Numero > 1,
    Total is 0,
    calcular(Numero, Total, Final),
    Resultado is Total.     

calcular(Numero, Total, Final) :-
    Numero > 0,
    Sum is Total + Numero,
    NumMenos is Numero - 1,
    calcular(NumMenos, Sum, Final),
    Final is Total.