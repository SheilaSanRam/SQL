/* Renombrar una tabla */

ALTER TABLE usuarios RENAME TO users;

/* Cambiar nombre de una columna*/
ALTER TABLE usuarios CHANGE direccion dir VARCHAR(50);

/* agregar columnas */

ALTER TABLE usuarios ADD edad INT NOT NULL;
ALTER TABLE usuarios ADD edad INT NOT NULL AFTER nombre;

/* Eliminar columnas */

ALTER TABLE usuarios DROP edad;

