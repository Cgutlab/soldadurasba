-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-04-2019 a las 00:16:49
-- Versión del servidor: 10.2.23-MariaDB-cll-lve
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
-- Base de datos: `soldadurasba_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `type`, `description`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, 'ubicacion', 'Martín Rodriguez 932,Villa Adelina, Buenos Aires', 'fas fa-map-marker-alt', 'aa', NULL, NULL),
(2, 'telefono', '4766-8105 /4763-7355', 'fas fa-phone', 'bb', NULL, NULL),
(3, 'celular', '11 6801-1352', 'fab fa-whatsapp', 'cc', NULL, '2018-10-02 21:34:12'),
(4, 'correo', 'info@oxigenoreal.com', 'fas fa-envelope', 'dd', NULL, NULL),
(5, 'mapa', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3287.6298722801434!2d-58.558507884772794!3d-34.51226658048324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcba7f33fe651b%3A0x1dd7e3ef05ef1983!2sMart%C3%ADn+Rodr%C3%ADguez+932%2C+B1607ADD+Villa+Adelina%2C+Pcia+de+Buenos+Aires!5e0!3m2!1ses!2sar!4v1537791282627', '', 'ee', NULL, '2018-09-24 15:15:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas`
--

CREATE TABLE `descargas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descargas`
--

