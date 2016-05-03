-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2016 a las 21:18:49
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `elecciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

create database elecciones;

use elecciones;

CREATE TABLE IF NOT EXISTS `candidatos` (
  `codigo` char(5) NOT NULL,
  `candidato` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `partido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`codigo`, `candidato`, `foto`, `partido`) VALUES
('dos', 'Alejandro Toledo Manrique', 'toledo', 'PERU POSIBLE'),
('uno', 'Alan Garcia Perez', 'garcia', 'ALIANZA POPULAR'),
('tres', 'Antero Flores Araoz', 'antero', 'PARTIDO POLITICO ORDEN'),
('cuatr', 'Gregorio Santos Guerrero', 'gregorio', 'DEMOCRACIA DIRECTA'),
('cinco', 'Alfredo Barnechea Garcia', 'alfredo', 'ACCION POPULAR'),
('seis', 'Keiko Fujimori Fujimori', 'keiko', 'FUERZA POPULAR'),
('siete', 'Fernando Olivera Vega', 'popy', 'FRENTE ESPERANZA'),
('ocho', 'Miguel Hilario Escobar', 'miguel', 'PROGRESANDO PERU'),
('nueve', 'Pedro Pablo Kuczynski', 'ppk', 'PERUANOS POR EL CAMBIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votaciones`
--

CREATE TABLE IF NOT EXISTS `votaciones` (
  `dni` char(8) NOT NULL,
  `candidato` varchar(50) NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `votaciones`
--

INSERT INTO `votaciones` (`dni`, `candidato`) VALUES
('00244882', 'Pedro Pablo Kuczynski'),
('00754321', 'Gregorio Santos Guerrero'),
('00882212', 'Alfredo Barnechea Garcia'),
('00975432', 'Alan Garcia Perez'),
('00998887', 'Pedro Pablo Kuczynski'),
('01223111', 'Pedro Pablo Kuczynski'),
('01752111', 'Antero Flores Araoz'),
('01852466', 'Alan Garcia Perez'),
('01953131', 'Miguel Hilario Escobar'),
('01991111', 'Alfredo Barnechea Garcia'),
('02121111', 'Alejandro Toledo Manrique'),
('02272194', 'Keiko Fujimori Fujimori'),
('02321111', 'Alan Garcia Perez'),
('02738475', 'Alejandro Toledo Manrique'),
('02846211', 'Keiko Fujimori Fujimori'),
('02929381', 'Miguel Hilario Escobar'),
('03049587', 'Miguel Hilario Escobar'),
('03212111', 'Pedro Pablo Kuczynski'),
('03756464', 'Miguel Hilario Escobar'),
('04756647', 'Alfredo Barnechea Garcia'),
('08543211', 'Alfredo Barnechea Garcia'),
('08763212', 'Antero Flores Araoz'),
('08765432', 'Alfredo Barnechea Garcia'),
('09111111', 'Pedro Pablo Kuczynski'),
('09111222', 'Alan Garcia Perez'),
('09112221', 'Gregorio Santos Guerrero'),
('09125632', 'Keiko Fujimori Fujimori'),
('09131313', 'Keiko Fujimori Fujimori'),
('09131322', 'Pedro Pablo Kuczynski'),
('09172635', 'Gregorio Santos Guerrero'),
('09212111', 'Miguel Hilario Escobar'),
('09213211', 'Pedro Pablo Kuczynski'),
('09311111', 'Alfredo Barnechea Garcia'),
('09334567', 'Alejandro Toledo Manrique'),
('09375672', 'Antero Flores Araoz'),
('09712121', 'Miguel Hilario Escobar'),
('09723456', 'Alfredo Barnechea Garcia'),
('09765221', 'Alan Garcia Perez'),
('09765432', 'Alfredo Barnechea Garcia'),
('09811212', 'Pedro Pablo Kuczynski'),
('09876545', 'Fernando Olivera Vega'),
('09881111', 'Alfredo Barnechea Garcia'),
('09912121', 'Fernando Olivera Vega'),
('09944411', 'Antero Flores Araoz'),
('09991222', 'Keiko Fujimori Fujimori'),
('09991233', 'Keiko Fujimori Fujimori'),
('09992828', 'Alan Garcia Perez'),
('09999112', 'Pedro Pablo Kuczynski'),
('10063211', 'Alan Garcia Perez'),
('10383838', 'Fernando Olivera Vega'),
('10384757', 'Gregorio Santos Guerrero'),
('10394765', 'Alfredo Barnechea Garcia'),
('10991193', 'Alan Garcia Perez'),
('10998171', 'Fernando Olivera Vega'),
('10999388', 'Miguel Hilario Escobar'),
('10999911', 'Alejandro Toledo Manrique'),
('10999999', 'Fernando Olivera Vega'),
('11108736', 'Alan Garcia Perez'),
('12048727', 'Pedro Pablo Kuczynski'),
('12111111', 'Fernando Olivera Vega'),
('12987644', 'Alejandro Toledo Manrique'),
('13212333', 'Pedro Pablo Kuczynski'),
('22456777', 'Antero Flores Araoz'),
('23579544', 'Alfredo Barnechea Garcia'),
('24690865', 'Fernando Olivera Vega'),
('27465656', 'Fernando Olivera Vega'),
('27904456', 'Keiko Fujimori Fujimori'),
('29065455', 'Pedro Pablo Kuczynski'),
('34567333', 'Alan Garcia Perez'),
('34689007', 'Miguel Hilario Escobar'),
('45665555', 'Alejandro Toledo Manrique'),
('45678900', 'Alejandro Toledo Manrique'),
('45678909', 'Alan Garcia Perez'),
('55555555', 'Alejandro Toledo Manrique'),
('56987654', 'Antero Flores Araoz'),
('58766664', 'Gregorio Santos Guerrero'),
('60008433', 'Alejandro Toledo Manrique'),
('65234909', 'Alejandro Toledo Manrique'),
('65543322', 'Fernando Olivera Vega'),
('81211111', 'Antero Flores Araoz'),
('83727374', 'Miguel Hilario Escobar'),
('87123456', 'Gregorio Santos Guerrero'),
('87654300', 'Alejandro Toledo Manrique'),
('88765456', 'Pedro Pablo Kuczynski'),
('90103733', 'Alan Garcia Perez'),
('90875445', 'Gregorio Santos Guerrero'),
('91322112', 'Miguel Hilario Escobar'),
('93830221', 'Pedro Pablo Kuczynski'),
('93837737', 'Alejandro Toledo Manrique'),
('93847625', 'Antero Flores Araoz'),
('94856535', 'Alfredo Barnechea Garcia'),
('97111122', 'Pedro Pablo Kuczynski'),
('98273632', 'Keiko Fujimori Fujimori'),
('98541122', 'Antero Flores Araoz'),
('98742111', 'Keiko Fujimori Fujimori'),
('98761111', 'Alejandro Toledo Manrique'),
('98981223', 'Alfredo Barnechea Garcia'),
('99383832', 'Keiko Fujimori Fujimori'),
('99876543', 'Antero Flores Araoz'),
('99999939', 'Antero Flores Araoz');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
