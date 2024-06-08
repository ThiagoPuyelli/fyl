/*Se necesita saber el puntaje que suma un Pacman en su recorrido hasta llegar a la terminar el nivel. 
En su recorrido se puede encontrar con frutas con distinto puntaje y con el activador del bonus que 
duplica todos los puntos de las cosas que coma durante 5 pasos. Escribir un predicado que relacione una 
lista de objetos que se come el Pacman con el puntaje obtenido. Para ello usar la siguiente base de hechos.
*/
puntaje(puntito, 1).
puntaje(frutilla, 10).
puntaje(banana, 30).
puntaje(cerezas, 50).
puntaje(fantasma, 100).
esBonus(bonus).
/*?- puntajePacman([puntito, frutilla, puntito, puntito, banana, puntito, puntito,  fantasma, puntito, 
    puntito, cerezas, puntito], Puntos).
Puntos = 198.

?- puntajePacman([puntito, puntito, puntito, banana, puntito, puntito, bonus, puntito, puntito, 
    fantasma, puntito, puntito, cerezas, puntito], Puntos).
Puntos = 294.
*/


puntajePacman(Elementos, Puntaje) :-
    calcularPuntaje(Elementos, NewPuntaje, 0),
    Puntaje is NewPuntaje.

calcularPuntaje([], 0, _).

calcularPuntaje([Cab | Cola], Puntaje, B) :-
    B > 0,
    NewB is B - 1,
    calcularPuntaje(Cola, NewPuntaje, B),
    puntaje(Cab, Puntos),
    Puntaje is NewPuntaje + (Puntos*2).

calcularPuntaje([Cab | Cola], Puntaje, B) :-
    esBonus(Cab),
    calcularPuntaje(Cola, Puntaje, 5).

calcularPuntaje([Cab | Cola], Puntaje, B) :-
    B =< 0,
    calcularPuntaje(Cola, NewPuntaje, B),
    puntaje(Cab, Puntos),
    Puntaje is NewPuntaje + Puntos.
