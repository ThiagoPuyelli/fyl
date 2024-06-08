%Dada la siguiente base de hechos:
% diasVacaciones(Empleado, Dias).
diasVacaciones(juan,20).
diasVacaciones(pedro,30).
diasVacaciones(carlos,15).
diasVacaciones(roberto,20).

%comienzoVacaciones(empleado,diaComienzoVacaciones, mesComienzoVacaciones).
comienzoVacaciones(pedro, 1, 2).
comienzoVacaciones(juan, 9, 1).
comienzoVacaciones(carlos, 20, 1).
comienzoVacaciones(roberto, 10, 2).

/*Escribir un predicado que relacione una fecha con el empleado que se encuentra de vacaciones. Por Ej.
?- enVacaciones(15,2, Empleado).
Empleado = pedro;
Empleado = roberto;
false.

?- enVacaciones(15,3, Empleado).
Empleado = nadie."*/

perteneceDia(Dia, Mes, DiaEmp, MesEmp, DiasEmp) :-
    Mes = MesEmp,
    Dia >= DiaEmp,
    DiasEmp + DiaEmp >= Dia.

perteneceDia(Dia, Mes, DiaEmp, MesEmp, DiasEmp) :-
    Mes = MesEmp + 1,
    DiasEmp + DiaEmp > 30,
    FechaFin is DiasEmp + DiasEmp - 30,
    FechaFin >= Dia.


enVacaciones(Dia, Mes, Empleado) :-
    comienzoVacaciones(Empleado, DiaEmp, MesEmp),
    diasVacaciones(Empleado, DiasEmp),
    perteneceDia(Dia, Mes, DiaEmp, MesEmp, DiasEmp).