/* Ejercicio 3
Escriba un programa recursivo en Prolog que resuelva el siguiente problema: 
Se desea realizar una función que reciba un parámetro n y un parámetro p, y 
calcule el n-ésimo término de Fibonacci, 
sumando los dos términos anteriores, si p es cero, y un Fibonacci modificado, que sume los 3 
términos anteriores, 
si p es 1. 

fibmod(n, p) = 1                                                               si n = 0, p = 0
                        1                                                              si n = 0, p = 1
                        1                                                              si n = 1, p = 0
                        1                                                              si n = 1, p = 1
                        1                                                              si n = 2, p = 1
                        fibmod(n-1)+fibmod(n-2)                         si n > 1, p = 0
                        fibmod(n-1)+fibmod(n-2)+fibmod(n-3)    si n > 2, p = 1
*/

fibomod(0,0,1).
fibomod(0,1,1).
fibomod(1,0,1).
fibomod(1,1,1).
fibomod(2,1,1).
fibomod(N,0,Fibo):-	
	N>1,
	N1 is N-1,
	N2 is N-2,
	fibomod(N1,0,Fibo1),
	fibomod(N2,0,Fibo2),
	Fibo is Fibo1+Fibo2.
	
fibomod(N,1,Fibo):-
	N>2,
	N1 is N-1,
	N2 is N-2,
	N3 is N-3,	
	fibomod(N1,1,Fibo1),
	fibomod(N2,1,Fibo2),
	fibomod(N3,1,Fibo3),
	Fibo is Fibo1+Fibo2+Fibo3.

