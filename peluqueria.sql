-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-11-2018 a las 19:57:29
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peluqueria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add permission', 4, 'add_permission'),
(11, 'Can change permission', 4, 'change_permission'),
(12, 'Can delete permission', 4, 'delete_permission'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add tipo', 7, 'add_tipo'),
(20, 'Can change tipo', 7, 'change_tipo'),
(21, 'Can delete tipo', 7, 'delete_tipo'),
(22, 'Can add factura', 8, 'add_factura'),
(23, 'Can change factura', 8, 'change_factura'),
(24, 'Can delete factura', 8, 'delete_factura'),
(25, 'Can add empleado', 9, 'add_empleado'),
(26, 'Can change empleado', 9, 'change_empleado'),
(27, 'Can delete empleado', 9, 'delete_empleado'),
(28, 'Can add servicio', 10, 'add_servicio'),
(29, 'Can change servicio', 10, 'change_servicio'),
(30, 'Can delete servicio', 10, 'delete_servicio'),
(31, 'Can add subtipo', 11, 'add_subtipo'),
(32, 'Can change subtipo', 11, 'change_subtipo'),
(33, 'Can delete subtipo', 11, 'delete_subtipo'),
(34, 'Can add ingreso', 12, 'add_ingreso'),
(35, 'Can change ingreso', 12, 'change_ingreso'),
(36, 'Can delete ingreso', 12, 'delete_ingreso'),
(37, 'Can add egreso', 13, 'add_egreso'),
(38, 'Can change egreso', 13, 'change_egreso'),
(39, 'Can delete egreso', 13, 'delete_egreso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$5cMY1GFiIBdj$s3pghAeGvwbOBYcxJ0Z1zfpdHrZvhMXM91blWASaoOY=', '2018-11-28 01:45:48.010977', 1, 'admin', '', '', 'aijem04m@gmail.com', 1, 1, '2018-11-27 20:14:49.496728');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contabilidad_egreso`
--

CREATE TABLE `contabilidad_egreso` (
  `id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `insumos` int(11) NOT NULL,
  `instrumentacion` int(11) NOT NULL,
  `alquiler` int(11) NOT NULL,
  `totalServiciosPublicos` int(11) NOT NULL,
  `energia` int(11) NOT NULL,
  `agua` int(11) NOT NULL,
  `telefonia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contabilidad_egreso`
--

INSERT INTO `contabilidad_egreso` (`id`, `month`, `year`, `insumos`, `instrumentacion`, `alquiler`, `totalServiciosPublicos`, `energia`, `agua`, `telefonia`) VALUES
(1, 11, 2018, 40000, 20000, 90000, 90000, 60000, 10000, 20000),
(2, 10, 2018, 25000, 15000, 80000, 70000, 50000, 10000, 10000),
(3, 9, 2018, 30000, 15000, 90000, 80000, 50000, 10000, 20000),
(4, 8, 2018, 25000, 10000, 80000, 60000, 30000, 15000, 15000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contabilidad_ingreso`
--

CREATE TABLE `contabilidad_ingreso` (
  `id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `dueno` int(11) NOT NULL,
  `empleados` int(11) NOT NULL,
  `insumos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contabilidad_ingreso`
--

INSERT INTO `contabilidad_ingreso` (`id`, `total`, `dueno`, `empleados`, `insumos`) VALUES
(1, 1348000, 539200, 674000, 134800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish_ci,
  `object_repr` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-11-27 23:53:52.145456', '1', 'Egreso object', 1, '[{\"added\": {}}]', 13, 1),
(2, '2018-11-28 03:00:18.673343', '2', 'Egreso object', 1, '[{\"added\": {}}]', 13, 1),
(3, '2018-11-28 03:05:38.837900', '3', 'Egreso object', 1, '[{\"added\": {}}]', 13, 1),
(4, '2018-11-28 03:07:44.230256', '4', 'Egreso object', 1, '[{\"added\": {}}]', 13, 1),
(5, '2018-11-28 04:09:31.710387', '3', 'Egreso del mes 9 del 2018', 2, '[{\"changed\": {\"fields\": [\"alquiler\"]}}]', 13, 1),
(6, '2018-11-28 04:11:26.382479', '1', 'Egreso del mes 11 del 2018', 2, '[{\"changed\": {\"fields\": [\"totalServiciosPublicos\", \"agua\", \"telefonia\"]}}]', 13, 1),
(7, '2018-11-28 04:11:56.273058', '4', 'Egreso del mes 8 del 2018', 2, '[{\"changed\": {\"fields\": [\"alquiler\"]}}]', 13, 1),
(8, '2018-11-28 04:11:56.515892', '4', 'Egreso del mes 8 del 2018', 2, '[]', 13, 1),
(9, '2018-11-28 05:07:21.749255', '4', 'Egreso del mes 8 del 2018', 2, '[{\"changed\": {\"fields\": [\"insumos\", \"instrumentacion\", \"alquiler\", \"totalServiciosPublicos\", \"energia\", \"agua\", \"telefonia\"]}}]', 13, 1),
(10, '2018-11-28 05:13:27.271478', '4', 'Egreso del mes 8 del 2018', 2, '[{\"changed\": {\"fields\": [\"insumos\", \"instrumentacion\", \"alquiler\", \"totalServiciosPublicos\", \"energia\", \"telefonia\"]}}]', 13, 1),
(11, '2018-11-28 05:16:08.707174', '3', 'Egreso del mes 9 del 2018', 2, '[{\"changed\": {\"fields\": [\"insumos\", \"instrumentacion\", \"alquiler\", \"totalServiciosPublicos\", \"energia\", \"agua\", \"telefonia\"]}}]', 13, 1),
(12, '2018-11-28 05:18:54.440121', '2', 'Egreso del mes 10 del 2018', 2, '[{\"changed\": {\"fields\": [\"insumos\", \"instrumentacion\", \"alquiler\", \"totalServiciosPublicos\", \"energia\", \"agua\", \"telefonia\"]}}]', 13, 1),
(13, '2018-11-28 05:20:26.303078', '1', 'Egreso del mes 11 del 2018', 2, '[{\"changed\": {\"fields\": [\"insumos\", \"instrumentacion\", \"alquiler\", \"totalServiciosPublicos\", \"energia\", \"agua\", \"telefonia\"]}}]', 13, 1),
(14, '2018-11-28 05:21:11.678579', '1', 'Egreso del mes 11 del 2018', 2, '[{\"changed\": {\"fields\": [\"alquiler\"]}}]', 13, 1),
(15, '2018-11-28 05:31:10.907127', '32', 'Factura #32 - Mariana Florez. $ 34000 - Fecha 27/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(16, '2018-11-28 05:31:22.611255', '31', 'Factura #31 - Mariana Florez. $ 34000 - Fecha 26/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(17, '2018-11-28 05:34:23.100664', '30', 'Factura #30 - Sofia Bettin. $ 47000 - Fecha 22/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(18, '2018-11-28 05:34:29.529703', '29', 'Factura #29 - Sofia Bettin. $ 21000 - Fecha 21/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(19, '2018-11-28 05:34:41.253407', '28', 'Factura #28 - Maria Avila. $ 43000 - Fecha 20/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(20, '2018-11-28 05:34:49.221037', '27', 'Factura #27 - Maria Avila. $ 43000 - Fecha 19/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(21, '2018-11-28 05:34:59.696316', '26', 'Factura #26 - Juan Perez. $ 40000 - Fecha 15/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(22, '2018-11-28 05:35:14.464159', '25', 'Factura #25 - Juan Perez. $ 33000 - Fecha 14/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(23, '2018-11-28 05:35:22.515267', '24', 'Factura #24 - Mariana Florez. $ 40000 - Fecha 13/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(24, '2018-11-28 05:35:45.694661', '23', 'Factura #23 - Mariana Florez. $ 62000 - Fecha 12/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(25, '2018-11-28 05:35:54.078733', '22', 'Factura #22 - Sofia Bettin. $ 48000 - Fecha 8/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(26, '2018-11-28 05:36:02.858422', '21', 'Factura #21 - Sofia Bettin. $ 41000 - Fecha 7/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(27, '2018-11-28 05:36:08.778942', '20', 'Factura #20 - Maria Avila. $ 33000 - Fecha 6/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(28, '2018-11-28 05:36:16.824690', '19', 'Factura #19 - Maria Avila. $ 41000 - Fecha 5/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(29, '2018-11-28 05:36:36.978172', '18', 'Factura #18 - Juan Perez. $ 53000 - Fecha 1/11/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(30, '2018-11-28 05:36:46.310502', '17', 'Factura #17 - Juan Perez. $ 28000 - Fecha 31/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(31, '2018-11-28 05:37:04.539253', '16', 'Factura #16 - Mariana Florez. $ 13000 - Fecha 30/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(32, '2018-11-28 05:37:20.746826', '15', 'Factura #15 - Mariana Florez. $ 43000 - Fecha 29/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(33, '2018-11-28 05:37:33.544068', '14', 'Factura #14 - Sofia Bettin. $ 18000 - Fecha 25/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(34, '2018-11-28 05:37:48.231681', '13', 'Factura #13 - Sofia Bettin. $ 46000 - Fecha 24/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(35, '2018-11-28 05:38:02.574543', '12', 'Factura #12 - Maria Avila. $ 36000 - Fecha 23/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(36, '2018-11-28 05:38:19.320057', '11', 'Factura #11 - Maria Avila. $ 51000 - Fecha 22/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(37, '2018-11-28 05:38:33.190297', '10', 'Factura #10 - Juan Perez. $ 39000 - Fecha 18/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(38, '2018-11-28 05:38:44.895645', '9', 'Factura #9 - Juan Perez. $ 54000 - Fecha 17/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(39, '2018-11-28 05:38:53.689293', '8', 'Factura #8 - Mariana Florez. $ 50000 - Fecha 16/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(40, '2018-11-28 05:39:06.591791', '7', 'Factura #7 - Mariana Florez. $ 55000 - Fecha 15/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(41, '2018-11-28 05:39:35.308093', '6', 'Factura #6 - Sofia Bettin. $ 39000 - Fecha 14/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(42, '2018-11-28 05:40:08.710589', '6', 'Factura #6 - Sofia Bettin. $ 39000 - Fecha 11/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\"]}}]', 8, 1),
(43, '2018-11-28 05:40:27.981920', '5', 'Factura #5 - Sofia Bettin. $ 58000 - Fecha 10/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(44, '2018-11-28 05:40:39.207054', '4', 'Factura #4 - Maria Avila. $ 39000 - Fecha 9/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(45, '2018-11-28 05:40:54.940845', '3', 'Factura #3 - Maria Avila. $ 36000 - Fecha 8/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(46, '2018-11-28 05:41:08.681397', '2', 'Factura #2 - Juan Perez. $ 25000 - Fecha 4/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1),
(47, '2018-11-28 05:41:19.854246', '1', 'Factura #1 - Juan Perez. $ 26000 - Fecha 3/10/2018', 2, '[{\"changed\": {\"fields\": [\"day\", \"month\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(4, 'auth', 'permission'),
(3, 'auth', 'user'),
(13, 'contabilidad', 'egreso'),
(12, 'contabilidad', 'ingreso'),
(5, 'contenttypes', 'contenttype'),
(9, 'servicio', 'empleado'),
(8, 'servicio', 'factura'),
(10, 'servicio', 'servicio'),
(11, 'servicio', 'subtipo'),
(7, 'servicio', 'tipo'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-11-27 23:13:28.583780'),
(2, 'auth', '0001_initial', '2018-11-27 23:13:38.358388'),
(3, 'admin', '0001_initial', '2018-11-27 23:13:40.376990'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-11-27 23:13:40.448761'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-11-27 23:13:41.389412'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-11-27 23:13:42.218026'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-11-27 23:13:43.358938'),
(8, 'auth', '0004_alter_user_username_opts', '2018-11-27 23:13:43.431475'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-11-27 23:13:44.057551'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-11-27 23:13:44.132280'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-11-27 23:13:44.309122'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-11-27 23:13:45.118918'),
(13, 'contabilidad', '0001_initial', '2018-11-27 23:13:45.779564'),
(14, 'servicio', '0001_initial', '2018-11-27 23:13:52.307243'),
(15, 'sessions', '0001_initial', '2018-11-27 23:13:53.063016');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bdtjzu98qoe45sssfvuz29s93ifcf4q0', 'ZmI0YmYzNDlkODE3MzA1NTQxZTdkMGI5N2VhMjlkMzBlZmNhYjQ4Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiMDU0N2UyMDcyYjRmNjkwMzJmMmZmZGVlNzZiYmQzY2YwYmFlNzkyIn0=', '2018-12-11 23:52:36.286703'),
('lendz7515ghfjlvnuiwdboxhazxsxgol', 'OWM2ZjdhMjk4MjE4ZTM5MWE4ZmIxMmNhOTIwMmQ2MzVjNGI3MjdkYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImIwNTQ3ZTIwNzJiNGY2OTAzMmYyZmZkZWU3NmJiZDNjZjBiYWU3OTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-12-12 01:45:48.147328');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_empleado`
--

CREATE TABLE `servicio_empleado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(70) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_empleado`
--

INSERT INTO `servicio_empleado` (`id`, `nombre`, `apellidos`) VALUES
(1, 'Juan', 'Perez'),
(2, 'Maria', 'Avila'),
(3, 'Sofia', 'Bettin'),
(4, 'Mariana', 'Florez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_factura`
--

CREATE TABLE `servicio_factura` (
  `id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `empleado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_factura`
--

INSERT INTO `servicio_factura` (`id`, `total`, `day`, `month`, `year`, `fecha`, `empleado_id`) VALUES
(1, 26000, 3, 10, 2018, '2018-11-28 04:45:41.000000', 1),
(2, 25000, 4, 10, 2018, '2018-11-28 04:46:03.000000', 1),
(3, 36000, 8, 10, 2018, '2018-11-28 04:47:53.000000', 2),
(4, 39000, 9, 10, 2018, '2018-11-28 04:48:17.000000', 2),
(5, 58000, 10, 10, 2018, '2018-11-28 04:48:33.000000', 3),
(6, 39000, 11, 10, 2018, '2018-11-28 04:48:48.000000', 3),
(7, 55000, 15, 10, 2018, '2018-11-28 04:49:17.000000', 4),
(8, 50000, 16, 10, 2018, '2018-11-28 04:54:25.000000', 4),
(9, 54000, 17, 10, 2018, '2018-11-28 04:55:18.000000', 1),
(10, 39000, 18, 10, 2018, '2018-11-28 04:55:30.000000', 1),
(11, 51000, 22, 10, 2018, '2018-11-28 04:55:40.000000', 2),
(12, 36000, 23, 10, 2018, '2018-11-28 04:55:49.000000', 2),
(13, 46000, 24, 10, 2018, '2018-11-28 04:56:10.000000', 3),
(14, 18000, 25, 10, 2018, '2018-11-28 04:56:27.000000', 3),
(15, 43000, 29, 10, 2018, '2018-11-28 04:56:43.000000', 4),
(16, 13000, 30, 10, 2018, '2018-11-28 04:56:51.000000', 4),
(17, 28000, 31, 10, 2018, '2018-11-28 05:09:35.000000', 1),
(18, 53000, 1, 11, 2018, '2018-11-28 05:09:47.000000', 1),
(19, 41000, 5, 11, 2018, '2018-11-28 05:09:57.000000', 2),
(20, 33000, 6, 11, 2018, '2018-11-28 05:10:13.000000', 2),
(21, 41000, 7, 11, 2018, '2018-11-28 05:10:29.000000', 3),
(22, 48000, 8, 11, 2018, '2018-11-28 05:10:47.000000', 3),
(23, 62000, 12, 11, 2018, '2018-11-28 05:11:00.000000', 4),
(24, 40000, 13, 11, 2018, '2018-11-28 05:11:30.000000', 4),
(25, 33000, 14, 11, 2018, '2018-11-28 05:23:46.000000', 1),
(26, 40000, 15, 11, 2018, '2018-11-28 05:23:59.000000', 1),
(27, 43000, 19, 11, 2018, '2018-11-28 05:24:10.000000', 2),
(28, 43000, 20, 11, 2018, '2018-11-28 05:24:26.000000', 2),
(29, 21000, 21, 11, 2018, '2018-11-28 05:24:40.000000', 3),
(30, 47000, 22, 11, 2018, '2018-11-28 05:24:56.000000', 3),
(31, 34000, 26, 11, 2018, '2018-11-28 05:25:14.000000', 4),
(32, 34000, 27, 11, 2018, '2018-11-28 05:25:14.000000', 4),
(33, 51000, 28, 11, 2018, '2018-11-28 05:25:40.843570', 4),
(34, 28000, 28, 11, 2018, '2018-11-28 05:53:20.675627', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_factura_subtipos`
--

CREATE TABLE `servicio_factura_subtipos` (
  `id` int(11) NOT NULL,
  `factura_id` int(11) NOT NULL,
  `subtipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_factura_subtipos`
--

INSERT INTO `servicio_factura_subtipos` (`id`, `factura_id`, `subtipo_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 6),
(4, 2, 8),
(5, 2, 11),
(6, 3, 1),
(7, 3, 4),
(8, 3, 6),
(9, 4, 1),
(10, 4, 4),
(11, 4, 8),
(12, 4, 10),
(13, 5, 1),
(14, 5, 5),
(15, 5, 7),
(16, 5, 8),
(17, 5, 11),
(18, 6, 1),
(19, 6, 4),
(20, 6, 8),
(21, 6, 10),
(22, 7, 3),
(23, 7, 4),
(24, 7, 6),
(25, 7, 9),
(26, 7, 10),
(27, 8, 2),
(28, 8, 5),
(29, 8, 7),
(30, 8, 8),
(31, 9, 1),
(32, 9, 4),
(33, 9, 7),
(34, 9, 8),
(35, 9, 10),
(36, 10, 1),
(37, 10, 4),
(38, 10, 8),
(39, 10, 10),
(40, 11, 1),
(41, 11, 5),
(42, 11, 7),
(43, 11, 10),
(44, 12, 1),
(45, 12, 5),
(46, 12, 10),
(47, 13, 4),
(48, 13, 7),
(49, 13, 8),
(50, 13, 10),
(51, 14, 1),
(52, 14, 11),
(53, 15, 1),
(54, 15, 5),
(55, 15, 7),
(56, 16, 8),
(57, 16, 10),
(58, 17, 2),
(59, 17, 6),
(60, 17, 10),
(61, 18, 3),
(62, 18, 4),
(63, 18, 6),
(64, 18, 8),
(65, 18, 10),
(66, 19, 1),
(67, 19, 4),
(68, 19, 6),
(69, 19, 8),
(70, 20, 5),
(71, 20, 8),
(72, 20, 10),
(73, 21, 1),
(74, 21, 5),
(75, 21, 8),
(76, 21, 10),
(77, 22, 1),
(78, 22, 5),
(79, 22, 6),
(80, 22, 11),
(81, 23, 3),
(82, 23, 5),
(83, 23, 7),
(84, 23, 8),
(85, 23, 11),
(86, 24, 3),
(87, 24, 7),
(88, 24, 8),
(89, 24, 10),
(90, 25, 4),
(91, 25, 8),
(92, 25, 11),
(93, 26, 1),
(94, 26, 7),
(95, 26, 9),
(96, 26, 11),
(97, 27, 2),
(98, 27, 4),
(99, 27, 6),
(100, 27, 8),
(101, 28, 4),
(102, 28, 6),
(103, 28, 9),
(104, 28, 10),
(105, 29, 1),
(106, 29, 8),
(107, 29, 10),
(108, 30, 3),
(109, 30, 5),
(110, 30, 7),
(111, 31, 1),
(112, 31, 4),
(113, 31, 10),
(114, 32, 1),
(115, 32, 4),
(116, 32, 10),
(117, 33, 1),
(118, 33, 4),
(119, 33, 6),
(120, 33, 8),
(121, 33, 11),
(122, 34, 1),
(123, 34, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_servicio`
--

CREATE TABLE `servicio_servicio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_servicio`
--

INSERT INTO `servicio_servicio` (`id`, `nombre`) VALUES
(1, 'Cabello'),
(2, 'Manicure'),
(3, 'Pedicure');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_subtipo`
--

CREATE TABLE `servicio_subtipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_subtipo`
--

INSERT INTO `servicio_subtipo` (`id`, `nombre`, `precio`, `tipo_id`) VALUES
(1, 'Tipo 1', 8000, 1),
(2, 'Tipo 2', 10000, 1),
(3, 'Tipo 3', 12000, 1),
(4, 'Nivel A', 18000, 2),
(5, 'Nivel B', 20000, 2),
(6, 'Sencillo', 10000, 3),
(7, 'Extenso', 15000, 3),
(8, 'Corte', 5000, 4),
(9, 'Pintura', 7000, 4),
(10, 'Corte', 8000, 5),
(11, 'Pintura', 10000, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_tipo`
--

CREATE TABLE `servicio_tipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `servicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_tipo`
--

INSERT INTO `servicio_tipo` (`id`, `nombre`, `servicio_id`) VALUES
(1, 'Corte', 1),
(2, 'Tinturado', 1),
(3, 'Peinado', 1),
(4, 'Manos', 2),
(5, 'Pies', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `contabilidad_egreso`
--
ALTER TABLE `contabilidad_egreso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contabilidad_ingreso`
--
ALTER TABLE `contabilidad_ingreso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `servicio_empleado`
--
ALTER TABLE `servicio_empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio_factura`
--
ALTER TABLE `servicio_factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicio_factura_empleado_id_9a54570e_fk_servicio_empleado_id` (`empleado_id`);

--
-- Indices de la tabla `servicio_factura_subtipos`
--
ALTER TABLE `servicio_factura_subtipos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `servicio_factura_subtipos_factura_id_subtipo_id_550b5260_uniq` (`factura_id`,`subtipo_id`),
  ADD KEY `servicio_factura_sub_subtipo_id_622b7828_fk_servicio_` (`subtipo_id`);

--
-- Indices de la tabla `servicio_servicio`
--
ALTER TABLE `servicio_servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio_subtipo`
--
ALTER TABLE `servicio_subtipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicio_subtipo_tipo_id_eb6ab6a8_fk_servicio_tipo_id` (`tipo_id`);

--
-- Indices de la tabla `servicio_tipo`
--
ALTER TABLE `servicio_tipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicio_tipo_servicio_id_d7e4edff_fk_servicio_servicio_id` (`servicio_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contabilidad_egreso`
--
ALTER TABLE `contabilidad_egreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contabilidad_ingreso`
--
ALTER TABLE `contabilidad_ingreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `servicio_empleado`
--
ALTER TABLE `servicio_empleado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `servicio_factura`
--
ALTER TABLE `servicio_factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `servicio_factura_subtipos`
--
ALTER TABLE `servicio_factura_subtipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `servicio_servicio`
--
ALTER TABLE `servicio_servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicio_subtipo`
--
ALTER TABLE `servicio_subtipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `servicio_tipo`
--
ALTER TABLE `servicio_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `servicio_factura`
--
ALTER TABLE `servicio_factura`
  ADD CONSTRAINT `servicio_factura_empleado_id_9a54570e_fk_servicio_empleado_id` FOREIGN KEY (`empleado_id`) REFERENCES `servicio_empleado` (`id`);

--
-- Filtros para la tabla `servicio_factura_subtipos`
--
ALTER TABLE `servicio_factura_subtipos`
  ADD CONSTRAINT `servicio_factura_sub_factura_id_ce5d577a_fk_servicio_` FOREIGN KEY (`factura_id`) REFERENCES `servicio_factura` (`id`),
  ADD CONSTRAINT `servicio_factura_sub_subtipo_id_622b7828_fk_servicio_` FOREIGN KEY (`subtipo_id`) REFERENCES `servicio_subtipo` (`id`);

--
-- Filtros para la tabla `servicio_subtipo`
--
ALTER TABLE `servicio_subtipo`
  ADD CONSTRAINT `servicio_subtipo_tipo_id_eb6ab6a8_fk_servicio_tipo_id` FOREIGN KEY (`tipo_id`) REFERENCES `servicio_tipo` (`id`);

--
-- Filtros para la tabla `servicio_tipo`
--
ALTER TABLE `servicio_tipo`
  ADD CONSTRAINT `servicio_tipo_servicio_id_d7e4edff_fk_servicio_servicio_id` FOREIGN KEY (`servicio_id`) REFERENCES `servicio_servicio` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
