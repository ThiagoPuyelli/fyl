/*Una empresa de ventas paga a sus empleados un salario fijo de 800 pesos, más una comisión de $50 por 
cada venta realizada, más el 8% sobre el monto total de ventas. Escribir la regla de un predicado ternario que vincule 
la cantidad de ventas, con el monto total de ventas y el sueldo del vendedor.*/

sueldoVendedor(CantVentas, MontoVentas, Sueldo) :-
    Comision is CantVentas * 50,
    Monto is MontoVentas * 0.08,
    Sueldo is 800 + Comision + Monto.


