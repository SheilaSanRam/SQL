/* Seleccionar datos */
/*Extraer información de la base de datos*/
/* El asterisco selecciona todos los campos */

SELECT * FROM usuarios;

/* Para seleccionar un campo de la tabla*/

SELECT direccion FROM usuarios;
SELECT id,direccion FROM usuarios;

/* Modificar los numeros del id */
ALTER TABLE `blog`.`usuarios` 
AUTO_INCREMENT = 1 ;
