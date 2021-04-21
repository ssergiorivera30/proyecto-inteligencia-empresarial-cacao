-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2021 a las 01:06:08
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

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
(6, 'Ambiental', 'Descripción del formulario', '2021-04-12', '2021-04-12 20:12:59', 1, 1);

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
(1, 1, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-21', '16:59:54', '2021-04-21 21:59:54');

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
  `mta_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`mta_json`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mother_tables`
--

INSERT INTO `mother_tables` (`mta_auto_id`, `mta_form_id`, `mta_date_created`, `mta_hour_created`, `mta_updated`, `mta_status`, `mta_vigence`, `mta_json`) VALUES
(58, 6, '2021-04-12', '17:52:24', '2021-04-12 22:52:24', 1, 1, '[{\"input\":{\"name\":\"Fecha\",\"type\":\"date\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Nombres\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Apellidos\",\"type\":\"text\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Edad\",\"type\":\"number\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[]}},{\"input\":{\"name\":\"Genero \",\"type\":\"radio\",\"required\":false,\"placeholder\":\"\",\"value\":\"\",\"minlength\":\"\",\"maxlength\":\"\",\"size\":\"\",\"min\":\"\",\"max\":\"\",\"edit\":0,\"options\":[{\"option\":{\"value\":\"Masculino\"}},{\"option\":{\"value\":\"Femenino\"}}]}}]');

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
(1, 'Estrategias Tecnológicas para el fortalecimiento de la cadena productiva del cacao en el deparatmento del Huila.', '2021-04-12', '11:11:15', '2021-04-12 16:11:15', 1, 1);

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
(1, 1, '8635-SGPS-2021', 'Servicio Nacional de Aprendizaje - SENA');

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
(1, 1, 'syrivera89@misena.edu.co', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-21 21:49:14');

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
(1, 'syrivera89@misena.edu.co', '2021-04-21', '05:04:38', '2021-04-21 03:42:38', 1, 1);

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
(1, 'Sergio Yamit Rivera', 'Masculino', '0000-00-00', 'TI', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `forms_initials`
--
ALTER TABLE `forms_initials`
  ADD PRIMARY KEY (`fin_auto`);

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
  ADD KEY `mta_form_id` (`mta_form_id`);

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
-- AUTO_INCREMENT de la tabla `forms_initials`
--
ALTER TABLE `forms_initials`
  MODIFY `fin_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `log_user_sesions_success`
--
ALTER TABLE `log_user_sesions_success`
  MODIFY `uls_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mother_tables`
--
ALTER TABLE `mother_tables`
  MODIFY `mta_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `pro_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `projects_codes`
--
ALTER TABLE `projects_codes`
  MODIFY `prco_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `projects_objetive_generals`
--
ALTER TABLE `projects_objetive_generals`
  MODIFY `pog_auto_id` int(10) NOT NULL AUTO_INCREMENT;

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
-- Filtros para la tabla `mother_tables`
--
ALTER TABLE `mother_tables`
  ADD CONSTRAINT `mother_tables_ibfk_1` FOREIGN KEY (`mta_form_id`) REFERENCES `forms_initials` (`fin_auto`) ON DELETE CASCADE;

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
