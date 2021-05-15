-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2021 a las 18:43:25
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebads`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `ID` int(11) NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `valorTotal` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`ID`, `fecha_solicitud`, `fecha_entrega`, `valorTotal`, `user`) VALUES
(1, '2021-05-04', '2021-05-26', 1739700, 1),
(2, '2021-03-02', '2021-03-10', 1980500, 2),
(3, '2021-02-10', '2021-02-20', 4389000, 2),
(4, '2021-02-09', '2021-02-19', 2449000, 3),
(5, '2021-02-08', '2021-02-18', 1170800, 2),
(6, '2021-03-10', '2021-03-21', 164500, 3),
(7, '2021-04-01', '2021-04-10', 2034600, 4),
(8, '2021-04-05', '2021-04-15', 159000, 1),
(9, '2021-04-21', '2021-05-01', 9698000, 2),
(10, '2021-05-02', NULL, 7680000, 2),
(11, '2021-05-04', NULL, 212000, 3),
(12, '2021-05-06', NULL, 2550900, 1),
(13, '2021-05-09', NULL, 2424500, 1),
(14, '2021-05-11', NULL, 53000, 4),
(15, '2021-05-13', NULL, 8778000, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_productos`
--

CREATE TABLE `pedidos_productos` (
  `ID` int(11) NOT NULL,
  `pedido` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos_productos`
--

INSERT INTO `pedidos_productos` (`ID`, `pedido`, `producto`, `cantidad`, `valor`) VALUES
(1, 1, 1, 3, 1739700),
(2, 2, 3, 1, 1920000),
(3, 2, 6, 1, 60500),
(4, 3, 3, 1, 4389000),
(5, 4, 6, 2, 121000),
(6, 4, 8, 3, 2328000),
(7, 5, 1, 1, 579900),
(8, 5, 2, 1, 484900),
(9, 5, 7, 2, 106000),
(10, 6, 7, 1, 53000),
(11, 6, 5, 1, 51000),
(12, 6, 6, 1, 60500),
(13, 7, 2, 3, 1454700),
(14, 7, 1, 1, 579900),
(15, 8, 7, 3, 159000),
(16, 9, 2, 2, 969800),
(17, 10, 4, 4, 7680000),
(18, 11, 7, 4, 212000),
(19, 12, 1, 1, 579900),
(20, 12, 4, 1, 1920000),
(21, 12, 5, 1, 51000),
(22, 13, 2, 5, 2424500),
(23, 14, 7, 1, 53000),
(24, 15, 3, 2, 8778000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `descripcion`, `precio`, `cantidad`, `proveedor`) VALUES
(1, 'Impresora Canon Pixma G3110 ', 579900, 20, 9),
(2, 'Impresora Canon Pixma G2110 ', 484900, 10, 9),
(3, 'Portatil Nitro Acer  542u ', 4389000, 5, 6),
(4, 'Portatil Acer A314', 1920000, 7, 6),
(5, 'Repetidor Xiaomi Mi Pro 300M', 51000, 10, 3),
(6, 'Router Tp-Link TL-WR840N', 60500, 30, 2),
(7, 'Router Mercusys MW305R', 53000, 15, 1),
(8, 'Router Tenda F6 ', 77600, 9, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID` int(11) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ID`, `descripcion`) VALUES
(1, 'Mercusys'),
(2, 'Tp-Link'),
(3, 'Xiaomi'),
(4, 'Tenda'),
(5, 'Hewlett Packard (HP)'),
(6, 'Acer'),
(7, 'Asus'),
(8, 'Lenovo'),
(9, 'Canon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

CREATE TABLE `tiendas` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`ID`, `nombre`, `email`, `password`) VALUES
(1, 'electronicos', 'electronicos@mail.com', '123456'),
(2, 'tauret', 'tauret@mail.com', '1234567'),
(3, 'wsElectro', 'wsElectro@mail.com', '123456'),
(4, 'mercusys', 'mercusys@mail.com', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_user` (`user`);

--
-- Indices de la tabla `pedidos_productos`
--
ALTER TABLE `pedidos_productos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_pedidos` (`pedido`),
  ADD KEY `fk_producto` (`producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_proveedor` (`proveedor`) USING BTREE;

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos_productos`
--
ALTER TABLE `pedidos_productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`user`) REFERENCES `tiendas` (`ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos_productos`
--
ALTER TABLE `pedidos_productos`
  ADD CONSTRAINT `pedidos_productos_ibfk_1` FOREIGN KEY (`producto`) REFERENCES `productos` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidos_productos_ibfk_2` FOREIGN KEY (`pedido`) REFERENCES `pedidos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor`) REFERENCES `proveedores` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
