-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2021 a las 15:35:17
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
-- Base de datos: `big_nova_software`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms_initials`
--

CREATE TABLE `forms_initials` (
  `fin_auto` int(11) NOT NULL,
  `fin_name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fin_description` text COLLATE utf8_spanish_ci NOT NULL,
  `fin_created` date NOT NULL,
  `fin_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fin_status` tinyint(1) NOT NULL DEFAULT 1,
  `fin_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `forms_initials`
--

INSERT INTO `forms_initials` (`fin_auto`, `fin_name`, `fin_description`, `fin_created`, `fin_updated`, `fin_status`, `fin_vigence`) VALUES
(24, 'Instrumento 002', 'Descripción', '2021-04-26', '2021-04-26 17:02:22', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms_projects`
--

CREATE TABLE `forms_projects` (
  `fpr_auto_id` int(11) NOT NULL,
  `fpr_id_form` int(11) NOT NULL,
  `fpr_id_projects` int(11) NOT NULL,
  `fpr_date_created` date NOT NULL,
  `fpr_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fpr_status` tinyint(1) NOT NULL DEFAULT 1,
  `fpr_vigence` tinyint(1) NOT NULL DEFAULT 1,
  `fpr_hour_created` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms_users`
--

CREATE TABLE `forms_users` (
  `fous_auto_id` int(11) NOT NULL,
  `fous_id_form` int(11) NOT NULL,
  `fous_id_user` int(11) NOT NULL,
  `fous_date_created` date NOT NULL,
  `fous_hour_created` time NOT NULL,
  `fous_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fous_status` tinyint(1) NOT NULL DEFAULT 1,
  `fous_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_user_sesions_success`
--

CREATE TABLE `log_user_sesions_success` (
  `uls_auto_id` int(11) NOT NULL,
  `uls_user_id` int(11) NOT NULL,
  `uls_email` text COLLATE utf8_spanish_ci NOT NULL,
  `uls_data` text COLLATE utf8_spanish_ci NOT NULL,
  `uls_data_cy` text COLLATE utf8_spanish_ci NOT NULL,
  `uls_date` date NOT NULL,
  `uls_hour` time NOT NULL,
  `uls_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `log_user_sesions_success`
--

INSERT INTO `log_user_sesions_success` (`uls_auto_id`, `uls_user_id`, `uls_email`, `uls_data`, `uls_data_cy`, `uls_date`, `uls_hour`, `uls_updated`) VALUES
(3, 1, 'syrivera89@misena.edu.co', '1234567', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '2021-04-25', '04:27:59', '2021-04-25 09:27:59'),
(4, 1, 'syrivera89@misena.edu.co', '1234567', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '2021-04-26', '11:31:00', '2021-04-26 16:31:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mother_tables`
--

CREATE TABLE `mother_tables` (
  `mta_auto_id` int(11) NOT NULL,
  `mta_form_id` int(10) NOT NULL,
  `mta_date_created` date NOT NULL,
  `mta_hour_created` time NOT NULL,
  `mta_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mta_status` tinyint(1) NOT NULL DEFAULT 1,
  `mta_vigence` tinyint(1) NOT NULL DEFAULT 1,
  `mta_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objects_initials`
--

CREATE TABLE `objects_initials` (
  `obin_auto_id` int(11) NOT NULL,
  `obin_name` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `obin_description` text COLLATE utf8_spanish_ci NOT NULL,
  `obin_created` datetime NOT NULL,
  `obin_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `obin_status` tinyint(1) NOT NULL DEFAULT 1,
  `obin_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `objects_initials`
--

INSERT INTO `objects_initials` (`obin_auto_id`, `obin_name`, `obin_description`, `obin_created`, `obin_updated`, `obin_status`, `obin_vigence`) VALUES
(1, 'Fincas cacaoteras', 'La Plata Huila', '2021-04-26 01:01:13', '2021-04-26 06:22:37', 1, 1),
(2, 'Fincas cafeteras', 'Descripción', '2021-04-26 12:02:54', '2021-04-26 17:02:54', 1, 1),
(3, 'Formulario 1', 'Breve descripción\n', '2021-04-26 15:03:49', '2021-04-26 20:03:49', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objects_mother_tables`
--

CREATE TABLE `objects_mother_tables` (
  `mtao_auto_id` int(11) NOT NULL,
  `mtao_object_id` int(11) NOT NULL,
  `mtao_date_created` date NOT NULL,
  `mtao_hour_created` time NOT NULL,
  `mtao_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mtao_status` tinyint(1) NOT NULL DEFAULT 1,
  `mtao_vigence` tinyint(1) NOT NULL DEFAULT 1,
  `mtao_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `objects_mother_tables`
--

INSERT INTO `objects_mother_tables` (`mtao_auto_id`, `mtao_object_id`, `mtao_date_created`, `mtao_hour_created`, `mtao_updated`, `mtao_status`, `mtao_vigence`, `mtao_json`) VALUES
(1, 1, '2021-04-26', '01:38:44', '2021-04-26 16:43:10', 1, 1, '[{\"input\":{\"name\":\"Instructor que dise\\u00f1o el instrumento de investigaci\\u00f3n\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Municipio\",\"type\":\"text\",\"required\":\"true\",\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Vereda\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Nombre de la finca\",\"type\":\"text\",\"required\":\"true\",\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Coordenada N\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Coordenada W\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Propietario\",\"type\":\"text\",\"required\":\"true\",\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Celular\",\"type\":\"number\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Investigador que aplica el instrumento\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Fecha\",\"type\":\"date\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objects_projects`
--

CREATE TABLE `objects_projects` (
  `obpr_auto_id` int(11) NOT NULL,
  `obpr_id_object` int(11) NOT NULL,
  `obpr_id_projects` int(11) NOT NULL,
  `obpr_date_created` date NOT NULL,
  `obpr_hour_created` time NOT NULL,
  `obpr_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `obpr_status` tinyint(1) NOT NULL DEFAULT 1,
  `obpr_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objects_users`
--

CREATE TABLE `objects_users` (
  `obus_auto_id` int(11) NOT NULL,
  `obus_id_object` int(11) NOT NULL,
  `obus_id_user` int(11) NOT NULL,
  `obus_date_created` date NOT NULL,
  `obus_hour_created` time NOT NULL,
  `obus_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `obus_status` tinyint(1) NOT NULL DEFAULT 1,
  `obus_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `objects_users`
--

INSERT INTO `objects_users` (`obus_auto_id`, `obus_id_object`, `obus_id_user`, `obus_date_created`, `obus_hour_created`, `obus_updated`, `obus_status`, `obus_vigence`) VALUES
(22, 1, 1, '2021-04-26', '01:01:13', '2021-04-26 06:01:13', 1, 1),
(23, 1, 2, '2021-04-26', '01:01:13', '2021-04-26 06:01:13', 1, 1),
(25, 3, 1, '2021-04-26', '15:03:49', '2021-04-26 20:03:49', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `pro_auto_id` int(10) NOT NULL,
  `pro_name` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `pro_date_create` date NOT NULL,
  `pro_hour_create` time NOT NULL,
  `pro_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pro_status` tinyint(1) NOT NULL DEFAULT 1,
  `pro_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`pro_auto_id`, `pro_name`, `pro_date_create`, `pro_hour_create`, `pro_updated`, `pro_status`, `pro_vigence`) VALUES
(2, 'Trazabilidad de cacao', '2021-04-25', '04:29:11', '2021-04-25 09:29:11', 1, 1),
(3, 'Evaluación del proceso productivo del cacao, en municipios del sur del departamento del Huila', '2021-04-26', '15:19:49', '2021-04-26 20:19:49', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_codes`
--

CREATE TABLE `projects_codes` (
  `prco_auto_id` int(11) NOT NULL,
  `prco_project_id` int(10) NOT NULL,
  `prco_code` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `prco_entity` varchar(120) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `projects_codes`
--

INSERT INTO `projects_codes` (`prco_auto_id`, `prco_project_id`, `prco_code`, `prco_entity`) VALUES
(9, 2, 'SGPS-8635-2021', ''),
(10, 3, '6859-2019', 'SENA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_objetive_generals`
--

CREATE TABLE `projects_objetive_generals` (
  `pog_auto_id` int(10) NOT NULL,
  `pog_project_id` int(10) NOT NULL,
  `pog_name` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_users`
--

CREATE TABLE `projects_users` (
  `pus_auto_id` int(11) NOT NULL,
  `pus_id_project` int(11) NOT NULL,
  `pus_id_user` int(11) NOT NULL,
  `pus_date_create` date NOT NULL,
  `pus_hour_create` time NOT NULL,
  `pus_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pus_status` tinyint(1) NOT NULL DEFAULT 1,
  `pus_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `projects_users`
--

INSERT INTO `projects_users` (`pus_auto_id`, `pus_id_project`, `pus_id_user`, `pus_date_create`, `pus_hour_create`, `pus_updated`, `pus_status`, `pus_vigence`) VALUES
(20, 2, 1, '2021-04-25', '04:29:11', '2021-04-25 09:29:11', 1, 1),
(22, 3, 1, '2021-04-26', '15:19:49', '2021-04-26 20:19:49', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_status`
--

CREATE TABLE `system_status` (
  `sys_auto_id` int(11) NOT NULL,
  `sys_status` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `sys_description` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `sys_date_created` date NOT NULL,
  `sys_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sys_hour_create` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `system_status`
--

INSERT INTO `system_status` (`sys_auto_id`, `sys_status`, `sys_description`, `sys_date_created`, `sys_updated`, `sys_hour_create`) VALUES
(1, 'Developer', 'Modo desarrollo', '2021-04-27', '2021-04-27 15:01:16', '09:58:31'),
(2, 'Production', 'Modo produccion, estado del software es funcional al 100%', '2021-04-27', '2021-04-27 15:01:31', '09:00:00'),
(3, 'Inactive', 'Software inactivo', '2021-04-27', '2021-04-27 14:59:30', '09:58:31'),
(4, 'Mantinance', 'Software en mantenimiento', '2021-04-27', '2021-04-27 14:59:30', '09:58:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_services`
--

CREATE TABLE `tbl_services` (
  `tbse_auto_id` int(11) NOT NULL,
  `tbse_id_type_service` int(10) NOT NULL,
  `tbse_name` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `tbse_description` text COLLATE utf8_spanish_ci NOT NULL,
  `tbse_emp` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tbse_logo` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tbse_date_created` date NOT NULL,
  `tbse_hour_created` date NOT NULL,
  `tbse_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbse_status` tinyint(1) NOT NULL DEFAULT 1,
  `tbse_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_services`
--

INSERT INTO `tbl_services` (`tbse_auto_id`, `tbse_id_type_service`, `tbse_name`, `tbse_description`, `tbse_emp`, `tbse_logo`, `tbse_date_created`, `tbse_hour_created`, `tbse_updated`, `tbse_status`, `tbse_vigence`) VALUES
(4, 1, 'Grupo de Investigación Nova', 'Servicio Nacional de Aprendizaje', NULL, NULL, '2021-04-30', '2021-04-30', '2021-05-06 19:10:44', 1, 1),
(5, 1, 'Grupo de Investigacion La Angostura', 'Somos un establecimiento público del orden nacional, con personería jurídica, patrimonio propio e independiente, y autonomía administrativa;  Adscrito al Ministerio del Trabajo de Colombia. Ofrece formación gratuita a millones de colombianos que se benefician con programas técnicos, tecnológicos y complementarios que enfocados en el desarrollo económico, tecnológico y social del país, entran a engrosar las actividades productivas de las empresas y de la industria, para obtener mejor competitividad y producción con los mercados globalizados. \r\n\r\nFacultada por el Estado para la inversión en infraestructura necesaria para mejorar el desarrollo social y técnico de los trabajadores en las diferentes regiones,  a través de formación profesional integral que logra incorporarse con las metas del Gobierno Nacional, mediante el cubrimiento de las necesidades específicas de recurso humano en las empresas, a través de la vinculación al mercado laboral -bien sea como empleado o subempleado-, con grandes oportunidades para el desarrollo empresarial, comunitario y tecnológico.  \r\n\r\nLa entidad más querida por los colombianos funciona en permanente alianza entre Gobierno, empresarios y trabajadores, desde su creación, con el firme propósito de lograr la competitividad de Colombia a través del incremento de la productividad en las empresas y regiones, sin dejar de lado la inclusión social, en articulación con la política nacional: Más empleo y menos pobreza. Por tal razón, se generan continuamente programas y proyectos de responsabilidad social, empresarial, formación, innovación, internacionalización y transferencia de conocimientos y tecnologías.', NULL, NULL, '2021-04-30', '2021-04-30', '2021-05-06 19:27:18', 1, 1),
(11, 2, 'Estrategias Tecnológicas para el fortalecimiento de la cadena productiva, sostenibilidad ambiental y comercialización del cacao en el departamento del Huila.', 'La cadena productiva del sector cacaotero presenta bajos niveles de competitividad en los mercados nacionales e internacionales, debido a prácticas de producción inadecuadas que afectan la calidad y el medio ambiente, por tanto, se plantea desarrollar un conjunto de estrategias que incluyen una plataforma tecnológica multidispositivo con IoT para el procesamiento de datos referentes a diagnósticos y caracterización de fincas cacaoteras, estos datos estarán ligados a los procesos de producción, beneficio, aprovechamiento, comercialización, sostenibilidad económica y ambiental. Mejorando con esto la toma de decisiones y la creación de estrategias de mejora continua en tiempo real que contribuirán al fortalecimiento de la cadena productiva del cultivo de cacao en el departamento del Huila.', NULL, NULL, '2021-05-06', '2021-05-06', '2021-05-06 19:17:24', 1, 1),
(12, 2, 'Servicio Nacional de Aprendizaje', 'SENA', NULL, NULL, '2021-05-06', '2021-05-06', '2021-05-06 21:52:31', 1, 1),
(13, 1, 'El grupo de Gilberto', 'Gilberto m.', NULL, NULL, '2021-05-06', '2021-05-06', '2021-05-06 21:53:37', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_service_mother_table`
--

CREATE TABLE `tbl_service_mother_table` (
  `tbsede_id_service` int(11) NOT NULL,
  `tbsede_code_inputs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tbsede_code_inputs`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_service_mother_table`
--

INSERT INTO `tbl_service_mother_table` (`tbsede_id_service`, `tbsede_code_inputs`) VALUES
(9, '[{\"input\":{\"name\":\"Nombres\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Apellidos\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_avatars`
--

CREATE TABLE `users_avatars` (
  `usava_id_user` int(11) NOT NULL,
  `usava_avatar` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `usava_date_created` date NOT NULL,
  `usava_hour_date` time NOT NULL,
  `usava_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users_avatars`
--

INSERT INTO `users_avatars` (`usava_id_user`, `usava_avatar`, `usava_date_created`, `usava_hour_date`, `usava_updated`) VALUES
(1, '0', '2021-04-25', '04:27:50', '2021-04-25 09:27:50'),
(2, '0', '2021-04-26', '11:35:06', '2021-04-26 16:35:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_credentials`
--

CREATE TABLE `users_credentials` (
  `usr_user_id` int(11) NOT NULL,
  `usr_count_id_type` int(11) NOT NULL,
  `usr_email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usr_password` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `usr_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users_credentials`
--

INSERT INTO `users_credentials` (`usr_user_id`, `usr_count_id_type`, `usr_email`, `usr_password`, `usr_update`) VALUES
(1, 1, 'syrivera89@misena.edu.co', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '2021-04-25 09:27:50'),
(2, 1, 'erendonr@sena.edu.co', '17ddbda737a6cf5e4d9e03e0b046b370d2588a0a', '2021-04-26 16:35:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_keys`
--

CREATE TABLE `users_keys` (
  `usk_auto_id` int(11) NOT NULL,
  `usk_name` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `usk_date_created` date NOT NULL,
  `usk_hour_created` time NOT NULL,
  `usk_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `usk_status` tinyint(1) NOT NULL DEFAULT 0,
  `usk_vigence` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users_keys`
--

INSERT INTO `users_keys` (`usk_auto_id`, `usk_name`, `usk_date_created`, `usk_hour_created`, `usk_updated`, `usk_status`, `usk_vigence`) VALUES
(1, 'syrivera89@misena.edu.co', '2021-04-25', '11:04:50', '2021-04-25 09:27:50', 1, 1),
(2, 'erendonr@sena.edu.co', '2021-04-26', '18:04:06', '2021-04-26 16:35:06', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_count_type`
--

CREATE TABLE `user_count_type` (
  `ucty_auto_id` int(11) NOT NULL,
  `ucty_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ucty_date_created` date NOT NULL,
  `ucty_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ucty_status` tinyint(1) NOT NULL DEFAULT 0,
  `ucty_vigence` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user_count_type`
--

INSERT INTO `user_count_type` (`ucty_auto_id`, `ucty_name`, `ucty_date_created`, `ucty_updated`, `ucty_status`, `ucty_vigence`) VALUES
(1, 'Correo electronico', '2021-04-21', '2021-04-21 21:26:12', 0, 0),
(2, 'Gmail', '2021-04-21', '2021-04-21 21:26:12', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_data_personals`
--

CREATE TABLE `user_data_personals` (
  `udp_user_id` int(10) NOT NULL,
  `udp_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `udp_gender` enum('Masculino','Femenino','Otro','') COLLATE utf8_spanish_ci NOT NULL,
  `udp_date_birth` date NOT NULL,
  `udp_type_id` enum('TI','CC','PASS','CE') COLLATE utf8_spanish_ci NOT NULL,
  `udp_numer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user_data_personals`
--

INSERT INTO `user_data_personals` (`udp_user_id`, `udp_name`, `udp_gender`, `udp_date_birth`, `udp_type_id`, `udp_numer_id`) VALUES
(1, 'Sergio Rivera', 'Masculino', '0000-00-00', 'TI', 0),
(2, 'Elder Rendon Rengifo ', 'Masculino', '0000-00-00', 'TI', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_object_1`
--

CREATE TABLE `z_object_1` (
  `id_z_object_1` int(11) NOT NULL,
  `instructor_que_diseno_el_instrumento_de_investigacion_0` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `municipio_1` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vereda_2` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_de_la_finca_3` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `coordenada_norte_4` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `coordenada_sur_5` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `propietario_6` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular_7` int(10) DEFAULT NULL,
  `investigador_que_aplica_el_instrumento_8` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_9` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `z_object_1`
--

INSERT INTO `z_object_1` (`id_z_object_1`, `instructor_que_diseno_el_instrumento_de_investigacion_0`, `municipio_1`, `vereda_2`, `nombre_de_la_finca_3`, `coordenada_norte_4`, `coordenada_sur_5`, `propietario_6`, `celular_7`, `investigador_que_aplica_el_instrumento_8`, `fecha_9`) VALUES
(1, 'Daniel Rodríguez Acosta', 'Paicol', 'Matanzas', 'Buenos Aires', '2, 27, 50.97', '75, 47, 20.61', 'Algemiro Cabrera Vargas', 2147483647, 'Elder Rendon Rengifo', '2021-04-23'),
(2, 'Daniel Rodríguez Acosta ', 'Paicol ', 'Primavera ', 'Finca Agroturística Rancho Don Juan ', '2,24,8.25', '75,45,51.17', 'Juan Carlos Díaz Charri ', 2147483647, 'Sergio Yamit Rivera Flor ', '2021-04-23'),
(3, 'Daniel Rodríguez Acosta ', 'La Plata Huila ', 'Cabuyal ', 'Villa lorena ', '0', '0', 'Salomón Pérez Pérez ', 0, 'Elder Rendon Rengifo ', '2021-04-21'),
(4, 'Daniel Rodríguez Acosta	', 'La Plata Huila', 'Cabuyal', 'La unión', '2,23,51.74', '75,51,51.68', 'José Ramiro Rojas Rojas', 2147483647, 'Elder Rendon Rengifo', '2021-04-21'),
(5, 'Daniel Rodríguez Acosta	', 'La Plata Huila', 'Cabuyal', 'San Pablo', '2,23,47.04', '75,51,45.65', 'Néider Henrique Trujillo', 2147483647, 'Elder Rendon Rengifo', '2021-04-22'),
(6, 'Daniel Rodríguez Acosta ', 'La Plata Huila ', 'Cabuyal ', 'La Esmeralda ', '0', '0', 'Evaristo Pérez Pérez ', 2147483647, 'Elder Rendon Rengifo ', '2021-04-20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `forms_initials`
--
ALTER TABLE `forms_initials`
  ADD PRIMARY KEY (`fin_auto`);

--
-- Indices de la tabla `forms_projects`
--
ALTER TABLE `forms_projects`
  ADD PRIMARY KEY (`fpr_auto_id`),
  ADD KEY `fpr_id_form` (`fpr_id_form`),
  ADD KEY `fpr_id_projects` (`fpr_id_projects`);

--
-- Indices de la tabla `forms_users`
--
ALTER TABLE `forms_users`
  ADD PRIMARY KEY (`fous_auto_id`),
  ADD KEY `fous_id_form` (`fous_id_form`),
  ADD KEY `fous_id_user` (`fous_id_user`);

--
-- Indices de la tabla `log_user_sesions_success`
--
ALTER TABLE `log_user_sesions_success`
  ADD PRIMARY KEY (`uls_auto_id`),
  ADD KEY `user_log_sesions_ibfk_1` (`uls_user_id`);

--
-- Indices de la tabla `mother_tables`
--
ALTER TABLE `mother_tables`
  ADD PRIMARY KEY (`mta_auto_id`),
  ADD UNIQUE KEY `mta_form_id_2` (`mta_form_id`),
  ADD KEY `mta_form_id` (`mta_form_id`);

--
-- Indices de la tabla `objects_initials`
--
ALTER TABLE `objects_initials`
  ADD PRIMARY KEY (`obin_auto_id`);

--
-- Indices de la tabla `objects_mother_tables`
--
ALTER TABLE `objects_mother_tables`
  ADD PRIMARY KEY (`mtao_auto_id`);

--
-- Indices de la tabla `objects_projects`
--
ALTER TABLE `objects_projects`
  ADD PRIMARY KEY (`obpr_auto_id`),
  ADD KEY `obpr_id_projects` (`obpr_id_projects`);

--
-- Indices de la tabla `objects_users`
--
ALTER TABLE `objects_users`
  ADD PRIMARY KEY (`obus_auto_id`),
  ADD KEY `obus_id_form` (`obus_id_object`),
  ADD KEY `obus_id_user` (`obus_id_user`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`pro_auto_id`);

--
-- Indices de la tabla `projects_codes`
--
ALTER TABLE `projects_codes`
  ADD PRIMARY KEY (`prco_auto_id`),
  ADD KEY `prco_project_id` (`prco_project_id`);

--
-- Indices de la tabla `projects_objetive_generals`
--
ALTER TABLE `projects_objetive_generals`
  ADD PRIMARY KEY (`pog_auto_id`),
  ADD KEY `pog_project_id` (`pog_project_id`);

--
-- Indices de la tabla `projects_users`
--
ALTER TABLE `projects_users`
  ADD PRIMARY KEY (`pus_auto_id`),
  ADD KEY `pus_id_project` (`pus_id_project`),
  ADD KEY `pus_id_user` (`pus_id_user`);

--
-- Indices de la tabla `system_status`
--
ALTER TABLE `system_status`
  ADD PRIMARY KEY (`sys_auto_id`);

--
-- Indices de la tabla `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`tbse_auto_id`);

--
-- Indices de la tabla `tbl_service_mother_table`
--
ALTER TABLE `tbl_service_mother_table`
  ADD PRIMARY KEY (`tbsede_id_service`);

--
-- Indices de la tabla `users_avatars`
--
ALTER TABLE `users_avatars`
  ADD PRIMARY KEY (`usava_id_user`);

--
-- Indices de la tabla `users_credentials`
--
ALTER TABLE `users_credentials`
  ADD PRIMARY KEY (`usr_user_id`),
  ADD KEY `users_credentials_ibfk_2` (`usr_count_id_type`);

--
-- Indices de la tabla `users_keys`
--
ALTER TABLE `users_keys`
  ADD PRIMARY KEY (`usk_auto_id`);

--
-- Indices de la tabla `user_count_type`
--
ALTER TABLE `user_count_type`
  ADD PRIMARY KEY (`ucty_auto_id`);

--
-- Indices de la tabla `user_data_personals`
--
ALTER TABLE `user_data_personals`
  ADD PRIMARY KEY (`udp_user_id`);

--
-- Indices de la tabla `z_object_1`
--
ALTER TABLE `z_object_1`
  ADD PRIMARY KEY (`id_z_object_1`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `forms_initials`
--
ALTER TABLE `forms_initials`
  MODIFY `fin_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `forms_projects`
--
ALTER TABLE `forms_projects`
  MODIFY `fpr_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `forms_users`
--
ALTER TABLE `forms_users`
  MODIFY `fous_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `log_user_sesions_success`
--
ALTER TABLE `log_user_sesions_success`
  MODIFY `uls_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `mother_tables`
--
ALTER TABLE `mother_tables`
  MODIFY `mta_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `objects_initials`
--
ALTER TABLE `objects_initials`
  MODIFY `obin_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `objects_mother_tables`
--
ALTER TABLE `objects_mother_tables`
  MODIFY `mtao_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `objects_projects`
--
ALTER TABLE `objects_projects`
  MODIFY `obpr_auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `objects_users`
--
ALTER TABLE `objects_users`
  MODIFY `obus_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `pro_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `projects_codes`
--
ALTER TABLE `projects_codes`
  MODIFY `prco_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `projects_objetive_generals`
--
ALTER TABLE `projects_objetive_generals`
  MODIFY `pog_auto_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `projects_users`
--
ALTER TABLE `projects_users`
  MODIFY `pus_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `system_status`
--
ALTER TABLE `system_status`
  MODIFY `sys_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `tbse_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users_keys`
--
ALTER TABLE `users_keys`
  MODIFY `usk_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user_count_type`
--
ALTER TABLE `user_count_type`
  MODIFY `ucty_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `z_object_1`
--
ALTER TABLE `z_object_1`
  MODIFY `id_z_object_1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `forms_projects`
--
ALTER TABLE `forms_projects`
  ADD CONSTRAINT `forms_projects_ibfk_1` FOREIGN KEY (`fpr_id_form`) REFERENCES `forms_initials` (`fin_auto`) ON DELETE CASCADE,
  ADD CONSTRAINT `forms_projects_ibfk_2` FOREIGN KEY (`fpr_id_projects`) REFERENCES `projects` (`pro_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `log_user_sesions_success`
--
ALTER TABLE `log_user_sesions_success`
  ADD CONSTRAINT `log_user_sesions_success_ibfk_1` FOREIGN KEY (`uls_user_id`) REFERENCES `users_keys` (`usk_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mother_tables`
--
ALTER TABLE `mother_tables`
  ADD CONSTRAINT `mother_tables_ibfk_1` FOREIGN KEY (`mta_form_id`) REFERENCES `forms_initials` (`fin_auto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `objects_projects`
--
ALTER TABLE `objects_projects`
  ADD CONSTRAINT `objects_projects_ibfk_1` FOREIGN KEY (`obpr_id_projects`) REFERENCES `projects` (`pro_auto_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `objects_projects_ibfk_2` FOREIGN KEY (`obpr_id_projects`) REFERENCES `objects_initials` (`obin_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `objects_users`
--
ALTER TABLE `objects_users`
  ADD CONSTRAINT `objects_users_ibfk_2` FOREIGN KEY (`obus_id_object`) REFERENCES `objects_initials` (`obin_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `projects_codes`
--
ALTER TABLE `projects_codes`
  ADD CONSTRAINT `projects_codes_ibfk_1` FOREIGN KEY (`prco_project_id`) REFERENCES `projects` (`pro_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `projects_objetive_generals`
--
ALTER TABLE `projects_objetive_generals`
  ADD CONSTRAINT `projects_objetive_generals_ibfk_1` FOREIGN KEY (`pog_project_id`) REFERENCES `projects` (`pro_auto_id`);

--
-- Filtros para la tabla `projects_users`
--
ALTER TABLE `projects_users`
  ADD CONSTRAINT `projects_users_ibfk_1` FOREIGN KEY (`pus_id_project`) REFERENCES `projects` (`pro_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users_avatars`
--
ALTER TABLE `users_avatars`
  ADD CONSTRAINT `users_avatars_ibfk_1` FOREIGN KEY (`usava_id_user`) REFERENCES `users_keys` (`usk_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users_credentials`
--
ALTER TABLE `users_credentials`
  ADD CONSTRAINT `users_credentials_ibfk_1` FOREIGN KEY (`usr_user_id`) REFERENCES `users_keys` (`usk_auto_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_credentials_ibfk_2` FOREIGN KEY (`usr_count_id_type`) REFERENCES `user_count_type` (`ucty_auto_id`);

--
-- Filtros para la tabla `user_data_personals`
--
ALTER TABLE `user_data_personals`
  ADD CONSTRAINT `user_data_personals_ibfk_1` FOREIGN KEY (`udp_user_id`) REFERENCES `users_keys` (`usk_auto_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;