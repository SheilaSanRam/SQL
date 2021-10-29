/* Count*/
/*para hacer el conteo*/

SELECT rental_duration, COUNT(film_id) AS "Total" FROM film WHERE rental_duration = 7;

/*Saber cuantas películas hay por cada rental duration diferente */
/*group*/

SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY rental_duration ASC;

/*Para ordenar el resultado de film_id*/

SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY rental_duration ASC;

/*Para ordenar el resultado de total*/
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY Total ASC;

/*Promedio*/
SELECT AVG(replacement_cost) AS "Costo promedio" FROM film;

/*Suma*/
SELECT SUM(replacement_cost) AS "Costo total inventario" FROM film;

/*Máximo*/
/*Muestra solo el númeor mayor, pero no los elementos asociados a la película con el costo más alto*/
SELECT MAX(replacement_cost) AS "Costo_máximo" from film;

/*Así se muestran todos los elementos asociados al máximo*/
SELECT * FROM film ORDER BY replacement_cost DESC LIMIT 1;




