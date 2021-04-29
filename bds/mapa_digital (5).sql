-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2021 a las 23:34:39
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
-- Base de datos: `mapa_digital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `cit_auto_id` int(11) NOT NULL,
  `cit_name` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `cit_created` datetime NOT NULL,
  `cit_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `cit_status` tinyint(1) NOT NULL DEFAULT 0,
  `cit_vigence` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`cit_auto_id`, `cit_name`, `cit_created`, `cit_updated`, `cit_status`, `cit_vigence`) VALUES
(1, 'La Plata', '2021-04-02 21:47:07', '2021-04-03 02:47:26', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location_basics`
--

CREATE TABLE `location_basics` (
  `lba_auto_id` int(10) NOT NULL,
  `lba_id_city` int(10) NOT NULL,
  `lba_id_type` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `lba_name` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `lba_direction` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `lba_created` datetime NOT NULL,
  `lba_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lba_status` tinyint(1) NOT NULL DEFAULT 3,
  `lba_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `location_basics`
--

INSERT INTO `location_basics` (`lba_auto_id`, `lba_id_city`, `lba_id_type`, `lba_name`, `lba_direction`, `lba_created`, `lba_updated`, `lba_status`, `lba_vigence`) VALUES
(1, 1, 'iglesia', 'asda', 'sdas', '2021-04-16 21:49:04', '2021-04-17 02:49:04', 3, 1),
(2, 1, 'puente', 'asdas', 'asds', '2021-04-16 21:49:16', '2021-04-17 02:49:16', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location_coordinates`
--

CREATE TABLE `location_coordinates` (
  `lco_auto_id` int(11) NOT NULL,
  `lco_id_location` int(10) NOT NULL,
  `lco_latitud` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `lco_longitud` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `location_coordinates`
--

INSERT INTO `location_coordinates` (`lco_auto_id`, `lco_id_location`, `lco_latitud`, `lco_longitud`) VALUES
(1, 1, '2.3855104', '-75.890688'),
(2, 2, '2.3855104', '-75.890688');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location_descriptions`
--

CREATE TABLE `location_descriptions` (
  `lde_auto_id` int(11) NOT NULL,
  `lde_id_location` int(10) NOT NULL,
  `lde_id_user` int(11) NOT NULL,
  `lde_description` text COLLATE utf8_spanish_ci NOT NULL,
  `lde_created` datetime NOT NULL,
  `lde_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lde_status` tinyint(1) NOT NULL DEFAULT 3,
  `lde_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `location_descriptions`
--

INSERT INTO `location_descriptions` (`lde_auto_id`, `lde_id_location`, `lde_id_user`, `lde_description`, `lde_created`, `lde_updated`, `lde_status`, `lde_vigence`) VALUES
(1, 1, 1, 'asdasd', '2021-04-16 21:49:04', '2021-04-17 02:49:04', 3, 1),
(2, 2, 1, 'asdasd', '2021-04-16 21:49:16', '2021-04-17 02:49:16', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location_images`
--

CREATE TABLE `location_images` (
  `lim_auto_id` int(11) NOT NULL,
  `lim_location_id` int(10) NOT NULL,
  `lim_image` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `lim_created` datetime NOT NULL,
  `lim_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lim_status` tinyint(1) NOT NULL DEFAULT 1,
  `lim_vigence` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_users`
--

CREATE TABLE `log_users` (
  `los_auto_id` int(11) NOT NULL,
  `los_email` text COLLATE utf8_spanish_ci NOT NULL,
  `los_data` text COLLATE utf8_spanish_ci NOT NULL,
  `los_data_cy` text COLLATE utf8_spanish_ci NOT NULL,
  `los_date` date NOT NULL,
  `los_hour` time NOT NULL,
  `los_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `log_users`
--

INSERT INTO `log_users` (`los_auto_id`, `los_email`, `los_data`, `los_data_cy`, `los_date`, `los_hour`, `los_updated`) VALUES
(1, 'syrivera89@misena.edu.co', 'asdasdasd', '00ea1da4192a2030f9ae023de3b3143ed647bbab', '2021-04-14', '15:28:07', '2021-04-14 20:28:07'),
(2, 'syrivera89@misena.edu.co', 'asdasdasd', '00ea1da4192a2030f9ae023de3b3143ed647bbab', '2021-04-14', '15:28:37', '2021-04-14 20:28:37'),
(3, 'syrivera89@misena.edu.co', '124568', '5dadf7e72808a6282648939ad3fd02a88843df7d', '2021-04-14', '15:31:48', '2021-04-14 20:31:48'),
(4, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:05:56', '2021-04-14 21:05:56'),
(5, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:08:39', '2021-04-14 21:08:39'),
(6, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:09:52', '2021-04-14 21:09:52'),
(7, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:14:29', '2021-04-14 21:14:29'),
(8, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:23:08', '2021-04-14 21:23:08'),
(9, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:35:56', '2021-04-14 21:35:56'),
(10, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:36:02', '2021-04-14 21:36:02'),
(11, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:36:17', '2021-04-14 21:36:17'),
(12, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:37:12', '2021-04-14 21:37:12'),
(13, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:58:25', '2021-04-14 21:58:25'),
(14, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:58:30', '2021-04-14 21:58:30'),
(15, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '16:58:49', '2021-04-14 21:58:49'),
(16, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:04:31', '2021-04-14 22:04:31'),
(17, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:04:44', '2021-04-14 22:04:44'),
(18, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:05:16', '2021-04-14 22:05:16'),
(19, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:06:09', '2021-04-14 22:06:09'),
(20, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:06:20', '2021-04-14 22:06:20'),
(21, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:06:40', '2021-04-14 22:06:40'),
(22, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:06:48', '2021-04-14 22:06:48'),
(23, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:07:11', '2021-04-14 22:07:11'),
(24, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:07:22', '2021-04-14 22:07:22'),
(25, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:07:45', '2021-04-14 22:07:45'),
(26, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:07:54', '2021-04-14 22:07:54'),
(27, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:07:59', '2021-04-14 22:07:59'),
(28, 'syrivera89@misena.edu.co', '1234567', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '2021-04-14', '17:10:05', '2021-04-14 22:10:05'),
(29, 'syrivera89@misena.edu.co', '1234567', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '2021-04-14', '17:16:02', '2021-04-14 22:16:02'),
(30, 'syrivera89@misena.edu.co', '1234568877', 'f470f844dac91e749f8398adcef95c5df2256486', '2021-04-14', '17:16:16', '2021-04-14 22:16:16'),
(31, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:16:33', '2021-04-14 22:16:33'),
(32, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:17:23', '2021-04-14 22:17:23'),
(33, 'syrivera89@misena.edu.cos', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:17:53', '2021-04-14 22:17:53'),
(34, 'syrivera89@misena.edu.cos', '1234567', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '2021-04-14', '17:17:58', '2021-04-14 22:17:58'),
(35, 'syrivera89@misena.edu.co', '1234567', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '2021-04-14', '17:18:01', '2021-04-14 22:18:01'),
(36, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:18:03', '2021-04-14 22:18:03'),
(37, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14', '17:18:24', '2021-04-14 22:18:24'),
(38, 'syrivera89@misena.edu.co', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-16', '21:48:55', '2021-04-17 02:48:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `usr_auto_id` int(11) NOT NULL,
  `usr_name` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `usr_email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usr_password` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `usr_create` datetime NOT NULL,
  `usr_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `usr_status` tinyint(4) NOT NULL,
  `usr_vigence` tinyint(4) NOT NULL,
  `user_pass` varchar(120) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`usr_auto_id`, `usr_name`, `usr_email`, `usr_password`, `usr_create`, `usr_update`, `usr_status`, `usr_vigence`, `user_pass`) VALUES
(1, 'Adriana Marcela Valencia Cardona', 'amvalenciac@sena.edu.co', '433be8d485237619e92baa1afb0de829a589b061', '2021-04-14 15:52:20', '2021-04-14 21:03:22', 1, 1, 'amvalenciac'),
(2, 'Sergio Yamit Rivera Flor', 'syrivera89@misena.edu.co', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-04-14 16:03:46', '2021-04-14 21:06:17', 1, 1, '123456'),
(3, 'Gilberto Murcia ramos', 'gmurciar@sena.edu.co', 'd8239684b78c1a6c8122f8392c374f5d109f39c9', '2021-04-14 16:06:22', '2021-04-14 21:08:03', 1, 1, 'gmurciar'),
(4, 'William Orlando Triana Perdomo', 'wtrianap@sena.edu.co', '35803450711ca3e28319798c3a02bf6bbe971316', '2021-04-14 16:07:18', '2021-04-14 21:08:03', 1, 1, 'wtrianap');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cit_auto_id`);

--
-- Indices de la tabla `location_basics`
--
ALTER TABLE `location_basics`
  ADD PRIMARY KEY (`lba_auto_id`),
  ADD KEY `lba_id_city` (`lba_id_city`);

--
-- Indices de la tabla `location_coordinates`
--
ALTER TABLE `location_coordinates`
  ADD PRIMARY KEY (`lco_auto_id`),
  ADD KEY `lco_id_location` (`lco_id_location`);

--
-- Indices de la tabla `location_descriptions`
--
ALTER TABLE `location_descriptions`
  ADD PRIMARY KEY (`lde_auto_id`),
  ADD KEY `lde_id_location` (`lde_id_location`);

--
-- Indices de la tabla `location_images`
--
ALTER TABLE `location_images`
  ADD PRIMARY KEY (`lim_auto_id`),
  ADD KEY `lim_location_id` (`lim_location_id`);

--
-- Indices de la tabla `log_users`
--
ALTER TABLE `log_users`
  ADD PRIMARY KEY (`los_auto_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usr_auto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `cit_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `location_basics`
--
ALTER TABLE `location_basics`
  MODIFY `lba_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `location_coordinates`
--
ALTER TABLE `location_coordinates`
  MODIFY `lco_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `location_descriptions`
--
ALTER TABLE `location_descriptions`
  MODIFY `lde_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `location_images`
--
ALTER TABLE `location_images`
  MODIFY `lim_auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `log_users`
--
ALTER TABLE `log_users`
  MODIFY `los_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `usr_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `location_basics`
--
ALTER TABLE `location_basics`
  ADD CONSTRAINT `location_basics_ibfk_1` FOREIGN KEY (`lba_id_city`) REFERENCES `cities` (`cit_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `location_coordinates`
--
ALTER TABLE `location_coordinates`
  ADD CONSTRAINT `location_coordinates_ibfk_1` FOREIGN KEY (`lco_id_location`) REFERENCES `location_basics` (`lba_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `location_descriptions`
--
ALTER TABLE `location_descriptions`
  ADD CONSTRAINT `location_descriptions_ibfk_1` FOREIGN KEY (`lde_id_location`) REFERENCES `location_basics` (`lba_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `location_images`
--
ALTER TABLE `location_images`
  ADD CONSTRAINT `location_images_ibfk_1` FOREIGN KEY (`lim_location_id`) REFERENCES `location_basics` (`lba_auto_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
