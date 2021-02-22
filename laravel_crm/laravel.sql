-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 22 feb 2021 om 12:01
-- Serverversie: 10.4.17-MariaDB
-- PHP-versie: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changes` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(3, '92c0a84e-2809-4cfe-9968-9c397592108c', 2, 'Update', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'App\\Models\\User', 2, '', 'finished', '', '2021-02-17 10:32:30', '2021-02-17 10:32:30', '{\"phone_number\":\"\",\"street\":\"\",\"house_number\":\"\",\"postal_code\":\"\"}', '{\"phone_number\":\"+31 6 83547226\",\"street\":\"testersville\",\"house_number\":\"1B\",\"postal_code\":\"7452PS\"}'),
(4, '92c0a884-4233-41ea-8905-f26a5968d987', 2, 'Update', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'App\\Models\\User', 2, '', 'finished', '', '2021-02-17 10:33:06', '2021-02-17 10:33:06', '{\"house_number\":\"1B\"}', '{\"house_number\":\"13B\"}'),
(5, '92c0b753-dd26-4402-9d2b-4fd4b9999582', 2, 'Update', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'App\\Models\\User', 2, '', 'finished', '', '2021-02-17 11:14:31', '2021-02-17 11:14:31', '{\"place\":\"\",\"street\":\"testersville\"}', '{\"place\":\"testersville\",\"street\":\"testersstreet\"}'),
(27, '92c0da3c-bf08-44eb-a204-d9950ac92e76', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 12:52:07', '2021-02-17 12:52:08', NULL, NULL),
(28, '92c0dacb-3112-4279-9405-51e63362815a', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 12:53:41', '2021-02-17 12:53:41', NULL, NULL),
(29, '92c0dc18-861a-464e-9fdd-8be5ea7344fc', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 12:57:19', '2021-02-17 12:57:20', NULL, NULL),
(30, '92c0dc6e-7557-41b5-9342-a21d4182a256', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 12:58:16', '2021-02-17 12:58:16', NULL, NULL),
(31, '92c0dcae-97d5-4562-a131-182f4a36195c', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 12:58:58', '2021-02-17 12:58:58', NULL, NULL),
(32, '92c0dd57-1bcd-4bc5-9559-a2719e87a160', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 13:00:48', '2021-02-17 13:00:48', NULL, NULL),
(40, '92c0df64-fbc5-4e91-8be1-19a2c264c9cf', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 13:06:33', '2021-02-17 13:06:33', NULL, NULL),
(42, '92c0e0c3-2573-440e-8d27-beb8530c925c', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 13:10:22', '2021-02-17 13:10:22', NULL, NULL),
(43, '92c0e0d3-adab-494f-9e26-d00041b229e5', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 13:10:33', '2021-02-17 13:10:33', NULL, NULL),
(45, '92c0e136-4a94-488f-b49e-03d7d8b64da2', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 13:11:38', '2021-02-17 13:11:38', NULL, NULL),
(52, '92c0e4a4-98b7-4ea9-93d1-acf4ad764989', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 13:21:13', '2021-02-17 13:21:14', NULL, NULL),
(53, '92c0e9d6-2557-42e3-ab69-dba6efc64dbc', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 13:35:45', '2021-02-17 13:35:45', NULL, NULL),
(54, '92c0ea21-e837-476a-916e-212ac619e87c', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 13:36:34', '2021-02-17 13:36:35', NULL, NULL),
(55, '92c0ea56-71c2-46dd-af3a-efcd86672160', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 13:37:09', '2021-02-17 13:37:09', NULL, NULL),
(56, '92c0eaf7-3d13-474d-89ae-89d344b90ab9', 2, 'Add to WeFact', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'a:0:{}', 'finished', '', '2021-02-17 13:38:54', '2021-02-17 13:38:55', NULL, NULL),
(57, '92c0f247-f15f-4005-968b-5ade89bc17a6', 2, 'Update', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'App\\Models\\User', 2, '', 'finished', '', '2021-02-17 13:59:21', '2021-02-17 13:59:21', '[]', '[]'),
(58, '92c0f396-b34b-43f2-900b-bc8364b5659f', 2, 'Update', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '', 'finished', '', '2021-02-17 14:03:01', '2021-02-17 14:03:01', '{\"phone_number\":\"\",\"city\":\"\",\"street\":\"\",\"house_number\":\"\",\"postal_code\":\"\"}', '{\"phone_number\":\"06-81018815\",\"city\":\"Vinkega\",\"street\":\"Noordwolderweg 12\",\"house_number\":\"12\",\"postal_code\":\"8393RE\"}'),
(59, '92c0f472-bbda-4310-81db-31b431588395', 2, 'Update', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '', 'finished', '', '2021-02-17 14:05:25', '2021-02-17 14:05:25', '{\"company_name\":\"\"}', '{\"company_name\":\"Mike ten Klooster bv.\"}'),
(60, '92c0f48e-387a-467c-97e3-cb5311f7e461', 2, 'Update', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'App\\Models\\User', 2, '', 'finished', '', '2021-02-17 14:05:43', '2021-02-17 14:05:43', '{\"company_name\":\"\"}', '{\"company_name\":\"test company bv.\"}'),
(61, '92c0f4ed-ad4d-47d7-b04f-d9ea4c215cb0', 2, 'Add to WeFact', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'a:0:{}', 'finished', '', '2021-02-17 14:06:45', '2021-02-17 14:06:46', NULL, NULL),
(62, '92c2973e-e2f3-43a9-8f8a-826c0cd894ed', 2, 'Create', 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, '', 'finished', '', '2021-02-18 09:36:27', '2021-02-18 09:36:27', NULL, '{\"company_name\":\"This is a Test\",\"name\":\"Testtest\",\"email\":\"testtest@gmail.com\",\"phone_number\":\"+31 6 83627495\",\"city\":\"De Test\",\"street\":\"testy\",\"house_number\":\"7T\",\"postal_code\":\"4016TE\",\"updated_at\":\"2021-02-18T10:36:27.000000Z\",\"created_at\":\"2021-02-18T10:36:27.000000Z\",\"id\":1}'),
(64, '92c297b8-4c93-4f7c-a4c4-716bb7a0aba4', 2, 'Update', 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, '', 'finished', '', '2021-02-18 09:37:47', '2021-02-18 09:37:47', '{\"gender\":\"\"}', '{\"gender\":\"m\"}'),
(65, '92c297d9-8213-453d-88c0-63a1a2581772', 2, 'Add to WeFact', 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, 'a:0:{}', 'finished', '', '2021-02-18 09:38:09', '2021-02-18 09:38:10', NULL, NULL),
(71, '92c29e60-a025-4c1b-a9a8-9d7f5fcaf2c1', 2, 'Add to WeFact', 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, 'a:0:{}', 'finished', '', '2021-02-18 09:56:24', '2021-02-18 09:56:25', NULL, NULL),
(72, '92c2bbe8-33b0-43d3-8fb5-d6b8bff46fe7', 2, 'Add to WeFact', 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, 'a:0:{}', 'finished', '', '2021-02-18 11:18:58', '2021-02-18 11:18:59', NULL, NULL),
(73, '92c2d3c6-90ee-498f-b8e2-f556976672dd', 2, 'Create', 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, '', 'finished', '', '2021-02-18 12:25:43', '2021-02-18 12:25:43', NULL, '{\"name\":\"test Product\",\"key_phrase\":\"this is a test product made from the most amazing software that exist.\",\"description\":\"this is a test product made from the most amazing software that exist.\\r\\nthis is a test product made from the most amazing software that exist.\\r\\nthis is a test product made from the most amazing software that exist.\\r\\nthis is a test product made from the most amazing software that exist.\",\"budget\":\"2000\",\"status\":\"new\",\"updated_at\":\"2021-02-18T13:25:43.000000Z\",\"created_at\":\"2021-02-18T13:25:43.000000Z\",\"id\":1}'),
(74, '92c2e4d7-2266-4a4c-b0dc-836af3c2daca', 2, 'Update', 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, '', 'finished', '', '2021-02-18 13:13:26', '2021-02-18 13:13:26', '{\"budget\":\"2000\"}', '{\"budget\":\"2000.00\"}'),
(75, '92c476b7-342c-497c-b878-d4a43c05af73', 2, 'Update', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'App\\Models\\User', 2, '', 'finished', '', '2021-02-19 07:57:09', '2021-02-19 07:57:09', '{\"product_code\":0}', '{\"product_code\":\"1\"}'),
(76, '92c47761-44a0-4400-b708-c43b663beac1', 2, 'Create', 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, '', 'finished', '', '2021-02-19 07:59:01', '2021-02-19 07:59:01', NULL, '{\"customer_id\":\"1\",\"term\":\"30 dagen\",\"product_code\":\"1\",\"key_phrase\":\"Test key phrase\",\"amount_paid\":\"20\",\"payment_method\":\"wire\",\"pay_date\":\"2021-03-31 10:00:00\",\"description\":\"aaaaaaaaaaaaaaa\\r\\naaaaaaaaaaaaaaa\",\"comment\":\"nah\",\"status\":\"0\",\"updated_at\":\"2021-02-19T08:59:01.000000Z\",\"created_at\":\"2021-02-19T08:59:01.000000Z\",\"id\":1}'),
(78, '92c4941c-6616-47b8-abd4-f1b464d5d0a5', 2, 'Update', 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, 'App\\Models\\Customer', 1, '', 'finished', '', '2021-02-19 09:19:21', '2021-02-19 09:19:21', '{\"product_code\":0}', '{\"product_code\":1}'),
(84, '92c4ad85-6963-4cf5-adeb-931217d332d7', 2, 'Add to WeFact', 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'a:0:{}', 'finished', '', '2021-02-19 10:30:24', '2021-02-19 10:30:25', NULL, NULL),
(85, '92c4add7-0f19-42dd-a3fa-e94261ed43f2', 2, 'Add to WeFact', 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'a:0:{}', 'finished', '', '2021-02-19 10:31:17', '2021-02-19 10:31:18', NULL, NULL),
(88, '92c4af42-781f-4c50-8e8a-300a8f7fb38b', 2, 'Add to WeFact', 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'a:0:{}', 'finished', '', '2021-02-19 10:35:16', '2021-02-19 10:35:16', NULL, NULL),
(89, '92c4afca-81c2-4c06-bac8-b563911a4b9a', 2, 'Add to WeFact', 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'a:0:{}', 'finished', '', '2021-02-19 10:36:45', '2021-02-19 10:36:46', NULL, NULL),
(90, '92c4b009-a3f4-4fa5-9c95-f1b27645b435', 2, 'Add to WeFact', 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'a:0:{}', 'finished', '', '2021-02-19 10:37:26', '2021-02-19 10:37:27', NULL, NULL),
(91, '92c4b02e-1341-4702-b79b-c8e977eba26b', 2, 'Add to WeFact', 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'a:0:{}', 'finished', '', '2021-02-19 10:37:50', '2021-02-19 10:37:51', NULL, NULL),
(92, '92c4b04e-a60c-4d31-b454-50dbb7d9dbf3', 2, 'Add to WeFact', 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'a:0:{}', 'finished', '', '2021-02-19 10:38:11', '2021-02-19 10:38:12', NULL, NULL),
(93, '92c4b0de-6ec4-45a4-9e35-3c824cdfef15', 2, 'Add to WeFact', 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'a:0:{}', 'finished', '', '2021-02-19 10:39:46', '2021-02-19 10:39:46', NULL, NULL),
(94, '92c4b407-43f7-4763-a06e-e7804c20b724', 2, 'Add to WeFact', 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'a:0:{}', 'finished', '', '2021-02-19 10:48:36', '2021-02-19 10:48:36', NULL, NULL),
(96, '92c4b47d-6608-43cc-ab8f-0ca61052f237', 2, 'Add to WeFact', 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'App\\Models\\Invoice', 1, 'a:0:{}', 'finished', '', '2021-02-19 10:49:53', '2021-02-19 10:49:54', NULL, NULL),
(181, '92c4e71c-d96a-495c-9a55-b8394887f4ee', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:11:26', '2021-02-19 13:11:27', NULL, NULL),
(182, '92c4e7ee-8592-49b5-828d-54fd33c42bb9', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:13:44', '2021-02-19 13:13:45', NULL, NULL),
(184, '92c4e975-53fc-405b-b58b-bdc85cbadaa0', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:18:00', '2021-02-19 13:18:01', NULL, NULL),
(186, '92c4ee18-d63a-48ac-8752-b934b3816751', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:30:58', '2021-02-19 13:30:59', NULL, NULL),
(187, '92c4ee4d-cafe-45d6-a6d1-f589565f41ae', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:31:33', '2021-02-19 13:31:33', NULL, NULL),
(188, '92c4ee95-9c2e-43fc-8d8f-115a859324d7', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:32:20', '2021-02-19 13:32:21', NULL, NULL),
(193, '92c4f0ff-abfa-4f71-bbd8-13f7d955d25d', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:39:05', '2021-02-19 13:39:06', NULL, NULL),
(196, '92c4f2a1-d693-426d-ad91-048c37ef3145', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:43:39', '2021-02-19 13:43:40', NULL, NULL),
(197, '92c4f350-5e5d-45dc-8c09-e3c3d01dad3e', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:45:33', '2021-02-19 13:45:34', NULL, NULL),
(198, '92c4f37e-ecb7-42d5-a4b5-f83cff5fbc4b', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:46:04', '2021-02-19 13:46:05', NULL, NULL),
(200, '92c4f531-0736-4514-bcdd-ada7e2b9e44b', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:50:48', '2021-02-19 13:50:49', NULL, NULL),
(203, '92c4f742-8d65-4c0b-a649-040ca561d6d1', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:56:35', '2021-02-19 13:56:36', NULL, NULL),
(204, '92c4f7fc-6ba3-4a27-ac25-5e670d35831d', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:58:37', '2021-02-19 13:58:38', NULL, NULL),
(205, '92c4f82e-b3c7-4ed9-9a0a-81e0466c2f8b', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 13:59:10', '2021-02-19 13:59:11', NULL, NULL),
(206, '92c4f92f-9fce-46b5-bf63-587f9617d61b', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:01:58', '2021-02-19 14:02:00', NULL, NULL),
(207, '92c4fa20-547b-4db1-a08c-852367d36c32', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:04:36', '2021-02-19 14:04:37', NULL, NULL),
(208, '92c4fade-fb5e-4914-a51b-8d62d3cdb7df', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:06:41', '2021-02-19 14:06:42', NULL, NULL),
(209, '92c4fb4d-0832-4243-a0aa-ae0df26c642f', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:07:53', '2021-02-19 14:07:54', NULL, NULL),
(210, '92c4fb55-c3d4-4fe7-867d-5a4dea39786c', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:07:59', '2021-02-19 14:08:00', NULL, NULL),
(211, '92c4fc95-40d1-40e8-8107-a07b3e007289', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:11:28', '2021-02-19 14:11:29', NULL, NULL),
(212, '92c4fc9f-80e9-41dd-a2bc-bf98e9ff0f48', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:11:35', '2021-02-19 14:11:36', NULL, NULL),
(213, '92c4fcdd-9cc5-4b2a-8b01-7c792572fbc2', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:12:16', '2021-02-19 14:12:17', NULL, NULL),
(214, '92c4fd3c-68a7-4a19-925a-2a13fab8d5f0', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:13:18', '2021-02-19 14:13:19', NULL, NULL),
(215, '92c4fd46-549e-45b6-802c-887428749d8e', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:13:24', '2021-02-19 14:13:25', NULL, NULL),
(216, '92c4fd57-6d49-48ad-bcd3-998f5cad2e0d', 2, 'Download Invoice', 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'App\\Models\\Invoice', 2, 'a:0:{}', 'finished', '', '2021-02-19 14:13:36', '2021-02-19 14:13:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `customers`
--

INSERT INTO `customers` (`id`, `company_name`, `name`, `gender`, `email`, `phone_number`, `city`, `street`, `house_number`, `postal_code`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 'This is a Test', 'Testtest', 'm', 'testtest@gmail.com', '+31 6 83627495', 'De Test', 'testy', '7T', '4016TE', 1, '2021-02-18 09:36:27', '2021-02-19 09:19:21');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `term` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` int(11) NOT NULL,
  `key_phrase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_paid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `invoices`
--

INSERT INTO `invoices` (`id`, `customer_id`, `term`, `product_code`, `key_phrase`, `amount_paid`, `payment_method`, `pay_date`, `description`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '30 dagen', 1, 'Test key phrase', '20', 'wire', '2021-03-30 22:00:00', 'aaaaaaaaaaaaaaa\r\naaaaaaaaaaaaaaa', 'nah', 0, '2021-02-19 07:59:01', '2021-02-19 07:59:01'),
(2, 1, '1 dag', 1, 'testtestetsdfsdfsda', '1', 'paypal', '2021-02-19 11:51:44', 'nah we don\'t do that here', 'how about no??', 8, '2021-02-19 09:14:26', '2021-02-19 10:51:44');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_01_000000_create_action_events_table', 1),
(4, '2019_05_10_000000_add_fields_to_action_events_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_02_17_112550_update_user_table', 2),
(7, '2021_02_18_102703_create_customer_table', 3),
(9, '2021_02_18_115001_create_products_table', 4),
(10, '2021_02_18_143706_create_invoices_table', 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_phrase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `name`, `key_phrase`, `description`, `budget`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test Product', 'this is a test product made from the most amazing software that exist.', 'this is a test product made from the most amazing software that exist.\r\nthis is a test product made from the most amazing software that exist.\r\nthis is a test product made from the most amazing software that exist.\r\nthis is a test product made from the most amazing software that exist.', '2000.00', 'new', '2021-02-18 12:25:43', '2021-02-18 13:13:26');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `company_name`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone_number`, `city`, `street`, `house_number`, `postal_code`) VALUES
(1, 'Mike ten Klooster bv.', 'Mike ten Klooster', 'mike@ten-klooster.com', NULL, '$2y$10$3fpxta6RGtIJqlnFN9YOqeKXtJlr/9QPhhVJhoNNz4hCTAOF3k5wW', NULL, '2021-02-16 14:02:37', '2021-02-17 14:05:25', '06-81018815', 'Vinkega', 'Noordwolderweg 12', '12', '8393RE'),
(2, 'test company bv.', 'tester', 'tester@test.com', NULL, '$2y$10$YwIIO4a005Rgbo/xgiPUP.RJwziQpIJZAJYyhcGkC9FKV7EPwULZe', NULL, '2021-02-16 14:18:35', '2021-02-19 07:57:09', '+31 6 83547226', 'testersville', 'testersstreet', '13B', '7452PS');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Indexen voor tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_email_unique` (`email`);

--
-- Indexen voor tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexen voor tabel `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT voor een tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
