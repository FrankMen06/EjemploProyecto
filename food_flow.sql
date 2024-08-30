-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-08-2024 a las 00:41:17
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `food_flow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `Nombre`, `estado`) VALUES
(21, 'Postres', 'Disponible'),
(22, 'Almuerzo', 'Disponible'),
(23, 'Bebidas', 'Disponible'),
(24, 'Snacks', 'Disponible'),
(27, 'Cena', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `codigoClient` varchar(8) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `idMesa` int(11) NOT NULL,
  `codigo` varchar(8) NOT NULL,
  `tiempo` int(11) DEFAULT NULL,
  `estado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`codigoClient`, `apellido`, `idMesa`, `codigo`, `tiempo`, `estado`) VALUES
('a5HN1xoY', 'Rodríguez', 28, 'MA239793', 0, 'Activo'),
('GSJXaew7', 'Méndez', 28, 'GH235190', 0, 'Inactivo'),
('h0vPqWGX', 'Vásquez', 29, 'MA239793', 33, 'Inactivo'),
('t1jcU2uc', 'Vargas', 28, 'RO232124', 15, 'Inactivo'),
('VwXXdKqP', 'Arévalo', 32, 'RO232124', 0, 'Inactivo'),
('WzG6kWK3', 'Mendoza', 29, 'RO232124', 0, 'Activo'),
('y8VOFBN2', 'Hernández', 31, 'MA239793', 0, 'Inactivo'),
('YfWjBsQO', 'Rodríguez', 29, 'GH235190', 0, 'Inactivo'),
('YUAnuNIc', 'Menjívar', 28, 'MA239793', 30, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idComentario`, `comentario`, `idProducto`) VALUES
(11, 'Solicitud de aprobación denegada - Agregale una descripción más apropiada.\nFecha y Hora: 2023-11-17 15:27:33', 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `codigo` varchar(8) NOT NULL,
  `contraseña` varchar(200) NOT NULL,
  `nombre1` varchar(100) NOT NULL,
  `nombre2` varchar(100) NOT NULL,
  `apellido1` varchar(100) NOT NULL,
  `apellido2` varchar(100) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `dui` varchar(10) NOT NULL,
  `fechaNac` date NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `municipio` varchar(200) NOT NULL,
  `departamento` varchar(200) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `estadoCivil` varchar(50) NOT NULL,
  `rol` varchar(25) NOT NULL,
  `estado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`codigo`, `contraseña`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `correo`, `telefono`, `dui`, `fechaNac`, `direccion`, `municipio`, `departamento`, `sexo`, `estadoCivil`, `rol`, `estado`) VALUES
