/*Escribir un predicado que relacione una hora dada en horas, minutos y segundos con la hora será un segundo después.
*/

tiempo(24, minutos, segundos).
tiempo(hora, 60, segundos).
tiempo(hora, minutos, 60).

esHora(Hora, Minutos, Segundos, HoraRes, MinRes, SegRes) :-
    SegRes is Segundos + 1,
    MinRes is Minutos + (SegRes // 60),
    HoraRes is Hora + (MinRes // 60),
    MinRes is MinRes mod 60,
    HoraRes is HoraRes mod 24,
    Segundos >= 60,
    SegRes is 0.



