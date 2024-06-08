/*Preparar un predicado binario que sea verdadero cuando sus dos sujetos sean números tales que el primero es múltiplo del segundo.*/

/*Completar el predicado anterior para que sea verdadero si cualquiera de los números es múltiplo del otro.*/

multiplo(N1, N2) :- N1 mod N2 =:= 0.
multiplo(N2, N1) :- N1 mod N2 =:= 0.

/*multiplo(X, Y) :-
   0 is X mod Y.*/

