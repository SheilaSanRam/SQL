/* Para crear una tabla */
CREATE TABLE usuarios(
id          INT AUTO_INCREMENT NOT NULL,
nombre      VARCHAR(100) NOT NULL,
correo      VARCHAR(100) NOT NULL,
password    VARCHAR(100) NOT NULL,
direccion   VARCHAR(255),
/* La llave primaria se agrega como; */
CONSTRAINT pk_usuario PRIMARY KEY(id)
);