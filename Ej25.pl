/*En un grupo de tres personas hay dos mellizos, el restante es mucho más viejo. Preparar un predicado que relacione 
las tres edades con la edad de los mellizos.*/

mellizos(M1, M2, V) :- M1 = M2, M1 < V.
mellizos(M1, V, M2) :- M1 = M2, M1 < V.
mellizos(V, M1, M2) :- M1 = M2, M1 < V.

edades(E1, E2, E3) :- E1 = E2, dif(E1, E3), E1 < E3.
edades(E1, E2, E3) :- E1 = E2, dif(E1, E3), E3 < E1.
edades(E1, E2, E3) :- E1 = E3, dif(E1, E2), E1 < E2.
edades(E1, E2, E3) :- E1 = E3, dif(E1, E2), E2 < E1.
edades(E1, E2, E3) :- E2 = E3, dif(E2, E1), E2 < E1.
edades(E1, E2, E3) :- E2 = E3, dif(E2, E1), E1 < E2.




