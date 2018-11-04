-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-10-2018 a las 12:07:41
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
(1, 2, 1, 'I.E.S Gran Capitán');

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
(29, 7, 43, 18, NULL, NULL, NULL, NULL);

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
(46, 8, 45, 28);

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
(28, 'RFS', 'RFS', 1);

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
  `tasks_to_be_done` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observations` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(10, 3, 1, 'Rafael', 'Carmona'),
(11, 3, 1, 'David', 'Mateo'),
(12, 3, 1, 'Soledad', 'Mateo'),
(13, 3, 1, 'Rafael', 'Mellado'),
(14, 3, 1, 'Miguel Angel', 'Gavilan'),
(15, 3, 1, 'Javier', 'Ponferrada López'),
(16, 3, 1, 'Pedro', 'Caballero'),
(17, 3, 1, 'Jose', 'Lucena Morente'),
(18, 3, 1, 'Nieves', 'Borrero'),
(19, 3, 1, 'Pablo', 'Muñoz'),
(20, 4, 1, 'Azahara', 'Cerezo'),
(21, 4, 1, 'Manuel', 'Delgado'),
(22, 4, 1, 'Alvaro', 'Legido'),
(23, 4, 1, 'Jose Manuel', 'Díaz'),
(24, 4, 1, 'Juan Fra.', 'Romero'),
(25, 4, 1, 'Pablo', 'sin apellido'),
(26, 4, 1, 'Alfonso', 'sin apellido'),
(27, 4, 1, 'Juan Miguel', 'Sanchez'),
(28, 4, 1, 'Juan Francisco', 'García'),
(29, 4, 1, 'Cristina', 'Triviño'),
(30, 4, 1, 'Juan', 'Granadilla'),
(31, 4, 1, 'Sergio', 'Carpio'),
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
(1, 'admin', 'admin', 'admin@admin.com', 'admin@admin.com', 1, NULL, '$2y$13$JkDEWVqov6Q8EU79EbGnROnXa09P4HyRezShaWeeeoHi6/vkj7vlK', '2018-10-27 12:07:29', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 'admin', 'admin', 0, NULL, NULL),
(2, 'lmagarin', 'lmagarin', 'lmagarin@gmail.com', 'lmagarin@gmail.com', 1, NULL, '$2y$13$X7U..87q2sjrwWEj9FBSJ.iswntdu03r342ZMajN4uoCW/cw9oTf6', '2018-10-24 19:32:31', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Lourdes', 'Magarin Corvillo', 1, 'lmagarin.jpeg', 2),
(3, 'jrabasco', 'jrabasco', 'jaimeeducation@gmail.com', 'jaimeeducation@gmail.com', 1, NULL, '$2y$13$EuRwUcyC1nRv1VVZ.vif7.lYZNqhWNrDqnWFM9haJ43UJ8tY2KxYu', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Jaime', 'Rabasco Ronda', 1, NULL, NULL),
(4, 'fjaguilera', 'fjaguilera', 'fjagui@gmail.com', 'fjagui@gmail.com', 1, NULL, '$2y$13$h2orC2clTwzH.1gd8EiEJOSolTmPm5BbiWwPadxRlNNE3/1EAI1SS', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Francisco José', 'Aguilera Ruiz', 1, NULL, NULL),
(5, 'jralbendin', 'jralbendin', 'jralbendin@gmail.com', 'jralbendin@gmail.com', 1, NULL, '$2y$13$LHMg8YEiyEYCWj5iifZXmORABgx7gZ51Apk7q2jqXkkf1WSiiufOu', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'José Ramón', 'Albendín Ramírez', 1, NULL, NULL),
(6, 'rcastillo', 'rcastillo', 'rcastillo@iesgrancapitan.org', 'rcastillo@iesgrancapitan.org', 1, NULL, '$2y$13$yr.N7N1dcxp/OtJQYmDkTOTvO0n1gGygt78UMNJT21ovvlEhF/ghG', '2018-10-07 09:49:28', NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Rafael', 'del Castillo Gomariz', 1, NULL, NULL),
(7, 'aperez', 'aperez', 'apeflo@gmail.com', 'apeflo@gmail.com', 1, NULL, '$2y$13$LwYndFyzJkwc0PJi74DiEOgzuE8O3MLAZXU2efaeufjuGiOvyJ/RC', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Amelia', 'Pérez Flores', 1, NULL, NULL),
(8, 'mctripiana', 'mctripiana', 'mctripiana@gmail.com', 'mctripiana@gmail.com', 1, NULL, '$2y$13$/Iz1VgVDOenurAlHI24QVeSirZHyZE2/Vm0I4DzP2q2I4wKAekka2', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Maria del Carmen', 'Tripiana', 1, NULL, NULL),
(10, 'rlozano', 'rlozano', 'rlozano@gmail.com', 'rlozano@gmail.com', 1, NULL, '$2y$13$3rBzXD69OjkxYR9Ns4EzkOuGjMxuTtRIDNhu4rVQZghDx8t8qgGfO', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'Rafael', 'Lozano Luján', 1, NULL, NULL),
(11, 'sinuhe', 'sinuhe', 'sinuhe@gmail.com', 'sinuhe@gmail.com', 1, NULL, '$2y$13$LxAlKhZqfAhlkqRSJHXDGuSc96h1hMboKK5lP6GpNtBIaC0kJoppq', NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 'sinuhe', 'sinuhe', 0, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `Distribution_module_teacher`
--
ALTER TABLE `Distribution_module_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `Distribution_project`
--
ALTER TABLE `Distribution_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `Request_company`
--
ALTER TABLE `Request_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
