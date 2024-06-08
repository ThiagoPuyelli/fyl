comisionACobrar(Comision, Ventas) :-
    Ventas > 50000,
    Comision is 
        Ventas * 4 / 100 + 1200.

comisionACobrar(Comision, Ventas) :-
    Ventas =< 50000,
    Comision is 
        Ventas * 3 / 100.

comisiones(5, 5000, 1000000).
comisiones(4, 1200, 50000).
comisiones(3, 0, 0).

comisionACobrarBis(Comision, Ventas) :-
    comisiones(Porcentaje, Premio, VentasMinimas),
    Ventas > VentasMinimas,
    Comision is
        Ventas * Porcentaje / 100 + Premio.