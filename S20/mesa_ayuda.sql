-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2024 a las 22:03:23
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mesa_ayuda`
--
CREATE DATABASE IF NOT EXISTS `mesa_ayuda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mesa_ayuda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `tipo_id` int(11) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`tipo_id`, `tipo_usuario`) VALUES
(1, 'Administrador'),
(2, 'Técnico'),
(3, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `u_id` int(11) NOT NULL,
  `u_nombre` varchar(100) NOT NULL,
  `u_apellidos` varchar(150) NOT NULL,
  `u_celular` varchar(9) NOT NULL,
  `u_login` varchar(50) NOT NULL,
  `u_password` varchar(150) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`u_id`, `u_nombre`, `u_apellidos`, `u_celular`, `u_login`, `u_password`, `tipo_id`) VALUES
(3, 'Carlos', 'Villanes Vargas', '930445566', '44556677', '44556677', 2),
(2, 'Daniel', 'Torres Choque', '936445512', '11223344', '11223344', 2),
(1, 'Julver', 'Alfaro Chuquimia', '930498344', '44806713', '44806713', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`tipo_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`u_nombre`),
  ADD KEY `tipo_id` (`tipo_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_usuario` (`tipo_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
