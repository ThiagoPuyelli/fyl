/*Otra forma de calcular recursivamente la potencia con exponente natural más eficientemente es usando la siguiente función:
 
 	|  1             		si n es cero
 	|
m^n = 	|  (m^2)^(n/2)         	si n es par
 	|
 	|  m*(m^2)^((n-1)/2)   	si n es impar*/

potencia(Base, 0, 1).

potencia(Base, Exponente, Potencia) :-
    Exponente mod 2 =:= 0,
    Potencia is (Base^2)^(Exponente//2).

potencia(Base, Exponente, Potencia) :-
    Exponente mod 2 =:= 1,
    Potencia is (Base * (Base^2))^( (Exponente - 1) //2).