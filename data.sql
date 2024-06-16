CREATE DATABASE IF NOT EXISTS `propersell`
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE `propersell`;

CREATE TABLE `alerta` (
  `id_alerta` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_alerta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `alerta_cliente` (
  `id_usuario` bigint(20) NOT NULL,
  `id_alerta` bigint(20) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_alerta`),
  KEY `FKjsryp9mnjewnmhg3i70buyspd` (`id_alerta`),
  CONSTRAINT `FKe4aqsfcb5o8gyy5r1fgu98ddn` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FKjsryp9mnjewnmhg3i70buyspd` FOREIGN KEY (`id_alerta`) REFERENCES `alerta` (`id_alerta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `usuario` (
  `id_usuario`, `username`, `password`, `correo`, `nombre_real`, `numero_telefono`, `role`, `habilitado`
) VALUES (
  1, 'SergioAdmin', '$2a$12$f/yfMl5wct2bAIS5HTdU0eRZNoSDejBBk.8vekifKuNQ81EpAbBD.', 'sergiotur04@gmail.com', 'Sergio Iglesias Garcí­a', '684264390', 'ADMIN', true
);

INSERT INTO `alerta` (`descripcion`, `nombre`) VALUES
  ('Propiedades Rebajadas', 'Se han rebajado los precios de múltiples propiedades'),
  ('Casas añadidas ', 'Se han añadidio nuevas casas a la página'),
  ('Pisos añadidos', 'Se han añadido nuevos pisos');

INSERT INTO `usuario` (
  `correo`, `habilitado`, `nombre_real`, `numero_telefono`, `password`, `role`, `username`
) VALUES
  ('usuario2@example.com', 1, 'David Menéndez Putteman', '685932574', '$2a$12$CsIQ1NjazCRreNrdKekLKeqzvkR2pQv.fu0NWPfsEzZhLBOfOecr2', 'USER', 'Davis'),
  ('usuario3@example.com', 1, 'Raúl González', '685932574', '$2a$12$CsIQ1NjazCRreNrdKekLKeqzvkR2pQv.fu0NWPfsEzZhLBOfOecr2', 'USER', 'dav');


INSERT INTO `propiedad` (`habilitado`, `localizacion`, `precio`, `tipo`, `fk_propietario`) 
VALUES (1, 'Calle Woodbury 123, Springfield', 150000, 'Casa', 1);


INSERT INTO `propiedad` (`habilitado`, `localizacion`, `precio`, `tipo`, `fk_propietario`) 
VALUES (0, 'Avenida London 742, Springfield', 200000, 'Departamento', 2);


INSERT INTO `propiedad` (`habilitado`, `localizacion`, `precio`, `tipo`, `fk_propietario`) 
VALUES (1, 'Calle Rosa 456, Shelbyville', 180000, 'Casa', 2);
