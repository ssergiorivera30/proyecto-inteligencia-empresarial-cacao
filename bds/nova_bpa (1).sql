-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2021 a las 23:34:55
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nova_bpa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnostico_lista_chequeo`
--

CREATE TABLE `diagnostico_lista_chequeo` (
  `dlch_auto_id` int(11) NOT NULL,
  `dlch_id_item` int(10) NOT NULL,
  `dlch_id_diagnostico` int(10) NOT NULL,
  `dlch_id_productor` int(10) NOT NULL,
  `dlch_id_revisor` int(10) NOT NULL,
  `dlch_observacion` text NOT NULL,
  `dlch_calificacion` tinyint(4) NOT NULL DEFAULT 0,
  `dlch_created` datetime NOT NULL,
  `dlch_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dlch_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `diagnostico_lista_chequeo`
--

INSERT INTO `diagnostico_lista_chequeo` (`dlch_auto_id`, `dlch_id_item`, `dlch_id_diagnostico`, `dlch_id_productor`, `dlch_id_revisor`, `dlch_observacion`, `dlch_calificacion`, `dlch_created`, `dlch_updated`, `dlch_vigencia`) VALUES
(1, 1, 2, 1, 1, 'Observación', 0, '2020-12-08 23:25:41', '2020-12-12 05:43:20', 1),
(2, 2, 2, 1, 1, 'Observación', 1, '2020-12-08 23:55:40', '2020-12-09 04:55:40', 1),
(3, 3, 2, 1, 1, 'Observación', 1, '2020-12-09 00:05:33', '2020-12-09 05:06:10', 1),
(4, 4, 2, 1, 1, 'Observación', 1, '2020-12-09 00:28:44', '2020-12-09 05:30:05', 1),
(5, 5, 2, 1, 1, 'Observación', 1, '2020-12-09 00:30:20', '2020-12-09 21:29:34', 1),
(6, 16, 2, 1, 1, 'Observación', 1, '2020-12-09 00:32:43', '2020-12-09 05:32:43', 1),
(7, 1, 1, 1, 1, 'Observación', 1, '2020-12-09 00:47:25', '2020-12-09 05:47:25', 1),
(8, 1, 3, 1, 1, 'Observación', 0, '2020-12-09 00:47:40', '2020-12-09 05:47:41', 1),
(9, 6, 2, 1, 1, 'Observación', 1, '2020-12-09 00:48:05', '2020-12-09 05:48:05', 1),
(10, 7, 2, 1, 1, 'Observación', 1, '2020-12-09 00:48:10', '2020-12-09 05:48:10', 1),
(11, 28, 2, 1, 1, 'Observación', 0, '2020-12-09 17:22:59', '2020-12-09 22:24:15', 1),
(12, 9, 2, 1, 1, 'Observación', 0, '2020-12-09 17:25:29', '2020-12-09 22:25:29', 1),
(13, 8, 2, 1, 1, 'Observación', 1, '2020-12-09 17:38:11', '2020-12-09 22:38:14', 1),
(14, 13, 2, 1, 1, 'Observación', 1, '2020-12-09 18:03:17', '2020-12-09 23:03:17', 1),
(15, 28, 4, 3, 3, 'Observación', 1, '2020-12-09 20:50:36', '2020-12-10 01:51:57', 1),
(16, 1, 4, 3, 3, 'Observación', 1, '2020-12-09 20:53:01', '2020-12-10 05:48:32', 1),
(17, 2, 4, 3, 3, 'Observación', 1, '2020-12-09 20:53:44', '2020-12-10 03:26:25', 1),
(18, 12, 4, 3, 3, 'Observación', 1, '2020-12-09 21:58:48', '2020-12-10 03:27:20', 1),
(19, 3, 4, 3, 3, 'Observación', 1, '2020-12-09 22:01:33', '2020-12-10 03:26:20', 1),
(20, 6, 4, 3, 3, 'Observación', 1, '2020-12-09 22:06:06', '2020-12-10 03:06:22', 1),
(21, 4, 4, 3, 3, 'Observación', 1, '2020-12-09 22:09:48', '2020-12-10 03:09:48', 1),
(22, 7, 4, 3, 3, 'Observación', 1, '2020-12-09 22:25:47', '2020-12-10 03:25:47', 1),
(23, 5, 4, 3, 3, 'Observación', 1, '2020-12-09 22:25:56', '2020-12-10 03:25:56', 1),
(24, 8, 4, 3, 3, 'Observación', 1, '2020-12-09 22:26:07', '2020-12-10 03:26:44', 1),
(25, 9, 4, 3, 3, 'Observación', 1, '2020-12-09 22:26:58', '2020-12-10 03:26:59', 1),
(26, 10, 4, 3, 3, 'Observación', 1, '2020-12-09 22:27:06', '2020-12-10 03:27:06', 1),
(27, 11, 4, 3, 3, 'Observación', 1, '2020-12-09 22:27:13', '2020-12-10 03:27:13', 1),
(28, 13, 4, 3, 3, 'Observación', 1, '2020-12-09 22:27:28', '2020-12-10 03:27:28', 1),
(29, 14, 4, 3, 3, 'Observación', 1, '2020-12-09 22:27:33', '2020-12-10 03:27:33', 1),
(30, 48, 4, 3, 3, 'Observación', 1, '2020-12-09 22:27:46', '2020-12-10 03:27:46', 1),
(31, 47, 4, 3, 3, 'Observación', 1, '2020-12-09 22:27:54', '2020-12-10 03:27:54', 1),
(32, 46, 4, 3, 3, 'Observación', 1, '2020-12-09 22:28:02', '2020-12-10 03:28:02', 1),
(33, 45, 4, 3, 3, 'Observación', 1, '2020-12-09 22:28:15', '2020-12-10 03:28:15', 1),
(34, 44, 4, 3, 3, 'Observación', 1, '2020-12-09 22:28:22', '2020-12-10 03:28:22', 1),
(35, 43, 4, 3, 3, 'Observación', 1, '2020-12-09 22:28:29', '2020-12-10 03:28:29', 1),
(36, 42, 4, 3, 3, 'Observación', 1, '2020-12-09 22:28:45', '2020-12-10 03:28:45', 1),
(37, 41, 4, 3, 3, 'Observación', 1, '2020-12-09 22:28:51', '2020-12-10 03:28:51', 1),
(38, 15, 4, 3, 3, 'Observación', 1, '2020-12-09 22:29:13', '2020-12-10 03:29:13', 1),
(39, 16, 4, 3, 3, 'Observación', 1, '2020-12-09 22:29:27', '2020-12-10 03:29:27', 1),
(40, 17, 4, 3, 3, 'Observación', 1, '2020-12-09 22:29:35', '2020-12-10 03:29:35', 1),
(41, 18, 4, 3, 3, 'Observación', 1, '2020-12-09 22:29:41', '2020-12-10 03:29:41', 1),
(42, 19, 4, 3, 3, 'Observación', 1, '2020-12-09 22:29:55', '2020-12-10 03:29:55', 1),
(43, 20, 4, 3, 3, 'Observación', 1, '2020-12-09 22:30:01', '2020-12-10 03:30:01', 1),
(44, 21, 4, 3, 3, 'Observación', 1, '2020-12-09 22:30:07', '2020-12-10 03:30:07', 1),
(45, 22, 4, 3, 3, 'Observación', 1, '2020-12-09 22:30:12', '2020-12-10 03:30:12', 1),
(46, 23, 4, 3, 3, 'Observación', 1, '2020-12-09 22:30:17', '2020-12-10 03:30:17', 1),
(47, 27, 4, 3, 3, 'Observación', 1, '2020-12-09 22:30:24', '2020-12-10 03:30:24', 1),
(48, 26, 4, 3, 3, 'Observación', 1, '2020-12-09 22:30:28', '2020-12-10 03:30:28', 1),
(49, 25, 4, 3, 3, 'Observación', 1, '2020-12-09 22:30:35', '2020-12-10 03:30:35', 1),
(50, 24, 4, 3, 3, 'Observación', 1, '2020-12-09 22:30:41', '2020-12-10 03:30:41', 1),
(51, 34, 4, 3, 3, 'Observación', 1, '2020-12-09 22:31:16', '2020-12-10 03:31:16', 1),
(52, 35, 4, 3, 3, 'Observación', 1, '2020-12-09 22:31:25', '2020-12-10 03:31:25', 1),
(53, 36, 4, 3, 3, 'Observación', 1, '2020-12-09 22:31:51', '2020-12-10 03:31:51', 1),
(54, 37, 4, 3, 3, 'Observación', 1, '2020-12-09 22:31:58', '2020-12-10 03:31:58', 1),
(55, 38, 4, 3, 3, 'Observación', 1, '2020-12-09 22:32:03', '2020-12-10 03:32:03', 1),
(56, 39, 4, 3, 3, 'Observación', 1, '2020-12-09 22:32:27', '2020-12-10 03:32:27', 1),
(57, 40, 4, 3, 3, 'Observación', 1, '2020-12-09 22:32:55', '2020-12-10 03:32:56', 1),
(58, 29, 4, 3, 3, 'Observación', 1, '2020-12-09 22:33:08', '2020-12-10 03:33:08', 1),
(59, 31, 4, 3, 3, 'Observación', 1, '2020-12-09 22:33:19', '2020-12-10 03:33:19', 1),
(60, 32, 4, 3, 3, 'Observación', 1, '2020-12-09 22:33:25', '2020-12-10 03:33:25', 1),
(61, 30, 4, 3, 3, 'Observación', 1, '2020-12-09 22:33:33', '2020-12-10 03:33:33', 1),
(62, 33, 4, 3, 3, 'Observación', 1, '2020-12-09 22:33:42', '2020-12-10 03:33:42', 1),
(63, 48, 5, 4, 4, 'Observación', 1, '2020-12-18 01:22:51', '2020-12-18 06:22:51', 1),
(64, 1, 5, 4, 4, 'Observación', 0, '2020-12-18 01:24:13', '2020-12-18 06:28:28', 1),
(65, 2, 5, 4, 4, 'Observación', 0, '2020-12-18 01:24:36', '2020-12-18 06:24:36', 1),
(66, 5, 5, 4, 4, 'Observación', 0, '2020-12-18 01:24:54', '2020-12-18 06:24:54', 1),
(67, 3, 5, 4, 4, 'Observación', 1, '2020-12-18 01:27:31', '2020-12-18 06:27:31', 1),
(68, 4, 5, 4, 4, 'Observación', 1, '2020-12-18 01:29:24', '2020-12-18 06:29:24', 1),
(69, 6, 5, 4, 4, 'Observación', 1, '2020-12-18 01:35:37', '2020-12-18 06:35:37', 1),
(70, 26, 5, 4, 4, 'Observación', 1, '2020-12-18 01:37:18', '2020-12-18 06:37:18', 1),
(71, 1, 6, 4, 4, 'Observación', 1, '2020-12-18 01:40:05', '2020-12-18 06:40:05', 1),
(72, 2, 6, 4, 4, 'Observación', 1, '2020-12-18 01:40:12', '2020-12-18 06:40:12', 1),
(73, 37, 5, 4, 4, 'Observación', 1, '2020-12-18 02:09:26', '2020-12-18 07:09:26', 1),
(74, 3, 6, 4, 4, 'Observación', 1, '2020-12-18 11:38:32', '2020-12-18 16:38:32', 1),
(75, 42, 6, 4, 4, 'Observación', 1, '2020-12-21 00:05:55', '2020-12-21 05:05:55', 1),
(76, 31, 6, 4, 4, 'Observación', 1, '2020-12-22 09:20:21', '2020-12-22 14:20:29', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fincas`
--

CREATE TABLE `fincas` (
  `finc_id_auto` int(11) NOT NULL,
  `finc_id_propietario` int(11) NOT NULL,
  `finc_nombre` varchar(50) NOT NULL,
  `finc_img` varchar(60) NOT NULL DEFAULT '0',
  `finc_departamento` varchar(40) NOT NULL,
  `finc_municipio` varchar(60) NOT NULL,
  `finc_vereda` varchar(60) NOT NULL,
  `finc_created` datetime NOT NULL,
  `finc_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `finc_estado` tinyint(1) NOT NULL DEFAULT 1,
  `finc_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fincas`
--

INSERT INTO `fincas` (`finc_id_auto`, `finc_id_propietario`, `finc_nombre`, `finc_img`, `finc_departamento`, `finc_municipio`, `finc_vereda`, `finc_created`, `finc_updated`, `finc_estado`, `finc_vigencia`) VALUES
(1, 1, 'La Perla', '30308201209081238.jpeg', 'Huila', 'Nataga', 'Las Mercedes', '2020-11-16 13:25:54', '2020-12-09 19:31:38', 1, 1),
(2, 1, 'Bella Vista', '18691201208041246.jpeg', 'Huila', 'Nataga', 'Los Laureles', '2020-11-16 13:26:15', '2020-12-08 15:18:46', 1, 1),
(3, 1, 'La Linda', '14667201208041246.jpeg', 'Huila', 'La Plata', 'Las Mercedes', '2020-11-16 14:47:38', '2020-12-08 15:19:46', 1, 1),
(4, 1, 'Casa blanca', '42796201208071215.jpeg', 'Huila', 'La Plata', 'La Hondura', '2020-11-16 15:37:34', '2020-12-08 18:21:15', 1, 1),
(5, 1, 'El Mirador', '45905201208061231.jpeg', 'Huila', 'Nátaga', 'Las Mercedes', '2020-11-18 01:21:55', '2020-12-08 17:47:31', 1, 1),
(8, 3, 'La vega', '18401201210061253.jpeg', 'Huila', 'Nátaga ', 'Las Mercedes', '2020-12-09 20:27:24', '2020-12-10 05:56:53', 1, 1),
(9, 4, 'Finaca de prueba', '68590201218061234.jpeg', 'Huila', 'La Plata', 'Alto cañada', '2020-12-18 00:33:41', '2020-12-18 05:39:34', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `finca_cultivos`
--

CREATE TABLE `finca_cultivos` (
  `fcu_id_auto` int(10) NOT NULL,
  `fcu_id_lote` int(10) NOT NULL,
  `fcu_nombre` varchar(60) NOT NULL,
  `fcu_ano_siempra` int(4) NOT NULL,
  `fcu_hectareas` varchar(20) NOT NULL,
  `fcu_numero_plantas` int(10) NOT NULL,
  `fcu_variedad` varchar(60) NOT NULL,
  `fcu_distancia_plantas` varchar(10) NOT NULL,
  `fcu_distancias_surcos` varchar(10) NOT NULL,
  `fcu_notas` varchar(120) NOT NULL,
  `fcu_estado` tinyint(1) NOT NULL DEFAULT 1,
  `fcu_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `fcu_created` datetime NOT NULL,
  `fcu_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `finca_cultivos`
--

INSERT INTO `finca_cultivos` (`fcu_id_auto`, `fcu_id_lote`, `fcu_nombre`, `fcu_ano_siempra`, `fcu_hectareas`, `fcu_numero_plantas`, `fcu_variedad`, `fcu_distancia_plantas`, `fcu_distancias_surcos`, `fcu_notas`, `fcu_estado`, `fcu_vigencia`, `fcu_created`, `fcu_updated`) VALUES
(4, 21, 'Café ', 2013, '1', 2000, 'Colombia', '1', '2', '', 1, 1, '2020-11-28 20:16:03', '2020-11-29 01:16:03'),
(5, 22, 'Cafe', 1993, '2', 2500, 'Caturra, colombia', '1', '2', 'Café en soca', 1, 1, '2020-12-09 20:48:12', '2020-12-10 01:48:12'),
(6, 23, 'Platano', 1, '5', 500, 'Castilla', '5', '5', 'Platano para la venta', 1, 1, '2020-12-18 00:44:14', '2020-12-18 05:44:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `finca_diagnosticos`
--

CREATE TABLE `finca_diagnosticos` (
  `fdia_id_auto` int(11) NOT NULL,
  `fdia_id_finca` int(10) NOT NULL,
  `fdia_id_usuario` int(11) NOT NULL,
  `fdia_nombre_personlizado` varchar(60) NOT NULL,
  `fdia_estado_diagnostico` tinyint(1) NOT NULL DEFAULT 1,
  `fdia_porcentaje_avance` decimal(10,0) NOT NULL,
  `fdia_created` datetime NOT NULL,
  `fdia_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fdia_estado` tinyint(1) NOT NULL DEFAULT 1,
  `fdia_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `finca_diagnosticos`
--

INSERT INTO `finca_diagnosticos` (`fdia_id_auto`, `fdia_id_finca`, `fdia_id_usuario`, `fdia_nombre_personlizado`, `fdia_estado_diagnostico`, `fdia_porcentaje_avance`, `fdia_created`, `fdia_updated`, `fdia_estado`, `fdia_vigencia`) VALUES
(1, 3, 1, 'Primer diagnostico', 1, '2', '2020-11-29 13:04:15', '2020-12-09 05:47:25', 1, 1),
(2, 2, 1, 'Diagnóstico de finca La Perla', 1, '19', '2020-11-29 13:20:43', '2020-12-12 05:43:20', 1, 1),
(3, 4, 1, 'Nombre de Diagnostico', 1, '0', '2020-12-08 16:46:56', '2020-12-09 05:47:41', 1, 1),
(4, 8, 3, 'Diagnóstico de prueba', 1, '100', '2020-12-09 20:49:12', '2020-12-10 05:48:32', 1, 1),
(5, 9, 4, 'Primer diagnóstico de BPA', 1, '13', '2020-12-18 01:21:39', '2020-12-18 07:09:26', 1, 1),
(6, 9, 4, 'Segundo diagnóstico de prueba', 1, '10', '2020-12-18 01:39:50', '2020-12-22 14:20:29', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `finca_lotes`
--

CREATE TABLE `finca_lotes` (
  `flo_id_auto` int(11) NOT NULL,
  `flo_id_finca` int(10) NOT NULL,
  `flo_nombre_lote` varchar(60) NOT NULL,
  `flo_hectareas` varchar(10) NOT NULL,
  `flo_descripcion` varchar(100) NOT NULL,
  `flo_created` datetime DEFAULT NULL,
  `flo_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flo_estado` tinyint(1) NOT NULL DEFAULT 1,
  `flo_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `finca_lotes`
--

INSERT INTO `finca_lotes` (`flo_id_auto`, `flo_id_finca`, `flo_nombre_lote`, `flo_hectareas`, `flo_descripcion`, `flo_created`, `flo_updated`, `flo_estado`, `flo_vigencia`) VALUES
(21, 1, 'Lote No. 1', '1', 'Primera zoca de 2 años', '2020-11-28 20:13:37', '2020-12-01 07:59:32', 1, 1),
(22, 8, 'Lote 1', '2', 'Sembrado con café y platano', '2020-12-09 20:47:20', '2020-12-10 01:47:20', 1, 1),
(23, 9, 'El castillo', '12', 'Lote de café, con 2 años de edad. ', '2020-12-18 00:42:02', '2020-12-18 05:42:02', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hola`
--

CREATE TABLE `hola` (
  `id_auto` int(11) NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `hola`
--

INSERT INTO `hola` (`id_auto`, `descr`) VALUES
(55, '1'),
(56, '1'),
(57, '1'),
(58, '1'),
(59, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ra_objetos`
--

CREATE TABLE `ra_objetos` (
  `rao_auto_id` int(11) NOT NULL,
  `rao_id_item_manual` int(10) NOT NULL,
  `rao_direccion` varchar(250) NOT NULL,
  `rao_nombre` varchar(200) NOT NULL,
  `rao_descrpcion` varchar(400) NOT NULL,
  `rao_created` datetime NOT NULL,
  `rao_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rao_estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ra_objetos`
--

INSERT INTO `ra_objetos` (`rao_auto_id`, `rao_id_item_manual`, `rao_direccion`, `rao_nombre`, `rao_descrpcion`, `rao_created`, `rao_updated`, `rao_estado`) VALUES
(1, 10, 'bota.html', 'Elemento de protección personal botas', '3.1. Elementos de protección personal requeridos de acuerdo a las labores tales como botas, overol, guantes, careta y gorra. La ropa y los equipos de protección personal deben ser lavados después de su uso y almacenarse en un lugar separado de los productos para la protección de cultivo. ', '0000-00-00 00:00:00', '2020-12-29 03:34:54', 1),
(2, 8, 'botiquin.html', 'Botiquín de primeros auxilios', '1.8. Botiquín de primeros auxilios, extintor multiuso en un lugar visible y un kit para uso en caso de derrame de un insumo. ', '0000-00-00 00:00:00', '2020-12-29 03:36:40', 1),
(3, 10, 'gorra.html', 'Elemento de protección personal gorra', '3.1. Elementos de protección personal requeridos de acuerdo a las labores tales como botas, overol, guantes, careta y gorra. La ropa y los equipos de protección personal deben ser lavados después de su uso y almacenarse en un lugar separado de los productos para la protección de cultivo. ', '0000-00-00 00:00:00', '2020-12-29 03:34:58', 1),
(4, 10, 'guantes.html', 'Elemento de protección personal guantes', '3.1. Elementos de protección personal requeridos de acuerdo a las labores tales como botas, overol, guantes, careta y gorra. La ropa y los equipos de protección personal deben ser lavados después de su uso y almacenarse en un lugar separado de los productos para la protección de cultivo. ', '0000-00-00 00:00:00', '2020-12-29 03:35:01', 1),
(5, 12, 'obrero.html', 'Protección al momento de aplicar insumos químicos', '3.2.1. Almacenamiento, manejo, aplicación de los insumos agrícolas y uso de elementos de protección personal. ', '0000-00-00 00:00:00', '2020-12-29 03:35:44', 1),
(6, 10, 'casco.html', 'Elemento de protección personal casco', '3.1. Elementos de protección personal requeridos de acuerdo a las labores tales como botas, overol, guantes, careta y gorra. La ropa y los equipos de protección personal deben ser lavados después de su uso y almacenarse en un lugar separado de los productos para la protección de cultivo. ', '0000-00-00 00:00:00', '2020-12-29 03:35:05', 1),
(7, 17, 'tanqueagua.html', 'Almacenamiento del agua', '4.1. Identificar las características y recursos de la zona del predio, de los riesgos asociados al suelo y a las fuentes de agua que puedan afectar la inocuidad, la productividad y la calidad de las frutas y vegetales, para lo cual deberá contar con un mapa o croquis del predio identificando el(os) cultivo(s), área(s) e instalación(es) y los riesgos asociados. ', '0000-00-00 00:00:00', '2020-12-29 03:38:44', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolucion_areas`
--

CREATE TABLE `resolucion_areas` (
  `rea_auto_id` int(11) NOT NULL,
  `rea_numero_area` int(10) NOT NULL,
  `rea_area` text NOT NULL,
  `rea_descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resolucion_areas`
--

INSERT INTO `resolucion_areas` (`rea_auto_id`, `rea_numero_area`, `rea_area`, `rea_descripcion`) VALUES
(1, 1, 'Áreas e instalaciones', ''),
(2, 2, 'Equipos, utensilios y herramientas', ''),
(3, 3, 'Componente ambiental', ''),
(4, 4, 'Manejo de protección de suelos', ''),
(5, 5, 'Selección del material de propagación', ''),
(6, 6, 'Nutrición de plantas', ''),
(7, 7, 'Protección del cultivo', ''),
(8, 8, 'Personal', '\r\n'),
(9, 9, 'Trazabilidad', ''),
(10, 10, 'Registros planes y procedimientos ', ''),
(11, 11, 'Soporte documental', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolucion_criterios`
--

CREATE TABLE `resolucion_criterios` (
  `recr_auto_id` int(11) NOT NULL,
  `recr_numero_item` varchar(10) NOT NULL,
  `recr_nivel` enum('Fundamental','Mayor','Menor','') NOT NULL,
  `recr_descipcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resolucion_criterios`
--

INSERT INTO `resolucion_criterios` (`recr_auto_id`, `recr_numero_item`, `recr_nivel`, `recr_descipcion`) VALUES
(1, '1.1.1', 'Fundamental', 'Los operarios disponen de unidades sanitarias, fijas o portátiles incluyendo pozos sépticos, siempre que sea diseñado y operado adecuadamente'),
(2, '1.1.2', 'Fundamental', 'El predio cuenta con sistema de lavado de manos para los trabajadores y permanece en condiciones óptimas de limpieza, dotado con papel,jabón y toallas limpias para el secado de manos.'),
(3, '1.1.3', 'Menor', 'Evidencia los requisitos señalados en el numeral 1.9 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(4, '1.2.1', 'Mayor', 'Evidenciar los requisitos señalados en el numeral 1.2 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(5, '1.2.2', 'Mayor', 'Evidenciar los requisitos señalados en el numeral 1.2 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(6, '1.2.3', 'Mayor', 'Esta área permanece cerrada con llave, para evitar el ingreso de personal no autorizado. Las llaves únicamente son manejadas por la persona responsable asignada.'),
(7, '1.2.4', 'Menor', 'Los botiquines de primeros auxilios deben estar dotados de los elementos necesarios para la atención de una emergencia y se encuentran disponibles y accesibles en todos los sitios permanentes y pueden ser transportados los lugares de trabajo. Los mismos cumplen con la normativa y las recomendaciones locales.'),
(8, '1.2.5', 'Menor', 'Se cuenta con un extintor multiuso con su carga al día, ubicado en un sitio visible y de fácil acceso. El personal autorizado está capacitado para su uso.'),
(9, '1.2.6', 'Mayor', 'El área de almacenamiento de insumos cuenta con un kit para uso en caso de derrame, el cual deberá estar señalizado y como mínimo consta de aserrín, arena o un material absorbente comercial, recogedor, bolsa y guantes. La disposición final de residuos se realiza de acuerdo a las normas nacionales vigentes.'),
(10, '1.2.7', 'Mayor', 'Los avisos deben ser claros y visibles; se deben encontrar en un buen estado.'),
(11, '1.3.1', 'Mayor', 'Área identificada y se tiene procedimientos para atención de situaciones de emergencia e indicaciones sobre el uso de elementos de protección personal. Evidenciar los requisitos señalados en el numeral 1.4 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(12, '1.3.2', 'Mayor', 'El área de preparación puede estar en la misma área de dosificación o en el cultivo, teniendo las mismas precauciones. Existen indicaciones sobre la necesidad de usar los elementos de protección y cumplir con todas las condiciones de seguridad acorde con el tipo de insumos y las recomendaciones de la etiqueta.'),
(13, '1.4.1', 'Mayor', 'Los equipos utensilios y herramientas deben estar limpios y organizados con el fin de prevenir su deterioro y posibles accidentes.'),
(14, '1.5.1', 'Fundamental', 'Este lugar está techado y acondicionado para preservar y garantizar por periodos cortos, la calidad e inocuidad de los productos cosechados. Allí se encuentran los equipos y utensilios acorde con las necesidades del producto que se va a cosechar, incluyendo las cajas y canastillas para la cosecha. Los productos no están en contacto directo con el suelo. Los equipos utensilios y herramientas de la cosecha se emplean únicamente para este fin.'),
(15, '1.6.1', 'Menor', 'Área independiente de las zonas de trabajo, debe permanecer limpia y ordenada, contar con canecas para la disposición de basuras.'),
(16, '2.1', 'Menor', 'Los equipos, utensilios y herramientas empleados en las labores de campo, cosecha y poscosecha son sometidos a actividades de mantenimiento, calibración, limpieza y desinfección. Estas actividades están documentadas y obedecen a una programación.'),
(17, '2.2', 'Menor', 'Evidenciar los requisitos señalados en el numeral 10.2.10 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(18, '2.3', 'Mayor', 'Los registros documentales evidencian la ejecución de las actividades de mantenimiento, calibración, limpieza y desinfección. Estos son legibles, fechas consecutivas.'),
(19, '3.1.1', 'Mayor', 'En caso de requerirse (concesión superficial y/o subterránea de aguas), se deben contar con el permiso Expreso de las autoridades competentes para el uso de las fuentes de agua utilizadas con fines de riego y procesos llevados a cabo en el predio.'),
(20, '3.1.2', 'Mayor', 'Se han establecido las fuentes de agua que se usan en las labores del predio y se definieron las acciones para su protección.'),
(21, '3.1.3', 'Fundamental', 'Mínimo una vez al año; los resultados de los análisis microbiológicos y fisicoquímicos cumplen con los requisitos establecidos de acuerdo a su uso.'),
(22, '3.1.4', 'Menor', 'Cuenta con un plan de uso racional de agua que contenga verificación, mantenimiento y medidas tendientes al control de pérdidas y fugas dentro de las redes de distribución de agua. Se tienen registros de consumo de agua en la actividad productiva.'),
(23, '3.1.5', 'Mayor', 'Evidenciar los requisitos señalados en el numeral 4.1 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(24, '3.2.1', 'Mayor', 'Este plan está actualizado, documentado. Abarca la reducción de desperdicios y contaminación (aire, suelo, agua y ruido) y el reciclaje de residuos. Se visualizan acciones y medidas que confirman el cumplimiento de los objetivos del plan de residuos y contaminantes '),
(25, '3.2.2', 'Mayor', 'Si se requiere disponer de mezclas no utilizadas y de las aguas de lavado de equipo de aplicación y herramientas (bombas, mangueras, etc.) estas son aplicadas en una parte del cultivo no tratado, entre los caminos o eras del cultivo o en un área no sembrada o área de barbecho demarcada para tal fin y alejado de las fuentes de agua.'),
(26, '3.2.3', 'Mayor', 'Antes de desechar los recipientes vacíos de agroquímicos, se realiza el triple lavado de los mismos, tal como lo estipula la legislación nacional y recomendaciones de asociaciones reconocidas. Para evitar su reutilización los envases lavados son perforados sin dañar su etiqueta y almacenarlos en forma segura, junto con otros empaques de plaguicidas en bolsas o canecas plásticas debidamente identificadas. Se pueden realizar prácticas de recolección para su posterior incineración o reciclaje de acuerdo con las normas nacionales.'),
(27, '3.2.4', 'Menor', 'Evidenciar los requisitos señalados en el numeral 4.5 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(28, '4.1', 'Mayor', 'Especialmente los cultivos de ciclo corto, se realiza rotación de cultivos.'),
(29, '4.2', 'Menor', 'Evidenciar los requisitos señalados en el numeral 10.2.2 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(30, '4.3', 'Menor', 'Evidencia la existencia del plan para prevenir la erosión de los suelos y las prácticas como coberturas nobles, sistema de drenajes, labranza mínima y manejo de curvas a nivel para siembra en Ladera.'),
(31, '5.1', 'Mayor', 'Evidenciar los requisitos señalados en el numeral 6.1 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(32, '5.2', 'Menor', 'Evidenciar el registro documental del material de propagación genéticamente modificado.'),
(33, '5.3', 'Mayor', 'Evidenciar los requisitos señalados en el numeral 6.3 y 10.1.9 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(34, '6.1', 'Mayor', 'Evidenciar los requisitos señalados en el numeral 7.1 y 10.2.5 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución.'),
(35, '6.2', 'Mayor', 'Evidenciar los requisitos señalados en el numeral 11.3 del anexo I Manual de Buenas Prácticas Agrícolas anexo a la presente resolución. Nota: El análisis de suelo Es físico químico y tiene una validez de dos años.'),
(36, '6.3', 'Mayor', 'Los insumos cuentan con registro otorgado por el ICA y son adquiridos en los almacenes autorizados por esta misma entidad.'),
(37, '6.4', 'Mayor', 'Evidenciar el registro documental de las aplicaciones de acuerdo a lo establecido el numeral 10.2 del anexo I Manual de Buenas Prácticas Agrícolas anexo de la resolución.'),
(38, '6.5', 'Fundamental', 'Evidenciar los requisitos señalados en el numeral 7.3 y 10.2.8 del anexo I Manual de Buenas Prácticas Agrícolas de la resolución.'),
(39, '6.6', 'Mayor', 'Evidenciar los requisitos señalados en el numeral 7.3 y 10.1.8 del anexo I Manual de Buenas Prácticas Agrícolas de la resolución.\r\n'),
(40, '7.1', 'Mayor', 'Evidenciar el plan de acuerdo a lo establecido en el numeral 10.2.6 del anexo I Manual de Buenas Prácticas Agrícolas de la resolución.\r\n'),
(41, '7.2', 'Mayor', 'Evidenciar que el personal que realiza la aplicación se encuentra capacitado de acuerdo a lo establecido en el numeral 3.2.1 del Anexo I Manual de Buenas Prácticas Agrícolas de la resolución.\r\n'),
(42, '7.3', 'Fundamental', 'Evidenciar el registro documental de las aplicaciones de acuerdo a lo establecido en el numeral 10.1.2 del Anexo I Manual de Buenas Prácticas Agrícolas de la resolución.\r\n'),
(43, '7.4', 'Menor', 'Evidenciar el listado de acuerdo a lo establecido en el numeral 11.4 del anexo I Manual de Buenas Prácticas Agrícolas de la resolución.\r\n'),
(44, '7.5', 'Mayor', 'Evidenciar disposiciones de acuerdo a lo establecido en el numeral 8 del Anexo I Manual de Buenas Prácticas Agrícolas de la resolución.\r\n'),
(45, '8.1', 'Fundamental', 'Evidenciar el registro documental de las aplicaciones de acuerdo a lo establecido en el numeral 3.1 del Anexo I Manual de Buenas Prácticas Agrícolas de la resolución.'),
(46, '8.2', 'Menor', 'Evidenciar el cumplimiento de lo establecido en el numeral 3.2 y verificar los listados de asistencia de acuerdo a lo establecido en el numeral 10.1.3 del Anexo I Manual de Buenas Prácticas Agrícolas de la resolución.\r\n'),
(47, '8.3', 'Menor', 'Evidenciar el cumplimiento de lo establecido en el numeral 3.3 y verificar lo establecido en el numeral 10.2.9 del Anexo I Manual de Buenas Prácticas Agrícolas de la resolución.\r\n'),
(48, '9.1', 'Mayor', 'Evidenciar los registros documentales de la trazabilidad en los numerales 9 y 10.1.5 del Anexo I Manual de Buenas Prácticas Agrícolas de la resolución.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolucion_lista_chequeo`
--

CREATE TABLE `resolucion_lista_chequeo` (
  `rlc_auto_id` int(11) NOT NULL,
  `rlc_area` int(11) NOT NULL,
  `rlc_sub_area_id` varchar(10) NOT NULL,
  `rlc_sub_area_id_desc` text NOT NULL,
  `rlc_item_numero` varchar(10) NOT NULL,
  `rlc_item_des` text NOT NULL,
  `rlc_nivel` enum('F','My','Mn','') NOT NULL,
  `rlc_ra` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resolucion_lista_chequeo`
--

INSERT INTO `resolucion_lista_chequeo` (`rlc_auto_id`, `rlc_area`, `rlc_sub_area_id`, `rlc_sub_area_id_desc`, `rlc_item_numero`, `rlc_item_des`, `rlc_nivel`, `rlc_ra`) VALUES
(1, 1, '1.1', 'Áreas de instalaciones sanitarias', '1.1.1', '¿El predio cuenta con baño para los trabajadores?', 'F', 0),
(2, 1, '1.1', 'Áreas de instalaciones sanitarias', '1.1.2', '¿El baño permanece en condiciones óptimas de limpieza?', 'F', 0),
(3, 1, '1.1', 'Áreas de instalaciones sanitarias', '1.1.3', 'Tener avisos informativos claros, actividades de limpieza y desinfección personal', 'Mn', 0),
(4, 1, '1.2', 'Área para almacenamiento de insumos agrícolas', '1.2.1', '¿El predio cuenta con área para el almacenamiento de insumos agrícolas? ¿Está separada de la vivienda?', 'My', 0),
(5, 1, '1.2', 'Área para almacenamiento de insumos agrícolas', '1.2.2', 'En esta área ¿los plaguicidas están funcionalmente separados de los fertilizantes y bioinsumos?', 'My', 0),
(6, 1, '1.2', 'Área para almacenamiento de insumos agrícolas', '1.2.3', '¿Esta área permanece con llave? ¿sólo se permite el ingreso a personal autorizado?', 'My', 0),
(7, 1, '1.2', 'Área para almacenamiento de insumos agrícolas', '1.2.4', '¿Cuenta con botiquín de primeros auxilios?', 'Mn', 0),
(8, 1, '1.2', 'Área para almacenamiento de insumos agrícolas', '1.2.5', '¿Cuenta con extintor multiuso en un lugar visible?', 'Mn', 0),
(9, 1, '1.2', 'Área para almacenamiento de insumos agrícolas', '1.2.6', '¿Cuenta con un kit para uso en caso de derrame de insumos agrícolas?', 'My', 0),
(10, 1, '1.2', 'Área para almacenamiento de insumos agrícolas', '1.2.7', '¿Cuenta con avisos informativos claros, actividades de prevención de peligros relacionados con el manejo de los insumos agrícolas y al uso de elementos de protección personal?', 'My', 0),
(11, 1, '1.3', 'Área de dosificación y preparación de mezcla de insumos agrícolas', '1.3.1', '¿El predio cuenta canal con área de dosificación de insumos agrícolas?', 'My', 0),
(12, 1, '1.3', 'Área de dosificación y preparación de mezcla de insumos agrícolas', '1.3.2', '¿El predio cuenta con área de preparación de mezclas de insumos agrícolas?', 'My', 0),
(13, 1, '1.4', 'Área de almacenamiento de equipos como utensilios y herramientas', '1.4.1', '¿El predio cuenta con área de almacenamiento de equipo utensilios y herramientas?', 'My', 0),
(14, 1, '1.5', '¿Área de acopio transitorio de productos cosechados?', '1.5.1', '¿El predio cuenta con área de acopio transitorio de productos cosechados?', 'F', 0),
(15, 1, '1.6', 'Área destinada al bienestar de los trabajadores', '1.6.1', '¿El predio cuenta con área para el consumo de alimentos y descanso de los trabajadores?', 'Mn', 0),
(16, 2, '2', 'Equipos, utensilios y herramienta', '2.1', '¿Todos los equipos, utensilios y herramientas se mantienen en buenas condiciones de operación y limpieza? Se cuenta con un plan de mantenimiento, johnny calibración de acuerdo a los requerimientos de cada uno?', 'Mn', 0),
(17, 2, '2', 'Equipos, utensilios y herramienta', '2.2', '¿Se cuenta con procedimientos e instructivos para su manejo, los riesgos de contaminación Cruzada o su deterioro y mal funcionamiento?', 'Mn', 0),
(18, 2, '2', 'Equipos, utensilios y herramienta', '2.3', '¿Se mantienen los registros de todas las actividades de mantenimiento como decís migración que se realizan?', 'My', 0),
(19, 3, '3.1', 'Agua', '3.1.1', 'Cuando se requiera, ¿se cuenta con permiso de uso de aguas?', 'My', 0),
(20, 3, '3.1', 'Agua', '3.1.2', '¿Se ha identificado la fuente de agua a utilizar en las diferentes labores del predio?', 'My', 0),
(21, 3, '3.1', 'Agua', '3.1.3', '¿Evaluado la calidad del agua?', 'F', 0),
(22, 3, '3.1', 'Agua', '3.1.4', 'Si el predio tiene un sistema de riego: ¿ se realiza un manejo racional del agua y se han definido las acciones para su protección?', 'Mn', 0),
(23, 3, '3.1', 'Agua', '3.1.5', '¿Se evaluaron las características y recursos de la zona, de los riesgos asociados al suelo y fuentes de agua?', 'My', 0),
(24, 3, '3.2', 'Manejo de residuos sólidos y líquidos', '3.2.1', '¿El predio cuenta con un plan de manejo de residuos líquidos y sólidos?', 'My', 0),
(25, 3, '3.2', 'Manejo de residuos sólidos y líquidos', '3.2.2', '¿Las aguas contaminadas con plaguicidas se disponen en un sitio de área de vertimiento de aguas sobrantes debidamente identificado y alejado de la Fuente de Agua?', 'My', 0),
(26, 3, '3.2', 'Manejo de residuos sólidos y líquidos', '3.2.3', '¿Los envases vacíos de plaguicidas son sometidos a la práctica del triple lavado? ¿se inutilizan sin destruir la etiqueta y son conservados con las debidas precauciones?', 'My', 0),
(27, 3, '3.2', 'Manejo de residuos sólidos y líquidos', '3.2.4', '¿El material vegetal resultante de podas fitosanitarias, tirado del predio o enterrado?', 'Mn', 0),
(28, 4, '4', 'Manejo de protección de suelos', '4.1', '¿Cuando sea técnicamente posible, rotación de cultivos?', 'Mn', 0),
(29, 4, '4', 'Manejo de protección de suelos', '4.2', '¿En los suelos con problemas de saturación hídrica,se han establecido sistemas de drenajes?', 'Mn', 0),
(30, 4, '4', 'Manejo de protección de suelos', '4.3', '¿Se han formulado planes para prevenir la erosión de los suelos?', 'Mn', 0),
(31, 5, '5', 'Material de propagación ', '5.1', '¿El material utilizado para la siembra cumple con la reglamentación vigente, instituto colombiano agropecuario ICA?', 'My', 0),
(32, 5, '5', 'Material de propagación ', '5.2', 'En caso de utilizar material de propagación genéticamente modificado, ¿Este está autorizado por el Instituto colombiano agropecuario ICA?', 'Mn', 0),
(33, 5, '5', 'Material de propagación ', '5.3', 'En caso de que el material de propagación se ha obtenido en el predio el ¿proceso garantiza la calidad y sanidad del material?', 'My', 0),
(34, 6, '6', 'Nutrición de plantas', '6.1', '¿Se ha diseñado un plan de fertilización basado en el análisis de suelo y los requerimientos de la especie sembrada y es elaborado y ejecutado bajo la responsabilidad del asistente técnico?', 'My', 0),
(35, 6, '6', 'Nutrición de plantas', '6.2', '¿Se cuenta con análisis de suelo?', 'My', 0),
(36, 6, '6', 'Nutrición de plantas', '6.3', 'Los insumos agrícolas utilizados en esta labor ¿ cuenta con el registro otorgado por el Instituto colombiano agropecuario ICA? Son adquiridos a los almacenes autorizados por esta misma entidad?', 'My', 0),
(37, 6, '6', 'Nutrición de plantas', '6.4', '¿Todas las aplicaciones de fertilizante están registradas en un formato?', 'My', 0),
(38, 6, '6', 'Nutrición de plantas', '6.5', '¿Para la preparación de abonos orgánicos en el predio se tienen implementados procedimientos de técnicas de compostaje?', 'F', 0),
(39, 6, '6', 'Nutrición de plantas', '6.6', '¿Serían registros cuando el abono es preparado en la finca?', 'My', 0),
(40, 7, '7', 'Protección de cultivo', '7.1', '¿Se cuenta con un plan para la protección fitosanitaria del cultivo dentro de los principios del manejo integrado de plagas (MIP) y es planeado y ejecutado bajo la supervisión del asistente técnico?', 'My', 0),
(41, 7, '7', 'Protección de cultivo', '7.2', '¿El personal que manipula estos productos está capacitado y sigue las recomendaciones de uso del fabricante contenidas en la etiqueta?', 'My', 0),
(42, 7, '7', 'Protección de cultivo', '7.3', '¿Están registradas documentalmente todas las aplicaciones plaguicidas en un formato?', 'F', 0),
(43, 7, '7', 'Protección de cultivo', '7.4', 'Se cuenta con un listado sobre los límites máximos de residuos lidad', 'Mn', 0),
(44, 7, '7', 'Protección de cultivo', '7.5', 'Los plaguicidas químicos y vio en zumos de uso agrícolas utilizados en esta labor ¿ cuentan con el registro otorgado por el ICA para el blanco biológico de escrito especialmente en la etiqueta y son adquiridos en los almacenes registrados por la gerencia seccionales autorizados por esta misma entidad?', 'My', 0),
(45, 8, '8', 'Personal', '8.1', '¿En el predio se cuenta con elementos de protección personal requerido de acuerdo a las labores?', 'F', 0),
(46, 8, '8', 'Personal', '8.2', '¿El predio cuenta con un plan de capacitación permanente para su personal, debidamente documentado?', 'Mn', 0),
(47, 8, '8', 'Personal', '8.3', '¿Se cuenta con un plan de manejo de emergencias o contingencias?', 'Mn', 0),
(48, 9, '9', 'Trazabilidad', '9.1', '¿Se implementa un plan de trazabilidad que permita Dar seguimiento al producto o lotes de productos?', 'My', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolucion_manual`
--

CREATE TABLE `resolucion_manual` (
  `rma_auto_id` int(11) NOT NULL,
  `rma_id_area` int(11) NOT NULL,
  `rma_numero` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `rma_descripcion` text CHARACTER SET utf8mb4 NOT NULL,
  `rma_ra` tinyint(1) NOT NULL DEFAULT 0,
  `modelo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `resolucion_manual`
--

INSERT INTO `resolucion_manual` (`rma_auto_id`, `rma_id_area`, `rma_numero`, `rma_descripcion`, `rma_ra`, `modelo`) VALUES
(1, 1, '1.1', '1.1 Unidad sanitaria y sistema de lavamanos, dotado y en condiciones óptimas de limpieza. Construidos con materiales fáciles de limpiar y con sistemas de evacuación de aguas servidas, diseñados para prevenir la contaminación en el campo. Debe estar ubicado mínimo a una distancia de 100 m de fuentes de agua y a más de 15 m (separable físicamente) de donde se manipulen o almacenen productos de cosecha y contar con avisos que indiquen la obligación y el procedimiento para lavarse las manos.', 1, 'bota.html'),
(2, 1, '1.2', '1.2 Área de almacenamiento de insumos agrícolas, que cuente con una estructura sólida, techos, ventilación e iluminación adecuada (natural o artificial) evitando la concentración peligrosa de gases; los pisos deben ser de materiales no absorbentes, diseñados para retener derrames y permitir su limpieza.\r\n\r\nDebe contar con estanterías de material incombustible, no absorbente y de fácil limpieza. Los plaguicidas, fertilizantes y bioinsumos se deben ubicar de manera separada entre sí. Esta área deberá contar con avisos que identifiquen cada tipo de insumo y se deben organizar de tal manera que los insumos sólidos se ubiquen en la parte superior y los líquidos en la inferior teniendo la precaución de ordenarlos de acuerdo a la categoría toxicológica y separarlos de acuerdo a su uso.\r\n\r\nEsta área es de uso exclusivo y de acceso restringido, solo se permite el almacenamiento de equipos empleados para dosificación y aplicación de insumos; es independiente de la vivienda, del almacenamiento de alimentos, del material de empaque, de zonas no inundables y fuentes de agua.', 1, 'botiquin.html'),
(3, 1, '1.3', '1.3 Área de almacenamiento de utensilios, equipos y herramientas.', 1, 'gorra.html'),
(4, 1, '1.4', '1.4 Área de dosificación y preparación de mezclas de insumos agrícolas, puede encontrarse localizada dentro de la bodega de insumos en cuyo caso, está separada físicamente y posee piso impermeable en buen estado, suministro de agua y en lo posible una ducha de emergencia, iluminación y ventilación adecuada. Adicionalmente existen elementos de medición para la correcta dosificación, tales como balanzas, probetas, recipientes graduados, etc…, los cuales están en buen estado y son de uso exclusivo para este fin.\r\n\r\nCuando la dosificación y mezcla de los insumos se realice dentro del cultivo, esta zona deberá demarcarse e impermeabilizarse de tal manera que se controlen los vertimientos de insumos, así como los utensilios necesarios para esta labor en óptimas condiciones tales como recipientes, agua, elementos de protección personal, entre otros.', 1, 'overol.html'),
(5, 1, '1.5', '1.5 Área de vertimiento de aguas sobrantes (barbecho) debidamente identificado y alejado de las fuentes de agua.', 1, 'guantes.html'),
(6, 1, '1.6', '1.6 Área de acopio de productos cosechados, el cual debe ser techado y acondicionado para preservar por períodos cortos, la calidad e inocuidad de las frutas y vegetales cosechadas. Los productos no están en contacto directo con el suelo, los equipos utensilios y herramientas de la cosecha se emplean únicamente para este fin.', 0, 'obrero.html'),
(7, 1, '1.7', '1.7 Área para el consumo de alimentos y descanso de los trabajadores, debe ser independiente del área de trabajo, permanecer limpia y ordenada, contar con canecas para la disposición de basuras.', 1, 'casco.html'),
(8, 1, '1.8', '1.8 Botiquín de primeros auxilios, extintor multiuso en un lugar visible y un kit para uso en caso de derrame de un insumo.', 0, 'tanqueagua.html'),
(9, 1, '1.9', '1.9 Tener avisos informativos claros, alusivos a las actividades de limpieza y desinfección personal, así como las actividades de prevención de los peligros relacionados con el manejo de los insumos agrícolas y al uso de elementos de protección personal.', 0, ''),
(10, 3, '3.1', '3.1 Elementos de protección personal requeridos de acuerdo a las labores tales como botas, overol, guantes, careta y gorra. La ropa y los equipos de protección personal deben ser lavados después de su uso y almacenarse en un lugar separado de los productos para la protección de cultivo.', 0, ''),
(11, 3, '3.2', '3.2 Estar capacitados en los siguientes aspectos:', 0, ''),
(12, 3, '3.2.1', '3.2.1 Almacenamiento, manejo, aplicación de los insumos agrícolas y uso de elementos de protección personal.', 0, ''),
(13, 3, '3.2.2', '3.2.2 Prácticas de higiene.', 0, ''),
(14, 3, '3.2.3', '3.2.3 Manejo, calibración y limpieza de equipos.', 0, ''),
(15, 3, '3.2.4 ', '3.2.4 Primeros auxilios y manejo de extintores al menos una persona.', 0, ''),
(16, 3, '3.3', '3.3 Conocimiento del plan de manejo de contingencias o emergencias.', 0, ''),
(17, 4, '4.1', '4.1 Identificar las características y recursos de la zona del predio, de los riesgos asociados al suelo y a las fuentes de agua que puedan afectar la inocuidad, la productividad y la calidad de las frutas y vegetales, para lo cual deberá contar con un mapa o croquis del predio identificando el(os) cultivo(s), área(s) e instalación(es) y los riesgos asociados.\r\n\r\nDisponer de suministro de agua y contar con registros documentales que evidencian el tratamiento realizado cuando los resultados de análisis no cumplen con los límites permitidos, respaldando el funcionamiento del tratamiento con un nuevo análisis de agua.', 0, ''),
(18, 4, '4.2', '4.2 Identificar la fuente de agua que va a utilizar en las diferentes labores, evaluar su calidad, definir las acciones para su protección de las cuales se llevarán registro documental de las mismas e incluir análisis microbiológicos y fisicoquímicos de acuerdo a su uso, mínimo una vez al año.', 0, ''),
(19, 4, '4.3', '4.3 En caso de contar con un sistema de riego, establezca un plan de uso racional de agua que contenga verificación, mantenimiento y medidas tendientes al control de pérdidas y fugas dentro de las redes de distribución de agua. Se tienen registros documentales de consumo de agua en la actividad productiva.', 0, ''),
(20, 4, '4.4 ', '4.4 Someter a la práctica del triple lavado los envases de plaguicidas, inutilizarlos sin destruir la etiqueta y conservarlos con las precauciones debidas hasta la entrega al mecanismo de devolución que el fabricante o importador haya establecido.', 0, ''),
(21, 4, '4.5', '4.5 Retirar del cultivo, enterrar o compostar el material vegetal resultante de podas fitosanitarias con el fin de evitar diseminación de plagas.', 0, ''),
(22, 5, '5.1', '5.1 Realizar rotación de cultivos cuando sea técnicamente posible.', 0, ''),
(23, 5, '5.2', '5.2 Establecer sistemas de drenajes en los suelos con problemas de saturación hídrica.', 0, ''),
(24, 5, '5.3', '5.3 Formular plan que incluya prácticas como coberturas nobles, labranza mínima y manejo de curvas a nivel para siembras en ladera para prevenir la erosión de los suelos.', 0, ''),
(25, 6, '6.1', '6.1 Todo material utilizado para la siembra cumple con la reglamentación vigente, expedida por el ICA, ya sea cuando se usa semillas los empaques que las contienen cumplen con las especificaciones de rotulado como fecha de vencimiento, origen, lote, variedad, tasa de germinación y empresa responsable. Las plántulas deben ser obtenidas de viveros registrados.', 0, ''),
(26, 6, '6.2', '6.2 El material de propagación genéticamente modificado debe ser autorizado.', 0, ''),
(27, 6, '6.3', '6.3 Si el material de propagación es obtenido en el predio debe contar con un procedimiento para tal fin, así como llevar registro documental de las actividades desarrolladas.', 0, ''),
(28, 7, '7.1', '7.1 Diseñar un Plan de fertilización para la nutrición del cultivo basado en el análisis de suelo y los requerimientos de la especie sembrada. Este plan debe ser elaborado y ejecutado bajo la supervisión del asistente técnico.', 0, ''),
(29, 7, '7.2', '7.2 Utilizar insumos agrícolas y abonos orgánicos registrados ante el ICA y adquiridos en los establecimientos de comercio registrados por esta entidad.', 0, ''),
(30, 7, '7.3', '7.3 Contar con un procedimiento para la preparación de abonos orgánicos en el predio, llevar registros documentales que incluyan información sobre el origen del material, los procedimientos de transformación y los controles realizados. No se deben usar las heces humanas tratadas o sin tratar, desechos urbanos sin clasificación y cualquier otro material que presente contaminación microbiológica, metales pesados u otros productos químicos.', 0, ''),
(31, 9, '9.1', '9.1 La unidad de producción.', 0, ''),
(32, 9, '9.2', '9.2 El producto.', 0, ''),
(33, 9, '9.3', '9.3 El lote.', 0, ''),
(34, 9, '9.4', '9.4 La fecha de cosecha.', 0, ''),
(35, 9, '9.5', '9.5 El número de cajas de cada lote.', 0, ''),
(36, 10, '10.1', '10.1 Registros Documentales:', 0, ''),
(37, 10, '10.1.1', '10.1.1 De mantenimiento, limpieza, desinfección y calibración de equipos de acuerdo a los requerimientos de cada uno.', 0, ''),
(38, 10, '10.1.2', '10.1.2 Aplicación e inventario de fertilizantes y plaguicidas. Además, se cuenta con registros documentales actualizados de manejo de inventarios de los productos empleados en la protección de cultivos.\r\n\r\nEl registro documental de fertilizantes debe contener como mínimo: identificación del predio, nombre comercial del producto y la concentración (Ej. 15-15-15), número de registro, fecha de aplicación, dosis, forma y método de aplicación, nombre y firma de quien aplicó y recomendó. Para el caso de los plaguicidas: identificación del predio, plaga por controlar, nombre comercial, ingrediente activo, número de lote del producto, número de registro ICA, fecha de aplicación, dosis aplicada, método de aplicación, periodo de carencia, nombre y firma de quien recomendó y de quien aplicó. Visitas del asistente Técnico a la plantación.', 0, ''),
(39, 10, '10.1.3', '10.1.3 Capacitaciones al personal, este registro debe indicar como mínimo: fecha, título de la capacitación, tema de la capacitación, nombre del capacitador e institución, nombre, firma y datos de cada operario capacitado.', 0, ''),
(40, 10, '10.1.4', '10.1.4 Uso de material de propagación genéticamente modificado.', 0, ''),
(41, 10, '10.1.5', '10.1.5 Trazabilidad que permita conocer el histórico, ubicación y trayectoria del producto de un producto o lote de productos.', 0, ''),
(42, 10, '10.1.6 ', '10.1.6 La preparación del abono orgánico en el predio.', 0, ''),
(43, 10, '10.1.7', '10.1.7 De las acciones de protección de las fuentes de agua que va a utilizar en las diferentes labores.', 0, ''),
(44, 10, '10.1.8', '10.1.8 Del consumo de agua en la actividad productiva.', 0, ''),
(45, 10, '10.1.9', '10.1.9 De las actividades desarrolladas para la obtención del material vegetal en el predio.', 0, ''),
(46, 10, '10.2', '10.2 Planes y Procedimientos:', 0, ''),
(47, 10, '10.2.1', '10.2.1 Plan de Uso racional de agua.', 0, ''),
(48, 10, '10.2.2', '10.2.2 Plan para evitar la erosión de suelos.', 0, ''),
(49, 10, '10.2.3', '10.2.3 Procedimiento para la obtención del material de propagación en el predio.', 0, ''),
(50, 10, '10.2.4', '10.2.4 Plan de mantenimiento, desinfección y calibración de equipos.', 0, ''),
(51, 10, '10.2.5', '10.2.5 Plan de fertilización de acuerdo al análisis de suelos y/o aguas elaborado por un Ingeniero Agrónomo o Agrónomo, que incluye componentes cantidad, tipo de fertilizante, abono o enmienda que se va a aplicar, dosis métodos y épocas de aplicación.', 0, ''),
(52, 10, '10.2.6', '10.2.6 Plan de Manejo Integrado de Plagas, basado en la observación y detección de las plagas y en el que se prioriza para la intervención, el uso de métodos culturales, etológicos, biológicos y físicos sobre el control químico.', 0, ''),
(53, 10, '10.2.7', '10.2.7 Plan de manejo de residuos líquidos y sólidos, que incluye reducción de desperdicios, contaminación (aire, suelo, agua y ruido) y el reciclaje de residuos.', 0, ''),
(54, 10, '10.2.8', '10.2.8 Procedimiento para la elaboración de abonos orgánicos.', 0, ''),
(55, 10, '10.2.9', '10.2.9 Plan de manejo de contingencias o emergencias. Se mantiene por escrito y en lugares visibles los procedimientos en caso de emergencia y unos trabajadores responsables que estén entrenados para actuar en caso de derrames de agroquímicos, incendios o intoxicaciones o cualquier riesgo potencial para ellos. Además, se cuenta con instructivos para informar acerca de la atención de situaciones de emergencia, manejo de insumos y números telefónicos con contactos para atender cualquier situación.', 0, ''),
(56, 10, '10.2.10', '10.2.10 Procedimientos e instructivos para el manejo de equipos, utensilios y herramientas, que eviten los riesgos de contaminación cruzada o su deterioro y mal funcionamiento.\r\n\r\n', 0, ''),
(57, 11, '11.1', '11.1 Procedencia del material de siembra.', 0, ''),
(58, 11, '11.2', '11.2 Resultados de laboratorio del análisis físico-químico y microbiológico de agua cumpliendo con Decreto número 3930 de 2010 del Ministerio de Ambiente y Desarrollo Sostenible, o aquel que lo modifique, adicione o sustituya.', 0, ''),
(59, 11, '11.3', '11.3 Resultados de laboratorio del análisis suelo de dos años.', 0, ''),
(60, 11, '11.4', '11.4 Cuando aplique contar con el listado sobre los L.M.R. permitidos en el cultivo por la legislación vigente.', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_counts`
--

CREATE TABLE `users_counts` (
  `us_id_user` int(11) NOT NULL,
  `us_identificacion` varchar(30) NOT NULL,
  `us_mail` varchar(50) NOT NULL,
  `us_contrasena` varchar(120) NOT NULL,
  `us_token` varchar(120) NOT NULL,
  `us_creado` date NOT NULL,
  `us_updated` datetime NOT NULL,
  `us_estado` tinyint(1) NOT NULL DEFAULT 0,
  `us_vigencia` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users_counts`
--

INSERT INTO `users_counts` (`us_id_user`, `us_identificacion`, `us_mail`, `us_contrasena`, `us_token`, `us_creado`, `us_updated`, `us_estado`, `us_vigencia`) VALUES
(1, 'sergiodoc', '', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '', '2020-08-26', '0000-00-00 00:00:00', 1, 1),
(3, 'Sule19', '', 'a9b6c589ca289163c30a50fd37bf149d0c0f14f2', '', '2020-12-09', '0000-00-00 00:00:00', 1, 1),
(4, 'Syrivera89@misena.edu.co', '', '7c222fb2927d828af22f592134e8932480637c0d', '', '2020-12-18', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_personals`
--

CREATE TABLE `users_personals` (
  `up_id_user` int(11) NOT NULL,
  `up_nombres` varchar(50) NOT NULL,
  `up_apellidos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users_personals`
--

INSERT INTO `users_personals` (`up_id_user`, `up_nombres`, `up_apellidos`) VALUES
(1, 'Sergio Yamit', 'Rivera Flor'),
(3, 'Suleimy', 'Rivera'),
(4, 'Sergio Yamit', 'Rivera Flor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `diagnostico_lista_chequeo`
--
ALTER TABLE `diagnostico_lista_chequeo`
  ADD PRIMARY KEY (`dlch_auto_id`),
  ADD KEY `dlch_id_diagnostico` (`dlch_id_diagnostico`),
  ADD KEY `dlch_id_productor` (`dlch_id_productor`),
  ADD KEY `dlch_id_revisor` (`dlch_id_revisor`);

--
-- Indices de la tabla `fincas`
--
ALTER TABLE `fincas`
  ADD PRIMARY KEY (`finc_id_auto`),
  ADD KEY `finc_id_propietario` (`finc_id_propietario`);

--
-- Indices de la tabla `finca_cultivos`
--
ALTER TABLE `finca_cultivos`
  ADD PRIMARY KEY (`fcu_id_auto`),
  ADD KEY `fcu_id_lote` (`fcu_id_lote`);

--
-- Indices de la tabla `finca_diagnosticos`
--
ALTER TABLE `finca_diagnosticos`
  ADD PRIMARY KEY (`fdia_id_auto`),
  ADD KEY `fdia_id_finca` (`fdia_id_finca`),
  ADD KEY `fdia_id_usuario` (`fdia_id_usuario`);

--
-- Indices de la tabla `finca_lotes`
--
ALTER TABLE `finca_lotes`
  ADD PRIMARY KEY (`flo_id_auto`),
  ADD KEY `flo_id_finca` (`flo_id_finca`);

--
-- Indices de la tabla `hola`
--
ALTER TABLE `hola`
  ADD PRIMARY KEY (`id_auto`);

--
-- Indices de la tabla `ra_objetos`
--
ALTER TABLE `ra_objetos`
  ADD PRIMARY KEY (`rao_auto_id`);

--
-- Indices de la tabla `resolucion_areas`
--
ALTER TABLE `resolucion_areas`
  ADD PRIMARY KEY (`rea_auto_id`);

--
-- Indices de la tabla `resolucion_criterios`
--
ALTER TABLE `resolucion_criterios`
  ADD PRIMARY KEY (`recr_auto_id`);

--
-- Indices de la tabla `resolucion_lista_chequeo`
--
ALTER TABLE `resolucion_lista_chequeo`
  ADD PRIMARY KEY (`rlc_auto_id`);

--
-- Indices de la tabla `resolucion_manual`
--
ALTER TABLE `resolucion_manual`
  ADD PRIMARY KEY (`rma_auto_id`),
  ADD KEY `resolucion_manual_ibfk_1` (`rma_id_area`);

--
-- Indices de la tabla `users_counts`
--
ALTER TABLE `users_counts`
  ADD PRIMARY KEY (`us_id_user`),
  ADD UNIQUE KEY `us_identificacion` (`us_identificacion`);

--
-- Indices de la tabla `users_personals`
--
ALTER TABLE `users_personals`
  ADD PRIMARY KEY (`up_id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `diagnostico_lista_chequeo`
--
ALTER TABLE `diagnostico_lista_chequeo`
  MODIFY `dlch_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `fincas`
--
ALTER TABLE `fincas`
  MODIFY `finc_id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `finca_cultivos`
--
ALTER TABLE `finca_cultivos`
  MODIFY `fcu_id_auto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `finca_diagnosticos`
--
ALTER TABLE `finca_diagnosticos`
  MODIFY `fdia_id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `finca_lotes`
--
ALTER TABLE `finca_lotes`
  MODIFY `flo_id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `hola`
--
ALTER TABLE `hola`
  MODIFY `id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `ra_objetos`
--
ALTER TABLE `ra_objetos`
  MODIFY `rao_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `resolucion_areas`
--
ALTER TABLE `resolucion_areas`
  MODIFY `rea_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `resolucion_criterios`
--
ALTER TABLE `resolucion_criterios`
  MODIFY `recr_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `resolucion_lista_chequeo`
--
ALTER TABLE `resolucion_lista_chequeo`
  MODIFY `rlc_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `resolucion_manual`
--
ALTER TABLE `resolucion_manual`
  MODIFY `rma_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `users_counts`
--
ALTER TABLE `users_counts`
  MODIFY `us_id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `diagnostico_lista_chequeo`
--
ALTER TABLE `diagnostico_lista_chequeo`
  ADD CONSTRAINT `diagnostico_lista_chequeo_ibfk_1` FOREIGN KEY (`dlch_id_diagnostico`) REFERENCES `finca_diagnosticos` (`fdia_id_auto`),
  ADD CONSTRAINT `diagnostico_lista_chequeo_ibfk_2` FOREIGN KEY (`dlch_id_productor`) REFERENCES `users_counts` (`us_id_user`),
  ADD CONSTRAINT `diagnostico_lista_chequeo_ibfk_3` FOREIGN KEY (`dlch_id_revisor`) REFERENCES `users_counts` (`us_id_user`);

--
-- Filtros para la tabla `fincas`
--
ALTER TABLE `fincas`
  ADD CONSTRAINT `fincas_ibfk_1` FOREIGN KEY (`finc_id_propietario`) REFERENCES `users_counts` (`us_id_user`) ON DELETE CASCADE;

--
-- Filtros para la tabla `finca_cultivos`
--
ALTER TABLE `finca_cultivos`
  ADD CONSTRAINT `finca_cultivos_ibfk_1` FOREIGN KEY (`fcu_id_lote`) REFERENCES `finca_lotes` (`flo_id_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `finca_diagnosticos`
--
ALTER TABLE `finca_diagnosticos`
  ADD CONSTRAINT `finca_diagnosticos_ibfk_1` FOREIGN KEY (`fdia_id_finca`) REFERENCES `fincas` (`finc_id_auto`) ON DELETE CASCADE,
  ADD CONSTRAINT `finca_diagnosticos_ibfk_2` FOREIGN KEY (`fdia_id_usuario`) REFERENCES `users_counts` (`us_id_user`);

--
-- Filtros para la tabla `finca_lotes`
--
ALTER TABLE `finca_lotes`
  ADD CONSTRAINT `finca_lotes_ibfk_1` FOREIGN KEY (`flo_id_finca`) REFERENCES `fincas` (`finc_id_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `resolucion_criterios`
--
ALTER TABLE `resolucion_criterios`
  ADD CONSTRAINT `resolucion_criterios_ibfk_1` FOREIGN KEY (`recr_auto_id`) REFERENCES `resolucion_lista_chequeo` (`rlc_auto_id`);

--
-- Filtros para la tabla `resolucion_manual`
--
ALTER TABLE `resolucion_manual`
  ADD CONSTRAINT `resolucion_manual_ibfk_1` FOREIGN KEY (`rma_id_area`) REFERENCES `resolucion_areas` (`rea_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users_personals`
--
ALTER TABLE `users_personals`
  ADD CONSTRAINT `users_personals_ibfk_1` FOREIGN KEY (`up_id_user`) REFERENCES `users_counts` (`us_id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
