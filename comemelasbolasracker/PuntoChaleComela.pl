limpia(Lista, CadenaLimpia) :-
    limpiaAux(Lista, [], CadenaLimpiaReversa),
    reverse(CadenaLimpiaReversa, CadenaLimpia).

limpiaAux([], Acumulador, Acumulador).
limpiaAux([esp|Resto], Acumulador, CadenaLimpia) :-
    limpiaEspacios(Resto, Acumulador, CadenaLimpia).
limpiaAux([Caracter|Resto], Acumulador, CadenaLimpia) :-
    limpiaAux(Resto, [Caracter|Acumulador], CadenaLimpia).

limpiaEspacios([], Acumulador, Acumulador).
limpiaEspacios([esp|Resto], Acumulador, CadenaLimpia) :-
    limpiaEspacios(Resto, Acumulador, CadenaLimpia).
limpiaEspacios([Caracter|Resto], Acumulador, CadenaLimpia) :-
    limpiaAux([Caracter|Resto], [esp|Acumulador], CadenaLimpia).