create database prueba2;
use prueba2;

CREATE TABLE `usuarios` (
  `id` varchar(50) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `condicion` varchar(100) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario` (`Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `de_usuario_id` varchar(50) NOT NULL,
  `para_usuario_id` varchar(50) NOT NULL,
  `mensaje` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci