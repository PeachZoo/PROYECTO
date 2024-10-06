-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-09-2024 a las 04:30:16
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
-- Base de datos: `personalizar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido_cliente` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `texto` varchar(200) DEFAULT NULL,
  `numero` varchar(3) DEFAULT NULL,
  `tipo_producto` int(11) DEFAULT NULL,
  `tipo_figura` int(11) DEFAULT NULL,
  `entrega` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `apellido_cliente`, `telefono`, `email`, `status`, `usuario`, `texto`, `numero`, `tipo_producto`, `tipo_figura`, `entrega`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Juana Ines', 'Beltran De Los Palotes', '04121090185', 'yosoyproferika@gmail.com', 0, 'erikab644@gmail.com', 'Feliz Cumpleaños', '4', 3, 4, '2024-09-07 00:00:00', '2024-08-28 00:00:00', '2024-08-29 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diseno`
--

CREATE TABLE `diseno` (
  `id_diseno` int(11) NOT NULL,
  `titulo_diseno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `img_diseno` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `figura`
--

CREATE TABLE `figura` (
  `id_figura` int(11) NOT NULL,
  `titulo_figura` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `img_figura` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `figura`
--

INSERT INTO `figura` (`id_figura`, `titulo_figura`, `img_figura`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Fresa', 'images/Fresa.png', 1, '2024-08-27 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Soldado', 'images/Soldado.png', 1, '2024-08-27 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Mapaches', 'images/Mapaches.png', 1, '2024-08-27 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `titulo_producto` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `img_producto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `tipo_producto` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `ruta_producto` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `titulo_producto`, `img_producto`, `status`, `tipo_producto`, `ruta_producto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'CamisetaNegra', 'images/CamisetaNegra.png', 1, 'Playeras', '/playeras', '2024-08-28 00:00:00', NULL, NULL),
(4, 'CamisetaBlanca', 'images/CamisetaBlanca.png', 1, 'Playeras', '/playeras', '2024-08-28 00:00:00', NULL, NULL),
(5, 'Gorras', 'images/Gorras.png', 1, 'Gorras', '/gorras', '2024-08-28 00:00:00', NULL, NULL),
(6, 'PachonNegro', 'images/PachonNegro.png', 1, 'Pachones', '/pachones', '2024-09-10 00:00:00', NULL, NULL),
(8, 'Paraguas', 'images/Paraguas.png', 1, 'Paraguas', '/paraguas', '2024-09-10 00:00:00', NULL, NULL),
(10, 'Tazas', 'images/Tazas.png', 1, 'Tazas', '/tazas', '2024-09-10 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `telefono`, `email`, `password`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anita', 'Musk', '+5804121090185', 'erikab644@gmail.com', '$2y$10$xaIntj2a7OqY4VnpYSI0oetgGrc50FcwEA0PgJqtOVjjyrCvjoNcK', 1, NULL, NULL, NULL),
(2, 'Juana Ines', 'Beltran De Los Palotes', '04121090185', 'yosoyproferika@gmail.com', '$2y$10$MYmX/ixiQK8kHtP9WSr3huY2gaTJNEjM9UmSuvEGj7ihujADUXtHa', 1, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `producto_fk` (`tipo_producto`),
  ADD KEY `figura_fk` (`tipo_figura`);

--
-- Indices de la tabla `diseno`
--
ALTER TABLE `diseno`
  ADD PRIMARY KEY (`id_diseno`);

--
-- Indices de la tabla `figura`
--
ALTER TABLE `figura`
  ADD PRIMARY KEY (`id_figura`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `diseno`
--
ALTER TABLE `diseno`
  MODIFY `id_diseno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `figura`
--
ALTER TABLE `figura`
  MODIFY `id_figura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `figura_fk` FOREIGN KEY (`tipo_figura`) REFERENCES `figura` (`id_figura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_fk` FOREIGN KEY (`tipo_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
