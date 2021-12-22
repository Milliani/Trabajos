-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2021 a las 18:39:44
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Curp` varchar(70) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `Direccion` varchar(70) NOT NULL,
  `Teléfono` varchar(70) NOT NULL,
  `Profesión` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Curp`, `Nombre`, `Direccion`, `Teléfono`, `Profesión`) VALUES
('AAPC000607HQRBCRA5 ', 'ABAN PUC CARLOS ROBERTO', 'AVENIDA NIÑOS HEROES NO.378', '3117896958', 'Pintor'),
('BEPS05705MBCLXMA4', 'SAMANTHA MILLIANI BELTRAN PEÑA', '5 DE MAYO NO.145', '3112926971', 'Pintor'),
('GIUJ010605HYNLCSA2', 'GIL UC JESUS ALEJANDRO', 'KM.131 CARRETERA MEXICO LAREDO NO.632', '3115682647', 'Pintor'),
('HEGE501203MASRTL06', 'MARIA ELENA HERNÁNDEZ GUTIÉRREZ', 'CENTRO DE LA COMUNIDAD', '3112563495', 'Maestra'),
('RURL821230MZSVVD05', ' MARIA LUDIVINA RUVALCABA RIVERA', 'AV. 16 DE JULIO', '3115694548', 'Doctora'),
('VAPL990124MQRZLC00', 'VAZQUEZ PALACIO LUCIA DANIELA NO.5', 'AV. JUAREZ NO.659', '3119568574', 'Pintor'),
('XUPA990819MQRLTN06', 'XULUC POOT ANGELA YAZMIN', 'VILLA DE GUADALUPE NO.789', '3117489535', 'Pintor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `Tipo` varchar(70) NOT NULL,
  `Fecha` varchar(70) NOT NULL,
  `Balance` varchar(70) NOT NULL,
  `N:Cuenta` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`Tipo`, `Fecha`, `Balance`, `N:Cuenta`) VALUES
('De nomina', '02/23', '7,000', '3485 2992 2572 697'),
('Corriente', '10/22', '300,000', '3499 2809 2757 691'),
('De nomina', '06/23', '8,200', '3718 0825 3102 666'),
('De ahorro', '04/19', '25,000', '4014 6936 8824 7475'),
('Corriente', '10/22', '14,000', '5282 7471 4977 5599'),
('Corriente', '04/23', '40,500', '5387 0772 9033 3855'),
('Corriente', '08/22', '450,000', '5458 4667 4183 0441');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `N:Prestamo` varchar(40) NOT NULL,
  `Tipo` varchar(40) NOT NULL,
  `Cantidad` varchar(47) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`N:Prestamo`, `Tipo`, `Cantidad`) VALUES
('4', 'corto plazo', '9,500'),
('2', 'medio plazo', '17,000'),
('1', 'corto plazo', '15,000'),
('1', 'largo plazo', '200,000'),
('3', 'largo plazo', '100,000'),
('1', 'largo plazo', '40,000'),
('2', 'largo plazo', '25,000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `Sucursal` varchar(70) NOT NULL,
  `Direccion` varchar(70) NOT NULL,
  `Telefono` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`Sucursal`, `Direccion`, `Telefono`) VALUES
('	\r\nCitibanamex Central Tepic', ' Av Insurgentes 534, Lnsurgentes Aviación, 63150 Tepic, Nay.', '3112926971'),
('	\r\nCitibanamex Blvd. Colosio.', ' Blvrd Luis Donaldo Colosio 3983, Microindustria, 63173 Tepic, Nay', '3116589745'),
('Citibanamex La Cruz', 'Esteban Baca Calderón 5, Jardines de la Cruz, 63168 Tepic, Nay.', '3112569832'),
('Banamex en Tepic – Colonia Menchaca', 'venida Insurgentes Oriente 534, Colonia Menchaca, Tepic, CP 63115, Nay', '3116532648'),
('Sucursal Colonia San Ángel', 'Avenida Los Insurgentes Poniente 651, Col. San Ángel, Tepic, CP 63130,', '3115963264');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_resultados_1`
--

CREATE TABLE `tabla_resultados_1` (
  `Nombre` varchar(70) NOT NULL,
  `Saldo` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_resultados_1`
--

INSERT INTO `tabla_resultados_1` (`Nombre`, `Saldo`) VALUES
('ABAN PUC CARLOS ROBERTO', '7,000'),
('GIL UC JESUS ALEJANDRO', '8,200'),
('MARIA ELENA HERNÁNDEZ GUTIÉRREZ', '25,000'),
('MARIA LUDIVINA RUVALCABA RIVERA', '14,000'),
('SAMANTHA MILLIANI BELTRAN PEÑA', '300,000'),
('VAZQUEZ PALACIO LUCIA DANIELA', '450,000'),
('XULUC POOT ANGELA YAZMIN', '40,500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_resultados_2`
--

CREATE TABLE `tabla_resultados_2` (
  `Nombre` varchar(70) NOT NULL,
  `Numero de cuentas` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_resultados_2`
--

INSERT INTO `tabla_resultados_2` (`Nombre`, `Numero de cuentas`) VALUES
('SAMANTHA MILLIANI BELTRAN PEÑA', '2'),
('VAZQUEZ PALACIO LUCIA DANIELA', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_resultados_3`
--

CREATE TABLE `tabla_resultados_3` (
  `N:Sucursal` varchar(70) NOT NULL,
  `Nombre` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_resultados_3`
--

INSERT INTO `tabla_resultados_3` (`N:Sucursal`, `Nombre`) VALUES
('Citibanamex Central Tepic', 'SAMANTHA MILLIANI BELTRAN PEÑA'),
('Citibanamex Central Tepic', 'VAZQUEZ PALACIO LUCIA DANIELA'),
('Citibanamex Central Tepic', 'XULUC POOT ANGELA YAZMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_resultados_5`
--

CREATE TABLE `tabla_resultados_5` (
  `Nombre` varchar(70) NOT NULL,
  `Saldo Medio` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_resultados_5`
--

INSERT INTO `tabla_resultados_5` (`Nombre`, `Saldo Medio`) VALUES
('SAMANTHA MILLIANI BELTRAN PEÑA', '9,677'),
('VAZQUEZ PALACIO LUCIA DANIELA', '1,306'),
('XULUC POOT ANGELA YAZMIN', '14,516');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_resultado_6`
--

CREATE TABLE `tabla_resultado_6` (
  `Nombre` varchar(70) NOT NULL,
  `Importe` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_resultado_6`
--

INSERT INTO `tabla_resultado_6` (`Nombre`, `Importe`) VALUES
('VAZQUEZ PALACIO LUCIA DANIELA', '9,677'),
('SAMANTHA MILLIANI BELTRAN PEÑA', '14,516');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Curp`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`N:Cuenta`);

--
-- Indices de la tabla `tabla_resultados_1`
--
ALTER TABLE `tabla_resultados_1`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `tabla_resultados_5`
--
ALTER TABLE `tabla_resultados_5`
  ADD PRIMARY KEY (`Nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
