-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2021 a las 15:34:04
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

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
  `tbse_business` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tbse_logo` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tbse_json_input_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tbse_json_input_data`)),
  `tbse_date_created` date NOT NULL,
  `tbse_hour_created` date NOT NULL,
  `tbse_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbse_status` tinyint(1) NOT NULL DEFAULT 1,
  `tbse_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_services`
--

INSERT INTO `tbl_services` (`tbse_auto_id`, `tbse_id_type_service`, `tbse_name`, `tbse_description`, `tbse_business`, `tbse_logo`, `tbse_json_input_data`, `tbse_date_created`, `tbse_hour_created`, `tbse_updated`, `tbse_status`, `tbse_vigence`) VALUES
(1, 1, 'Grupo de Investigación NOVA', 'Ingenierías Eléctrica, Electrónica e Informática -- Ingeniería de Sistemas y Comunicaciones\r\n', NULL, NULL, '[{\"input\":{\"name\":\"Gran \\u00c1rea\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Ingenier\\u00eda y Tecnolog\\u00eda\",\"token\":\"23271155251624812925673900\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"\\u00c1rea\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Ingenier\\u00edas El\\u00e9ctrica, Electr\\u00f3nica e Inform\\u00e1tica -- Ingenier\\u00eda de Sistemas y Comunicaciones\",\"token\":\"23271155421624812942570712\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"CCRG\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"COL0164713\",\"token\":\"23271155551624812955508193\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Fecha de creaci\\u00f3n\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Enero de 2015. Lugar: LA PLATA \\/ HUILA \\/ Centro - Sur \\/ Colombia\",\"token\":\"23271156141624812974574880\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"L\\u00edder\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"HEIMAR HERNAN CORONADO HERNANDEZ\",\"token\":\"23271156321624812992360381\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Instituciones\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"(1) SERVICIO NACIONAL DE APRENDIZAJE SENA (Avalado)\",\"token\":\"23271156401624813000313469\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Programa Nacional\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Ciencia, Tecnolog\\u00eda e Innovaci\\u00f3n en Ingenier\\u00eda\",\"token\":\"23271156561624813016762506\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Programa Nacional Secundario\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Ciencia, Tecnolog\\u00eda e Innovaci\\u00f3n en Ciencias Agropecuarias\",\"token\":\"23271157121624813032308884\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}}]', '2021-06-23', '2021-06-23', '2021-06-27 17:08:16', 1, 1),
(2, 1, 'Grupo de Investigación de La Angostura', 'Campoalegre (H)', NULL, NULL, '[{\"input\":{\"name\":\"aS\",\"type\":\"text\",\"required\":\"true\",\"placeholder\":\"\",\"value\":\"\",\"token\":\"16232137551624502275914641\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[{\"option\":{\"value\":\"as\"}}],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"sdfsdf\",\"type\":\"checkbox\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"token\":\"16232142271624502547540255\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[{\"option\":{\"value\":\"sdfsdf\"}},{\"option\":{\"value\":\"dsfsdf\"}},{\"option\":{\"value\":\"sdf\"}}],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}}]', '2021-06-23', '2021-06-23', '2021-06-27 17:07:51', 1, 1),
(3, 2, 'Estrategias Tecnológicas para el fortalecimiento de la cadena productiva, sostenibilidad ambiental y comercialización del cacao en el departamento del Huila.', '82 - Fomento de la innovación y desarrollo tecnológico en las empresas', NULL, NULL, '[{\"input\":{\"name\":\"Tipo de proyecto\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Desarrollado en alianza con empresa\",\"token\":\"17251545561624653956820657\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0}},{\"input\":{\"name\":\"C\\u00f3digo del proyecto\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"8635-SGPS-2021\",\"token\":\"17251545591624653959131500\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0}},{\"input\":{\"name\":\"Estado del proyecto\",\"type\":\"radio\",\"required\":\"true\",\"placeholder\":\"\",\"value\":\"on\",\"token\":\"17252259151624679955060361\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[{\"option\":{\"value\":\"En ejecuci\\u00f3n\"}},{\"option\":{\"value\":\"Finalizado\"}}],\"sub_option_other\":0}},{\"input\":{\"name\":\"Centro de formaci\\u00f3n\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Centro de Desarrollo Agroempresarial y Tur\\u00edstico del Huila\",\"token\":\"1726048581624686538276710\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"L\\u00ednea de investigaci\\u00f3n\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Desarrollo tecnol\\u00f3gico e innovaci\\u00f3n industrial\",\"token\":\"172604911624686541300798\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"L\\u00ednea program\\u00e1tica\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Fomento de la innovaci\\u00f3n y desarrollo tecnol\\u00f3gico en las empresas\",\"token\":\"1727123381624813418507913\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Red de conocimiento sectorial\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Red Agr\\u00edcola\",\"token\":\"172712481624813448871491\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}}]', '2021-06-23', '2021-06-23', '2021-06-27 17:09:05', 1, 1),
(4, 3, 'Ambiental', 'Elder Rendón Rengifo, Daniel Rodríguez Acosta', NULL, NULL, '[{\"input\":{\"name\":\"Instructor que dise\\u00f1o el instrumento de investigaci\\u00f3n\",\"type\":\"text\",\"required\":\"true\",\"placeholder\":\"\",\"value\":\"Daniel Rodr\\u00edguez Acosta -\",\"token\":\"c20231441381624477298201376\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[{\"option\":{\"value\":\"A\"}},{\"option\":{\"value\":\"B\"}},{\"option\":{\"value\":\"C\"}}],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Titulo de proyecto\",\"type\":\"textarea\",\"required\":\"true\",\"placeholder\":\"\",\"value\":\"Estrategias Tecnol\\u00f3gicas para el fortalecimiento de la cadena productiva, sostenibilidad ambiental y comercializaci\\u00f3n del cacao en el departamento del Huila.\\t\",\"token\":\"c20231441501624477310090255\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Fecha\",\"type\":\"date\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"token\":\"4272240391624851639358157\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Municipio\",\"type\":\"text\",\"required\":\"true\",\"placeholder\":\"\",\"value\":\"\",\"token\":\"c20231442161624477336789520\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Vereda\",\"type\":\"text\",\"required\":\"true\",\"placeholder\":\"\",\"value\":\"\",\"token\":\"c20231448581624477738228734\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Nombre de la finca\",\"type\":\"text\",\"required\":\"true\",\"placeholder\":\"\",\"value\":\"\",\"token\":\"c20231449151624477755893958\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Coordenadas geogr\\u00e1ficas del predio N:\",\"type\":\"text\",\"required\":\"false\",\"placeholder\":\"\",\"value\":\"\",\"token\":\"c20231449491624477789065204\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Coordenadas geogr\\u00e1ficas del predio W:\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"token\":\"c20231450331624477833781403\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"ASNM\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"token\":\"4272237131624851433337809\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Nombre del propietario\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"token\":\"c20231451161624477876657628\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}},{\"input\":{\"name\":\"Nombre del investigador que aplica el instrumento\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"token\":\"c20231451381624477898107201\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}}]', '2021-06-23', '2021-06-23', '2021-07-01 15:43:51', 1, 1),
(5, 3, 'Componente empresarial', 'Yubeli Martínez Sánchez', NULL, NULL, '[]', '2021-06-23', '2021-06-23', '2021-06-27 17:11:10', 1, 1),
(6, 3, 'Componente de Lixiviados', 'Dennis Milena Villamil', NULL, NULL, NULL, '2021-06-23', '2021-06-23', '2021-06-27 17:11:36', 1, 1),
(24, 4, 'asd', 'asdas', NULL, NULL, '[]', '2021-06-30', '2021-06-30', '2021-06-30 22:16:00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_service_permissions`
--

CREATE TABLE `tbl_service_permissions` (
  `tbsep_auto_id` int(11) NOT NULL,
  `tbsep_id_service` int(11) NOT NULL,
  `tbsep_id_user` int(11) NOT NULL,
  `tbsep_create` tinyint(1) NOT NULL DEFAULT 0,
  `tbsep_read` tinyint(1) NOT NULL DEFAULT 0,
  `tbsep_update` tinyint(1) NOT NULL DEFAULT 0,
  `tbsep_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_type_service`
--

CREATE TABLE `tbl_type_service` (
  `tbtse_auto_id` int(11) NOT NULL,
  `tbtse_prefix` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tbtse_name` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `tbtse_description` text COLLATE utf8_spanish_ci NOT NULL,
  `tbtse_date_created` date NOT NULL,
  `tbtse_hour_created` time NOT NULL,
  `tbtse_status` tinyint(1) NOT NULL DEFAULT 1,
  `tbtse_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_type_service`
--

INSERT INTO `tbl_type_service` (`tbtse_auto_id`, `tbtse_prefix`, `tbtse_name`, `tbtse_description`, `tbtse_date_created`, `tbtse_hour_created`, `tbtse_status`, `tbtse_vigence`) VALUES
(1, 'z1_group_', 'Grupos de investigacion', 'Grupos de investigacion o equipos de trabajo', '2021-05-10', '14:49:09', 1, 1),
(2, 'z2_project_', 'Proyectos', 'Proyectos', '2021-05-10', '14:49:09', 1, 1),
(3, 'z3_entity_', 'Entidades', 'Objeto o concepto ', '2021-05-10', '14:53:04', 1, 1),
(4, 'z4_form_', 'Formularios', 'Espacios para la recoleccion personalizadas de datos', '2021-05-10', '14:53:04', 1, 1);

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
(1, '0', '2021-04-25', '04:27:50', '2021-04-25 09:27:50');

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
(1, 1, 'syrivera89@misena.edu.co', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '2021-04-25 09:27:50');

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
(1, 'syrivera89@misena.edu.co', '2021-04-25', '11:04:50', '2021-04-25 09:27:50', 1, 1);

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
(1, 'Correo electronico', '2021-04-21', '2021-04-21 21:26:12', 0, 0);

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
(1, 'Sergio Rivera', 'Masculino', '0000-00-00', 'TI', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z3_entity_4`
--

CREATE TABLE `z3_entity_4` (
  `id_z3_entity_4` int(11) NOT NULL,
  `c20231441381624477298201376_4` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `c20231441501624477310090255_4` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `4272240391624851639358157_4` date DEFAULT NULL,
  `c20231442161624477336789520_4` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `c20231448581624477738228734_4` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `c20231449151624477755893958_4` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `c20231449491624477789065204_4` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `c20231450331624477833781403_4` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `4272237131624851433337809_4` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `c20231451161624477876657628_4` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `c20231451381624477898107201_4` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `z3_entity_4_hour_created` time NOT NULL,
  `z3_entity_4_date_created` date NOT NULL,
  `z3_entity_4_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `z3_entity_4_status` tinyint(1) NOT NULL DEFAULT 1,
  `z3_entity_4_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `z3_entity_4`
--

INSERT INTO `z3_entity_4` (`id_z3_entity_4`, `c20231441381624477298201376_4`, `c20231441501624477310090255_4`, `4272240391624851639358157_4`, `c20231442161624477336789520_4`, `c20231448581624477738228734_4`, `c20231449151624477755893958_4`, `c20231449491624477789065204_4`, `c20231450331624477833781403_4`, `4272237131624851433337809_4`, `c20231451161624477876657628_4`, `c20231451381624477898107201_4`, `z3_entity_4_hour_created`, `z3_entity_4_date_created`, `z3_entity_4_updated`, `z3_entity_4_status`, `z3_entity_4_vigence`) VALUES
(1, 'Daniel Rodríguez Acosta', 'Estrategias Tecnológicas para el fortalecimiento de la cadena productiva, sostenibilidad ambiental y comercialización del cacao en el departamento del Huila.	', '2021-04-23', 'Paicol', 'Matanzas', 'Buenos Aires', '2-27-50.97', '75-47-20.61', '919.7', 'Algemiro Cabrera Vargas', 'Elder Rendón Rengifo', '22:42:19', '2021-06-27', '2021-06-28 03:42:19', 1, 1),
(2, 'Daniel Rodríguez Acosta', 'Estrategias Tecnológicas para el fortalecimiento de la cadena productiva, sostenibilidad ambiental y comercialización del cacao en el departamento del Huila.	', '2021-04-23', 'Paicol', 'Primavera', 'Rancho Don Juan', '2 24 8.25', '75 45 51.17', '1100', 'Juan Carlos Diaz Charri', 'Sergio Yamit Rivera Flor', '13:42:17', '2021-06-28', '2021-06-28 18:42:17', 1, 1),
(3, 'Daniel Rodríguez Acosta', 'Estrategias Tecnológicas para el fortalecimiento de la cadena productiva, sostenibilidad ambiental y comercialización del cacao en el departamento del Huila.	', '2021-04-21', 'La Plata', 'Cabuyal', 'La Unión', '2 23 51.74', '75 51 51.68', '', 'José Ramiro Rojas Rojas', 'Elder Rendón Rengifo', '13:44:44', '2021-06-28', '2021-06-28 18:44:44', 1, 1),
(4, 'Daniel Rodríguez Acosta', 'Estrategias Tecnológicas para el fortalecimiento de la cadena productiva, sostenibilidad ambiental y comercialización del cacao en el departamento del Huila.	', '2021-04-20', 'La Plata', 'Cabuyal', 'La Esmeralda', '', '', '', 'Eduardo Pérez Pérez ', 'Elder Rendón Rengifo', '13:46:47', '2021-06-28', '2021-06-28 18:46:47', 1, 1),
(5, 'Daniel Rodríguez Acosta', 'Estrategias Tecnológicas para el fortalecimiento de la cadena productiva, sostenibilidad ambiental y comercialización del cacao en el departamento del Huila.	', '2021-04-21', 'La Plata', 'Cabuyal', 'Villa Lorena', '', '', '', 'Salomón Pérez Pérez', 'Elder Rendón Rengifo', '13:48:41', '2021-06-28', '2021-06-28 18:48:41', 1, 1),
(6, 'Daniel Rodríguez Acosta', 'Estrategias Tecnológicas para el fortalecimiento de la cadena productiva, sostenibilidad ambiental y comercialización del cacao en el departamento del Huila.	', '2021-04-22', 'La Plata', 'Cabuyal', 'San Pablo', '2 23 47.04', '75 51 45.61', '1194', 'Néider Enrique Trujillo', 'Elder Rendon Rengifo', '13:51:07', '2021-06-28', '2021-06-28 18:51:07', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z4_form_24`
--

CREATE TABLE `z4_form_24` (
  `id_z4_form_24` int(11) NOT NULL,
  `z4_form_24_hour_created` time NOT NULL,
  `z4_form_24_date_created` date NOT NULL,
  `z4_form_24_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `z4_form_24_status` tinyint(1) NOT NULL DEFAULT 1,
  `z4_form_24_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `log_user_sesions_success`
--
ALTER TABLE `log_user_sesions_success`
  ADD PRIMARY KEY (`uls_auto_id`),
  ADD KEY `user_log_sesions_ibfk_1` (`uls_user_id`);

--
-- Indices de la tabla `system_status`
--
ALTER TABLE `system_status`
  ADD PRIMARY KEY (`sys_auto_id`);

--
-- Indices de la tabla `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`tbse_auto_id`),
  ADD KEY `tbl_services_ibfk_1` (`tbse_id_type_service`);

--
-- Indices de la tabla `tbl_service_permissions`
--
ALTER TABLE `tbl_service_permissions`
  ADD PRIMARY KEY (`tbsep_auto_id`);

--
-- Indices de la tabla `tbl_type_service`
--
ALTER TABLE `tbl_type_service`
  ADD PRIMARY KEY (`tbtse_auto_id`);

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
-- Indices de la tabla `z3_entity_4`
--
ALTER TABLE `z3_entity_4`
  ADD PRIMARY KEY (`id_z3_entity_4`);

--
-- Indices de la tabla `z4_form_24`
--
ALTER TABLE `z4_form_24`
  ADD PRIMARY KEY (`id_z4_form_24`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `log_user_sesions_success`
--
ALTER TABLE `log_user_sesions_success`
  MODIFY `uls_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `system_status`
--
ALTER TABLE `system_status`
  MODIFY `sys_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `tbse_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tbl_service_permissions`
--
ALTER TABLE `tbl_service_permissions`
  MODIFY `tbsep_auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_type_service`
--
ALTER TABLE `tbl_type_service`
  MODIFY `tbtse_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users_keys`
--
ALTER TABLE `users_keys`
  MODIFY `usk_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user_count_type`
--
ALTER TABLE `user_count_type`
  MODIFY `ucty_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `z3_entity_4`
--
ALTER TABLE `z3_entity_4`
  MODIFY `id_z3_entity_4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `z4_form_24`
--
ALTER TABLE `z4_form_24`
  MODIFY `id_z4_form_24` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `log_user_sesions_success`
--
ALTER TABLE `log_user_sesions_success`
  ADD CONSTRAINT `log_user_sesions_success_ibfk_1` FOREIGN KEY (`uls_user_id`) REFERENCES `users_keys` (`usk_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD CONSTRAINT `tbl_services_ibfk_1` FOREIGN KEY (`tbse_id_type_service`) REFERENCES `tbl_type_service` (`tbtse_auto_id`);

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
