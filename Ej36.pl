/*Dada la siguiente base de hechos:
% diasVacaciones(Empleado, Dias).

diasVacaciones(juan,20).
diasVacaciones(pedro,30).
diasVacaciones(carlos,15).
diasVacaciones(roberto,20).

%comienzoVacaciones(empleado,diaComienzoVacaciones, mesComienzoVacaciones).

comienzoVacaciones(juan, 9, 1).
comienzoVacaciones(pedro, 1, 2).
comienzoVacaciones(carlos, 20, 1).
comienzoVacaciones(roberto, 10, 2).

Escribir un predicado que relacione una fecha con el empleado que se encuentra de vacaciones. Por Ej.
?- enVacaciones(15,2, Empleado).
Empleado = pedro;
Empleado = roberto;
false.

?- enVacaciones(15,3, Empleado).
Empleado = nadie."
*/

diasVacaciones(juan,20).
diasVacaciones(pedro,30).
diasVacaciones(carlos,15).
diasVacaciones(roberto,20).

comienzoVacaciones(juan, 9, 1).
comienzoVacaciones(pedro, 1, 2).
comienzoVacaciones(carlos, 20, 1).
comienzoVacaciones(roberto, 10, 2).

enVacaciones(Dia, Mes, Empleado) :-
    (diasVacaciones(Empleado, DiasVacas),
    comienzoVacaciones(Empleado, DiaComienzo, MesComienzo),
    
    DiaComienzo =< Dia, Dia < DiaComienzo + DiasVacas, Mes = MesComienzo ; Empleado = nadie).



