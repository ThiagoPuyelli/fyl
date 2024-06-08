/*Dados los siguientes datos sobre jugadores de basket:
cantidad_de_dobles(juan, 15).
...
cantidad_de_triples(jose, 5).
...
cantidad_de_infracciones(juan, 6).
...
 
que representan la cantidad de dobles, triples e infracciones de los jugadores a lo largo del campeonato, se requiere un 
predicado que relacione el nombre de un jugador con alguna de las siguientes categorías:
Posible NBA, cuando el jugador hizo al menos 10 triples, 30 dobles y cometió menos de 5 infracciones.

Bueno, cuando el jugador hizo al menos 20 dobles y cometió menos de 8 infracciones.

Regular, cuando el jugador hizo al menos 10 dobles y cometió menos de 12 infracciones.

Desastroso, cuando el jugador hizo menos de 10 dobles y cometió 12 o más infracciones.
*/

cantidad_de_infracciones(juan,4).
cantidad_de_triples(juan, 21).
cantidad_de_dobles(juan, 30).

categoria(Nombre, 'PosibleNBA') :-
    cantidad_de_dobles(Nombre, Dobles),
    cantidad_de_infracciones(Nombre, Faltas),
    cantidad_de_triples(Nombre, Triples),
    Triples >= 10, Dobles >= 30, Faltas < 5.

categoria(Nombre, 'Bueno') :-
    cantidad_de_dobles(Nombre, Dobles),
    cantidad_de_infracciones(Nombre, Faltas),
    Dobles >= 20, Faltas < 8. 

categoria(Nombre, 'Regular') :-
    cantidad_de_dobles(Nombre, Dobles),
    cantidad_de_infracciones(Nombre, Faltas),
    Dobles >= 10, Faltas < 12. 

categoria(Nombre, 'Desastroso') :-
    cantidad_de_dobles(Nombre, Dobles),
    cantidad_de_infracciones(Nombre, Faltas),
    Dobles < 10, Faltas >= 12.