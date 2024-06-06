CREATE DATABASE IF NOT EXISTS `propersell`;



CREATE TABLE `alerta` (
  `id_alerta` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_alerta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE `usuario` (
  `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) DEFAULT NULL,
  `habilitado` bit(1) NOT NULL,
  `nombre_real` varchar(255) DEFAULT NULL,
  `numero_telefono` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','USER') DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `alerta_cliente` (
  `id_usuario` bigint(20) NOT NULL,
  `id_alerta` bigint(20) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_alerta`),
  KEY `FKjsryp9mnjewnmhg3i70buyspd` (`id_alerta`),
  CONSTRAINT `FKe4aqsfcb5o8gyy5r1fgu98ddn` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FKjsryp9mnjewnmhg3i70buyspd` FOREIGN KEY (`id_alerta`) REFERENCES `alerta` (`id_alerta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `propiedad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `habilitado` bit(1) NOT NULL,
  `localizacion` varchar(255) DEFAULT NULL,
  `precio` bigint(20) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `fk_propietario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgmgmdcfl9qgadb3ka6rqkkro` (`fk_propietario`),
  CONSTRAINT `FKgmgmdcfl9qgadb3ka6rqkkro` FOREIGN KEY (`fk_propietario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;



INSERT INTO usuario (username, password, correo, nombre_real, role, habilitado)
VALUES ('SergioAdmin', '$2a$12$f/yfMl5wct2bAIS5HTdU0eRZNoSDejBBk.8vekifKuNQ81EpAbBD.', 'sergiotur04@gmail.com', 'Sergio Iglesias García', 'ADMIN', true);

