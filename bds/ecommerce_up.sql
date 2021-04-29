-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2021 a las 23:34:32
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
-- Base de datos: `ecommerce_up`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `ca_id` int(11) NOT NULL,
  `ca_cliente` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `ca_momentanio` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `ca_estado` varchar(20) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'activo',
  `ca_creado` datetime NOT NULL,
  `ca_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `num_factura` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`ca_id`, `ca_cliente`, `ca_momentanio`, `ca_estado`, `ca_creado`, `ca_update`, `num_factura`) VALUES
(44, '1', '19121907122412248272', 'Solicitado', '2019-12-19 12:07:24', '2019-12-19 09:24:43', '59'),
(45, '1', '1912191012351235443', 'Confirmada', '2019-12-19 12:10:35', '2019-12-22 05:48:26', '59'),
(46, '1', '1912191012351235443', 'entregado', '2019-12-19 12:10:47', '2019-12-22 05:49:50', '59'),
(47, '1', '19121910123312334509', 'Solicitado', '2019-12-19 12:10:33', '2019-12-19 09:24:43', '59'),
(48, '1', '19121910121412148891', 'Solicitado', '2019-12-19 12:10:14', '2019-12-19 09:27:23', '60'),
(49, '1', '1912220112251225224', 'Solicitado', '2019-12-22 12:01:25', '2019-12-22 00:30:12', '61'),
(50, '1', '19122207122812281564', 'Solicitado', '2019-12-22 12:07:28', '2019-12-27 17:15:03', '62'),
(51, '1', '19122706122012205509', 'activo', '2019-12-27 12:06:05', '2019-12-27 05:08:05', NULL),
(52, '1', '20022501021102118072', 'activo', '2020-02-25 02:01:41', '2020-02-25 00:01:41', NULL),
(53, '1', '20110606113211326133', 'activo', '2020-11-06 11:06:24', '2020-11-06 05:58:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_productos`
--

