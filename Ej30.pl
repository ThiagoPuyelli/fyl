/*Un vendedor cobra una comisión del 3% sobre sus ventas, pero si vendió más de $50000 recibe un 1% más, 
además de un premio fijo de 
$1200. Preparar un predicado que relacione el total vendido con la comisión a cobrar.*/

comisionAcobrar(Comision, Ventas) :-
    Ventas > 50000,
    Comision is
        Ventas * 4/100 + 1200.

comisionAcobrar(Comision,Ventas) :-
    Ventas =< 50000,
    Comision is
        Ventas * 3/100.

        