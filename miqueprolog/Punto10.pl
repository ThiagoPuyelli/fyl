/*Una empresa de ventas paga a sus empleados un salario fijo de 800 pesos, 
más una comisión de $50 por cada venta realizada, más el 8% sobre el monto total de ventas. 
Escribir la regla de un predicado ternario que vincule la cantidad de ventas, con el monto total de ventas 
y el sueldo del vendedor.*/

calcularSueldo(Ventas, Monto, Salario) :-
    SumaVentas is Ventas * 50,
    Total is 800,
    PorcentMonto is 8 * Monto / 100,
    Salario is SumaVentas + Total + PorcentMonto.
