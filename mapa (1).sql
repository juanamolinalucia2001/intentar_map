-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-01-2020 a las 00:51:01
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mapa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `latitude` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcador`
--

CREATE TABLE `marcador` (
  `id` int(11) NOT NULL,
  `latitud` float NOT NULL,
  `longitud` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `address` varchar(80) COLLATE utf8_spanish2_ci NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(7, 'Obelisco', 'Obelisco, Avenida 9 de Julio, Buenos Aires', -34.603737, -58.383759, 'finalizado'),
(8, 'plaza lavalle', 'Plaza Lavalle, Talcahuano, Buenos Aires', -34.600304, -58.387642, 'asignado'),
(11, 'calle 9 de julio', '9 de Julio, Provincia de Buenos Aires', -35.456821, -60.952778, 'urgente'),
(12, 'Terminal Omnibus', 'Terminal Omnibus, Nicolas Robbio, 9 de Julio, Provincia de Buenos Aires', -35.451824, -60.883915, 'asignado'),
(5, 'escuela', 'tecnica 14 cerca de Partido de La Matanza, Provincia de Buenos Aires', -34.783173, -58.620094, 'urgente'),
(13, 'Arreglar', 'Plaza 25 de Mayo, buenos aires, Provincia de Buenos Aires', -34.603039, -58.373276, 'pendiente'),
(14, 'teatro', 'Luna Park, Avenida Eduardo Madero, Buenos Aires', -34.602249, -58.369270, 'finalizado'),
(15, 'shopping san justo', 'San Justo Shopping, San Justo, Buenos Aires', -34.685070, -58.558987, 'pendiente'),
(16, 'arreglar', 'Sec. Desarrollo Social La Matanza, Ruta Nacional 3, San Justo, Provincia de Buen', 34.686485, -58.564053, 'urgente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `probar`
--

CREATE TABLE `probar` (
  `id` int(11) NOT NULL,
  `calle` text COLLATE utf8_spanish2_ci NOT NULL,
  `numero` int(50) NOT NULL,
  `localidad` text COLLATE utf8_spanish2_ci NOT NULL,
  `provincia` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `probar`
--

INSERT INTO `probar` (`id`, `calle`, `numero`, `localidad`, `provincia`) VALUES
(0, 'Chivilcoy', 482, 'González Catán', 'Buenos Aires');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

CREATE TABLE `prueba` (
  `id` int(11) NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `prueba`
--

INSERT INTO `prueba` (`id`, `direccion`) VALUES
(0, 'Chivilcoy 482, González Catán, Provincia de Buenos Aires');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
