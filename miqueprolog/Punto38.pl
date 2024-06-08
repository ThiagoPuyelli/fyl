/*Tenemos cuatro perros: un galgo, un dogo, un alano y un podenco. 
Éste último come más que el galgo; el alano come más que el galgo y menos que el dogo, 
pero éste come más que el podenco. ¿Cuál de los cuatro será más barato de mantener?.*/

esPerro(galgo).
esPerro(dogo).
esPerro(alano).
esPerro(podenco).

comeMas(podenco,galgo).
comeMas(alano,galgo).
comeMas(dogo,alano).
comeMas(dogo,podenco).

masBarato(Resultado) :-
    esPerro(Resultado),
    esPerro(Otro),
    comeMas(Otro, Resultado).