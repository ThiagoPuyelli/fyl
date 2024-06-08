/*Un número es divisible por 7 cuando separando la primera cifra de la derecha, multiplicándola por 2, 
restando este producto de lo que queda a la izquierda y así sucesivamente, da cero o múltiplo de 7.
Por ejemplo, los siguientes números son divisibles entre 7, porque:3
32291 			última cifra 1 -> 1x2=2 	
3229-2 = 3227 	última cifra 7 -> 7x2=14 	
322-14 = 308 		última cifra 8 -> 8x2=16 
30-16 = 14 		resultado parcial 14. 
Como 14 pertenece a la tabla del 7 (7x1 … 7x10) el número original es divisible por 7.
Generar un algoritmo que decida si un número dado es múltiplo de 7 o no, utilizando este método
*/

multiplo_7(0).
multiplo_7(7).


multiplo_7(X):-
 X<0,
 Inverso is -X,
 multiplo_7(Inverso).


multiplo_7(X):-
 X>=10,
 UltimoDigito is X mod 10,
 NuevoValor is (X//10)-(UltimoDigito*2),
 multiplo_7(NuevoValor).