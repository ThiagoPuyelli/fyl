/*Dada la siguiente base de hechos:
%partido(EquipoLocal, GolesEquipoLocal, EquipoVisitante, GolesEquipoVisitante).
partido(sacaChispasDeChocolate, 3, locosDelBalon, 2).
partido(sospechososDeNunca, 1, turcosEnLaNeblina, 5).

partido(turcosEnLaNeblina, 2, sacaChispasDeChocolate,2).
partido(locosDelBalon, 2, sospechososDeNunca, 0).
partido(sacaChispasDeChocolate, 2, sospechososDeNunca, 1).
partido(locosDelBalon, 2, turcosEnLaNeblina, 4).

a) Escribir un predicado que relacione a un equipo con los equipos que les haya hecho goles.
Por Ejemplo:
?- golesDeVisitante(sospechososDeNunca, Equipo).
Equipo = sacaChispasDeChocolate;
false.

b) Escribir un predicado que relaciones 1 equipo con los puntos que sacó en el partido frente a otro equipo.
Nota= El que gana se lleva 3 puntos, el empate da 1 punto a cada equipo y 0 para el perdedor
Por ejemplo:
%puntos(Equipo1,EquipoContrario, PuntosDelEquipo1).
?- puntos(sacaChispasDeChocolate, turcosEnLaNeblina,Puntos).
Puntos = 1.
?- puntos(sacaChispasDeChocolate, EquipoContrario, 3).
EquipoContrario = locosDelBalon;
EquipoContrario = sospechososDeNunca.

	c) Escribir un predicado que relacione a un equipo con los equipos le ganó.
Por Ejemplo:
?- leGano(turcosEnLaNeblina, Equipo).
Equipo = sospechososDeNunca;
Equipo = locosPorElBalon.
?- leGano(Equipo,turcosEnLaNeblina).
false.
Nota= Nadie le ganó a turcosEnLaNeblina

d) Escribir un predicado que relacione 2 equipos que hayan jugado un partido que terminó en empate.
Por Ejemplo:
?- empate(Local,Visitante).
Local = turcosEnLaNeblina,
Visitante = sacaChispasDeChocolate ;
false.
*/

/*%partido(EquipoLocal, GolesEquipoLocal, EquipoVisitante, GolesEquipoVisitante).*/
partido(sacaChispasDeChocolate, 3, locosDelBalon, 2).
partido(sospechososDeNunca, 1, turcosEnLaNeblina, 5).

partido(turcosEnLaNeblina, 2, sacaChispasDeChocolate,2).
partido(locosDelBalon, 2, sospechososDeNunca, 0).
partido(sacaChispasDeChocolate, 2, sospechososDeNunca, 1).
partido(locosDelBalon, 2, turcosEnLaNeblina, 4).

/*a) Escribir un predicado que relacione a un equipo con los equipos que les haya hecho goles.
Por Ejemplo:
?- golesDeVisitante(sospechososDeNunca, Equipo).
Equipo = sacaChispasDeChocolate;
false.*/

golesDeVisitante(Visitante, Equipo) :-
    partido(Equipo, GolesLocal, Visitante, GolesVisitante),
    GolesVisitante > 0.

/*b) Escribir un predicado que relaciones 1 equipo con los puntos que sacó en el partido frente a otro equipo.
Nota= El que gana se lleva 3 puntos, el empate da 1 punto a cada equipo y 0 para el perdedor
Por ejemplo:

puntos(Equipo1,EquipoContrario, PuntosDelEquipo1).
?- puntos(sacaChispasDeChocolate, turcosEnLaNeblina,Puntos).
Puntos = 1.
?- puntos(sacaChispasDeChocolate, EquipoContrario, 3).
EquipoContrario = locosDelBalon;
EquipoContrario = sospechososDeNunca.*/

puntos(Equipo1,EquipoContrario, PuntosDelEquipo1) :-
    partido(Equipo1, GolesEquipoLocal, EquipoContrario, GolesEquipoVisitante),
    GolesEquipoLocal > GolesEquipoVisitante, PuntosDelEquipo1 is 3.

puntos(Equipo1,EquipoContrario, PuntosDelEquipo1) :-
    partido(Equipo1, GolesEquipoLocal, EquipoContrario, GolesEquipoVisitante),
    GolesEquipoLocal = GolesEquipoVisitante, PuntosDelEquipo1 is 1.

puntos(Equipo1,EquipoContrario, PuntosDelEquipo1) :-
    partido(Equipo1, GolesEquipoLocal, EquipoContrario, GolesEquipoVisitante),
    GolesEquipoLocal < GolesEquipoVisitante, PuntosDelEquipo1 is 0.
    
/*puntos(Equipo1,EquipoContrario, PuntosDelEquipo2) :-
    partido(Equipo1, GolesEquipoLocal, EquipoContrario, GolesEquipoVisitante),
    GolesEquipoLocal < GolesEquipoVisitante, PuntosDelEquipo2 is 3.

puntos(Equipo1,EquipoContrario, PuntosDelEquipo2) :-
    partido(Equipo1, GolesEquipoLocal, EquipoContrario, GolesEquipoVisitante),
    GolesEquipoLocal = GolesEquipoVisitante, PuntosDelEquipo1 is 1.

puntos(Equipo1,EquipoContrario, PuntosDelEquipo2) :-
    partido(Equipo1, GolesEquipoLocal, EquipoContrario, GolesEquipoVisitante),
    GolesEquipoLocal > GolesEquipoVisitante, PuntosDelEquipo2 is 0.*/


/*c) Escribir un predicado que relacione a un equipo con los equipos le ganó.
Por Ejemplo:
?- leGano(turcosEnLaNeblina, Equipo).
Equipo = sospechososDeNunca;
Equipo = locosPorElBalon.
?- leGano(Equipo,turcosEnLaNeblina).
false.
Nota= Nadie le ganó a turcosEnLaNeblina*/

leGano(Ganador, Equipo) :-
    partido(Ganador, GolesEquipoLocal, Equipo, GolesEquipoVisitante),
    GolesEquipoLocal > GolesEquipoVisitante.

leGano(Ganador, Equipo) :-
    partido(Equipo, GolesEquipoLocal, Ganador, GolesEquipoVisitante),
    GolesEquipoLocal < GolesEquipoVisitante.

/*d) Escribir un predicado que relacione 2 equipos que hayan jugado un partido que terminó en empate.
Por Ejemplo:
?- empate(Local,Visitante).
Local = turcosEnLaNeblina,
Visitante = sacaChispasDeChocolate ;
false.*/

empate(Local,Visitante) :-
    partido(Local, GolesEquipoLocal, Visitante, GolesEquipoVisitante),
    GolesEquipoLocal = GolesEquipoVisitante.