CREATE TABLE `carrito_productos` (
  `id_auto_pc` int(11) NOT NULL,
  `pc_carrito` varchar(40) CHARACTER SET utf8mb4 NOT NULL,
  `pc_producto_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `pc_prod_total_cant` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `pc_prod_pre_unid` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `pc_prod_total_v` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `pc_producto_nombre` text CHARACTER SET utf8mb4 NOT NULL,
  `pc_producto_descr` text CHARACTER SET utf8mb4 NOT NULL,
  `pc_prod_ficha` text CHARACTER SET utf8mb4 NOT NULL,
  `pc_prod_imagenes` varchar(90) CHARACTER SET utf8mb4 NOT NULL,
  `pc_producto_cate` varchar(2) CHARACTER SET utf8mb4 NOT NULL,
  `pc_compra_estado` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `pc_factu` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `pc_creado` datetime NOT NULL,
  `pc_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pc_estado` tinyint(1) NOT NULL DEFAULT 1,
  `pc_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `pc_factura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrito_productos`
--

INSERT INTO `carrito_productos` (`id_auto_pc`, `pc_carrito`, `pc_producto_id`, `pc_prod_total_cant`, `pc_prod_pre_unid`, `pc_prod_total_v`, `pc_producto_nombre`, `pc_producto_descr`, `pc_prod_ficha`, `pc_prod_imagenes`, `pc_producto_cate`, `pc_compra_estado`, `pc_factu`, `pc_creado`, `pc_updated`, `pc_estado`, `pc_vigencia`, `pc_factura`) VALUES
(41, '44', '40', '1', '12000', '12000', 'Café Molido ', 'Café Molido con el mejor grano seleccionado, 100% Arábigo y 100% café supremo, con un sabor dulce y notas a chocolate.\r\n\r\n', 'Café Molido con el mejor grano seleccionado, 100% Arábigo y 100% café supremo, en una tostión media y molienda media, y presentaciones de 500 gramos, te invita a vivir con un sabor dulce y notas a chocolate un encuentro único entre el aroma, el cuerpo y el verdadero sabor.\r\n\r\n', '95', '21', '1', '1', '2019-12-19 12:07:24', '2019-12-19 06:02:24', 1, 1, 0),
(42, '45', '38', '1', '2000', '2000', 'Naranjas X 10 Unidades', 'La naranja es una fruta cítrica obtenida del naranjo dulce (Citrus × sinensis), del naranjo amargo (Citrus × aurantium) y de naranjos de otras variedades o híbridos, de origen asiático.1? Es un hesperidio carnoso de cáscara más o menos gruesa y endurecida, y su pulpa está formada típicamente por once gajos u hollejos llenos de jugo, el cual contiene mucha vitamina C, flavonoides y aceites esenciales. Se cultiva como un antiguo árbol ornamental y para obtener fragancias de sus frutos.', ' Es más pequeña y dulce que el pomelo o toronja y más grande, aunque menos perfumada que la mandarina. Existen numerosas variedades de naranjas, siendo la mayoría híbridos producidos a partir de las especies Citrus maxima (pamplemusa), Citrus reticulata (mandarina) y Citrus medica (cidro).', '90|89', '21', '1', '1', '2019-12-19 12:10:35', '2019-12-19 09:03:35', 1, 1, 0),
(43, '46', '33', '2', '300000', '600000', 'Cuadros Abstractos Decorativos Al Oleo En Lienzo 1.65x80 Cms', 'MEDIDAS 1.65 MTRS X 80 CMS\r\n\r\nDecora tu casa u oficina con nuestros Bellos cuadros modernos y minimalistas al oleo sobre lienzo, nuestros productos son pintados a mano por excelentes pintores, contamos con una gran variedad de diseños y una excelente calidad.', 'NOTA: SI DECIDES REALIZAR LA COMPRA, PODEMOS ENVIARTE MAS DE 60 DISEÑOS DIFERENTES VIA WTHASSAP O CORREO ELECTRÓNICO. ASÍ PODRÁS TENER UNA MAYOR VARIEDAD Y MAS OPCIONES PARA ESCOGER!!!!\r\n\r\n- TIEMPO DE DESPACHO : 8 DIAS\r\n\r\n-MEDIDAS: 1.65 Mtrs x 80 cms\r\n\r\n-PESO 2 KILOS\r\n\r\n-DISEÑO. Por ser un producto pintado a mano, los diseños pueden variar levemente al que ves en la publicación.', '79|80|81', '15', '1', '1', '2019-12-19 12:10:47', '2019-12-19 09:03:47', 1, 1, 0),
(44, '47', '37', '1', '3000', '3000', 'limón X 10 Unidades', 'Es un árbol perenne, a menudo con espinas, que puede alcanzar los cuatro metros de altura, con copa abierta muy ramificada. Sus hojas son alternas, simples, coriáceas, con limbo elíptico de margen más o menos cerrado, glanduloso; a su vez contiene una nervadura penninervial. La inserción de su tallo es peciolada y su disposición es alterna. Es de color verde mate lustroso de unos 5–10 cm de largo y con peciolo cilíndrico articulado. Las flores, comúnmente llamadas (al igual que las del naranjo) azahares o flores de azahar, son solitarias o se organizan en pares o cortas inflorescencias corimbosas axilares. El cáliz tiene 4-7 -generalmente 5- sépalos de forma triangular soldados entre sí y la corola está formada por igual número de pétalos, libres, elípticos alargados, espesos, externamente glandulosos, blancos teñidos de rosa o violáceo en el envés. El androceo está formado por numerosos estambres (20–100) y el gineceo presenta un ovario ínfero con estilo grueso terminado por un estigma mazudo más o menos lobulado. Dicho ovario deriva en un fruto bacciforme en hesperidio con hasta 18 lóculos (gajos). Sus semillas, que pueden faltar por partenocarpia, son de forma más o menos ovoide, blanquecinas/amarillentas, centimétricas, irregularmente y longitudinalmente surcadas.4', 'Citrus × limon, el limonero, es un pequeño árbol frutal perenne. Su fruto es el limón (en árabe, ?????, laimún, del persa laimú o laimún),1? una fruta comestible de sabor ácido y extremadamente fragante que se usa principalmente en la alimentación.\r\n\r\nSe trata de un híbrido entre C. medica (cidro o limón francés) y C. aurantium (naranjo amargo).2? Aunque otros autores creen que es el resultado de diversos retrocruces entre Citrus medica y Citrus × aurantifolia.3?\r\n', '87|88', '13', '1', '1', '2019-12-19 12:10:33', '2019-12-19 09:24:34', 1, 1, 0),
(45, '48', '28', '1', '65000', '65000', 'Software Sistema Pos Para Facturar Para Todo Tipo De Negocio', 'Sistema pos para pequeños y medianos negocios; ferretería, droguería, restaurante, cafetería, café, papelería, supermercados....y demás negocios.', 'ficha tecnica', '54', '11', '1', '1', '2019-12-19 12:10:14', '2019-12-19 09:27:14', 1, 1, 0),
(46, '49', '37', '1', '3000', '3000', 'limón X 10 Unidades', 'Es un árbol perenne, a menudo con espinas, que puede alcanzar los cuatro metros de altura, con copa abierta muy ramificada. Sus hojas son alternas, simples, coriáceas, con limbo elíptico de margen más o menos cerrado, glanduloso; a su vez contiene una nervadura penninervial. La inserción de su tallo es peciolada y su disposición es alterna. Es de color verde mate lustroso de unos 5–10 cm de largo y con peciolo cilíndrico articulado. Las flores, comúnmente llamadas (al igual que las del naranjo) azahares o flores de azahar, son solitarias o se organizan en pares o cortas inflorescencias corimbosas axilares. El cáliz tiene 4-7 -generalmente 5- sépalos de forma triangular soldados entre sí y la corola está formada por igual número de pétalos, libres, elípticos alargados, espesos, externamente glandulosos, blancos teñidos de rosa o violáceo en el envés. El androceo está formado por numerosos estambres (20–100) y el gineceo presenta un ovario ínfero con estilo grueso terminado por un estigma mazudo más o menos lobulado. Dicho ovario deriva en un fruto bacciforme en hesperidio con hasta 18 lóculos (gajos). Sus semillas, que pueden faltar por partenocarpia, son de forma más o menos ovoide, blanquecinas/amarillentas, centimétricas, irregularmente y longitudinalmente surcadas.4', 'Citrus × limon, el limonero, es un pequeño árbol frutal perenne. Su fruto es el limón (en árabe, ?????, laimún, del persa laimú o laimún),1? una fruta comestible de sabor ácido y extremadamente fragante que se usa principalmente en la alimentación.\r\n\r\nSe trata de un híbrido entre C. medica (cidro o limón francés) y C. aurantium (naranjo amargo).2? Aunque otros autores creen que es el resultado de diversos retrocruces entre Citrus medica y Citrus × aurantifolia.3?\r\n', '87|88', '13', '1', '1', '2019-12-22 12:01:25', '2019-12-22 00:29:25', 1, 1, 0),
(47, '50', '38', '1', '2000', '2000', 'Naranjas X 10 Unidades', 'La naranja es una fruta cítrica obtenida del naranjo dulce (Citrus × sinensis), del naranjo amargo (Citrus × aurantium) y de naranjos de otras variedades o híbridos, de origen asiático.1? Es un hesperidio carnoso de cáscara más o menos gruesa y endurecida, y su pulpa está formada típicamente por once gajos u hollejos llenos de jugo, el cual contiene mucha vitamina C, flavonoides y aceites esenciales. Se cultiva como un antiguo árbol ornamental y para obtener fragancias de sus frutos.', ' Es más pequeña y dulce que el pomelo o toronja y más grande, aunque menos perfumada que la mandarina. Existen numerosas variedades de naranjas, siendo la mayoría híbridos producidos a partir de las especies Citrus maxima (pamplemusa), Citrus reticulata (mandarina) y Citrus medica (cidro).', '90|89', '21', '1', '1', '2019-12-22 12:07:28', '2019-12-22 06:58:28', 1, 1, 0),
(48, '51', '38', '1', '2000', '2000', 'Naranjas X 10 Unidades', 'La naranja es una fruta cítrica obtenida del naranjo dulce (Citrus × sinensis), del naranjo amargo (Citrus × aurantium) y de naranjos de otras variedades o híbridos, de origen asiático.1? Es un hesperidio carnoso de cáscara más o menos gruesa y endurecida, y su pulpa está formada típicamente por once gajos u hollejos llenos de jugo, el cual contiene mucha vitamina C, flavonoides y aceites esenciales. Se cultiva como un antiguo árbol ornamental y para obtener fragancias de sus frutos.', ' Es más pequeña y dulce que el pomelo o toronja y más grande, aunque menos perfumada que la mandarina. Existen numerosas variedades de naranjas, siendo la mayoría híbridos producidos a partir de las especies Citrus maxima (pamplemusa), Citrus reticulata (mandarina) y Citrus medica (cidro).', '90|89', '21', '1', '1', '2019-12-27 12:06:05', '2019-12-27 05:08:05', 1, 1, 0),
(49, '52', '38', '1', '2000', '2000', 'Naranjas X 10 Unidades', 'La naranja es una fruta cítrica obtenida del naranjo dulce (Citrus × sinensis), del naranjo amargo (Citrus × aurantium) y de naranjos de otras variedades o híbridos, de origen asiático.1? Es un hesperidio carnoso de cáscara más o menos gruesa y endurecida, y su pulpa está formada típicamente por once gajos u hollejos llenos de jugo, el cual contiene mucha vitamina C, flavonoides y aceites esenciales. Se cultiva como un antiguo árbol ornamental y para obtener fragancias de sus frutos.', ' Es más pequeña y dulce que el pomelo o toronja y más grande, aunque menos perfumada que la mandarina. Existen numerosas variedades de naranjas, siendo la mayoría híbridos producidos a partir de las especies Citrus maxima (pamplemusa), Citrus reticulata (mandarina) y Citrus medica (cidro).', '90|89', '21', '1', '1', '2020-02-25 02:01:41', '2020-02-25 00:01:41', 1, 1, 0),
(50, '53', '31', '2', '80000', '160000', 'Mochila Wayuu Grande', 'Ver video para mas información\r\n=====================================================================\r\nDesde el 2013 trabajamos con las comunidades Wayuu para mejorar su calidad de vida. Por tal motivo ayudamos a estas comunidades a comercializar sus productos. Usted puede encontrarnos en internet y descubrir como esta ayudando con su compra.\r\n=====================================================================\r\nATENCIÓN: El precio de la publicación hace referencia a 1 MOCHILA GRANDE CON DISEÑOS. (como la primera foto)\r\n=====================================================================\r\n=====================================================================', 'Por que elegirnos?\r\n1- TENEMOS MILES DE MOCHILAS DISPONIBLES así que cualquier color o diseño esta a su alcance sin necesidad de esperar.\r\n2- Con su compra también esta ayudando! lo invitamos a seguir nuestra cuenta y ver como lo hacemos. Al comprar con nosotros usted no solo esta pagando un precio justo por el trabajo de las comunidades Wayuu también esta ayudándonos a seguir desarrollando los programas que la fundación lleva a cabo con estas comunidades: brigadas de salud, jornadas de recreación, entrega de donaciones, materiales para tejer.\r\n=====================================================================\r\nSi desea mas información con gusto se la brindamos o ver video al final de las fotos. Somos colartfoundation', '72|73|74|75', '15', '1', '1', '2020-11-06 11:06:24', '2020-11-06 06:01:23', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `cat_id` int(11) NOT NULL,
  `cat_nombre` varchar(90) CHARACTER SET utf8mb4 NOT NULL,
  `cat_descripcion` text CHARACTER SET utf8mb4 NOT NULL,
  `cat_estado` tinyint(1) NOT NULL DEFAULT 1,
  `cat_creador` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `cat_creado` datetime NOT NULL,
  `cat_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`cat_id`, `cat_nombre`, `cat_descripcion`, `cat_estado`, `cat_creador`, `cat_creado`, `cat_updated`) VALUES
(11, 'Software\r\n', 'Aplicaciones móviles, Desarrollo Web, Software a la Medida.', 1, '1', '2019-12-12 08:12:51', '2019-12-12 17:08:22'),
(12, 'Administración', 'Asesorías Administrativas, Gestión de Archivo, Imágenes Corporativas.', 1, '1', '2019-12-12 08:12:54', '2019-12-12 07:39:54'),
(13, 'Agrícolas', 'Hortalizas, Frutas', 1, '1', '2019-12-12 08:12:49', '2019-12-12 07:45:17'),
(14, 'Agroindustria', 'Carne de Cerdo, Carne de res, Pollo, Gallinas de campo.', 1, '1', '2019-12-12 08:12:06', '2019-12-12 07:42:06'),
(15, 'Artesanías', 'Pinturas en Oléo, Alfarería.', 1, '1', '2019-12-12 08:12:33', '2019-12-12 07:42:33'),
(16, 'Contable', 'Asesorías y Servicios Contables.', 1, '1', '2019-12-12 08:12:52', '2019-12-12 07:42:52'),
(17, 'Diseño', 'Diseño de imagen Corporativa, Logos, Estampados, Personalizaciones, Posters.', 1, '1', '2019-12-12 08:12:13', '2019-12-12 07:43:13'),
(18, 'Gestión Ambiental', 'Asesorías Ambientales', 1, '1', '2019-12-12 08:12:53', '2019-12-12 07:43:53'),
(19, 'Guianza Turística ', 'Caminatas, Avista miento de Aves.', 1, '1', '2019-12-12 08:12:37', '2019-12-12 07:44:37'),
(20, 'Moda', 'Moda para Caballero, Dama y Niños.', 1, '1', '2019-12-12 08:12:00', '2019-12-12 07:45:00'),
(21, 'Alimentos', 'Descripción de Alimentos', 1, '1', '2019-12-16 10:12:06', '2019-12-17 19:52:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_compra`
--

CREATE TABLE `chat_compra` (
  `cc_auto_id` int(11) NOT NULL,
  `cc_compra` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `cc_producto` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `cc_user` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `cc_tipo` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `cc_unidad` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `cc_msg` text CHARACTER SET utf8mb4 NOT NULL,
  `cc_created` datetime NOT NULL,
  `cc_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cc_user_visto` tinyint(1) NOT NULL DEFAULT 0,
  `cc_vendedor_visto` tinyint(1) NOT NULL DEFAULT 0,
  `cc_up_visto` tinyint(1) NOT NULL DEFAULT 0,
  `cc_estado` tinyint(1) NOT NULL DEFAULT 1,
  `cc_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chat_compra`
--

INSERT INTO `chat_compra` (`cc_auto_id`, `cc_compra`, `cc_producto`, `cc_user`, `cc_tipo`, `cc_unidad`, `cc_msg`, `cc_created`, `cc_updated`, `cc_user_visto`, `cc_vendedor_visto`, `cc_up_visto`, `cc_estado`, `cc_vigencia`) VALUES
(3, '48', '28', '1', 'Pre', '11', 'Hola', '2019-12-21 22:29:13', '2019-12-22 04:43:43', 1, 0, 0, 1, 1),
(4, '48', '28', '1', 'Pre', '11', 'Hola', '2019-12-21 22:29:31', '2019-12-22 04:43:43', 1, 0, 0, 1, 1),
(5, '48', '28', '1', 'Pre', '11', 'sdsd', '2019-12-21 22:29:54', '2019-12-22 04:43:43', 1, 0, 0, 1, 1),
(6, '48', '28', '1', 'Pre', '11', 'sdfdsf', '2019-12-21 22:29:59', '2019-12-22 04:43:43', 1, 0, 0, 1, 1),
(7, '48', '28', '1', 'Pre', '11', 'sdsd', '2019-12-21 22:43:34', '2019-12-22 04:43:43', 1, 0, 0, 1, 1),
(8, '48', '28', '1', 'Res', '11', 'Ok ya estoy en eso', '2019-12-21 22:51:16', '2019-12-22 04:43:43', 1, 0, 0, 1, 1),
(9, '48', '28', '1', 'Res', '11', 'Mira lo que sucede es que...', '2019-12-21 22:52:34', '2019-12-22 04:43:43', 1, 0, 0, 1, 1),
(10, '46', '33', '1', 'Res', '11', 'Buenos días iniciamos el proceso de envió.', '2019-12-21 22:54:36', '2019-12-22 04:44:54', 1, 0, 0, 1, 1),
(11, '46', '33', '1', 'Res', '11', 'AJA', '2019-12-21 22:54:49', '2019-12-22 04:44:54', 1, 0, 0, 1, 1),
(12, '48', '28', '1', 'Pre', '11', 'Aquí estoy', '2019-12-21 23:07:38', '2019-12-22 04:43:43', 1, 0, 0, 1, 1),
(13, '48', '28', '1', 'Res', '11', '...', '2019-12-21 23:08:32', '2019-12-22 04:43:43', 1, 0, 0, 1, 1),
(14, '46', '33', '1', 'Res', '11', 'Hola', '2019-12-22 00:04:25', '2019-12-22 05:04:25', 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `c_auto` int(11) NOT NULL,
  `c_correo` varchar(50) NOT NULL,
  `c_nombre` varchar(90) NOT NULL,
  `c_asunto` varchar(90) NOT NULL,
  `c_mensaje` text NOT NULL,
  `c_creado` datetime NOT NULL,
  `c_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `c_estado` tinyint(1) NOT NULL DEFAULT 1,
  `c_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`c_auto`, `c_correo`, `c_nombre`, `c_asunto`, `c_mensaje`, `c_creado`, `c_update`, `c_estado`, `c_vigencia`) VALUES
(1, 'rwerwe', 'few', 'rew', 'rwer', '2019-12-27 01:12:52', '2019-12-27 00:46:52', 1, 1),
(2, 'werwer', 'wer', 'werwe', 'r', '2019-12-27 01:12:09', '2019-12-27 00:47:09', 1, 1),
(3, 'fwee', 'wewe', 'wd', 'asds', '2019-12-27 01:12:52', '2019-12-27 00:47:52', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_cliente`
--

CREATE TABLE `factura_cliente` (
  `id_fact_auto` int(11) NOT NULL,
  `fa_client_numero` varchar(40) CHARACTER SET utf8mb4 NOT NULL,
  `fa_client_doc` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `fa_client_nom` varchar(65) CHARACTER SET utf8mb4 NOT NULL,
  `fa_client_direc` varchar(90) CHARACTER SET utf8mb4 NOT NULL,
  `fa_client_obse` varchar(90) CHARACTER SET utf8mb4 NOT NULL,
  `fa_client_tel` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `fa_client_correo` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `fa_client_cod` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `fa_client_fecha` datetime NOT NULL,
  `fa_client_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura_cliente`
--

INSERT INTO `factura_cliente` (`id_fact_auto`, `fa_client_numero`, `fa_client_doc`, `fa_client_nom`, `fa_client_direc`, `fa_client_obse`, `fa_client_tel`, `fa_client_correo`, `fa_client_cod`, `fa_client_fecha`, `fa_client_update`) VALUES
(57, '', '1084577898', 'Sergio Yamit Flor', 'Huila La Plata 415060 La Plata Huila', '', '3136426375 ', 'syrivera89@misena.edu.co', '1', '2019-12-19 07:12:32', '2019-12-19 06:02:32'),
(58, '', '1084577898', 'Sergio Yamit Flor', 'Huila La Plata 415060 La Plata Huila', '', '3136426375 ', 'syrivera89@misena.edu.co', '1', '2019-12-19 10:12:57', '2019-12-19 09:03:57'),
(59, '', '1084577898', 'Sergio Yamit Flor', 'Huila La Plata 415060 La Plata Huila', '', '3136426375 ', 'syrivera89@misena.edu.co', '1', '2019-12-19 10:12:42', '2019-12-19 09:24:42'),
(60, '', '1084577898', 'Sergio Yamit Flor', 'Huila La Plata 415060 La Plata Huila', '', '3136426375 ', 'syrivera89@misena.edu.co', '1', '2019-12-19 10:12:22', '2019-12-19 09:27:22'),
(61, '', '1084577898', 'Sergio Yamit Flor', 'Huila La Plata 415060 La Plata Huila', '', '3136426375 ', 'syrivera89@misena.edu.co', '1', '2019-12-22 01:12:11', '2019-12-22 00:30:11'),
(62, '', '1084577898', 'Sergio Yamit Flor', 'Huila La Plata 415060 La Plata Huila', '', '3136426375 ', 'syrivera89@misena.edu.co', '1', '2019-12-27 06:12:03', '2019-12-27 17:15:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_unidad`
--

CREATE TABLE `factura_unidad` (
  `id_fact_auto` int(11) NOT NULL,
  `factura_numero` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `fa_u_cod` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `fa_user_cod` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `fa_u_nom` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `fa_u_dir` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `fa_u_contacto` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `fa_doc` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `fa_nombre_lider` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `fa_cod_Lider` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `fa_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fa_estado` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `fa_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura_unidad`
--

INSERT INTO `factura_unidad` (`id_fact_auto`, `factura_numero`, `fa_u_cod`, `fa_user_cod`, `fa_u_nom`, `fa_u_dir`, `fa_u_contacto`, `fa_doc`, `fa_nombre_lider`, `fa_cod_Lider`, `fa_update`, `fa_estado`, `fa_vigencia`) VALUES
(11, '48', '11', '1', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-13 09:55:21', '', 1),
(12, '48', '11', '1', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-13 09:55:21', '', 1),
(13, '49', '11', '1', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-18 00:37:53', '', 1),
(14, '55', '11', '11', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-19 05:54:16', '', 1),
(15, '56', '11', '11', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-19 05:55:18', '', 1),
(16, '57', '11', '11', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-19 06:02:32', '', 1),
(17, '58', '11', '11', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-19 09:03:57', '', 1),
(18, '58', '11', '11', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-19 09:03:57', '', 1),
(19, '59', '11', '11', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-19 09:24:42', '', 1),
(20, '60', '11', '11', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-19 09:27:23', '', 1),
(21, '61', '11', '11', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-22 00:30:12', '', 1),
(22, '62', '11', '11', 'APPLE', 'LA PLATA', 'HUILA BARRIO PAéZ', '1084577898', 'Sergio Yamit Rivera Flor', '119', '2019-12-27 17:15:03', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_cantidad`
--

CREATE TABLE `productos_cantidad` (
  `ppc_auto_id` int(11) NOT NULL,
  `ppc_producto` varchar(55) NOT NULL,
  `ppc_cantidad` varchar(15) NOT NULL,
  `ppc_estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_cantidad`
--

INSERT INTO `productos_cantidad` (`ppc_auto_id`, `ppc_producto`, `ppc_cantidad`, `ppc_estado`) VALUES
(21, '28', '17', NULL),
(22, '29', '1', NULL),
(23, '30', '5', NULL),
(24, '31', '3', NULL),
(25, '32', '5', NULL),
(26, '33', '2', NULL),
(27, '34', '3', NULL),
(28, '35', '1', NULL),
(29, '36', '100', NULL),
(30, '37', '20', NULL),
(31, '38', '5', NULL),
(32, '39', '4', NULL),
(33, '40', '10', NULL),
(34, '41', '20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_imagenes`
--

CREATE TABLE `productos_imagenes` (
  `pim_auto_id` int(11) NOT NULL,
  `pim_producto` varchar(55) NOT NULL,
  `pim_nombre` varchar(55) NOT NULL,
  `pim_portada` tinyint(1) DEFAULT NULL,
  `pim_estado` tinyint(1) NOT NULL DEFAULT 1,
  `pim_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `pim_created` datetime NOT NULL,
  `pim_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_imagenes`
--

INSERT INTO `productos_imagenes` (`pim_auto_id`, `pim_producto`, `pim_nombre`, `pim_portada`, `pim_estado`, `pim_vigencia`, `pim_created`, `pim_updated`) VALUES
(54, '28', '281912120712043898.jpg', 1, 1, 1, '2019-12-12 07:12:04', '2019-12-12 06:34:08'),
(55, '28', '281912120712081845.jpg', 0, 0, 0, '2019-12-12 07:12:08', '2019-12-12 06:41:47'),
(56, '28', '281912120712445063.jpg', NULL, 0, 0, '2019-12-12 07:12:44', '2019-12-12 06:43:20'),
(57, '28', '281912120712503935.jpg', NULL, 0, 0, '2019-12-12 07:12:50', '2019-12-12 06:42:55'),
(58, '28', '281912120712537110.jpg', NULL, 0, 0, '2019-12-12 07:12:53', '2019-12-12 06:45:14'),
(59, '28', '281912120712582740.jpg', NULL, 0, 0, '2019-12-12 07:12:58', '2019-12-12 06:45:11'),
(60, '28', '281912120712025239.jpg', NULL, 0, 0, '2019-12-12 07:12:02', '2019-12-12 06:44:04'),
(61, '28', '281912120712196703.jpg', NULL, 1, 1, '2019-12-12 07:12:19', '2019-12-12 06:45:19'),
(62, '28', '281912120912567619.jpg', NULL, 1, 1, '2019-12-12 09:12:56', '2019-12-12 08:29:56'),
(63, '29', '291912120912497286.jpg', 0, 1, 1, '2019-12-12 09:12:49', '2019-12-12 09:07:42'),
(64, '29', '291912120912547597.jpg', 1, 1, 1, '2019-12-12 09:12:54', '2019-12-12 09:07:42'),
(65, '30', '301912120412243850.jpg', 0, 1, 1, '2019-12-12 04:12:24', '2019-12-12 15:23:35'),
(66, '30', '301912120412276080.jpg', 0, 1, 1, '2019-12-12 04:12:27', '2019-12-12 15:23:35'),
(67, '30', '301912120412315833.jpg', 1, 1, 1, '2019-12-12 04:12:31', '2019-12-12 15:23:35'),
(68, '31', '311912120412349578.jpg', 0, 0, 0, '2019-12-12 04:12:34', '2019-12-12 15:28:37'),
(69, '31', '311912120412366347.jpg', 0, 0, 0, '2019-12-12 04:12:36', '2019-12-12 15:28:17'),
(70, '31', '311912120412385447.jpg', 0, 0, 0, '2019-12-12 04:12:38', '2019-12-12 15:28:20'),
(71, '31', '311912120412415593.jpg', 0, 0, 0, '2019-12-12 04:12:41', '2019-12-12 15:28:22'),
(72, '31', '311912120412266688.jpg', 1, 1, 1, '2019-12-12 04:12:26', '2019-12-12 15:28:37'),
(73, '31', '311912120412315498.jpg', 0, 1, 1, '2019-12-12 04:12:31', '2019-12-12 15:28:37'),
(74, '31', '311912120412339393.jpg', 0, 1, 1, '2019-12-12 04:12:33', '2019-12-12 15:28:37'),
(75, '31', '311912120412361196.jpg', 0, 1, 1, '2019-12-12 04:12:36', '2019-12-12 15:28:37'),
(76, '32', '321912120412517874.jpg', 1, 1, 1, '2019-12-12 04:12:51', '2019-12-12 15:30:59'),
(77, '32', '321912120412547155.jpg', 0, 1, 1, '2019-12-12 04:12:54', '2019-12-12 15:30:58'),
(78, '32', '321912120412564366.jpg', 0, 1, 1, '2019-12-12 04:12:56', '2019-12-12 15:30:58'),
(79, '33', '331912120412244650.jpg', 1, 1, 1, '2019-12-12 04:12:24', '2019-12-12 16:01:02'),
(80, '33', '331912120412284488.jpg', 0, 1, 1, '2019-12-12 04:12:28', '2019-12-12 16:01:02'),
(81, '33', '331912120412314130.jpg', 0, 1, 1, '2019-12-12 04:12:31', '2019-12-12 16:01:02'),
(82, '34', '341912120512407531.jpg', 0, 1, 1, '2019-12-12 05:12:40', '2019-12-12 16:05:52'),
(83, '34', '341912120512426388.jpg', 0, 0, 0, '2019-12-12 05:12:42', '2019-12-12 16:05:52'),
(84, '34', '341912120512453874.jpg', 0, 1, 1, '2019-12-12 05:12:45', '2019-12-16 21:50:21'),
(85, '36', '361912161012243643.jpg', 1, 1, 1, '2019-12-16 10:12:25', '2019-12-16 21:27:27'),
(86, '35', '351912161012462052.jpg', 1, 1, 1, '2019-12-16 10:12:46', '2019-12-16 21:27:48'),
(87, '37', '371912161012039645.jpg', 1, 1, 1, '2019-12-16 10:12:03', '2019-12-16 21:45:08'),
(88, '37', '371912161012075449.jpg', 0, 1, 1, '2019-12-16 10:12:07', '2019-12-16 21:45:08'),
(89, '38', '381912161012461841.jpg', 0, 1, 1, '2019-12-16 10:12:46', '2019-12-16 21:47:51'),
(90, '38', '381912161012491498.jpg', 1, 1, 1, '2019-12-16 10:12:49', '2019-12-16 21:47:51'),
(91, '34', '341912161012197723.jpg', 1, 1, 1, '2019-12-16 10:12:19', '2019-12-16 21:50:21'),
(92, '39', '391912161012229572.jpg', 0, 1, 1, '2019-12-16 10:12:22', '2019-12-16 21:54:13'),
(93, '39', '391912161012255585.jpg', 1, 1, 1, '2019-12-16 10:12:25', '2019-12-16 21:54:13'),
(94, '39', '391912161012289561.jpg', 0, 1, 1, '2019-12-16 10:12:28', '2019-12-16 21:54:13'),
(95, '40', '401912161112022896.jpg', 1, 1, 1, '2019-12-16 11:12:02', '2019-12-16 22:00:05'),
(96, '41', '412010280410142672.jpg', NULL, 1, 1, '2020-10-28 04:10:14', '2020-10-28 15:29:14'),
(97, '41', '412010280410175613.jpg', NULL, 1, 1, '2020-10-28 04:10:17', '2020-10-28 15:29:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_informacion`
--

CREATE TABLE `productos_informacion` (
  `pi_auto_id` int(11) NOT NULL,
  `pi_senior` varchar(25) NOT NULL,
  `pi_titulo` varchar(120) NOT NULL,
  `pi_descripcion` text NOT NULL,
  `pi_cat` varchar(8) NOT NULL,
  `pi_ficha` text NOT NULL,
  `pi_web` tinyint(1) NOT NULL DEFAULT 0,
  `pi_publicado` datetime NOT NULL,
  `pi_editor` varchar(60) NOT NULL,
  `pi_created` datetime NOT NULL,
  `pi_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pi_pub_us` varchar(45) NOT NULL,
  `pi_estado` tinyint(1) NOT NULL DEFAULT 1,
  `pi_vigencia` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_informacion`
--

INSERT INTO `productos_informacion` (`pi_auto_id`, `pi_senior`, `pi_titulo`, `pi_descripcion`, `pi_cat`, `pi_ficha`, `pi_web`, `pi_publicado`, `pi_editor`, `pi_created`, `pi_updated`, `pi_pub_us`, `pi_estado`, `pi_vigencia`) VALUES
(28, '11', 'Software Sistema Pos Para Facturar Para Todo Tipo De Negocio', 'Sistema pos para pequeños y medianos negocios; ferretería, droguería, restaurante, cafetería, café, papelería, supermercados....y demás negocios.', '11', 'ficha tecnica', 0, '0000-00-00 00:00:00', '1', '2019-12-12 07:12:51', '2019-12-19 00:45:10', '', 1, 1),
(29, '11', 'Se Hacen Asesorías En Trabajos Administración,economía, Otro', 'Incluye\r\n\r\nEXPERIENCIA DE MÁS DE 6 AÑOS EN TODA COLOMBIA\r\nApoyamos y asesoramos todo tipo trabajos e investigaciones en el área de administración, contabilidad y economía en temas como:\r\n- Presupuesto\r\n- Finanzas\r\n- Matemáticas Financieras\r\n- Gerencia y estrategia\r\n- Costos\r\n- Evaluación de proyectos\r\n- Mercadeo\r\n- Macro y Microeconomía\r\n- Econometría\r\n- Balances, estados de resultados\r\n\r\nTambién se brinda apoyo en otras áreas con:\r\n- Ensayos\r\n- Resumen\r\n- Presentaciones\r\n- Normas APA\r\nResolveremos todas tus dudas y te ayudaremos.\r\nNos puedes contactar 3192784318\r\n\r\n\r\n', '12', 'No incluye\r\n- Clases presenciales o virtuales\r\n- Apoyo en trabajos de grados', 0, '0000-00-00 00:00:00', '1', '2019-12-12 09:12:35', '2019-12-19 00:45:07', '', 1, 1),
(30, '11', 'Artesanía Latina Modelo De Madera Barco Embarcación', 'BIENVENIDOS SOMOS TODOENCARGO !\r\nLIDERES EN MERCADOLIBRE EN PRODUCTOS IMPORTADOS CON 100% DE CALIFICACIONES POSITIVAS!\r\n\r\n---------------------------------------------------------------------------------------------------------------\r\nTIEMPOS DE ENTREGA DE 6 A 10 DIAS HABILES / ENVIO GRATIS\r\n---------------------------------------------------------------------------------------------------------------\r\n\r\nDESCRIPCION DEL PRODUCTO OFERTADO :\r\nArtesanueda Latina Maqueta de barco de madera: buque de entrenamiento francés Belem\r\n', '15', '* largo: 62 Centimetros\r\n* Ancho: 30 Centimetros\r\n* Alto: 7 Centimetros\r\n* Peso del Producto: 4.85 libras\r\n', 0, '0000-00-00 00:00:00', '1', '2019-12-12 04:12:35', '2019-12-19 00:45:03', '', 1, 1),
(31, '11', 'Mochila Wayuu Grande', 'Ver video para mas información\r\n=====================================================================\r\nDesde el 2013 trabajamos con las comunidades Wayuu para mejorar su calidad de vida. Por tal motivo ayudamos a estas comunidades a comercializar sus productos. Usted puede encontrarnos en internet y descubrir como esta ayudando con su compra.\r\n=====================================================================\r\nATENCIÓN: El precio de la publicación hace referencia a 1 MOCHILA GRANDE CON DISEÑOS. (como la primera foto)\r\n=====================================================================\r\n=====================================================================', '15', 'Por que elegirnos?\r\n1- TENEMOS MILES DE MOCHILAS DISPONIBLES así que cualquier color o diseño esta a su alcance sin necesidad de esperar.\r\n2- Con su compra también esta ayudando! lo invitamos a seguir nuestra cuenta y ver como lo hacemos. Al comprar con nosotros usted no solo esta pagando un precio justo por el trabajo de las comunidades Wayuu también esta ayudándonos a seguir desarrollando los programas que la fundación lleva a cabo con estas comunidades: brigadas de salud, jornadas de recreación, entrega de donaciones, materiales para tejer.\r\n=====================================================================\r\nSi desea mas información con gusto se la brindamos o ver video al final de las fotos. Somos colartfoundation', 0, '0000-00-00 00:00:00', '1', '2019-12-12 04:12:50', '2019-12-19 00:45:00', '', 1, 1),
(32, '11', '10 Semillas De Suculentas Exóticas De Colores Vivos', 'Somos Suculentas En Colombia SAS\r\nProductores de las mejores Suculentas Exóticas En Colombia\r\nEsta publicación es para un paquete de 10 semillas de Suculentas Exóticas de colores\r\nLas semillas son variadas, dependiendo la disponibilidad que tengamos en el momento de la compra.', '13', 'Tener en cuenta que todas no van a germinar\r\nDepende de la temperatura, humedad, luz y todos sus cuidados\r\nHacemos envíos a todo el país por Servientrega\r\nEl valor del envío se paga CONTRA-ENTREGA', 0, '0000-00-00 00:00:00', '1', '2019-12-12 04:12:42', '2019-12-19 00:44:58', '', 1, 1),
(33, '11', 'Cuadros Abstractos Decorativos Al Oleo En Lienzo 1.65x80 Cms', 'MEDIDAS 1.65 MTRS X 80 CMS\r\n\r\nDecora tu casa u oficina con nuestros Bellos cuadros modernos y minimalistas al oleo sobre lienzo, nuestros productos son pintados a mano por excelentes pintores, contamos con una gran variedad de diseños y una excelente calidad.', '15', 'NOTA: SI DECIDES REALIZAR LA COMPRA, PODEMOS ENVIARTE MAS DE 60 DISEÑOS DIFERENTES VIA WTHASSAP O CORREO ELECTRÓNICO. ASÍ PODRÁS TENER UNA MAYOR VARIEDAD Y MAS OPCIONES PARA ESCOGER!!!!\r\n\r\n- TIEMPO DE DESPACHO : 8 DIAS\r\n\r\n-MEDIDAS: 1.65 Mtrs x 80 cms\r\n\r\n-PESO 2 KILOS\r\n\r\n-DISEÑO. Por ser un producto pintado a mano, los diseños pueden variar levemente al que ves en la publicación.', 0, '0000-00-00 00:00:00', '1', '2019-12-12 04:12:51', '2019-12-19 00:44:56', '', 1, 1),
(34, '11', 'Cafe Tostado Molido O En Grano, Café Gourmet, Café Premium', 'Cafe Tostado Molido o en Grano, Café Gourmet, Café Premium', '14', 'Marca: Don Lucio Cafe\r\nOrigen: Finca San Isidro, Palestina Cundinamarca\r\nAltura: 1680 MSNM\r\nBeneficio: Natural\r\n\r\n-Producto Colombiano.\r\n-Excelso de Origen\r\n-Cultivado entre los 1600 y 1700 metros de altura\r\n-Recogido y secado a mano de forma artesanal\r\n\r\nTu compra de Cafe Tostado Molido o en Grano, Café Gourmet, Café Premium\r\n\r\n1 unidad 500 gramos de cafe', 0, '0000-00-00 00:00:00', '1', '2019-12-12 05:12:06', '2019-12-19 00:44:52', '', 1, 1),
(35, '11', 'Sombrero Aguadeño En Tela Precio Unitario Por Docena', 'Sombrero Aguadeño En Tela Precio Unitario Por Docena', '15', 'Encuentra más de 10.000 productos. No busques más, tienes la garantía porque somos uno de las más grandes empresas que venden por Mercodolibre, tenemos la distinción de Mercado líder.', 0, '0000-00-00 00:00:00', '1', '2019-12-16 10:12:33', '2019-12-19 00:44:49', '', 1, 1),
(36, '11', 'Achiras Del Huila 100% Orginales', 'Achiras Del Huila 100% Orginales', '21', 'Las mas deliciosas achiras del Huila, traídas directamente desde el municipio de Paicol (Huila)', 0, '0000-00-00 00:00:00', '1', '2019-12-16 10:12:05', '2019-12-19 00:44:46', '', 1, 1),
(37, '11', 'limón X 10 Unidades', 'Es un árbol perenne, a menudo con espinas, que puede alcanzar los cuatro metros de altura, con copa abierta muy ramificada. Sus hojas son alternas, simples, coriáceas, con limbo elíptico de margen más o menos cerrado, glanduloso; a su vez contiene una nervadura penninervial. La inserción de su tallo es peciolada y su disposición es alterna. Es de color verde mate lustroso de unos 5–10 cm de largo y con peciolo cilíndrico articulado. Las flores, comúnmente llamadas (al igual que las del naranjo) azahares o flores de azahar, son solitarias o se organizan en pares o cortas inflorescencias corimbosas axilares. El cáliz tiene 4-7 -generalmente 5- sépalos de forma triangular soldados entre sí y la corola está formada por igual número de pétalos, libres, elípticos alargados, espesos, externamente glandulosos, blancos teñidos de rosa o violáceo en el envés. El androceo está formado por numerosos estambres (20–100) y el gineceo presenta un ovario ínfero con estilo grueso terminado por un estigma mazudo más o menos lobulado. Dicho ovario deriva en un fruto bacciforme en hesperidio con hasta 18 lóculos (gajos). Sus semillas, que pueden faltar por partenocarpia, son de forma más o menos ovoide, blanquecinas/amarillentas, centimétricas, irregularmente y longitudinalmente surcadas.4', '13', 'Citrus × limon, el limonero, es un pequeño árbol frutal perenne. Su fruto es el limón (en árabe, ?????, laimún, del persa laimú o laimún),1? una fruta comestible de sabor ácido y extremadamente fragante que se usa principalmente en la alimentación.\r\n\r\nSe trata de un híbrido entre C. medica (cidro o limón francés) y C. aurantium (naranjo amargo).2? Aunque otros autores creen que es el resultado de diversos retrocruces entre Citrus medica y Citrus × aurantifolia.3?\r\n', 0, '0000-00-00 00:00:00', '1', '2019-12-16 10:12:50', '2019-12-19 00:44:44', '', 1, 1),
(38, '11', 'Naranjas X 10 Unidades', 'La naranja es una fruta cítrica obtenida del naranjo dulce (Citrus × sinensis), del naranjo amargo (Citrus × aurantium) y de naranjos de otras variedades o híbridos, de origen asiático.1? Es un hesperidio carnoso de cáscara más o menos gruesa y endurecida, y su pulpa está formada típicamente por once gajos u hollejos llenos de jugo, el cual contiene mucha vitamina C, flavonoides y aceites esenciales. Se cultiva como un antiguo árbol ornamental y para obtener fragancias de sus frutos.', '21', ' Es más pequeña y dulce que el pomelo o toronja y más grande, aunque menos perfumada que la mandarina. Existen numerosas variedades de naranjas, siendo la mayoría híbridos producidos a partir de las especies Citrus maxima (pamplemusa), Citrus reticulata (mandarina) y Citrus medica (cidro).', 0, '0000-00-00 00:00:00', '1', '2019-12-16 10:12:29', '2019-12-19 00:44:42', '', 1, 1),
(39, '11', 'Cesto, Canasta, Canastilla En Junco Artesanal.', 'HERMOSA CANASTA EN JUNCO ARTESANAL TEJIDA 100% A MANO EN COLOMBIA.\r\n\r\nIDEAL PARA GUARDAR TUS JOYAS, DECORAR ESPACIOS DE LA CASA, GUARDAR HILOS O LANAS, GUARDAR HUEVOS EN LA COCINA Y MUCHO MÁS.', '15', 'MEDIDAS:\r\n\r\nLARGO: 24 CMS\r\nANCHO: 15 CMS\r\nALTO: 22 CMS\r\n\r\nFAVOR PREGUNTAR CUALQUIER INQUIETUD ANTES DE DAR CLICK EN COMPRAR.\r\n\r\nEL COSTO DE ENVÍO NO ESTÁ EN INCLUIDO EN EL PRECIO, ESTE ES ASUMIDO POR EL COMPRADOR.', 0, '0000-00-00 00:00:00', '1', '2019-12-16 10:12:38', '2019-12-19 00:44:39', '', 1, 1),
(40, '11', 'Café Molido ', 'Café Molido con el mejor grano seleccionado, 100% Arábigo y 100% café supremo, con un sabor dulce y notas a chocolate.\r\n\r\n', '21', 'Café Molido con el mejor grano seleccionado, 100% Arábigo y 100% café supremo, en una tostión media y molienda media, y presentaciones de 500 gramos, te invita a vivir con un sabor dulce y notas a chocolate un encuentro único entre el aroma, el cuerpo y el verdadero sabor.\r\n\r\n', 0, '0000-00-00 00:00:00', '1', '2019-12-16 10:12:47', '2019-12-19 00:44:37', '', 1, 1),
(41, '1', '6 Portavasos Artesanía Colombiana Cestería Guacamayas Boyacá', 'Artesanías de Guacamayas.\r\n\r\nJuego de seis (6) portavasos con diámetro de 10cm. cada uno.\r\nElaborados en fique y paja por artesanos de ArGuas en Guacamayas, Boyacá - Colombia.\r\nDisponible unicolor y multicolor.\r\n\r\nSe puede también realizar en los colores de su preferencia, para productos diferentes a existencias, puede tardar de 8-10 días hábiles.\r\n\r\nSi desea un número mayor o menor de productos, puede encontrar otra publicación con 1 pieza, comprar la unidad de esta publicación y contactarnos directamente con la información que mercado libre le brinda al realizar la compra.\r\n\r\nProducto 100% hecho a mano.\r\nEnvío gratis a toda Colombia.\r\nAceptamos MercadoPago, la forma más segura para comprar.', '15', '-', 0, '0000-00-00 00:00:00', '1', '2020-10-28 04:10:34', '2020-10-28 15:29:58', '', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_precios`
--

CREATE TABLE `productos_precios` (
  `pp_auto_id` int(11) NOT NULL,
  `pp_producto` varchar(55) NOT NULL,
  `pp_precio` varchar(121) NOT NULL,
  `pp_estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_precios`
--

INSERT INTO `productos_precios` (`pp_auto_id`, `pp_producto`, `pp_precio`, `pp_estado`) VALUES
(23, '28', '65000', NULL),
(24, '29', '100000', NULL),
(25, '30', '1200000', NULL),
(26, '31', '80000', NULL),
(27, '32', '40000', NULL),
(28, '33', '300000', NULL),
(29, '34', '15', NULL),
(30, '35', '9900', NULL),
(31, '36', '2000', NULL),
(32, '37', '3000', NULL),
(33, '38', '2000', NULL),
(34, '39', '40000', NULL),
(35, '40', '12000', NULL),
(36, '41', '80000', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_preguntas`
--

CREATE TABLE `productos_preguntas` (
  `pp_auto_id` int(11) NOT NULL,
  `pp_producto` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `pp_usuario` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `pp_unidad` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `pp_mensaje` text CHARACTER SET utf8mb4 NOT NULL,
  `pp_fecha` datetime NOT NULL,
  `pp_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pp_estado` tinyint(1) NOT NULL DEFAULT 1,
  `pp_respondido` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_preguntas`
--

INSERT INTO `productos_preguntas` (`pp_auto_id`, `pp_producto`, `pp_usuario`, `pp_unidad`, `pp_mensaje`, `pp_fecha`, `pp_updated`, `pp_estado`, `pp_respondido`) VALUES
(20, '37', '1', '11', 'Buenos días, es cuanto tiempo entregan el producto.', '2019-12-21 14:50:05', '2019-12-21 19:52:15', 1, 1),
(21, '37', '1', '11', 'Cuanto cuesta', '2019-12-21 19:29:01', '2019-12-22 03:53:47', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_respuestas`
--

CREATE TABLE `productos_respuestas` (
  `pr_auto_id` int(15) NOT NULL,
  `pr_pregunta_id` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `pr_respondiente` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `pr_unidad` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `pr_mensage` text CHARACTER SET utf8mb4 NOT NULL,
  `pr_fecha` datetime NOT NULL,
  `pr_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pr_estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_respuestas`
--

INSERT INTO `productos_respuestas` (`pr_auto_id`, `pr_pregunta_id`, `pr_respondiente`, `pr_unidad`, `pr_mensage`, `pr_fecha`, `pr_updated`, `pr_estado`) VALUES
(8, '20', '1', '11', 'En tres días hábiles entregaremos el producto en la puerta de su casa.', '2019-12-21 14:52:15', '2019-12-21 19:52:15', 1),
(9, '21', '1', '11', '15.000 la Unidad', '2019-12-21 22:53:47', '2019-12-22 03:53:47', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscribe`
--

CREATE TABLE `suscribe` (
  `id_auto_id` int(11) NOT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `suscribe`
--

INSERT INTO `suscribe` (`id_auto_id`, `correo`) VALUES
(1, 'syrivera89@misena.edu.co');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_integrantes`
--

CREATE TABLE `unidad_integrantes` (
  `ui_auto_id` int(11) NOT NULL,
  `ui_unidad` varchar(15) NOT NULL,
  `ui_id_usuario` varchar(15) NOT NULL DEFAULT '1',
  `ui_estado` tinyint(1) NOT NULL DEFAULT 1,
  `ui_created` datetime NOT NULL,
  `ui_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ui_asignador` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidad_integrantes`
--

INSERT INTO `unidad_integrantes` (`ui_auto_id`, `ui_unidad`, `ui_id_usuario`, `ui_estado`, `ui_created`, `ui_updated`, `ui_asignador`) VALUES
(1, '1', '1', 1, '0000-00-00 00:00:00', '2019-11-14 20:03:03', '1084577898');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_productiva`
--

CREATE TABLE `unidad_productiva` (
  `up_uge` varchar(12) NOT NULL,
  `up_ficha` varchar(10) NOT NULL,
  `up_nombre` varchar(120) NOT NULL,
  `up_dato` varchar(12) NOT NULL,
  `up_creada` datetime NOT NULL,
  `up_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `up_estado` tinyint(1) NOT NULL DEFAULT 1,
  `up_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `up_created` datetime NOT NULL,
  `up_director` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidad_productiva`
--

INSERT INTO `unidad_productiva` (`up_uge`, `up_ficha`, `up_nombre`, `up_dato`, `up_creada`, `up_updated`, `up_estado`, `up_vigencia`, `up_created`, `up_director`) VALUES
('1', '1023130', 'Advanced Code S.AS..', '', '2019-11-13 00:00:00', '2019-11-13 21:06:11', 1, 1, '2019-11-13 00:00:00', '1084577898');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_cuenta`
--

CREATE TABLE `usuarios_cuenta` (
  `user_auto_id` int(11) NOT NULL,
  `user_correo` varchar(126) NOT NULL,
  `user_pass` varchar(120) NOT NULL,
  `user_token` varchar(25) NOT NULL,
  `user_unidad` varchar(20) NOT NULL,
  `user_estado` tinyint(1) NOT NULL DEFAULT 1,
  `user_vigencia` tinyint(1) NOT NULL DEFAULT 1,
  `user_created` datetime NOT NULL,
  `user_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_cuenta`
--

INSERT INTO `usuarios_cuenta` (`user_auto_id`, `user_correo`, `user_pass`, `user_token`, `user_unidad`, `user_estado`, `user_vigencia`, `user_created`, `user_updated`) VALUES
(1, 'syrivera89@misena.edu.co', '356a192b7913b04c54574d18c28d46e6395428ab', '', '', 1, 1, '0000-00-00 00:00:00', '2020-10-28 14:49:01'),
(2, 'juan@misena.edu.co', '356a192b7913b04c54574d18c28d46e6395428ab', '', '', 1, 1, '0000-00-00 00:00:00', '2019-12-12 13:59:37'),
(3, 'fernando@misena.edu.co', 'da4b9237bacccdf19c0760cab7aec4a8359010b0', '', '', 1, 1, '0000-00-00 00:00:00', '2019-12-12 13:46:58'),
(4, 'camilo@misena.edu.co', '356a192b7913b04c54574d18c28d46e6395428ab', '', '', 1, 1, '0000-00-00 00:00:00', '2019-12-12 13:49:29'),
(5, 'Quintero@misena.edu.co', '356a192b7913b04c54574d18c28d46e6395428ab', '', '', 1, 1, '0000-00-00 00:00:00', '2019-12-12 13:50:22'),
(6, 'sergiodoc@outlook.com', '356a192b7913b04c54574d18c28d46e6395428ab', '', '', 1, 1, '0000-00-00 00:00:00', '2019-12-19 01:39:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_datos`
--

CREATE TABLE `usuarios_datos` (
  `dp_id` int(11) NOT NULL,
  `dp_user` varchar(20) NOT NULL,
  `dp_unidad` varchar(20) DEFAULT '0',
  `dp_tipo_doc` varchar(25) NOT NULL,
  `dp_doc` varchar(15) NOT NULL,
  `dp_nombre` varchar(50) NOT NULL,
  `dp_apellido` varchar(50) NOT NULL,
  `dp_genero` varchar(12) NOT NULL,
  `dp_telefono` varchar(15) NOT NULL,
  `dp_tel_alternativo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_datos`
--

INSERT INTO `usuarios_datos` (`dp_id`, `dp_user`, `dp_unidad`, `dp_tipo_doc`, `dp_doc`, `dp_nombre`, `dp_apellido`, `dp_genero`, `dp_telefono`, `dp_tel_alternativo`) VALUES
(1, '1', '11', 'CC', '1084577898', 'Sergio Yamit', 'Flor', 'M', '3136426375', ''),
(2, '2', '0', '', '1', 'Juan', 'Rojas', '', '', ''),
(3, '3', '0', '', '2', 'fernando', 'Peréz Lopéz', '', '', ''),
(4, '4', '0', '', '3', 'Juan camilo', 'Losada', '', '', ''),
(5, '5', '0', '', '4', 'Juan Esteban', 'Quintero', '', '', ''),
(6, '6', '0', '', '10845778983', 'Abril Luciana', 'Rivera Martinez', '', '3214557788', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_direcciones`
--

CREATE TABLE `usuarios_direcciones` (
  `us_auto_id` int(11) NOT NULL,
  `us_id` varchar(25) NOT NULL,
  `us_departamento` varchar(50) NOT NULL,
  `us_ciudad` varchar(40) NOT NULL,
  `cod_postal` varchar(10) NOT NULL,
  `us_direccion` varchar(60) NOT NULL,
  `us_observaciones` varchar(120) NOT NULL,
  `us_estado` tinyint(1) NOT NULL DEFAULT 1,
  `us_created` datetime NOT NULL,
  `us_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_direcciones`
--

INSERT INTO `usuarios_direcciones` (`us_auto_id`, `us_id`, `us_departamento`, `us_ciudad`, `cod_postal`, `us_direccion`, `us_observaciones`, `us_estado`, `us_created`, `us_updated`) VALUES
(1, '1', 'Huila', 'La Plata', '415060', 'La Plata Huila', '', 1, '0000-00-00 00:00:00', '2019-12-19 05:41:28'),
(2, '5', 'Huila', 'Nataga', '415060', 'Barrio Pueblo Nuevo', 'Primer Piso', 1, '0000-00-00 00:00:00', '2019-12-18 03:41:32'),
(3, '6', 'Huila', 'Paicol', '10000', 'Barrio Pueblo Nuevo', '', 1, '2019-12-19 02:12:45', '2019-12-19 01:44:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`ca_id`);

--
-- Indices de la tabla `carrito_productos`
--
ALTER TABLE `carrito_productos`
  ADD PRIMARY KEY (`id_auto_pc`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `chat_compra`
--
ALTER TABLE `chat_compra`
  ADD PRIMARY KEY (`cc_auto_id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`c_auto`);

--
-- Indices de la tabla `factura_cliente`
--
ALTER TABLE `factura_cliente`
  ADD PRIMARY KEY (`id_fact_auto`);

--
-- Indices de la tabla `factura_unidad`
--
ALTER TABLE `factura_unidad`
  ADD PRIMARY KEY (`id_fact_auto`);

--
-- Indices de la tabla `productos_cantidad`
--
ALTER TABLE `productos_cantidad`
  ADD PRIMARY KEY (`ppc_auto_id`);

--
-- Indices de la tabla `productos_imagenes`
--
ALTER TABLE `productos_imagenes`
  ADD PRIMARY KEY (`pim_auto_id`);

--
-- Indices de la tabla `productos_informacion`
--
ALTER TABLE `productos_informacion`
  ADD PRIMARY KEY (`pi_auto_id`);

--
-- Indices de la tabla `productos_precios`
--
ALTER TABLE `productos_precios`
  ADD PRIMARY KEY (`pp_auto_id`);

--
-- Indices de la tabla `productos_preguntas`
--
ALTER TABLE `productos_preguntas`
  ADD PRIMARY KEY (`pp_auto_id`);

--
-- Indices de la tabla `productos_respuestas`
--
ALTER TABLE `productos_respuestas`
  ADD PRIMARY KEY (`pr_auto_id`);

--
-- Indices de la tabla `suscribe`
--
ALTER TABLE `suscribe`
  ADD PRIMARY KEY (`id_auto_id`);

--
-- Indices de la tabla `unidad_integrantes`
--
ALTER TABLE `unidad_integrantes`
  ADD PRIMARY KEY (`ui_auto_id`);

--
-- Indices de la tabla `unidad_productiva`
--
ALTER TABLE `unidad_productiva`
  ADD PRIMARY KEY (`up_uge`);

--
-- Indices de la tabla `usuarios_cuenta`
--
ALTER TABLE `usuarios_cuenta`
  ADD PRIMARY KEY (`user_auto_id`),
  ADD UNIQUE KEY `user_correo` (`user_correo`);

--
-- Indices de la tabla `usuarios_datos`
--
ALTER TABLE `usuarios_datos`
  ADD PRIMARY KEY (`dp_id`);

--
-- Indices de la tabla `usuarios_direcciones`
--
ALTER TABLE `usuarios_direcciones`
  ADD PRIMARY KEY (`us_auto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `carrito_productos`
--
ALTER TABLE `carrito_productos`
  MODIFY `id_auto_pc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `chat_compra`
--
ALTER TABLE `chat_compra`
  MODIFY `cc_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `c_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `factura_cliente`
--
ALTER TABLE `factura_cliente`
  MODIFY `id_fact_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `factura_unidad`
--
ALTER TABLE `factura_unidad`
  MODIFY `id_fact_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `productos_cantidad`
--
ALTER TABLE `productos_cantidad`
  MODIFY `ppc_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `productos_imagenes`
--
ALTER TABLE `productos_imagenes`
  MODIFY `pim_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `productos_informacion`
--
ALTER TABLE `productos_informacion`
  MODIFY `pi_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `productos_precios`
--
ALTER TABLE `productos_precios`
  MODIFY `pp_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `productos_preguntas`
--
ALTER TABLE `productos_preguntas`
  MODIFY `pp_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `productos_respuestas`
--
ALTER TABLE `productos_respuestas`
  MODIFY `pr_auto_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `suscribe`
--
ALTER TABLE `suscribe`
  MODIFY `id_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `unidad_integrantes`
--
ALTER TABLE `unidad_integrantes`
  MODIFY `ui_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios_cuenta`
--
ALTER TABLE `usuarios_cuenta`
  MODIFY `user_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios_datos`
--
ALTER TABLE `usuarios_datos`
  MODIFY `dp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios_direcciones`
--
ALTER TABLE `usuarios_direcciones`
  MODIFY `us_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
