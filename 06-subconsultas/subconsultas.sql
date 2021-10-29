/*Subconsultas*/
/*Consultas que funcionan dentro de otras consultas*/
/*Filtrar películas por categoría*/
/*Una consulta entre paréntesis alimenta los elementos que se quieren recuperar en la consulta principal */
SELECT * FROM film WHERE film_id IN ( SELECT film_id FROM film_category WHERE category_id=5);

SELECT * FROM film WHERE film_id =1 OR film_id=2 OR film_id=3;
SELECT * FROM film WHERE film_id IN (100,7,33);
SELECT film_id from film_category WHERE category_id =5;

/*Filtrar películas por actores*/

SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 2);
