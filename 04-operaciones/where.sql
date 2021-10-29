/*Seleccionar por id */
SELECT * FROM actor WHERE actor_id=120;
/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/

/*
OPERADORES LOGICOS:
O       OR
Y       AND
NO      NOT
*/

/*
COMODINES:
Cualquier cantidad de caracteres: %
Un caracter desconocido: _
*/


/*Seleccionar por id mayor a un numero*/
SELECT * FROM actor WHERE actor_id > 63;

/*Seleccionar campos*/

SELECT actor_id, first_name, last_name FROM actor WHERE actor_id>63;

/*Seleccionar elementos con id pares*/

SELECT * FROM actor WHERE actor_id % 2=0;

/*Operador AND */

SELECT * FROM actor WHERE first_name='CHRIS' AND actor_id>50;

/*Comodines. Permite buscar por caracter o frase en específico */
/* Todos los actores que su primer nombre terminen en a*/
SELECT * FROM actor WHERE first_name LiKE "%a";

/*En alguna parte del nombre llevan una u* o el apellido empiece con e */
SELECT * FROM actor WHERE first_name LiKE "%u%" OR last_name LIKE "e%";

/*Para consultar un rango*/
SELECT * FROM film WHERE film_id BETWEEN 1 AND 10;