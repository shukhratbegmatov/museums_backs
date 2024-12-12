-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 04:43 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `museums`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add menu', 8, 'add_menu'),
(30, 'Can change menu', 8, 'change_menu'),
(31, 'Can delete menu', 8, 'delete_menu'),
(32, 'Can view menu', 8, 'view_menu'),
(33, 'Can add visit', 9, 'add_visit'),
(34, 'Can change visit', 9, 'change_visit'),
(35, 'Can delete visit', 9, 'delete_visit'),
(36, 'Can view visit', 9, 'view_visit'),
(37, 'Can add museum', 10, 'add_museum'),
(38, 'Can change museum', 10, 'change_museum'),
(39, 'Can delete museum', 10, 'delete_museum'),
(40, 'Can view museum', 10, 'view_museum'),
(41, 'Can add menu', 11, 'add_menu'),
(42, 'Can change menu', 11, 'change_menu'),
(43, 'Can delete menu', 11, 'delete_menu'),
(44, 'Can view menu', 11, 'view_menu'),
(45, 'Can add museum', 12, 'add_museum'),
(46, 'Can change museum', 12, 'change_museum'),
(47, 'Can delete museum', 12, 'delete_museum'),
(48, 'Can view museum', 12, 'view_museum'),
(49, 'Can add visit', 13, 'add_visit'),
(50, 'Can change visit', 13, 'change_visit'),
(51, 'Can delete visit', 13, 'delete_visit'),
(52, 'Can view visit', 13, 'view_visit');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$pVKGYelJkUtKaIEsat9YS7$6rLODQEn81mDQ5WqJSgNpxyGbmrJSv+zCW1/5mVNVSw=', '2023-10-20 20:20:40.636110', 1, 'user', '', '', '', 1, 1, '2023-10-10 18:56:27.850315');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-10 19:03:54.264524', '1', 'Testuz', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-10-10 19:40:39.493894', '1', 'Nameuz', 1, '[{\"added\": {}}]', 10, 1),
(3, '2023-10-20 20:21:17.646061', '1', 'Testuz', 3, '', 8, 1),
(4, '2023-10-20 20:24:48.465226', '2', 'Muzeylar', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-10-20 21:00:30.206869', '3', 'Interaktiv xarita', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-10-20 21:01:08.959104', '4', 'Tadbirlar', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-10-20 21:02:07.195143', '5', 'Virtual museum', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-10-20 21:18:47.124954', '1', 'Nameuz', 3, '', 10, 1),
(9, '2023-10-20 21:32:31.064549', '4', 'Toshkent shahar', 1, '[{\"added\": {}}]', 10, 1),
(10, '2023-10-20 21:33:25.700267', '4', 'Toshkent shahar', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Name [en]\", \"Name [uz]\", \"Name [ru]\"]}}]', 10, 1),
(11, '2023-10-20 22:00:15.950172', '2', 'Muzeylar', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'museum', 'book'),
(8, 'museum', 'menu'),
(10, 'museum', 'museum'),
(9, 'museum', 'visit'),
(11, 'museums', 'menu'),
(12, 'museums', 'museum'),
(13, 'museums', 'visit'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-10 18:55:37.365517'),
(2, 'auth', '0001_initial', '2023-10-10 18:55:37.560286'),
(3, 'admin', '0001_initial', '2023-10-10 18:55:37.629700'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-10 18:55:37.636706'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-10 18:55:37.642702'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-10 18:55:37.672688'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-10 18:55:37.699040'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-10 18:55:37.711064'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-10 18:55:37.717297'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-10 18:55:37.736759'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-10 18:55:37.740764'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-10 18:55:37.746757'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-10 18:55:37.757256'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-10 18:55:37.768156'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-10 18:55:37.782458'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-10 18:55:37.791445'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-10 18:55:37.802462'),
(18, 'museum', '0001_initial', '2023-10-10 18:55:37.810805'),
(19, 'sessions', '0001_initial', '2023-10-10 18:55:37.827578'),
(20, 'museum', '0002_menu_museum_visit_delete_book', '2023-10-10 19:00:43.935219'),
(21, 'museum', '0003_museum_name_en_museum_name_ru_museum_name_uz', '2023-10-10 19:02:21.565268'),
(22, 'museum', '0004_museum_address_en_museum_address_ru_and_more', '2023-10-10 19:03:03.442316'),
(23, 'museums', '0001_initial', '2023-10-14 12:50:01.288074'),
(24, 'museums', '0002_remove_menu_title_menu_title_ru_menu_title_uz', '2023-10-14 12:50:01.311440'),
(25, 'museums', '0003_museums', '2023-10-14 12:50:01.323287'),
(26, 'museums', '0004_rename_museums_museum', '2023-10-14 12:50:01.344905'),
(27, 'museums', '0005_visit', '2023-10-14 12:50:01.391477'),
(28, 'museums', '0006_remove_menu_title_ru_menu_title_en_and_more', '2023-10-14 12:50:01.406391'),
(29, 'museums', '0007_remove_menu_title_en_remove_menu_title_uz_menu_title', '2023-10-14 12:50:01.427960'),
(30, 'museum', '0005_alter_museum_description_alter_museum_description_en_and_more', '2023-10-20 21:22:01.357741');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ziykd5yept8exceh8piv4ksip9fuy4oz', '.eJxVjEsOAiEQRO_C2hAH6IZ26d4zkOajjBpIhpmV8e5KMgutZb1X9RKet7X4refFz0mcxCQOv13g-Mh1gHTnemsytrouc5BDkTvt8tJSfp539--gcC9jjZbAgcOr08YYhhwJIVlG9Q0bVFPS2pImq7MlcpkdG1IB8AgalXh_AKwqNh8:1qtvz6:ZaGWZKqkfE9TQJ_bQ6KNq1ZQG-ckwYJFGpxkv2ZvXNs', '2023-11-03 20:20:40.640447');

-- --------------------------------------------------------

--
-- Table structure for table `museums_menu`
--

CREATE TABLE `museums_menu` (
  `id` bigint(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `museums_museum`
--

CREATE TABLE `museums_museum` (
  `id` bigint(20) NOT NULL,
  `name_uz` varchar(100) DEFAULT NULL,
  `name_ru` varchar(100) DEFAULT NULL,
  `description_uz` varchar(100) DEFAULT NULL,
  `description_ru` varchar(100) DEFAULT NULL,
  `address_uz` varchar(100) DEFAULT NULL,
  `address_ru` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `work_time` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `museums_visit`
--

CREATE TABLE `museums_visit` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `count` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `museum_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `museum_menu`
--

CREATE TABLE `museum_menu` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `title_en` varchar(50) DEFAULT NULL,
  `title_uz` varchar(50) DEFAULT NULL,
  `title_ru` varchar(50) DEFAULT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `museum_menu`
--

INSERT INTO `museum_menu` (`id`, `title`, `title_en`, `title_uz`, `title_ru`, `link`) VALUES
(2, 'Muzeylar', 'Museums', 'Muzeylar', 'Музеи', '/museum_about'),
(3, 'Interaktiv xarita', 'Interactive map', 'Interaktiv xarita', 'Интерактивная карта', '/maps'),
(4, 'Tadbirlar', 'Events', 'Tadbirlar', 'События', '/events'),
(5, 'Virtual museum', 'Виртуальные музеи', 'Virtual museum', 'Виртуальные музеи', '/3d-museums');

-- --------------------------------------------------------

--
-- Table structure for table `museum_museum`
--

CREATE TABLE `museum_museum` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `work_time` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `name_ru` varchar(100) DEFAULT NULL,
  `name_uz` varchar(100) DEFAULT NULL,
  `address_en` varchar(100) DEFAULT NULL,
  `address_ru` varchar(100) DEFAULT NULL,
  `address_uz` varchar(100) DEFAULT NULL,
  `description_en` longtext DEFAULT NULL,
  `description_ru` longtext DEFAULT NULL,
  `description_uz` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `museum_museum`
--

INSERT INTO `museum_museum` (`id`, `name`, `description`, `address`, `number`, `work_time`, `images`, `lat`, `lng`, `name_en`, `name_ru`, `name_uz`, `address_en`, `address_ru`, `address_uz`, `description_en`, `description_ru`, `description_uz`) VALUES
(4, 'O‘zbekiston Davlat San’at Muzeyi', 'Oʻzbekiston Davlat Sanʼat muzeyi — Toshkentda joylashgan sanʼat muzeyi boʻlib, unga 1918-yili asos solingan. Birinchi nomi Xalq sanʼati muzeyi edi. 1918—1935-yillarda Kenas Nikolay Romanov saroyida joylashgan. 1935—1966-yillarda Xalq uyida boʻlgan. 1974-yili Xalq uyi oʻrnida muzey uchun yangi bino qurilgan (meʼmorlar: I. Abdulov, A. K. Nikiforov, S. A. Rozenblum). Muzeyda Yevropa va Rossiya rassomlari ishlari namoyish etiladi, koʻrgazmalar uyushtiriladi.', 'Toshkent shahar', '+998977072147', '09:00-20:00', 'files/covers/1_o1ojIA8.jpg', '41.302778', '69.277778', 'State Art Museum of Uzbekistan', 'Государственный художественный музей Узбекистана', 'O‘zbekiston Davlat San’at Muzeyi', 'Tashkent city', 'город Ташкент', 'Toshkent shahar', 'The State Art Museum of Uzbekistan is an art museum located in Tashkent, founded in 1918. The first name was the Museum of Folk Art. In 1918-1935, Kenas was located in the palace of Nikolai Romanov. He was in the People\'s House in 1935-1966. In 1974, a new museum building was built on the place of the People\'s House (architects: I. Abdulov, A. K. Nikiforov, S. A. Rosenblum). The museum displays the works of European and Russian artists and organizes exhibitions.', 'Государственный художественный музей Узбекистана — художественный музей, расположенный в Ташкенте, основанный в 1918 году. Первое название было Музей народного искусства. В 1918-1935 годах Кенас располагался во дворце Николая Романова. Был в Народном доме в 1935-1966 годах. В 1974 году на месте Народного дома было построено новое здание музея (архитекторы: И. Абдулов, А. К. Никифоров, С. А. Розенблюм). В музее экспонируются работы европейских и российских художников, проводятся выставки.', 'Oʻzbekiston Davlat Sanʼat muzeyi — Toshkentda joylashgan sanʼat muzeyi boʻlib, unga 1918-yili asos solingan. Birinchi nomi Xalq sanʼati muzeyi edi. 1918—1935-yillarda Kenas Nikolay Romanov saroyida joylashgan. 1935—1966-yillarda Xalq uyida boʻlgan. 1974-yili Xalq uyi oʻrnida muzey uchun yangi bino qurilgan (meʼmorlar: I. Abdulov, A. K. Nikiforov, S. A. Rozenblum). Muzeyda Yevropa va Rossiya rassomlari ishlari namoyish etiladi, koʻrgazmalar uyushtiriladi.');

-- --------------------------------------------------------

--
-- Table structure for table `museum_visit`
--

CREATE TABLE `museum_visit` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `count` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `museum_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `museums_menu`
--
ALTER TABLE `museums_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `museums_museum`
--
ALTER TABLE `museums_museum`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `images` (`images`);

--
-- Indexes for table `museums_visit`
--
ALTER TABLE `museums_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `museums_visit_museum_id_2cfa3525_fk_museums_museum_id` (`museum_id`);

--
-- Indexes for table `museum_menu`
--
ALTER TABLE `museum_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `museum_museum`
--
ALTER TABLE `museum_museum`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `images` (`images`);

--
-- Indexes for table `museum_visit`
--
ALTER TABLE `museum_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `museum_visit_museum_id_179ab265_fk_museum_museum_id` (`museum_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `museums_menu`
--
ALTER TABLE `museums_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `museums_museum`
--
ALTER TABLE `museums_museum`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `museums_visit`
--
ALTER TABLE `museums_visit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `museum_menu`
--
ALTER TABLE `museum_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `museum_museum`
--
ALTER TABLE `museum_museum`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `museum_visit`
--
ALTER TABLE `museum_visit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `museums_visit`
--
ALTER TABLE `museums_visit`
  ADD CONSTRAINT `museums_visit_museum_id_2cfa3525_fk_museums_museum_id` FOREIGN KEY (`museum_id`) REFERENCES `museums_museum` (`id`);

--
-- Constraints for table `museum_visit`
--
ALTER TABLE `museum_visit`
  ADD CONSTRAINT `museum_visit_museum_id_179ab265_fk_museum_museum_id` FOREIGN KEY (`museum_id`) REFERENCES `museum_museum` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
