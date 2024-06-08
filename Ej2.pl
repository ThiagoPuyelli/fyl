/*Escribir en Prolog los datos relevantes, (a los efectos genealógicos), 
del siguiente párrafo: "La familia de Luis no es muy numerosa, sus padres, Carlos y Susana, 
tuvieron tres hijos: Roberto, Amalia, y Luis, de los cuales Luis es el menor. Carlos, a su vez, 
tiene una hermana mayor llamada Isabel, siendo ambos hijos de Ana y Guillermo. 
Los padres de Susana, Mercedes y Ernesto, tuvieron otra hija bastante menor que ella, 
a quien bautizaron con el nombre de Angélica, la que es tan bella como su nombre. 
Los dos hijos de Luis y su esposa Laura, llamados Federico y Carla, están estudiando letras".
Utilizar solamente los predicados "esProgenitorDe", "esVaron" y "esMujer".*/

esVaron(luis).
esVaron(carlos).
esVaron(roberto).
esVaron(guillermo).
esVaron(ernesto).
esVaron(federico).
esMujer(susana).
esMujer(amalia).
esMujer(isabel).
esMujer(ana).
esMujer(mercedes).
esMujer(angelica).
esMujer(laura).
esMujer(carla).
esProgenitorDe(carlos, luis).
esProgenitorDe(carlos, roberto).
esProgenitorDe(carlos, amalia).
esProgenitorDe(susana, luis).
esProgenitorDe(susana, roberto).
esProgenitorDe(susana, amalia).
esProgenitorDe(guillermo, carlos).
esProgenitorDe(guillermo, isabel).
esProgenitorDe(ana, carlos).
esProgenitorDe(ana, isabel).
esProgenitorDe(mercedes, susana).
esProgenitorDe(mercedes, angelica).
esProgenitorDe(ernesto, susana).
esProgenitorDe(ernesto, angelica).
esProgenitorDe(luis, federico).
esProgenitorDe(luis, carla).
esProgenitorDe(laura, federico).
esProgenitorDe(laura, carla).

/*Usando la base de datos generada en el problema de la familia de Luis, y con lo que se conoce hasta ahora, escribir consultas para obtener la siguiente información:
Preguntas simples:
¿Es Carlos progenitor de Guillermo? -> False.
¿Es Jorge progenitor de Gonzalo? -> False.
¿Es Carlos progenitor de Amalia? -> True.
Usando el predicado "padre" preguntar: ¿Es Carlos padre de Roberto? -> True.
¿Gonzalo es mujer? -> False.
¿Alberto es varón? -> False.

Preguntas compuestas (conjunciones):
¿Es cierto que Luis es progenitor de Carla, y que Carla es mujer? -> True.
¿Es cierto que Ernesto es progenitor de Carlos, y que éste es progenitor de Luis, y a su vez Luis es progenitor de Carla? -> False.

Consultas con variables
¿Federico es el progenitor de alguien? -> False.
¿Quiénes son los progenitores de Roberto? -> Carlos, Susana.
¿Guillermo tuvo alguna hija? -> Isabel.
¿Ernesto tuvo algún hijo varón? -> False.
¿Roberto y Amalia tienen el mismo padre? -> Carlos.
¿Ernesto tuvo alguna hija que a su vez tenga una hija? -> Ernesto tuvo a Susana, quien tuvo a Amalia.


*/