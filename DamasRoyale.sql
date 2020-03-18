CREATE DATABASE damasroyale;

USE damasroyale;

CREATE USER 'DamasRoyale'@'localhost' IDENTIFIED BY 'Dorami2019';

GRANT SELECT, INSERT, UPDATE, DELETE ON damasroyale.* TO 'DamasRoyale'@'localhost';

CREATE TABLE USUARIOS (
    IDUSUARIO INT(11) PRIMARY KEY AUTO_INCREMENT,
	NOMBRE VARCHAR(32) NOT NULL,
	EMAIL VARCHAR(64) NOT NULL,
    CONTRASENYA VARCHAR(64) NOT NULL,
    IMAGEN VARCHAR(64) NOT NULL,
    REGISTRO DATETIME NOT NULL,
    ESTADO CHAR(4) NOT NULL
);

CREATE TABLE ESTADISTICAS(
	IDESTADISTICA INT(11) PRIMARY KEY AUTO_INCREMENT,
    IDUSUARIO INT(11) NOT NULL,
    TOTALES INT(11) NOT NULL,
    GANADAS INT(11) NOT NULL,
    PERDIDAS INT(11) NOT NULL,
    PUNTUACION INT(11) NOT NULL,
        FOREIGN KEY (IDUSUARIO)
        REFERENCES USUARIOS (IDUSUARIO)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ACTIVACIONES (
    IDACTIVACION INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDUSUARIO INT(11) NOT NULL,
    CODIGO VARCHAR(15) NOT NULL,
    FOREIGN KEY (IDUSUARIO)
        REFERENCES USUARIOS (IDUSUARIO)
        ON DELETE CASCADE ON UPDATE CASCADE
);