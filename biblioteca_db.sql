-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2025 a las 10:09:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id`, `nombre`, `apellido`, `nacionalidad`, `fecha_nacimiento`) VALUES
(1, 'J.K', 'Rowling', 'Reino Unido', '1965-07-31'),
(2, 'Stephen ', 'King', 'Estados Unidos', '1947-09-21'),
(4, 'Paulo', 'Coelho', 'Brasil', '1947-08-24'),
(5, 'Gabriel García ', 'Márquez', 'Colombia', '1927-03-06'),
(6, 'William', 'Shakespeare', 'Reino Unido', '1564-04-23'),
(7, 'J.R.R', 'Tolkien', 'Reino Unido', '1892-01-03'),
(8, 'George R.R', 'Martin', 'Estados Unidos', '1948-08-20'),
(9, 'Clive Staples', 'Lewis', 'Reino Unido', '1898-11-29'),
(10, 'Bram', 'Stoker', 'Irlanda', '1847-11-08'),
(11, 'Dan', 'Brown', 'Estados Unidos', '1964-06-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `año_publicacion` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `id_autor`, `genero`, `año_publicacion`) VALUES
(1, 'Harry Potter y la Piedra Filosofal', 1, 'Fantasia', 1997),
(2, 'El Resplandor', 2, 'Terror', 1977),
(4, 'El Alquimista', 4, 'Aventura', 1988),
(5, 'Cien Años de Soledad', 5, 'Ficción', 1967),
(6, 'Romeo y Julieta', 6, 'Tragedia', 1597),
(7, 'Juego de Tronos', 8, 'Fantasia', 1996),
(8, 'El Hobbit', 7, 'Fantasia', 1937),
(9, 'Las Crónicas de Narnia: El León, la Bruja y el Armario', 9, 'Fantasia', 1950),
(10, 'Dracula', 10, 'Fantasia', 1897),
(11, 'Código Da Vinci', 11, 'Suspenso', 2003);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rol` enum('administrador','usuario') DEFAULT 'usuario',
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `password`, `email`, `rol`, `fecha_registro`) VALUES
(1, 'Darwin Antonio', '1234', 'darwinmarcano1307@gmail.com', 'administrador', '2025-07-19 19:06:33'),
(2, 'Maryuri Millán', '1307', 'maryurimillan1705@gmail.com', 'usuario', '2025-07-19 21:09:00'),
(3, 'Darwin Marcano', '1705', 'darwinm2005@gmail.com', 'usuario', '2025-07-16 21:12:00'),
(4, 'Nilsa Adriana', '196204', 'nilsagarcia@gmail.com', 'usuario', '2025-07-20 03:30:00'),
(5, 'Juan Perez', '1508', 'juanperez@gmail.com', 'usuario', '2025-07-15 03:31:00'),
(6, 'Intelli Next', '0000', 'em@intelli-next.com', 'usuario', '2025-07-20 07:58:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_autor` (`id_autor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
