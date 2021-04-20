-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2021 a las 16:32:34
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
-- Base de datos: `bd_occicafe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffee_analysis_result`
--

CREATE TABLE `coffee_analysis_result` (
  `car_auto_id` int(10) NOT NULL,
  `car_coffee_entry_id` int(10) NOT NULL,
  `car_destare` float NOT NULL,
  `car_net_kilos` float NOT NULL,
  `car_cup` float NOT NULL,
  `car_factor` float NOT NULL,
  `car_line` int(10) NOT NULL,
  `car_variety` int(10) NOT NULL,
  `car_observations` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `car_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coffee_analysis_result`
--

INSERT INTO `coffee_analysis_result` (`car_auto_id`, `car_coffee_entry_id`, `car_destare`, `car_net_kilos`, `car_cup`, `car_factor`, `car_line`, `car_variety`, `car_observations`, `car_status`) VALUES
(10, 73, 12, 0, 0, 0, 3, 6, '', 1),
(11, 74, 2, 2, 2, 2, 2, 3, '', 1),
(22, 82, 0, 2, 0, 0, 3, 1, 'OBSERVACIONES SENCILLAS', 1),
(23, 78, 0, 0, 0, 0, 3, 0, '', 1),
(24, 79, 0, 0, 8, 0, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffee_body`
--

CREATE TABLE `coffee_body` (
  `cb_auto_id` int(11) NOT NULL,
  `cb_coffee_entry_id` int(10) NOT NULL,
  `cb_burbujeante` tinyint(1) NOT NULL DEFAULT 1,
  `cb_cremoso` tinyint(1) NOT NULL DEFAULT 1,
  `cb_delicado` tinyint(1) NOT NULL DEFAULT 1,
  `cb_sedoso` tinyint(1) NOT NULL DEFAULT 1,
  `cb_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coffee_body`
--

INSERT INTO `coffee_body` (`cb_auto_id`, `cb_coffee_entry_id`, `cb_burbujeante`, `cb_cremoso`, `cb_delicado`, `cb_sedoso`, `cb_status`) VALUES
(7, 75, 0, 0, 0, 0, 1),
(8, 74, 0, 0, 0, 0, 1),
(9, 78, 0, 1, 0, 0, 1),
(10, 79, 0, 0, 0, 1, 1),
(11, 73, 0, 1, 0, 0, 1),
(12, 82, 0, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffee_defects`
--

CREATE TABLE `coffee_defects` (
  `cd_auto_id` int(10) NOT NULL,
  `cd_coffee_entry_id` int(10) NOT NULL,
  `cd_aspero` tinyint(1) NOT NULL DEFAULT 0,
  `cd_fenol` tinyint(1) NOT NULL DEFAULT 0,
  `cd_moho` tinyint(1) NOT NULL DEFAULT 0,
  `cd_sucio` tinyint(1) NOT NULL DEFAULT 0,
  `cd_astringente` tinyint(1) NOT NULL DEFAULT 0,
  `cd_fermento` tinyint(1) NOT NULL DEFAULT 0,
  `cd_papeloso` tinyint(1) NOT NULL DEFAULT 0,
  `cd_terroso` tinyint(1) NOT NULL DEFAULT 0,
  `cd_cereal` tinyint(1) NOT NULL DEFAULT 0,
  `cd_ferment_ceb` tinyint(1) NOT NULL DEFAULT 0,
  `cd_reposo` tinyint(1) NOT NULL DEFAULT 0,
  `cd_verde` tinyint(1) NOT NULL DEFAULT 0,
  `cd_contaminado` tinyint(1) NOT NULL DEFAULT 0,
  `cd_ferment_pina` tinyint(1) NOT NULL DEFAULT 0,
  `cd_stinker` tinyint(1) NOT NULL DEFAULT 0,
  `cd_quimico` tinyint(1) NOT NULL DEFAULT 0,
  `cd_vegetal` tinyint(1) NOT NULL DEFAULT 0,
  `cd_otros` tinyint(1) NOT NULL DEFAULT 0,
  `cd_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coffee_defects`
--

INSERT INTO `coffee_defects` (`cd_auto_id`, `cd_coffee_entry_id`, `cd_aspero`, `cd_fenol`, `cd_moho`, `cd_sucio`, `cd_astringente`, `cd_fermento`, `cd_papeloso`, `cd_terroso`, `cd_cereal`, `cd_ferment_ceb`, `cd_reposo`, `cd_verde`, `cd_contaminado`, `cd_ferment_pina`, `cd_stinker`, `cd_quimico`, `cd_vegetal`, `cd_otros`, `cd_status`) VALUES
(25, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(26, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(27, 78, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
(28, 79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(29, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1),
(30, 82, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffee_entry_data`
--

CREATE TABLE `coffee_entry_data` (
  `ed_auto_id` int(10) NOT NULL,
  `ed_purchase_id` int(10) NOT NULL,
  `ed_type_coffee` enum('Verde','Seco','','') COLLATE utf8_spanish_ci NOT NULL,
  `ed_quantity_bags` float NOT NULL,
  `ed_kg_bts` float NOT NULL,
  `ed_kg_nts` float NOT NULL,
  `ed_status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coffee_entry_data`
--

INSERT INTO `coffee_entry_data` (`ed_auto_id`, `ed_purchase_id`, `ed_type_coffee`, `ed_quantity_bags`, `ed_kg_bts`, `ed_kg_nts`, `ed_status`) VALUES
(73, 73, 'Verde', 2, 80, 80, 1),
(74, 74, 'Verde', 3, 120, 120, 1),
(75, 75, 'Verde', 3, 120, 120, 1),
(76, 76, 'Seco', 2, 80, 80, 1),
(77, 77, 'Verde', 5, 250, 249, 1),
(78, 78, 'Verde', 2, 80, 80, 1),
(79, 79, 'Verde', 2, 80, 80, 1),
(80, 80, 'Seco', 10, 400, 400, 1),
(81, 81, 'Verde', 2, 95, 95, 1),
(82, 82, 'Verde', 3, 121, 121, 1),
(83, 83, 'Verde', 8, 400, 400, 1),
(84, 84, 'Verde', 20, 2000, 2000, 1),
(85, 85, 'Seco', 2, 140, 140, 1),
(86, 86, 'Verde', 20, 20, 20, 1),
(87, 87, 'Seco', 25, 2500, 2500, 1),
(88, 88, 'Seco', 8, 400, 400, 1),
(89, 89, 'Verde', 1, 47, 47, 1),
(90, 90, 'Seco', 10, 1230, 1230, 1),
(91, 91, 'Seco', 4, 200, 200, 1),
(92, 92, 'Verde', 1, 52, 52, 1),
(93, 93, 'Seco', 12, 700, 700, 1),
(94, 94, 'Verde', 5, 250, 250, 1),
(95, 95, 'Seco', 12, 650, 650, 1),
(96, 96, 'Verde', 3, 124, 122, 1),
(97, 97, 'Seco', 25, 1400, 1400, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffee_flavor`
--

CREATE TABLE `coffee_flavor` (
  `cfl_auto_id` int(10) NOT NULL,
  `cfl_coffee_entry_id` int(10) NOT NULL,
  `cfl_chocolate` tinyint(1) NOT NULL DEFAULT 1,
  `cfl_panela` tinyint(1) NOT NULL DEFAULT 1,
  `cfl_citrico` tinyint(1) NOT NULL DEFAULT 1,
  `cfl_nueces` tinyint(1) NOT NULL DEFAULT 1,
  `cfl_f_amarillas` tinyint(1) NOT NULL DEFAULT 1,
  `cfl_vainilla` tinyint(1) NOT NULL DEFAULT 1,
  `cfl_f_rojas` tinyint(1) NOT NULL DEFAULT 1,
  `cfl_veg_dulces` tinyint(1) NOT NULL DEFAULT 1,
  `cfl_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coffee_flavor`
--

INSERT INTO `coffee_flavor` (`cfl_auto_id`, `cfl_coffee_entry_id`, `cfl_chocolate`, `cfl_panela`, `cfl_citrico`, `cfl_nueces`, `cfl_f_amarillas`, `cfl_vainilla`, `cfl_f_rojas`, `cfl_veg_dulces`, `cfl_status`) VALUES
(12, 75, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(13, 74, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(14, 78, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(15, 79, 0, 0, 1, 0, 0, 0, 0, 0, 1),
(16, 73, 1, 0, 0, 0, 0, 0, 0, 0, 1),
(17, 82, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(18, 80, 0, 0, 0, 1, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffee_fragance`
--

CREATE TABLE `coffee_fragance` (
  `cf_auto_id` int(11) NOT NULL,
  `cf_coffee_entry_id` int(10) NOT NULL,
  `cf_caramelo` tinyint(1) NOT NULL DEFAULT 0,
  `cf_chocolate` tinyint(1) NOT NULL DEFAULT 0,
  `cf_dulce` tinyint(1) NOT NULL DEFAULT 0,
  `cf_floral` tinyint(1) NOT NULL DEFAULT 0,
  `cf_frutos_rojos` tinyint(1) NOT NULL DEFAULT 0,
  `cf_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coffee_fragance`
--

INSERT INTO `coffee_fragance` (`cf_auto_id`, `cf_coffee_entry_id`, `cf_caramelo`, `cf_chocolate`, `cf_dulce`, `cf_floral`, `cf_frutos_rojos`, `cf_status`) VALUES
(12, 75, 0, 0, 0, 0, 0, 1),
(13, 74, 0, 0, 0, 0, 0, 1),
(14, 78, 0, 1, 0, 0, 0, 1),
(15, 79, 0, 1, 0, 0, 0, 1),
(16, 73, 1, 0, 0, 0, 0, 1),
(17, 82, 0, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffee_physical_analysis`
--

CREATE TABLE `coffee_physical_analysis` (
  `cpa_auto_id` int(10) NOT NULL,
  `cpa_coffee_entry_id` int(10) NOT NULL,
  `cpa_mesh_0` float DEFAULT NULL,
  `cpa_mesh_13` float DEFAULT NULL,
  `cpa_mesh_14` float DEFAULT NULL,
  `cpa_mesh_15` float DEFAULT NULL,
  `cpa_total_almond` float DEFAULT NULL,
  `cpa_healthy_almond` float DEFAULT NULL,
  `cpa_h_almond` float DEFAULT NULL,
  `cpa_pasilla_g1` float DEFAULT NULL,
  `cpa_pasilla_g2` float DEFAULT NULL,
  `cpa_broca` float DEFAULT NULL,
  `cpa_factor` float DEFAULT NULL,
  `cpa_p_toasted` float DEFAULT NULL,
  `cpa_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coffee_physical_analysis`
--

INSERT INTO `coffee_physical_analysis` (`cpa_auto_id`, `cpa_coffee_entry_id`, `cpa_mesh_0`, `cpa_mesh_13`, `cpa_mesh_14`, `cpa_mesh_15`, `cpa_total_almond`, `cpa_healthy_almond`, `cpa_h_almond`, `cpa_pasilla_g1`, `cpa_pasilla_g2`, `cpa_broca`, `cpa_factor`, `cpa_p_toasted`, `cpa_status`) VALUES
(13, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(14, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(15, 78, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(16, 79, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
(17, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(18, 82, 3, 2, 2, 0, 2, 0, 2, 2, 0, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coffee_punctuation_sensory`
--

CREATE TABLE `coffee_punctuation_sensory` (
  `cps_auto_id` int(10) NOT NULL,
  `cps_coffee_entry_id` int(10) NOT NULL,
  `cps_fa` float NOT NULL,
  `cps_ac` float NOT NULL,
  `cps_cp` float NOT NULL,
  `cps_dc` float NOT NULL,
  `cps_sr` float NOT NULL,
  `cps_lim` float NOT NULL,
  `cps_ig` float NOT NULL,
  `cps_total` float NOT NULL,
  `cps_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coffee_punctuation_sensory`
--

INSERT INTO `coffee_punctuation_sensory` (`cps_auto_id`, `cps_coffee_entry_id`, `cps_fa`, `cps_ac`, `cps_cp`, `cps_dc`, `cps_sr`, `cps_lim`, `cps_ig`, `cps_total`, `cps_status`) VALUES
(8, 73, 6, 8, 6, 6, 6, 6, 6, 6.28571, 1),
(9, 75, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(10, 74, 3, 2, 5, 8, 9, 4, 10, 5.85714, 1),
(11, 78, 1, 0, 0, 0, 0, 0, 0, 0.142857, 1),
(12, 79, 0, 0, 1, 0, 0, 0, 0, 0.142857, 1),
(13, 82, 1, 1, 0, 0, 0, 0, 0, 0.285714, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lines_coffees`
--

CREATE TABLE `lines_coffees` (
  `lcp_auto_id` int(10) NOT NULL,
  `lcp_name` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `lcp_create` datetime NOT NULL,
  `lcp_fech_update` datetime NOT NULL,
  `lcp_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `lines_coffees`
--

INSERT INTO `lines_coffees` (`lcp_auto_id`, `lcp_name`, `lcp_create`, `lcp_fech_update`, `lcp_status`) VALUES
(0, 'N/A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(1, 'Café Corriente', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'Café Precio Caravela ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'Café Precio Especial', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, 'Carabela', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_price`
--

CREATE TABLE `purchase_price` (
  `pp_auto_id` int(10) NOT NULL,
  `pp_purchase_id` int(10) NOT NULL,
  `pp_price_id` int(10) NOT NULL,
  `pp_load_value` float NOT NULL,
  `pp_kilo_value` float NOT NULL,
  `pp_total_to_pay` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_receipt`
--

CREATE TABLE `purchase_receipt` (
  `pr_auto_id` int(10) NOT NULL,
  `pr_farm_id` int(10) NOT NULL,
  `pr_user_id` int(10) NOT NULL,
  `pr_user_identification` int(25) NOT NULL,
  `pr_farm_name` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `pr_user_name` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `pr_user_direction` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `pr_user_affiliate` tinyint(1) NOT NULL DEFAULT 0,
  `pr_user_creator` int(10) NOT NULL,
  `pr_date_create` date NOT NULL,
  `pr_time_create` time NOT NULL,
  `pr_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pr_status` tinyint(1) NOT NULL DEFAULT 1,
  `pr_validity` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `purchase_receipt`
--

INSERT INTO `purchase_receipt` (`pr_auto_id`, `pr_farm_id`, `pr_user_id`, `pr_user_identification`, `pr_farm_name`, `pr_user_name`, `pr_user_direction`, `pr_user_affiliate`, `pr_user_creator`, `pr_date_create`, `pr_time_create`, `pr_update`, `pr_status`, `pr_validity`) VALUES
(73, 32, 106, 1084577898, 'La Perla', 'Sergio Yamit Rivera Flor', 'La Hondura', 1, 1, '2021-01-26', '15:54:08', '2021-02-15 03:58:39', 1, 1),
(74, 32, 106, 1084577898, 'La Perla', 'Sergio Yamit  Rivera Flor', 'La Hondura', 1, 1, '2021-01-26', '16:38:21', '2021-01-26 21:38:21', 1, 1),
(75, 34, 108, 551479777, 'La Juanita', 'Ana Juana Lozano', 'Alto Cañada', 1, 1, '2021-01-26', '16:43:30', '2021-01-26 21:43:30', 1, 1),
(76, 34, 108, 551479777, 'La Juanita', 'Ana Juana Lozano', 'Alto Cañada', 1, 1, '2021-01-26', '16:43:51', '2021-01-26 21:43:51', 1, 1),
(77, 34, 108, 551479777, 'La Juanita', 'Ana Juana Lozano', 'Alto Cañada', 1, 1, '2021-01-26', '17:00:45', '2021-01-26 22:00:45', 1, 1),
(78, 32, 106, 1084577898, 'La Perla', 'Sergio Yamit  Rivera Flor', 'La Hondura', 1, 1, '2021-02-02', '14:49:55', '2021-02-02 19:49:55', 1, 1),
(79, 32, 106, 1084577898, 'La Perla', 'Sergio Yamit  Rivera Flor', 'La Hondura', 1, 1, '2021-02-02', '14:59:20', '2021-02-02 19:59:20', 1, 1),
(80, 32, 106, 1084577898, 'La Perla', 'Sergio Yamit  Rivera Flor', 'La Hondura', 1, 1, '2021-02-06', '17:44:09', '2021-02-06 22:44:09', 1, 1),
(81, 35, 106, 1084577898, 'La Vella', 'Sergio Yamit  Rivera Flor', 'La Hormiga', 1, 1, '2021-02-06', '17:48:48', '2021-02-06 22:48:48', 1, 1),
(82, 35, 106, 1084577898, 'La Vella', 'Sergio Yamit  Rivera Flor', 'La Hormiga', 1, 1, '2021-02-06', '17:54:09', '2021-02-06 22:54:09', 1, 1),
(83, 32, 106, 1084577898, 'La Perla', 'Sergio Yamit  Rivera Flor', 'La Hondura', 1, 1, '2021-02-06', '18:01:56', '2021-02-06 23:01:56', 1, 1),
(84, 35, 106, 1084577898, 'La Vella', 'Sergio Yamit  Rivera Flor', 'La Hormiga', 1, 1, '2021-02-07', '11:01:15', '2021-02-07 16:01:15', 1, 1),
(85, 32, 106, 1084577898, 'La Perla', 'Sergio Yamit  Rivera Flor', 'La Hondura', 1, 1, '2021-02-08', '11:15:13', '2021-02-08 16:15:13', 1, 1),
(86, 32, 106, 1084577898, 'La Perla', 'Sergio Yamit  Rivera Flor', 'La Hondura', 1, 1, '2021-02-08', '12:36:07', '2021-02-08 17:36:07', 1, 1),
(87, 36, 109, 123456789, 'La Juana', 'Juan Gómez Méndez', 'La Camelia', 1, 1, '2021-02-14', '18:31:44', '2021-02-14 23:31:44', 1, 1),
(88, 36, 109, 123456789, 'La Juana', 'Juan Gómez Méndez', 'La Camelia', 1, 1, '2021-02-14', '18:31:56', '2021-02-14 23:31:56', 1, 1),
(89, 36, 109, 123456789, 'La Juana', 'Juan Gómez Méndez', 'La Camelia', 1, 1, '2021-02-14', '18:32:06', '2021-02-14 23:32:06', 1, 1),
(90, 37, 110, 123, 'La montaña', 'Juan Camilo López Rojas', 'El teniente', 1, 1, '2021-02-14', '18:33:51', '2021-02-14 23:33:51', 1, 1),
(91, 38, 110, 123, 'El mirador', 'Juan Camilo López Rojas', 'La Dona', 1, 1, '2021-02-14', '18:34:27', '2021-02-14 23:34:27', 1, 1),
(92, 38, 110, 123, 'El mirador', 'Juan Camilo López Rojas', 'La Dona', 1, 1, '2021-02-14', '18:34:43', '2021-02-14 23:34:43', 1, 1),
(93, 38, 110, 123, 'El mirador', 'Juan Camilo López Rojas', 'La Dona', 1, 1, '2021-02-14', '18:34:57', '2021-02-14 23:34:57', 1, 1),
(94, 35, 106, 1084577898, 'La Vella', 'Sergio Yamit  Rivera Flor', 'La Hormiga', 1, 1, '2021-02-14', '18:36:09', '2021-02-14 23:36:09', 1, 1),
(95, 32, 106, 1084577898, 'La Perla', 'Sergio Yamit  Rivera Flor', 'La Hondura', 1, 1, '2021-02-14', '18:36:21', '2021-02-14 23:36:21', 1, 1),
(96, 35, 106, 1084577898, 'La Vella', 'Sergio Yamit  Rivera Flor', 'La Hormiga', 0, 1, '2021-03-26', '11:26:15', '2021-03-26 16:26:15', 1, 1),
(97, 39, 106, 1084577898, 'La Rayuela', 'Sergio Yamit  Rivera Flor', 'Alto cañada', 0, 1, '2021-03-26', '11:28:29', '2021-03-26 16:28:29', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_status`
--

CREATE TABLE `purchase_status` (
  `pst_auto_id` int(11) NOT NULL,
  `pst_purchase_id` int(10) NOT NULL,
  `pst_purchase_status_id` int(11) NOT NULL DEFAULT 1,
  `pst_create` datetime NOT NULL,
  `pst_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pst_user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `purchase_status`
--

INSERT INTO `purchase_status` (`pst_auto_id`, `pst_purchase_id`, `pst_purchase_status_id`, `pst_create`, `pst_update`, `pst_user_id`) VALUES
(82, 73, 3, '2021-01-26 15:54:08', '2021-02-06 22:42:48', 1),
(83, 73, 3, '2021-01-26 16:20:54', '2021-02-06 22:42:48', 1),
(84, 74, 3, '2021-01-26 16:38:21', '2021-01-26 23:19:23', 1),
(85, 75, 4, '2021-01-26 16:43:30', '2021-01-26 23:20:39', 1),
(86, 76, 4, '2021-01-26 16:43:51', '2021-01-26 23:20:36', 1),
(87, 75, 2, '2021-01-26 16:53:13', '2021-01-26 21:53:13', 1),
(88, 77, 4, '2021-01-26 17:00:45', '2021-01-26 23:20:43', 1),
(89, 74, 3, '2021-01-26 18:18:34', '2021-01-26 23:19:23', 1),
(90, 74, 3, '2021-01-26 18:19:21', '2021-01-26 23:19:21', 1),
(91, 78, 3, '2021-02-02 14:49:55', '2021-02-08 21:30:55', 1),
(92, 78, 3, '2021-02-02 14:50:09', '2021-02-08 21:30:55', 1),
(93, 79, 3, '2021-02-02 14:59:20', '2021-02-09 00:06:26', 1),
(94, 79, 3, '2021-02-02 14:59:38', '2021-02-09 00:06:26', 1),
(95, 73, 3, '2021-02-06 17:42:43', '2021-02-06 22:42:43', 1),
(96, 80, 2, '2021-02-06 17:44:09', '2021-03-01 22:38:36', 1),
(97, 81, 1, '2021-02-06 17:48:48', '2021-02-06 22:48:48', 1),
(98, 82, 3, '2021-02-06 17:54:09', '2021-02-08 17:03:00', 1),
(99, 83, 1, '2021-02-06 18:01:56', '2021-02-06 23:01:56', 1),
(100, 84, 1, '2021-02-07 11:01:15', '2021-02-07 16:01:15', 1),
(101, 85, 1, '2021-02-08 11:15:13', '2021-02-08 16:15:13', 1),
(102, 82, 3, '2021-02-08 11:51:22', '2021-02-08 17:03:00', 1),
(103, 82, 3, '2021-02-08 12:02:51', '2021-02-08 17:02:51', 1),
(104, 86, 1, '2021-02-08 12:36:07', '2021-02-08 17:36:07', 1),
(105, 78, 3, '2021-02-08 16:30:07', '2021-02-08 21:30:07', 1),
(106, 79, 3, '2021-02-08 19:06:18', '2021-02-09 00:06:18', 1),
(107, 87, 1, '2021-02-14 18:31:44', '2021-02-14 23:31:44', 1),
(108, 88, 1, '2021-02-14 18:31:56', '2021-02-14 23:31:56', 1),
(109, 89, 1, '2021-02-14 18:32:06', '2021-02-14 23:32:06', 1),
(110, 90, 1, '2021-02-14 18:33:51', '2021-02-14 23:33:51', 1),
(111, 91, 1, '2021-02-14 18:34:27', '2021-02-14 23:34:27', 1),
(112, 92, 1, '2021-02-14 18:34:43', '2021-02-14 23:34:43', 1),
(113, 93, 1, '2021-02-14 18:34:57', '2021-02-14 23:34:57', 1),
(114, 94, 1, '2021-02-14 18:36:09', '2021-02-14 23:36:09', 1),
(115, 95, 1, '2021-02-14 18:36:21', '2021-02-14 23:36:21', 1),
(116, 80, 2, '2021-02-20 02:47:00', '2021-02-20 07:47:00', 1),
(117, 96, 1, '2021-03-26 11:26:15', '2021-03-26 16:26:15', 1),
(118, 97, 1, '2021-03-26 11:28:29', '2021-03-26 16:28:29', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_status_names`
--

CREATE TABLE `purchase_status_names` (
  `psn_auto_id` int(11) NOT NULL,
  `psn_name` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `psn_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `purchase_status_names`
--

INSERT INTO `purchase_status_names` (`psn_auto_id`, `psn_name`, `psn_status`) VALUES
(1, 'Recibido', 1),
(2, 'Laboratorio', 1),
(3, 'Resultado', 1),
(4, 'Facturado', 1),
(5, 'Rechazado', 1),
(6, 'Retirado', 1),
(7, 'Bodega', 1),
(8, 'Vendido', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubications_departaments`
--

CREATE TABLE `ubications_departaments` (
  `ubd_id_departamento` int(2) UNSIGNED NOT NULL,
  `ubd_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubications_departaments`
--

INSERT INTO `ubications_departaments` (`ubd_id_departamento`, `ubd_name`) VALUES
(5, 'ANTIOQUIA'),
(8, 'ATLÁNTICO'),
(11, 'BOGOTÁ, D.C.'),
(13, 'BOLÍVAR'),
(15, 'BOYACÁ'),
(17, 'CALDAS'),
(18, 'CAQUETÁ'),
(19, 'CAUCA'),
(20, 'CESAR'),
(23, 'CÓRDOBA'),
(25, 'CUNDINAMARCA'),
(27, 'CHOCÓ'),
(41, 'HUILA'),
(44, 'LA GUAJIRA'),
(47, 'MAGDALENA'),
(50, 'META'),
(52, 'NARIÑO'),
(54, 'NORTE DE SANTANDER'),
(63, 'QUINDIO'),
(66, 'RISARALDA'),
(68, 'SANTANDER'),
(70, 'SUCRE'),
(73, 'TOLIMA'),
(76, 'VALLE DEL CAUCA'),
(81, 'ARAUCA'),
(85, 'CASANARE'),
(86, 'PUTUMAYO'),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA'),
(91, 'AMAZONAS'),
(94, 'GUAINÍA'),
(95, 'GUAVIARE'),
(97, 'VAUPÉS'),
(99, 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubications_towns`
--

CREATE TABLE `ubications_towns` (
  `ubt_id_municipio` int(6) NOT NULL,
  `ubt_municipio` varchar(255) NOT NULL DEFAULT '',
  `ubt_status` bit(1) NOT NULL,
  `ubt_id_departament` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubications_towns`
--

INSERT INTO `ubications_towns` (`ubt_id_municipio`, `ubt_municipio`, `ubt_status`, `ubt_id_departament`) VALUES
(1, 'Abriaquí', b'1', 5),
(2, 'Acacías', b'1', 50),
(3, 'Acandí', b'1', 27),
(4, 'Acevedo', b'1', 41),
(5, 'Achí', b'1', 13),
(6, 'Agrado', b'1', 41),
(7, 'Agua de Dios', b'1', 25),
(8, 'Aguachica', b'1', 20),
(9, 'Aguada', b'1', 68),
(10, 'Aguadas', b'1', 17),
(11, 'Aguazul', b'1', 85),
(12, 'Agustín Codazzi', b'1', 20),
(13, 'Aipe', b'1', 41),
(14, 'Albania', b'1', 18),
(15, 'Albania', b'1', 44),
(16, 'Albania', b'1', 68),
(17, 'Albán', b'1', 25),
(18, 'Albán (San José)', b'1', 52),
(19, 'Alcalá', b'1', 76),
(20, 'Alejandria', b'1', 5),
(21, 'Algarrobo', b'1', 47),
(22, 'Algeciras', b'1', 41),
(23, 'Almaguer', b'1', 19),
(24, 'Almeida', b'1', 15),
(25, 'Alpujarra', b'1', 73),
(26, 'Altamira', b'1', 41),
(27, 'Alto Baudó (Pie de Pato)', b'1', 27),
(28, 'Altos del Rosario', b'1', 13),
(29, 'Alvarado', b'1', 73),
(30, 'Amagá', b'1', 5),
(31, 'Amalfi', b'1', 5),
(32, 'Ambalema', b'1', 73),
(33, 'Anapoima', b'1', 25),
(34, 'Ancuya', b'1', 52),
(35, 'Andalucía', b'1', 76),
(36, 'Andes', b'1', 5),
(37, 'Angelópolis', b'1', 5),
(38, 'Angostura', b'1', 5),
(39, 'Anolaima', b'1', 25),
(40, 'Anorí', b'1', 5),
(41, 'Anserma', b'1', 17),
(42, 'Ansermanuevo', b'1', 76),
(43, 'Anzoátegui', b'1', 73),
(44, 'Anzá', b'1', 5),
(45, 'Apartadó', b'1', 5),
(46, 'Apulo', b'1', 25),
(47, 'Apía', b'1', 66),
(48, 'Aquitania', b'1', 15),
(49, 'Aracataca', b'1', 47),
(50, 'Aranzazu', b'1', 17),
(51, 'Aratoca', b'1', 68),
(52, 'Arauca', b'1', 81),
(53, 'Arauquita', b'1', 81),
(54, 'Arbeláez', b'1', 25),
(55, 'Arboleda (Berruecos)', b'1', 52),
(56, 'Arboledas', b'1', 54),
(57, 'Arboletes', b'1', 5),
(58, 'Arcabuco', b'1', 15),
(59, 'Arenal', b'1', 13),
(60, 'Argelia', b'1', 5),
(61, 'Argelia', b'1', 19),
(62, 'Argelia', b'1', 76),
(63, 'Ariguaní (El Difícil)', b'1', 47),
(64, 'Arjona', b'1', 13),
(65, 'Armenia', b'1', 5),
(66, 'Armenia', b'1', 63),
(67, 'Armero (Guayabal)', b'1', 73),
(68, 'Arroyohondo', b'1', 13),
(69, 'Astrea', b'1', 20),
(70, 'Ataco', b'1', 73),
(71, 'Atrato (Yuto)', b'1', 27),
(72, 'Ayapel', b'1', 23),
(73, 'Bagadó', b'1', 27),
(74, 'Bahía Solano (Mútis)', b'1', 27),
(75, 'Bajo Baudó (Pizarro)', b'1', 27),
(76, 'Balboa', b'1', 19),
(77, 'Balboa', b'1', 66),
(78, 'Baranoa', b'1', 8),
(79, 'Baraya', b'1', 41),
(80, 'Barbacoas', b'1', 52),
(81, 'Barbosa', b'1', 5),
(82, 'Barbosa', b'1', 68),
(83, 'Barichara', b'1', 68),
(84, 'Barranca de Upía', b'1', 50),
(85, 'Barrancabermeja', b'1', 68),
(86, 'Barrancas', b'1', 44),
(87, 'Barranco de Loba', b'1', 13),
(88, 'Barranquilla', b'1', 8),
(89, 'Becerríl', b'1', 20),
(90, 'Belalcázar', b'1', 17),
(91, 'Bello', b'1', 5),
(92, 'Belmira', b'1', 5),
(93, 'Beltrán', b'1', 25),
(94, 'Belén', b'1', 15),
(95, 'Belén', b'1', 52),
(96, 'Belén de Bajirá', b'1', 27),
(97, 'Belén de Umbría', b'1', 66),
(98, 'Belén de los Andaquíes', b'1', 18),
(99, 'Berbeo', b'1', 15),
(100, 'Betania', b'1', 5),
(101, 'Beteitiva', b'1', 15),
(102, 'Betulia', b'1', 5),
(103, 'Betulia', b'1', 68),
(104, 'Bituima', b'1', 25),
(105, 'Boavita', b'1', 15),
(106, 'Bochalema', b'1', 54),
(107, 'Bogotá D.C.', b'1', 11),
(108, 'Bojacá', b'1', 25),
(109, 'Bojayá (Bellavista)', b'1', 27),
(110, 'Bolívar', b'1', 5),
(111, 'Bolívar', b'1', 19),
(112, 'Bolívar', b'1', 68),
(113, 'Bolívar', b'1', 76),
(114, 'Bosconia', b'1', 20),
(115, 'Boyacá', b'1', 15),
(116, 'Briceño', b'1', 5),
(117, 'Briceño', b'1', 15),
(118, 'Bucaramanga', b'1', 68),
(119, 'Bucarasica', b'1', 54),
(120, 'Buenaventura', b'1', 76),
(121, 'Buenavista', b'1', 15),
(122, 'Buenavista', b'1', 23),
(123, 'Buenavista', b'1', 63),
(124, 'Buenavista', b'1', 70),
(125, 'Buenos Aires', b'1', 19),
(126, 'Buesaco', b'1', 52),
(127, 'Buga', b'1', 76),
(128, 'Bugalagrande', b'1', 76),
(129, 'Burítica', b'1', 5),
(130, 'Busbanza', b'1', 15),
(131, 'Cabrera', b'1', 25),
(132, 'Cabrera', b'1', 68),
(133, 'Cabuyaro', b'1', 50),
(134, 'Cachipay', b'1', 25),
(135, 'Caicedo', b'1', 5),
(136, 'Caicedonia', b'1', 76),
(137, 'Caimito', b'1', 70),
(138, 'Cajamarca', b'1', 73),
(139, 'Cajibío', b'1', 19),
(140, 'Cajicá', b'1', 25),
(141, 'Calamar', b'1', 13),
(142, 'Calamar', b'1', 95),
(143, 'Calarcá', b'1', 63),
(144, 'Caldas', b'1', 5),
(145, 'Caldas', b'1', 15),
(146, 'Caldono', b'1', 19),
(147, 'California', b'1', 68),
(148, 'Calima (Darién)', b'1', 76),
(149, 'Caloto', b'1', 19),
(150, 'Calí', b'1', 76),
(151, 'Campamento', b'1', 5),
(152, 'Campo de la Cruz', b'1', 8),
(153, 'Campoalegre', b'1', 41),
(154, 'Campohermoso', b'1', 15),
(155, 'Canalete', b'1', 23),
(156, 'Candelaria', b'1', 8),
(157, 'Candelaria', b'1', 76),
(158, 'Cantagallo', b'1', 13),
(159, 'Cantón de San Pablo', b'1', 27),
(160, 'Caparrapí', b'1', 25),
(161, 'Capitanejo', b'1', 68),
(162, 'Caracolí', b'1', 5),
(163, 'Caramanta', b'1', 5),
(164, 'Carcasí', b'1', 68),
(165, 'Carepa', b'1', 5),
(166, 'Carmen de Apicalá', b'1', 73),
(167, 'Carmen de Carupa', b'1', 25),
(168, 'Carmen de Viboral', b'1', 5),
(169, 'Carmen del Darién (CURBARADÓ)', b'1', 27),
(170, 'Carolina', b'1', 5),
(171, 'Cartagena', b'1', 13),
(172, 'Cartagena del Chairá', b'1', 18),
(173, 'Cartago', b'1', 76),
(174, 'Carurú', b'1', 97),
(175, 'Casabianca', b'1', 73),
(176, 'Castilla la Nueva', b'1', 50),
(177, 'Caucasia', b'1', 5),
(178, 'Cañasgordas', b'1', 5),
(179, 'Cepita', b'1', 68),
(180, 'Cereté', b'1', 23),
(181, 'Cerinza', b'1', 15),
(182, 'Cerrito', b'1', 68),
(183, 'Cerro San Antonio', b'1', 47),
(184, 'Chachaguí', b'1', 52),
(185, 'Chaguaní', b'1', 25),
(186, 'Chalán', b'1', 70),
(187, 'Chaparral', b'1', 73),
(188, 'Charalá', b'1', 68),
(189, 'Charta', b'1', 68),
(190, 'Chigorodó', b'1', 5),
(191, 'Chima', b'1', 68),
(192, 'Chimichagua', b'1', 20),
(193, 'Chimá', b'1', 23),
(194, 'Chinavita', b'1', 15),
(195, 'Chinchiná', b'1', 17),
(196, 'Chinácota', b'1', 54),
(197, 'Chinú', b'1', 23),
(198, 'Chipaque', b'1', 25),
(199, 'Chipatá', b'1', 68),
(200, 'Chiquinquirá', b'1', 15),
(201, 'Chiriguaná', b'1', 20),
(202, 'Chiscas', b'1', 15),
(203, 'Chita', b'1', 15),
(204, 'Chitagá', b'1', 54),
(205, 'Chitaraque', b'1', 15),
(206, 'Chivatá', b'1', 15),
(207, 'Chivolo', b'1', 47),
(208, 'Choachí', b'1', 25),
(209, 'Chocontá', b'1', 25),
(210, 'Chámeza', b'1', 85),
(211, 'Chía', b'1', 25),
(212, 'Chíquiza', b'1', 15),
(213, 'Chívor', b'1', 15),
(214, 'Cicuco', b'1', 13),
(215, 'Cimitarra', b'1', 68),
(216, 'Circasia', b'1', 63),
(217, 'Cisneros', b'1', 5),
(218, 'Ciénaga', b'1', 15),
(219, 'Ciénaga', b'1', 47),
(220, 'Ciénaga de Oro', b'1', 23),
(221, 'Clemencia', b'1', 13),
(222, 'Cocorná', b'1', 5),
(223, 'Coello', b'1', 73),
(224, 'Cogua', b'1', 25),
(225, 'Colombia', b'1', 41),
(226, 'Colosó (Ricaurte)', b'1', 70),
(227, 'Colón', b'1', 86),
(228, 'Colón (Génova)', b'1', 52),
(229, 'Concepción', b'1', 5),
(230, 'Concepción', b'1', 68),
(231, 'Concordia', b'1', 5),
(232, 'Concordia', b'1', 47),
(233, 'Condoto', b'1', 27),
(234, 'Confines', b'1', 68),
(235, 'Consaca', b'1', 52),
(236, 'Contadero', b'1', 52),
(237, 'Contratación', b'1', 68),
(238, 'Convención', b'1', 54),
(239, 'Copacabana', b'1', 5),
(240, 'Coper', b'1', 15),
(241, 'Cordobá', b'1', 63),
(242, 'Corinto', b'1', 19),
(243, 'Coromoro', b'1', 68),
(244, 'Corozal', b'1', 70),
(245, 'Corrales', b'1', 15),
(246, 'Cota', b'1', 25),
(247, 'Cotorra', b'1', 23),
(248, 'Covarachía', b'1', 15),
(249, 'Coveñas', b'1', 70),
(250, 'Coyaima', b'1', 73),
(251, 'Cravo Norte', b'1', 81),
(252, 'Cuaspud (Carlosama)', b'1', 52),
(253, 'Cubarral', b'1', 50),
(254, 'Cubará', b'1', 15),
(255, 'Cucaita', b'1', 15),
(256, 'Cucunubá', b'1', 25),
(257, 'Cucutilla', b'1', 54),
(258, 'Cuitiva', b'1', 15),
(259, 'Cumaral', b'1', 50),
(260, 'Cumaribo', b'1', 99),
(261, 'Cumbal', b'1', 52),
(262, 'Cumbitara', b'1', 52),
(263, 'Cunday', b'1', 73),
(264, 'Curillo', b'1', 18),
(265, 'Curití', b'1', 68),
(266, 'Curumaní', b'1', 20),
(267, 'Cáceres', b'1', 5),
(268, 'Cáchira', b'1', 54),
(269, 'Cácota', b'1', 54),
(270, 'Cáqueza', b'1', 25),
(271, 'Cértegui', b'1', 27),
(272, 'Cómbita', b'1', 15),
(273, 'Córdoba', b'1', 13),
(274, 'Córdoba', b'1', 52),
(275, 'Cúcuta', b'1', 54),
(276, 'Dabeiba', b'1', 5),
(277, 'Dagua', b'1', 76),
(278, 'Dibulla', b'1', 44),
(279, 'Distracción', b'1', 44),
(280, 'Dolores', b'1', 73),
(281, 'Don Matías', b'1', 5),
(282, 'Dos Quebradas', b'1', 66),
(283, 'Duitama', b'1', 15),
(284, 'Durania', b'1', 54),
(285, 'Ebéjico', b'1', 5),
(286, 'El Bagre', b'1', 5),
(287, 'El Banco', b'1', 47),
(288, 'El Cairo', b'1', 76),
(289, 'El Calvario', b'1', 50),
(290, 'El Carmen', b'1', 54),
(291, 'El Carmen', b'1', 68),
(292, 'El Carmen de Atrato', b'1', 27),
(293, 'El Carmen de Bolívar', b'1', 13),
(294, 'El Castillo', b'1', 50),
(295, 'El Cerrito', b'1', 76),
(296, 'El Charco', b'1', 52),
(297, 'El Cocuy', b'1', 15),
(298, 'El Colegio', b'1', 25),
(299, 'El Copey', b'1', 20),
(300, 'El Doncello', b'1', 18),
(301, 'El Dorado', b'1', 50),
(302, 'El Dovio', b'1', 76),
(303, 'El Espino', b'1', 15),
(304, 'El Guacamayo', b'1', 68),
(305, 'El Guamo', b'1', 13),
(306, 'El Molino', b'1', 44),
(307, 'El Paso', b'1', 20),
(308, 'El Paujil', b'1', 18),
(309, 'El Peñol', b'1', 52),
(310, 'El Peñon', b'1', 13),
(311, 'El Peñon', b'1', 68),
(312, 'El Peñón', b'1', 25),
(313, 'El Piñon', b'1', 47),
(314, 'El Playón', b'1', 68),
(315, 'El Retorno', b'1', 95),
(316, 'El Retén', b'1', 47),
(317, 'El Roble', b'1', 70),
(318, 'El Rosal', b'1', 25),
(319, 'El Rosario', b'1', 52),
(320, 'El Tablón de Gómez', b'1', 52),
(321, 'El Tambo', b'1', 19),
(322, 'El Tambo', b'1', 52),
(323, 'El Tarra', b'1', 54),
(324, 'El Zulia', b'1', 54),
(325, 'El Águila', b'1', 76),
(326, 'Elías', b'1', 41),
(327, 'Encino', b'1', 68),
(328, 'Enciso', b'1', 68),
(329, 'Entrerríos', b'1', 5),
(330, 'Envigado', b'1', 5),
(331, 'Espinal', b'1', 73),
(332, 'Facatativá', b'1', 25),
(333, 'Falan', b'1', 73),
(334, 'Filadelfia', b'1', 17),
(335, 'Filandia', b'1', 63),
(336, 'Firavitoba', b'1', 15),
(337, 'Flandes', b'1', 73),
(338, 'Florencia', b'1', 18),
(339, 'Florencia', b'1', 19),
(340, 'Floresta', b'1', 15),
(341, 'Florida', b'1', 76),
(342, 'Floridablanca', b'1', 68),
(343, 'Florián', b'1', 68),
(344, 'Fonseca', b'1', 44),
(345, 'Fortúl', b'1', 81),
(346, 'Fosca', b'1', 25),
(347, 'Francisco Pizarro', b'1', 52),
(348, 'Fredonia', b'1', 5),
(349, 'Fresno', b'1', 73),
(350, 'Frontino', b'1', 5),
(351, 'Fuente de Oro', b'1', 50),
(352, 'Fundación', b'1', 47),
(353, 'Funes', b'1', 52),
(354, 'Funza', b'1', 25),
(355, 'Fusagasugá', b'1', 25),
(356, 'Fómeque', b'1', 25),
(357, 'Fúquene', b'1', 25),
(358, 'Gachalá', b'1', 25),
(359, 'Gachancipá', b'1', 25),
(360, 'Gachantivá', b'1', 15),
(361, 'Gachetá', b'1', 25),
(362, 'Galapa', b'1', 8),
(363, 'Galeras (Nueva Granada)', b'1', 70),
(364, 'Galán', b'1', 68),
(365, 'Gama', b'1', 25),
(366, 'Gamarra', b'1', 20),
(367, 'Garagoa', b'1', 15),
(368, 'Garzón', b'1', 41),
(369, 'Gigante', b'1', 41),
(370, 'Ginebra', b'1', 76),
(371, 'Giraldo', b'1', 5),
(372, 'Girardot', b'1', 25),
(373, 'Girardota', b'1', 5),
(374, 'Girón', b'1', 68),
(375, 'Gonzalez', b'1', 20),
(376, 'Gramalote', b'1', 54),
(377, 'Granada', b'1', 5),
(378, 'Granada', b'1', 25),
(379, 'Granada', b'1', 50),
(380, 'Guaca', b'1', 68),
(381, 'Guacamayas', b'1', 15),
(382, 'Guacarí', b'1', 76),
(383, 'Guachavés', b'1', 52),
(384, 'Guachené', b'1', 19),
(385, 'Guachetá', b'1', 25),
(386, 'Guachucal', b'1', 52),
(387, 'Guadalupe', b'1', 5),
(388, 'Guadalupe', b'1', 41),
(389, 'Guadalupe', b'1', 68),
(390, 'Guaduas', b'1', 25),
(391, 'Guaitarilla', b'1', 52),
(392, 'Gualmatán', b'1', 52),
(393, 'Guamal', b'1', 47),
(394, 'Guamal', b'1', 50),
(395, 'Guamo', b'1', 73),
(396, 'Guapota', b'1', 68),
(397, 'Guapí', b'1', 19),
(398, 'Guaranda', b'1', 70),
(399, 'Guarne', b'1', 5),
(400, 'Guasca', b'1', 25),
(401, 'Guatapé', b'1', 5),
(402, 'Guataquí', b'1', 25),
(403, 'Guatavita', b'1', 25),
(404, 'Guateque', b'1', 15),
(405, 'Guavatá', b'1', 68),
(406, 'Guayabal de Siquima', b'1', 25),
(407, 'Guayabetal', b'1', 25),
(408, 'Guayatá', b'1', 15),
(409, 'Guepsa', b'1', 68),
(410, 'Guicán', b'1', 15),
(411, 'Gutiérrez', b'1', 25),
(412, 'Guática', b'1', 66),
(413, 'Gámbita', b'1', 68),
(414, 'Gámeza', b'1', 15),
(415, 'Génova', b'1', 63),
(416, 'Gómez Plata', b'1', 5),
(417, 'Hacarí', b'1', 54),
(418, 'Hatillo de Loba', b'1', 13),
(419, 'Hato', b'1', 68),
(420, 'Hato Corozal', b'1', 85),
(421, 'Hatonuevo', b'1', 44),
(422, 'Heliconia', b'1', 5),
(423, 'Herrán', b'1', 54),
(424, 'Herveo', b'1', 73),
(425, 'Hispania', b'1', 5),
(426, 'Hobo', b'1', 41),
(427, 'Honda', b'1', 73),
(428, 'Ibagué', b'1', 73),
(429, 'Icononzo', b'1', 73),
(430, 'Iles', b'1', 52),
(431, 'Imúes', b'1', 52),
(432, 'Inzá', b'1', 19),
(433, 'Inírida', b'1', 94),
(434, 'Ipiales', b'1', 52),
(435, 'Isnos', b'1', 41),
(436, 'Istmina', b'1', 27),
(437, 'Itagüí', b'1', 5),
(438, 'Ituango', b'1', 5),
(439, 'Izá', b'1', 15),
(440, 'Jambaló', b'1', 19),
(441, 'Jamundí', b'1', 76),
(442, 'Jardín', b'1', 5),
(443, 'Jenesano', b'1', 15),
(444, 'Jericó', b'1', 5),
(445, 'Jericó', b'1', 15),
(446, 'Jerusalén', b'1', 25),
(447, 'Jesús María', b'1', 68),
(448, 'Jordán', b'1', 68),
(449, 'Juan de Acosta', b'1', 8),
(450, 'Junín', b'1', 25),
(451, 'Juradó', b'1', 27),
(452, 'La Apartada y La Frontera', b'1', 23),
(453, 'La Argentina', b'1', 41),
(454, 'La Belleza', b'1', 68),
(455, 'La Calera', b'1', 25),
(456, 'La Capilla', b'1', 15),
(457, 'La Ceja', b'1', 5),
(458, 'La Celia', b'1', 66),
(459, 'La Cruz', b'1', 52),
(460, 'La Cumbre', b'1', 76),
(461, 'La Dorada', b'1', 17),
(462, 'La Esperanza', b'1', 54),
(463, 'La Estrella', b'1', 5),
(464, 'La Florida', b'1', 52),
(465, 'La Gloria', b'1', 20),
(466, 'La Jagua de Ibirico', b'1', 20),
(467, 'La Jagua del Pilar', b'1', 44),
(468, 'La Llanada', b'1', 52),
(469, 'La Macarena', b'1', 50),
(470, 'La Merced', b'1', 17),
(471, 'La Mesa', b'1', 25),
(472, 'La Montañita', b'1', 18),
(473, 'La Palma', b'1', 25),
(474, 'La Paz', b'1', 68),
(475, 'La Paz (Robles)', b'1', 20),
(476, 'La Peña', b'1', 25),
(477, 'La Pintada', b'1', 5),
(478, 'La Plata', b'1', 41),
(479, 'La Playa', b'1', 54),
(480, 'La Primavera', b'1', 99),
(481, 'La Salina', b'1', 85),
(482, 'La Sierra', b'1', 19),
(483, 'La Tebaida', b'1', 63),
(484, 'La Tola', b'1', 52),
(485, 'La Unión', b'1', 5),
(486, 'La Unión', b'1', 52),
(487, 'La Unión', b'1', 70),
(488, 'La Unión', b'1', 76),
(489, 'La Uvita', b'1', 15),
(490, 'La Vega', b'1', 19),
(491, 'La Vega', b'1', 25),
(492, 'La Victoria', b'1', 15),
(493, 'La Victoria', b'1', 17),
(494, 'La Victoria', b'1', 76),
(495, 'La Virginia', b'1', 66),
(496, 'Labateca', b'1', 54),
(497, 'Labranzagrande', b'1', 15),
(498, 'Landázuri', b'1', 68),
(499, 'Lebrija', b'1', 68),
(500, 'Leiva', b'1', 52),
(501, 'Lejanías', b'1', 50),
(502, 'Lenguazaque', b'1', 25),
(503, 'Leticia', b'1', 91),
(504, 'Liborina', b'1', 5),
(505, 'Linares', b'1', 52),
(506, 'Lloró', b'1', 27),
(507, 'Lorica', b'1', 23),
(508, 'Los Córdobas', b'1', 23),
(509, 'Los Palmitos', b'1', 70),
(510, 'Los Patios', b'1', 54),
(511, 'Los Santos', b'1', 68),
(512, 'Lourdes', b'1', 54),
(513, 'Luruaco', b'1', 8),
(514, 'Lérida', b'1', 73),
(515, 'Líbano', b'1', 73),
(516, 'López (Micay)', b'1', 19),
(517, 'Macanal', b'1', 15),
(518, 'Macaravita', b'1', 68),
(519, 'Maceo', b'1', 5),
(520, 'Machetá', b'1', 25),
(521, 'Madrid', b'1', 25),
(522, 'Magangué', b'1', 13),
(523, 'Magüi (Payán)', b'1', 52),
(524, 'Mahates', b'1', 13),
(525, 'Maicao', b'1', 44),
(526, 'Majagual', b'1', 70),
(527, 'Malambo', b'1', 8),
(528, 'Mallama (Piedrancha)', b'1', 52),
(529, 'Manatí', b'1', 8),
(530, 'Manaure', b'1', 44),
(531, 'Manaure Balcón del Cesar', b'1', 20),
(532, 'Manizales', b'1', 17),
(533, 'Manta', b'1', 25),
(534, 'Manzanares', b'1', 17),
(535, 'Maní', b'1', 85),
(536, 'Mapiripan', b'1', 50),
(537, 'Margarita', b'1', 13),
(538, 'Marinilla', b'1', 5),
(539, 'Maripí', b'1', 15),
(540, 'Mariquita', b'1', 73),
(541, 'Marmato', b'1', 17),
(542, 'Marquetalia', b'1', 17),
(543, 'Marsella', b'1', 66),
(544, 'Marulanda', b'1', 17),
(545, 'María la Baja', b'1', 13),
(546, 'Matanza', b'1', 68),
(547, 'Medellín', b'1', 5),
(548, 'Medina', b'1', 25),
(549, 'Medio Atrato', b'1', 27),
(550, 'Medio Baudó', b'1', 27),
(551, 'Medio San Juan (ANDAGOYA)', b'1', 27),
(552, 'Melgar', b'1', 73),
(553, 'Mercaderes', b'1', 19),
(554, 'Mesetas', b'1', 50),
(555, 'Milán', b'1', 18),
(556, 'Miraflores', b'1', 15),
(557, 'Miraflores', b'1', 95),
(558, 'Miranda', b'1', 19),
(559, 'Mistrató', b'1', 66),
(560, 'Mitú', b'1', 97),
(561, 'Mocoa', b'1', 86),
(562, 'Mogotes', b'1', 68),
(563, 'Molagavita', b'1', 68),
(564, 'Momil', b'1', 23),
(565, 'Mompós', b'1', 13),
(566, 'Mongua', b'1', 15),
(567, 'Monguí', b'1', 15),
(568, 'Moniquirá', b'1', 15),
(569, 'Montebello', b'1', 5),
(570, 'Montecristo', b'1', 13),
(571, 'Montelíbano', b'1', 23),
(572, 'Montenegro', b'1', 63),
(573, 'Monteria', b'1', 23),
(574, 'Monterrey', b'1', 85),
(575, 'Morales', b'1', 13),
(576, 'Morales', b'1', 19),
(577, 'Morelia', b'1', 18),
(578, 'Morroa', b'1', 70),
(579, 'Mosquera', b'1', 25),
(580, 'Mosquera', b'1', 52),
(581, 'Motavita', b'1', 15),
(582, 'Moñitos', b'1', 23),
(583, 'Murillo', b'1', 73),
(584, 'Murindó', b'1', 5),
(585, 'Mutatá', b'1', 5),
(586, 'Mutiscua', b'1', 54),
(587, 'Muzo', b'1', 15),
(588, 'Málaga', b'1', 68),
(589, 'Nariño', b'1', 5),
(590, 'Nariño', b'1', 25),
(591, 'Nariño', b'1', 52),
(592, 'Natagaima', b'1', 73),
(593, 'Nechí', b'1', 5),
(594, 'Necoclí', b'1', 5),
(595, 'Neira', b'1', 17),
(596, 'Neiva', b'1', 41),
(597, 'Nemocón', b'1', 25),
(598, 'Nilo', b'1', 25),
(599, 'Nimaima', b'1', 25),
(600, 'Nobsa', b'1', 15),
(601, 'Nocaima', b'1', 25),
(602, 'Norcasia', b'1', 17),
(603, 'Norosí', b'1', 13),
(604, 'Novita', b'1', 27),
(605, 'Nueva Granada', b'1', 47),
(606, 'Nuevo Colón', b'1', 15),
(607, 'Nunchía', b'1', 85),
(608, 'Nuquí', b'1', 27),
(609, 'Nátaga', b'1', 41),
(610, 'Obando', b'1', 76),
(611, 'Ocamonte', b'1', 68),
(612, 'Ocaña', b'1', 54),
(613, 'Oiba', b'1', 68),
(614, 'Oicatá', b'1', 15),
(615, 'Olaya', b'1', 5),
(616, 'Olaya Herrera', b'1', 52),
(617, 'Onzaga', b'1', 68),
(618, 'Oporapa', b'1', 41),
(619, 'Orito', b'1', 86),
(620, 'Orocué', b'1', 85),
(621, 'Ortega', b'1', 73),
(622, 'Ospina', b'1', 52),
(623, 'Otanche', b'1', 15),
(624, 'Ovejas', b'1', 70),
(625, 'Pachavita', b'1', 15),
(626, 'Pacho', b'1', 25),
(627, 'Padilla', b'1', 19),
(628, 'Paicol', b'1', 41),
(629, 'Pailitas', b'1', 20),
(630, 'Paime', b'1', 25),
(631, 'Paipa', b'1', 15),
(632, 'Pajarito', b'1', 15),
(633, 'Palermo', b'1', 41),
(634, 'Palestina', b'1', 17),
(635, 'Palestina', b'1', 41),
(636, 'Palmar', b'1', 68),
(637, 'Palmar de Varela', b'1', 8),
(638, 'Palmas del Socorro', b'1', 68),
(639, 'Palmira', b'1', 76),
(640, 'Palmito', b'1', 70),
(641, 'Palocabildo', b'1', 73),
(642, 'Pamplona', b'1', 54),
(643, 'Pamplonita', b'1', 54),
(644, 'Pandi', b'1', 25),
(645, 'Panqueba', b'1', 15),
(646, 'Paratebueno', b'1', 25),
(647, 'Pasca', b'1', 25),
(648, 'Patía (El Bordo)', b'1', 19),
(649, 'Pauna', b'1', 15),
(650, 'Paya', b'1', 15),
(651, 'Paz de Ariporo', b'1', 85),
(652, 'Paz de Río', b'1', 15),
(653, 'Pedraza', b'1', 47),
(654, 'Pelaya', b'1', 20),
(655, 'Pensilvania', b'1', 17),
(656, 'Peque', b'1', 5),
(657, 'Pereira', b'1', 66),
(658, 'Pesca', b'1', 15),
(659, 'Peñol', b'1', 5),
(660, 'Piamonte', b'1', 19),
(661, 'Pie de Cuesta', b'1', 68),
(662, 'Piedras', b'1', 73),
(663, 'Piendamó', b'1', 19),
(664, 'Pijao', b'1', 63),
(665, 'Pijiño', b'1', 47),
(666, 'Pinchote', b'1', 68),
(667, 'Pinillos', b'1', 13),
(668, 'Piojo', b'1', 8),
(669, 'Pisva', b'1', 15),
(670, 'Pital', b'1', 41),
(671, 'Pitalito', b'1', 41),
(672, 'Pivijay', b'1', 47),
(673, 'Planadas', b'1', 73),
(674, 'Planeta Rica', b'1', 23),
(675, 'Plato', b'1', 47),
(676, 'Policarpa', b'1', 52),
(677, 'Polonuevo', b'1', 8),
(678, 'Ponedera', b'1', 8),
(679, 'Popayán', b'1', 19),
(680, 'Pore', b'1', 85),
(681, 'Potosí', b'1', 52),
(682, 'Pradera', b'1', 76),
(683, 'Prado', b'1', 73),
(684, 'Providencia', b'1', 52),
(685, 'Providencia', b'1', 88),
(686, 'Pueblo Bello', b'1', 20),
(687, 'Pueblo Nuevo', b'1', 23),
(688, 'Pueblo Rico', b'1', 66),
(689, 'Pueblorrico', b'1', 5),
(690, 'Puebloviejo', b'1', 47),
(691, 'Puente Nacional', b'1', 68),
(692, 'Puerres', b'1', 52),
(693, 'Puerto Asís', b'1', 86),
(694, 'Puerto Berrío', b'1', 5),
(695, 'Puerto Boyacá', b'1', 15),
(696, 'Puerto Caicedo', b'1', 86),
(697, 'Puerto Carreño', b'1', 99),
(698, 'Puerto Colombia', b'1', 8),
(699, 'Puerto Concordia', b'1', 50),
(700, 'Puerto Escondido', b'1', 23),
(701, 'Puerto Gaitán', b'1', 50),
(702, 'Puerto Guzmán', b'1', 86),
(703, 'Puerto Leguízamo', b'1', 86),
(704, 'Puerto Libertador', b'1', 23),
(705, 'Puerto Lleras', b'1', 50),
(706, 'Puerto López', b'1', 50),
(707, 'Puerto Nare', b'1', 5),
(708, 'Puerto Nariño', b'1', 91),
(709, 'Puerto Parra', b'1', 68),
(710, 'Puerto Rico', b'1', 18),
(711, 'Puerto Rico', b'1', 50),
(712, 'Puerto Rondón', b'1', 81),
(713, 'Puerto Salgar', b'1', 25),
(714, 'Puerto Santander', b'1', 54),
(715, 'Puerto Tejada', b'1', 19),
(716, 'Puerto Triunfo', b'1', 5),
(717, 'Puerto Wilches', b'1', 68),
(718, 'Pulí', b'1', 25),
(719, 'Pupiales', b'1', 52),
(720, 'Puracé (Coconuco)', b'1', 19),
(721, 'Purificación', b'1', 73),
(722, 'Purísima', b'1', 23),
(723, 'Pácora', b'1', 17),
(724, 'Páez', b'1', 15),
(725, 'Páez (Belalcazar)', b'1', 19),
(726, 'Páramo', b'1', 68),
(727, 'Quebradanegra', b'1', 25),
(728, 'Quetame', b'1', 25),
(729, 'Quibdó', b'1', 27),
(730, 'Quimbaya', b'1', 63),
(731, 'Quinchía', b'1', 66),
(732, 'Quipama', b'1', 15),
(733, 'Quipile', b'1', 25),
(734, 'Ragonvalia', b'1', 54),
(735, 'Ramiriquí', b'1', 15),
(736, 'Recetor', b'1', 85),
(737, 'Regidor', b'1', 13),
(738, 'Remedios', b'1', 5),
(739, 'Remolino', b'1', 47),
(740, 'Repelón', b'1', 8),
(741, 'Restrepo', b'1', 50),
(742, 'Restrepo', b'1', 76),
(743, 'Retiro', b'1', 5),
(744, 'Ricaurte', b'1', 25),
(745, 'Ricaurte', b'1', 52),
(746, 'Rio Negro', b'1', 68),
(747, 'Rioblanco', b'1', 73),
(748, 'Riofrío', b'1', 76),
(749, 'Riohacha', b'1', 44),
(750, 'Risaralda', b'1', 17),
(751, 'Rivera', b'1', 41),
(752, 'Roberto Payán (San José)', b'1', 52),
(753, 'Roldanillo', b'1', 76),
(754, 'Roncesvalles', b'1', 73),
(755, 'Rondón', b'1', 15),
(756, 'Rosas', b'1', 19),
(757, 'Rovira', b'1', 73),
(758, 'Ráquira', b'1', 15),
(759, 'Río Iró', b'1', 27),
(760, 'Río Quito', b'1', 27),
(761, 'Río Sucio', b'1', 17),
(762, 'Río Viejo', b'1', 13),
(763, 'Río de oro', b'1', 20),
(764, 'Ríonegro', b'1', 5),
(765, 'Ríosucio', b'1', 27),
(766, 'Sabana de Torres', b'1', 68),
(767, 'Sabanagrande', b'1', 8),
(768, 'Sabanalarga', b'1', 5),
(769, 'Sabanalarga', b'1', 8),
(770, 'Sabanalarga', b'1', 85),
(771, 'Sabanas de San Angel (SAN ANGEL)', b'1', 47),
(772, 'Sabaneta', b'1', 5),
(773, 'Saboyá', b'1', 15),
(774, 'Sahagún', b'1', 23),
(775, 'Saladoblanco', b'1', 41),
(776, 'Salamina', b'1', 17),
(777, 'Salamina', b'1', 47),
(778, 'Salazar', b'1', 54),
(779, 'Saldaña', b'1', 73),
(780, 'Salento', b'1', 63),
(781, 'Salgar', b'1', 5),
(782, 'Samacá', b'1', 15),
(783, 'Samaniego', b'1', 52),
(784, 'Samaná', b'1', 17),
(785, 'Sampués', b'1', 70),
(786, 'San Agustín', b'1', 41),
(787, 'San Alberto', b'1', 20),
(788, 'San Andrés', b'1', 68),
(789, 'San Andrés Sotavento', b'1', 23),
(790, 'San Andrés de Cuerquía', b'1', 5),
(791, 'San Antero', b'1', 23),
(792, 'San Antonio', b'1', 73),
(793, 'San Antonio de Tequendama', b'1', 25),
(794, 'San Benito', b'1', 68),
(795, 'San Benito Abad', b'1', 70),
(796, 'San Bernardo', b'1', 25),
(797, 'San Bernardo', b'1', 52),
(798, 'San Bernardo del Viento', b'1', 23),
(799, 'San Calixto', b'1', 54),
(800, 'San Carlos', b'1', 5),
(801, 'San Carlos', b'1', 23),
(802, 'San Carlos de Guaroa', b'1', 50),
(803, 'San Cayetano', b'1', 25),
(804, 'San Cayetano', b'1', 54),
(805, 'San Cristobal', b'1', 13),
(806, 'San Diego', b'1', 20),
(807, 'San Eduardo', b'1', 15),
(808, 'San Estanislao', b'1', 13),
(809, 'San Fernando', b'1', 13),
(810, 'San Francisco', b'1', 5),
(811, 'San Francisco', b'1', 25),
(812, 'San Francisco', b'1', 86),
(813, 'San Gíl', b'1', 68),
(814, 'San Jacinto', b'1', 13),
(815, 'San Jacinto del Cauca', b'1', 13),
(816, 'San Jerónimo', b'1', 5),
(817, 'San Joaquín', b'1', 68),
(818, 'San José', b'1', 17),
(819, 'San José de Miranda', b'1', 68),
(820, 'San José de Montaña', b'1', 5),
(821, 'San José de Pare', b'1', 15),
(822, 'San José de Uré', b'1', 23),
(823, 'San José del Fragua', b'1', 18),
(824, 'San José del Guaviare', b'1', 95),
(825, 'San José del Palmar', b'1', 27),
(826, 'San Juan de Arama', b'1', 50),
(827, 'San Juan de Betulia', b'1', 70),
(828, 'San Juan de Nepomuceno', b'1', 13),
(829, 'San Juan de Pasto', b'1', 52),
(830, 'San Juan de Río Seco', b'1', 25),
(831, 'San Juan de Urabá', b'1', 5),
(832, 'San Juan del Cesar', b'1', 44),
(833, 'San Juanito', b'1', 50),
(834, 'San Lorenzo', b'1', 52),
(835, 'San Luis', b'1', 73),
(836, 'San Luís', b'1', 5),
(837, 'San Luís de Gaceno', b'1', 15),
(838, 'San Luís de Palenque', b'1', 85),
(839, 'San Marcos', b'1', 70),
(840, 'San Martín', b'1', 20),
(841, 'San Martín', b'1', 50),
(842, 'San Martín de Loba', b'1', 13),
(843, 'San Mateo', b'1', 15),
(844, 'San Miguel', b'1', 68),
(845, 'San Miguel', b'1', 86),
(846, 'San Miguel de Sema', b'1', 15),
(847, 'San Onofre', b'1', 70),
(848, 'San Pablo', b'1', 13),
(849, 'San Pablo', b'1', 52),
(850, 'San Pablo de Borbur', b'1', 15),
(851, 'San Pedro', b'1', 5),
(852, 'San Pedro', b'1', 70),
(853, 'San Pedro', b'1', 76),
(854, 'San Pedro de Cartago', b'1', 52),
(855, 'San Pedro de Urabá', b'1', 5),
(856, 'San Pelayo', b'1', 23),
(857, 'San Rafael', b'1', 5),
(858, 'San Roque', b'1', 5),
(859, 'San Sebastián', b'1', 19),
(860, 'San Sebastián de Buenavista', b'1', 47),
(861, 'San Vicente', b'1', 5),
(862, 'San Vicente del Caguán', b'1', 18),
(863, 'San Vicente del Chucurí', b'1', 68),
(864, 'San Zenón', b'1', 47),
(865, 'Sandoná', b'1', 52),
(866, 'Santa Ana', b'1', 47),
(867, 'Santa Bárbara', b'1', 5),
(868, 'Santa Bárbara', b'1', 68),
(869, 'Santa Bárbara (Iscuandé)', b'1', 52),
(870, 'Santa Bárbara de Pinto', b'1', 47),
(871, 'Santa Catalina', b'1', 13),
(872, 'Santa Fé de Antioquia', b'1', 5),
(873, 'Santa Genoveva de Docorodó', b'1', 27),
(874, 'Santa Helena del Opón', b'1', 68),
(875, 'Santa Isabel', b'1', 73),
(876, 'Santa Lucía', b'1', 8),
(877, 'Santa Marta', b'1', 47),
(878, 'Santa María', b'1', 15),
(879, 'Santa María', b'1', 41),
(880, 'Santa Rosa', b'1', 13),
(881, 'Santa Rosa', b'1', 19),
(882, 'Santa Rosa de Cabal', b'1', 66),
(883, 'Santa Rosa de Osos', b'1', 5),
(884, 'Santa Rosa de Viterbo', b'1', 15),
(885, 'Santa Rosa del Sur', b'1', 13),
(886, 'Santa Rosalía', b'1', 99),
(887, 'Santa Sofía', b'1', 15),
(888, 'Santana', b'1', 15),
(889, 'Santander de Quilichao', b'1', 19),
(890, 'Santiago', b'1', 54),
(891, 'Santiago', b'1', 86),
(892, 'Santo Domingo', b'1', 5),
(893, 'Santo Tomás', b'1', 8),
(894, 'Santuario', b'1', 5),
(895, 'Santuario', b'1', 66),
(896, 'Sapuyes', b'1', 52),
(897, 'Saravena', b'1', 81),
(898, 'Sardinata', b'1', 54),
(899, 'Sasaima', b'1', 25),
(900, 'Sativanorte', b'1', 15),
(901, 'Sativasur', b'1', 15),
(902, 'Segovia', b'1', 5),
(903, 'Sesquilé', b'1', 25),
(904, 'Sevilla', b'1', 76),
(905, 'Siachoque', b'1', 15),
(906, 'Sibaté', b'1', 25),
(907, 'Sibundoy', b'1', 86),
(908, 'Silos', b'1', 54),
(909, 'Silvania', b'1', 25),
(910, 'Silvia', b'1', 19),
(911, 'Simacota', b'1', 68),
(912, 'Simijaca', b'1', 25),
(913, 'Simití', b'1', 13),
(914, 'Sincelejo', b'1', 70),
(915, 'Sincé', b'1', 70),
(916, 'Sipí', b'1', 27),
(917, 'Sitionuevo', b'1', 47),
(918, 'Soacha', b'1', 25),
(919, 'Soatá', b'1', 15),
(920, 'Socha', b'1', 15),
(921, 'Socorro', b'1', 68),
(922, 'Socotá', b'1', 15),
(923, 'Sogamoso', b'1', 15),
(924, 'Solano', b'1', 18),
(925, 'Soledad', b'1', 8),
(926, 'Solita', b'1', 18),
(927, 'Somondoco', b'1', 15),
(928, 'Sonsón', b'1', 5),
(929, 'Sopetrán', b'1', 5),
(930, 'Soplaviento', b'1', 13),
(931, 'Sopó', b'1', 25),
(932, 'Sora', b'1', 15),
(933, 'Soracá', b'1', 15),
(934, 'Sotaquirá', b'1', 15),
(935, 'Sotara (Paispamba)', b'1', 19),
(936, 'Sotomayor (Los Andes)', b'1', 52),
(937, 'Suaita', b'1', 68),
(938, 'Suan', b'1', 8),
(939, 'Suaza', b'1', 41),
(940, 'Subachoque', b'1', 25),
(941, 'Sucre', b'1', 19),
(942, 'Sucre', b'1', 68),
(943, 'Sucre', b'1', 70),
(944, 'Suesca', b'1', 25),
(945, 'Supatá', b'1', 25),
(946, 'Supía', b'1', 17),
(947, 'Suratá', b'1', 68),
(948, 'Susa', b'1', 25),
(949, 'Susacón', b'1', 15),
(950, 'Sutamarchán', b'1', 15),
(951, 'Sutatausa', b'1', 25),
(952, 'Sutatenza', b'1', 15),
(953, 'Suárez', b'1', 19),
(954, 'Suárez', b'1', 73),
(955, 'Sácama', b'1', 85),
(956, 'Sáchica', b'1', 15),
(957, 'Tabio', b'1', 25),
(958, 'Tadó', b'1', 27),
(959, 'Talaigua Nuevo', b'1', 13),
(960, 'Tamalameque', b'1', 20),
(961, 'Tame', b'1', 81),
(962, 'Taminango', b'1', 52),
(963, 'Tangua', b'1', 52),
(964, 'Taraira', b'1', 97),
(965, 'Tarazá', b'1', 5),
(966, 'Tarqui', b'1', 41),
(967, 'Tarso', b'1', 5),
(968, 'Tasco', b'1', 15),
(969, 'Tauramena', b'1', 85),
(970, 'Tausa', b'1', 25),
(971, 'Tello', b'1', 41),
(972, 'Tena', b'1', 25),
(973, 'Tenerife', b'1', 47),
(974, 'Tenjo', b'1', 25),
(975, 'Tenza', b'1', 15),
(976, 'Teorama', b'1', 54),
(977, 'Teruel', b'1', 41),
(978, 'Tesalia', b'1', 41),
(979, 'Tibacuy', b'1', 25),
(980, 'Tibaná', b'1', 15),
(981, 'Tibasosa', b'1', 15),
(982, 'Tibirita', b'1', 25),
(983, 'Tibú', b'1', 54),
(984, 'Tierralta', b'1', 23),
(985, 'Timaná', b'1', 41),
(986, 'Timbiquí', b'1', 19),
(987, 'Timbío', b'1', 19),
(988, 'Tinjacá', b'1', 15),
(989, 'Tipacoque', b'1', 15),
(990, 'Tiquisio (Puerto Rico)', b'1', 13),
(991, 'Titiribí', b'1', 5),
(992, 'Toca', b'1', 15),
(993, 'Tocaima', b'1', 25),
(994, 'Tocancipá', b'1', 25),
(995, 'Toguí', b'1', 15),
(996, 'Toledo', b'1', 5),
(997, 'Toledo', b'1', 54),
(998, 'Tolú', b'1', 70),
(999, 'Tolú Viejo', b'1', 70),
(1000, 'Tona', b'1', 68),
(1001, 'Topagá', b'1', 15),
(1002, 'Topaipí', b'1', 25),
(1003, 'Toribío', b'1', 19),
(1004, 'Toro', b'1', 76),
(1005, 'Tota', b'1', 15),
(1006, 'Totoró', b'1', 19),
(1007, 'Trinidad', b'1', 85),
(1008, 'Trujillo', b'1', 76),
(1009, 'Tubará', b'1', 8),
(1010, 'Tuchín', b'1', 23),
(1011, 'Tulúa', b'1', 76),
(1012, 'Tumaco', b'1', 52),
(1013, 'Tunja', b'1', 15),
(1014, 'Tunungua', b'1', 15),
(1015, 'Turbaco', b'1', 13),
(1016, 'Turbaná', b'1', 13),
(1017, 'Turbo', b'1', 5),
(1018, 'Turmequé', b'1', 15),
(1019, 'Tuta', b'1', 15),
(1020, 'Tutasá', b'1', 15),
(1021, 'Támara', b'1', 85),
(1022, 'Támesis', b'1', 5),
(1023, 'Túquerres', b'1', 52),
(1024, 'Ubalá', b'1', 25),
(1025, 'Ubaque', b'1', 25),
(1026, 'Ubaté', b'1', 25),
(1027, 'Ulloa', b'1', 76),
(1028, 'Une', b'1', 25),
(1029, 'Unguía', b'1', 27),
(1030, 'Unión Panamericana (ÁNIMAS)', b'1', 27),
(1031, 'Uramita', b'1', 5),
(1032, 'Uribe', b'1', 50),
(1033, 'Uribia', b'1', 44),
(1034, 'Urrao', b'1', 5),
(1035, 'Urumita', b'1', 44),
(1036, 'Usiacuri', b'1', 8),
(1037, 'Valdivia', b'1', 5),
(1038, 'Valencia', b'1', 23),
(1039, 'Valle de San José', b'1', 68),
(1040, 'Valle de San Juan', b'1', 73),
(1041, 'Valle del Guamuez', b'1', 86),
(1042, 'Valledupar', b'1', 20),
(1043, 'Valparaiso', b'1', 5),
(1044, 'Valparaiso', b'1', 18),
(1045, 'Vegachí', b'1', 5),
(1046, 'Venadillo', b'1', 73),
(1047, 'Venecia', b'1', 5),
(1048, 'Venecia (Ospina Pérez)', b'1', 25),
(1049, 'Ventaquemada', b'1', 15),
(1050, 'Vergara', b'1', 25),
(1051, 'Versalles', b'1', 76),
(1052, 'Vetas', b'1', 68),
(1053, 'Viani', b'1', 25),
(1054, 'Vigía del Fuerte', b'1', 5),
(1055, 'Vijes', b'1', 76),
(1056, 'Villa Caro', b'1', 54),
(1057, 'Villa Rica', b'1', 19),
(1058, 'Villa de Leiva', b'1', 15),
(1059, 'Villa del Rosario', b'1', 54),
(1060, 'Villagarzón', b'1', 86),
(1061, 'Villagómez', b'1', 25),
(1062, 'Villahermosa', b'1', 73),
(1063, 'Villamaría', b'1', 17),
(1064, 'Villanueva', b'1', 13),
(1065, 'Villanueva', b'1', 44),
(1066, 'Villanueva', b'1', 68),
(1067, 'Villanueva', b'1', 85),
(1068, 'Villapinzón', b'1', 25),
(1069, 'Villarrica', b'1', 73),
(1070, 'Villavicencio', b'1', 50),
(1071, 'Villavieja', b'1', 41),
(1072, 'Villeta', b'1', 25),
(1073, 'Viotá', b'1', 25),
(1074, 'Viracachá', b'1', 15),
(1075, 'Vista Hermosa', b'1', 50),
(1076, 'Viterbo', b'1', 17),
(1077, 'Vélez', b'1', 68),
(1078, 'Yacopí', b'1', 25),
(1079, 'Yacuanquer', b'1', 52),
(1080, 'Yaguará', b'1', 41),
(1081, 'Yalí', b'1', 5),
(1082, 'Yarumal', b'1', 5),
(1083, 'Yolombó', b'1', 5),
(1084, 'Yondó (Casabe)', b'1', 5),
(1085, 'Yopal', b'1', 85),
(1086, 'Yotoco', b'1', 76),
(1087, 'Yumbo', b'1', 76),
(1088, 'Zambrano', b'1', 13),
(1089, 'Zapatoca', b'1', 68),
(1090, 'Zapayán (PUNTA DE PIEDRAS)', b'1', 47),
(1091, 'Zaragoza', b'1', 5),
(1092, 'Zarzal', b'1', 76),
(1093, 'Zetaquirá', b'1', 15),
(1094, 'Zipacón', b'1', 25),
(1095, 'Zipaquirá', b'1', 25),
(1096, 'Zona Bananera (PRADO - SEVILLA)', b'1', 47),
(1097, 'Ábrego', b'1', 54),
(1098, 'Íquira', b'1', 41),
(1099, 'Úmbita', b'1', 15),
(1100, 'Útica', b'1', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_authentications`
--

CREATE TABLE `user_authentications` (
  `ua_user_id` int(10) NOT NULL,
  `ua_email` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `ua_password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ua_token` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ua_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_contacts`
--

CREATE TABLE `user_contacts` (
  `uc_auto_id` int(10) NOT NULL,
  `uc_user_id` int(10) NOT NULL,
  `uc_type` enum('movil','fijo','','') COLLATE utf8_spanish_ci NOT NULL,
  `uc_indicative` int(5) NOT NULL,
  `uc_number` int(25) NOT NULL,
  `uc_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user_contacts`
--

INSERT INTO `user_contacts` (`uc_auto_id`, `uc_user_id`, `uc_type`, `uc_indicative`, `uc_number`, `uc_status`) VALUES
(9, 106, 'movil', 57, 2147483647, 1),
(10, 107, 'movil', 57, 2147483647, 1),
(11, 108, 'movil', 57, 312584756, 1),
(12, 109, 'movil', 57, 2147483647, 1),
(13, 110, 'movil', 57, 325225874, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_data_personals`
--

CREATE TABLE `user_data_personals` (
  `udp_user_id` int(10) NOT NULL,
  `udp_type` enum('TI','CC','CE. EXT','') COLLATE utf8_spanish_ci NOT NULL,
  `udp_identification` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `udp_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `udp_last_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `udp_affiliate` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user_data_personals`
--

INSERT INTO `user_data_personals` (`udp_user_id`, `udp_type`, `udp_identification`, `udp_name`, `udp_last_name`, `udp_affiliate`) VALUES
(106, 'CC', '1084577898', 'Sergio Yamit', ' Rivera Flor', 0),
(107, 'CC', '12589634', 'Juan Paulo', 'Rojas Palomino', 0),
(108, 'CC', '551479777', 'Ana Juana', 'Lozano', 0),
(109, 'CC', '123456789', 'Juan', 'Gómez Méndez', 0),
(110, 'CC', '123', 'Juan Camilo', 'López Rojas', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_directions`
--

CREATE TABLE `user_directions` (
  `udi_auto_id` int(10) NOT NULL,
  `udi_farm_id` int(11) NOT NULL,
  `udi_country` varchar(3) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'COL',
  `udi_departament` int(2) NOT NULL,
  `udi_province` int(5) NOT NULL,
  `udi_direction` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `udi_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user_directions`
--

INSERT INTO `user_directions` (`udi_auto_id`, `udi_farm_id`, `udi_country`, `udi_departament`, `udi_province`, `udi_direction`, `udi_status`) VALUES
(29, 32, 'COL', 41, 609, 'La Hondura', 0),
(30, 33, 'COL', 41, 478, 'El Salado', 0),
(31, 34, 'COL', 41, 478, 'Alto Cañada', 0),
(32, 35, 'COL', 41, 22, 'La Hormiga', 1),
(33, 36, 'COL', 41, 478, 'La Camelia', 1),
(34, 37, 'COL', 41, 478, 'El teniente', 1),
(35, 38, 'COL', 41, 478, 'La Dona', 1),
(36, 39, 'COL', 41, 478, 'Alto cañada', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_emails`
--

CREATE TABLE `user_emails` (
  `uem_auto_id` int(10) NOT NULL,
  `uem_user_id` int(10) NOT NULL,
  `uem_type` enum('Principal','Personal','','') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Principal',
  `uem_email` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `uem_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user_emails`
--

INSERT INTO `user_emails` (`uem_auto_id`, `uem_user_id`, `uem_type`, `uem_email`, `uem_status`) VALUES
(9, 106, 'Principal', 'syrivera89@misena.edu.co', 1),
(10, 107, 'Personal', 'juanpaulo@gmail.com', 1),
(11, 108, '', 'juana@gmail.com', 1),
(12, 109, '', 'syrivera89@misena.edu.co', 1),
(13, 110, 'Principal', 'Data', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_farms`
--

CREATE TABLE `user_farms` (
  `ufa_auto_id` int(10) NOT NULL,
  `ufa_user_id` int(10) NOT NULL,
  `ufa_farm_name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ufa_create` datetime NOT NULL,
  `ufa_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ufa_status` bit(1) NOT NULL DEFAULT b'1',
  `ufa_validity` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user_farms`
--

INSERT INTO `user_farms` (`ufa_auto_id`, `ufa_user_id`, `ufa_farm_name`, `ufa_create`, `ufa_updated`, `ufa_status`, `ufa_validity`) VALUES
(32, 106, 'La Perla', '2021-01-26 15:53:14', '2021-01-26 20:53:14', b'1', b'1'),
(33, 107, 'La Loma', '2021-01-26 15:59:14', '2021-01-26 20:59:14', b'1', b'1'),
(34, 108, 'La Juanita', '2021-01-26 16:39:33', '2021-01-26 21:39:33', b'1', b'1'),
(35, 106, 'La Vella', '2021-02-06 17:48:17', '2021-02-06 22:48:17', b'1', b'1'),
(36, 109, 'La Juana', '2021-02-14 18:31:28', '2021-02-14 23:31:28', b'1', b'1'),
(37, 110, 'La montaña', '2021-02-14 18:33:36', '2021-02-14 23:33:36', b'1', b'1'),
(38, 110, 'El mirador', '2021-02-14 18:34:11', '2021-02-14 23:34:11', b'1', b'1'),
(39, 106, 'La Rayuela', '2021-03-26 11:27:56', '2021-03-26 16:27:56', b'1', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_identificators`
--

CREATE TABLE `user_identificators` (
  `ui_auto_id` int(11) NOT NULL,
  `ui_estado` bit(1) NOT NULL DEFAULT b'0',
  `ui_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user_identificators`
--

INSERT INTO `user_identificators` (`ui_auto_id`, `ui_estado`, `ui_created`) VALUES
(106, b'1', '2021-01-26 15:52:11'),
(107, b'1', '2021-01-26 15:58:52'),
(108, b'1', '2021-01-26 16:39:08'),
(109, b'1', '2021-02-14 18:31:07'),
(110, b'1', '2021-02-14 18:32:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `varietys`
--

CREATE TABLE `varietys` (
  `vari_auto_id` int(11) NOT NULL,
  `vari_name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `vari_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `vari_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `varietys`
--

INSERT INTO `varietys` (`vari_auto_id`, `vari_name`, `vari_updated`, `vari_status`) VALUES
(0, 'N/A', '2021-02-08 17:01:07', 1),
(1, 'Caturra', '2021-02-08 16:58:10', 1),
(2, 'Colombia', '2021-01-26 22:16:14', 1),
(3, 'Tipica', '2021-01-26 22:16:55', 1),
(4, 'Borbon', '2021-01-26 22:16:55', 1),
(5, 'Tabi', '2021-01-26 22:17:13', 1),
(6, 'Maragogipe', '2021-01-26 22:17:13', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coffee_analysis_result`
--
ALTER TABLE `coffee_analysis_result`
  ADD PRIMARY KEY (`car_auto_id`),
  ADD KEY `ar_entry_id` (`car_coffee_entry_id`),
  ADD KEY `car_line` (`car_line`),
  ADD KEY `car_variety` (`car_variety`);

--
-- Indices de la tabla `coffee_body`
--
ALTER TABLE `coffee_body`
  ADD PRIMARY KEY (`cb_auto_id`),
  ADD KEY `coffee_body_ibfk_1` (`cb_coffee_entry_id`);

--
-- Indices de la tabla `coffee_defects`
--
ALTER TABLE `coffee_defects`
  ADD PRIMARY KEY (`cd_auto_id`),
  ADD KEY `coffee_defects_ibfk_1` (`cd_coffee_entry_id`);

--
-- Indices de la tabla `coffee_entry_data`
--
ALTER TABLE `coffee_entry_data`
  ADD PRIMARY KEY (`ed_auto_id`),
  ADD KEY `ed_purchase_id` (`ed_purchase_id`);

--
-- Indices de la tabla `coffee_flavor`
--
ALTER TABLE `coffee_flavor`
  ADD PRIMARY KEY (`cfl_auto_id`),
  ADD KEY `coffee_flavor_ibfk_1` (`cfl_coffee_entry_id`);

--
-- Indices de la tabla `coffee_fragance`
--
ALTER TABLE `coffee_fragance`
  ADD PRIMARY KEY (`cf_auto_id`),
  ADD KEY `coffee_fragance_ibfk_1` (`cf_coffee_entry_id`);

--
-- Indices de la tabla `coffee_physical_analysis`
--
ALTER TABLE `coffee_physical_analysis`
  ADD PRIMARY KEY (`cpa_auto_id`),
  ADD KEY `pa_entry_id` (`cpa_coffee_entry_id`);

--
-- Indices de la tabla `coffee_punctuation_sensory`
--
ALTER TABLE `coffee_punctuation_sensory`
  ADD PRIMARY KEY (`cps_auto_id`),
  ADD KEY `ps_entry_id` (`cps_coffee_entry_id`);

--
-- Indices de la tabla `lines_coffees`
--
ALTER TABLE `lines_coffees`
  ADD PRIMARY KEY (`lcp_auto_id`);

--
-- Indices de la tabla `purchase_price`
--
ALTER TABLE `purchase_price`
  ADD PRIMARY KEY (`pp_auto_id`),
  ADD KEY `purchase_price_ibfk_1` (`pp_purchase_id`);

--
-- Indices de la tabla `purchase_receipt`
--
ALTER TABLE `purchase_receipt`
  ADD PRIMARY KEY (`pr_auto_id`),
  ADD KEY `pr_farm_id` (`pr_farm_id`);

--
-- Indices de la tabla `purchase_status`
--
ALTER TABLE `purchase_status`
  ADD PRIMARY KEY (`pst_auto_id`),
  ADD KEY `pst_user_id` (`pst_user_id`),
  ADD KEY `pst_purchase_id` (`pst_purchase_id`),
  ADD KEY `purchase_status_ibfk_2` (`pst_purchase_status_id`);

--
-- Indices de la tabla `purchase_status_names`
--
ALTER TABLE `purchase_status_names`
  ADD PRIMARY KEY (`psn_auto_id`);

--
-- Indices de la tabla `ubications_departaments`
--
ALTER TABLE `ubications_departaments`
  ADD PRIMARY KEY (`ubd_id_departamento`);

--
-- Indices de la tabla `ubications_towns`
--
ALTER TABLE `ubications_towns`
  ADD PRIMARY KEY (`ubt_id_municipio`),
  ADD KEY `departamento_id` (`ubt_id_departament`);

--
-- Indices de la tabla `user_authentications`
--
ALTER TABLE `user_authentications`
  ADD UNIQUE KEY `ua_user_id` (`ua_user_id`);

--
-- Indices de la tabla `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`uc_auto_id`),
  ADD KEY `uc_user_id` (`uc_user_id`);

--
-- Indices de la tabla `user_data_personals`
--
ALTER TABLE `user_data_personals`
  ADD UNIQUE KEY `udp_user_id` (`udp_user_id`);

--
-- Indices de la tabla `user_directions`
--
ALTER TABLE `user_directions`
  ADD PRIMARY KEY (`udi_auto_id`),
  ADD KEY `udi_farm_id` (`udi_farm_id`);

--
-- Indices de la tabla `user_emails`
--
ALTER TABLE `user_emails`
  ADD PRIMARY KEY (`uem_auto_id`),
  ADD KEY `uem_user_id` (`uem_user_id`);

--
-- Indices de la tabla `user_farms`
--
ALTER TABLE `user_farms`
  ADD PRIMARY KEY (`ufa_auto_id`),
  ADD KEY `ufa_user_id` (`ufa_user_id`);

--
-- Indices de la tabla `user_identificators`
--
ALTER TABLE `user_identificators`
  ADD PRIMARY KEY (`ui_auto_id`);

--
-- Indices de la tabla `varietys`
--
ALTER TABLE `varietys`
  ADD PRIMARY KEY (`vari_auto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coffee_analysis_result`
--
ALTER TABLE `coffee_analysis_result`
  MODIFY `car_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `coffee_body`
--
ALTER TABLE `coffee_body`
  MODIFY `cb_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `coffee_defects`
--
ALTER TABLE `coffee_defects`
  MODIFY `cd_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `coffee_entry_data`
--
ALTER TABLE `coffee_entry_data`
  MODIFY `ed_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `coffee_flavor`
--
ALTER TABLE `coffee_flavor`
  MODIFY `cfl_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `coffee_fragance`
--
ALTER TABLE `coffee_fragance`
  MODIFY `cf_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `coffee_physical_analysis`
--
ALTER TABLE `coffee_physical_analysis`
  MODIFY `cpa_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `coffee_punctuation_sensory`
--
ALTER TABLE `coffee_punctuation_sensory`
  MODIFY `cps_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `lines_coffees`
--
ALTER TABLE `lines_coffees`
  MODIFY `lcp_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `purchase_price`
--
ALTER TABLE `purchase_price`
  MODIFY `pp_auto_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase_receipt`
--
ALTER TABLE `purchase_receipt`
  MODIFY `pr_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `purchase_status`
--
ALTER TABLE `purchase_status`
  MODIFY `pst_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `purchase_status_names`
--
ALTER TABLE `purchase_status_names`
  MODIFY `psn_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ubications_departaments`
--
ALTER TABLE `ubications_departaments`
  MODIFY `ubd_id_departamento` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `ubications_towns`
--
ALTER TABLE `ubications_towns`
  MODIFY `ubt_id_municipio` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT de la tabla `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `uc_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `user_directions`
--
ALTER TABLE `user_directions`
  MODIFY `udi_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `user_emails`
--
ALTER TABLE `user_emails`
  MODIFY `uem_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `user_farms`
--
ALTER TABLE `user_farms`
  MODIFY `ufa_auto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `user_identificators`
--
ALTER TABLE `user_identificators`
  MODIFY `ui_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `varietys`
--
ALTER TABLE `varietys`
  MODIFY `vari_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coffee_analysis_result`
--
ALTER TABLE `coffee_analysis_result`
  ADD CONSTRAINT `coffee_analysis_result_ibfk_1` FOREIGN KEY (`car_coffee_entry_id`) REFERENCES `coffee_entry_data` (`ed_auto_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coffee_analysis_result_ibfk_2` FOREIGN KEY (`car_line`) REFERENCES `lines_coffees` (`lcp_auto_id`),
  ADD CONSTRAINT `coffee_analysis_result_ibfk_3` FOREIGN KEY (`car_variety`) REFERENCES `varietys` (`vari_auto_id`);

--
-- Filtros para la tabla `coffee_body`
--
ALTER TABLE `coffee_body`
  ADD CONSTRAINT `coffee_body_ibfk_1` FOREIGN KEY (`cb_coffee_entry_id`) REFERENCES `coffee_entry_data` (`ed_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `coffee_defects`
--
ALTER TABLE `coffee_defects`
  ADD CONSTRAINT `coffee_defects_ibfk_1` FOREIGN KEY (`cd_coffee_entry_id`) REFERENCES `coffee_entry_data` (`ed_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `coffee_entry_data`
--
ALTER TABLE `coffee_entry_data`
  ADD CONSTRAINT `coffee_entry_data_ibfk_1` FOREIGN KEY (`ed_purchase_id`) REFERENCES `purchase_receipt` (`pr_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `coffee_flavor`
--
ALTER TABLE `coffee_flavor`
  ADD CONSTRAINT `coffee_flavor_ibfk_1` FOREIGN KEY (`cfl_coffee_entry_id`) REFERENCES `coffee_entry_data` (`ed_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `coffee_fragance`
--
ALTER TABLE `coffee_fragance`
  ADD CONSTRAINT `coffee_fragance_ibfk_1` FOREIGN KEY (`cf_coffee_entry_id`) REFERENCES `coffee_entry_data` (`ed_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `coffee_physical_analysis`
--
ALTER TABLE `coffee_physical_analysis`
  ADD CONSTRAINT `coffee_physical_analysis_ibfk_1` FOREIGN KEY (`cpa_coffee_entry_id`) REFERENCES `coffee_entry_data` (`ed_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `coffee_punctuation_sensory`
--
ALTER TABLE `coffee_punctuation_sensory`
  ADD CONSTRAINT `coffee_punctuation_sensory_ibfk_1` FOREIGN KEY (`cps_coffee_entry_id`) REFERENCES `coffee_entry_data` (`ed_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `purchase_price`
--
ALTER TABLE `purchase_price`
  ADD CONSTRAINT `purchase_price_ibfk_1` FOREIGN KEY (`pp_purchase_id`) REFERENCES `purchase_receipt` (`pr_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `purchase_receipt`
--
ALTER TABLE `purchase_receipt`
  ADD CONSTRAINT `purchase_receipt_ibfk_1` FOREIGN KEY (`pr_farm_id`) REFERENCES `user_farms` (`ufa_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `purchase_status`
--
ALTER TABLE `purchase_status`
  ADD CONSTRAINT `purchase_status_ibfk_1` FOREIGN KEY (`pst_purchase_id`) REFERENCES `purchase_receipt` (`pr_auto_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_status_ibfk_2` FOREIGN KEY (`pst_purchase_status_id`) REFERENCES `purchase_status_names` (`psn_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_authentications`
--
ALTER TABLE `user_authentications`
  ADD CONSTRAINT `user_authentications_ibfk_1` FOREIGN KEY (`ua_user_id`) REFERENCES `user_identificators` (`ui_auto_id`);

--
-- Filtros para la tabla `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD CONSTRAINT `user_contacts_ibfk_1` FOREIGN KEY (`uc_user_id`) REFERENCES `user_identificators` (`ui_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_data_personals`
--
ALTER TABLE `user_data_personals`
  ADD CONSTRAINT `user_data_personals_ibfk_1` FOREIGN KEY (`udp_user_id`) REFERENCES `user_identificators` (`ui_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_directions`
--
ALTER TABLE `user_directions`
  ADD CONSTRAINT `user_directions_ibfk_1` FOREIGN KEY (`udi_farm_id`) REFERENCES `user_farms` (`ufa_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_emails`
--
ALTER TABLE `user_emails`
  ADD CONSTRAINT `user_emails_ibfk_1` FOREIGN KEY (`uem_user_id`) REFERENCES `user_identificators` (`ui_auto_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_farms`
--
ALTER TABLE `user_farms`
  ADD CONSTRAINT `user_farms_ibfk_1` FOREIGN KEY (`ufa_user_id`) REFERENCES `user_identificators` (`ui_auto_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
