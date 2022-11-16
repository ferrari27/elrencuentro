-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2022 a las 20:14:49
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hostel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tele` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `ingreso` date NOT NULL,
  `egreso` date NOT NULL,
  `mensaje` varchar(700) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `tele`, `cantidad`, `ingreso`, `egreso`, `mensaje`) VALUES
(1, 'asdas', 'sil162010@hotmail.es', '123123', 2, '0432-03-12', '0001-03-12', 'afadsada'),
(2, 'asdas', 'sil162010@hotmail.es', '123123', 2, '0432-03-12', '0001-03-12', 'afadsada'),
(4, 'asdas', 'sil162010@hotmail.es', '312', 1, '0000-00-00', '0000-00-00', 'sdsadasdas'),
(5, 'asdas', 'sil162010@hotmail.es', '312', 1, '0000-00-00', '0000-00-00', 'sdsadasdas'),
(6, 'asdas', 'sil162010@hotmail.es', '312', 1, '0000-00-00', '0000-00-00', 'sdsadasdas'),
(7, '', '', '', 1, '0000-00-00', '0000-00-00', ''),
(8, '', '', '', 1, '0000-00-00', '0000-00-00', ''),
(9, '', '', '', 1, '0000-00-00', '0000-00-00', ''),
(10, '', '', '', 1, '0000-00-00', '0000-00-00', ''),
(11, '', '', '', 1, '0000-00-00', '0000-00-00', ''),
(12, '', '', '', 1, '0000-00-00', '0000-00-00', ''),
(13, '', '', '', 1, '0000-00-00', '0000-00-00', ''),
(14, '', '', '', 1, '0000-00-00', '0000-00-00', ''),
(15, '', '', '', 0, '0000-00-00', '0000-00-00', ''),
(16, '', '', '', 0, '0000-00-00', '0000-00-00', ''),
(17, '', '', '', 1, '0000-00-00', '0000-00-00', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
