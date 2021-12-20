-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-12-2021 a las 23:01:29
-- Versión del servidor: 10.5.12-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` smallint(6) NOT NULL,
  `id_usuario` smallint(6) DEFAULT NULL,
  `nombre` varchar(40) NOT NULL,
  `contenido` varchar(32) NOT NULL,
  `fecha_registro` date DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id`, `id_usuario`, `nombre`, `contenido`, `fecha_registro`, `fecha_vencimiento`, `estado`) VALUES
(3, 2, 'Introducción a la Programación', 'Realizar diagramas de flujo', '2021-12-11', '2021-12-16', 'en proceso'),
(8, 9, 'Desarrollo Experimental e IT', 'Realizar un proyecto de Innovaci', '2021-11-01', '2021-11-30', 'terminado'),
(9, 9, 'Redes de Computadoras I', 'Realizar un modelamiento de Rede', '2021-11-26', '2021-12-03', 'en proceso'),
(10, 9, 'Sistemas Digitales', 'Modelamiento en Bizagi', '2021-11-30', '2021-12-07', 'en proceso'),
(11, 9, 'Base de Datos', 'Realizar una BD de una tienda co', '2021-12-01', '2021-12-09', ''),
(12, 5, 'Sistema de Información', 'Realizar modelamiento en Bizagi', '2021-12-02', '2021-12-04', 'en proceso'),
(13, 2, 'Base de Datos', 'Realizar modelamiento en Bizagi', '2021-12-01', '2021-12-05', 'en proceso'),
(14, 2, 'Comunicacion', 'Leer las pg.123 al 150', '2021-12-04', '2021-12-04', ''),
(15, 11, 'Base de Datos', 'Realizar un informe', '2021-12-03', '2021-12-10', 'en proceso'),
(16, 8, 'Introducción a la Programación', 'Realizar diagramas de flujo', '2021-12-02', '2021-12-03', 'en proceso'),
(17, 8, 'Cálculo', 'resolver ejercisio', '2021-12-04', '2021-12-04', 'en proceso'),
(19, 11, 'Programación Web', 'Hacer una Página Web', '2021-11-29', '2021-12-10', 'en proceso'),
(20, 5, 'Comunicacion', 'Realizar un informe', '2021-12-01', '2021-12-14', 'en proceso'),
(21, 5, 'Cálculo', 'Resolver ejercicio', '2021-12-05', '2021-12-07', 'terminado'),
(24, 14, 'antony', '254214242424242424242424242', '2021-12-03', '2022-01-07', 'en proceso'),
(25, 14, 'juansiot', '254214242424242424242424242', '2021-12-17', '2021-12-20', 'en proceso'),
(26, 14, 'antony', '254214242424242424242424242', '2021-12-09', '2021-12-29', 'en proceso'),
(27, 14, 'antony', 'sdadasd', '2021-12-09', '2021-12-29', 'terminado'),
(28, 5, 'Matematicas', 'Resolver ejercicio', '2021-12-06', '2021-12-08', 'terminado'),
(29, 16, 'Canto', 'Make a new song for liseth ', '2021-12-01', '2021-12-08', 'en proceso'),
(30, 16, 'Abcedee', 'vocales', '2021-12-04', '2021-12-11', 'en proceso'),
(31, 14, 'antony', 'erewrew', '2021-12-01', '2021-12-04', 'en proceso'),
(32, 5, 'Computación', 'EXCEL', '2021-12-06', '2021-12-09', 'en proceso'),
(33, 17, 'Redes II', 'redes', '2021-12-07', '2021-12-09', 'terminado'),
(34, 13, 'Taller 3', 'realizar investigación', '2021-12-07', '2021-12-08', 'en proceso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` smallint(6) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `apellido` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `username`, `password`) VALUES
(1, 'Roxana', 'Rodas', 'roxana', '$2y$10$KjGthsNGelfR04N6UR4DkODrhfGaRv83RJxkAFmwCq0JdqU68K5My'),
(5, 'Liseth', 'Huayllas Romero', 'liseth', '$2y$10$8AP3mAuQFf3oJsRTo3k2kuTGDMDWn1OPFYeDd3X2dy5mpfe/2ZYV6'),
(7, 'Juan', 'Perez', 'juan', '$2y$10$n03PvCF8toZ4mwPNq6zJquU8He8ZUGM8UEeJjEpc5eX7t0lptzMiK'),
(8, 'Jerry', 'Mendoza', 'jerry', '$2y$10$wNetIi96Fk40SuxQNqxt8.6fdPTYeuXYPA7BgTjhePc5cp0jDEYOG'),
(9, 'Ruth', 'Rodas Ccopa', 'ruth', '$2y$10$Y/O/KSLqKL9UOZDjufEj7ucD6H6jNRDHtbEe/Fn00THKX.8pxinTS'),
(10, 'Jose Maria', 'Rojas Medina', 'jose', '$2y$10$XgHWbFtcAEo2ebfAtVDRF./ZixZUCcvCthlslWtF7ukR1ZCXbLUV2'),
(11, 'Julio', 'Mendoza', 'julio', '$2y$10$pv048.cCF9twRumPaNruxO7urFo9eLvWIAEMkKyk/90bBRmdvcgIO'),
(12, 'benz', 'Utani', 'benz', '$2y$10$De7xBpcP0FQKkTi6gnhscOV9DJb.coqNgHAwyXIm0X3nJJTaQHVJe'),
(13, 'Yoselin', 'Huayllas', 'yoselin', '$2y$10$F0IeLrWiQ4CKZGZ4MqMLLuFRVklePH./e3RJV0GEXMMNO93vKl.gO'),
(14, 'Ggh', 'Segg', 'admin', '$2y$10$OchKOmgewFgWtT1b8usvvemgLMeQujrbou9KDlihm3d8RE5N0u3d.'),
(16, 'Zayn ', 'MALIK', 'zayn', '$2y$10$xUh1F7BX6SPmkATLVRVVHuC2B/teI5f9W3aq2gk6eJjZacdlQ3VUi'),
(17, 'Eduard', 'Berrocal Pariona', 'eduard', '$2y$10$XbZnuycAZ4qdcvNh75Iof.T9AtreZT.mYK.a3ySyXaBAhd45AC0Sm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
