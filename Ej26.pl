/* Ej 26
En un grupo de tres personas hay un joven y dos viejos. 
Construir un predicado que relacione las tres edades con la edad del joven.
*/

edades(P1, P2, P3, P1):-P1 < P2, P1 < P3.
edades(P2, P1, P3, P1):-P1 < P2, P1 < P3.
edades(P2, P3, P1, P1):-P1 < P2, P1 < P3.