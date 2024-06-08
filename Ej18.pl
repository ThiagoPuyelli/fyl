/*Escribir un algoritmo que permita convertir una magnitud expresada en una unidad de medida de longitud en la 
correspondiente en otra unidad de medida. Por ejemplo en prolog el predicado sería: 
convertir(ValorOrigen, UnidadOrigen, Resultado, UnidadDestino).
?- convertir(30,cm, X, m).
   X = 0,3.
Las unidades a contemplar son: mm, cm, dm, m*/

factor(cm, metros, 0.01).
factor(cm, mm, 10).
factor(cm, dm, 0.1).
factor(metros, cm, 100).
factor(metros, dm, 10).
factor(metros, mm, 1000).
factor(mm, cm, 0.1).
factor(mm, dm, 0.01).
factor(mm, metros, 0.001).
factor(dm, metros, 0.1).
factor(dm, cm, 10).
factor(dm, mm, 100).


convertir(ValorOrigen, UnidadOrigen, Resultado, UnidadDestino) :-
    factor(UnidadOrigen, UnidadDestino, Factor),
    Resultado is ValorOrigen * Factor.
