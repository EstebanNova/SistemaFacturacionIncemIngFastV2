-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2020 a las 16:31:31
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Equipos Electromecánicos', '2017-12-21 20:53:29'),
(2, 'Taladros', '2017-12-21 20:53:29'),
(3, 'Andamios', '2017-12-21 20:53:29'),
(4, 'Generadores de energía', '2017-12-21 20:53:29'),
(5, 'Equipos para construcción', '2017-12-21 20:53:29'),
(6, 'Martillos mecánicos', '2017-12-21 23:06:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `documento` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `compras` int(11) DEFAULT NULL,
  `ultima_compra` datetime DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(6, 'Margarita Londoño', '34565432', 'margarit@hotmail.com', '(344) 345-6678', 'Calle 45 # 34 - 56', '1976-11-30', 17, '2020-05-23 19:52:10', '2017-12-26 22:26:51'),
(7, 'Julian Ramirez', '786786545', 'julian@hotmail.com', '(675) 674-5453', 'Carrera 45 # 54 - 56', '1980-04-05', 15, '2020-03-05 19:58:44', '2017-12-26 22:26:28'),
(8, 'Stella Jaramillo', '65756735', 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 9, '2017-12-26 17:25:55', '2017-12-26 22:25:55'),
(9, 'Eduardo López', '2147483647', 'eduardo@gmail.com', '(534) 634-6565', 'Carrera 67 # 45sur', '1978-03-04', 12, '2017-12-26 17:25:33', '2017-12-26 22:25:33'),
(10, 'Ximena Restrepo', '436346346', 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 18, '2017-12-26 17:25:08', '2017-12-26 22:25:08'),
(11, 'David Guzman', '43634643', 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 10, '2017-12-26 17:24:50', '2017-12-26 22:24:50'),
(12, 'Gonzalo Pérez', '436346346', 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 34', '1967-08-09', 24, '2017-12-25 17:24:24', '2017-12-27 00:30:12'),
(14, 'asd', 'asd', 'asd', '(111) 111-1111', 'asd', '1900-01-01', NULL, NULL, '2020-02-05 18:45:44'),
(15, 'asd', 'asd', 'asd', '(111) 111-1111', 'asd', '1900-01-01', NULL, NULL, '2020-02-05 18:47:25'),
(16, 'Julio Leyva', 'Julio', 'julio@hotmaIL.COM', '(111) 111-1111', 'CONOCIDO', '1900-01-01', NULL, NULL, '2020-02-05 19:33:29'),
(17, 'or', '', '', '', '', '1900-01-01', NULL, NULL, '2020-05-22 00:06:57'),
(18, 'or', '', '', '', '', '1900-01-01', NULL, NULL, '2020-05-22 00:07:01'),
(19, 'FABIAN BARRERA', 'JOSE', 'FABAIN@GMAIL.COM', '(321) 415-7285', 'cra 23 # 11-47', '1900-01-01', NULL, NULL, '2020-05-24 01:43:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracioncorreo`
--

CREATE TABLE `configuracioncorreo` (
  `correoSaliente` varchar(75) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `host` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `SMTPDebug` int(11) DEFAULT NULL,
  `SMTPAuth` tinyint(1) DEFAULT NULL,
  `Puerto` int(11) DEFAULT NULL,
  `clave` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `SMTPSeguridad` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `configuracioncorreo`
--

INSERT INTO `configuracioncorreo` (`correoSaliente`, `host`, `SMTPDebug`, `SMTPAuth`, `Puerto`, `clave`, `SMTPSeguridad`) VALUES
('febarrera12@misena.edu.co', 'smtp.gmail.com', 2, 1, 465, '123', 'ssl');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosempresa`
--

CREATE TABLE `datosempresa` (
  `NombreEmpresa` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `DireccionEmpresa` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `RFC` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `correoElectronico` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `diasEntrega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datosempresa`
--

INSERT INTO `datosempresa` (`NombreEmpresa`, `DireccionEmpresa`, `RFC`, `Telefono`, `correoElectronico`, `diasEntrega`) VALUES
('Almacen de repuestos mazda', 'SENA CHIA', 'RFC', '3007614919', 'ING.FAST@HOTMAIL.COM', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `perfil` int(11) NOT NULL,
  `descripcion` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `menuConfiguraciones` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `datosEmpresa` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `usuarios` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `perfiles` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `configuracionCorreo` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `clientes` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `productos` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `categorias` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `cotizaciones` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `administrarCotizaciones` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `modificarCotizaciones` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `eliminarCotizaciones` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `menuCotizaciones` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `menuVentas` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `ventas` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `administrarVentas` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `modificarVentas` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `eliminarVentas` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `facturacionElectronica` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `reportesVentas` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `cajasSuperiores` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `graficoGanancias` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `productosMasVendidos` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off',
  `productosAgregadosRecientemente` varchar(5) COLLATE utf8_spanish2_ci DEFAULT 'off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`perfil`, `descripcion`, `menuConfiguraciones`, `datosEmpresa`, `usuarios`, `perfiles`, `configuracionCorreo`, `clientes`, `productos`, `categorias`, `cotizaciones`, `administrarCotizaciones`, `modificarCotizaciones`, `eliminarCotizaciones`, `menuCotizaciones`, `menuVentas`, `ventas`, `administrarVentas`, `modificarVentas`, `eliminarVentas`, `facturacionElectronica`, `reportesVentas`, `cajasSuperiores`, `graficoGanancias`, `productosMasVendidos`, `productosAgregadosRecientemente`) VALUES
(1, 'Administrador', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on'),
(3, 'Especial', 'on', 'on', 'on', 'on', 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Vendedor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', NULL, NULL, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `precio_compra` float DEFAULT NULL,
  `precio_venta` float DEFAULT NULL,
  `ventas` int(11) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Aspiradora Industrial ', 'vistas/img/productos/101/105.png', 13, 1000, 1200, 2, '2017-12-24 01:11:04'),
(2, 1, '102', 'Plato Flotante para Allanadora', 'vistas/img/productos/102/940.jpg', 6, 4500, 6300, 3, '2017-12-26 15:04:11'),
(3, 1, '103', 'Compresor de Aire para pintura', 'vistas/img/productos/103/763.jpg', 8, 3000, 4200, 12, '2017-12-26 15:03:22'),
(4, 1, '104', 'Cortadora de Adobe sin Disco ', 'vistas/img/productos/104/957.jpg', 16, 4000, 5600, 4, '2017-12-26 15:03:22'),
(5, 1, '105', 'Cortadora de Piso sin Disco ', 'vistas/img/productos/105/630.jpg', 13, 1540, 2156, 7, '2017-12-26 15:03:22'),
(6, 1, '106', 'Disco Punta Diamante ', 'vistas/img/productos/106/635.jpg', 15, 1100, 1540, 5, '2017-12-26 15:04:38'),
(7, 1, '107', 'Extractor de Aire ', 'vistas/img/productos/107/848.jpg', 12, 1540, 2156, 8, '2017-12-26 15:04:11'),
(8, 1, '108', 'Guadañadora ', 'vistas/img/productos/108/163.jpg', 13, 1540, 2156, 7, '2017-12-26 15:03:52'),
(9, 1, '109', 'Hidrolavadora Eléctrica ', 'vistas/img/productos/109/769.jpg', 15, 2600, 3640, 5, '2017-12-26 15:05:09'),
(10, 1, '110', 'Hidrolavadora Gasolina', 'vistas/img/productos/110/582.jpg', 18, 2210, 3094, 2, '2017-12-26 15:05:09'),
(11, 1, '111', 'Motobomba a Gasolina', 'vistas/img/productos/default/anonymous.png', 20, 2860, 4004, 0, '2017-12-21 21:56:28'),
(12, 1, '112', 'Motobomba El?ctrica', 'vistas/img/productos/default/anonymous.png', 20, 2400, 3360, 0, '2017-12-21 21:56:28'),
(13, 1, '113', 'Sierra Circular ', 'vistas/img/productos/default/anonymous.png', 20, 1100, 1540, 0, '2017-12-21 21:56:28'),
(14, 1, '114', 'Disco de tugsteno para Sierra circular', 'vistas/img/productos/default/anonymous.png', 20, 4500, 6300, 0, '2017-12-21 21:56:28'),
(15, 1, '115', 'Soldador Electrico ', 'vistas/img/productos/default/anonymous.png', 20, 1980, 2772, 0, '2017-12-21 21:56:28'),
(16, 1, '116', 'Careta para Soldador', 'vistas/img/productos/default/anonymous.png', 20, 4200, 5880, 0, '2017-12-21 21:56:28'),
(17, 1, '117', 'Torre de iluminacion ', 'vistas/img/productos/default/anonymous.png', 20, 1800, 2520, 0, '2017-12-21 21:56:28'),
(18, 2, '201', 'Martillo Demoledor de Piso 110V', 'vistas/img/productos/default/anonymous.png', 20, 5600, 7840, 0, '2017-12-21 21:56:28'),
(19, 2, '202', 'Muela o cincel martillo demoledor piso', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2017-12-21 21:56:28'),
(20, 2, '203', 'Taladro Demoledor de muro 110V', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2017-12-21 21:56:28'),
(21, 2, '204', 'Muela o cincel martillo demoledor muro', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2017-12-21 21:56:28'),
(22, 2, '205', 'Taladro Percutor de 1/2 Madera y Metal', 'vistas/img/productos/default/anonymous.png', 20, 8000, 11200, 0, '2017-12-21 22:28:24'),
(23, 2, '206', 'Taladro Percutor SDS Plus 110V', 'vistas/img/productos/default/anonymous.png', 20, 3900, 5460, 0, '2017-12-21 21:56:28'),
(24, 2, '207', 'Taladro Percutor SDS Max 110V (Mineria)', 'vistas/img/productos/default/anonymous.png', 20, 4600, 6440, 0, '2017-12-21 21:56:28'),
(25, 3, '301', 'Andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1440, 2016, 0, '2017-12-21 21:56:28'),
(26, 3, '302', 'Distanciador andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1600, 2240, 0, '2017-12-21 21:56:28'),
(27, 3, '303', 'Marco andamio modular ', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2017-12-21 21:56:28'),
(28, 3, '304', 'Marco andamio tijera', 'vistas/img/productos/default/anonymous.png', 20, 100, 140, 0, '2017-12-21 21:56:28'),
(29, 3, '305', 'Tijera para andamio', 'vistas/img/productos/default/anonymous.png', 20, 162, 226, 0, '2017-12-21 21:56:28'),
(30, 3, '306', 'Escalera interna para andamio', 'vistas/img/productos/default/anonymous.png', 20, 270, 378, 0, '2017-12-21 21:56:28'),
(31, 3, '307', 'Pasamanos de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 75, 105, 0, '2017-12-21 21:56:28'),
(32, 3, '308', 'Rueda giratoria para andamio', 'vistas/img/productos/default/anonymous.png', 20, 168, 235, 0, '2017-12-21 21:56:28'),
(33, 3, '309', 'Arnes de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 1750, 2450, 0, '2017-12-21 21:56:28'),
(34, 3, '310', 'Eslinga para arnes', 'vistas/img/productos/default/anonymous.png', 20, 175, 245, 0, '2017-12-21 21:56:28'),
(35, 3, '311', 'Plataforma Met?lica', 'vistas/img/productos/default/anonymous.png', 20, 420, 588, 0, '2017-12-21 21:56:28'),
(36, 4, '401', 'Planta Electrica Diesel 6 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3500, 4900, 0, '2017-12-21 21:56:28'),
(37, 4, '402', 'Planta Electrica Diesel 10 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3550, 4970, 0, '2017-12-21 21:56:28'),
(38, 4, '403', 'Planta Electrica Diesel 20 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3600, 5040, 0, '2017-12-21 21:56:28'),
(39, 4, '404', 'Planta Electrica Diesel 30 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3650, 5110, 0, '2017-12-21 21:56:28'),
(40, 4, '405', 'Planta Electrica Diesel 60 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3700, 5180, 0, '2017-12-21 21:56:28'),
(41, 4, '406', 'Planta Electrica Diesel 75 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3750, 5250, 0, '2017-12-21 21:56:28'),
(42, 4, '407', 'Planta Electrica Diesel 100 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3800, 5320, 0, '2017-12-21 21:56:28'),
(43, 4, '408', 'Planta Electrica Diesel 120 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2017-12-21 21:56:28'),
(44, 5, '501', 'Escalera de Tijera Aluminio ', 'vistas/img/productos/default/anonymous.png', 20, 350, 490, 0, '2017-12-21 21:56:28'),
(45, 5, '502', 'Extension Electrica ', 'vistas/img/productos/default/anonymous.png', 20, 370, 518, 0, '2017-12-21 21:56:28'),
(46, 5, '503', 'Gato tensor', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2017-12-21 21:56:28'),
(47, 5, '504', 'Lamina Cubre Brecha ', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2017-12-21 21:56:28'),
(48, 5, '505', 'Llave de Tubo', 'vistas/img/productos/default/anonymous.png', 20, 480, 672, 0, '2017-12-21 21:56:28'),
(49, 5, '506', 'Manila por Metro', 'vistas/img/productos/default/anonymous.png', 20, 600, 840, 0, '2017-12-21 21:56:28'),
(50, 5, '507', 'Polea 2 canales', 'vistas/img/productos/default/anonymous.png', 22, 900, 1260, -2, '2017-12-21 21:56:28'),
(51, 5, '508', 'Tensor', 'vistas/img/productos/508/500.jpg', 20, 100, 140, 7, '2017-12-26 22:26:51'),
(52, 5, '509', 'Bascula ', 'vistas/img/productos/509/878.jpg', 11, 130, 182, 26, '2017-12-26 22:26:51'),
(53, 5, '510', 'Bomba Hidrostatica', 'vistas/img/productos/510/870.jpg', 8, 770, 1078, 13, '2017-12-26 22:26:51'),
(54, 5, '511', 'Chapeta', 'vistas/img/productos/511/239.jpg', 12, 660, 924, 12, '2020-01-23 04:03:02'),
(55, 5, '512', 'Cilindro muestra de concreto', 'vistas/img/productos/512/266.jpg', 12, 400, 560, 10, '2020-01-23 04:03:02'),
(56, 5, '513', 'Cizalla de Palanca', 'vistas/img/productos/513/445.jpg', 0, 450, 630, 21, '2017-12-27 00:30:12'),
(57, 5, '514', 'Cizalla de Tijera', 'vistas/img/productos/514/249.jpg', 16, 580, 812, 28, '2020-01-23 04:03:02'),
(58, 5, '515', 'Coche llanta neumatica', 'vistas/img/productos/515/174.jpg', 7, 420, 588, 54, '2020-01-23 04:01:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` int(11) NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `ultimo_login` datetime DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 1, 'vistas/img/usuarios/admin/181.jpg', 1, '2020-05-23 20:28:10', '2020-04-27 20:20:56'),
(66, 'FABIAN BARRERA', 'FABIAN', '$2a$07$asxx54ahjppf45sd87a5auEssxPfNpAmfya3Y4TVW7EHlQ1bKIIke', 3, 'vistas/img/usuarios/FABIAN/815.jpg', 1, '2020-05-23 19:51:16', '2020-05-22 02:16:58'),
(67, 'IVAN MACIAS', 'IVAN', '$2a$07$asxx54ahjppf45sd87a5auEssxPfNpAmfya3Y4TVW7EHlQ1bKIIke', 4, 'vistas/img/usuarios/IVAN/973.jpg', 1, '2020-05-23 19:51:35', '2020-05-22 02:17:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` double NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tipo_venta` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FechaVencimiento` datetime DEFAULT NULL,
  `codigoVenta` bigint(20) DEFAULT NULL,
  `cotizarA` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `plazoEntrega` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Observaciones` varchar(259) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`, `tipo_venta`, `FechaVencimiento`, `codigoVenta`, `cotizarA`, `plazoEntrega`, `Observaciones`) VALUES
(50, 1, 3, 1, '[{\"id\":\"57\",\"renglon\":\"\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"3\",\"stock\":\"16\",\"precio\":\"812\",\"total\":\"2436\"},{\"id\":\"52\",\"renglon\":\"\",\"descripcion\":\"Bascula \",\"cantidad\":\"4\",\"stock\":\"11\",\"precio\":\"182\",\"total\":\"728\"},{\"id\":\"51\",\"renglon\":\"\",\"descripcion\":\"Tensor\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"140\",\"total\":\"140\"}]', 613.2224, 3832.64, 4445.86, 'TD-12', '2020-05-05 03:59:36', NULL, NULL, 0, NULL, NULL, NULL),
(51, 1, 3, 1, '[{\"id\":\"57\",\"renglon\":\"\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"3\",\"stock\":\"16\",\"precio\":\"812\",\"total\":\"2436\"},{\"id\":\"52\",\"renglon\":\"\",\"descripcion\":\"Bascula \",\"cantidad\":\"4\",\"stock\":\"11\",\"precio\":\"182\",\"total\":\"728\"},{\"id\":\"51\",\"renglon\":\"\",\"descripcion\":\"Tensor\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"140\",\"total\":\"140\"}]', 613.2224, 3832.64, 4445.86, 'TD-12', '2020-05-05 03:59:36', NULL, NULL, 1, NULL, NULL, NULL),
(52, 2, 4, 1, '[{\"id\":\"58\",\"renglon\":\"\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"588\",\"total\":\"588\"}]', 94.08, 588, 682.08, 'TC-1', '2020-05-05 04:20:17', 'VEN', NULL, 0, NULL, NULL, NULL),
(53, 2, 4, 1, '[{\"id\":\"58\",\"renglon\":\"\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"588\",\"total\":\"588\"}]', 94.08, 588, 682.08, 'TC-1', '2020-05-05 04:20:17', 'VEN', NULL, 2, NULL, NULL, NULL),
(54, 3, 3, 1, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"812\",\"total\":\"812\"}]', 255.36, 1596, 1851.36, 'TC-12', '2020-03-29 22:45:37', 'COT', '2020-04-29 00:00:00', 0, '', '4', ''),
(55, 3, 3, 1, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"812\",\"total\":\"812\"}]', 255.36, 1596, 1851.36, 'TD-12', '2020-03-29 22:46:02', 'VEN', '2020-04-29 00:00:00', 3, '', '4', ''),
(56, 4, 4, 1, '[{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"588\",\"total\":\"588\"}]', 94.08, 588, 682.08, 'TC-12', '2020-03-29 22:55:49', 'COT', '2020-04-29 00:00:00', 0, 'Cotizar A', '4', 'Observaciones'),
(57, 4, 3, 1, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"560\",\"total\":\"560\"}]', 215.04, 1344, 1559.04, 'Efectivo', '2020-03-29 23:09:52', 'VEN', '2020-04-29 00:00:00', 0, '', '4', ''),
(59, 5, 3, 1, '[{\"id\":\"59\",\"renglon\":\"1\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"renglon\":\"2\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"588\",\"total\":\"588\"}]', 125.44, 784, 909.44, 'TC-123', '2020-05-05 04:21:11', 'COT', '2020-06-04 00:00:00', 0, '', '', ''),
(65, 5, 3, 1, '[{\"id\":\"59\",\"renglon\":\"1\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"renglon\":\"2\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"588\",\"total\":\"588\"}]', 125.44, 784, 909.44, 'TC-123', '2020-05-05 04:21:11', 'COT', '2020-06-04 00:00:00', 0, '', '', ''),
(66, 6, 3, 1, '[{\"id\":\"57\",\"renglon\":\"1\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"812\",\"total\":\"812\"},{\"id\":\"55\",\"renglon\":\"2\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"560\",\"total\":\"560\"}]', 260.68, 1372, 1632.68, 'Efectivo', '2020-05-10 16:30:31', 'COT', '2020-06-09 00:00:00', 0, '', '4', ''),
(67, 7, 6, 1, '[{\"id\":\"58\",\"renglon\":\"1\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"53\",\"renglon\":\"2\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"1078\",\"total\":\"1078\"}]', 316.54, 1666, 1982.54, 'Efectivo', '2020-05-10 19:58:44', 'COT', '2020-06-09 00:00:00', 0, 'miguel cuellar', '5', ''),
(68, 8, 4, 1, '[{\"id\":\"59\",\"renglon\":\"1\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"55\",\"renglon\":\"2\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"560\",\"total\":\"560\"},{\"id\":\"54\",\"renglon\":\"3\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"53\",\"renglon\":\"4\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"1078\",\"total\":\"1078\"}]', 441.28, 2758, 3199.28, 'Efectivo', '2020-05-22 00:07:36', 'COT', '2020-06-21 00:00:00', 0, 'oe', '4', ''),
(69, 5, 6, 67, '[{\"id\":\"55\",\"renglon\":\"1\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"560\",\"total\":\"560\"},{\"id\":\"54\",\"renglon\":\"2\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"52\",\"renglon\":\"3\",\"descripcion\":\"Bascula \",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"182\",\"total\":\"182\"}]', 316.54, 1666, 1982.54, 'Efectivo', '2020-05-24 01:52:10', 'VEN', '2020-06-23 00:00:00', 0, '', '4', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`perfil`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
