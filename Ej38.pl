/*Tenemos cuatro perros: un galgo, un dogo, un alano y un podenco. Éste último come más que el galgo; 
el alano come más que el galgo y menos que el dogo, 
pero éste come más que el podenco. ¿Cuál de los cuatro será más barato de mantener?.*/

perro(galgo).
perro(dogo).
perro(alano).
perro(podenco).

comeMas(podenco, galgo).
comeMas(alano, galgo).
comeMas(dogo, alano).
comeMas(dogo, podenco).

masBarato(Perruco) :-
    perro(Perruco),
    perro(Otro), comeMas(Otro, Perruco).
    