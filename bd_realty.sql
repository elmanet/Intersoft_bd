-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2014 a las 04:36:07
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
-- Estructura de tabla para la tabla `sis_anauncio_anunciante`
--

CREATE TABLE IF NOT EXISTS `sis_anauncio_anunciante` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `compania` varchar(250) DEFAULT NULL,
  `licencia_corredor` varchar(250) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_anuncio`
--

CREATE TABLE IF NOT EXISTS `sis_anuncio` (
  `id_anuncio` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_ubicacion` int(11) DEFAULT NULL,
  `titulo_espanol` varchar(250) DEFAULT NULL,
  `titulo_ingles` varchar(250) DEFAULT NULL,
  `des_espanol` text,
  `des_ingles` text,
  `preciov` double(8,2) DEFAULT NULL,
  `precioa` double(8,2) DEFAULT NULL,
  `recama` int(2) DEFAULT NULL,
  `banios` int(2) DEFAULT NULL,
  `mconstru` varchar(200) DEFAULT NULL,
  `mterreno` varchar(200) DEFAULT NULL,
  `estacio` int(2) DEFAULT NULL,
  `direccion` text,
  `costo_mante` varchar(200) DEFAULT NULL,
  `altura` varchar(200) DEFAULT NULL,
  `anios_constru` varchar(200) DEFAULT NULL,
  `tipo_pisos` varchar(200) DEFAULT NULL,
  `niveles` int(2) DEFAULT NULL,
  `piso_num` int(3) DEFAULT NULL,
  `piscina` int(1) DEFAULT NULL,
  `balcon` int(1) DEFAULT NULL,
  `video` varchar(250) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `id_promo` int(2) DEFAULT NULL,
  `tanunciante` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vistaanuncio` int(11) DEFAULT NULL,
  `megusta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_anuncio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_anuncio_beneficios`
--

CREATE TABLE IF NOT EXISTS `sis_anuncio_beneficios` (
  `id_beneficio` int(11) NOT NULL AUTO_INCREMENT,
  `id_anuncio` int(11) DEFAULT NULL,
  `ben1` int(1) DEFAULT NULL,
  `ben2` int(1) DEFAULT NULL,
  `ben3` int(1) DEFAULT NULL,
  `ben4` int(1) DEFAULT NULL,
  `ben5` int(1) DEFAULT NULL,
  `ben6` int(1) DEFAULT NULL,
  `ben7` int(1) DEFAULT NULL,
  `ben8` int(1) DEFAULT NULL,
  `ben9` int(1) DEFAULT NULL,
  `ben10` int(1) DEFAULT NULL,
  `ben11` int(1) DEFAULT NULL,
  `ben12` int(1) DEFAULT NULL,
  `ben13` int(1) DEFAULT NULL,
  `ben14` int(1) DEFAULT NULL,
  `ben15` int(1) DEFAULT NULL,
  `ben16` int(1) DEFAULT NULL,
  `ben17` int(1) DEFAULT NULL,
  `ben18` int(1) DEFAULT NULL,
  `ben19` int(1) DEFAULT NULL,
  `ben20` int(1) DEFAULT NULL,
  `ben21` int(1) DEFAULT NULL,
  `ben22` int(1) DEFAULT NULL,
  `ben23` int(1) DEFAULT NULL,
  `ben24` int(1) DEFAULT NULL,
  `ben25` int(1) DEFAULT NULL,
  `ben26` int(1) DEFAULT NULL,
  `ben27` int(1) DEFAULT NULL,
  `ben28` int(1) DEFAULT NULL,
  `ben29` int(1) DEFAULT NULL,
  `ben30` int(1) DEFAULT NULL,
  `ben31` int(1) DEFAULT NULL,
  `ben32` int(1) DEFAULT NULL,
  `ben33` int(1) DEFAULT NULL,
  `lin1` int(1) DEFAULT NULL,
  `lin2` int(1) DEFAULT NULL,
  `lin3` int(1) DEFAULT NULL,
  `lin4` int(1) DEFAULT NULL,
  `lin5` int(1) DEFAULT NULL,
  `lin6` int(1) DEFAULT NULL,
  `lin7` int(1) DEFAULT NULL,
  `lin8` int(1) DEFAULT NULL,
  `lin9` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_beneficio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_anuncio_categoria`
