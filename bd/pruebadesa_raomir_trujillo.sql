-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2019 a las 04:32:54
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebadesa_raomir_trujillo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomb_depa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nomb_depa`, `created_at`, `updated_at`) VALUES
(1, 'Huila', NULL, NULL),
(2, 'Antioquia', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_11_13_202949_create_departamentos_table', 1),
(10, '2019_11_13_203016_create_municipios_table', 1),
(11, '2019_11_13_203032_create_tipo_terceros_table', 1),
(12, '2019_11_13_203043_create_terceros_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomb_muni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depa_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `nomb_muni`, `depa_id`, `created_at`, `updated_at`) VALUES
(1, 'Neiva', 1, NULL, NULL),
(2, 'Medellín', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terceros`
--

CREATE TABLE `terceros` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_tercero_id` int(10) UNSIGNED NOT NULL,
  `nombre_uno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_dos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_uno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_dos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento_id` int(10) UNSIGNED NOT NULL,
  `municipio_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `terceros`
--

INSERT INTO `terceros` (`id`, `tipo_identificacion`, `numero_identificacion`, `tipo_tercero_id`, `nombre_uno`, `nombre_dos`, `apellido_uno`, `apellido_dos`, `departamento_id`, `municipio_id`, `created_at`, `updated_at`) VALUES
(2, 'cc', '1084900898', 2, 'raomir', NULL, 'trujillo', 'peña', 1, 1, '2019-11-14 07:33:17', '2019-11-14 07:33:17'),
(3, 'ti', '928394', 1, 'jwbei', 'bfie', 'ufbwie', 'iufbei', 2, 2, '2019-11-14 07:46:14', '2019-11-14 08:18:59'),
(4, 'cc', '1084900898', 2, 'raomir', NULL, 'trujillo', 'peña', 1, 1, '2019-11-14 07:55:42', '2019-11-14 07:55:42'),
(5, 'eiru', '928394', 1, 'jwbei', 'bfie', 'ufbwie', 'iufbei', 2, 2, '2019-11-14 07:55:57', '2019-11-14 07:55:57'),
(6, 'cc', '1084900898', 2, 'raomir', NULL, 'trujillo', 'peña', 1, 1, '2019-11-14 08:05:36', '2019-11-14 08:05:36'),
(7, 'cc', '1084900898', 2, 'raomir', NULL, 'trujillo', 'peña', 1, 1, '2019-11-14 08:05:57', '2019-11-14 08:05:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_terceros`
--

CREATE TABLE `tipo_terceros` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomb_tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_terceros`
--

INSERT INTO `tipo_terceros` (`id`, `nomb_tipo`, `created_at`, `updated_at`) VALUES
(1, 'paciente', NULL, NULL),
(2, 'empleado', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipios_depa_id_foreign` (`depa_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `terceros`
--
ALTER TABLE `terceros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `terceros_tipo_tercero_id_foreign` (`tipo_tercero_id`),
  ADD KEY `terceros_departamento_id_foreign` (`departamento_id`),
  ADD KEY `terceros_municipio_id_foreign` (`municipio_id`);

--
-- Indices de la tabla `tipo_terceros`
--
ALTER TABLE `tipo_terceros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `terceros`
--
ALTER TABLE `terceros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipo_terceros`
--
ALTER TABLE `tipo_terceros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_depa_id_foreign` FOREIGN KEY (`depa_id`) REFERENCES `departamentos` (`id`);

--
-- Filtros para la tabla `terceros`
--
ALTER TABLE `terceros`
  ADD CONSTRAINT `terceros_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`),
  ADD CONSTRAINT `terceros_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`),
  ADD CONSTRAINT `terceros_tipo_tercero_id_foreign` FOREIGN KEY (`tipo_tercero_id`) REFERENCES `tipo_terceros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
