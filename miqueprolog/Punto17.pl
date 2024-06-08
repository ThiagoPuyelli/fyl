/*Escribir un predicado y la base de hechos necesaria que permitan conocer el costo de un viaje a 
partir del costo del transporte y alojamiento (considerando el número de días de alojamiento). 
Cada destino tiene un costo de transporte, a saber: Bariloche $5000, Salta $7000, Mar del Plata $3500. 
El turista puede alojarse en hotel, cabaña o camping, el costo está dado por noche: hotel en Bariloche 800, 
cabaña en Bariloche 1400, camping en Bariloche 1350; hotel en Salta $2800, cabaña en Salta 3200, camping 
en Salta 12500, hotel en Mar del Plata 3500, cabaña en Mar del Plata 2900, camping en Mar del Plata 1500.*/

elTransporteA(bariloche, 5000).
elTransporteA(salta, 7000).
elTransporteA(marDelPlata, 3500).

alojamientoEn(bariloche, cabana, 1400).
alojamientoEn(bariloche, camping, 1350).
alojamientoEn(bariloche, hotel, 2800).
alojamientoEn(salta, cabana, 3200).
alojamientoEn(salta, camping, 12500).
alojamientoEn(salta, hotel, 2800).
alojamientoEn(marDelPlata, cabana, 2900).
alojamientoEn(marDelPlata, camping, 1500).
alojamientoEn(marDelPlata, hotel, 3500).

solicitaViaje(Dias, Lugar, Alojamiento, Precio) :-
    elTransporteA(Lugar, CostoViaje),
    alojamientoEn(Lugar, Alojamiento, CostoAloj),
    Precio is CostoViaje + CostoAloj * Dias.
