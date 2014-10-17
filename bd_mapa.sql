-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2014 a las 06:22:21
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto_panamabienes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_mapa`
--

CREATE TABLE IF NOT EXISTS `sis_mapa` (
  `id_mapa` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_mapa` varchar(250) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_mapa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_mapa_categoria`
--

CREATE TABLE IF NOT EXISTS `sis_mapa_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_categoria` varchar(250) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_mapa_item`
--

CREATE TABLE IF NOT EXISTS `sis_mapa_item` (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapa` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `positiony` int(11) DEFAULT NULL,
  `positionx` int(11) DEFAULT NULL,
  `titulo_item` varchar(250) DEFAULT NULL,
  `des_item` text,
  `enlace_item` varchar(250) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_item`),
  UNIQUE KEY `id_mapa` (`id_mapa`),
  UNIQUE KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sis_mapa_item`
--
ALTER TABLE `sis_mapa_item`
  ADD CONSTRAINT `sis_mapa_item_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `sis_mapa_categoria` (`id_categoria`),
  ADD CONSTRAINT `sis_mapa_item_ibfk_1` FOREIGN KEY (`id_mapa`) REFERENCES `sis_mapa` (`id_mapa`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