('GH235190', '$2a$10$.3lcDIjK2wOwaGjL8usNj.OO9OTGBMczogQ7RuYMlx9QWn/ycGyYO', 'Oscar', 'José', 'Gallegos', 'Hernández', 'kenayhernandez612@gmail.com', '7635-8954', '12345678-6', '2003-06-29', 'Calle a tonacatepeque', 'San Salvador Este', 'San Salvador', 'Masculino', 'Soltera/o', 'Mesero', 'si'),
('MA239793', '$2a$10$0yXHuCVzKIJ9VSqjQCwlQOAWUKS5ta6hNRrbeExMhQULR/hOME1Zu', 'Julián', 'Alejandro', 'Méndez', 'Arévalo', 'oficial.count.alejandro@gmail.com', '7346-1947', '12345678-1', '2004-10-23', 'Soya', 'Primero seleccione un departamento', 'San Salvador', 'Masculino', 'Soltera/o', 'Mesero', 'si'),
('MO233776', '$2a$10$SpxbTqpJlocUUOR9WgcKMO9.gXhLybyCnMzIyZ12Yyebr6iBWm3uS', 'Benito', 'Antonio', 'Martinez', 'Ocasio', '29vasquezz@gmail.com', '7389-1256', '12345678-2', '2004-11-01', 'Distrito de soyapango', 'Primero seleccione un departamento', 'San Salvador', 'Masculino', 'Soltera/o', 'Recepcionista', 'si'),
('Pedidos', '$2a$10$9DuL7UeXm7gMoMW8.SD69uUKla90vb34f9LK13s.zhcZldGpeZ3xG', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', '2004-11-01', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'si'),
('RO232124', '$2a$10$z8al36HAp0NBdXUUxy27k.QiOqPqAGr20EXyXRDKDM7CemsCWdPom', 'Roberto', 'Carlos', 'Ramirez', 'Ochoa', 'alejandro23.am29@gmail.com', '7695-8954', '12345678-5', '2004-01-29', 'Distrito de soyapango', 'Ahuachapán Norte', 'Ahuachapán', 'Masculino', 'Casada/o', 'Mesero', 'si'),
('VH235733', '$2a$10$Zc4.sqsBzMxFeer5wGDzA.cgSIRtxHsyIyFp8HsbWCYcLiCx2QQ9i', 'Kennet', 'Adonay', 'Vargas', 'Hernández', 'kennet.vargas1230@gmail.com', '7822-1744', '12345678-3', '2004-12-25', 'Algo', 'San Salvador Este', 'San Salvador', 'Masculino', 'Viuda/o', 'Jefe de cocina', 'si'),
('VR236114', '$2a$10$QkIfcrO.N8h15KxTawSDHePJHB6urEWsNZB.oI.k2wkzUKp8kaIRe', 'Denis', 'Josué', 'Vásquez', 'Rodríguez', 'imjosuu@gmail.com', '7346-1937', '12345678-4', '2004-01-29', 'Col. san francisco', 'San Salvador Este', 'San Salvador', 'Masculino', 'Soltera/o', 'Administrador', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `idMesa` int(11) NOT NULL,
  `Capacidad` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `id_Sector` int(11) NOT NULL,
  `Estado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`idMesa`, `Capacidad`, `descripcion`, `id_Sector`, `Estado`) VALUES
(28, 3, 'Mesa para 3 personas', 9, 'Ocupada'),
(29, 5, 'Mesa familiar', 9, 'Ocupada'),
(30, 2, 'Mesa para niños', 11, 'Eliminada'),
(31, 6, ' Mesa para niños', 10, 'Disponible'),
(32, 4, 'Mesa central', 11, 'Disponible'),
(33, 2, 'Mesa1', 14, 'Disponible'),
(34, 2, 'Mesa2', 14, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `idOrden` int(11) NOT NULL,
  `codigoClient` varchar(8) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `tiempoEspera` time DEFAULT NULL,
  `total` double NOT NULL,
  `comentario` varchar(200) NOT NULL,
  `estado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`idOrden`, `codigoClient`, `idProducto`, `cantidad`, `fecha`, `tiempoEspera`, `total`, `comentario`, `estado`) VALUES
(94, 'h0vPqWGX', 44, 2, '2022-09-17 15:35:44', '00:00:00', 5, '', 'Finalizado'),
(95, 'h0vPqWGX', 43, 2, '2022-10-17 15:35:44', '00:00:00', 5, '', 'Finalizado'),
(96, 'h0vPqWGX', 46, 2, '2022-11-17 15:36:03', '00:00:00', 1, '', 'Finalizado'),
(97, 't1jcU2uc', 48, 4, '2022-12-17 15:41:59', '00:00:00', 1, '', 'Finalizado'),
(98, 't1jcU2uc', 44, 4, '2021-10-17 15:41:59', '00:00:00', 5, '', 'Finalizado'),
(99, 't1jcU2uc', 43, 4, '2021-11-17 15:41:59', '00:00:00', 5, '', 'Finalizado'),
(100, 't1jcU2uc', 45, 4, '2021-12-17 15:41:59', '00:00:00', 4, '', 'Finalizado'),
(101, 't1jcU2uc', 46, 2, '2021-11-17 15:41:59', '00:00:00', 1, '', 'Finalizado'),
(102, 'GSJXaew7', 43, 4, '2023-10-17 16:12:48', '00:00:00', 5, '', 'Finalizado'),
(103, 'GSJXaew7', 44, 3, '2021-10-17 16:12:48', '00:00:00', 5, '', 'Finalizado'),
(104, 'GSJXaew7', 45, 4, '2023-11-17 16:12:48', '00:00:00', 4, '', 'Finalizado'),
(105, 'GSJXaew7', 46, 6, '2023-11-17 16:12:48', '00:00:00', 1, '', 'Finalizado'),
(106, 'GSJXaew7', 48, 5, '2023-11-17 16:12:48', '00:00:00', 1, '', 'Finalizado'),
(107, 'GSJXaew7', 44, 3, '2023-11-17 16:16:02', '00:00:00', 5, '', 'Finalizado'),
(108, 'GSJXaew7', 45, 5, '2023-11-17 16:16:02', '00:00:00', 4, '', 'Finalizado'),
(109, 'GSJXaew7', 46, 3, '2023-11-10 16:16:02', '00:00:00', 1, '', 'Finalizado'),
(110, 'GSJXaew7', 48, 4, '2023-11-10 16:16:02', '00:00:00', 1, '', 'Finalizado'),
(111, 'GSJXaew7', 43, 3, '2023-11-10 16:16:02', '00:00:00', 5, '', 'Finalizado'),
(112, 'VwXXdKqP', 46, 1, '2023-11-10 16:17:20', '00:00:00', 1, '', 'Finalizado'),
(113, 'VwXXdKqP', 45, 2, '2023-11-11 16:17:20', '00:00:00', 4, '', 'Finalizado'),
(114, 'VwXXdKqP', 43, 3, '2023-11-12 16:17:20', '00:00:00', 5, '', 'Finalizado'),
(115, 'y8VOFBN2', 44, 3, '2023-11-13 16:19:40', '00:00:00', 5, '', 'Finalizado'),
(116, 'YfWjBsQO', 44, 2, '2023-11-17 16:21:03', '00:00:00', 5, '', 'Finalizado'),
(117, 'GSJXaew7', 44, 1, '2023-11-17 16:21:35', '00:00:00', 5, '', 'Finalizado'),
(118, 'YUAnuNIc', 44, 1, '2023-11-17 16:40:13', '00:00:00', 5, '', 'Finalizado'),
(119, 'YUAnuNIc', 45, 2, '2023-11-17 16:40:24', '00:00:00', 4, '', 'Finalizado'),
(120, 'a5HN1xoY', 43, 3, '2023-11-17 17:39:54', '00:00:00', 5, 'Sin mayonesa xd', 'Carrito'),
(121, 'a5HN1xoY', 44, 2, '2023-11-17 17:40:16', '00:00:00', 5, 'Sin queso', 'Carrito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `tiempo` time NOT NULL,
  `estado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `idCategoria`, `nombre`, `descripcion`, `precio`, `imagen`, `tiempo`, `estado`) VALUES
(43, 22, 'Pollo frito', 'Delicioso pollo frito', 5, 'IMG235287.png', '00:00:00', 'Aceptado'),
(44, 22, 'Pizza', 'Deliciosa pizza', 5, 'IMG233184.png', '00:00:00', 'Aceptado'),
(45, 22, 'Hamburguesa', 'Deliciosa hamburguesa', 4, 'IMG237379.png', '00:00:00', 'Aceptado'),
(46, 23, 'Powerade', 'Powerade azul', 1, 'IMG233140.png', '00:00:00', 'Aceptado'),
(47, 23, 'Té de melocotón', 'Té de lipton', 1, 'IMG232270.png', '00:00:00', 'Pendiente'),
(48, 23, 'Coca-Cola lata', 'Gaseosa Coca-Cola lata', 1, 'IMG232135.png', '00:00:00', 'Aceptado'),
(49, 27, 'Hamburguesa Jumbo', 'Deliciosa hamburguesa grande', 4, 'IMG231811.png', '00:00:00', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

CREATE TABLE `sector` (
  `id_Sector` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sector`
--

INSERT INTO `sector` (`id_Sector`, `nombre`, `capacidad`, `descripcion`, `estado`) VALUES
(9, 'Terraza', 2, 'Vista al jardín', 'activa'),
(10, 'Jardín', 5, 'Con vista al lago y montañas', 'activa'),
(11, 'Salón principal', 4, 'Con música envivo', 'activa'),
(12, 'Salón', 3, 'Con música envivo', 'Eliminada'),
(13, 'Salón', 3, 'Ambientación músical', 'activa'),
(14, 'Un nuevo sector', 2, 'Con música envivo', 'activa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigoClient`),
  ADD KEY `idMesa` (`idMesa`),
  ADD KEY `codigo` (`codigo`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`idMesa`),
  ADD KEY `id_Sector` (`id_Sector`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`idOrden`),
  ADD KEY `codigoClient` (`codigoClient`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indices de la tabla `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id_Sector`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `idMesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `idOrden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `sector`
--
ALTER TABLE `sector`
  MODIFY `id_Sector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`idMesa`) REFERENCES `mesas` (`idMesa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`codigo`) REFERENCES `empleados` (`codigo`);

--
-- Filtros para la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD CONSTRAINT `mesas_ibfk_1` FOREIGN KEY (`id_Sector`) REFERENCES `sector` (`id_Sector`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orden_ibfk_2` FOREIGN KEY (`codigoClient`) REFERENCES `clientes` (`codigoClient`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
