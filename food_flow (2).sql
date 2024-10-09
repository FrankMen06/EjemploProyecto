-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2024 a las 03:56:33
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
('4vy7FHLh', 'Castillo', 32, 'wa91234', 0, 'Activo'),
('cliente', 'lopez', 29, 'ms222712', 71, 'Inactivo'),
('LoneRMJ5', 'perez', 31, 'wa91234', 0, 'Activo'),
('xLuh7Yby', 'XD', 33, '1234', 0, 'Inactivo');

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
(12, 'Solicitud de aprobación denegada - no se puede XD\nFecha y Hora: 2024-10-06 20:47:45', 49);

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
('1234', '1234', 'Oscar', 'José', 'Gallegos', 'Hernández', 'xd@gmail.com', '7635-8954', '12345678-6', '2003-06-29', 'Calle a tonacatepeque', 'San Salvador Este', 'San Salvador', 'Masculino', 'Soltera/o', 'Mesero', 'si'),
('maca123', '1234', 'maria', 'Josefa', 'Vásquez', 'castillo', 'maria@gmail.com', '7346-1937', '12345678-4', '2004-01-29', 'Soyapango', 'Cuscatlán Norte', 'San Salvador', 'Masculino', 'Soltera/o', 'Administrador', 'si'),
('mo0111', '1234', 'Benito', 'Antonio', 'Martinez', 'Ocasio', 'xd2@gmail.com', '7389-1256', '12345678-2', '2004-11-01', 'Distrito de soyapango', 'Primero seleccione un departamento', 'San Salvador', 'Masculino', 'Soltera/o', 'Recepcionista', 'si'),
('ms222712', '1234', 'José', 'Macario', 'Rojas', 'Arévalo', 'oficial.count@gmail.com', '7346-1947', '12345678-1', '2004-10-23', 'Soya', 'Primero seleccione un departamento', 'San Salvador', 'Masculino', 'Soltera/o', 'Mesero', 'si'),
('Pedidos', '1234', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', '2004-11-01', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'Pedidos', 'si'),
('wa91234', '1234', 'Roberto', 'Carlos', 'Ramirez', 'Ochoa', 'kjjkl.am29@gmail.com', '7695-8954', '12345678-5', '2004-01-29', 'Distrito de soyapango', 'Ahuachapán Norte', 'Ahuachapán', 'Masculino', 'Casada/o', 'Mesero', 'si'),
('xd01', '1234', 'furcio', 'Godofredo', 'murcia', 'Hernández', 'furcio@gmail.com', '7822-1744', '12345678-3', '2004-12-25', 'Algo', 'San Salvador Este', 'San Salvador', 'Masculino', 'Viuda/o', 'Jefe de cocina', 'si');

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
(29, 5, 'Mesa familiar', 9, 'Disponible'),
(30, 2, 'Mesa para niños', 11, 'Eliminada'),
(31, 6, ' Mesa para niños', 10, 'Ocupada'),
(32, 4, 'Mesa central', 11, 'Ocupada'),
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
(122, 'cliente', 44, 1, '2024-10-06 21:00:16', '00:00:00', 5, 'comida recien hecha :>', 'Finalizado'),
(123, 'cliente', 43, 5, '2024-10-06 21:00:16', '00:00:00', 5, 'Comida Caliente', 'Finalizado');

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
(43, 22, 'Pollo frito', 'Delicioso pollo frito', 5, 'fondo.jpg', '00:00:00', 'Aceptado'),
(44, 22, 'Pizza', 'Deliciosa pizza', 5, 'IMG233184.png', '00:00:00', 'Aceptado'),
(45, 22, 'Hamburguesa', 'Deliciosa hamburguesa', 4, 'IMG237379.png', '00:00:00', 'Aceptado'),
(46, 23, 'Powerade', 'Powerade azul', 1, 'IMG233140.png', '00:00:00', 'Aceptado'),
(47, 23, 'Té de melocotón', 'Té de lipton', 1, 'IMG232270.png', '00:00:00', 'Pendiente'),
(48, 23, 'Coca-Cola lata', 'Gaseosa Coca-Cola lata', 1, 'IMG232135.png', '00:00:00', 'Aceptado'),
(49, 27, 'Hamburguesa Jumbo', 'Deliciosa hamburguesa grande', 4, 'IMG231811.png', '00:00:00', 'Rechazado');

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
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `idMesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `idOrden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

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
