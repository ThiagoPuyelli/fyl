/*Definir un predicado binario "paridad" que relaciona un número con la palabra "par" si el número es par, 
o con la palabra "impar" de otro modo.*/

paridad(Numero, par) :- (Numero mod 2) =:= 0.
paridad(Numero, impar) :- (Numero mod 2) =\= 0.