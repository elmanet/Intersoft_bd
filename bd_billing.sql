-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2014 a las 04:37:40
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `temp_miguayaba3`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `sis_banners`
--

INSERT INTO `sis_banners` (`id_foto`, `posicion`, `titulo_foto`, `info`, `ruta`, `orden`, `creado`) VALUES
(3, 1, NULL, NULL, 'imagenes/7139887665b1.jpg', 1, '2014-07-14 13:42:52'),
(4, 1, NULL, NULL, 'imagenes/6019887665B2.jpg', 2, '2014-07-14 13:53:12'),
(5, 1, NULL, NULL, 'imagenes/4739887665B3.jpg', 3, '2014-07-14 13:56:57');

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
  `ruta` varchar(250) DEFAULT NULL,
  `dato_factura` text,
  `modificacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_config`),
  UNIQUE KEY `id_config` (`id_config`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sis_config`
--

INSERT INTO `sis_config` (`id_config`, `title_site`, `meta_des`, `meta_clave`, `id_google`, `fuente_google`, `tipof_google`, `tienda`, `catalogo`, `simbolo_moneda`, `impuesto`, `envios`, `email`, `website`, `ruta`, `dato_factura`, `modificacion`) VALUES
(1, 'MiGuayaba', 'Sistema', NULL, NULL, 'http://fonts.googleapis.com/css?family=Lato:400,900', 'font-family: ''Lato'', sans-serif;', 1, 1, '$', 7.00, 0, 'invernet2010@gmail.com', 'www.panamabienes.com', 'logo.png', '<h3>INTERSOFT-latin</h3>\r\n<p>VÃ­a Brasil Edif. ParanÃ¡ Planta Baja 02 Ciudad de PanamÃ¡.<br>\r\nTelf. 2276089\r\n</p>', '2014-08-12 12:54:14');

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
-- Estructura de tabla para la tabla `sis_factura`
--

CREATE TABLE IF NOT EXISTS `sis_factura` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `tipo_pago` int(1) DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  `termino_entrega` varchar(250) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_factura_detalle`
--

CREATE TABLE IF NOT EXISTS `sis_factura_detalle` (
  `id_detalle_fact` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) DEFAULT NULL,
  `id_producto` bigint(11) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `newmargen` int(3) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_detalle_fact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_factura_inventario`
--

CREATE TABLE IF NOT EXISTS `sis_factura_inventario` (
  `id_fact_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `id_proveedor` int(11) DEFAULT NULL,
  `fecha_inventario` date DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_fact_inventario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_factura_inventario_detalle`
--

CREATE TABLE IF NOT EXISTS `sis_factura_inventario_detalle` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_fact_inventario` int(11) DEFAULT NULL,
  `id_producto` bigint(11) DEFAULT NULL,
  `precio_costo` double(8,2) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_detalle`),
  KEY `id_producto` (`id_producto`),
  KEY `id_fact_inventario` (`id_fact_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_factura_proveedor`
--

CREATE TABLE IF NOT EXISTS `sis_factura_proveedor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(250) DEFAULT NULL,
  `des_marca` text,
  `ruta` varchar(250) DEFAULT 'imagenes/',
  `status` int(2) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `sis_plantilla_articulos`
--

INSERT INTO `sis_plantilla_articulos` (`id_articulo`, `id_art_cate`, `titulo_articulo`, `alias`, `contenido`, `orden`, `tipo_articulo`, `status`, `ruta`, `modificado`) VALUES
(13, 4, 'Quienes Somos', 'Quienes-Somos', '<p>Somos una empresa muy exitosa!</p>\r\n', NULL, 3, 1, 'imagenes/', '2014-07-07 16:48:57'),
(14, 5, 'Google confirma compra de Twitch para potenciar los videojuegos en YouTube', 'Google-confirma-compra-de-Twitch-para-potenciar-los-videojuegos-en-YouTube', '<p>A un precio de 1.000 millones de dÃ³lares, la compra del servicio streaming de videojuegos Twitch, es la inversiÃ³n mÃ¡s importante del aÃ±o para el gigante Google. &nbsp;&nbsp;El acuerdo comercial permite ahora a Google acceder a la llave definitiva del control en el corto plazo del mundo de los videos, en tanto el buscador ya tiene la plataforma audiovisual YouTube en sus manos, asÃ­ como el servicio de Hangouts adecuado.</p>\r\n\r\n<p>La compra marca ademÃ¡s la importancia que han tomado las transmisiones de video en directo, algo donde Google ya ha comenzado a trazar su senda tanto en los Ãºltimos eventos deportivos mundiales, como en conciertos, shows y otros momentos internacionales descollantes que han sido transmitidos con singular y creciente nÃºmero de audiencia.</p>\r\n\r\n<p>La compra sin embargo es menor a lo que Google pagÃ³ en 2006 por YouTube: 1.650 millones de dÃ³lares, que le han permitido alcanzar a unos 1.000 millones de usuarios que consumen unos&nbsp;6.000 millones de horas de video mensuales.</p>\r\n\r\n<p>Twitch fue pionera en los videos en tiempo real</p>\r\n\r\n<p>La empresa que compra Google estÃ¡ operando desde junio de 2011, desde San Francisco, California, de la mano de sus creadores â€“Justin Kan y Emmett Shear- que la concibieron como uno de los primeros servicios de video en tiempo real (livestreams). La empresa tiene unos 50 millones de usuarios en activo, de los cuales 1 millÃ³n son miembros que emiten videos. Distribuye unos 12,5-13 millones de minutos de video mensualmente y tiene acuerdos con webs de informaciÃ³n noticiosa referencial como GameSpot y Joystiq.</p>\r\n\r\n<p>La startup, ha logrado financiaciÃ³n de firmas como Bessemer Venture Partners, Alsop Louie Partners o WestSummitCapital,&nbsp;que le han permitido acceder a mÃ¡s de 34 millones de dÃ³lares en los Ãºltimos tiempos.&nbsp;</p>\r\n', NULL, 0, 1, 'imagenes/2369887665Google-4.jpg', '2014-07-27 03:50:20'),
(15, 5, 'Cinco consejos para tener Ã©xito en el negocio de â€˜social mediaâ€™ global', 'Cinco-consejos-para-tener-exito-en-el-negocio-de-â€˜social-mediaâ€™-global', '<p>En la actualidad, las empresas buscan impulsar la coherencia y la eficiencia a travÃ©s de sus esfuerzos de marketing. Por esta razÃ³n, es cada vez mÃ¡s frecuente que contraten agencias de Ã¡mbito europeo o global. Ejecutar acciones de social media con Ã©xito en mÃºltiples regiones exige comportamientos diferentes: es un complicado juego de control, flexibilidad, colaboraciÃ³n y gobernabilidad.</p>\r\n\r\n<p>Para mÃ¡s inri, cada negocio tiene una estructura de trabajo diferente, por lo que lo que funciona para un cliente no necesariamente funciona para otro. Con todas estas consideraciones es recomendable tener en mente estos cinco consejos con el fin de evitar que el primer aÃ±o de actividad como agencia global social para una marca no sea el Ãºltimo.</p>\r\n\r\n<p><strong>Entiende cÃ³mo se organiza el cliente</strong></p>\r\n\r\n<p>Cada empresa se estructura de forme diferente. Algunas tienen un modelo maduro de central-sede, en el que los mercados locales sÃ³lo pueden ejecutar lo que marca la estrategia global. Mientras, otras tienen una estructura, en la que son las filiales locales las que tiene la Ãºltima palabra sobre lo que se hace y no se hace.</p>\r\n\r\n<p>Antes de adquirir cualquier compromiso, es crÃ­tico conocer estas dinÃ¡micas que determinarÃ¡n cÃ³mo se estructura la relaciÃ³n de trabajo en el largo plazo.</p>\r\n\r\n<p><strong>SÃ© imperativo</strong></p>\r\n\r\n<p>Es fÃ¡cil pensar que la consistencia y la ventaja de eficiencia de costes que proporciona una agencia global social, significan que el contenido debe ser el mismo en todas las regiones y paÃ­ses en los que opera la marca. En el Ã¡rea de lo social, esto es el camino hacia el fracaso.</p>\r\n\r\n<p>La regla de oro de lo social es que el contenido debe ser relevante para tu audiencia, por lo que si &nbsp;el material que utilizas para Polonia es el mismo que el que usas para Estados Unidos, Dubai o EspaÃ±a, la cosa no funcionarÃ¡.</p>\r\n\r\n<p>Si bien es verdad que es necesario crear contenido global tambiÃ©n lo es que los mercados tengan la posibilidad de crear su propio contenido local. La clave es que el contenido sea consistente con la marca pero que ademÃ¡s incorpore ese toque local, que le otorgue la relevancia necesaria.</p>\r\n\r\n<p><strong>Colabora</strong></p>\r\n\r\n<p>Por las mismas razones de consistencia y eficiencia de costes, las campaÃ±as a menudo se asientan en la firme convicciÃ³n de que Ã©sta es competencia de la agencia global como opuesta a los mercados locales. La tentaciÃ³n de situarse en una torre de marfil desde la que dar Ã³rdenes es, sin duda alguna, un paso hacia el fracaso.</p>\r\n\r\n<p>Hacer esto significa que la campaÃ±a no tendrÃ¡ repercusiÃ³n en el mercado local e incluso peor, que la filial se niegue a ejecutarla. La colaboraciÃ³n es imprescindible. Por este motivo, es fundamental compartir la estrategia inicial y los conceptos con los mercados clave para identificar cualquier barrera lingÃ¼Ã­stica o cultural. Esto no significa diseÃ±ar la campaÃ±a en comitÃ© sino mostrar empatÃ­a y tener en cuenta a los mercados locales en tu estrategia.</p>\r\n\r\n<p><strong>Establece unas directrices guÃ­a</strong></p>\r\n\r\n<p>A menudo a las reuniones que asisto, se culpabiliza a un determinado mercado por no ser lo suficientemente fiel a la marca en determinada plataforma. Desde luego, no es culpa de la filial sino de la empresa, que no suministra la documentaciÃ³n o el soporte necesario. Es importante invertir tiempo en crear guÃ­as de social media y kits de herramientas que ayuden a las filiales en sus acciones sociales. Incluso mejor: desarrolla un documento en lÃ­nea que permita los cambios orgÃ¡nicos que lo social demanda.</p>\r\n\r\n<p><strong>Demuestra lo que vales</strong></p>\r\n\r\n<p>Sin duda, este es el aspecto mÃ¡s importante. La prioridad nÃºmero uno para una agencia global social es probar su eficacia y demostrar que cumple sus objetivos de negocio.</p>\r\n\r\n<p>Para conseguirlo, es conveniente centrarse en la creaciÃ³n de indicadores clave de rendimiento social, los archiconocidos KPIs en sus siglas en inglÃ©s. Desde luego, estamos de acuerdo que no es una tarea fÃ¡cil y que, en ocasiones, embarcarse en esta tarea puede llevar meses, pues se necesita llegar a un acuerdo sobre quÃ© se mide, las herramientas que se van a utilizar para realizar esa mediciÃ³n, la gente y los procesos que se miden y, por Ãºltimo, los sistemas para integrar los KPI sociales en un marco de KPI de marketing mÃ¡s amplio.</p>\r\n\r\n<p>Prioriza esta tarea, ya que en el caso de que la agencia no pueda demostrar su efectividad tendrÃ¡ una conversaciÃ³n dura con el cliente sobre lo conseguido en el aÃ±o que puede acabar con la relaciÃ³n.</p>\r\n\r\n<hr />\r\n<p><em>La autora de este artÃ­culo es Nadya Powell, managing director de MRY en Reino Unido, agencia de social media de&nbsp;DigitasLBi</em></p>\r\n', NULL, 0, 1, 'imagenes/7869887665redes_sociales_espana1.jpg', '2014-07-27 04:17:07'),
(16, 5, 'Â¿Por quÃ© es tan importante tener un sitio web?', '-Por-que-es-tan-importante-tener-un-sitio-web-', '<p>En la actualidad&nbsp; TODA&nbsp; empresa, organizaciÃ³n, no importa el tamaÃ±o,&nbsp; necesita y debe tener un sitio Web.&nbsp; En EEUU y en los paÃ­ses mÃ¡s avanzados de la UE estÃ¡ demostrado que la intensidad en la aplicaciÃ³n de nuevas tecnologÃ­as y la incorporaciÃ³n de un Sitio Web, estÃ¡ correlacionado de manera positiva con el incremento de las ventas, la productividad y el valor de mercado de las empresas.&nbsp;AdemÃ¡s, estudiosos del E-Business consideran que las empresas que no entren en el campo de Internet en los prÃ³ximos 10 aÃ±os, desaparecerÃ¡n!. Conozca a continuaciÃ³n las ventajas de tener un sitio web...</p>\r\n\r\n<h3>Ventajas de tener un sitio web:</h3>\r\n\r\n<p><strong>1.&nbsp;Alcance mundial de sus productos y servicios:</strong>&nbsp;a travÃ©s del sitio Web Usted podrÃ¡ llegar a clientes potenciales del mundo entero. Las limitaciones geogrÃ¡ficas ya no existen, un sitio Web es como una oficina de ventas en cada lugar del planeta.&nbsp;<br />\r\n<br />\r\n<strong>2.&nbsp;Competir al lado de los mÃ¡s grandes:</strong>&nbsp;Su imagen en Internet podrÃ¡ ser comparable a cualquier gran compaÃ±Ã­a de su mismo sector. Es un terreno imparcial donde el sitio web de una empresa pequeÃ±a puede ser tanto o mÃ¡s atractivo que el de una empresa muy grande. Por eso podrÃ¡ competir justo al lado de las empresas mÃ¡s grandes, de igual a igual.&nbsp;<br />\r\n<br />\r\n<strong>3.&nbsp;Disponible las 24horas, todos los dÃ­as aÃ±o:&nbsp;</strong>La presencia universal tambiÃ©n se complementa con la presencia las 24 horas, los 7 dÃ­as de la semana, los 365 dÃ­as del aÃ±o, lo que permite que aÃºn fuera del horario de trabajo, la empresa siga produciendo y creciendo. AdemÃ¡s de atender otras partes del planeta que por diferencias horarias serÃ­a imposible realizarlo al instante.&nbsp;<br />\r\n<br />\r\n<strong>4.&nbsp;Menos Costos Operativos:</strong>&nbsp;Ahorro en gastos de publicidad, reducciÃ³n de telÃ©fono y personal, de modo que cualquier informaciÃ³n que pudiera necesitar el cliente la podrÃ¡ consultar en su pÃ¡gina Web, esto le ahorra tiempo, dinero y reduce el nÃºmero de llamadas telefÃ³nicas de su negocio, locales y de larga distancia.&nbsp;<br />\r\n<br />\r\n<strong>5.&nbsp;Imagen Profesional de su empresa:</strong>&nbsp;Actualmente las empresas respetadas en el medio tienen presencia en la Web. El no contar con una direcciÃ³n en Internet, puede dar una imagen poco seria y profesional. Cada vez mÃ¡s el tener un sitio Web serÃ¡ definitivo para seguir en carrera. &nbsp;</p>\r\n\r\n<p><strong><em>Recuerde que tener presencia en la web no le asegura el Ã©xito de su empresa, pero el no estar lo aleja cada vez mÃ¡s de la competencia.</em></strong></p>\r\n', NULL, 0, 1, 'imagenes/1409887665paginas-web.jpg', '2014-07-27 18:56:55'),
(17, 5, 'Claves para mejorar su seguridad en Facebook', 'Claves-para-mejorar-su-seguridad-en-Facebook', '<p>Con cinco pasos es posible mejorar la seguridad en Facebook. TambiÃ©n tendrÃ¡ la certeza de que su informaciÃ³n personal es controlada de forma eficaz. &nbsp;</p>\r\n\r\n<p>La facilidad con la que se accede a la informaciÃ³n personal en las redes sociales es una de las cuestiones mÃ¡s preocupantes en la sociedad actual.</p>\r\n\r\n<p>En Facebook, un promedio de 3.9 millones de personas usan diariamente las herramientas de regulaciÃ³n de privacidad que la red social proporciona.</p>\r\n\r\n<p>Sin embargo, una simple visita al menÃº de ConfiguraciÃ³n de Facebook no es suficiente para salvaguardar la informaciÃ³n privada.</p>\r\n\r\n<p>Frente a esta problemÃ¡tica, el equipo de InvestigaciÃ³n de ESET LatinoamÃ©rica recomienda cinco pasos rÃ¡pidos para mejorar la seguridad en Facebook y asegurar el control eficaz de la informaciÃ³n personal.</p>\r\n\r\n<p><strong>1. Tome el control de las publicaciones</strong></p>\r\n\r\n<p>AsegÃºrese de usar y entender la herramienta de selecciÃ³n de pÃºblico de Facebook, que aparece como un menÃº desplegable en cada imagen, publicaciÃ³n y vÃ­nculo que se comparte.</p>\r\n\r\n<p>TambiÃ©n se puede usar este menÃº para limitar las publicaciones en forma retrospectiva.</p>\r\n\r\n<p>Asimismo hay que asegurarse de conocer el pÃºblico con el que se estÃ¡ compartiendo, lo que significa que debe controlar la lista de amigos con regularidad. Lo anterior es porque no tiene mucho sentido limitar las publicaciones si los amigos son personas que no se conocen en realidad.</p>\r\n\r\n<p><strong>2. Administre las publicaciones donde lo etiquetaron</strong></p>\r\n\r\n<p>Para recuperar el control del etiquetado se deberÃ¡ usar el proceso de revisiÃ³n de las etiquetas, que permite aceptar o no las etiquetas en imÃ¡genes y otras publicaciones.</p>\r\n\r\n<p>Para habilitar la revisiÃ³n de las etiquetas, vaya a ConfiguraciÃ³n de Facebook, luego BiografÃ­a y etiquetado, luego RevisiÃ³n de las etiquetas, ahÃ­ establecer el menÃº en Habilitado.</p>\r\n\r\n<p>TambiÃ©n es conveniente usar la biografÃ­a de Facebook para controlar fotografÃ­as donde se puede haber etiquetado en el pasado. Para ello visite el registro de actividades, es un recuadro del lado derecho de la pÃ¡gina de perfil, al que se puede acceder con un clic sobre la foto de portada en el sector superior derecho de la pÃ¡gina principal.</p>\r\n\r\n<p>Esto permitirÃ¡ ver la lista completa de publicaciones de la biografÃ­a. Pase el mouse sobre la fotografÃ­a o la publicaciÃ³n que desee quitar, haga clic en la flecha hacia abajo, y luego en informar/quitar etiqueta.</p>\r\n\r\n<p><strong>3. AsegÃºrese de no tropezar con la propia biografÃ­a</strong></p>\r\n\r\n<p>La biografÃ­a no es un indicador confiable de lo que la gente puede encontrar acerca de uno en Facebook, ya sean fotografÃ­as, comentarios o lo que nos gusta.</p>\r\n\r\n<p>Las publicaciones que se ocultan en la biografÃ­a aÃºn pueden ser visibles: tan solo no serÃ¡n visibles para que el que estÃ© mirando la pÃ¡gina.</p>\r\n\r\n<p>Si en cambio alguien busca, por decir, "Fotos de [Tu nombre]", serÃ¡n claramente visibles a menos que se hayan tomado ciertas medidas y se haya alterado la configuraciÃ³n de Facebook para controlarlo.</p>\r\n\r\n<p>La Ãºnica herramienta que sirve para mantener la informaciÃ³n privada es el registro de actividades, el cual requiere ajustar la configuraciÃ³n de privacidad en forma manual para cada publicaciÃ³n. Vale la pena hacerlo; por el contrario, los usuarios de los sitios pueden buscar simplemente el nombre y "fotografÃ­as" para ver todas las publicaciones etiquetadas, mÃ¡s allÃ¡ de que estÃ© en la biografÃ­a o no.</p>\r\n\r\n<p><strong>4. Elimine el historial de bÃºsquedas</strong></p>\r\n\r\n<p>Para muchos usuarios puede ser una novedad que Facebook se ocupe de almacenar el historial de bÃºsquedas. Pero de hecho lo hace y personaliza los resultados que recibe en consonancia.</p>\r\n\r\n<p>Estos datos pueden ser bastante privados, por ejemplo, si buscÃ³ reiteradamente el nombre de una persona especÃ­fica, puede ser muy obvio, dado que la funciÃ³n sugerirÃ¡ en forma automÃ¡tica los nombres que has buscado con mayor frecuencia.</p>\r\n\r\n<p>Por suerte, es posible borrar estos datos en su totalidad desde la ConfiguraciÃ³n de Facebook. Vaya a registro de actividades (una de las opciones en la parte superior de la pÃ¡gina de perfil), seleccione MÃ¡s y luego Buscar.</p>\r\n\r\n<p>En esta pÃ¡gina se encuentran las opciones para eliminar ya sea bÃºsquedas individuales o el historial completo de bÃºsquedas.</p>\r\n\r\n<p>Facebook almacena estos datos en forma predeterminada y estÃ¡n disponibles para todo el que se siente frente a una PC donde se haya dejado una cuenta abierta.</p>\r\n\r\n<p><strong>5. De ser necesario, elimine la cuenta de forma permanente</strong></p>\r\n\r\n<p>Desde el menÃº de Facebook, parecerÃ­a que desactivar una cuenta es lo que mÃ¡s se asemeja a eliminarla. Es un paso bastante drÃ¡stico, por lo que puede resultar aconsejable descargar una copia de los datos de Facebook antes de hacerlo.</p>\r\n\r\n<p>Para descargarla, haga clic en el menÃº, luego en ConfiguraciÃ³n, elija descargar una copia de su informaciÃ³n (debajo de configuraciÃ³n general de la cuenta) y por Ãºltimo elija "crear mi archivo".</p>\r\n\r\n<p>Para eliminar permanentemente la cuenta se debe estar conectado con el usuario de Facebook para leer y seguir las instrucciones (se enviarÃ¡ una solicitud de eliminaciÃ³n para dicha cuenta).</p>\r\n\r\n<p>Luego de llenar la solicitud se contarÃ¡ con 14 dÃ­as para volver a conectarse y cancelar la solicitud, pero pasado ese punto no habrÃ¡ manera de restaurar los datos y (lo fundamental) la gente no podrÃ¡ buscar ni ver el perfil o los contenidos que se compartieron con Facebook.</p>\r\n', NULL, 0, 1, 'imagenes/6789887665face-seguridad.JPG', '2014-07-27 19:00:51'),
(18, 4, 'Â¿Porque Nosotros?', '-Porque-Nosotros-', '<ul>\r\n	<li>Tenemos 12 aÃ±os en el Mercado</li>\r\n	<li>Desarrollamos tu sitio Web a Medida</li>\r\n	<li>Somos una Empresa en Crecimiento</li>\r\n	<li>Cada Cliente puede Administratar su PÃ¡gina</li>\r\n	<li>Estamos siempre de la mano de la TecnologÃ­a y de los nuevos Avances</li>\r\n	<li>Te Ofrecemos soporte 100% Garantizado</li>\r\n</ul>\r\n', NULL, 3, 1, 'imagenes/', '2014-07-28 01:11:43'),
(19, 4, 'Sobre Nosotros', 'Sobre-Nosotros', '<p><img alt="" src="http://127.0.0.1/miguayaba3.0/images/486612_10151391555286843_906010936_n.jpg" style="width: 300px; height: 300px; margin-left: 10px; margin-right: 10px; float: left;" />Todo comenzÃ³ como un sueÃ±o hace ya 12 aÃ±os, y hoy en dÃ­a es una realidad. Somos&nbsp;INTERSOFT-latin&nbsp;empresa siempre en la bÃºsqueda de nuevos productos y servicios para brindarles a las personas una soluciÃ³n en el Ã¡rea TecnolÃ³gica. Iniciamos operaciones el 22 de febrero de 2002, y desde entoces nos hemos destacado por desarrollar aplicaciones especificas para nuestros clientes. Desde el aÃ±o 2008 nos incorporamos al desarrollo de aplicaciones Web para empresas e instituciones educativas (Sistema Intersoft | Software Educativo).</p>\r\n\r\n<p>En el 2012 naciÃ³&nbsp;MiGuayaba.com&nbsp;como estrategÃ­a de mercado para internacionalizar la compaÃ±ia y asi ofrecerle a toda&nbsp;Latinoamerica los mejores precios y calidad de servicio en Dominios, Hosting y Servicios Web. Estamos operando en Venezuela, Colombia, PanamÃ¡ y vamos rumbo a conquistar a todo el mercado Latinoamericano, creemos en lo que hacemos y en nuestros SueÃ±os, confiados que nuestro trabajo ayuda a miles de personas a lograr sus metas. Mil Gracias!</p>\r\n\r\n<p><em>Eloy M. ChacÃ³n<br />\r\nCEO INTERSOFT-latin<br />\r\nDesarrollamos tus Ideas!</em></p>\r\n', NULL, 3, 1, 'imagenes/', '2014-07-28 01:14:56'),
(20, 4, 'Para comenzar sÃ³lo debes tener claro lo que deseas de tÃº pÃ¡gina Web', 'Para-comenzar-solo-debes-tener-claro-lo-que-deseas-de-tu-pagina-Web', '<h3><img alt="" src="http://127.0.0.1/miguayaba3.0/images/como-comenzar.jpg" style="width: 400px; height: 624px; float: right;" />Te presentamos los 6 PASOS que usamos para hacer que tÃº pÃ¡gina Web sea una realidad en un tiempo RÃ©cord:</h3>\r\n\r\n<p>1. Debes escoger un nombre para tÃº pÃ¡gina, que sea sencillo, corto y facil de recordar y que este disponible para la compra. Ejm.: www.repuestosjc.com, www.musicavida.net, www.tupuedes.org</p>\r\n\r\n<p>2. Debes escoger el Plan de DiseÃ±o Web que mÃ¡s se adapte a tus necesidades y requerimientos&nbsp;(Nosotros te podemos asesorar cual es el plan perfecto para ti)</p>\r\n\r\n<p>3. Terminada esta fase realizamos un Contrato de Servicios y definimos el tiempo de entrega de tÃº pÃ¡gina web</p>\r\n\r\n<p>4. Iniciamos la fase de DiseÃ±o, donde se entregarÃ¡n los bocetos que definirÃ¡n el diseÃ±o profesional de tÃº pÃ¡gina Web</p>\r\n\r\n<p>5. Terminada la fase de diseÃ±o, comenzamos con la implementaciÃ³n y programaciÃ³n de tÃº pÃ¡gina Web, donde te daremos una direcciÃ³n electrÃ³nica para que puedas ver los avances en tiempo real</p>\r\n\r\n<p>6. Al Concluir la fase de ProgramaciÃ³n realizamos los ajustes finales para &nbsp;proceder a la entrega de la pÃ¡gina Web</p>\r\n', NULL, 3, 1, 'imagenes/', '2014-07-28 01:18:04'),
(21, 4, 'Nuestros Clientes', 'Nuestros-Clientes', '<p>Nuestros Clientes son nuestra mayor inspiraciÃ³n para seguir trabajando y mejorando cada dia. Estos son algunos de nuestros clientes de este 2014.</p>\r\n\r\n<h2>Portafolio Web</h2>\r\n', NULL, 3, 1, 'imagenes/', '2014-07-28 01:57:43');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `sis_plantilla_articulos_foto`
--

INSERT INTO `sis_plantilla_articulos_foto` (`id`, `id_articulos`, `ruta`, `creado`) VALUES
(1, 21, 'imagenes/5609887665443221.JPG', '2014-07-28 01:59:16'),
(2, 21, 'imagenes/5609887665443222.JPG', '2014-07-28 01:59:16'),
(3, 21, 'imagenes/5609887665443223.JPG', '2014-07-28 01:59:16'),
(4, 21, 'imagenes/5609887665443224.JPG', '2014-07-28 01:59:16'),
(5, 21, 'imagenes/5609887665443225.JPG', '2014-07-28 01:59:16'),
(6, 21, 'imagenes/5609887665443226.JPG', '2014-07-28 01:59:16'),
(7, 21, 'imagenes/5609887665443227.JPG', '2014-07-28 01:59:16'),
(8, 21, 'imagenes/5609887665443228.JPG', '2014-07-28 01:59:16'),
(9, 21, 'imagenes/5609887665443229.JPG', '2014-07-28 01:59:16'),
(10, 21, 'imagenes/56098876654432210.JPG', '2014-07-28 01:59:16'),
(11, 21, 'imagenes/56098876654432211.JPG', '2014-07-28 01:59:16'),
(12, 21, 'imagenes/56098876654432213.JPG', '2014-07-28 01:59:16'),
(13, 21, 'imagenes/56098876654432212.JPG', '2014-07-28 01:59:16'),
(14, 21, 'imagenes/56098876654432214.JPG', '2014-07-28 01:59:16'),
(15, 21, 'imagenes/56098876654432215.JPG', '2014-07-28 01:59:16'),
(16, 21, 'imagenes/56098876654432216.JPG', '2014-07-28 01:59:16'),
(17, 21, 'imagenes/56098876654432217.JPG', '2014-07-28 01:59:16'),
(18, 21, 'imagenes/56098876654432219.JPG', '2014-07-28 01:59:16'),
(19, 21, 'imagenes/56098876654432218.JPG', '2014-07-28 01:59:16'),
(20, 21, 'imagenes/56098876654432220.JPG', '2014-07-28 01:59:16'),
(21, 21, 'imagenes/56098876654432221.JPG', '2014-07-28 01:59:16');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `sis_plantilla_articulo_categoria`
--

INSERT INTO `sis_plantilla_articulo_categoria` (`id_art_cate`, `descripcion`, `status`, `modificado`) VALUES
(4, 'Sin CategorÃ­a', 1, '2014-07-05 20:34:47'),
(5, 'Tecnologia', 1, '2014-07-27 03:48:29');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `sis_plantilla_menu_link`
--

INSERT INTO `sis_plantilla_menu_link` (`id_menu_link`, `titulo_link`, `tipo_link`, `id_articulo`, `id_art_cate`, `url_int`, `url_ext`, `id_menu`, `orden`, `status`, `modificado`) VALUES
(1, 'Dominios', 1, 13, NULL, NULL, NULL, 1, 2, 1, '2014-07-14 12:46:00'),
(2, 'Hosting', 3, 13, NULL, 'index.php?mg=categoria-de-productos&135798642=2#contenido', NULL, 1, 3, 1, '2014-07-14 12:46:08'),
(3, 'DiseÃ±o Web', 3, 13, NULL, 'index.php?mg=categoria-de-productos&135798642=7#contenido', NULL, 1, 4, 1, '2014-07-14 12:46:20'),
(4, 'Inicio', 3, 13, NULL, 'index.php', NULL, 1, 1, 1, '2014-07-14 13:33:04'),
(5, 'Marketing', 3, 13, NULL, 'index.php?mg=categoria-de-productos&135798642=8#contenido', NULL, 1, 6, 1, '2014-07-26 22:54:32'),
(6, 'DiseÃ±o GrÃ¡fico', 3, 13, NULL, 'index.php?mg=categoria-de-productos&135798642=6#contenido', NULL, 1, 5, 1, '2014-07-26 22:56:57');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `sis_plantilla_modulos`
--

INSERT INTO `sis_plantilla_modulos` (`id`, `titulo`, `contenido`, `posicion`, `orden`, `nivel`, `hecho`, `status`, `modificado`) VALUES
(6, 'logo', '<p><a href="index.php"><img alt="" src="http://127.0.0.1/1-PlantillaMaestra/images/site/logo_miguayaba_450px.png" style="width: 100%;" /></a></p>\r\n', 10, 1, 1, 0, 1, '2014-07-07 16:40:48'),
(7, 'Promo MiGuayaba Ilimitada', '<p style="text-align:center;"><img alt="" src="http://127.0.0.1/miguayaba3.0/images/promo-miguayabailimitada.png" style="width: 60%; text-align: center;" /></p>\r\n', 18, 1, 1, 0, 1, '2014-07-14 14:18:23'),
(8, 'Modulo de Facebook', '<div class="fb-like-box" data-href="https://www.facebook.com/miguayaba" data-width="300" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="true" data-show-border="false"></div>', 18, 99, 1, 7, 1, '2014-07-26 23:00:36'),
(9, 'Modulos Top Principal', '<table border="0" cellpadding="0" cellspacing="0" class="tabla-top" style="width: 100%;">\r\n	<tbody>\r\n		<tr class="titulo">\r\n			<td><a href="index.php?mod=-Porque-Nosotros-#contenido"><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/icono1.png" style="width: 137px; height: 137px;" /><br />\r\n			Â¿Por quÃ© nosotros?</a></td>\r\n			<td><a href="index.php?mod=Sobre-Nosotros#contenido"><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/icono2.png" style="width: 137px;" /><br />\r\n			Â¿Quienes Somos?</a></td>\r\n			<td><a href="index.php?mod=Para-comenzar-solo-debes-tener-claro-lo-que-deseas-de-tu-pagina-Web#contenido"><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/icono3.png" style="width: 137px;" /><br />\r\n			Â¿CÃ³mo Comenzar?</a></td>\r\n			<td><a href="index.php?mod=Nuestros-Clientes#contenido"><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/icono4.png" style="width: 137px;" /><br />\r\n			Clientes</a></td>\r\n		</tr>\r\n		<tr class="contenido">\r\n			<td>Conocemos el Mercado tenemos 12 aÃ±os de Experiencia</td>\r\n			<td>Somos INTERSOFT-latin, que desde febrero del 2002 desarrollamos ideas para ti&nbsp;</td>\r\n			<td>6 PASOS usamos para hacer que tÃº Proyecto sea una realidad en un tiempo RÃ©cord</td>\r\n			<td>Nuestros Clientes son nuestro mejor respaldo y es por ellos que seguimos mejorando</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Â </p>\r\n', 12, 1, 1, 7, 1, '2014-07-26 23:11:56'),
(11, 'Creditos', '<p>Todos los derechos reservados Â© 2014 | <strong>MiGuayaba.com</strong>&nbsp;<br />\r\nTotal or partial reproduction of this Website is prohibited. All rights reserved<br />\r\n<strong>MiGuayaba.com</strong>&nbsp;es un Producto de&nbsp;<strong>INTERSOFT-latin</strong>&nbsp;con la alianza comercial de&nbsp;<strong>Pina Media</strong></p>\r\n\r\n<p><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/logo_intersoftlatin_2012_300px.png" style="line-height: 1.6; width: 120px; height: 101px;" /><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/pina-media-logoo.png" style="width: 120px; height: 112px;" /><br />\r\nÂ </p>\r\n', 29, 1, 1, 7, 1, '2014-07-27 02:40:03'),
(12, 'Video de Youtube', '<table style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><iframe allowfullscreen="" frameborder="0" height="281" src="//www.youtube.com/embed/LB4CD6wdzkk?rel=0" width="500"></iframe></p>\r\n			</td>\r\n			<td style="vertical-align:middle;">\r\n			<h2 style="color:#fff;">Â¿AÃºn NO tienes Sitio Web?</h2>\r\n\r\n			<p style="color:#fff;">Tranquilo(a) Nosotros somos expertos en el tema y te podemos ayudar!</p>\r\n\r\n			<p>Â </p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 23, 1, 1, 7, 1, '2014-07-27 03:11:03'),
(13, 'Publicidad Credito', '<p style="text-align:center;"><img alt="" src="http://miguayaba.com/images/tu-pagina-web-a-credito-miguayaba.jpg" style="width: 80%;" /></p>\r\n', 18, 10, 1, 7, 0, '2014-07-27 04:03:51'),
(14, 'Logos abajo', '<p><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/logos-programacion.jpg" style="width: 100%;" /></p>\r\n', 24, 1, 1, 7, 1, '2014-07-27 13:25:00'),
(15, 'MiGuayaba.com', '<h2>MiGuayaba.com&nbsp;</h2>\r\n\r\n<p>Nace como estrategÃ­a para ofrecerle a toda&nbsp;Latinoamerica los mejores precios y calidad de servicio en Dominios, Hosting y Servicios Web. Operando en Venezuela, Colombia, PanamÃ¡, Costa Rica, Guatemala y vamos rumbo a conquistar a todo el mercado Latinoamericano.</p>\r\n\r\n<p style="font-size:1.4em;">Nuestros Valores estan definidos por:</p>\r\n\r\n<p>- Calidad<br />\r\n- Servicio<br />\r\n- Mejora Continua<br />\r\n- Responsabilidad<br />\r\n- Honestidad</p>\r\n\r\n<p style="font-size:1.4em;">Y Nuestra MisiÃ³n:&nbsp;</p>\r\n\r\n<p style="font-size:1.2em;"><em>"Ayudar a miles de Personas a darle vida a sus Ideas"</em></p>\r\n', 25, 1, 1, 7, 1, '2014-07-27 13:37:56'),
(16, 'Contactenos', '<h2>ContÃ¡ctenos</h2>\r\n\r\n<p><span style="font-size:2.5em"><strong>(+507)68925235</strong></span><br />\r\nÂ </p>\r\n<p><iframe height="140" src="https://mapsengine.google.com/map/u/0/embed?mid=zgdW2kAqSxng.kFDQ7DsmBhRE" width="100%"></iframe></p>\r\n<p>Ave. Brasil calle alajuaela Edif. ParanÃ¡ PB02 Ciudad de PanamÃ¡.&nbsp;RepÃºblica de PanamÃ¡.</p>\r\n\r\n<p>contactos@miguayaba.com</p>\r\n\r\n<p><a href="https://www.facebook.com/miguayaba" target="_blank"><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/1390705906_facebook_social_circle.png" style="width: 40px; height: 40px;" /></a>&nbsp;&nbsp;<a href="https://twitter.com/miguayaba" target="_blank"><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/1390705910_twitter_social_circle.png" style="width: 40px; height: 40px;" /></a>&nbsp;&nbsp;<a href="https://plus.google.com/+Miguayaba" target="_blank"><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/1390705955_google_plus_social_circle.png" style="width: 40px; height: 40px;" /></a></p>\r\n\r\n\r\n', 26, 1, 1, 7, 1, '2014-07-27 13:45:41'),
(17, 'EscrÃ­benos', '<h2 style="margin-bottom:0px;">EscrÃ­benos</h2>\r\n', 27, 1, 1, 7, 1, '2014-07-27 13:57:00'),
(18, 'Info Central', '<p><img alt="" src="http://127.0.0.1/miguayaba3.0/images/site/info-central.jpg" style="width: 100%;" /></p>\r\n', 9, 1, 1, 7, 1, '2014-07-27 20:06:49');

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
(23, 'position14', 'Banner 3', 1, '2014-07-27 03:12:27'),
(24, 'position15', 'Banner4', 1, '2014-07-27 12:58:59'),
(25, 'position16', 'mod1', 1, '2014-07-27 13:35:48'),
(26, 'position17', 'mod2', 1, '2014-07-27 13:35:55'),
(27, 'position18', 'mod3', 1, '2014-07-27 13:36:01'),
(28, 'position19', '-1-', 1, '2014-07-27 00:31:44'),
(29, 'position20', '-2-', 1, '2014-07-27 00:31:47'),
(30, 'position21', '-3-', 1, '2014-07-27 00:31:49'),
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
  `margen` int(3) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=76 ;

--
-- Volcado de datos para la tabla `sis_productos`
--

INSERT INTO `sis_productos` (`id`, `cod_prod`, `nombre_prod`, `id_cate`, `id_marca`, `des_prod`, `des_prod_corto`, `existencia`, `precio`, `margen`, `descuento`, `destacado`, `clave`, `ruta`, `status`, `modificado`) VALUES
(66, 'Hos001', 'HOSTING 1 GB', 2, 7, '<h2>Â¿CuÃ¡nto espacio necesitas? Plan Principiantes</h2>\r\n\r\n<p>- Espacio de Disco: 1GB<br />\r\n- Email: Ilimitados<br />\r\n- Cuentas FTP: Ilimitados<br />\r\n- Base de Datos: 1<br />\r\n- Dominios Apuntados: 1<br />\r\n- Max. Sub-dominios: 2<br />\r\n- Transferencia Mensual: 5GB</p>\r\n', 'Hosting idel para pequeÃ±os empresarios', 24, 10.00, 100, NULL, 0, 'hosting', 'imagenes/1789887665h-1gb.jpg', 1, '2014-08-07 12:28:57'),
(67, 'hos002', 'Hosting 2GB', 2, 7, '<h2>Â¿CuÃ¡nto espacio necesitas? Plan Avanzado</h2>\r\n\r\n<p>- Espacio de Disco: 2GB<br />\r\n- Email: Ilimitados<br />\r\n- Cuentas FTP: Ilimitados<br />\r\n- Base de Datos: 5<br />\r\n- Dominios Apuntados: 2<br />\r\n- Max. Sub-dominios: 5<br />\r\n- Transferencia Mensual: 10GB</p>\r\n', 'Hosting 2GB para emprendedores', 20, 20.00, 100, NULL, 0, 'hosting', 'imagenes/8649887665h-2gb.jpg', 1, '2014-08-07 12:28:41'),
(68, 'hos003', 'Hosting Ilimitado', 2, 7, '<h2>Â¿CuÃ¡nto espacio necesitas? Plan Premium</h2>\r\n\r\n<p>- Espacio de Disco: ILIMITADO<br />\r\n- Email: Ilimitados<br />\r\n- Cuentas FTP: Ilimitados<br />\r\n- Base de Datos: Ilimitadas<br />\r\n- Dominios Apuntados: Ilimitados<br />\r\n- Max. Sub-dominios: Ilimitados<br />\r\n- Transferencia Mensual: Ilimitado</p>\r\n', 'Hosting para clientes exigentes', 26, 40.00, 110, 49.50, 0, 'hosting', 'imagenes/4799887665h-ilimitado.jpg', 1, '2014-08-09 02:12:36'),
(69, 'web001', 'Web BÃ¡sica', 7, 7, '<h2>La Web ideal para pequeÃ±os y medianos proyectos...</h2>\r\n\r\n<p>- DiseÃ±o Web BÃ¡sico (Plantillas Predeterminadas Editables)<br />\r\n- GeneraciÃ³n de sitios optimizados para los buscadores<br />\r\n- Plan de Hosting MiGuayaba 2GB (Gratis 1 AÃ±o)<br />\r\n- Dominio Web .COM, .NET o .ORG (Gratis 1 AÃ±o)<br />\r\n- Cuentas de Correos Corporativos Ilimitados (Ejm.: tunombre@tupagina.com)<br />\r\n- Panel Administrativo<br />\r\n- Soporte 365 dÃ­as Garantizado!<br />\r\n- Manuales del uso del Sitio en Video</p>\r\n\r\n<p><strong>Ejemplo de una PÃ¡gina Web BÃ¡sica</strong></p>\r\n\r\n<p><strong><img alt="" src="http://127.0.0.1/miguayaba3.0/images/plan-basico-ejm.png" style="width: 300px; height: 246px;" /></strong></p>\r\n', 'Web BÃ¡sica para pequeÃ±os proyectos', 11, 300.00, 50, NULL, 0, 'diseÃ±o web', 'imagenes/7789887665612988766544322w-1.jpg', 1, '2014-08-09 02:12:36'),
(70, 'web002', 'Web a tu medida', 7, 7, '<h2>DiseÃ±o Web profesional para empresas exigentes...</h2>\r\n\r\n<p>- DiseÃ±o Web Profesional (DiseÃ±o GrÃ¡fico)<br />\r\n- GeneraciÃ³n de sitios optimizados para los buscadores<br />\r\n- Plan de Hosting MiGuayaba 2GB (Gratis 1 AÃ±o)<br />\r\n- Dominio Web .COM, .NET o .ORG (Gratis 1 AÃ±o)<br />\r\n- Cuentas de Correos Corporativos Ilimitados (Ejm.: tunombre@tupagina.com)<br />\r\n- Registro de Usuarios<br />\r\n- GalerÃ­a de Fotos<br />\r\n- Panel Administrativo<br />\r\n- Soporte 365 dÃ­as Garantizado!<br />\r\n- Manuales del uso del Sitio en Video</p>\r\n\r\n<p><strong>Ejemplo de una PÃ¡gina A tu Medida</strong></p>\r\n\r\n<p><img alt="" src="http://127.0.0.1/miguayaba3.0/images/plan-atumedida-ejm.png" style="width: 300px; height: 246px;" /></p>\r\n', 'Web Profesional con DiseÃ±o GrÃ¡fico', 9, 450.00, 50, NULL, 0, 'diseÃ±o web', 'imagenes/1569887665774988766544322w-2.jpg', 1, '2014-08-09 02:12:36'),
(71, 'web003', 'Web Profesional', 7, 7, '<h2>DiseÃ±o Web Profesional de alto desempeÃ±o...</h2>\r\n\r\n<p>- DiseÃ±o Web Profesional (DiseÃ±o GrÃ¡fico)<br />\r\n- Plantilla Optimizada para PC, Tables, Celulares&nbsp;<br />\r\n- GeneraciÃ³n de sitios optimizados para los buscadores<br />\r\n- Plan de Hosting MiGuayaba 2GB (Gratis 1 AÃ±o)<br />\r\n- Dominio Web .COM, .NET o .ORG (Gratis 1 AÃ±o)<br />\r\n- Cuentas de Correos Corporativos Ilimitados (Ejm.: tunombre@tupagina.com)<br />\r\n- Registro de Usuarios<br />\r\n- GalerÃ­a de Fotos<br />\r\n- Panel Administrativo<br />\r\n- Soporte 365 dÃ­as Garantizado!<br />\r\n- Manuales del uso del Sitio en Video</p>\r\n\r\n<p><strong>Ejemplo de una PÃ¡gina Profesional</strong></p>\r\n\r\n<p><strong><img alt="" src="http://127.0.0.1/miguayaba3.0/images/plan_profesional-ejm.png" style="width: 300px; height: 422px;" /></strong></p>\r\n', 'Web Profesional con Responsive Design', 17, 500.00, 50, NULL, 0, 'diseÃ±o Web', 'imagenes/1599887665688988766544322w-3.jpg', 1, '2014-08-09 02:12:36'),
(72, 'web004', 'Web Tienda Virtual', 7, 7, '<h2>TÃº Negocio en Internet, Comercio ElectrÃ³nico...</h2>\r\n\r\n<p>- DiseÃ±o Web Profesional (DiseÃ±o GrÃ¡fico)<br />\r\n-&nbsp;Plantilla Optimizada para PC, Tables, Celulares&nbsp;<br />\r\n- Carrito de Compras<br />\r\n- GestiÃ³n de Clientes<br />\r\n- Inventario de Productos<br />\r\n- GeneraciÃ³n de sitios optimizados para los buscadores<br />\r\n- Plan de Hosting MiGuayaba 2GB (Gratis 1 AÃ±o)<br />\r\n- Dominio Web .COM, .NET o .ORG (Gratis 1 AÃ±o)<br />\r\n- Cuentas de Correos Corporativos Ilimitados (Ejm.: tunombre@tupagina.com)<br />\r\n- Registro de Usuarios<br />\r\n- GalerÃ­a de Fotos<br />\r\n- Panel Administrativo<br />\r\n- Soporte 365 dÃ­as Garantizado!<br />\r\n- Manuales del uso del Sitio en Video</p>\r\n\r\n<p><strong>Ejemplo de una PÃ¡gina de Tienda Virtual</strong></p>\r\n\r\n<p><img alt="" src="http://127.0.0.1/miguayaba3.0/images/ejemploTienda.jpg" style="width: 300px; height: 383px;" /></p>\r\n', 'Web Tienda Virtual', 31, 650.00, 50, NULL, 0, 'diseÃ±o web', 'imagenes/37988766586988766544322w-4.jpg', 1, '2014-08-07 12:29:33'),
(73, 'sm001', 'Social Media Marketing Standar', 8, 7, '<h3>El social media o marketing en redes sociales conforma una parte fundamental del marketing online y ha sido sin duda una de las mayores revoluciones en el campo del marketing de las Ãºltimas dÃ©cadas.</h3>\r\n\r\n<p><img alt="" src="http://127.0.0.1/miguayaba3.0/images/sm-pubi.jpg" style="line-height: 1.6; float: left; margin-left: 10px; margin-right: 10px; height: 182px; width: 200px;" />Mediante el&nbsp;social media&nbsp;o el uso de las&nbsp;redes sociales&nbsp;las empresas impulsan campaÃ±as publicitarias, crean promociones, dan a conocer, dan visibilidad y refuerzan su imagen de marca o branding y, consecuentemente, incrementan ventas. Sin embargo el marketing en redes sociales va mÃ¡s allÃ¡ y permite la interactividad con el cliente: hablar y escuchar de forma directa y sin intermediarios a tus clientes y potenciales compradores, obteniendo informaciÃ³n sobre gustos y procesos de compra, necesidades y expectativas. Mediante esta interacciÃ³n, el social media nos permite descubrir que productos o servicios y que tipos de mensajes funcionan con los clientes, ayudarlos y fidelizarlos, a la vez que la empresa y su marca gana credibilidad, competitividad y reputaciÃ³n.</p>\r\n\r\n<p>Â </p>\r\n\r\n<h2>Este Plan Incluye:</h2>\r\n\r\n<p>- CreaciÃ³n del Fan Page de Facebook<br />\r\n- 90 Publicaciones al Mes<br />\r\n- Reportes Semanales de Resultados</p>\r\n', 'Social Media Marketing Standar', 96, 130.00, 15, NULL, 0, 'Social Media', 'imagenes/4919887665sm1.jpg', 1, '2014-08-09 02:12:36'),
(75, 'dom001', 'Dominio .com', 4, 7, '<p>Dominios Web .com</p>\r\n', 'Dominio .com', 0, 10.50, 50, NULL, 0, NULL, 'imagenes/', 1, '2014-08-09 02:12:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_productos_categoria`
--

CREATE TABLE IF NOT EXISTS `sis_productos_categoria` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idcp` int(11) DEFAULT NULL,
  `nombre_cate` varchar(250) DEFAULT NULL,
  `des_cate` text,
  `ruta` varchar(250) DEFAULT NULL,
  `catep` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `sis_productos_categoria`
--

INSERT INTO `sis_productos_categoria` (`id`, `idcp`, `nombre_cate`, `des_cate`, `ruta`, `catep`, `status`, `modificado`) VALUES
(1, NULL, 'Sin Categoria', NULL, 'imagenes/', NULL, 1, '2014-07-01 15:11:52'),
(2, 5, 'Hosting', '<h2>Â¿CuÃ¡nto espacio necesitas?</h2>\r\n\r\n<p>Con el Servicio de&nbsp;Hosting de MiGuayaba.com tienes la posibilidad de tener tu sitio en Internet rapidito! con Planes desde $20 al aÃ±o</p>\r\n', 'imagenes/', NULL, 1, '2014-07-28 00:33:54'),
(3, 5, 'DiseÃ±o', NULL, 'imagenes/', NULL, 1, '2014-07-24 05:08:32'),
(4, 5, 'Dominios', NULL, 'imagenes/', NULL, 1, '2014-07-18 02:58:23'),
(6, 6, 'DiseÃ±o GrÃ¡fico', '<h1>Â¿Tu empresa o Idea tiene Imagen Corporativa?</h1>\r\n\r\n<p>Ahora en MiGuayaba.com gracias al apoyo de Pina Media tenemos los mejores planes de DiseÃ±o GrÃ¡fico con la mÃ¡s alta calidad y el mejor servicio que siempre nos ha caracterizado.</p>\r\n', 'imagenes/', 3, 1, '2014-07-28 00:40:13'),
(7, NULL, 'Desarrollo Web', '<h1>Y tÃº...&nbsp;Â¿AÃºn NO tienes pÃ¡gina Web?&nbsp;</h1>\r\n\r\n<p>Es 2014 y no es posible que no tengas una pÃ¡gina Web con dominio propio .COM, pero tranquilo(a) Relajate que nosotros nos escargamos de eso, y ahora puedes pagarla a CrÃ©dito en cuotas que van desde $31,50</p>\r\n', 'imagenes/', 3, 1, '2014-07-28 00:30:02'),
(8, NULL, 'Marketing', '<h1>Â¿Sabes que es el Social Media Marketing?</h1>\r\n\r\n<p>El Social Media Marketing es una de las herramientas del&nbsp;Marketing Online, especÃ­ficamente del&nbsp;Search Engine Marketing, que se utiliza para promocionar un sitio web o blog. En espaÃ±ol suele llamarse Marketing de Redes Sociales, es decir, utilizar las redes sociales y participar en ellas para lograr promocionar un sitio web de una empresa, un producto, un servicio o&nbsp;un blog.</p>\r\n', 'imagenes/', NULL, 1, '2014-07-28 00:44:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_productos_categoria_padre`
--

CREATE TABLE IF NOT EXISTS `sis_productos_categoria_padre` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_catep` varchar(250) DEFAULT NULL,
  `des_catep` text,
  `ruta` varchar(250) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `sis_productos_categoria_padre`
--

INSERT INTO `sis_productos_categoria_padre` (`id`, `nombre_catep`, `des_catep`, `ruta`, `status`, `modificado`) VALUES
(5, 'Servicios Web', NULL, 'imagenes/', 1, '2014-07-18 02:56:58'),
(6, 'Servicios Graficos', NULL, 'imagenes/', 1, '2014-07-18 03:47:35');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Volcado de datos para la tabla `sis_productos_foto`
--

INSERT INTO `sis_productos_foto` (`id`, `id_prod`, `ruta`, `creado`) VALUES
(39, 66, 'imagenes/822988766544322plan-basico-ejm.png', '2014-07-06 06:00:38'),
(40, 67, 'imagenes/384988766544322plan-atumedida-ejm.png', '2014-07-06 06:00:47'),
(41, 68, 'imagenes/847988766544322plan_profesional-ejm.png', '2014-07-06 06:00:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sis_users`
--

CREATE TABLE IF NOT EXISTS `sis_users` (
  `id_usuario` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(250) DEFAULT NULL,
  `apellido_usuario` varchar(250) DEFAULT NULL,
  `ci_usuario` varchar(250) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `sis_users`
--

INSERT INTO `sis_users` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `ci_usuario`, `dir_usuario`, `email_usuario`, `tel_usuario`, `movil_usuario`, `id_user_tipo`, `ruta`, `status`, `creado`, `modificado`) VALUES
(7, 'Eloy Manuel', 'Chacon Martinez', 'V-16123617-5', 'Panama', 'invernet2010@gmail.com', '507-227-6089', '507-6892-5235', 5, 'imagenes/219asd34e486612_10151391555286843_906010936_n.jpg', 1, NULL, '2014-08-08 16:41:13'),
(8, 'Darwin', 'Perez', NULL, NULL, 'djpd28@yahoo.es', NULL, NULL, 4, 'imagenes/', 1, NULL, '2014-07-08 03:38:51'),
(9, 'Alejandra', 'Ceballos', NULL, 'Via Brazil, Ciudad de Panama', 'piripoza16@hotmail.com', '64452168', NULL, 1, 'imagenes/', 1, NULL, '2014-08-06 13:04:45'),
(10, 'Usuario de Prueba', 'Apellido', 'v454644d5454', 'Ciudad de Panama', 'INVERNET2010@GMAIL.COM', '227-6089', '-', 1, 'imagenes/', 1, NULL, '2014-08-08 16:49:25');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `sis_users_cuenta`
--

INSERT INTO `sis_users_cuenta` (`id_user`, `username`, `password`, `id_usuario`, `creado`) VALUES
(5, 'elmanet', 'c31e5dbc0e1c6ff38680e25584847ae6', 7, '2013-05-09 03:10:00'),
(6, 'darwin', 'e10adc3949ba59abbe56e057f20f883e', 8, '2014-07-07 13:25:59'),
(7, 'piripoza', 'e10adc3949ba59abbe56e057f20f883e', 9, '2014-08-06 13:04:45'),
(8, '123456', 'e10adc3949ba59abbe56e057f20f883e', 10, '2014-08-08 16:45:04');

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
-- Filtros para la tabla `sis_factura_inventario_detalle`
--
ALTER TABLE `sis_factura_inventario_detalle`
  ADD CONSTRAINT `sis_factura_inventario_detalle_ibfk_1` FOREIGN KEY (`id_fact_inventario`) REFERENCES `sis_factura_inventario` (`id_fact_inventario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sis_factura_inventario_detalle_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `sis_productos` (`id`);

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
