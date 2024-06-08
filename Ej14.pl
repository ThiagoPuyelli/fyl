/*Una empresa tiene 5 gerentes, 23 empleados administrativos y 
7 ordenanzas. Preparar un predicado que vincule el sueldo de cada categoría con el total que la empresa debe pagar a fin de mes.*/

totalSueldos(Gerentes, EmpAdm, Ordenanzas, Total) :-
    SueldoGerentes is Gerentes * 5,
    SueldoAdministrativos is EmpAdm * 23,
    SueldoOrdenanzas is Ordenanzas * 7,
    Total is SueldoGerentes + SueldoAdministrativos + SueldoOrdenanzas.

total_pago_empresa(SueldoGerente, SueldoAdministrativo, SueldoOrdenanza, Total) :-
    CantidadGerentes is 5,
    CantidadAdministrativos is 23,
    CantidadOrdenanzas is 7,
    Total is (SueldoGerente * CantidadGerentes) + (SueldoAdministrativo * CantidadAdministrativos) + (SueldoOrdenanza * CantidadOrdenanzas).