INSERT INTO `descargas` (`id`, `title`, `route`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Descargar Lista', 'descargas__icono.png', 'aa', '2018-09-19 22:26:53', '2018-09-19 22:26:53'),
(2, 'Especificaciones  Técnicas Soldadura MIG', 'descargas__icono.png', 'bb', '2018-09-19 22:27:14', '2018-09-19 22:27:14'),
(3, 'Nuevos Productos 2018', 'descargas__icono.png', 'cc', '2018-09-19 22:27:28', '2018-09-19 22:27:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `title`, `subtitle`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Nuestra empresa', NULL, '<p><span style=\"font-size:20px\"><strong>Nuestra firma est&aacute; situada en Villa Adelina zona norte del conurbano bonaerense. Llevamos m&aacute;s de 20 a&ntilde;os en el mercado brindando Soluciones Integrales en Soludadura y Corte. </strong></span></p>\r\n\r\n<p><span style=\"font-size:20px\">Contamos con: Distribuci&oacute;n de gases industriales (Arg&oacute;n, Co2, Nitr&oacute;geno,Ox&iacute;geno, Acetileno, Mezclas especiales) Venta de equipos MIG-MAG,TIG, Rectificadores. Plasma. Torchas. Taller propio de reparaci&oacute;n de equipos.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">Aportes, electrodos, busas, toberas, qu&iacute;micos, todos los insumos y consumibles para soldaduras. Cilindros, v&aacute;lvulas reguladoras de presi&oacute;n, gas&oacute;genos, solpleter&iacute;a. M&aacute;scaras fotosensibles, guantes, delantales, mantas, cortinas, accesorios.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><span style=\"color:#f1c40f\">Nuestros valores</span><br />\r\nResponsabilidad, seriedad, honestidad, calidad y la mejora continua.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><span style=\"color:#f1c40f\">Nuestra misi&oacute;n</span><br />\r\nEl compromiso constante de potenciar a nuestros clientes acerc&aacute;ndoles las mejores soluciones tecnol&oacute;gicas para efectuar su trabajo.</span></p>', 'empresa__empresa.jpg', NULL, '2018-10-29 16:17:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `familias`
--

INSERT INTO `familias` (`id`, `title`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Procesos de soldadura', 'no-image.jpg', 'aa', '2018-09-24 17:18:27', '2018-09-24 17:18:27'),
(2, 'Corte', 'no-image.jpg', 'bb', '2018-09-24 17:19:01', '2018-09-24 17:19:01'),
(3, 'Gases industriales', 'no-image.jpg', 'cc', '2018-09-24 17:19:35', '2018-09-24 17:19:35'),
(4, 'Accesorios', 'no-image.jpg', 'dd', '2018-09-24 17:19:42', '2018-09-24 17:19:42'),
(5, 'Consumibles', 'no-image.jpg', 'ee', '2018-09-24 17:20:57', '2018-09-24 17:20:57'),
(6, 'Electrodos y alambres', 'no-image.jpg', 'ff', '2018-09-24 17:21:33', '2018-09-24 17:21:33'),
(7, 'Seguridad y protección', 'no-image.jpg', 'gg', '2018-09-24 17:23:28', '2018-09-24 17:23:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garantias`
--

CREATE TABLE `garantias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `garantias`
--

INSERT INTO `garantias` (`id`, `title`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Comprometidos con la Excelencia en Calidad de nuestro catálogo', '<p>Departamento de Atenci&oacute;n al Cliente<br />\r\n<strong><span style=\"color:#ffab00\">(011) 4766-8105 /4763-7355 </span></strong><br />\r\n<br />\r\nConsultas Online a trav&eacute;s de nuestro e-mail<br />\r\n<strong><span style=\"color:#ffab00\">info@oxigenoreal.com.ar </span></strong></p>\r\n\r\n<p><strong>La garant&iacute;a OXIREAL permite </strong><br />\r\n&middot; Ratificar a trav&eacute;s del cliente, la confianza depositada en la Marca y en sus productos.<br />\r\n&middot; Mantener las M&aacute;quinas con Repuestos Originales, Mano de Obra Especializada y Equipamiento Homologado.<br />\r\n&middot; Distinguir a sus Productos con un mayor valor agregado.<br />\r\n&middot; Fidelizar a los clientes de la Marca.</p>', 'garantia__logo-soldadura_bsas_gris.png', NULL, '2018-10-29 15:21:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `name`, `image`, `order`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'logos__logo-soldadura_bsas_2.png', 'aa', 'header', NULL, '2018-10-29 15:14:29'),
(2, 'Footer', 'logos__logo-soldadura_bsas_gris_2.png', 'bb', 'footer', NULL, '2018-10-29 15:11:44'),
(3, 'Favicon', 'logos__favicon.png', 'cc', 'favicon', NULL, '2018-09-19 21:27:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `section`, `keyword`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 'home', '', '', 'aa', NULL, NULL),
(2, 'empresa', '', '', 'aa', NULL, NULL),
(3, 'productos', '', '', 'aa', NULL, NULL),
(4, 'garantia', '', '', 'aa', NULL, NULL),
(5, 'postventa', '', '', 'aa', NULL, NULL),
(6, 'descargas', '', '', 'aa', NULL, NULL),
(7, 'contacto', '', '', 'aa', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2018_09_19_133812_create_sliders_table', 1),
(13, '2018_09_19_133828_create_textos_table', 1),
(14, '2018_09_19_133843_create_logos_table', 1),
(15, '2018_09_19_133900_create_redes_table', 1),
(16, '2018_09_19_133913_create_datos_table', 1),
(17, '2018_09_19_133923_create_empresas_table', 1),
(18, '2018_09_19_133937_create_garantias_table', 1),
(19, '2018_09_19_133950_create_post_ventas_table', 1),
(20, '2018_09_19_134000_create_post_descargas_table', 1),
(21, '2018_09_19_135504_create_metadatos_table', 1),
(22, '2018_09_24_124049_create_familias_table', 2),
(23, '2018_09_24_124112_create_subfamilias_table', 2),
(24, '2018_09_24_124125_create_productos_table', 2),
(25, '2018_09_24_192753_create_galerias_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postventas`
--

CREATE TABLE `postventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `postventas`
--

INSERT INTO `postventas` (`id`, `title`, `subtitle`, `text`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Asesoramiento Personalizado', 'Para nuestros clientes', '<p>Contamos con un equipo de profesionales capacitados, y brindamos asesoramiento Personalizado adecuado a las necesidades de nuestros clientes.</p>', 'postventa__icono_01.jpg', 'aa', '2018-09-19 22:45:25', '2018-10-29 15:38:33'),
(2, 'Reparación de todas las marcas', 'Brindamos Mantenimiento', '<p>Contamos con unidades de de servicio especializadas y un equipo de trabajo profesional listo para afrontar reparaci&oacute;n de todas las marcas.</p>', 'postventa__icono_02.jpg', 'bb', '2018-09-19 22:46:41', '2018-10-29 15:38:43'),
(3, 'Repuestos y Accesorios', 'Asesoramiento a clientes', '<p>Para m&aacute;s informaci&oacute;n consulte por nuestras piezas originales y accesorios para su equipo.</p>', 'postventa__icono_03.jpg', 'cc', '2018-09-19 22:47:03', '2018-10-29 15:38:58'),
(4, 'Servicio de Post-Venta', 'Soluciones Integrales', '<p>Brindamos un Servicio de Post-Venta para mantener y garantizar la satisfacci&oacute;n de nuestros clientes y la resoluci&oacute;n de problem&aacute;ticas.</p>', 'postventa__icono_04.jpg', 'dd', '2018-09-19 22:47:27', '2018-10-29 15:39:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `important` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subfamily_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `code`, `name`, `image`, `descripcion`, `important`, `pdf`, `video`, `keyword`, `order`, `subfamily_id`, `created_at`, `updated_at`) VALUES
(1, '00000', 'Lincoln Electric Tomahawk 1538 Corte 35 Mm', 'productos__producto1.jpg', NULL, '1', NULL, NULL, NULL, 'aa', 2, '2018-09-24 22:06:32', '2018-09-24 22:06:32'),
(2, 'PCM508', 'Lincoln Electric INVERTEC® V350-PRO', 'productos__producto2.jpg', '<p>El Invertec&reg; V350-PRO es una fuente de corriente multiproceso ligera y port&aacute;til. Es una m&aacute;quina inteligente que permite las aplicaciones de soldadura con electrodo, TIG y MIG. hasta 50mm con aire comprimido, liviano con s&oacute;lo 41 kg de peso. &nbsp;</p>\r\n\r\n<p><strong>Caracter&iacute;sticas Superiores</strong><br />\r\n&middot; Excelente comportamiento en soldadura MIG CV y Electrodo<br />\r\n&middot; Control continuo de la Inductancia<br />\r\n&middot; Carcasa resistente y duradera con barras estabilizadoras y de arrastre<br />\r\n&middot; Displays digitales grandes e iluminados<br />\r\n&middot; Panel de control de dise&ntilde;o sencillo y f&aacute;cil utilizaci&oacute;n</p>', '1', NULL, 'TGNsEdm46JU', NULL, 'bb', 2, '2018-09-24 22:10:05', '2018-09-28 15:54:37'),
(3, '0000002', 'Cortadora Plasma Incut 70 15mm', 'productos__producto3.jpg', NULL, '1', NULL, NULL, NULL, 'cc', 2, '2018-09-24 22:13:52', '2018-09-24 22:13:52'),
(4, '0000003', 'Soldadora + Cortadora de Plasma 170 Amper Gladiator Iep', 'productos__producto4.jpg', NULL, '1', NULL, NULL, NULL, 'dd', 2, '2018-09-24 22:14:35', '2018-09-27 18:17:19'),
(5, '0000004', 'Lusqtoff Cortadora de Plasma Profesional 220v 8mm Incut-40t', 'productos__producto5.jpg', NULL, '0', NULL, NULL, NULL, 'ee', 2, '2018-09-24 22:15:12', '2018-09-24 22:15:12'),
(6, '0000005', 'Lincoln Handy Mig', 'productos__producto6.jpg', NULL, '0', NULL, NULL, NULL, 'ff', 2, '2018-09-24 22:15:29', '2018-09-24 22:15:29'),
(7, '0000006', 'Lincoln Electric Tomahawk 1538 Corte 35 Mm', 'productos__producto7.jpg', NULL, '0', NULL, NULL, NULL, 'gg', 2, '2018-09-24 22:15:49', '2018-09-24 22:15:49'),
(8, '000', 'Soldadura MIG/MAG (GTAW)', 'no-image.jpg', '<table border=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\"><strong>Descripci&oacute;n</strong>\r\n			<p>El proceso de soldadura MIG/MAG consiste en mantener un arco entre un electrodo de alambre s&oacute;lido continuo y la pieza a soldar. Tanto el arco como el ba&ntilde;o de soldadura se protegen mediante un gas que puede ser activo(co2) o inerte(argon) y se canaliza por la tobera de la torcha,alrededor del alambre.<br />\r\n			&nbsp;</p>\r\n\r\n			<p><strong>Caracter&iacute;sticas</strong></p>\r\n\r\n			<p>El procedimiento es adecuado para unir la mayor&iacute;a de materiales (Aceros no aleados y de baja aleaci&oacute;n, Aceros inoxidables, Aluminio y Metales no ferrosos) disponi&eacute;ndose de una amplia variedad de metales de aporte.<br />\r\n			&nbsp;</p>\r\n\r\n			<p><strong>Variantes del proceso:</strong></p>\r\n\r\n			<p><br />\r\n			Uso de alambre tubular con elementos de aleaci&oacute;n en el interior de un tubo de acero con gas de protecci&oacute;n</p>\r\n\r\n			<p>Uso de otro alambre tubular sin gas protector, permitiendo soldar al aire libre</p>\r\n\r\n			<p><strong><strong>Ventajas:</strong>&nbsp;Alta productividad. Alta calidad. Bajo aporte de calor ocasiona menor distorsi&oacute;n del material. No deja escoria. Baja emisi&oacute;n de humos. Se pueden realizar soldaduras largas sin empalme entre cordones.&nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '0', NULL, '2Bfmn3mOdQs', 'Soldadura, MIG/MAG, (GTAW)', 'aa', 4, '2018-10-02 23:27:30', '2018-10-02 23:37:12'),
(13, '000', 'Soldadura TIG (GTAW)', 'no-image.jpg', '<p><strong>Descripci&oacute;n</strong></p>\r\n\r\n<p>La soldadura TIG (Tungsten Inert Gas) o GTAW (Gas Tungsten Arc Welding), seg&uacute;n la terminolog&iacute;a AWS, es un proceso de soldadura y arco con electrodo infusible (de tungsteno), bajo la protecci&oacute;n del gas inerte (arg&oacute;n), que se lleva a cabo con o sin aportar material. &nbsp;El arco se establece entre el electrodo de tungsteno y la pieza. &nbsp;</p>\r\n\r\n<p>La soldadura TIG puede emplearse para soldar aluminio, acero inoxidable, magnesio, bronce, plata, cobre, n&iacute;quel y aleaciones, hierro fundido, aceros dulces, aceros aleados de varios espesores.&nbsp;</p>\r\n\r\n<p>La soldadura TIG proporciona uniones de alta calidad.&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Caracter&iacute;sticas</strong></p>\r\n\r\n<p>Utiliza gases de protecci&oacute;n inertes. No necesita limpieza de cord&oacute;n. No deja escoria. Suelda espesores finos (desde 0,3mm). Puede soldarse con o sin material de aporte. Deposita metal de soldadura de alta calidad. Suelda en toda posici&oacute;n. Se utiliza en las uniones que requieren alta calidad de soldadura. Pueden soldarse materiales sensibles a la oxidaci&oacute;n (acero inoxidable, aluminio, titanio, cobre, etc.)<br />\r\n&nbsp;</p>\r\n\r\n<p>Ventajas:</p>\r\n\r\n<p>&bull; La superficie soldada queda limpia, sin escoria ni residuos de fundente.</p>\r\n\r\n<p>&bull; Permite soldar espesores delgados con facilidad (0.3mm)</p>\r\n\r\n<p>&bull; Adecuada para soldaduras de responsabilidad (pasada de ra&iacute;z).</p>\r\n\r\n<p>&bull; Produce cordones de gran resistencia excelente acabado.</p>\r\n\r\n<p>&bull; El arco es visible y se puede soldar en cualquier posici&oacute;n&nbsp;</p>\r\n\r\n<p>&bull; Hay mejor protecci&oacute;n de la zona de soldadura por la acci&oacute;n del gas.</p>\r\n\r\n<p>&bull; Disminuye la posibilidad de grietas por la acci&oacute;n del hidr&oacute;geno en aceros susceptibles a ellas.</p>\r\n\r\n<p>&bull; Se pueden soldar metales no ferrosos sin necesidad de fundentes.</p>\r\n\r\n<p>&bull; No produce humos ni vapores da&ntilde;inos para la salud.</p>', '0', NULL, 'xtjbgp9H6G4', 'so', 'aa', 5, '2018-10-02 23:35:58', '2018-10-02 23:35:58'),
(14, '000', 'Soldadura por electrodos revestidos', 'no-image.jpg', '<p><strong>Descripci&oacute;n</strong></p>\r\n\r\n<p>En este proceso de soldadura, la fusion del metal se produce por el calor generado por un arco el&eacute;ctrico, establecido entre el extremo del electrodo revestido y la pieza.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Caracter&iacute;sticas</strong></p>\r\n\r\n<p>El electrodo revestido constituye el metal de aporte de la soldadura y est&aacute; formado por una parte central met&aacute;lica conductora de la corriente, llamada &quot;alma&quot;, recubierta por una capa no conductora de la corriente, llamada &quot;revestimiento&quot;. La funci&oacute;n principal del revestimiento es la de proteger el metal fundido del aire que lo rodea, ya sea, tanto durante la transferencia a trav&eacute;s del arco, como durante la solidificaci&oacute;n.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Ventajas y Desventajas</strong></p>\r\n\r\n<p><strong>Ventajas:</strong>&nbsp; No utiliza gas de protecci&oacute;n, el revestimiento del electrodo protege el arco y la soldadura. Permite soldar en todas las posiciones. Las m&aacute;quinas son de bajo costo y sencillas de calibrar.Tiene mejor accesibilidad a distancia y en altura porque pueden realizarse prolongaciones. Sirve para realizar soldadura de recargue. Puede utilizar con gran variedad de aleaciones.&nbsp;<br />\r\n<br />\r\n<strong>Desventajas:</strong>&nbsp;Deja escoria superficial que requiere una limpieza posterior. Es el proceso de soldadura con m&aacute;s baja productividad y mas dependiente de la habilidad del operario y de su cansancio</p>', '0', NULL, NULL, 'soldadura, electrodos', 'aa', 6, '2018-10-02 23:38:30', '2018-10-02 23:38:30'),
(15, 'ver tabla', 'Difusores para torcha MIG', 'productos__flia-difusor_2-2.jpg', '<p>Esta pieza distribuye el gas dentro de la tobera para proteger la zona de soldadura.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tabladifusoresptorchamig.jpg\" /></p>', '0', NULL, NULL, 'soldadura, MIG/MAG', 'aa', 13, '2018-10-02 23:42:58', '2018-10-02 23:42:58'),
(16, 'ver tabla', 'Difusores para torchas TBI', 'productos__gasverteiler_1.jpg', '<p>Esta pieza distribuye el gas dentro de la tobera para proteger la zona de soldadura.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tabladifusorestbi.jpg\" style=\"height:212px; width:568px\" /></p>', '0', NULL, NULL, 'consumibles', 'bb', 13, '2018-10-02 23:47:17', '2018-10-02 23:47:17'),
(17, 'ver tabla', 'Liners para torcha MIG', 'productos__324p204554-m-21.jpg', '<p>Tambi&eacute;n llamado Sirga. Espiral de acero que sirve de conducto para el alambre de soldadura. El color del recubrimiento pl&aacute;stico indica el di&aacute;metro del alambre que se conduce en su interior.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablalinerptorchamig.jpg\" /></p>', '0', NULL, NULL, 'consumibles', 'cc', 13, '2018-10-02 23:49:03', '2018-10-02 23:49:03'),
(18, '000', 'Liners para torchas TBI', 'productos__drahtfuerungen_.jpg', '<p>Espiral de acero que sirve de conducto para el alambre de soldadura. El color del recubrimiento pl&aacute;stico indica el di&aacute;metro del alambre que se conduce en su interior.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tabla-linerstbi.jpg\" style=\"height:437px; width:568px\" /></p>', '0', NULL, NULL, 'consumibles', 'dd', 13, '2018-10-02 23:50:41', '2018-10-02 23:50:41'),
(19, 'ver tabla', 'Portapicos para torcha MIG', 'productos__342p006014-m_2-25.jpg', '<p>Elemento que sujeta el tubo de contacto en la Torcha MIG.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablaportapicostoberasparatorchamig.jpg\" /></p>', '0', NULL, NULL, 'consumibles', 'ee', 13, '2018-10-02 23:53:22', '2018-10-02 23:53:22'),
(20, 'ver tabla', 'Portapicos para tochas TBI', 'productos__duesenstock_.jpg', '<p>Portapicos, Resortes y Portatoberas</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tabla-portapicostbi.jpg\" /></p>', NULL, NULL, NULL, 'consumibles', 'ff', 13, '2018-10-02 23:54:23', '2018-10-02 23:54:23'),
(21, 'ver tabla', 'Toberas diversas TBI', 'productos__gasduesen_.jpg', '<p>Su funci&oacute;n es enfocar el flujo de gas para proteger el arco de soldadura. Existen varios tipos de toberas que se adaptan para diferentes aplicaciones.</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"http://www.baw.com.ar/images/tablatocerascilindricastbi.jpg\" style=\"height:124px; width:614px\" /></p>\r\n\r\n<p><em>Tobera levemente c&oacute;nica</em>&nbsp;que cubre el rango m&aacute;s amplio de aplicaciones.</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"http://www.baw.com.ar/images/tabla-toberaconicatbi.jpg\" style=\"height:148px; width:613px\" /></p>\r\n\r\n<p><em>Tobera rinconera,</em>&nbsp;como la palabra lo indica, se utiliza para soldadura en esquinas interiores y de dif&iacute;cil acceso.</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"http://www.baw.com.ar/images/tabla-toberarinconeratbi.jpg\" style=\"height:146px; width:611px\" /></p>\r\n\r\n<p><em>Tobera de punto</em>: utilizada para punteo. Tiene dos patines que permiten el arrastre de la torcha y facilitan el posicionamiento en cada uno de los puntos de soldadura.</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"http://www.baw.com.ar/images/tabla-toberasdepunteotbi.jpg\" /></p>', '0', NULL, NULL, 'consumibles', 'gg', 13, '2018-10-02 23:55:36', '2018-10-02 23:55:36'),
(22, 'ver tabla', 'Toberas para torcha MIG', 'productos__345p011003-m_1-25.jpg', '<p>Su funci&oacute;n es enfocar el flujo de gas para proteger el arco de soldadura. Existen varios tipos de toberas que se adaptan para diferentes aplicaciones.</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tablatoberacilindricaptorchamig2.jpg\" style=\"height:95px; width:538px\" /></p>\r\n\r\n<p><em>Tobera levemente c&oacute;nica</em>&nbsp;que cubre el rango m&aacute;s amplio de aplicaciones.</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tablatoberaconicaptorchamig.jpg\" style=\"height:138px; width:543px\" /></p>\r\n\r\n<p><em>Tobera rinconera</em>, como la palabra lo indica, se utiliza para soldaduras en esquinas interiores y de dif&iacute;cil acceso.</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tablatoberarinconeraptorchamig.jpg\" style=\"height:96px; width:545px\" /></p>\r\n\r\n<p>&nbsp;</p>', '0', NULL, NULL, 'consumibles', 'hh', 13, '2018-10-02 23:56:28', '2018-10-02 23:56:28'),
(23, 'ver tabla', 'Tubos de contacto para torcha MIG', 'productos__340p061073-m-29.jpg', '<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tablatubocontactoptorchamig3.jpg\" /></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"http://www.baw.com.ar/images/tablasignificadodesimbolo1.jpg\" /></p>', '0', NULL, NULL, 'consumibles', 'ii', 13, '2018-10-02 23:57:50', '2018-10-02 23:57:50'),
(24, 'ver tabla', 'tubos de contacto para torchas TBI', 'productos__stromduese.jpg', '<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tubos-de-contacto-tbi.jpg\" style=\"height:727px; width:727px\" /></p>\r\n\r\n<p><em><strong>Referencia</strong></em></p>\r\n\r\n<p>ECu = Cobre Electrol&iacute;tico</p>\r\n\r\n<p>CuCrZr = Cobre-Cromo-Zirconio</p>', '0', NULL, NULL, 'consumibles', 'jj', 13, '2018-10-02 23:58:50', '2018-10-02 23:58:50'),
(25, 'ver tabla', 'Busa TIG WPM-12', 'productos__14n58_2-2-25.jpg', '<p>Busa cer&aacute;mica para Torcha TIG</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablabusa12.jpg\" /></p>', '0', NULL, NULL, 'consumibles', 'aa', 14, '2018-10-03 15:22:16', '2018-10-03 15:22:16'),
(26, 'ver tabla', 'Busa TIG WPM-24', 'productos__flia-53n-2-2.jpg', '<p>Busa cer&aacute;mica para Torcha TIG</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablabusa24.jpg\" /></p>', '0', NULL, NULL, 'consumibles', 'bb', 14, '2018-10-03 15:28:30', '2018-10-03 15:28:30'),
(27, 'ver tabla', 'Busa WPM-17/18/26 lente gaseoso', 'productos__54n15_2-2-24.jpg', '<p>Busa cer&aacute;mica para Torcha TIG. Esta Busa se usa con Lente Gaseoso y sirve para minimizar el consumo de Arg&oacute;n.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablabusa171826LENTE.jpg\" /></p>', '0', NULL, NULL, 'consumibles', 'cc', 14, '2018-10-03 15:29:49', '2018-10-03 15:29:49'),
(28, 'ver tabla', 'Busa WPM-9/20/25', 'productos__13n09_1-2-23.jpg', '<p>Busa cer&aacute;mica para Torcha TIG</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablabusa92025.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'dd', 14, '2018-10-03 15:34:31', '2018-10-03 15:34:31'),
(29, 'ver tabla', 'Busa WPM-9/20/25/24 lente gaseoso', 'productos__53n59_2-2-24.jpg', '<p>Busa cer&aacute;mica para Torcha TIG. Esta Busa se usa con Lente Gaseoso y sirve para minimizar el consumo de Arg&oacute;n.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablabusa9202524LENTE.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'ee', 14, '2018-10-03 15:36:16', '2018-10-03 15:36:16'),
(30, 'ver tabla', 'Busa WPM/17/18/26', 'productos__flia-10n_1-2-2.jpg', '<p>Busa cer&aacute;mica para Torcha TIG</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablabusa171826.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'ff', 14, '2018-10-03 15:37:58', '2018-10-03 15:37:58'),
(31, '11WP65-M', 'Difusor para WPM-12', 'productos__11wp65-m_1-2-24.jpg', '<p>Difusor para Torcha TIG apto para todos los di&aacute;metros.</p>', '0', NULL, NULL, 'consumibles TIG', 'gg', 14, '2018-10-03 15:39:03', '2018-10-03 15:40:57'),
(32, 'ver tabla', 'Difusor TIG WPM-24', 'productos__53n19-m_1-2-27 (1).jpg', '<p>Difusor para Torcha TIG</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tabladifusor24.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'hh', 14, '2018-10-03 15:40:35', '2018-10-03 15:41:33'),
(33, 'ver tabla', 'Difusor TIG WPM-9/20/25', 'productos__flia-dif-13n-m_1-2-2.jpg', '<p>Difusor para Torcha TIG</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tabladifusor92025.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'ii', 14, '2018-10-03 15:48:57', '2018-10-03 15:49:24'),
(34, 'ver tabla', 'Difusor WPM-17/18/26', 'productos__10n27-m_2-2-237.jpg', '<p>Difusor para Torcha TIG</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tabladifusor171826.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'jj', 14, '2018-10-03 15:52:49', '2018-10-03 15:52:49'),
(35, 'ver tabla', 'Lente gaseoso WPM-12', 'productos__11gl32_6-2-26.jpg', '<p>Lente Gaseoso para Torcha TIG. Su funci&oacute;n es optimizar el flujo de Arg&oacute;n alrededor de la soldadura minimizando el consumo de gas. Adem&aacute;s presiona y cierra la mordaza para sujetar al electrodo de tungsteno.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablalentegas12.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'kk', 14, '2018-10-03 15:54:18', '2018-10-03 15:54:18'),
(36, 'ver tabla', 'Lente gaseoso WPM-17/18/26', 'productos__45v26_2-2-29.jpg', '<p>Lente Gaseoso para Torcha TIG. Su funci&oacute;n es optimizar el flujo de Arg&oacute;n alrededor de la soldadura minimizando el consumo de gas. Adem&aacute;s presiona y cierra la mordaza para sujetar al electrodo de tungsteno.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablalentegas17.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'll', 14, '2018-10-03 15:55:37', '2018-10-03 15:55:37'),
(37, 'ver tabla', 'Lente gaseoso WPM-9/20/24', 'productos__45v44_2-2-24.jpg', '<p>Lente Gaseoso para Torcha TIG. Su funci&oacute;n es optimizar el flujo de Arg&oacute;n alrededor de la soldadura minimizando el consumo de gas. Adem&aacute;s presiona y cierra la mordaza para sujetar al electrodo de tungsteno.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablalentegas9.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'mm', 14, '2018-10-03 15:57:32', '2018-10-03 15:57:32'),
(38, 'ver tabla', 'Mordaza para WPM-12', 'productos__85z16-m_2-2-29.jpg', '<p>Mordaza que sujeta al electrodo de tungsteno. Su di&aacute;metro interior debe ser el mismo que el del electrodo utilizado.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablamordaza12.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'nn', 14, '2018-10-03 15:59:42', '2018-10-03 15:59:42'),
(39, 'ver tabla', 'Mordaza para WPM-9/20/25', 'productos__flia-13n-m_3-2-2.jpg', '<p>Mordaza que sujeta al electrodo de tungsteno. Su di&aacute;metro interior debe ser el mismo que el del electrodo utilizado.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablamordaza92025.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'oo', 14, '2018-10-03 16:00:52', '2018-10-03 16:00:52'),
(40, 'ver tabla', 'Mordaza WPM-24', 'productos__24c332-m_2-2-23.jpg', '<p>Mordaza que sujeta al electrodo de tungsteno. Su di&aacute;metro interior debe ser el mismo que el del electrodo utilizado.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablamordaza24.jpg\" /></p>', '0', NULL, NULL, 'consumibles TIG', 'pp', 14, '2018-10-03 16:01:47', '2018-10-03 16:02:18'),
(41, '-', 'CONSUMIBLES CORTE PLASMA HYPERTHERM', 'productos__pmx_electrode.jpg', '<p>Hypertherm se dedica a ofrecer los &uacute;ltimos avances de tecnolog&iacute;a para sistemas plasma, viejos y nuevos. M&aacute;s informaci&oacute;n de las tecnolog&iacute;as que oferta Hypertherm y los beneficios que aportan.</p>\r\n\r\n<p>&nbsp;</p>', '0', NULL, NULL, 'consumibles corte plasma manual', 'aa', 15, '2018-10-03 16:04:04', '2018-10-03 16:04:04'),
(42, '-', 'TORCHA DURAMAX HRT Y CONSUMIBLES HYPERTHERM', 'productos__duramax75ht-hrt.jpg', '<p>Torcha DURAMAX manual para retrofit.&nbsp;<br />\r\nAdaptable a equipos Powermax1000, Powermax1250 y Powermax1650</p>', NULL, NULL, NULL, 'consumibles corte plasma manual', 'bb', 15, '2018-10-03 16:06:45', '2018-10-03 16:06:45'),
(43, '-', 'TORCHA MAXPRO200 MANUAL Y CONSUMIBLES HYPERTHERM', 'productos__torchamanualmaxpro200.jpg', '<p>Torcha para corte manual 200AMP al 100%.<br />\r\nEquipo MAXPRO200.&nbsp;<br />\r\nRefrigerada por agua.</p>\r\n\r\n<p><strong>Aire &ndash; acero al carbono / acero inoxidable / aluminio</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/maxpro200consumibles-4.jpg\" style=\"height:193px; width:600px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/maxpro200consumibles5.jpg\" style=\"height:130px; width:600px\" /></p>\r\n\r\n<p><strong>O<sub>2</sub>&ndash; acero al carbono</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://www.baw.com.ar/images/maxpro200consumibles-6.jpg\" style=\"height:193px; width:600px\" /></strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/maxpro200tablaconsumibles-6.jpg\" style=\"height:110px; width:600px\" /></p>', '0', NULL, NULL, 'consumibles corte plasma manual', 'cc', 15, '2018-10-03 16:08:42', '2018-10-03 16:08:42'),
(44, '-', 'TORCHA T30V MANUAL Y CONSUMIBLES HYPERTHERM', 'productos__t30v.jpg', '<p>Torcha manual para equipo Powermax 30.&nbsp;<br />\r\nLongitud 6m.</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/consumiblespwm30.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/pwm30consumiblescodigos.jpg\" style=\"height:67px; width:600px\" /></p>', '0', NULL, NULL, 'consumibles corte plasma manual', 'dd', 15, '2018-10-03 16:09:59', '2018-10-03 16:09:59'),
(45, '-', 'TORCHA T45V MANUAL Y CONSUMIBLES HYPERTHERM', 'productos__t45v.jpg', '<p>Torcha MANUAL para Powermax45</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/pwm45mec-consumibles.jpg\" style=\"height:146px; width:600px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/pwm45mec-tabladeconsumibles.jpg\" style=\"height:174px; width:600px\" /></p>', '0', NULL, NULL, 'consumibles corte plasma manual', 'ee', 15, '2018-10-03 16:11:22', '2018-10-03 16:12:20'),
(46, '-', 'CONSUMIBLES CORTE PLASMA HYPERTHERM', 'productos__pmx_electrode (1).jpg', '<p>Hypertherm se dedica a ofrecer los &uacute;ltimos avances de tecnolog&iacute;a para sistemas plasma, viejos y nuevos. M&aacute;s informaci&oacute;n de las tecnolog&iacute;as que oferta Hypertherm y los beneficios que aportan.</p>', '0', NULL, NULL, 'consumibles corte plasma mecanizado', 'aa', 16, '2018-10-03 16:13:56', '2018-10-03 16:13:56'),
(47, '-', 'TORCHA MAXPRO200 MECANIZADA Y CONSUMIBLES HYPERTHERM', 'productos__torcha-maxpro200-mec.jpg', '<p>Torcha recta para equipo MAX PRO 200.&nbsp;<br />\r\nCapacidad: 200AMP al 100%<br />\r\nRefrigerada por agua</p>\r\n\r\n<p>&nbsp;<strong>Aire &ndash; acero al carbono / acero inoxidable / aluminio</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://www.baw.com.ar/images/maxpro200consumibles-1.jpg\" style=\"height:198px; width:600px\" /></strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/maxpro200tablaconsumibles1.jpg\" style=\"height:170px; width:600px\" /></p>\r\n\r\n<p><strong>O<sub>2</sub>&ndash; acero al carbono</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://www.baw.com.ar/images/maxpro200consumibles-2.jpg\" style=\"height:198px; width:600px\" /></strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/mqaxpro200tabladeconsumibles2.jpg\" style=\"height:175px; width:600px\" /></p>\r\n\r\n<p><strong>N<sub>2</sub>&nbsp;&ndash; acero inoxidable / aluminio</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://www.baw.com.ar/images/maxpro200consumibles3.jpg\" style=\"height:199px; width:600px\" /></strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/maxpro200consumibles4.jpg\" style=\"height:133px; width:600px\" /></p>', '0', NULL, NULL, 'consumibles corte plasma mecanizado', 'bb', 16, '2018-10-03 16:16:08', '2018-10-03 16:16:08'),
(48, '-', 'TORCHA T45V MECANIZADA Y CONSUMIBLES', 'productos__hypertherm-powermax-45-plasma-cutter-25-machine-torch-088010-800x533.jpg', '<p>Torcha RECTA para POWERMAX 45 (uso mecanizado)</p>\r\n\r\n<p><strong>Piezas para corte con arrastre, Torcha T45v</strong></p>\r\n\r\n<p><strong>Las boquillas y los electrodos est&aacute;n disponibles en envases con diferentes cantidades.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://www.baw.com.ar/images/pwm45mec-consumibles.jpg\" style=\"height:121px; width:600px\" /></strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/pwm45mec-tabladeconsumibles.jpg\" style=\"height:144px; width:600px\" /></p>', '0', NULL, NULL, 'consumibles corte plasma mecanizado', 'cc', 16, '2018-10-03 16:59:12', '2018-10-03 16:59:12'),
(49, '-', 'TORCHAS Y CONSUMIBLES DURAMAX MRT - HYPERTHERM', 'productos__duramax-mrt.jpg', '<p>Torcha DURAMAX mecanizada para retrofit.&nbsp;<br />\r\nAdaptable a Powermax1000, Powermax1250 y Powermax1650</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/consumiblespwm65.jpg\" /></p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/pwm85mectablaconsumibles.jpg\" style=\"height:185px; width:600px\" /></p>', '0', NULL, NULL, 'consumibles corte plasma mecanizado', 'dd', 16, '2018-10-03 17:00:45', '2018-10-03 17:00:45'),
(50, 'ver tabla', 'Calefactor SR', 'productos__cb2001_1.jpg', '<p>Calefactor para Gas CO2 Ferrolan sin regulaci&oacute;n de temperatura. Potencia 30 w. Recomendado para trabajos de soldadura en planta.</p>\r\n\r\n<p>Los Calefactores CO2 son dispositivos dise&ntilde;ados para calefaccionar los gases a la salida del tubo, antes de entrar al reductor de presi&oacute;n. Su funci&oacute;n principal es evitar el congelamiento de la humedad durante el proceso de expansi&oacute;n en el regulador.</p>\r\n\r\n<p>La caracter&iacute;stica principal que diferencia a los Calefactores Ferrolan de los de la competencia es que el gas debe pasar por dentro del calefactor, por lo cual los tiempos para calentar el gas son m&aacute;s cortos, ya que la competencia fabrica calefactores en forma de herradura que van colocados sobre el ca&ntilde;o.&nbsp;</p>\r\n\r\n<p>Los Calefactores Modelo SR pueden ser para diferentes voltajes 220,110 o 24 v, como se muestra en la siguiente tabla.</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tablacalefactorescodigosSR-A.jpg\" /></p>', '0', NULL, NULL, 'accesorios MIG', 'aa', 7, '2018-10-03 17:11:11', '2018-10-03 17:11:11'),
(51, 'ver tabla', 'Calefactor TC', 'productos__cb2002_2.jpg', '<p>Calefactor para Gas CO2 Ferrolan con regulaci&oacute;n de temperatura a 70&deg;C. Potencia 200 w con alta recuperaci&oacute;n. Recomendado para trabajar con mayores caudales de gas, incluso a la intemperie.</p>\r\n\r\n<p>Los Calefactores CO2 son dispositivos dise&ntilde;ados para calefaccionar los gases a la salida del tubo, antes de entrar al reductor de presi&oacute;n. Su funci&oacute;n principal es evitar el congelamiento de la humedad durante el proceso de expansi&oacute;n en el regulador.</p>\r\n\r\n<p>La caracter&iacute;stica principal que diferencia los Calefactores Ferrolan de los de la competencia es que el gas debe pasar por dentro del calefactor, por lo cual los tiempos para calentar el gas son m&aacute;s cortos, ya que la competencia fabrica calefactores en forma de herradura que van colocados sobre el ca&ntilde;o.</p>\r\n\r\n<p>Los Calefactores ModeloTC pueden ser para diferentes voltajes 220 o 110 , como se muestra en la siguiente tabla.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tablacalefactorescodigosTC-A.jpg\" /></p>', '0', NULL, NULL, NULL, 'bb', 7, '2018-10-03 17:12:16', '2018-10-03 17:12:16'),
(52, '-', 'Carro para soldadura automática KAT GULLCO', 'productos__carritos-soldadura-automaticos-57995-5697341.jpg', NULL, '0', NULL, NULL, 'accesorios MIG', 'cc', 7, '2018-10-03 17:13:35', '2018-10-03 17:13:35'),
(53, 'NFC18X18', 'Cortina para box de soldadura 1.8X1.8M/0.035MM', 'productos__nfc18x18_1.jpg', '<p>La cortina permite construir un box de soldadura y/o corte.</p>', '0', NULL, NULL, 'accesorios MIG', 'dd', 7, '2018-10-03 17:14:59', '2018-10-03 17:14:59'),
(54, 'ver tabla', 'Euroconectores hembra FERROLAN', 'no-image.jpg', '<p><img src=\"http://www.baw.com.ar/images/tablaeuroconectorhembra2.jpg\" /></p>', '0', NULL, NULL, 'accesorios MIG', 'ee', 7, '2018-10-03 17:16:37', '2018-10-03 17:16:37'),
(55, 'ver tabla', 'Manta ignifuga', 'productos__nfwb18x18-y-nfwb18x24-_2.jpg', '<p>Excelente protecci&oacute;n contra las proyecciones met&aacute;licas incandescentes, chispas y/o escorias; tambi&eacute;n protege zonas vulnerables al calor.</p>\r\n\r\n<p>La MANTA IGNIFUGA FERROLAN est&aacute; tejida con hilo de fibra de vidrio retorcido de alta resistencia.</p>\r\n\r\n<p>Proporciona un buen aislamiento el&eacute;ctrico.</p>\r\n\r\n<p>Es&nbsp;resistente a la oxidaci&oacute;n.</p>\r\n\r\n<p>Al no estar revestida, es f&aacute;cil de acomodar sobre el objeto a proteger.</p>\r\n\r\n<p>En procesos de alta temperatura, impide que se queme generando humo sin llama, brindando un lugar de trabajo seguro y limpio.&nbsp;</p>\r\n\r\n<p>Color: Marfil</p>\r\n\r\n<p>Temperatura de Servicio: 600 &ordm;C</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/mantasignifugas.jpg\" /></p>', '0', NULL, NULL, 'accesorios MIG', 'ff', 7, '2018-10-03 17:20:44', '2018-10-03 17:20:44'),
(56, 'AP6015B', 'Morseto de masa FERROLAN - 600AMP', 'productos__morseto.jpg', '<p>Morseto de masa para soldadura. 600 Amp al 60%.<br />\r\nCon cuerpo de bronce, mango de goma y resorte robusto. Recomendado para servicio pesado. Permite un consistente ajuste a la mesa de trabajo para garantizar la conducci&oacute;n el&eacute;ctrica.</p>', '0', NULL, NULL, 'accesorios MIG', 'gg', 7, '2018-10-03 17:25:02', '2018-10-03 17:25:02'),
(57, 'AP6010B', 'Pinza de masa tipo clip FERROLAN - 500 AMP.', 'productos__pinza-clip.jpg', '<p>Pinza de masa de bronce Tipo Clip de 500 Amp.&nbsp;<br />\r\nCuerpo de bronce y resorte robusto para trabajos pesados</p>', '0', NULL, NULL, 'accesorios MIG', 'hh', 7, '2018-10-03 17:49:37', '2018-10-03 17:49:37'),
(58, 'AP6005', 'Pinza masa FERROLAN 500 AMP CINCADA', 'productos__ap6005_1.jpg', '<p>Pinza de Masa FERROLAN de 500 amperes. Reforzada para una mayor duraci&oacute;n. Terminaci&oacute;n superficial cincada.</p>', '0', NULL, NULL, 'accesorios MIG', 'ii', 7, '2018-10-03 17:53:57', '2018-10-03 17:53:57'),
(59, 'AP6006', 'Pinza masa FERROLAN 500 AMP PINTADA', 'productos__ap6006_1.jpg', '<p>Pinza de Masa FERROLAN de 500 amperes. Reforzada para una mayor duraci&oacute;n. Terminaci&oacute;n superficial con pintura aislante.</p>\r\n\r\n<p>Construidas en chapa de acero &nbsp;de 1,25mm.</p>\r\n\r\n<p>Resorte de gran porte para asegurar un buen contacto.</p>\r\n\r\n<p>Puente de cobre para evitar conducci&oacute;n a trav&eacute;s del resorte y prolongar la vida &uacute;til.</p>\r\n\r\n<p>Mordazas de bronce macizo para asegurar una mejor conducci&oacute;n.</p>\r\n\r\n<p>Terminaci&oacute;n superficial cincada.</p>', '0', NULL, NULL, 'accesorios MIG', 'jj', 7, '2018-10-03 17:56:00', '2018-10-03 17:56:00'),
(60, 'ver tabla', 'Acoples rápidos para cables de soldadura FERROLAN', 'productos__cp1625_1.jpg', '<p>Acoples r&aacute;pidos de 1/4 de vuelta para cables de soldadura y torchas.</p>', '0', NULL, NULL, 'accesorios TIG', 'aa', 8, '2018-10-03 18:15:12', '2018-10-03 18:15:12'),
(61, 'ICONTIG-2220-HFP', 'Equipo inverter para soldadura TIG ICONTIG PRO 2220 HFP FERROLAN BY SOLTER', 'productos__icon_pro_2220_hf6.jpg', '<p>220 A en 7,2 Kg. y 80% de ciclo de trabajo.</p>', '0', NULL, NULL, 'consumibles TIG', 'bb', 8, '2018-10-03 18:30:42', '2018-10-03 18:31:26'),
(62, 'NFC18X18', 'Cortina para box de soldadura 1.8X1.8M/0.035MM', 'productos__nfc18x18_1 (2).jpg', '<p>La cortina permite construir un box de soldadura y/o corte</p>\r\n\r\n<p>La cortina protege al soldador en forma directa y a sus compa&ntilde;eros no protegidos, de las radiaciones del arco y las proyecciones, chispas o escorias.</p>\r\n\r\n<p>Resistente a la oxidaci&oacute;n y a los rayos medios del rango UV.</p>\r\n\r\n<p>Refracta las radiaciones del arco de soldar.</p>\r\n\r\n<p>Minimiza el brillo del arco.</p>\r\n\r\n<p>Mejora la productividad.</p>\r\n\r\n<p>Proporciona un buen aislamiento el&eacute;ctrico generando un lugar de trabajo seguro y limpio.</p>\r\n\r\n<p>Por estar confeccionada con una formulaci&oacute;n especial de PVC transparente, absorbe, dispersa y filtra la radiaci&oacute;n de la soldadura.</p>\r\n\r\n<p>Color: Naranja.</p>', '0', NULL, NULL, 'accesorios TIG', 'cc', 8, '2018-10-03 18:33:35', '2018-10-03 18:33:35'),
(63, 'ver tabla', 'Funda para torcha TIG', 'productos__cs-3-10cc-24.jpg', '<p>FUNDA DE NYLON CON CIERRE</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/fundasparatorchastig.jpg\" /></p>', '0', NULL, NULL, 'accesorios TIG', 'dd', 8, '2018-10-03 18:44:09', '2018-10-03 18:44:09'),
(64, 'AP6015B', 'Morseto de masa ferrolan - 600amp', 'productos__morseto (1).jpg', '<p>Morseto de masa para soldadura. 600 amp al 60%.<br />\r\nCon cuerpo de bronce, mango de goma y resorte robusto. Recomendado para servicio pesado. Permite un consistente ajuste a la mesa de trabajo para garantizar la conducci&oacute;n el&eacute;ctrica.</p>', '0', NULL, NULL, 'accesorios TIG', 'ee', 8, '2018-10-03 18:46:46', '2018-10-03 18:46:46'),
(65, 'AP6010B', 'Pinza de masa tipo clip ferrolan - 500 amp.', 'productos__pinza-clip (1).jpg', '<p>Pinza de masa de bronce Tipo Clip de 500 Amp.&nbsp;<br />\r\nCuerpo de bronce y resorte robusto para trabajos pesados</p>', '0', NULL, NULL, 'accesorios TIG', 'ff', 8, '2018-10-03 18:47:49', '2018-10-03 18:47:49'),
(66, 'AP6008', 'Pinza masa ferrolan 250 amp liviana', 'productos__ap6008_1.jpg', '<p>Pinza de Masa FERROLAN Liviana de 250 amperes.</p>', '0', NULL, NULL, 'accesorios TIG', 'gg', 8, '2018-10-03 18:48:53', '2018-10-03 18:48:53'),
(67, 'AP6005', 'Pinza masa ferrolan 500 amp cincada', 'productos__ap6005_1 (1).jpg', '<p>Pinza de Masa FERROLAN de 500 amperes. Reforzada para una mayor duraci&oacute;n. Terminaci&oacute;n superficial cincada.</p>', '0', NULL, NULL, 'accesorios TIG', 'hh', 8, '2018-10-03 18:49:46', '2018-10-03 18:49:46'),
(68, 'AP6006', 'Pinza masa ferrolan 500 amp pintada', 'productos__ap6006_1 (1).jpg', '<p>Pinza de Masa FERROLAN de 500 amperes. Reforzada para una mayor duraci&oacute;n. Terminaci&oacute;n superficial con pintura aislante.</p>', '0', NULL, NULL, 'accesorios TIG', 'jj', 8, '2018-10-03 18:50:41', '2018-10-03 18:50:41'),
(69, 'AP5500', 'Pinza portaelectrodos 500 amp ferrolan liviana', 'productos__ap5500.jpg', NULL, '0', NULL, NULL, 'accesorios TIG', 'kk', 8, '2018-10-03 18:51:34', '2018-10-03 18:51:34'),
(70, 'AP5200', 'Pinza portaelectrodos ferrolan 200 amp liviana', 'productos__ap5200.jpg', NULL, '0', NULL, NULL, 'accesorios MIG', 'll', 8, '2018-10-03 18:52:25', '2018-10-03 18:52:25'),
(71, 'ver tabla', 'Acoples rápidos para cables de soldadura ferrolan', 'productos__cp1625_1 (1).jpg', '<p>Acoples r&aacute;pidos de 1/4 de vuelta para cables de soldadura y torchas.</p>\r\n\r\n<p>Los acoples r&aacute;pidos FERROLAN de 1/4 de vuelta vienen en las siguientes modalidades y di&aacute;metros:</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tablaacoples.jpg\" /></p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'aa', 9, '2018-10-03 19:47:12', '2018-10-03 19:47:12'),
(72, 'NFC18X18', 'Cortina para box de soldadura 1.8x1.8m/0.035mm', 'productos__nfc18x18_1.jpg', '<p>La cortina permite construir un box de soldadura y/o corte.</p>\r\n\r\n<p>La cortina protege al soldador en forma directa y a sus compa&ntilde;eros no protegidos, de las radiaciones del arco y las proyecciones, chispas o escorias.</p>\r\n\r\n<p>Resistente a la oxidaci&oacute;n y a los rayos medios del rango UV.</p>\r\n\r\n<p>Refracta las radiaciones del arco de soldar.</p>\r\n\r\n<p>Minimiza el brillo del arco.</p>\r\n\r\n<p>Mejora la productividad.</p>\r\n\r\n<p>Proporciona un buen aislamiento el&eacute;ctrico generando un lugar de trabajo seguro y limpio.</p>\r\n\r\n<p>Por estar confeccionada con una formulaci&oacute;n especial de PVC transparente, absorbe, dispersa y filtra la radiaci&oacute;n de la soldadura.</p>\r\n\r\n<p>Color: Naranja.</p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'bb', 9, '2018-10-03 19:48:35', '2018-10-03 19:48:35'),
(73, 'AHDR150', 'Horno calentador de electrodos 70 kg 150ª 220v dryrod', 'productos__type151204432-1204430-tif.png', '<p>Horno secador y conservador de electrodos</p>\r\n\r\n<p>El HORNO PARA ELECTRODOS DRYROD 150:</p>\r\n\r\n<p>Elimina la humedad de los electrodos para obtener mejores resultados al soldar.</p>\r\n\r\n<p>Brinda un calor uniforme y continuo para proteger los electrodos desde su desempaque hasta el momento de uso.</p>\r\n\r\n<p>Capacidad: 70 Kg de electrodos de 45 cm.</p>\r\n\r\n<p>Potencia: Total 600W</p>\r\n\r\n<p>Temperatura: 38 a 149 &ordm;C. Ajustable con termostato con luz piloto.</p>\r\n\r\n<p>Alimentaci&oacute;n: 240 V C.A.</p>\r\n\r\n<p>Peso vac&iacute;o: 37Kg.</p>\r\n\r\n<p>Dimensiones: 51cm x 56cm x 73cm.</p>\r\n\r\n<p>Desplazamiento: Con ruedas.</p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'cc', 9, '2018-10-03 19:49:57', '2018-10-03 19:49:57'),
(74, 'AHDR350', 'Horno calentador de electrodos 160 kg 350º 220v dryrod', 'productos__7637287.jpg', '<p>Horno para secar y conservar electrodos</p>\r\n\r\n<p>El HORNO PARA ELECTRODOS &nbsp;DRYROD 350:</p>\r\n\r\n<p>Elimina la humedad de los electrodos para obtener mejor resultados al soldar.</p>\r\n\r\n<p>Brinda un calor uniforme y continuo para proteger los electrodos desde su desempaque hasta el momento de uso.</p>\r\n\r\n<p>Capacidad: 160 Kg de electrodos de 45 cm.</p>\r\n\r\n<p>Potencia: Total 1000 W - 2 elementos</p>\r\n\r\n<p>Temperatura:38 a 288 &ordm;C. Ajustable con termostato con luz piloto.</p>\r\n\r\n<p>Alimentaci&oacute;n: 240 V C.A.</p>\r\n\r\n<p>Peso vac&iacute;o: 41 Kg.</p>\r\n\r\n<p>Dimensiones: 75cm x 57cm x 57cm.</p>\r\n\r\n<p>Desplazamiento: Fijo.</p>', '0', NULL, NULL, NULL, 'dd', 9, '2018-10-03 19:51:18', '2018-10-03 19:51:18'),
(75, 'AH30001', 'Horno calentador de electrodos hd ferrolan inoxidable ait220v', 'productos__ah30001_3.jpg', '<p>Horno port&aacute;til dise&ntilde;ado para conservar los electrodos sin humedad y evitar defectos en la soldadura.</p>\r\n\r\n<p>Con aislaci&oacute;n t&eacute;rmica ecol&oacute;gica.</p>\r\n\r\n<p>Fabricado en Argentina cumpliendo con altos est&aacute;ndares de calidad.</p>\r\n\r\n<p>Posee 3 zonas diferentes de calentamiento:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Transporte: para trasladar electrodos que ya han adquirido la temperatura de trabajo en el horno principal.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Conservaci&oacute;n: para calentar electrodos al momento de extraerlos del envase original.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Recuperaci&oacute;n: para recuperar electrodos que han absorbido humedad.</p>\r\n\r\n<p>Su material exterior aislante aumenta la seguridad, adem&aacute;s ofrece mayor resistencia a los golpes y &nbsp;a la corrosi&oacute;n.</p>\r\n\r\n<p>Mejor dise&ntilde;o industrial, m&aacute;s elegante. Manija m&aacute;s c&oacute;moda e integrada al gabinete.</p>\r\n\r\n<p>Cord&oacute;n de alimentaci&oacute;n desenchufable, &nbsp;evita que pueda doblarse o estirarse, da&ntilde;ando la instalaci&oacute;n el&eacute;ctrica. Se puede enrrollar y guardar dentro de la estructura.</p>\r\n\r\n<p>Termostato regulador de la temepratura embutido, para darle una mejor protecci&oacute;n contra ca&iacute;das.</p>\r\n\r\n<p>M&aacute;s liviano y menor volumen, facilita y abarata el transporte.</p>\r\n\r\n<p>Al tener lados planos es m&aacute;s simple guardarlo.</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablahornoRepuestos.jpg\" /></p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'ee', 9, '2018-10-03 19:52:56', '2018-10-03 19:52:56'),
(76, 'ver tabla', 'Horno calentador de electrodos hi line ferrolan', 'productos__ah20001_2.jpg', '<p>Conserva los electrodos sin humedad y evita defectos en la soldadura. Con tubo interior de acero inoxidable.</p>\r\n\r\n<p>Con aislaci&oacute;n t&eacute;rmica ecol&oacute;gica.</p>\r\n\r\n<p>Fabricado en Argentina cumpliendo con altos est&aacute;ndares de calidad.</p>\r\n\r\n<p>Posee 3 zonas diferentes de calentamiento:</p>\r\n\r\n<p>Transporte: para trasladar electrodos que ya han adquirido la temperatura de trabajo en el horno principal.</p>\r\n\r\n<p>Conservaci&oacute;n: para calentar electrodos al momento de extraerlos del envase original.</p>\r\n\r\n<p>Recuperaci&oacute;n: para recuperar electrodos que han absorbido humedad.</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tablahornoHiLine.jpg\" /></p>\r\n\r\n<p>Repuestos</p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablahornoRepuestos.jpg\" /></p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'ff', 9, '2018-10-03 19:54:01', '2018-10-03 19:54:01'),
(77, 'ver tabla', 'Horno calentador de electrodos standard line ferrolan', 'productos__ah20001_2 (1).jpg', '<p>Conserva los electrodos sin humedad y evita defectos en la soldadura. Con tubo interior de hierro.</p>\r\n\r\n<p>Con aislaci&oacute;n t&eacute;rmica ecol&oacute;gica.</p>\r\n\r\n<p>Fabricado en Argentina cumpliendo con altos est&aacute;ndares de calidad.</p>\r\n\r\n<p>Posee 3 zonas diferentes de calentamiento:</p>\r\n\r\n<p>Transporte: para trasladar electrodos que ya han adquirido la temperatura de trabajo en el horno principal.</p>\r\n\r\n<p>Conservaci&oacute;n: para calentar electrodos al momento de extraerlos del envase original.</p>\r\n\r\n<p>Recuperaci&oacute;n: para recuperar electrodos que han absorbido humedad.</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/tablahornoStandard.jpg\" /></p>\r\n\r\n<p><img src=\"http://www.baw.com.ar/images/tablahornoRepuestos.jpg\" /></p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'gg', 9, '2018-10-03 19:54:52', '2018-10-03 19:54:52'),
(78, 'ver tabla', 'Manta ignifuga', 'productos__nfwb18x18-y-nfwb18x24-_2.jpg', '<p>Excelente protecci&oacute;n contra las proyecciones met&aacute;licas incandescentes, chispas y/o escorias; tambi&eacute;n protege zonas vulnerables al calor.</p>\r\n\r\n<p>La MANTA IGNIFUGA FERROLAN est&aacute; tejida con hilo de fibra de vidrio retorcido de alta resistencia.</p>\r\n\r\n<p>Proporciona un buen aislamiento el&eacute;ctrico.</p>\r\n\r\n<p>Es&nbsp;resistente a la oxidaci&oacute;n.</p>\r\n\r\n<p>Al no estar revestida, es f&aacute;cil de acomodar sobre el objeto a proteger.</p>\r\n\r\n<p>En procesos de alta temperatura, impide que se queme generando humo sin llama, brindando un lugar de trabajo seguro y limpio.&nbsp;</p>\r\n\r\n<p>Color: Marfil</p>\r\n\r\n<p>Temperatura de Servicio: 600 &ordm;C</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/mantasignifugas.jpg\" /></p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'hh', 9, '2018-10-03 19:55:37', '2018-10-03 19:55:37'),
(79, 'AP6015B', 'Morseto de masa ferrolan - 600amp', 'productos__morseto (2).jpg', '<p>Morseto de masa para soldadura. 600 Amp al 60%.<br />\r\nCon cuerpo de bronce, mango de goma y resorte robusto. Recomendado para servicio pesado. Permite un consistente ajuste a la mesa de trabajo para garantizar la conducci&oacute;n el&eacute;ctrica.</p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'ii', 9, '2018-10-03 19:56:49', '2018-10-03 19:56:49'),
(80, 'AP6010B', 'Pinza de masa tipo clip ferrolan - 500 amp.', 'productos__pinza-clip.jpg', '<p>Pinza de masa de bronce Tipo Clip de 500 Amp.&nbsp;<br />\r\nCuerpo de bronce y resorte robusto para trabajos pesados</p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'jj', 9, '2018-10-03 19:57:41', '2018-10-03 19:57:41'),
(81, 'AP6008', 'Pinza masa ferrolan 250 amp liviana', 'productos__ap6008_1 (1).jpg', '<p>Pinza de Masa FERROLAN Liviana de 250 amperes.</p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'kk', 9, '2018-10-03 19:58:45', '2018-10-03 19:58:45'),
(82, 'AP6005', 'Pinza masa ferrolan 500 amp cincada', 'productos__ap6005_1 (2).jpg', '<p>Pinza de Masa FERROLAN de 500 amperes. Reforzada para una mayor duraci&oacute;n. Terminaci&oacute;n superficial cincada.</p>\r\n\r\n<p>Construidas en chapa de acero 1,25mm.</p>\r\n\r\n<p>Resorte de gran porte para asegurar un buen contacto.</p>\r\n\r\n<p>Puente de cobre para evitar conducci&oacute;n a trav&eacute;s del resorte y prolongar la vida &uacute;til.</p>\r\n\r\n<p>Mordazas de bronce macizo para asegurar una mejor conducci&oacute;n.</p>\r\n\r\n<p>Terminaci&oacute;n superficial cincada.</p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'll', 9, '2018-10-03 19:59:50', '2018-10-03 19:59:50'),
(83, 'AP6006', 'Pinza masa ferrolan 500 amp pintada', 'productos__ap6006_1 (1).jpg', '<p>Pinza de Masa FERROLAN de 500 amperes. Reforzada para una mayor duraci&oacute;n. Terminaci&oacute;n superficial con pintura aislante.</p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'mm', 9, '2018-10-03 20:00:58', '2018-10-03 20:00:58'),
(84, 'AP5500', 'Pinza portaelectrodos 500 amp ferrolan liviana', 'productos__ap5500.jpg', NULL, '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'nn', 9, '2018-10-03 20:01:52', '2018-10-03 20:01:52'),
(85, 'AP5200', 'Pinza portaelectrodos ferrolan 200 amp liviana', 'productos__ap5200.jpg', NULL, '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'oo', 9, '2018-10-03 20:02:41', '2018-10-03 20:02:41'),
(86, 'AP5000', 'Pinza portaelectrodos ferrolan 500 amp liviana', 'productos__ap5000_1.jpg', '<p>Pinza portaelectrodos de 500 amperes, recubierta en nylon con fibra de vidrio y punteras de resina fen&oacute;lica para mayor resistencia a las altas temperaturas.</p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'pp', 9, '2018-10-03 20:03:48', '2018-10-03 20:03:48'),
(87, 'AP6001', 'Pinza portaelectrodos ferrolan hd 600 amp industrial', 'productos__ap6001_3.jpg', '<p>Pinza Portaelectrodos de alto rendimiento para trabajos m&aacute;s exigentes. Fabricada en bronce estampado con recubrimiento y punteras de resina fen&oacute;lica de alto impacto.</p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'qq', 9, '2018-10-03 20:04:45', '2018-10-03 20:04:45'),
(88, 'AP5600R', 'Pinza portaelectrodos roscada 600amp', 'productos__ap5600sinfondo-copia.jpg', '<p>Pinza Portaelectrodos con dos opciones de encastre del electrodo a rosca.<br />\r\nEl soldador puede optar por colocarlo a 45&ordm; o 90&ordm; seg&uacute;n le resulte m&aacute;s c&oacute;modo.</p>\r\n\r\n<p>Esta pinza Portaelectrodo fue dise&ntilde;ada con interior de bronce para conducir mayor corriente y no elevar su temperatura. Soporta hasta 600amp.</p>\r\n\r\n<p>Su forma de sujeci&oacute;n es a rosca, permitiendo 2 &aacute;ngulos; 45&ordm; y 90&ordm;&nbsp;</p>\r\n\r\n<p>El mango es de goma, anti deslizante para mayor comodidad del soldador</p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'rr', 9, '2018-10-03 20:05:55', '2018-10-03 20:05:55'),
(89, 'AHDR355', 'TERMOMETRO DRYROD 300', 'no-image.jpg', NULL, '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'ss', 9, '2018-10-03 20:06:37', '2018-10-03 20:06:37'),
(90, 'ver tabla', 'Manta ignifuga', 'productos__nfwb18x18-y-nfwb18x24-_2.jpg', '<p>Excelente protecci&oacute;n contra las proyecciones met&aacute;licas incandescentes, chispas y/o escorias; tambi&eacute;n protege zonas vulnerables al calor.</p>\r\n\r\n<p>La MANTA IGNIFUGA FERROLAN est&aacute; tejida con hilo de fibra de vidrio retorcido de alta resistencia.</p>\r\n\r\n<p>Proporciona un buen aislamiento el&eacute;ctrico.</p>\r\n\r\n<p>Es&nbsp;resistente a la oxidaci&oacute;n.</p>\r\n\r\n<p>Al no estar revestida, es f&aacute;cil de acomodar sobre el objeto a proteger.</p>\r\n\r\n<p>En procesos de alta temperatura, impide que se queme generando humo sin llama, brindando un lugar de trabajo seguro y limpio.&nbsp;</p>\r\n\r\n<p>Color: Marfil</p>\r\n\r\n<p>Temperatura de Servicio: 600 &ordm;C</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.baw.com.ar/images/mantasignifugas.jpg\" /></p>', '0', NULL, NULL, 'accesorios de soldadura electrodos revestidos', 'aa', 10, '2018-10-03 20:08:40', '2018-10-03 20:08:40'),
(91, '-', 'Edge connect cnc', 'productos__as_edgeconnect_0044_rgb.jpg', NULL, NULL, NULL, NULL, 'accesorios de soldadura mecanizado', 'aa', 11, '2018-10-03 20:09:49', '2018-10-03 20:09:49'),
(92, '-', 'Sopletes para soldadura autógena m24', 'no-image.jpg', '<p>Los sopletes para soldadura aut&oacute;gena funcionan por combusti&oacute;n de un combustible que puede ser gas acetileno &oacute; gas propano-butano con una mezcla de oxigeno en proporciones correctas que se utilizan para calentar o soldar metales entre s&iacute;, aplic&aacute;ndose en la industria pesada o liviana.</p>\r\n\r\n<p>Para la utilizaci&oacute;n de estos elementos en la industria pesada ofrecemos una l&iacute;nea de sopletes M24 de construcci&oacute;n robusta y de amplia gama de elementos para toda la variedad de trabajos que sean necesarios, complement&aacute;ndose con una extensa gama de cabezas soldadoras que permiten gran variedad de espesores de soldadura.</p>', '0', NULL, NULL, 'soldadura autogena', 'aa', 18, '2018-10-04 14:45:03', '2018-10-04 14:45:03');
INSERT INTO `productos` (`id`, `code`, `name`, `image`, `descripcion`, `important`, `pdf`, `video`, `keyword`, `order`, `subfamily_id`, `created_at`, `updated_at`) VALUES
(93, '-', 'Sopletes tipo lluvia para calentamiento', 'no-image.jpg', '<p>Complementando la l&iacute;nea de elementos para el modelo pesado M24 contamos con una variedad de cabezas calentadoras construidas con un dise&ntilde;o robusto y picos de cobre que absorben perfectamente las grandes temperaturas que estos elementos producen, variando desde modelos de llama concentrada que permiten elevadas temperaturas hasta otro dise&ntilde;os que desarrollan una llama amplia de alto poder calor&iacute;fico y en distintas capacidades seg&uacute;n la necesidad de calor&iacute;as que se precisen para el trabajo a realizar.</p>\r\n\r\n<p>Estos sopletes pueden ser utilizados con mezcla de gas acetileno con oxigeno &oacute; gas propano-butano y oxigeno.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SOPLETE TIPO BUNSEN PARA ACETILENO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Soplete tipo Bunsen para acetileno para ser utilizado con cilindros o generadores de baja o alta capacidad lo que permite llegar a una temperatura de 1200 &ordm;C, con una variedad de picos que permiten desde una llama concentrada hasta una llama tipo lluvia para calentar superficies amplias pudiendo realizar soldaduras con material de aporte como esta&ntilde;o, plata, bronce, etc., utilizando una presi&oacute;n de trabajo de 1.5 Kg/cm2.</p>', '0', NULL, NULL, 'soldadura autogena', 'bb', 18, '2018-10-04 14:47:33', '2018-10-04 14:47:33'),
(94, '-', 'Sopletes p/soldadura autógena livianos p/chapistas y sanitaristas', 'no-image.jpg', '<p>Dentro de la l&iacute;nea de sopletes para soldadura aut&oacute;gena ofrecemos el modelo M3 liviano apto para realizar trabajos donde no es requerido una gran capacidad de soldadura permitiendo tambi&eacute;n una mayor maniobrabilidad para llegar a lugares de dif&iacute;cil acceso.</p>\r\n\r\n<p>Estos sopletes pueden ser utilizados con mezcla de gas acetileno y oxigeno &oacute; gas propano-butano y oxigeno, complement&aacute;ndose con una cabeza apta para trabajo de calentamiento de alto poder calor&iacute;fico.</p>\r\n\r\n<p>Completando esta l&iacute;nea ofrecemos como un accesorio m&aacute;s un soplete para oxicorte para ser utilizado con los diferentes gases como los anteriormente mencionados y con&nbsp; sistema de oxigeno de corte a palanca, apto para cortar de 1 a 60 mm. de espesor.&nbsp;</p>', '0', NULL, NULL, 'soldadura autogena', 'cc', 18, '2018-10-04 14:57:53', '2018-10-04 14:57:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_producto`
--

CREATE TABLE `producto_producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `producto2_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto_producto`
--

INSERT INTO `producto_producto` (`id`, `producto_id`, `producto2_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 14, 8, NULL, NULL),
(5, 14, 13, NULL, NULL),
(7, 8, 13, NULL, NULL),
(8, 8, 14, NULL, NULL),
(9, 13, 8, NULL, NULL),
(10, 13, 14, NULL, NULL),
(11, 16, 15, NULL, NULL),
(12, 18, 17, NULL, NULL),
(13, 17, 18, NULL, NULL),
(14, 19, 17, NULL, NULL),
(15, 19, 18, NULL, NULL),
(16, 21, 20, NULL, NULL),
(17, 21, 19, NULL, NULL),
(18, 23, 21, NULL, NULL),
(19, 23, 22, NULL, NULL),
(20, 24, 21, NULL, NULL),
(21, 24, 22, NULL, NULL),
(22, 24, 23, NULL, NULL),
(23, 26, 25, NULL, NULL),
(24, 27, 25, NULL, NULL),
(25, 27, 26, NULL, NULL),
(26, 29, 26, NULL, NULL),
(27, 29, 27, NULL, NULL),
(28, 29, 28, NULL, NULL),
(29, 30, 27, NULL, NULL),
(30, 30, 28, NULL, NULL),
(31, 30, 29, NULL, NULL),
(32, 32, 31, NULL, NULL),
(33, 33, 31, NULL, NULL),
(34, 33, 32, NULL, NULL),
(35, 34, 32, NULL, NULL),
(36, 34, 33, NULL, NULL),
(37, 36, 35, NULL, NULL),
(38, 39, 38, NULL, NULL),
(39, 40, 38, NULL, NULL),
(40, 40, 39, NULL, NULL),
(41, 42, 41, NULL, NULL),
(42, 43, 41, NULL, NULL),
(43, 43, 42, NULL, NULL),
(44, 45, 42, NULL, NULL),
(45, 45, 43, NULL, NULL),
(46, 45, 44, NULL, NULL),
(47, 47, 46, NULL, NULL),
(48, 48, 46, NULL, NULL),
(49, 48, 47, NULL, NULL),
(50, 49, 46, NULL, NULL),
(51, 49, 47, NULL, NULL),
(52, 49, 48, NULL, NULL),
(53, 51, 50, NULL, NULL),
(54, 52, 50, NULL, NULL),
(55, 52, 51, NULL, NULL),
(56, 53, 50, NULL, NULL),
(57, 53, 51, NULL, NULL),
(58, 53, 52, NULL, NULL),
(59, 54, 50, NULL, NULL),
(60, 54, 51, NULL, NULL),
(61, 57, 56, NULL, NULL),
(62, 58, 57, NULL, NULL),
(63, 59, 57, NULL, NULL),
(64, 59, 58, NULL, NULL),
(65, 61, 60, NULL, NULL),
(66, 62, 60, NULL, NULL),
(67, 65, 64, NULL, NULL),
(68, 65, 57, NULL, NULL),
(69, 66, 64, NULL, NULL),
(70, 66, 57, NULL, NULL),
(71, 66, 58, NULL, NULL),
(72, 67, 64, NULL, NULL),
(73, 67, 57, NULL, NULL),
(74, 68, 58, NULL, NULL),
(75, 68, 67, NULL, NULL),
(76, 68, 59, NULL, NULL),
(77, 69, 57, NULL, NULL),
(78, 69, 66, NULL, NULL),
(79, 69, 58, NULL, NULL),
(80, 70, 57, NULL, NULL),
(81, 70, 65, NULL, NULL),
(82, 70, 66, NULL, NULL),
(83, 74, 73, NULL, NULL),
(84, 75, 74, NULL, NULL),
(85, 75, 73, NULL, NULL),
(86, 76, 74, NULL, NULL),
(87, 76, 73, NULL, NULL),
(88, 76, 75, NULL, NULL),
(89, 77, 73, NULL, NULL),
(90, 77, 75, NULL, NULL),
(91, 77, 76, NULL, NULL),
(92, 82, 65, NULL, NULL),
(93, 82, 80, NULL, NULL),
(94, 82, 66, NULL, NULL),
(95, 83, 57, NULL, NULL),
(96, 83, 65, NULL, NULL),
(97, 83, 80, NULL, NULL),
(98, 86, 70, NULL, NULL),
(99, 86, 85, NULL, NULL),
(100, 87, 70, NULL, NULL),
(101, 87, 85, NULL, NULL),
(102, 87, 86, NULL, NULL),
(103, 88, 83, NULL, NULL),
(104, 88, 70, NULL, NULL),
(105, 88, 87, NULL, NULL),
(106, 89, 73, NULL, NULL),
(107, 89, 75, NULL, NULL),
(108, 90, 53, NULL, NULL),
(109, 92, 14, NULL, NULL),
(110, 92, 13, NULL, NULL),
(111, 93, 14, NULL, NULL),
(112, 93, 13, NULL, NULL),
(113, 93, 92, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id`, `name`, `route`, `image`, `order`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'https://www.facebook.com/', 'fab fa-facebook-f', 'aa', 'footer', '2018-09-19 20:26:53', '2018-09-19 20:26:53'),
(2, 'Twitter', 'https://twitter.com/?lang=es', 'fab fa-twitter-square', 'bb', 'footer', '2018-10-02 22:29:10', '2018-10-02 22:29:10'),
(3, 'Instagram', 'https://www.instagram.com/?hl=es-la', 'fab fa-instagram', 'cc', 'footer', '2018-10-02 22:30:14', '2018-10-02 22:30:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image`, `section`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Más de 20 años en el Rubro', 'Situados en Villa Adelina, llevamos más de Veinte Años en el Mercado, ofreciendo un amplio catálogo de productos y servicios en soldadura y corte', 'sliders__sliderempresa.jpg', 'empresa', 'aa', '2018-09-19 21:41:36', '2018-09-19 21:41:36'),
(2, 'La Soldadura Perfecta', 'Brindamos Soluciones Integrales y todo lo necesario para el Soldador. Distribución de gases industriales, Venta y reparación de equipos de soldadura y corte', 'sliders__sliderhome.jpg', 'home', 'aa', '2018-09-19 21:43:36', '2018-10-04 21:20:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subfamilias`
--

CREATE TABLE `subfamilias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subfamilias`
--

INSERT INTO `subfamilias` (`id`, `title`, `image`, `order`, `family_id`, `created_at`, `updated_at`) VALUES
(1, 'Autógena', 'no-image.jpg', 'aa', 2, '2018-09-24 17:35:07', '2018-09-24 17:35:07'),
(2, 'Corte por plasma manual', 'no-image.jpg', 'bb', 2, '2018-09-24 17:35:58', '2018-09-24 17:35:58'),
(3, 'Corte por plasma mecanizado', 'no-image.jpg', 'cc', 2, '2018-09-24 17:36:11', '2018-09-24 17:36:11'),
(4, 'Soldadura Mig/Mag (GMAW)', 'no-image.jpg', 'aa', 1, '2018-10-02 22:37:06', '2018-10-02 22:37:06'),
(5, 'Soldadura  TIG (GTAW)', 'no-image.jpg', 'bb', 1, '2018-10-02 22:41:28', '2018-10-02 22:41:28'),
(6, 'Soldadura por electrodos revestidos', 'no-image.jpg', 'cc', 1, '2018-10-02 22:55:34', '2018-10-03 15:45:55'),
(7, 'Accesorios soldadura MIG', 'no-image.jpg', 'aa', 4, '2018-10-02 23:09:23', '2018-10-02 23:09:23'),
(8, 'Accesorios soldadura TIG', 'no-image.jpg', 'bb', 4, '2018-10-02 23:09:41', '2018-10-02 23:09:41'),
(9, 'Accesorios soldadura electrodos revestidos', 'no-image.jpg', 'cc', 4, '2018-10-02 23:10:02', '2018-10-03 19:44:21'),
(10, 'Accesorios para corte de plasma manual', 'no-image.jpg', 'dd', 4, '2018-10-02 23:10:20', '2018-10-02 23:10:20'),
(11, 'Accesorios para corte por plasma mecanizado', 'no-image.jpg', 'ee', 4, '2018-10-02 23:11:18', '2018-10-02 23:11:18'),
(13, 'Consumibles soldadura MIG', 'no-image.jpg', 'aa', 5, '2018-10-02 23:13:07', '2018-10-02 23:13:07'),
(14, 'Consumibles soldadura TIG', 'no-image.jpg', 'bb', 5, '2018-10-02 23:13:29', '2018-10-02 23:13:29'),
(15, 'Consumibles corte de plasma manual', 'no-image.jpg', 'cc', 5, '2018-10-02 23:13:46', '2018-10-02 23:13:46'),
(16, 'Consumibles corte plasma mecanizado', 'no-image.jpg', 'dd', 5, '2018-10-02 23:16:34', '2018-10-02 23:16:34'),
(17, 'Consumibles corte laser', 'no-image.jpg', 'ee', 5, '2018-10-02 23:17:16', '2018-10-02 23:17:16'),
(18, 'Soldadura autógena', 'no-image.jpg', 'dd', 1, '2018-10-04 14:43:59', '2018-10-04 14:43:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textos`
--

CREATE TABLE `textos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `textos`
--

INSERT INTO `textos` (`id`, `title`, `image`, `text`, `section`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Soluciones Integrales en Soldadura y Corte', 'home__iconodestacado.jpg.png', '<p><span style=\"font-size:20px\">En <span style=\"color:#f1c40f\">SOLDADURAS BUENOS AIRES</span>&nbsp;le ofrecemos todas las alternativas disponibles en materia de Soldadura y Corte. Brindamos Soluciones integrales adecuadas a las necesidades de nuestros clientes. Contamos con Servicio Post-Venta y Garant&iacute;a.</span></p>', 'home', 'aa', NULL, '2018-10-29 16:12:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Franco', 'franco', '$2y$10$vaXRWeuz5zDr8fl6E2vqPuGTDXSkZIYEoP7X65jGyh7YrvLFusuj2', '0McTAy9IKYvzgPZsrqPwxPemoJlC29j2wTApYlzBVwIpnzm7NzvL4c6fCNGd', '2018-09-19 20:23:50', '2018-09-27 20:04:32'),
(2, 'Pablo', 'pablo', '$2y$10$.fcv6vSUYgGhwVj5DTDm9.hgHJRAsEPPD03yF8Ixhq6BikeccnihO', 'R0WbUPgYjoeQZQNCHlJWuvxpkzplz1KOW3pxkmw5dtIkpDfYQtnw8AHK395M', '2018-09-28 22:21:58', '2018-09-28 22:21:58'),
(3, 'Alejandro', 'alejandro', '$2y$10$0iERDY8cku5hZ3Ge2kwijOpNZgM9UrDCkQ0629N1cSrDlzDF3nRDC', NULL, '2018-10-04 21:31:54', '2018-10-04 21:31:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descargas`
--
ALTER TABLE `descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `garantias`
--
ALTER TABLE `garantias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `postventas`
--
ALTER TABLE `postventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto_producto`
--
ALTER TABLE `producto_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_producto_producto2_id_foreign` (`producto2_id`),
  ADD KEY `producto_producto_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `textos`
--
ALTER TABLE `textos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_unique` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `descargas`
--
ALTER TABLE `descargas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `familias`
--
ALTER TABLE `familias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `garantias`
--
ALTER TABLE `garantias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `postventas`
--
ALTER TABLE `postventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `producto_producto`
--
ALTER TABLE `producto_producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `textos`
--
ALTER TABLE `textos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