--

CREATE TABLE IF NOT EXISTS `sis_anuncio_categoria` (
  `id_cat` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cat` varchar(250) DEFAULT NULL,
  `des_cat` varchar(250) DEFAULT NULL,
  `catp` int(11) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `sis_anuncio_categoria`
--

INSERT INTO `sis_anuncio_categoria` (`id_cat`, `nombre_cat`, `des_cat`, `catp`, `creado`) VALUES
(1, 'Bienes Raices', 'Bienes Raices >', NULL, '2014-07-18 13:28:04'),
(2, 'Venta', 'Bienes Raices > Venta >', 1, '2014-07-18 13:28:51'),
(3, 'Alquiler', 'Bienes Raices > Alquiler >', 1, '2014-07-18 13:28:51'),
(4, 'Apartamentos', 'Bienes Raices > Venta > Apartamentos', 2, '2014-07-18 13:30:09'),
(5, 'Apartamentos', 'Bienes Raices > Alquiler > Apartamentos', 3, '2014-07-18 13:30:09'),
(6, 'Casas', 'Bienes Raices > Venta > Casa', 2, '2014-07-18 13:36:53'),
(7, 'Casa', 'Bienes Raices > Alquiler > Casas', 3, '2014-07-18 13:36:53'),
(8, 'Habitaciones', 'Bienes Raices > Alquiler > Habitaciones', 3, '2014-07-18 15:43:33'),
(10, 'Subastas', 'Bienes Raices > Subastas', 1, '2014-07-18 15:52:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_anuncio_foto`
--

CREATE TABLE IF NOT EXISTS `sis_anuncio_foto` (
  `id_foto` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_anuncio` int(11) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_anuncio_mensajes`
--

CREATE TABLE IF NOT EXISTS `sis_anuncio_mensajes` (
  `id_mensaje` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(11) DEFAULT NULL,
  `id_anauncio` int(11) DEFAULT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `asunto` varchar(250) DEFAULT NULL,
  `mensaje` text,
  `telefono` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_mensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_anuncio_ubicacion`
--

CREATE TABLE IF NOT EXISTS `sis_anuncio_ubicacion` (
  `id_ubi` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_ubi` varchar(250) DEFAULT NULL,
  `des_ubi` varchar(250) DEFAULT NULL,
  `catp` int(11) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ubi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Volcado de datos para la tabla `sis_anuncio_ubicacion`
--

INSERT INTO `sis_anuncio_ubicacion` (`id_ubi`, `nombre_ubi`, `des_ubi`, `catp`, `creado`) VALUES
(1, 'Panama Provincia', 'Panama Provincia >', NULL, '2014-07-19 17:55:35'),
(2, 'Bocas del Toro Provincia ', 'Bocas del Toro Provincia >', NULL, '2014-07-19 17:55:35'),
(3, 'Chiriqu&iacute; Provincia', 'Chiriqu&iacute; Provincia', NULL, '2014-07-19 17:55:35'),
(4, 'Colon Provincia', 'Colon Provincia >', NULL, '2014-07-19 17:55:35'),
(5, 'Cocl&eacute; Provincia', 'Cocl&eacute; Provincia >', NULL, '2014-07-19 17:55:35'),
(6, 'Darien Provincia', 'Darien Provincia >', NULL, '2014-07-19 17:55:35'),
(7, 'Herrera Provincias', 'Herrera Provincias >', NULL, '2014-07-19 17:55:35'),
(8, 'Los Santos Provincia', 'Los Santos Provincia >', NULL, '2014-07-19 17:55:35'),
(9, 'Veraguas Provincia', 'Veraguas Provincia >', NULL, '2014-07-19 17:55:35'),
(10, 'Comarca San Blas', 'Comarca San Blas >', NULL, '2014-07-19 17:59:03'),
(11, 'Ciudad de Panama', 'Ciudad de Panama >', 1, '2014-07-19 18:45:13'),
(12, 'Arraijan', 'Arraijan >', 1, '2014-07-19 18:45:13'),
(13, 'Balboa', 'Balboa >', 1, '2014-07-19 18:45:13'),
(14, 'Capira', 'Capira >', 1, '2014-07-19 18:45:13'),
(15, 'Chame', 'Chame >', 1, '2014-07-19 18:45:13'),
(16, 'Chepo', 'Chepo >', 1, '2014-07-19 18:45:13'),
(17, 'Chim&aacute;n', 'Chim&aacute;n >', 1, '2014-07-19 18:45:13'),
(18, 'La Chorrera ', 'La Chorrera >', 1, '2014-07-19 18:45:13'),
(19, 'San Carlos', 'San Carlos >', 1, '2014-07-19 18:45:13'),
(20, 'San Miguelito', 'San Miguelito >', 1, '2014-07-19 18:45:13'),
(21, 'Taboga', 'Taboga >', 1, '2014-07-19 18:45:29'),
(22, 'Ancon', 'Ancon >', 11, '2014-07-19 19:16:49'),
(23, 'Alcalde Diaz', 'Alcalde Diaz', 11, '2014-07-19 19:16:49'),
(24, 'Bethania', 'Bethania >', 11, '2014-07-19 20:30:54'),
(25, 'Bella Vista', 'Bella Vista >', 11, '2014-07-19 20:30:54'),
(26, 'Calidonia', 'Calidonia >', 11, '2014-07-19 20:30:54'),
(27, 'El Chorrillo', 'El Chorrillo', 11, '2014-07-19 20:30:54'),
(28, 'Curundu', 'Curundu', 11, '2014-07-19 20:30:54'),
(29, 'Chilibre', 'Chilibre', 11, '2014-07-19 20:30:54'),
(30, 'Ernesto Cordoba Campos', 'Ernesto Cordoba Campos >', 11, '2014-07-19 20:30:54'),
(31, 'Juan Diaz', 'Juan Diaz >', 11, '2014-07-19 20:30:54'),
(32, 'Las Cumbres', 'Las Cumbres >', 11, '2014-07-19 20:30:54'),
(33, 'Pacora', 'Pacora', 11, '2014-07-19 20:30:54'),
(34, 'Parque Lefrevre', 'Parque Lefrevre >', 11, '2014-07-19 20:33:38'),
(35, 'Pueblo Nuevo', 'Pueblo Nuevo >', 11, '2014-07-19 20:33:38'),
(36, 'Rio Abajo', 'Rio Abajo >', 11, '2014-07-19 20:33:38'),
(37, 'Casco Viejo San Felipe', 'Casco Viejo San Felipe', 11, '2014-07-19 20:33:38'),
(38, 'San Francisco ', 'San Francisco >', 11, '2014-07-19 20:33:38'),
(39, 'San Martin', 'San Martin >', 11, '2014-07-19 20:33:38'),
(40, 'Santa Ana', 'Santa Ana', 11, '2014-07-19 20:33:38'),
(41, 'Tocumen', 'Tocumen >', 11, '2014-07-19 20:33:38'),
(42, 'Via Tocumen', 'Via Tocumen', 11, '2014-07-19 20:33:38'),
(43, 'Via Transismica', 'Via Transismica', 11, '2014-07-19 20:33:38'),
(44, '24 de Diciembre', '24 de Diciembre', 11, '2014-07-19 20:33:38'),
(45, 'Albrook', 'Albrook', 22, '2014-07-19 20:36:42'),
(46, 'Amador Cause Way', 'Amador Cause Way', 22, '2014-07-19 20:36:42'),
(47, 'Balboa', 'Balboa', 22, '2014-07-19 20:36:42'),
(48, 'Bosque de Cibeles', 'Bosque de Cibeles', 22, '2014-07-19 20:36:42'),
(49, 'Cardenas', 'Cardenas', 22, '2014-07-19 20:36:42'),
(50, 'Clayton', 'Clayton', 22, '2014-07-19 20:36:42'),
(51, 'Dorado Lake', 'Dorado Lake', 22, '2014-07-19 20:36:42'),
(52, 'Diablo', 'Diablo', 22, '2014-07-19 20:36:42'),
(53, 'Gamboa', 'Gamboa', 22, '2014-07-19 20:36:42'),
(54, 'Los Rios', 'Los Rios', 22, '2014-07-19 20:36:42'),
(55, 'Paraiso', 'Paraiso', 22, '2014-07-19 20:36:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_banners`
--

CREATE TABLE IF NOT EXISTS `sis_banners` (
  `id_foto` bigint(11) NOT NULL AUTO_INCREMENT,
  `posicion` int(11) DEFAULT NULL,
  `titulo_foto` varchar(250) DEFAULT NULL,
  `info` text,
  `ruta` varchar(250) DEFAULT NULL,
  `orden` int(3) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_config`
--

CREATE TABLE IF NOT EXISTS `sis_config` (
  `id_config` int(1) NOT NULL AUTO_INCREMENT,
  `title_site` varchar(250) DEFAULT NULL,
  `meta_des` varchar(250) DEFAULT NULL,
  `meta_clave` varchar(250) DEFAULT NULL,
  `id_google` varchar(200) DEFAULT NULL,
  `fuente_google` varchar(250) DEFAULT NULL,
  `tipof_google` varchar(250) DEFAULT NULL,
  `tienda` int(1) DEFAULT '0',
  `catalogo` int(1) DEFAULT '0',
  `simbolo_moneda` varchar(50) DEFAULT NULL,
  `impuesto` double(8,2) DEFAULT NULL,
  `envios` int(1) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `modificacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_config`),
  UNIQUE KEY `id_config` (`id_config`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sis_config`
--

INSERT INTO `sis_config` (`id_config`, `title_site`, `meta_des`, `meta_clave`, `id_google`, `fuente_google`, `tipof_google`, `tienda`, `catalogo`, `simbolo_moneda`, `impuesto`, `envios`, `email`, `website`, `modificacion`) VALUES
(1, 'PanamaBienes.com', 'Inmuebles y mucho mÃ¡s', 'inmuebles, apartamentos, casas', NULL, 'http://fonts.googleapis.com/css?family=Special+Elite', 'font-family: ''Special Elite'', cursive;', 1, NULL, '$', 7.00, 0, 'contacto@tuweb.com', 'www.panamabienes.com', '2014-07-14 15:47:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_formaenvio`
--

CREATE TABLE IF NOT EXISTS `sis_formaenvio` (
  `id_fenvio` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_fenvio` varchar(250) NOT NULL,
  `informacion_fenvio` text NOT NULL,
  `monto_envio` double(8,2) NOT NULL,
  `status` int(1) NOT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_fenvio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_formapago`
--

CREATE TABLE IF NOT EXISTS `sis_formapago` (
  `id_fpago` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_fpago` varchar(250) NOT NULL,
  `informacion_fpago` text NOT NULL,
  `status` int(1) NOT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_fpago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_galeria`
--

CREATE TABLE IF NOT EXISTS `sis_galeria` (
  `id_foto` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_foto_cate` int(11) DEFAULT NULL,
  `titulo_foto` varchar(250) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_foto`),
  KEY `id_foto_cate` (`id_foto_cate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_galeria_categoria`
--

CREATE TABLE IF NOT EXISTS `sis_galeria_categoria` (
  `id_cate` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(200) DEFAULT NULL,
  `titulo_cate` varchar(250) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cate`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sis_galeria_categoria`
--

INSERT INTO `sis_galeria_categoria` (`id_cate`, `alias`, `titulo_cate`, `ruta`, `status`, `modificado`) VALUES
(1, 'fotos', 'Fotogaleria', 'imagenes/', 1, '2013-09-27 21:46:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_pais`
--

CREATE TABLE IF NOT EXISTS `sis_pais` (
  `id_pais` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(250) DEFAULT NULL,
  `iva` double(8,2) DEFAULT NULL,
  `operador_conversion` varchar(1) DEFAULT NULL,
  `valor_conversion` double(8,2) DEFAULT NULL,
  `bandera` varchar(250) DEFAULT NULL,
  `creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_pedido`
--

CREATE TABLE IF NOT EXISTS `sis_pedido` (
  `id_pedido` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cant` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pedido`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_pedido_compra`
--

CREATE TABLE IF NOT EXISTS `sis_pedido_compra` (
  `id_compra` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `fpago` int(10) DEFAULT NULL,
  `fenvio` int(10) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_compra`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_pedido_pago`
--

CREATE TABLE IF NOT EXISTS `sis_pedido_pago` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) DEFAULT NULL,
  `id_fpago` int(11) DEFAULT NULL,
  `banco` varchar(250) DEFAULT NULL,
  `ref` varchar(250) DEFAULT NULL,
  `monto` varchar(250) DEFAULT NULL,
  `fecha_dep` date DEFAULT NULL,
  `observaciones` text,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_pedido_status`
--

CREATE TABLE IF NOT EXISTS `sis_pedido_status` (
  `id_pedido_status` int(11) NOT NULL AUTO_INCREMENT,
  `cod_status` int(1) DEFAULT NULL,
  `descripcion_status` varchar(250) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pedido_status`),
  KEY `cod_status` (`cod_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_plantilla_articulos`
--

CREATE TABLE IF NOT EXISTS `sis_plantilla_articulos` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `id_art_cate` int(11) DEFAULT NULL,
  `titulo_articulo` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `contenido` text,
  `orden` int(2) DEFAULT NULL,
  `tipo_articulo` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_articulo`),
  KEY `id_art_cate` (`id_art_cate`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sis_plantilla_articulos`
--

INSERT INTO `sis_plantilla_articulos` (`id_articulo`, `id_art_cate`, `titulo_articulo`, `alias`, `contenido`, `orden`, `tipo_articulo`, `status`, `ruta`, `modificado`) VALUES
(1, 4, 'Articulo de Muestra para el tutorial', 'Articulo-de-Muestra-para-el-tutorial', '<p>sdd</p>\r\n', NULL, 3, 1, 'imagenes/', '2014-04-09 01:11:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_plantilla_articulos_foto`
--

CREATE TABLE IF NOT EXISTS `sis_plantilla_articulos_foto` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_articulos` int(11) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_articulos` (`id_articulos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_plantilla_articulo_categoria`
--

CREATE TABLE IF NOT EXISTS `sis_plantilla_articulo_categoria` (
  `id_art_cate` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_art_cate`),
  KEY `id_art_cate` (`id_art_cate`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `sis_plantilla_articulo_categoria`
--

INSERT INTO `sis_plantilla_articulo_categoria` (`id_art_cate`, `descripcion`, `status`, `modificado`) VALUES
(4, 'Sin CategorÃ­a', 1, '2013-08-30 03:08:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_plantilla_menu`
--

CREATE TABLE IF NOT EXISTS `sis_plantilla_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `sis_plantilla_menu`
--

INSERT INTO `sis_plantilla_menu` (`id_menu`, `descripcion`, `status`, `modificado`) VALUES
(1, 'Menu 1', 1, '2013-06-15 03:28:53'),
(2, 'Menu 2', 1, '2013-08-30 05:13:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_plantilla_menuarticulo`
--

CREATE TABLE IF NOT EXISTS `sis_plantilla_menuarticulo` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_link` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `contenido` text,
  `id_menu` int(10) DEFAULT NULL,
  `orden` int(2) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_articulo`),
  KEY `id_menu` (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_plantilla_menu_link`
--

CREATE TABLE IF NOT EXISTS `sis_plantilla_menu_link` (
  `id_menu_link` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_link` varchar(250) DEFAULT NULL,
  `tipo_link` int(1) DEFAULT NULL,
  `id_articulo` int(11) DEFAULT NULL,
  `id_art_cate` int(11) DEFAULT NULL,
  `url_int` varchar(250) DEFAULT NULL,
  `url_ext` varchar(250) DEFAULT NULL,
  `id_menu` int(10) DEFAULT NULL,
  `orden` int(2) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_menu_link`),
  KEY `id_menu` (`id_menu`),
  KEY `id_articulo` (`id_articulo`),
  KEY `id_art_cate` (`id_art_cate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_plantilla_modulos`
--

CREATE TABLE IF NOT EXISTS `sis_plantilla_modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) DEFAULT NULL,
  `contenido` text,
  `posicion` int(2) DEFAULT NULL,
  `orden` int(10) DEFAULT '1',
  `nivel` int(2) DEFAULT NULL,
  `hecho` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `posicion` (`posicion`),
  KEY `posicion_2` (`posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_plantilla_posiciones`
--

CREATE TABLE IF NOT EXISTS `sis_plantilla_posiciones` (
  `id_pos` int(11) NOT NULL AUTO_INCREMENT,
  `cod_pos` varchar(100) DEFAULT NULL,
  `des_pos` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pos`),
  KEY `id_pos` (`id_pos`),
  KEY `id_pos_2` (`id_pos`),
  KEY `id_pos_3` (`id_pos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `sis_plantilla_posiciones`
--

INSERT INTO `sis_plantilla_posiciones` (`id_pos`, `cod_pos`, `des_pos`, `status`, `modificado`) VALUES
(9, 'contenido', 'Contenido', 1, '2014-01-18 16:09:10'),
(10, 'position1', 'Header 100%', 1, '2013-08-20 15:54:30'),
(11, 'position2', 'Logo', 1, '2013-08-20 16:02:11'),
(12, 'position3', 'Contenido Header', 1, '2013-08-20 04:30:00'),
(13, 'position4', 'Menu 1', 1, '2013-08-20 16:02:11'),
(14, 'position5', 'Banner Principal', 1, '2013-08-20 16:02:11'),
(15, 'position6', 'Banner Modulo', 1, '2013-08-20 16:02:11'),
(16, 'position7', 'Contenido Modulo', 1, '2013-08-20 16:02:11'),
(17, 'position8', 'Menu 2', 1, '2013-08-20 16:02:11'),
(18, 'position9', 'Modulo 1', 1, '2013-08-20 16:02:11'),
(19, 'position10', 'Modulo 2', 1, '2013-08-20 16:02:11'),
(20, 'position11', 'Modulo 3', 1, '2013-08-20 16:02:11'),
(21, 'position12', 'Modulo Izquierda', 1, '2013-08-20 16:02:11'),
(22, 'position13', 'Modulo Derecha', 1, '2013-08-20 16:02:11'),
(23, 'position14', 'Banner Abajo', 1, '2013-08-20 16:02:11'),
(24, 'position15', 'Modulo 4', 1, '2013-08-20 16:02:11'),
(25, 'position16', 'Modulo 5', 1, '2013-08-20 16:02:11'),
(26, 'position17', 'Modulo 6', 1, '2013-08-20 16:02:11'),
(27, 'position18', 'Creditos 1', 1, '2013-08-20 16:02:11'),
(28, 'position19', 'Modulo 7', 1, '2013-08-20 16:02:11'),
(29, 'position20', 'Modulo 8', 1, '2013-08-20 16:02:11'),
(30, 'position21', 'Modulo 9', 1, '2013-08-20 16:02:11'),
(31, 'position22', 'Creditos 2', 1, '2013-08-20 16:02:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_productos`
--

CREATE TABLE IF NOT EXISTS `sis_productos` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `cod_prod` varchar(100) DEFAULT NULL,
  `nombre_prod` varchar(250) DEFAULT NULL,
  `id_cate` int(10) DEFAULT NULL,
  `id_marca` int(10) DEFAULT NULL,
  `des_prod` text,
  `des_prod_corto` varchar(250) DEFAULT NULL,
  `existencia` int(10) DEFAULT NULL,
  `precio` double(8,2) DEFAULT NULL,
  `descuento` double(8,2) DEFAULT NULL,
  `destacado` int(1) DEFAULT '0',
  `clave` varchar(250) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_cate` (`id_cate`),
  KEY `id_marca` (`id_marca`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `sis_productos`
--

INSERT INTO `sis_productos` (`id`, `cod_prod`, `nombre_prod`, `id_cate`, `id_marca`, `des_prod`, `des_prod_corto`, `existencia`, `precio`, `descuento`, `destacado`, `clave`, `ruta`, `status`, `modificado`) VALUES
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/807988766512-06-07_1159.jpg', 1, '2014-07-20 02:03:51'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/561988766512-06-07_1159.jpg', 1, '2014-07-20 02:05:04'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/479988766512-06-07_1159.jpg', 1, '2014-07-20 02:09:56'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 02:12:08'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 02:13:23'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 02:13:47'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 02:14:26'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 03:51:17'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 04:00:50'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 04:03:45'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 04:05:24'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 04:06:45'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 04:12:43'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 04:14:04'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 04:14:29'),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 04:15:48'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 04:16:39'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/', 1, '2014-07-20 04:21:56'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imagenes/74498876651008534_523814487666495_972183359_o.jpg', 1, '2014-07-20 04:22:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_productos_categoria`
--

CREATE TABLE IF NOT EXISTS `sis_productos_categoria` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_cate` varchar(250) DEFAULT NULL,
  `des_cate` text,
  `ruta` varchar(250) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `sis_productos_categoria`
--

INSERT INTO `sis_productos_categoria` (`id`, `nombre_cate`, `des_cate`, `ruta`, `status`, `modificado`) VALUES
(7, 'Sin Categoria', NULL, 'imagenes/', 1, '2014-02-12 02:19:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_productos_fabricantes`
--

CREATE TABLE IF NOT EXISTS `sis_productos_fabricantes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(250) DEFAULT NULL,
  `des_marca` text,
  `ruta` varchar(250) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `sis_productos_fabricantes`
--

INSERT INTO `sis_productos_fabricantes` (`id`, `nombre_marca`, `des_marca`, `ruta`, `status`, `modificado`) VALUES
(7, 'Sin Fabricante', NULL, 'imagenes/', 1, '2013-12-16 14:47:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_productos_foto`
--

CREATE TABLE IF NOT EXISTS `sis_productos_foto` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_prod` bigint(11) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_prod` (`id_prod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_users`
--

CREATE TABLE IF NOT EXISTS `sis_users` (
  `id_usuario` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(250) DEFAULT NULL,
  `apellido_usuario` varchar(250) DEFAULT NULL,
  `ci_usuario` bigint(11) DEFAULT NULL,
  `dir_usuario` varchar(250) DEFAULT NULL,
  `email_usuario` varchar(250) DEFAULT NULL,
  `tel_usuario` varchar(100) DEFAULT NULL,
  `movil_usuario` varchar(100) DEFAULT NULL,
  `id_user_tipo` int(1) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`),
  KEY `id_user_tipo` (`id_user_tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `sis_users`
--

INSERT INTO `sis_users` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `ci_usuario`, `dir_usuario`, `email_usuario`, `tel_usuario`, `movil_usuario`, `id_user_tipo`, `ruta`, `status`, `creado`, `modificado`) VALUES
(7, 'ELOY MANUEL', 'CHACON MARTINEZ', 16123617, 'La Cueva', 'INVERNET2010@GMAIL.COM', '02763465689', '04149769092', 5, 'imagenes/339asd34e486612_10151391555286843_906010936_n.jpg', 1, NULL, '2014-07-14 15:10:30'),
(8, 'Administrador', 'Web', 12345678, '-', 'tucorreo@correo.com', '-', '-', 4, 'imagenes/', 1, NULL, '2014-07-18 13:16:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_users_cuenta`
--

CREATE TABLE IF NOT EXISTS `sis_users_cuenta` (
  `id_user` bigint(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `id_usuario` bigint(11) DEFAULT NULL,
  `creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `id_user` (`id_user`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `sis_users_cuenta`
--

INSERT INTO `sis_users_cuenta` (`id_user`, `username`, `password`, `id_usuario`, `creado`) VALUES
(5, 'elmanet', 'c31e5dbc0e1c6ff38680e25584847ae6', 7, '2013-05-09 03:10:00'),
(6, 'admin', '21232f297a57a5a743894a0e4a801fc3', 8, '2014-04-05 03:43:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_users_tipo`
--

CREATE TABLE IF NOT EXISTS `sis_users_tipo` (
  `id_user_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  `cod` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user_tipo`),
  UNIQUE KEY `id_user_tipo` (`id_user_tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `sis_users_tipo`
--

INSERT INTO `sis_users_tipo` (`id_user_tipo`, `descripcion`, `cod`, `precio`, `creado`) VALUES
(1, 'Cliente 1', 1, 1, '2012-06-23 19:46:43'),
(2, 'Cliente 2', 2, 2, '2012-06-23 19:46:43'),
(3, 'Cliente 3', 3, 3, '2012-06-23 19:47:04'),
(4, 'Administrador', 4, 3, '2012-06-23 19:47:04'),
(5, 'SuperAdmin', 5, 3, '2012-06-23 19:47:19');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sis_galeria`
--
ALTER TABLE `sis_galeria`
  ADD CONSTRAINT `sis_galeria_ibfk_1` FOREIGN KEY (`id_foto_cate`) REFERENCES `sis_galeria_categoria` (`id_cate`);

--
-- Filtros para la tabla `sis_plantilla_articulos`
--
ALTER TABLE `sis_plantilla_articulos`
  ADD CONSTRAINT `sis_plantilla_articulos_ibfk_1` FOREIGN KEY (`id_art_cate`) REFERENCES `sis_plantilla_articulo_categoria` (`id_art_cate`);

--
-- Filtros para la tabla `sis_plantilla_articulos_foto`
--
ALTER TABLE `sis_plantilla_articulos_foto`
  ADD CONSTRAINT `sis_plantilla_articulos_foto_ibfk_1` FOREIGN KEY (`id_articulos`) REFERENCES `sis_plantilla_articulos` (`id_articulo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sis_plantilla_menuarticulo`
--
ALTER TABLE `sis_plantilla_menuarticulo`
  ADD CONSTRAINT `sis_plantilla_menuarticulo_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `sis_plantilla_menu` (`id_menu`);

--
-- Filtros para la tabla `sis_plantilla_menu_link`
--
ALTER TABLE `sis_plantilla_menu_link`
  ADD CONSTRAINT `sis_plantilla_menu_link_ibfk_1` FOREIGN KEY (`id_articulo`) REFERENCES `sis_plantilla_articulos` (`id_articulo`),
  ADD CONSTRAINT `sis_plantilla_menu_link_ibfk_2` FOREIGN KEY (`id_art_cate`) REFERENCES `sis_plantilla_articulo_categoria` (`id_art_cate`),
  ADD CONSTRAINT `sis_plantilla_menu_link_ibfk_3` FOREIGN KEY (`id_menu`) REFERENCES `sis_plantilla_menu` (`id_menu`);

--
-- Filtros para la tabla `sis_plantilla_modulos`
--
ALTER TABLE `sis_plantilla_modulos`
  ADD CONSTRAINT `sis_plantilla_modulos_ibfk_1` FOREIGN KEY (`posicion`) REFERENCES `sis_plantilla_posiciones` (`id_pos`);

--
-- Filtros para la tabla `sis_productos`
--
ALTER TABLE `sis_productos`
  ADD CONSTRAINT `sis_productos_ibfk_1` FOREIGN KEY (`id_cate`) REFERENCES `sis_productos_categoria` (`id`),
  ADD CONSTRAINT `sis_productos_ibfk_2` FOREIGN KEY (`id_marca`) REFERENCES `sis_productos_fabricantes` (`id`);

--
-- Filtros para la tabla `sis_productos_foto`
--
ALTER TABLE `sis_productos_foto`
  ADD CONSTRAINT `sis_productos_foto_ibfk_1` FOREIGN KEY (`id_prod`) REFERENCES `sis_productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sis_users`
--
ALTER TABLE `sis_users`
  ADD CONSTRAINT `sis_users_ibfk_1` FOREIGN KEY (`id_user_tipo`) REFERENCES `sis_users_tipo` (`id_user_tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sis_users_cuenta`
--
ALTER TABLE `sis_users_cuenta`
  ADD CONSTRAINT `sis_users_cuenta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `sis_users` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
