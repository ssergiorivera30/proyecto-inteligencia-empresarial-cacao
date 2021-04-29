-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2021 a las 23:35:24
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
-- Base de datos: `unidad_empresarial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_digitalizadas`
--

CREATE TABLE `actividades_digitalizadas` (
  `adi_auto_id` int(11) NOT NULL,
  `adi_actividad` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `adi_fecha_envio` datetime NOT NULL,
  `adi_nota` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `adi_fecha_calificado` datetime NOT NULL,
  `adi_unidad_prod` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `adi_evaluador` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `adi_archivo` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `adi_estado` tinyint(1) NOT NULL DEFAULT 1,
  `adi_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_digitalizadas_archivo`
--

CREATE TABLE `actividades_digitalizadas_archivo` (
  `ada_id_auto` int(11) NOT NULL,
  `ada_cod_actividad` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `ada_cod_unidad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ada_user` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ada_archivo` text COLLATE utf8_spanish_ci NOT NULL,
  `ada_nota` tinyint(1) NOT NULL DEFAULT 0,
  `ada_evaluador` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ada_observacion` text COLLATE utf8_spanish_ci NOT NULL,
  `ada_fecha_calificado` datetime NOT NULL,
  `ada_fecha_envio` datetime NOT NULL,
  `ada_visto` tinyint(1) NOT NULL DEFAULT 0,
  `ada_estado` tinyint(1) NOT NULL DEFAULT 1,
  `ada_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `ada_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `actividades_digitalizadas_archivo`
--

INSERT INTO `actividades_digitalizadas_archivo` (`ada_id_auto`, `ada_cod_actividad`, `ada_cod_unidad`, `ada_user`, `ada_archivo`, `ada_nota`, `ada_evaluador`, `ada_observacion`, `ada_fecha_calificado`, `ada_fecha_envio`, `ada_visto`, `ada_estado`, `ada_vigencia`, `ada_update`) VALUES
(17, '33', '7', '119', '1045px-Sena_Colombia_logo.svg.png-52174191211111222.png', 1, '', 'No ', '0000-00-00 00:00:00', '2019-12-11 12:11:22', 0, 1, 1, '2019-12-23 08:31:52'),
(18, '33', '11', '119', 'screenshot-localhost-2019.12 - 2019-12-22T220208.549.png-83885191223091225.png', 2, '', '1', '0000-00-00 00:00:00', '2019-12-23 12:09:25', 0, 1, 1, '2019-12-23 09:07:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_drive_url`
--

CREATE TABLE `actividades_drive_url` (
  `adu_auto_id` int(11) NOT NULL,
  `adu_cod_actividad` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `adu_unidad_prod` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `adu_user` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `adu_cod_url` text COLLATE utf8_spanish_ci NOT NULL,
  `adu_mensaje` text COLLATE utf8_spanish_ci NOT NULL,
  `adu_nota` tinyint(1) DEFAULT 0,
  `adu_evaluador` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `adu_observacion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `adu_fecha_calificado` datetime NOT NULL,
  `adu_fecha_enviado` datetime NOT NULL,
  `adu_visto` tinyint(1) NOT NULL DEFAULT 0,
  `adu_estado` tinyint(1) NOT NULL DEFAULT 1,
  `adu_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `adu_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `actividades_drive_url`
--

INSERT INTO `actividades_drive_url` (`adu_auto_id`, `adu_cod_actividad`, `adu_unidad_prod`, `adu_user`, `adu_cod_url`, `adu_mensaje`, `adu_nota`, `adu_evaluador`, `adu_observacion`, `adu_fecha_calificado`, `adu_fecha_enviado`, `adu_visto`, `adu_estado`, `adu_vigencia`, `adu_update`) VALUES
(31, '33', '7', '119', 'https://www.duolingo.com/learn', 'Cordial saludo.', 0, '', 'No Aprobado', '0000-00-00 00:00:00', '2019-12-12 12:12:10', 0, 1, 1, '2019-12-23 08:26:47'),
(32, '39', '11', '119', 'https://drive.google.com/drive/u/0/folders/1emnNfLxl6eXN3K99D7Na4VuDxRrR7BnX', 'Cordial saludo, envio enlace de la actividad', 0, '', '', '0000-00-00 00:00:00', '2020-11-06 07:11:50', 0, 1, 1, '2020-11-06 18:38:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_env_fisico`
--

CREATE TABLE `actividades_env_fisico` (
  `adi_auto_id` int(11) NOT NULL,
  `adi_cod_actividad` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `adi_unidad_prod` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `adi_user` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `adi_cod_url` text COLLATE utf8_spanish_ci NOT NULL,
  `adi_mensaje` text COLLATE utf8_spanish_ci NOT NULL,
  `adi_nota` tinyint(1) NOT NULL DEFAULT 0,
  `adi_evaluador` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `adi_observacion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `adi_fecha_calificado` datetime NOT NULL,
  `adi_fecha_enviado` datetime NOT NULL,
  `adi_visto` tinyint(1) NOT NULL DEFAULT 0,
  `adi_estado` tinyint(1) NOT NULL DEFAULT 1,
  `adi_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `adi_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_sust`
--

CREATE TABLE `calendario_sust` (
  `s_id_sp_auto` int(11) NOT NULL,
  `ssp_tipo` varchar(5) NOT NULL,
  `s_nombre_unidad` varchar(255) NOT NULL,
  `s_codigo_unidad` int(20) NOT NULL,
  `s_color` varchar(7) DEFAULT NULL,
  `s_start` datetime NOT NULL,
  `s_end` datetime DEFAULT NULL,
  `s_estado` tinyint(1) NOT NULL DEFAULT 1,
  `s_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `s_asesor_adm` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `calendario_sust`
--

INSERT INTO `calendario_sust` (`s_id_sp_auto`, `ssp_tipo`, `s_nombre_unidad`, `s_codigo_unidad`, `s_color`, `s_start`, `s_end`, `s_estado`, `s_vigencia`, `s_asesor_adm`) VALUES
(136, 'TI:', 'ADS', 11, '#008000', '2019-06-01 00:00:00', '2019-06-01 00:00:00', 1, 1, ''),
(137, 'TI:', 'TÃ‰CNICO EN SISTEMAS', 12, '#008000', '2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 1, ''),
(138, 'TI:', 'OPERACIÃ“N DE MAQUINARIA PESADA', 13, '#008000', '2019-10-18 00:00:00', '2019-10-18 00:00:00', 1, 1, ''),
(139, 'TI:', 'OPERACIÃ“N DE MAQUINAS DE COSER ', 17, '#008000', '2019-12-25 00:00:00', '2019-12-25 00:00:00', 1, 1, ''),
(140, 'TI:', 'AUXILIAR EN ADMINISTRACIÃ³N PÃºBLICA ', 18, '#008000', '2019-08-08 00:00:00', '2019-08-08 00:00:00', 1, 1, ''),
(141, 'TI:', 'AUXILIAR DE ENFERMERÃ­A 2', 23, '#008000', '2019-07-01 00:00:00', '2019-07-01 00:00:00', 1, 1, ''),
(142, 'TI:', 'PROGRAMA DE PRUEBA', 24, '#008000', '2019-07-10 00:00:00', '2019-07-10 00:00:00', 1, 1, ''),
(143, 'TI:', 'GESTIÃ³N EMPRESARIAL', 25, '#008000', '2019-02-05 00:00:00', '2019-02-05 00:00:00', 1, 1, ''),
(144, 'TI:', 'PROGRAMA DE PRUEBA DOS', 26, '#008000', '2019-07-04 00:00:00', '2019-07-04 00:00:00', 1, 1, ''),
(145, 'TI:', ' INSTALACIONES ELECTRICAS RESIDENCIALES', 27, '#008000', '2020-05-15 00:00:00', '2020-05-15 00:00:00', 1, 1, ''),
(146, 'TI:', 'TECNÃ³LOGO DEMOSS2', 28, '#008000', '2020-06-01 00:00:00', '2020-06-01 00:00:00', 1, 1, ''),
(147, 'TI:', 'TITULACIÃ“N DEMO', 29, '#008000', '2019-09-12 00:00:00', '2019-09-12 00:00:00', 1, 1, ''),
(148, 'TI:', 'ANÃ¡LISIS Y DESARROLLO DE SISTEMAS DE INFORMACIÃ³N', 30, '#008000', '2019-12-13 00:00:00', '2019-12-13 00:00:00', 1, 1, ''),
(149, 'TI:', 'PROGRAMACIÃ“N DE SOFTWARE ', 31, '#008000', '2020-04-17 00:00:00', '2020-04-17 00:00:00', 1, 1, ''),
(150, 'TI:', 'MESA Y BAR', 32, '#008000', '2020-04-17 00:00:00', '2020-04-17 00:00:00', 1, 1, ''),
(155, 'TA:', 'Verificar Auditorio', 0, '#FFD700', '2019-10-10 00:00:00', '2019-10-11 00:00:00', 1, 1, ''),
(156, 'TA:', 'Programar Sustentaciones', 0, '#FFD700', '2019-09-30 00:00:00', '2019-10-01 00:00:00', 1, 1, ''),
(157, 'TA:', 'Separar Auditorio', 0, '#FFD700', '2019-10-01 00:00:00', '2019-10-02 00:00:00', 1, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_sust_pres`
--

CREATE TABLE `calendario_sust_pres` (
  `c_id_sp_auto` int(11) NOT NULL,
  `csp_tipo` varchar(5) NOT NULL,
  `c_nombre_unidad` varchar(255) NOT NULL,
  `c_codigo_unidad` int(20) NOT NULL,
  `c_color` varchar(7) DEFAULT NULL,
  `c_start` datetime NOT NULL,
  `c_end` datetime DEFAULT NULL,
  `c_estado` tinyint(1) NOT NULL DEFAULT 1,
  `c_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `c_asesor_adm` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `calendario_sust_pres`
--

INSERT INTO `calendario_sust_pres` (`c_id_sp_auto`, `csp_tipo`, `c_nombre_unidad`, `c_codigo_unidad`, `c_color`, `c_start`, `c_end`, `c_estado`, `c_vigencia`, `c_asesor_adm`) VALUES
(1, 'TI:', 'ADS', 11, '#0071c5', '2019-06-01 00:00:00', '2019-06-01 00:00:00', 1, 1, ''),
(2, 'TI:', 'TÃ‰CNICO EN SISTEMAS', 12, '#0071c5', '2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 1, ''),
(3, 'TI:', 'OPERACIÃ“N DE MAQUINARIA PESADA', 13, '#0071c5', '2019-12-05 00:00:00', '2019-12-05 00:00:00', 1, 1, ''),
(4, 'TI:', 'OPERACIÃ“N DE MAQUINAS DE COSER ', 17, '#0071c5', '2019-12-19 00:00:00', '2019-12-19 00:00:00', 1, 1, ''),
(5, 'TI:', 'AUXILIAR EN ADMINISTRACIÃ³N PÃºBLICA ', 18, '#0071c5', '2019-08-08 00:00:00', '2019-08-08 00:00:00', 1, 1, ''),
(6, 'TI:', 'AUXILIAR DE ENFERMERÃ­A 2', 23, '#0071c5', '2019-07-01 00:00:00', '2019-07-01 00:00:00', 1, 1, ''),
(7, 'TI:', 'PROGRAMA DE PRUEBA', 24, '#0071c5', '2019-07-10 00:00:00', '2019-07-10 00:00:00', 1, 1, ''),
(8, 'TI:', 'GESTIÃ³N EMPRESARIAL', 25, '#0071c5', '2019-02-05 00:00:00', '2019-02-05 00:00:00', 1, 1, ''),
(9, 'TI:', 'PROGRAMA DE PRUEBA DOS', 26, '#0071c5', '2019-07-04 00:00:00', '2019-07-04 00:00:00', 1, 1, ''),
(10, 'TI:', ' INSTALACIONES ELECTRICAS RESIDENCIALES', 27, '#0071c5', '2020-05-15 00:00:00', '2020-05-15 00:00:00', 1, 1, ''),
(11, 'TI:', 'TECNÃ³LOGO DEMOSS2', 28, '#0071c5', '2020-06-01 00:00:00', '2020-06-01 00:00:00', 1, 1, ''),
(12, 'TI:', 'TITULACIÃ“N DEMO', 29, '#0071c5', '2019-09-12 00:00:00', '2019-09-12 00:00:00', 1, 1, ''),
(13, 'TI:', 'ANÃ¡LISIS Y DESARROLLO DE SISTEMAS DE INFORMACIÃ³N', 30, '#0071c5', '2019-11-14 00:00:00', '2019-11-14 00:00:00', 1, 1, ''),
(14, 'TI:', 'PROGRAMACIÃ“N DE SOFTWARE ', 31, '#0071c5', '2020-04-17 00:00:00', '2020-04-17 00:00:00', 1, 1, ''),
(15, 'TI:', 'MESA Y BAR', 32, '#0071c5', '2020-04-17 00:00:00', '2020-04-17 00:00:00', 1, 1, ''),
(16, 'TA:', 'Programar Pre Sustentaciones', 0, '#FF8C00', '2019-10-25 00:00:00', '2019-10-26 00:00:00', 1, 1, ''),
(17, 'TA:', 'Tareas', 0, '#FF8C00', '2019-10-27 00:00:00', '2019-10-28 00:00:00', 1, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapa_archivo`
--

CREATE TABLE `etapa_archivo` (
  `eta_id_auto` int(20) NOT NULL,
  `eta_nombre_archivo` varchar(90) COLLATE utf8_spanish_ci NOT NULL,
  `eta_creacion` datetime NOT NULL,
  `eta_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `eta_estado` tinyint(4) NOT NULL,
  `eta_vigencia` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `etapa_archivo`
--

INSERT INTO `etapa_archivo` (`eta_id_auto`, `eta_nombre_archivo`, `eta_creacion`, `eta_updated`, `eta_estado`, `eta_vigencia`) VALUES
(15, 'vigilancia.jpg-27083190626020631-.jpg', '2019-06-26 06:02:31', '2019-06-26 00:27:31', 1, 1),
(16, 'diploma de bachiller 11.jpg-63775190626120657.jpg', '2019-06-26 06:12:57', '2019-06-25 23:10:26', 1, 0),
(17, '1.png-64001190626010630-.png', '2019-06-26 06:01:30', '2019-06-25 23:03:30', 1, 1),
(18, 'gup.png-45438190626020619-.png', '2019-06-26 06:02:19', '2019-06-26 00:26:19', 1, 1),
(19, 'laboral.jpg-30532190626020658-.jpg', '2019-06-26 06:02:58', '2019-06-26 00:26:58', 1, 1),
(20, 'Tamizadora.pdf-13844190626020627-.pdf', '2019-06-26 06:02:27', '2019-06-26 00:29:27', 1, 1),
(21, 'gup.png-65867190626020617-.png', '2019-06-26 06:02:17', '2019-06-26 00:51:17', 1, 1),
(50, 'gup.png-67105190626030610-.png', '2019-06-26 06:03:10', '2019-06-26 01:50:10', 0, 1),
(51, 'screenshot-localhost_4200-2019.12.02-19_05_45.png-31352191205091221-.png', '2019-12-05 12:09:21', '2019-12-05 20:54:21', 0, 1),
(52, 'aa.png-10341190626040631-.png', '2019-06-26 06:04:31', '2019-06-26 02:00:31', 0, 1),
(53, 'gup.png-50521190626040636-.png', '2019-06-26 06:04:36', '2019-06-26 02:02:36', 0, 1),
(54, 'laboral.jpg-23100190626040657-.jpg', '2019-06-26 06:04:57', '2019-06-26 02:02:57', 0, 1),
(55, 'gup.png-19576190626040610-.png', '2019-06-26 06:04:10', '2019-06-26 02:05:10', 0, 1),
(56, 'sss.png-25647190626040633-.png', '2019-06-26 06:04:33', '2019-06-26 02:05:33', 0, 1),
(57, '1.png-75210190626040615-.png', '2019-06-26 06:04:15', '2019-06-26 02:06:15', 0, 1),
(58, '317843 SERVICI NACIONAL SENA NEIVA (1).pdf-46371190626030636-.pdf', '2019-06-26 06:03:36', '2019-06-26 13:46:36', 0, 1),
(59, 'ecolta.jpg-50645190704060751-.jpg', '2019-07-04 07:06:51', '2019-07-04 16:50:51', 0, 1),
(60, '1.png-81097190705020718.png', '2019-07-05 07:02:18', '2019-07-05 00:33:24', 1, 1),
(61, 'dos.png-19450190708110733.png', '2019-07-08 07:11:33', '2019-07-08 21:00:48', 1, 1),
(62, 'sss.png-64202190708110703.png', '2019-07-08 07:11:03', '2019-07-08 21:04:30', 1, 0),
(63, 'Above Clouds.png-80977190912120947.png', '2019-09-12 09:12:47', '2019-09-11 22:46:59', 1, 1),
(64, 'img.png-61293191021051006-.png', '2019-10-21 10:05:06', '2019-10-21 03:35:06', 1, 1),
(65, 'img.png-22996191021051029.png', '2019-10-21 10:05:29', '2019-10-21 03:36:29', 0, 0),
(66, 'cdath.png-61857191212021203-.png', '2019-12-12 12:02:03', '2019-12-12 01:13:03', 1, 1),
(67, 'constancia_Virtual_page-0001.jpg-59494191210071257.jpg', '2019-12-10 12:07:57', '2019-12-10 18:51:57', 0, 0),
(68, 'Sergio Yamit Rivera Flor_page-0001.jpg-24554191211031223-.jpg', '2019-12-11 12:03:23', '2019-12-11 02:40:23', 0, 1),
(69, 'constancia_Virtual_page-0001.jpg-71867191211031208.jpg', '2019-12-11 12:03:08', '2019-12-11 02:50:08', 0, 0),
(70, 'Sergio Yamit Rivera Flor_page-0001.jpg-36127191211031240.jpg', '2019-12-11 12:03:40', '2019-12-11 02:51:40', 0, 0),
(71, '9121001858139CC1084577898C_page-0001.jpg-21257191211031229.jpg', '2019-12-11 12:03:29', '2019-12-11 02:54:29', 0, 0),
(72, 'constancia_Virtual_page-0001.jpg-35137191211031250.jpg', '2019-12-11 12:03:50', '2019-12-11 02:54:50', 0, 0),
(73, 'Sergio Yamit Rivera Flor_page-0001.jpg-51983191211031222.jpg', '2019-12-11 12:03:22', '2019-12-11 02:58:22', 0, 0),
(74, 'informe final.docx-46132201106061151.docx', '2020-11-06 11:06:51', '2020-11-06 17:39:00', 1, 1),
(75, 'informe final.docx-12709201106061116.docx', '2020-11-06 11:06:16', '2020-11-06 17:46:27', 1, 1),
(76, 'informe final.docx-73514201106071109.docx', '2020-11-06 11:07:09', '2020-11-06 18:29:20', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapa_calificacion_de_entregas`
--

CREATE TABLE `etapa_calificacion_de_entregas` (
  `cde_id_entrega` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `cde_up` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `cde_user` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `cde_drive` varchar(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `cde_fisico` varchar(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `cde_magnetico` varchar(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `etapa_calificacion_de_entregas`
--

INSERT INTO `etapa_calificacion_de_entregas` (`cde_id_entrega`, `cde_up`, `cde_user`, `cde_drive`, `cde_fisico`, `cde_magnetico`) VALUES
('190529060512', '1018', '7423', '1', '1', '1'),
('190529060551', '1018', '', '1', '2', '1'),
('190604060613', '1018', '', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapa_formatos_asociados`
--

CREATE TABLE `etapa_formatos_asociados` (
  `efa_id` int(11) NOT NULL,
  `efa_formacion` int(3) NOT NULL,
  `efa_codigo_etapa` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `efa_codigo_formato` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `efa_nombre_formato` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `efa_actividad` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `efa_observaciones` text COLLATE utf8_spanish_ci NOT NULL,
  `efa_mes_inicio` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `efa_mes_final` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `efa_fecha` datetime NOT NULL,
  `efa_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `efa_estado` tinyint(1) NOT NULL DEFAULT 1,
  `efa_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `etapa_formatos_asociados`
--

INSERT INTO `etapa_formatos_asociados` (`efa_id`, `efa_formacion`, `efa_codigo_etapa`, `efa_codigo_formato`, `efa_nombre_formato`, `efa_actividad`, `efa_observaciones`, `efa_mes_inicio`, `efa_mes_final`, `efa_fecha`, `efa_update`, `efa_estado`, `efa_vigencia`) VALUES
(32, 100, '34', '', 'ACERCARSE A LA OFICINA PARA REALIZAR REGISTRO EN LA UGE', 'Inscripción de Unidad Productivas', 'Realizar registro de la UP, Oficina Lider de Unidades Productivas del Centro.', '3', '5', '2019-12-06 05:12:19', '2019-12-10 14:07:18', 1, 1),
(33, 100, '34', '68', '', 'Acta de Constitución', 'Cargar Acta de Constitución de la Unidad Productiva', '1', '2', '2019-12-09 06:12:33', '2019-12-11 02:40:23', 1, 1),
(34, 100, '34', '66', 'INFORME', 'Informe de Evidencias', 'Informe de Horas Trabajadas en la Unidad Productiva', '6', '12', '2019-12-10 03:12:07', '2019-12-10 14:10:07', 1, 1),
(35, 100, '34', '66', 'INFORME', 'Informe de Evidencias', 'Informe de Horas Trabajadas en la Unidad Productiva', '6', '12', '2019-12-10 04:12:50', '2020-11-06 17:39:14', 1, 0),
(36, 100, '36', '', 'FICHA INSCRIPCIóN UNIDAD PRODUCTIVA', 'Ficha de Inscripción', 'N/A', '1', '4', '2020-11-06 06:11:04', '2020-11-06 17:13:04', 1, 1),
(37, 100, '34', '74', 'INFORME FINAL', 'INFORME FINAL', 'Informe de actividades', '15', '18', '2020-11-06 06:11:00', '2020-11-06 17:39:23', 1, 0),
(38, 100, '36', '75', 'INFORME FINAL', 'Informe final', 'Informe final de actividades', '15', '18', '2020-11-06 06:11:27', '2020-11-06 17:46:27', 1, 1),
(39, 100, '35', '76', 'INFORME DE ACTIVIDADES', 'Informe de actividades', 'Enviar informe de actividades', '6', '12', '2020-11-06 07:11:20', '2020-11-06 18:29:32', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapa_responsables`
--

CREATE TABLE `etapa_responsables` (
  `er_id` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `er_apoyo_up` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `er_instructor_lider_formacion` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `er_integrantes_up` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `er_aprendiz` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `er_lider_contrato_apr` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `etapa_responsables`
--

INSERT INTO `etapa_responsables` (`er_id`, `er_apoyo_up`, `er_instructor_lider_formacion`, `er_integrantes_up`, `er_aprendiz`, `er_lider_contrato_apr`) VALUES
('32', '1', '1', '1', '', ''),
('33', '0', '0', '1', '0', '0'),
('34', '', '0', '1', '0', '0'),
('35', '', '0', '1', '0', '0'),
('36', '1', '0', '1', '0', '0'),
('37', '1', '0', '1', '1', '0'),
('38', '1', '1', '1', '1', '0'),
('39', '1', '1', '1', '1', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapa_tipo_entrega`
--

CREATE TABLE `etapa_tipo_entrega` (
  `ate_id_entrega` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `ate_drive` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ate_fisico` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ate_magnetico` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `etapa_tipo_entrega`
--

INSERT INTO `etapa_tipo_entrega` (`ate_id_entrega`, `ate_drive`, `ate_fisico`, `ate_magnetico`) VALUES
('32', '1', '', ''),
('33', '1', '1', '1'),
('34', '0', '1', '0'),
('35', '0', '1', '0'),
('36', '1', '1', '0'),
('37', '1', '1', '0'),
('38', '1', '1', '0'),
('39', '1', '1', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mail`
--

CREATE TABLE `mail` (
  `mail_auto_id` int(11) NOT NULL,
  `mail_origen` varchar(60) NOT NULL,
  `mail_destinatario` varchar(120) NOT NULL,
  `mail_asunto` text NOT NULL,
  `mail_mensaje` text NOT NULL,
  `mail_created` datetime NOT NULL,
  `mail_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mail_status` tinyint(1) NOT NULL DEFAULT 1,
  `mail_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mail_destinatario`
--

CREATE TABLE `mail_destinatario` (
  `md_auto_id` int(11) NOT NULL,
  `md_id_mail` varchar(30) NOT NULL,
  `md_destinatario` varchar(50) NOT NULL,
  `md_visto` tinyint(1) NOT NULL,
  `md_created_visto` datetime NOT NULL,
  `md_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimientos_presustentacion`
--

CREATE TABLE `requerimientos_presustentacion` (
  `rp_auto_id` int(11) NOT NULL,
  `rp_formacion` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rp_version` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `rp_nombre` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `rp_descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `rp_documento` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `rp_create` datetime NOT NULL,
  `rp_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rp_estado` tinyint(1) DEFAULT 0,
  `rp_vigencia` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `requerimientos_presustentacion`
--

INSERT INTO `requerimientos_presustentacion` (`rp_auto_id`, `rp_formacion`, `rp_version`, `rp_nombre`, `rp_descripcion`, `rp_documento`, `rp_create`, `rp_updated`, `rp_estado`, `rp_vigencia`) VALUES
(48, '100', '2019-20', 'CANVAS', 'Formato Diligenciado', '1045px-Sena_Colombia_logo.svg.png-49487191212021209-.png', '2019-12-06 05:12:23', '2019-12-12 01:46:09', 1, 1),
(49, '103', '', 'Requisito de Ejemplo para Auxiliares', 'Ok', 'cartoon-cloud-with-rain-drops-isolated-on-white-vector-21864869-removebg-preview.png-83028191206051214-.png', '2019-12-06 05:12:18', '2019-12-06 04:36:18', 1, 1),
(50, '100', '2020-21', 'Ficha de Inscripción de la Unidad Productiva', 'Descripción del formto', '', '2020-11-06 06:11:39', '2020-11-06 17:05:39', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimientos_sustentacion`
--

CREATE TABLE `requerimientos_sustentacion` (
  `rsus_auto_id` int(11) NOT NULL,
  `rsus_formacion` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rsus_version` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `rsus_nombre` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `rsus_descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `rsus_documento` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `rsus_create` datetime NOT NULL,
  `rsus_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rsus_estado` tinyint(1) DEFAULT 0,
  `rsus_vigencia` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `requerimientos_sustentacion`
--

INSERT INTO `requerimientos_sustentacion` (`rsus_auto_id`, `rsus_formacion`, `rsus_version`, `rsus_nombre`, `rsus_descripcion`, `rsus_documento`, `rsus_create`, `rsus_updated`, `rsus_estado`, `rsus_vigencia`) VALUES
(47, '100', '2019-20', 'Informe de Horas', 'Informe de Actividades (880 Horas)', 'UGE - Unidad de Gestión Empresarial - Plataforma para Gestión de Unidades Productivas del SENA (1).xlsx-73995191206051227-.xlsx', '2019-12-06 05:12:31', '2019-12-06 04:34:31', 1, 1),
(48, '100', '2019-20', 'Requerimiento de Ejemplo', 'Ok requerimiento', '9.Certificado Ponente_Sergio Yamit Rivera_page-0001.jpg-53881191212021250-.jpg', '2019-12-12 02:12:08', '2019-12-12 01:38:50', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoformacion`
--

CREATE TABLE `tipoformacion` (
  `tpf_id` int(20) UNSIGNED NOT NULL,
  `tpf_nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tpf_duracion` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tpf_creado` datetime DEFAULT NULL,
  `tpf_updated` timestamp NULL DEFAULT current_timestamp(),
  `tpf_estado` tinyint(1) NOT NULL DEFAULT 1,
  `tpf_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipoformacion`
--

INSERT INTO `tipoformacion` (`tpf_id`, `tpf_nombre`, `tpf_duracion`, `tpf_creado`, `tpf_updated`, `tpf_estado`, `tpf_vigencia`) VALUES
(100, 'Tecnólogo', '18', '2019-04-22 00:00:00', '2019-04-22 15:38:17', 1, 1),
(101, 'Técnico', '12', '2019-04-22 00:00:00', '2019-04-22 15:39:31', 1, 1),
(102, 'Auxiliar', '12', '2019-04-22 00:00:00', '2019-04-22 15:40:02', 1, 1),
(103, 'Operario', '4', '2019-04-22 00:00:00', '2019-04-22 15:40:02', 1, 1),
(104, 'Media Técnica', '24', '2019-07-07 00:00:00', '2019-07-07 19:05:52', 1, 1),
(105, 'Profesional', '60', '2019-12-02 00:00:00', '2019-12-02 13:46:50', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_formaciones_etapas`
--

CREATE TABLE `tipo_formaciones_etapas` (
  `tfe_id_auto` int(11) NOT NULL,
  `tfe_codigo_formacion` int(3) NOT NULL,
  `tfe_codigo_version` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `tfe_nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `tfe_orden` int(3) NOT NULL,
  `tfe_descripcion_corta` text COLLATE utf8_spanish_ci NOT NULL,
  `tfe_descripcion_larga` text COLLATE utf8_spanish_ci NOT NULL,
  `tfe_creacion` datetime NOT NULL,
  `tfe_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tfe_estado` tinyint(1) NOT NULL DEFAULT 1,
  `tfe_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_formaciones_etapas`
--

INSERT INTO `tipo_formaciones_etapas` (`tfe_id_auto`, `tfe_codigo_formacion`, `tfe_codigo_version`, `tfe_nombre`, `tfe_orden`, `tfe_descripcion_corta`, `tfe_descripcion_larga`, `tfe_creacion`, `tfe_updated`, `tfe_estado`, `tfe_vigencia`) VALUES
(9, 100, '2019-1', 'planeacion', 1, 'Este espacio esta reservado para una descripcion mas corta sobre la etapa', 'Este espacio esta reservado para una descripcion completa sobre la etapa', '2019-05-16 06:05:41', '2019-06-27 17:08:40', 1, 0),
(10, 100, '2019-1', 'ejecuciÃ³n', 2, 'Corta Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam porro, rem quos nisi similique.', 'larga Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet temporibus animi minus id, placeat perferendis, obcaecati praesentium expedita molestiae omnis, vitae.', '2019-05-16 07:05:51', '2019-09-12 16:48:33', 1, 1),
(11, 100, '2019-1', 'evaluacion', 3, 'Corta Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam porro, rem quos.', 'larga Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet temporibus animi minus id, placeat perferendis, obcaecati praesentium.', '2019-05-16 07:05:00', '2019-12-09 16:25:46', 1, 1),
(12, 100, '2019-1', 'seguimiento lectiva', 4, 'Corta Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'larga Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet temporibus animi minus id, placeat perferendis. fgfg', '2019-05-16 07:05:10', '2019-06-27 17:08:55', 1, 1),
(13, 100, '2019-1', 'EVALUACIoN lectiva', 5, 'Corta Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam porro, rem quos nisi similique sit nihil.', 'larga Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet temporibus animi minus id, placeat.', '2019-05-16 07:05:32', '2019-06-27 17:08:59', 1, 1),
(16, 102, '', 'ejecuacion', 2, 'CORTA LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. NAM PORRO, REM QUOS NISI SIMILIQUE SIT NIHIL MOLLITIA REPELLENDUS CUPIDITATE? MAGNAM.', 'LARGA LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. AMET TEMPORIBUS ANIMI MINUS ID.', '2019-06-21 06:06:34', '2019-06-21 21:08:28', 1, 1),
(17, 102, '', 'evaluacion', 3, 'CORTA LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. NAM PORRO, REM QUOS NISI SIMILIQUE SIT NIHIL MOLLITIA REPELLENDUS CUPIDITATE? MAGNAM.', 'LARGA LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. AMET TEMPORIBUS ANIMI MINUS ID, PLACEAT PERFERENDIS, OBCAECATI PRAESENTIUM EXPEDITA MOLESTIAE OMNIS.\n', '2019-06-21 06:06:01', '2019-06-21 21:08:17', 1, 1),
(18, 102, '', 'Planeacion', 1, 'CORTA LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. NAM PORRO, REM QUOS NISI SIMILIQUE SIT NIHIL MOLLITIA.', 'LARGA LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. AMET TEMPORIBUS ANIMI MINUS ID, PLACEAT PERFERENDIS, OBCAECATI PRAESENTIUM EXPEDITA MOLESTIAE OMNIS, VITAE, INCIDUNT ITAQUE DOLORE.', '2019-06-21 11:06:46', '2019-06-21 21:04:13', 1, 1),
(19, 103, '', 'PLANEACION AUXILIAR', 1, 'DESCRIPCION AUXILIAR', 'LARGA AUXILIARrrrrrr', '2019-06-25 06:06:23', '2019-06-26 00:28:01', 1, 1),
(20, 103, '', 'EVALUACIÃ“N AUXILIAR', 2, 'DESCRIPCION EVALUACION EVALUACION CORTA', 'DESCRIPCION EVALUACION EVALUACION LARGA', '2019-06-25 09:06:55', '2019-06-25 19:22:55', 1, 1),
(21, 100, '2019-1', 'PLANEACION OPERARIA', 1, 'DESCRIPCION CORTA', 'DESCRIPCION LARGA', '2019-06-26 02:06:52', '2019-06-27 17:09:03', 1, 1),
(22, 100, '2019-1', 'aCTICIDAD PLANEACION', 6, 'SDFSDF', 'SDFSDF', '2019-06-26 02:06:54', '2019-06-27 17:09:07', 1, 1),
(23, 104, '', 'WERWER', 4, '4WR', 'WERWERWER', '2019-06-26 02:06:49', '2019-06-26 00:49:49', 1, 1),
(24, 100, '', 'WERWER', 0, 'WERWER', 'WERWER', '2019-06-27 10:06:25', '2019-06-27 20:43:25', 1, 1),
(25, 100, '', 'FASE DE PLANIFICACIÃ³N', 8, 'DESCRIPCIÃ³N CORTA DE LA FASE', 'DESCRIPCIÃ³N LARGA DE LA ETAPA', '2019-06-27 11:06:44', '2019-06-27 21:00:44', 1, 1),
(26, 100, '', 'PLANEACION', 1, 'DESCRIPCIÃ³N CORTA', 'DESCRIPCIÃ³N LARGA\n', '2019-06-27 11:06:31', '2019-06-27 21:13:31', 1, 1),
(27, 100, '2019-7', 'PLANEACION', 1, 'DESCRIPCIÃ³N CORTA', 'DESCRIPCIÃ³N LARGA\n\n', '2019-06-27 11:06:25', '2019-06-27 21:35:25', 1, 1),
(28, 100, '2019-6', 'PLANEACION DE PRUEBA VERSION 2019-6', 2, 'DESCRIPCIÃ³N CORTA', 'DESCRIPCIÃ³N LARGA\n', '2019-06-27 11:06:09', '2019-06-27 21:37:09', 1, 1),
(29, 100, '2019-12', 'PLANEACIÃ³N', 1, 'FASE PARA DESARROLLAR DURANTE LA FORMULACIÃ³N DEL PROYECTO DE FORMACIÃ³N ACADÃ©MICO ', 'SE CONOCE COMO PLANIFICACIÃ³N, PLANEACIÃ³N O PLANTEAMIENTO, GENERALMENTE EN PAÃ­SES DE HABLA HISPANA, PERO EN EL SENTIDO MÃ¡S UNIVERSAL, IMPLICA TENER UNO O VARIOS OBJETIVOS EN COMÃºN, JUNTO CON ACCIONES REQUERIDAS PARA CONCLUIRSE EXITOSAMENTE.', '2019-09-10 06:09:09', '2019-09-10 16:21:09', 1, 1),
(30, 100, '2019-13', 'VersiÃ³n de la etapa', 1, 'DEMODEMO', 'DEMODEMODEMOs', '2019-09-12 12:09:47', '2019-10-23 02:42:51', 0, 1),
(31, 104, '2019-14', 'PLANEACIÃ³N', 1, 'VERSIÃ³N CON LA CUAL SE INICIARA EL PROCESO DE FORMACIÃ³N.', 'MANTENTE ACTUALIZADO EL DESARROLLO DE PLUGINS ESTÃ¡ CONSTANTEMENTE CAMBIANDO CON CADA NUEVO LANZAMIENTO DE WORDPRESS. MANTENTE AL DÃ­A DE LOS ÃºLTIMOS CAMBIOS SIGUIENDO EL BLOG DEL EQUIPO DE REVISIÃ³N DE PLUGINS.', '2019-10-21 05:10:40', '2019-10-21 03:29:35', 1, 0),
(32, 104, '2019-10', 'PLANEACIÃ³N', 1, 'CORTA', 'LARGEs', '2019-10-21 05:10:15', '2019-10-21 03:30:41', 1, 1),
(33, 100, '2019-18', 'ANÃ¡LISIS ', 1, 'DESCRIPCIÃ³N CORTA', 'DESCRIPCIÃ³N LARGA\n', '2019-11-25 03:11:24', '2019-11-25 14:18:24', 1, 1),
(34, 100, '2019-20', 'Análisis  ', 1, 'Etapa de Análisis ', 'ETAPA PARA IDENTIFICAR...', '2019-12-06 04:12:59', '2019-12-06 03:57:09', 1, 1),
(35, 100, '2019-20', 'PLANEACIóN', 2, 'PLANEAR LA EJECUCIóN DEL PROYECTO PRODUCTIVO', 'PLANEAR EL MODELO DE NEGOCIO PARA PROYECTO PRODUCTIVO', '2019-12-06 04:12:43', '2019-12-06 04:06:34', 1, 1),
(36, 100, '2019-20', 'EJECUCIóN', 3, 'EJECUTAR', 'REALIZAR PROTOTIPO ', '2019-12-06 04:12:34', '2019-12-06 03:53:34', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulaciones`
--

CREATE TABLE `titulaciones` (
  `titu_id` bigint(20) UNSIGNED NOT NULL,
  `titu_ficha` int(11) NOT NULL,
  `titu_version_trazabilidad` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titu_nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titu_inicio` datetime NOT NULL,
  `titu_fin_lectiva` datetime NOT NULL,
  `titu_fin_ficha` datetime NOT NULL,
  `titu_tipo_formacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titu_cancelada` tinyint(1) NOT NULL DEFAULT 0,
  `titu_lectiva_fin` tinyint(1) NOT NULL DEFAULT 0,
  `titu_productiva_fin` tinyint(1) NOT NULL DEFAULT 0,
  `titu_serrada_fin` tinyint(1) NOT NULL DEFAULT 0,
  `titu_lanzamiento` tinyint(1) NOT NULL DEFAULT 0,
  `titu_prog_pres` tinyint(1) NOT NULL DEFAULT 0,
  `titu_prog_sus` tinyint(1) NOT NULL DEFAULT 0,
  `titu_create` datetime NOT NULL,
  `titu_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `titu_estado` tinyint(4) NOT NULL DEFAULT 1,
  `titu_vigencia` tinyint(4) NOT NULL DEFAULT 1,
  `titu_etapa_actual` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titu_fetapa_actual` datetime DEFAULT NULL,
  `titu_certificado` tinyint(1) DEFAULT 0,
  `titu_fcertificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `titulaciones`
--

INSERT INTO `titulaciones` (`titu_id`, `titu_ficha`, `titu_version_trazabilidad`, `titu_nombre`, `titu_inicio`, `titu_fin_lectiva`, `titu_fin_ficha`, `titu_tipo_formacion`, `titu_cancelada`, `titu_lectiva_fin`, `titu_productiva_fin`, `titu_serrada_fin`, `titu_lanzamiento`, `titu_prog_pres`, `titu_prog_sus`, `titu_create`, `titu_updated`, `titu_estado`, `titu_vigencia`, `titu_etapa_actual`, `titu_fetapa_actual`, `titu_certificado`, `titu_fcertificado`) VALUES
(11, 1023130, '2019-20', 'Análisis y Desarrollo de Sistemas de Información', '2019-01-01 00:00:00', '2019-06-01 00:00:00', '2020-12-01 00:00:00', '100', 0, 0, 0, 0, 0, 1, 0, '2019-06-07 00:00:00', '2020-11-06 18:27:53', 0, 1, NULL, NULL, 1, NULL),
(30, 1695497, '2019-1', 'Análisis y Desarrollo de Sistemas de Información	', '2018-07-16 00:00:00', '2019-12-15 00:00:00', '2020-07-16 00:00:00', '100', 0, 0, 0, 0, 0, 1, 0, '2019-09-13 00:00:00', '2019-12-06 03:39:53', 1, 1, NULL, NULL, 0, NULL),
(31, 1834735, '2019-1', 'Programación de Software', '2019-04-17 00:00:00', '2020-04-17 00:00:00', '2020-11-17 00:00:00', '101', 0, 0, 0, 0, 0, 1, 0, '2019-09-16 00:00:00', '2019-12-06 03:40:05', 1, 1, NULL, NULL, 0, NULL),
(32, 1835318, '2019-1', 'Mesa y Bar\n', '2019-04-17 00:00:00', '2020-04-17 00:00:00', '2020-11-17 00:00:00', '101', 0, 0, 0, 0, 0, 1, 0, '2019-09-16 00:00:00', '2019-12-06 03:40:14', 1, 1, NULL, NULL, 0, NULL),
(51, 1904436, '', 'Gestión Empresarial', '2019-05-01 00:00:00', '2020-11-06 00:00:00', '2021-05-06 00:00:00', '100', 0, 0, 0, 0, 0, 0, 0, '2019-12-11 00:00:00', '2019-12-11 14:39:34', 1, 1, NULL, NULL, 0, NULL),
(52, 1904442, '', 'Producción Agrícola', '2019-05-05 00:00:00', '2020-11-05 00:00:00', '2021-05-05 00:00:00', '100', 0, 0, 0, 0, 0, 0, 0, '2019-12-11 00:00:00', '2019-12-11 16:17:25', 1, 1, NULL, NULL, 0, NULL),
(53, 1905307, '', 'Gestión de Mercados', '2019-05-05 00:00:00', '2019-11-05 00:00:00', '2021-05-05 00:00:00', '100', 0, 0, 0, 0, 0, 0, 0, '2019-12-11 00:00:00', '2019-12-11 16:54:35', 1, 1, NULL, NULL, 0, NULL),
(54, 1962951, '', 'Construcción de Edificaciones', '2019-05-05 00:00:00', '2020-11-05 00:00:00', '2021-05-05 00:00:00', '100', 0, 0, 0, 0, 0, 0, 0, '2019-12-11 00:00:00', '2019-12-11 18:00:31', 1, 1, NULL, NULL, 0, NULL),
(55, 1963200, '', 'BILINGUAL EXPERT ON BUSINESS PROCESS OUTSOURCING', '2019-06-05 00:00:00', '2020-05-05 00:00:00', '2020-05-09 00:00:00', '101', 0, 0, 0, 0, 0, 0, 0, '2019-12-13 00:00:00', '2019-12-13 02:14:48', 1, 1, NULL, NULL, 0, NULL),
(56, 1963219, '', 'CONTABILIZACIÓN DE OPERACIONES COMERCIALES Y FINANCIERAS', '2019-05-05 00:00:00', '2020-05-05 00:00:00', '2020-05-06 00:00:00', '101', 0, 0, 0, 0, 0, 0, 0, '2019-12-13 00:00:00', '2019-12-13 02:41:53', 1, 1, NULL, NULL, 0, NULL),
(57, 1963233, '', 'ATENCIÓN INTEGRAL A LA PRIMERA INFANCIA.', '2019-05-05 00:00:00', '2020-05-05 00:00:00', '2020-05-11 00:00:00', '101', 0, 0, 0, 0, 0, 0, 0, '2019-12-16 00:00:00', '2019-12-16 14:15:19', 1, 1, NULL, NULL, 0, NULL),
(58, 1963252, '', 'TÉCNICO EN PELUQUERIA', '2019-09-09 00:00:00', '2020-09-09 00:00:00', '2020-09-09 00:00:00', '101', 0, 0, 0, 0, 0, 0, 0, '2019-12-19 00:00:00', '2019-12-19 03:01:33', 1, 1, NULL, NULL, 0, NULL),
(59, 1963274, '', 'ATENCION INTEGRAL A LA PRIMERA INFANCIA.', '2019-12-04 00:00:00', '2019-12-13 00:00:00', '2019-12-05 00:00:00', '101', 0, 0, 0, 0, 0, 0, 0, '2019-12-22 00:00:00', '2019-12-22 00:54:59', 1, 1, NULL, NULL, 0, NULL),
(60, 1963282, '', 'PRODUCCIÓN AGROPECUARIA ECOLÓGICA', '2019-05-05 00:00:00', '2019-02-02 00:00:00', '2020-02-02 00:00:00', '100', 0, 0, 0, 0, 0, 0, 0, '2019-12-22 00:00:00', '2019-12-22 01:21:14', 1, 1, NULL, NULL, 0, NULL),
(61, 1963287, '', 'GESTIÓN DOCUMENTAL', '2019-12-01 00:00:00', '2019-12-05 00:00:00', '2019-12-06 00:00:00', '100', 0, 0, 0, 0, 0, 0, 0, '2019-12-22 00:00:00', '2019-12-22 01:48:03', 1, 1, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulacion_equipo_ejecutor`
--

CREATE TABLE `titulacion_equipo_ejecutor` (
  `tee_auto_id` int(11) NOT NULL,
  `tee_titulacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tee_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tee_tipo_asesor` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tee_estado` tinyint(1) NOT NULL DEFAULT 1,
  `tee_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `tee_created` datetime NOT NULL,
  `tee_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `titulacion_equipo_ejecutor`
--

INSERT INTO `titulacion_equipo_ejecutor` (`tee_auto_id`, `tee_titulacion`, `tee_documento`, `tee_tipo_asesor`, `tee_estado`, `tee_vigencia`, `tee_created`, `tee_updated`) VALUES
(46, '11', '1084578956', '1', 1, 0, '2019-12-06 04:12:15', '2019-12-06 03:31:15'),
(47, '11', '123215', '1', 1, 0, '2019-12-09 02:12:34', '2020-04-17 08:42:35'),
(48, '30', '1084578956', '1', 1, 1, '2019-12-09 02:12:52', '2019-12-09 13:24:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulacion_fase`
--

CREATE TABLE `titulacion_fase` (
  `tfa_id_auto` int(11) NOT NULL,
  `tfa_codigo` varchar(20) NOT NULL,
  `tfa_fase` varchar(30) NOT NULL DEFAULT '1',
  `tfa_created` datetime(4) NOT NULL,
  `tfa_updated` timestamp(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `titulacion_fase`
--

INSERT INTO `titulacion_fase` (`tfa_id_auto`, `tfa_codigo`, `tfa_fase`, `tfa_created`, `tfa_updated`) VALUES
(1, '11', '1', '2019-09-16 10:09:43.0000', '2019-09-16 20:39:43.7404'),
(2, '12', '1', '2019-09-16 10:09:43.0000', '2019-09-16 20:39:43.7534'),
(3, '13', '1', '2019-09-16 10:09:43.0000', '2019-09-16 20:39:43.7584'),
(4, '17', '2', '2019-09-16 10:09:43.0000', '2019-09-16 21:35:40.3637'),
(5, '18', '1', '2019-09-16 10:09:43.0000', '2019-09-16 20:39:43.7674'),
(6, '23', '1', '2019-09-16 10:09:43.0000', '2019-09-16 20:39:43.7734'),
(7, '24', '2', '2019-09-16 10:09:43.0000', '2019-09-16 21:36:06.5507'),
(8, '25', '3', '2019-09-16 10:09:43.0000', '2019-09-16 21:36:10.1727'),
(9, '26', '1', '2019-09-16 10:09:43.0000', '2019-09-16 20:39:43.7914'),
(10, '27', '1', '2019-09-16 10:09:43.0000', '2019-09-16 20:39:43.7954'),
(11, '28', '1', '2019-09-16 10:09:43.0000', '2019-09-16 20:39:43.7984'),
(12, '29', '1', '2019-09-16 10:09:43.0000', '2019-09-16 20:39:43.8004'),
(13, '30', '1', '2019-09-16 10:09:43.0000', '2019-09-16 20:39:43.8054'),
(14, '11', '1', '2019-09-16 10:09:48.0000', '2019-09-16 20:45:48.3715'),
(924, '11', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.5149'),
(925, '12', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.6669'),
(926, '13', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.6689'),
(927, '17', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.6999'),
(928, '18', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.7029'),
(929, '23', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.7689'),
(930, '24', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.7879'),
(931, '25', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.7899'),
(932, '26', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.8159'),
(933, '27', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.8559'),
(934, '28', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.8569'),
(935, '29', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.8699'),
(936, '30', '1', '2019-09-18 12:09:44.0000', '2019-09-17 22:17:44.9329'),
(937, '31', '1', '2019-09-18 12:09:45.0000', '2019-09-17 22:17:45.1450'),
(938, '32', '1', '2019-09-18 12:09:45.0000', '2019-09-17 22:17:45.1740'),
(946, '45', '2', '2019-12-02 00:00:00.0000', '2019-12-02 20:21:51.0029'),
(947, '46', '1', '2019-12-02 00:00:00.0000', '2019-12-02 20:23:15.4769'),
(948, '47', '3', '2019-12-02 00:00:00.0000', '2019-12-02 20:23:49.6719'),
(949, '49', '1', '2019-12-02 00:00:00.0000', '2019-12-02 20:27:03.5139'),
(950, '50', '2', '2019-12-02 00:00:00.0000', '2019-12-02 20:33:22.5459'),
(951, '0', '3', '2019-12-11 00:00:00.0000', '2019-12-11 14:37:52.1354'),
(952, '51', '1', '2019-12-11 00:00:00.0000', '2019-12-11 14:39:34.2396'),
(953, '52', '1', '2019-12-11 00:00:00.0000', '2019-12-11 16:17:25.7641'),
(954, '53', '2', '2019-12-11 00:00:00.0000', '2019-12-11 16:54:35.1015'),
(955, '54', '1', '2019-12-11 00:00:00.0000', '2019-12-11 18:00:31.8923'),
(956, '55', '1', '2019-12-13 00:00:00.0000', '2019-12-13 02:14:48.7568'),
(957, '56', '1', '2019-12-13 00:00:00.0000', '2019-12-13 02:41:53.7392'),
(958, '57', '1', '2019-12-16 00:00:00.0000', '2019-12-16 14:15:19.5327'),
(959, '58', '1', '2019-12-19 00:00:00.0000', '2019-12-19 03:00:31.2372'),
(960, '59', '3', '2019-12-22 00:00:00.0000', '2019-12-22 00:54:59.5303'),
(961, '60', '2', '2019-12-22 00:00:00.0000', '2019-12-22 01:21:15.0656'),
(962, '61', '3', '2019-12-22 00:00:00.0000', '2019-12-22 01:48:03.0930');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulacion_instructor_lider`
--

CREATE TABLE `titulacion_instructor_lider` (
  `til_auto_id` int(11) NOT NULL,
  `til_titulacion` int(10) NOT NULL,
  `til_documento` int(15) NOT NULL,
  `til_estado` tinyint(1) NOT NULL DEFAULT 0,
  `til_creacion` datetime NOT NULL,
  `til_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `titulacion_instructor_lider`
--

INSERT INTO `titulacion_instructor_lider` (`til_auto_id`, `til_titulacion`, `til_documento`, `til_estado`, `til_creacion`, `til_updated`) VALUES
(37, 27, 123215, 0, '2019-12-06 04:12:50', '2019-12-06 03:25:37'),
(38, 27, 1084578956, 0, '2019-12-06 04:12:10', '2019-12-06 03:26:35'),
(39, 27, 123215, 0, '2019-12-06 04:12:48', '2019-12-06 03:27:02'),
(40, 27, 1084578956, 0, '2019-12-06 04:12:14', '2019-12-06 03:27:36'),
(41, 11, 123215, 0, '2019-12-06 04:12:22', '2019-12-22 18:06:12'),
(42, 30, 123215, 1, '2019-12-06 04:12:19', '2019-12-06 03:45:19'),
(44, 11, 1084578956, 0, '2019-12-22 07:12:29', '2019-12-22 18:05:19'),
(45, 11, 123215, 0, '2019-12-22 07:12:45', '2019-12-22 18:07:19'),
(46, 11, 123215, 1, '2019-12-22 07:12:34', '2019-12-22 18:07:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulacion_rol_asesor`
--

CREATE TABLE `titulacion_rol_asesor` (
  `tra_auto_id` int(11) NOT NULL,
  `tra_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tra_created` datetime NOT NULL,
  `tra_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tra_descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `tra_estado` tinyint(1) NOT NULL DEFAULT 1,
  `tra_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `titulacion_rol_asesor`
--

INSERT INTO `titulacion_rol_asesor` (`tra_auto_id`, `tra_nombre`, `tra_created`, `tra_updated`, `tra_descripcion`, `tra_estado`, `tra_vigencia`) VALUES
(1, 'Asesor Contable', '2019-10-30 00:00:00', '2019-12-22 15:47:49', 'Asesorías Contables y Financieras ', 1, 1),
(2, 'Asesor Empresarial', '2019-10-30 00:00:00', '2019-10-30 08:38:05', 'Asesorias en el ambito empresarial', 1, 1),
(3, 'Asesor Ingles', '2019-10-30 00:00:00', '2019-12-04 16:56:59', 'Asesorias en Ingles ', 1, 1),
(4, 'Asesor de Mercadeo', '2019-10-30 09:10:09', '2019-12-04 16:58:02', 'Asesor de Mercadeo', 1, 0),
(5, 'Asesor de Emprendimiento', '2019-12-04 05:12:13', '2019-12-04 16:57:37', 'Encargado de fomentar el espÃ­ritu empresarial en los aprendices e Instructores', 0, 0),
(6, 'Asesor Mercadeo', '2020-11-06 06:11:11', '2020-11-06 17:04:27', 'el mercader de venecia', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_formacion`
--

CREATE TABLE `unidad_formacion` (
  `ufor_auto_id` int(11) NOT NULL,
  `ufor_codigo_up` int(15) NOT NULL,
  `ufor_id_titulacion` int(15) NOT NULL,
  `ufor_id_tipo_formacion` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `unidad_formacion`
--

INSERT INTO `unidad_formacion` (`ufor_auto_id`, `ufor_codigo_up`, `ufor_id_titulacion`, `ufor_id_tipo_formacion`) VALUES
(6, 7, 11, 100),
(7, 8, 11, 100),
(8, 9, 30, 100),
(9, 10, 11, 100),
(10, 11, 11, 100),
(11, 12, 27, 101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_header`
--

CREATE TABLE `unidad_header` (
  `uh_auto_id` int(11) NOT NULL,
  `uh_asesor_registrador` int(15) NOT NULL,
  `uh_lider_unidad_registrador` int(15) NOT NULL,
  `uh_fecha_registro` datetime NOT NULL,
  `uh_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `uh_estado` tinyint(1) NOT NULL DEFAULT 1,
  `uh_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `unidad_header`
--

INSERT INTO `unidad_header` (`uh_auto_id`, `uh_asesor_registrador`, `uh_lider_unidad_registrador`, `uh_fecha_registro`, `uh_updated`, `uh_estado`, `uh_vigencia`) VALUES
(7, 1084577898, 1080427827, '2019-10-20 06:10:45', '2019-12-22 19:25:31', 1, 1),
(8, 1084577898, 20202030, '2019-10-20 07:10:51', '2019-10-20 17:08:51', 1, 1),
(9, 1084577898, 1079412566, '2019-10-21 11:10:48', '2019-10-21 21:19:48', 1, 1),
(10, 1, 1025898888, '2019-12-06 01:12:55', '2019-12-06 00:55:55', 1, 1),
(11, 1, 1084577898, '2019-12-06 03:12:19', '2019-12-18 23:28:54', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_info`
--

CREATE TABLE `unidad_info` (
  `uin_codigo` int(11) NOT NULL,
  `uin_nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `uin_descripcion_servicios` text COLLATE utf8_spanish_ci NOT NULL,
  `uin_departamento` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `uin_ciudad` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `uin_direccion` varchar(41) COLLATE utf8_spanish_ci NOT NULL,
  `uin_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `unidad_info`
--

INSERT INTO `unidad_info` (`uin_codigo`, `uin_nombre`, `uin_descripcion_servicios`, `uin_departamento`, `uin_ciudad`, `uin_direccion`, `uin_updated`) VALUES
(7, 'DESOFT', 'SOLUCIONES INFORMáTICAS A LA MEDIDA', 'HUILA', 'NATáGA', 'LA PLATA', '2019-12-06 02:05:06'),
(8, 'ADVANCED CODE', 'APLICACIONES MÃ³VILES Y SISTEMAS DE INFORMACIÃ³N PARA ESCUELAS.', 'HUILA', 'LA PLATA HUILA', 'LA PLATA', '2019-10-20 17:08:52'),
(9, 'KORESOFT', 'PAGINAS WEB ', 'HUILA', 'LA PLATA', 'LA PLATA', '2019-10-21 21:19:48'),
(10, 'MIROSOFT', 'DESARROLLO DE APLICACIONES MóVILES PARA VENDEDORES', 'HUILA', 'BARRIO CANADA', 'LA PLATA', '2019-12-06 00:55:55'),
(11, 'APPLE', 'DESARROLLO DE APLICACIONES EN LA NUBE', 'HUILA', 'BARRIO PAéZ', 'LA PLATA', '2019-12-06 02:09:19'),
(12, 'ELECTRóN', 'SERVICIOS DOMéSTICOS', 'HUILA', '', '', '2019-12-06 02:49:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_integrantes`
--

CREATE TABLE `unidad_integrantes` (
  `uit_auto_id` int(11) NOT NULL,
  `uit_unidad` int(20) NOT NULL,
  `uit_codigo_usuario` int(15) NOT NULL,
  `uit_rol_integrante` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `uit_titulacion` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `uit_tipo_formacion` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `uit_fecha_registro` datetime NOT NULL,
  `uit_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `uit_estado` tinyint(1) NOT NULL DEFAULT 1,
  `uit_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `unidad_integrantes`
--

INSERT INTO `unidad_integrantes` (`uit_auto_id`, `uit_unidad`, `uit_codigo_usuario`, `uit_rol_integrante`, `uit_titulacion`, `uit_tipo_formacion`, `uit_fecha_registro`, `uit_updated`, `uit_estado`, `uit_vigencia`) VALUES
(21, 7, 1080427827, 'Lider', '11', '100', '2019-10-20 06:10:45', '2019-10-20 16:55:45', 1, 1),
(22, 8, 20202030, 'Lider', '11', '100', '2019-10-20 07:10:51', '2019-10-20 17:08:52', 1, 1),
(23, 9, 1079412566, 'Lider', '30', '100', '2019-10-21 11:10:48', '2019-10-21 21:19:48', 1, 1),
(24, 10, 1025898888, 'Lider', '11', '100', '2019-12-06 01:12:55', '2019-12-06 00:55:55', 1, 1),
(25, 11, 1084577898, 'Lider', '11', '100', '2019-12-06 03:12:19', '2019-12-12 00:51:46', 0, 0),
(26, 12, 1006845926, 'Lider', '27', '101', '2019-12-06 03:12:43', '2019-12-06 02:47:43', 1, 1),
(27, 8, 1234567890, '', '11', '100', '2019-12-12 01:12:35', '2019-12-12 00:28:35', 1, 1),
(28, 11, 1084577898, '', '11', '100', '2019-12-12 01:12:08', '2019-12-12 00:52:08', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass2` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_users` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_use` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `pass2`, `estado_users`, `remember_token`, `token_use`, `created_at`, `updated_at`) VALUES
(115, 'juanma@misena.edu.co', '8a5a0b430d771aefc3d8769bf73d12f58c170b09', 1, NULL, 0, '2019-11-25 02:11:08', '2019-11-25 13:37:08'),
(116, 'juan@misena.edu.co', '519d2afd42c34cd95ae9edea84bf6a8a50148035', 1, NULL, 0, '2019-12-02 11:12:19', '2019-12-02 22:19:19'),
(117, 'l@gmail.com', '54c1792c99a96a96a2881600f0cce1d81061e8b8', 1, NULL, 0, '2019-12-05 10:12:03', '2019-12-05 21:58:03'),
(118, 'hernas@gmail.com', '334960c08dd03685fddd61fac9df90a9ee1b14e4', 1, NULL, 0, '2019-12-06 01:12:18', '2019-12-06 00:46:18'),
(119, 'syrivera89@misena.edu.co', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, NULL, 0, NULL, '2019-05-07 05:00:00'),
(120, 'jtobarrios99@gmail.com', '81c485e4286ad398dc506df14387c213e1166157', 1, NULL, 0, '2019-12-11 03:12:10', '2019-12-11 14:41:10'),
(121, 'alejoo0929@outlook.com', '91bb5c99a544325b1a4af46790d7f49ef8103ef6', 1, NULL, 0, '2019-12-11 03:12:19', '2019-12-11 14:43:19'),
(122, 'angyeclavijo@gmail.com', '4deb30f969ca41726af69ec5cabaf5dbc1575d1d', 1, NULL, 0, '2019-12-11 03:12:12', '2019-12-11 14:46:13'),
(123, 'gersonalmario@gmail.com', '55d8f87da3ca9e97ac7acce5e69bc9ccf6b4ffa3', 1, NULL, 0, '2019-12-11 04:12:35', '2019-12-11 15:19:35'),
(124, 'jccaldon1@misena.edu.co', '0d89dbf8e54a4b651ce669f087ce9474d6b069aa', 1, NULL, 0, '2019-12-11 04:12:50', '2019-12-11 15:20:50'),
(125, 'apariciocolloecue.12345@gmail.com', '7cebaffcc25b93720bef636cdf8a92cf5fe8122c', 1, NULL, 0, '2019-12-11 04:12:17', '2019-12-11 15:24:17'),
(126, 'adbarrios10@misena.edu.co', '1218c0b52d76c4a8a5bd3b313a17af2a4599d55c', 1, NULL, 0, '2019-12-11 04:12:53', '2019-12-11 15:25:53'),
(127, 'cpastuso47@gmail.com', 'c3f1d01adb39d4b10bd323428229a5fd221073cc', 1, NULL, 0, '2019-12-11 04:12:23', '2019-12-11 15:27:24'),
(128, 'josemag1988@hotmail.com', '89df304c609cc7bbe3ad7a15133ac828f208fc65', 1, NULL, 0, '2019-12-11 04:12:59', '2019-12-11 15:42:59'),
(129, 'yepesmenza1@gmail.com', 'ba12609bade8f78631372a9a95727ae193aa8521', 1, NULL, 0, '2019-12-11 04:12:12', '2019-12-11 15:45:12'),
(130, 'lauraccs98@hotmail.com', 'bfa9c140430089c3b54529ec2b04c2d50076072b', 1, NULL, 0, '2019-12-11 04:12:25', '2019-12-11 15:46:25'),
(131, 'cristian.liscano@hotmail.com', 'e2474082bbfaa924f8d02aa2750ec07c3a0b1053', 1, NULL, 0, '2019-12-11 04:12:23', '2019-12-11 15:47:24'),
(132, 'andrealosada12@hotmail.com', '2ce16fdddacd4181ec10c0b6502d955319a730d7', 1, NULL, 0, '2019-12-11 04:12:02', '2019-12-11 15:49:03'),
(133, 'germanchozantoz@gmail.com', '9ec5a1b7c662884c4c6c9df76c1d2f82b487f9bf', 1, NULL, 0, '2019-12-11 04:12:06', '2019-12-11 15:50:06'),
(134, 'yulyalejandracarvajal98@gmail.com', 'b822628c7c23bb530e8eec1912c485ead1e5b9d9', 1, NULL, 0, '2019-12-11 04:12:18', '2019-12-11 15:51:18'),
(135, 'dianajeraldines@gmail.com', '70d7d08aea6eb1b997638612c886b71f0f5fe591', 1, NULL, 0, '2019-12-11 04:12:23', '2019-12-11 15:52:23'),
(136, 'GUARACAA01@GMAIL.COM', '90e1d6e670874043fc89eeabedc3291d0810a7b3', 1, NULL, 0, '2019-12-11 04:12:12', '2019-12-11 15:53:14'),
(137, 'luzamparoarredondo1@gmail.com', '7e57b0393185c9156d508d13b0b6c03ffe7070aa', 1, NULL, 0, '2019-12-11 04:12:09', '2019-12-11 15:54:09'),
(138, 'oscarvalencia25@hotmail.com', 'c13d06d1b91478e13bb081e44d55e0c8d409ab49', 1, NULL, 0, '2019-12-11 04:12:12', '2019-12-11 15:55:13'),
(139, 'constancitacano88@gmail.com', '4a6d29460640b5087859a9e17a04651013b7efbc', 1, NULL, 0, '2019-12-11 04:12:15', '2019-12-11 15:56:15'),
(140, 'linamarcelalemuscstillo@gmail.com', '5e1c1d97152f52cf42d23b837723043713520832', 1, NULL, 0, '2019-12-11 04:12:18', '2019-12-11 15:57:18'),
(141, 'danielstifen29@gmail.com', '4641eb4c117a309bf45b13b643111d13aac0a1eb', 1, NULL, 0, '2019-12-11 04:12:16', '2019-12-11 15:58:16'),
(142, 'danielamedina2708@gmail.com', '48b84af6481b65cc330c5c7c1e7830054a6a3b28', 1, NULL, 0, '2019-12-11 04:12:09', '2019-12-11 15:59:09'),
(143, 'raordo23@gmail.com', '68fd23899c514169478a47e9122002e5218a89ec', 1, NULL, 0, '2019-12-11 05:12:17', '2019-12-11 16:00:18'),
(144, 'ricargar040217@gmail.com', 'eced4b758408c14e88b0a76ffac0b40abae4edc6', 1, NULL, 0, '2019-12-11 05:12:15', '2019-12-11 16:01:15'),
(145, 'yilariasceba@gmail.com', 'c19d158e09ca52b9c442086a4adb4da1a133ebb5', 1, NULL, 0, '2019-12-11 05:12:05', '2019-12-11 16:02:06'),
(146, 'cris15112001@hotmail.com', '4e82bee1d8fe45935892535cd6f6c04cfb2b48b9', 1, NULL, 0, '2019-12-11 05:12:56', '2019-12-11 16:02:57'),
(147, 'SANDRA1.0AVON@hotmail.com', '44a199d3bfcaa7876b5950d484e6ad9686d06ef0', 1, NULL, 0, '2019-12-11 05:12:50', '2019-12-11 16:03:51'),
(148, 'lisdayanaibarra@outlook.com', 'b6d0288d20800c4e7040a68c52282b506454682c', 1, NULL, 0, '2019-12-11 05:12:06', '2019-12-11 16:05:06'),
(149, 'julianaossa2002@gmail.com', 'e625b273286dc67c831531f4961cbfdbace54377', 1, NULL, 0, '2019-12-11 05:12:55', '2019-12-11 16:05:56'),
(150, 'simonjaramillo87@gmail.com', '177d69d4e396dedb24b41f476ca2c0158e38f290', 1, NULL, 0, '2019-12-11 05:12:39', '2019-12-11 16:18:39'),
(151, 'ANDERSON123LOLJ@GMAIL.COM', '8a9d93e9e18ae5b4a06fd3b2f04f203d8f85333d', 1, NULL, 0, '2019-12-11 05:12:23', '2019-12-11 16:19:23'),
(152, 'mramos978@misena.edu.co', 'c2bd3906a6797395e55ad2550dc99c81cb62c584', 1, NULL, 0, '2019-12-11 05:12:16', '2019-12-11 16:20:16'),
(153, 'elnima2@gmail.com', '1b20868d6682d127470667781beb4d3be38e0d9d', 1, NULL, 0, '2019-12-11 05:12:02', '2019-12-11 16:21:03'),
(154, 'davidyy417@gmail.com', '41dcd50c024f8133b21e7b3b046a0517eec45e89', 1, NULL, 0, '2019-12-11 05:12:13', '2019-12-11 16:22:13'),
(155, 'tatiliponce18.f@gmail.com', '6f0cc26d3d19a06abed802c08d1b0feaa17c35ca', 1, NULL, 0, '2019-12-11 05:12:18', '2019-12-11 16:23:18'),
(156, 'camilocomunica12@gmail.com', '5d22ee8256ebdceb463e57d42bfe0f7dc48cd4d5', 1, NULL, 0, '2019-12-11 05:12:08', '2019-12-11 16:24:08'),
(157, 'maidyfernandachantre@gmail.com', 'e39e45e6f924d473216b1b0dc3a0f0e22fb5b04e', 1, NULL, 0, '2019-12-11 05:12:05', '2019-12-11 16:25:05'),
(158, 'mayerlyvelasquito@gmail.com', '94c6bac5f04ca5d151c3a450b2797136782b5642', 1, NULL, 0, '2019-12-11 05:12:52', '2019-12-11 16:25:52'),
(159, 'yoveco23@gmail.com', 'e297c2e9005d32a3f822a2aaa433f27e84ca0a19', 1, NULL, 0, '2019-12-11 05:12:40', '2019-12-11 16:26:40'),
(160, 'carlosandreshorta1@gmail.com', '547a4fe58be7c869a6b8aae96343970e7bb9a5ea', 1, NULL, 0, '2019-12-11 05:12:27', '2019-12-11 16:27:27'),
(161, 'miggeyvi.9@gmail.com', '80206050c15328daa0a8cad7dd2cce5d5125818f', 1, NULL, 0, '2019-12-11 05:12:18', '2019-12-11 16:28:18'),
(162, 'erik-2609@hotmail.com', '612b6c106abf442df099109f0b0915e43176ef97', 1, NULL, 0, '2019-12-11 05:12:08', '2019-12-11 16:29:08'),
(163, 'adrian-041994@hotmail.com', '1aac3287becf4c3f6edddc4754b183ed037271df', 1, NULL, 0, '2019-12-11 05:12:59', '2019-12-11 16:29:59'),
(164, 'medinatunja26@gmail.com', '59a36ab37c8e8321b945c5a63a0f4238b67ec9a8', 1, NULL, 0, '2019-12-11 05:12:49', '2019-12-11 16:30:49'),
(165, 'amavila558@misena.edu.co', 'ba6d1f10240334c896050c111d02597f89d26c63', 1, NULL, 0, '2019-12-11 05:12:32', '2019-12-11 16:31:32'),
(166, 'monialejara@gmail.com', '77db500178a6db81758900e4dbe41fc23e3c3c2a', 1, NULL, 0, '2019-12-11 05:12:19', '2019-12-11 16:32:19'),
(167, 'patriciayasnoquina@gmail.com', 'f03e54ce40834a30436db13e86af99db11975e45', 1, NULL, 0, '2019-12-11 05:12:14', '2019-12-11 16:33:15'),
(168, 'anyipaolapetevi24@gmail.com', '9a404635ebf852d173cbc7b4a2d81f4177e283f8', 1, NULL, 0, '2019-12-11 05:12:11', '2019-12-11 16:34:11'),
(170, 'danielvitoviz23@gmail.com', 'f61fa4559d1b25033a0091fb0a59afba62044fc2', 1, NULL, 0, '2019-12-11 05:12:10', '2019-12-11 16:36:10'),
(171, 'yuli13rojas13@hotmail.com', '8961bd754e71624590be9b21427b112e07cd5d7d', 1, NULL, 0, '2019-12-11 05:12:11', '2019-12-11 16:37:12'),
(172, 'jhonnyanaya11@gmail.com', '426722f939ef432587333b103c0bea0708585e44', 1, NULL, 0, '2019-12-11 05:12:43', '2019-12-11 16:39:44'),
(173, 'ahudryramirezdiaz18@gmail.com', '54b7323882a2ead09fcfed82816b0faa04eea75a', 1, NULL, 0, '2019-12-11 05:12:42', '2019-12-11 16:40:43'),
(174, 'pachecob750@gmail.com', '877fe7755f82d57c96f9d915b20a5ecf411189f2', 1, NULL, 0, '2019-12-11 05:12:39', '2019-12-11 16:41:39'),
(175, 'juliandavidperezdiaz885@gmail.com', '373bebd72a83fb249f1d9011f4fd9baf6bbdd23a', 1, NULL, 0, '2019-12-11 05:12:53', '2019-12-11 16:42:53'),
(176, 'yilver18campos@gmail.com', '2f17d3ec484a0ccfd5944bb365964c550080b8df', 1, NULL, 0, '2019-12-11 05:12:39', '2019-12-11 16:43:39'),
(178, 'jheandresalvarado90@gmail.com', '8a33b95d264a4331ede260cdc17f90a57c029232', 1, NULL, 0, '2019-12-11 05:12:38', '2019-12-11 16:45:38'),
(179, 'ed.mauricio1245@gmail.com', '3a80ea07868b7dd731999179f0310a9b43fb8f16', 1, NULL, 0, '2019-12-11 05:12:33', '2019-12-11 16:46:34'),
(180, 'juliandgm17@gmail.com', 'c1750785f6304440ae3808d13fefdb2a4ec336dd', 1, NULL, 0, '2019-12-11 05:12:18', '2019-12-11 16:56:19'),
(181, 'yulliguaraka@gmail.com', '2bb1013f6893cc670546eaf7f29f8851412dee8d', 1, NULL, 0, '2019-12-11 05:12:07', '2019-12-11 16:57:07'),
(182, 'indriyulaidy12@gmail.com', 'ece77693313df447752f3b97d1503ed4b67a3e5e', 1, NULL, 0, '2019-12-11 05:12:05', '2019-12-11 16:58:06'),
(183, 'ruizgomeza421@gmail.com', '59616fd8faec450618461309e579c58b0c44b5ec', 1, NULL, 0, '2019-12-11 05:12:11', '2019-12-11 16:59:11'),
(184, 'sergiomendezenrique575@gmail.com', '76576885334ca880139585b21c2746bdccc31f72', 1, NULL, 0, '2019-12-11 06:12:01', '2019-12-11 17:00:02'),
(185, 'edwinandresleon10@gmail.com', 'fca2ee7064b4497edad56ee655a65602fce503cd', 1, NULL, 0, '2019-12-11 06:12:49', '2019-12-11 17:00:49'),
(186, 'katerineramos259@gmail.com', '32107ef574113e7256b9920758adf7becdfb4d53', 1, NULL, 0, '2019-12-11 06:12:43', '2019-12-11 17:01:43'),
(187, 'stiven.kabrera7@gmail.com', '3aaf339308631e8e9d40d2c0f8260c725ce0ff8f', 1, NULL, 0, '2019-12-11 06:12:27', '2019-12-11 17:02:28'),
(188, 'katerinvalentina.cortes@gmail.com', 'f2a447218e40d86b7d4b75945bbcb07bd7794d93', 1, NULL, 0, '2019-12-11 06:12:21', '2019-12-11 17:03:21'),
(189, 'oscarleiva189@gmail.com', '49029476597768aee15fec1db44fb1b9fc033e82', 1, NULL, 0, '2019-12-11 06:12:03', '2019-12-11 17:04:03'),
(190, 'Alexanderortizperdomo@gmail.com', 'ada3dfc7a090bbdc407c8a89400cef8af0422518', 1, NULL, 0, '2019-12-11 06:12:48', '2019-12-11 17:04:48'),
(191, 'santacruzaldair169@gmail.com', '19b05a372e65744e6daec527c98fe71b13bf4d33', 1, NULL, 0, '2019-12-11 06:12:34', '2019-12-11 17:07:34'),
(192, 'estefivargas1692@gmail.com', 'b46e0abf96e36840a7838b54d9d724e0342ce440', 1, NULL, 0, '2019-12-11 06:12:33', '2019-12-11 17:08:34'),
(193, 'achipizmaria20@gmail.com', '221510694802741e693d9ce74562d651118fa13a', 1, NULL, 0, '2019-12-11 06:12:22', '2019-12-11 17:09:22'),
(194, 'manuelarodriguezchavarro@gmail.com', 'c3c788c4370e1c4bb64fab643d2910f9dd71e965', 1, NULL, 0, '2019-12-11 06:12:06', '2019-12-11 17:10:06'),
(195, 'yenyultengo94@gmail.com', 'd398dd90002705e14c0aebb3c96f79d010c66556', 1, NULL, 0, '2019-12-11 06:12:52', '2019-12-11 17:10:52'),
(196, 'Cristhian97bejarano@gmail.com', 'ada626d813fc3c55b01dc25d9145ebb010b61f97', 1, NULL, 0, '2019-12-11 06:12:01', '2019-12-11 17:12:01'),
(197, 'mairaarias2019@gmail.com', 'e5a87ae2b326fff91c1fa392b9fcc53ced36dfc4', 1, NULL, 0, '2019-12-11 06:12:49', '2019-12-11 17:12:49'),
(198, 'mariaperez-14@hotmail.com', '8e6e6ca089d41b00aeb226eaa70a4780681e5e9f', 1, NULL, 0, '2019-12-11 06:12:47', '2019-12-11 17:13:47'),
(199, 'lorensanchez1131@gmail.com', '2b7a37637d0787f9f520aff48c7c5383172b3d4d', 1, NULL, 0, '2019-12-11 06:12:41', '2019-12-11 17:14:42'),
(200, 'michell.mt7@gmail.com', 'f4d5b03a6e163e95108c6bc15660de7cfc109484', 1, NULL, 0, '2019-12-11 06:12:13', '2019-12-11 17:16:13'),
(201, 'dianacasamachin310@gmail.com', '466a2387dcc50610614f8c804b9c3c192fcf82a8', 1, NULL, 0, '2019-12-11 06:12:08', '2019-12-11 17:17:09'),
(202, 'ASyeimyquintero29@gmail.com', '73787df5a437832131f20ba2276b644eabd59417', 1, NULL, 0, '2019-12-11 06:12:06', '2019-12-11 17:18:06'),
(203, 'jimenamera1992@gmail.com', '0b67aa68a9822c1414e19f6b8183dc40b8f96b3d', 1, NULL, 0, '2019-12-11 06:12:52', '2019-12-11 17:18:53'),
(204, 'medinaflor577@gmail.com', '20b1d241dc9a34cc49b1e157877aab2969662560', 1, NULL, 0, '2019-12-11 06:12:52', '2019-12-11 17:19:53'),
(205, 'llanoszunigaemersonricardo@gmail.com', '2a8801ece9045e5b80c2039b71a780dfdd14e52b', 1, NULL, 0, '2019-12-11 06:12:46', '2019-12-11 17:20:46'),
(206, 'angiesofia206@gmail.com', '08fcbf228f130a41a3e726990c47f67c69245b86', 1, NULL, 0, '2019-12-11 06:12:46', '2019-12-11 17:22:46'),
(207, 'vanesanasayo15@gmail.com', 'aab90b027b173b304efc081b1ae742575ea45de1', 1, NULL, 0, '2019-12-11 06:12:33', '2019-12-11 17:23:34'),
(208, 'ampatersonv@gmail.com', 'd6e2272b5783b8ed6f0e459169744244637c5797', 1, NULL, 0, '2019-12-11 06:12:24', '2019-12-11 17:24:24'),
(209, 'linamarcelamedinanarvaez@gmail.com', 'c8d9be86d4b06bd8acaa2e4a6cf0549d349af322', 1, NULL, 0, '2019-12-11 06:12:00', '2019-12-11 17:26:01'),
(211, 'davidarguello115@gmail.com', '0a22fd195ba85bccbf672d654e528b753ef1090b', 1, NULL, 0, '2019-12-13 02:12:51', '2019-12-13 01:19:51'),
(212, 'JARIVER89@GMAIL.COM', 'b1015ee69c378246abe24b8cde73d09a03fe900c', 1, NULL, 0, '2019-12-13 02:12:15', '2019-12-13 01:23:16'),
(213, 'joseperezbrand97@gmail.com', '6736625cecb7af605258011b9b8d965fd60fec18', 1, NULL, 0, '2019-12-13 02:12:25', '2019-12-13 01:24:26'),
(214, 'javiedna29@gmail.com', 'ba9c8dfd1887ccb8b0f6895a40d406d60b912d28', 1, NULL, 0, '2019-12-13 02:12:02', '2019-12-13 01:31:02'),
(215, 'eduinandrade93@gmail.com', '27ef19e448642cba1182c230fec54397b34550bb', 1, NULL, 0, '2019-12-13 02:12:29', '2019-12-13 01:34:30'),
(216, 'andresmaca1988@gmail.com', 'a8b556585f5d4735754e4d516eaedee1f52fcf69', 1, NULL, 0, '2019-12-13 02:12:17', '2019-12-13 01:35:17'),
(217, 'ancizarrojas2019@gmail.com', '3b1f732c97b76d8be65ede8b255413f5c790e037', 1, NULL, 0, '2019-12-13 02:12:54', '2019-12-13 01:35:54'),
(218, 'hioibagonedwin@gmail.com', '0a02b1e0cd2934b4ce333350874e73edabaf70d2', 1, NULL, 0, '2019-12-13 02:12:37', '2019-12-13 01:36:37'),
(219, 'liscanosjardineria@gmail.com', '5ac068b77d4c0418ea6e3cbb1ab09e68946f02ad', 1, NULL, 0, '2019-12-13 02:12:11', '2019-12-13 01:37:12'),
(220, 'alveiromuse@gmail.com', '92cdbeca3381e5b9bd6f2bdf14791fdf907b5af9', 1, NULL, 0, '2019-12-13 02:12:51', '2019-12-13 01:37:51'),
(221, 'javier3106258950@gmail.com', '02fc454b46dbaaafbaadc4b4969075e34df17f4c', 1, NULL, 0, '2019-12-13 02:12:32', '2019-12-13 01:38:32'),
(222, 'luisjavierramirez44@gmail.com', 'a9cd5ac6e0ef92df719d7b96db9e73a48bf5ec20', 1, NULL, 0, '2019-12-13 02:12:09', '2019-12-13 01:39:09'),
(223, 'DiegoAlexanderUltengo1999@gmail.com', 'f0e01b8e9b3b687c4bc00c4a20e74020592c0403', 1, NULL, 0, '2019-12-13 02:12:42', '2019-12-13 01:39:43'),
(224, 'josearmandocalderoncornejo@gmail.com', '7acaabad4203aadea7b0432ce05dcf7b1cf79584', 1, NULL, 0, '2019-12-13 02:12:22', '2019-12-13 01:40:23'),
(225, 'josetapiero777@gmail.com', '8ab13ccc38dae317e2d0051efb578174a9b06a6c', 1, NULL, 0, '2019-12-13 02:12:21', '2019-12-13 01:41:21'),
(226, 'donalquintero20@gmail.com', '7e0984e439fba6fbf1b1fb7235b7a174c0e5fc76', 1, NULL, 0, '2019-12-13 02:12:57', '2019-12-13 01:41:58'),
(227, 'wceballosq@gmail.com', '7b7ac3deaaf0695a9b26d4e10b8d0e79a76ce7b9', 1, NULL, 0, '2019-12-13 02:12:32', '2019-12-13 01:42:32'),
(228, 'afcastillo@unicauca.edu.co', 'e7a3a58e6f709d9a3a52474011cca9dad6eaecf4', 1, NULL, 0, '2019-12-13 02:12:13', '2019-12-13 01:43:13'),
(229, 'norbeyhuila1985@gmail.com', 'd47aad3b8f258653c57633fd89d6eafb931e52a1', 1, NULL, 0, '2019-12-13 02:12:58', '2019-12-13 01:43:59'),
(230, 'lady-yaneth@hotmail.es', '8f8f46d9626d981448eed9e745f9fc4b20fe0982', 1, NULL, 0, '2019-12-13 02:12:33', '2019-12-13 01:44:33'),
(231, 'dgv301@hotmail.com', 'c24bfff8a1849efd9bd59d4942810c33c43af9d7', 1, NULL, 0, '2019-12-13 02:12:30', '2019-12-13 01:45:30'),
(232, 'yimytorresgomez@gmail.com', '49c89f47b8be0b980dfd2179793eea5cd642c982', 1, NULL, 0, '2019-12-13 02:12:37', '2019-12-13 01:49:37'),
(233, 'enyujar11@hotmail.com', 'd712acc29172f22abe4a3b0fba4da682fa3cc0a4', 1, NULL, 0, '2019-12-13 02:12:19', '2019-12-13 01:50:20'),
(234, 'sergiostiven177@gmail.com', '9153c120ebeb0decf5c22c25e0c2cf1342ec2997', 1, NULL, 0, '2019-12-13 02:12:58', '2019-12-13 01:50:59'),
(235, 'DOPEMUL@GMAIL.COM', '3f0ac851f2f10b2178d304017545a065b69e5b45', 1, NULL, 0, '2019-12-13 03:12:18', '2019-12-13 02:17:18'),
(236, 'hernandeztrujillo191@gmail.com', '683c5e668b732c1cf177bb5b48daf01413e099d6', 1, NULL, 0, '2019-12-13 03:12:50', '2019-12-13 02:22:50'),
(237, 'yudytroyano@outlook.com', 'a56ddac9dfd87d31e14c18e90016e7b580b31979', 1, NULL, 0, '2019-12-13 03:12:32', '2019-12-13 02:23:33'),
(238, 'robinsonmedinaramirez@gmail.com', 'a742efcdb4dd413f72b85d0ccd48b2f4df6132e2', 1, NULL, 0, '2019-12-13 03:12:38', '2019-12-13 02:24:39'),
(239, 'agustincardenaschavarro@gmail.com', '169d5497225a0d269f46b714fba03c290650fac7', 1, NULL, 0, '2019-12-13 03:12:21', '2019-12-13 02:25:21'),
(240, 'nanitaguevara9415@gmail.com', 'ab5d9d90a812a69936f025bf4024e2f46f34bb52', 1, NULL, 0, '2019-12-13 03:12:57', '2019-12-13 02:25:58'),
(241, 'mncetinagarcia@gmail.com', '87086279d63c4931059d66329f7badf1a6688a4a', 1, NULL, 0, '2019-12-13 03:12:33', '2019-12-13 02:26:34'),
(242, 'alexsandra666@outlook.es', 'fca67ee500eba636d17d730029c904766204d880', 1, NULL, 0, '2019-12-13 03:12:12', '2019-12-13 02:27:12'),
(243, 'malejairo10@gmail.com', '82e1ec5f94539bd3efff5996c987604201e1f4c9', 1, NULL, 0, '2019-12-13 03:12:48', '2019-12-13 02:27:48'),
(244, 'mayutru1192@gmail.com', '96abf795cfb9e0fdcaa4d4a4a43afaac792a84e6', 1, NULL, 0, '2019-12-13 03:12:26', '2019-12-13 02:28:27'),
(245, 'ds781013@gmail.com', 'f4cb91f953df48828362d5e71e87439e4e6dc04b', 1, NULL, 0, '2019-12-13 03:12:02', '2019-12-13 02:29:03'),
(246, 'sandovaldaniel697@gmail.com', '616c06b431c6a670b48506090cc08853617ed93d', 1, NULL, 0, '2019-12-13 03:12:58', '2019-12-13 02:29:58'),
(247, 'rodrigoperdomot@gmail.com', '9d5c0519f65200e97354000dc823c05f5a5b3f46', 1, NULL, 0, '2019-12-13 03:12:38', '2019-12-13 02:30:39'),
(248, 'cristianjob1997@gmail.com', '602a8eaa6092ec493bf57710c230bf4a667fd6f9', 1, NULL, 0, '2019-12-13 03:12:14', '2019-12-13 02:31:14'),
(249, 'dapuyo311@gmail.com', '8521810e857923b7ef3f17fa8138aa6bbdf56aec', 1, NULL, 0, '2019-12-13 03:12:52', '2019-12-13 02:31:53'),
(250, 'adolfomoncada98@gmail.com', '67910c1b971ddd24a6df6b7de197658831be99ce', 1, NULL, 0, '2019-12-13 03:12:26', '2019-12-13 02:32:27'),
(251, 'yovannymm666@gmail.com', '314f0675fd56b3eeb9c2bac02cd021370c50aa1c', 1, NULL, 0, '2019-12-13 03:12:09', '2019-12-13 02:33:09'),
(252, 'fanycamacho7858@gmail.com', '2d99b80e6742c1c76bfb5d4ea4cedf0f6b16b2bb', 1, NULL, 0, '2019-12-13 03:12:38', '2019-12-13 02:33:38'),
(253, 'alejita191525@gmail.com', '4b41c9c08f80582e25e1fb6273ce9c8d12d875ba', 1, NULL, 0, '2019-12-13 03:12:17', '2019-12-13 02:34:17'),
(254, 'bisneydiembus@gmail.com', 'ea3e7dd9c61f745de67c326839e6d92b207b9139', 1, NULL, 0, '2019-12-13 03:12:56', '2019-12-13 02:34:57'),
(255, 'andreaparraangel015@gmail.com', '3020eeaa22805e9e929cdddec47c3f3b759758f0', 1, NULL, 0, '2019-12-13 03:12:35', '2019-12-13 02:35:36'),
(256, 'yaquelineyasno@gmail.com', 'a5c9b7327a8329b672a55861a56883b7e5dd2f60', 1, NULL, 0, '2019-12-13 03:12:14', '2019-12-13 02:36:14'),
(257, 'jesushpc2003@gmail.com', '9b65f45b373e835e0d48a789d72b843eea45a8cd', 1, NULL, 0, '2019-12-13 03:12:53', '2019-12-13 02:36:53'),
(258, 'mariapaula.2003@live.com', '9c418ba9433d9a0ee6bc95c0972c5fc5cfaf7991', 1, NULL, 0, '2019-12-13 03:12:38', '2019-12-13 02:37:39'),
(259, 'micheldaninymosquera@gmail.com', '27755174da6114ab60b66854ed0bba9db29e8f9b', 1, NULL, 0, '2019-12-13 03:12:34', '2019-12-13 02:38:35'),
(260, 'angela_mercedes_17@hotmail.com', 'c8367450b6af026dd105d7c9fd34f74daa0665b3', 1, NULL, 0, '2019-12-13 03:12:53', '2019-12-13 02:43:53'),
(261, 'MAR1997SOL@GMAIL.COM', '3f7362328939036a334517839aa057b93542b6a1', 1, NULL, 0, '2019-12-13 03:12:33', '2019-12-13 02:44:34'),
(262, 'nasayonatalia11@gmail.com', 'd79b56d25c46055d1bd794cce9877c5b1e550be4', 1, NULL, 0, '2019-12-13 03:12:08', '2019-12-13 02:45:08'),
(263, 'camilovidarte3012@gmail.com', '6555ce6e12f064efdbee2147c048d6b26939e45e', 1, NULL, 0, '2019-12-13 03:12:42', '2019-12-13 02:45:42'),
(264, 'osoriocamayoyeimy@gmail.com', '1bda94d89636eb0b0ff556e7f1c4f9ea4b6a4122', 1, NULL, 0, '2019-12-13 03:12:17', '2019-12-13 02:46:17'),
(265, 'mosquerasoraya2@gmail.com', 'dc651ce81ec6e9fdb7ebdcedc9bafb43405b2094', 1, NULL, 0, '2019-12-13 03:12:50', '2019-12-13 02:46:50'),
(266, 'lizeth15.lgl@gmail.com', '8938fca733220a1a1a99705947d839dbd8161a2a', 1, NULL, 0, '2019-12-13 03:12:23', '2019-12-13 02:47:24'),
(267, 'nuevaesperanza4707@gmail.com', '40b67ab48a720d5e85d63a082d733eff868a5a96', 1, NULL, 0, '2019-12-13 03:12:56', '2019-12-13 02:47:56'),
(268, 'luisedwar99@gmail.com', 'b0593c526724cc6f5852c225fb0a50beb5ef5940', 1, NULL, 0, '2019-12-13 03:12:35', '2019-12-13 02:48:35'),
(269, 'nenitaperez1282@gmail.com', '7296dd07ff33d259f1e37d21d9d540749030e8f0', 1, NULL, 0, '2019-12-13 03:12:09', '2019-12-13 02:49:09'),
(270, 'amgel279306mayita@gmail.com', 'bed319863bfc97855ce9c97bdd7f5434af9dc081', 1, NULL, 0, '2019-12-13 03:12:43', '2019-12-13 02:49:43'),
(271, 'candelasilvaednarocio@gmail.com', '63445cfa7cefac69647dbe840a7821b467fd7edf', 1, NULL, 0, '2019-12-13 03:12:16', '2019-12-13 02:50:16'),
(272, 'anyilisethliscano@gmail.com', 'eae10db8a23e3dacd1e1ff5f60d158aa1235fe15', 1, NULL, 0, '2019-12-13 03:12:49', '2019-12-13 02:50:49'),
(273, 'karolmedinag18@gmail.com', '2c996e3d07b260a1e38565c0ec706eab39921877', 1, NULL, 0, '2019-12-13 03:12:24', '2019-12-13 02:51:24'),
(274, 'mlopezfer997@gmail.com', 'd4a03f68f48888a5efa226fc44bdeb50eeacfd1d', 1, NULL, 0, '2019-12-13 03:12:02', '2019-12-13 02:52:02'),
(275, 'johanestiven210aa210@gmail.com', 'e84c24be8cb72b30f49c85424211efc323d6456d', 1, NULL, 0, '2019-12-13 03:12:42', '2019-12-13 02:52:43'),
(276, 'esmid19@hotmail.com', '844ddc9f67305b4601028bc83c3e2f1f4d75abeb', 1, NULL, 0, '2019-12-13 03:12:15', '2019-12-13 02:53:16'),
(277, 'edith077@hotmail.com', '29974a8023b2eb1c03ba0c7931d992b7727d11ea', 1, NULL, 0, '2019-12-13 03:12:52', '2019-12-13 02:53:52'),
(278, 'geovannacarabali11@gmail.com', '1d616f62301b10bece983837f215beffe498ed9d', 1, NULL, 0, '2019-12-13 03:12:32', '2019-12-13 02:54:32'),
(279, 'stefasanabria2002@gmail.com', '0309b7bad9efec443fa8d7eaae2be6f3e852fa68', 1, NULL, 0, '2019-12-13 03:12:14', '2019-12-13 02:55:14'),
(280, 'ramirezurbanojhonjaiber@gmail.com', 'a20b089f12a85a41bce58211d70576107637aa58', 1, NULL, 0, '2019-12-13 03:12:55', '2019-12-13 02:55:56'),
(281, 'garcia.pedrero18@gmail.com', '546bbe4d86c8020ede605de028993c9088ab1d37', 1, NULL, 0, '2019-12-16 03:12:51', '2019-12-16 14:16:52'),
(282, 'malejachantre126@gmail.com', '138dd326fa93bf48457f99033fb1015b2a204948', 1, NULL, 0, '2019-12-16 03:12:15', '2019-12-16 14:18:16'),
(283, 'susana.mutiz@gmail.com', '1644cf16cb5a28050c18084e78136736cdb69000', 1, NULL, 0, '2019-12-16 03:12:29', '2019-12-16 14:19:30'),
(284, 'lv695319@gmail.com', '1441e6b53c8307322d2cc0270b71b2cb127f88ea', 1, NULL, 0, '2019-12-16 03:12:58', '2019-12-16 14:20:59'),
(285, 'eriktatiana0601@hotmail.com', 'a254d7c21e930ac6222a7e5d994bbbaf7804f36d', 1, NULL, 0, '2019-12-16 03:12:48', '2019-12-16 14:22:48'),
(286, 'carolinatumbo@gmail.com', 'da4373c487456e9f94795faed7c00daefc57515f', 1, NULL, 0, '2019-12-16 03:12:15', '2019-12-16 14:24:15'),
(287, 'cristina25257@hotmail.com', '61f2532f7fb9b7fc6b1910a1cdc519c1612924fa', 1, NULL, 0, '2019-12-19 03:12:01', '2019-12-19 02:41:02'),
(288, 'monialeserrato@hotmail.com', '5f83870c100c7cc84e3dfa7eab222f6d75c35ccd', 1, NULL, 0, '2019-12-19 03:12:41', '2019-12-19 02:43:41'),
(289, 'nrestrepomontealegre@gmail.com', '4e605e415f848783e7ba11586f9b9c657ea47cba', 1, NULL, 0, '2019-12-19 03:12:32', '2019-12-19 02:45:32'),
(290, 'yesmy68@hotmail.es', 'd5cafa44713234a2b1c25ee168f68397bf18aaf3', 1, NULL, 0, '2019-12-19 03:12:41', '2019-12-19 02:46:42'),
(291, 'bianny.andelacha@gmail.com', 'f1d724d945799624540a41c6befcba343c13b24f', 1, NULL, 0, '2019-12-19 03:12:29', '2019-12-19 02:47:29'),
(292, 'perezsthefania@gmail.com', '2c69222eb354114ec7da13e45cd7784909a607da', 1, NULL, 0, '2019-12-19 03:12:10', '2019-12-19 02:48:10'),
(293, 'laaglida@hotmail.com', '1e3d9ba932884effab6f10ad3ba53f31183f4c80', 1, NULL, 0, '2019-12-19 03:12:54', '2019-12-19 02:48:54'),
(294, 'Veronicanoriegaquiroga@gmail.com', '4c7822e384ca45fafc5b841ef01c3ed6b5b54a04', 1, NULL, 0, '2019-12-19 03:12:43', '2019-12-19 02:49:43'),
(295, 'casallasy34@gmail.com', '721e094f988a99335a529ee0cad6875fe321faa0', 1, NULL, 0, '2019-12-19 03:12:25', '2019-12-19 02:50:25'),
(296, 'yuriyisedgarciaperdomo@gmail.com', '5e61b12f557c7788cfd7bdb7d30e0d4de6618ca2', 1, NULL, 0, '2019-12-19 03:12:04', '2019-12-19 02:51:04'),
(297, 'toledocruzmariaelizabeth1021@gmail.com', '541eb2b677e84ff668ea01b1585fd01cdfc0ef14', 1, NULL, 0, '2019-12-19 03:12:43', '2019-12-19 02:51:44'),
(298, 'paulalissed@gmail.com', '6a2c97039c3f24501239fa94ee0093dd8589c770', 1, NULL, 0, '2019-12-19 03:12:23', '2019-12-19 02:52:23'),
(299, 'elianatovar1999@gmail.com', '38f7b4a0f162b5a55b124b6f2fc5ae06c678cfd3', 1, NULL, 0, '2019-12-19 03:12:00', '2019-12-19 02:53:00'),
(300, 'elianahios215@gmail.com', '0c57aa7d02c90ddfea504bb57aa4bc0016fcf683', 1, NULL, 0, '2019-12-19 03:12:41', '2019-12-19 02:53:42'),
(301, 'stefaniamanchola25@gmail.com', 'b8a46b4bd03356506173af4eed2e470acd9447bf', 1, NULL, 0, '2019-12-19 03:12:27', '2019-12-19 02:54:27'),
(302, 'abgmnatalialozano@gmail.com', '15ed401004314109ecb3de23531a17f969474ff3', 1, NULL, 0, '2019-12-19 03:12:15', '2019-12-19 02:55:15'),
(303, 'medinacotacio25@gmail.com', 'b3a805db9c9efeebeddaad2aca6e2714063bbccb', 1, NULL, 0, '2019-12-19 03:12:41', '2019-12-19 02:56:41'),
(304, 'gilquinteromariacamila89@gmail.com', '8fe569adad06ead47bfcbe117ae81a5eda539951', 1, NULL, 0, '2019-12-19 03:12:41', '2019-12-19 02:57:41'),
(305, 'gluzclarita30@gmail.com', '78e5b5887c352f9f22e5272ddc943d6d91887fd4', 1, NULL, 0, '2019-12-19 04:12:10', '2019-12-19 03:03:11'),
(306, 'esneiderlopezfernandez@gmail.com', '3932fe29c3094a2e955f1cc09adcaa60d39dceeb', 1, NULL, 0, '2019-12-19 04:12:01', '2019-12-19 03:04:01'),
(307, 'zamiquintero@outlook.es', '595190f0dbb8d498c57d6ee1d97db108ed94aaa3', 1, NULL, 0, '2019-12-19 04:12:42', '2019-12-19 03:04:42'),
(308, 'helenlosada3@gmail.com', 'fbe4c4d3fb705e1d1a9f70d41835e522ad2d19d2', 1, NULL, 0, '2019-12-19 04:12:27', '2019-12-19 03:05:27'),
(309, 'elizabethmanquillo.05@gmail.com', '480a12244f4a95962058a66a6cd0a684d29cfd2c', 1, NULL, 0, '2019-12-19 04:12:03', '2019-12-19 03:06:03'),
(310, 'luisa.lg451@hotmail.com', '73b352ce125c2f16b01d44607dddbe461793db20', 1, NULL, 0, '2019-12-19 04:12:39', '2019-12-19 03:06:40'),
(311, 'juancarlospajoyultengo@gmail.com', 'c4d2fc143ff9473c7a4877feb63580bcad90434f', 1, NULL, 0, '2019-12-19 04:12:20', '2019-12-19 03:07:20'),
(312, 'fernandaquintero_15@outlook.com', '90f03de20841a55c27093836c6c9ff1f71e1fee7', 1, NULL, 0, '2019-12-19 04:12:12', '2019-12-19 03:08:12'),
(313, 'pvalentinamour@gmail.com', '01b56d31a6b3fd3273bbd90c0cc75ad6795596e0', 1, NULL, 0, '2019-12-19 04:12:42', '2019-12-19 03:10:42'),
(314, 'flacayuli.90@hotmail.com', 'a64c69e7625505d35ad82f3f4a1f82abc6bfb5ff', 1, NULL, 0, '2019-12-19 04:12:17', '2019-12-19 03:12:17'),
(315, 'hellenjow@gmail.com', '7c86b096d8773341c0fdcaebd243b30501ed258d', 1, NULL, 0, '2019-12-19 04:12:13', '2019-12-19 03:13:14'),
(316, 'nanita2910@hotmail.com', '3932534930b4d0f8a88e4356ba1751c683f3814e', 1, NULL, 0, '2019-12-19 04:12:51', '2019-12-19 03:13:51'),
(317, 'lorenaclaudia425@gmail.com', '8b2f3623745bcbe9a2356b4b67ce43d6362a357c', 1, NULL, 0, '2019-12-19 04:12:36', '2019-12-19 03:14:37'),
(318, 'luzangelaramosmuelas@gmail.com', '848737111b0a4f06afef6f56c05afda33b20d2c4', 1, NULL, 0, '2019-12-19 04:12:32', '2019-12-19 03:15:32'),
(319, 'jsquintero30@misena.edu.co', '99c8a533ffe697ae354e440d972ea47526e271e9', 1, NULL, 0, '2019-12-19 04:12:20', '2019-12-19 03:16:20'),
(320, 'pajoyyennifer@gmail.com', '5bbdf6909fd5a61c0e2720d252799c0adeea488e', 1, NULL, 0, '2019-12-19 04:12:06', '2019-12-19 03:17:07'),
(321, 'konzramos@gmail.com', '8bfc209986e56778395a12daca3ddabfe24cfce8', 1, NULL, 0, '2019-12-19 04:12:48', '2019-12-19 03:17:48'),
(323, 'mafevargassoto@hotmail.com', 'e0c9bfabb192b9298636b8d362ccaa602153fe6c', 1, NULL, 0, '2019-12-19 04:12:26', '2019-12-19 03:18:26'),
(324, 'carolinaquinterobarragan@gmail.com', '1736efa966d942b766a6cb7990a944f6a8dae743', 1, NULL, 0, '2019-12-19 04:12:04', '2019-12-19 03:19:04'),
(325, 'natalyba1999@gmail.com', 'c21dd1ac8b589ec2c0be4c4c5b106e03ec6b75f2', 1, NULL, 0, '2019-12-19 04:12:41', '2019-12-19 03:19:42'),
(326, 'joseale98.jam@gmail.com', '4b5f23b3fa86abcd652202d50f6a5749967d8f6d', 1, NULL, 0, '2019-12-19 04:12:20', '2019-12-19 03:20:21'),
(327, 'nathaneira1999@gmail.com', 'bfc8359112f458d39df3ffc591b771b5aa30559c', 1, NULL, 0, '2019-12-19 04:12:01', '2019-12-19 03:21:01'),
(328, 'ninijohana368@gmail.com', 'be026c5e7a5c9985b09a40e59f12f0994550f45d', 1, NULL, 0, '2019-12-19 04:12:48', '2019-12-19 03:21:48'),
(329, 'leidylorens2412@gmail.com', '0303e5ec763814b0e5d632561f06a626369567b9', 1, NULL, 0, '2019-12-19 04:12:24', '2019-12-19 03:22:25'),
(330, '1004248780g@gmail.com', 'c4617d3e71e4d2bee635f18b81d1c11aa4368af0', 1, NULL, 0, '2019-12-19 04:12:03', '2019-12-19 03:23:03'),
(331, 'toroyum905@gmail.com', 'bf3e0ac0381949e5daa88f711dfbc22eee13c971', 1, NULL, 0, '2019-12-19 04:12:45', '2019-12-19 03:23:46'),
(332, 'valentinavargas@gmail.com', '094aece63d8ef413c99179ebfd37a02999c1b394', 1, NULL, 0, '2019-12-22 01:12:15', '2019-12-22 00:58:16'),
(333, 'yulizavargas07@gmail.com', '6c4ae266c4cb76fc7a4f09557b13f972c43c1a02', 1, NULL, 0, '2019-12-22 02:12:08', '2019-12-22 01:01:08'),
(334, 'xiomirojas25@gmail.com', '53b2d2dedef05540ddbd4200d2e87b67600568d3', 1, NULL, 0, '2019-12-22 02:12:50', '2019-12-22 01:01:50'),
(335, 'jhostin9217@gmail.com', 'a877ad3d8d1b0b41f2bc26d967c46e693da2defc', 1, NULL, 0, '2019-12-22 02:12:30', '2019-12-22 01:02:31'),
(336, 'yilverchilo9518@gmail.com', '2b946a942d000bbf0e237b304b402564aeaf27a5', 1, NULL, 0, '2019-12-22 02:12:14', '2019-12-22 01:03:15'),
(337, 'zrt.celenez@gmail.com', '7575058b6fc16494642b6d5142d5b308992222d8', 1, NULL, 0, '2019-12-22 02:12:56', '2019-12-22 01:03:56'),
(338, 'kamica0411@gmail.com', '73301e30b2612cf6b2618a3f8898f5c31cf7e059', 1, NULL, 0, '2019-12-22 02:12:29', '2019-12-22 01:04:29'),
(339, 'sava160686@hotmail.com', '72f8de5232df8dae9f2265fa5fa062ea903f87e2', 1, NULL, 0, '2019-12-22 02:12:07', '2019-12-22 01:05:07'),
(341, 'lidapenagos1994@gmail.com', 'e90043d2520f7bfefa7f8dcb8be0e993444bb83e', 1, NULL, 0, '2019-12-22 02:12:14', '2019-12-22 01:07:14'),
(342, 'paolita618pardo@gmail.com', '68275c1bc092fb6241d2beaee0f9dadaf60afcc4', 1, NULL, 0, '2019-12-22 02:12:02', '2019-12-22 01:08:02'),
(343, 'agonzalezvia@gmail.com', 'fb72556e9d7aeec16611a7ee6acc1b59c96a8784', 1, NULL, 0, '2019-12-22 02:12:43', '2019-12-22 01:08:44'),
(344, 'anacatalinavalencia@gmail.com', 'ec2eddecd72d2064bc3e208891229f72d82dc7cb', 1, NULL, 0, '2019-12-22 02:12:27', '2019-12-22 01:09:27'),
(345, 'nellytaperdomo@gmail.com', '70844461837601cf2766987571086708b849e59b', 1, NULL, 0, '2019-12-22 02:12:14', '2019-12-22 01:10:14'),
(346, 'nenisjeims@gmail.com', '85e6502c2ed69c5abb6099d40c8d2074032a8255', 1, NULL, 0, '2019-12-22 02:12:08', '2019-12-22 01:11:08'),
(347, 'hgomezmenza@gmail.com', '90d51f3704659c4430041b2f476d1b0003b38b83', 1, NULL, 0, '2019-12-22 02:12:50', '2019-12-22 01:11:50'),
(348, 'vargasjohana.1998@gmail.com', '892277d5be7085edc76557b6487c52154b06354e', 1, NULL, 0, '2019-12-22 02:12:37', '2019-12-22 01:12:37'),
(349, 'mapoco99@gmail.com', '910d0d9cf6d23dab16f0e448044b8822e0708b33', 1, NULL, 0, '2019-12-22 02:12:21', '2019-12-22 01:13:21'),
(350, 'yolibethmarin2016@gmail.com', '63154e538985551396f25cecf579ec5cc8d40643', 1, NULL, 0, '2019-12-22 02:12:17', '2019-12-22 01:14:17'),
(351, 'yandyvalencia2019@gmail.com', '996d882d02ed555a68a24864a41b7e8539513d6e', 1, NULL, 0, '2019-12-22 02:12:08', '2019-12-22 01:15:09'),
(352, 'mjeronimamensa@gmail.com', 'be795bc85943974792e245a9f123ae7b357b5a50', 1, NULL, 0, '2019-12-22 02:12:52', '2019-12-22 01:15:52'),
(353, 'mimona0277@gmail.com', 'a4eece2ac7a6df558e358d458db63bd04c76ae33', 1, NULL, 0, '2019-12-22 02:12:31', '2019-12-22 01:16:32'),
(354, 'noralbapardo17@gmail.com', 'e3877bcbd5faa20900a9bae7a97bf5627a7209f1', 1, NULL, 0, '2019-12-22 02:12:18', '2019-12-22 01:17:18'),
(355, 'ycarolina0612@gmail.com', '87c4d8c397777706018144a317762fd9f2d437a6', 1, NULL, 0, '2019-12-22 02:12:03', '2019-12-22 01:18:03'),
(357, '223juanss@gmail.com', '4b889120766899918c5515c5dd15558857598fdb', 1, NULL, 0, '2019-12-22 02:12:19', '2019-12-22 01:22:19'),
(358, 'linasusatama@gmail.com', '67bd528bdd62fed9c8b63811ce6db10c70207212', 1, NULL, 0, '2019-12-22 02:12:12', '2019-12-22 01:23:12'),
(359, 'santiagoochoaceballos@gmail.com', '4d88f7849734c57e61a309fbc52b68e54e6f7165', 1, NULL, 0, '2019-12-22 02:12:50', '2019-12-22 01:23:50'),
(360, 'alcibiadesvelascotenorio@gmail.com', '192531ec924efa8f35ee8bbc0a8d5fab8d4385db', 1, NULL, 0, '2019-12-22 02:12:29', '2019-12-22 01:24:29'),
(361, 'nilson.achipiz04@gmail.com', '7bef4e3e751e1fd8837bcad4bb92771984993477', 1, NULL, 0, '2019-12-22 02:12:08', '2019-12-22 01:25:08'),
(362, 'andres.f.yule@hotmail.com', 'a69fe730c83efb9ea79bbeccd0ed31caaea725c4', 1, NULL, 0, '2019-12-22 02:12:56', '2019-12-22 01:25:57'),
(363, 'jazbleidyalvira657@gmail.com', '63b1adc97353f3a46fff96f800a8929b15594735', 1, NULL, 0, '2019-12-22 02:12:47', '2019-12-22 01:26:47'),
(364, 'anyilorenacampoangel9@gmail.com', '0cbf388626c74663d9821cd7db3d5e2d871683e4', 1, NULL, 0, '2019-12-22 02:12:37', '2019-12-22 01:27:37'),
(365, 'mileidyyonda99@gmail.com', '53a5530f0ab2e538cb834c21e8fd30a381bdf359', 1, NULL, 0, '2019-12-22 02:12:20', '2019-12-22 01:28:20'),
(366, 'nurybastidas009@gmail.com', '68a6309e2e9921ae6903f3cf1417fb8ff096dc82', 1, NULL, 0, '2019-12-22 02:12:40', '2019-12-22 01:29:41'),
(367, 'perdomo1933@hotmail.com', 'e3ce0cacd5ca8cac4ca892bf1eb746c1da7ba903', 1, NULL, 0, '2019-12-22 02:12:41', '2019-12-22 01:30:41'),
(368, 'claracortesramirez03@gmail.com', '94a5b61919ad2933e3993f3364aa0211b47ee91d', 1, NULL, 0, '2019-12-22 02:12:35', '2019-12-22 01:32:35'),
(369, 'wilferno23@gmail.com', '3f91b010439465882a775eff2af02bba3fe88482', 1, NULL, 0, '2019-12-22 02:12:29', '2019-12-22 01:33:30'),
(370, 'campovidarteleidyrocio@gmail.com', 'e1f94b6e9f1a143baeccb3425753822d2747f894', 1, NULL, 0, '2019-12-22 02:12:21', '2019-12-22 01:34:22'),
(371, 'herncamilo@hotmail.es', '6b6cf9f74ee958f8fd60bb387c66c9755181b5e0', 1, NULL, 0, '2019-12-22 02:12:28', '2019-12-22 01:35:28'),
(372, 'claudiabarrero51@gmail.com', '40206efac9c0a054669868122eb3c1136b0412ef', 1, NULL, 0, '2019-12-22 02:12:33', '2019-12-22 01:36:33'),
(373, 'guaracayasnolina@gmail.com', 'd2bed9aa50dfa04bc51c710d3f482fb293ec6834', 1, NULL, 0, '2019-12-22 02:12:17', '2019-12-22 01:37:17'),
(374, 'carolinaqui97@gmail.com', '852ec95d26d85523488026f1bdde616cd59a47df', 1, NULL, 0, '2019-12-22 02:12:59', '2019-12-22 01:37:59'),
(375, 'diegocalderon1099@gmail.com', '40f3133c47e4b1f07196343ac4cc540a6d39fdf3', 1, NULL, 0, '2019-12-22 02:12:47', '2019-12-22 01:38:47'),
(376, 'cristiancamiloserratocastillo@gmail.com', '9d382f871f5765316c7a968d95dc919b9d0f9bde', 1, NULL, 0, '2019-12-22 02:12:21', '2019-12-22 01:39:21'),
(377, 'elkinjulian1999@gmail.com', '6983367f4fe83b2c59c545f306f1568f912f0dc7', 1, NULL, 0, '2019-12-22 02:12:55', '2019-12-22 01:39:55'),
(378, 'marlonstivenosorio07@gmail.com', 'f0e2dac7f6141aef6e870c3d0f3e8f51944b3092', 1, NULL, 0, '2019-12-22 02:12:38', '2019-12-22 01:40:38'),
(379, 'lopezjaimesjuancarlos@gmail.com', '2f3f7e5c0cab45e31891335d1216c9714a041113', 1, NULL, 0, '2019-12-22 02:12:42', '2019-12-22 01:41:43'),
(380, 'medardocolla89@gmail.com', 'b93d42e55ff03a5e80ee616ed3973dbc05b36fd1', 1, NULL, 0, '2019-12-22 02:12:38', '2019-12-22 01:42:38'),
(381, 'campomunozhectorfredy@gmail.com', 'e8d05625fc48e2e805de3c73c78d9cbb7f72f53b', 1, NULL, 0, '2019-12-22 02:12:13', '2019-12-22 01:43:13'),
(382, 'montenegromanquilloerika@gmail.com', 'ec8cf12f2cbe7e6a63ccf18d0304b8703beb8a6d', 1, NULL, 0, '2019-12-22 02:12:49', '2019-12-22 01:43:49'),
(383, 'luisfern16@hotmail.com', 'ed6b66410d6ef2c20b4d77d2a0fe17fba2094656', 1, NULL, 0, '2019-12-22 02:12:48', '2019-12-22 01:48:48'),
(384, 'dapeal01@gmail.com', '91d42cef9b6fcaf5ba4f36e8781450cb439c29cf', 1, NULL, 0, '2019-12-22 02:12:26', '2019-12-22 01:49:26'),
(385, 'osunashirley2001@gmail.com', '010f5a02e457b4114099e1f987a59597b2395a56', 1, NULL, 0, '2019-12-22 02:12:17', '2019-12-22 01:50:17'),
(386, 'adrosero21@misena.edu.co', '4e0388d2ef3c24259c95689676d4fd52f7323c71', 1, NULL, 0, '2019-12-22 02:12:53', '2019-12-22 01:50:54'),
(387, 'patriciamompotes@gmail.com', '1cc11eb6bbac45ce66b52c31358245e1c0ec9f48', 1, NULL, 0, '2019-12-22 02:12:33', '2019-12-22 01:51:34'),
(388, 'yrivera84@misena.edu.co', '13c654f2fd52010a9cb410e7efadc53ddc3dc78e', 1, NULL, 0, '2019-12-22 02:12:09', '2019-12-22 01:52:10'),
(389, 'rangelica780@yahoo.com', 'c0c53ce6b158c72ab99a6964dd99cf2fd93b63b5', 1, NULL, 0, '2019-12-22 02:12:00', '2019-12-22 01:53:00'),
(390, 'fabioandresrojas19@gmail.com', '0049905b8ec56bbf7bda9f070daefe31abf55634', 1, NULL, 0, '2019-12-22 02:12:54', '2019-12-22 01:53:54'),
(391, 'doralid2525gomez@gmail.com', 'cd1c5eefc4c9b96bd4304dde18dccd3c2a1205d9', 1, NULL, 0, '2019-12-22 02:12:50', '2019-12-22 01:54:50'),
(392, 'Katherinealdanatovar@gmail.com', '1da429add5882d005d4654c3bf350c92224029c8', 1, NULL, 0, '2019-12-22 02:12:33', '2019-12-22 01:55:34'),
(393, 'mayerlyquira@gmail.com', '3e6e46549454c39376d2c9fc12f42168411bc950', 1, NULL, 0, '2019-12-22 02:12:16', '2019-12-22 01:56:17'),
(394, 'jemagaher17@hotmail.es', '3a169effe6ca6202f1c9ed2cfe32a791b1630aa2', 1, NULL, 0, '2019-12-22 02:12:16', '2019-12-22 01:57:17'),
(395, 'luisachaux04@hotmail.com', '92fd56d4fcf2020e0adc15065489750aa90481f5', 1, NULL, 0, '2019-12-22 02:12:54', '2019-12-22 01:57:54'),
(396, 'jeferson122@hotmail.es', '9fc6d1e5b37cce23e8076806909be142e4919023', 1, NULL, 0, '2019-12-22 02:12:54', '2019-12-22 01:58:55'),
(397, 'fernanda150992@gmail.com', '277ea62259723e0f05ca0ab3c0d09dbee5ac9780', 1, NULL, 0, '2019-12-22 02:12:49', '2019-12-22 01:59:49'),
(398, 'emanuelsantiago201112@gmail.com', '210a44249c4e3d052b0f99c5eed89f81e8ec2551', 1, NULL, 0, '2019-12-22 03:12:28', '2019-12-22 02:00:28'),
(399, 'dijema1@hotmail.com', '08566168dba813db1b3049aeaee4a43113ba0eab', 1, NULL, 0, '2019-12-22 03:12:20', '2019-12-22 02:01:20'),
(400, 'cuellardieg@gmail.com', '054311ccdbfeb2b0867cd22c36ed63de88adf4b0', 1, NULL, 0, '2019-12-22 03:12:59', '2019-12-22 02:02:00'),
(401, 'nataliaromero2028@gmail.com', 'abe7a92e9dee99f17ecc86d8186492215f4e81fb', 1, NULL, 0, '2019-12-22 03:12:34', '2019-12-22 02:02:35'),
(402, 'nataliaangel1999@gmail.com', 'eabe34395f22e8d05595c6b7c6a7e5701e9ab137', 1, NULL, 0, '2019-12-22 03:12:15', '2019-12-22 02:03:16'),
(403, 'jefersonsaenz202295@gmail.com', 'abaa710291e82d3e72ee63d743b05bcaf2b5493a', 1, NULL, 0, '2019-12-22 03:12:11', '2019-12-22 02:04:11'),
(404, 'juanca_chico@hotmail.com', '143397b26cbe02c1453518cf085d5ae090275f26', 1, NULL, 0, '2019-12-22 03:12:46', '2019-12-22 02:04:47'),
(405, 'agreda2611@live.com', '27d6cc812fd5f3b2e6ac1f05369a627bebcbfbab', 1, NULL, 0, '2019-12-22 03:12:19', '2019-12-22 02:05:20'),
(406, 'Luzmarlearit@hotmail.com', '252db8b2ede7ce2613dfa21f925e86fa0d6f93fd', 1, NULL, 0, '2019-12-22 03:12:29', '2019-12-22 02:06:29'),
(407, 'estefanylizgonsalez22@gmail.com', '6ab78aa81656cf7d98787a28f9106a58b5f2eb0f', 1, NULL, 0, '2019-12-22 03:12:21', '2019-12-22 02:07:21'),
(408, 'mayerduran1404@gmail.com', '03e0fe06ca01f4249697757704229fe7a427e41e', 1, NULL, 0, '2019-12-22 03:12:22', '2019-12-22 02:08:22'),
(409, 'alejandrapimentel0201@gmail.com', '39bed566ac36b610b1c46abc5ffccda89422642b', 1, NULL, 0, '2019-12-22 03:12:05', '2019-12-22 02:09:05'),
(410, 'yulianaber456@gmail.com', 'c2736ab8e58d874f8b06f3b124a24f81ffa225b0', 1, NULL, 0, '2019-12-22 03:12:43', '2019-12-22 02:09:43'),
(411, 'karenjimena.angelg@gmail.com', '8cc80106d28ecb38a1a93c9458a19939c47dca74', 1, NULL, 0, '2019-12-22 03:12:24', '2019-12-22 02:10:24'),
(412, 'hcoronadoh@misena.edu.co', '1c7820b7b24639ef69ffe7fddf5880927f7b514f', 1, NULL, 0, '2019-12-27 01:12:44', '2019-12-27 12:11:44'),
(413, 'alrugo77@gmail.com', 'cf74155d5feffa98c86b69bb067b1c32f82a3a90', 1, NULL, 0, '2020-03-09 10:03:11', '2020-03-09 22:41:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_count`
--

CREATE TABLE `users_count` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_documento` int(20) NOT NULL,
  `rol_user` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_rol` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users_count`
--

INSERT INTO `users_count` (`id`, `user_documento`, `rol_user`, `estado_rol`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aprendiz', 1, NULL, '2019-05-07 05:00:00'),
(2, 1079412566, 'Aprendiz', 1, NULL, '2019-05-07 05:00:00'),
(3, 1, 'Administrador', 1, NULL, '2019-05-07 05:00:00'),
(4, 1, 'Instructor', 1, NULL, '2019-05-07 05:00:00'),
(5, 115, 'Aprendiz', 1, '2019-11-25 02:11:08', '2019-11-25 13:37:08'),
(6, 116, 'Instructor', 1, '2019-12-02 11:12:19', '2019-12-02 22:19:19'),
(7, 117, 'Administrador', 1, '2019-12-05 10:12:03', '2019-12-05 21:58:03'),
(8, 118, 'Instructor', 1, '2019-12-06 01:12:18', '2019-12-06 00:46:18'),
(9, 119, 'Aprendiz', 1, '2019-12-06 07:12:00', '2019-12-06 06:04:01'),
(10, 120, 'Aprendiz', 1, '2019-12-11 03:12:10', '2019-12-11 14:41:10'),
(11, 121, 'Aprendiz', 1, '2019-12-11 03:12:19', '2019-12-11 14:43:19'),
(12, 122, 'Aprendiz', 1, '2019-12-11 03:12:12', '2019-12-11 14:46:13'),
(13, 123, 'Aprendiz', 1, '2019-12-11 04:12:35', '2019-12-11 15:19:35'),
(14, 124, 'Aprendiz', 1, '2019-12-11 04:12:50', '2019-12-11 15:20:50'),
(15, 125, 'Aprendiz', 1, '2019-12-11 04:12:17', '2019-12-11 15:24:17'),
(16, 126, 'Aprendiz', 1, '2019-12-11 04:12:53', '2019-12-11 15:25:53'),
(17, 127, 'Aprendiz', 1, '2019-12-11 04:12:23', '2019-12-11 15:27:24'),
(18, 128, 'Aprendiz', 1, '2019-12-11 04:12:59', '2019-12-11 15:42:59'),
(19, 129, 'Aprendiz', 1, '2019-12-11 04:12:12', '2019-12-11 15:45:12'),
(20, 130, 'Aprendiz', 1, '2019-12-11 04:12:25', '2019-12-11 15:46:25'),
(21, 131, 'Aprendiz', 1, '2019-12-11 04:12:23', '2019-12-11 15:47:24'),
(22, 132, 'Aprendiz', 1, '2019-12-11 04:12:02', '2019-12-11 15:49:03'),
(23, 133, 'Aprendiz', 1, '2019-12-11 04:12:06', '2019-12-11 15:50:06'),
(24, 134, 'Aprendiz', 1, '2019-12-11 04:12:18', '2019-12-11 15:51:18'),
(25, 135, 'Aprendiz', 1, '2019-12-11 04:12:23', '2019-12-11 15:52:23'),
(26, 136, 'Aprendiz', 1, '2019-12-11 04:12:12', '2019-12-11 15:53:13'),
(27, 137, 'Aprendiz', 1, '2019-12-11 04:12:09', '2019-12-11 15:54:09'),
(28, 138, 'Aprendiz', 1, '2019-12-11 04:12:12', '2019-12-11 15:55:13'),
(29, 139, 'Aprendiz', 1, '2019-12-11 04:12:15', '2019-12-11 15:56:15'),
(30, 140, 'Aprendiz', 1, '2019-12-11 04:12:18', '2019-12-11 15:57:18'),
(31, 141, 'Aprendiz', 1, '2019-12-11 04:12:16', '2019-12-11 15:58:16'),
(32, 142, 'Aprendiz', 1, '2019-12-11 04:12:09', '2019-12-11 15:59:09'),
(33, 143, 'Aprendiz', 1, '2019-12-11 05:12:17', '2019-12-11 16:00:18'),
(34, 144, 'Aprendiz', 1, '2019-12-11 05:12:15', '2019-12-11 16:01:15'),
(35, 145, 'Aprendiz', 1, '2019-12-11 05:12:05', '2019-12-11 16:02:06'),
(36, 146, 'Aprendiz', 1, '2019-12-11 05:12:56', '2019-12-11 16:02:57'),
(37, 147, 'Aprendiz', 1, '2019-12-11 05:12:50', '2019-12-11 16:03:51'),
(38, 148, 'Aprendiz', 1, '2019-12-11 05:12:06', '2019-12-11 16:05:06'),
(39, 149, 'Aprendiz', 1, '2019-12-11 05:12:55', '2019-12-11 16:05:56'),
(40, 150, 'Aprendiz', 1, '2019-12-11 05:12:39', '2019-12-11 16:18:39'),
(41, 151, 'Aprendiz', 1, '2019-12-11 05:12:23', '2019-12-11 16:19:23'),
(42, 152, 'Aprendiz', 1, '2019-12-11 05:12:16', '2019-12-11 16:20:16'),
(43, 153, 'Aprendiz', 1, '2019-12-11 05:12:02', '2019-12-11 16:21:03'),
(44, 154, 'Aprendiz', 1, '2019-12-11 05:12:13', '2019-12-11 16:22:13'),
(45, 155, 'Aprendiz', 1, '2019-12-11 05:12:18', '2019-12-11 16:23:18'),
(46, 156, 'Aprendiz', 1, '2019-12-11 05:12:08', '2019-12-11 16:24:08'),
(47, 157, 'Aprendiz', 1, '2019-12-11 05:12:05', '2019-12-11 16:25:05'),
(48, 158, 'Aprendiz', 1, '2019-12-11 05:12:52', '2019-12-11 16:25:52'),
(49, 159, 'Aprendiz', 1, '2019-12-11 05:12:40', '2019-12-11 16:26:40'),
(50, 160, 'Aprendiz', 1, '2019-12-11 05:12:27', '2019-12-11 16:27:27'),
(51, 161, 'Aprendiz', 1, '2019-12-11 05:12:18', '2019-12-11 16:28:18'),
(52, 162, 'Aprendiz', 1, '2019-12-11 05:12:08', '2019-12-11 16:29:08'),
(53, 163, 'Aprendiz', 1, '2019-12-11 05:12:59', '2019-12-11 16:29:59'),
(54, 164, 'Aprendiz', 1, '2019-12-11 05:12:49', '2019-12-11 16:30:49'),
(55, 165, 'Aprendiz', 1, '2019-12-11 05:12:32', '2019-12-11 16:31:32'),
(56, 166, 'Aprendiz', 1, '2019-12-11 05:12:19', '2019-12-11 16:32:19'),
(57, 167, 'Aprendiz', 1, '2019-12-11 05:12:14', '2019-12-11 16:33:15'),
(58, 168, 'Aprendiz', 1, '2019-12-11 05:12:11', '2019-12-11 16:34:11'),
(59, 169, 'Aprendiz', 1, '2019-12-11 05:12:22', '2019-12-11 16:35:22'),
(60, 170, 'Aprendiz', 1, '2019-12-11 05:12:10', '2019-12-11 16:36:10'),
(61, 171, 'Aprendiz', 1, '2019-12-11 05:12:11', '2019-12-11 16:37:12'),
(62, 172, 'Aprendiz', 1, '2019-12-11 05:12:43', '2019-12-11 16:39:44'),
(63, 173, 'Aprendiz', 1, '2019-12-11 05:12:42', '2019-12-11 16:40:43'),
(64, 174, 'Aprendiz', 1, '2019-12-11 05:12:39', '2019-12-11 16:41:39'),
(65, 175, 'Aprendiz', 1, '2019-12-11 05:12:53', '2019-12-11 16:42:53'),
(66, 176, 'Aprendiz', 1, '2019-12-11 05:12:39', '2019-12-11 16:43:39'),
(67, 177, 'Aprendiz', 1, '2019-12-11 05:12:48', '2019-12-11 16:44:48'),
(68, 178, 'Aprendiz', 1, '2019-12-11 05:12:38', '2019-12-11 16:45:38'),
(69, 179, 'Aprendiz', 1, '2019-12-11 05:12:33', '2019-12-11 16:46:34'),
(70, 180, 'Aprendiz', 1, '2019-12-11 05:12:18', '2019-12-11 16:56:19'),
(71, 181, 'Aprendiz', 1, '2019-12-11 05:12:07', '2019-12-11 16:57:07'),
(72, 182, 'Aprendiz', 1, '2019-12-11 05:12:05', '2019-12-11 16:58:06'),
(73, 183, 'Aprendiz', 1, '2019-12-11 05:12:11', '2019-12-11 16:59:11'),
(74, 184, 'Aprendiz', 1, '2019-12-11 06:12:01', '2019-12-11 17:00:02'),
(75, 185, 'Aprendiz', 1, '2019-12-11 06:12:49', '2019-12-11 17:00:49'),
(76, 186, 'Aprendiz', 1, '2019-12-11 06:12:43', '2019-12-11 17:01:43'),
(77, 187, 'Aprendiz', 1, '2019-12-11 06:12:27', '2019-12-11 17:02:28'),
(78, 188, 'Aprendiz', 1, '2019-12-11 06:12:21', '2019-12-11 17:03:21'),
(79, 189, 'Aprendiz', 1, '2019-12-11 06:12:03', '2019-12-11 17:04:03'),
(80, 190, 'Aprendiz', 1, '2019-12-11 06:12:48', '2019-12-11 17:04:48'),
(81, 191, 'Aprendiz', 1, '2019-12-11 06:12:34', '2019-12-11 17:07:34'),
(82, 192, 'Aprendiz', 1, '2019-12-11 06:12:33', '2019-12-11 17:08:33'),
(83, 193, 'Aprendiz', 1, '2019-12-11 06:12:22', '2019-12-11 17:09:22'),
(84, 194, 'Aprendiz', 1, '2019-12-11 06:12:06', '2019-12-11 17:10:06'),
(85, 195, 'Aprendiz', 1, '2019-12-11 06:12:52', '2019-12-11 17:10:52'),
(86, 196, 'Aprendiz', 1, '2019-12-11 06:12:01', '2019-12-11 17:12:01'),
(87, 197, 'Aprendiz', 1, '2019-12-11 06:12:49', '2019-12-11 17:12:49'),
(88, 198, 'Aprendiz', 1, '2019-12-11 06:12:47', '2019-12-11 17:13:47'),
(89, 199, 'Aprendiz', 1, '2019-12-11 06:12:41', '2019-12-11 17:14:42'),
(90, 200, 'Aprendiz', 1, '2019-12-11 06:12:13', '2019-12-11 17:16:13'),
(91, 201, 'Aprendiz', 1, '2019-12-11 06:12:08', '2019-12-11 17:17:09'),
(92, 202, 'Aprendiz', 1, '2019-12-11 06:12:06', '2019-12-11 17:18:06'),
(93, 203, 'Aprendiz', 1, '2019-12-11 06:12:52', '2019-12-11 17:18:52'),
(94, 204, 'Aprendiz', 1, '2019-12-11 06:12:52', '2019-12-11 17:19:53'),
(95, 205, 'Aprendiz', 1, '2019-12-11 06:12:46', '2019-12-11 17:20:46'),
(96, 206, 'Aprendiz', 1, '2019-12-11 06:12:46', '2019-12-11 17:22:46'),
(97, 207, 'Aprendiz', 1, '2019-12-11 06:12:33', '2019-12-11 17:23:34'),
(98, 208, 'Aprendiz', 1, '2019-12-11 06:12:24', '2019-12-11 17:24:24'),
(99, 209, 'Aprendiz', 1, '2019-12-11 06:12:00', '2019-12-11 17:26:01'),
(100, 210, 'Aprendiz', 1, '2019-12-12 01:12:42', '2019-12-12 00:27:42'),
(101, 119, 'Administrador', 1, '2019-12-06 07:12:00', '2019-12-06 06:04:01'),
(102, 211, 'Aprendiz', 1, '2019-12-13 02:12:51', '2019-12-13 01:19:51'),
(103, 212, 'Aprendiz', 1, '2019-12-13 02:12:15', '2019-12-13 01:23:15'),
(104, 213, 'Aprendiz', 1, '2019-12-13 02:12:25', '2019-12-13 01:24:26'),
(105, 214, 'Aprendiz', 1, '2019-12-13 02:12:02', '2019-12-13 01:31:02'),
(106, 215, 'Aprendiz', 1, '2019-12-13 02:12:29', '2019-12-13 01:34:30'),
(107, 216, 'Aprendiz', 1, '2019-12-13 02:12:17', '2019-12-13 01:35:17'),
(108, 217, 'Aprendiz', 1, '2019-12-13 02:12:54', '2019-12-13 01:35:54'),
(109, 218, 'Aprendiz', 1, '2019-12-13 02:12:37', '2019-12-13 01:36:37'),
(110, 219, 'Aprendiz', 1, '2019-12-13 02:12:11', '2019-12-13 01:37:12'),
(111, 220, 'Aprendiz', 1, '2019-12-13 02:12:51', '2019-12-13 01:37:51'),
(112, 221, 'Aprendiz', 1, '2019-12-13 02:12:32', '2019-12-13 01:38:32'),
(113, 222, 'Aprendiz', 1, '2019-12-13 02:12:09', '2019-12-13 01:39:09'),
(114, 223, 'Aprendiz', 1, '2019-12-13 02:12:42', '2019-12-13 01:39:43'),
(115, 224, 'Aprendiz', 1, '2019-12-13 02:12:22', '2019-12-13 01:40:22'),
(116, 225, 'Aprendiz', 1, '2019-12-13 02:12:21', '2019-12-13 01:41:21'),
(117, 226, 'Aprendiz', 1, '2019-12-13 02:12:57', '2019-12-13 01:41:57'),
(118, 227, 'Aprendiz', 1, '2019-12-13 02:12:32', '2019-12-13 01:42:32'),
(119, 228, 'Aprendiz', 1, '2019-12-13 02:12:13', '2019-12-13 01:43:13'),
(120, 229, 'Aprendiz', 1, '2019-12-13 02:12:58', '2019-12-13 01:43:59'),
(121, 230, 'Aprendiz', 1, '2019-12-13 02:12:33', '2019-12-13 01:44:33'),
(122, 231, 'Aprendiz', 1, '2019-12-13 02:12:30', '2019-12-13 01:45:30'),
(123, 232, 'Aprendiz', 1, '2019-12-13 02:12:37', '2019-12-13 01:49:37'),
(124, 233, 'Aprendiz', 1, '2019-12-13 02:12:19', '2019-12-13 01:50:20'),
(125, 234, 'Aprendiz', 1, '2019-12-13 02:12:58', '2019-12-13 01:50:59'),
(126, 235, 'Aprendiz', 1, '2019-12-13 03:12:18', '2019-12-13 02:17:18'),
(127, 236, 'Aprendiz', 1, '2019-12-13 03:12:50', '2019-12-13 02:22:50'),
(128, 237, 'Aprendiz', 1, '2019-12-13 03:12:32', '2019-12-13 02:23:33'),
(129, 238, 'Aprendiz', 1, '2019-12-13 03:12:38', '2019-12-13 02:24:39'),
(130, 239, 'Aprendiz', 1, '2019-12-13 03:12:21', '2019-12-13 02:25:21'),
(131, 240, 'Aprendiz', 1, '2019-12-13 03:12:57', '2019-12-13 02:25:58'),
(132, 241, 'Aprendiz', 1, '2019-12-13 03:12:33', '2019-12-13 02:26:33'),
(133, 242, 'Aprendiz', 1, '2019-12-13 03:12:12', '2019-12-13 02:27:12'),
(134, 243, 'Aprendiz', 1, '2019-12-13 03:12:48', '2019-12-13 02:27:48'),
(135, 244, 'Aprendiz', 1, '2019-12-13 03:12:26', '2019-12-13 02:28:27'),
(136, 245, 'Aprendiz', 1, '2019-12-13 03:12:02', '2019-12-13 02:29:03'),
(137, 246, 'Aprendiz', 1, '2019-12-13 03:12:58', '2019-12-13 02:29:58'),
(138, 247, 'Aprendiz', 1, '2019-12-13 03:12:38', '2019-12-13 02:30:39'),
(139, 248, 'Aprendiz', 1, '2019-12-13 03:12:14', '2019-12-13 02:31:14'),
(140, 249, 'Aprendiz', 1, '2019-12-13 03:12:52', '2019-12-13 02:31:53'),
(141, 250, 'Aprendiz', 1, '2019-12-13 03:12:26', '2019-12-13 02:32:27'),
(142, 251, 'Aprendiz', 1, '2019-12-13 03:12:09', '2019-12-13 02:33:09'),
(143, 252, 'Aprendiz', 1, '2019-12-13 03:12:38', '2019-12-13 02:33:38'),
(144, 253, 'Aprendiz', 1, '2019-12-13 03:12:17', '2019-12-13 02:34:17'),
(145, 254, 'Aprendiz', 1, '2019-12-13 03:12:56', '2019-12-13 02:34:57'),
(146, 255, 'Aprendiz', 1, '2019-12-13 03:12:35', '2019-12-13 02:35:36'),
(147, 256, 'Aprendiz', 1, '2019-12-13 03:12:14', '2019-12-13 02:36:14'),
(148, 257, 'Aprendiz', 1, '2019-12-13 03:12:53', '2019-12-13 02:36:53'),
(149, 258, 'Aprendiz', 1, '2019-12-13 03:12:38', '2019-12-13 02:37:39'),
(150, 259, 'Aprendiz', 1, '2019-12-13 03:12:34', '2019-12-13 02:38:35'),
(151, 260, 'Aprendiz', 1, '2019-12-13 03:12:53', '2019-12-13 02:43:53'),
(152, 261, 'Aprendiz', 1, '2019-12-13 03:12:33', '2019-12-13 02:44:34'),
(153, 262, 'Aprendiz', 1, '2019-12-13 03:12:08', '2019-12-13 02:45:08'),
(154, 263, 'Aprendiz', 1, '2019-12-13 03:12:42', '2019-12-13 02:45:42'),
(155, 264, 'Aprendiz', 1, '2019-12-13 03:12:17', '2019-12-13 02:46:17'),
(156, 265, 'Aprendiz', 1, '2019-12-13 03:12:50', '2019-12-13 02:46:50'),
(157, 266, 'Aprendiz', 1, '2019-12-13 03:12:23', '2019-12-13 02:47:24'),
(158, 267, 'Aprendiz', 1, '2019-12-13 03:12:56', '2019-12-13 02:47:56'),
(159, 268, 'Aprendiz', 1, '2019-12-13 03:12:35', '2019-12-13 02:48:35'),
(160, 269, 'Aprendiz', 1, '2019-12-13 03:12:09', '2019-12-13 02:49:09'),
(161, 270, 'Aprendiz', 1, '2019-12-13 03:12:43', '2019-12-13 02:49:43'),
(162, 271, 'Aprendiz', 1, '2019-12-13 03:12:16', '2019-12-13 02:50:16'),
(163, 272, 'Aprendiz', 1, '2019-12-13 03:12:49', '2019-12-13 02:50:49'),
(164, 273, 'Aprendiz', 1, '2019-12-13 03:12:24', '2019-12-13 02:51:24'),
(165, 274, 'Aprendiz', 1, '2019-12-13 03:12:02', '2019-12-13 02:52:02'),
(166, 275, 'Aprendiz', 1, '2019-12-13 03:12:42', '2019-12-13 02:52:42'),
(167, 276, 'Aprendiz', 1, '2019-12-13 03:12:15', '2019-12-13 02:53:16'),
(168, 277, 'Aprendiz', 1, '2019-12-13 03:12:52', '2019-12-13 02:53:52'),
(169, 278, 'Aprendiz', 1, '2019-12-13 03:12:32', '2019-12-13 02:54:32'),
(170, 279, 'Aprendiz', 1, '2019-12-13 03:12:14', '2019-12-13 02:55:14'),
(171, 280, 'Aprendiz', 1, '2019-12-13 03:12:55', '2019-12-13 02:55:56'),
(172, 281, 'Aprendiz', 1, '2019-12-16 03:12:51', '2019-12-16 14:16:52'),
(173, 282, 'Aprendiz', 1, '2019-12-16 03:12:15', '2019-12-16 14:18:16'),
(174, 283, 'Aprendiz', 1, '2019-12-16 03:12:29', '2019-12-16 14:19:29'),
(175, 284, 'Aprendiz', 1, '2019-12-16 03:12:58', '2019-12-16 14:20:59'),
(176, 285, 'Aprendiz', 1, '2019-12-16 03:12:48', '2019-12-16 14:22:48'),
(177, 286, 'Aprendiz', 1, '2019-12-16 03:12:15', '2019-12-16 14:24:15'),
(178, 287, 'Aprendiz', 1, '2019-12-19 03:12:01', '2019-12-19 02:41:02'),
(179, 288, 'Aprendiz', 1, '2019-12-19 03:12:41', '2019-12-19 02:43:41'),
(180, 289, 'Aprendiz', 1, '2019-12-19 03:12:32', '2019-12-19 02:45:32'),
(181, 290, 'Aprendiz', 1, '2019-12-19 03:12:41', '2019-12-19 02:46:42'),
(182, 291, 'Aprendiz', 1, '2019-12-19 03:12:29', '2019-12-19 02:47:29'),
(183, 292, 'Aprendiz', 1, '2019-12-19 03:12:10', '2019-12-19 02:48:10'),
(184, 293, 'Aprendiz', 1, '2019-12-19 03:12:54', '2019-12-19 02:48:54'),
(185, 294, 'Aprendiz', 1, '2019-12-19 03:12:43', '2019-12-19 02:49:43'),
(186, 295, 'Aprendiz', 1, '2019-12-19 03:12:25', '2019-12-19 02:50:25'),
(187, 296, 'Aprendiz', 1, '2019-12-19 03:12:04', '2019-12-19 02:51:04'),
(188, 297, 'Aprendiz', 1, '2019-12-19 03:12:43', '2019-12-19 02:51:44'),
(189, 298, 'Aprendiz', 1, '2019-12-19 03:12:23', '2019-12-19 02:52:23'),
(190, 299, 'Aprendiz', 1, '2019-12-19 03:12:00', '2019-12-19 02:53:00'),
(191, 300, 'Aprendiz', 1, '2019-12-19 03:12:41', '2019-12-19 02:53:42'),
(192, 301, 'Aprendiz', 1, '2019-12-19 03:12:27', '2019-12-19 02:54:27'),
(193, 302, 'Aprendiz', 1, '2019-12-19 03:12:15', '2019-12-19 02:55:15'),
(194, 303, 'Aprendiz', 1, '2019-12-19 03:12:41', '2019-12-19 02:56:41'),
(195, 304, 'Aprendiz', 1, '2019-12-19 03:12:41', '2019-12-19 02:57:41'),
(196, 305, 'Aprendiz', 1, '2019-12-19 04:12:10', '2019-12-19 03:03:11'),
(197, 306, 'Aprendiz', 1, '2019-12-19 04:12:01', '2019-12-19 03:04:01'),
(198, 307, 'Aprendiz', 1, '2019-12-19 04:12:42', '2019-12-19 03:04:42'),
(199, 308, 'Aprendiz', 1, '2019-12-19 04:12:27', '2019-12-19 03:05:27'),
(200, 309, 'Aprendiz', 1, '2019-12-19 04:12:03', '2019-12-19 03:06:03'),
(201, 310, 'Aprendiz', 1, '2019-12-19 04:12:39', '2019-12-19 03:06:40'),
(202, 311, 'Aprendiz', 1, '2019-12-19 04:12:20', '2019-12-19 03:07:20'),
(203, 312, 'Aprendiz', 1, '2019-12-19 04:12:12', '2019-12-19 03:08:12'),
(204, 313, 'Aprendiz', 1, '2019-12-19 04:12:42', '2019-12-19 03:10:42'),
(205, 314, 'Aprendiz', 1, '2019-12-19 04:12:17', '2019-12-19 03:12:17'),
(206, 315, 'Aprendiz', 1, '2019-12-19 04:12:13', '2019-12-19 03:13:14'),
(207, 316, 'Aprendiz', 1, '2019-12-19 04:12:51', '2019-12-19 03:13:51'),
(208, 317, 'Aprendiz', 1, '2019-12-19 04:12:36', '2019-12-19 03:14:37'),
(209, 318, 'Aprendiz', 1, '2019-12-19 04:12:32', '2019-12-19 03:15:32'),
(210, 319, 'Aprendiz', 1, '2019-12-19 04:12:20', '2019-12-19 03:16:20'),
(211, 320, 'Aprendiz', 1, '2019-12-19 04:12:06', '2019-12-19 03:17:07'),
(212, 321, 'Aprendiz', 1, '2019-12-19 04:12:48', '2019-12-19 03:17:48'),
(213, 322, 'Aprendiz', 1, '2019-12-19 04:12:48', '2019-12-19 03:17:48'),
(214, 323, 'Aprendiz', 1, '2019-12-19 04:12:26', '2019-12-19 03:18:26'),
(215, 324, 'Aprendiz', 1, '2019-12-19 04:12:04', '2019-12-19 03:19:04'),
(216, 325, 'Aprendiz', 1, '2019-12-19 04:12:41', '2019-12-19 03:19:42'),
(217, 326, 'Aprendiz', 1, '2019-12-19 04:12:20', '2019-12-19 03:20:21'),
(218, 327, 'Aprendiz', 1, '2019-12-19 04:12:01', '2019-12-19 03:21:01'),
(219, 328, 'Aprendiz', 1, '2019-12-19 04:12:48', '2019-12-19 03:21:48'),
(220, 329, 'Aprendiz', 1, '2019-12-19 04:12:24', '2019-12-19 03:22:25'),
(221, 330, 'Aprendiz', 1, '2019-12-19 04:12:03', '2019-12-19 03:23:03'),
(222, 331, 'Aprendiz', 1, '2019-12-19 04:12:45', '2019-12-19 03:23:46'),
(223, 332, 'Aprendiz', 1, '2019-12-22 01:12:15', '2019-12-22 00:58:16'),
(224, 333, 'Aprendiz', 1, '2019-12-22 02:12:08', '2019-12-22 01:01:08'),
(225, 334, 'Aprendiz', 1, '2019-12-22 02:12:50', '2019-12-22 01:01:50'),
(226, 335, 'Aprendiz', 1, '2019-12-22 02:12:30', '2019-12-22 01:02:31'),
(227, 336, 'Aprendiz', 1, '2019-12-22 02:12:14', '2019-12-22 01:03:15'),
(228, 337, 'Aprendiz', 1, '2019-12-22 02:12:56', '2019-12-22 01:03:56'),
(229, 338, 'Aprendiz', 1, '2019-12-22 02:12:29', '2019-12-22 01:04:29'),
(230, 339, 'Aprendiz', 1, '2019-12-22 02:12:07', '2019-12-22 01:05:07'),
(231, 340, 'Aprendiz', 1, '2019-12-22 02:12:23', '2019-12-22 01:06:23'),
(232, 341, 'Aprendiz', 1, '2019-12-22 02:12:14', '2019-12-22 01:07:14'),
(233, 342, 'Aprendiz', 1, '2019-12-22 02:12:02', '2019-12-22 01:08:02'),
(234, 343, 'Aprendiz', 1, '2019-12-22 02:12:43', '2019-12-22 01:08:44'),
(235, 344, 'Aprendiz', 1, '2019-12-22 02:12:27', '2019-12-22 01:09:27'),
(236, 345, 'Aprendiz', 1, '2019-12-22 02:12:14', '2019-12-22 01:10:14'),
(237, 346, 'Aprendiz', 1, '2019-12-22 02:12:08', '2019-12-22 01:11:08'),
(238, 347, 'Aprendiz', 1, '2019-12-22 02:12:50', '2019-12-22 01:11:50'),
(239, 348, 'Aprendiz', 1, '2019-12-22 02:12:37', '2019-12-22 01:12:37'),
(240, 349, 'Aprendiz', 1, '2019-12-22 02:12:21', '2019-12-22 01:13:21'),
(241, 350, 'Aprendiz', 1, '2019-12-22 02:12:17', '2019-12-22 01:14:17'),
(242, 351, 'Aprendiz', 1, '2019-12-22 02:12:08', '2019-12-22 01:15:09'),
(243, 352, 'Aprendiz', 1, '2019-12-22 02:12:52', '2019-12-22 01:15:52'),
(244, 353, 'Aprendiz', 1, '2019-12-22 02:12:31', '2019-12-22 01:16:32'),
(245, 354, 'Aprendiz', 1, '2019-12-22 02:12:18', '2019-12-22 01:17:18'),
(246, 355, 'Aprendiz', 1, '2019-12-22 02:12:03', '2019-12-22 01:18:03'),
(247, 356, 'Aprendiz', 1, '2019-12-22 02:12:38', '2019-12-22 01:18:38'),
(248, 357, 'Aprendiz', 1, '2019-12-22 02:12:19', '2019-12-22 01:22:19'),
(249, 358, 'Aprendiz', 1, '2019-12-22 02:12:12', '2019-12-22 01:23:12'),
(250, 359, 'Aprendiz', 1, '2019-12-22 02:12:50', '2019-12-22 01:23:50'),
(251, 360, 'Aprendiz', 1, '2019-12-22 02:12:29', '2019-12-22 01:24:29'),
(252, 361, 'Aprendiz', 1, '2019-12-22 02:12:08', '2019-12-22 01:25:08'),
(253, 362, 'Aprendiz', 1, '2019-12-22 02:12:56', '2019-12-22 01:25:57'),
(254, 363, 'Aprendiz', 1, '2019-12-22 02:12:47', '2019-12-22 01:26:47'),
(255, 364, 'Aprendiz', 1, '2019-12-22 02:12:37', '2019-12-22 01:27:37'),
(256, 365, 'Aprendiz', 1, '2019-12-22 02:12:20', '2019-12-22 01:28:20'),
(257, 366, 'Aprendiz', 1, '2019-12-22 02:12:40', '2019-12-22 01:29:40'),
(258, 367, 'Aprendiz', 1, '2019-12-22 02:12:41', '2019-12-22 01:30:41'),
(259, 368, 'Aprendiz', 1, '2019-12-22 02:12:35', '2019-12-22 01:32:35'),
(260, 369, 'Aprendiz', 1, '2019-12-22 02:12:29', '2019-12-22 01:33:30'),
(261, 370, 'Aprendiz', 1, '2019-12-22 02:12:21', '2019-12-22 01:34:22'),
(262, 371, 'Aprendiz', 1, '2019-12-22 02:12:28', '2019-12-22 01:35:28'),
(263, 372, 'Aprendiz', 1, '2019-12-22 02:12:33', '2019-12-22 01:36:33'),
(264, 373, 'Aprendiz', 1, '2019-12-22 02:12:17', '2019-12-22 01:37:17'),
(265, 374, 'Aprendiz', 1, '2019-12-22 02:12:59', '2019-12-22 01:37:59'),
(266, 375, 'Aprendiz', 1, '2019-12-22 02:12:47', '2019-12-22 01:38:47'),
(267, 376, 'Aprendiz', 1, '2019-12-22 02:12:21', '2019-12-22 01:39:21'),
(268, 377, 'Aprendiz', 1, '2019-12-22 02:12:55', '2019-12-22 01:39:55'),
(269, 378, 'Aprendiz', 1, '2019-12-22 02:12:38', '2019-12-22 01:40:38'),
(270, 379, 'Aprendiz', 1, '2019-12-22 02:12:42', '2019-12-22 01:41:43'),
(271, 380, 'Aprendiz', 1, '2019-12-22 02:12:38', '2019-12-22 01:42:38'),
(272, 381, 'Aprendiz', 1, '2019-12-22 02:12:13', '2019-12-22 01:43:13'),
(273, 382, 'Aprendiz', 1, '2019-12-22 02:12:49', '2019-12-22 01:43:49'),
(274, 383, 'Aprendiz', 1, '2019-12-22 02:12:48', '2019-12-22 01:48:48'),
(275, 384, 'Aprendiz', 1, '2019-12-22 02:12:26', '2019-12-22 01:49:26'),
(276, 385, 'Aprendiz', 1, '2019-12-22 02:12:17', '2019-12-22 01:50:17'),
(277, 386, 'Aprendiz', 1, '2019-12-22 02:12:53', '2019-12-22 01:50:54'),
(278, 387, 'Aprendiz', 1, '2019-12-22 02:12:33', '2019-12-22 01:51:34'),
(279, 388, 'Aprendiz', 1, '2019-12-22 02:12:09', '2019-12-22 01:52:10'),
(280, 389, 'Aprendiz', 1, '2019-12-22 02:12:00', '2019-12-22 01:53:00'),
(281, 390, 'Aprendiz', 1, '2019-12-22 02:12:54', '2019-12-22 01:53:54'),
(282, 391, 'Aprendiz', 1, '2019-12-22 02:12:50', '2019-12-22 01:54:50'),
(283, 392, 'Aprendiz', 1, '2019-12-22 02:12:33', '2019-12-22 01:55:34'),
(284, 393, 'Aprendiz', 1, '2019-12-22 02:12:16', '2019-12-22 01:56:17'),
(285, 394, 'Aprendiz', 1, '2019-12-22 02:12:16', '2019-12-22 01:57:17'),
(286, 395, 'Aprendiz', 1, '2019-12-22 02:12:54', '2019-12-22 01:57:54'),
(287, 396, 'Aprendiz', 1, '2019-12-22 02:12:54', '2019-12-22 01:58:54'),
(288, 397, 'Aprendiz', 1, '2019-12-22 02:12:49', '2019-12-22 01:59:49'),
(289, 398, 'Aprendiz', 1, '2019-12-22 03:12:28', '2019-12-22 02:00:28'),
(290, 399, 'Aprendiz', 1, '2019-12-22 03:12:20', '2019-12-22 02:01:20'),
(291, 400, 'Aprendiz', 1, '2019-12-22 03:12:59', '2019-12-22 02:01:59'),
(292, 401, 'Aprendiz', 1, '2019-12-22 03:12:34', '2019-12-22 02:02:35'),
(293, 402, 'Aprendiz', 1, '2019-12-22 03:12:15', '2019-12-22 02:03:16'),
(294, 403, 'Aprendiz', 1, '2019-12-22 03:12:11', '2019-12-22 02:04:11'),
(295, 404, 'Aprendiz', 1, '2019-12-22 03:12:46', '2019-12-22 02:04:46'),
(296, 405, 'Aprendiz', 1, '2019-12-22 03:12:19', '2019-12-22 02:05:20'),
(297, 406, 'Aprendiz', 1, '2019-12-22 03:12:29', '2019-12-22 02:06:29'),
(298, 407, 'Aprendiz', 1, '2019-12-22 03:12:21', '2019-12-22 02:07:21'),
(299, 408, 'Aprendiz', 1, '2019-12-22 03:12:22', '2019-12-22 02:08:22'),
(300, 409, 'Aprendiz', 1, '2019-12-22 03:12:05', '2019-12-22 02:09:05'),
(301, 410, 'Aprendiz', 1, '2019-12-22 03:12:43', '2019-12-22 02:09:43'),
(302, 411, 'Aprendiz', 1, '2019-12-22 03:12:24', '2019-12-22 02:10:24'),
(303, 412, 'Administrador', 1, '2019-12-27 01:12:44', '2019-12-27 12:11:44'),
(304, 412, 'Instructor', 1, '2019-12-27 01:12:44', '2019-12-27 12:11:44'),
(305, 413, 'Administrador', 1, '2020-03-09 10:03:11', '2020-03-09 22:41:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_contactos`
--

CREATE TABLE `usuarios_contactos` (
  `contacto_codigo` int(30) NOT NULL,
  `ac_correo` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `ac_telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_contactos`
--

INSERT INTO `usuarios_contactos` (`contacto_codigo`, `ac_correo`, `ac_telefono`) VALUES
(14, 'JAUN@MISENA.EDU.CO', '3115118238'),
(15, 'SYRIVERA89@MISENA.EDU.CO', '3115118238'),
(16, 'M@GMAIL.COM', '2554885454'),
(17, 'DIOMEDEZCERQUERA@GMAIL.COM', ''),
(18, 'ANDRESITOPICHICA@GMAIL.COM', '2551115544'),
(19, 'GARCIANOGUERA21@GMAIL.COM', '3122511'),
(20, 'DAIROHERNANDEZBONILLA@HOTMAIL.COM', '3137574488'),
(21, 'MAURISTH@HOTMAIL.COM', '3124757236'),
(22, 'OSCARANDRESIL@HOTMAIL.COM', ''),
(23, 'WILFREDOFIOLE06@GMAIL.COM', ''),
(24, 'RALEMUSCA@HOTMAIL.COM', ''),
(25, 'SYRIVERA89@MISENA.EDU.CO', '312456955'),
(26, 'M@MISENA.EDU.CO', '3115118238'),
(27, 'DIANA@MISENA.EDU.CO', '3115118238'),
(28, 'JALADANA3@MISENA.EDU.CO', '3188085274'),
(29, 'ALVAROJAVIERMEDINA914@GMAIL.COM', ''),
(30, 'RAMIREZONEVICTOR@GMAIL.COM', ''),
(31, 'KRONW_0305@HOTMAIL.COM', '3205036084'),
(32, 'DEBORITAQ25@HOTMAIL.COM', ''),
(33, 'OSWALDOTRUJILLO14@GMAIL.COM', ''),
(34, 'BRAYANPEREX10@GMAIL.COM', '3143851517'),
(35, 'JUAN98DC@GMAIL.COM', ''),
(36, 'DANIIELRAMIREZ-2504@HOTMAIL.COM', ''),
(37, 'MILTONJOSEMARROQUIN123@GMAIL.COM', ''),
(38, 'KMILOCUELLAR1998@GMAIL.COM', '3202562929'),
(39, 'SERGINOSCALCOMANIAS@GMAIL.COM', ''),
(40, 'HUBERVEGA0183@HOTMAIL.COM', ''),
(41, 'EYDERCALDON@MISENA.EDU.CO', ''),
(42, 'TGYFABIAN@HOTMAIL.COM', ''),
(43, 'KDNA42@GMAIL.COM', '3143419902'),
(44, 'MELQUICEDEC.MANOSCA@GMAIL.COM', ''),
(45, 'CAMPOFLORANA@GMAIL.COM', ''),
(46, 'JAVISCALVACHE2909@GMAIL.COM', ''),
(47, 'SANCHEZPERDOMO111@GMAIL.COM', '3143091446'),
(48, 'COLANDES.2002@GMAIL.COM', '3003108824'),
(49, 'YANCARLOSGARZON36@GMAIL.COM', '3132662502'),
(50, 'KEVINMAO30@GMAIL.COM', '3186912316'),
(51, 'STIVENVILLAD@GMAIL.COM', ''),
(52, 'RAMOSNATA26@GMAIL.COM', '3133722942'),
(53, 'CRIS230ORT@GMAIL.COM', ''),
(54, 'NATALIALEIVA2469@GMAIL.COM', ''),
(55, 'CRISTIANDAVID.GG16@GMAIL.COM', ''),
(56, 'ADOLFOCEBALLOS666@GMAIL.COM', '3003115052'),
(57, 'JDC_53@HOTMAIL.COM', ''),
(58, 'CUELLARTATIANA7@YAHOO.COM', ''),
(59, 'JUANCARLOSPACHON1989@GMAIL.COM', '3212163764'),
(60, 'KATHALEIABP@GMAIL.COM', ''),
(61, 'BIGPITI_007@HOTMAIL.COM', '3167637469'),
(62, 'YASNOADRIANDATOS@GMAIL.COM', '3143535182'),
(63, 'CERQUERAMARIO@HOTMAIL.COM', ''),
(64, 'DIANAGUARNIZO03@GMAIL.COM', ''),
(65, 'CAMILOPOCHE@GMAIL.COM', ''),
(66, 'STEFANYORTIZ7@YAHOO.COM', '3158801834'),
(67, 'MARLONIPIA2@GMAIL.COM', ''),
(68, 'JAVIERSTIVENGONZALEZURRIAGO117@GMAIL.COM', ''),
(69, 'ZZSMKFEAR@GMAIL.COM', ''),
(70, 'ANDRECASTRO2001@OUTLOOK.COM', '3143930819'),
(71, 'DUVERJUNIOR-URRIAGO@HOTMAIL.COM', ''),
(72, 'ANGIEFERNANDAVIDAL99@GMAIL.COM', ''),
(73, 'IBANEZJUAN150@GMAIL.COM', '3223712820'),
(74, 'JCERQUERAPOLO@GMAIL.COM', ''),
(75, 'TRIANAMSANTIAGO01@GMAIL.COM', '3114806245'),
(76, 'JSCALDERON91@MISENA.EDU.CO', '3156330506'),
(77, 'LAURA022802@GMAIL.COM', '3102885913'),
(78, 'JESUSDAVIDCABRERABUSTOS@YAHOO.ES', '3114493514'),
(79, 'LUISFERNANDOCUCHIMBA@GMAIL.COM', ''),
(80, 'JOHANROJAS2185@GMAIL.COM', ''),
(81, 'HIDELYYOHANA@GMAIL.COM', '3009384846'),
(82, 'LUZ.MLT24@GMAIL.COM', ''),
(83, 'LUZ.MLT24@GMAIL.COM', ''),
(84, 'LUZ.MLT24@GMAIL.COM', ''),
(85, 'APRENDIZ@SENA.EDU.CO', '3209472954'),
(86, 'SANCHEZAMBITOL@GMAIL.COM', ''),
(87, 'LUZ.MLT24@GMAIL.COM', '3228080718'),
(88, 'LUIS22095@HOTMAIL.COM', ''),
(89, 'JOSEHEP05@GMAIL.COM', '3203637998'),
(90, 'LUIS22095@HOTMAIL.COM', '3008937483'),
(91, 'JOSE88TUNUBALA2019@GMAIL.COM', '3148488683'),
(92, 'DIDIOHERNEY@GMAIL.COM', '3006382034'),
(93, 'BRAYAN11SANCHO@GMAIL.COM', ''),
(94, 'KARENOIDOR998@GMAIL.COM', '3132151000'),
(95, 'MJHON6021@GMAIL.COM', '3007432320'),
(96, 'ADRIANAFERNANDAROJAS02@GMAIL.COM', '3142723921'),
(97, 'MUNOZALBALUCELY@GMAIL.COM', '3227533148'),
(98, 'ALEXANDRASANCHEZ13438@GMAIL.COM', '3006327930'),
(99, 'LUISAFERNANDA5715@GMAIL.COM', '3004540590'),
(100, 'JULIAN09PALMITO2017@GMAIL.COM', '3226382193'),
(101, 'LUZ.MLT24@GMAIL.COM', '3128428318'),
(102, 'MANQUILLOYOHANA3@GMAIL.COM', '3229008630'),
(103, 'JERSONROLANDOCASAMACHIN@GMAIL.COM', '3117823457'),
(104, 'JALDEMO@MISENA.EDU.CO', '3115118238'),
(109, 'ELON@GMAIL.COM', '324234'),
(110, 'JUANITA@GMAIL.COMS', '458965233'),
(111, 'JUANITA@GMAIL.COM', '458965233'),
(112, 'LU@GMAIL.COM', '3136426375'),
(113, 'JHON@GMAIL.COM', '3214551211'),
(114, 'SMYLLEALVARADO@GMAIL.COM', '3166411838'),
(115, 'juanma@misena.edu.co', '3221545244'),
(116, 'juan@misena.edu.co', '3165411414'),
(117, 'l@gmail.com', '3254114'),
(118, 'hernas@gmail.com', '324234234'),
(119, 'syrivera89@misena.edu.co', '3136426375'),
(120, 'jtobarrios99@gmail.com', '3136426375'),
(121, 'alejoo0929@outlook.com', '3142202388'),
(122, 'angyeclavijo@gmail.com', ''),
(123, 'gersonalmario@gmail.com', '3103563939'),
(124, 'jccaldon1@misena.edu.co', '3228763128'),
(125, 'apariciocolloecue.12345@gmail.com', '3117685950'),
(126, 'adbarrios10@misena.edu.co', '3136426375'),
(127, 'cpastuso47@gmail.com', '3103074655'),
(128, 'josemag1988@hotmail.com', '3143833848'),
(129, 'yepesmenza1@gmail.com', '3163639664'),
(130, 'lauraccs98@hotmail.com', '3152456635'),
(131, 'cristian.liscano@hotmail.com', '0'),
(132, 'andrealosada12@hotmail.com', '3115518944'),
(133, 'germanchozantoz@gmail.com', '3118453858'),
(134, 'yulyalejandracarvajal98@gmail.com', '3217621290'),
(135, 'dianajeraldines@gmail.com', '3136426375'),
(136, 'GUARACAA01@GMAIL.COM', '0'),
(137, 'luzamparoarredondo1@gmail.com', '3136426375'),
(138, 'oscarvalencia25@hotmail.com', '3118149193'),
(139, 'constancitacano88@gmail.com', '3123936745'),
(140, 'linamarcelalemuscstillo@gmail.com', '0'),
(141, 'danielstifen29@gmail.com', '3112641324'),
(142, 'danielamedina2708@gmail.com', '3134627369'),
(143, 'raordo23@gmail.com', '3168587160'),
(144, 'ricargar040217@gmail.com', '3209260033'),
(145, 'yilariasceba@gmail.com', '3133081031'),
(146, 'cris15112001@hotmail.com', '0'),
(147, 'SANDRA1.0AVON@hotmail.com', '0'),
(148, 'lisdayanaibarra@outlook.com', '3124786851'),
(149, 'julianaossa2002@gmail.com', '3145920366'),
(150, 'simonjaramillo87@gmail.com', ''),
(151, 'ANDERSON123LOLJ@GMAIL.COM', '3222472914'),
(152, 'mramos978@misena.edu.co', '3153819946'),
(153, 'elnima2@gmail.com', ''),
(154, 'davidyy417@gmail.com', '3208104187'),
(155, 'tatiliponce18.f@gmail.com', '3167623608'),
(156, 'camilocomunica12@gmail.com', ''),
(157, 'maidyfernandachantre@gmail.com', '3005555555'),
(158, 'mayerlyvelasquito@gmail.com', '3003456789'),
(159, 'yoveco23@gmail.com', '3175400202'),
(160, 'carlosandreshorta1@gmail.com', ''),
(161, 'miggeyvi.9@gmail.com', '3166083501'),
(162, 'erik-2609@hotmail.com', '3112647083'),
(163, 'adrian-041994@hotmail.com', '3124853131'),
(164, 'medinatunja26@gmail.com', '3203601380'),
(165, 'amavila558@misena.edu.co', '3223407729'),
(166, 'monialejara@gmail.com', '3118017660'),
(167, 'patriciayasnoquina@gmail.com', '3107693051'),
(168, 'anyipaolapetevi24@gmail.com', '3185597135'),
(169, 'syrivera89@misena.edu.co', '3162072319'),
(170, 'danielvitoviz23@gmail.com', '3136426375'),
(171, 'yuli13rojas13@hotmail.com', ''),
(172, 'jhonnyanaya11@gmail.com', ''),
(173, 'ahudryramirezdiaz18@gmail.com', ''),
(174, 'pachecob750@gmail.com', '3133184475'),
(175, 'juliandavidperezdiaz885@gmail.com', ''),
(176, 'yilver18campos@gmail.com', '3114772450'),
(177, 'patriciayasnoquina@gmail.com', '3002134522'),
(178, 'jheandresalvarado90@gmail.com', ''),
(179, 'ed.mauricio1245@gmail.com', '3204130266'),
(180, 'juliandgm17@gmail.com', '3005553777'),
(181, 'yulliguaraka@gmail.com', '3125057784'),
(182, 'indriyulaidy12@gmail.com', ''),
(183, 'ruizgomeza421@gmail.com', '3213035750'),
(184, 'sergiomendezenrique575@gmail.com', '3115847130'),
(185, 'edwinandresleon10@gmail.com', '3213155970'),
(186, 'katerineramos259@gmail.com', '3214590063'),
(187, 'stiven.kabrera7@gmail.com', '3143130721'),
(188, 'katerinvalentina.cortes@gmail.com', '3143208818'),
(189, 'oscarleiva189@gmail.com', '3213411803'),
(190, 'Alexanderortizperdomo@gmail.com', '3162546837'),
(191, 'santacruzaldair169@gmail.com', '3183047631'),
(192, 'estefivargas1692@gmail.com', '3127837920'),
(193, 'achipizmaria20@gmail.com', '3104848867'),
(194, 'manuelarodriguezchavarro@gmail.com', '3212601132'),
(195, 'yenyultengo94@gmail.com', '3204715265'),
(196, 'Cristhian97bejarano@gmail.com', '3204636415'),
(197, 'mairaarias2019@gmail.com', ''),
(198, 'mariaperez-14@hotmail.com', '3007829130'),
(199, 'lorensanchez1131@gmail.com', '3209099878'),
(200, 'michell.mt7@gmail.com', '3155605144'),
(201, 'dianacasamachin310@gmail.com', '3107920596'),
(202, 'ASyeimyquintero29@gmail.com', '3132708759'),
(203, 'jimenamera1992@gmail.com', '3115238960'),
(204, 'medinaflor577@gmail.com', '3185502901'),
(205, 'llanoszunigaemersonricardo@gmail.com', '3217174872'),
(206, 'angiesofia206@gmail.com', '3224256091'),
(207, 'vanesanasayo15@gmail.com', '3154185717'),
(208, 'ampatersonv@gmail.com', '3136042218'),
(209, 'linamarcelamedinanarvaez@gmail.com', '3115429441'),
(210, 'juanma@misena.edu.co', '0'),
(211, 'davidarguello115@gmail.com', '3202671773'),
(212, 'JARIVER89@GMAIL.COM', '3117756242'),
(213, 'joseperezbrand97@gmail.com', '3194460280'),
(214, 'javiedna29@gmail.com', '3178610438'),
(215, 'eduinandrade93@gmail.com', '0'),
(216, 'andresmaca1988@gmail.com', '3143106836'),
(217, 'ancizarrojas2019@gmail.com', '3175243656'),
(218, 'hioibagonedwin@gmail.com', '3125043325'),
(219, 'liscanosjardineria@gmail.com', '3229377871'),
(220, 'alveiromuse@gmail.com', '3197566142'),
(221, 'javier3106258950@gmail.com', '3144858612'),
(222, 'luisjavierramirez44@gmail.com', '3206660720'),
(223, 'DiegoAlexanderUltengo1999@gmail.com', '3125773643'),
(224, 'josearmandocalderoncornejo@gmail.com', '3208214759'),
(225, 'josetapiero777@gmail.com', '3212539325'),
(226, 'donalquintero20@gmail.com', '3112482376'),
(227, 'wceballosq@gmail.com', '0'),
(228, 'afcastillo@unicauca.edu.co', '3124968497'),
(229, 'norbeyhuila1985@gmail.com', '3229016080'),
(230, 'lady-yaneth@hotmail.es', '3105651456'),
(231, 'dgv301@hotmail.com', '3208176461'),
(233, 'enyujar11@hotmail.com', '3184206980'),
(234, 'sergiostiven177@gmail.com', '31746439'),
(235, 'DOPEMUL@GMAIL.COM', '3204610816'),
(237, 'yudytroyano@outlook.com', '3203449786'),
(238, 'robinsonmedinaramirez@gmail.com', '3144079213'),
(239, 'agustincardenaschavarro@gmail.com', '3107781631'),
(240, 'nanitaguevara9415@gmail.com', '3104824060'),
(241, 'mncetinagarcia@gmail.com', '3195964271'),
(243, 'malejairo10@gmail.com', '3123844546'),
(244, 'mayutru1192@gmail.com', '3102383986'),
(245, 'ds781013@gmail.com', '3115818465'),
(246, 'sandovaldaniel697@gmail.com', '3213865643'),
(247, 'rodrigoperdomot@gmail.com', '3113716169'),
(248, 'cristianjob1997@gmail.com', '3142722434'),
(249, 'dapuyo311@gmail.com', '3124440808'),
(250, 'adolfomoncada98@gmail.com', '3146910922'),
(251, 'yovannymm666@gmail.com', '3227686955'),
(253, 'alejita191525@gmail.com', '3102571382'),
(254, 'bisneydiembus@gmail.com', '3113975770'),
(255, 'andreaparraangel015@gmail.com', '3144785161'),
(256, 'yaquelineyasno@gmail.com', '3105543557'),
(257, 'jesushpc2003@gmail.com', '3134614472'),
(258, 'mariapaula.2003@live.com', '3152111405'),
(259, 'micheldaninymosquera@gmail.com', '3112034289'),
(260, 'angela_mercedes_17@hotmail.com', '3108932267'),
(261, 'MAR1997SOL@GMAIL.COM', '3178520978'),
(262, 'nasayonatalia11@gmail.com', '3185398669'),
(263, 'camilovidarte3012@gmail.com', '3214597849'),
(264, 'osoriocamayoyeimy@gmail.com', '3184594024'),
(265, 'mosquerasoraya2@gmail.com', '3209791023'),
(266, 'lizeth15.lgl@gmail.com', '3107689083'),
(267, 'nuevaesperanza4707@gmail.com', '3193326064'),
(268, 'luisedwar99@gmail.com', '3144408030'),
(269, 'nenitaperez1282@gmail.com', '3123281782'),
(270, 'amgel279306mayita@gmail.com', '3124030413'),
(271, 'candelasilvaednarocio@gmail.com', '3134870864'),
(272, 'anyilisethliscano@gmail.com', '3209147340'),
(273, 'karolmedinag18@gmail.com', '3102498586'),
(274, 'mlopezfer997@gmail.com', '3142106887'),
(275, 'johanestiven210aa210@gmail.com', '3112589830'),
(276, 'esmid19@hotmail.com', '3174551806'),
(277, 'edith077@hotmail.com', '3106660875'),
(278, 'geovannacarabali11@gmail.com', '3145651315'),
(279, 'stefasanabria2002@gmail.com', '3132484078'),
(280, 'ramirezurbanojhonjaiber@gmail.com', '3175190766'),
(281, 'garcia.pedrero18@gmail.com', '3123037924'),
(282, 'malejachantre126@gmail.com', '3133087231'),
(283, 'susana.mutiz@gmail.com', '3116580764'),
(284, 'lv695319@gmail.com', '3132717828'),
(285, 'eriktatiana0601@hotmail.com', '3228355379'),
(286, 'carolinatumbo@gmail.com', '3123118187'),
(287, 'cristina25257@hotmail.com', '3228837636'),
(288, 'monialeserrato@hotmail.com', '3136076890'),
(289, 'nrestrepomontealegre@gmail.com', '3115117272'),
(290, 'yesmy68@hotmail.es', '3144344583'),
(291, 'bianny.andelacha@gmail.com', '3204518691'),
(292, 'perezsthefania@gmail.com', '3123882906'),
(293, 'laaglida@hotmail.com', '3118781152'),
(294, 'Veronicanoriegaquiroga@gmail.com', '3138567246'),
(295, 'casallasy34@gmail.com', '3157736162'),
(296, 'yuriyisedgarciaperdomo@gmail.com', '3132046190'),
(297, 'toledocruzmariaelizabeth1021@gmail.com', '3166326495'),
(298, 'paulalissed@gmail.com', '3133536174'),
(299, 'elianatovar1999@gmail.com', '00'),
(300, 'elianahios215@gmail.com', '3115433740'),
(301, 'stefaniamanchola25@gmail.com', '3162425874'),
(302, 'abgmnatalialozano@gmail.com', '3108190615'),
(303, 'medinacotacio25@gmail.com', '3118032993'),
(304, 'gilquinteromariacamila89@gmail.com', '3204807498'),
(305, 'gluzclarita30@gmail.com', '3182955133'),
(306, 'esneiderlopezfernandez@gmail.com', '0'),
(307, 'zamiquintero@outlook.es', '3103108182'),
(308, 'helenlosada3@gmail.com', '3102462692'),
(309, 'elizabethmanquillo.05@gmail.com', '3224184495'),
(310, 'luisa.lg451@hotmail.com', '3142707352'),
(311, 'juancarlospajoyultengo@gmail.com', '0'),
(312, 'fernandaquintero_15@outlook.com', '0'),
(313, 'pvalentinamour@gmail.com', '3134963694'),
(314, 'flacayuli.90@hotmail.com', '3157115473'),
(315, 'hellenjow@gmail.com', '3158964777'),
(317, 'lorenaclaudia425@gmail.com', ''),
(318, 'luzangelaramosmuelas@gmail.com', '3108102314'),
(319, 'jsquintero30@misena.edu.co', '3123970480'),
(320, 'pajoyyennifer@gmail.com', '3115901274'),
(321, 'konzramos@gmail.com', '3107072937'),
(322, 'konzramos@gmail.com', '3107072937'),
(323, 'mafevargassoto@hotmail.com', '3107123314'),
(326, 'joseale98.jam@gmail.com', '3208003234'),
(327, 'nathaneira1999@gmail.com', '3165363306'),
(328, 'ninijohana368@gmail.com', '3112081416'),
(329, 'leidylorens2412@gmail.com', '3134535940'),
(330, '1004248780g@gmail.com', '3208089882'),
(331, 'toroyum905@gmail.com', '3125747810'),
(332, 'valentinavargas@gmail.com', '3107370207'),
(333, 'yulizavargas07@gmail.com', '3132177588'),
(335, 'jhostin9217@gmail.com', '3108298290'),
(336, 'yilverchilo9518@gmail.com', '3123266872'),
(337, 'zrt.celenez@gmail.com', '3228807188'),
(340, 'sava160686@hotmail.com', '0'),
(341, 'lidapenagos1994@gmail.com', '3212822204'),
(342, 'paolita618pardo@gmail.com', '5732070704'),
(343, 'agonzalezvia@gmail.com', '3225634475'),
(344, 'anacatalinavalencia@gmail.com', '3218592317'),
(345, 'nellytaperdomo@gmail.com', '3226413229'),
(346, 'nenisjeims@gmail.com', '0'),
(347, 'hgomezmenza@gmail.com', '3113819075'),
(348, 'vargasjohana.1998@gmail.com', '3202679630'),
(349, 'mapoco99@gmail.com', '3127104954'),
(350, 'yolibethmarin2016@gmail.com', '3212256619'),
(351, 'yandyvalencia2019@gmail.com', '3213226573'),
(352, 'mjeronimamensa@gmail.com', '0'),
(353, 'mimona0277@gmail.com', '0'),
(354, 'noralbapardo17@gmail.com', '3118903903'),
(355, 'ycarolina0612@gmail.com', '3108105946'),
(356, 'yilverchilo9518@gmail.com', '0'),
(357, '223juanss@gmail.com', '3125387041'),
(358, 'linasusatama@gmail.com', '3134926785'),
(359, 'santiagoochoaceballos@gmail.com', '3112733313'),
(360, 'alcibiadesvelascotenorio@gmail.com', '3208622630'),
(361, 'nilson.achipiz04@gmail.com', '3133922006'),
(362, 'andres.f.yule@hotmail.com', '3204186278'),
(363, 'jazbleidyalvira657@gmail.com', '3102848813'),
(364, 'anyilorenacampoangel9@gmail.com', '3105832250'),
(365, 'mileidyyonda99@gmail.com', '3213359773'),
(367, 'perdomo1933@hotmail.com', '3107541719'),
(368, 'claracortesramirez03@gmail.com', '3124171966'),
(369, 'wilferno23@gmail.com', '3125593941'),
(370, 'campovidarteleidyrocio@gmail.com', '3162557434'),
(371, 'herncamilo@hotmail.es', '3143297424'),
(372, 'claudiabarrero51@gmail.com', '3117519053'),
(373, 'guaracayasnolina@gmail.com', '3143184234'),
(374, 'carolinaqui97@gmail.com', '3104196349'),
(375, 'diegocalderon1099@gmail.com', '3222408941'),
(376, 'cristiancamiloserratocastillo@gmail.com', '3214643858'),
(377, 'elkinjulian1999@gmail.com', '3102092455'),
(378, 'marlonstivenosorio07@gmail.com', '3178435747'),
(379, 'lopezjaimesjuancarlos@gmail.com', '3124181911'),
(380, 'medardocolla89@gmail.com', '3107864122'),
(381, 'campomunozhectorfredy@gmail.com', '3177466411'),
(382, 'montenegromanquilloerika@gmail.com', '3212913468'),
(383, 'luisfern16@hotmail.com', '3212624537'),
(384, 'dapeal01@gmail.com', '3227175207'),
(385, 'osunashirley2001@gmail.com', '3203424502'),
(386, 'adrosero21@misena.edu.co', '3115151876'),
(387, 'patriciamompotes@gmail.com', '3228003847'),
(388, 'yrivera84@misena.edu.co', '3102809132'),
(389, 'rangelica780@yahoo.com', ''),
(390, 'fabioandresrojas19@gmail.com', '3117707018'),
(391, 'doralid2525gomez@gmail.com', '3204988426'),
(392, 'Katherinealdanatovar@gmail.com', '3174607293'),
(393, 'mayerlyquira@gmail.com', '3118314838'),
(394, 'jemagaher17@hotmail.es', '3133503854'),
(395, 'luisachaux04@hotmail.com', '3208997055'),
(396, 'jeferson122@hotmail.es', '3143039223'),
(397, 'fernanda150992@gmail.com', '3132487856'),
(398, 'emanuelsantiago201112@gmail.com', '3122538903'),
(399, 'dijema1@hotmail.com', '3143106836'),
(400, 'cuellardieg@gmail.com', '3212631189'),
(401, 'nataliaromero2028@gmail.com', '3202018560'),
(402, 'nataliaangel1999@gmail.com', '3108710220'),
(403, 'jefersonsaenz202295@gmail.com', '3112487997'),
(404, 'juanca_chico@hotmail.com', '3162481547'),
(405, 'agreda2611@live.com', '3183316035'),
(406, 'Luzmarlearit@hotmail.com', '3114870088'),
(407, 'estefanylizgonsalez22@gmail.com', '3113247476'),
(408, 'mayerduran1404@gmail.com', '3102705535'),
(409, 'alejandrapimentel0201@gmail.com', '3124434025'),
(410, 'yulianaber456@gmail.com', '3118639257'),
(411, 'karenjimena.angelg@gmail.com', '3134148306'),
(412, 'hcoronadoh@misena.edu.co', '3163046328'),
(413, 'alrugo77@gmail.com', '3127424653');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_datos`
--

CREATE TABLE `usuarios_datos` (
  `datos_codigo` int(11) NOT NULL,
  `da_doc` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `da_nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `da_apellido` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `da_nacimiento` date NOT NULL,
  `da_edad` int(2) NOT NULL,
  `da_genero` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_datos`
--

INSERT INTO `usuarios_datos` (`datos_codigo`, `da_doc`, `da_nombre`, `da_apellido`, `da_nacimiento`, `da_edad`, `da_genero`) VALUES
(39, '12280620', 'SERGIO ALEXANDER', 'VEGA', '0000-00-00', 0, 'M'),
(40, '12282178', 'HUBER', 'VEGA GONZALEZ', '0000-00-00', 0, 'M'),
(41, '12282187', 'EYDERVI ANDREY', 'CALDON YULE', '0000-00-00', 0, 'M'),
(42, '14138289', 'FABIAN ARCESIO', 'PORTILLO BARBOSA', '0000-00-00', 0, 'M'),
(43, '18112142', 'LIPCIO EDMUNDO', 'CADENA SALAZAR', '0000-00-00', 0, 'M'),
(44, '4896925', 'MELQUICEDEC', 'MAÃ‘OSCA MINU', '0000-00-00', 0, 'M'),
(45, '67007915', 'FLOR ANA', 'CAMPO TUMBO', '0000-00-00', 0, 'F'),
(46, '1004247516', 'JAVIER', 'PIPI CALVACHE', '0000-00-00', 0, 'M'),
(47, '1004248110', 'LUIS ENRIQUE', 'SANCHEZ PERDOMO', '0000-00-00', 0, 'M'),
(48, '1004248272', 'ANDRES FABIAN', 'CEBALLOS PAJA', '0000-00-00', 0, 'M'),
(49, '1004248735', 'YAN CARLOS', 'ARTUNDUAGA GARZON', '0000-00-00', 0, 'M'),
(50, '1192792620', 'KEVIN MAURICIO', 'CUETOCUE CAMPO', '0000-00-00', 0, 'M'),
(51, '1000968730', 'HAMILTON STIVEN', 'ROJAS VILLAQUIRAN', '0000-00-00', 0, 'M'),
(52, '1001332220', 'NATALIA', 'RAMOS SUAREZ', '0000-00-00', 0, 'F'),
(53, '1002957500', 'CRISTIAN MAURICIO', 'ORDOÃ±EZ ACHURY', '0000-00-00', 0, 'M'),
(54, '1004156719', 'NATALIA', 'LEIVA ALARCON', '0000-00-00', 0, 'F'),
(55, '1004266403', 'CRISTIAN DAVID', 'GALVIS GOMEZ', '0000-00-00', 0, 'M'),
(56, '1007300429', 'ADOLFO', 'CEBALLOS PISSO', '0000-00-00', 0, 'M'),
(57, '1007342044', 'JULIAN DAVID', 'COTACIO ', '0000-00-00', 0, 'M'),
(58, '1007566941', 'KELLY TATIANA', 'CUELLAR GONZALES', '0000-00-00', 0, 'F'),
(59, '1023885317', 'JUAN CARLOS', 'PACHON URCUQUI', '0000-00-00', 0, 'M'),
(60, '1079412076', 'YERARDIN ANDREA', 'PEREZ BRAVO', '0000-00-00', 0, 'F'),
(61, '1079412305', 'NICOLAS', 'SALAZAR TRUJILLO', '0000-00-00', 0, 'M'),
(62, '1081420366', 'ADRIAN MAURICIO', 'ARANDIA URREA', '0000-00-00', 0, 'M'),
(63, '1084578943', 'JHON MARIO', 'CERQUERA NASAYO', '0000-00-00', 0, 'M'),
(64, '1002776673', 'DIANA CAROLINA', 'GUARNIZO INCHIMA', '0000-00-00', 0, 'F'),
(65, '1002980421', 'JUAN CAMILO', 'POCHE CUETOCHAMBO', '0000-00-00', 0, 'M'),
(66, '1004074544', 'STEFANY', 'ORTIZ SANCHEZ', '0000-00-00', 0, 'F'),
(67, '1004247489', 'MARLON DAVID', 'IPIA MUÃ±OZ', '0000-00-00', 0, 'M'),
(68, '1004247747', 'JAVIER STIVEN', 'GONZALEZ URRIAGO', '0000-00-00', 0, 'M'),
(69, '1004248079', 'JHOAN ALEXANDER', 'VALENZUELA BOLAÃ±OS', '0000-00-00', 0, 'M'),
(70, '1004248146', 'MARIA ANDREA', 'CASTRO EMBUS', '0000-00-00', 0, 'F'),
(71, '1004248238', 'DUVER EDUARDO', 'URRIAGO CASTRO', '0000-00-00', 0, 'M'),
(72, '1004249427', 'ANYI FERNANDA', 'VIDAL CHAPARRAL', '0000-00-00', 0, 'F'),
(73, '1004303505', 'Juan Mario', 'Ibañez Puyo', '0000-00-00', 0, 'M'),
(74, '1007250656', 'JUAN SEBASTIAN', 'CERQUERA POLO', '0000-00-00', 0, 'M'),
(75, '1007341991', 'MIGUEL SANTIAGO', 'TRIANA LEIVA', '0000-00-00', 0, 'M'),
(76, '1007741419', 'JUNIOR STIVEN', 'CALDERON ORTIZ', '0000-00-00', 0, 'M'),
(77, '1081394479', 'LAURA DANIELA', 'CHAPARRAL GOMEZ', '0000-00-00', 0, 'F'),
(78, '1193137520', 'JESUS DAVID', 'CABRERA BUSTOS', '0000-00-00', 0, 'M'),
(79, '1193520608', 'LUIS FERNANDO', 'CUCHIMBA ACHIPIZ', '0000-00-00', 0, 'M'),
(80, '1004302185', 'JHOAN SEBASTIAN', 'GUAITAQUI ROJAS', '0000-00-00', 0, 'M'),
(81, '1007209384', 'HIDELY YOHANA', 'TUMBO RAMOS', '0000-00-00', 0, 'F'),
(82, '10295839', 'HAROLD ROBERTO', 'MUÃ±OZ CAUSAYA', '0000-00-00', 0, 'M'),
(83, '10307471', 'RODRIGO VERLEYSEN', 'SANDOVAL MORAN', '0000-00-00', 0, 'M'),
(84, '1061222831', 'ANA MILEXI', 'CEBAY SANCHO', '0000-00-00', 0, 'F'),
(85, '1061227227', 'ANAYIBE ESPERANZA', 'SANCHEZ TUNJA', '0000-00-00', 0, 'F'),
(86, '1061227318', 'LEIDY ZULIETH', 'SANCHEZ AMBITO', '0000-00-00', 0, 'F'),
(87, '1061227326', 'LILIANA', 'AMBITO ROJAS', '0000-00-00', 0, 'F'),
(88, '1130608080', 'LUIS RAMIRO', 'CAMACHO PENCUE', '0000-00-00', 0, 'M'),
(89, '12276996', 'JOSE HERNANDO', 'PEÃ±A HIO', '0000-00-00', 0, 'M'),
(90, '1233907135', 'MARIA IDE', 'ROJAS ULTENGO', '0000-00-00', 0, 'F'),
(91, '1002855333', 'JOSE OBEIMAR', 'ROJAS TUNUBALA', '0000-00-00', 0, 'M'),
(92, '1002937384', 'DIDIO HERNEY', 'OIDOR TAHO', '0000-00-00', 0, 'M'),
(93, '1002937396', 'BRAYAN FABIAN', 'SANCHEZ CAMAYO', '0000-00-00', 0, 'M'),
(94, '1002937405', 'KAREN ELIANA', 'OIDOR SALAZAR', '0000-00-00', 0, 'F'),
(95, '1002937513', 'JHON AIMER', 'MUÃ±OZ OIDOR', '0000-00-00', 0, 'M'),
(96, '1002937530', 'ADRIANA FERNANDA', 'ROJAS CASTILLO', '0000-00-00', 0, 'F'),
(97, '1002937913', 'KAREN DANIELA', 'CUELLAR MUÃ±OZ', '0000-00-00', 0, 'F'),
(98, '1002937925', 'Vanesa Alexandra	', 'Sanchez', '0000-00-00', 0, 'F'),
(99, '1002938046', 'LUISA FERNANDA', 'ROJAS ROJAS', '0000-00-00', 0, 'F'),
(100, '1002938049', 'JULIAN HERNAN', 'PALMITO QUIRA', '0000-00-00', 0, 'M'),
(101, '1007433325', 'Vanesa Alexandra', 'Mosquera Muñoz', '0000-00-00', 0, 'F'),
(102, '1007433344', 'YOVANNA', 'MANQUILLO CASAMACHIN', '0000-00-00', 0, 'F'),
(103, '1007587267', 'JERSON ROLANDO', 'CASAMACHIN PAJOY', '0000-00-00', 0, 'M'),
(104, '1025898888', 'JUAN DEMO', 'DEMO DEMO', '1993-02-01', 13, 'F'),
(109, '156655', 'ELON', 'MOSK', '0002-02-12', 2, 'F'),
(110, '7895', 'JUANITA DEMO', 'DEMO INSTRUCTORAS', '0002-02-12', 26, 'F'),
(111, '1025896774', 'JUANITA DEMO', 'DEMO INSTRUCTORA', '0002-02-12', 26, 'F'),
(112, '1080427827', 'LUCIANA', 'RIVERA MARTINEZ', '1993-04-10', 24, 'F'),
(113, '57896996', 'JHON', 'CARDENA', '0000-00-00', 54, 'M'),
(114, '26471254', 'SMYLLE LEONARDO ', 'ALVARADO ZAMORA ', '2019-07-25', 0, 'M'),
(115, '1054879878', 'Juan Manuel', 'Acosta', '1992-11-01', 23, 'M'),
(116, '1084578956', 'Juan Carlos', 'Rojas Muñoz', '2019-12-11', 78, 'M'),
(117, '1055', 'Lina', 'Li', '2019-12-03', 12, 'Femenino'),
(118, '123215', 'Hernán', 'Lopéz Arias', '2019-12-03', 25, 'M'),
(119, '1084577898', 'Sergio Yamit', 'Rivera Flor', '1993-04-10', 26, 'M'),
(120, '1002938238', 'JHON JAIRO', 'TOVAR RIOS', '0001-01-01', 20, 'M'),
(121, '1004153030', 'ALEJANDRO', 'BONILLA ASTAIZA', '0001-01-01', 0, 'M'),
(122, '1004251548', 'ANGIE CAROLINA', 'CLAVIJO HUILA', '0000-00-00', 1, 'F'),
(123, '1004303629', 'GERSSON', 'ALMARIO MOLINA', '0000-00-00', 0, 'M'),
(124, '1007300661', 'JUAN CAMILO', 'CALDON CARDENAS', '0000-00-00', 0, 'M'),
(125, '1007826590', 'APARICIO', 'COLLO ECUE', '0000-00-00', 0, 'M'),
(126, '1064803601', 'ADANIES DE JESUS', 'BARRIOS FLOREZ', '0000-00-00', 0, 'M'),
(127, '1075298144', 'CARLOS ANDRES', 'PASTUSO BALLEN', '0000-00-00', 0, 'M'),
(128, '1079409029', 'JOSE VICENTE', 'RIVAS OLAYA', '0000-00-00', 0, 'M'),
(129, '1079509734', 'YEFERSON', 'MENZA CABRERA', '0000-00-00', 0, 'M'),
(130, '1079509813', 'LAURA CAMILA', 'CASTAÑEDA SANCHEZ', '0000-00-00', 0, 'F'),
(131, '1081407216', 'CRISTIAN FELIPE', 'LISCANO ANAYA', '0000-00-00', 0, 'M'),
(132, '1081416145', 'YULY ANDREA', 'LOSADA ANGEL', '0000-00-00', 0, 'F'),
(133, '1081417520', 'GERMAN CAMILO', 'SANTOS LUNA', '0000-00-00', 0, 'M'),
(134, '1081420923', 'YULY ALEJANDRA', 'CARVAJAL CAMAYO', '0000-00-00', 0, 'F'),
(135, '1081422911', 'DIANA JERALDINE', 'SANCHEZ RAMIREZ', '0000-00-00', 0, 'F'),
(136, '1084578679', 'MARIA ALEJANDRA', 'GUARACA YUCUMA', '0000-00-00', 0, 'F'),
(137, '1148211557', 'LUZ AMPARO', 'QUINCHIA ARREDONDO', '0000-00-00', 0, 'F'),
(138, '12276899', 'OSCAR', 'VALENCIA VIVEROS', '0000-00-00', 0, 'M'),
(139, '36384103', 'NORMA CONSTANZA', 'CANO JIMENEZ', '0000-00-00', 0, 'F'),
(140, '55132287', 'LINA MARCELA', 'LEMUS CASTILLO', '0000-00-00', 0, 'F'),
(141, '1000989996', 'DANIEL ESTIFEN', 'PACHONGO YACUMA', '0000-00-00', 0, 'F'),
(142, '1003864455', 'DANIELA', 'DEL CASTILLO MEDINA', '0000-00-00', 0, 'F'),
(143, '1004247899', 'DIEGO ALEJANDRO', 'RAMOS ORDOÑEZ', '0000-00-00', 0, 'M'),
(144, '1004248395', 'RICARDO', 'ARIAS GARCIA', '0000-00-00', 0, 'M'),
(145, '1004248402', 'YILVER ALVEIRO', 'CEBALLES ARIAS', '0000-00-00', 0, 'M'),
(146, '1006961307', 'EDDIER JHEAN', 'PANTOJA NARVAEZ', '0000-00-00', 0, 'M'),
(147, '1007348408', 'PAULA MILDREY', 'EPIA PENAGOS', '0000-00-00', 0, 'F'),
(148, '1007745551', 'LISETH DAYANA', 'IBARRA BURBANO', '0000-00-00', 0, 'F'),
(149, '1193138024', 'JULIANA ', 'OSSA TROYANO', '0000-00-00', 0, 'F'),
(150, '1000643784', 'SIMON', 'JARAMILLO CERQUERA', '0000-00-00', 0, 'M'),
(151, '1004152994', 'ANDERSON DUVAN', 'LOPEZ PINO', '0000-00-00', 0, 'M'),
(152, '1004156879', 'MAYERLY', 'RAMOS PEDREROS', '0000-00-00', 0, 'F'),
(153, '1007300593', 'MIGUEL ANGEL', 'VALENCIA MARTINEZ', '0000-00-00', 0, 'M'),
(154, '1007301164', 'YEISON DAVID', 'YASNO GUTIERREZ', '0000-00-00', 0, 'M'),
(155, '1007348488', 'SANDY TATIANA', 'LIPONCE FINSCUE', '0000-00-00', 0, 'F'),
(156, '1007348509', 'JHOANN CAMILO', 'ARIAS QUINTERO', '0000-00-00', 0, 'M'),
(157, '1007359575', 'MAIDY FERNANDA', 'VAQUIRO CHANTRE', '0000-00-00', 0, 'F'),
(158, '1007425140', 'MAYERLY', 'VELASCO VELASCO', '0000-00-00', 0, 'F'),
(159, '1007459129', 'YOLANI', 'VELASCO COLLO', '0000-00-00', 0, 'F'),
(160, '1079412438', 'CARLOS ANDRES', 'HORTA HORTA', '0000-00-00', 0, 'M'),
(161, '1080183293', 'MIGUEL ANGEL', 'VARGAS POLO', '0000-00-00', 0, 'M'),
(162, '1081413274', 'ERIKA JULIETH', 'SERRATO JOYAS', '0000-00-00', 0, 'F'),
(163, '1081414103', 'JHORMAN ADRIAN', 'RAMIREZ CUCHIMBA', '0000-00-00', 0, 'M'),
(164, '1081419754', 'CARMEN JULIA', 'MEDINA TUNJA', '0000-00-00', 0, 'F'),
(165, '1081419855', 'ANGELA MARIA', 'AVILA JIMENEZ', '0000-00-00', 0, 'F'),
(166, '1081421608', 'MONICA ALEJANDRA', 'RAMIREZ CEBALLES', '0000-00-00', 0, 'F'),
(167, '1081422627', 'SANTIAGO JOSE', 'BARREIRO MONTES', '0000-00-00', 0, 'M'),
(168, '1084578627', 'ANYI PAOLA', 'PETEVI ACHIPIZ', '0000-00-00', 0, 'F'),
(169, '1233193243', 'LUCERO NATHALIA', 'DELGADO SANTACRUZ', '0000-00-00', 0, 'F'),
(170, '1004081953', 'DANIEL ALBERTO', 'CUBIDES VITOVIZ', '0000-00-00', 0, 'M'),
(171, '1004247850', 'DEISY YULIANA', 'ROJAS GUEVARA', '0000-00-00', 0, 'F'),
(172, '1004248117', 'JHONNY ALEXANDRO', 'ANAYA MARTINEZ', '0000-00-00', 0, 'M'),
(173, '1004248118', 'AHUDRY YULIETH', 'ROJAS DIAZ', '0000-00-00', 0, 'F'),
(174, '1004248391', 'BAIRON ALEXANDER', 'PACHECO CERON', '0000-00-00', 0, 'M'),
(175, '1004248583', 'JULIAN DAVID', 'PEREZ DIAZ', '0000-00-00', 0, 'M'),
(176, '1004248716', 'YILVER ANDRES', 'CAMPOS ARTUNDUAGA', '0000-00-00', 0, 'M'),
(177, '1004248875', 'ANDREA PATRICIA', 'YASNO QUINA', '0000-00-00', 0, 'F'),
(178, '1004473511', 'JHEINER ANDRES', 'ALVARADO PLAZAS', '0000-00-00', 0, 'M'),
(179, '1007359605', 'EDIN MAURICIO', 'MEDINA SAMBONI', '0000-00-00', 0, 'M'),
(180, '1003815589', 'JULIAN DAVID', 'GARCIA MEDINA', '0000-00-00', 0, 'M'),
(181, '1004149178', 'YULIANA', 'GUARACA GARCIA', '0000-00-00', 0, 'F'),
(182, '1004153785', 'INDRI YULAIDY', 'BAICUE QUIGUATENGO', '0000-00-00', 0, 'F'),
(183, '1004159531', 'ANDRES FELIPE', 'RUIZ GOMEZ', '0000-00-00', 0, 'M'),
(184, '1007248923', 'SERGIO ENRIQUE', 'MENDEZ CAMPO', '0000-00-00', 0, 'M'),
(185, '1007300308', 'EDWIN ANDRES', 'LISCANO YARA', '0000-00-00', 0, 'M'),
(186, '1007300893', 'LIZETH KATHERINE', 'CHASQUI RAMOS', '0000-00-00', 0, 'F'),
(187, '1007301060', 'CARLOS ADRIAN', 'CABRERA MUÑOZ', '0000-00-00', 0, 'M'),
(188, '1007301177', 'KATERIN VALENTINA', 'RIOS CORTES', '0000-00-00', 0, 'F'),
(189, '1007342025', 'OSCAR JAVIER', 'LEIVA CORREA', '0000-00-00', 0, 'M'),
(190, '1007359734', 'ALEXANDER', 'ORTIZ PERDOMO', '0000-00-00', 0, 'M'),
(191, '1007845617', 'ALDAIR', 'SANTACRUZ TRUJILLO', '0000-00-00', 0, 'M'),
(192, '1040367788', 'ESTEFANIA', 'VARGAS DAVILA', '0000-00-00', 0, 'F'),
(193, '1062091299', 'MARIA EUGENIA', 'QUINA ACHIPIZ', '0000-00-00', 0, 'F'),
(194, '1077874900', 'DIANA MANUELA', 'RODRIGUEZ CHAVARRO', '0000-00-00', 0, 'M'),
(195, '1081415063', 'YENY MILDRED', 'ULTENGO CASAMACHIN', '0000-00-00', 0, 'F'),
(196, '1081420079', 'CRISTHIAN DAVID', 'BEJARANO ', '0000-00-00', 0, 'M'),
(197, '1081421276', 'MAIRA ROCIO', 'ARIAS QUESADA', '0000-00-00', 0, 'F'),
(198, '1081421981', 'MARIA STEFANY', 'PEREZ RAMOS', '0000-00-00', 0, 'F'),
(199, '1081422271', 'LOREN ICELY', 'BASTO SANCHEZ', '0000-00-00', 0, 'F'),
(200, '1081422501', 'EVA MICHELL', 'TORRES COTACIO', '0000-00-00', 0, 'F'),
(201, '1081422535', 'DIANA MARCELA', 'CASAMACHIN GOLONDRIN', '0000-00-00', 0, 'F'),
(202, '1081422847', 'YEIMY KATHERINE', 'QUINTERO CEBALLES', '0000-00-00', 0, 'F'),
(203, '1081423221', 'YUREIDY JIMENA', 'OSSA MERA', '0000-00-00', 0, 'F'),
(204, '1004248381', 'ANA YUBELY', 'MEDINA ROJAS', '0000-00-00', 0, 'F'),
(205, '1004248840', 'EMERSON RICARDO', 'LLANOS ZUÑIGA', '0000-00-00', 0, 'M'),
(206, '1004249790', 'ANYI SOFIA', 'CAMPOS ARIAS', '0000-00-00', 0, 'F'),
(207, '1004491874', 'LIZETH VANESSA', 'NASAYO ARANDA', '0000-00-00', 0, 'F'),
(208, '1004621029', 'AMPATERSON', 'GRUEZO VAQUIRO', '0000-00-00', 0, 'M'),
(209, '1193248055', 'LINA MARCELA', 'MEDINA NARVAEZ', '0000-00-00', 0, 'F'),
(210, '1234567890', 'Juan Manuel', 'Santos', '0000-00-00', 0, 'M'),
(211, '1004248093', 'JESUS DAVID', 'ARGUELLO JORGE', '0000-00-00', 0, 'M'),
(212, '1061221089', 'JAIRO BED', 'RIVERA MUELAS', '0000-00-00', 0, 'M'),
(213, '1079412191', 'JOSE ARMANDO', 'PEREZ BRAND', '0000-00-00', 0, 'M'),
(214, '1079509166', 'JAVIER HERNAN', 'ORTIZ SEMANATE', '0000-00-00', 0, 'M'),
(215, '1080263659', 'EDUIN ANDRES', 'ANDRADE GONZALEZ', '0000-00-00', 0, 'M'),
(216, '1081399226', 'ANDRES MAURICIO', 'MACA CUCHIMBA', '0000-00-00', 0, 'M'),
(217, '1081404653', 'ANCIZAR', 'ROJAS PILLIMUE', '0000-00-00', 0, 'M'),
(218, '1081405338', 'EDWIN YAMID', 'HIO IBAGON', '0000-00-00', 0, 'M'),
(219, '1081411258', 'DUVER ENRIQUE', 'LISCANO PENNA', '0000-00-00', 0, 'M'),
(220, '1081418257', 'BRAULIO', 'GUAUÑA MUSE', '0000-00-00', 0, 'M'),
(221, '1081421085', 'JEIFENZON JAVIER', 'TRUJILLO GARZON', '0000-00-00', 0, 'M'),
(222, '1081423318', 'LUIS JAVIER', 'RAMIREZ MOLANO', '0000-00-00', 0, 'M'),
(223, '1081423416', 'DIEGO ALEXANDER', 'RODRIGUEZ ULTENGO', '0000-00-00', 0, 'M'),
(224, '1081424940', 'JOSE ARMANDO', 'CALDERON CORNEJO', '0000-00-00', 0, 'M'),
(225, '1082154274', 'JOSE ARMANDO', 'TAPIERO ', '0000-00-00', 0, 'M'),
(226, '1083923046', 'DONAL', 'COLLO QUINTERO', '0000-00-00', 0, 'M'),
(227, '12277224', 'WILIAM', 'CEBALLOS QUINTERO', '0000-00-00', 0, 'M'),
(228, '12280005', 'DIBES LEON', 'RAMOS ULE', '0000-00-00', 0, 'M'),
(229, '12283804', 'NORBEY', 'HUILA CADENA', '0000-00-00', 0, 'M'),
(230, '26522915', 'LEIDY YANETH', 'LIZCANO OROZCO', '0000-00-00', 0, 'F'),
(231, '76007301', 'DIEGO YOVANY', 'VALENCIA OSSA', '0000-00-00', 0, 'M'),
(232, '79967703', 'YIMY', 'TORRES GOMEZ', '0000-00-00', 0, 'M'),
(233, '83166843', 'EDWIN', 'JARA YUNDA', '0000-00-00', 0, 'M'),
(234, '1081392787', 'SERGIO STIVEN', 'ACHIPIZ ALVIRA', '0000-00-00', 0, 'M'),
(235, '1002855378', 'YENIFER CRISTINA', 'MULCUE PEÑA', '0000-00-00', 0, 'F'),
(236, '1004247383', 'JHOAN SEBASTIAN', 'HERNANDEZ TRUJILLO', '0000-00-00', 0, 'M'),
(237, '1004247761', 'YUDY YARITZA', 'TROYANO CEBALLOS', '0000-00-00', 0, 'F'),
(238, '1004473256', 'ROBINSON', 'MEDINA RAMIREZ', '0000-00-00', 0, 'M'),
(239, '1007359766', 'AGUSTIN EDUARDO', 'CARDENAS CHAVARRO', '0000-00-00', 0, 'M'),
(240, '1022398965', 'KELLY JOHANNA', 'GUEVARA ACEVEDO', '0000-00-00', 0, 'F'),
(241, '1056592123', 'MARIA NUBIA', 'CETINA GARCIA', '0000-00-00', 0, 'F'),
(242, '1081392613', 'SANDRA HUBRED', 'SAMBONI MEDINA', '0000-00-00', 0, 'F'),
(243, '1081399183', 'JAIRO HERNAN', 'ANDRADE RODRIGUEZ', '0000-00-00', 0, 'M'),
(244, '1081409294', 'MARIA YURANY', 'TRUJILLO TRUJILLO', '0000-00-00', 0, 'F'),
(245, '1081410502', 'LAURA DANIELA', 'SUAREZ EMBUS', '0000-00-00', 0, 'F'),
(246, '1081411885', 'DANIEL', 'SANDOVAL ARISTIZABAL', '0000-00-00', 0, 'M'),
(247, '1081412524', 'RODRIGO', 'PERDOMO TRUJILLO', '0000-00-00', 0, 'M'),
(248, '1081419925', 'CRISTIAN DAVID', 'MENESES ESCOBAR', '0000-00-00', 0, 'M'),
(249, '1081423251', 'YENNIFER DANIELA', 'ANDRADE PUYO', '0000-00-00', 0, 'F'),
(250, '1084579123', 'GUSTAVO ADOLFO', 'EMBUS MONCADA', '0000-00-00', 0, 'M'),
(251, '12282666', 'JOSE YOVANNY', 'MEDINA MUÑOZ', '0000-00-00', 0, 'M'),
(252, '26468442', 'FANNY', 'PEREZ CAMACHO', '0000-00-00', 0, 'F'),
(253, '1000214059', 'MARIA ALEJANDRA', 'CAMERO PEREZ', '0000-00-00', 0, 'F'),
(254, '1002980571', 'ELIANA BISNEIDI', 'EMBUS ASTUDILLO', '0000-00-00', 0, 'F'),
(255, '1004248948', 'ANDREA', 'PARRA ANGEL', '0000-00-00', 0, 'F'),
(256, '1004249214', 'YAQUELINE', 'YASNO SERRATO', '0000-00-00', 0, 'F'),
(257, '1004250058', 'JESUS HERMILSON', 'PILLIMUE CASSO', '0000-00-00', 0, 'M'),
(258, '1004493973', 'MARIA PAULA', 'LEIVA SALAZAR', '0000-00-00', 0, 'F'),
(259, '1006005646', 'MICHEL DANINY', 'ORDOÑEZ MOSQUERA', '0000-00-00', 0, 'F'),
(260, '1004251460', 'ANGELA MERCEDES', 'MUÑOZ EMBUS', '0000-00-00', 0, 'M'),
(261, '1004473123', 'MARISOL', 'AMESQUITA MEDINA', '0000-00-00', 0, 'F'),
(262, '1004491411', 'NATALIA KATHERINE', 'NASAYO CAMAYO', '0000-00-00', 0, 'F'),
(263, '1007248736', 'JUAN CAMILO', 'TORRES VIDARTE', '0000-00-00', 0, 'M'),
(264, '1007301072', 'YEIMY CRISTINA', 'OSORIO CAMAYO', '0000-00-00', 0, 'F'),
(265, '1007384022', 'SORAYA', 'MOSQUERA CUCHUMBE', '0000-00-00', 0, 'F'),
(266, '1007490399', 'LIZETH YINARY', 'TIERRADENTRO GONZALE', '0000-00-00', 0, 'F'),
(267, '1030580682', 'YENY MERCEDES', 'CHAGUENDO ANDELA', '0000-00-00', 0, 'F'),
(268, '1080266790', 'LUIS EDUARDO', 'LUNA MUÑOZ', '0000-00-00', 0, 'M'),
(269, '1081407840', 'NANCY', 'PEREZ QUINTERO', '0000-00-00', 0, 'F'),
(270, '1081410621', 'YAMILETH', 'FAJARDO RAMOS', '0000-00-00', 0, 'F'),
(271, '1081411634', 'EDNA ROCIO', 'CANDELA SILVA', '0000-00-00', 0, 'F'),
(272, '1081417628', 'ANYI LISETH', 'LISCANO QUINTERO', '0000-00-00', 0, 'F'),
(273, '1081419111', 'KAROL ALFREDO', 'MEDINA GUTIERREZ', '0000-00-00', 0, 'M'),
(274, '1081420133', 'ZAYRA YULISSA', 'LOPEZ MUELAS', '0000-00-00', 0, 'F'),
(275, '1083841194', 'BERYI YOHANA', 'RODRIGUEZ LIZCANO', '0000-00-00', 0, 'F'),
(276, '12199890', 'ALDEMAR ESMID', 'GUTIERREZ NORIEGA', '0000-00-00', 0, 'M'),
(277, '1000714257', 'HEIDY CAROLINA', 'QUINTERO QUINTERO', '0000-00-00', 0, 'F'),
(278, '1002963355', 'LILIAN GEOVANNA', 'CARABALI RUBIO', '0000-00-00', 0, 'F'),
(279, '1004248813', 'SONIA STEFANIA', 'TRUJILLO SANABRIA', '0000-00-00', 0, 'F'),
(280, '1006789218', 'JHON JAIBER', 'RAMIREZ URBANO', '0000-00-00', 0, 'M'),
(281, '1004074987', 'LAURA CAMILA', 'GARCIA PEDRERO', '0000-00-00', 0, 'M'),
(282, '1004246905', 'ALEXANDRA', 'CHANTRE POBRE', '0000-00-00', 0, 'F'),
(283, '1004249042', 'SUSANA AMPARO', 'MUTIZ COLLO', '0000-00-00', 0, 'F'),
(284, '1007300979', 'NAYELLY LORENA', 'VALENCIA PLAZA', '0000-00-00', 0, 'F'),
(285, '1007341988', 'ERIKA TATIANA', 'CAUSAYA TORRES', '0000-00-00', 0, 'F'),
(286, '1061226599', 'CAROLINA ASTRID', 'TUMBO ', '0000-00-00', 0, 'F'),
(287, '1075256994', 'CRISTINA', 'HERNANDEZ CABRERA', '0000-00-00', 0, 'F'),
(288, '1080266826', 'PIEDAD CAMILA', 'SERRATO CARDONA', '0000-00-00', 0, 'F'),
(289, '1081393987', 'NAIRA ALEJANDRA', 'RESTREPO MONTEALEGRE', '0000-00-00', 0, 'F'),
(290, '1081405550', 'YESMILEIDY', 'CARVAJALINO MOLANO', '0000-00-00', 0, 'F'),
(291, '1081411776', 'BIANNY JANEYI', 'ANDELA CHAGUENDO', '0000-00-00', 0, 'F'),
(292, '1081411892', 'STHEFANIA', 'PEREZ GUERRERO', '0000-00-00', 0, 'F'),
(293, '1081418459', 'LIDA ALEXANDRA', 'ANAYA GONZALEZ', '0000-00-00', 0, 'F'),
(294, '1081418707', 'VERONICA', 'NORIEGA QUIGUA', '0000-00-00', 0, 'F'),
(295, '1081419354', 'YENNIFER', 'CASALLAS CHIMBACO', '0000-00-00', 0, 'F'),
(296, '1081420610', 'YURI YISED', 'GARCIA PERDOMO', '0000-00-00', 0, 'F'),
(297, '1081421289', 'MARIA ELIZABETH', 'TOLEDO CRUZ', '0000-00-00', 0, 'F'),
(298, '1081421727', 'PAULA LISSED', 'JIMENEZ PAYA', '0000-00-00', 0, 'F'),
(299, '1081422304', 'ELIANA', 'TOVAR SERRATO', '0000-00-00', 0, 'F'),
(300, '1081423519', 'ELIANA MARCELA', 'HIOS ALFARO', '0000-00-00', 0, 'F'),
(301, '1004248344', 'KARLA STEFANIA', 'FERNANDEZ MANCHOLA', '0000-00-00', 0, 'F'),
(302, '1004300960', 'LAURA DANIELA', 'SANCHEZ GUZMAN', '0000-00-00', 0, 'F'),
(303, '1007359764', 'ANYI MILENA', 'COTACIO MEDINA', '0000-00-00', 0, 'F'),
(304, '1081392761', 'MARIA CAMILA ', 'GIL QUINTERO', '0000-00-00', 0, 'F'),
(305, '1003815924', 'LUZ CLARITA', 'GUITIERREZ BORRERO', '0000-00-00', 0, 'F'),
(306, '1004247938', 'ESNEIDER', 'LOPEZ FERNANDEZ', '0000-00-00', 0, 'M'),
(307, '1004251599', 'ZAMIR', 'QUINTERO GUAR', '0000-00-00', 0, 'M'),
(308, '1007300858', 'HELEN FABIANA', 'LOSADA GUALI', '0000-00-00', 0, 'F'),
(309, '1007348459', 'ELIZABETH CRISTINA', 'MANQUILLO PACHO', '0000-00-00', 0, 'F'),
(310, '1054998571', 'VALENTINA', 'ROJAS VALENCIA', '0000-00-00', 0, 'F'),
(311, '1061224743', 'JUAN CARLOS', 'PAJOY ULTENGO', '0000-00-00', 0, 'M'),
(312, '1062331080', 'MARIA FERNANDA', 'QUINTERO GUEJIA', '0000-00-00', 0, 'F'),
(313, '1075311423', 'PAULA VALENTINA', 'MOLINA URREGO', '0000-00-00', 0, 'F'),
(314, '1081155035', 'EDNA JULIETH', 'SANDOVAL GUATAME', '0000-00-00', 0, 'F'),
(315, '1081397854', 'MARLY TATIANA', 'NOSCUE PERDOMO', '0000-00-00', 0, 'F'),
(316, '1081402201', 'JOHANA ANDREA', 'SIERRA VARGAS', '0000-00-00', 0, 'F'),
(317, '1081402247', 'CLAUDIA LORENA', 'ANDRADE MEDINA', '0000-00-00', 0, 'F'),
(318, 'LUZ ANGELA', 'RAMOS MUELAS', '3108102314', '0000-00-00', 0, 'F'),
(319, '1081412960', 'YARLY TATIANA', 'CLAVIJO RAMIREZ', '0000-00-00', 0, 'F'),
(320, '1081418262', 'YENNIFER LUCIA', 'PAJOY PAYA', '0000-00-00', 0, 'F'),
(321, '1081420648', 'MARIA COSTANZA', 'COLMENARES RAMOS', '0000-00-00', 0, 'F'),
(322, '1081420648', 'MARIA COSTANZA', 'COLMENARES RAMOS', '0000-00-00', 0, 'F'),
(323, '1081420740', 'MARIA FERNANDA', 'VARGAS SOTO', '0000-00-00', 0, 'F'),
(324, '1081422129', 'CAROLINA', 'QUINTERO BARRAGAN', '0000-00-00', 0, 'F'),
(325, '1081423222', 'ANGIEE NATALY', 'BARRAGAN QUINTERO', '0000-00-00', 0, 'F'),
(326, '1084869702', 'JOSE ALEJANDRO', 'MARTINEZ CUADRADO', '0000-00-00', 0, 'M'),
(327, '1234645645', 'JULIA NATHALY', 'NEIRA TRUJILLO', '0000-00-00', 0, 'F'),
(328, '36384810', 'NINI JOHANNA', 'ANDRADE MORENO', '0000-00-00', 0, 'F'),
(329, '55130562', 'LEIDY LORENA', 'PEÑA BOSA', '0000-00-00', 0, 'F'),
(330, '1004248780', 'GERMAN DANIEL', 'POBRE TRUJILLO', '0000-00-00', 0, 'M'),
(331, '1004249441', 'BRIYETH CAMILA', 'SANCHEZ ROJAS', '0000-00-00', 0, 'F'),
(332, '1007209057', 'EDNA VALENTINA', 'VARGAS MOROCHO', '0000-00-00', 0, 'F'),
(333, '1007826753', 'YEIDY YULIZA', 'VARGAS MEDINA', '0000-00-00', 0, 'F'),
(334, '1010002978', 'XIOMARA', 'MEDINA ROJAS', '0000-00-00', 0, 'F'),
(335, '1033744869', 'DEISY MILENA', 'VARGAS VARGAS', '0000-00-00', 0, 'F'),
(336, '1062083019', 'YUHELY ASTRID', 'VARGAS MENDEZ', '0000-00-00', 0, 'F'),
(337, '1062083805', 'CELENE', 'NEZ SUNS', '0000-00-00', 0, 'F'),
(338, '1062084848', 'YUSSED CAROLINA', 'URUEÑA MERA', '0000-00-00', 0, 'F'),
(339, '1062084926', 'JILARY VANESSA', 'IPIA MEDINA', '0000-00-00', 0, 'F'),
(340, '1062085377', 'SONIA ESTEFANNY', 'VALENCIA ZUÑIGA', '0000-00-00', 0, 'F'),
(341, '1062086047', 'LIDA', 'ACUE PENAGOS', '0000-00-00', 0, 'F'),
(342, '1062087139', 'LINA PAOLA', 'PARDO BAICUE', '0000-00-00', 0, 'F'),
(343, '1062087298', 'ASTRID NATALIA', 'GONZALEZ VIA', '0000-00-00', 0, 'F'),
(344, '1062088272', 'ANA CATALINA', 'VALENCIA ZUÑIGA', '0000-00-00', 0, 'F'),
(345, '1062088275', 'LUZ NELLY', 'PERDOMO ACHICUE', '0000-00-00', 0, 'F'),
(346, '1062089775', 'VALENTINA', 'CHAUX CHILITO', '0000-00-00', 0, 'F'),
(347, '1062090689', 'HEIDY MILEDY', 'GOMEZ MENSA', '0000-00-00', 0, 'F'),
(348, '1062091211', 'NEIDY JOHANA', 'VARGAS VARGAS', '0000-00-00', 0, 'F'),
(349, '1062092055', 'MAURICIO', 'POCHE COLLO', '0000-00-00', 0, 'M'),
(350, '1062092081', 'FLORIPE YOLIVE', 'MARIN ORTIZ', '0000-00-00', 0, 'F'),
(351, '1193603211', 'RINA MARCELA', 'YANDI VALENCIA', '0000-00-00', 0, 'F'),
(352, '25561663', 'MARIA JERONIMA', 'MENSA PACHO', '0000-00-00', 0, 'F'),
(353, '25561740', 'GINA ELANDRA', 'PANTOJA VARGAS', '0000-00-00', 0, 'F'),
(354, '25561966', 'NORALBA', 'PARDO POCHE', '0000-00-00', 0, 'F'),
(355, '1002191254', 'JANIRIS CAROLINA', 'HERNANDEZ MEDINA', '0000-00-00', 0, 'F'),
(356, '1002979490', 'NEILA YUBERLY', 'YOJA LIZ', '0000-00-00', 0, 'F'),
(357, '1004247129', 'JUAN SEBASTIAN', 'SILVA IVITO', '0000-00-00', 0, 'M'),
(358, '1004248549', 'LINA CONSUELO', 'SUSATAMA QUILINDO', '0000-00-00', 0, 'F'),
(359, '1004250239', 'JHEINSTER SANTIAGO', 'OCHOA CEBALLOS', '0000-00-00', 0, 'M'),
(360, '1007209156', 'ALCIBIADES', 'VELASCO TENORIO', '0000-00-00', 0, 'M'),
(361, '1007209215', 'NILSON ALBERTO', 'OINO ACHIPIZ', '0000-00-00', 0, 'M'),
(362, '1007248953', 'ANDRES FELIPE', 'YULE ', '0000-00-00', 0, 'M'),
(363, '1007300917', 'JAZBLEIDY SORANY', 'ACHIPIZ ALVIRA', '0000-00-00', 0, 'F'),
(364, '1007359770', 'ANYI LORENA', 'CAMPO ANGEL', '0000-00-00', 0, 'F'),
(365, '1061227325', 'SANDRA MILEIDY', 'YONDA YACUECHIME', '0000-00-00', 0, 'F'),
(366, '1079411993', 'CARLOS MAURICIO', 'MOSQUERA BASTIDAS', '0000-00-00', 0, 'M'),
(367, '1081395252', 'OSCAR MAURICIO', 'PERDOMO PEREZ', '0000-00-00', 0, 'M'),
(368, '1081404209', 'CLARA DISNELLY', 'CORTES RAMIREZ', '0000-00-00', 0, 'F'),
(369, '1081405799', 'WILMAR FERNEY', 'NORIEGA RAMOS', '0000-00-00', 0, 'M'),
(370, '1081407128', 'LEIDY ROCIO', 'CAMPO VIDARTE', '0000-00-00', 0, 'F'),
(371, '1081407910', 'HERNAN CAMILO', 'PERDOMO CANGREJO', '0000-00-00', 0, 'M'),
(372, '1081413024', 'CLAUDIA PATRICIA', 'CHACUE YACUE', '0000-00-00', 0, 'F'),
(373, '1081415687', 'LINA LUCERO', 'GUARACA YASNO', '0000-00-00', 0, 'M'),
(374, '1081420113', 'ASTRID CAROLINA', 'QUILINDO CALDON', '0000-00-00', 0, 'F'),
(375, '1081422198', 'DIEGO REINALDO', 'CALDERON SERRATO', '0000-00-00', 0, 'M'),
(376, '1081422243', 'CRISTIAN CAMILO', 'SERRATO CASTILLO', '0000-00-00', 0, 'M'),
(377, '1081422344', 'ELKIN ALBERTO', 'JULIAN USNAS', '0000-00-00', 0, 'M'),
(378, '1081422754', 'MARLON ESTIVEN', 'OSORIO CARDOSO', '0000-00-00', 0, 'M'),
(379, '80239879', 'JUAN CARLOS', 'LOPEZ JAIMES', '0000-00-00', 0, 'M'),
(380, '83249940', 'MEDARDO', 'COLLAZOS CLAROS', '0000-00-00', 0, 'M'),
(381, '1004247784', 'HECTOR FREDY', 'CAMPO MUÑOZ', '0000-00-00', 0, 'M'),
(382, '1004250750', 'YUBERICA', 'MONTENEGRO MANQUILLO', '0000-00-00', 0, 'M'),
(383, '1004251688', 'LUIS FERNANDO', 'POBRE TRUJILLO', '0000-00-00', 0, 'M'),
(384, '1004473359', 'DAIANA ANDREA', 'PEREZ ALVAREZ', '0000-00-00', 0, 'F'),
(385, '1006417539', 'SHIRLEY', 'OSUNA QUINAYA', '0000-00-00', 0, 'F'),
(386, '1006995812', 'ALIZ DANNY', 'ROSERO MOLINA', '0000-00-00', 0, 'F'),
(387, '1007383981', 'ANYELA PATRICIA', 'MOMPOTES QUILINDO', '0000-00-00', 0, 'F'),
(388, '1010210948', 'YINETH', 'RIVERA MUELAS', '0000-00-00', 0, 'F'),
(389, '1079388741', 'MARIA ANGELICA', 'RIVEROS DUARTE', '0000-00-00', 0, 'F'),
(390, '1079392135', 'FABIO ANDRES', 'ROJAS YAQUINAS', '0000-00-00', 0, 'F'),
(391, '1080265557', 'DORALID', 'ALVIRA GOMEZ', '0000-00-00', 0, 'F'),
(392, '1080297030', 'HEIDY KATHERINE', 'ALDANA TOVAR', '0000-00-00', 0, 'F'),
(393, '1081392914', 'MAYERLY', 'QUIRA SABOGAL', '0000-00-00', 0, 'F'),
(394, '1081396475', 'JENNY MARCELA', 'GARZON HERNANDEZ', '0000-00-00', 0, 'F'),
(395, '1081408831', 'LUISA MARIA', 'CHAUX CASTAÑO', '0000-00-00', 0, 'F'),
(396, '1081410296', 'JEEFERSON HORLEY', 'HERNANDEZ QUINA', '0000-00-00', 0, 'M'),
(397, '1081410634', 'DIANA FERNANDA', 'LIZ ANDELA', '0000-00-00', 0, 'F'),
(398, '1081411126', 'YINA PAOLA', 'CORTES RAMOS', '0000-00-00', 0, 'F'),
(399, '1081416169', 'DIRLEY XIMENA', 'MACA CUCHIMBA', '0000-00-00', 0, 'F'),
(400, '1081421408', 'DIEGO MAURICIO', 'CUELLAR TORRES', '0000-00-00', 0, 'M'),
(401, '1081422019', 'SILVIA NATALIA', 'ROMERO VARGAS', '0000-00-00', 0, 'F'),
(402, '1081422926', 'NATALIA', 'ANGEL RAMIREZ', '0000-00-00', 0, 'F'),
(403, '1081423870', 'MERLI VIVIANA', 'GUTIERREZ SAENZ', '0000-00-00', 0, 'F'),
(404, '1151187234', 'JUAN ANTONIO', 'TORRES YERENA', '0000-00-00', 0, 'M'),
(405, '12283136', 'CARLOS HUMBERTO', 'AGREDA PAZ', '0000-00-00', 0, 'M'),
(406, '36383272', 'LUZ MARLENY', 'ARANDA ITE', '0000-00-00', 0, 'F'),
(407, '1002980404', 'MARLEN ESTEFANY', 'LIZ LIS', '0000-00-00', 0, 'F'),
(408, '1004248542', 'MAYERLY', 'DURAN ORDOÑEZ', '0000-00-00', 0, 'F'),
(409, '1006219971', 'MARIA ALEJANDRA', 'PIMENTEL PENNA', '0000-00-00', 0, 'F'),
(410, '1007250648', 'EDHIT YULIANA', 'BERMUDEZ ORDOÑEZ', '0000-00-00', 0, 'F'),
(411, '1081395238', 'KAREN JIMENA', 'ANGEL GRANDA', '0000-00-00', 0, 'F'),
(412, '5824598', 'Heimar Hernán', 'Coronado Hernández', '2019-12-05', 0, 'M'),
(413, '79886992', 'ALVARO', 'RUIZ', '1977-09-07', 42, 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_direcciones`
--

CREATE TABLE `usuarios_direcciones` (
  `direccion_codigo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `ad_departamento` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ad_ciudad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ad_direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_direcciones`
--

INSERT INTO `usuarios_direcciones` (`direccion_codigo`, `ad_departamento`, `ad_ciudad`, `ad_direccion`) VALUES
('100', 'HUILA', 'LA PLATA', 'LA PLATA'),
('101', 'HUILA ', 'LA PLATA', 'LA PLATA'),
('102', 'HUILA', 'LA PLATA', 'LA PLATA'),
('103', 'HUILA', 'LA PLATA', 'LA PLATA'),
('104', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('109', 'CUNDINAMARCA', 'BOGOTA', 'BARRIO CALLE'),
('110', 'MEDELLÃ­N', 'MEDELLÃ­N', 'BARRIO DEMO'),
('111', 'MEDELLÃ­N', 'MEDELLÃ­N', 'BARRIO DEMO'),
('112', 'HUILA', 'LA PLATA', 'CALLE 1'),
('113', 'HUILA', 'LA PLATA', 'BARRIO PAÃ©Z'),
('114', 'NARIÃ±O', 'IPIALES', 'LA PLATA'),
('115', 'Huila', 'La Plata', 'Barrio Canada'),
('116', 'HUILA', 'LA PLATA', 'BARRIO PUEBLO NUEVO'),
('117', 'Huila', 'La Plata Huila', 'La Plata Calle 1 - '),
('118', 'Huila', 'La Plata', 'La Plata Huila'),
('119', 'Huila', 'La Plata', 'La Plata Huila'),
('120', 'Huila', 'La Plata', 'La Plata Huila'),
('121', 'Huila', 'La Plata', 'La Plata Huila'),
('122', 'Huila', 'La Plata', 'La Plata Huila'),
('123', 'Huila', 'La Plata', 'La Plata Huila'),
('124', 'Huila', 'La Plata', 'La Plata Huila'),
('125', 'Huila', 'La Plata', 'La Plata Huila'),
('126', 'Huila', 'La Plata', 'La Plata Huila'),
('127', 'Huila', 'La Plata', 'La Plata Huila'),
('128', 'Huila', 'La Plata', 'La Plata Huila'),
('129', 'Huila', 'La Plata', 'La Plata Huila'),
('130', 'Huila', 'La Plata', 'La Plata Huila'),
('131', 'Huila', 'La Plata', 'La Plata Huila'),
('132', 'Huila', 'La Plata', 'La Plata Huila'),
('133', 'Huila', 'La Plata', 'La Plata Huila'),
('134', 'Huila', 'La Plata', 'La Plata Huila'),
('135', 'Huila', 'La Plata', 'La Plata Huila'),
('136', 'Huila', 'La Plata', 'La Plata Huila'),
('137', 'Huila', 'La Plata', 'La Plata Huila'),
('138', 'Huila', 'La Plata', 'La Plata Huila'),
('139', 'Huila', 'La Plata', 'La Plata Huila'),
('14', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('140', 'Huila', 'La Plata', 'La Plata Huila'),
('141', 'Huila', 'La Plata', 'La Plata Huila'),
('142', 'Huila', 'La Plata', 'La Plata Huila'),
('143', 'Huila', 'La Plata', 'La Plata Huila'),
('144', 'Huila', 'La Plata', 'La Plata Huila'),
('145', 'Huila', 'La Plata', 'La Plata Huila'),
('146', 'Huila', 'La Plata', 'La Plata Huila'),
('147', 'Huila', 'La Plata', 'La Plata Huila'),
('148', 'Huila', 'La Plata', 'La Plata Huila'),
('149', 'Huila', 'La Plata', 'La Plata Huila'),
('15', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('150', 'Huila', 'La Plata', 'La Plata Huila'),
('151', 'Huila', 'La Plata', 'La Plata Huila'),
('152', 'Huila', 'La Plata', 'La Plata Huila'),
('153', 'Huila', 'La Plata', 'La Plata Huila'),
('154', 'Huila', 'La Plata', 'La Plata Huila'),
('155', 'Huila', 'La Plata', 'La Plata Huila'),
('156', 'Huila', 'La Plata', 'La Plata Huila'),
('157', 'Huila', 'La Plata', 'La Plata Huila'),
('158', 'Huila', 'La Plata', 'La Plata Huila'),
('159', 'Huila', 'La Plata', 'La Plata Huila'),
('16', 'HUILA', 'TESALIA', 'BARRIO POSADA'),
('160', 'Huila', 'La Plata', 'La Plata Huila'),
('161', 'Huila', 'La Plata', 'La Plata Huila'),
('162', 'Huila', 'La Plata', 'La Plata Huila'),
('163', 'Huila', 'La Plata', 'La Plata Huila'),
('164', 'Huila', 'La Plata', 'La Plata Huila'),
('165', 'Huila', 'La Plata', 'La Plata Huila'),
('166', 'Huila', 'La Plata', 'La Plata Huila'),
('167', 'Huila', 'La Plata', 'La Plata Huila'),
('168', 'Huila', 'La Plata', 'La Plata Huila'),
('169', 'Huila', 'La Plata', 'La Plata Huila'),
('17', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('170', 'Huila', 'La Plata', 'La Plata Huila'),
('171', 'Huila', 'La Plata', 'La Plata Huila'),
('172', 'Huila', 'La Plata', 'La Plata Huila'),
('173', 'Huila', 'La Plata', 'La Plata Huila'),
('174', 'Huila', 'La Plata', 'La Plata Huila'),
('175', 'Huila', 'La Plata', 'La Plata Huila'),
('176', 'Huila', 'La Plata', 'La Plata Huila'),
('177', 'Huila', 'La Plata', 'La Plata Huila'),
('178', 'Huila', 'La Plata', 'La Plata Huila'),
('179', 'Huila', 'La Plata', 'La Plata Huila'),
('18', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('180', 'Huila', 'La Plata', 'La Plata Huila'),
('181', 'Huila', 'La Plata', 'La Plata Huila'),
('182', 'Huila', 'La Plata', 'La Plata Huila'),
('183', 'Huila', 'La Plata', 'La Plata Huila'),
('184', 'Huila', 'La Plata', 'La Plata Huila'),
('185', 'Huila', 'La Plata', 'La Plata Huila'),
('186', 'Huila', 'La Plata', 'La Plata Huila'),
('187', 'Huila', 'La Plata', 'La Plata Huila'),
('188', 'Huila', 'La Plata', 'La Plata Huila'),
('189', 'Huila', 'La Plata', 'La Plata Huila'),
('19', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('190', 'Huila', 'La Plata', 'La Plata Huila'),
('191', 'Huila', 'La Plata', 'La Plata Huila'),
('192', 'Huila', 'La Plata', 'La Plata Huila'),
('193', 'Huila', 'La Plata', 'La Plata Huila'),
('194', 'Huila', 'La Plata', 'La Plata Huila'),
('195', 'Huila', 'La Plata', 'La Plata Huila'),
('196', 'Huila', 'La Plata', 'La Plata Huila'),
('197', 'Huila', 'La Plata', 'La Plata Huila'),
('198', 'Huila', 'La Plata', 'La Plata Huila'),
('199', 'Huila', 'La Plata', 'La Plata Huila'),
('20', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('200', 'Huila', 'La Plata', 'La Plata Huila'),
('201', 'Huila', 'La Plata', 'La Plata Huila'),
('202', 'Huila', 'La Plata', 'La Plata Huila'),
('203', 'Huila', 'La Plata', 'La Plata Huila'),
('204', 'Huila', 'La Plata', 'La Plata Huila'),
('205', 'Huila', 'La Plata', 'La Plata Huila'),
('206', 'Huila', 'La Plata', 'La Plata Huila'),
('207', 'Huila', 'La Plata', 'La Plata Huila'),
('208', 'Huila', 'La Plata', 'La Plata Huila'),
('209', 'Huila', 'La Plata', 'La Plata Huila'),
('21', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('210', 'Huila', 'La Plata', 'La Plata Huila'),
('211', 'Huila', 'La Plata', 'La Plata Huila'),
('212', 'Huila', 'La Plata', 'La Plata Huila'),
('213', 'Huila', 'La Plata', 'La Plata Huila'),
('214', 'Huila', 'La Plata', 'La Plata Huila'),
('215', 'Huila', 'La Plata', 'La Plata Huila'),
('216', 'Huila', 'La Plata', 'La Plata'),
('217', 'Huila', 'La Plata', 'La Plata'),
('218', 'Huila', 'La Plata', 'La Plata'),
('219', 'Huila', 'La Plata', 'La Plata'),
('22', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('220', 'Huila', 'La Plata', 'La Plata'),
('221', 'Huila', 'La Plata', 'La Plata'),
('222', 'Huila', 'La Plata', 'La Plata'),
('223', 'Huila', 'La Plata', 'La Plata'),
('224', 'Huila', 'La Plata', 'La Plata'),
('225', 'Huila', 'La Plata', 'La Plata'),
('226', 'Huila', 'La Plata', 'La Plata'),
('227', 'Huila', 'La Plata', 'La Plata'),
('228', 'Huila', 'La Plata', 'La Plata'),
('229', 'Huila', 'La Plata', 'La Plata'),
('23', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('230', 'Huila', 'La Plata', 'La Plata'),
('231', 'Huila', 'La Plata', 'La Plata'),
('232', 'Huila', 'La Plata', 'La Plata'),
('233', 'Huila', 'La Plata', 'La Plata'),
('234', 'Huila', 'La Plata', 'La Plata'),
('235', 'Huila', 'La Plata', 'La Plata'),
('236', 'Huila', 'La Plata', 'La Plata'),
('237', 'Huila', 'La Plata', 'La Plata'),
('238', 'Huila', 'La Plata', 'La Plata'),
('239', 'Huila', 'La Plata', 'La Plata'),
('24', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('240', 'Huila', 'La Plata', 'La Plata'),
('241', 'Huila', 'La Plata', 'La Plata'),
('242', 'Huila', 'La Plata', 'La Plata'),
('243', 'Huila', 'La Plata', 'La Plata'),
('244', 'Huila', 'La Plata', 'La Plata'),
('245', 'Huila', 'La Plata', 'La Plata'),
('246', 'Huila', 'La Plata', 'La Plata'),
('247', 'Huila', 'La Plata', 'La Plata'),
('248', 'Huila', 'La Plata', 'La Plata'),
('249', 'Huila', 'La Plata', 'La Plata'),
('25', 'HUILA', 'LA PLATAS', 'LA PLATA'),
('250', 'Huila', 'La Plata', 'La Plata'),
('251', 'Huila', 'La Plata', 'La Plata'),
('252', 'Huila', 'La Plata', 'La Plata'),
('253', 'Huila', 'La Plata', 'La Plata'),
('254', 'Huila', 'La Plata', 'La Plata'),
('255', 'Huila', 'La Plata', 'La Plata'),
('256', 'Huila', 'La Plata', 'La Plata'),
('257', 'Huila', 'La Plata', 'La Plata'),
('258', 'Huila', 'La Plata', 'La Plata'),
('259', 'Huila', 'La Plata', 'La Plata'),
('26', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('260', 'Huila', 'La Plata', 'La Plata'),
('261', 'Huila', 'La Plata', 'La Plata'),
('262', 'Huila', 'La Plata', 'La Plata'),
('263', 'Huila', 'La Plata', 'La Plata'),
('264', 'Huila', 'La Plata', 'La Plata'),
('265', 'Huila', 'La Plata', 'La Plata'),
('266', 'Huila', 'La Plata', 'La Plata'),
('267', 'Huila', 'La Plata', 'La Plata'),
('268', 'Huila', 'La Plata', 'La Plata'),
('269', 'Huila', 'La Plata', 'La Plata'),
('27', 'HUILA', 'LA PLATA', 'LA PLATA HUILA'),
('270', 'Huila', 'La Plata', 'La Plata'),
('271', 'Huila', 'La Plata', 'La Plata'),
('272', 'Huila', 'La Plata', 'La Plata'),
('273', 'Huila', 'La Plata', 'La Plata'),
('274', 'Huila', 'La Plata', 'La Plata'),
('275', 'Huila', 'La Plata', 'La Plata'),
('276', 'Huila', 'La Plata', 'La Plata'),
('277', 'Huila', 'La Plata', 'La Plata'),
('278', 'Huila', 'La Plata', 'La Plata'),
('279', 'Huila', 'La Plata', 'La Plata'),
('28', 'HUILA', 'LA PLATA', 'LA PLATA'),
('280', 'Huila', 'La Plata', 'La Plata'),
('281', 'Huila', 'La Plata', 'La Plata'),
('282', 'Huila', 'La Plata', 'La Plata'),
('283', 'Huila', 'La Plata', 'La Plata'),
('284', 'Huila', 'La Plata', 'La Plata'),
('285', 'Huila', 'La Plata', 'La Plata'),
('286', 'Huila', 'La Plata', 'La Plata'),
('287', 'Huila', 'La Plata', 'La Plata'),
('288', 'Huila', 'La Plata', 'La Plata'),
('289', 'Huila', 'La Plata', 'La Plata'),
('29', 'HUILA', 'LA PLATA', 'LA PLATA'),
('290', 'Huila', 'La Plata', 'La Plata'),
('291', 'Huila', 'La Plata', 'La Plata'),
('292', 'Huila', 'La Plata', 'La Plata'),
('293', 'Huila', 'La Plata', 'La Plata'),
('294', 'Huila', 'La Plata', 'La Plata'),
('295', 'Huila', 'La Plata', 'La Plata'),
('296', 'Huila', 'La Plata', 'La Plata'),
('297', 'Huila', 'La Plata', 'La Plata'),
('298', 'Huila', 'La Plata', 'La Plata'),
('299', 'Huila', 'La Plata', 'La Plata'),
('30', 'HUILA', 'LA PLATA', 'LA PLATA'),
('300', 'Huila', 'La Plata', 'La Plata'),
('301', 'Huila', 'La Plata', 'La Plata'),
('302', 'Huila', 'La Plata', 'La Plata'),
('303', 'Huila', 'La Plata', 'La Plata'),
('304', 'Huila', 'La Plata', 'La Plata'),
('305', 'Huila', 'La Plata', 'La Plata'),
('306', 'Huila', 'La Plata', 'La Plata'),
('307', 'Huila', 'La Plata', 'La Plata'),
('308', 'Huila', 'La Plata', 'La Plata'),
('309', 'Huila', 'La Plata', 'La Plata'),
('31', 'HUILA', 'LA PLATA', 'LA PLATA'),
('310', 'Huila', 'La Plata', 'La Plata'),
('311', 'Huila', 'La Plata', 'La Plata'),
('312', 'Huila', 'La Plata', 'La Plata'),
('313', 'Huila', 'La Plata', 'La Plata'),
('314', 'Huila', 'La Plata', 'La Plata'),
('315', 'Huila', 'La Plata', 'La Plata'),
('316', 'Huila', 'La Plata', 'La Plata'),
('317', 'Huila', 'La Plata', 'La Plata'),
('318', 'Huila', 'La Plata', 'La Plata'),
('319', 'Huila', 'La Plata', 'La Plata'),
('32', 'HUILA', 'LA PLATA', 'LA PLATA'),
('320', 'Huila', 'La Plata', 'La Plata'),
('321', 'Huila', 'La Plata', 'La Plata'),
('322', 'Huila', 'La Plata', 'La Plata'),
('323', 'Huila', 'La Plata', 'La Plata'),
('324', 'Huila', 'La Plata', 'La Plata'),
('325', 'Huila', 'La Plata', 'La Plata'),
('326', 'Huila', 'La Plata', 'La Plata'),
('327', 'Huila', 'La Plata', 'La Plata'),
('328', 'Huila', 'La Plata', 'La Plata'),
('329', 'Huila', 'La Plata', 'La Plata'),
('33', 'HUILA', 'LA PLATA', 'LA PLATA'),
('330', 'Huila', 'La Plata', 'La Plata'),
('331', 'Huila', 'La Plata', 'La Plata'),
('332', 'Huila', 'La Plata', 'La Plata'),
('333', 'Huila', 'La Plata', 'La Plata'),
('334', 'Huila', 'La Plata', 'La Plata'),
('335', 'Huila', 'La Plata', 'La Plata'),
('336', 'Huila', 'La Plata', 'La Plata'),
('337', 'Huila', 'La Plata', 'La Plata'),
('338', 'Huila', 'La Plata', 'La Plata'),
('339', 'Huila', 'La Plata', 'La Plata'),
('34', 'HUILA', 'LA PLATA', 'LA PLATA'),
('340', 'Huila', 'La Plata', 'La Plata'),
('341', 'Huila', 'La Plata', 'La Plata'),
('342', 'Huila', 'La Plata', 'La Plata'),
('343', 'Huila', 'La Plata', 'La Plata'),
('344', 'Huila', 'La Plata', 'La Plata'),
('345', 'Huila', 'La Plata', 'La Plata'),
('346', 'Huila', 'La Plata', 'La Plata'),
('347', 'Huila', 'La Plata', 'La Plata'),
('348', 'Huila', 'La Plata', 'La Plata'),
('349', 'Huila', 'La Plata', 'La Plata'),
('35', 'HUILA', 'LA PLATA', 'LA PLATA'),
('350', 'Huila', 'La Plata', 'La Plata'),
('351', 'Huila', 'La Plata', 'La Plata'),
('352', 'Huila', 'La Plata', 'La Plata'),
('353', 'Huila', 'La Plata', 'La Plata'),
('354', 'Huila', 'La Plata', 'La Plata'),
('355', 'Huila', 'La Plata', 'La Plata'),
('356', 'Huila', 'La Plata', 'La Plata'),
('357', 'Huila', 'La Plata', 'La Plata'),
('358', 'Huila', 'La Plata', 'La Plata'),
('359', 'Huila', 'La Plata', 'La Plata'),
('36', 'HUILA', 'LA PLATA ', 'LA PLATA '),
('360', 'Huila', 'La Plata', 'La Plata'),
('361', 'Huila', 'La Plata', 'La Plata'),
('362', 'Huila', 'La Plata', 'La Plata'),
('363', 'Huila', 'La Plata', 'La Plata'),
('364', 'Huila', 'La Plata', 'La Plata'),
('365', 'Huila', 'La Plata', 'La Plata'),
('366', 'Huila', 'La Plata', 'La Plata'),
('367', 'Huila', 'La Plata', 'La Plata'),
('368', 'Huila', 'La Plata', 'La Plata'),
('369', 'Huila', 'La Plata', 'La Plata'),
('37', 'HUILA', 'LA PLATA', 'LA PLATA'),
('370', 'Huila', 'La Plata', 'La Plata'),
('371', 'Huila', 'La Plata', 'La Plata'),
('372', 'Huila', 'La Plata', 'La Plata'),
('373', 'Huila', 'La Plata', 'La Plata'),
('374', 'Huila', 'La Plata', 'La Plata'),
('375', 'Huila', 'La Plata', 'La Plata'),
('376', 'Huila', 'La Plata', 'La Plata'),
('377', 'Huila', 'La Plata', 'La Plata'),
('378', 'Huila', 'La Plata', 'La Plata'),
('379', 'Huila', 'La Plata', 'La Plata'),
('38', 'HUILA', 'LA PLATA', 'LA PLATA'),
('380', 'Huila', 'La Plata', 'La Plata'),
('381', 'Huila', 'La Plata', 'La Plata'),
('382', 'Huila', 'La Plata', 'La Plata'),
('383', 'Huila', 'La Plata', 'La Plata'),
('384', 'Huila', 'La Plata', 'La Plata'),
('385', 'Huila', 'La Plata', 'La Plata'),
('386', 'Huila', 'La Plata', 'La Plata'),
('387', 'Huila', 'La Plata', 'La Plata'),
('388', 'Huila', 'La Plata', 'La Plata'),
('389', 'Huila', 'La Plata', 'La Plata'),
('39', 'HUILA', 'LA PLATA', 'LA PLATA'),
('390', 'Huila', 'La Plata', 'La Plata'),
('391', 'Huila', 'La Plata', 'La Plata'),
('392', 'Huila', 'La Plata', 'La Plata'),
('393', 'Huila', 'La Plata', 'La Plata'),
('394', 'Huila', 'La Plata', 'La Plata'),
('395', 'Huila', 'La Plata', 'La Plata'),
('396', 'Huila', 'La Plata', 'La Plata'),
('397', 'Huila', 'La Plata', 'La Plata'),
('398', 'Huila', 'La Plata', 'La Plata'),
('399', 'Huila', 'La Plata', 'La Plata'),
('40', 'HUILA', 'LA PLATA', 'LA PLATA'),
('400', 'Huila', 'La Plata', 'La Plata'),
('401', 'Huila', 'La Plata', 'La Plata'),
('402', 'Huila', 'La Plata', 'La Plata'),
('403', 'Huila', 'La Plata', 'La Plata'),
('404', 'Huila', 'La Plata', 'La Plata'),
('405', 'Huila', 'La Plata', 'La Plata'),
('406', 'Huila', 'La Plata', 'La Plata'),
('407', 'Huila', 'La Plata', 'La Plata'),
('408', 'Huila', 'La Plata', 'La Plata'),
('409', 'Huila', 'La Plata', 'La Plata'),
('41', 'HUILA', 'LA PLATA', 'LA PLATA'),
('410', 'Huila', 'La Plata', 'La Plata'),
('411', 'Huila', 'La Plata', 'La Plata'),
('412', 'Huila', 'La Plata', 'La PLata Huila'),
('413', 'HUILA', 'LA PLATA', 'calle 7a #6-47'),
('42', 'HUILA', 'LA PLATA', 'LA PLATA'),
('43', 'HUILA', 'LA PLATA', 'LA PLATA'),
('44', 'HUILA', 'LA PLATA', 'LA PLATA'),
('45', 'HUILA', 'LA PLATA', 'LA PLATA'),
('46', 'HUILA', 'LA PLATA', 'LA PLATA'),
('47', 'HUILA', 'LA PLATA', 'LA PLATA'),
('48', 'HUILA', 'LA PLATA', 'LA PLATA'),
('49', 'HUILA', 'LA PLATA', 'LA PLATA'),
('50', 'HUILA ', 'LA PLATA', 'LA PLATA'),
('51', 'HUILA', 'LA PLATA', 'LA PLATA'),
('52', 'HUILA', 'LA PLATA', 'LA PLATA'),
('53', 'HUILA ', 'LA PLATA', 'LA PLATA'),
('54', 'HUILA', 'LA PLATA', 'LA PLATA'),
('55', 'HUILA', 'LA PLATA', 'LA PLATA'),
('56', 'HUILA ', 'LA PLATA', 'LA PLATA'),
('57', 'HUILA', 'LA PLATA', 'LA PLATA'),
('58', 'HUILA', 'LA PLATA', 'LA PLATA'),
('59', 'HUILA', 'LA PLATA', 'LA PLATA'),
('60', 'HUILA', 'LA PLATA ', 'LA PLATA'),
('61', 'HUILA', 'LA PLATA', 'LA PLATA'),
('62', 'HUILA', 'LA PLATA', 'LA PLATA'),
('63', 'HUILA', 'LA PLATA', 'LA PLATA'),
('64', 'HUILA ', 'LA PLATA', 'LA PLATA'),
('65', 'HUILA', 'LA PLATA', 'LA PLATA'),
('66', 'HUILA', 'LA PLATA', 'LA PLATA'),
('67', 'HUILA ', 'LA PLATA', 'LA PLATA'),
('68', 'HUILA', 'LA PLATA', 'LA PLATA'),
('69', 'HUILA', 'LA PLATA', 'LA PLATA'),
('70', 'HUILA', 'LA PLATA', 'LA PLATA'),
('71', 'HUILA', 'LA PLATA', 'LA PLATA'),
('72', 'HUILA', 'LA PLATA', 'LA PLATA'),
('73', 'HUILA', 'LA PLATA', 'LA PLATA'),
('74', 'HUILA', 'LA PLATA', 'LA PLATA'),
('75', 'HUILA', 'LA PLATA', 'LA PLATA'),
('76', 'HUILA', 'LA PLATA', 'LA PLATA'),
('77', 'HUILA ', 'LA PLATA', 'LA PLATA'),
('78', 'HUILA ', 'LA PLATA', 'LA PLATA'),
('79', 'HUILA', 'LA PLATA', 'LA PLATA'),
('80', 'HUILA ', 'LA PLATA', 'LA PLATA'),
('81', 'HUILA', 'LA PLATA', 'LA PLATA'),
('82', 'HUILA', 'LA PLATA', 'LA PLATA'),
('83', 'HUILA', 'LA PLATA', 'LA PLATA'),
('84', 'HUILA', 'LA PLATA', 'LA PLATA'),
('85', 'HUILA', 'LA PLATA', 'LA PLATA'),
('86', 'HUILA', 'LA PLATA', 'LA PLATA'),
('87', 'HUILA', 'LA PLATA', 'LA PLATA'),
('88', 'HUILA', 'LA PLATA', 'LA PLATA'),
('89', 'HUILA', 'LA PLATA', 'LA PLATA'),
('90', 'HUILA', 'LA PLATA', 'LA PLATA'),
('91', 'HUILA', 'LA PLATA', 'LA PLATA'),
('92', 'HUILA', 'LA PLATA', 'LA PLATA'),
('93', 'HUILA', 'LA PLATA', 'LA PLATA'),
('94', 'HUILA', 'LA PLATA', 'LA PLATA'),
('95', 'HUILA', 'LA PLATA', 'LA PLATA'),
('96', 'HUILA', 'LA PLATA', 'LA PLATA'),
('97', 'HUILA', 'LA PLATA', 'LA PLATA'),
('98', 'HUILA', 'LA PLATA', 'LA PLATA'),
('99', 'HUILA', 'LA PLATA', 'LA PLATA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_fichas`
--

CREATE TABLE `usuarios_fichas` (
  `af_ficha_auto_id` int(11) NOT NULL,
  `af_aprendiz` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `af_codigo_formacion` int(11) NOT NULL,
  `af_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `af_estado` tinyint(1) NOT NULL DEFAULT 1,
  `af_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `af_etapa` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `af_fetapa` datetime NOT NULL,
  `af_certificado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `af_fertificado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_fichas`
--

INSERT INTO `usuarios_fichas` (`af_ficha_auto_id`, `af_aprendiz`, `af_codigo_formacion`, `af_updated`, `af_estado`, `af_vigencia`, `af_etapa`, `af_fetapa`, `af_certificado`, `af_fertificado`) VALUES
(11, '14', 18, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(12, '15', 11, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(13, '16', 11, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(14, '17', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(15, '18', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(16, '19', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(17, '20', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(18, '21', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(19, '22', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(20, '23', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(21, '24', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(22, '25', 28, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(23, '26', 28, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(24, '27', 28, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(25, '28', 30, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(26, '29', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(27, '30', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(28, '31', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(29, '32', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(30, '33', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(31, '34', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(32, '35', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(33, '36', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(34, '37', 27, '2019-12-12 03:05:18', 1, 1, '', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00'),
(35, '38', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(36, '39', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(37, '40', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(38, '41', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(39, '42', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(40, '43', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(41, '44', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(42, '45', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(43, '46', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(44, '47', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(45, '48', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(46, '49', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(47, '50', 27, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(48, '51', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(49, '52', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(50, '53', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(51, '54', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(52, '55', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(53, '56', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(54, '57', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(55, '58', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(56, '59', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(57, '60', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(58, '61', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(59, '62', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(60, '63', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(61, '64', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(62, '65', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(63, '66', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(64, '67', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(65, '68', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(66, '69', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(67, '70', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(68, '71', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(69, '72', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(70, '73', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(71, '74', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(72, '75', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(73, '76', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(74, '77', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(75, '78', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(76, '79', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(77, '80', 31, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(78, '81', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(79, '82', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(80, '83', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(81, '84', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(82, '85', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(83, '86', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(84, '87', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(85, '88', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(86, '89', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(87, '90', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(88, '91', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(89, '92', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(90, '93', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(91, '94', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(92, '95', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(93, '96', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(94, '97', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(95, '98', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(96, '99', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(97, '100', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(98, '101', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(99, '102', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(100, '103', 32, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(101, '104', 11, '2020-11-06 14:59:01', 1, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(102, '112', 11, '2020-03-09 05:44:20', 1, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(103, '115', 11, '2019-11-25 13:44:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(104, '119', 11, '2020-11-06 17:17:46', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(105, '120', 51, '2019-12-11 14:41:26', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(106, '121', 51, '2019-12-11 16:11:22', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(107, '122', 51, '2019-12-11 16:11:28', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(108, '123', 51, '2019-12-11 16:11:33', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(109, '124', 51, '2019-12-11 16:11:38', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(110, '125', 51, '2019-12-11 16:11:43', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(111, '126', 51, '2019-12-11 16:11:46', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(112, '127', 51, '2019-12-11 16:11:51', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(113, '128', 51, '2019-12-11 16:11:55', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(114, '129', 51, '2019-12-11 16:12:00', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(115, '130', 51, '2019-12-11 16:12:07', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(116, '131', 51, '2019-12-19 03:31:29', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(117, '132', 51, '2019-12-19 03:31:02', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(118, '133', 51, '2019-12-19 03:31:43', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(119, '134', 51, '2019-12-19 03:32:17', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(120, '135', 51, '2019-12-19 03:32:23', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(121, '136', 51, '2019-12-19 03:31:50', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(122, '137', 51, '2019-12-19 03:31:12', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(123, '138', 51, '2019-12-11 16:11:04', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(124, '139', 51, '2019-12-19 03:31:20', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(125, '140', 51, '2019-12-19 03:32:33', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(126, '141', 51, '2019-12-19 03:33:05', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(127, '142', 51, '2019-12-19 03:33:31', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(128, '143', 51, '2019-12-19 03:33:12', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(129, '144', 51, '2019-12-19 03:33:21', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(130, '145', 51, '2019-12-19 03:33:37', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(131, '146', 51, '2019-12-19 03:32:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(132, '147', 51, '2019-12-19 03:32:45', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(133, '148', 51, '2019-12-19 03:32:10', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(134, '149', 51, '2019-12-19 03:31:57', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(135, '150', 52, '2019-12-11 16:18:39', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(136, '151', 52, '2019-12-11 16:19:23', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(137, '152', 52, '2019-12-11 16:20:16', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(138, '153', 52, '2019-12-11 16:21:02', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(139, '154', 52, '2019-12-11 16:22:13', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(140, '155', 52, '2019-12-11 16:23:18', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(141, '156', 52, '2019-12-11 16:24:08', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(142, '157', 52, '2019-12-11 16:25:05', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(143, '158', 52, '2019-12-11 16:25:52', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(144, '159', 52, '2019-12-11 16:26:40', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(145, '160', 52, '2019-12-11 16:27:27', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(146, '161', 52, '2019-12-11 16:28:18', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(147, '162', 52, '2019-12-11 16:29:08', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(148, '163', 52, '2019-12-11 16:29:59', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(149, '164', 52, '2019-12-11 16:30:49', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(150, '165', 52, '2019-12-11 16:31:32', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(151, '166', 52, '2019-12-11 16:32:19', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(152, '167', 52, '2019-12-11 16:33:14', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(153, '168', 52, '2019-12-11 16:34:11', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(154, '169', 52, '2019-12-11 16:35:22', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(155, '170', 52, '2019-12-11 16:36:10', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(156, '171', 52, '2019-12-11 16:37:11', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(157, '172', 52, '2019-12-11 16:39:43', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(158, '173', 52, '2019-12-11 16:40:42', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(159, '174', 52, '2019-12-11 16:41:39', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(160, '175', 52, '2019-12-11 16:42:53', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(161, '176', 52, '2019-12-11 16:43:39', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(162, '177', 52, '2019-12-11 16:44:48', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(163, '178', 52, '2019-12-11 16:45:38', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(164, '179', 52, '2019-12-11 16:46:34', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(165, '180', 53, '2019-12-11 16:56:18', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(166, '181', 53, '2019-12-11 16:57:07', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(167, '182', 53, '2019-12-11 16:58:05', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(168, '183', 53, '2019-12-11 16:59:11', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(169, '184', 53, '2019-12-11 17:00:01', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(170, '185', 53, '2019-12-11 17:00:49', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(171, '186', 53, '2019-12-11 17:01:43', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(172, '187', 53, '2019-12-11 17:02:27', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(173, '188', 53, '2019-12-11 17:03:21', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(174, '189', 53, '2019-12-11 17:04:03', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(175, '190', 53, '2019-12-11 17:04:48', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(176, '191', 53, '2019-12-11 17:07:34', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(177, '192', 53, '2019-12-11 17:08:33', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(178, '193', 53, '2019-12-11 17:09:22', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(179, '194', 53, '2019-12-11 17:10:06', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(180, '195', 53, '2019-12-11 17:10:52', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(181, '196', 53, '2019-12-11 17:12:01', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(182, '197', 53, '2019-12-11 17:12:49', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(183, '198', 53, '2019-12-11 17:13:47', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(184, '199', 53, '2019-12-11 17:14:42', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(185, '200', 53, '2019-12-11 17:16:13', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(186, '201', 53, '2019-12-11 17:17:09', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(187, '202', 53, '2019-12-11 17:18:06', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(188, '203', 53, '2019-12-11 17:18:52', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(189, '204', 53, '2019-12-11 17:19:52', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(190, '205', 53, '2019-12-11 17:20:46', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(191, '206', 53, '2019-12-11 17:22:46', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(192, '207', 53, '2019-12-11 17:23:33', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(193, '208', 53, '2019-12-11 17:24:24', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(194, '209', 53, '2019-12-11 17:26:00', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(195, '210', 11, '2019-12-12 00:27:42', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(196, '211', 54, '2019-12-13 01:19:51', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(197, '212', 54, '2019-12-13 01:23:15', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(198, '213', 54, '2019-12-13 01:24:25', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(199, '214', 54, '2019-12-13 01:31:02', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(200, '215', 54, '2019-12-13 01:34:29', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(201, '216', 54, '2019-12-13 01:35:17', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(202, '217', 54, '2019-12-13 01:35:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(203, '218', 54, '2019-12-13 01:36:37', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(204, '219', 54, '2019-12-13 01:37:12', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(205, '220', 54, '2019-12-13 01:37:51', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(206, '221', 54, '2019-12-13 01:38:32', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(207, '222', 54, '2019-12-13 01:39:09', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(208, '223', 54, '2019-12-13 01:39:42', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(209, '224', 54, '2019-12-13 01:40:22', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(210, '225', 54, '2019-12-13 01:41:21', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(211, '226', 54, '2019-12-13 01:41:57', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(212, '227', 54, '2019-12-13 01:42:32', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(213, '228', 54, '2019-12-13 01:43:13', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(214, '229', 54, '2019-12-13 01:43:58', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(215, '230', 54, '2019-12-13 01:44:33', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(216, '231', 54, '2019-12-13 01:45:30', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(217, '232', 54, '2019-12-13 01:49:37', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(218, '233', 54, '2019-12-13 01:50:19', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(219, '234', 54, '2019-12-13 01:50:58', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(220, '235', 55, '2019-12-13 02:17:18', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(221, '236', 55, '2019-12-13 02:22:50', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(222, '237', 55, '2019-12-13 02:23:32', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(223, '238', 55, '2019-12-13 02:24:38', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(224, '239', 55, '2019-12-13 02:25:21', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(225, '240', 55, '2019-12-13 02:25:57', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(226, '241', 55, '2019-12-13 02:26:33', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(227, '242', 55, '2019-12-13 02:27:12', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(228, '243', 55, '2019-12-13 02:27:48', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(229, '244', 55, '2019-12-13 02:28:27', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(230, '245', 55, '2019-12-13 02:29:02', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(231, '246', 55, '2019-12-13 02:29:58', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(232, '247', 55, '2019-12-13 02:30:39', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(233, '248', 55, '2019-12-13 02:31:14', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(234, '249', 55, '2019-12-13 02:31:53', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(235, '250', 55, '2019-12-13 02:32:26', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(236, '251', 55, '2019-12-13 02:33:09', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(237, '252', 55, '2019-12-13 02:33:38', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(238, '253', 55, '2019-12-13 02:34:17', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(239, '254', 55, '2019-12-13 02:34:56', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(240, '255', 55, '2019-12-13 02:35:35', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(241, '256', 55, '2019-12-13 02:36:14', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(242, '257', 55, '2019-12-13 02:36:53', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(243, '258', 55, '2019-12-13 02:37:38', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(244, '259', 55, '2019-12-13 02:38:34', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(245, '260', 56, '2019-12-13 02:43:53', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(246, '261', 56, '2019-12-13 02:44:33', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(247, '262', 56, '2019-12-13 02:45:08', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(248, '263', 56, '2019-12-13 02:45:42', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(249, '264', 56, '2019-12-13 02:46:17', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(250, '265', 56, '2019-12-13 02:46:50', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(251, '266', 56, '2019-12-13 02:47:23', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(252, '267', 56, '2019-12-13 02:47:56', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(253, '268', 56, '2019-12-13 02:48:35', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(254, '269', 56, '2019-12-13 02:49:09', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(255, '270', 56, '2019-12-13 02:49:43', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(256, '271', 56, '2019-12-13 02:50:16', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(257, '272', 56, '2019-12-13 02:50:49', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(258, '273', 56, '2019-12-13 02:51:24', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(259, '274', 56, '2019-12-13 02:52:02', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(260, '275', 56, '2019-12-13 02:52:42', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(261, '276', 56, '2019-12-13 02:53:15', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(262, '277', 56, '2019-12-13 02:53:52', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(263, '278', 56, '2019-12-13 02:54:32', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(264, '279', 56, '2019-12-13 02:55:14', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(265, '280', 56, '2019-12-13 02:55:55', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(266, '281', 57, '2019-12-16 14:16:51', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(267, '282', 57, '2019-12-16 14:18:15', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(268, '283', 57, '2019-12-16 14:19:29', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(269, '284', 57, '2019-12-16 14:20:58', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(270, '285', 57, '2019-12-16 14:22:48', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(271, '286', 57, '2019-12-16 14:24:15', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(272, '287', 57, '2019-12-19 02:41:01', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(273, '288', 57, '2019-12-19 02:43:41', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(274, '289', 57, '2019-12-19 02:45:32', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(275, '290', 57, '2019-12-19 02:46:41', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(276, '291', 57, '2019-12-19 02:47:29', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(277, '292', 57, '2019-12-19 02:48:10', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(278, '293', 57, '2019-12-19 02:48:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(279, '294', 57, '2019-12-19 02:49:43', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(280, '295', 57, '2019-12-19 02:50:25', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(281, '296', 57, '2019-12-19 02:51:04', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(282, '297', 57, '2019-12-19 02:51:43', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(283, '298', 57, '2019-12-19 02:52:23', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(284, '299', 57, '2019-12-19 02:53:00', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(285, '300', 57, '2019-12-19 02:53:42', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(286, '301', 57, '2019-12-19 02:54:27', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(287, '302', 57, '2019-12-19 02:55:15', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(288, '303', 57, '2019-12-19 02:56:41', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(289, '304', 57, '2019-12-19 02:57:41', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(290, '305', 58, '2019-12-19 03:03:10', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(291, '306', 58, '2019-12-19 03:04:01', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(292, '307', 58, '2019-12-19 03:04:42', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(293, '308', 58, '2019-12-19 03:05:27', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(294, '309', 58, '2019-12-19 03:06:03', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(295, '310', 58, '2019-12-19 03:06:39', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(296, '311', 58, '2019-12-19 03:07:20', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(297, '312', 58, '2019-12-19 03:08:12', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(298, '313', 58, '2019-12-19 03:10:42', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(299, '314', 58, '2019-12-19 03:12:17', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(300, '315', 58, '2019-12-19 03:13:13', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(301, '316', 58, '2019-12-19 03:13:51', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(302, '317', 58, '2019-12-19 03:14:36', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(303, '318', 58, '2019-12-19 03:15:32', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(304, '319', 58, '2019-12-19 03:16:20', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(305, '320', 58, '2019-12-19 03:17:06', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(306, '321', 58, '2019-12-19 03:17:48', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(307, '322', 58, '2019-12-19 03:17:48', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(308, '323', 58, '2019-12-19 03:18:26', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(309, '324', 58, '2019-12-19 03:19:04', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(310, '325', 58, '2019-12-19 03:19:41', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(311, '326', 58, '2019-12-19 03:20:20', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(312, '327', 58, '2019-12-19 03:21:01', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(313, '328', 58, '2019-12-19 03:21:48', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(314, '329', 58, '2019-12-19 03:22:24', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(315, '330', 58, '2019-12-19 03:23:03', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(316, '331', 58, '2019-12-19 03:23:45', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(317, '332', 59, '2019-12-22 00:58:15', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(318, '333', 59, '2019-12-22 01:01:08', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(319, '334', 59, '2019-12-22 01:01:50', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(320, '335', 59, '2019-12-22 01:02:30', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(321, '336', 59, '2019-12-22 01:03:14', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(322, '337', 59, '2019-12-22 01:03:56', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(323, '338', 59, '2019-12-22 01:04:29', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(324, '339', 59, '2019-12-22 01:05:07', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(325, '340', 59, '2019-12-22 01:06:23', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(326, '341', 59, '2019-12-22 01:07:14', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(327, '342', 59, '2019-12-22 01:08:02', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(328, '343', 59, '2019-12-22 01:08:44', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(329, '344', 59, '2019-12-22 01:09:27', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(330, '345', 59, '2019-12-22 01:10:14', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(331, '346', 59, '2019-12-22 01:11:08', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(332, '347', 59, '2019-12-22 01:11:50', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(333, '348', 59, '2019-12-22 01:12:37', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(334, '349', 59, '2019-12-22 01:13:21', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(335, '350', 59, '2019-12-22 01:14:17', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(336, '351', 59, '2019-12-22 01:15:08', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(337, '352', 59, '2019-12-22 01:15:52', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(338, '353', 59, '2019-12-22 01:16:32', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(339, '354', 59, '2019-12-22 01:17:18', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(340, '355', 59, '2019-12-22 01:18:03', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(341, '356', 59, '2019-12-22 01:18:38', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(342, '357', 60, '2019-12-22 01:22:19', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(343, '358', 60, '2019-12-22 01:23:12', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(344, '359', 60, '2019-12-22 01:23:50', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(345, '360', 60, '2019-12-22 01:24:29', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(346, '361', 60, '2019-12-22 01:25:08', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(347, '362', 60, '2019-12-22 01:25:56', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(348, '363', 60, '2019-12-22 01:26:47', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(349, '364', 60, '2019-12-22 01:27:37', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(350, '365', 60, '2019-12-22 01:28:20', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(351, '366', 60, '2019-12-22 01:29:40', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(352, '367', 60, '2019-12-22 01:30:41', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(353, '368', 60, '2019-12-22 01:32:35', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(354, '369', 60, '2019-12-22 01:33:29', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(355, '370', 60, '2019-12-22 01:34:21', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(356, '371', 60, '2019-12-22 01:35:28', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(357, '372', 60, '2019-12-22 01:36:33', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(358, '373', 60, '2019-12-22 01:37:17', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(359, '374', 60, '2019-12-22 01:37:59', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(360, '375', 60, '2019-12-22 01:38:47', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(361, '376', 60, '2019-12-22 01:39:21', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(362, '377', 60, '2019-12-22 01:39:55', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(363, '378', 60, '2019-12-22 01:40:38', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(364, '379', 60, '2019-12-22 01:41:42', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(365, '380', 60, '2019-12-22 01:42:38', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(366, '381', 60, '2019-12-22 01:43:13', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(367, '382', 60, '2019-12-22 01:43:49', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(368, '383', 61, '2019-12-22 01:48:48', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(369, '384', 61, '2019-12-22 01:49:26', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(370, '385', 61, '2019-12-22 01:50:17', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(371, '386', 61, '2019-12-22 01:50:53', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(372, '387', 61, '2019-12-22 01:51:33', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(373, '388', 61, '2019-12-22 01:52:09', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(374, '389', 61, '2019-12-22 01:53:00', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(375, '390', 61, '2019-12-22 01:53:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(376, '391', 61, '2019-12-22 01:54:50', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(377, '392', 61, '2019-12-22 01:55:33', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(378, '393', 61, '2019-12-22 01:56:16', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(379, '394', 61, '2019-12-22 01:57:16', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(380, '395', 61, '2019-12-22 01:57:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(381, '396', 61, '2019-12-22 01:58:54', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(382, '397', 61, '2019-12-22 01:59:49', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(383, '398', 61, '2019-12-22 02:00:28', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(384, '399', 61, '2019-12-22 02:01:20', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(385, '400', 61, '2019-12-22 02:01:59', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(386, '401', 61, '2019-12-22 02:02:34', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(387, '402', 61, '2019-12-22 02:03:15', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(388, '403', 61, '2019-12-22 02:04:11', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(389, '404', 61, '2019-12-22 02:04:46', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(390, '405', 61, '2019-12-22 02:05:19', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(391, '406', 61, '2019-12-22 02:06:29', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(392, '407', 61, '2019-12-22 02:07:21', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(393, '408', 61, '2019-12-22 02:08:22', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(394, '409', 61, '2019-12-22 02:09:05', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(395, '410', 61, '2019-12-22 02:09:43', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(396, '411', 61, '2019-12-22 02:10:24', 1, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_info_profesional`
--

CREATE TABLE `usuarios_info_profesional` (
  `id_auto_profesional` int(20) NOT NULL,
  `codigo_in_profesional` int(11) NOT NULL,
  `ip_titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ip_grado` varchar(90) COLLATE utf8_spanish_ci NOT NULL,
  `ip_vigencia` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_info_profesional`
--

INSERT INTO `usuarios_info_profesional` (`id_auto_profesional`, `codigo_in_profesional`, `ip_titulo`, `ip_grado`, `ip_vigencia`) VALUES
(6, 18, 'INGENIERA AMBIENTAL', 'INGENIERA', 0),
(7, 19, 'INGENIERO DE SISTEMAS', 'INGENIEROS', 0),
(8, 20, 'GESTIÃ“N AMBIENTAL', 'TECNOLOGO', 0),
(9, 21, '9526', '41', 0),
(14, 109, 'INGENIERO ELECTRICO', 'INGENIERO', 0),
(15, 110, 'INGENIERA AMBIENTAL', 'INGENIERA', 0),
(16, 111, 'INGENIERA AMBIENTAL', 'INGENIERA', 0),
(17, 113, 'INGENIERO DE SISTEMAS', 'INGENIERO', 0),
(18, 114, 'INGENIERO DE SISTEMAS', 'PROFESIONAL ', 0),
(19, 116, 'Ingeniero de Sistemas', 'Ingeniero ', 0),
(20, 117, 'Administradora', 'profesional', 0),
(21, 118, 'Administrador de Empresas', 'Profesional en Adm Empresas', 0),
(22, 412, 'Ingeniero de sistemas', 'Ingeniero', 0),
(23, 413, 'TECNOLOGO EN GESTION DE EMPRESAS AGROPECUARIAS', 'TECNOLOGO', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_regional`
--

CREATE TABLE `usuarios_regional` (
  `ar_auto_id` int(16) NOT NULL,
  `regional_codigo` int(11) NOT NULL,
  `ar_regional` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ar_centro` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ar_estado` tinyint(1) NOT NULL DEFAULT 1,
  `ar_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `ar_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_regional`
--

INSERT INTO `usuarios_regional` (`ar_auto_id`, `regional_codigo`, `ar_regional`, `ar_centro`, `ar_estado`, `ar_vigencia`, `ar_updated`) VALUES
(13, 14, '9526', '41', 1, 1, '2019-06-26 22:14:18'),
(14, 15, '9526', '41', 1, 1, '2019-06-26 23:04:03'),
(15, 16, '9526', '41', 1, 1, '2019-06-26 23:16:23'),
(16, 17, '9526', '41', 1, 1, '2019-09-10 14:42:15'),
(17, 18, '9526', '41', 1, 1, '2019-09-10 14:49:59'),
(18, 19, '9526', '41', 1, 1, '2019-09-10 14:52:14'),
(19, 20, '9526', '41', 1, 1, '2019-09-10 14:59:17'),
(20, 21, '9526', '41', 1, 1, '2019-09-10 15:01:47'),
(21, 22, '9526', '41', 1, 1, '2019-09-10 16:09:11'),
(22, 23, '9526', '41', 1, 1, '2019-09-10 16:10:06'),
(23, 24, '9526', '41', 1, 1, '2019-09-10 16:12:41'),
(24, 25, '9526', '41', 1, 1, '2019-09-11 13:23:19'),
(25, 26, '9526', '41', 1, 1, '2019-09-11 13:25:19'),
(26, 27, '9526', '41', 1, 1, '2019-09-11 13:26:08'),
(27, 28, '9526', '41', 1, 1, '2019-09-13 20:23:40'),
(28, 29, '9526', '41', 1, 1, '2019-09-13 21:38:37'),
(29, 30, '9526', '41', 1, 1, '2019-09-13 21:41:03'),
(30, 31, '9526', '41', 1, 1, '2019-09-13 21:46:43'),
(31, 32, '9526', '41', 1, 1, '2019-09-13 21:48:41'),
(32, 33, '9526', '41', 1, 1, '2019-09-13 21:50:35'),
(33, 34, '9526', '41', 1, 1, '2019-09-13 21:52:21'),
(34, 35, '9526', '41', 1, 1, '2019-09-13 21:54:18'),
(35, 36, '9526', '41', 1, 1, '2019-09-13 21:55:47'),
(36, 37, '9526', '41', 1, 1, '2019-09-13 21:57:30'),
(37, 38, '9526', '41', 1, 1, '2019-09-13 21:58:51'),
(38, 39, '9526', '41', 1, 1, '2019-09-13 22:00:09'),
(39, 40, '9526', '41', 1, 1, '2019-09-13 22:01:23'),
(40, 41, '9526', '41', 1, 1, '2019-09-13 22:03:09'),
(41, 42, '9526', '41', 1, 1, '2019-09-16 19:45:30'),
(42, 43, '9526', '41', 1, 1, '2019-09-16 19:52:48'),
(43, 44, '9526', '41', 1, 1, '2019-09-16 19:54:17'),
(44, 45, '9526', '41', 1, 1, '2019-09-16 19:55:36'),
(45, 46, '9526', '41', 1, 1, '2019-09-16 19:57:19'),
(46, 47, '9526', '41', 1, 1, '2019-09-16 19:58:50'),
(47, 48, '9526', '41', 1, 1, '2019-09-16 20:00:25'),
(48, 49, '9526', '41', 1, 1, '2019-09-16 20:01:43'),
(49, 50, '9526', '41', 1, 1, '2019-09-16 20:02:56'),
(50, 51, '9526', '41', 1, 1, '2019-09-16 20:36:27'),
(51, 52, '9526', '41', 1, 1, '2019-09-16 20:38:45'),
(52, 53, '9526', '41', 1, 1, '2019-09-16 20:40:22'),
(53, 54, '9526', '41', 1, 1, '2019-09-16 20:42:02'),
(54, 55, '9526', '41', 1, 1, '2019-09-16 20:43:36'),
(55, 56, '9526', '41', 1, 1, '2019-09-16 20:45:42'),
(56, 57, '9526', '41', 1, 1, '2019-09-16 20:48:51'),
(57, 58, '9526', '41', 1, 1, '2019-09-16 20:50:10'),
(58, 59, '9526', '41', 1, 1, '2019-09-16 20:51:57'),
(59, 60, '9526', '41', 1, 1, '2019-09-16 20:54:29'),
(60, 61, '9526', '41', 1, 1, '2019-09-16 20:57:26'),
(61, 62, '9526', '41', 1, 1, '2019-09-16 20:59:20'),
(62, 63, '9526', '41', 1, 1, '2019-09-16 21:01:01'),
(63, 64, '9526', '41', 1, 1, '2019-09-16 21:03:06'),
(64, 65, '9526', '41', 1, 1, '2019-09-16 21:04:45'),
(65, 66, '9526', '41', 1, 1, '2019-09-16 21:07:18'),
(66, 67, '9526', '41', 1, 1, '2019-09-16 21:10:42'),
(67, 68, '9526', '41', 1, 1, '2019-09-16 21:27:09'),
(68, 69, '9526', '41', 1, 1, '2019-09-16 21:28:26'),
(69, 70, '9526', '41', 1, 1, '2019-09-16 21:29:54'),
(70, 71, '9526', '41', 1, 1, '2019-09-16 21:31:35'),
(71, 72, '9526', '41', 1, 1, '2019-09-16 21:33:42'),
(72, 73, '9526', '41', 1, 1, '2019-09-16 21:35:36'),
(73, 74, '9526', '41', 1, 1, '2019-09-16 21:37:01'),
(74, 75, '9526', '41', 1, 1, '2019-09-16 21:38:20'),
(75, 76, '9526', '41', 1, 1, '2019-09-16 21:40:03'),
(76, 77, '9526', '41', 1, 1, '2019-09-16 21:41:27'),
(77, 78, '9526', '41', 1, 1, '2019-09-16 21:42:40'),
(78, 79, '9526', '41', 1, 1, '2019-09-16 21:44:12'),
(79, 80, '9526', '41', 1, 1, '2019-09-16 21:47:31'),
(80, 81, '9526', '41', 1, 1, '2019-09-16 22:00:33'),
(81, 82, '9526', '41', 1, 1, '2019-09-16 22:02:04'),
(82, 83, '9526', '41', 1, 1, '2019-09-16 22:04:04'),
(83, 84, '9526', '41', 1, 1, '2019-09-17 20:10:14'),
(84, 85, '9526', '41', 1, 1, '2019-09-17 20:11:25'),
(85, 86, '9526', '41', 1, 1, '2019-09-17 20:12:47'),
(86, 87, '9526', '41', 1, 1, '2019-09-17 20:13:55'),
(87, 88, '9526', '41', 1, 1, '2019-09-17 20:16:31'),
(88, 89, '9526', '41', 1, 1, '2019-09-17 20:17:46'),
(89, 90, '9526', '41', 1, 1, '2019-09-17 20:19:11'),
(90, 91, '9526', '41', 1, 1, '2019-09-17 20:20:27'),
(91, 92, '9526', '41', 1, 1, '2019-09-17 20:21:45'),
(92, 93, '9526', '41', 1, 1, '2019-09-17 20:22:53'),
(93, 94, '9526', '41', 1, 1, '2019-09-17 20:26:31'),
(94, 95, '9526', '41', 1, 1, '2019-09-17 20:29:18'),
(95, 96, '9526', '41', 1, 1, '2019-09-17 20:30:34'),
(96, 97, '9526', '41', 1, 1, '2019-09-17 20:31:39'),
(97, 98, '9526', '41', 1, 1, '2019-09-17 20:32:53'),
(98, 99, '9526', '41', 1, 1, '2019-09-17 20:34:08'),
(99, 100, '9526', '41', 1, 1, '2019-09-17 20:35:23'),
(100, 101, '9526', '41', 1, 1, '2019-09-17 20:36:28'),
(101, 102, '9526', '41', 1, 1, '2019-09-17 20:38:09'),
(102, 103, '9526', '41', 1, 1, '2019-09-17 20:40:47'),
(103, 104, '9526', '41', 1, 1, '2019-10-04 21:05:23'),
(104, 105, '9526', '41', 1, 1, '2019-10-04 21:34:21'),
(105, 106, '9526', '41', 1, 1, '2019-10-04 21:35:39'),
(106, 107, '9526', '41', 1, 1, '2019-10-04 21:41:14'),
(107, 108, '9526', '41', 1, 1, '2019-10-04 21:42:37'),
(108, 109, '9526', '41', 1, 1, '2019-10-04 21:43:41'),
(109, 110, '9526', '41', 1, 1, '2019-10-04 23:35:40'),
(110, 111, '9526', '41', 1, 1, '2019-10-04 21:52:36'),
(111, 112, '9526', '41', 1, 1, '2019-10-20 02:13:28'),
(112, 113, '9526', '41', 1, 1, '2019-10-20 02:20:55'),
(113, 114, '9526', '41', 1, 1, '2019-10-21 21:28:25'),
(114, 115, '9526', '41', 1, 1, '2019-11-25 13:37:08'),
(115, 116, '9526', '41', 1, 1, '2019-12-06 03:39:08'),
(116, 117, '9526', '41', 0, 0, '2020-03-09 21:44:50'),
(117, 118, '9526', '41', 1, 1, '2020-11-06 16:34:11'),
(118, 119, '9526', '41', 1, 1, '2019-12-06 06:04:01'),
(119, 120, '9526', '41', 1, 1, '2019-12-11 14:41:10'),
(120, 121, '9526', '41', 1, 1, '2019-12-11 14:43:19'),
(121, 122, '9526', '41', 1, 1, '2019-12-11 14:46:12'),
(122, 123, '9526', '41', 1, 1, '2019-12-11 15:19:35'),
(123, 124, '9526', '41', 1, 1, '2019-12-11 15:20:50'),
(124, 125, '9526', '41', 1, 1, '2019-12-11 15:24:17'),
(125, 126, '9526', '41', 1, 1, '2019-12-11 15:25:53'),
(126, 127, '9526', '41', 1, 1, '2019-12-11 15:27:24'),
(127, 128, '9526', '41', 1, 1, '2019-12-11 15:42:59'),
(128, 129, '9526', '41', 1, 1, '2019-12-11 15:45:12'),
(129, 130, '9526', '41', 1, 1, '2019-12-11 15:46:25'),
(130, 131, '9526', '41', 1, 1, '2019-12-11 15:47:24'),
(131, 132, '9526', '41', 1, 1, '2019-12-11 15:49:03'),
(132, 133, '9526', '41', 1, 1, '2019-12-11 15:50:06'),
(133, 134, '9526', '41', 1, 1, '2019-12-11 15:51:18'),
(134, 135, '9526', '41', 1, 1, '2019-12-11 15:52:23'),
(135, 136, '9526', '41', 1, 1, '2019-12-11 15:53:13'),
(136, 137, '9526', '41', 1, 1, '2019-12-11 15:54:09'),
(137, 138, '9526', '41', 1, 1, '2019-12-11 15:55:13'),
(138, 139, '9526', '41', 1, 1, '2019-12-11 15:56:15'),
(139, 140, '9526', '41', 1, 1, '2019-12-11 15:57:18'),
(140, 141, '9526', '41', 1, 1, '2019-12-11 15:58:16'),
(141, 142, '9526', '41', 1, 1, '2019-12-11 15:59:09'),
(142, 143, '9526', '41', 1, 1, '2019-12-11 16:00:18'),
(143, 144, '9526', '41', 1, 1, '2019-12-11 16:01:15'),
(144, 145, '9526', '41', 1, 1, '2019-12-11 16:02:06'),
(145, 146, '9526', '41', 1, 1, '2019-12-11 16:02:57'),
(146, 147, '9526', '41', 1, 1, '2019-12-11 16:03:50'),
(147, 148, '9526', '41', 1, 1, '2019-12-11 16:05:06'),
(148, 149, '9526', '41', 1, 1, '2019-12-11 16:05:56'),
(149, 150, '9526', '41', 1, 1, '2019-12-11 16:18:39'),
(150, 151, '9526', '41', 1, 1, '2019-12-11 16:19:23'),
(151, 152, '9526', '41', 1, 1, '2019-12-11 16:20:16'),
(152, 153, '9526', '41', 1, 1, '2019-12-11 16:21:03'),
(153, 154, '9526', '41', 1, 1, '2019-12-11 16:22:13'),
(154, 155, '9526', '41', 1, 1, '2019-12-11 16:23:18'),
(155, 156, '9526', '41', 1, 1, '2019-12-11 16:24:08'),
(156, 157, '9526', '41', 1, 1, '2019-12-11 16:25:05'),
(157, 158, '9526', '41', 1, 1, '2019-12-11 16:25:52'),
(158, 159, '9526', '41', 1, 1, '2019-12-11 16:26:40'),
(159, 160, '9526', '41', 1, 1, '2019-12-11 16:27:27'),
(160, 161, '9526', '41', 1, 1, '2019-12-11 16:28:18'),
(161, 162, '9526', '41', 1, 1, '2019-12-11 16:29:08'),
(162, 163, '9526', '41', 1, 1, '2019-12-11 16:29:59'),
(163, 164, '9526', '41', 1, 1, '2019-12-11 16:30:49'),
(164, 165, '9526', '41', 1, 1, '2019-12-11 16:31:32'),
(165, 166, '9526', '41', 1, 1, '2019-12-11 16:32:19'),
(166, 167, '9526', '41', 1, 1, '2019-12-11 16:33:15'),
(167, 168, '9526', '41', 1, 1, '2019-12-11 16:34:11'),
(168, 169, '9526', '41', 1, 1, '2019-12-11 16:35:22'),
(169, 170, '9526', '41', 1, 1, '2019-12-11 16:36:10'),
(170, 171, '9526', '41', 1, 1, '2019-12-11 16:37:11'),
(171, 172, '9526', '41', 1, 1, '2019-12-11 16:39:43'),
(172, 173, '9526', '41', 1, 1, '2019-12-11 16:40:42'),
(173, 174, '9526', '41', 1, 1, '2019-12-11 16:41:39'),
(174, 175, '9526', '41', 1, 1, '2019-12-11 16:42:53'),
(175, 176, '9526', '41', 1, 1, '2019-12-11 16:43:39'),
(176, 177, '9526', '41', 1, 1, '2019-12-11 16:44:48'),
(177, 178, '9526', '41', 1, 1, '2019-12-11 16:45:38'),
(178, 179, '9526', '41', 1, 1, '2019-12-11 16:46:34'),
(179, 180, '9526', '41', 1, 1, '2019-12-11 16:56:18'),
(180, 181, '9526', '41', 1, 1, '2019-12-11 16:57:07'),
(181, 182, '9526', '41', 1, 1, '2019-12-11 16:58:05'),
(182, 183, '9526', '41', 1, 1, '2019-12-11 16:59:11'),
(183, 184, '9526', '41', 1, 1, '2019-12-11 17:00:02'),
(184, 185, '9526', '41', 1, 1, '2019-12-11 17:00:49'),
(185, 186, '9526', '41', 1, 1, '2019-12-11 17:01:43'),
(186, 187, '9526', '41', 1, 1, '2019-12-11 17:02:28'),
(187, 188, '9526', '41', 1, 1, '2019-12-11 17:03:21'),
(188, 189, '9526', '41', 1, 1, '2019-12-11 17:04:03'),
(189, 190, '9526', '41', 1, 1, '2019-12-11 17:04:48'),
(190, 191, '9526', '41', 1, 1, '2019-12-11 17:07:34'),
(191, 192, '9526', '41', 1, 1, '2019-12-11 17:08:33'),
(192, 193, '9526', '41', 1, 1, '2019-12-11 17:09:22'),
(193, 194, '9526', '41', 1, 1, '2019-12-11 17:10:06'),
(194, 195, '9526', '41', 1, 1, '2019-12-11 17:10:52'),
(195, 196, '9526', '41', 1, 1, '2019-12-11 17:12:01'),
(196, 197, '9526', '41', 1, 1, '2019-12-11 17:12:49'),
(197, 198, '9526', '41', 1, 1, '2019-12-11 17:13:47'),
(198, 199, '9526', '41', 1, 1, '2019-12-11 17:14:42'),
(199, 200, '9526', '41', 1, 1, '2019-12-11 17:16:13'),
(200, 201, '9526', '41', 1, 1, '2019-12-11 17:17:09'),
(201, 202, '9526', '41', 1, 1, '2019-12-11 17:18:06'),
(202, 203, '9526', '41', 1, 1, '2019-12-11 17:18:52'),
(203, 204, '9526', '41', 1, 1, '2019-12-11 17:19:52'),
(204, 205, '9526', '41', 1, 1, '2019-12-11 17:20:46'),
(205, 206, '9526', '41', 1, 1, '2019-12-11 17:22:46'),
(206, 207, '9526', '41', 1, 1, '2019-12-11 17:23:33'),
(207, 208, '9526', '41', 1, 1, '2019-12-11 17:24:24'),
(208, 209, '9526', '41', 1, 1, '2019-12-11 17:26:01'),
(209, 210, '9526', '41', 1, 1, '2019-12-12 00:27:42'),
(210, 211, '9526', '41', 1, 1, '2019-12-13 01:19:51'),
(211, 212, '9526', '41', 1, 1, '2019-12-13 01:23:15'),
(212, 213, '9526', '41', 1, 1, '2019-12-13 01:24:26'),
(213, 214, '9526', '41', 1, 1, '2019-12-13 01:31:02'),
(214, 215, '9526', '41', 1, 1, '2019-12-13 01:34:29'),
(215, 216, '9526', '41', 1, 1, '2019-12-13 01:35:17'),
(216, 217, '9526', '41', 1, 1, '2019-12-13 01:35:54'),
(217, 218, '9526', '41', 1, 1, '2019-12-13 01:36:37'),
(218, 219, '9526', '41', 1, 1, '2019-12-13 01:37:12'),
(219, 220, '9526', '41', 1, 1, '2019-12-13 01:37:51'),
(220, 221, '9526', '41', 1, 1, '2019-12-13 01:38:32'),
(221, 222, '9526', '41', 1, 1, '2019-12-13 01:39:09'),
(222, 223, '9526', '41', 1, 1, '2019-12-13 01:39:43'),
(223, 224, '9526', '41', 1, 1, '2019-12-13 01:40:22'),
(224, 225, '9526', '41', 1, 1, '2019-12-13 01:41:21'),
(225, 226, '9526', '41', 1, 1, '2019-12-13 01:41:57'),
(226, 227, '9526', '41', 1, 1, '2019-12-13 01:42:32'),
(227, 228, '9526', '41', 1, 1, '2019-12-13 01:43:13'),
(228, 229, '9526', '41', 1, 1, '2019-12-13 01:43:58'),
(229, 230, '9526', '41', 1, 1, '2019-12-13 01:44:33'),
(230, 231, '9526', '41', 1, 1, '2019-12-13 01:45:30'),
(231, 232, '9526', '41', 1, 1, '2019-12-13 01:49:37'),
(232, 233, '9526', '41', 1, 1, '2019-12-13 01:50:20'),
(233, 234, '9526', '41', 1, 1, '2019-12-13 01:50:58'),
(234, 235, '9526', '41', 1, 1, '2019-12-13 02:17:18'),
(235, 236, '9526', '41', 1, 1, '2019-12-13 02:22:50'),
(236, 237, '9526', '41', 1, 1, '2019-12-13 02:23:33'),
(237, 238, '9526', '41', 1, 1, '2019-12-13 02:24:39'),
(238, 239, '9526', '41', 1, 1, '2019-12-13 02:25:21'),
(239, 240, '9526', '41', 1, 1, '2019-12-13 02:25:57'),
(240, 241, '9526', '41', 1, 1, '2019-12-13 02:26:33'),
(241, 242, '9526', '41', 1, 1, '2019-12-13 02:27:12'),
(242, 243, '9526', '41', 1, 1, '2019-12-13 02:27:48'),
(243, 244, '9526', '41', 1, 1, '2019-12-13 02:28:27'),
(244, 245, '9526', '41', 1, 1, '2019-12-13 02:29:03'),
(245, 246, '9526', '41', 1, 1, '2019-12-13 02:29:58'),
(246, 247, '9526', '41', 1, 1, '2019-12-13 02:30:39'),
(247, 248, '9526', '41', 1, 1, '2019-12-13 02:31:14'),
(248, 249, '9526', '41', 1, 1, '2019-12-13 02:31:53'),
(249, 250, '9526', '41', 1, 1, '2019-12-13 02:32:27'),
(250, 251, '9526', '41', 1, 1, '2019-12-13 02:33:09'),
(251, 252, '9526', '41', 1, 1, '2019-12-13 02:33:38'),
(252, 253, '9526', '41', 1, 1, '2019-12-13 02:34:17'),
(253, 254, '9526', '41', 1, 1, '2019-12-13 02:34:57'),
(254, 255, '9526', '41', 1, 1, '2019-12-13 02:35:36'),
(255, 256, '9526', '41', 1, 1, '2019-12-13 02:36:14'),
(256, 257, '9526', '41', 1, 1, '2019-12-13 02:36:53'),
(257, 258, '9526', '41', 1, 1, '2019-12-13 02:37:39'),
(258, 259, '9526', '41', 1, 1, '2019-12-13 02:38:35'),
(259, 260, '9526', '41', 1, 1, '2019-12-13 02:43:53'),
(260, 261, '9526', '41', 1, 1, '2019-12-13 02:44:34'),
(261, 262, '9526', '41', 1, 1, '2019-12-13 02:45:08'),
(262, 263, '9526', '41', 1, 1, '2019-12-13 02:45:42'),
(263, 264, '9526', '41', 1, 1, '2019-12-13 02:46:17'),
(264, 265, '9526', '41', 1, 1, '2019-12-13 02:46:50'),
(265, 266, '9526', '41', 1, 1, '2019-12-13 02:47:23'),
(266, 267, '9526', '41', 1, 1, '2019-12-13 02:47:56'),
(267, 268, '9526', '41', 1, 1, '2019-12-13 02:48:35'),
(268, 269, '9526', '41', 1, 1, '2019-12-13 02:49:09'),
(269, 270, '9526', '41', 1, 1, '2019-12-13 02:49:43'),
(270, 271, '9526', '41', 1, 1, '2019-12-13 02:50:16'),
(271, 272, '9526', '41', 1, 1, '2019-12-13 02:50:49'),
(272, 273, '9526', '41', 1, 1, '2019-12-13 02:51:24'),
(273, 274, '9526', '41', 1, 1, '2019-12-13 02:52:02'),
(274, 275, '9526', '41', 1, 1, '2019-12-13 02:52:42'),
(275, 276, '9526', '41', 1, 1, '2019-12-13 02:53:16'),
(276, 277, '9526', '41', 1, 1, '2019-12-13 02:53:52'),
(277, 278, '9526', '41', 1, 1, '2019-12-13 02:54:32'),
(278, 279, '9526', '41', 1, 1, '2019-12-13 02:55:14'),
(279, 280, '9526', '41', 1, 1, '2019-12-13 02:55:55'),
(280, 281, '9526', '41', 1, 1, '2019-12-16 14:16:51'),
(281, 282, '9526', '41', 1, 1, '2019-12-16 14:18:16'),
(282, 283, '9526', '41', 1, 1, '2019-12-16 14:19:29'),
(283, 284, '9526', '41', 1, 1, '2019-12-16 14:20:58'),
(284, 285, '9526', '41', 1, 1, '2019-12-16 14:22:48'),
(285, 286, '9526', '41', 1, 1, '2019-12-16 14:24:15'),
(286, 287, '9526', '41', 1, 1, '2019-12-19 02:41:01'),
(287, 288, '9526', '41', 1, 1, '2019-12-19 02:43:41'),
(288, 289, '9526', '41', 1, 1, '2019-12-19 02:45:32'),
(289, 290, '9526', '41', 1, 1, '2019-12-19 02:46:42'),
(290, 291, '9526', '41', 1, 1, '2019-12-19 02:47:29'),
(291, 292, '9526', '41', 1, 1, '2019-12-19 02:48:10'),
(292, 293, '9526', '41', 1, 1, '2019-12-19 02:48:54'),
(293, 294, '9526', '41', 1, 1, '2019-12-19 02:49:43'),
(294, 295, '9526', '41', 1, 1, '2019-12-19 02:50:25'),
(295, 296, '9526', '41', 1, 1, '2019-12-19 02:51:04'),
(296, 297, '9526', '41', 1, 1, '2019-12-19 02:51:44'),
(297, 298, '9526', '41', 1, 1, '2019-12-19 02:52:23'),
(298, 299, '9526', '41', 1, 1, '2019-12-19 02:53:00'),
(299, 300, '9526', '41', 1, 1, '2019-12-19 02:53:42'),
(300, 301, '9526', '41', 1, 1, '2019-12-19 02:54:27'),
(301, 302, '9526', '41', 1, 1, '2019-12-19 02:55:15'),
(302, 303, '9526', '41', 1, 1, '2019-12-19 02:56:41'),
(303, 304, '9526', '41', 1, 1, '2019-12-19 02:57:41'),
(304, 305, '9526', '41', 1, 1, '2019-12-19 03:03:11'),
(305, 306, '9526', '41', 1, 1, '2019-12-19 03:04:01'),
(306, 307, '9526', '41', 1, 1, '2019-12-19 03:04:42'),
(307, 308, '9526', '41', 1, 1, '2019-12-19 03:05:27'),
(308, 309, '9526', '41', 1, 1, '2019-12-19 03:06:03'),
(309, 310, '9526', '41', 1, 1, '2019-12-19 03:06:40'),
(310, 311, '9526', '41', 1, 1, '2019-12-19 03:07:20'),
(311, 312, '9526', '41', 1, 1, '2019-12-19 03:08:12'),
(312, 313, '9526', '41', 1, 1, '2019-12-19 03:10:42'),
(313, 314, '9526', '41', 1, 1, '2019-12-19 03:12:17'),
(314, 315, '9526', '41', 1, 1, '2019-12-19 03:13:14'),
(315, 316, '9526', '41', 1, 1, '2019-12-19 03:13:51'),
(316, 317, '9526', '41', 1, 1, '2019-12-19 03:14:37'),
(317, 318, '9526', '41', 1, 1, '2019-12-19 03:15:32'),
(318, 319, '9526', '41', 1, 1, '2019-12-19 03:16:20'),
(319, 320, '9526', '41', 1, 1, '2019-12-19 03:17:06'),
(320, 321, '9526', '41', 1, 1, '2019-12-19 03:17:48'),
(321, 322, '9526', '41', 1, 1, '2019-12-19 03:17:48'),
(322, 323, '9526', '41', 1, 1, '2019-12-19 03:18:26'),
(323, 324, '9526', '41', 1, 1, '2019-12-19 03:19:04'),
(324, 325, '9526', '41', 1, 1, '2019-12-19 03:19:42'),
(325, 326, '9526', '41', 1, 1, '2019-12-19 03:20:21'),
(326, 327, '9526', '41', 1, 1, '2019-12-19 03:21:01'),
(327, 328, '9526', '41', 1, 1, '2019-12-19 03:21:48'),
(328, 329, '9526', '41', 1, 1, '2019-12-19 03:22:25'),
(329, 330, '9526', '41', 1, 1, '2019-12-19 03:23:03'),
(330, 331, '9526', '41', 1, 1, '2019-12-19 03:23:46'),
(331, 332, '9526', '41', 1, 1, '2019-12-22 00:58:15'),
(332, 333, '9526', '41', 1, 1, '2019-12-22 01:01:08'),
(333, 334, '9526', '41', 1, 1, '2019-12-22 01:01:50'),
(334, 335, '9526', '41', 1, 1, '2019-12-22 01:02:31'),
(335, 336, '9526', '41', 1, 1, '2019-12-22 01:03:14'),
(336, 337, '9526', '41', 1, 1, '2019-12-22 01:03:56'),
(337, 338, '9526', '41', 1, 1, '2019-12-22 01:04:29'),
(338, 339, '9526', '41', 1, 1, '2019-12-22 01:05:07'),
(339, 340, '9526', '41', 1, 1, '2019-12-22 01:06:23'),
(340, 341, '9526', '41', 1, 1, '2019-12-22 01:07:14'),
(341, 342, '9526', '41', 1, 1, '2019-12-22 01:08:02'),
(342, 343, '9526', '41', 1, 1, '2019-12-22 01:08:44'),
(343, 344, '9526', '41', 1, 1, '2019-12-22 01:09:27'),
(344, 345, '9526', '41', 1, 1, '2019-12-22 01:10:14'),
(345, 346, '9526', '41', 1, 1, '2019-12-22 01:11:08'),
(346, 347, '9526', '41', 1, 1, '2019-12-22 01:11:50'),
(347, 348, '9526', '41', 1, 1, '2019-12-22 01:12:37'),
(348, 349, '9526', '41', 1, 1, '2019-12-22 01:13:21'),
(349, 350, '9526', '41', 1, 1, '2019-12-22 01:14:17'),
(350, 351, '9526', '41', 1, 1, '2019-12-22 01:15:08'),
(351, 352, '9526', '41', 1, 1, '2019-12-22 01:15:52'),
(352, 353, '9526', '41', 1, 1, '2019-12-22 01:16:32'),
(353, 354, '9526', '41', 1, 1, '2019-12-22 01:17:18'),
(354, 355, '9526', '41', 1, 1, '2019-12-22 01:18:03'),
(355, 356, '9526', '41', 1, 1, '2019-12-22 01:18:38'),
(356, 357, '9526', '41', 1, 1, '2019-12-22 01:22:19'),
(357, 358, '9526', '41', 1, 1, '2019-12-22 01:23:12'),
(358, 359, '9526', '41', 1, 1, '2019-12-22 01:23:50'),
(359, 360, '9526', '41', 1, 1, '2019-12-22 01:24:29'),
(360, 361, '9526', '41', 1, 1, '2019-12-22 01:25:08'),
(361, 362, '9526', '41', 1, 1, '2019-12-22 01:25:57'),
(362, 363, '9526', '41', 1, 1, '2019-12-22 01:26:47'),
(363, 364, '9526', '41', 1, 1, '2019-12-22 01:27:37'),
(364, 365, '9526', '41', 1, 1, '2019-12-22 01:28:20'),
(365, 366, '9526', '41', 1, 1, '2019-12-22 01:29:40'),
(366, 367, '9526', '41', 1, 1, '2019-12-22 01:30:41'),
(367, 368, '9526', '41', 1, 1, '2019-12-22 01:32:35'),
(368, 369, '9526', '41', 1, 1, '2019-12-22 01:33:30'),
(369, 370, '9526', '41', 1, 1, '2019-12-22 01:34:22'),
(370, 371, '9526', '41', 1, 1, '2019-12-22 01:35:28'),
(371, 372, '9526', '41', 1, 1, '2019-12-22 01:36:33'),
(372, 373, '9526', '41', 1, 1, '2019-12-22 01:37:17'),
(373, 374, '9526', '41', 1, 1, '2019-12-22 01:37:59'),
(374, 375, '9526', '41', 1, 1, '2019-12-22 01:38:47'),
(375, 376, '9526', '41', 1, 1, '2019-12-22 01:39:21'),
(376, 377, '9526', '41', 1, 1, '2019-12-22 01:39:55'),
(377, 378, '9526', '41', 1, 1, '2019-12-22 01:40:38'),
(378, 379, '9526', '41', 1, 1, '2019-12-22 01:41:43'),
(379, 380, '9526', '41', 1, 1, '2019-12-22 01:42:38'),
(380, 381, '9526', '41', 1, 1, '2019-12-22 01:43:13'),
(381, 382, '9526', '41', 1, 1, '2019-12-22 01:43:49'),
(382, 383, '9526', '41', 1, 1, '2019-12-22 01:48:48'),
(383, 384, '9526', '41', 1, 1, '2019-12-22 01:49:26'),
(384, 385, '9526', '41', 1, 1, '2019-12-22 01:50:17'),
(385, 386, '9526', '41', 1, 1, '2019-12-22 01:50:53'),
(386, 387, '9526', '41', 1, 1, '2019-12-22 01:51:34'),
(387, 388, '9526', '41', 1, 1, '2019-12-22 01:52:10'),
(388, 389, '9526', '41', 1, 1, '2019-12-22 01:53:00'),
(389, 390, '9526', '41', 1, 1, '2019-12-22 01:53:54'),
(390, 391, '9526', '41', 1, 1, '2019-12-22 01:54:50'),
(391, 392, '9526', '41', 1, 1, '2019-12-22 01:55:34'),
(392, 393, '9526', '41', 1, 1, '2019-12-22 01:56:17'),
(393, 394, '9526', '41', 1, 1, '2019-12-22 01:57:17'),
(394, 395, '9526', '41', 1, 1, '2019-12-22 01:57:54'),
(395, 396, '9526', '41', 1, 1, '2019-12-22 01:58:54'),
(396, 397, '9526', '41', 1, 1, '2019-12-22 01:59:49'),
(397, 398, '9526', '41', 1, 1, '2019-12-22 02:00:28'),
(398, 399, '9526', '41', 1, 1, '2019-12-22 02:01:20'),
(399, 400, '9526', '41', 1, 1, '2019-12-22 02:01:59'),
(400, 401, '9526', '41', 1, 1, '2019-12-22 02:02:34'),
(401, 402, '9526', '41', 1, 1, '2019-12-22 02:03:16'),
(402, 403, '9526', '41', 1, 1, '2019-12-22 02:04:11'),
(403, 404, '9526', '41', 1, 1, '2019-12-22 02:04:46'),
(404, 405, '9526', '41', 1, 1, '2019-12-22 02:05:19'),
(405, 406, '9526', '41', 1, 1, '2019-12-22 02:06:29'),
(406, 407, '9526', '41', 1, 1, '2019-12-22 02:07:21'),
(407, 408, '9526', '41', 1, 1, '2019-12-22 02:08:22'),
(408, 409, '9526', '41', 1, 1, '2019-12-22 02:09:05'),
(409, 410, '9526', '41', 1, 1, '2019-12-22 02:09:43'),
(410, 411, '9526', '41', 1, 1, '2019-12-22 02:10:24'),
(411, 412, '9526', '41', 1, 1, '2019-12-27 12:11:44'),
(412, 413, '9526', '41', 1, 1, '2020-03-09 22:41:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_roles`
--

CREATE TABLE `usuarios_roles` (
  `usr_auto_id` int(11) NOT NULL,
  `usr_cod` int(11) NOT NULL,
  `usr_rol` int(2) NOT NULL,
  `usr_status` tinyint(1) NOT NULL DEFAULT 1,
  `usr_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `usr_created` datetime NOT NULL,
  `usr_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_roles`
--

INSERT INTO `usuarios_roles` (`usr_auto_id`, `usr_cod`, `usr_rol`, `usr_status`, `usr_vigencia`, `usr_created`, `usr_updated`) VALUES
(1, 109, 2, 1, 1, '2019-10-04 11:10:41', '2019-10-04 23:53:22'),
(2, 110, 1, 1, 1, '2019-10-04 11:10:06', '2019-10-04 21:52:06'),
(3, 111, 1, 1, 1, '2019-10-04 11:10:36', '2019-10-04 21:52:36'),
(4, 14, 1, 1, 1, '2019-10-04 11:10:41', '2019-10-04 21:43:41'),
(5, 15, 1, 1, 1, '2019-10-04 11:10:06', '2019-10-04 21:52:06'),
(6, 16, 1, 1, 1, '2019-10-04 11:10:36', '2019-10-04 21:52:36'),
(7, 112, 1, 1, 1, '2019-10-20 04:10:28', '2019-10-20 02:13:28'),
(8, 113, 2, 1, 1, '2019-10-20 04:10:07', '2019-10-20 02:20:07'),
(9, 114, 2, 1, 1, '2019-10-21 11:10:24', '2019-10-21 21:28:25'),
(10, 117, 3, 1, 1, '2019-12-05 10:12:03', '2019-12-05 21:58:03'),
(11, 118, 2, 1, 1, '2019-12-06 01:12:18', '2019-12-06 00:46:18'),
(12, 412, 3, 1, 1, '2019-12-27 01:12:44', '2019-12-27 12:11:44'),
(13, 413, 3, 1, 1, '2020-03-09 10:03:11', '2020-03-09 22:41:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_tipo_poblacion`
--

CREATE TABLE `usuarios_tipo_poblacion` (
  `atp_auto_id` int(11) NOT NULL,
  `atp_documento` int(15) NOT NULL,
  `atp_poblacion` text COLLATE utf8_spanish_ci NOT NULL,
  `atp_creado` datetime NOT NULL,
  `atp_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `atp_estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_tipo_poblacion`
--

INSERT INTO `usuarios_tipo_poblacion` (`atp_auto_id`, `atp_documento`, `atp_poblacion`, `atp_creado`, `atp_updated`, `atp_estado`) VALUES
(1, 111, 'DESPLAZADA', '2019-10-04 11:10:36', '2019-10-04 21:53:13', 1),
(2, 112, 'PONLACIÃ³N', '2019-10-20 04:10:28', '2019-10-20 02:13:28', 1),
(3, 113, 'VERIFICADO.', '2019-10-20 04:10:07', '2019-10-20 02:20:08', 1),
(4, 114, '', '2019-10-21 11:10:24', '2019-10-21 21:28:25', 1),
(5, 115, '', '2019-11-25 02:11:08', '2019-11-25 13:37:08', 1),
(6, 116, 'Ninguno', '2019-12-02 11:12:19', '2019-12-02 22:19:19', 1),
(7, 117, 'Ninguno', '2019-12-05 10:12:03', '2019-12-05 21:58:03', 1),
(8, 119, '', '2019-12-06 07:12:00', '2019-12-06 06:04:01', 1),
(9, 120, '', '2019-12-11 03:12:10', '2019-12-11 14:41:10', 1),
(10, 121, '', '2019-12-11 03:12:19', '2019-12-11 14:43:19', 1),
(11, 122, '', '2019-12-11 03:12:12', '2019-12-11 14:46:12', 1),
(12, 123, '', '2019-12-11 04:12:35', '2019-12-11 15:19:35', 1),
(13, 124, '', '2019-12-11 04:12:50', '2019-12-11 15:20:50', 1),
(14, 125, '', '2019-12-11 04:12:17', '2019-12-11 15:24:17', 1),
(15, 126, '', '2019-12-11 04:12:53', '2019-12-11 15:25:53', 1),
(16, 127, '', '2019-12-11 04:12:23', '2019-12-11 15:27:24', 1),
(17, 128, '', '2019-12-11 04:12:59', '2019-12-11 15:42:59', 1),
(18, 129, '', '2019-12-11 04:12:12', '2019-12-11 15:45:12', 1),
(19, 130, '', '2019-12-11 04:12:25', '2019-12-11 15:46:25', 1),
(20, 131, '', '2019-12-11 04:12:23', '2019-12-11 15:47:24', 1),
(21, 132, '', '2019-12-11 04:12:02', '2019-12-11 15:49:03', 1),
(22, 133, '', '2019-12-11 04:12:06', '2019-12-11 15:50:06', 1),
(23, 134, '', '2019-12-11 04:12:18', '2019-12-11 15:51:18', 1),
(24, 135, '', '2019-12-11 04:12:23', '2019-12-11 15:52:23', 1),
(25, 136, '', '2019-12-11 04:12:12', '2019-12-11 15:53:13', 1),
(26, 137, '', '2019-12-11 04:12:09', '2019-12-11 15:54:09', 1),
(27, 138, '', '2019-12-11 04:12:12', '2019-12-11 15:55:13', 1),
(28, 139, '', '2019-12-11 04:12:15', '2019-12-11 15:56:15', 1),
(29, 140, '', '2019-12-11 04:12:18', '2019-12-11 15:57:18', 1),
(30, 141, '', '2019-12-11 04:12:16', '2019-12-11 15:58:16', 1),
(31, 142, '', '2019-12-11 04:12:09', '2019-12-11 15:59:09', 1),
(32, 143, '', '2019-12-11 05:12:17', '2019-12-11 16:00:18', 1),
(33, 144, '', '2019-12-11 05:12:15', '2019-12-11 16:01:15', 1),
(34, 145, '', '2019-12-11 05:12:05', '2019-12-11 16:02:06', 1),
(35, 146, '', '2019-12-11 05:12:56', '2019-12-11 16:02:57', 1),
(36, 147, '', '2019-12-11 05:12:50', '2019-12-11 16:03:51', 1),
(37, 148, '', '2019-12-11 05:12:06', '2019-12-11 16:05:06', 1),
(38, 149, '', '2019-12-11 05:12:55', '2019-12-11 16:05:56', 1),
(39, 150, '', '2019-12-11 05:12:39', '2019-12-11 16:18:39', 1),
(40, 151, '', '2019-12-11 05:12:23', '2019-12-11 16:19:23', 1),
(41, 152, '', '2019-12-11 05:12:16', '2019-12-11 16:20:16', 1),
(42, 153, '', '2019-12-11 05:12:02', '2019-12-11 16:21:03', 1),
(43, 154, '', '2019-12-11 05:12:13', '2019-12-11 16:22:13', 1),
(44, 155, '', '2019-12-11 05:12:18', '2019-12-11 16:23:18', 1),
(45, 156, '', '2019-12-11 05:12:08', '2019-12-11 16:24:08', 1),
(46, 157, '', '2019-12-11 05:12:05', '2019-12-11 16:25:05', 1),
(47, 158, '', '2019-12-11 05:12:52', '2019-12-11 16:25:52', 1),
(48, 159, '', '2019-12-11 05:12:40', '2019-12-11 16:26:40', 1),
(49, 160, '', '2019-12-11 05:12:27', '2019-12-11 16:27:27', 1),
(50, 161, '', '2019-12-11 05:12:18', '2019-12-11 16:28:18', 1),
(51, 162, '', '2019-12-11 05:12:08', '2019-12-11 16:29:08', 1),
(52, 163, '', '2019-12-11 05:12:59', '2019-12-11 16:29:59', 1),
(53, 164, '', '2019-12-11 05:12:49', '2019-12-11 16:30:49', 1),
(54, 165, '', '2019-12-11 05:12:32', '2019-12-11 16:31:32', 1),
(55, 166, '', '2019-12-11 05:12:19', '2019-12-11 16:32:19', 1),
(56, 167, '', '2019-12-11 05:12:14', '2019-12-11 16:33:15', 1),
(57, 168, '', '2019-12-11 05:12:11', '2019-12-11 16:34:11', 1),
(58, 169, '', '2019-12-11 05:12:22', '2019-12-11 16:35:22', 1),
(59, 170, '', '2019-12-11 05:12:10', '2019-12-11 16:36:10', 1),
(60, 171, '', '2019-12-11 05:12:11', '2019-12-11 16:37:11', 1),
(61, 172, '', '2019-12-11 05:12:43', '2019-12-11 16:39:44', 1),
(62, 173, '', '2019-12-11 05:12:42', '2019-12-11 16:40:42', 1),
(63, 174, '', '2019-12-11 05:12:39', '2019-12-11 16:41:39', 1),
(64, 175, '', '2019-12-11 05:12:53', '2019-12-11 16:42:53', 1),
(65, 176, '', '2019-12-11 05:12:39', '2019-12-11 16:43:39', 1),
(66, 177, '', '2019-12-11 05:12:48', '2019-12-11 16:44:48', 1),
(67, 178, '', '2019-12-11 05:12:38', '2019-12-11 16:45:38', 1),
(68, 179, '', '2019-12-11 05:12:33', '2019-12-11 16:46:34', 1),
(69, 180, '', '2019-12-11 05:12:18', '2019-12-11 16:56:18', 1),
(70, 181, '', '2019-12-11 05:12:07', '2019-12-11 16:57:07', 1),
(71, 182, '', '2019-12-11 05:12:05', '2019-12-11 16:58:06', 1),
(72, 183, '', '2019-12-11 05:12:11', '2019-12-11 16:59:11', 1),
(73, 184, '', '2019-12-11 06:12:01', '2019-12-11 17:00:02', 1),
(74, 185, '', '2019-12-11 06:12:49', '2019-12-11 17:00:49', 1),
(75, 186, '', '2019-12-11 06:12:43', '2019-12-11 17:01:43', 1),
(76, 187, '', '2019-12-11 06:12:27', '2019-12-11 17:02:28', 1),
(77, 188, '', '2019-12-11 06:12:21', '2019-12-11 17:03:21', 1),
(78, 189, '', '2019-12-11 06:12:03', '2019-12-11 17:04:03', 1),
(79, 190, '', '2019-12-11 06:12:48', '2019-12-11 17:04:48', 1),
(80, 191, '', '2019-12-11 06:12:34', '2019-12-11 17:07:34', 1),
(81, 192, '', '2019-12-11 06:12:33', '2019-12-11 17:08:33', 1),
(82, 193, '', '2019-12-11 06:12:22', '2019-12-11 17:09:22', 1),
(83, 194, '', '2019-12-11 06:12:06', '2019-12-11 17:10:06', 1),
(84, 195, '', '2019-12-11 06:12:52', '2019-12-11 17:10:52', 1),
(85, 196, '', '2019-12-11 06:12:01', '2019-12-11 17:12:01', 1),
(86, 197, '', '2019-12-11 06:12:49', '2019-12-11 17:12:49', 1),
(87, 198, '', '2019-12-11 06:12:47', '2019-12-11 17:13:47', 1),
(88, 199, '', '2019-12-11 06:12:41', '2019-12-11 17:14:42', 1),
(89, 200, '', '2019-12-11 06:12:13', '2019-12-11 17:16:13', 1),
(90, 201, '', '2019-12-11 06:12:08', '2019-12-11 17:17:09', 1),
(91, 202, '', '2019-12-11 06:12:06', '2019-12-11 17:18:06', 1),
(92, 203, '', '2019-12-11 06:12:52', '2019-12-11 17:18:52', 1),
(93, 204, '', '2019-12-11 06:12:52', '2019-12-11 17:19:53', 1),
(94, 205, '', '2019-12-11 06:12:46', '2019-12-11 17:20:46', 1),
(95, 206, '', '2019-12-11 06:12:46', '2019-12-11 17:22:46', 1),
(96, 207, '', '2019-12-11 06:12:33', '2019-12-11 17:23:34', 1),
(97, 208, '', '2019-12-11 06:12:24', '2019-12-11 17:24:24', 1),
(98, 209, '', '2019-12-11 06:12:00', '2019-12-11 17:26:01', 1),
(99, 210, '', '2019-12-12 01:12:42', '2019-12-12 00:27:42', 1),
(100, 211, '', '2019-12-13 02:12:51', '2019-12-13 01:19:51', 1),
(101, 212, '', '2019-12-13 02:12:15', '2019-12-13 01:23:15', 1),
(102, 213, '', '2019-12-13 02:12:25', '2019-12-13 01:24:26', 1),
(103, 214, '', '2019-12-13 02:12:02', '2019-12-13 01:31:02', 1),
(104, 215, '', '2019-12-13 02:12:29', '2019-12-13 01:34:29', 1),
(105, 216, '', '2019-12-13 02:12:17', '2019-12-13 01:35:17', 1),
(106, 217, '', '2019-12-13 02:12:54', '2019-12-13 01:35:54', 1),
(107, 218, '', '2019-12-13 02:12:37', '2019-12-13 01:36:37', 1),
(108, 219, '', '2019-12-13 02:12:11', '2019-12-13 01:37:12', 1),
(109, 220, '', '2019-12-13 02:12:51', '2019-12-13 01:37:51', 1),
(110, 221, '', '2019-12-13 02:12:32', '2019-12-13 01:38:32', 1),
(111, 222, '', '2019-12-13 02:12:09', '2019-12-13 01:39:09', 1),
(112, 223, '', '2019-12-13 02:12:42', '2019-12-13 01:39:43', 1),
(113, 224, '', '2019-12-13 02:12:22', '2019-12-13 01:40:22', 1),
(114, 225, '', '2019-12-13 02:12:21', '2019-12-13 01:41:21', 1),
(115, 226, '', '2019-12-13 02:12:57', '2019-12-13 01:41:57', 1),
(116, 227, '', '2019-12-13 02:12:32', '2019-12-13 01:42:32', 1),
(117, 228, '', '2019-12-13 02:12:13', '2019-12-13 01:43:13', 1),
(118, 229, '', '2019-12-13 02:12:58', '2019-12-13 01:43:58', 1),
(119, 230, '', '2019-12-13 02:12:33', '2019-12-13 01:44:33', 1),
(120, 231, '', '2019-12-13 02:12:30', '2019-12-13 01:45:30', 1),
(121, 232, '', '2019-12-13 02:12:37', '2019-12-13 01:49:37', 1),
(122, 233, '', '2019-12-13 02:12:19', '2019-12-13 01:50:20', 1),
(123, 234, '', '2019-12-13 02:12:58', '2019-12-13 01:50:59', 1),
(124, 235, '', '2019-12-13 03:12:18', '2019-12-13 02:17:18', 1),
(125, 236, '', '2019-12-13 03:12:50', '2019-12-13 02:22:50', 1),
(126, 237, '', '2019-12-13 03:12:32', '2019-12-13 02:23:33', 1),
(127, 238, '', '2019-12-13 03:12:38', '2019-12-13 02:24:39', 1),
(128, 239, '', '2019-12-13 03:12:21', '2019-12-13 02:25:21', 1),
(129, 240, '', '2019-12-13 03:12:57', '2019-12-13 02:25:57', 1),
(130, 241, '', '2019-12-13 03:12:33', '2019-12-13 02:26:33', 1),
(131, 242, '', '2019-12-13 03:12:12', '2019-12-13 02:27:12', 1),
(132, 243, '', '2019-12-13 03:12:48', '2019-12-13 02:27:48', 1),
(133, 244, '', '2019-12-13 03:12:26', '2019-12-13 02:28:27', 1),
(134, 245, '', '2019-12-13 03:12:02', '2019-12-13 02:29:03', 1),
(135, 246, '', '2019-12-13 03:12:58', '2019-12-13 02:29:58', 1),
(136, 247, '', '2019-12-13 03:12:38', '2019-12-13 02:30:39', 1),
(137, 248, '', '2019-12-13 03:12:14', '2019-12-13 02:31:14', 1),
(138, 249, '', '2019-12-13 03:12:52', '2019-12-13 02:31:53', 1),
(139, 250, '', '2019-12-13 03:12:26', '2019-12-13 02:32:27', 1),
(140, 251, '', '2019-12-13 03:12:09', '2019-12-13 02:33:09', 1),
(141, 252, '', '2019-12-13 03:12:38', '2019-12-13 02:33:38', 1),
(142, 253, '', '2019-12-13 03:12:17', '2019-12-13 02:34:17', 1),
(143, 254, '', '2019-12-13 03:12:56', '2019-12-13 02:34:57', 1),
(144, 255, '', '2019-12-13 03:12:35', '2019-12-13 02:35:36', 1),
(145, 256, '', '2019-12-13 03:12:14', '2019-12-13 02:36:14', 1),
(146, 257, '', '2019-12-13 03:12:53', '2019-12-13 02:36:53', 1),
(147, 258, '', '2019-12-13 03:12:38', '2019-12-13 02:37:39', 1),
(148, 259, '', '2019-12-13 03:12:34', '2019-12-13 02:38:35', 1),
(149, 260, '', '2019-12-13 03:12:53', '2019-12-13 02:43:53', 1),
(150, 261, '', '2019-12-13 03:12:33', '2019-12-13 02:44:34', 1),
(151, 262, '', '2019-12-13 03:12:08', '2019-12-13 02:45:08', 1),
(152, 263, '', '2019-12-13 03:12:42', '2019-12-13 02:45:42', 1),
(153, 264, '', '2019-12-13 03:12:17', '2019-12-13 02:46:17', 1),
(154, 265, '', '2019-12-13 03:12:50', '2019-12-13 02:46:50', 1),
(155, 266, '', '2019-12-13 03:12:23', '2019-12-13 02:47:24', 1),
(156, 267, '', '2019-12-13 03:12:56', '2019-12-13 02:47:56', 1),
(157, 268, '', '2019-12-13 03:12:35', '2019-12-13 02:48:35', 1),
(158, 269, '', '2019-12-13 03:12:09', '2019-12-13 02:49:09', 1),
(159, 270, '', '2019-12-13 03:12:43', '2019-12-13 02:49:43', 1),
(160, 271, '', '2019-12-13 03:12:16', '2019-12-13 02:50:16', 1),
(161, 272, '', '2019-12-13 03:12:49', '2019-12-13 02:50:49', 1),
(162, 273, '', '2019-12-13 03:12:24', '2019-12-13 02:51:24', 1),
(163, 274, '', '2019-12-13 03:12:02', '2019-12-13 02:52:02', 1),
(164, 275, '', '2019-12-13 03:12:42', '2019-12-13 02:52:42', 1),
(165, 276, '', '2019-12-13 03:12:15', '2019-12-13 02:53:16', 1),
(166, 277, '', '2019-12-13 03:12:52', '2019-12-13 02:53:52', 1),
(167, 278, '', '2019-12-13 03:12:32', '2019-12-13 02:54:32', 1),
(168, 279, '', '2019-12-13 03:12:14', '2019-12-13 02:55:14', 1),
(169, 280, '', '2019-12-13 03:12:55', '2019-12-13 02:55:55', 1),
(170, 281, '', '2019-12-16 03:12:51', '2019-12-16 14:16:52', 1),
(171, 282, '', '2019-12-16 03:12:15', '2019-12-16 14:18:16', 1),
(172, 283, '', '2019-12-16 03:12:29', '2019-12-16 14:19:29', 1),
(173, 284, '', '2019-12-16 03:12:58', '2019-12-16 14:20:58', 1),
(174, 285, '', '2019-12-16 03:12:48', '2019-12-16 14:22:48', 1),
(175, 286, '', '2019-12-16 03:12:15', '2019-12-16 14:24:15', 1),
(176, 287, '', '2019-12-19 03:12:01', '2019-12-19 02:41:01', 1),
(177, 288, '', '2019-12-19 03:12:41', '2019-12-19 02:43:41', 1),
(178, 289, '', '2019-12-19 03:12:32', '2019-12-19 02:45:32', 1),
(179, 290, '', '2019-12-19 03:12:41', '2019-12-19 02:46:42', 1),
(180, 291, '', '2019-12-19 03:12:29', '2019-12-19 02:47:29', 1),
(181, 292, '', '2019-12-19 03:12:10', '2019-12-19 02:48:10', 1),
(182, 293, '', '2019-12-19 03:12:54', '2019-12-19 02:48:54', 1),
(183, 294, '', '2019-12-19 03:12:43', '2019-12-19 02:49:43', 1),
(184, 295, '', '2019-12-19 03:12:25', '2019-12-19 02:50:25', 1),
(185, 296, '', '2019-12-19 03:12:04', '2019-12-19 02:51:04', 1),
(186, 297, '', '2019-12-19 03:12:43', '2019-12-19 02:51:44', 1),
(187, 298, '', '2019-12-19 03:12:23', '2019-12-19 02:52:23', 1),
(188, 299, '', '2019-12-19 03:12:00', '2019-12-19 02:53:00', 1),
(189, 300, '', '2019-12-19 03:12:41', '2019-12-19 02:53:42', 1),
(190, 301, '', '2019-12-19 03:12:27', '2019-12-19 02:54:27', 1),
(191, 302, '', '2019-12-19 03:12:15', '2019-12-19 02:55:15', 1),
(192, 303, '', '2019-12-19 03:12:41', '2019-12-19 02:56:41', 1),
(193, 304, '', '2019-12-19 03:12:41', '2019-12-19 02:57:41', 1),
(194, 305, '', '2019-12-19 04:12:10', '2019-12-19 03:03:11', 1),
(195, 306, '', '2019-12-19 04:12:01', '2019-12-19 03:04:01', 1),
(196, 307, '', '2019-12-19 04:12:42', '2019-12-19 03:04:42', 1),
(197, 308, '', '2019-12-19 04:12:27', '2019-12-19 03:05:27', 1),
(198, 309, '', '2019-12-19 04:12:03', '2019-12-19 03:06:03', 1),
(199, 310, '', '2019-12-19 04:12:39', '2019-12-19 03:06:40', 1),
(200, 311, '', '2019-12-19 04:12:20', '2019-12-19 03:07:20', 1),
(201, 312, '', '2019-12-19 04:12:12', '2019-12-19 03:08:12', 1),
(202, 313, '', '2019-12-19 04:12:42', '2019-12-19 03:10:42', 1),
(203, 314, '', '2019-12-19 04:12:17', '2019-12-19 03:12:17', 1),
(204, 315, '', '2019-12-19 04:12:13', '2019-12-19 03:13:14', 1),
(205, 316, '', '2019-12-19 04:12:51', '2019-12-19 03:13:51', 1),
(206, 317, '', '2019-12-19 04:12:36', '2019-12-19 03:14:37', 1),
(207, 318, '', '2019-12-19 04:12:32', '2019-12-19 03:15:32', 1),
(208, 319, '', '2019-12-19 04:12:20', '2019-12-19 03:16:20', 1),
(209, 320, '', '2019-12-19 04:12:06', '2019-12-19 03:17:06', 1),
(210, 321, '', '2019-12-19 04:12:48', '2019-12-19 03:17:48', 1),
(211, 322, '', '2019-12-19 04:12:48', '2019-12-19 03:17:48', 1),
(212, 323, '', '2019-12-19 04:12:26', '2019-12-19 03:18:26', 1),
(213, 324, '', '2019-12-19 04:12:04', '2019-12-19 03:19:04', 1),
(214, 325, '', '2019-12-19 04:12:41', '2019-12-19 03:19:42', 1),
(215, 326, '', '2019-12-19 04:12:20', '2019-12-19 03:20:21', 1),
(216, 327, '', '2019-12-19 04:12:01', '2019-12-19 03:21:01', 1),
(217, 328, '', '2019-12-19 04:12:48', '2019-12-19 03:21:48', 1),
(218, 329, '', '2019-12-19 04:12:24', '2019-12-19 03:22:25', 1),
(219, 330, '', '2019-12-19 04:12:03', '2019-12-19 03:23:03', 1),
(220, 331, '', '2019-12-19 04:12:45', '2019-12-19 03:23:46', 1),
(221, 332, '', '2019-12-22 01:12:15', '2019-12-22 00:58:15', 1),
(222, 333, '', '2019-12-22 02:12:08', '2019-12-22 01:01:08', 1),
(223, 334, '', '2019-12-22 02:12:50', '2019-12-22 01:01:50', 1),
(224, 335, '', '2019-12-22 02:12:30', '2019-12-22 01:02:31', 1),
(225, 336, '', '2019-12-22 02:12:14', '2019-12-22 01:03:15', 1),
(226, 337, '', '2019-12-22 02:12:56', '2019-12-22 01:03:56', 1),
(227, 338, '', '2019-12-22 02:12:29', '2019-12-22 01:04:29', 1),
(228, 339, '', '2019-12-22 02:12:07', '2019-12-22 01:05:07', 1),
(229, 340, '', '2019-12-22 02:12:23', '2019-12-22 01:06:23', 1),
(230, 341, '', '2019-12-22 02:12:14', '2019-12-22 01:07:14', 1),
(231, 342, '', '2019-12-22 02:12:02', '2019-12-22 01:08:02', 1),
(232, 343, '', '2019-12-22 02:12:43', '2019-12-22 01:08:44', 1),
(233, 344, '', '2019-12-22 02:12:27', '2019-12-22 01:09:27', 1),
(234, 345, '', '2019-12-22 02:12:14', '2019-12-22 01:10:14', 1),
(235, 346, '', '2019-12-22 02:12:08', '2019-12-22 01:11:08', 1),
(236, 347, '', '2019-12-22 02:12:50', '2019-12-22 01:11:50', 1),
(237, 348, '', '2019-12-22 02:12:37', '2019-12-22 01:12:37', 1),
(238, 349, '', '2019-12-22 02:12:21', '2019-12-22 01:13:21', 1),
(239, 350, '', '2019-12-22 02:12:17', '2019-12-22 01:14:17', 1),
(240, 351, '', '2019-12-22 02:12:08', '2019-12-22 01:15:08', 1),
(241, 352, '', '2019-12-22 02:12:52', '2019-12-22 01:15:52', 1),
(242, 353, '', '2019-12-22 02:12:31', '2019-12-22 01:16:32', 1),
(243, 354, '', '2019-12-22 02:12:18', '2019-12-22 01:17:18', 1),
(244, 355, '', '2019-12-22 02:12:03', '2019-12-22 01:18:03', 1),
(245, 356, '', '2019-12-22 02:12:38', '2019-12-22 01:18:38', 1),
(246, 357, '', '2019-12-22 02:12:19', '2019-12-22 01:22:19', 1),
(247, 358, '', '2019-12-22 02:12:12', '2019-12-22 01:23:12', 1),
(248, 359, '', '2019-12-22 02:12:50', '2019-12-22 01:23:50', 1),
(249, 360, '', '2019-12-22 02:12:29', '2019-12-22 01:24:29', 1),
(250, 361, '', '2019-12-22 02:12:08', '2019-12-22 01:25:08', 1),
(251, 362, '', '2019-12-22 02:12:56', '2019-12-22 01:25:57', 1),
(252, 363, '', '2019-12-22 02:12:47', '2019-12-22 01:26:47', 1),
(253, 364, '', '2019-12-22 02:12:37', '2019-12-22 01:27:37', 1),
(254, 365, '', '2019-12-22 02:12:20', '2019-12-22 01:28:20', 1),
(255, 366, '', '2019-12-22 02:12:40', '2019-12-22 01:29:40', 1),
(256, 367, '', '2019-12-22 02:12:41', '2019-12-22 01:30:41', 1),
(257, 368, '', '2019-12-22 02:12:35', '2019-12-22 01:32:35', 1),
(258, 369, '', '2019-12-22 02:12:29', '2019-12-22 01:33:30', 1),
(259, 370, '', '2019-12-22 02:12:21', '2019-12-22 01:34:22', 1),
(260, 371, '', '2019-12-22 02:12:28', '2019-12-22 01:35:28', 1),
(261, 372, '', '2019-12-22 02:12:33', '2019-12-22 01:36:33', 1),
(262, 373, '', '2019-12-22 02:12:17', '2019-12-22 01:37:17', 1),
(263, 374, '', '2019-12-22 02:12:59', '2019-12-22 01:37:59', 1),
(264, 375, '', '2019-12-22 02:12:47', '2019-12-22 01:38:47', 1),
(265, 376, '', '2019-12-22 02:12:21', '2019-12-22 01:39:21', 1),
(266, 377, '', '2019-12-22 02:12:55', '2019-12-22 01:39:55', 1),
(267, 378, '', '2019-12-22 02:12:38', '2019-12-22 01:40:38', 1),
(268, 379, '', '2019-12-22 02:12:42', '2019-12-22 01:41:43', 1),
(269, 380, '', '2019-12-22 02:12:38', '2019-12-22 01:42:38', 1),
(270, 381, '', '2019-12-22 02:12:13', '2019-12-22 01:43:13', 1),
(271, 382, '', '2019-12-22 02:12:49', '2019-12-22 01:43:49', 1),
(272, 383, '', '2019-12-22 02:12:48', '2019-12-22 01:48:48', 1),
(273, 384, '', '2019-12-22 02:12:26', '2019-12-22 01:49:26', 1),
(274, 385, '', '2019-12-22 02:12:17', '2019-12-22 01:50:17', 1),
(275, 386, '', '2019-12-22 02:12:53', '2019-12-22 01:50:53', 1),
(276, 387, '', '2019-12-22 02:12:33', '2019-12-22 01:51:34', 1),
(277, 388, '', '2019-12-22 02:12:09', '2019-12-22 01:52:10', 1),
(278, 389, '', '2019-12-22 02:12:00', '2019-12-22 01:53:00', 1),
(279, 390, '', '2019-12-22 02:12:54', '2019-12-22 01:53:54', 1),
(280, 391, '', '2019-12-22 02:12:50', '2019-12-22 01:54:50', 1),
(281, 392, '', '2019-12-22 02:12:33', '2019-12-22 01:55:34', 1),
(282, 393, '', '2019-12-22 02:12:16', '2019-12-22 01:56:17', 1),
(283, 394, '', '2019-12-22 02:12:16', '2019-12-22 01:57:17', 1),
(284, 395, '', '2019-12-22 02:12:54', '2019-12-22 01:57:54', 1),
(285, 396, '', '2019-12-22 02:12:54', '2019-12-22 01:58:54', 1),
(286, 397, '', '2019-12-22 02:12:49', '2019-12-22 01:59:49', 1),
(287, 398, '', '2019-12-22 03:12:28', '2019-12-22 02:00:28', 1),
(288, 399, '', '2019-12-22 03:12:20', '2019-12-22 02:01:20', 1),
(289, 400, '', '2019-12-22 03:12:59', '2019-12-22 02:01:59', 1),
(290, 401, '', '2019-12-22 03:12:34', '2019-12-22 02:02:35', 1),
(291, 402, '', '2019-12-22 03:12:15', '2019-12-22 02:03:16', 1),
(292, 403, '', '2019-12-22 03:12:11', '2019-12-22 02:04:11', 1),
(293, 404, '', '2019-12-22 03:12:46', '2019-12-22 02:04:46', 1),
(294, 405, '', '2019-12-22 03:12:19', '2019-12-22 02:05:19', 1),
(295, 406, '', '2019-12-22 03:12:29', '2019-12-22 02:06:29', 1),
(296, 407, '', '2019-12-22 03:12:21', '2019-12-22 02:07:21', 1),
(297, 408, '', '2019-12-22 03:12:22', '2019-12-22 02:08:22', 1),
(298, 409, '', '2019-12-22 03:12:05', '2019-12-22 02:09:05', 1),
(299, 410, '', '2019-12-22 03:12:43', '2019-12-22 02:09:43', 1),
(300, 411, '', '2019-12-22 03:12:24', '2019-12-22 02:10:24', 1),
(301, 412, '-', '2019-12-27 01:12:44', '2019-12-27 12:11:44', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `version_trazabilidad`
--

CREATE TABLE `version_trazabilidad` (
  `vtraz_anno` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `vtraz_auto_id` int(11) NOT NULL,
  `vtraz_codigo_formacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `vtraz_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `vtraz_estado` tinyint(1) NOT NULL DEFAULT 1,
  `vtraz_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `vtraz_created` datetime NOT NULL,
  `vtraz_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `version_trazabilidad`
--

INSERT INTO `version_trazabilidad` (`vtraz_anno`, `vtraz_auto_id`, `vtraz_codigo_formacion`, `vtraz_nombre`, `vtraz_estado`, `vtraz_vigencia`, `vtraz_created`, `vtraz_updated`) VALUES
('2019', 20, '100', 'STARTUP', 1, 1, '2019-12-06 04:12:38', '2019-12-06 03:47:38'),
('2020', 21, '100', 'Versión 2020', 1, 1, '2020-11-06 06:11:53', '2020-11-06 17:02:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades_digitalizadas`
--
ALTER TABLE `actividades_digitalizadas`
  ADD PRIMARY KEY (`adi_auto_id`);

--
-- Indices de la tabla `actividades_digitalizadas_archivo`
--
ALTER TABLE `actividades_digitalizadas_archivo`
  ADD PRIMARY KEY (`ada_id_auto`);

--
-- Indices de la tabla `actividades_drive_url`
--
ALTER TABLE `actividades_drive_url`
  ADD PRIMARY KEY (`adu_auto_id`);

--
-- Indices de la tabla `actividades_env_fisico`
--
ALTER TABLE `actividades_env_fisico`
  ADD PRIMARY KEY (`adi_auto_id`);

--
-- Indices de la tabla `calendario_sust`
--
ALTER TABLE `calendario_sust`
  ADD PRIMARY KEY (`s_id_sp_auto`);

--
-- Indices de la tabla `calendario_sust_pres`
--
ALTER TABLE `calendario_sust_pres`
  ADD PRIMARY KEY (`c_id_sp_auto`);

--
-- Indices de la tabla `etapa_archivo`
--
ALTER TABLE `etapa_archivo`
  ADD PRIMARY KEY (`eta_id_auto`);

--
-- Indices de la tabla `etapa_calificacion_de_entregas`
--
ALTER TABLE `etapa_calificacion_de_entregas`
  ADD PRIMARY KEY (`cde_id_entrega`);

--
-- Indices de la tabla `etapa_formatos_asociados`
--
ALTER TABLE `etapa_formatos_asociados`
  ADD PRIMARY KEY (`efa_id`);

--
-- Indices de la tabla `etapa_responsables`
--
ALTER TABLE `etapa_responsables`
  ADD PRIMARY KEY (`er_id`);

--
-- Indices de la tabla `etapa_tipo_entrega`
--
ALTER TABLE `etapa_tipo_entrega`
  ADD PRIMARY KEY (`ate_id_entrega`);

--
-- Indices de la tabla `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`mail_auto_id`);

--
-- Indices de la tabla `mail_destinatario`
--
ALTER TABLE `mail_destinatario`
  ADD PRIMARY KEY (`md_auto_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `requerimientos_presustentacion`
--
ALTER TABLE `requerimientos_presustentacion`
  ADD PRIMARY KEY (`rp_auto_id`);

--
-- Indices de la tabla `requerimientos_sustentacion`
--
ALTER TABLE `requerimientos_sustentacion`
  ADD PRIMARY KEY (`rsus_auto_id`);

--
-- Indices de la tabla `tipoformacion`
--
ALTER TABLE `tipoformacion`
  ADD PRIMARY KEY (`tpf_id`);

--
-- Indices de la tabla `tipo_formaciones_etapas`
--
ALTER TABLE `tipo_formaciones_etapas`
  ADD PRIMARY KEY (`tfe_id_auto`);

--
-- Indices de la tabla `titulaciones`
--
ALTER TABLE `titulaciones`
  ADD PRIMARY KEY (`titu_id`),
  ADD UNIQUE KEY `titu_ficha` (`titu_ficha`);

--
-- Indices de la tabla `titulacion_equipo_ejecutor`
--
ALTER TABLE `titulacion_equipo_ejecutor`
  ADD PRIMARY KEY (`tee_auto_id`);

--
-- Indices de la tabla `titulacion_fase`
--
ALTER TABLE `titulacion_fase`
  ADD PRIMARY KEY (`tfa_id_auto`);

--
-- Indices de la tabla `titulacion_instructor_lider`
--
ALTER TABLE `titulacion_instructor_lider`
  ADD PRIMARY KEY (`til_auto_id`);

--
-- Indices de la tabla `titulacion_rol_asesor`
--
ALTER TABLE `titulacion_rol_asesor`
  ADD PRIMARY KEY (`tra_auto_id`);

--
-- Indices de la tabla `unidad_formacion`
--
ALTER TABLE `unidad_formacion`
  ADD PRIMARY KEY (`ufor_auto_id`);

--
-- Indices de la tabla `unidad_header`
--
ALTER TABLE `unidad_header`
  ADD PRIMARY KEY (`uh_auto_id`);

--
-- Indices de la tabla `unidad_info`
--
ALTER TABLE `unidad_info`
  ADD PRIMARY KEY (`uin_codigo`);

--
-- Indices de la tabla `unidad_integrantes`
--
ALTER TABLE `unidad_integrantes`
  ADD PRIMARY KEY (`uit_auto_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `users_count`
--
ALTER TABLE `users_count`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_contactos`
--
ALTER TABLE `usuarios_contactos`
  ADD PRIMARY KEY (`contacto_codigo`);

--
-- Indices de la tabla `usuarios_datos`
--
ALTER TABLE `usuarios_datos`
  ADD PRIMARY KEY (`datos_codigo`);

--
-- Indices de la tabla `usuarios_direcciones`
--
ALTER TABLE `usuarios_direcciones`
  ADD PRIMARY KEY (`direccion_codigo`);

--
-- Indices de la tabla `usuarios_fichas`
--
ALTER TABLE `usuarios_fichas`
  ADD PRIMARY KEY (`af_ficha_auto_id`);

--
-- Indices de la tabla `usuarios_info_profesional`
--
ALTER TABLE `usuarios_info_profesional`
  ADD PRIMARY KEY (`id_auto_profesional`);

--
-- Indices de la tabla `usuarios_regional`
--
ALTER TABLE `usuarios_regional`
  ADD PRIMARY KEY (`ar_auto_id`);

--
-- Indices de la tabla `usuarios_roles`
--
ALTER TABLE `usuarios_roles`
  ADD PRIMARY KEY (`usr_auto_id`);

--
-- Indices de la tabla `usuarios_tipo_poblacion`
--
ALTER TABLE `usuarios_tipo_poblacion`
  ADD PRIMARY KEY (`atp_auto_id`);

--
-- Indices de la tabla `version_trazabilidad`
--
ALTER TABLE `version_trazabilidad`
  ADD PRIMARY KEY (`vtraz_auto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades_digitalizadas`
--
ALTER TABLE `actividades_digitalizadas`
  MODIFY `adi_auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividades_digitalizadas_archivo`
--
ALTER TABLE `actividades_digitalizadas_archivo`
  MODIFY `ada_id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `actividades_drive_url`
--
ALTER TABLE `actividades_drive_url`
  MODIFY `adu_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `actividades_env_fisico`
--
ALTER TABLE `actividades_env_fisico`
  MODIFY `adi_auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calendario_sust`
--
ALTER TABLE `calendario_sust`
  MODIFY `s_id_sp_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `calendario_sust_pres`
--
ALTER TABLE `calendario_sust_pres`
  MODIFY `c_id_sp_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `etapa_archivo`
--
ALTER TABLE `etapa_archivo`
  MODIFY `eta_id_auto` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `etapa_formatos_asociados`
--
ALTER TABLE `etapa_formatos_asociados`
  MODIFY `efa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `mail`
--
ALTER TABLE `mail`
  MODIFY `mail_auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mail_destinatario`
--
ALTER TABLE `mail_destinatario`
  MODIFY `md_auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `requerimientos_presustentacion`
--
ALTER TABLE `requerimientos_presustentacion`
  MODIFY `rp_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `requerimientos_sustentacion`
--
ALTER TABLE `requerimientos_sustentacion`
  MODIFY `rsus_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `tipoformacion`
--
ALTER TABLE `tipoformacion`
  MODIFY `tpf_id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `tipo_formaciones_etapas`
--
ALTER TABLE `tipo_formaciones_etapas`
  MODIFY `tfe_id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `titulaciones`
--
ALTER TABLE `titulaciones`
  MODIFY `titu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `titulacion_equipo_ejecutor`
--
ALTER TABLE `titulacion_equipo_ejecutor`
  MODIFY `tee_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `titulacion_fase`
--
ALTER TABLE `titulacion_fase`
  MODIFY `tfa_id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=963;

--
-- AUTO_INCREMENT de la tabla `titulacion_instructor_lider`
--
ALTER TABLE `titulacion_instructor_lider`
  MODIFY `til_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `titulacion_rol_asesor`
--
ALTER TABLE `titulacion_rol_asesor`
  MODIFY `tra_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `unidad_formacion`
--
ALTER TABLE `unidad_formacion`
  MODIFY `ufor_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `unidad_header`
--
ALTER TABLE `unidad_header`
  MODIFY `uh_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `unidad_info`
--
ALTER TABLE `unidad_info`
  MODIFY `uin_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `unidad_integrantes`
--
ALTER TABLE `unidad_integrantes`
  MODIFY `uit_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT de la tabla `users_count`
--
ALTER TABLE `users_count`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT de la tabla `usuarios_datos`
--
ALTER TABLE `usuarios_datos`
  MODIFY `datos_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT de la tabla `usuarios_fichas`
--
ALTER TABLE `usuarios_fichas`
  MODIFY `af_ficha_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT de la tabla `usuarios_info_profesional`
--
ALTER TABLE `usuarios_info_profesional`
  MODIFY `id_auto_profesional` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuarios_regional`
--
ALTER TABLE `usuarios_regional`
  MODIFY `ar_auto_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT de la tabla `usuarios_roles`
--
ALTER TABLE `usuarios_roles`
  MODIFY `usr_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios_tipo_poblacion`
--
ALTER TABLE `usuarios_tipo_poblacion`
  MODIFY `atp_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT de la tabla `version_trazabilidad`
--
ALTER TABLE `version_trazabilidad`
  MODIFY `vtraz_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
