
DROP DATABSE IF EXISTS `propersell`;

CREATE DATABASE IF NOT EXISTS`propersell`;
USE `propersell`;



CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) DEFAULT NULL,
  `nombre_real` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','USER') DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- propersell.propiedad definition

CREATE TABLE `propiedad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `localizacion` varchar(255) DEFAULT NULL,
  `precio` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `fk_propietario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3x2p6yka37ar1huirrh3ac2va` (`fk_propietario`),
  CONSTRAINT `FK3x2p6yka37ar1huirrh3ac2va` FOREIGN KEY (`fk_propietario`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `agente_cliente` (
  `agente_id` bigint(20) NOT NULL,
  `cliente_id` bigint(20) NOT NULL,
  PRIMARY KEY (`agente_id`,`cliente_id`),
  KEY `FKpu1db7fy01erlxvfqerhotos8` (`cliente_id`),
  CONSTRAINT `FKpu1db7fy01erlxvfqerhotos8` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FKq4r9346fjaq5wpncjxtlkwhqa` FOREIGN KEY (`agente_id`) REFERENCES `agente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO Inmobiliaria (nombre, numero_empleados, direccion)
VALUES ('ProperSell', '50', 'Dirección de la Inmobiliaria');

INSERT INTO Inmobiliaria (nombre, numero_empleados, direccion)
VALUES ('Raggg', '5', 'Dirección de la Inmobiliaria');

INSERT INTO Inmobiliaria (nombre, numero_empleados, direccion)
VALUES ('UAUFIASDFAS', '50O', 'Dirección de la Inmobiliaria');


INSERT INTO Usuario (username, password, correo, nombre_real, role)
VALUES ('SergioAdmin', '$2a$12$C7vvFjpIfXlLdK5pES6BHecQZBY8FZoXKz99xWeKuzwBp0cUFfIOi', 'sergiotur04@gmail.com', 'Nombre Real', 'ADMIN');
