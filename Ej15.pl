/*Un millonario excéntrico tenía tres hijos, Carlos, José y Marta. Al morir dejó el siguiente legado: 
"A José le dejó 4/3 de lo que le dejó a Carlos; a Carlos le dejó 1/3 de mi fortuna y a Marta le dejó 
la mitad de lo que le dejó a José". Preparar un predicado que vincule la suma a repartir con lo que le toca a cada uno.*/

aCadaUno(Fortuna,C, J, M) :-
    C is Fortuna / 3,
    J is C * 4/3,
    M is J / 2.

