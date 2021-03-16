-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-03-2021 a las 00:44:07
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hpdt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_equipos_errores`
--

CREATE TABLE `historial_equipos_errores` (
  `id` int(11) NOT NULL,
  `codigoEquipo` varchar(10) DEFAULT NULL,
  `fechaError` date DEFAULT NULL,
  `detalle` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial_equipos_errores`
--

INSERT INTO `historial_equipos_errores` (`id`, `codigoEquipo`, `fechaError`, `detalle`) VALUES
(3, 'COMP06', '2021-01-10', 'Falla de ejemplo'),
(4, 'COMP07', '2021-01-12', 'problemas'),
(5, 'IMP01', '2021-03-16', 'Error de prueba\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacionpc`
--

CREATE TABLE `ubicacionpc` (
  `codigo` varchar(7) NOT NULL,
  `area` varchar(25) NOT NULL,
  `ip` varchar(12) NOT NULL,
  `serieImp` varchar(15) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicacionpc`
--

INSERT INTO `ubicacionpc` (`codigo`, `area`, `ip`, `serieImp`) VALUES
('COMP06', 'Estadísticas', '192.168.0.10', '-'),
('COMP07', 'Bodega de enfermería', '10.4.61.24', '-'),
('COMP08', 'Estadìsticas', '192.168.0.10', '-'),
('COMP09', 'Secretaría', '10.4.61.10', '-'),
('COMP10', 'Nutricionista', '10.4.61.190', '-'),
('COMP11', 'Personal', '10.4.61.19', '-'),
('COMP13', 'Personal', '10.4.61.53', '-'),
('COMP14', 'Prevensionista de Riesgos', '10.4.61.97', '-'),
('COMP15', 'Capacitación', '10.4.61.33', '-'),
('COMP16', 'Farmacia', '10.4.61.76', '-'),
('COMP17', 'Farmacia', '10.4.61.44', '-'),
('COMP18', 'Farmacia', '10.4.61.118', '-'),
('COMP19', 'Geriatría 1', 'Sin registra', '-'),
('COMP20', 'Geriatría 1', '10.4.61.80', '-'),
('COMP21', 'Geriatría 1', '10.4.61.225', '-'),
('COMP22', 'Geriatría 1', '10.4.61.202', '-'),
('COMP23', 'Geriatría 1', '10.4.61.201', '-'),
('COMP24', 'prueba', 'prueba', ''),
('IMP01', 'Impresora de prueba', '10', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nom_usr` varchar(25) NOT NULL,
  `pass_usr` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nom_usr`, `pass_usr`) VALUES
(1, 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historial_equipos_errores`
--
ALTER TABLE `historial_equipos_errores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubicacionpc`
--
ALTER TABLE `ubicacionpc`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial_equipos_errores`
--
ALTER TABLE `historial_equipos_errores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
