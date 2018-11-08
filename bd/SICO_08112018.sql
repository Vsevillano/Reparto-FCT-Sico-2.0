-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-11-2018 a las 11:31:15
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
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Company`
--

INSERT INTO `Company` (`id`, `name`, `cif`, `phone`, `email`) VALUES
(1, 'SGC Online', 'V8485223E', '666666666', 'email@gmail.com'),
(2, 'Everybind', 'V8485227E', '666666666', 'email@gmail.com'),
(3, 'Silos Córdoba', 'V8785223E', '666666666', 'email@gmail.com'),
(4, 'Confluence group', 'V8455223E', '666666666', 'email@gmail.com'),
(5, 'DOBUSS', 'V8455523E', '666666666', 'email@gmail.com'),
(6, 'Innovate Mayorista Tecnologico S.L', 'V8455723E', '666666666', 'email@gmail.com'),
(7, 'Alhsis IT (Granada)', 'V8455263E', '666666666', 'email@gmail.com'),
(8, 'Medel Correduria Tecnica de Seguros Confluence Group, SL', 'V8455229E', '666666666', 'email@gmail.com'),
(9, 'Ayto. de El Carpio', 'V8445223E', '666666666', 'email@gmail.com'),
(10, 'Syscom (Montilla)', 'V9876431E', '666666666', 'email@gmail.com'),
(11, 'Libero! (Puente Genil)', 'V8445253E', '666666666', 'email@gmail.com'),
(12, 'NoSoloSoftware', 'V8445245E', '666666666', 'email@gmail.com'),
(13, 'Sopinet', 'V8415223E', '666666666', 'email@gmail.com'),
(14, 'Bosbe', 'V8445299E', '666666666', 'email@gmail.com'),
(15, 'ERASMUS', 'V8485200E', '666666666', 'email@gmail.com'),
(16, 'UnoCeroUno', 'V8445277E', '666666666', 'email@gmail.com'),
(17, 'SIGLAB', 'V8445266E', '666666666', 'email@gmail.com'),
(18, 'Loyola', 'V8455211E', '666666666', 'email@gmail.com'),
(19, 'TicRed', 'V8411223E', '666666666', 'email@gmail.com'),
(20, 'San Juan de Dios', 'V8111223E', '666666666', 'email@gmail.com'),
(21, 'UCO', 'V8481111E', '666666666', 'email@gmail.com'),
(22, 'GrayHats', 'V8451112E', '666666666', 'email@gmail.com'),
(23, 'CIC BATÁ', 'V2225223E', '666666666', 'email@gmail.com'),
(24, 'Gruas Barea', 'V8456663E', '666666666', 'email@gmail.com'),
(25, 'EUROPLATAFORMAS 2000, S.A', 'V6665223E', '666666666', 'email@gmail.com'),
(26, 'Ayuntamiento El carpio', 'V8999223E', '666666666', 'email@gmail.com');

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
(4, 2, 'SEPTIEMBRE');

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
(1, 'Desarrollo de Aplicaciones Web', 'DAW', 27, 12, 0, 0),
(2, 'Administracion de Sistemas Informáticos en Red', 'ASIR', 27, 10, 0, 0);

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
(30, 6, 44, 26, NULL, NULL, NULL, NULL);

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
(16, 29, 3, 3, 0, '2DAW-A', 1),
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
(31, 28, 5, 4, 0, '2ASIR-A', 1);

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
(47, 5, 35, 29);

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
(1, 1, 'DWEC', 'monday', '00:00:00', '00:00:00', '#000000', '1ASIR-A');

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
(29, 2, 'Diseño de Interfaces Web', 'DIWEB', 3, 0),
(30, 2, 'Horas de libre configuracion', 'HLC', 3, 0);

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
(30, 'Proyecto Pepito Grillo', 'csdgs', 1);

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
(355, 1, 'VorticeSoft', '74923943-V', 'Córdoba', 'No se ha proporcionado', 'Moisés Márquez Gil', 'desarrollo@vorticesoft.com', '687994192', 'Moisés Márquez Gil', '08888194-M', 'Moisés Márquez Gil', '74923943V', 1, 0, 'Jornada continua', 'Pequeñas ampliaciones y reparaciones de software de la empresa, trabajando sobre código real y en producción que usan el Framework Symfony. Aprenderá a instalar y ampliar Webs usando Wordpress. Aprenderá a usar herramientas como Less, SASS o GULP\npara la producción de código.', 'Si el alumno supera las expectativas podría continuar en la\nempresa como desarrollador junior.'),
(356, 1, 'Enooby Spain S.L.U.', 'B56019110', 'Córdoba', 'No se ha proporcionado', 'Ana María Cañero López', 'info@enooby.com', '617945222', 'Ana María Cañero López', '01234567-M', 'Ana María Cañero López', '30951138S', 1, 0, 'Jornada continua', '- Desarrollo de aplicaciones web conectadas a la API de Google (Google Apps)\n- Desarrollo de sistemas específicos para educación (Chrome OS, Raspberry, pantallas táctiles, chromecast...)\n- Adaptación de sitios web internos', 'Nos gustaría recibir un alumno inquieto y motivado tecnológicamente, y a ser posible, que hayan tenido algún contacto con el uso de la API de Google.'),
(357, 1, 'Asociación Cultural y Tecnológica Ingenia XXI', 'G56004948', 'Córdoba', 'No se ha proporcionado', 'Isabel López García', 'ilgarcia@uco.es', '677382966', 'Isabel López García', '01234567-M', 'Isabel López García', '74662535G', 1, 0, 'Jornada continua', 'Revisión de la actual página web y actualización de contenidos. Elaboración de webs adscritas a la web principal. Conexión con redes sociales.', 'Ya hemos participado una vez en este programa y estamos muy satisfechos con la experiencia y con la profesora tutora Mª Lourdes. Esperamos poder repetir próximamente.'),
(358, 1, 'UMITEL soluciones informaticas sl', 'b14977581', 'cordoba', 'No se ha proporcionado', 'alberto cano', 'alberto@umitel.es', '661506112', 'alberto cano', '01234567-M', 'alberto cano', '30978870d', 1, 1, 'Jornada continua', 'servicio de soporte a empresas (problemas de servidores , desarrollo de app, paginas web, averías de equipos, instalaciones de red  y radionlaces..)', 'SIN OBSERVACIONES'),
(359, 1, 'Via Activa SL', 'B14661821', 'Córdoba', 'No se ha proporcionado', 'Pedro Castro Jimenez', 'info@viaactiva.es', '957761892', 'Pedro Castro Jimenez(30509280X)', '01234567-M', 'Eva Mª Rabasco Bravo', '29485211Q', 1, 0, 'Jornada continua', 'Manejo de Wordpress y redes sociales', 'A ser posible que tambien tenga conocimientos de Prestashop aunque no es determinante.'),
(360, 1, 'Gestaweb 2020, S.L.', 'B14970750', 'Córdoba', 'No se ha proporcionado', 'Juan Antonio Serrano', 'juan@electrocosto.com', '957404686', 'Verónica Jurado Márquez(44371961Q)', '01234567-M', 'Juan A. Serrano Navarro', '30971425Q', 1, 2, 'Jornada continua', 'Búscamos 2 perfiles de alumnos:\n\n1. Integración de productos: tareas de creación y optimización de las fichas de producto para posicionarlas en Google. Sería importante que tenga conocimientos de SEO, si no es así nosotros se los aportaríamos.\n\n2. Programador: Muy positivo que tenga conocimientos en prestashop, en caso de tenerlos podría desarrollar módulos para implantarlos en la web. De no tener conocimientos en prestashop se dedicaría a la creación de herramientas que ayuden a la automatización de las tareas diarias.', 'Ambas tareas se desarrollaran sobre el ecommerce www.electrocosto.com. Hay una alta posibilidad de contratación.'),
(361, 1, 'Dafos Training, S. L.', 'B14615538', 'Córdoba', 'No se ha proporcionado', 'Juan Rodriguez', 'consultoria@dafos.com', '957340125', 'José Martinez Almagro(30496135K)', '01234567-M', 'Juan Rodriguez', '50.600.216-D', 1, 0, 'Jornada continua', 'Desarrollo y programación en entornos web', 'SIN OBSERVACIONES'),
(362, 1, 'ALFONSO ALBERCA DIAZ', '44363565S', 'CÓRDOBA', 'No se ha proporcionado', 'ALFONSO ALBERCA', 'alfonso@tallerempresarial.es', '666448780', 'ALFONSO ALBERCA DIAZ', '01234567-M', 'ALFONSO ALBERCA DÍAZ', '44363565S', 1, 0, 'Jornada continua', 'Desarrollo de aplicación web, para sector joyero.', 'Estoy interesado en el Alumno David Peralvo\nGracias'),
(363, 1, 'Innovation Tech PericialCar S.L.', 'B14860316', 'Córdoba', 'No se ha proporcionado', 'Francisco Gracia Ahufinger', 'graciaf@es.innovation-group.com', '34635598207', 'Laurence Vivet(Y2372975X)', '01234567-M', 'Francisco Gracia Ahufinger', '44370370N', 1, 0, 'Jornada continua', 'Adaptación del front de la plataforma a nuevas tecnologías de desarrollo web', 'SIN OBSERVACIONES'),
(364, 1, 'Universidad Loyola Andalucía', 'G14894158', 'Córdoba', 'No se ha proporcionado', 'M. Carmen Ramírez Moreno', 'mcramirez@uloyola.es', '957 222 100', 'Gabriel María Pérez Alcalá', '01234567-M', 'M. Carmen Ramírez Moreno', '30795396Y', 0, 2, 'Jornada continua', '"Búscamos 2 perfiles de alumnos:\n1. Integración de productos: tareas de creación y optimización de las fichas de producto para posicionarlas en Google. Sería importante que tenga conocimientos de SEO, si no es así nosotros se los aportaríamos.\n2. Programador: Muy positivo que tenga conocimientos en prestashop, en caso de tenerlos podría desarrollar módulos para implantarlos en la web. De no tener conocimientos en prestashop se dedicaría a la creación de herramientas que ayuden a la automatización de las tareas diarias."Las tareas del alumno tendrán lugar en el Servicio de Tecnologías de la Información y Comunicación de la Universidad Loyola, en su sede de Córdoba.\nSe realizarán en varias áreas:\n- En el área de atención al usuario: soporte de primer nivel a personal docente, de investigación, de administración y servicios.\n- En las salas informáticas, Windows y MAC: atención al alumnado, colaboración en proyectos de aulas, atención en las aulas.\n- Área de microinformática: colaboración en un soporte a usuario de mayor nivel, colaboración en algunos de sus proyectos en curso con personal del servicio, audiovisuales, etc.', 'Es importante el trabajo colaborativo dentro del equipo así como una correcta atención al usuario cuando tenga lugar.'),
(365, 1, 'NoSoloSoftware Network, S.L.', 'B14928840', 'Córdoba', 'No se ha proporcionado', 'Selma Hayoun Caballero', 'shayoun@nosolosoftware.es', '957326715', 'Pedro Navajas Modelo(45738607W)', '01234567-M', 'Carlos Javier Barasona León', '30836612Y', 1, 0, 'Jornada continua', '- Trabajo en equipos multidisciplinares guiados por metodologías ágiles.\n- Maquetación de las aplicaciones desarrolladas en la empresa.', 'Tenemos gratas experiencias acogiendo a alumnos en formación y nos gustaría probar a perfiles alineados con nuestra forma de trabajar con el objeto de que formasen parte de nuestro equipo en nuestro futuro: proactividad, curiosidad y dinamismo.'),
(366, 1, 'Enooby Spain S.L.U.', 'B56019110', 'Córdoba', 'No se ha proporcionado', 'Ana Cañero López', 'info@enooby.com', '957105104', 'Ana Cañero López', '01234567-M', 'Ana Cañero López', '30951138s', 2, 0, 'Jornada continua', '- Desarrollo de aplicaciones web conectadas a la API de Google (Google Apps)\n- Desarrollo de sistemas específicos\n- Adaptación de sitios webs internos', 'Nos gustaría recibir alumnos motivados e inquietos tecnológicamente, que hayan tenido algún contacto con el uso de la API de Google'),
(367, 1, 'Dobuss', 'B14994586', 'Córdoba', 'No se ha proporcionado', 'Daniel Cabrera Cebrero', 'daniel.dobuss@gmail.com', '957 289 665', 'José Huertas Jiménez(30808949N)', '01234567-M', 'Daniel Cabrera Cebrero', '30985827C', 1, 0, 'Jornada continua', 'Desarrollo y mantenimiento de páginas webs y tiendas online con WordPress, Magento y PrestaShop (HTML5, CSS3, JavaScript y PHP)', 'Los conocimientos sobre las herramientas utilizadas no son una prioridad (al menos conocimientos básicos de HTML, CSS, JavaScript y PHP); sin embargo, se solicita un alumno formal, colaborativo y sociable, con ganas de trabajar y que sepa hacerlo en grupo, así como con recursos para investigar y encontrar soluciones por su cuenta.\n\nEn estos momentos, la empresa cuenta con recursos y trabajo para nuevas incorporaciones. No obstante, si bien es cierto que no asegura un puesto de trabajo, existen posibilidades reales de contratación, atendiendo a la capacidad del alumno y las circunstancias acontecidas hasta la finalización de las prácticas.'),
(368, 1, 'EMUPREVENCION', 'B14590053', 'CORDOBA', 'No se ha proporcionado', 'Antonio R Barbado', 'abarbado@emucor.es', '618973197', 'Manuel Valencia Díaz', '01234567-M', 'Antonio R. Barbado', '30835218S', 1, 0, 'Jornada continua', 'Reestructuración de ciertas partes de la nueva aplicación web de gestión de la empresa.\nCreación de un sistema de gestión de usuarios integrado con el directorio activo.\nAprender ciertos aspecto del área de sistemas: virtualización, sistemas operativos, Linux... etc.\n', 'SIN OBSERVACIONES'),
(369, 1, 'Mye Web Design Córdoba S.L.', 'B14993448', 'Córdoba', 'No se ha proporcionado', 'Eloy González', 'eloy@salmorejosoftware.com', '665644518', 'Eloy González', '01234567-M', 'Eloy González', '30814129V', 1, 0, 'Jornada continua', '* Desarrollo Frontend basándose en arquitectura MVC como AngularJS y Angular 2.\n* Desarrollo Backtend basándose en Ruby on Rails.\n* Desarrollo móvil con tecnologías híbridas como Ionic Framework.\n* Despliegues automáticos con tecnologías como Jenkins.\n* Gestores de paquetes como NPM.\n* Control de versiones con GIT.\n* Estándares como ES6, CSS modules, Typescript, Sass.\n* Gestión de proyectos con metodologías ágiles como Scrum.\n* Workflow de cómo trabajar en equipo.\n', 'SIN OBSERVACIONES'),
(370, 1, 'SOLDACOR, S. A. ', 'A14252118', 'CORDOBA', 'No se ha proporcionado', 'ISABEL', 'info@soldacor.com', '95326476', 'Isabel Lozano', '30942433G', 'Isabel Lozano', '30942433G', 2, 0, 'Jornada continua', 'Gestion de nuestra tienda online, web y pagina de facebook.', 'SIN OBSERVACIONES'),
(371, 1, 'Eurotransportcar Servicios Logisticos, S.L.', 'B14925028', 'Cordoba', 'No se ha proporcionado', 'Cordoba', 'juan.alba@eurotransportcar.com', '651866995', 'Juan Alba Moreno', '30790561R', 'Juan Alba Moreno', '30790561R', 3, 1, 'Jornada continua', 'Desarrollo software multiplataforma en colaboración con nuestros Ingenieros informáticos, así como el mantenimiento y puesta en marcha de las distintas apps y aplicaciones que tenemos en el mercado.  ', 'SIN OBSERVACIONES'),
(372, 1, 'WOP!', 'B14943799', 'Pozoblanco', 'No se ha proporcionado', 'Francisco', 'info@yosoywop.com', '957966024', 'Trinidad Rubio Serrano', '80147075X', 'Rafa Bernier', '44361716Y', 0, 0, 'Jornada continua', 'Instalaciones y mantenimiento en servicios de telecomunicaciones', 'SIN OBSERVACIONES'),
(373, 1, 'Universidad Loyola Andalucía', 'G14894158', 'Córdoba', 'No se ha proporcionado', 'M. Carmen Ramírez Moreno', 'mcramirez@uloyola.es', '957 222 100', 'Gabriel María Pérez Axlcalá', '30462571Z', 'M. Carmen Ramírez Moreno', '30795396Y', 0, 1, 'Jornada continua', 'Siempre con el acompañamiento de personal técnico propio, colaborará en:\n- Atención de primer nivel a solicitudes de incidencias del personal de la Universidad.\n- Atención a necesidades en aulas y salas informáticas (MAC y Windows). Despliegue de software en red. Resolución de incidencias software y hardware en equipamiento.\n- Colaboración en mantenimientos preventivos y correctivos de audiovisuales y sistemas de domótica implantados en las aulas docentes.\n- Participación en proyectos internos de las áreas de microinformática,  sistemas y redes, desde su fase de estudio hasta su puesta en producción.', '- Trabajo en equipo - entorno colaborativo..\n- No tenemos inconveniente en recibir dos alumnos en lugar de uno.'),
(374, 1, 'Wifi Operador Los Pedroches S.L.', 'B14943799', 'Pozoblanco', 'No se ha proporcionado', 'Fran Vélez', 'info@yosoywop.com', '957966024', 'Francisco José Vélez Escalante', '44360512K', 'Pedro Luis Benitez Delgado', '80153945A', 0, 1, 'Jornada continua', 'Despliegue de Redes ftth.\nInstalación y mantenimiento de otras redes y servicios de telecomunicaciones.', 'SIN OBSERVACIONES'),
(375, 1, 'TETRA CONSULTORES', 'B56024110', 'CORDOBA', 'No se ha proporcionado', 'MIGUEL BEJAR LUQUE', 'MIGUEL.TETRA@GMAIL.COM', '615360661', 'MIGUEL BEJAR LUQUE', '00810122Q', 'MIGUEL BEJAR LUQUE', '00810122Q', 1, 1, 'Jornada continua', 'DAW Realizar la nueva pagina de tetra consultores, en cms joomla y programacion php, conectando las redes sociales e incorporando los contenidos. También colaborará en el proyecto de la Gerencia Municipal de Urbanismo de modificaciones php-mysql de la intranet.\nASIR Realizar la gestion de backup y configuraciones para mejorar la seguridad del servidor linux corporativo', 'SIN OBSERVACIONES'),
(376, 1, 'Ingeniería y Diseño Molfer S.L. (IKNX)', 'B14980007', 'Córdoba', 'No se ha proporcionado', 'Antonio José Molero Fernández', 'antonio.molero@iknx.es', '665587528', 'Antonio José Molero Fernández', '30837377N', 'Julio César Fernández Fernández', '30822969W', 0, 0, 'Jornada continua', 'Investigación y desarrollo.', 'La elección del alumno queda condicionada a realizar una entrevista previamente.'),
(377, 1, 'INFORCEST INFORMATICA S.L.', 'B14577746', 'ALMODOVAR DEL RIO', 'No se ha proporcionado', 'Rafael Jiménez Manzano', 'rafa@inforcest.com', '687449171', 'Rafael Jiménez Manzano', '44352455z', 'Rafael Jiménez Manzano', '44352455z', 0, 1, 'Jornada continua', 'Reparación Equipos Informáticos, Instalación de servicio de Internet en Wimax y Fibra Óptica.', 'SIN OBSERVACIONES'),
(378, 1, 'Universidad de Córdoba', 'Q1418001B', 'Cordoba', 'No se ha proporcionado', 'Manuel Ruiz de Adana Santiago', 'manuel.ruiz@uco.es', '678740416', 'Jose Carlos Gomez Villamandos', '30480633K', 'Manuel Ruiz de Adana Santiago', '25993950V', 1, 0, 'Jornada continua', 'Desarrollo de página web del grupo de investigación\n\nAnálisis de la documentación existente\nAnálisis de la estructura web\nPruebas de concepto preliminares\nDesarrollo de página web primera versión \nDesarrollo de página web versión mejorada', 'Sería deseable que el alumno tuviera conocimientos de imagen ya que gran parte del trabajo podría documentarse bien con imágenes/videos invitando a reducir el texto al mínimo.'),
(379, 1, 'SALUDEX S.L.', 'B14950232', 'CORDOBA', 'No se ha proporcionado', 'ÁNGEL', 'saludexcordoba@hotmail.com', '678498851', 'ÁNGEL LÓPEZ MURIEL', '78684743-H', 'ÁNGEL LÓPEZ MURIEL', '78684743-H', 1, 1, 'Jornada continua', 'CREACIÓN PROGRAMA DE GESTIÓN DE CLIENTES  Y ALMACENAMIENTO DE LOS MISMOS EN BASE DE DATOS.\nACTUALIZACIÓN DE PÁGINA WEB (www.saludex.es). ', 'SIN OBSERVACIONES'),
(380, 1, 'everis Centers', '84861178B', 'Sevilla', 'No se ha proporcionado', 'Laura Morales Fernández / Carmen Vázquez Vizcaya', 'recruiting.Centers.Sevilla@everis.com', '954989710 / 639280868', 'Juan Antonio Garay Aranburu', '30621860M', 'Alejandro Garcia Pastor', '75795958X', 3, 0, 'Jornada continua', 'Prácticas de desarrollo de aplicaciones en diferentes lenguajes de programación. A tener en cuenta: \n- Trabajo en colaboración con otros: Capacidad para lograr los objetivos comunes de un conjunto de personas  a la vez que establece relaciones abiertas y constructivas con los integrantes del equipo.	\n- Trabajo en colaboración con otros: Agilidad a la hora de identificar un problema, reconocer la información relevante, encontrar posibles causas y proponer soluciones eficaces.	\n- Organización y planificación: Capacidad para gestionar el propio trabajo, coordinando los recursos y plazos establecidos	.	\n- Compromiso: Capacidad para orientar las propias acciones hacia los objetivos y responsabilidades que le son establecidas, actuando con sentido de compromiso.		\n- Aprendizaje: Motivación y capacidad para adquirir nuevos conocimientos y/o habilidades.', 'El número de alumnos de Desarrollo de Aplicaciones Web puede ser superior de 3. '),
(381, 1, 'SOLUCIONES TECNOLOGICAS EPL, S.L.', 'B90224437', 'CORDOBA', 'No se ha proporcionado', 'DAVID BLASCO', 'dblasco@elprimerodelalista.es', '625484414', 'SUSANA ALVAREZ GÓMEZ', '46142048T', 'FRANCISCO ROMERO', '30992300F', 2, 1, 'Jornada continua', 'Participación en desarrollo de aplicaciones web, para los proyectos tanto internos como externos, teniendo en cuenta los conocimientos y capacidades de cada alumno/a. En el caso de ASIR su participación seria en el desarrollo de mejoras para red interna y servidores de la empresa.\nSe realizaría una evaluación inicial de cada perfil para determinar que actividad puede ser más idónea. ', 'El alumnado interesado deberá cumplir las normas de seguridad y confidencialidad de la empresa.'),
(382, 1, 'INFOGENIL SISTEMAS DE GESTION, S.L.', 'B14089353', 'PUENTE TEGIL', 'No se ha proporcionado', 'MARISA', 'MMORALES@ISGE.ES', '957609006', 'ANDRES MORALES SANCHEZ', '30436309H', 'MARISA', '50610975G', 1, 0, 'Jornada continua', 'RENOVAR PAGINA WEB DE LA EMPRESA', 'SOLICITAMOS UN ALUMNO QUE SEA AUTOSUFICIENTE '),
(383, 1, 'PREMIUM SERVICIOS INTEGRADOS S.L', 'B14981583', 'CORDOBA', 'No se ha proporcionado', 'FELIPE LUQUE', 'FLUQUE@PREMIUMSERVICIOS.ES', '679358212', 'FELIPE LUQUE', '50603981W', 'FELIPE LUQUE', '50603981', 0, 1, 'Jornada continua', 'MANTENIMIENTO DE SISTEMAS INFORMÁTICOS CLIENTE-SERVIDOR\nMANTENIMIENTO HARDWARE DE EQUIPOS\nINSTALACIÓN Y CONFIGURACIÓN SISTEMAS CLIENTE-SERVIDOR Y EQUIPOS INDIVIDUALES\nGESTIÓN DE COMUNICACIÓN ENTRE SEDES\nDOCUMENTACIÓN CLIENTES\nEXPLORAR NUEVAS SOLUCIONES PARA CLIENTES', 'NOS GUSTARÍA PODER REALIZAR ENTREVISTA PREVIA.\nVALORAMOS EL BUEN TRATO CON EL CLIENTE\n'),
(384, 1, 'Fertinyect S.L.', 'B14310155', 'Cordoba', 'No se ha proporcionado', 'Antonio Alabanda Parejo', 'alabanda@fertinyect.com', '607909961', 'Juan Barbado Montero', '30819310T', 'Antonio Alabanda Parejo', '30793765P', 1, 0, 'Jornada continua', 'Desarrollo Web y App Movil', 'SIN OBSERVACIONES'),
(385, 1, 'Tuaccesorio.es', '30980118S', 'Córdoba', 'No se ha proporcionado', 'Fran Meseguer', 'rrhh@tuaccesorio.es', '677 648461', 'Victor Manuel Romero Navarro', '30980118S', 'Victor Manuel Romero Navarro // Ivan Cortes Cáceres', '30980118S  // 53593742Q', 1, 1, 'Jornada partida', 'Apoyo al staff técnico de la empresa en la realización de sus funciones; Reparación de terminales móviles y sistemas informáticos; Mantenimiento y gestión de servidores; Administrar servicios en red; Implantar y gestionar bases de datos', 'Las tareas a realizar son aproximadas habiendo señalado, de las que llevamos a cabo en nuestra organización, algunas de las que creemos pueden encajar mas con la necesidad de los alumnos de completar su formación. \n\nCon respecto al tutor laboral indicar que hemos puesto dos personas para asegurarnos que los alumnos nunca se encuentren sin supervisión.'),
(386, 1, 'ESTAMPACIONES CASADO SL', 'B14053854', 'CÓRDOBA', 'No se ha proporcionado', 'CARLOS JIMÉNEZ', 'cjimenez@estampacionescasado.com', '663792528', 'JOSÉ RUIZ CHACÓN', '75591358H', 'CARLOS JIMÉNEZ', '03856460G', 1, 0, 'Jornada continua', '    Completar la información en la página web corporativa\n    Puesta en marcha del sistema de venta on-line en la página web corporativa\n    Puesta en marcha del sistema de venta on-line en los portales Ebay y/o Amazon', 'LA EMPRESA ESTÁ EN EL POLÍGONO LA TORRECILLA. SE REQUIERE MEDIO DE TRANSPORTE PROPIO.'),
(387, 1, 'Asea Brown Boveri S.A.', 'A08002883', 'Córdoba', 'No se ha proporcionado', 'Francisco José Huertas Morrugares', 'francisco-jose.huertas@es.abb.com', '647 40 95 45', 'Angel San José Blanco', '15993518P', 'Antonio Gordillo Marchal', '30834709N', 1, 0, 'Jornada continua', 'GESTION Y DESARROLLO DE BASES DE DATOS EN SHAREPOINT', 'SIN OBSERVACIONES'),
(388, 1, 'Lidemer Formación S.l', 'B14936611', 'Cordoba ', 'No se ha proporcionado', 'Juan Cano', 'administracion@lidemerformacion.com', '957171403', 'Juan Cano Castro', '30434214 Q', 'Juan Cano Castro', '30434214Q', 2, 0, 'Jornada partida', 'Programación entorno Web ', 'Que Sepa HTML, CSS, PHP, JAVASCRIPT, JAVA '),
(389, 1, 'Educacion Vial Vialia S.L', 'B14996474 ', 'Cordoba ', 'No se ha proporcionado', 'Juan Cano Castro', 'administracion@vialiaservicios.com', '698547451', 'Juan Cano Castro', '30434214Q', 'Pedro Alcazar', '30434214Q', 2, 0, 'Jornada partida', 'Programar en entorno Web  ', 'HTML, CSS PGP JAVASCRITPT,JAVA '),
(390, 1, 'TETRA WEB CONSULTORES SLU', 'B56024110', 'CORDOBA', 'No se ha proporcionado', 'MIGUEL BEJAR', 'miguel.tetra@gmail.com', '615360661', 'MIGUEL BEJAR LUQUE', '00810122Q', 'MIGUEL BEJAR LUQUE', '00810122Q', 1, 1, 'Jornada continua', 'web: Programacion php, mysql , python ASIR: virtualbox, ubuntu, seguridad', 'Ya tenemos firmado convenio del año pasado'),
(391, 1, 'Sopinet Software S.L.', 'B56008600', 'Córdoba', 'No se ha proporcionado', 'Mariluz Mariscal', 'mariluz@sopinet.com', '900831133', 'Fernando Hidalgo', '30835167X', 'Juan Martos', '30999954W', 1, 0, 'Jornada continua', 'Programación Frontend-web, principalmente. CSS, HTML, Javascript, Stylus, Jquery, ReactJS, php, Symfony, twig', 'Aunque la jornada suele ser continua tenemos flexibilidad horaria y de espacio de trabajo.'),
(392, 1, 'Sur Industrial Avances Tecnológicos S.L.', 'B14996615', 'Córdoba', 'No se ha proporcionado', 'Rafa David Lozano', 'rdlozano@surindustrial.com', '607841756', 'Roberto Boncompte', '50600520Z', 'Rafa David Lozano', '30953820Y', 1, 1, 'Jornada partida', 'Administración de sistemas (Linux, Windows) y desarrollo de apliaciones (PHP, .Net)', 'Buscamos alumnos interesados en continuar trabajando en la empresa tras las prácticas'),
(393, 1, 'Reycon', 'B14604854', 'Córdoba', 'No se ha proporcionado', 'Cristina', 'cristina.martinez@gruporeycon.com', '608518619', 'Antonio Rafael Bonilla ', '44354347C', 'Cristina Martínez Ruedas', '30952752L', 2, 0, 'Jornada continua', 'Desarrollo de aplicaciones Web con tecnología .NET (ASP.NET Web Form). Se valorará muy positivamente los conocimiento de la en User Interface, ya que gran parte del trabajo será adecuar las interfaces ya existentes en el proyecto a unas nuevas especificaciones. Para ello se necesitarán conocimientos de JavaScript, JQuery, Bootstrap, HTML 5.0 y CSS.', 'SIN OBSERVACIONES'),
(394, 1, 'MYE WEB DESING CORDOBA S.L. (Salmorejo Software)', 'B14993448', 'Córdoba', 'No se ha proporcionado', 'Eloy', 'eloy@salmorejosoftware.com', '665644518', 'Eloy González Jordano', '30422958F', 'Víctor Parra', '50614787K', 1, 0, 'Jornada continua', 'Desarrollo de aplicaciones y páginas web', 'SIN OBSERVACIONES'),
(395, 1, 'MYE WEB DESING CORDOBA S.L. (Salmorejo Software)', 'B14993449', 'Córdoba', 'No se ha proporcionado', 'Eloy', 'eloy@salmorejosoftware.com', '665644519', 'Eloy González Jordano', '30422958F', 'Víctor Parra', '50614787K', 2, 0, 'Jornada continua', 'Desarrollo de aplicaciones y páginas web', 'SIN OBSERVACIONES'),
(396, 1, 'VorticeSoft', '74923943-V', 'Córdoba', 'No se ha proporcionado', 'Moisés Márquez Gil', 'desarrollo@vorticesoft.com', '687994192', 'Moisés Márquez Gil', '08888194-M', 'Moisés Márquez Gil', '74923943V', 1, 0, 'Jornada continua', 'Pequeñas ampliaciones y reparaciones de software de la empresa, trabajando sobre código real y en producción que usan el Framework Symfony. Aprenderá a instalar y ampliar Webs usando Wordpress. Aprenderá a usar herramientas como Less, SASS o GULP\npara la producción de código.', 'Si el alumno supera las expectativas podría continuar en la\nempresa como desarrollador junior.'),
(397, 1, 'Enooby Spain S.L.U.', 'B56019110', 'Córdoba', 'No se ha proporcionado', 'Ana María Cañero López', 'info@enooby.com', '617945222', 'Ana María Cañero López', '01234567-M', 'Ana María Cañero López', '30951138S', 1, 0, 'Jornada continua', '- Desarrollo de aplicaciones web conectadas a la API de Google (Google Apps)\n- Desarrollo de sistemas específicos para educación (Chrome OS, Raspberry, pantallas táctiles, chromecast...)\n- Adaptación de sitios web internos', 'Nos gustaría recibir un alumno inquieto y motivado tecnológicamente, y a ser posible, que hayan tenido algún contacto con el uso de la API de Google.'),
(398, 1, 'Asociación Cultural y Tecnológica Ingenia XXI', 'G56004948', 'Córdoba', 'No se ha proporcionado', 'Isabel López García', 'ilgarcia@uco.es', '677382966', 'Isabel López García', '01234567-M', 'Isabel López García', '74662535G', 1, 0, 'Jornada continua', 'Revisión de la actual página web y actualización de contenidos. Elaboración de webs adscritas a la web principal. Conexión con redes sociales.', 'Ya hemos participado una vez en este programa y estamos muy satisfechos con la experiencia y con la profesora tutora Mª Lourdes. Esperamos poder repetir próximamente.'),
(399, 1, 'UMITEL soluciones informaticas sl', 'b14977581', 'cordoba', 'No se ha proporcionado', 'alberto cano', 'alberto@umitel.es', '661506112', 'alberto cano', '01234567-M', 'alberto cano', '30978870d', 1, 1, 'Jornada continua', 'servicio de soporte a empresas (problemas de servidores , desarrollo de app, paginas web, averías de equipos, instalaciones de red  y radionlaces..)', 'SIN OBSERVACIONES'),
(400, 1, 'Via Activa SL', 'B14661821', 'Córdoba', 'No se ha proporcionado', 'Pedro Castro Jimenez', 'info@viaactiva.es', '957761892', 'Pedro Castro Jimenez(30509280X)', '01234567-M', 'Eva Mª Rabasco Bravo', '29485211Q', 1, 0, 'Jornada continua', 'Manejo de Wordpress y redes sociales', 'A ser posible que tambien tenga conocimientos de Prestashop aunque no es determinante.'),
(401, 1, 'Gestaweb 2020, S.L.', 'B14970750', 'Córdoba', 'No se ha proporcionado', 'Juan Antonio Serrano', 'juan@electrocosto.com', '957404686', 'Verónica Jurado Márquez(44371961Q)', '01234567-M', 'Juan A. Serrano Navarro', '30971425Q', 1, 2, 'Jornada continua', 'Búscamos 2 perfiles de alumnos:\n\n1. Integración de productos: tareas de creación y optimización de las fichas de producto para posicionarlas en Google. Sería importante que tenga conocimientos de SEO, si no es así nosotros se los aportaríamos.\n\n2. Programador: Muy positivo que tenga conocimientos en prestashop, en caso de tenerlos podría desarrollar módulos para implantarlos en la web. De no tener conocimientos en prestashop se dedicaría a la creación de herramientas que ayuden a la automatización de las tareas diarias.', 'Ambas tareas se desarrollaran sobre el ecommerce www.electrocosto.com. Hay una alta posibilidad de contratación.'),
(402, 1, 'Dafos Training, S. L.', 'B14615538', 'Córdoba', 'No se ha proporcionado', 'Juan Rodriguez', 'consultoria@dafos.com', '957340125', 'José Martinez Almagro(30496135K)', '01234567-M', 'Juan Rodriguez', '50.600.216-D', 1, 0, 'Jornada continua', 'Desarrollo y programación en entornos web', 'SIN OBSERVACIONES'),
(403, 1, 'ALFONSO ALBERCA DIAZ', '44363565S', 'CÓRDOBA', 'No se ha proporcionado', 'ALFONSO ALBERCA', 'alfonso@tallerempresarial.es', '666448780', 'ALFONSO ALBERCA DIAZ', '01234567-M', 'ALFONSO ALBERCA DÍAZ', '44363565S', 1, 0, 'Jornada continua', 'Desarrollo de aplicación web, para sector joyero.', 'Estoy interesado en el Alumno David Peralvo\nGracias'),
(404, 1, 'Innovation Tech PericialCar S.L.', 'B14860316', 'Córdoba', 'No se ha proporcionado', 'Francisco Gracia Ahufinger', 'graciaf@es.innovation-group.com', '34635598207', 'Laurence Vivet(Y2372975X)', '01234567-M', 'Francisco Gracia Ahufinger', '44370370N', 1, 0, 'Jornada continua', 'Adaptación del front de la plataforma a nuevas tecnologías de desarrollo web', 'SIN OBSERVACIONES'),
(405, 1, 'Universidad Loyola Andalucía', 'G14894158', 'Córdoba', 'No se ha proporcionado', 'M. Carmen Ramírez Moreno', 'mcramirez@uloyola.es', '957 222 100', 'Gabriel María Pérez Alcalá', '01234567-M', 'M. Carmen Ramírez Moreno', '30795396Y', 0, 2, 'Jornada continua', '"Búscamos 2 perfiles de alumnos:\n1. Integración de productos: tareas de creación y optimización de las fichas de producto para posicionarlas en Google. Sería importante que tenga conocimientos de SEO, si no es así nosotros se los aportaríamos.\n2. Programador: Muy positivo que tenga conocimientos en prestashop, en caso de tenerlos podría desarrollar módulos para implantarlos en la web. De no tener conocimientos en prestashop se dedicaría a la creación de herramientas que ayuden a la automatización de las tareas diarias."Las tareas del alumno tendrán lugar en el Servicio de Tecnologías de la Información y Comunicación de la Universidad Loyola, en su sede de Córdoba.\nSe realizarán en varias áreas:\n- En el área de atención al usuario: soporte de primer nivel a personal docente, de investigación, de administración y servicios.\n- En las salas informáticas, Windows y MAC: atención al alumnado, colaboración en proyectos de aulas, atención en las aulas.\n- Área de microinformática: colaboración en un soporte a usuario de mayor nivel, colaboración en algunos de sus proyectos en curso con personal del servicio, audiovisuales, etc.', 'Es importante el trabajo colaborativo dentro del equipo así como una correcta atención al usuario cuando tenga lugar.'),
(406, 1, 'NoSoloSoftware Network, S.L.', 'B14928840', 'Córdoba', 'No se ha proporcionado', 'Selma Hayoun Caballero', 'shayoun@nosolosoftware.es', '957326715', 'Pedro Navajas Modelo(45738607W)', '01234567-M', 'Carlos Javier Barasona León', '30836612Y', 1, 0, 'Jornada continua', '- Trabajo en equipos multidisciplinares guiados por metodologías ágiles.\n- Maquetación de las aplicaciones desarrolladas en la empresa.', 'Tenemos gratas experiencias acogiendo a alumnos en formación y nos gustaría probar a perfiles alineados con nuestra forma de trabajar con el objeto de que formasen parte de nuestro equipo en nuestro futuro: proactividad, curiosidad y dinamismo.'),
(407, 1, 'Enooby Spain S.L.U.', 'B56019110', 'Córdoba', 'No se ha proporcionado', 'Ana Cañero López', 'info@enooby.com', '957105104', 'Ana Cañero López', '01234567-M', 'Ana Cañero López', '30951138s', 2, 0, 'Jornada continua', '- Desarrollo de aplicaciones web conectadas a la API de Google (Google Apps)\n- Desarrollo de sistemas específicos\n- Adaptación de sitios webs internos', 'Nos gustaría recibir alumnos motivados e inquietos tecnológicamente, que hayan tenido algún contacto con el uso de la API de Google'),
(408, 1, 'Dobuss', 'B14994586', 'Córdoba', 'No se ha proporcionado', 'Daniel Cabrera Cebrero', 'daniel.dobuss@gmail.com', '957 289 665', 'José Huertas Jiménez(30808949N)', '01234567-M', 'Daniel Cabrera Cebrero', '30985827C', 1, 0, 'Jornada continua', 'Desarrollo y mantenimiento de páginas webs y tiendas online con WordPress, Magento y PrestaShop (HTML5, CSS3, JavaScript y PHP)', 'Los conocimientos sobre las herramientas utilizadas no son una prioridad (al menos conocimientos básicos de HTML, CSS, JavaScript y PHP); sin embargo, se solicita un alumno formal, colaborativo y sociable, con ganas de trabajar y que sepa hacerlo en grupo, así como con recursos para investigar y encontrar soluciones por su cuenta.\n\nEn estos momentos, la empresa cuenta con recursos y trabajo para nuevas incorporaciones. No obstante, si bien es cierto que no asegura un puesto de trabajo, existen posibilidades reales de contratación, atendiendo a la capacidad del alumno y las circunstancias acontecidas hasta la finalización de las prácticas.'),
(409, 1, 'EMUPREVENCION', 'B14590053', 'CORDOBA', 'No se ha proporcionado', 'Antonio R Barbado', 'abarbado@emucor.es', '618973197', 'Manuel Valencia Díaz', '01234567-M', 'Antonio R. Barbado', '30835218S', 1, 0, 'Jornada continua', 'Reestructuración de ciertas partes de la nueva aplicación web de gestión de la empresa.\nCreación de un sistema de gestión de usuarios integrado con el directorio activo.\nAprender ciertos aspecto del área de sistemas: virtualización, sistemas operativos, Linux... etc.\n', 'SIN OBSERVACIONES'),
(410, 1, 'Mye Web Design Córdoba S.L.', 'B14993448', 'Córdoba', 'No se ha proporcionado', 'Eloy González', 'eloy@salmorejosoftware.com', '665644518', 'Eloy González', '01234567-M', 'Eloy González', '30814129V', 1, 0, 'Jornada continua', '* Desarrollo Frontend basándose en arquitectura MVC como AngularJS y Angular 2.\n* Desarrollo Backtend basándose en Ruby on Rails.\n* Desarrollo móvil con tecnologías híbridas como Ionic Framework.\n* Despliegues automáticos con tecnologías como Jenkins.\n* Gestores de paquetes como NPM.\n* Control de versiones con GIT.\n* Estándares como ES6, CSS modules, Typescript, Sass.\n* Gestión de proyectos con metodologías ágiles como Scrum.\n* Workflow de cómo trabajar en equipo.\n', 'SIN OBSERVACIONES'),
(411, 1, 'SOLDACOR, S. A. ', 'A14252118', 'CORDOBA', 'No se ha proporcionado', 'ISABEL', 'info@soldacor.com', '95326476', 'Isabel Lozano', '30942433G', 'Isabel Lozano', '30942433G', 2, 0, 'Jornada continua', 'Gestion de nuestra tienda online, web y pagina de facebook.', 'SIN OBSERVACIONES'),
(412, 1, 'Eurotransportcar Servicios Logisticos, S.L.', 'B14925028', 'Cordoba', 'No se ha proporcionado', 'Cordoba', 'juan.alba@eurotransportcar.com', '651866995', 'Juan Alba Moreno', '30790561R', 'Juan Alba Moreno', '30790561R', 3, 1, 'Jornada continua', 'Desarrollo software multiplataforma en colaboración con nuestros Ingenieros informáticos, así como el mantenimiento y puesta en marcha de las distintas apps y aplicaciones que tenemos en el mercado.  ', 'SIN OBSERVACIONES'),
(413, 1, 'WOP!', 'B14943799', 'Pozoblanco', 'No se ha proporcionado', 'Francisco', 'info@yosoywop.com', '957966024', 'Trinidad Rubio Serrano', '80147075X', 'Rafa Bernier', '44361716Y', 0, 0, 'Jornada continua', 'Instalaciones y mantenimiento en servicios de telecomunicaciones', 'SIN OBSERVACIONES'),
(414, 1, 'Universidad Loyola Andalucía', 'G14894158', 'Córdoba', 'No se ha proporcionado', 'M. Carmen Ramírez Moreno', 'mcramirez@uloyola.es', '957 222 100', 'Gabriel María Pérez Axlcalá', '30462571Z', 'M. Carmen Ramírez Moreno', '30795396Y', 0, 1, 'Jornada continua', 'Siempre con el acompañamiento de personal técnico propio, colaborará en:\n- Atención de primer nivel a solicitudes de incidencias del personal de la Universidad.\n- Atención a necesidades en aulas y salas informáticas (MAC y Windows). Despliegue de software en red. Resolución de incidencias software y hardware en equipamiento.\n- Colaboración en mantenimientos preventivos y correctivos de audiovisuales y sistemas de domótica implantados en las aulas docentes.\n- Participación en proyectos internos de las áreas de microinformática,  sistemas y redes, desde su fase de estudio hasta su puesta en producción.', '- Trabajo en equipo - entorno colaborativo..\n- No tenemos inconveniente en recibir dos alumnos en lugar de uno.'),
(415, 1, 'Wifi Operador Los Pedroches S.L.', 'B14943799', 'Pozoblanco', 'No se ha proporcionado', 'Fran Vélez', 'info@yosoywop.com', '957966024', 'Francisco José Vélez Escalante', '44360512K', 'Pedro Luis Benitez Delgado', '80153945A', 0, 1, 'Jornada continua', 'Despliegue de Redes ftth.\nInstalación y mantenimiento de otras redes y servicios de telecomunicaciones.', 'SIN OBSERVACIONES'),
(416, 1, 'TETRA CONSULTORES', 'B56024110', 'CORDOBA', 'No se ha proporcionado', 'MIGUEL BEJAR LUQUE', 'MIGUEL.TETRA@GMAIL.COM', '615360661', 'MIGUEL BEJAR LUQUE', '00810122Q', 'MIGUEL BEJAR LUQUE', '00810122Q', 1, 1, 'Jornada continua', 'DAW Realizar la nueva pagina de tetra consultores, en cms joomla y programacion php, conectando las redes sociales e incorporando los contenidos. También colaborará en el proyecto de la Gerencia Municipal de Urbanismo de modificaciones php-mysql de la intranet.\nASIR Realizar la gestion de backup y configuraciones para mejorar la seguridad del servidor linux corporativo', 'SIN OBSERVACIONES'),
(417, 1, 'Ingeniería y Diseño Molfer S.L. (IKNX)', 'B14980007', 'Córdoba', 'No se ha proporcionado', 'Antonio José Molero Fernández', 'antonio.molero@iknx.es', '665587528', 'Antonio José Molero Fernández', '30837377N', 'Julio César Fernández Fernández', '30822969W', 0, 0, 'Jornada continua', 'Investigación y desarrollo.', 'La elección del alumno queda condicionada a realizar una entrevista previamente.'),
(418, 1, 'INFORCEST INFORMATICA S.L.', 'B14577746', 'ALMODOVAR DEL RIO', 'No se ha proporcionado', 'Rafael Jiménez Manzano', 'rafa@inforcest.com', '687449171', 'Rafael Jiménez Manzano', '44352455z', 'Rafael Jiménez Manzano', '44352455z', 0, 1, 'Jornada continua', 'Reparación Equipos Informáticos, Instalación de servicio de Internet en Wimax y Fibra Óptica.', 'SIN OBSERVACIONES'),
(419, 1, 'Universidad de Córdoba', 'Q1418001B', 'Cordoba', 'No se ha proporcionado', 'Manuel Ruiz de Adana Santiago', 'manuel.ruiz@uco.es', '678740416', 'Jose Carlos Gomez Villamandos', '30480633K', 'Manuel Ruiz de Adana Santiago', '25993950V', 1, 0, 'Jornada continua', 'Desarrollo de página web del grupo de investigación\n\nAnálisis de la documentación existente\nAnálisis de la estructura web\nPruebas de concepto preliminares\nDesarrollo de página web primera versión \nDesarrollo de página web versión mejorada', 'Sería deseable que el alumno tuviera conocimientos de imagen ya que gran parte del trabajo podría documentarse bien con imágenes/videos invitando a reducir el texto al mínimo.'),
(420, 1, 'SALUDEX S.L.', 'B14950232', 'CORDOBA', 'No se ha proporcionado', 'ÁNGEL', 'saludexcordoba@hotmail.com', '678498851', 'ÁNGEL LÓPEZ MURIEL', '78684743-H', 'ÁNGEL LÓPEZ MURIEL', '78684743-H', 1, 1, 'Jornada continua', 'CREACIÓN PROGRAMA DE GESTIÓN DE CLIENTES  Y ALMACENAMIENTO DE LOS MISMOS EN BASE DE DATOS.\nACTUALIZACIÓN DE PÁGINA WEB (www.saludex.es). ', 'SIN OBSERVACIONES'),
(421, 1, 'everis Centers', '84861178B', 'Sevilla', 'No se ha proporcionado', 'Laura Morales Fernández / Carmen Vázquez Vizcaya', 'recruiting.Centers.Sevilla@everis.com', '954989710 / 639280868', 'Juan Antonio Garay Aranburu', '30621860M', 'Alejandro Garcia Pastor', '75795958X', 3, 0, 'Jornada continua', 'Prácticas de desarrollo de aplicaciones en diferentes lenguajes de programación. A tener en cuenta: \n- Trabajo en colaboración con otros: Capacidad para lograr los objetivos comunes de un conjunto de personas  a la vez que establece relaciones abiertas y constructivas con los integrantes del equipo.	\n- Trabajo en colaboración con otros: Agilidad a la hora de identificar un problema, reconocer la información relevante, encontrar posibles causas y proponer soluciones eficaces.	\n- Organización y planificación: Capacidad para gestionar el propio trabajo, coordinando los recursos y plazos establecidos	.	\n- Compromiso: Capacidad para orientar las propias acciones hacia los objetivos y responsabilidades que le son establecidas, actuando con sentido de compromiso.		\n- Aprendizaje: Motivación y capacidad para adquirir nuevos conocimientos y/o habilidades.', 'El número de alumnos de Desarrollo de Aplicaciones Web puede ser superior de 3. '),
(422, 1, 'SOLUCIONES TECNOLOGICAS EPL, S.L.', 'B90224437', 'CORDOBA', 'No se ha proporcionado', 'DAVID BLASCO', 'dblasco@elprimerodelalista.es', '625484414', 'SUSANA ALVAREZ GÓMEZ', '46142048T', 'FRANCISCO ROMERO', '30992300F', 2, 1, 'Jornada continua', 'Participación en desarrollo de aplicaciones web, para los proyectos tanto internos como externos, teniendo en cuenta los conocimientos y capacidades de cada alumno/a. En el caso de ASIR su participación seria en el desarrollo de mejoras para red interna y servidores de la empresa.\nSe realizaría una evaluación inicial de cada perfil para determinar que actividad puede ser más idónea. ', 'El alumnado interesado deberá cumplir las normas de seguridad y confidencialidad de la empresa.'),
(423, 1, 'INFOGENIL SISTEMAS DE GESTION, S.L.', 'B14089353', 'PUENTE TEGIL', 'No se ha proporcionado', 'MARISA', 'MMORALES@ISGE.ES', '957609006', 'ANDRES MORALES SANCHEZ', '30436309H', 'MARISA', '50610975G', 1, 0, 'Jornada continua', 'RENOVAR PAGINA WEB DE LA EMPRESA', 'SOLICITAMOS UN ALUMNO QUE SEA AUTOSUFICIENTE '),
(424, 1, 'PREMIUM SERVICIOS INTEGRADOS S.L', 'B14981583', 'CORDOBA', 'No se ha proporcionado', 'FELIPE LUQUE', 'FLUQUE@PREMIUMSERVICIOS.ES', '679358212', 'FELIPE LUQUE', '50603981W', 'FELIPE LUQUE', '50603981', 0, 1, 'Jornada continua', 'MANTENIMIENTO DE SISTEMAS INFORMÁTICOS CLIENTE-SERVIDOR\nMANTENIMIENTO HARDWARE DE EQUIPOS\nINSTALACIÓN Y CONFIGURACIÓN SISTEMAS CLIENTE-SERVIDOR Y EQUIPOS INDIVIDUALES\nGESTIÓN DE COMUNICACIÓN ENTRE SEDES\nDOCUMENTACIÓN CLIENTES\nEXPLORAR NUEVAS SOLUCIONES PARA CLIENTES', 'NOS GUSTARÍA PODER REALIZAR ENTREVISTA PREVIA.\nVALORAMOS EL BUEN TRATO CON EL CLIENTE\n'),
(425, 1, 'Fertinyect S.L.', 'B14310155', 'Cordoba', 'No se ha proporcionado', 'Antonio Alabanda Parejo', 'alabanda@fertinyect.com', '607909961', 'Juan Barbado Montero', '30819310T', 'Antonio Alabanda Parejo', '30793765P', 1, 0, 'Jornada continua', 'Desarrollo Web y App Movil', 'SIN OBSERVACIONES'),
(426, 1, 'Tuaccesorio.es', '30980118S', 'Córdoba', 'No se ha proporcionado', 'Fran Meseguer', 'rrhh@tuaccesorio.es', '677 648461', 'Victor Manuel Romero Navarro', '30980118S', 'Victor Manuel Romero Navarro // Ivan Cortes Cáceres', '30980118S  // 53593742Q', 1, 1, 'Jornada partida', 'Apoyo al staff técnico de la empresa en la realización de sus funciones; Reparación de terminales móviles y sistemas informáticos; Mantenimiento y gestión de servidores; Administrar servicios en red; Implantar y gestionar bases de datos', 'Las tareas a realizar son aproximadas habiendo señalado, de las que llevamos a cabo en nuestra organización, algunas de las que creemos pueden encajar mas con la necesidad de los alumnos de completar su formación. \n\nCon respecto al tutor laboral indicar que hemos puesto dos personas para asegurarnos que los alumnos nunca se encuentren sin supervisión.'),
(427, 1, 'ESTAMPACIONES CASADO SL', 'B14053854', 'CÓRDOBA', 'No se ha proporcionado', 'CARLOS JIMÉNEZ', 'cjimenez@estampacionescasado.com', '663792528', 'JOSÉ RUIZ CHACÓN', '75591358H', 'CARLOS JIMÉNEZ', '03856460G', 1, 0, 'Jornada continua', '    Completar la información en la página web corporativa\n    Puesta en marcha del sistema de venta on-line en la página web corporativa\n    Puesta en marcha del sistema de venta on-line en los portales Ebay y/o Amazon', 'LA EMPRESA ESTÁ EN EL POLÍGONO LA TORRECILLA. SE REQUIERE MEDIO DE TRANSPORTE PROPIO.'),
(428, 1, 'Asea Brown Boveri S.A.', 'A08002883', 'Córdoba', 'No se ha proporcionado', 'Francisco José Huertas Morrugares', 'francisco-jose.huertas@es.abb.com', '647 40 95 45', 'Angel San José Blanco', '15993518P', 'Antonio Gordillo Marchal', '30834709N', 1, 0, 'Jornada continua', 'GESTION Y DESARROLLO DE BASES DE DATOS EN SHAREPOINT', 'SIN OBSERVACIONES'),
(429, 1, 'Lidemer Formación S.l', 'B14936611', 'Cordoba ', 'No se ha proporcionado', 'Juan Cano', 'administracion@lidemerformacion.com', '957171403', 'Juan Cano Castro', '30434214 Q', 'Juan Cano Castro', '30434214Q', 2, 0, 'Jornada partida', 'Programación entorno Web ', 'Que Sepa HTML, CSS, PHP, JAVASCRIPT, JAVA '),
(430, 1, 'Educacion Vial Vialia S.L', 'B14996474 ', 'Cordoba ', 'No se ha proporcionado', 'Juan Cano Castro', 'administracion@vialiaservicios.com', '698547451', 'Juan Cano Castro', '30434214Q', 'Pedro Alcazar', '30434214Q', 2, 0, 'Jornada partida', 'Programar en entorno Web  ', 'HTML, CSS PGP JAVASCRITPT,JAVA '),
(431, 1, 'TETRA WEB CONSULTORES SLU', 'B56024110', 'CORDOBA', 'No se ha proporcionado', 'MIGUEL BEJAR', 'miguel.tetra@gmail.com', '615360661', 'MIGUEL BEJAR LUQUE', '00810122Q', 'MIGUEL BEJAR LUQUE', '00810122Q', 1, 1, 'Jornada continua', 'web: Programacion php, mysql , python ASIR: virtualbox, ubuntu, seguridad', 'Ya tenemos firmado convenio del año pasado'),
(432, 1, 'Sopinet Software S.L.', 'B56008600', 'Córdoba', 'No se ha proporcionado', 'Mariluz Mariscal', 'mariluz@sopinet.com', '900831133', 'Fernando Hidalgo', '30835167X', 'Juan Martos', '30999954W', 1, 0, 'Jornada continua', 'Programación Frontend-web, principalmente. CSS, HTML, Javascript, Stylus, Jquery, ReactJS, php, Symfony, twig', 'Aunque la jornada suele ser continua tenemos flexibilidad horaria y de espacio de trabajo.'),
(433, 1, 'Sur Industrial Avances Tecnológicos S.L.', 'B14996615', 'Córdoba', 'No se ha proporcionado', 'Rafa David Lozano', 'rdlozano@surindustrial.com', '607841756', 'Roberto Boncompte', '50600520Z', 'Rafa David Lozano', '30953820Y', 1, 1, 'Jornada partida', 'Administración de sistemas (Linux, Windows) y desarrollo de apliaciones (PHP, .Net)', 'Buscamos alumnos interesados en continuar trabajando en la empresa tras las prácticas'),
(434, 1, 'Reycon', 'B14604854', 'Córdoba', 'No se ha proporcionado', 'Cristina', 'cristina.martinez@gruporeycon.com', '608518619', 'Antonio Rafael Bonilla ', '44354347C', 'Cristina Martínez Ruedas', '30952752L', 2, 0, 'Jornada continua', 'Desarrollo de aplicaciones Web con tecnología .NET (ASP.NET Web Form). Se valorará muy positivamente los conocimiento de la en User Interface, ya que gran parte del trabajo será adecuar las interfaces ya existentes en el proyecto a unas nuevas especificaciones. Para ello se necesitarán conocimientos de JavaScript, JQuery, Bootstrap, HTML 5.0 y CSS.', 'SIN OBSERVACIONES'),
(435, 1, 'MYE WEB DESING CORDOBA S.L. (Salmorejo Software)', 'B14993448', 'Córdoba', 'No se ha proporcionado', 'Eloy', 'eloy@salmorejosoftware.com', '665644518', 'Eloy González Jordano', '30422958F', 'Víctor Parra', '50614787K', 1, 0, 'Jornada continua', 'Desarrollo de aplicaciones y páginas web', 'SIN OBSERVACIONES');

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
(2, '17/18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Student`
--

