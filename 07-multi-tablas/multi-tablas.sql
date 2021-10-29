/*JOIN*/


/*Consultar información de 2 tablas*/
/*Une los datos de la tabla, pero no significa que los datos tengan relación --hace la multiplicación--*/
SELECT * FROM actor, film_text;

/*Consultar información de 2 tablas relacionadas (Elementos en común). Une las dos tablas, pero con la información mezclada. No la ordena*/
/*A cada fila de la primera tabla, le pone todos los de la segunda tabla*/
SELECT * FROM actor, film_actor;

/*Con Join, los campos no se repiten. Se unen*/
SELECT city_id,city, country FROM city
INNER JOIN country ON city.country_id = country.country_id;


/*Consultar film_id, first y last name, título, para un actor*/
SELECT film.film_id, first_name, last_name, title FROM film
/*Dentro de film_actor unes los campos film_id*/
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id WHERE actor.actor_id=120;

SELECT film.film_id, first_name, last_name, title FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id 
INNER JOIN actor ON film_actor.actor_id = actor.actor_id WHERE actor.actor_id = 160;


SELECT film_id, first_name, last_name, title FROM film 
INNER JOIN actor ON actor_id = 5
WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 5);

