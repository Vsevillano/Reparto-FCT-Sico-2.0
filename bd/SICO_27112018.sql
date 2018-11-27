-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-11-2018 a las 18:23:25
-- Versión del servidor: 5.7.23-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `SICO`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Company`
--

CREATE TABLE `Company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cif` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `school_year_id` int(11) NOT NULL,
  `headquarters_of_work` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `headquarters_principal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nif_manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tutor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nif_tutor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_daw` int(11) DEFAULT NULL,
  `number_of_asir` int(11) DEFAULT NULL,
  `type_of_work_day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tasks_to_be_done` text COLLATE utf8_unicode_ci,
  `observations` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Company`
--

INSERT INTO `Company` (`id`, `name`, `cif`, `phone`, `email`, `school_year_id`, `headquarters_of_work`, `headquarters_principal`, `contact_person`, `manager`, `nif_manager`, `tutor`, `nif_tutor`, `number_of_daw`, `number_of_asir`, `type_of_work_day`, `tasks_to_be_done`, `observations`) VALUES
(1, 'SGC Online', 'B19182641', '670982739', 'desarrollo@tablondeanuncios.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(2, 'Everybind', '26821378C', '658421045', 'japerez@everybind.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(3, 'Silos Córdoba', 'A1100111A', '666666666', 'email@gmail.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(4, 'Confluence group', 'A0011111A', '666666666', 'email@gmail.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(5, 'DOBUSS', 'B14994586', '957289665', 'mluque@dobuss.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(6, 'Innovate Mayorista Tecnologico S.L', 'B56021587', '677467966', 'innovatecordoba@gmail.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(7, 'Alhsis IT (Granada)', '74683258G', '661472439', 'practicas@alhsis.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(8, 'Medel Correduria Tecnica de Seguros Confluence Group, SL', 'B14280622', '649690315', 'javiermedel@confluencegroup.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(10, 'Syscom (Montilla)', 'B14680490', '609548274', 'jimerino@siscomingenieria.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(11, 'Libero! (Puente Genil)', '50612733Z', '957609888', 'josedavid@liberoenlinea.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(12, 'NoSoloSoftware', 'B14928840', '633929525', 'cbarasona@nosolosoftware.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(13, 'Sopinet', 'B56008600', '900831133', 'mariluz@sopinet.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(14, 'Bosbe', 'A1111011A', '666666666', 'email@gmail.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(15, 'ERASMUS', 'A1111101A', '666666666', 'email@gmail.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(16, 'UnoCeroUno', 'G56071244', '654456434', 'somos@unocerouno.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(17, 'SIGLAB', 'B14937478', '636913775', 'fran@signlab.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(18, 'Loyola', 'G14894158', '957222100', 'mcramirez@uloyola.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(19, 'TicRed', 'B56065998', '957055656', 'raul@bargaw.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(20, 'San Juan de Dios', 'A1111110A', '957004600', 'email@gmail.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(21, 'UCO', 'Q1418001B', '678740416', 'manuel.ruiz@uco.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(22, 'GrayHats', 'B14967541', '667408447', 'scejudo@grayhats.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(23, 'CIC BATÁ', 'A1111111A', '957780040', 'email@gmail.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(24, 'Gruas Barea', 'B14300313', '957326565', 'informatica@grupobarea.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(25, 'EUROPLATAFORMAS 2000, S.A', 'A14530497', '957270540', 'TSANCHEZ@EUROGRUAS.COM', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(26, 'Ayuntamiento El carpio', 'P1401800F', '680426448', 'informatica@ayunelcarpio.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(27, 'VorticeSoft', '74923943V', '687994192', 'desarrollo@vorticesoft.com', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(28, 'SOLUCIONES TECNOLOGICAS EPL, S.L.', 'B90224437', '625484414', 'dblasco@elprimerodelalista.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(29, 'Uniges 3 SL', 'B14699276', '684455847', 'ana@uniges3.net', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(31, 'Asociación Cultural y Tecnológica Ingenia XXI', 'G56004948', '677382966', 'ilgarcia@uco.es', 0, '', '', '', '', '', '', '', 0, 0, '', '', ''),
(32, 'WOP!', 'B14943799', '957966024', 'info@yosoywop.com', 1, 'Fernan Nuñez', 'No se ha proporcionado', 'ANTONIO MIRANDA BERRAL', 'innovatecordoba@gmail.com', '30549744V', 'ANTONIO MIRANDA BERRAL', '30549744V', 1, 2, 'Jornada continua', 'Desarrollo web', 'Alumno Victor Gómez'),
(33, 'Enooby Spain S.L.U.', 'B56019110', '617945222', 'info@enooby.com', 1, 'Córdoba', 'No se ha proporcionado', 'Ana María Cañero López', 'Ana María Cañero López', '01234567-M', 'Ana María Cañero López', '30951138S', 1, 0, 'Jornada continua', '- Desarrollo de aplicaciones web conectadas a la API de Google (Google Apps)\n- Desarrollo de sistemas específicos para educación (Chrome OS, Raspberry, pantallas táctiles, chromecast...)\n- Adaptación de sitios web internos', 'Nos gustaría recibir un alumno inquieto y motivado tecnológicamente, y a ser posible, que hayan tenido algún contacto con el uso de la API de Google.'),
(34, 'Via Activa SL', 'B14661821', '957761892', 'info@viaactiva.es', 1, 'Córdoba', 'No se ha proporcionado', 'Pedro Castro Jimenez', 'Pedro Castro Jimenez(30509280X)', '01234567-M', 'Eva Mª Rabasco Bravo', '29485211Q', 1, 0, 'Jornada continua', 'Manejo de Wordpress y redes sociales', 'A ser posible que tambien tenga conocimientos de Prestashop aunque no es determinante.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `weight_pi` int(11) NOT NULL,
  `weight_fct` int(11) NOT NULL,
  `organization_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`id`, `weight_pi`, `weight_fct`, `organization_name`) VALUES
(1, 1, 1, 'I.E.S Gran Capitán');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Convocatory`
--

CREATE TABLE `Convocatory` (
  `id` int(11) NOT NULL,
  `school_year_id` int(11) NOT NULL,
  `convocatory` enum('MARZO','SEPTIEMBRE') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Convocatory`
--

INSERT INTO `Convocatory` (`id`, `school_year_id`, `convocatory`) VALUES
(1, 1, 'MARZO'),
(2, 1, 'SEPTIEMBRE'),
(3, 2, 'MARZO'),
(4, 2, 'SEPTIEMBRE'),
(5, 3, 'MARZO'),
(6, 3, 'SEPTIEMBRE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Course_cycle`
--

CREATE TABLE `Course_cycle` (
  `id` int(11) NOT NULL,
  `cycle_id` int(11) NOT NULL,
  `course` enum('1','2') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Course_cycle`
--

INSERT INTO `Course_cycle` (`id`, `cycle_id`, `course`) VALUES
(1, 1, '1'),
(2, 1, '2'),
(3, 2, '1'),
(4, 2, '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cycle`
--

CREATE TABLE `Cycle` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `initials` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titularHours1` int(11) NOT NULL,
  `desdobleHours1` int(11) NOT NULL,
  `titularHours2` int(11) NOT NULL,
  `desdobleHours2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Cycle`
--

INSERT INTO `Cycle` (`id`, `name`, `initials`, `titularHours1`, `desdobleHours1`, `titularHours2`, `desdobleHours2`) VALUES
(1, 'Desarrollo de Aplicaciones Web', 'DAW', 27, 12, 26, 0),
(2, 'Administracion de Sistemas Informáticos en Red', 'ASIR', 27, 10, 26, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Distribution_company`
--

CREATE TABLE `Distribution_company` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `assessment_student` int(11) DEFAULT NULL,
  `assessment_teacher` int(11) DEFAULT NULL,
  `observation_student` longtext COLLATE utf8_unicode_ci,
  `observation_teacher` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Distribution_company`
--

INSERT INTO `Distribution_company` (`id`, `user_id`, `student_id`, `company_id`, `assessment_student`, `assessment_teacher`, `observation_student`, `observation_teacher`) VALUES
(1, 2, 1, 1, NULL, NULL, NULL, NULL),
(2, 8, 5, 2, NULL, NULL, NULL, NULL),
(3, 4, 4, 3, NULL, NULL, NULL, NULL),
(4, 10, 2, 4, NULL, NULL, NULL, NULL),
(5, 3, 9, 5, NULL, NULL, NULL, NULL),
(6, 4, 3, 6, NULL, NULL, NULL, NULL),
(7, 3, 7, 7, NULL, NULL, NULL, NULL),
(8, 3, 6, 7, NULL, NULL, NULL, NULL),
(9, 4, 10, 10, NULL, NULL, NULL, NULL),
(10, 4, 11, 11, NULL, NULL, NULL, NULL),
(11, 2, 12, 1, NULL, NULL, NULL, NULL),
(12, 2, 13, 12, NULL, NULL, NULL, NULL),
(13, 3, 14, 13, NULL, NULL, NULL, NULL),
(14, 2, 15, 12, NULL, NULL, NULL, NULL),
(15, 2, 16, 14, NULL, NULL, NULL, NULL),
(16, 7, 17, 15, NULL, NULL, NULL, NULL),
(17, 4, 18, 16, NULL, NULL, NULL, NULL),
(18, 4, 19, 17, NULL, NULL, NULL, NULL),
(19, 7, 24, 18, NULL, NULL, NULL, NULL),
(20, 5, 25, 19, NULL, NULL, NULL, NULL),
(21, 5, 27, 21, NULL, NULL, NULL, NULL),
(22, 5, 28, 21, NULL, NULL, NULL, NULL),
(23, 7, 29, 22, NULL, NULL, NULL, NULL),
(24, 7, 30, 23, NULL, NULL, NULL, NULL),
(25, 7, 31, 24, NULL, NULL, NULL, NULL),
(26, 11, 26, 20, NULL, NULL, NULL, NULL),
(27, 2, 42, 25, NULL, NULL, NULL, NULL),
(28, 8, 41, 21, NULL, NULL, NULL, NULL),
(29, 7, 43, 18, NULL, NULL, NULL, NULL),
(30, 6, 44, 26, NULL, NULL, NULL, NULL),
(31, 11, 46, 28, NULL, NULL, NULL, NULL),
(32, 11, 47, 29, NULL, NULL, NULL, NULL),
(33, 7, 48, 18, NULL, NULL, NULL, NULL),
(34, 2, 49, 18, NULL, NULL, NULL, NULL),
(35, 11, 50, 28, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Distribution_module_teacher`
--

CREATE TABLE `Distribution_module_teacher` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hours` int(11) DEFAULT NULL,
  `desdoble` tinyint(1) NOT NULL,
  `gr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schoolYear_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Distribution_module_teacher`
--

INSERT INTO `Distribution_module_teacher` (`id`, `module_id`, `user_id`, `hours`, `desdoble`, `gr`, `schoolYear_id`) VALUES
(6, 13, 7, 6, 0, '1DAW-A', 1),
(7, 15, 3, 3, 0, '1DAW-A', 1),
(8, 14, 4, 4, 0, '1DAW-A', 1),
(9, 1, 6, 8, 0, '1DAW-A', 1),
(10, 1, 2, 6, 1, '1DAW-A', 1),
(11, 12, 6, 6, 0, '1DAW-A', 1),
(12, 12, 3, 3, 1, '1DAW-A', 1),
(13, 13, 2, 3, 1, '1DAW-A', 1),
(14, 18, 8, 3, 0, '2DAW-A', 1),
(15, 16, 2, 6, 0, '2DAW-A', 1),
(16, 29, 3, 6, 0, '2DAW-A', 1),
(17, 17, 4, 8, 0, '2DAW-A', 1),
(18, 30, 4, 3, 0, '2DAW-A', 1),
(19, 21, 3, 3, 0, '1ASIR-A', 1),
(20, 22, 7, 6, 0, '1ASIR-A', 1),
(21, 22, 3, 3, 1, '1ASIR-A', 1),
(22, 19, 10, 8, 0, '1ASIR-A', 1),
(23, 19, 6, 4, 1, '1ASIR-A', 1),
(24, 23, 2, 4, 0, '1ASIR-A', 1),
(25, 20, 10, 6, 0, '1ASIR-A', 1),
(26, 20, 4, 3, 1, '1ASIR-A', 1),
(27, 27, 7, 3, 0, '2ASIR-A', 1),
(28, 26, 7, 4, 0, '2ASIR-A', 1),
(29, 25, 5, 6, 0, '2ASIR-A', 1),
(30, 24, 8, 6, 0, '2ASIR-A', 1),
(31, 28, 5, 4, 0, '2ASIR-A', 1),
(32, 31, 10, 3, 0, '2ASIR-A', 1),
(33, 19, 6, 8, 0, '1ASIR-A', 2),
(34, 19, 11, 4, 1, '1ASIR-A', 2),
(35, 20, 12, 6, 0, '1ASIR-A', 2),
(36, 20, 3, 3, 1, '1ASIR-A', 2),
(37, 21, 3, 3, 0, '1ASIR-A', 2),
(38, 22, 11, 6, 0, '1ASIR-A', 2),
(39, 22, 6, 3, 1, '1ASIR-A', 2),
(40, 23, 8, 4, 0, '1ASIR-A', 2),
(41, 24, 8, 6, 0, '2ASIR-A', 2),
(43, 25, 5, 6, 0, '2ASIR-A', 2),
(44, 26, 7, 4, 0, '2ASIR-A', 2),
(45, 27, 7, 3, 0, '2ASIR-A', 2),
(46, 28, 11, 4, 0, '2ASIR-A', 2),
(47, 31, 7, 3, 0, '2ASIR-A', 2),
(48, 12, 5, 6, 0, '1DAW-A', 2),
(49, 13, 4, 6, 0, '1DAW-A', 2),
(50, 1, 2, 8, 0, '1DAW-A', 2),
(51, 14, 7, 4, 0, '1DAW-A', 2),
(52, 15, 12, 3, 0, '1DAW-A', 2),
(53, 12, 12, 3, 1, '1DAW-A', 2),
(54, 13, 7, 3, 1, '1DAW-A', 2),
(55, 1, 3, 6, 1, '1DAW-A', 2),
(56, 16, 2, 6, 0, '2DAW-A', 2),
(57, 17, 4, 8, 0, '2DAW-A', 2),
(58, 18, 6, 3, 0, '2DAW-A', 2),
(59, 29, 3, 6, 0, '2DAW-A', 2),
(60, 30, 4, 3, 0, '2DAW-A', 2),
(62, 19, 8, 8, 0, '1ASIR-A', 3),
(63, 19, 12, 4, 1, '1ASIR-A', 3),
(64, 20, 12, 6, 0, '1ASIR-A', 3),
(65, 21, 3, 3, 0, '1ASIR-A', 3),
(66, 20, 7, 3, 1, '1ASIR-A', 3),
(67, 22, 7, 6, 0, '1ASIR-A', 3),
(68, 22, 4, 3, 1, '1ASIR-A', 3),
(69, 23, 13, 4, 0, '1ASIR-A', 3),
(70, 24, 8, 6, 0, '2ASIR-A', 3),
(71, 25, 5, 6, 0, '2ASIR-A', 3),
(72, 26, 7, 4, 0, '2ASIR-A', 3),
(73, 27, 7, 3, 0, '2ASIR-A', 3),
(74, 28, 5, 4, 0, '2ASIR-A', 3),
(75, 31, 8, 3, 0, '2ASIR-A', 3),
(76, 12, 12, 6, 0, '1DAW-A', 3),
(77, 12, 5, 3, 1, '1DAW-A', 3),
(78, 13, 4, 6, 0, '1DAW-A', 3),
(79, 13, 3, 3, 1, '1DAW-A', 3),
(80, 1, 2, 8, 0, '1DAW-A', 3),
(81, 1, 3, 6, 1, '1DAW-A', 3),
(82, 14, 7, 4, 0, '1DAW-A', 3),
(83, 15, 3, 3, 0, '1DAW-A', 3),
(84, 16, 2, 6, 0, '2DAW-A', 3),
(85, 17, 4, 8, 0, '2DAW-A', 3),
(86, 18, 8, 3, 0, '2DAW-A', 3),
(87, 29, 3, 6, 0, '2DAW-A', 3),
(88, 30, 4, 3, 0, '2DAW-A', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Distribution_project`
--

CREATE TABLE `Distribution_project` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Distribution_project`
--

INSERT INTO `Distribution_project` (`id`, `user_id`, `student_id`, `project_id`) VALUES
(1, 2, 1, 1),
(4, 4, 5, 3),
(5, 2, 3, 1),
(6, 7, 6, 4),
(7, 7, 4, 5),
(8, 4, 2, 5),
(9, 7, 7, 4),
(10, 3, 8, 6),
(11, 3, 9, 6),
(12, 4, 10, 7),
(13, 4, 11, 7),
(14, 6, 12, 8),
(15, 6, 13, 8),
(16, 2, 14, 9),
(17, 2, 15, 9),
(18, 4, 16, 10),
(19, 4, 17, 10),
(20, 3, 18, 11),
(21, 3, 19, 11),
(22, 7, 20, 12),
(23, 8, 21, 12),
(24, 3, 22, 13),
(25, 8, 23, 14),
(26, 7, 24, 15),
(27, 5, 25, 16),
(28, 11, 26, 17),
(29, 5, 27, 18),
(30, 5, 28, 18),
(31, 8, 29, 19),
(32, 8, 30, 20),
(33, 8, 31, 20),
(34, 7, 32, 12),
(35, 10, 33, 21),
(36, 5, 34, 22),
(37, 5, 36, 18),
(38, 5, 37, 18),
(39, 6, 38, 23),
(40, 8, 39, 24),
(41, 8, 40, 24),
(42, 10, 41, 25),
(43, 10, 42, 25),
(44, 7, 43, 26),
(45, 6, 44, 27),
(46, 8, 45, 28),
(47, 5, 35, 29),
(48, 4, 46, 5),
(49, 4, 47, 5),
(50, 5, 48, 31),
(51, 7, 49, 32),
(52, 3, 50, 33),
(53, 8, 51, 12),
(54, 8, 52, 14),
(55, 5, 54, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_calendar`
--

CREATE TABLE `event_calendar` (
  `id` int(11) NOT NULL,
  `school_year_id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weekDay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `init_hour` time NOT NULL,
  `final_hour` time NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gr` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `event_calendar`
--

INSERT INTO `event_calendar` (`id`, `school_year_id`, `module`, `weekDay`, `init_hour`, `final_hour`, `color`, `gr`) VALUES
(4, 1, 'DWEC', 'monday', '08:15:00', '10:15:00', '#ff0000', '2DAW-A'),
(5, 1, 'HLC', 'monday', '10:15:00', '11:15:00', '#c0c0c0', '2DAW-A'),
(6, 1, 'DIWEB', 'monday', '11:40:00', '13:40:00', '#00ff00', '2DAW-A'),
(7, 1, 'DAWEB', 'monday', '13:40:00', '14:40:00', '#800080', '2DAW-A'),
(8, 1, 'DWES', 'tuesday', '08:15:00', '10:15:00', '#ffff00', '2DAW-A'),
(9, 1, 'HLC', 'tuesday', '10:15:00', '11:15:00', '#c0c0c0', '2DAW-A'),
(10, 1, 'HLC', 'tuesday', '11:40:00', '12:40:00', '#c0c0c0', '2DAW-A'),
(11, 1, 'DIWEB', 'tuesday', '12:40:00', '14:40:00', '#00ff00', '2DAW-A'),
(12, 1, 'DWEC', 'wednesday', '08:15:00', '10:15:00', '#ff0000', '2DAW-A'),
(13, 1, 'DWES', 'wednesday', '12:40:00', '14:40:00', '#ffff00', '2DAW-A'),
(14, 1, 'DWES', 'thursday', '08:15:00', '10:15:00', '#ffff00', '2DAW-A'),
(15, 1, 'DAWEB', 'thursday', '12:40:00', '14:40:00', '#800080', '2DAW-A'),
(16, 1, 'DWES', 'friday', '08:15:00', '10:15:00', '#ffff00', '2DAW-A'),
(17, 1, 'DWEC', 'friday', '10:15:00', '11:15:00', '#ff0000', '2DAW-A'),
(18, 1, 'DWEC', 'friday', '11:40:00', '12:40:00', '#ff0000', '2DAW-A'),
(19, 1, 'DIWEB', 'friday', '12:40:00', '14:40:00', '#00ff00', '2DAW-A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Module`
--

CREATE TABLE `Module` (
  `id` int(11) NOT NULL,
  `course_cycle_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `initials` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hours` int(11) NOT NULL,
  `hoursDesdoble` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Module`
--

INSERT INTO `Module` (`id`, `course_cycle_id`, `name`, `initials`, `hours`, `hoursDesdoble`) VALUES
(1, 1, 'Programacion', 'PGN', 8, 6),
(12, 1, 'Sistemas Informaticos', 'SIN', 6, 3),
(13, 1, 'Bases de datos', 'BBDD', 6, 3),
(14, 1, 'Lenguaje de marcas y sistemas de gestion de la información', 'LMSGI', 4, 0),
(15, 1, 'Entornos de desarrollo', 'ENDE', 3, 0),
(16, 2, 'Desarrollo web en entorno cliente', 'DWEC', 6, 0),
(17, 2, 'Desarrollo web en entorno servidor', 'DWES', 8, 0),
(18, 2, 'Despliegue de aplicaciones web', 'DAWEB', 3, 0),
(19, 3, 'Implantación de sistemas operativos', 'ISO', 8, 4),
(20, 3, 'Planificación y administración de redes', 'PAR', 6, 3),
(21, 3, 'Fundamentos de hardware', 'FH', 3, 0),
(22, 3, 'Gestión de bases de datos', 'GBD', 6, 3),
(23, 3, 'Lenguaje de marcas y sistemas de gestion de la información', 'LMSGI', 4, 0),
(24, 4, 'Administración de sistemas operativos', 'ASO', 6, 3),
(25, 4, 'Servicios de red e Internet', 'SRI', 6, 3),
(26, 4, 'Implantación de aplicaciones web', 'IAW', 4, 2),
(27, 4, 'Administración de sistemas gestores de bases de datos', 'SGBD', 3, 0),
(28, 4, 'Seguridad y alta disponibilidad', 'SAD', 4, 0),
(29, 2, 'Diseño de Interfaces Web', 'DIWEB', 6, 0),
(30, 2, 'Horas de libre configuracion', 'HLC', 3, 0),
(31, 4, 'Horas de libre configuracion', 'HLC', 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Project`
--

CREATE TABLE `Project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `required_students` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Project`
--

INSERT INTO `Project` (`id`, `name`, `description`, `required_students`) VALUES
(1, 'Reparto FCT 2.0', 'Reparto FCT', 2),
(3, 'Guardias', 'Aplicacion para las guardias de los profesores', 1),
(4, 'Erasmus', 'Proyecto para gestionar los Erasmus', 2),
(5, 'Convivencia', 'Gestionar convivencias', 2),
(6, 'Chatbots 2.0', 'Mejorar el chatbot que ya habia', 2),
(7, 'Unity', 'Juegos en Unity', 2),
(8, 'Autom. Redes Sociales', 'Automatizacion de Redes Sociales', 2),
(9, 'Gestion Asignacion FCT', 'Gesitonar la asignacion de las FCT', 2),
(10, 'Skills', 'Habilidades...', 1),
(11, 'Chatbots', 'Creacion de chatbots', 2),
(12, 'ElasticSearch, Logstash y KIbana', 'ElasticSearch, Logstash y KIbana', 2),
(13, 'Test Projects ASIR "Andalucia Skills"', 'Test Projects ASIR "Andalucia Skills"', 1),
(14, 'Windows Server 2016', 'Windows Server 2016', 1),
(15, 'Metadatos de la Web (FOCA)', 'Metadatos de la Web (FOCA)', 1),
(16, 'Helvia (Bitácora)', 'Helvia (Bitácora)', 1),
(17, 'Twitter', 'Twitter', 1),
(18, 'Alta disponibilidad', 'Alta disponibilidad', 2),
(19, 'Defender Active Directory', 'Defender Active Directory', 1),
(20, 'CleanUp a medida', 'CleanUp a medida', 2),
(21, 'Instalación y Configuración serv proxy', 'Instalación y Configuración serv proxy', 1),
(22, 'Proyecto Integrado adecuación Web del IES y Blogs del centro al RGPD.', 'Proyecto Integrado adecuación Web del IES y Blogs del centro al RGPD.', 1),
(23, 'Health de servicios de una infraestructura', 'Health de servicios de una infraestructura', 1),
(24, 'Comunidad estudiantes colaborativa', 'Comunidad estudiantes colaborativa', 2),
(25, 'Port Knocking', 'Port Knocking', 2),
(26, 'Implantación de OpenGnsys en IES', 'Implantación de OpenGnsys en IES (propuesto por Christian de ETEA una vez que está trabajando allí)', 1),
(27, 'Biblioteca', 'Biblioteca', 1),
(28, 'RFS', 'RFS', 1),
(29, 'Que proponga', 'que proponga', 1),
(30, 'Proyecto Pepito Grillo', 'csdgs', 1),
(31, 'Automatización SmartTV\r\n', 'Automatización SmartTV\r\n', 1),
(32, 'Proyecto de seguridad..\r\n', 'Proyecto de seguridad..\r\n', 1),
(33, 'Test Projects ASIR "Andalucia Skills"\r\n', 'Test Projects ASIR "Andalucia Skills"\r\n', 1),
(34, 'Admón Remota Aula 219\r\n', 'Admón Remota Aula 219\r\n', 1),
(35, 'Plantilla web Departamento', 'Crear una plantilla web para el Departamento', 1),
(36, 'Portal Erasmus IES GRAN CAPiTÁN', 'Portal Erasmus IES GRAN CAPiTÁN', 1),
(37, 'Aplicación híbrida con IONIC', 'Aplicación híbrida con IONIC', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Request_company`
--

CREATE TABLE `Request_company` (
  `id` int(11) NOT NULL,
  `school_year_id` int(11) NOT NULL,
  `name_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cif` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `headquarters_of_work` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `headquarters_principal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manager` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nif_manager` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tutor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nif_tutor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_daw` int(11) DEFAULT NULL,
  `number_of_asir` int(11) DEFAULT NULL,
  `type_of_work_day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tasks_to_be_done` text COLLATE utf8_unicode_ci NOT NULL,
  `observations` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Request_company`
--

INSERT INTO `Request_company` (`id`, `school_year_id`, `name_company`, `cif`, `headquarters_of_work`, `headquarters_principal`, `contact_person`, `email`, `phone`, `manager`, `nif_manager`, `tutor`, `nif_tutor`, `number_of_daw`, `number_of_asir`, `type_of_work_day`, `tasks_to_be_done`, `observations`) VALUES
(313, 2, 'MYE WEB DESING CORDOBA S.L. (Salmorejo Software)\r\n', 'B14993448\r\n', 'Córdoba\r\n', 'No se ha proporcionado\r\n', 'Eloy\r\n', ' eloy@salmorejosoftware.com\r\n', '665644518\r\n', 'Eloy González Jordano\r\n', '30422958F\r\n', 'Víctor Parra\r\n', '50614787K\r\n', 1, NULL, 'Jornada continua\r\n', 'Desarrollo de aplicaciones y páginas web\r\n', 'SIN OBSERVACIONES\r\n'),
(918, 1, 'VorticeSoft', '74923943-V', 'Córdoba', 'No se ha proporcionado', 'Moisés Márquez Gil', 'desarrollo@vorticesoft.com', '687994192', 'Moisés Márquez Gil', '08888194-M', 'Moisés Márquez Gil', '74923943V', 1, 0, 'Jornada continua', 'Pequeñas ampliaciones y reparaciones de software de la empresa, trabajando sobre código real y en producción que usan el Framework Symfony. Aprenderá a instalar y ampliar Webs usando Wordpress. Aprenderá a usar herramientas como Less, SASS o GULP\npara la producción de código.', 'Si el alumno supera las expectativas podría continuar en la\nempresa como desarrollador junior.'),
(920, 1, 'Asociación Cultural y Tecnológica Ingenia XXI', 'G56004948', 'Córdoba', 'No se ha proporcionado', 'Isabel López García', 'ilgarcia@uco.es', '677382966', 'Isabel López García', '01234567-M', 'Isabel López García', '74662535G', 1, 0, 'Jornada continua', 'Revisión de la actual página web y actualización de contenidos. Elaboración de webs adscritas a la web principal. Conexión con redes sociales.', 'Ya hemos participado una vez en este programa y estamos muy satisfechos con la experiencia y con la profesora tutora Mª Lourdes. Esperamos poder repetir próximamente.'),
(921, 1, 'UMITEL soluciones informaticas sl', 'b14977581', 'cordoba', 'No se ha proporcionado', 'alberto cano', 'alberto@umitel.es', '661506112', 'alberto cano', '01234567-M', 'alberto cano', '30978870d', 1, 1, 'Jornada continua', 'servicio de soporte a empresas (problemas de servidores , desarrollo de app, paginas web, averías de equipos, instalaciones de red  y radionlaces..)', NULL),
(923, 1, 'Gestaweb 2020, S.L.', 'B14970750', 'Córdoba', 'No se ha proporcionado', 'Juan Antonio Serrano', 'juan@electrocosto.com', '957404686', 'Verónica Jurado Márquez(44371961Q)', '01234567-M', 'Juan A. Serrano Navarro', '30971425Q', 1, 2, 'Jornada continua', 'Búscamos 2 perfiles de alumnos:\n\n1. Integración de productos: tareas de creación y optimización de las fichas de producto para posicionarlas en Google. Sería importante que tenga conocimientos de SEO, si no es así nosotros se los aportaríamos.\n\n2. Programador: Muy positivo que tenga conocimientos en prestashop, en caso de tenerlos podría desarrollar módulos para implantarlos en la web. De no tener conocimientos en prestashop se dedicaría a la creación de herramientas que ayuden a la automatización de las tareas diarias.', 'Ambas tareas se desarrollaran sobre el ecommerce www.electrocosto.com. Hay una alta posibilidad de contratación.'),
(924, 1, 'Dafos Training, S. L.', 'B14615538', 'Córdoba', 'No se ha proporcionado', 'Juan Rodriguez', 'consultoria@dafos.com', '957340125', 'José Martinez Almagro(30496135K)', '01234567-M', 'Juan Rodriguez', '50.600.216-D', 1, 0, 'Jornada continua', 'Desarrollo y programación en entornos web', NULL),
(925, 1, 'ALFONSO ALBERCA DIAZ', '44363565S', 'CÓRDOBA', 'No se ha proporcionado', 'ALFONSO ALBERCA', 'alfonso@tallerempresarial.es', '666448780', 'ALFONSO ALBERCA DIAZ', '01234567-M', 'ALFONSO ALBERCA DÍAZ', '44363565S', 1, 0, 'Jornada continua', 'Desarrollo de aplicación web, para sector joyero.', 'Estoy interesado en el Alumno David Peralvo\nGracias'),
(926, 1, 'Innovation Tech PericialCar S.L.', 'B14860316', 'Córdoba', 'No se ha proporcionado', 'Francisco Gracia Ahufinger', 'graciaf@es.innovation-group.com', '34635598207', 'Laurence Vivet(Y2372975X)', '01234567-M', 'Francisco Gracia Ahufinger', '44370370N', 1, 0, 'Jornada continua', 'Adaptación del front de la plataforma a nuevas tecnologías de desarrollo web', NULL),
(927, 1, 'Universidad Loyola Andalucía', 'G14894158', 'Córdoba', 'No se ha proporcionado', 'M. Carmen Ramírez Moreno', 'mcramirez@uloyola.es', '957 222 100', 'Gabriel María Pérez Alcalá', '01234567-M', 'M. Carmen Ramírez Moreno', '30795396Y', 0, 2, 'Jornada continua', '"Búscamos 2 perfiles de alumnos:\n1. Integración de productos: tareas de creación y optimización de las fichas de producto para posicionarlas en Google. Sería importante que tenga conocimientos de SEO, si no es así nosotros se los aportaríamos.\n2. Programador: Muy positivo que tenga conocimientos en prestashop, en caso de tenerlos podría desarrollar módulos para implantarlos en la web. De no tener conocimientos en prestashop se dedicaría a la creación de herramientas que ayuden a la automatización de las tareas diarias."Las tareas del alumno tendrán lugar en el Servicio de Tecnologías de la Información y Comunicación de la Universidad Loyola, en su sede de Córdoba.\nSe realizarán en varias áreas:\n- En el área de atención al usuario: soporte de primer nivel a personal docente, de investigación, de administración y servicios.\n- En las salas informáticas, Windows y MAC: atención al alumnado, colaboración en proyectos de aulas, atención en las aulas.\n- Área de microinformática: colaboración en un soporte a usuario de mayor nivel, colaboración en algunos de sus proyectos en curso con personal del servicio, audiovisuales, etc.', 'Es importante el trabajo colaborativo dentro del equipo así como una correcta atención al usuario cuando tenga lugar.'),
(928, 1, 'NoSoloSoftware Network, S.L.', 'B14928840', 'Córdoba', 'No se ha proporcionado', 'Selma Hayoun Caballero', 'shayoun@nosolosoftware.es', '957326715', 'Pedro Navajas Modelo(45738607W)', '01234567-M', 'Carlos Javier Barasona León', '30836612Y', 1, 0, 'Jornada continua', '- Trabajo en equipos multidisciplinares guiados por metodologías ágiles.\n- Maquetación de las aplicaciones desarrolladas en la empresa.', 'Tenemos gratas experiencias acogiendo a alumnos en formación y nos gustaría probar a perfiles alineados con nuestra forma de trabajar con el objeto de que formasen parte de nuestro equipo en nuestro futuro: proactividad, curiosidad y dinamismo.'),
(929, 1, 'Enooby Spain S.L.U.', 'B56019110', 'Córdoba', 'No se ha proporcionado', 'Ana Cañero López', 'info@enooby.com', '957105104', 'Ana Cañero López', '01234567-M', 'Ana Cañero López', '30951138s', 2, 0, 'Jornada continua', '- Desarrollo de aplicaciones web conectadas a la API de Google (Google Apps)\n- Desarrollo de sistemas específicos\n- Adaptación de sitios webs internos', 'Nos gustaría recibir alumnos motivados e inquietos tecnológicamente, que hayan tenido algún contacto con el uso de la API de Google'),
(930, 1, 'Dobuss', 'B14994586', 'Córdoba', 'No se ha proporcionado', 'Daniel Cabrera Cebrero', 'daniel.dobuss@gmail.com', '957 289 665', 'José Huertas Jiménez(30808949N)', '01234567-M', 'Daniel Cabrera Cebrero', '30985827C', 1, 0, 'Jornada continua', 'Desarrollo y mantenimiento de páginas webs y tiendas online con WordPress, Magento y PrestaShop (HTML5, CSS3, JavaScript y PHP)', 'Los conocimientos sobre las herramientas utilizadas no son una prioridad (al menos conocimientos básicos de HTML, CSS, JavaScript y PHP); sin embargo, se solicita un alumno formal, colaborativo y sociable, con ganas de trabajar y que sepa hacerlo en grupo, así como con recursos para investigar y encontrar soluciones por su cuenta.\n\nEn estos momentos, la empresa cuenta con recursos y trabajo para nuevas incorporaciones. No obstante, si bien es cierto que no asegura un puesto de trabajo, existen posibilidades reales de contratación, atendiendo a la capacidad del alumno y las circunstancias acontecidas hasta la finalización de las prácticas.'),
(931, 1, 'EMUPREVENCION', 'B14590053', 'CORDOBA', 'No se ha proporcionado', 'Antonio R Barbado', 'abarbado@emucor.es', '618973197', 'Manuel Valencia Díaz', '01234567-M', 'Antonio R. Barbado', '30835218S', 1, 0, 'Jornada continua', 'Reestructuración de ciertas partes de la nueva aplicación web de gestión de la empresa.\nCreación de un sistema de gestión de usuarios integrado con el directorio activo.\nAprender ciertos aspecto del área de sistemas: virtualización, sistemas operativos, Linux... etc.\n', NULL),
(932, 1, 'Mye Web Design Córdoba S.L.', 'B14993448', 'Córdoba', 'No se ha proporcionado', 'Eloy González', 'eloy@salmorejosoftware.com', '665644518', 'Eloy González', '01234567-M', 'Eloy González', '30814129V', 1, 0, 'Jornada continua', '* Desarrollo Frontend basándose en arquitectura MVC como AngularJS y Angular 2.\n* Desarrollo Backtend basándose en Ruby on Rails.\n* Desarrollo móvil con tecnologías híbridas como Ionic Framework.\n* Despliegues automáticos con tecnologías como Jenkins.\n* Gestores de paquetes como NPM.\n* Control de versiones con GIT.\n* Estándares como ES6, CSS modules, Typescript, Sass.\n* Gestión de proyectos con metodologías ágiles como Scrum.\n* Workflow de cómo trabajar en equipo.\n', NULL),
(933, 1, 'SOLDACOR, S. A. ', 'A14252118', 'CORDOBA', 'No se ha proporcionado', 'ISABEL', 'info@soldacor.com', '95326476', 'Isabel Lozano', '30942433G', 'Isabel Lozano', '30942433G', 2, 0, 'Jornada continua', 'Gestion de nuestra tienda online, web y pagina de facebook.', NULL),
(934, 1, 'Eurotransportcar Servicios Logisticos, S.L.', 'B14925028', 'Cordoba', 'No se ha proporcionado', 'Cordoba', 'juan.alba@eurotransportcar.com', '651866995', 'Juan Alba Moreno', '30790561R', 'Juan Alba Moreno', '30790561R', 3, 1, 'Jornada continua', 'Desarrollo software multiplataforma en colaboración con nuestros Ingenieros informáticos, así como el mantenimiento y puesta en marcha de las distintas apps y aplicaciones que tenemos en el mercado.  ', NULL),
(935, 1, 'WOP!', 'B14943799', 'Pozoblanco', 'No se ha proporcionado', 'Francisco', 'info@yosoywop.com', '957966024', 'Trinidad Rubio Serrano', '80147075X', 'Rafa Bernier', '44361716Y', 0, 0, 'Jornada continua', 'Instalaciones y mantenimiento en servicios de telecomunicaciones', NULL),
(936, 1, 'Universidad Loyola Andalucía', 'G14894158', 'Córdoba', 'No se ha proporcionado', 'M. Carmen Ramírez Moreno', 'mcramirez@uloyola.es', '957 222 100', 'Gabriel María Pérez Axlcalá', '30462571Z', 'M. Carmen Ramírez Moreno', '30795396Y', 0, 1, 'Jornada continua', 'Siempre con el acompañamiento de personal técnico propio, colaborará en:\n- Atención de primer nivel a solicitudes de incidencias del personal de la Universidad.\n- Atención a necesidades en aulas y salas informáticas (MAC y Windows). Despliegue de software en red. Resolución de incidencias software y hardware en equipamiento.\n- Colaboración en mantenimientos preventivos y correctivos de audiovisuales y sistemas de domótica implantados en las aulas docentes.\n- Participación en proyectos internos de las áreas de microinformática,  sistemas y redes, desde su fase de estudio hasta su puesta en producción.', '- Trabajo en equipo - entorno colaborativo..\n- No tenemos inconveniente en recibir dos alumnos en lugar de uno.'),
(937, 1, 'Wifi Operador Los Pedroches S.L.', 'B14943799', 'Pozoblanco', 'No se ha proporcionado', 'Fran Vélez', 'info@yosoywop.com', '957966024', 'Francisco José Vélez Escalante', '44360512K', 'Pedro Luis Benitez Delgado', '80153945A', 0, 1, 'Jornada continua', 'Despliegue de Redes ftth.\nInstalación y mantenimiento de otras redes y servicios de telecomunicaciones.', NULL),
(938, 1, 'TETRA CONSULTORES', 'B56024110', 'CORDOBA', 'No se ha proporcionado', 'MIGUEL BEJAR LUQUE', 'MIGUEL.TETRA@GMAIL.COM', '615360661', 'MIGUEL BEJAR LUQUE', '00810122Q', 'MIGUEL BEJAR LUQUE', '00810122Q', 1, 1, 'Jornada continua', 'DAW Realizar la nueva pagina de tetra consultores, en cms joomla y programacion php, conectando las redes sociales e incorporando los contenidos. También colaborará en el proyecto de la Gerencia Municipal de Urbanismo de modificaciones php-mysql de la intranet.\nASIR Realizar la gestion de backup y configuraciones para mejorar la seguridad del servidor linux corporativo', NULL),
(939, 1, 'Ingeniería y Diseño Molfer S.L. (IKNX)', 'B14980007', 'Córdoba', 'No se ha proporcionado', 'Antonio José Molero Fernández', 'antonio.molero@iknx.es', '665587528', 'Antonio José Molero Fernández', '30837377N', 'Julio César Fernández Fernández', '30822969W', 0, 0, 'Jornada continua', 'Investigación y desarrollo.', 'La elección del alumno queda condicionada a realizar una entrevista previamente.'),
(940, 1, 'INFORCEST INFORMATICA S.L.', 'B14577746', 'ALMODOVAR DEL RIO', 'No se ha proporcionado', 'Rafael Jiménez Manzano', 'rafa@inforcest.com', '687449171', 'Rafael Jiménez Manzano', '44352455z', 'Rafael Jiménez Manzano', '44352455z', 0, 1, 'Jornada continua', 'Reparación Equipos Informáticos, Instalación de servicio de Internet en Wimax y Fibra Óptica.', NULL),
(941, 1, 'Universidad de Córdoba', 'Q1418001B', 'Cordoba', 'No se ha proporcionado', 'Manuel Ruiz de Adana Santiago', 'manuel.ruiz@uco.es', '678740416', 'Jose Carlos Gomez Villamandos', '30480633K', 'Manuel Ruiz de Adana Santiago', '25993950V', 1, 0, 'Jornada continua', 'Desarrollo de página web del grupo de investigación\n\nAnálisis de la documentación existente\nAnálisis de la estructura web\nPruebas de concepto preliminares\nDesarrollo de página web primera versión \nDesarrollo de página web versión mejorada', 'Sería deseable que el alumno tuviera conocimientos de imagen ya que gran parte del trabajo podría documentarse bien con imágenes/videos invitando a reducir el texto al mínimo.'),
(942, 1, 'SALUDEX S.L.', 'B14950232', 'CORDOBA', 'No se ha proporcionado', 'ÁNGEL', 'saludexcordoba@hotmail.com', '678498851', 'ÁNGEL LÓPEZ MURIEL', '78684743-H', 'ÁNGEL LÓPEZ MURIEL', '78684743-H', 1, 1, 'Jornada continua', 'CREACIÓN PROGRAMA DE GESTIÓN DE CLIENTES  Y ALMACENAMIENTO DE LOS MISMOS EN BASE DE DATOS.\nACTUALIZACIÓN DE PÁGINA WEB (www.saludex.es). ', NULL),
(943, 1, 'everis Centers', '84861178B', 'Sevilla', 'No se ha proporcionado', 'Laura Morales Fernández / Carmen Vázquez Vizcaya', 'recruiting.Centers.Sevilla@everis.com', '954989710 / 639280868', 'Juan Antonio Garay Aranburu', '30621860M', 'Alejandro Garcia Pastor', '75795958X', 3, 0, 'Jornada continua', 'Prácticas de desarrollo de aplicaciones en diferentes lenguajes de programación. A tener en cuenta: \n- Trabajo en colaboración con otros: Capacidad para lograr los objetivos comunes de un conjunto de personas  a la vez que establece relaciones abiertas y constructivas con los integrantes del equipo.	\n- Trabajo en colaboración con otros: Agilidad a la hora de identificar un problema, reconocer la información relevante, encontrar posibles causas y proponer soluciones eficaces.	\n- Organización y planificación: Capacidad para gestionar el propio trabajo, coordinando los recursos y plazos establecidos	.	\n- Compromiso: Capacidad para orientar las propias acciones hacia los objetivos y responsabilidades que le son establecidas, actuando con sentido de compromiso.		\n- Aprendizaje: Motivación y capacidad para adquirir nuevos conocimientos y/o habilidades.', 'El número de alumnos de Desarrollo de Aplicaciones Web puede ser superior de 3. '),
(944, 1, 'SOLUCIONES TECNOLOGICAS EPL, S.L.', 'B90224437', 'CORDOBA', 'No se ha proporcionado', 'DAVID BLASCO', 'dblasco@elprimerodelalista.es', '625484414', 'SUSANA ALVAREZ GÓMEZ', '46142048T', 'FRANCISCO ROMERO', '30992300F', 2, 1, 'Jornada continua', 'Participación en desarrollo de aplicaciones web, para los proyectos tanto internos como externos, teniendo en cuenta los conocimientos y capacidades de cada alumno/a. En el caso de ASIR su participación seria en el desarrollo de mejoras para red interna y servidores de la empresa.\nSe realizaría una evaluación inicial de cada perfil para determinar que actividad puede ser más idónea. ', 'El alumnado interesado deberá cumplir las normas de seguridad y confidencialidad de la empresa.'),
(945, 1, 'INFOGENIL SISTEMAS DE GESTION, S.L.', 'B14089353', 'PUENTE TEGIL', 'No se ha proporcionado', 'MARISA', 'MMORALES@ISGE.ES', '957609006', 'ANDRES MORALES SANCHEZ', '30436309H', 'MARISA', '50610975G', 1, 0, 'Jornada continua', 'RENOVAR PAGINA WEB DE LA EMPRESA', 'SOLICITAMOS UN ALUMNO QUE SEA AUTOSUFICIENTE '),
(946, 1, 'PREMIUM SERVICIOS INTEGRADOS S.L', 'B14981583', 'CORDOBA', 'No se ha proporcionado', 'FELIPE LUQUE', 'FLUQUE@PREMIUMSERVICIOS.ES', '679358212', 'FELIPE LUQUE', '50603981W', 'FELIPE LUQUE', '50603981', 0, 1, 'Jornada continua', 'MANTENIMIENTO DE SISTEMAS INFORMÁTICOS CLIENTE-SERVIDOR\nMANTENIMIENTO HARDWARE DE EQUIPOS\nINSTALACIÓN Y CONFIGURACIÓN SISTEMAS CLIENTE-SERVIDOR Y EQUIPOS INDIVIDUALES\nGESTIÓN DE COMUNICACIÓN ENTRE SEDES\nDOCUMENTACIÓN CLIENTES\nEXPLORAR NUEVAS SOLUCIONES PARA CLIENTES', 'NOS GUSTARÍA PODER REALIZAR ENTREVISTA PREVIA.\nVALORAMOS EL BUEN TRATO CON EL CLIENTE\n'),
(947, 1, 'Fertinyect S.L.', 'B14310155', 'Cordoba', 'No se ha proporcionado', 'Antonio Alabanda Parejo', 'alabanda@fertinyect.com', '607909961', 'Juan Barbado Montero', '30819310T', 'Antonio Alabanda Parejo', '30793765P', 1, 0, 'Jornada continua', 'Desarrollo Web y App Movil', NULL),
(948, 1, 'Tuaccesorio.es', '30980118S', 'Córdoba', 'No se ha proporcionado', 'Fran Meseguer', 'rrhh@tuaccesorio.es', '677 648461', 'Victor Manuel Romero Navarro', '30980118S', 'Victor Manuel Romero Navarro // Ivan Cortes Cáceres', '30980118S  // 53593742Q', 1, 1, 'Jornada partida', 'Apoyo al staff técnico de la empresa en la realización de sus funciones; Reparación de terminales móviles y sistemas informáticos; Mantenimiento y gestión de servidores; Administrar servicios en red; Implantar y gestionar bases de datos', 'Las tareas a realizar son aproximadas habiendo señalado, de las que llevamos a cabo en nuestra organización, algunas de las que creemos pueden encajar mas con la necesidad de los alumnos de completar su formación. \n\nCon respecto al tutor laboral indicar que hemos puesto dos personas para asegurarnos que los alumnos nunca se encuentren sin supervisión.'),
(949, 1, 'ESTAMPACIONES CASADO SL', 'B14053854', 'CÓRDOBA', 'No se ha proporcionado', 'CARLOS JIMÉNEZ', 'cjimenez@estampacionescasado.com', '663792528', 'JOSÉ RUIZ CHACÓN', '75591358H', 'CARLOS JIMÉNEZ', '03856460G', 1, 0, 'Jornada continua', '    Completar la información en la página web corporativa\n    Puesta en marcha del sistema de venta on-line en la página web corporativa\n    Puesta en marcha del sistema de venta on-line en los portales Ebay y/o Amazon', 'LA EMPRESA ESTÁ EN EL POLÍGONO LA TORRECILLA. SE REQUIERE MEDIO DE TRANSPORTE PROPIO.'),
(950, 1, 'Asea Brown Boveri S.A.', 'A08002883', 'Córdoba', 'No se ha proporcionado', 'Francisco José Huertas Morrugares', 'francisco-jose.huertas@es.abb.com', '647 40 95 45', 'Angel San José Blanco', '15993518P', 'Antonio Gordillo Marchal', '30834709N', 1, 0, 'Jornada continua', 'GESTION Y DESARROLLO DE BASES DE DATOS EN SHAREPOINT', NULL),
(951, 1, 'Lidemer Formación S.l', 'B14936611', 'Cordoba ', 'No se ha proporcionado', 'Juan Cano', 'administracion@lidemerformacion.com', '957171403', 'Juan Cano Castro', '30434214 Q', 'Juan Cano Castro', '30434214Q', 2, 0, 'Jornada partida', 'Programación entorno Web ', 'Que Sepa HTML, CSS, PHP, JAVASCRIPT, JAVA '),
(952, 1, 'Educacion Vial Vialia S.L', 'B14996474 ', 'Cordoba ', 'No se ha proporcionado', 'Juan Cano Castro', 'administracion@vialiaservicios.com', '698547451', 'Juan Cano Castro', '30434214Q', 'Pedro Alcazar', '30434214Q', 2, 0, 'Jornada partida', 'Programar en entorno Web  ', 'HTML, CSS PGP JAVASCRITPT,JAVA '),
(953, 1, 'TETRA WEB CONSULTORES SLU', 'B56024110', 'CORDOBA', 'No se ha proporcionado', 'MIGUEL BEJAR', 'miguel.tetra@gmail.com', '615360661', 'MIGUEL BEJAR LUQUE', '00810122Q', 'MIGUEL BEJAR LUQUE', '00810122Q', 1, 1, 'Jornada continua', 'web: Programacion php, mysql , python ASIR: virtualbox, ubuntu, seguridad', 'Ya tenemos firmado convenio del año pasado'),
(954, 1, 'Sopinet Software S.L.', 'B56008600', 'Córdoba', 'No se ha proporcionado', 'Mariluz Mariscal', 'mariluz@sopinet.com', '900831133', 'Fernando Hidalgo', '30835167X', 'Juan Martos', '30999954W', 1, 0, 'Jornada continua', 'Programación Frontend-web, principalmente. CSS, HTML, Javascript, Stylus, Jquery, ReactJS, php, Symfony, twig', 'Aunque la jornada suele ser continua tenemos flexibilidad horaria y de espacio de trabajo.'),
(955, 1, 'Sur Industrial Avances Tecnológicos S.L.', 'B14996615', 'Córdoba', 'No se ha proporcionado', 'Rafa David Lozano', 'rdlozano@surindustrial.com', '607841756', 'Roberto Boncompte', '50600520Z', 'Rafa David Lozano', '30953820Y', 1, 1, 'Jornada partida', 'Administración de sistemas (Linux, Windows) y desarrollo de apliaciones (PHP, .Net)', 'Buscamos alumnos interesados en continuar trabajando en la empresa tras las prácticas'),
(956, 1, 'Reycon', 'B14604854', 'Córdoba', 'No se ha proporcionado', 'Cristina', 'cristina.martinez@gruporeycon.com', '608518619', 'Antonio Rafael Bonilla ', '44354347C', 'Cristina Martínez Ruedas', '30952752L', 2, 0, 'Jornada continua', 'Desarrollo de aplicaciones Web con tecnología .NET (ASP.NET Web Form). Se valorará muy positivamente los conocimiento de la en User Interface, ya que gran parte del trabajo será adecuar las interfaces ya existentes en el proyecto a unas nuevas especificaciones. Para ello se necesitarán conocimientos de JavaScript, JQuery, Bootstrap, HTML 5.0 y CSS.', NULL),
(957, 1, 'MYE WEB DESING CORDOBA S.L. (Salmorejo Software)', 'B14993448', 'Córdoba', 'No se ha proporcionado', 'Eloy', 'eloy@salmorejosoftware.com', '665644518', 'Eloy González Jordano', '30422958F', 'Víctor Parra', '50614787K', 1, 0, 'Jornada continua', 'Desarrollo de aplicaciones y páginas web', NULL),
(958, 1, 'Creartia Internet Consulting, S.L. (Bosbe)', 'B14747067', 'Córdoba', 'No se ha proporcionado', 'Inés', 'Ines@bosbe.com', '957612588', 'Daniel Gómez Romero', '50603225M', 'Daniel Gómez Romero', '50603225M', 1, 0, 'Jornada partida', 'Desarrollo de aplicaciones web y comercio electrónico', 'Desarrollador web'),
(959, 1, 'Grupo EOS Ibérica SL', 'B14461511', 'Córdoba', 'No se ha proporcionado', 'Marco Antonio Castilla Gómez', 'mcastilla@eosiberica.es', '629455569', 'Marco Antonio Castilla Gómez', '12345678Z', 'Oscar Castilla ', '30.800.154-A', 0, 1, 'Jornada partida', 'Producción y I+D', NULL),
(960, 1, 'Lidemer Formación S.L.  (Autoescuela???)', 'B14936611', 'Córdoba', 'No se ha proporcionado', 'Juan Cano Castro', 'administracion@lidemerformacion.com', '957171403', 'Juan Cano Castro', '12345678Z', 'Juan Cano Castro', '30434214Q', 0, 3, 'Jornada continua', 'Desarrollo de plataforma Moodle, Servidores Locales.', NULL),
(961, 1, 'Uniges 3 SL', 'B14699276', 'Montoro', 'No se ha proporcionado', 'Ana Carpintero', 'ana@uniges3.net', '684455847', 'Agustín Mª Lucena Martín', '30829135G', 'Juan José Ramos Madueño', '53598436H', 0, 0, 'Jornada continua', 'Desarrollo web, multiplataforma, y demás funciones que vayan aconteciendo. ', NULL),
(962, 1, 'SOLUCIONES TECNOLOGICAS EPL, SLU', 'B90224437', 'CORDOBA', 'No se ha proporcionado', 'David Blasco', 'dblasco@elprimerodelalista.es', '625484414', 'SUSANA ALVAREZ GOMEZ', '12345678Z', 'ROMERO PEREZ, FRANCISCO JOSE ', '30992300F', 1, 1, 'Jornada partida', 'Gestión de servidores web', 'Ampliaremos sus tareas en función de conocimientos y actividad'),
(963, 1, 'SGC-Online, SL', 'B19182641', 'Córdoba', 'Calle Góngora, 4. Piso 1º-1', 'Adela Pérez Vázquez', 'desarrollo@tablondeanuncios.com', '670982739', 'Rafael López Casado', '30501893-Y', 'Adela Pérez Vázquez', '30956605-P', 1, 0, 'Jornada continua', 'Apoyo al departamento de Desarrollo Web, participando en todas las fases de un proyecto web: definición de la idea, diseño de la solución a nivel de código y bases de datos, puesta en marcha del proyecto y monitorización de los resultados', 'Algunos de nuestros proyectos en los que participará el alumnado y donde podrá desarrollar sus habilidades son: Tablondeanuncios.com, mi-curriculum-vitae.com, soitupro.com, xerlok.com '),
(964, 1, 'FourMark360 Solutions SL', 'B14957227', 'Córdoba', 'No se ha proporcionado', 'Jose Hidalgo', 'info@fourmarketing360.com', '619115601', 'Jose Hidalgo Odriozola', '30536261N', 'Jose Hidalgo Odriozola', '30536261N', 1, 0, 'Jornada continua', 'Desarrollo web', NULL),
(965, 1, 'APLICACIONES Y PROYECTOS PERSONALIZADOS DEL SUR, S.L', 'B56033228', 'CORDOBA', 'No se ha proporcionado', 'VERONICA DEL PINO', 'vdelpino.appsur@gmail.com', '957082349', 'FRANCISCO JAIME SOTO CAMARA', '30957021X', 'VERONICA DEL PINO PEREZ', '30978363P', 3, 3, 'Jornada continua', 'Desarrollo web, desarrollo frontend, wordpress, seo, HTML, CSS, javascript', NULL),
(966, 1, 'Peninsular del latón, S.A.', 'A80250590', 'Córdoba', 'No se ha proporcionado', 'Víctor Castellano Roldán', 'vcastellano.roldan@gmail.com', '957463585', 'Víctor Castellano Roldán', '44.355.495-H', 'Álvaro Ruz López', '44364800P', 1, 0, 'Jornada continua', 'Desarrollo de aplicaciones de gestión interna y trazabilidad del producto', NULL),
(967, 1, 'Grúas Barea S.L.', 'B14300313', 'Córdoba', 'No se ha proporcionado', 'Tomás Parra López', 'informatica@grupobarea.es', '957326565', 'Antonio Barea Navarro', '29996079P', 'Tomás Parra López', '46923166S', 0, 1, 'Jornada partida', 'Instalación y configuración de sistemas operativos. Administración de usuarios. Instalación, inventariado y mantenimiento de hardware (workstations, portátiles, impresoras, cámaras IP...) Configuración de smartphones... En realidad dependerá de los proyectos en los que estemos trabajando en el momento de la incorporación del alumnado.', NULL),
(968, 1, 'FINCA SOLUCIONES TECNOLÓGICAS, S.L.-FISOTEC', 'B-23748494', 'ALCAUDET', 'No se ha proporcionado', 'JOSE RUIVIEJO GUTIERREZ', 'jose.ruiviejo@fisotec.es', '649688005', 'Jose Ruiviejo Gutiérrez', '77330351G', 'Jose Ruiviejo Gutiérrez', '77330351G', 3, 0, 'Jornada partida', 'DESARROLLO DE APLICACIONES ORIENTADAS A LOS SISTEMAS DE INFORMACIÓN GEOGRÁFICA O GIS, BAJO LA BASE DE SOFTWARE LIBRE (OPEN SOURCE). PREVIO DESARROLLO, EL ALUMNO SERÁ FORMADO EN NUEVOS LENGUAJES DE PROGRAMACIÓN COMO PYTHON, ANGULAR (JavaScript), Y OTROS SIMILARES.', 'POSIBILIDAD TOTAL DE REALIZACIÓN DE PRACTICAS A DISTANCIA EN FORMATO "TELE-TRABAJO". '),
(969, 1, 'Sur Industrial Avances Tecnológicos SL', 'B14996615', 'Cordoba', 'No se ha proporcionado', 'Rafael Lozano', 'rdlozano@surindustria.com', '957817833', 'Roberto Boncompte', '50600520Z', 'Rafael Lozano', '30953820y', 1, 0, 'Jornada partida', 'Participar en el desarrollo de una aplicación en PHP y JavaScript', 'Como os hemos comentado en numerosas ocasiones, nos gustaría conocer a los alumnos con suficiente tiempo antes del periodo de prácticas.'),
(970, 1, 'Sopinet Software SL', 'B56008600', 'Córdoba', 'No se ha proporcionado', 'Mluz Mariscal', 'mariluz@sopinet.com', '900831133', 'Fernando Hidalgo Becerra', '30835167X', 'Alejandro Arrabal Hidalgo', '45746141S', 1, 0, 'Jornada continua', '-Trabajo en Backend con el Framework Symfony basado en lenguaje PHP\n-Trabjo en Frontend con el Framework React JS basado en Java Script\n-Desarrollo de aplicaciones internas para Sopinet Software SL\n-Desarrollo de aplicaciones web de proyectos reales de nuestros clientes', NULL),
(971, 1, 'NoSoloSoftware', 'B14928840', 'Córdoba', 'No se ha proporcionado', 'Pedro Navajas Modelo', 'pnavajas@nosolosoftware.es', '644494483', 'Pedro Navajas Modelo', '45738607w', 'Juan Antonio Galisteo Prieto', '15453322J', 1, 0, 'Jornada continua', 'Desarrollo software', NULL),
(972, 1, 'netBSS Soluciones Informáticas SLU', 'B14898993', 'Córdoba', 'No se ha proporcionado', 'Javier Carmona', 'jcarmona@netbss.es', '619228169', 'Javier Carmona', '44361780R', 'Javier Carmona', '44361780R', 1, 0, 'Jornada continua', 'Desarrollo en Phyton de módulos para ODOO (ERP), migraciones de datos, front-end y diseño web para ODOO (QWeb). ', 'Nuestra empresa está ubicada en el Pol. Ind. La Torrecilla. Si el perfil del alumno es válido y se adapta al equipo, la idea sería incorporarlo a la empresa.'),
(973, 1, 'NOSOLOSOFTWARE NETWORK S.L.', 'B14928840', 'Córdoba', 'No se ha proporcionado', 'Carlos J. Barasona', 'cbarasona@nosolosoftware.es', '633929525', 'Pedro Navajas Modelo', '45738607', 'Carlos J. Barasona', '30836612Y', 1, 0, 'Jornada continua', '\nMaquetación de aplicaciones web y móvil para distintos dispositivos y SOs. \nAprendizaje de HTML5, Slim, CSS3, SCSS, Javascript y frameworks como Bootstrap, Inuit, Bourbon Neat o Didor.\n\n*Desarrollo en HTML5, CSS3 y JS\n*Gestión ágil de proyectos\n*Adaptación multidispositivo\n*Entornos integrados de desarrollo\n*Control de versiones', 'Buena disposición para aprender'),
(974, 1, 'IKNX Ingenieria', 'B14980007', 'Córdoba', 'No se ha proporcionado', 'Antonio Molero', 'antonio.molero@iknx.es', '665587528', 'Antonio Molero', '30837377N', 'Antonio Molero', '30837377N', 1, 0, 'Jornada continua', 'Programación de sistemas KNX', 'El alumno se le entregará una Beca para obtener la certificación oficial KNX PARTNER'),
(975, 1, 'TETRA WEB CONSULTORES SLU', 'B56024110', 'CORDOBA', 'No se ha proporcionado', 'MIGUEL BEJAR LUQUE', 'MIGUE.TETRA@GMAIL.COM', '615360661', 'MIGUEL BEJAR LUQUE', '00810122Q', 'MIGUEL BEJAR LUQUE', '00810122Q', 1, 0, 'Jornada continua', 'Desarrollo de aplicaciones WEB', NULL),
(976, 1, 'Enooby Spain SL', 'B56019110', 'Córdoba', 'No se ha proporcionado', 'Eduardo Luque', 'eluque@gmail.com', '661444666', 'Javier Carmona', '44361780R', 'Eduardo Luque', '44358716L', 1, 0, 'Jornada continua', 'Desarrollo de aplicaciones web en diferentes lenguajes de programación web (HTML 5, CSS, Javascript, PHP...)', 'Nos gustaría contar con un alumno con buena predisposición y actitud.'),
(977, 1, 'Hospital San Juan de Dios', 'R1400098H', 'Córdoba', 'No se ha proporcionado', 'Araceli Roldan Reyes', 'araceli.roldan@sjd.es', '957004600 Ext. 571', 'Antonio José Roldán Tapia', '26970499D', 'Raúl Valentín Pulgarín', '30958664C', 0, 1, 'Jornada continua', 'Apoyo al responsable de sistemas', NULL),
(978, 1, 'Creartia Internet Consulting, S.L.U.', 'B14747067', 'Córdoba', 'No se ha proporcionado', 'Daniel Gómez', 'dani@bosbe.com', '653773171', 'Daniel Gómez Romero', '50603225M', 'Daniel Gómez Romero', '50603225M', 1, 0, 'Jornada partida', 'Desarrollo web y apps', NULL),
(979, 1, 'Nutrir, nutrición y ejercicio', 'X4354579N', 'Córdoba', 'No se ha proporcionado', 'Juan Marcelo Fernández', 'Info@nutrir.es', '957044662', 'Juan Marcelo Fernández', 'X4354579N', 'El mismo', 'El mismo', 1, 0, 'Jornada continua', 'Desarrollo aplicaciones', NULL),
(980, 1, 'Asociación Sociocultural UNOCEROUNO', 'G56071244', 'Córdoba', 'No se ha proporcionado', 'Miguel Ángel Calero', 'somos@unocerouno.es', '+34654456434', 'Miguel Ángel Calero Fernández', '44359765X', 'Javier Aguirre', '02913766B', 1, 0, 'Jornada continua', 'Desarrollo web full stack ', NULL),
(981, 1, 'Signlab Nuevas Tecnologias S.L.', 'B14937478', 'Córdoba', 'No se ha proporcionado', 'Fran Tarifa', 'fran@signlab.es', '636913775', 'Francisco Rincón Salas', '30800000X', 'Francisco Tarifa Mengibar', '30943793F', 2, 0, 'Jornada continua', 'Desarrollo de aplicaciones Web', NULL),
(982, 1, 'Siscom Ingeniería', 'B14680490', 'Montilla', 'No se ha proporcionado', 'José Ignacio Merino', 'jimerino@siscomingenieria.com', '609548274', 'José Ignacio Merino', '30809191R', 'José Ignacio Merino', '30809191R', 1, 0, 'Jornada partida', 'Frontend', NULL),
(983, 1, 'TICRED CONSULTING SL', 'B56065998', 'MONTILLA ', 'No se ha proporcionado', 'RAUL', 'raul@bargaw.com', '957055656', 'RAUL MOYA COLLADO', '80160604S', 'FRANCISCO JOSE BERCHEZ RUIZ', '30549653H', 2, 1, 'Jornada continua', '- IMPLANTACIONES DE SOLUCIONES EN LA NUBE.\n- ADQUIRIRÁ FORMACIÓN SOBRE CRM\n- REALIZACIÓN DE PÁGINAS WEB \n- REALIZACIÓN DE FICHEROS \n- CAMPAÑAS DE SEO\n- SUBIDAS DE PRODUCTOS EN WEB\n- CAMPAÑAS DE SEM\nENTRE OTRAS', 'LA EMPRESA NO DISPONE DE DISPOSITIVOS INFORMÁTICOS CON LO CUAL EL ALUMNO SE TENDRÍA QUE TRAER SU PORTÁTIL.'),
(984, 1, 'Libero - Jose David Muriel Roman', '50612733Z', 'Puente Genil', 'No se ha proporcionado', 'Jose David Muriel Roman', 'josedavid@liberoenlinea.es', '957609888', 'Jose David Muriel Roman', '12345678Z', 'Jose David Muriel Roman', '50612733Z', 1, 0, 'Jornada partida', 'Ampliacion y remodelacion Web de la empresa', NULL),
(985, 1, 'GRAYHATS S.L.', 'B14967541', 'CORDOBA', 'Pasaje Pintor Ruiz de Saravia 5 (local)', 'Saúl Cejudo Córdoba', 'scejudo@grayhats.com', '667408447', 'Fco. Javier Jiménez Urbano', '12345678Z', 'Fco. Javier Jiménez Urbano', '30827534J', 0, 0, 'Jornada continua', 'Servicios Amazon Web Services. Cumplimiento Normativas Seguridad', NULL),
(986, 1, 'VECTOR SOFTWARE FACTORY', 'B83209015', 'Córdoba', 'Camino Cerro de los Gamos 1, Edificio 4. Pozuelo de Alarcón (Madrid). CP 28224', 'Laura Delgado Truyo', 'ldelgado@vectoritcgroup.com', '911830300', 'Muriel Artabe Enríquez', '12345678Z', 'Rafael Garcia Moreno', '30827424H', 3, 0, 'Jornada continua', 'Desarrollo de aplicaciones web con tecnologías FrontEnd/ BackEnd.', 'Las prácticas se realizan en la sede de Córdoba con dirección C/ Angel Ganivet, 16.'),
(987, 1, 'Universidad de Córdoba', 'Q1418001B', 'Córdoba', 'Campus Rabanales - Edificio Ramón y Cajal.   Área de nuevas tecnologías', 'Luis Meléndez Aganzo', 'luism@uco.es', '957211018', 'Antonio Cubero Atienza', '30481662S', 'Luis Meléndez Aganzo', '30514515R', 0, 2, 'Jornada continua', 'Apoyo en sistemas al  Servicio de Informática de la universidad', NULL),
(988, 1, 'STORE GRAIN PRINCIPAL, S.L.', 'B56049372', 'CÓRDOBA', 'Calle Astrónomo Azarquiel IDR2 PCT Rabanales 21 14014 Córdoba', 'Irene Suárez', 'rrhh@siloscordoba.com', '660482053', 'Juan López Regalón', '12345678Z', 'Luis del Moral Martínez', '30980707Y', 2, 0, 'Jornada continua', 'Desarrollo de software, tareas de análisis, documentación, implantación y algo de estandarización ', NULL),
(989, 1, 'Dobuss Projects S.L.', 'B14994586', 'Córdoba', 'Alonso El Sabio s/n', 'Miguel Luque Guerrero', 'mluque@dobuss.es', '957289665', 'José Huertas Jiménez', '12345678Z', 'Miguel Ángel Piedra', '50613058V', 1, 0, 'Jornada continua', 'Prácticas relacionadas con su formación ', NULL),
(990, 1, 'MEDEL CORREDURIA TECNICA DE SEGUROS CONFLUENCE GROUP, SL', 'B14280622', 'CORDOBA', 'CALLE PLATA S/N CENTRO DE NEGOCIOS "EL GRANADAL" 1ª PLANTA', 'JAVIER MEDEL GONZALEZ', 'javiermedel@confluencegroup.es', '649690315', 'JAVIER MEDEL GONZALEZ', '12345678Z', 'JONATHAN VAZQUEZ DURAN', '14638553L', 1, 0, 'Jornada continua', 'PROGRAMACION WEB, GESTION DE REDES SOCIALES', NULL),
(991, 1, 'SGC-Online, SL', 'B19182641', 'Córdoba', 'Calle Góngora, 4. Piso 1º-1', 'Adela Pérez Vázquez', 'desarrollo@tablondeanuncios.com', '670982739', 'Rafael López Casado', '12345678Z', 'Adela Pérez Vázquez', '30956605P', 1, 0, 'Jornada partida', 'Apoyo al departamento de desarrollo web', 'Nos gustaría contar con el alumno Victoriano Sevillano Vega'),
(992, 1, 'EUROPLATAFORMAS 2000, S.A.', 'A14530497', 'CORDOBA', 'C/ VICTORIA KENT, 4 1º 2', 'TERESA SANCHEZ', 'TSANCHEZ@EUROGRUAS.COM', '957270540', 'ANTONIO CARRION', '12345678Z', 'JOSE LUIS MARTINEZ', '30544991W', 0, 1, 'Jornada continua', 'MEJORAR POSICIONAMIENTO WEB DE LA EMPRESA, CREAR Y HACER SEGUIMIENTO DE PERFILES EN REDES SOCIALES', NULL),
(993, 1, 'EveryBind - José Antonio Pérez Leon', '26821378C', 'Cabra', 'C/ Junquillo S/N Centro ADIÉ - 14940 Cabra (Cordoba)', 'José Antonio Perez', 'japerez@everybind.com', '658421045', 'Jose Antonio Pérez Leon', '12345678Z', 'Jose Antonio Perez Leon', '26821378C', 1, 0, 'Jornada partida', 'Realizará tareas de desarrollo y programación web, gestionará tecnologías punteras como Angular y bases de datos NoSQL como Firebase. Además conocerá de primera mano metodologías ágiles como scrum, y trabajará con clientes a nivel internacional.', NULL),
(994, 1, 'Alhsis IT', '74683258g', 'Granada', 'Cuesta de San Antonio 11 ', 'Alejandro/ Andres', 'practicas@alhsis.com', '661472439 / 666491986', 'Alejandro Fernández Gallegos', '12345678Z', 'Alejandro Fernández Gallegos', '74683258g', 2, 0, 'Jornada continua', 'Des. Aplicaciones web', NULL),
(995, 1, 'Ayuntamiento de El Carpio', 'P1401800F ', 'El Carpio', 'Plaza de la Constitución, 1', 'Emma Fdez Moyano', 'informatica@ayunelcarpio.es ', '680426448', 'Desiree Benavides Baena', '12345678Z', 'Emma Fdez Moyano', '30825844W', 1, 1, 'Jornada continua', 'Departamento informático ', 'Ante dudas contactar con Javier'),
(996, 1, 'Innovation Strategies', 'B07844269', 'Córdoba', 'Avda. Gran Capitán, 46, 3ª planta, oficina 10', 'Araceli', 'a.carretero@innovation.es', '971770877', 'Miguel Fernández', '12345678Z', 'Araceli Carretero', '43137728D', 1, 0, 'Jornada continua', 'Programación en aplicaciones web y de escritorio en:\nC# .NET - MVC, Ajax, entity framework\nJavascript\nMaquetación - HTML5, CSS3', NULL),
(997, 1, 'INNOVATE MAYORISTA TECNOLOGICO, S.L', 'B56021587', 'Fernan Nuñez', 'No se ha proporcionado', 'ANTONIO MIRANDA BERRAL', 'innovatecordoba@gmail.com', '677467966', 'ANTONIO MIRANDA BERRAL', '30549744V', 'ANTONIO MIRANDA BERRAL', '30549744V', 1, 0, 'Jornada continua', 'Desarrollo web', 'Alumno Victor Gómez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Request_student`
--

CREATE TABLE `Request_student` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `convocatory_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `piexento` tinyint(1) NOT NULL,
  `fctexento` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `School_group`
--

CREATE TABLE `School_group` (
  `id` int(11) NOT NULL,
  `course_cycle_id` int(11) NOT NULL,
  `gr` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `School_group`
--

INSERT INTO `School_group` (`id`, `course_cycle_id`, `gr`) VALUES
(1, 1, 'A'),
(2, 3, 'A'),
(3, 2, 'A'),
(4, 4, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `School_year`
--

CREATE TABLE `School_year` (
  `id` int(11) NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `School_year`
--

INSERT INTO `School_year` (`id`, `course`) VALUES
(1, '18/19'),
(2, '17/18'),
(3, '16/17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Student`
--

CREATE TABLE `Student` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `convocatory_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `piexento` int(11) NOT NULL,
  `fctexento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Student`
--

INSERT INTO `Student` (`id`, `group_id`, `convocatory_id`, `first_name`, `last_name`, `piexento`, `fctexento`) VALUES
(1, 3, 2, 'Victoriano', 'Sevillano Vega', 0, 0),
(2, 3, 2, 'Daniel', 'Gestino', 0, 0),
(3, 3, 2, 'Victor Manuel', 'Gómez', 0, 0),
(4, 3, 2, 'Mario', 'Ferrer Nieto', 0, 0),
(5, 3, 2, 'Jorge', 'Granados Jurado', 0, 0),
(6, 3, 2, 'Dario', 'Fernández Osuna', 0, 0),
(7, 3, 2, 'Jesus', 'Requena Pérez', 0, 0),
(8, 3, 2, 'José', 'Lucena Morente', 0, 1),
(9, 3, 2, 'Juan', 'Rueda Morales', 0, 0),
(10, 3, 3, 'Rafael', 'Carmona', 0, 0),
(11, 3, 3, 'David', 'Mateo', 0, 0),
(12, 3, 3, 'Soledad', 'Mateo', 0, 0),
(13, 3, 3, 'Rafael', 'Mellado', 0, 0),
(14, 3, 3, 'Miguel Angel', 'Gavilan', 0, 0),
(15, 3, 3, 'Javier', 'Ponferrada López', 0, 0),
(16, 3, 3, 'Pedro', 'Caballero', 0, 0),
(17, 3, 3, 'Jose', 'Lucena Morente', 0, 0),
(18, 3, 3, 'Nieves', 'Borrero', 0, 0),
(19, 3, 3, 'Pablo', 'Muñoz', 0, 0),
(20, 4, 3, 'Azahara', 'Cerezo', 0, 1),
(21, 4, 3, 'Manuel', 'Delgado', 0, 1),
(22, 4, 3, 'Alvaro', 'Legido', 0, 1),
(23, 4, 3, 'Jose Manuel', 'Díaz', 0, 1),
(24, 4, 3, 'Juan Fra.', 'Romero', 0, 0),
(25, 4, 3, 'Pablo', 'sin apellido', 0, 0),
(26, 4, 3, 'Alfonso', 'sin apellido', 0, 0),
(27, 4, 3, 'Juan Miguel', 'Sanchez', 0, 0),
(28, 4, 3, 'Juan Francisco', 'García', 0, 0),
(29, 4, 3, 'Cristina', 'Triviño', 0, 0),
(30, 4, 3, 'Juan', 'Granadilla', 0, 0),
(31, 4, 3, 'Sergio', 'Carpio', 0, 0),
(32, 4, 2, 'Azahara', 'Cerezo', 0, 1),
(33, 4, 2, 'Manuel', 'Delgado', 0, 1),
(34, 4, 2, 'Alvaro', 'Legido', 0, 1),
(35, 4, 2, 'Fco. Javier', 'Ruiz Pulido', 0, 0),
(36, 4, 2, 'Juan Miguel', 'Sanchez', 0, 1),
(37, 4, 2, 'Juan Francisco', 'García', 0, 1),
(38, 4, 2, 'Andrés', 'Gonzalez Suarez', 0, 1),
(39, 4, 2, 'Cristina', 'Triviño', 0, 1),
(40, 4, 2, 'Jose Francisco', 'Baños Trujillo', 0, 0),
(41, 4, 2, 'Antonio', 'Herencia', 0, 0),
(42, 4, 2, 'Francisco', 'Benito', 0, 0),
(43, 4, 2, 'Miguel', 'Tirado', 0, 0),
(44, 3, 2, 'Javier', 'Mariscal', 0, 0),
(45, 3, 2, 'Alejandro', 'Casillas Vazquez', 0, 1),
(46, 3, 4, 'Lucas', 'Márquez Muñoz', 0, 0),
(47, 3, 4, 'José Manuel ', 'González', 0, 0),
(48, 4, 4, 'David ', 'Cambronero', 0, 0),
(49, 4, 4, 'Azahara\r\n', 'Cerezo', 0, 0),
(50, 4, 4, 'Alvaro \r\n', 'Legido', 0, 0),
(51, 4, 4, 'Manuel', 'Delgado', 0, 1),
(52, 4, 4, 'Jose Manuel', 'Díaz', 0, 1),
(53, 4, 4, 'Francisco José', 'Lucena', 0, 1),
(54, 4, 4, 'Cristian', 'sin apellido', 0, 1),
(55, 4, 4, 'Adrian', 'Talavera', 1, 0),
(56, 3, 6, 'Daniel', 'Cabrera Cebrero', 0, 1),
(57, 3, 6, ' Raúl', 'Moreno Povedano', 0, 0),
(58, 3, 6, 'David', 'Peralvo Gómez', 0, 1),
(59, 3, 6, ' Daniel', 'Cabrera Cebrero', 0, 0),
(60, 3, 6, ' Raúl', 'Moreno Povedano', 0, 0),
(61, 3, 6, ' David', 'Peralvo Gómez', 0, 0),
(62, 3, 6, 'Paz', 'Ruiz García', 0, 1),
(63, 3, 6, ' Juan Antonio', 'Cubero López', 0, 0),
(64, 3, 6, ' Roberto Carlos', 'Flores Gómez', 0, 0),
(65, 3, 6, ' Oscar', 'Heredia Tartajo', 0, 0),
(66, 3, 6, ' Miguel Ángel', 'López Moyano', 0, 0),
(67, 3, 6, ' Estela', 'Muñoz Cordón', 0, 0),
(68, 3, 6, ' Miguel Ángel', 'Zamora Blanco', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to_distribute` tinyint(1) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_convocatory` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `User`
--

INSERT INTO `User` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `first_name`, `last_name`, `to_distribute`, `img`, `current_convocatory`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', 'admin@admin.com', 1, NULL, '$2y$13$JkDEWVqov6Q8EU79EbGnROnXa09P4HyRezShaWeeeoHi6/vkj7vlK', '2018-11-27 18:04:57', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 'admin', 'admin', 0, 'admin.jpeg', NULL),
(2, 'lmagarin', 'lmagarin', 'lmagarin@gmail.com', 'lmagarin@gmail.com', 1, NULL, '$2y$13$X7U..87q2sjrwWEj9FBSJ.iswntdu03r342ZMajN4uoCW/cw9oTf6', '2018-11-27 18:06:37', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Lourdes', 'Magarin Corvillo', 1, 'lmagarin.png', 6),
(3, 'jrabasco', 'jrabasco', 'jaimeeducation@gmail.com', 'jaimeeducation@gmail.com', 1, NULL, '$2y$13$ZK/t15HBws3wnuUOibKm/ePQM1qPqQaVTnZYNBS7v2IXLNIiG7twK', '2018-11-23 16:09:40', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Jaime', 'Rabasco Ronda', 1, 'jrabasco.jpeg', 2),
(4, 'fjaguilera', 'fjaguilera', 'fjagui@gmail.com', 'fjagui@gmail.com', 1, NULL, '$2y$13$SXFmJYUlQE0JXramHD7JjunAwnGPqjLxuVEhp5NxcIo0pRcj4t1EW', '2018-11-23 16:09:55', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Francisco José', 'Aguilera Ruiz', 1, 'fjaguilera.png', 2),
(5, 'jralbendin', 'jralbendin', 'jralbendin@gmail.com', 'jralbendin@gmail.com', 1, NULL, '$2y$13$5MWOssW8xywB3Ju2OQ2xkuf22YYnSZRmRPRVegc8Cosy.vsezREa6', '2018-11-23 16:10:26', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'José Ramón', 'Albendín Ramírez', 1, 'jralbendin.jpeg', 2),
(6, 'rcastillo', 'rcastillo', 'rcastillo@iesgrancapitan.org', 'rcastillo@iesgrancapitan.org', 1, NULL, '$2y$13$yr.N7N1dcxp/OtJQYmDkTOTvO0n1gGygt78UMNJT21ovvlEhF/ghG', '2018-11-23 16:11:11', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Rafael', 'del Castillo Gomariz', 1, 'rcastillo.png', 2),
(7, 'aperez', 'aperez', 'apeflo@gmail.com', 'apeflo@gmail.com', 1, NULL, '$2y$13$1wxtRVZ0Ht9plHgM6rpzzuUrzXhZiP60NGdwS3vu0iTHv4c143npe', '2018-11-23 16:10:10', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Amelia', 'Pérez Flores', 1, 'aperez.png', 2),
(8, 'mctripiana', 'mctripiana', 'mctripiana@gmail.com', 'mctripiana@gmail.com', 1, NULL, '$2y$13$.NXztjRMCfoh3F/s6C5IAutmFx59lZ83WPgZZnp09Zp6rpEeVPt5y', '2018-11-23 16:10:54', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Maria del Carmen', 'Tripiana', 1, 'mctripiana.jpeg', 2),
(10, 'rlozano', 'rlozano', 'rlozano@gmail.com', 'rlozano@gmail.com', 1, NULL, '$2y$13$yORd20ALa7vLyB43Pf1GWOsRs/04vWIfun589UNjKm7Dv8r5G2o6.', '2018-11-23 16:11:31', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Rafael', 'Lozano Luján', 1, 'rlozano.png', 2),
(11, 'sinuhe', 'sinuhe', 'sinuhe@gmail.com', 'sinuhe@gmail.com', 1, NULL, '$2y$13$nQ0Wp5AO6HXS88aziFQQAOrNqZk/IRj/i8sQWQUys5oZAQbvQVvYq', NULL, 'WZ3VO2kes91ZRZuV80g4bDrbyFvrZEwi7p0ljIDxcfg', '2018-11-04 10:24:39', 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'sinuhe', 'Sustituto', 0, NULL, NULL),
(12, 'mmaria', 'mmaria', 'maria@maria.com', 'maria@maria.com', 1, NULL, '$2y$13$2/9UY5HPP9ocV0nARbyayu7Z8MoRzeGwjGqDr1CQIS3VsOPU0rCQi', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'María', 'Sustituta', 0, NULL, NULL),
(13, 'ddavid', 'ddavid', 'ddavid@davdi.es', 'ddavid@davdi.es', 1, NULL, '$2y$13$Jhrc82csRr4yGaXAzNHDBOXz1FY.EykB.X5c3.8CCq2z0sRLIJ1JO', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'David', 'Sustituto', 0, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_800230D35E237E06` (`name`),
  ADD UNIQUE KEY `UNIQ_800230D3A53EB8E8` (`cif`);

--
-- Indices de la tabla `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Convocatory`
--
ALTER TABLE `Convocatory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3E9525E1D2EECC3F` (`school_year_id`);

--
-- Indices de la tabla `Course_cycle`
--
ALTER TABLE `Course_cycle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_411C0D835EC1162` (`cycle_id`);

--
-- Indices de la tabla `Cycle`
--
ALTER TABLE `Cycle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Distribution_company`
--
ALTER TABLE `Distribution_company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B5F217F6A76ED395` (`user_id`),
  ADD KEY `IDX_B5F217F6CB944F1A` (`student_id`),
  ADD KEY `IDX_B5F217F6979B1AD6` (`company_id`);

--
-- Indices de la tabla `Distribution_module_teacher`
--
ALTER TABLE `Distribution_module_teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicos` (`module_id`,`user_id`,`schoolYear_id`,`desdoble`,`gr`),
  ADD KEY `IDX_DE049B6FAFC2B591` (`module_id`),
  ADD KEY `IDX_DE049B6FA76ED395` (`user_id`),
  ADD KEY `IDX_DE049B6F8BF32374` (`schoolYear_id`);

--
-- Indices de la tabla `Distribution_project`
--
ALTER TABLE `Distribution_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D5FECE57A76ED395` (`user_id`),
  ADD KEY `IDX_D5FECE57CB944F1A` (`student_id`),
  ADD KEY `IDX_D5FECE57166D1F9C` (`project_id`);

--
-- Indices de la tabla `event_calendar`
--
ALTER TABLE `event_calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_28454896D2EECC3F` (`school_year_id`);

--
-- Indices de la tabla `Module`
--
ALTER TABLE `Module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B88231EAC587C34` (`course_cycle_id`);

--
-- Indices de la tabla `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E00EE9725E237E06` (`name`);

--
-- Indices de la tabla `Request_company`
--
ALTER TABLE `Request_company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ED5E4586D2EECC3F` (`school_year_id`);

--
-- Indices de la tabla `Request_student`
--
ALTER TABLE `Request_student`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `School_group`
--
ALTER TABLE `School_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AB0B2927AC587C34` (`course_cycle_id`);

--
-- Indices de la tabla `School_year`
--
ALTER TABLE `School_year`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_789E96AFFE54D947` (`group_id`),
  ADD KEY `IDX_789E96AF6B93B06D` (`convocatory_id`);

--
-- Indices de la tabla `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2DA17977A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_2DA17977C05FB297` (`confirmation_token`),
  ADD KEY `UNIQ_2DA1797792FC23A8` (`username_canonical`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Company`
--
ALTER TABLE `Company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `Convocatory`
--
ALTER TABLE `Convocatory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `Course_cycle`
--
ALTER TABLE `Course_cycle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Cycle`
--
ALTER TABLE `Cycle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `Distribution_company`
--
ALTER TABLE `Distribution_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `Distribution_module_teacher`
--
ALTER TABLE `Distribution_module_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de la tabla `Distribution_project`
--
ALTER TABLE `Distribution_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT de la tabla `event_calendar`
--
ALTER TABLE `event_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `Module`
--
ALTER TABLE `Module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `Project`
--
ALTER TABLE `Project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `Request_company`
--
ALTER TABLE `Request_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=998;
--
-- AUTO_INCREMENT de la tabla `Request_student`
--
ALTER TABLE `Request_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `School_group`
--
ALTER TABLE `School_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `School_year`
--
ALTER TABLE `School_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `Student`
--
ALTER TABLE `Student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Convocatory`
--
ALTER TABLE `Convocatory`
  ADD CONSTRAINT `FK_3E9525E1D2EECC3F` FOREIGN KEY (`school_year_id`) REFERENCES `School_year` (`id`);

--
-- Filtros para la tabla `Course_cycle`
--
ALTER TABLE `Course_cycle`
  ADD CONSTRAINT `FK_411C0D835EC1162` FOREIGN KEY (`cycle_id`) REFERENCES `Cycle` (`id`);

--
-- Filtros para la tabla `Distribution_company`
--
ALTER TABLE `Distribution_company`
  ADD CONSTRAINT `FK_B5F217F6979B1AD6` FOREIGN KEY (`company_id`) REFERENCES `Company` (`id`),
  ADD CONSTRAINT `FK_B5F217F6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B5F217F6CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `Student` (`id`);

--
-- Filtros para la tabla `Distribution_module_teacher`
--
ALTER TABLE `Distribution_module_teacher`
  ADD CONSTRAINT `FK_DE049B6F8BF32374` FOREIGN KEY (`schoolYear_id`) REFERENCES `School_year` (`id`),
  ADD CONSTRAINT `FK_DE049B6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `FK_DE049B6FAFC2B591` FOREIGN KEY (`module_id`) REFERENCES `Module` (`id`);

--
-- Filtros para la tabla `Distribution_project`
--
ALTER TABLE `Distribution_project`
  ADD CONSTRAINT `FK_D5FECE57166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `Project` (`id`),
  ADD CONSTRAINT `FK_D5FECE57A76ED395` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `FK_D5FECE57CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `Student` (`id`);

--
-- Filtros para la tabla `event_calendar`
--
ALTER TABLE `event_calendar`
  ADD CONSTRAINT `FK_28454896D2EECC3F` FOREIGN KEY (`school_year_id`) REFERENCES `School_year` (`id`);

--
-- Filtros para la tabla `Module`
--
ALTER TABLE `Module`
  ADD CONSTRAINT `FK_B88231EAC587C34` FOREIGN KEY (`course_cycle_id`) REFERENCES `Course_cycle` (`id`);

--
-- Filtros para la tabla `Request_company`
--
ALTER TABLE `Request_company`
  ADD CONSTRAINT `FK_ED5E4586D2EECC3F` FOREIGN KEY (`school_year_id`) REFERENCES `School_year` (`id`);

--
-- Filtros para la tabla `School_group`
--
ALTER TABLE `School_group`
  ADD CONSTRAINT `FK_AB0B2927AC587C34` FOREIGN KEY (`course_cycle_id`) REFERENCES `Course_cycle` (`id`);

--
-- Filtros para la tabla `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `FK_789E96AF6B93B06D` FOREIGN KEY (`convocatory_id`) REFERENCES `Convocatory` (`id`),
  ADD CONSTRAINT `FK_789E96AFFE54D947` FOREIGN KEY (`group_id`) REFERENCES `School_group` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
