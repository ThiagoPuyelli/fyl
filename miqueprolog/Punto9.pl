%Definir un predicado que relacione una longitud expresada en centímetros, 
%con la misma longitud expresada en pulgadas, pies y yardas. Recordamos que:
%1 yarda = 3 pies
%1 pie = 12 pulgadas
%1 pulgada = 2.54 centímetros

pito(Cm, Pul, Pie, Yarda) :-
    Pul is Cm / 2.54,
    Pie is Pul / 12,
    Yarda is Pie / 3.
    

/*enPie(Cm, Pie) :-
    enPulgadas(Cm, Pul),
    Pie is Pul / 12.

enYarda(Cm, Yarda) :-
    enPie(Cm, Pie),
    Yarda is Pie / 3.
  */  
