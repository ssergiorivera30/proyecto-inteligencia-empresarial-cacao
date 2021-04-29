-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2021 a las 23:35:43
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
-- Base de datos: `web_covalonga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases_ayudas_file`
--

CREATE TABLE `clases_ayudas_file` (
  `cafile_auto` int(11) NOT NULL,
  `cafile_id_clase` int(10) NOT NULL,
  `cafile_file` varchar(120) NOT NULL,
  `cafile_estado` tinyint(1) NOT NULL DEFAULT 1,
  `cafile_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `cafile_created` datetime NOT NULL,
  `cafile_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases_ayudas_img`
--

CREATE TABLE `clases_ayudas_img` (
  `caimg_auto` int(11) NOT NULL,
  `cay_id_clase` int(10) NOT NULL,
  `caimg_img` varchar(120) NOT NULL,
  `caimg_estado` tinyint(1) NOT NULL DEFAULT 1,
  `caimg_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `caimg_created` datetime NOT NULL,
  `caimg_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases_ayudas_url`
--

CREATE TABLE `clases_ayudas_url` (
  `caur_auto` int(11) NOT NULL,
  `caur_id_clase` int(10) NOT NULL,
  `caur_nombre` varchar(160) NOT NULL,
  `caur_url` varchar(120) NOT NULL,
  `caur_estado` tinyint(1) NOT NULL DEFAULT 1,
  `caur_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `caur_created` datetime NOT NULL,
  `caur_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `cur_auto` int(11) NOT NULL,
  `cur_nombre` varchar(120) NOT NULL,
  `cur_subtitulo` varchar(150) NOT NULL,
  `cur_descripcion` text NOT NULL,
  `cur_requisitos` text NOT NULL,
  `cur_observaciones` text NOT NULL,
  `cur_modalidad` varchar(15) NOT NULL,
  `cur_valor` varchar(12) NOT NULL,
  `cur_inicio_matricula` date NOT NULL,
  `cur_inicio_curso` date NOT NULL,
  `cur_created` datetime NOT NULL,
  `cur_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cur_estado` tinyint(1) NOT NULL DEFAULT 1,
  `cur_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`cur_auto`, `cur_nombre`, `cur_subtitulo`, `cur_descripcion`, `cur_requisitos`, `cur_observaciones`, `cur_modalidad`, `cur_valor`, `cur_inicio_matricula`, `cur_inicio_curso`, `cur_created`, `cur_updated`, `cur_estado`, `cur_vigencia`) VALUES
(2, 'TALLER TEATRO', 'PANTOMIMA', 'ARTES ESCÉNICAS 1 ', 'TIEMPO', 'EXPRESIÓN CORPORAL 1', 'Virtual', '0', '2020-09-01', '2020-09-11', '2020-08-29 10:29:08', '2020-09-29 22:33:59', 1, 1),
(3, 'Teatro ', 'Pantomima', 'Escuela de Formación ', '', '', 'Virtual', '', '2020-06-26', '2020-09-30', '2020-09-26 09:39:10', '2020-09-26 16:39:10', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos_matriculas`
--

CREATE TABLE `cursos_matriculas` (
  `curm_auto` int(11) NOT NULL,
  `curm_id_curso` int(10) NOT NULL,
  `curm_id_usuario` int(10) NOT NULL,
  `curm_solicitud_matricula` varchar(4) NOT NULL,
  `curm_valor` int(10) NOT NULL,
  `curm_comprovante` varchar(200) NOT NULL,
  `curm_pago_aprovado` tinyint(1) NOT NULL DEFAULT 0,
  `curm_autorizo_curso` tinyint(1) NOT NULL DEFAULT 0,
  `curm_terminado` tinyint(1) NOT NULL DEFAULT 0,
  `curm_aprobado` tinyint(1) NOT NULL DEFAULT 0,
  `curm_certificado` tinyint(1) NOT NULL DEFAULT 0,
  `curm_created` datetime NOT NULL,
  `curm_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `curm_estado` tinyint(1) NOT NULL DEFAULT 1,
  `curm_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `curm_fecha_termiando` date NOT NULL,
  `curm_fecha_certificado` date NOT NULL,
  `curm_nota_final` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_clases`
--

CREATE TABLE `curso_clases` (
  `cla_auto` int(11) NOT NULL,
  `cla_id_curso` int(10) NOT NULL,
  `cla_orden` int(10) NOT NULL,
  `cla_titulo` varchar(150) NOT NULL,
  `cla_descripción` text NOT NULL,
  `cla_created` date NOT NULL,
  `cla_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cla_estado` tinyint(1) NOT NULL DEFAULT 1,
  `cla_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `curso_clases`
--

INSERT INTO `curso_clases` (`cla_auto`, `cla_id_curso`, `cla_orden`, `cla_titulo`, `cla_descripción`, `cla_created`, `cla_updated`, `cla_estado`, `cla_vigencia`) VALUES
(7, 2, 1, 'MAQUILLAJE ', 'MAQUILLAJE MIMO', '2020-08-29', '2020-08-29 08:33:33', 1, 1),
(9, 3, 1, 'Taller teatro 1', 'Pantomima', '2020-09-26', '2020-09-26 16:41:05', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_link`
--

CREATE TABLE `curso_link` (
  `cla_auto` int(11) NOT NULL,
  `cla_id_clase` int(10) NOT NULL,
  `cla_url` varchar(120) NOT NULL,
  `cla_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `curso_link`
--

INSERT INTO `curso_link` (`cla_auto`, `cla_id_clase`, `cla_url`, `cla_updated`) VALUES
(7, 7, 'https://www.youtube.com/embed/5aW_r9L3mN8', '2020-08-29 08:35:17'),
(9, 9, 'https://www.youtube.com/embed/aXY29U3I-kk', '2020-09-26 16:41:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela`
--

CREATE TABLE `escuela` (
  `es_id` int(11) NOT NULL,
  `es_nombre` varchar(100) NOT NULL,
  `es_ano_creacion` date NOT NULL,
  `es_direccion` varchar(100) NOT NULL,
  `es_descripcion` varchar(100) NOT NULL,
  `es_logo` varchar(100) NOT NULL,
  `es_creado` date NOT NULL,
  `es_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `es_estado` tinyint(1) NOT NULL DEFAULT 1,
  `es_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `escuela`
--

INSERT INTO `escuela` (`es_id`, `es_nombre`, `es_ano_creacion`, `es_direccion`, `es_descripcion`, `es_logo`, `es_creado`, `es_update`, `es_estado`, `es_vigencia`) VALUES
(1, 'Danza - VIVENCIAS', '2020-06-15', 'Carrera 5 # 2 - 23', 'Danza', '2009160409040904647.jpg', '2020-09-16', '2020-09-26 16:34:21', 1, 1),
(2, 'Música ', '2020-06-16', 'Carrera 5 # 2 - 23', 'Música Tradicional \nFlauta traversa \nGuitarra\n\n', '2009160409430943973.jpg', '2020-09-16', '2020-09-16 16:47:43', 1, 1),
(3, 'Teatro ', '2020-06-16', 'Carrera 5 # 2 - 23 ', 'Teatro de sala y callejero ', '2009160409370937208.jpg', '2020-09-16', '2020-09-16 16:50:37', 1, 1),
(4, 'Ballet Covalonga', '2020-10-03', 'Carrera 3 #  2 - 23', 'Ballet ', '2009160509470947228.jpg', '2020-09-16', '2020-09-16 17:01:47', 1, 1),
(5, 'Danza - VIDA Y ARTE', '2020-06-16', 'Carrera 3 E # 9A - 04', 'Semillero - Juvenil ', '2009160509130913137.png', '2020-09-16', '2020-09-26 16:33:43', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `ev_auto` int(11) NOT NULL,
  `ev_nombre` varchar(150) NOT NULL,
  `ev_slogan` varchar(120) NOT NULL,
  `ev_modalidad` varchar(30) NOT NULL,
  `ev_link` varchar(120) NOT NULL,
  `ev_banner` varchar(120) NOT NULL,
  `ev_direccion` text NOT NULL,
  `ev_fecha_inicio` date NOT NULL,
  `ev_hora_inicio` time NOT NULL,
  `ev_fecha_final` date NOT NULL,
  `ev_hora_final` time NOT NULL,
  `ev_telefono` varchar(35) NOT NULL,
  `ev_email` varchar(120) NOT NULL,
  `ev_observaciones` text NOT NULL,
  `ev_created` datetime NOT NULL,
  `ev_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ev_publicado` tinyint(1) NOT NULL DEFAULT 0,
  `ev_estado` tinyint(1) NOT NULL DEFAULT 1,
  `ev_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`ev_auto`, `ev_nombre`, `ev_slogan`, `ev_modalidad`, `ev_link`, `ev_banner`, `ev_direccion`, `ev_fecha_inicio`, `ev_hora_inicio`, `ev_fecha_final`, `ev_hora_final`, `ev_telefono`, `ev_email`, `ev_observaciones`, `ev_created`, `ev_updated`, `ev_publicado`, `ev_estado`, `ev_vigencia`) VALUES
(1, 'Festival Nacional de la cultura Por un Huila en sana convivencia', 'Por un Huila en sana convivencia', 'Virtual', 'https://www.youtube.com/embed/tjAExTF17QY', '31209200926060915.jpeg', 'El evento será transmitido por facebook, Instagram, youtube y el sitio web corporacioncovalonga.com', '2020-07-16', '10:00:00', '2020-07-19', '18:00:00', '3112271936', 'corporacionculturalcovalonga@gmail.com', 'Evento Apoyado por el Ministerio de Cultura, Programa Nacional de Concertación Cultural 2020.\r\nDanza - Música- Teatro', '2020-07-13 17:02:40', '2020-09-26 18:29:15', 1, 1, 1),
(2, 'Evento de prueba 1', 'Slogan del evento', 'Virtual', 'https://www.youtube.com/embed/tjAExTF17QY', '', 'https://www.youtube.com/embed/tjAExTF17QY', '2020-07-13', '04:33:00', '2020-07-14', '16:34:00', '3125253132', 'cov@gmail.com', 'Descripción', '2020-07-14 03:33:30', '2020-09-26 18:03:15', 1, 0, 1),
(3, 'Evento de prueba numero 2', 'Slogan  dos', 'Virtual', 'https://www.youtube.com/embed/tjAExTF17QY', '', 'https://www.youtube.com/embed/tjAExTF17QY', '2020-07-14', '06:36:00', '2020-07-14', '11:34:00', '32133121354', 'cov@gmail.com', 'Descripción', '2020-07-14 03:35:00', '2020-09-26 18:02:37', 1, 0, 1),
(4, 'Evento de prueba numero 3', 'Slogan  tres', 'Virtual', 'https://www.youtube.com/embed/tjAExTF17QY', '', 'https://www.youtube.com/embed/tjAExTF17QY', '2020-07-22', '06:36:00', '2020-07-14', '11:34:00', '32133121354', 'cov@gmail.com', 'Descripción', '2020-07-14 03:35:00', '2020-09-26 18:02:10', 1, 0, 1),
(5, 'Festival Nacional de la cultura Por un Huila en sana convivencia', 'Covalonga La Plata Huila - Por un Huila en sana convivencia', 'Virtual', 'https://www.youtube.com/embed/tjAExTF17QY', '67851200714100725.jpeg', 'El evento será transmitido por facebook, Instagram, youtube y el sitio web corporacioncovalonga.com', '2020-07-14', '19:01:00', '2020-07-24', '17:06:00', '3136426375', 'syrivera89@misena.edu.co', 'Evento Apoyado por el Ministerio de Cultura, Programa Nacional de Concertación Cultural 2020.\r\nDanza - Música- Teatro', '2020-07-13 17:02:40', '2020-09-26 18:01:46', 1, 0, 1),
(6, 'Maratón Deportes', 'Actividad Física ', 'Virtual', '', '', 'Carrera 5 No 2-23 ', '2020-09-29', '09:00:00', '2020-09-29', '00:00:00', '3112271936', 'corpoacionculturalcovalonga@gmail.com ', 'Aerobios ', '2020-08-29 10:16:57', '2020-09-26 18:01:23', 1, 0, 1),
(7, 'Evento de prueba', 'asaaaaaaaaaaaaa', 'Presencial', 'sad', '18264200912100946.webp', 'asd', '2020-09-08', '22:33:00', '2020-10-01', '22:33:00', 'asdasdasd', '', 'asdasd', '2020-09-12 22:30:30', '2020-09-26 18:00:54', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_aliados`
--

CREATE TABLE `evento_aliados` (
  `eva_auto` int(11) NOT NULL,
  `eva_id_evento` int(11) NOT NULL,
  `eva_nombre_aliado` varchar(120) NOT NULL,
  `eva_logo` varchar(120) NOT NULL,
  `eva_estado` tinyint(1) NOT NULL DEFAULT 1,
  `eva_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `eva_created` datetime NOT NULL,
  `eva_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evento_aliados`
--

INSERT INTO `evento_aliados` (`eva_auto`, `eva_id_evento`, `eva_nombre_aliado`, `eva_logo`, `eva_estado`, `eva_vigencia`, `eva_created`, `eva_updated`) VALUES
(4, 1, 'Belltic.com', '26893200714050716.png', 1, 0, '2020-07-13 22:06:16', '2020-07-14 05:11:21'),
(5, 1, 'n', '50084200714060726.png', 1, 0, '2020-07-13 23:24:26', '2020-07-14 05:11:18'),
(6, 1, 'l', '33267200714060715.png', 1, 0, '2020-07-13 23:25:15', '2020-07-14 05:10:58'),
(7, 1, 'l', '66708200714060729.png', 1, 0, '2020-07-13 23:25:29', '2020-07-14 05:10:24'),
(8, 1, 'Corporacion Cultural Covalonga', '50588200714070742.png', 1, 1, '2020-07-14 00:11:42', '2020-07-14 05:15:18'),
(9, 1, 'Ministerio de Cultura', '13281200714070741.png', 1, 1, '2020-07-14 00:16:41', '2020-07-14 05:16:41'),
(10, 7, 'asd', '64366200912100919.png', 1, 0, '2020-09-12 22:31:19', '2020-09-12 20:36:50'),
(11, 7, 'sena', '66332200912100939.jpeg', 1, 0, '2020-09-12 22:36:39', '2020-09-12 20:36:43'),
(12, 7, 'sena', '29304200912100902.', 1, 1, '2020-09-12 22:37:02', '2020-09-12 20:37:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_imagenes`
--

CREATE TABLE `evento_imagenes` (
  `eim_auto` int(11) NOT NULL,
  `eim_id_evento` int(10) NOT NULL,
  `eim_imagen` varchar(120) NOT NULL,
  `eim_created` datetime NOT NULL,
  `eim_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `eim_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_link_video`
--

CREATE TABLE `evento_link_video` (
  `evl_auto` int(11) NOT NULL,
  `evl_id_evento` int(10) NOT NULL,
  `evl_link` varchar(200) NOT NULL,
  `evl_created` datetime NOT NULL,
  `evl_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `evl_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evento_link_video`
--

INSERT INTO `evento_link_video` (`evl_auto`, `evl_id_evento`, `evl_link`, `evl_created`, `evl_updated`, `evl_vigencia`) VALUES
(1, 1, 'https://www.youtube.com/watch?v=uFWJvI5HpnQ', '2020-07-14 02:38:35', '2020-07-14 07:38:35', 1),
(2, 1, 'https://www.youtube.com/watch?v=uFWJvI5HpnQ', '2020-07-14 02:40:34', '2020-07-14 07:40:34', 1),
(3, 1, 'https://www.youtube.com/watch?v=uFWJvI5HpnQ', '2020-07-14 02:42:05', '2020-07-14 07:42:05', 1),
(4, 1, 'https://www.youtube.com/watch?v=uFWJvI5HpnQ', '2020-07-14 02:44:23', '2020-07-14 07:44:23', 1),
(5, 1, 'https://www.youtube.com/watch?v=uFWJvI5HpnQ', '2020-07-14 03:02:50', '2020-07-14 08:02:50', 1),
(6, 1, 'https://www.youtube.com/embed/tjAExTF17QY', '2020-07-14 03:11:01', '2020-07-14 08:11:01', 1),
(7, 5, 'https://www.youtube.com/embed/tjAExTF17QY', '2020-07-14 05:24:00', '2020-07-14 10:24:00', 1),
(8, 7, 'https://www.youtube.com/embed/tjAExTF17QY', '2020-09-12 22:31:29', '2020-09-12 20:31:29', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `ga_id` int(11) NOT NULL,
  `ga_titulo` varchar(90) NOT NULL,
  `ga_descripcion` varchar(200) NOT NULL,
  `ga_foto` varchar(90) NOT NULL,
  `ga_creado` datetime NOT NULL,
  `ga_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `ga_estado` tinyint(1) NOT NULL DEFAULT 1,
  `ga_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`ga_id`, `ga_titulo`, `ga_descripcion`, `ga_foto`, `ga_creado`, `ga_update`, `ga_estado`, `ga_vigencia`) VALUES
(14, 'La Plata Huila', '', '2009031109060906921.jpg', '2020-09-03 11:49:06', '2020-09-03 09:49:06', 1, 1),
(15, 'Post', '', '2009050709230923552.jpg', '2020-09-05 07:45:23', '2020-09-05 05:45:23', 0, 0),
(16, 'Covalonga La Plata', '', '2009050709030903728.jpg', '2020-09-05 07:46:03', '2020-09-05 05:46:03', 1, 1),
(17, 'Post ', '', '2009050709300930294.jpg', '2020-09-05 07:46:30', '2020-09-05 05:46:30', 1, 1),
(18, 'Instagram', '', '2009050709100910958.jpg', '2020-09-05 07:47:10', '2020-09-05 05:47:10', 1, 1),
(19, 'Noviembre 18 del 2019', '', '2009050709490949377.jpg', '2020-09-05 07:47:49', '2020-09-05 05:47:49', 1, 0),
(20, 'Noviembre 18 del 2019	', '', '2009050709150915760.jpg', '2020-09-05 07:48:15', '2020-09-05 05:48:15', 0, 0),
(21, 'Octubre 17 del 2019', '', '200905070946094654.jpg', '2020-09-05 07:48:46', '2020-09-05 05:48:46', 1, 1),
(22, 'Septiembre 27 del 2019', '', '2009050709300930153.jpg', '2020-09-05 07:49:30', '2020-09-05 05:49:30', 1, 1),
(23, 'Agosto 25 del 2019', '', '2009050709190919123.jpg', '2020-09-05 07:50:19', '2020-09-05 05:50:19', 1, 1),
(24, 'Agosto 25 del 2019	', '', '2009050709560956723.jpg', '2020-09-05 07:50:56', '2020-09-05 05:50:56', 1, 1),
(25, 'Junio 21 del 2019', '', '2009050709280928413.jpg', '2020-09-05 07:51:28', '2020-09-05 05:51:28', 1, 0),
(26, 'Noviembre 1 del 2018', '', '200905070954095461.jpg', '2020-09-05 07:51:54', '2020-09-05 05:51:54', 1, 1),
(27, 'Septiembre 24 del 2018', '', '2009050709540954182.jpg', '2020-09-05 07:54:54', '2020-09-05 05:54:54', 0, 0),
(28, 'Agosto 17 del 2015', '', '200905070958095868.jpg', '2020-09-05 07:55:58', '2020-09-05 05:55:58', 0, 0),
(29, 'Grupo de danzas Vivencias ', 'Danza', '2009110309320932114.jpeg', '2020-09-11 08:04:32', '2020-09-11 15:04:32', 1, 1),
(30, 'Vida y Arte Academia de Danzas', 'Danza', '2009110309010901864.JPG', '2020-09-11 08:06:01', '2020-09-11 15:06:01', 1, 1),
(31, 'Zancos Teatro ', 'Teatro', '2009110309450945594.jpg', '2020-09-11 08:11:45', '2020-09-11 15:11:45', 1, 1),
(32, 'Agrupación Musical Arpegio  ', 'Música ', '200911030958095864.jpg', '2020-09-11 08:12:58', '2020-09-11 15:12:58', 1, 1),
(33, 'Agrupación Escénica  La Quimera Azul', 'Teatro ', '2009110309370937272.jpg', '2020-09-11 08:14:37', '2020-09-11 15:14:37', 1, 1),
(34, 'Grupo de Danza Raices de Mi Tierra ', 'Danza', '2009110309320932620.jpeg', '2020-09-11 08:23:32', '2020-09-11 15:23:32', 1, 1),
(35, 'Grupo de Danza Raíces de Mi Tierra', 'Danza', '2009110309240924259.jpeg', '2020-09-11 08:26:24', '2020-09-11 15:26:24', 1, 1),
(36, 'Agrupación Musical Arpegio  ', 'Música ', '2009110309280928452.jpeg', '2020-09-11 08:54:28', '2020-09-11 15:54:28', 1, 1),
(37, 'Vigías del Patrimonio Grupo Covalonga ', 'Patrimonio ', '2009110309410941900.jpeg', '2020-09-11 08:58:41', '2020-09-11 15:58:41', 1, 1),
(38, 'Ballet Covalonga', 'Danza', '2009110409530953216.jpeg', '2020-09-11 09:01:53', '2020-09-11 16:01:53', 1, 1),
(39, 'Vida y Arte Academia de Danza', 'Danza', '2009110409580958880.jpg', '2020-09-11 09:09:58', '2020-09-11 16:09:58', 1, 1),
(40, 'Grupo de Danza Vivencias ', 'Danza', '2009110409020902988.jpg', '2020-09-11 09:11:02', '2020-09-11 16:11:02', 1, 1),
(41, 'Agrupación Escénica Zancos Teatro ', 'Teatro', '200911040901090114.jpg', '2020-09-11 09:13:01', '2020-09-11 16:13:01', 1, 1),
(42, 'Teatro ', 'Teatro', '2009110409350935387.jpg', '2020-09-11 09:13:35', '2020-09-11 16:13:35', 1, 1),
(43, 'Escuelas Popular de  Artística y Cultural Vivencias  ', 'Danza', '2009110409250925259.jpeg', '2020-09-11 09:17:25', '2020-09-11 16:17:25', 0, 0),
(44, 'Escuela Popular de Formación Artística y Cultural Vivencias - Teatro  ', 'Teatro', '2009110409010901478.jpeg', '2020-09-11 09:19:01', '2020-09-11 16:19:01', 1, 1),
(45, 'Escuela Popular de Formación Artística y Cultural Vivencias - Música  ', 'Música ', '2009110409080908150.jpeg', '2020-09-11 09:20:08', '2020-09-11 16:20:08', 1, 1),
(46, 'Escuela Popular de Formación de Formación Artística y Cultural Vivencias - Danza   ', 'Danza', '2009110409450945432.jpeg', '2020-09-11 09:22:45', '2020-09-11 16:22:45', 0, 0),
(47, 'Escuela popular de formación Artrítica y cultural  Vivencias Danza', 'Danza', '2009110409270927601.jpeg', '2020-09-11 09:24:27', '2020-09-11 16:24:27', 1, 1),
(48, 'Ballet Covalonga ', 'Danza', '2009110409400940507.jpeg', '2020-09-11 09:25:40', '2020-09-11 16:25:40', 1, 1),
(49, 'Vigías de Patrimonio Grupo Covalonga ', 'Patrimonio ', '2009110409070907130.JPG', '2020-09-11 09:29:10', '2020-09-11 16:29:10', 1, 1),
(50, '16 años VIDA Y ARTE ACADEMIA DE DANZA ', 'DANZA', '2009240309080908931.jpg', '2020-09-24 08:26:08', '2020-09-24 15:26:08', 1, 1),
(51, 'VIDA Y ARTE ACADEMIA DE DANZA ', 'DANZA', '20092403091509151000.jpg', '2020-09-24 08:28:21', '2020-09-24 15:28:21', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `gru_id` int(11) NOT NULL,
  `gru_nombre` varchar(50) NOT NULL,
  `gru_ano_creacion` date NOT NULL,
  `gru_direccion` varchar(100) NOT NULL,
  `gru_descripcion` varchar(100) NOT NULL,
  `gru_logo` varchar(100) NOT NULL,
  `gru_creado` date NOT NULL,
  `gru_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gru_estado` tinyint(1) NOT NULL DEFAULT 1,
  `gru_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`gru_id`, `gru_nombre`, `gru_ano_creacion`, `gru_direccion`, `gru_descripcion`, `gru_logo`, `gru_creado`, `gru_update`, `gru_estado`, `gru_vigencia`) VALUES
(1, 'GRUPO DE DANZA  VIVENCIAS', '1996-06-16', 'Corporación Cultural Covalonga ', 'Fundado el 16 de junio de 1996.\n\n\n', '200916050921092113.png', '2020-09-16', '2020-09-16 17:25:18', 1, 1),
(2, 'AGRUPACIÓN ESCÉNICA LA QUIMERA AZUL   ', '2005-02-16', 'Corporación Covalonga ', 'Fundada en el año 2005 ', '200916050948094839.png', '2020-09-16', '2020-09-16 17:28:48', 1, 1),
(3, 'AGRUPACIÓN MUSICAL ARPEGIO  ', '2005-02-02', 'Corporación Covalonga ', 'Fundado en el año 2005', '2009160509410941217.png', '2020-09-16', '2020-09-16 17:32:41', 1, 1),
(4, 'AGRUPACIÓN ESCÉNICA ZANCOS TEATRO ', '2005-02-02', 'Corporación Covalonga', 'Fundada en le año 2005', '2009160509180918560.png', '2020-09-16', '2020-09-16 17:38:18', 1, 1),
(5, 'VIDA Y ARTE ACADEMIA DE DANZA ', '2005-09-24', 'Carrera 3 E # 9A - 04', 'Fundado en año 2005', '2009160509350935835.png', '2020-09-16', '2020-09-16 17:40:35', 1, 1),
(6, 'VIGÍAS DEL PATRIMONIO COVALONGA', '2017-06-16', 'Corporación Covalonga', 'Acreditación en el año 2017 ', '2009160509100910106.png', '2020-09-16', '2020-09-16 17:42:10', 1, 1),
(7, 'RAÍCES DE MI TIERRA   ', '2016-06-03', 'Corporación Covalonga', 'Fundad en el año 2016', '2009160509350935514.png', '2020-09-16', '2020-09-16 17:45:35', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadata_seo`
--

CREATE TABLE `metadata_seo` (
  `mes_auto` int(11) NOT NULL,
  `mes_tittle` text NOT NULL,
  `mes_description` text NOT NULL,
  `mes_keywords` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `metadata_seo`
--

INSERT INTO `metadata_seo` (`mes_auto`, `mes_tittle`, `mes_description`, `mes_keywords`) VALUES
(1, 'Corporación Cultural Covalonga', 'Formación, Creación, Circulación y Patrimonio  ', 'Covalonga, Cultura, Festival, Danza, Música, Teatro, Ballet, Vivencias, Arpegio, La Quimera Azul, Zancos Teatro, Vida y '),
(2, 'Eventos', 'Festival Nacional de la Cultura por un Huila en Sana Convivencia', 'Covalonga, Eventos, Danza, Música, Teatro, Patrimonio '),
(3, 'Grupos artísticos', 'Grupo de danza VIVENCIAS, Agrupación Musical Arpegio,  Agrupación Escénica La Quimera Azul, Agrupación Escénica Zancos Teatro, Vida y Arte Academia de Danza, Grupo Vigías de Patrimonio Covalonga, Grupo de Danza Raíces de Mi Tierra ', 'Covalonga, Danza, teatro, Música, Ballet'),
(4, 'Escuela Popular de Formación Artística y Cultural Vivencias   ', 'Formación Artística y Cultural', 'Covalonga, Danza - Música - Teatro - Ballet '),
(5, 'Galería', 'Danza, Música, Teatro, Ballet, Patrimonio  ', 'Covalonga, Formación, Creación, Circulación, eventos artísticos, musicales, covalonga    '),
(6, 'Nosotros', 'Corporación Cultural Covalonga ', 'Formación, Creación, Circulación, Patrimonio    '),
(7, '-', '-', '--'),
(8, 'Contáctenos', 'Ponte en contacto con la Corporación Cultural Covadonga', 'Corporación Cultural Covadonga, Contactenos'),
(9, '-', '-', '--'),
(10, '-', '-', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nosotros_politicas_calidad`
--

CREATE TABLE `nosotros_politicas_calidad` (
  `npca_auto` int(11) NOT NULL,
  `npca_id_nosotros` int(10) NOT NULL,
  `npca_poilitica_descripcion` text NOT NULL,
  `npca_estado` tinyint(1) NOT NULL DEFAULT 1,
  `npca_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nosotros_valores`
--

CREATE TABLE `nosotros_valores` (
  `nosv_auto` int(11) NOT NULL,
  `nosv_id_nosotros` int(10) NOT NULL,
  `nosv_titulo_valor` varchar(150) NOT NULL,
  `nosv_desc_valor` text NOT NULL,
  `nosv_estado` tinyint(1) NOT NULL,
  `nosv_vigencia` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_contacenos`
--

CREATE TABLE `page_contacenos` (
  `pco_auto` int(11) NOT NULL,
  `pco_titulo_a` varchar(120) NOT NULL,
  `pco_mensaje_a` varchar(120) NOT NULL,
  `pco_titulo_b` varchar(120) NOT NULL,
  `pco_mensaje_b` varchar(120) NOT NULL,
  `pco_direccion` varchar(120) NOT NULL,
  `pco_telefono` varchar(70) NOT NULL,
  `pco_email` varchar(90) NOT NULL,
  `pco_created` datetime NOT NULL,
  `pco_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pco_estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `page_contacenos`
--

INSERT INTO `page_contacenos` (`pco_auto`, `pco_titulo_a`, `pco_mensaje_a`, `pco_titulo_b`, `pco_mensaje_b`, `pco_direccion`, `pco_telefono`, `pco_email`, `pco_created`, `pco_updated`, `pco_estado`) VALUES
(1, 'Ponerse en contacto', 'Puedes ponerte en contacto con nosotros.', '¿Tienes alguna duda o comentario?', 'Envíanos un mensaje aquí !', 'Carrera 5 # 2 - 23', '3224118198 - 3112271936', 'corporacionculturalcovalonga@gmail.com', '2020-09-26 10:15:53', '2020-09-26 17:15:53', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_index`
--

CREATE TABLE `page_index` (
  `pin_auto` int(11) NOT NULL,
  `pin_titulo` text NOT NULL,
  `pin_subtitulo` text NOT NULL,
  `pin_parrafo_uno` text NOT NULL,
  `pin_parrafo_dos` text NOT NULL,
  `pin_parrafo_tres` text NOT NULL,
  `pin_img1` varchar(50) NOT NULL,
  `pin_img2` varchar(50) NOT NULL,
  `pin_img3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `page_index`
--

INSERT INTO `page_index` (`pin_auto`, `pin_titulo`, `pin_subtitulo`, `pin_parrafo_uno`, `pin_parrafo_dos`, `pin_parrafo_tres`, `pin_img1`, `pin_img2`, `pin_img3`) VALUES
(1, 'CORPORACIÓN CULTURAL COVALONGA ', 'FORMACIÓN  - CREACIÓN - CIRCULACIÓN - PATRIMONIO    ', 'La cultura constructora de tejido social y desarrollo económico.', 'La Corporación Covalonga, es una organización cultural articuladora, a través de la gestión para la  formación, divulgación y  fomento del componente artístico y cultural.  ', 'Propende por  la promoción, conservación  y fortalecimiento del patrimonio  cultural  del municipio de la Plata Huila y la región. \n', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_nosotros`
--

CREATE TABLE `page_nosotros` (
  `pno_auto` int(11) NOT NULL,
  `pno_descripcion` text NOT NULL,
  `pno_datos_representante` text NOT NULL,
  `pno_mision` text NOT NULL,
  `pno_vision` text NOT NULL,
  `pno_politicas_descripcion` text NOT NULL,
  `pno_velores_descripcion` text NOT NULL,
  `pno_video` varchar(150) NOT NULL,
  `pno_img_portada` varchar(150) NOT NULL,
  `pno_create` datetime NOT NULL,
  `pno_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pno_estado` tinyint(1) NOT NULL DEFAULT 1,
  `pno_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `page_nosotros`
--

INSERT INTO `page_nosotros` (`pno_auto`, `pno_descripcion`, `pno_datos_representante`, `pno_mision`, `pno_vision`, `pno_politicas_descripcion`, `pno_velores_descripcion`, `pno_video`, `pno_img_portada`, `pno_create`, `pno_updated`, `pno_estado`, `pno_vigencia`) VALUES
(1, '', '', '', '', '', '', '', 'http://localhost/Corporacion-covalonga/server/file/imagen_nosotros/', '0000-00-00 00:00:00', '2020-12-04 21:17:32', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso_registro_usuarios`
--

CREATE TABLE `permiso_registro_usuarios` (
  `pru_auto` int(11) NOT NULL,
  `pru_permiso` tinyint(1) NOT NULL DEFAULT 0,
  `pru_created` datetime NOT NULL,
  `pru_upde` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permiso_registro_usuarios`
--

INSERT INTO `permiso_registro_usuarios` (`pru_auto`, `pru_permiso`, `pru_created`, `pru_upde`) VALUES
(1, 1, '2020-07-02 07:15:49', '2020-07-06 05:43:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `pro_id` int(11) NOT NULL,
  `pro_nombre` varchar(50) NOT NULL,
  `pro_ano_creacion` date NOT NULL,
  `pro_direccion` varchar(100) NOT NULL,
  `pro_descripcion` varchar(100) NOT NULL,
  `pro_logo` varchar(100) NOT NULL,
  `pro_creado` date NOT NULL,
  `pro_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pro_estado` tinyint(1) NOT NULL DEFAULT 1,
  `pro_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slides`
--

CREATE TABLE `slides` (
  `sl_auto` int(11) NOT NULL,
  `sl_nombre` varchar(40) NOT NULL,
  `sl_creado` datetime NOT NULL,
  `sl_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sl_estado` tinyint(1) NOT NULL DEFAULT 0,
  `sl_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `sl_orden` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `slides`
--

INSERT INTO `slides` (`sl_auto`, `sl_nombre`, `sl_creado`, `sl_update`, `sl_estado`, `sl_vigencia`, `sl_orden`) VALUES
(14, '2008290408590859339.jpg', '2020-08-29 04:17:59', '2020-09-26 15:48:56', 0, 0, 3),
(15, '200829040819081979.jpg', '2020-08-29 04:18:19', '2020-09-03 06:47:11', 1, 1, 2),
(16, '2008290408090809280.jpeg', '2020-08-29 04:27:09', '2020-08-29 03:10:04', 1, 0, 0),
(17, '2008291008120812799.png', '2020-08-29 10:07:12', '2020-09-03 06:42:00', 0, 1, 0),
(18, '2008291008410841962.webp', '2020-08-29 10:52:41', '2020-08-29 08:54:17', 1, 0, 0),
(19, '2008291008280828295.webp', '2020-08-29 10:54:28', '2020-09-03 06:42:08', 0, 1, 0),
(20, '2009030809490949107.jpg', '2020-09-03 08:46:49', '2020-09-26 16:44:50', 0, 0, 1),
(21, '2009030909420942278.jpg', '2020-09-03 09:57:42', '2020-09-03 07:57:42', 0, 1, 0),
(22, '2009200609460946673.jpg', '2020-09-19 23:22:52', '2020-09-20 06:22:52', 0, 1, 0),
(23, '2009220709340934693.jpg', '2020-09-22 12:23:37', '2020-09-26 15:42:28', 0, 0, 1),
(24, '2009220709480948816.jpg', '2020-09-22 12:27:55', '2020-09-26 18:17:15', 0, 0, 0),
(25, '2009220709560956461.jpeg', '2020-09-22 12:29:56', '2020-09-26 15:43:19', 0, 0, 0),
(26, '2009260309280928692.png', '2020-09-26 08:35:28', '2020-09-26 15:55:24', 0, 0, 0),
(27, '2009260309220922371.png', '2020-09-26 08:41:22', '2020-09-26 15:41:22', 0, 1, 0),
(28, '2009260309100910253.jpeg', '2020-09-26 08:44:10', '2020-09-26 17:45:05', 0, 0, 0),
(29, '2009260409480948989.png', '2020-09-26 09:04:48', '2020-09-26 16:12:30', 1, 0, 0),
(30, '2009260409460946271.jpeg', '2020-09-26 09:14:46', '2020-09-26 16:15:27', 0, 1, 0),
(31, '2009260509310931762.jpeg', '2020-09-26 10:45:31', '2020-09-26 17:46:18', 0, 0, 0),
(32, '2009260609330933286.png', '2020-09-26 11:17:33', '2020-09-26 18:17:45', 1, 1, 0),
(33, '2009260609350935527.jpg', '2020-09-26 11:25:35', '2020-09-26 18:27:14', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptores`
--

CREATE TABLE `suscriptores` (
  `susc_auto` int(11) NOT NULL,
  `susc_email` varchar(50) NOT NULL,
  `susc_created` datetime NOT NULL,
  `susc_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `susc_estado_admin` tinyint(1) NOT NULL DEFAULT 1,
  `susc_estado_user` tinyint(1) NOT NULL DEFAULT 1,
  `susc_vigencia_admin` tinyint(1) NOT NULL DEFAULT 1,
  `susc_vigencia_user` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `tf_auto` int(11) NOT NULL,
  `tf_logo` varchar(60) NOT NULL,
  `tf_descripcion` varchar(160) NOT NULL,
  `tf_api_instagram` varchar(120) NOT NULL,
  `tf_suscribe` varchar(120) NOT NULL,
  `tf_copyright` varchar(120) NOT NULL,
  `tf_link_copyright` varchar(60) NOT NULL,
  `tf_link_leyenda` varchar(60) NOT NULL,
  `tf_created` datetime NOT NULL,
  `tf_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tf_estado` tinyint(1) NOT NULL DEFAULT 1,
  `tf_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `tf_creador` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_footer`
--

INSERT INTO `tbl_footer` (`tf_auto`, `tf_logo`, `tf_descripcion`, `tf_api_instagram`, `tf_suscribe`, `tf_copyright`, `tf_link_copyright`, `tf_link_leyenda`, `tf_created`, `tf_updated`, `tf_estado`, `tf_vigencia`, `tf_creador`) VALUES
(1, '', 'La Corporacion Cultural Covalonga es una organizacion cultural articuladora a traves de la gestión para la formación artistica y cultural', '', 'Imolor amet consectetur adipiscing elit, sed do eiusmod tempor incididunt.', 'Copyright  2020 Todos los derechos reservados | Este sitio web fue desarrollado por', 'https://www.facebook.com/profile.php?id=100049832292464', 'El Grupo de Investigación NOVA', '0000-00-00 00:00:00', '2020-07-01 03:39:54', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_anexos`
--

CREATE TABLE `user_anexos` (
  `uan_auto` int(11) NOT NULL,
  `uan_id_usuario` int(11) NOT NULL,
  `uan_nombre` varchar(100) NOT NULL,
  `uan_documento` varchar(100) NOT NULL,
  `uan_creado` datetime NOT NULL,
  `uan_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `uan_estado` tinyint(1) NOT NULL DEFAULT 1,
  `uan_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_contactp`
--

CREATE TABLE `user_contactp` (
  `ucp_auto_id` int(11) NOT NULL,
  `ucp_id_usuario` int(25) NOT NULL,
  `ucp_phone` varchar(15) NOT NULL,
  `ucp_direccion` varchar(90) NOT NULL,
  `ucp_created` datetime NOT NULL,
  `ucp_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ucp_estado` tinyint(1) NOT NULL DEFAULT 1,
  `ucp_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_contactp`
--

INSERT INTO `user_contactp` (`ucp_auto_id`, `ucp_id_usuario`, `ucp_phone`, `ucp_direccion`, `ucp_created`, `ucp_updated`, `ucp_estado`, `ucp_vigencia`) VALUES
(34, 35, '-', 'Neiva calle 1 sur', '2020-07-07 15:35:04', '2020-09-29 13:06:53', 1, 1),
(37, 38, '31122719136', '', '2020-09-05 08:30:23', '2020-09-05 15:30:23', 1, 1),
(38, 39, '3112215821', '', '2020-09-05 08:33:38', '2020-09-05 15:33:38', 1, 1),
(39, 40, '3112215821', '', '2020-09-05 08:37:13', '2020-09-05 15:37:13', 1, 1),
(40, 41, '3174105261', '', '2020-09-05 08:41:26', '2020-09-05 15:41:26', 1, 1),
(41, 42, '3204644437', '', '2020-09-05 09:35:22', '2020-09-05 16:35:22', 1, 1),
(42, 43, '3204364408', '', '2020-09-06 12:31:19', '2020-09-06 19:31:19', 1, 1),
(43, 44, '3214618959', '', '2020-09-08 08:32:34', '2020-09-08 15:32:34', 1, 1),
(44, 45, '3116422443', '', '2020-09-08 08:33:32', '2020-09-08 15:33:32', 1, 1),
(45, 46, '3114503583', '', '2020-09-08 08:35:21', '2020-09-08 15:35:21', 1, 1),
(46, 47, '3227271446', '', '2020-09-08 08:42:25', '2020-09-08 15:42:25', 1, 1),
(47, 48, '3223587525', '', '2020-09-08 08:42:43', '2020-09-08 15:42:43', 1, 1),
(48, 49, '3123231787', '', '2020-09-08 08:45:28', '2020-09-08 15:45:28', 1, 1),
(49, 50, '3208802299', '', '2020-09-08 08:48:56', '2020-09-08 15:48:56', 1, 1),
(50, 51, '3202723969', '', '2020-09-08 08:49:30', '2020-09-08 15:49:30', 1, 1),
(51, 52, '3134356316', '', '2020-09-08 08:49:37', '2020-09-08 15:49:37', 1, 1),
(52, 53, '3054169042', '', '2020-09-08 08:49:55', '2020-09-08 15:49:55', 1, 1),
(53, 54, '3118656644', '', '2020-09-08 08:51:59', '2020-09-08 15:51:59', 1, 1),
(54, 55, '3142767181', '', '2020-09-08 08:54:49', '2020-09-08 15:54:49', 1, 1),
(55, 56, '3107504259', '', '2020-09-08 09:00:21', '2020-09-08 16:00:21', 1, 1),
(56, 57, '3214408745', '', '2020-09-08 09:00:46', '2020-09-08 16:00:46', 1, 1),
(57, 58, '3202163207', '', '2020-09-08 09:33:19', '2020-09-08 16:33:19', 1, 1),
(58, 59, '3208925496', '', '2020-09-08 09:40:02', '2020-09-08 16:40:02', 1, 1),
(59, 60, '3103208495', '', '2020-09-08 09:47:03', '2020-09-08 16:47:03', 1, 1),
(60, 61, '3112019290', '', '2020-09-08 10:41:17', '2020-09-08 17:41:17', 1, 1),
(61, 62, '3108135625', '', '2020-09-08 11:26:53', '2020-09-08 18:26:53', 1, 1),
(62, 63, '3102067488', '', '2020-09-08 12:09:51', '2020-09-08 19:09:51', 1, 1),
(63, 64, '3102392654', '', '2020-09-08 12:11:17', '2020-09-08 19:11:17', 1, 1),
(64, 65, '3144219181', '', '2020-09-08 12:59:55', '2020-09-08 19:59:55', 1, 1),
(65, 66, '3223013785', '', '2020-09-08 14:41:03', '2020-09-08 21:41:03', 1, 1),
(66, 67, '3152047740', '', '2020-09-08 14:55:54', '2020-09-08 21:55:54', 1, 1),
(67, 68, '3142625200', '', '2020-09-08 15:25:15', '2020-09-08 22:25:15', 1, 1),
(68, 69, '3188933521', '', '2020-09-08 16:24:53', '2020-09-08 23:24:53', 1, 1),
(69, 70, '3227641262', '', '2020-09-08 16:48:24', '2020-09-08 23:48:24', 1, 1),
(70, 72, '3156827355', '', '2020-09-08 17:20:43', '2020-09-09 00:20:43', 1, 1),
(71, 73, '3132732768', '', '2020-09-08 17:57:23', '2020-09-09 00:57:23', 1, 1),
(72, 74, '3133600626', '', '2020-09-08 19:01:22', '2020-09-09 02:01:22', 1, 1),
(73, 75, '', '', '2020-09-08 19:47:56', '2020-09-09 02:47:56', 1, 1),
(74, 76, '3142068714', '', '2020-09-09 08:57:17', '2020-09-09 15:57:17', 1, 1),
(75, 77, '3223433350', '', '2020-09-10 19:08:45', '2020-09-11 02:08:45', 1, 1),
(76, 78, '3187399398', '', '2020-09-11 07:54:45', '2020-09-11 14:54:45', 1, 1),
(77, 79, '3203069736', '', '2020-09-11 08:01:25', '2020-09-11 15:01:25', 1, 1),
(78, 80, '3114465846', '', '2020-09-11 08:06:59', '2020-09-11 15:06:59', 1, 1),
(79, 81, '3144876802', '', '2020-09-14 10:48:17', '2020-09-14 17:48:17', 1, 1),
(80, 82, '3142767181', '', '2020-09-14 10:53:30', '2020-09-14 17:53:30', 1, 1),
(81, 83, '3143817587', '', '2020-09-16 17:45:42', '2020-09-17 00:45:42', 1, 1),
(82, 84, '3125674344', '', '2020-09-17 05:30:19', '2020-09-17 12:30:19', 1, 1),
(83, 85, '3155751025', '', '2020-09-17 09:30:15', '2020-09-17 16:30:15', 1, 1),
(84, 86, '3133579434', '', '2020-09-18 13:16:26', '2020-09-18 20:16:26', 1, 1),
(85, 88, '3214494438', '', '2020-09-18 13:16:39', '2020-09-18 20:16:39', 1, 1),
(86, 89, '3132100105', '', '2020-09-18 13:20:00', '2020-09-18 20:20:00', 1, 1),
(87, 90, '327688774', '', '2020-09-18 14:08:54', '2020-09-18 21:08:54', 1, 1),
(88, 91, '3135963257', '', '2020-09-18 14:42:31', '2020-09-18 21:42:31', 1, 1),
(89, 92, '3204207571', '', '2020-09-18 14:53:06', '2020-09-18 21:53:06', 1, 1),
(90, 93, '3222869181', '', '2020-09-18 14:53:06', '2020-09-18 21:53:06', 1, 1),
(91, 94, '3124909847', '', '2020-09-18 14:59:36', '2020-09-18 21:59:36', 1, 1),
(92, 95, '3106778886', '', '2020-09-18 15:00:41', '2020-09-18 22:00:41', 1, 1),
(93, 96, '3004596718', '', '2020-09-21 05:48:34', '2020-09-21 12:48:34', 1, 1),
(94, 97, '3222826226', '', '2020-09-23 08:37:03', '2020-09-23 15:37:03', 1, 1),
(95, 98, '3016896187', '', '2020-09-24 14:27:16', '2020-09-24 21:27:16', 1, 1),
(96, 99, '3112526992', '', '2020-09-25 13:11:50', '2020-09-25 20:11:50', 1, 1),
(97, 100, '3118837098', '', '2020-09-25 15:13:59', '2020-09-25 22:13:59', 1, 1),
(98, 101, '3102746542', '', '2020-09-28 07:57:18', '2020-09-28 14:57:18', 1, 1),
(99, 102, '3112271936', '', '2020-09-28 14:07:54', '2020-09-28 21:07:54', 1, 1),
(100, 103, '3222826226', '', '2020-09-28 17:04:12', '2020-09-29 00:04:12', 1, 1),
(101, 104, '3133295255', '', '2020-09-28 17:06:51', '2020-09-29 00:06:51', 1, 1),
(102, 105, '3233354166', '', '2020-09-28 17:13:25', '2020-09-29 00:13:25', 1, 1),
(103, 106, '3137029198', '', '2020-09-28 17:17:35', '2020-09-29 00:17:35', 1, 1),
(104, 107, '3132801541', '', '2020-09-28 17:24:22', '2020-09-29 00:24:22', 1, 1),
(105, 108, '3122708851', '', '2020-09-28 18:53:56', '2020-09-29 01:53:56', 1, 1),
(106, 109, '3222634662', '', '2020-09-28 19:28:14', '2020-09-29 02:28:14', 1, 1),
(107, 110, '3114969692', '', '2020-09-29 05:33:04', '2020-09-29 12:33:04', 1, 1),
(108, 111, '3118176880', '', '2020-09-29 05:52:37', '2020-09-29 12:52:37', 1, 1),
(109, 112, '3196188341', '', '2020-09-29 06:38:10', '2020-09-29 13:38:10', 1, 1),
(110, 113, '3142840297', '', '2020-09-29 08:30:38', '2020-09-29 15:30:38', 1, 1),
(111, 114, '3112271936', '', '2020-09-29 09:37:17', '2020-09-29 16:37:17', 1, 1),
(112, 115, '3214698419', '', '2020-09-29 10:10:59', '2020-09-29 17:10:59', 1, 1),
(113, 116, '3113200639', '', '2020-09-29 10:30:52', '2020-09-29 17:30:52', 1, 1),
(114, 117, '3115728652', '', '2020-09-29 11:00:51', '2020-09-29 18:00:51', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_count`
--

CREATE TABLE `user_count` (
  `uc_auto` int(11) NOT NULL,
  `uc_email` varchar(50) NOT NULL,
  `uc_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `uc_estado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_count`
--

INSERT INTO `user_count` (`uc_auto`, `uc_email`, `uc_updated`, `uc_estado`) VALUES
(35, 'syrivera89@misena.edu.co', '2020-09-29 12:58:52', 1),
(38, 'jmyfer1027@gmail.com', '2020-09-08 14:59:05', 1),
(39, 'luchotorres13777@gmail.com', '2020-09-05 15:33:38', 0),
(40, 'wvalquez@hotmail.com', '2020-09-05 15:37:13', 0),
(41, 'javierguevara1114@gmail.com', '2020-09-05 15:41:26', 0),
(42, 'anderson.toledop@gmail.com', '2020-09-05 16:35:22', 0),
(43, 'oscareduardodiaz1804@gmail.com', '2020-09-06 19:31:19', 0),
(44, 'piedad-yalecnyanayahotmail.com', '2020-09-08 15:32:34', 0),
(45, 'ycarolinaparamo@hotmail.com', '2020-09-08 15:33:32', 0),
(46, 'samuelalejandrobonilla2002@gmail.com', '2020-09-08 15:35:21', 0),
(47, 'edwincuellart16@gmail.com', '2020-09-08 15:42:25', 0),
(48, '', '2020-09-08 15:42:43', 0),
(49, 'ochosebas24@gmail.com', '2020-09-08 15:45:28', 0),
(50, 'Mariajovelasco06@gmail.com', '2020-09-08 15:48:56', 0),
(51, 'anitacaqui23@gmail.com', '2020-09-08 15:49:30', 0),
(52, 'juansebastianavilesperez@gmail.com', '2020-09-08 15:49:37', 0),
(53, 'mapavalo2005@gmail.com', '2020-09-08 15:49:55', 0),
(54, 'santiagosanchezduran06@gmail.com', '2020-09-08 15:51:59', 0),
(55, 'mymaryangel@gmail.com', '2020-09-08 15:54:49', 0),
(56, 'fabianhio322@gmail.com', '2020-09-08 16:00:21', 0),
(57, 'juanjoseliscanocubides@gmail.com', '2020-09-08 16:00:46', 0),
(58, 'maidysanchez@outlook.com', '2020-09-08 16:33:19', 0),
(59, 'jcpena035@gmail.com', '2020-09-08 16:40:02', 0),
(60, 'marthica.1624@gmail.com', '2020-09-08 16:47:03', 0),
(61, 'alejandro.ospitiacespedes@gmail.com', '2020-09-08 17:41:17', 0),
(62, 'jjibermeo@gmail.com', '2020-09-08 18:26:53', 0),
(63, 'alexmaldonadocruz@hotmail.com', '2020-09-08 19:09:51', 0),
(64, 'princesavalientevale11@gmail.com', '2020-09-08 19:11:17', 0),
(65, 'leydy.suarez8803@gmail.com', '2020-09-08 19:59:55', 0),
(66, 'diegoramos1989@hotmail.com', '2020-09-08 21:41:03', 0),
(67, 'wvalquez@gmail.com', '2020-09-14 14:50:04', 1),
(68, 'nc76695@gmail.com', '2020-09-08 22:25:15', 0),
(69, 'julianfelipeaguilar06@gmail.com', '2020-09-08 23:24:53', 0),
(70, 'juanchosoyyo2310@gmail.com', '2020-09-08 23:48:24', 0),
(72, 'angiekatherineoidor@gmail.com', '2020-09-09 00:20:43', 0),
(73, 'dianaramirez2819@gmail.com', '2020-09-09 00:57:23', 0),
(74, 'dannysofianiky@gmail.com', '2020-09-09 02:01:22', 0),
(75, 'lliscano@unicauca.edu.co', '2020-09-09 02:47:56', 0),
(76, 'natyksug@gmail.com', '2020-09-09 15:57:17', 0),
(77, 'bedoyamichell27@gmail.com', '2020-09-11 02:08:45', 0),
(78, 'barreiroosoriomelodypaz@gmail.com', '2020-09-11 14:54:44', 0),
(79, 'denissfiber@gmail.com', '2020-09-11 15:01:25', 0),
(80, 'MGianpierre2012@gmail.com', '2020-09-11 15:06:59', 0),
(81, 'natypacheco2708@gmail.com', '2020-09-14 17:48:17', 0),
(82, 'maryangelvidarte@gmail.com', '2020-09-14 17:53:30', 0),
(83, 'juanjorodriguezacosta@gmail.com', '2020-09-17 00:45:41', 0),
(84, 'davidcerqueraceballos20@gmail.com', '2020-09-17 12:30:19', 0),
(85, 'axelcaquimbo2.0@gmail.com', '2020-09-17 16:30:15', 0),
(86, 'sarhaynovoa897@gmail.com', '2020-09-18 20:16:26', 0),
(88, 'lunacatalinamajiangel17@gmail.com', '2020-09-18 20:16:39', 0),
(89, 'sami.com', '2020-09-18 20:20:00', 0),
(90, 'cameroleonesnaty@gmail.com', '2020-09-18 21:08:54', 0),
(91, 'sandy83015@gmail.com', '2020-09-18 21:42:31', 0),
(92, 'daviid5153v@gmail.com', '2020-09-18 21:53:06', 0),
(93, 'lizethdayanaa372@gmail.com', '2020-09-18 21:53:06', 0),
(94, 'juanmanuel980502@gmail.com', '2020-09-18 21:59:36', 0),
(95, 'lauracharry1112@gmail.com', '2020-09-18 22:00:41', 0),
(96, 'yensygu@hotmail.com', '2020-09-21 12:48:34', 0),
(97, 'ysanabria92@hotmail.com', '2020-09-23 15:37:03', 0),
(98, 'marticat-c@hotmail.com', '2020-09-24 21:27:16', 0),
(99, 'valerinsofiabautistagmail.com', '2020-09-25 20:11:50', 0),
(100, 'jose.losadamonje@gmail.com', '2020-09-25 22:13:59', 0),
(101, 'adrianaramirez2890@gmail.com', '2020-09-28 14:57:18', 0),
(102, 'corporacionculturalcovalonga@gmail.com', '2020-09-28 21:07:54', 0),
(103, 'yeraldinnesanabria92@gmail.com', '2020-09-29 00:04:12', 0),
(104, 'ximeni-s0113@hotmail.com', '2020-09-29 00:06:51', 0),
(105, 'anyi1528@hotmail.com', '2020-09-29 00:13:25', 0),
(106, 'dimari551@hotmail.com', '2020-09-29 00:17:35', 0),
(107, 'victoriaperdomoyasno@gmail.com', '2020-09-29 00:24:22', 0),
(108, 'adriana.jimena@hotmail.com', '2020-09-29 01:53:56', 0),
(109, 'p998203@gmail.com', '2020-09-29 02:28:14', 0),
(110, 'jellyn14022014@gmail.com', '2020-09-29 12:33:04', 0),
(111, 'georgevalderrama123@hotmail.com', '2020-09-29 12:52:37', 0),
(112, 'decastroacosta79@gmail.com', '2020-09-29 13:38:10', 0),
(113, 'dania.gaitan.c@hotmail.com', '2020-09-29 15:30:38', 0),
(114, 'yimiunad2017@gmail.com', '2020-09-29 16:37:17', 0),
(115, 'racuscue@misena.edu.co', '2020-09-29 17:10:59', 0),
(116, 'mayote.2405@gmail.com', '2020-09-29 17:30:52', 0),
(117, 'vanesaveti@gmail.com', '2020-09-29 18:00:51', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_created_log`
--

CREATE TABLE `user_created_log` (
  `ucl_auto` int(11) NOT NULL,
  `ucl_id_user` int(25) NOT NULL,
  `ucl_created` tinyint(4) NOT NULL,
  `ucl_updated` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_created_log`
--

INSERT INTO `user_created_log` (`ucl_auto`, `ucl_id_user`, `ucl_created`, `ucl_updated`) VALUES
(33, 35, 127, 0),
(36, 38, 127, 0),
(37, 39, 127, 0),
(38, 40, 127, 0),
(39, 41, 127, 0),
(40, 42, 127, 0),
(41, 43, 127, 0),
(42, 44, 127, 0),
(43, 45, 127, 0),
(44, 46, 127, 0),
(45, 47, 127, 0),
(46, 48, 127, 0),
(47, 49, 127, 0),
(48, 50, 127, 0),
(49, 51, 127, 0),
(50, 52, 127, 0),
(51, 53, 127, 0),
(52, 54, 127, 0),
(53, 55, 127, 0),
(54, 56, 127, 0),
(55, 57, 127, 0),
(56, 58, 127, 0),
(57, 59, 127, 0),
(58, 60, 127, 0),
(59, 61, 127, 0),
(60, 62, 127, 0),
(61, 63, 127, 0),
(62, 64, 127, 0),
(63, 65, 127, 0),
(64, 66, 127, 0),
(65, 67, 127, 0),
(66, 68, 127, 0),
(67, 69, 127, 0),
(68, 70, 127, 0),
(69, 72, 127, 0),
(70, 73, 127, 0),
(71, 74, 127, 0),
(72, 75, 127, 0),
(73, 76, 127, 0),
(74, 77, 127, 0),
(75, 78, 127, 0),
(76, 79, 127, 0),
(77, 80, 127, 0),
(78, 81, 127, 0),
(79, 82, 127, 0),
(80, 83, 127, 0),
(81, 84, 127, 0),
(82, 85, 127, 0),
(83, 86, 127, 0),
(84, 88, 127, 0),
(85, 89, 127, 0),
(86, 90, 127, 0),
(87, 91, 127, 0),
(88, 92, 127, 0),
(89, 93, 127, 0),
(90, 94, 127, 0),
(91, 95, 127, 0),
(92, 96, 127, 0),
(93, 97, 127, 0),
(94, 98, 127, 0),
(95, 99, 127, 0),
(96, 100, 127, 0),
(97, 101, 127, 0),
(98, 102, 127, 0),
(99, 103, 127, 0),
(100, 104, 127, 0),
(101, 105, 127, 0),
(102, 106, 127, 0),
(103, 107, 127, 0),
(104, 108, 127, 0),
(105, 109, 127, 0),
(106, 110, 127, 0),
(107, 111, 127, 0),
(108, 112, 127, 0),
(109, 113, 127, 0),
(110, 114, 127, 0),
(111, 115, 127, 0),
(112, 116, 127, 0),
(113, 117, 127, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_escuelas`
--

CREATE TABLE `user_escuelas` (
  `ues_auto` int(11) NOT NULL,
  `ues_id_usuario` int(11) NOT NULL,
  `ues_id_escuela` int(11) NOT NULL,
  `ues_nombre` varchar(100) NOT NULL,
  `ues_documento` varchar(100) NOT NULL,
  `ues_creado` datetime NOT NULL,
  `ues_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ues_estado` tinyint(1) NOT NULL DEFAULT 1,
  `ues_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_escuelas`
--

INSERT INTO `user_escuelas` (`ues_auto`, `ues_id_usuario`, `ues_id_escuela`, `ues_nombre`, `ues_documento`, `ues_creado`, `ues_update`, `ues_estado`, `ues_vigencia`) VALUES
(1, 41, 1, '', '', '2020-09-26 09:20:30', '2020-09-29 16:54:10', 1, 0),
(2, 55, 5, '', '', '2020-09-29 09:54:19', '2020-09-29 16:54:19', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_grupos`
--

CREATE TABLE `user_grupos` (
  `ugru_auto` int(11) NOT NULL,
  `ugru_id_usuario` int(11) NOT NULL,
  `ugru_id_grupo` int(10) NOT NULL,
  `ugru_nombre` varchar(100) NOT NULL,
  `ugru_documento` varchar(100) NOT NULL,
  `ugru_creado` datetime NOT NULL,
  `ugru_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ugru_estado` tinyint(1) NOT NULL DEFAULT 1,
  `ugru_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_grupos`
--

INSERT INTO `user_grupos` (`ugru_auto`, `ugru_id_usuario`, `ugru_id_grupo`, `ugru_nombre`, `ugru_documento`, `ugru_creado`, `ugru_update`, `ugru_estado`, `ugru_vigencia`) VALUES
(1, 41, 1, '', '', '2020-09-26 09:24:36', '2020-09-29 16:53:56', 1, 0),
(2, 55, 5, '', '', '2020-09-29 09:53:46', '2020-09-29 16:53:46', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_identification_c`
--

CREATE TABLE `user_identification_c` (
  `uic_id_user` int(11) NOT NULL,
  `uic_type` varchar(25) NOT NULL,
  `uic_doc` varchar(15) NOT NULL,
  `uic_created` datetime NOT NULL,
  `uic_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_identification_c`
--

INSERT INTO `user_identification_c` (`uic_id_user`, `uic_type`, `uic_doc`, `uic_created`, `uic_updated`) VALUES
(35, 'CC', '1084577898', '2020-07-07 15:35:04', '2020-09-14 22:08:12'),
(38, 'CC', '12277900', '2020-09-05 08:30:23', '2020-09-05 15:30:23'),
(39, 'CC', '1004251182', '2020-09-05 08:33:38', '2020-09-05 15:33:38'),
(40, 'CC', '1004351182', '2020-09-05 08:37:13', '2020-09-05 15:37:13'),
(41, 'CC', '1081403749', '2020-09-05 08:41:26', '2020-09-05 15:41:26'),
(42, 'CC', '1081415766', '2020-09-05 09:35:22', '2020-09-05 16:35:22'),
(43, 'CC', '1081396304', '2020-09-06 12:31:19', '2020-09-06 19:31:19'),
(44, 'CC', '', '2020-09-08 08:32:34', '2020-09-08 15:32:34'),
(45, 'CC', '1145827045', '2020-09-08 08:33:32', '2020-09-08 15:33:32'),
(46, 'CC', '1145827539', '2020-09-08 08:35:21', '2020-09-08 15:35:21'),
(47, 'CC', '1004247117', '2020-09-08 08:42:25', '2020-09-14 19:07:08'),
(48, 'CC', '1145826486', '2020-09-08 08:42:43', '2020-09-08 15:42:43'),
(49, 'CC', '1004248503', '2020-09-08 08:45:28', '2020-09-08 15:45:28'),
(50, 'CC', '1081395679', '2020-09-08 08:48:56', '2020-09-08 15:48:56'),
(51, 'CC', '1145826040', '2020-09-08 08:49:30', '2020-09-08 15:49:30'),
(52, 'CC', '1004251474', '2020-09-08 08:49:37', '2020-09-08 15:49:37'),
(53, 'CC', '1081396035', '2020-09-08 08:49:55', '2020-09-08 15:49:55'),
(54, 'CC', '1011210900', '2020-09-08 08:51:59', '2020-09-08 15:51:59'),
(55, 'CC', '55130424', '2020-09-08 08:54:49', '2020-09-08 15:54:49'),
(56, 'CC', '1081414558', '2020-09-08 09:00:21', '2020-09-08 16:00:21'),
(57, 'CC', '15', '2020-09-08 09:00:46', '2020-09-08 16:00:46'),
(58, 'CC', '1081618100', '2020-09-08 09:33:19', '2020-09-08 16:33:19'),
(59, 'CC', '1081413771', '2020-09-08 09:40:02', '2020-09-08 16:40:02'),
(60, 'CC', '1081406214', '2020-09-08 09:47:03', '2020-09-08 16:47:03'),
(61, 'CC', '1145826851', '2020-09-08 10:41:17', '2020-09-08 17:41:17'),
(62, 'CC', '1145826283', '2020-09-08 11:26:53', '2020-09-08 18:26:53'),
(63, 'CC', '1145827134', '2020-09-08 12:09:51', '2020-09-08 19:09:51'),
(64, 'CC', '1081413601', '2020-09-08 12:11:17', '2020-09-08 19:11:17'),
(65, 'CC', '1145827663', '2020-09-08 12:59:55', '2020-09-08 19:59:55'),
(66, 'CC', '1145827189', '2020-09-08 14:41:03', '2020-09-08 21:41:03'),
(67, 'CC', '12276564', '2020-09-08 14:55:54', '2020-09-08 21:55:54'),
(68, 'CC', '1084330600', '2020-09-08 15:25:15', '2020-09-08 22:25:15'),
(69, 'CC', '1145826602', '2020-09-08 16:24:53', '2020-09-08 23:24:53'),
(70, 'CC', '1081416199', '2020-09-08 16:48:24', '2020-09-08 23:48:24'),
(72, 'CC', '1081392603', '2020-09-08 17:20:43', '2020-09-09 00:20:43'),
(73, 'CC', '1081411988', '2020-09-08 17:57:23', '2020-09-09 00:57:23'),
(74, 'CC', '1145828304', '2020-09-08 19:01:22', '2020-09-09 02:01:22'),
(75, 'CC', '1061758142', '2020-09-08 19:47:56', '2020-09-09 02:47:56'),
(76, 'CC', '1145827675', '2020-09-09 08:57:17', '2020-09-09 15:57:17'),
(77, 'CC', '1145827176', '2020-09-10 19:08:45', '2020-09-11 02:08:45'),
(78, 'CC', '1145727719', '2020-09-11 07:54:45', '2020-09-11 14:54:45'),
(79, 'CC', '1075801685', '2020-09-11 08:01:25', '2020-09-11 15:01:25'),
(80, 'CC', '1145827137', '2020-09-11 08:06:59', '2020-09-11 15:06:59'),
(81, 'CC', '1112040946', '2020-09-14 10:48:17', '2020-09-14 17:48:17'),
(82, 'CC', '1081406961', '2020-09-14 10:53:30', '2020-09-14 17:53:30'),
(83, 'CC', '1107982682', '2020-09-16 17:45:42', '2020-09-17 00:45:42'),
(84, 'CC', '1145826889', '2020-09-17 05:30:19', '2020-09-17 12:30:19'),
(85, 'CC', '1145826097', '2020-09-17 09:30:15', '2020-09-17 16:30:15'),
(86, 'CC', '1081406585', '2020-09-18 13:16:26', '2020-09-18 20:16:26'),
(88, 'CC', '1081401211', '2020-09-18 13:16:39', '2020-09-18 20:16:39'),
(89, 'CC', '1145825113', '2020-09-18 13:20:00', '2020-09-18 20:20:00'),
(90, 'CC', '1201216808', '2020-09-18 14:08:54', '2020-09-18 21:08:54'),
(91, 'CC', '1081415333', '2020-09-18 14:42:31', '2020-09-18 21:42:31'),
(92, 'CC', '1081402172', '2020-09-18 14:53:06', '2020-09-18 21:53:06'),
(93, 'CC', '1081401177', '2020-09-18 14:53:06', '2020-09-18 21:53:06'),
(94, 'CC', '1081404689', '2020-09-18 14:59:36', '2020-09-18 21:59:36'),
(95, 'CC', '1114001370', '2020-09-18 15:00:41', '2020-09-18 22:00:41'),
(96, 'CC', '1141523424', '2020-09-21 05:48:34', '2020-09-21 12:48:34'),
(97, 'CC', '1126004066', '2020-09-23 08:37:03', '2020-09-23 15:37:03'),
(98, 'CC', '1029658702', '2020-09-24 14:27:16', '2020-09-24 21:27:16'),
(99, 'CC', '1081407677', '2020-09-25 13:11:50', '2020-09-25 20:11:50'),
(100, 'CC', '1081398001', '2020-09-25 15:13:59', '2020-09-25 22:13:59'),
(101, 'CC', '1145827177', '2020-09-28 07:57:18', '2020-09-28 14:57:18'),
(102, 'CC', '1811387666', '2020-09-28 14:07:54', '2020-09-28 21:07:54'),
(103, 'CC', '1126004157', '2020-09-28 17:04:12', '2020-09-29 00:04:12'),
(104, 'CC', '1081414366', '2020-09-28 17:06:51', '2020-09-29 00:06:51'),
(105, 'CC', '1145827582', '2020-09-28 17:13:25', '2020-09-29 00:13:25'),
(106, 'CC', '1081417255', '2020-09-28 17:17:35', '2020-09-29 00:17:35'),
(107, 'CC', '1076913502', '2020-09-28 17:24:22', '2020-09-29 00:24:22'),
(108, 'CC', '1145828071', '2020-09-28 18:53:56', '2020-09-29 01:53:56'),
(109, 'CC', '1077869055', '2020-09-28 19:28:14', '2020-09-29 02:28:14'),
(110, 'CC', '1081416961', '2020-09-29 05:33:04', '2020-09-29 12:33:04'),
(111, 'CC', '12279236', '2020-09-29 05:52:37', '2020-09-29 12:52:37'),
(112, 'CC', '1061815459', '2020-09-29 06:38:10', '2020-09-29 13:38:10'),
(113, 'CC', '1145827508', '2020-09-29 08:30:38', '2020-09-29 15:30:38'),
(114, 'CC', '1145831287', '2020-09-29 09:37:17', '2020-09-29 16:37:17'),
(115, 'CC', '1081416819', '2020-09-29 10:10:59', '2020-09-29 17:10:59'),
(116, 'CC', '1081395719', '2020-09-29 10:30:52', '2020-09-29 17:30:52'),
(117, 'CC', '1004248338', '2020-09-29 11:00:51', '2020-09-29 18:00:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_personal`
--

CREATE TABLE `user_personal` (
  `upe_id_user` int(11) NOT NULL,
  `upe_nombres` varchar(25) NOT NULL,
  `upe_apellidos` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_personal`
--

INSERT INTO `user_personal` (`upe_id_user`, `upe_nombres`, `upe_apellidos`) VALUES
(35, 'Sergio', 'Rivera'),
(38, 'Yimi Fernando ', 'Losada Paya'),
(39, 'Luis Mario ', 'Torres Rojas '),
(40, 'Luis Mario ', 'Torres Rojas '),
(41, 'Alvaro javier', 'Guevara paya '),
(42, 'Anderson  ', 'Toledo Pinto '),
(43, 'Oscar ', 'Diaz'),
(44, 'DAVID SANTIAGO', 'HERNANDEZ ANAYA'),
(45, 'Santiago', 'Gil Páramo'),
(46, 'SAMUEL ALEJANDRO', 'BONILLA LISCANO'),
(47, '', ''),
(48, 'Sara Valentina', 'Rios Gutierrez'),
(49, 'Sebastián Ricardo ', 'Ochoa Pete'),
(50, '', ''),
(51, 'Ana Maria ', 'Carrera Quintero '),
(52, 'Juan sebastian', 'Aviles perez'),
(53, 'María Paula', 'Vásquez Losada'),
(54, 'Santiago', 'Durán real'),
(55, 'Noris ', 'Vidarte Cumbe'),
(56, 'Heiner Fabian', 'Hio Pancho'),
(57, 'Juan Jose', 'Liscano Cubides'),
(58, 'Valery Michell ', 'Losada Sánchez '),
(59, 'Jady charline ', 'Peña rocero '),
(60, 'María del Pilar ', 'Joyas Ordoñez'),
(61, 'Samuel Alejandro ', 'Ospitia Cespedes'),
(62, 'Juan José', 'Ibagon Bermeo'),
(63, 'Shara María ', 'Maldonado González '),
(64, 'Valeria ', 'Astudillo Salas'),
(65, 'Sara Victoria ', 'Mosquera Muñoz '),
(66, 'Elizabeth fernanda', 'Ramos mora'),
(67, 'Wilson Hernán', 'Valderrama Velásquez'),
(68, 'Zharick Natalia', 'Cordoba Garcia'),
(69, 'JULIAN FELIPE ', 'AGUILAR MUÑOZ '),
(70, 'Juan David ', 'Trujillo Urrea '),
(72, 'Katherine', 'Oidor García '),
(73, 'Brayan Stiven ', 'Ordóñez Ramírez '),
(74, 'Danny sofia', 'Niquinas cuchimba'),
(75, 'Emanuel Santiago ', 'Perdomo Liscano'),
(76, 'JUAN DIEGO', 'RAMIREZ SALAZAR'),
(77, 'Michell Dayanna ', 'Bedoya Ramos '),
(78, 'Melody Paz', 'Barreiro Osorio'),
(79, 'Deniss Tatiana ', 'Fierro Bernal '),
(80, 'Manuel Gianpierre ', 'Velasco Sandoval '),
(81, 'Natalia', 'Madrid Pacheco'),
(82, 'Maryangel', 'Alvira Vidarte'),
(83, 'Juan José ', 'Rodríguez Acosta '),
(84, 'Ángel David', 'Cerquera Ceballos'),
(85, 'Axel Javier ', 'Caquimbo Yance'),
(86, 'sarhay', 'novoa'),
(88, 'Luna', 'Angel'),
(89, 'SAMUEL ALEJANDRO ', 'SERRATO CEDALLOS '),
(90, 'Natalia Sofia', 'Camero Leones'),
(91, 'Adriana Lucia', 'Camero Leones '),
(92, 'David Santiago ', 'Herrera Ramirez'),
(93, 'Lizeth Dayana ', 'Serna Cordoba'),
(94, 'juan manuel', 'andrade solano'),
(95, 'laura', 'charry ospina'),
(96, 'Silvana ', 'Ortegon Gutierrez'),
(97, 'Cattaleya', 'Zaimi Sanabria'),
(98, 'Ismael', 'Betancourt Ramírez '),
(99, 'Valerin Sofia ', 'Bautista Velasquez'),
(100, 'Jose Fernando', 'Losada Monje'),
(101, 'Mariana', 'Yasno'),
(102, 'Maria ', 'losada '),
(103, 'Cattaleya', 'Zaimi Sanabria'),
(104, 'Cristian Felipe ', 'Carvajal Gutiérrez '),
(105, 'Laura camila', 'Guevara cruz '),
(106, 'Thiago Alejandro ', 'Gutiérrez Rivera '),
(107, 'Victori', 'Perdomo yasno'),
(108, 'Ana Maria ', 'Silva Anaya '),
(109, 'David', 'Cicery parga'),
(110, 'JELLYN ZARAY', 'CAMPOS URREA'),
(111, 'Jorge Andrés', 'Valderrama Perdomo'),
(112, 'Ibby', 'Peña Castro'),
(113, 'Andrés santiago', 'Gaitán casso'),
(114, 'Emmanuel ', 'Losada Vidarte '),
(115, 'Ruben', 'Lipons'),
(116, 'Maira Alejandra', 'Cardoso forero '),
(117, 'Vanesa', 'Velasco Tierradentro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_personal_naci`
--

CREATE TABLE `user_personal_naci` (
  `upna_id` int(25) NOT NULL,
  `upna_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_personal_naci`
--

INSERT INTO `user_personal_naci` (`upna_id`, `upna_date`) VALUES
(35, '2020-09-14'),
(38, '1976-10-27'),
(39, '2003-09-24'),
(40, '2003-09-24'),
(41, '1989-09-30'),
(42, '1995-03-10'),
(43, '2005-04-18'),
(44, '2010-12-07'),
(45, '2011-12-13'),
(46, '2012-06-30'),
(47, '2000-02-16'),
(48, '2011-02-20'),
(49, '2002-01-24'),
(50, '2005-02-06'),
(51, '2010-09-23'),
(52, '2001-06-09'),
(53, '2005-03-29'),
(54, '2020-06-01'),
(55, '1982-03-10'),
(56, '2020-09-04'),
(57, '2011-09-02'),
(58, '2014-01-20'),
(59, '1994-02-23'),
(60, '2008-10-24'),
(61, '2011-07-21'),
(62, '2010-12-17'),
(63, '2012-02-11'),
(64, '2011-11-13'),
(65, '2012-08-31'),
(66, '2012-03-01'),
(67, '1974-01-01'),
(68, '2004-11-28'),
(69, '2011-04-06'),
(70, '1995-10-23'),
(72, '2004-02-19'),
(73, '2011-06-16'),
(74, '2013-07-12'),
(75, '2011-04-25'),
(76, '2012-09-04'),
(77, '2012-02-27'),
(78, '2012-01-15'),
(79, '2012-08-03'),
(80, '2012-02-16'),
(81, '2005-08-27'),
(82, '2009-01-21'),
(83, '2011-01-29'),
(84, '2011-10-20'),
(85, '2010-10-10'),
(86, '2008-11-11'),
(88, '2006-11-17'),
(89, '2009-09-10'),
(90, '2009-12-05'),
(91, '2012-02-01'),
(92, '2007-04-03'),
(93, '2006-10-23'),
(94, '2008-03-18'),
(95, '2007-12-11'),
(96, '2012-08-21'),
(97, '2013-06-17'),
(98, '2012-01-05'),
(99, '2009-05-04'),
(100, '2005-10-13'),
(101, '2012-02-28'),
(102, '2013-01-01'),
(103, '2013-06-17'),
(104, '2012-07-13'),
(105, '2012-07-31'),
(106, '2014-04-04'),
(107, '2012-12-02'),
(108, '2013-04-23'),
(109, '2012-11-10'),
(110, '2014-02-14'),
(111, '1978-04-24'),
(112, '2018-01-22'),
(113, '2012-06-28'),
(114, '2017-04-21'),
(115, '1996-01-19'),
(116, '2005-01-24'),
(117, '2002-03-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_rol_status`
--

CREATE TABLE `user_rol_status` (
  `urst_auto` int(11) NOT NULL,
  `urst_id_user` int(25) NOT NULL,
  `urst_rol` int(10) NOT NULL,
  `urst_estado` tinyint(1) NOT NULL DEFAULT 1,
  `urst_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `urst_created` datetime NOT NULL,
  `urst_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `urst_creador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_secure`
--

CREATE TABLE `user_secure` (
  `ucse_auto` int(11) NOT NULL,
  `ucse_password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_secure`
--

INSERT INTO `user_secure` (`ucse_auto`, `ucse_password`) VALUES
(35, '39dfa55283318d31afe5a3ff4a0e3253e2045e43'),
(38, '39dfa55283318d31afe5a3ff4a0e3253e2045e43'),
(39, '26570a2c1660bec432e0ec9cadcc9a9547d9b80f'),
(40, '26570a2c1660bec432e0ec9cadcc9a9547d9b80f'),
(41, '013c64e720e0ab8a1c5e3b2774fed08af3594966'),
(42, '63b3c8c62c5c4d4b8ffcea375e76f6ad63453e2c'),
(43, '1abb67968155d62603579026f74f4ba85088829a'),
(44, '6c5c695ff9a0fe677c9ce99f1548c8269cf1a92e'),
(45, 'e1fb60efead995830d87893e91371f744b16a72e'),
(46, '1d74cb0c93432919b07e1380e2d3b71c101f8885'),
(47, '1a3ad476f1c0325fb0c4f3ddc3d99cec8215d9ca'),
(48, 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(49, '1b99d4b58d361baea9953d875a8af2e0c5da390f'),
(50, '400a6c3bc70a344395ebac285c6050acdd877ead'),
(51, '47f8a396331f2f8ab95911a1134a6956486df0c1'),
(52, 'd259961b3548f75a7db5c9df2720661a01ef5a72'),
(53, '375149039a816d8bfc7bcc3dae697aa4e726921f'),
(54, 'b7081bc6b10606bbc710af525c7b87ca339479ae'),
(55, '1a688073f4b3562f098579ac55e85e0545c68f0a'),
(56, '781a25fa59a70c1a265757f866eac52e7be0d110'),
(57, '4601414d4ae197e1f3a7515261999a0af04ab117'),
(58, 'f7f42e92040b2c060480ca83c7b16b8db5565528'),
(59, 'afc06ed07700c0d36279a30a54bb85123763779c'),
(60, 'c0c650522c71a90c4882be46b6e4a5354f57a098'),
(61, '51d5cea4c9214774ec2df5641db3264fd0a0a24f'),
(62, '02ccd872602483a91aa6c9545f9dc30c7c802eca'),
(63, '664468a0c63fc1d0e4bb22e9a3c99e74f2e287d8'),
(64, '2319dada0bafaea33bea10ff1714ae24569ca288'),
(65, '0b4b78068fafb83d96d8eadb39d9d3f7b24207d9'),
(66, '5a050282585b2f267a316fe5e7b92d8730950d97'),
(67, '0631a22e679f27526f95026b185283684a1c1c2a'),
(68, '7291097e95beac3ec2637a9148b4818130239890'),
(69, 'ae26439aab46c5b7903e299597ced0a5ffb50bbe'),
(70, '691c9a62e5d795783247ae53dce2b9ba3fbed908'),
(72, 'ae6e110b6e49b1c3b883732c5d9a6d4de2928ece'),
(73, '515296bea7627e68c22704f30a63c3e7ee262ffa'),
(74, 'a6565d3c6803fdb8e7435ea5e2d089f91c29a173'),
(75, '1ff93024ab5ae7af0ce5783581a43a3566ec1049'),
(76, 'ae47e40439978a5f6e21e62f8fd333943213559e'),
(77, 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(78, '73e67148f0e4a441ab23ebf530a6b30745892ac7'),
(79, '694284ec0245037abd15cd2a8e729836059df178'),
(80, 'cd935e8feea125d6abcc906d4ccc4329e473fdb4'),
(81, '0cc15675ca9dc9e724bba0fde355d5dedb8af3ca'),
(82, 'b080d1d037f8171fed82caf64ba15c4116507a0c'),
(83, '45cd99e9afaa5288faf68a32a27d5969dba9299f'),
(84, '96f2473ab84d65ec3ae9d669691b6f018bbb27cd'),
(85, 'b3e6e42175363ceea1a0069e27a4f39b31312675'),
(86, '327555e911d69dc17d4406d1f9e4e8b297bedfe5'),
(88, 'ad30b2db23db5adf43d4ff0cf4f13ddf17bc1156'),
(89, '8cb2237d0679ca88db6464eac60da96345513964'),
(90, 'c82f3ac12b27f3aabe02223b1d0494c00cab3700'),
(91, '81dd4a7d7f3a3594244b22da55f3f53e4737a0c8'),
(92, '6c33bcc148148d6fe08192f93bc3ef832343e3e2'),
(93, 'e5e761c1a0aeb3c40503919a1c5eb8992d5ec019'),
(94, '37ebcc987ca51c8759d1950d32e4914c0589f02f'),
(95, 'e92f236741dc5e9a0d3501b09086c8aa4ad05534'),
(96, '03ac3c1e1b54b247ba40f07953495762c8ae2bd6'),
(97, 'a41195bd7b05ae38a93cc8854b8003f51384a261'),
(98, '3b015f13360831ec744dca74dee1ecf80b3794cf'),
(99, 'bf6b0a611526d24c918955e9a35582847056c790'),
(100, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(101, '5ba2933de0ae3e36f4cbadd9d3b0ed0b3648e1a9'),
(102, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(103, 'a41195bd7b05ae38a93cc8854b8003f51384a261'),
(104, '7f888122dfa36d4b396cf17e6ce7b051ba02e41b'),
(105, 'df6669a4d678a4a14ec5b67670243d3ee2a4869e'),
(106, 'cd245108641eeb413d757f30dcf89cf403cce4f4'),
(107, '17b7e916c822cb8bf33d444a817191adf511b46a'),
(108, '94d12cd559382d896694a500460f20b4ddc2f67c'),
(109, '97fab99cf65372d8e5cfd4cf77378ddc0d28d51e'),
(110, '33ed93ccb6d45ae98c6c0ffeff6d375f42071fa9'),
(111, '084cccf1f1a1414762a0f117c9bf5cb38515e09c'),
(112, '27ef27694a3f3a6c10ec3277716174d2c0f8f96f'),
(113, '84fcc116b98ceae70adb6f40bb88472b4b46a28e'),
(114, '39dfa55283318d31afe5a3ff4a0e3253e2045e43'),
(115, '34f048c4387fd54357400d4ea54c704875fb1078'),
(116, '50a4df393b2fe1a0dd646d8d9438d793a026d3a6'),
(117, '4d7cff7ac14f4010df5e2c9edbfce1268e26dd2f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_system_rol`
--

CREATE TABLE `user_system_rol` (
  `usr_auto` int(11) NOT NULL,
  `usr_nombre` varchar(50) NOT NULL,
  `usr_estado` tinyint(1) NOT NULL DEFAULT 1,
  `usr_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `usr_creador` int(25) NOT NULL,
  `usr_created` datetime NOT NULL,
  `usr_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_system_rol`
--

INSERT INTO `user_system_rol` (`usr_auto`, `usr_nombre`, `usr_estado`, `usr_vigencia`, `usr_creador`, `usr_created`, `usr_updated`) VALUES
(1, 'administrador', 1, 1, 0, '0000-00-00 00:00:00', '2020-07-07 04:58:06'),
(2, 'Instructor', 1, 1, 0, '0000-00-00 00:00:00', '2020-07-07 04:58:06'),
(3, 'aprendiz', 1, 1, 0, '0000-00-00 00:00:00', '2020-07-07 04:58:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases_ayudas_file`
--
ALTER TABLE `clases_ayudas_file`
  ADD PRIMARY KEY (`cafile_auto`),
  ADD KEY `cafile_id_clase` (`cafile_id_clase`);

--
-- Indices de la tabla `clases_ayudas_img`
--
ALTER TABLE `clases_ayudas_img`
  ADD PRIMARY KEY (`caimg_auto`),
  ADD KEY `cay_id_clase` (`cay_id_clase`);

--
-- Indices de la tabla `clases_ayudas_url`
--
ALTER TABLE `clases_ayudas_url`
  ADD PRIMARY KEY (`caur_auto`),
  ADD KEY `caur_id_clase` (`caur_id_clase`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cur_auto`);

--
-- Indices de la tabla `cursos_matriculas`
--
ALTER TABLE `cursos_matriculas`
  ADD PRIMARY KEY (`curm_auto`);

--
-- Indices de la tabla `curso_clases`
--
ALTER TABLE `curso_clases`
  ADD PRIMARY KEY (`cla_auto`),
  ADD KEY `cla_id_curso` (`cla_id_curso`);

--
-- Indices de la tabla `curso_link`
--
ALTER TABLE `curso_link`
  ADD PRIMARY KEY (`cla_auto`),
  ADD KEY `cla_id_clase` (`cla_id_clase`);

--
-- Indices de la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD PRIMARY KEY (`es_id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`ev_auto`);

--
-- Indices de la tabla `evento_aliados`
--
ALTER TABLE `evento_aliados`
  ADD PRIMARY KEY (`eva_auto`),
  ADD KEY `eva_id_evento` (`eva_id_evento`);

--
-- Indices de la tabla `evento_imagenes`
--
ALTER TABLE `evento_imagenes`
  ADD PRIMARY KEY (`eim_auto`),
  ADD KEY `eim_id_evento` (`eim_id_evento`);

--
-- Indices de la tabla `evento_link_video`
--
ALTER TABLE `evento_link_video`
  ADD PRIMARY KEY (`evl_auto`),
  ADD KEY `evl_id_evento` (`evl_id_evento`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`ga_id`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`gru_id`);

--
-- Indices de la tabla `metadata_seo`
--
ALTER TABLE `metadata_seo`
  ADD PRIMARY KEY (`mes_auto`);

--
-- Indices de la tabla `nosotros_politicas_calidad`
--
ALTER TABLE `nosotros_politicas_calidad`
  ADD PRIMARY KEY (`npca_auto`),
  ADD KEY `npca_id_nosotros` (`npca_id_nosotros`);

--
-- Indices de la tabla `nosotros_valores`
--
ALTER TABLE `nosotros_valores`
  ADD PRIMARY KEY (`nosv_auto`),
  ADD KEY `nosv_id_nosotros` (`nosv_id_nosotros`);

--
-- Indices de la tabla `page_contacenos`
--
ALTER TABLE `page_contacenos`
  ADD PRIMARY KEY (`pco_auto`);

--
-- Indices de la tabla `page_index`
--
ALTER TABLE `page_index`
  ADD PRIMARY KEY (`pin_auto`);

--
-- Indices de la tabla `page_nosotros`
--
ALTER TABLE `page_nosotros`
  ADD PRIMARY KEY (`pno_auto`);

--
-- Indices de la tabla `permiso_registro_usuarios`
--
ALTER TABLE `permiso_registro_usuarios`
  ADD PRIMARY KEY (`pru_auto`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indices de la tabla `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`sl_auto`);

--
-- Indices de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  ADD PRIMARY KEY (`susc_auto`);

--
-- Indices de la tabla `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`tf_auto`);

--
-- Indices de la tabla `user_anexos`
--
ALTER TABLE `user_anexos`
  ADD PRIMARY KEY (`uan_auto`);

--
-- Indices de la tabla `user_contactp`
--
ALTER TABLE `user_contactp`
  ADD PRIMARY KEY (`ucp_auto_id`),
  ADD KEY `user_contactp_ibfk_1` (`ucp_id_usuario`);

--
-- Indices de la tabla `user_count`
--
ALTER TABLE `user_count`
  ADD PRIMARY KEY (`uc_auto`),
  ADD UNIQUE KEY `uc_email` (`uc_email`);

--
-- Indices de la tabla `user_created_log`
--
ALTER TABLE `user_created_log`
  ADD PRIMARY KEY (`ucl_auto`),
  ADD KEY `user_created_log_ibfk_1` (`ucl_id_user`);

--
-- Indices de la tabla `user_escuelas`
--
ALTER TABLE `user_escuelas`
  ADD PRIMARY KEY (`ues_auto`);

--
-- Indices de la tabla `user_grupos`
--
ALTER TABLE `user_grupos`
  ADD PRIMARY KEY (`ugru_auto`);

--
-- Indices de la tabla `user_identification_c`
--
ALTER TABLE `user_identification_c`
  ADD PRIMARY KEY (`uic_id_user`);

--
-- Indices de la tabla `user_personal`
--
ALTER TABLE `user_personal`
  ADD PRIMARY KEY (`upe_id_user`);

--
-- Indices de la tabla `user_personal_naci`
--
ALTER TABLE `user_personal_naci`
  ADD PRIMARY KEY (`upna_id`);

--
-- Indices de la tabla `user_rol_status`
--
ALTER TABLE `user_rol_status`
  ADD PRIMARY KEY (`urst_auto`),
  ADD KEY `urst_id_user` (`urst_id_user`),
  ADD KEY `urst_rol` (`urst_rol`);

--
-- Indices de la tabla `user_secure`
--
ALTER TABLE `user_secure`
  ADD PRIMARY KEY (`ucse_auto`);

--
-- Indices de la tabla `user_system_rol`
--
ALTER TABLE `user_system_rol`
  ADD PRIMARY KEY (`usr_auto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases_ayudas_file`
--
ALTER TABLE `clases_ayudas_file`
  MODIFY `cafile_auto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clases_ayudas_img`
--
ALTER TABLE `clases_ayudas_img`
  MODIFY `caimg_auto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clases_ayudas_url`
--
ALTER TABLE `clases_ayudas_url`
  MODIFY `caur_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cur_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cursos_matriculas`
--
ALTER TABLE `cursos_matriculas`
  MODIFY `curm_auto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso_clases`
--
ALTER TABLE `curso_clases`
  MODIFY `cla_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `curso_link`
--
ALTER TABLE `curso_link`
  MODIFY `cla_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `escuela`
--
ALTER TABLE `escuela`
  MODIFY `es_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `ev_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `evento_aliados`
--
ALTER TABLE `evento_aliados`
  MODIFY `eva_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `evento_imagenes`
--
ALTER TABLE `evento_imagenes`
  MODIFY `eim_auto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento_link_video`
--
ALTER TABLE `evento_link_video`
  MODIFY `evl_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `ga_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `gru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `metadata_seo`
--
ALTER TABLE `metadata_seo`
  MODIFY `mes_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `nosotros_politicas_calidad`
--
ALTER TABLE `nosotros_politicas_calidad`
  MODIFY `npca_auto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nosotros_valores`
--
ALTER TABLE `nosotros_valores`
  MODIFY `nosv_auto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `page_contacenos`
--
ALTER TABLE `page_contacenos`
  MODIFY `pco_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `page_index`
--
ALTER TABLE `page_index`
  MODIFY `pin_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `page_nosotros`
--
ALTER TABLE `page_nosotros`
  MODIFY `pno_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permiso_registro_usuarios`
--
ALTER TABLE `permiso_registro_usuarios`
  MODIFY `pru_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `slides`
--
ALTER TABLE `slides`
  MODIFY `sl_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  MODIFY `susc_auto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `tf_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user_anexos`
--
ALTER TABLE `user_anexos`
  MODIFY `uan_auto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_contactp`
--
ALTER TABLE `user_contactp`
  MODIFY `ucp_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `user_count`
--
ALTER TABLE `user_count`
  MODIFY `uc_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de la tabla `user_created_log`
--
ALTER TABLE `user_created_log`
  MODIFY `ucl_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `user_escuelas`
--
ALTER TABLE `user_escuelas`
  MODIFY `ues_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user_grupos`
--
ALTER TABLE `user_grupos`
  MODIFY `ugru_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user_rol_status`
--
ALTER TABLE `user_rol_status`
  MODIFY `urst_auto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_system_rol`
--
ALTER TABLE `user_system_rol`
  MODIFY `usr_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clases_ayudas_file`
--
ALTER TABLE `clases_ayudas_file`
  ADD CONSTRAINT `clases_ayudas_file_ibfk_1` FOREIGN KEY (`cafile_id_clase`) REFERENCES `curso_clases` (`cla_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `clases_ayudas_img`
--
ALTER TABLE `clases_ayudas_img`
  ADD CONSTRAINT `clases_ayudas_img_ibfk_1` FOREIGN KEY (`cay_id_clase`) REFERENCES `curso_clases` (`cla_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `clases_ayudas_url`
--
ALTER TABLE `clases_ayudas_url`
  ADD CONSTRAINT `clases_ayudas_url_ibfk_1` FOREIGN KEY (`caur_id_clase`) REFERENCES `curso_clases` (`cla_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `curso_clases`
--
ALTER TABLE `curso_clases`
  ADD CONSTRAINT `curso_clases_ibfk_1` FOREIGN KEY (`cla_id_curso`) REFERENCES `cursos` (`cur_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `curso_link`
--
ALTER TABLE `curso_link`
  ADD CONSTRAINT `curso_link_ibfk_1` FOREIGN KEY (`cla_id_clase`) REFERENCES `curso_clases` (`cla_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `evento_aliados`
--
ALTER TABLE `evento_aliados`
  ADD CONSTRAINT `evento_aliados_ibfk_1` FOREIGN KEY (`eva_id_evento`) REFERENCES `eventos` (`ev_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `evento_imagenes`
--
ALTER TABLE `evento_imagenes`
  ADD CONSTRAINT `evento_imagenes_ibfk_1` FOREIGN KEY (`eim_id_evento`) REFERENCES `eventos` (`ev_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `evento_link_video`
--
ALTER TABLE `evento_link_video`
  ADD CONSTRAINT `evento_link_video_ibfk_1` FOREIGN KEY (`evl_id_evento`) REFERENCES `eventos` (`ev_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `nosotros_politicas_calidad`
--
ALTER TABLE `nosotros_politicas_calidad`
  ADD CONSTRAINT `nosotros_politicas_calidad_ibfk_1` FOREIGN KEY (`npca_id_nosotros`) REFERENCES `page_nosotros` (`pno_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `nosotros_valores`
--
ALTER TABLE `nosotros_valores`
  ADD CONSTRAINT `nosotros_valores_ibfk_1` FOREIGN KEY (`nosv_id_nosotros`) REFERENCES `page_nosotros` (`pno_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_contactp`
--
ALTER TABLE `user_contactp`
  ADD CONSTRAINT `user_contactp_ibfk_1` FOREIGN KEY (`ucp_id_usuario`) REFERENCES `user_count` (`uc_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_created_log`
--
ALTER TABLE `user_created_log`
  ADD CONSTRAINT `user_created_log_ibfk_1` FOREIGN KEY (`ucl_id_user`) REFERENCES `user_count` (`uc_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_identification_c`
--
ALTER TABLE `user_identification_c`
  ADD CONSTRAINT `user_identification_c_ibfk_1` FOREIGN KEY (`uic_id_user`) REFERENCES `user_count` (`uc_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_personal`
--
ALTER TABLE `user_personal`
  ADD CONSTRAINT `user_personal_ibfk_1` FOREIGN KEY (`upe_id_user`) REFERENCES `user_count` (`uc_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_personal_naci`
--
ALTER TABLE `user_personal_naci`
  ADD CONSTRAINT `user_personal_naci_ibfk_1` FOREIGN KEY (`upna_id`) REFERENCES `user_count` (`uc_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_rol_status`
--
ALTER TABLE `user_rol_status`
  ADD CONSTRAINT `user_rol_status_ibfk_1` FOREIGN KEY (`urst_id_user`) REFERENCES `user_count` (`uc_auto`),
  ADD CONSTRAINT `user_rol_status_ibfk_2` FOREIGN KEY (`urst_rol`) REFERENCES `user_system_rol` (`usr_auto`);

--
-- Filtros para la tabla `user_secure`
--
ALTER TABLE `user_secure`
  ADD CONSTRAINT `user_secure_ibfk_1` FOREIGN KEY (`ucse_auto`) REFERENCES `user_count` (`uc_auto`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
