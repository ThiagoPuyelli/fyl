/*En un negocio se desea armar una oferta para fin de año combinando un artículo de bazar, uno de perfumería y uno de juguetería, 
con la condición de que la oferta no supere un cierto precio máximo. 
Para ello contamos con la siguiente base de datos:*/
/*a) Escribir una regla "oferta" que relacione tres artículos, uno de cada rubro, con el precio máximo, 
y que sea verdadero cuando la oferta no supere el precio máximo.

b)Hacer una consulta para encontrar todas las ofertas de menos de pesos50.*/

bazar(fuentes).
bazar(vasos).
bazar(juego_de_cafe).
perfumeria(jabones).
perfumeria(crema).
perfumeria(perfume).
jugueteria(autito).
jugueteria(muneca).
jugueteria(oso).

precio(fuentes, 15).
precio(vasos, 12).
precio(juego_de_cafe, 20).
precio(jabones, 10).
precio(crema, 15).
precio(perfume, 25).
precio(autito, 10).
precio(muneca, 15).
precio(oso, 20).



/*oferta(ArtBazar, ArtPerfu, ArtJugue, Maximo) :-
    bazar(ArtBazar),
    perfumeria(ArtPerfu),
    jugueteria(ArtJugue),
    BazarP is precio(ArtBazar, precioBazar),
    JugueP is precio(ArtJugue, precioJugueteria),
    PerfuP is precio(ArtPerfu, precioPerfumeria),
    PrecioTotal is BazarP + JugueP + PerfuP,
    PrecioTotal =< Maximo.*/

oferta(Articulo1, Articulo2, Articulo3, PrecioMax) :-
  bazar(Articulo1), precio(Articulo1, Precio1),
  perfumeria(Articulo2), precio(Articulo2, Precio2),
  jugueteria(Articulo3), precio(Articulo3, Precio3),
  PrecioTotal is Precio1 + Precio2 + Precio3,
  PrecioTotal =< PrecioMax.