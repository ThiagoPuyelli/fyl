/*La cantidad de días transcurridos entre dos fechas puede calcularse transformándolos en días Julianos. 
Esta es una convención astronómica que representa cada fecha como el número de días transcurridos desde el 1 de enero de 4173 AC. 
Para transformar una fecha expresada como DIA, MES, AÑO en días Julianos se usa la siguiente fórmula:
  
   DJ = ENT( 365.25 * AP) + ENT( 30.6001 * MP ) + DIA + 1720982
   Donde DJ es el día Juliano, y AP y MP son dos números que se obtienen como sigue:
   
   Para MES 1 o 2 :
                AP = AÑO - 1
                MP = MES + 13
   
   Para MES > 2:
                AP = AÑO
               	MP = MES + 1
 
    	Preparar un predicado que vincule una fecha dada como Dia, Mes y Año con el correspondiente día juliano*/

diasJulianos(Dia, Mes, Anio, DJ) :-
    Mes < 3,
        Ap is Anio - 1,
        Mp is Mes + 13,
        A is floor(365.25 * Ap),
        B is floor(30.6001 * Mp),
        DJ is ( A + B + Dia + 1720982).

diasJulianos(Dia, Mes, Anio, DJ) :-
    Mes > 2,
        Ap is Anio,
        Mp is Mes + 1,
        A is floor(365.25 * Ap),
        B is floor(30.6001 * Mp),
        DJ is ( A + B + Dia + 1720982 - 1).

/*La cantidad de días entre dos fechas es igual a la diferencia entre los respectivos días julianos. 
Preparar un predicado que relacione dos fechas con la cantidad de días transcurridos entre ambas.*/
/*Asumo que la fecha 1 es menor asi no me vuelvo loco*/

diferenciaJulianos(Dia1, Mes1, Anio1, Dia2, Mes2, Anio2, Diferencia) :-
    diasJulianos(Dia1, Mes1, Anio1, DJ1),
    diasJulianos(Dia2, Mes2, Anio2, DJ2),
    DJ1 > DJ2,
    Diferencia is DJ1 - DJ2.

diferenciaJulianos(Dia1, Mes1, Anio1, Dia2, Mes2, Anio2, Diferencia) :-
    diasJulianos(Dia1, Mes1, Anio1, DJ1),
    diasJulianos(Dia2, Mes2, Anio2, DJ2),
    DJ1 < DJ2,
    Diferencia is DJ2 - DJ1.

diferenciaJulianos(Dia1, Mes1, Anio1, Dia2, Mes2, Anio2, Diferencia) :-
    diasJulianos(Dia1, Mes1, Anio1, DJ1),
    diasJulianos(Dia2, Mes2, Anio2, DJ2),
    DJ1 = DJ2,
    Diferencia is 0.  

