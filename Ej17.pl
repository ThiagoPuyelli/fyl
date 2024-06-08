/*Escribir un predicado y la base de hechos necesaria que permitan conocer el costo de un viaje a partir del costo del 
transporte y alojamiento (considerando el número de días de alojamiento). Cada destino tiene un costo de transporte, 
a saber: Bariloche $5000, Salta $7000, Mar del Plata $3500. El turista puede alojarse en hotel, cabaña o camping, 
el costo está dado por noche: hotel en Bariloche 800, cabaña en Bariloche 1400, camping en Bariloche 1350; hotel en 
Salta $2800, cabaña en Salta 3200, 
camping en Salta 12500, hotel en Mar del Plata 3500, cabaña en Mar del Plata 2900, camping en Mar del Plata 1500.*/

costoTransporte(bariloche, 5000).
costoTransporte(salta, 7000).
costoTransporte(mdp, 3500).
alojamiento(hotel,bariloche, 800).
alojamiento(hotel,salta, 2800).
alojamiento(hotel, mdp, 2900).
alojamiento(cabana, bariloche, 1400).
alojamiento(cabana, salta, 3200).
alojamiento(cabana, mdp, 2900).
alojamiento(camping, bariloche, 1350).
alojamiento(camping, salta, 12500).
alojamiento(camping, mdp, 1500).

costoViaje(LugarDestino, TipoAlojamiento, Dias, Total) :-
    costoTransporte(LugarDestino, PrecioTransporte),
    alojamiento(TipoAlojamiento, LugarDestino, PrecioEstadia),
    Total is PrecioTransporte + (PrecioEstadia * Dias).

