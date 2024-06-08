/*El factorial
Definición recursiva

  	| 1       		si N = 0
    N! = 	|
 	| N*(N-1)!	de otro modo*/

%casoBase
esFactorial(1, 0).

%casoGeneral
esFactorial(Fact, N) :-
    M is N - 1,
    esFactorial(FactM, M),
    Fact is N * FactM.

    