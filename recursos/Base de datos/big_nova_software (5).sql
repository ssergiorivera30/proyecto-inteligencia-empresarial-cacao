-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2021 a las 18:50:09
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.5

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
(12, 1, 'Grupo de investigación NOVA', 'Grupo de Investigación NOVA - Centro de Desarrollo Agroempresarial y Turístico del Huila', NULL, NULL, '[{\"input\":{\"name\":\"Direcci\\u00f3n\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"#5-1 a, Cra. 7 #591, La Plata, Huila\",\"token\":\"12231112271624464747070903\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}}]', '2021-06-23', '2021-06-23', '2021-06-23 16:12:32', 1, 1),
(13, 2, 'Trazabilidad de cacao', 'Cacao', NULL, NULL, '[{\"input\":{\"name\":\"Linea program\\u00e1tica\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"Innovaci\\u00f3n\",\"token\":\"13231115191624464919160130\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[],\"sub_option_other\":0,\"sub_options_types\":{\"option1\":{\"type\":\"text\"},\"option2\":{\"type\":\"file\"}},\"sub_options_values\":[]}}]', '2021-06-23', '2021-06-23', '2021-06-23 16:15:23', 1, 1),
(14, 3, 'Componente Ambiental', 'Ambiental', NULL, NULL, NULL, '2021-06-23', '2021-06-23', '2021-06-23 16:16:17', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_type_service`
--

CREATE TABLE `tbl_type_service` (
  `tbtse_auto_id` int(11) NOT NULL,
  `tbtse_prefix` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
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
(1, 'z_groups', 'Grupos de investigacion', 'Grupos de investigacion o equipos de trabajo', '2021-05-10', '14:49:09', 1, 1),
(2, 'z_projects', 'Proyectos', 'Proyectos', '2021-05-10', '14:49:09', 1, 1),
(3, 'z_entitys', 'Entidades', 'Objeto o concepto ', '2021-05-10', '14:53:04', 1, 1),
(4, 'z_forms', 'Formularios', 'Espacios para la recoleccion personalizadas de datos', '2021-05-10', '14:53:04', 1, 1);

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
  MODIFY `tbse_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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