CREATE TABLE `Student` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `convocatory_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Student`
--

INSERT INTO `Student` (`id`, `group_id`, `convocatory_id`, `first_name`, `last_name`) VALUES
(1, 3, 2, 'Victoriano', 'Sevillano Vega'),
(2, 3, 2, 'Daniel', 'Gestino'),
(3, 3, 2, 'Victor Manuel', 'Gómez'),
(4, 3, 2, 'Mario', 'Ferrer Nieto'),
(5, 3, 2, 'Jorge', 'Granados Jurado'),
(6, 3, 2, 'Dario', 'Fernández Osuna'),
(7, 3, 2, 'Jesus', 'Requena Pérez'),
(8, 3, 2, 'José', 'Lucena Morente'),
(9, 3, 2, 'Juan', 'Rueda Morales'),
(10, 3, 3, 'Rafael', 'Carmona'),
(11, 3, 3, 'David', 'Mateo'),
(12, 3, 3, 'Soledad', 'Mateo'),
(13, 3, 3, 'Rafael', 'Mellado'),
(14, 3, 3, 'Miguel Angel', 'Gavilan'),
(15, 3, 3, 'Javier', 'Ponferrada López'),
(16, 3, 3, 'Pedro', 'Caballero'),
(17, 3, 3, 'Jose', 'Lucena Morente'),
(18, 3, 3, 'Nieves', 'Borrero'),
(19, 3, 3, 'Pablo', 'Muñoz'),
(20, 4, 3, 'Azahara', 'Cerezo'),
(21, 4, 3, 'Manuel', 'Delgado'),
(22, 4, 3, 'Alvaro', 'Legido'),
(23, 4, 3, 'Jose Manuel', 'Díaz'),
(24, 4, 3, 'Juan Fra.', 'Romero'),
(25, 4, 3, 'Pablo', 'sin apellido'),
(26, 4, 3, 'Alfonso', 'sin apellido'),
(27, 4, 3, 'Juan Miguel', 'Sanchez'),
(28, 4, 3, 'Juan Francisco', 'García'),
(29, 4, 3, 'Cristina', 'Triviño'),
(30, 4, 3, 'Juan', 'Granadilla'),
(31, 4, 3, 'Sergio', 'Carpio'),
(32, 4, 2, 'Azahara', 'Cerezo'),
(33, 4, 2, 'Manuel', 'Delgado'),
(34, 4, 2, 'Alvaro', 'Legido'),
(35, 4, 2, 'Fco. Javier', 'Ruiz Pulido'),
(36, 4, 2, 'Juan Miguel', 'Sanchez'),
(37, 4, 2, 'Juan Francisco', 'García'),
(38, 4, 2, 'Andrés', 'Gonzalez Suarez'),
(39, 4, 2, 'Cristina', 'Triviño'),
(40, 4, 2, 'Jose Francisco', 'Baños Trujillo'),
(41, 4, 2, 'Antonio', 'Herencia'),
(42, 4, 2, 'Francisco', 'Benito'),
(43, 4, 2, 'Miguel', 'Tirado'),
(44, 3, 2, 'Javier', 'Mariscal'),
(45, 3, 2, 'Alejandro', 'Casillas Vazquez');

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
(1, 'admin', 'admin', 'admin@admin.com', 'admin@admin.com', 1, NULL, '$2y$13$JkDEWVqov6Q8EU79EbGnROnXa09P4HyRezShaWeeeoHi6/vkj7vlK', '2018-11-08 09:35:33', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 'admin', 'admin', 0, NULL, NULL),
(2, 'lmagarin', 'lmagarin', 'lmagarin@gmail.com', 'lmagarin@gmail.com', 1, NULL, '$2y$13$X7U..87q2sjrwWEj9FBSJ.iswntdu03r342ZMajN4uoCW/cw9oTf6', '2018-11-08 09:38:56', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Lourdes', 'Magarin Corvillo', 1, 'lmagarin.jpeg', 2),
(3, 'jrabasco', 'jrabasco', 'jaimeeducation@gmail.com', 'jaimeeducation@gmail.com', 1, NULL, '$2y$13$EuRwUcyC1nRv1VVZ.vif7.lYZNqhWNrDqnWFM9haJ43UJ8tY2KxYu', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Jaime', 'Rabasco Ronda', 1, NULL, NULL),
(4, 'fjaguilera', 'fjaguilera', 'fjagui@gmail.com', 'fjagui@gmail.com', 1, NULL, '$2y$13$h2orC2clTwzH.1gd8EiEJOSolTmPm5BbiWwPadxRlNNE3/1EAI1SS', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Francisco José', 'Aguilera Ruiz', 1, NULL, NULL),
(5, 'jralbendin', 'jralbendin', 'jralbendin@gmail.com', 'jralbendin@gmail.com', 1, NULL, '$2y$13$LHMg8YEiyEYCWj5iifZXmORABgx7gZ51Apk7q2jqXkkf1WSiiufOu', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'José Ramón', 'Albendín Ramírez', 1, NULL, NULL),
(6, 'rcastillo', 'rcastillo', 'rcastillo@iesgrancapitan.org', 'rcastillo@iesgrancapitan.org', 1, NULL, '$2y$13$yr.N7N1dcxp/OtJQYmDkTOTvO0n1gGygt78UMNJT21ovvlEhF/ghG', '2018-10-07 09:49:28', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Rafael', 'del Castillo Gomariz', 1, NULL, NULL),
(7, 'aperez', 'aperez', 'apeflo@gmail.com', 'apeflo@gmail.com', 1, NULL, '$2y$13$LwYndFyzJkwc0PJi74DiEOgzuE8O3MLAZXU2efaeufjuGiOvyJ/RC', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Amelia', 'Pérez Flores', 1, NULL, NULL),
(8, 'mctripiana', 'mctripiana', 'mctripiana@gmail.com', 'mctripiana@gmail.com', 1, NULL, '$2y$13$/Iz1VgVDOenurAlHI24QVeSirZHyZE2/Vm0I4DzP2q2I4wKAekka2', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Maria del Carmen', 'Tripiana', 1, NULL, NULL),
(10, 'rlozano', 'rlozano', 'rlozano@gmail.com', 'rlozano@gmail.com', 1, NULL, '$2y$13$3rBzXD69OjkxYR9Ns4EzkOuGjMxuTtRIDNhu4rVQZghDx8t8qgGfO', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Rafael', 'Lozano Luján', 1, NULL, NULL),
(11, 'sinuhe', 'sinuhe', 'victorianosevillano@gmail.com', 'victorianosevillano@gmail.com', 1, NULL, '$2y$13$1sg3DXtbk4whwTRv54O78e/gg/C9DtW8zaGYjJrjzoxq/awOQbD6K', NULL, 'WZ3VO2kes91ZRZuV80g4bDrbyFvrZEwi7p0ljIDxcfg', '2018-11-04 10:24:39', 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'sinuhe', 'sinuhe', 0, NULL, NULL);

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
  ADD UNIQUE KEY `UNIQ_2DA1797792FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_2DA17977A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_2DA17977C05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Company`
--
ALTER TABLE `Company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `Convocatory`
--
ALTER TABLE `Convocatory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `Distribution_module_teacher`
--
ALTER TABLE `Distribution_module_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `Distribution_project`
--
ALTER TABLE `Distribution_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de la tabla `event_calendar`
--
ALTER TABLE `event_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `Module`
--
ALTER TABLE `Module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `Project`
--
ALTER TABLE `Project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `Request_company`
--
ALTER TABLE `Request_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;
--
-- AUTO_INCREMENT de la tabla `School_group`
--
ALTER TABLE `School_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `School_year`
--
ALTER TABLE `School_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `Student`
--
ALTER TABLE `Student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
