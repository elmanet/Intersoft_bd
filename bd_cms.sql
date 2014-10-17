-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-10-2014 a las 20:20:08
-- Versión del servidor: 5.1.73
-- Versión de PHP: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ee000676_bd`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
(1, 'INTERSOFT CMS', 'Sistema', NULL, NULL, 'http://fonts.googleapis.com/css?family=Lato:400,900', 'font-family: ''Lato'', sans-serif;', 1, NULL, '$', 7.00, 0, 'invernet2010@gmail.com', 'www.panamabienes.com', '2014-07-08 05:35:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_curso`
--

CREATE TABLE IF NOT EXISTS `sis_curso` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `id_cate` int(11) DEFAULT NULL,
  `id_user` bigint(11) DEFAULT NULL,
  `titulo_curso` varchar(250) DEFAULT NULL,
  `descripcion_corta` varchar(250) DEFAULT NULL,
  `descripcion` text,
  `mensaje_bienvenida` text,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_curso`),
  KEY `id_cate` (`id_cate`,`id_user`),
  KEY `id_user` (`id_user`),
  KEY `id_cate_2` (`id_cate`),
  KEY `id_curso` (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_curso_categoria`
--

CREATE TABLE IF NOT EXISTS `sis_curso_categoria` (
  `id_cate` int(11) NOT NULL AUTO_INCREMENT,
  `cate_nombre` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_curso_modulos`
--

CREATE TABLE IF NOT EXISTS `sis_curso_modulos` (
  `id_curso_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `id_curso` int(11) DEFAULT NULL,
  `titulo_modulo` varchar(250) DEFAULT NULL,
  `descripcion` text,
  `html1` text,
  `html2` text,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_curso_modulo`),
  KEY `id_cate` (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_curso_registro`
--

CREATE TABLE IF NOT EXISTS `sis_curso_registro` (
  `id_registro` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_curso` int(11) DEFAULT NULL,
  `id_user` bigint(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_registro`),
  KEY `id_curso` (`id_curso`,`id_user`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_curso_tareas`
--

CREATE TABLE IF NOT EXISTS `sis_curso_tareas` (
  `id_curso_tarea` int(11) NOT NULL AUTO_INCREMENT,
  `id_curso_modulo` int(11) DEFAULT NULL,
  `id_user` bigint(11) DEFAULT NULL,
  `descripcion` text,
  `html1` text,
  `ruta` varchar(250) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_curso_tarea`),
  KEY `id_cate` (`id_curso_modulo`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_curso_tarea_comentario`
--

CREATE TABLE IF NOT EXISTS `sis_curso_tarea_comentario` (
  `id_curso_tarea_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `id_curso_tarea` int(11) DEFAULT NULL,
  `comentario` text,
  `calificacionl` varchar(100) DEFAULT NULL,
  `calificacionn` int(3) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_curso_tarea_comentario`),
  KEY `id_cate` (`id_curso_tarea`),
  KEY `id_curso_tarea` (`id_curso_tarea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

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
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_art_cate`),
  KEY `id_art_cate` (`id_art_cate`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `sis_plantilla_articulo_categoria`
--

INSERT INTO `sis_plantilla_articulo_categoria` (`id_art_cate`, `descripcion`, `status`, `modificado`) VALUES
(4, 'Sin CategorÃ­a', 1, '2014-07-05 20:34:47');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
(10, 'position1', 'Logo', 1, '2014-06-10 03:24:48'),
(11, 'position2', 'Modulo Header', 1, '2014-06-10 03:24:58'),
(12, 'position3', 'Contenido Top', 1, '2014-06-10 03:25:09'),
(13, 'position4', 'Modulo Izquierda', 1, '2014-06-10 03:25:21'),
(14, 'position5', 'Modulo Central Top', 1, '2014-06-10 03:25:43'),
(15, 'position6', 'Modulo Central Left', 1, '2014-06-10 03:25:58'),
(16, 'position7', 'Modulo Central Right', 1, '2014-06-10 03:26:07'),
(17, 'position8', 'Modulo Central Abajo', 1, '2014-06-10 03:26:20'),
(18, 'position9', 'Modulo Derecha', 1, '2014-06-10 03:26:30'),
(19, 'position10', 'Contenido Abajo', 1, '2014-06-10 03:26:47'),
(20, 'position11', 'Modulo Abajo Left', 1, '2014-06-10 03:27:10'),
(21, 'position12', 'Modulo Abajo Center', 1, '2014-06-10 03:27:24'),
(22, 'position13', 'Modulo Abajo Right', 1, '2014-06-10 03:27:33'),
(23, 'position14', 'Creditos', 1, '2014-06-10 03:28:07'),
(24, 'position15', '--', 0, '2014-06-10 03:28:24'),
(25, 'position16', '--', 0, '2014-06-10 03:28:32'),
(26, 'position17', '--', 0, '2014-06-10 03:28:40'),
(27, 'position18', '--', 0, '2014-06-10 03:28:47'),
(28, 'position19', '--', 0, '2014-06-10 03:28:54'),
(29, 'position20', '--', 0, '2014-06-10 03:29:10'),
(30, 'position21', '--', 0, '2014-06-10 03:29:17'),
(31, 'position22', 'Modulo Contactos', 1, '2014-06-17 04:38:17');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=69 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_productos_categoria`
--

CREATE TABLE IF NOT EXISTS `sis_productos_categoria` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_cate` varchar(250) DEFAULT NULL,
  `des_cate` text,
  `ruta` varchar(250) DEFAULT NULL,
  `catep` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sis_productos_categoria`
--

INSERT INTO `sis_productos_categoria` (`id`, `nombre_cate`, `des_cate`, `ruta`, `catep`, `orden`, `status`, `modificado`) VALUES
(1, 'Sin Categoria', NULL, 'imagenes/', NULL, NULL, 1, '2014-07-01 15:11:52');

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
(7, 'Eloy Manuel', 'Chacon Martinez', NULL, 'Panama', 'invernet2010@gmail.com', '507-227-6089', '507-6892-5235', 5, 'imagenes/821asd34e486612_10151391555286843_906010936_n.jpg', 1, NULL, '2014-07-14 16:52:46'),
(8, 'Administrador', 'Web', NULL, '-', 'admin@web.com', '-', '-', 4, 'imagenes/', 1, NULL, '2014-10-12 23:19:25');

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
(6, 'admin', '21232f297a57a5a743894a0e4a801fc3', 8, '2014-10-12 23:19:25');

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
(5, 'Super Admin', 5, 3, '2012-06-23 19:47:19');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sis_curso`
--
ALTER TABLE `sis_curso`
  ADD CONSTRAINT `sis_curso_ibfk_1` FOREIGN KEY (`id_cate`) REFERENCES `sis_curso_categoria` (`id_cate`),
  ADD CONSTRAINT `sis_curso_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `sis_users` (`id_usuario`);

--
-- Filtros para la tabla `sis_curso_modulos`
--
ALTER TABLE `sis_curso_modulos`
  ADD CONSTRAINT `sis_curso_modulos_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `sis_curso` (`id_curso`);

--
-- Filtros para la tabla `sis_curso_registro`
--
ALTER TABLE `sis_curso_registro`
  ADD CONSTRAINT `sis_curso_registro_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `sis_curso` (`id_curso`),
  ADD CONSTRAINT `sis_curso_registro_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `sis_users` (`id_usuario`);

--
-- Filtros para la tabla `sis_curso_tareas`
--
ALTER TABLE `sis_curso_tareas`
  ADD CONSTRAINT `sis_curso_tareas_ibfk_1` FOREIGN KEY (`id_curso_modulo`) REFERENCES `sis_curso_modulos` (`id_curso_modulo`),
  ADD CONSTRAINT `sis_curso_tareas_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `sis_users` (`id_usuario`);

--
-- Filtros para la tabla `sis_curso_tarea_comentario`
--
ALTER TABLE `sis_curso_tarea_comentario`
  ADD CONSTRAINT `sis_curso_tarea_comentario_ibfk_1` FOREIGN KEY (`id_curso_tarea`) REFERENCES `sis_curso_tareas` (`id_curso_tarea`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `sis_plantilla_articulos_foto_ibfk_3` FOREIGN KEY (`id_articulos`) REFERENCES `sis_plantilla_articulos` (`id_articulo`) ON DELETE CASCADE ON UPDATE CASCADE;

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
