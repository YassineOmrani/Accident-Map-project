-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 02 mai 2020 à 22:21
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tunisiaeduxpo`
--

-- --------------------------------------------------------

--
-- Structure de la table `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `condidate_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requiredfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requiredfilepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bacfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bacfilepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicalfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicalfilepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `application`
--

INSERT INTO `application` (`id`, `condidate_id`, `state`, `requiredfile`, `requiredfilepath`, `bacfile`, `bacfilepath`, `medicalfile`, `medicalfilepath`) VALUES
(1, 43, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 50, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 84, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 85, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 86, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 86, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 87, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 88, 'Accepted', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 88, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 89, 'Accepted', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 89, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 90, 'Refused', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 90, 'Accepted', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 90, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 52, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 52, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 98, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 98, 'waiting', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `bachelor`
--

CREATE TABLE `bachelor` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `educationlevel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picpath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bachelor`
--

INSERT INTO `bachelor` (`id`, `firstname`, `lastname`, `educationlevel`, `phonenumber`, `birthdate`, `created_at`, `updated_at`, `user_id`, `pic`, `picpath`) VALUES
(43, 'fghj', 'fghb', 'fghkl;', 4512, '2020-04-08', '2020-04-08 01:15:27', '2020-04-08 01:15:27', 69, NULL, NULL),
(44, 'jhyg', 'hj', 'ghg', 8965, '2020-04-10', '2020-04-10 03:25:06', '2020-04-10 03:25:06', 85, NULL, NULL),
(45, 'dfghn,;', 'dgfh', 'fgh', 75421, '2020-04-11', '2020-04-11 01:04:54', '2020-04-11 01:04:54', 87, NULL, NULL),
(46, 'aymen', 'aymen', 'bac', 50983274, '2020-04-11', '2020-04-11 01:26:39', '2020-04-11 01:26:39', 88, NULL, NULL),
(47, 'aymen', 'aymen', 'bac', 123456789, '2020-04-11', '2020-04-11 02:09:30', '2020-04-11 02:09:30', 89, NULL, NULL),
(48, 'messi', 'messi', 'bac', 123456, '2020-04-11', '2020-04-11 02:16:56', '2020-04-11 02:16:56', 90, NULL, NULL),
(49, 'cr7', 'done', 'bac', 123466, '2020-04-11', '2020-04-11 03:00:04', '2020-04-11 03:00:04', 91, NULL, NULL),
(50, 'kaka', 'recardo', 'bac', 123456, '2020-04-11', '2020-04-11 03:20:59', '2020-04-11 03:20:59', 92, NULL, NULL),
(51, 'aymen', 'kefi', 'bac', 123456, '2020-04-15', '2020-04-15 21:57:34', '2020-04-15 21:57:34', 107, NULL, NULL),
(52, 'azerfg', 'dfghbj', 'xcgvbh', 7542, '2020-04-15', '2020-04-15 23:12:14', '2020-04-15 23:12:14', 108, NULL, NULL),
(53, 'dfghj', 'cgvhbn', 'dfgh', 542, '2020-04-15', '2020-04-15 23:25:02', '2020-04-15 23:25:02', 109, NULL, NULL),
(54, 'dfghj', 'fghjghjk', 'ghjk', 852, '2020-04-15', '2020-04-15 23:34:06', '2020-04-15 23:34:06', 110, NULL, NULL),
(55, 'aymen', 'kefi', 'bac', 50983274, '2020-04-16', '2020-04-16 23:07:06', '2020-04-16 23:07:06', 112, NULL, NULL),
(56, 'aymen', 'kefi', 'bac', 123456, '2020-04-16', '2020-04-16 23:14:10', '2020-04-16 23:14:10', 113, NULL, NULL),
(57, 'fgh', 'fgh', 'fghj', 56, '2020-04-17', '2020-04-17 03:43:07', '2020-04-17 03:43:07', 114, NULL, NULL),
(58, 'fghjkl', 'tfghjkl', 'rtyhjkl', 7452, '2020-04-17', '2020-04-17 03:48:48', '2020-04-17 03:48:48', 115, NULL, NULL),
(59, 'fghj', 'tyghj', 'ghjk', 7845, '2020-04-17', '2020-04-17 03:58:31', '2020-04-17 03:58:31', 116, NULL, NULL),
(60, 'oiuhgyf', 'fghjkl', 'rtyujklm', 84512, '2020-04-17', '2020-04-17 04:38:12', '2020-04-19 06:02:40', 117, 'cvbhgf@uytghg.png', '/uploads/cvbhgf@uytghg.png'),
(61, 'fgvybun', 'vybj', 'yvbk,l', 84512, '2020-04-17', '2020-04-17 05:26:52', '2020-04-17 05:26:52', 118, NULL, NULL),
(62, 'vgbhjnk,', 'hjlk,', 'ghjk', 56123, '2020-04-17', '2020-04-17 05:56:43', '2020-04-17 05:56:43', 119, NULL, NULL),
(63, 'fghj', 'fghjk', 'hjk', 845132, '2020-04-17', '2020-04-17 06:12:07', '2020-04-17 06:12:07', 120, NULL, NULL),
(64, 'fghjk', 'ghjkl', 'hjkl', 4512, '2020-04-17', '2020-04-17 06:32:30', '2020-04-17 06:32:30', 121, NULL, NULL),
(65, 'fghjk', 'fghjk', 'fghjk', 875421, '2020-04-17', '2020-04-17 06:50:39', '2020-04-17 06:50:39', 122, NULL, NULL),
(66, 'yghuj', 'ghjk', 'ghjk', 52, '2020-04-17', '2020-04-17 07:03:20', '2020-04-17 07:03:20', 123, NULL, NULL),
(67, 'qsdfghjklm', 'sdfghjkl', 'xcvbhjkl', 74139852, '2020-04-17', '2020-04-17 07:18:45', '2020-04-17 07:18:45', 124, NULL, NULL),
(68, 'dfghjklm', 'sdfghjklmù', 'dfghjklm', 123456, '2020-04-17', '2020-04-17 07:33:11', '2020-04-17 07:33:11', 125, NULL, NULL),
(69, 'aymen', 'kefi', 'bac', 123456, '2020-04-17', '2020-04-18 00:53:25', '2020-04-18 00:53:25', 126, NULL, NULL),
(70, 'fghjkl', 'hjkl', 'ghj,;', 7542, '2020-04-18', '2020-04-18 01:08:51', '2020-04-18 01:08:51', 127, NULL, NULL),
(71, 'fghjkl', 'hgjkl', 'fghjkl', 87451, '2020-04-18', '2020-04-18 01:51:10', '2020-04-18 01:51:10', 128, NULL, NULL),
(72, 'tfcgvhbkl', 'cgvhbkjl,', 'rctvyb', 4512, '2020-04-18', '2020-04-18 01:59:46', '2020-04-18 01:59:46', 130, NULL, NULL),
(73, 'dfghjk', 'dcfvgh', 'gbhjmù', 7854, '2020-04-18', '2020-04-18 02:08:04', '2020-04-18 02:08:04', 131, NULL, NULL),
(74, 'trfcvgbhjk,', 'dxfchjbk', '8465132', 845132, '2020-04-18', '2020-04-18 02:34:21', '2020-04-18 02:34:21', 132, NULL, NULL),
(75, 'fchjbkl,', 'fghvjbk', 'cgvhjbkl', 4512, '2020-04-18', '2020-04-18 02:36:05', '2020-04-18 02:36:05', 133, NULL, NULL),
(76, 'ghjbk', 'gvjhblk,', '78451', 451, '2020-04-18', '2020-04-18 02:57:26', '2020-04-18 02:57:26', 136, NULL, NULL),
(77, 'dfghjkl', 'fhbj', 'bhj', 84651, '2020-04-18', '2020-04-18 03:04:15', '2020-04-18 03:04:15', 137, NULL, NULL),
(78, 'gvhbkjl', 'gvjhbkl', 'gjhbkl,', 4512, '2020-04-18', '2020-04-18 03:05:35', '2020-04-18 03:05:35', 138, NULL, NULL),
(79, 'dfgbhjnk,l;', 'ytguhjk,l', 'yguhjk,l', 45120, '2020-04-18', '2020-04-18 03:22:03', '2020-04-18 03:22:03', 139, NULL, NULL),
(80, 'fcghjblk,', 'gvhjbkl,', '4512', 4512, '2020-04-18', '2020-04-18 03:25:51', '2020-04-18 03:25:51', 140, NULL, NULL),
(81, 'gvhbjnk', 'ghjbkl', 'ghkl,', 874651, '2020-04-18', '2020-04-18 03:33:38', '2020-04-18 03:33:38', 141, NULL, NULL),
(82, 'yghjk', 'gvjhbkl', '7845', 874521, '2020-04-18', '2020-04-18 03:37:56', '2020-04-18 03:37:56', 142, NULL, NULL),
(83, 'ygvhbjk', 'uyhj', 'ygvyhj', 89465, '2020-04-18', '2020-04-18 03:38:47', '2020-04-18 03:38:47', 143, NULL, NULL),
(84, 'fghjkdfgh', 'hj', 'fghj', 6532, '2020-04-18', '2020-04-18 03:49:37', '2020-04-18 03:49:37', 144, NULL, NULL),
(85, 'dfghbjk,', '45132', 'xfghjbk', 841, '2020-04-18', '2020-04-18 04:08:32', '2020-04-18 04:08:32', 145, NULL, NULL),
(86, 'tyguhjik', 'ghkjl', 'ghkjl', 841, '2020-04-18', '2020-04-18 04:13:07', '2020-04-18 04:13:07', 146, NULL, NULL),
(87, 'ubdssdjdsk', 'jnsdjnsdj', '123456', 123456, '2020-04-18', '2020-04-18 04:26:44', '2020-04-18 04:26:44', 147, NULL, NULL),
(88, 'fghjk', 'fghjnk', 'ghbjnk,l', 45132, '2020-04-18', '2020-04-18 21:30:58', '2020-04-18 21:30:58', 148, NULL, NULL),
(89, 'aymen', 'kefi', 'bac', 50983274, '2020-04-18', '2020-04-18 21:42:00', '2020-04-18 21:42:00', 149, NULL, NULL),
(90, 'fvgb', 'gbhnjk', 'ubhnjk', 563, '2020-04-18', '2020-04-18 21:48:21', '2020-04-18 21:48:21', 150, NULL, NULL),
(91, 'amine', 'kefi', 'bac', 123456, '2020-04-18', '2020-04-18 23:44:13', '2020-04-18 23:44:13', 151, NULL, NULL),
(92, 'ghjk', 'ghjkghjk', 'ghjk', 8465132, '2020-04-25', '2020-04-25 18:24:06', '2020-04-25 18:24:06', 158, NULL, NULL),
(93, 'fghjk', 'fghj', 'fghjk', 56123, '2020-04-27', '2020-04-27 06:42:46', '2020-04-27 06:42:46', 159, NULL, NULL),
(94, 'ftyghujikl', 'ghjkl', 'fghjklm', 65132, '2020-04-27', '2020-04-27 06:46:08', '2020-04-27 06:46:08', 160, NULL, NULL),
(95, 'fghjklm', 'vbn,', 'ghjkl', 5210, '2020-04-27', '2020-04-27 21:59:43', '2020-04-27 21:59:43', 177, NULL, NULL),
(96, 'aymen', 'kefi', 'bac', 50983274, '2020-04-28', '2020-04-28 11:06:02', '2020-04-28 11:06:02', 178, NULL, NULL),
(97, 'dfghjkl', 'fghj', 'dfghj', 9846132, '2020-04-28', '2020-04-28 11:26:10', '2020-04-28 11:26:10', 179, NULL, NULL),
(98, 'aymen', 'kefi', 'bac +3', 50983274, '2020-05-02', '2020-05-02 16:32:43', '2020-05-02 16:32:43', 200, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `description_mj`
--

CREATE TABLE `description_mj` (
  `id` int(11) NOT NULL,
  `major_id` int(11) DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobchance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bacreq` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satreq` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toeflreq` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grereq` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `description_mj`
--

INSERT INTO `description_mj` (`id`, `major_id`, `university_id`, `type`, `jobchance`, `bacreq`, `satreq`, `toeflreq`, `grereq`, `price`, `duration`) VALUES
(8, 2, 57, 'bachelor', '', '', '', '', '', 0, 0),
(9, 3, 57, 'bachelor', '', '', '', '', '', 0, 0),
(10, 2, 59, 'master', '', '', '', '', '', 0, 0),
(11, 3, 59, 'master', '', '', '', '', '', 0, 0),
(12, 2, 60, 'master', '', '', '', '', '', 0, 0),
(13, 2, 61, 'master', '', '', '', '', '', 0, 0),
(14, 2, 62, '', '', '', '', '', '', 0, 0),
(15, 2, 62, 'master', '', '', '', '', '', 0, 0),
(16, 2, 63, '', '', '', '', '', '', 0, 0),
(17, 2, 63, 'master', '', '', '', '', '', 0, 0),
(18, 2, 64, 'bachelor', '', '', '', '', '', 0, 0),
(19, 2, 65, 'bachelor', '', '', '', '', '', 0, 0),
(20, 2, 66, 'bachelor', '', '', '', '', '', 0, 0),
(21, 2, 67, 'bachelor', '', '', '', '', '', 0, 0),
(22, 2, 68, 'bachelor', '', '', '', '', '', 0, 0),
(23, 2, 69, 'master', '', '', '', '', '', 0, 0),
(24, 2, 70, 'bachelor', '', '', '', '', '', 0, 0),
(25, 2, 71, 'master', '', '', '', '', '', 0, 0),
(26, 2, 72, 'master', '', '', '', '', '', 0, 0),
(27, 3, 72, 'master', '', '', '', '', '', 0, 0),
(28, 2, 73, 'bachelor', '', '', '', '', '', 0, 0),
(29, 3, 73, 'bachelor', '', '', '', '', '', 0, 0),
(30, 2, 74, 'bachelor', '', '', '', '', '', 0, 0),
(31, 2, 75, 'bachelor and master', '', '', '', '', '', 0, 0),
(32, 2, 82, 'bachelor', '', '', '', '', '', 0, 0),
(33, 3, 82, 'bachelor', '', '', '', '', '', 0, 0),
(34, 2, 83, 'master', '', '', '', '', '', 0, 0),
(35, 3, 83, 'master', '', '', '', '', '', 0, 0),
(36, 2, 84, 'bachelor', '', '', '', '', '', 0, 0),
(37, 3, 84, 'bachelor', '', '', '', '', '', 0, 0),
(38, 2, 85, 'bachelor', '', '', '', '', '', 0, 0),
(39, 3, 85, 'bachelor', '', '', '', '', '', 0, 0),
(40, 2, 86, 'bachelor and master', '', '', '', '', '', 0, 0),
(41, 3, 86, 'bachelor and master', '', '', '', '', '', 0, 0),
(42, 2, 87, 'master', '', '', '', '', '', 0, 0),
(43, 3, 87, 'master', '', '', '', '', '', 0, 0),
(44, 2, 88, 'bachelor', '', '', '', '', '', 0, 0),
(45, 3, 88, 'bachelor', '', '', '', '', '', 0, 0),
(46, 2, 89, 'master', '', '', '', '', '', 0, 0),
(47, 3, 89, 'master', '', '', '', '', '', 0, 0),
(48, 2, 99, 'bachelor', '6523', 'no', 'no', 'no', 'no', 6532, 6532),
(49, 2, 99, 'bachelor', '6523', 'no', 'no', 'no', 'no', 6532, 6532),
(50, 3, 100, 'bachelor', '5423', 'no', 'no', 'no', 'no', 6532, 6532),
(51, 3, 100, 'bachelor', '5423', 'no', 'no', 'no', 'no', 6532, 6532),
(52, 2, 101, 'bachelor', '4521', 'no', 'no', 'no', 'no', 521, 210),
(53, 3, 102, 'bachelor', 'gfhjk', 'no', 'no', 'no', 'no', 6532, 5632),
(54, 2, 102, 'bachelor', 'gfhjk', 'no', 'no', 'no', 'no', 6532, 5632),
(55, 2, 103, 'master', '4521', 'no', 'no', 'no', 'no', 74521, 87451),
(56, 2, 104, 'bachelor', '100', 'no', 'no', 'no', 'no', 94562, 9562),
(57, 2, 106, 'master', '100', 'no', 'no', 'no', 'no', 100, 100),
(58, 2, 107, 'bachelor', '555', 'no', 'no', 'no', 'no', 5555, 5555),
(59, 2, 108, 'bachelor', '55', 'no', 'no', 'no', 'no', 55, 55),
(60, 3, 109, 'master', '54', 'no', 'no', 'no', 'no', 45, 45),
(61, 2, 110, 'master', '5', 'no', 'no', 'no', 'no', 5, 5),
(62, 2, 111, 'bachelor', '555', 'no', 'no', 'no', 'no', 555, 55),
(63, 3, 112, 'bachelor', '55', 'no', 'no', 'no', 'no', 55, 55),
(64, 2, 113, 'bachelor', '55', 'no', 'no', 'no', 'no', 55, 55),
(65, 3, 114, 'master', '100%', 'no', 'no', 'no', 'no', 1500, 4),
(66, 2, 114, 'bachelor', '100%', 'no', 'no', 'no', 'no', 1500, 4);

-- --------------------------------------------------------

--
-- Structure de la table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `id_university` int(11) NOT NULL,
  `bachelor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `favorite`
--

INSERT INTO `favorite` (`id`, `id_university`, `bachelor_id`) VALUES
(1, 70, 50),
(2, 83, 78),
(3, 77, 79),
(4, 80, 79),
(5, 82, 91),
(6, 82, 95),
(7, 73, 90),
(8, 57, NULL),
(9, 59, 52),
(10, 72, NULL),
(11, 72, 98),
(12, 72, 98);

-- --------------------------------------------------------

--
-- Structure de la table `major`
--

CREATE TABLE `major` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `major`
--

INSERT INTO `major` (`id`, `name`) VALUES
(2, 'math'),
(3, 'phy');

-- --------------------------------------------------------

--
-- Structure de la table `refresh_tokens`
--

CREATE TABLE `refresh_tokens` (
  `id` int(11) NOT NULL,
  `refresh_token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`id`, `refresh_token`, `username`, `valid`) VALUES
(1, '8cf3c2557e1517fdd0bfffcc7360c38cdf1ec9dbd3070228b0338b81fb115aeeb705076b899282fd732fa99272d6b91f643ab72e89697ef077556d5f5c79b93c', 'tt@tt', '2020-04-04 15:34:09'),
(2, '1f22dd28b0bc97674a01ba92cd55c083d347ed206852ff272c6625a94e077150e087b07425ffd44bfa88cd4c103840b3349c05f75194a2180c463ae2f0241360', 'kk@kk', '2020-04-04 16:46:53'),
(3, '2d8d1a468df89be3e53f7fdd6e11eb750a104e05f550ba989359b1ebde5ac8b649defed9d5d0ec5f71bdacd912859aacef6f5294a64365972aa33e22efa3a88c', 'tt@tt', '2020-04-04 16:55:03'),
(4, '9e2a3fd507c4b327048bd4d6204470143ddc5ee40756463b6825a3ef52c920c0ddc7e0d98895283120aba90ac7e256ec93e7c9027374012efc2281921e74411e', 'tt@tt', '2020-04-04 17:12:21'),
(5, '30ae8c4bcabbfe243429d8d0cfa7a2f6531b21270b34df6ff3f243b33a0f63b611d1725b5ba9eecebb012a08afa1618dcb3e84dd7edd3d88ede5206ea5966965', 'nfs@nfs', '2020-04-23 23:04:56'),
(6, 'a1e78ebc56c244f9fdfe10ca30d81180311884412e6a39c584416f2769f386881c57a1c9d676c09e46fc6e6cef19b3966ec48c8475022836cfa01e6a6142c0f4', 'nfs@nfs', '2020-05-05 15:59:11'),
(7, '0168ac55d6f881f8ab38b6ec980e0d835791e283683f2d42caebb11a623545a37fb6761624f3d0f7659791de28d8b64d10842d669266f3c9eec1fcde3ba89e5d', 'nfs@nfs', '2020-05-05 16:23:57'),
(8, 'cd9aa241f43abe20ccd55465106454ffde28b8df0f4dfb43272470dbe809f39a9e0613e2fe17f8f80d7d34e1dcb921043147bcabe64166a72f7ed7e6f7f85460', 'nfs@nfs', '2020-05-10 18:04:49'),
(9, 'a2f38c9598cb30a6520f02d0c3f1b6f8321e57f715788baa67fc8ee5d0aaef844776cdeb88e8d6d59ee5f65f0f46102c065336c8c4f794ee1bf04d23e7ab355d', 'nfs@nfs', '2020-05-10 18:08:02'),
(10, 'dc5696b8edd30483d085ed20e97926c093bfc6689d18700bb1147c8cf2df8493148cef26dd32251164fb122d6c4d7a230fd292e3b1fe34d43b2cfc1f7f30cb0a', 'nfs@nfs', '2020-05-10 18:15:08'),
(11, '96f6e64d9048d596d73883153d3636270d4291f2c69e0dc1b49e3d5aa5fcb5c117182f29c7e2666f3b801497293d00fd04cdc27f3d58c208f1c66352deb161e7', 'nfs@nfs', '2020-05-10 18:17:12'),
(12, 'd1db2b6c0b525e17fa981b0b1ee340f2b1e7a04c377f5b0296e95e6ff2d1be0090cb12951826870b6ae6d5fe98aa35bed0f6059e451ed1572f0a94987f81c624', 'nfs@nfs', '2020-05-10 18:20:53'),
(13, '9bbe437a0acfd845ae4098a5e39125af3f9fde394ff07d8ca7056bd68e52736bead653cc2eb1e16ecd0c89cb049a42ea07c21762f623e24b7c30b8080a6e4dc5', 'wxc@wxc', '2020-05-10 20:12:28'),
(14, '5240945c6baf939113406ecdaa310ed59c448091b07495348f4b90a8c019199693e8c0e1b8e30f8ab81a4967d86067b95043c55e2768347b2c7e751ad3cbfb30', 'xfcghjbk@jhgfgdf', '2020-05-29 02:45:23'),
(15, '1b4a6b32824a298be6ef4cd22bfab1c0ec3d67cf4c7a716cd5bfb9876e5e5397fb4eace56d5b704731cdc11d7d9a83c5bca4c46faeafb69482815739f8aaddee', 'xfcghjbk@jhgfgdf', '2020-05-29 03:22:21'),
(16, '3a6be1385392d8147697138d4fdaf72fa1b8d714216ceedbdf7751f4596ad5ffc299efd61e525dafe30931e9ce328f239e34111fe9553803f933a35ad567e462', 'xfcghjbk@jhgfgdf', '2020-05-29 03:24:14'),
(17, '2940ff8fce1cc882a2c59cbdf8db85f58ce3a629ea7ee5454ab4e20c779da2eea4eba509a593825abe7ddbe186bab6839192259cec42609e6b940e231bcced72', 'xfcghjbk@jhgfgdf', '2020-05-29 03:39:06'),
(18, '29336ed5c77c2dd8bd61ce58929edb94531e54f3bac7f5ad72029b5b72f812c7b846913fe5faa047c301a675a15080db560ce165f9486a4efe896cab096b0f27', 'xfcghjbk@jhgfgdf', '2020-05-29 03:41:45'),
(19, 'f4c2cb6f976156870bc46e589fbc61a0e50a12aa85b7c2fddb331bc5b100c29666b45d26a530ea71e45e30c21afc30abf92ea982c42eaae7f4866dd1105f3bdf', 'xfcghjbk@jhgfgdf', '2020-05-29 03:42:05'),
(20, 'cf54d92aa03f0a24d7b4bea2747b1867eb1eb3fb1908ca23254917a530818cd03ef1a5dd6787c43ddb55246382936b9a35649e7af9b01a5f0df93bca3f7fcf26', 'xfcghjbk@jhgfgdf', '2020-05-29 03:44:21'),
(21, '9bf5770bfecc2cf65cc4310f7dc0eb143d476a6df75fc12d6467ed73817121a252d86ab7bb6517b1b13e22cbcb8b1655968921df53326f4ec3121f016be4b06e', 'xfcghjbk@jhgfgdf', '2020-05-29 03:48:04'),
(22, '91dd7095b1cece4ebea7bd47b24be63665d61a81267f48020e475c2327c8b85660d5ad40aaad2a5989ad649a2822778b8473e51d65d62faf09dfc1b3f764ce32', 'xfcghjbk@jhgfgdf', '2020-05-29 03:59:40'),
(23, '64fec5a341c16a95043b8d173a661b1ee3b058823418d8bea5afee3427819df27edc75c310a955e1cb5686f9d5dbecf75916ceaa021465a654135f217aff3108', 'xfcghjbk@jhgfgdf', '2020-05-29 04:00:35'),
(24, '883ed55ae88a09a600da5c2d831b7fd8c3794c09359145f6deb49ecf650dc187d5bc346f6a17ae8fefe216430557877284c2dcdd808e84c6c6a1f30861b44e62', 'xfcghjbk@jhgfgdf', '2020-05-29 04:07:28'),
(25, 'ad2e3f7ebab62d481d24538f37247e8866cdeef3a19b2bb638177fd7233ebd4033252bb4fdab6b25f7e1f78b8337cbf1b4eb38498a668e5a3363fe688eb2d91c', 'xfcghjbk@jhgfgdf', '2020-05-29 04:14:14'),
(26, 'd6bbd5e88d46f1f68d25e92d924eb017a51ae817beca971fda4732c4ffceda7c32c65777e7634ae7f4cc1af94eb0905e2b53483ee983893e37a9da16588ee303', 'xfcghjbk@jhgfgdf', '2020-05-29 04:50:33'),
(27, 'ddee2dfa8b4bf0d8f80bf2f7613640fb36e24fafdacff95aac8e9bde50eb677fb20a7fa8d6725941ebb2fb8270886dd78c86edf08ba306d3cf00c9795434584f', 'xfcghjbk@jhgfgdf', '2020-05-29 04:53:02'),
(28, 'a59cf5af51833799c6ae6f5468fdec2876d71e7c40a85a569069a99847c63b594190b0fcb298171148705f799937d4fa87cf780d284bf095094fe94dd4d38260', 'xfcghjbk@jhgfgdf', '2020-05-29 04:55:15'),
(29, '08f0d0395e934b32ec9db8e62fd1b51cd648ae839509914049a7f97022229a363704dd89e3048586f99607b74ab13aba23be308f13a93f8dfa40d302e6ebffba', 'xfcghjbk@jhgfgdf', '2020-05-29 05:08:12'),
(30, '3723a7d4bab2e59540426b2a0922c02e44724c387525f6ba924aca0e5b2e33f91b9d34e607e88ba9e8a6232a908c69e7b6114ca201b1385a78e383b3f7111ae2', 'xfcghjbk@jhgfgdf', '2020-05-29 05:09:00'),
(31, '296a4f720c7c00e0104cd2e1756281b2474c3546d65bdf254c60a87b65be902f5e617f06d9dd02d89711ca03b07515c1b8baa7f5da2fdda0c61996b90fc9ff95', 'xfcghjbk@jhgfgdf', '2020-05-29 05:27:58'),
(32, 'f9e3ef89025e88d0b9b0970c3c10d738efc36c990a8918fb533e720eb06c0c80878e56dddcad6d3e9a89ffb0881fe9b8fab0193f6a4ea7959a6b86ca229932cf', 'xfcghjbk@jhgfgdf', '2020-05-29 05:35:12'),
(33, 'b4bb2f45ef79095d30298eef9a9e0151536f0d94e7096915dec052998b41aaada8ca059888bc807f7ed4eeffd193be9cdd18e984a256c7154f090bd2750e8060', 'xfcghjbk@jhgfgdf', '2020-05-29 05:46:30'),
(34, 'f425dc9ad1381601f4221a888158567ba3d6f0eed4c1cfc1c8373225ad52eb96e915fb2029f23455b2e6d3d94c50311487e477b6584c5a8c1b87a005a2fd3496', 'xfcghjbk@jhgfgdf', '2020-05-29 05:55:45'),
(35, '3a766123b13bb68d3c122a53c8c62ddf3cdf5dc13624033d717fb0213d1063d6f72e0e56c8ad4ea145195ec41705ac5dcf1d148e1df59b1fd20231bd3fc4eb21', 'xfcghjbk@jhgfgdf', '2020-05-29 06:12:31'),
(36, 'bba460ed82c19614603551a1274c82ffcbe75f2f79d28a08c9d3e37ef3a7d1aa36d8e3b5b9d2362114fddd486b9b2a6c5d2f01d32e940b39d1e000e3697abb29', 'xfcghjbk@jhgfgdf', '2020-05-29 06:16:08'),
(37, 'd9bfbac8c7e6a32e91e3a9cc881f926c1e71d0638d0c1b161f4e860491cb02b15304dc208135d1cfb500c07025d9605e0fb2db704562fb7d09a305c5004bdf0e', 'xfcghjbk@jhgfgdf', '2020-05-29 06:16:48'),
(38, 'b0c214dd97c05e1ed180d23f8bfeb8224399445996a4901c94e760373e9e20b72e90f29f60ebaa4f6fd21dd9229f1339cb85f765f61b531d364f93803641b69a', 'xfcghjbk@jhgfgdf', '2020-05-29 06:30:23'),
(39, '805a3989de8ee0f3d3a7c7835ae658f53a5df130e40ee2fbc02a2a19b94c6904ace579404ef4931a6daedfdbca31d21ab8269846baa5bf889119e2e78228a2ee', 'xfcghjbk@jhgfgdf', '2020-05-29 06:34:22'),
(40, 'f7f7b86a33b4ee6fa0f8653ee66c24f819a7d7ada2e774fdd9a713ae6c9d589616c978fc121d09ab7f73f7134737a634d22fe36d0f39c82c68333cfa065a446b', 'xfcghjbk@jhgfgdf', '2020-05-29 06:34:24'),
(41, '0116c3d83f9585e192c817f472f8de48bda8cade5e89348b1bb951597cd7e881a5e610d51e705a3234623e69ed619e38945907d0d9d02530bbb88c424f97129b', 'xfcghjbk@jhgfgdf', '2020-05-29 06:43:42'),
(42, '750575af82371ed43732f1dd91f54c8796ecebdfc0f93f27d5b0aaedea76aa79e13f311b64ed6e8abb5ed323d682af084b59e57f1fc6e4d95ba844e399235fba', 'xfcghjbk@jhgfgdf', '2020-05-29 06:54:45'),
(43, 'bdc5f25d141e5c1ae98166906388a6c74d683cf228c8fbf313e09c94952cc44f67777a19ee6c79c350c10bdd52ab35f6c4f901ac76a07762091173630ce879b2', 'xfcghjbk@jhgfgdf', '2020-05-29 07:01:20'),
(44, '5c44ead397aaea0f9e8d0db5f03bee9d4f84152cd4a3157668ee71ae86ba79fd6ab13a0316fcc9fbb478469a1bd4cd45414f23f81f6c3f2a1e041d9d260a5d4e', 'xfcghjbk@jhgfgdf', '2020-05-29 07:03:02'),
(45, '91e7fc21b099ae614738e8548d0d15ad10c717d975380454887b24921f3b0e2af193f79da950a2d37f05b442ec9e528839c98dac7a40e6fbebf6cf4f0373bd44', 'xfcghjbk@jhgfgdf', '2020-05-29 23:38:18'),
(46, 'c8f67325153fd9a8c94d1d0453510c599101976b718db1df498fd8f9ec2428dcfdacd02e1e5242954671721be8027db540a11751b950c7ca608dab3ff187be71', 'xfcghjbk@jhgfgdf', '2020-05-29 23:38:22'),
(47, '358bcdeea10ee59a553f1b9b99a3983095b969e2e19a68d730e2a54a3728300105f1c553a83b412ddf7df1d3f9ba969df890050d80dc1218b8b647a167d05053', 'xfcghjbk@jhgfgdf', '2020-05-29 23:49:05'),
(48, '406030422acb5165de529051db8aa9577b85e2a5ae57de47e8aed6786b6d1c72e74da74fa715b4be47294fe10b06499ee30d1077de01a1637a04da8f9d323097', 'xfcghjbk@jhgfgdf', '2020-05-29 23:50:13'),
(49, 'd94d6b65f1620c4c21a803f5baf72af9322854d39e1ac08630848ad9032d7da74743cc51641ba5950bf96cb0c460712db2a1e9fa78360b4b4d9f423670dda7f2', 'xfcghjbk@jhgfgdf', '2020-05-29 23:55:05'),
(50, '7431bd610aa079844361e5a7edc12fa496868285c7fca1637927b17b3af9e842bf2afb181adad3539f16d34eb0b5ca9bbf8f1b993f699d5c1954b4ee10ccab8d', 'xfcghjbk@jhgfgdf', '2020-05-30 00:00:18'),
(51, '7264e4bf12afcf080e414f87e00244d37c23dfbd4d739fe239e840db815cc926d3df661add2d8ef9fac4094cb37acbd99c67dbcaeed2af3e9a7dfba087b0085e', 'xfcghjbk@jhgfgdf', '2020-05-30 00:05:57'),
(52, '188a4ba385f1fe76dd3a5f89498654ccb77ddfd6a025f94d06347cbf92ea5f11db30b7b78957918fa02224316fbe2df6ef75e92880367fcdc31312a88ba48170', 'xfcghjbk@jhgfgdf', '2020-05-30 00:09:08'),
(53, '0a57600f14127585646fca90fb2c60d944136d580448ba335cb9716a0dab8c4c3360583cdaf97518a32cd61cefec4b71fd9d4f2626b1c6cfa4205e48182ac1ff', 'xfcghjbk@jhgfgdf', '2020-05-30 00:15:20'),
(54, 'bdd1e136d1c9f255ccff5c11ca80e1393f241637704fe5fb3d74aa08645447cd08c5f74561a83e6aa96a9bae3fe61a10fd29d2c9b53013be1a85407fc6da4ba3', 'xfcghjbk@jhgfgdf', '2020-05-30 00:17:43'),
(55, '7faebd377da6cdc289245eda8cdbd03ec70b8f2f2ed5881afd33c21f29393d923d9d372bc1ec15459ff369cfd15798704132f35a58fa5ce92d2bb9c94f169083', 'xfcghjbk@jhgfgdf', '2020-05-30 00:42:03'),
(56, '5d8b5f2ec6b9640d6433d65dab7ea119fa6d0e3f2f96089cb5732c0aad2a43f65cfdc14ac3436464fcf17a070c4ab93d838d4cf131c25282f776e873dbdc4c8f', 'xfcghjbk@jhgfgdf', '2020-05-30 00:42:46'),
(57, 'a0d83d31da9b05495b1dfc277eca79d998ce083938d6e51e43e810c5c5a7fef2cafef88e1acd9dd7a5469d602a2be8b5a03549531b23ab709a3a2b7c3e471ae8', 'xfcghjbk@jhgfgdf', '2020-05-30 00:44:10'),
(58, '5edacc34e0a5efd0ae8634aa405d0fd6e91cb4378a4701bba7d273b55f89aed61656ca69e14938450422c3e2cdb299583fbce3aec441f00650c36381bd64a77a', 'xfcghjbk@jhgfgdf', '2020-05-30 00:44:21'),
(59, '7071e541e33221b983fc901d7b897934132f95de38aff79286fec3be4881b352f6a836dccbba8d008148a066523ecc6f6daa0453276edb2e0acb967e96154b6f', 'xfcghjbk@jhgfgdf', '2020-05-30 00:45:18'),
(60, '5fb88f0283ba27c11985adf1e7218b83a9fc6ca983b3b6c640f47e1dc57698ca65983a558c16822ec3c28e78d1399cd5e1f53d091967c260ef884e870d38bee7', 'xfcghjbk@jhgfgdf', '2020-05-30 01:23:46'),
(61, '612b817f9ba89baa37e131968cad8310de207b36943a112694ddb9cc1aec005514908e4e54f18ae2bd2f770bfe7c8a1587945eb7c0939fb8545dce2bb616c630', 'xfcghjbk@jhgfgdf', '2020-05-30 01:24:31'),
(62, 'baac56e1d8ed41865caed46adf0cd9536e6e8eaed71db902656f9b10123da7d95e455ba790ac1f8716eeeb15031607af2efd9f4a92bca4a3595cb04f3e798287', 'xfcghjbk@jhgfgdf', '2020-05-30 01:25:11'),
(63, 'fb87970cfbd714f12a934218f9d73871a1616732d905530bc2cf945c67bdb52ab57aee5e5a4ad2fa6f33ebeaa69e714dc779343e578fe2c35c65c137bb23512f', 'xfcghjbk@jhgfgdf', '2020-05-30 01:27:52'),
(64, '18662bd77724e75e7781fb2f54102f9205b2b893a40541b852ebaaad28a8769fa7eee15485832f0d6f86444ce8ceb6426ddba3c3958b4fe653d0fa3576c5c11e', 'xfcghjbk@jhgfgdf', '2020-05-30 01:36:16'),
(65, '9e434a9b10d03ff792469523764ee21e53dceb211e8c7e9ab2e04ebc0444ee527b219624b3487fb17524a64919374abb098144173e36d10d055e7dc3d369d9c0', 'xfcghjbk@jhgfgdf', '2020-05-30 01:45:29'),
(66, 'ee1ef0e2cc6928a10e0896f809f8ce0594d9f509ebb4cf96d341664ee1a975d53d13b6b6e6c5c46f5bec7caf707c128898d76101f3791aecff3c1bcb7ac9745b', 'xfcghjbk@jhgfgdf', '2020-05-30 01:46:24'),
(67, 'da74ffcb93f80ae01434f6fea54faf5b0b3cddd85228f803e087fc30de9e99682e272f1d56ef1a375fa5bbb8849a84efc5895123ce0e62f91c0a74276b202d2c', 'xfcghjbk@jhgfgdf', '2020-05-30 01:59:55'),
(68, 'acebfc3be7d5a5fd178dd5b16dd4a964de1d7bd4a6eac492421c8458736e96fd7b8c4be666f40ba39decd8a022eb218b2bd813e3e7c375f7f256e8cdd9376622', 'xfcghjbk@jhgfgdf', '2020-05-31 01:40:36'),
(69, 'ec42d633da35687aa3d935c5b43ee647098285170cb8165b0deec69d01d41105a2974d439e495e26d33e161cadd70afce94b7eca418925d93ddac45f03166682', 'xfcghjbk@jhgfgdf', '2020-05-31 01:46:25'),
(70, '88979547be8d7b924b8ec52c862ce2e62398a9117ee41bce0b66e0a2c51c1a14966d004c3de0117dd57800452df9fe58c69d91c45f5487c1b013b6f1d976518c', 'xfcghjbk@jhgfgdf', '2020-05-31 01:47:23'),
(71, 'ee3a516c59538a48c7949cabe1a3a60585bf7e15dca673fc5cd27f948942bb0b7f839f5eb1d2452998e78d9ee72864335b859c3d46bd2118472d47674c4bd33d', 'xfcghjbk@jhgfgdf', '2020-05-31 02:18:34'),
(72, '3460b0f619b88b7db9fe3475f459ab418409ba3a98d895555c2045ef8500258894ca028c1d6bd63aed1ba9c8656d57251a9e602f910922b99c8cf8715a465cf6', 'xfcghjbk@jhgfgdf', '2020-05-31 02:28:34'),
(73, '1b6919e0728e285ce20978e63bb5d55e1d61bb0d6aeef2d7772de24dcd8d56d3938eef026cd526d35eb8a583a38757fe18cbaa40c825c2d66a6a3309b010568b', 'xfcghjbk@jhgfgdf', '2020-05-31 02:42:07'),
(74, 'fd15ab4e64adcfabdf4cb4a19f1673635263006645dabd08ac351a6627f03cc75fc78adb4d28b1b1868c11a465d788875c8788fc9e67b98b4fc6fc2e6bd3d5ed', 'xfcghjbk@jhgfgdf', '2020-05-31 03:47:09'),
(75, '640f29edf939b8539e4cffd52d252b1e2439310e5e2e91709c6f0eccff4fa3aed464f3c2d2cfef4f0eac854708b4b940c61ecd65ae24f27a309fe47bf2a693a1', 'xfcghjbk@jhgfgdf', '2020-05-31 03:48:57'),
(76, '0f8189f91ee40a9b7cfd62d23776b094dbd1510e753104bcc1977b9b95f2e0db0d1939f8ec7e225e7fb1fa8f39e05e704752da452764d6f44f3bc4694e92d3ea', 'xfcghjbk@jhgfgdf', '2020-05-31 04:04:41'),
(77, 'ad334554905afed732272e6305cf56a8211a4e005adc3653cf0f0dedeb153b7fc0419e7c69c701f40e6cb303bc53abdb77aae3c70b7b1fef36a839f9123bcbdd', 'xfcghjbk@jhgfgdf', '2020-05-31 04:25:49'),
(78, '59f5cd79316db1d64361d84e33218c96e198c2675a80ff39cdcc6be96596bbd52f4532114b96f007a0b5063237bb60b344d5096a945699d850e5fd72d3f07f05', 'xfcghjbk@jhgfgdf', '2020-05-31 04:27:10'),
(79, 'b6f78f39f2b81c47292c499e523260ef9c9f1d20ff6956b501668613c3e7e00f18776ab3e3606b04022c0657e548c902d5b9ba0294348283fad623b9d2f152ea', 'xfcghjbk@jhgfgdf', '2020-05-31 04:30:03'),
(80, 'd7ed77c7261419587628ec423137ff06cedd9ba9bde77d28aaa26feabc038d7f03e7f31d3198e0806dbc7b336687d0071fb1be1babb6466b49a26ff39172e94e', 'xfcghjbk@jhgfgdf', '2020-05-31 04:42:43'),
(81, '1f0456e31087de4e314cbfbeb85ea4912fb4ce629418e8824c5c1a5bf65cdb4ebe7f2895195a7d67de02c5b37f3a6be01b180a9ddea8bc9b9ec8bc44c1f51ffc', 'xfcghjbk@jhgfgdf', '2020-05-31 04:51:05'),
(82, '00d856dfdee04bbde76dd34974493e65930b7dd348d9541ddd26fd4f3ed61e6f68949f52be1a19cf4f09bdb8db3292dbefe670c646753bc8d79dbb38b953a60c', 'xfcghjbk@jhgfgdf', '2020-05-31 04:52:29'),
(83, 'a39be38ab4ab51ec13b4a116b02682b9cbbc71b83af2ffcfd5978ce7263c02e22bf8844482f47a4f298fba4c1b73bc9549dba7613a07f0185e324b18904a5d44', 'xfcghjbk@jhgfgdf', '2020-05-31 04:54:04'),
(84, '51cc3a2fde9dc7996ba1a7b7b1d60e2b7568070f8468d4e57e94cc627f7d7d8677df8fb14321f8c777f79da962a1f7676cd1c7c93c7926fcb161a6cb3d418878', 'xfcghjbk@jhgfgdf', '2020-05-31 05:06:26'),
(85, '261ad31bb51d88a8c5b4bbf67ae1d4138d6e925b4fd09030333acf5f231971927643abe431ca45655a30d2d88d2614b51d4e9ace3caec94ca83a9d121db38e1b', 'xfcghjbk@jhgfgdf', '2020-05-31 05:07:59'),
(86, 'eea3211f091cd91e4c389ededda4d4c0df8ef5a3c47349604484e821ae320e501e681d6ae9e4c497d15ece70875cf3c0aad075410b025ce26131151b43afc4a2', 'xfcghjbk@jhgfgdf', '2020-05-31 05:09:42'),
(87, '727590a67b0ee599fee12a996e6083f797b1ad26c8dc8dc419d60e47cb24bf101f6447352bc91f0aa7a596c8a72edf3457a0124f298d78eb804e9f2e3b945c6c', 'xfcghjbk@jhgfgdf', '2020-05-31 05:13:01'),
(88, '79a53ad4d831ff4f5c80fe2976d7372eeb8c186e82e531abcc0aa359f3dae1ff826a3b87b4af1e4b3f1d26611a5c56cf6aef7212ca936e712c15934bbf8d2acf', 'xfcghjbk@jhgfgdf', '2020-05-31 05:25:09'),
(89, '160b758694110e0ef52a9c20fd4279ecf2ecd6c5cdca3b4dacaad5b43ca63514be6c29ab98720ce442fb398414485bbda1580504fe8e4f1de0267e209aff7c79', 'xfcghjbk@jhgfgdf', '2020-05-31 06:28:47'),
(90, '638c2f0f409b82256fb19945ba9b0fd835ace59c1ec4188c09afe34ecaaddc13ff6884a0d0475da77fbbf3f391a1b6abd591c987e2c231b72f66c29e2a6e858d', 'xfcghjbk@jhgfgdf', '2020-05-31 06:54:08'),
(91, '2760b15d94b7271fa7d2fb92c83675f4a859e0fbe0ec51da9eb73af6763e71dcff4fd65c61ef5d1bac2186876194a38d9ed690be3306d2c485774c8ea521cde2', 'xfcghjbk@jhgfgdf', '2020-05-31 06:54:24'),
(92, '078b0c868832628b8d9d9a3ab5e2e1af8548511f78c7eac49d721bfe2ce7b0ccb64fcaa205a133b9fd31dd4b423b83344fa15f884096141213816a8f182e547c', 'fgvbhnj,k@:::::', '2020-05-31 06:58:30'),
(93, 'c1cfe1547fd6f72e3fe55a41ca4c1af1705b0e1a87404b485cf3462c699e9f1e542db982b38babd7e548738f5314cf33189c06904ce33e6ecb96750c619001f9', 'kjhgfyguhjn@mlkjhbjn,;', '2020-05-31 07:58:28'),
(94, '8ecda56ba6bac6536bf2abdeb83f283339356da9eafdd15cfc3eb76d5a2879c2e933af42633ccaaeb6cb889304aea836529627f9053753afce209b3ae47d9ca0', 'admin12@admin.com', '2020-05-31 08:08:29'),
(95, '32ea6d00e24190ee0e3e9ce316de840e08b8595111dd6953173bd541a467c025e59583e68b36e1f8a3db3ef6cf6c14441763ab8adf836d0b6cbb70f159f82c8f', 'admin12@admin.com', '2020-05-31 08:18:46'),
(96, '38d59ffdea1208814964fe0f2e29783322df069ab776d75392c7bd339138e7636743cf8d883ce76dc6499a9952a2e40a5eb80d875ba5b30fc78ba836a29ca9dc', 'kvv@svjnsdks', '2020-05-31 21:52:14'),
(97, '33a3f24f7483d465829bfb3edc8916395ee42dae1e12cae3b0be54f1735e6121eb5f9b86e43c866eb27cee987a04639678c3be841b3ae49a17883d17221dd4f3', 'kvv@svjnsdks', '2020-05-31 22:01:30'),
(98, 'cbd545b7aa87c12fc5695bc92b92301ef219bf6cc777a9d298386f484e41119e655ad43e84a43280f94e0f2c4edbe0fa2df7ebc3fbad10094081434037b5299d', 'kvv@svjnsdks', '2020-05-31 22:05:47'),
(99, '416dc172d5deaf7ea259fdd5227df489217a4c5b46b363d347b3a47df48427987607bb73a7ecbe2c11e5fb6332bcb5ac23897e953bc072d75299c853b6b26797', 'kvv@svjnsdks', '2020-05-31 22:24:48'),
(100, 'f75ca773044342710133321e62292d8d5788460d2acc68223fa0a4e0acab61f4277284de3cd6691911f54ffedc98b51cafc75608ec72f6f10d7401c6ae32798a', 'kvv@svjnsdks', '2020-05-31 22:32:08'),
(101, '9b18f96b3632c541e9d221d936694ebd81575d4496f9021323209c963c3d2d7c6259be8121e683c0dd3a305324dddcfae1c8eb6e03b010c0dc8dab42cbf41664', 'kvv@svjnsdks', '2020-05-31 22:35:26'),
(102, 'cd0de0b5a781348f5593b3d14857d95236f0e02fbe4c687bf16995ca3e40fb6b9b78834d7f635ee6ead0a8849f29c4192eca5b812d9eb5b721c56c5a92c4708e', 'kvv@svjnsdks', '2020-05-31 22:47:40'),
(103, '2f0885d7c82bdf75f0bcac85a23abea97b0bf8ff85a8684c40bc691d4aaf4666ad3d37caa81d4d5c9159d464ab8d185489b197dc68b11340fddc4fa45fc9bc54', 'kvv@svjnsdks', '2020-05-31 22:54:22'),
(104, '05fcbe12bf117add1a9225d08ce946b15198c67d2cf86815c1408d2723286738e484a2c16633b08f58adb1b2903c8093aba8db6bd94671e45dbd8ef3119b7f61', 'kvv@svjnsdks', '2020-05-31 23:02:35'),
(105, '7f9042bd73a523edf82b289f70d4451afec9ce0f69228d25bb3fcb4a3714977f4d8103e55d9773a5504fd798638de47df196a7f58652d8b125be9d4563e479e6', 'kvv@svjnsdks', '2020-05-31 23:19:08'),
(106, '174c1e79ed6941e8953987bd138d08661e075c9140ac87d2b5e152a5d31d4c11139bff8550a59595273806cf462449ac15c33e1745a589cff561f813b38bfa3e', 'kvv@svjnsdks', '2020-05-31 23:23:36'),
(107, '1ae6a23b1c0441cac9ebb0b226c9abfd01a27e843bfb7b1ed228521b780b77383758bb3bd1bc26c0a63d473f71cb07a80a8057fff8b77a426e4240373237a546', 'kvv@svjnsdks', '2020-05-31 23:27:55'),
(108, 'e93cd4a2ee33030120433792ace46dc0d9d2f371dda55195fc1d9232298a7dc5d62c9c5437ee7fab35737e5add8703ba286979d000c9e9da4fa255145106b2a7', 'kvv@svjnsdks', '2020-05-31 23:34:05'),
(109, 'bbbde5acb5c0864f499577ea002805ea38d3dafa74da3bf97d3101d4ab8e66ae55fa15620c67c80b3dcbcfbdb1ffe3dbd2f647719016dc2358fba7d128517656', 'kvv@svjnsdks', '2020-05-31 23:38:24'),
(110, 'c94cfcb874e313a747960347196ab61b69bfe8aefde421348743f65366b33e3aeb7478db5c57faa424198b870aae8dc0ffbed7203d50677c1d1941f8be44b9fe', 'kvv@svjnsdks', '2020-05-31 23:46:53'),
(111, '7b1fe4c1388995ebc7c6f9c7dcb11973bf0b18595aecf99abcf708edd4a598f18f76b12c7a34163e2e720f4605d7c4f52af00e483deebd03b5fabd1554089138', 'kvv@svjnsdks', '2020-05-31 23:52:11'),
(112, 'ae7b24e45e587527a16ed7cf4c9cd5e0af6bd0cab4c707ec853f96f9c5d220b4548d5cd6de59286a88b492276a0dce92e60175548100a958733a785a3cb0a8b9', 'kvv@svjnsdks', '2020-05-31 23:56:02'),
(113, '7f883f43bf715df84dbceaadcf6beb1965e90191596938f6b2ccc7af7e7499b27625cc0477acc8469a5ca8988730b5c91ab4b0f0373413474887983d96785920', 'kvv@svjnsdks', '2020-06-01 00:01:39'),
(114, '768629ae39031011cf0d4af8d8767029db156acee6f05c8c1ce267f2b4a241fe9606319858e16c6f3aa685227c62adb8f1d340bdfd234ee5f6094d8b6626e83f', 'kvv@svjnsdks', '2020-06-01 00:09:40'),
(115, '40a8ca334403b2fed3c999c734c5f9351b0f370b20bc1534e9eebd71c5e19a2227e12022e8e71f01c01bbaf8bfefc3bb44f5135a318ab9e5c15c3dec9de8b09a', 'kvv@svjnsdks', '2020-06-01 00:21:00'),
(116, 'e5c345629dbae232b4b4ed0eee792e327ce8dd53f91b334a04a4357b95988996fbdf5ff125aa4a48f74856a4806aa4e415cf13b01235306db9db1d31142e09e5', 'ezedrfgbhnj,@jkjfhesdrftgyhjk', '2020-06-01 00:24:14'),
(117, '83426a158bbe2dbd206e19a2a24029c16db72245e4a9e532f075fbe9555d57eac9fb9d153068dd2202701a1da56fc2a2ca8eaf09a42f27a91d2b4fb9702b9ec6', ';;pp@;;p', '2020-06-01 00:39:30'),
(118, 'a840cc61ba3e2ec9048b0cff8158356ca986e2e45233153c7de13de56a622c05a3622543ed54c96841a20d2e7aa0e2a2dd90c32caa55d5574c986b954e79c93c', 'aa@aa;;aa', '2020-06-01 00:41:08'),
(119, '7375cc6545801040df67b31b8ecaaad657974700402de3b7f8715af1600f69a57ef523e7d7e2b326efede45f38c3f1d141bb64e2aebac39dad1ab299b2e64bb2', 'hh;;@;;hh', '2020-06-01 00:48:30'),
(120, '5c4f0fa064273ef3f251ddef2c5b7bd9c960007a4600f890d82536dbea66b7f63a9ae5b4c6a0d8af6e5f30855259d083739c9a5c49a363969999d2a5e4efe388', 'kk;;kk@jj', '2020-06-01 00:57:43'),
(121, 'fee9d6ca2c3e9f4fe6a85b946462c3d5323275f4d8932599ed86996d9bad97c006180e55a82afcccfcc66d5709a0b4d0d85e0795234dd7310bbac922deb3f27f', 'mm::mmm@mm', '2020-06-01 01:03:18'),
(122, '4e0e04145c0062783cf17ad5c84b8e242895870e35003225098aad095fa4659d1d7851811d9c79b027a57783fce226c1ab11fad58bc1da536d6f7a6d21859def', '::pp@pp::', '2020-06-01 01:06:19'),
(123, 'bcdbc80d1f9027fe10fcc377c6d18792f1bf8260d60d39b0bad9a9cb4dcc437ccf37cba0a96caf6c9ed38a93639db5d3a2af813fe8c7de3a123d616c5974020b', 'pppppm@pppm!', '2020-06-01 01:26:57'),
(124, '6e3646ba1b978523a0f816e54974484debb5b6ff8014c684770746c2768ea37e1a2f83d16cf13f0270606580e0188bcbdda9ecceabdbe082cba9e68fb7c0d8d6', 'dzsfsghbjk,l@::::', '2020-06-01 01:52:59'),
(125, 'a5dc3a836155b4c35658dd9b5bfd369501350fc82bbc154259d6a4b5ca02664944305b38464c1a5da12b6ea1f19f1f77529ce0894f53ef86e9f5b0213b3087ce', 'lmllml@kjkl,', '2020-06-01 02:22:31'),
(126, '5fdde81a78571c33742d34160d5609c4d871926dd988a37af356ee041abf9588b3cf78b2151bb98e92c9d38130aaff7822efb0b73353a576f1f8e973574509c6', 'fcgbhj@fghj', '2020-06-01 02:47:12'),
(127, '893a805690ae1d92edd484abd6572706029e250e98c0e82e2a5e4c9039908f20fca5794eebff87b91d357639fc7775bba08e14c27662fc651b07ec7eae18c345', 'fcgbhj@fghj', '2020-06-01 02:50:19'),
(128, 'd55a7de85e24dafb8e48311f2906fb040f456b04c9867e7b2f29b37dd203801f6b3d57dc75f1460e1875cbc7f7863880c22d17cfeb5fbb92eb10954a260aefda', 'fcgbhj@fghj', '2020-06-01 02:51:56'),
(129, '519c9467af7416e10359b6b59b1bee79b0a2431c104dee23f57806690821fcd6b8791d8b7fcbc03b73c1f3b869464f5c430aa636e35c174d934ed0432f33bb1c', 'fcgbhj@fghj', '2020-06-01 03:07:58'),
(130, 'fbf5753b19dc7380583d258e53dacac7e9e389f3b0134ae139bcc8a000e18c21ae14e1ec57ad59912ceb7f613493a575ca8a515e57e9ba325767b418b12913c8', 'fcgbhj@fghj', '2020-06-01 03:13:38'),
(131, '0f251b1cfe1d798f511ab5f930efd3c14dab73d158f813f85a51cd346803c4e917a0567e9735749d50247b7b281e79e523e3c281665ad78a83fa32c86039705a', 'fcgbhj@fghj', '2020-06-01 03:19:49'),
(132, 'f3133062eb653f638bc3164a4835fee1542b82152b0d5523a6064a4f8234d0dcf1137f28d89ab0fd49530837b22fd7343782710381731f5b24994e380a540af5', 'fcgbhj@fghj', '2020-06-01 03:28:16'),
(133, '93b0856a16dfb3b1f4199e3f68e4bd50f218e6d7ed24ffcf926652a94bff962abb60127de8ba1ee4701b8a716d9feeb982e2d1bdb9b89c419a4d69fff0c85089', 'afghbj@sdfghjk', '2020-06-01 03:29:59'),
(134, '4fa5c28a47df0150f448908c1283c78147fc0d3e14c98d72b00f7a1d6769d48ce541bbbe3fb9753e642fec7f6804ac1d29fa08e82d3fbbe4ffad381c1a0cf400', 'afghbj@sdfghjk', '2020-06-01 03:38:02'),
(135, '356815fe419150c57ca4d83e2e5745c97d0a2354d908828337e75df3f1c4271d324af59c6631d21afe4fe5d0eeab74457ae06b33d4bdc5de4e845fd256f80f57', 'afghbj@sdfghjk', '2020-06-01 03:49:47'),
(136, '8c55e93bf55402768631b4574c8dadb86618fa9401a1a2b8c50fba6f298c7ff480dd059bc11a710a5895aebada5521330f8355103f2795dbcdc4968b85a9b5d8', 'afghbj@sdfghjk', '2020-06-01 03:55:07'),
(137, 'f46f4fa06704ecc7ab738c1b0cbe9fe8720f8fda8374b1de4ceba81b2caa334524dae0691182b691cc26f9dcc744933f01e797b5aae19e05e3cd47f8319dc788', 'admin12@admin.com', '2020-06-01 15:29:15'),
(138, '1345ad9796f037eec1de24e51d14b8567852f7b3c94a2c49af22928a35c9f86fec431568dbc06cc0484b8065f687217ee5bbd52e4beacb52e3c290388cb4a346', 'fcgbhj@fghj', '2020-06-01 15:33:36'),
(139, '00e9da8ae60bbf5812b99211bb9b1e4faea0036f094f92b0a535a786830b7418e56ca157c86d1e2d2fccd3eb819b5136890ebbbed976f8d991f59ff20e83fe27', 'fcgbhj@fghj', '2020-06-01 15:35:18'),
(140, '245dbc70c2502cff47e9e03aa290eb3bf0eebf27422a23d24c9172dcc969eb204b2ead091804aa1197d2615ae3a92766774ab9bcb1fbe4822b65a5c15d06bab6', 'fcgbhj@fghj', '2020-06-01 16:09:01'),
(141, '12ad0ffb272790aacb4a8abdb7f27755e8c6d1b3ff2947923c9db4aed327a97087d907698b5b6d8d6984d27e5b0fcbce2b755651a6496f43c61b2c90bb4bbe13', 'bachelorexample@example.com', '2020-06-01 16:32:08'),
(142, '18c2731078ef840aca51b18db0c7192b7f337da081d42f8b59aecca665b40d3671c510ea218eaeeb4addb252b5b17bcb7af9b93588cde9ed0733344e6e25a915', 'universityexample@example.com', '2020-06-01 16:38:50'),
(143, '165319718f10fd920f32e3c984179090d8edfefc2dedd54b736a0c35cfab48f48c60474d054a49c910dda869cc4a4a4f0af2e634eff237987737b923e168762c', 'fcgbhj@fghj', '2020-06-01 16:47:37'),
(144, '4be6cb898e96de7c90c4662d350c7b39579fd8beccc30a28a4ab58f682aa260f96fca8c0c557c6a02eb55145db7426f8ac3a286f7cde5fa8465d65e091761df0', 'bachelorexample@example.com', '2020-06-01 16:54:38'),
(145, 'bccfb6296e968c574a3968790909e5f1d367dfa7b3c645b8e74c7282f06a0e34ba304305beeda1226e157c5d1b64c54bd0ba2eb3403d61a71a2d1b452d2ea335', 'bachelorexample@example.com', '2020-06-01 18:15:12');

-- --------------------------------------------------------

--
-- Structure de la table `target`
--

CREATE TABLE `target` (
  `id` int(11) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `id_dm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `target`
--

INSERT INTO `target` (`id`, `application_id`, `id_dm`) VALUES
(1, 2, 30),
(2, 3, 32),
(3, 4, 32),
(4, 5, 32),
(5, 6, 33),
(6, 7, 32),
(7, 8, 28),
(8, 9, 29),
(9, 10, 28),
(10, 11, 29),
(11, 12, 28),
(12, 13, 29),
(13, 14, 29),
(14, 15, 28),
(15, 16, 29),
(16, 17, 28),
(17, 18, 28),
(18, 19, 28),
(19, 20, 28),
(20, 21, 29),
(21, 22, 28),
(22, 23, 28),
(23, 24, 28),
(24, 25, 28),
(25, 26, 28),
(26, 27, 29),
(27, 28, 26),
(28, 29, 27);

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test`
--

INSERT INTO `test` (`id`, `name`) VALUES
(1, 'gre'),
(2, 'toefl'),
(3, 'sat');

-- --------------------------------------------------------

--
-- Structure de la table `test_data`
--

CREATE TABLE `test_data` (
  `id` int(11) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `bachelor_id` int(11) DEFAULT NULL,
  `score` double NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_data`
--

INSERT INTO `test_data` (`id`, `test_id`, `bachelor_id`, `score`, `file`) VALUES
(30, 3, 43, 1538, NULL),
(31, 2, 43, 1314, NULL),
(32, 3, 44, 1297, NULL),
(33, 1, 44, 1239, NULL),
(34, 3, 45, 1444, NULL),
(35, 3, 46, 1114, NULL),
(36, 3, 47, 903, NULL),
(37, 3, 48, 1400, NULL),
(38, 2, 48, 1405, NULL),
(39, 3, 49, 1114, NULL),
(40, 1, 49, 1568, NULL),
(41, 2, 49, 1564, NULL),
(42, 3, 50, 1291, NULL),
(43, 1, 50, 1573, NULL),
(44, 2, 50, 1354, NULL),
(45, 3, 51, 1342, NULL),
(46, 1, 51, 1239, NULL),
(47, 2, 51, 1591, NULL),
(48, 3, 52, 1553, NULL),
(49, 3, 53, 1376, NULL),
(50, 1, 53, 1473, NULL),
(51, 2, 53, 1285, NULL),
(52, 3, 54, 1571, NULL),
(53, 3, 55, 1584, NULL),
(54, 1, 55, 1405, NULL),
(55, 3, 56, 1513, NULL),
(56, 1, 56, 1505, NULL),
(57, 2, 56, 938, NULL),
(58, 3, 57, 1447, NULL),
(59, 3, 58, 1536, NULL),
(60, 3, 59, 1518, NULL),
(61, 3, 60, 1503, NULL),
(62, 1, 60, 1312, NULL),
(63, 3, 61, 1135, NULL),
(64, 3, 69, 1595, NULL),
(65, 1, 69, 1551, NULL),
(66, 3, 70, 1446, NULL),
(67, 3, 71, 1583, NULL),
(68, 3, 74, 1528, NULL),
(69, 3, 76, 1567, NULL),
(70, 3, 77, 1553, NULL),
(71, 3, 79, 1391, NULL),
(72, 3, 81, 1534, NULL),
(73, 1, 81, 1402, NULL),
(74, 3, 83, 1560, NULL),
(75, 3, 88, 1442, NULL),
(76, 3, 91, 1590, NULL),
(77, 1, 91, 1274, NULL),
(78, 3, 92, 1349, NULL),
(79, 1, 92, 1434, NULL),
(80, 3, 93, 1534, NULL),
(81, 3, 94, 1520, NULL),
(82, 1, 94, 1532, NULL),
(83, 2, 94, 979, NULL),
(84, 3, 95, 1586, NULL),
(85, 3, 96, 1465, NULL),
(86, 1, 96, 1508, NULL),
(87, 2, 96, 1361, NULL),
(88, 3, 97, 1515, NULL),
(89, 1, 97, 1476, NULL),
(90, 3, 98, 1335, NULL),
(91, 1, 98, 1501, NULL),
(92, 2, 98, 1453, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` double NOT NULL,
  `freshman` int(11) NOT NULL,
  `txponbr` int(11) NOT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picpath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contact` int(11) NOT NULL,
  `contactpersone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `university`
--

INSERT INTO `university` (`id`, `name`, `country`, `city`, `state`, `size`, `freshman`, `txponbr`, `pic`, `website`, `description`, `picpath`, `user_id`, `contact`, `contactpersone`) VALUES
(57, 'ujikl', 'hjk', 'jkl', 'jkl', 1221, 54, 4521, 'hjk', 'hjk', 'jhk', NULL, 48, 0, ''),
(58, 'fghjklmùghjklmùhjk,lm;', 'ghjkl', 'hj', 'ghj', 864513, 8465, 451, 'ghjklijohugyftd', 'tyguhjk', 'fychgvjhbkjn', NULL, 72, 0, ''),
(59, 'ghjklmhjklghjklfghjk', 'fgh', 'gfhjk', 'gfhjk', 456132, 846513, 846513, 'ghjklmhjklghjklfghjk.jpeg', 'dtfgyhjkl', 'dxfcghjbk', '/uploads/ghjklmhjklghjklfghjk.jpeg', 73, 0, ''),
(60, 'fghjk', 'vbn,', 'gh,j', 'vbn,', 513, 7542, 4512, 'hj', 'fghjkl', 'ghj', NULL, 74, 0, ''),
(61, 'cvbn', 'fgh', 'dfg', 'dfghj', 41, 413, 84512, 'yhkjl', 'rfgvhbj', 'uijkl', NULL, 75, 0, ''),
(62, 'vhui', 'df', 'dfgh', 'fgh', 7451, 415, 465, 'rtyu', 'ghjkl', 'fghj', NULL, 76, 0, ''),
(63, 'yftguvyjhbj', 'ertfg', '&rtfgyh', '&rdftgh', 562, 45, 78, 'fyguhjk', 'fghjk', 'fygh', NULL, 77, 0, ''),
(64, 'vfghb', 'dfg', 'dfg', 'fghjk', 854, 8956, 87, 'erfyg', 'yghuj', 'rty', NULL, 78, 0, ''),
(65, 'oiuhg', 'erfg', 'dfg', 'fgh', 95, 7, 5, '4', 'dfg', '4512', NULL, 79, 0, ''),
(66, 'cfvghbj', 'dfg', 'fg', 'fgh', 5, 45, 46, 'rtgh', 'rtyg', 'tyhjk', NULL, 80, 0, ''),
(67, 'cgtvh', 'd', 'fd', 'f', 45, 45, 845, '845', 'edrtfyg', 'ertfy', NULL, 81, 0, ''),
(68, 'xdc', 'dc', 'dx', 'dc', 5, 54, 4, 'dfg', '4', 'ryuh', NULL, 82, 0, ''),
(69, 'dfgh', 'g', 'rf', 'h', 56, 54, 84, 'rfgh', 'gfh', 'rt', NULL, 83, 0, ''),
(70, 'ytgvjbh', 'yh', 'tgh', 'hbkjn', 512, 874, 874, 'hg', 'fgh', 'trg', NULL, 84, 0, ''),
(71, 'ihec', 'tunisia', 'carthage', 'tunis', 246, 4512, 4512, 'hjklm', 'cvbngfhjk', 'lezmek metro w train ken aandekch karahba', NULL, 94, 0, ''),
(72, 'fac fel gamra', 'gamra', 'gamra', 'gamra', 945612, 84512, 845, 'tyhj', 'ghjk', 'ghjk', NULL, 95, 0, ''),
(73, 'fac fi zouhal', 'zouhal', 'zouhal', 'zouhal', 94651, 465, 98465, 'fghjk', 'ghjklm', 'hgjk', NULL, 96, 0, ''),
(74, 'fac fel merikh', 'merikh', 'merikh', 'merikh', 4651, 465, 465, 'ghjk', 'fghjk', 'fghjk', NULL, 97, 0, ''),
(75, 'nchlh ekher mara', 'vghjk', 'ghj', 'fghjk', 845, 653, 89465, 'nchlh ekher mara.png', 'gfhjkl', 'gfhjk', '/uploads/nchlh ekher mara.png', 98, 0, ''),
(76, 'fghjk', 'ghjkl', 'ghjk', 'hgjk', 5632, 74521, 874521, '8745', '754', '7845', NULL, 99, 0, ''),
(77, 'aymen', 'ghjk', 'gyhj', 'kghj', 84651, 754, 2174521, '4', 'hjkl', '754', NULL, 100, 0, ''),
(78, 'aymen', 'hjkl', 'ghjkl', 'ghjkl', 451, 745, 8754, 'hjk', 'ghjkl', 'hjk', NULL, 101, 0, ''),
(79, 'fghjk', 'gfhjk', 'gfhjk', 'ghj', 4561, 745, 7845, 'fghj', 'fghj', 'fghjk', NULL, 102, 0, ''),
(80, 'dfghjkl', 'ghjklm', 'ghjkl', 'fghjkl', 562, 4512, 412, 'dfghjkl.png', '56', '74521', '/uploads/dfghjkl.png', 103, 0, ''),
(81, 'hjkl', 'ghjkl', 'ghjkl', 'ghjkl', 754, 7845, 7854, '7854', '45', '8745', NULL, 104, 0, ''),
(82, 'amine', 'tunisia', 'elomran', 'tunis', 87465, 8465, 5623, 'fghj', 'ghjklghjkl', 'ghjk', NULL, 106, 0, ''),
(83, 'dfghj', 'fghj', 'fghj', 'fghjk', 965, 745, 84651, '', 'fghj', 'ghj', NULL, 111, 0, ''),
(84, 'ghj', 'ghjkl', 'ghjk', 'fghjk', 6532, 8465, 98465, 'ghj.jpeg', 'fghjk', '7845', '/uploads/ghj.jpeg', 152, 0, ''),
(85, 'kkkkk', 'kkkk', 'kkkk', 'kkkk', 5555, 55, 55, NULL, 'kkkkk', 'kkk', NULL, 153, 0, ''),
(86, 'lllll', 'lllll', 'lllll', 'lllll', 128, 555, 555, NULL, 'llllll', 'lllllll', NULL, 154, 0, ''),
(87, 'hhhh', 'hhh', 'hhh', 'hh', 5555, 5555, 555, NULL, 'hhhh', 'hhhh', NULL, 155, 0, ''),
(88, 'kkdlkdlkdlk', 'sdjdsj', 'sdjkdjsk', 'jdjdkjkds', 5555, 5555, 5555, NULL, 'k,l;', ',lkl', NULL, 156, 0, ''),
(89, 'dfghjk', 'ghjklm', 'fghjkl', 'fghjkl', 742, 542, 452, NULL, 'ghjk', 'fghjkl', NULL, 157, 0, ''),
(90, 'fghjkl', 'fghjklmù', 'ytuklmù', 'retghjkl', 784512, 7845, 8465, NULL, 'dfghjkl', '78465', NULL, NULL, 789465132, '89465132'),
(91, 'fghjkl', 'ghjkl', 'ghjkl', 'ghjkl', 8414512, 78542, 785421, NULL, 'ghjklm', '5421', NULL, NULL, 52, '5421'),
(92, 'dfghjklm', 'fghjklm', 'ghjklm', 'ghjklm', 52, 5421, 4521, NULL, 'fghjklgh', '421', NULL, NULL, 421, '421'),
(93, 'fghjkl', 'ghjkl', 'ghjkl', 'ghjkl', 87542, 75421, 75421, NULL, 'dfghjklm', '75421', NULL, NULL, 754, '7542'),
(94, 'fgyhjk', 'ghjk', 'ghjkl', 'ghjkl', 8653, 1532, 45123, NULL, 'ghjk,l;m', '65132', NULL, NULL, 4651, '4512'),
(95, 'fghjkl', 'ghjk', 'ghjkl', 'ghjkl', 5632, 4132, 465132, NULL, 'fdghjk', '7845', NULL, NULL, 7451, '1542'),
(96, 'ghjkl', 'hjkl', 'jhkl', 'gjhkl', 46532, 5132, 45123, NULL, 'fghjklm', 'ghjkl', NULL, NULL, 542, '7451'),
(97, 'erhjklm', 'hukjlm', 'bhkjl', 'iujkl', 6132, 653, 6523, NULL, 'ghbjnk', 'ghjkl', NULL, NULL, 6532, '6532'),
(98, 'ghjklm', 'hjkl', 'ghjkl', 'ghjk', 52, 523, 4521, NULL, 'k;l:bn,;:', 'hgjk562', NULL, NULL, 5632, '5632'),
(99, 'fghjkl', 'hjkl', 'hjkl', 'bjnk,;', 89562, 6523, 6532, NULL, 'vbnvbn', 'vhbjn,', NULL, NULL, 532, '5623'),
(100, 'ghjklm', 'ghjk', 'ghjklghjkl', 'jhkl', 865, 6532, 6532, NULL, 'fghjklm', 'fghjkl', NULL, NULL, 6532, '6532'),
(101, 'fghjkl', 'ghjkl', 'hjkl', 'gjhkl', 6532, 29865, 532, 'fghjkl.jpeg', 'vjhklm', '5421', '/uploads/fghjkl.jpeg', NULL, 5421, '5421'),
(102, 'ghjklm', 'ghjkl', 'ghjkl', 'hjkl', 896532, 5623, 523, 'ghjklm.jpeg', 'ghjkl', 'fghjk', '/uploads/ghjklm.jpeg', NULL, 523, '4521'),
(103, 'dfghjkl', 'fghjkl', 'hjk', 'fghj', 4512, 74521, 4521, NULL, 'fghjkl', '7845', NULL, NULL, 7845, '745'),
(104, 'dfghjfghjk', 'fghjk', 'ghjk', 'gfhjk', 45, 745, 7845, NULL, 'dfghjkl', 'fghj', NULL, NULL, 745, '8451'),
(105, 'dfghjkl', 'ghjk', 'ghjkl', 'fghjk', 41532, 745, 754, NULL, 'tyuiklm', '748', NULL, NULL, 7845, '74'),
(106, 'azert', 'azert', 'azert', 'zert', 4521, 5456, 6523, NULL, 'fghjkl', '6532', NULL, NULL, 5632, '5632'),
(107, 'aaaa', 'aaaa', 'aaaa', 'aaaa', 1122, 2, 22, NULL, 'rtgyhujiklm', '22222', NULL, NULL, 2222, '2222'),
(108, 'hh', 'hh', 'hh', 'hh', 55, 55, 55, NULL, '5555', '55', NULL, NULL, 555, '55'),
(109, 'll', 'll', 'll', 'll', 5555, 55555, 5555, NULL, '555', '555', NULL, NULL, 55555, '555'),
(110, 'aa', 'aa', 'aa', 'aa', 55, 5, 55, NULL, '5', '5', NULL, NULL, 5, '5'),
(111, 'aaa', 'aa', 'aa', 'aa', 555, 5555, 555, NULL, '555', '555', NULL, NULL, 555, '5555'),
(112, 'jjj', 'jjjj', 'jjj', 'jjj', 6565, 556, 56556, NULL, '5656', '56565', NULL, NULL, 5665, '565656'),
(113, 'll', 'll', 'll', 'll', 55, 55, 55, NULL, '55', '55', NULL, NULL, 5, '55'),
(114, 'isg', 'tunisia', 'bouchoucha', 'tunis', 5000, 1000, 100, NULL, 'isg@isg.com', 'xxxxxxxxx', NULL, NULL, 50983274, 'aymen');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `type`) VALUES
(48, 'bko@bko', '[]', '$argon2i$v=19$m=65536,t=4,p=1$TzNvNTRGV3IyVi9aU2owVQ$rESs6SzyyyX6dRDzjM1TifZAvyp/aRpdMfTRVa2A5WI', 'university'),
(49, 'azertyuiop@a', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Q3hIYzJqSFAwaHlrSDJuZA$2NzcJuPEAuXj4wd3yxiPoMeqIGRFzQDVLSbQlsVf4Y8', 'bachelor'),
(50, 'ay12@kf', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Z09aZUFsUUp4QThoc0JJWQ$IayigkFJ0HbJjuYbwF/KkAYLdON67awCRzU1QkeNw5U', 'bachelor'),
(51, 'kf12@a', '[]', '$argon2i$v=19$m=65536,t=4,p=1$dW9vLlR4QWlGaVA5bjhHcA$rGIKvB0pdTT2zHrF25mxLRwG1kbcSAcwJrwJ0wVMNTQ', 'bachelor'),
(52, 'kfkf@ay', '[]', '$argon2i$v=19$m=65536,t=4,p=1$OW5HejRlekxTcHF0VnhaSQ$6XQ1NvWkAx32Wkc9FpoRbNJ05CSlZAMZ3ukQ32JZcjQ', 'bachelor'),
(53, 'kfay123@gmail.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Zk5LdUZGUmY5a3ZFQWVJWA$mJkcGg0xAogDrsBLUzjdW7pTOIq7RYlYOamJdft99iQ', 'bachelor'),
(54, 'hjk@hjk', '[]', '$argon2i$v=19$m=65536,t=4,p=1$SjNBZzdmMVNocmc4dmczMA$A8zIXSvXS25e5MHAfOwkJD68LmK1LHPST09dLlMEYBs', 'bachelor'),
(55, 'qsdfghjklm@aa', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VHUvekFNdW1qakhZNTYvRw$eSx8aKsrUfkcVoOGnKR4lw3ZzlMQfhVH7CUuOdmrOYg', 'bachelor'),
(56, 'wxcvbn@a', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bm9veVFEenVreUVBTHFueA$G2MRf2BPyDJr2qqENWmzhM9JKoVWuuF0MDGFoZcO2iw', 'bachelor'),
(57, 'azer@azer', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Z1FYeFVNdWVDajlxWmt3bg$vkw9HnGBv8LFZ52XQ1Th/P2q8qCS3x2McFG6IfxL4Gg', 'bachelor'),
(58, 'mlkjhgfdsq@a', '[]', '$argon2i$v=19$m=65536,t=4,p=1$U0l4eWNFL3dCLy9uTVZTSQ$NjZqqI6aA12Ih1XZu2rfvayT75wDMsM4m5CZZ9NKo4c', 'bachelor'),
(59, 'nbvcxw@aa', '[]', '$argon2i$v=19$m=65536,t=4,p=1$WURIQ3RYamdCZ2llc1d5YQ$GFD9SPN3lrC+nu/4prJOAvNf0b//xKu6EhWfa/NkWaU', 'bachelor'),
(60, 'mlkjhg@aa', '[]', '$argon2i$v=19$m=65536,t=4,p=1$R1E2aXFxVWdaYmMxVkd3ZA$r/0hTDYseEDo5Fk+78Ii2qWgPW2YDjY+mxmvdbjw6O8', 'bachelor'),
(61, 'nbvcdertyui@lkljhg', '[]', '$argon2i$v=19$m=65536,t=4,p=1$OVE1UDJLODI4cE5pSW13aA$NCJU9y/x51nT+l3rroKK8ljMdmn1z1ap25tRGDPtVi0', 'bachelor'),
(62, 'poiuyt@poiuyt', '[]', '$argon2i$v=19$m=65536,t=4,p=1$YU9CNllHdEJRU0NqelNaLw$hvND3zEQGveEFn6MSyv0wQjZntA0+Fi5E4vffLEGlAc', 'bachelor'),
(63, 'tgb@tgb', '[]', '$argon2i$v=19$m=65536,t=4,p=1$ZnJjR0NxLlpLdi5yVEZuMg$UOv2VLCHGTx6x2Wt6GFhPi15Qhvg51qjNJRSfJYWb8U', 'bachelor'),
(64, 'aymen97@gmail.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cWdldFFjMm42bkEvYkxKLw$0YerQb2zwaT9OTRUEV+K0kKWfjgJeX4cGpq110Q23nY', 'bachelor'),
(65, 'mlkjh@mlkjh', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Ny9vWjZMNjlYM0VTUEp4Mg$Mtl8x4N5hdtelKTY7o2tH1BV+pnkpgewjPIlxqeuG3Q', 'bachelor'),
(66, 'qsdfv@qsdfv', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VEYxcHo1MndXNzhjam04Nw$6CX/qPVsygkFBoNPVnSEg1mzrYFitOiq4ib+RsQ0bWg', 'bachelor'),
(67, 'nhgtyu@hj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bDJHR3UvNUxtclhaNGhWNg$F6kZpEtY3YOs/+jO3VFoUl4MWzztylWrZO5e5byKY1U', 'bachelor'),
(68, 'oijhnb@plkjh', '[]', '$argon2i$v=19$m=65536,t=4,p=1$UW10Y0c1WE5POTRESlNMYw$e9b7xyarVR2XofNpgsKTZmSINOEWh/t+pJzkcq7RvTU', 'bachelor'),
(69, 'cfvghbnj@yghj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$WTNlaFBNNHVKcG1JUHh4Tw$qFkucNSudBW0jts1mDUwEwl7X6/4QhbnFVDdW0b6PPc', 'bachelor'),
(70, 'poiu@pokj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cDBRTkcwTFNTdXF5Ym11Sw$E16H4DPQe0RRESYl3agosZsASdoQCO1nDDx1yiL74pU', 'bachelor'),
(71, 'dfghj@oiuygf', '[]', '$argon2i$v=19$m=65536,t=4,p=1$QjNNM29yM05tb1pELmFSTg$HWO1vPfkdpKy/SJ9GOtu0vNiti+oSvrDo5lM7XYg+Ac', 'university'),
(72, '123aa@aa', '[]', '$argon2i$v=19$m=65536,t=4,p=1$d3NEMkJLcGVKUENzUnMwcg$PbpK5yDxz/lHeU289t6PtdKGo4vhgTc01bBYpzGrYnk', 'university'),
(73, '147aa@aa', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Z3dwcGJ6NHouNlJOQ2xDeQ$TQZ4hPmCQj63h77E5tti2hbHoR4ow3/pHju80Z30jYI', 'university'),
(74, 'poijhbvcd@12', '[]', '$argon2i$v=19$m=65536,t=4,p=1$clhrQ3hUUGR3RGN2VzVObg$A/DPom7TuoUI3mbPPomeHfpudLjlXq2uQJvHw/VDsjg', 'university'),
(75, 'dcvbh@12', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VmVsSzBRVFV2T2RwdGlGcQ$iV65vpfjBWLYjLBcj4uCxBStUngWgl9CvoLymdtj+2A', 'university'),
(76, 'rfvb@kjh', '[]', '$argon2i$v=19$m=65536,t=4,p=1$ZGxQLktnLzR2QTFpeS9QTQ$eyGdA4O4WW5kJjiEtxjDON+sLDAQr5NIYmURaNFklNg', 'university'),
(77, 'xcvbhjui@jk', '[]', '$argon2i$v=19$m=65536,t=4,p=1$YVh2THVoRjcvZEVVNnU1Rg$XBCOb+nH4Mqhp82fqDQ6mfB2kYUna1oj7Kmw0jjGDU4', 'university'),
(78, 'okijhbhv@vb', '[]', '$argon2i$v=19$m=65536,t=4,p=1$U01jMDFGcGhyU0J2MnlrcQ$AKiD+dIDw1bDtNpaHBfE8gz5u7Dams5hevFjQyut3Zs', 'university'),
(79, 'fcbh@', '[]', '$argon2i$v=19$m=65536,t=4,p=1$ckFiclBkSy9xWUdUaU5uYg$EycX0bWRpamapN/q/Oi+wM3gOd8e2z79zVisV4SYEKE', 'university'),
(80, 'azsd@', '[]', '$argon2i$v=19$m=65536,t=4,p=1$dnlnejBoTGhId1Bqc0diNw$jXftyc3spRLZuB/dd0ZOxM2r/JVdulDDc8JQOcyjFl8', 'university'),
(81, 'gv@cfvg', '[]', '$argon2i$v=19$m=65536,t=4,p=1$elo2Ynhhei9EM292T2VJYg$vgEeT/HGr7myV2wB9wwJkn6QS4L+ZV2FX5TUlB/4igg', 'university'),
(82, 'cfy@', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bmhQR2p6bkRJVlJ6V3pSLg$TOcdf8BQ2cEm/o+vwIOO642fesa6dqqpWXpLb2UOL0I', 'university'),
(83, 'pok@', '[]', '$argon2i$v=19$m=65536,t=4,p=1$RVZmU1diY29tSG8xd0g4Rw$S0FQnYNE8jZnEvxPj1VnOfInYlnSSf5kPCjYxRrF6rs', 'university'),
(84, 'vh@j', '[]', '$argon2i$v=19$m=65536,t=4,p=1$aEE2OUMwT25WOS9EbHNCYQ$ieh7YQvOUDLMyddGle92RKg8XGeYMUWgfg6meDt0YTw', 'university'),
(85, 'tgb@12', '[]', '$argon2i$v=19$m=65536,t=4,p=1$RzhpWWNxWWNkNTZMb2VQSA$+ywIYABjIVng70h3uc1CF5Dy64CcfMJLjE4td/msrM4', 'bachelor'),
(86, 'bhyvg@', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bjVYTy9uS241Z2lHdlZYWQ$MRF9l3h3h5Md1taxJylnbBSeVtbHXnUMbiHD6qu3M2I', 'bachelor'),
(87, 'ghj@gh', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VTgxMXZOblV0VlJOLk5QOQ$S0hcb11Ur4PfMnuG2F/D2gPmT6alA2AAiUOXkKI+meo', 'bachelor'),
(88, 'kn@kj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$TFkybjJpVy5VUmlXRG5nSw$0iDF1AfwEfrtX02IjfZSN73mPGtw3maJaE4egQBqVw8', 'bachelor'),
(89, 'plo@12', '[]', '$argon2i$v=19$m=65536,t=4,p=1$dW10bFlrVXNieVVkUS81RQ$PFQdGnG6T8NC7Bw2qmrfbFYOMQTWb6Maf+kDUDb+cNs', 'bachelor'),
(90, 'ng@rty', '[]', '$argon2i$v=19$m=65536,t=4,p=1$ZkY1MW9FbllFRm1vdDlFYg$zsggiI05twwGNQtdPs+m9+A5eAw6LP1U5BZ8bU3qLmw', 'bachelor'),
(91, 'nbh@po', '[]', '$argon2i$v=19$m=65536,t=4,p=1$UkdwV2d6WHBRV0J4MVE4Lg$lrraGrrLEPoy5o9Z39HFW5Tl3K1P580gcvjQ1gbyxG0', 'bachelor'),
(92, 'kaka@kaka', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cllmcEpYQnM2ZUthclRxLw$hBaJFRdcKJ5qIy3IIt/23D20j34s2Epp8K0+Ljpa3Ls', 'bachelor'),
(93, 'jn@456', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Tkp4Wi8uTEpYWWZTNlhSeg$Ywi+l35/k9+uHq84eKpFtywceKeQ5ptLNs1BNbtLVus', 'bachelor'),
(94, 'kefay@123', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cHEveEQuTnlKTnhqY1JzRA$6XAw8NN8l2JyfwVuVUxc7vlFVSm5aNNSsKSb0m/oLbc', 'university'),
(95, 'mlkj@12', '[]', '$argon2i$v=19$m=65536,t=4,p=1$NW1LaVI0VjJabUNJaFNVNw$rcZg1eLnk3/oy+ZJcJeQRDqBPiEsrSGCFTqZ1d9tYRo', 'university'),
(96, 'fcgbhj@fghj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$RWFrUDM0OGhiZmhzMTU0SQ$UXVAv7E005AsGfY2YPEyUw7gwHEhmwplc/qA6uvJ4Nw', 'university'),
(97, 'fghn@5+12', '[]', '$argon2i$v=19$m=65536,t=4,p=1$RFZQZlZtaHltVEFncU5weQ$m04dAw1ZxPSfVUFWRxJktY+vQ1F6oDh1+qF8NskOm44', 'university'),
(98, 'cvbn@5412', '[]', '$argon2i$v=19$m=65536,t=4,p=1$MVB0cTVrV3ZuU3czRjNsTg$cplmbA7I/ZTk9Eie0HAiWZG0+j5MPxe9xLQvX1k+/Cw', 'university'),
(99, 'gfhjk@451', '[]', '$argon2i$v=19$m=65536,t=4,p=1$M0Yyamp6b1VBd2hlTlAxQw$4UhR/KCwfp79HaGbDOPk9PKfn7j25mHvtxSzhgFJmKE', 'university'),
(100, 'pokj@56', '[]', '$argon2i$v=19$m=65536,t=4,p=1$b1lQRTlSWWhtaFlNN0ZpSw$NAQFIBRrM9m+Ch/B5HPJ1fxB+UQbZnFNjCYcG1yS8P8', 'university'),
(101, 'hbjn@4651', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VWI4ZGlRTnF1Q2NZTjF1ag$BCbTjbrivB2LZUhr5vTd5AenkGjdN0tR5cOo6nJ+1EE', 'university'),
(102, 'hjkl@865', '[]', '$argon2i$v=19$m=65536,t=4,p=1$NjdaOUx0T2lMaENHU0lnWg$eXT24wOlMqmsSlB3loDnPCrMRH7Vg4MIEbr/pIZopGo', 'university'),
(103, 'fgh@512', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Z2MueUNFa3dxVmsxNC9KaA$RsEoxApFLKHb2TfmhC4Xkm3Shl1GkC0kAM1lr/N2+sA', 'university'),
(104, 'ghjk@65', '[]', '$argon2i$v=19$m=65536,t=4,p=1$ZXY2RWVJY1RXS0dWL25Wdw$ESgu8QYzd13zs5A3UNk+Kizm4qqGIaUZSelxT2bt820', 'university'),
(105, 'fcvgjbhk@4651', '[]', '$argon2i$v=19$m=65536,t=4,p=1$aHhHbG10N0hWbUl5a0ZocA$vyuV4i71ySjcKCBYWLPaJphytkb017HJQjkzbKe5IaY', 'university'),
(106, 'pkojhb@512', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bEYvVHZnTkczbVU5a0xmLg$mvwQeEzgn2uRkXsR80eAwau4+2n0LaRft67dBaKPsF8', 'university'),
(107, 'ok@ok.blabla', '[]', '$argon2i$v=19$m=65536,t=4,p=1$akdmalZ2VFI2Y21GQ3V2RQ$gh2uEMTahZxfqYWImrxKcQ9CNrtr8FwsF4oyW7dU7ps', 'bachelor'),
(108, 'afghbj@sdfghjk', '[]', '$argon2i$v=19$m=65536,t=4,p=1$YWd4cHhrc2JjdHY1SHhqTg$NnTUlaNHOcn8HDNnPZJD6aLl1wbQDpf9MX48HlwmREk', 'bachelor'),
(109, 'xcvb@kjhg', '[]', '$argon2i$v=19$m=65536,t=4,p=1$U2gvU3NUdE9BOGxlWGJQNg$QVSC4XBhhT8yp/5dsX0XhNT1TGzZpYclMPWQtGAEVIE', 'bachelor'),
(110, 'dfghj@cgvhbn', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Qk9IUUJocUMyeEJtY2kybg$oUF4SWj52HlzGB3HyUGHdoZISzdGKVkS6ZdAsDL19rI', 'bachelor'),
(111, 'plws@hcg', '[]', '$argon2i$v=19$m=65536,t=4,p=1$V0hweUJtWElvQ0FXc2x2Qw$rS33DS40HMqpJfNFTcN7vN52ypM37qHYAffmr2F0N1c', 'university'),
(112, 'aymen@aymen', '[]', '$argon2i$v=19$m=65536,t=4,p=1$ZFBGM0NrMER1WWMuOU4wYg$k8JeRN5Aud/4AmFtKBh12rga2wQZmt9D4z9rzw0TRDs', 'bachelor'),
(113, 'aymen@gmail.fr', '[]', '$argon2i$v=19$m=65536,t=4,p=1$QndhbUp2OEtZemZWbnRXeQ$GKhBb504xA8++m5MpC2LaT4C+OtVjZQs/Laq6X+LdUo', 'bachelor'),
(114, 'dfgh@jhbvg', '[]', '$argon2i$v=19$m=65536,t=4,p=1$R3RKTGFrYTh2ZDBPLzFPVw$H+YL4T/ejYVvwSIWPWq07wUrRnQNE1sm9NLqhnxuNB8', 'bachelor'),
(115, 'polpko@ghjk', '[]', '$argon2i$v=19$m=65536,t=4,p=1$TjBKaEFDZnh0MTk1MlU3MQ$7Qygjw6xv8zbCAdPbYC5NLOyh+mHe7gCK/argK6ZwGo', 'bachelor'),
(116, 'fcvbn@poijh', '[]', '$argon2i$v=19$m=65536,t=4,p=1$QzZmWUNYOGMzNE8uVWx4Zw$DZCkIL5q0liB7mM8MrlC0c3e0K9igksILM4cqmO8qeE', 'bachelor'),
(117, 'cvbhgf@uytghg', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Z09Xc2RuMHNaTVIyQWZMWg$F5SIusL51JzsA7AZRTr2tJxUQCkgaJURCUbVfCfYw9Y', 'bachelor'),
(118, 'vg@plfvghjiuytr', '[]', '$argon2i$v=19$m=65536,t=4,p=1$T0kzWE9STVdtUDd1Ti9pZg$TabNrqzjFU6SN5hGhnci3r+AaVxsV+wmXSPWRLeoy8s', 'bachelor'),
(119, 'ghj@vygh', '[]', '$argon2i$v=19$m=65536,t=4,p=1$SXhrUTJNUjZmd3RNWVRGbg$s757TZqXKp8HQ+igem+k2aPGKQtC3wO6K/pbXkIagWM', 'bachelor'),
(120, 'ghj@wxcvbn', '[]', '$argon2i$v=19$m=65536,t=4,p=1$SWQ2TzJCQVd2c0JVa2xYUA$93sk+0H0Nx3QRFJ/eMQW+ZJG+426AuBRukEV+jbHCZU', 'bachelor'),
(121, 'nhy@ikl', '[]', '$argon2i$v=19$m=65536,t=4,p=1$M2d4VE84TkxFZzQ0SUdpbw$9EGFiIXU0bwqf0TlVMPCMsaK064B4Z++uXCNJ88hyU0', 'bachelor'),
(122, 'jnv@zeubhnqi', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cEZPQnlVanpPbmNqN3NzZQ$GqnkQCi5E760MhelJSQO4W1dIlBtA5urGyOFlK0vSr4', 'bachelor'),
(123, 'fgbhn@poiuytrez', '[]', '$argon2i$v=19$m=65536,t=4,p=1$dEVNWFlrQW1xRDZyYUNQRw$3Ku4YlpA3QeK3rG6JWUeaFOt9iLtuLvqKDrF1d4PTh8', 'bachelor'),
(124, 'lkjhugfd@poiuytrdsdxcvbn,', '[]', '$argon2i$v=19$m=65536,t=4,p=1$b1Q3SXoxd1ducUw3N0RYRA$2a7rvbFnDGHEEhm6v3LySE0eEB+0V1KLRJLloTy8/ss', 'bachelor'),
(125, 'bns@bnj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$UkVYSnVuOUFNNlBSOC9wMQ$w4KDfUuHXosCU/bzvZYSo474yTGoUu5DAKtmqt/9fQY', 'bachelor'),
(126, 'dfgb@poiuytre', '[]', '$argon2i$v=19$m=65536,t=4,p=1$TGRFVmsyN2dyY3kxekFMRg$sjPgMkv4DTQDVCbQ59v0tuBeRlYEpmfdCNtALzBpEW8', 'bachelor'),
(127, 'ay@dfghjk', '[]', '$argon2i$v=19$m=65536,t=4,p=1$RC51U0JLeTFyQ2V3U3VHMQ$/DSPdbLVf7pF69WfVsTwAr/h2+I420JlTo0D7LYjzSk', 'bachelor'),
(128, 'fghj@dfghbjkjhgfd', '[]', '$argon2i$v=19$m=65536,t=4,p=1$YTRQLkQ3NEJlWXJEejlqVg$3ykK+lh09vPspLnMAQpMnyuuvlBXXEfP006WPnQ/uLs', 'bachelor'),
(129, 'fhbjkloiuhyg@fghjbkl,', '[]', '$argon2i$v=19$m=65536,t=4,p=1$UnNEM216WFdEbUxtZTM4Mg$4hmcqBSFaugIH8Jg0ih1qVsJb6s6aeNmBy/7uQEtJHU', 'bachelor'),
(130, 'jhgvbn,@ytvhjbnk', '[]', '$argon2i$v=19$m=65536,t=4,p=1$aVRlQzJUZ2ZBSE50UmZaag$CSnDvJthkcP4s36/szCJxu+ygFrglH+dkivDMUpQ/Sw', 'bachelor'),
(131, 'dcfvgb@cfdxs', '[]', '$argon2i$v=19$m=65536,t=4,p=1$YVM1cXBsUzA2OFNUWVouVQ$PJBqiPylkYco9u1B82qa9lc/uO1TLoD0MLtBiOH8EVE', 'bachelor'),
(132, 'jnbhgf@jihgcf', '[]', '$argon2i$v=19$m=65536,t=4,p=1$eWYuRURXVEhVcElicEFlRw$RG2pHYzvGMKdIq4qvAYjYmd37L3ih5PdOWGKKx6zv9o', 'bachelor'),
(133, 'fchbjkl,@jhgvhbn*', '[]', '$argon2i$v=19$m=65536,t=4,p=1$MGZMeWsuRG5oTzM1L3ptLw$j3bc8XkzO174QjNOOYMivVcPa1FaD64zYBEIQPgd8ZQ', 'bachelor'),
(134, 'hgjk@@fdx', '[]', '$argon2i$v=19$m=65536,t=4,p=1$a2k3bHlxOHBXSnZzZ1d3cw$WbjiOXKIu67rBSzeCnPVFdOuRf9O1PwL3Q8th4gSeW0', 'bachelor'),
(135, 'hgjk@@fdxhg', '[]', '$argon2i$v=19$m=65536,t=4,p=1$RDd1eFRzR0h3SElXWDQwRw$8sWpaejUzfGgXKQcNA0maM7XDccPO774ybD0V7kSwTE', 'university'),
(136, 'fghj@poiuytredfgvbn,', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VTFPT1RxekhJRndpTXhUNw$U1EeoQMiNuDFTM7Euv1kk9pq2G5tRjyHtpu7vWkiHlE', 'bachelor'),
(137, 'sdfghj@jhgfgxcvbn', '[]', '$argon2i$v=19$m=65536,t=4,p=1$alRsbzFGTkUvS1BiWmJGLg$jiUb8DP8p52uaSPnw7o+SDRpdyZv1/R1BxGHmebLBLo', 'bachelor'),
(138, 'hvejcbjz@kvjbzeijvb', '[]', '$argon2i$v=19$m=65536,t=4,p=1$LlNod3QudGhmSDQ5UE93TQ$8QsGMfas2oM+oRF8wJ0wmeOxbBJH2u6hM6K4wUWZPxQ', 'bachelor'),
(139, 'oiujhg@ghjiop', '[]', '$argon2i$v=19$m=65536,t=4,p=1$UGE0Nkl2UTJYNWhEUU1IWA$EoGm6Uqo6Q6lxz1IgmNBMBwzLptl1jp6dnxlmui9N5Y', 'bachelor'),
(140, 'ijuhygtv@fvghbjk,', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VnkueXRnUFAuV0FFZXVMag$qvPofVwxUzFo7+ElnZrxYQPBr76MAr0AFU/u6S526Vk', 'bachelor'),
(141, 'fvgbh@gvhbj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Nlg3SlJVWjBsbzVTeHJBOQ$Kv1dZ/LvMc6R9YRec68a056Bpqu79zoO+JNyX4KUR/A', 'bachelor'),
(142, 'aymen@amine.ghj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$RHkvLm5xY1FmZy9jbEs4bg$F4bHwmZXFzNHvcUc4cwj+xXn1HbymXe8Fpf4kl887lw', 'bachelor'),
(143, 'fghjk@gczhbsjlk', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cFZhYld2RHVyNkNmZWRjZw$jI3m3B5cu8CBTwZ2qBTvXBJ/BcKv6ujbiFoKk2lwnp4', 'bachelor'),
(144, 'lkjhg@kjnbhg', '[]', '$argon2i$v=19$m=65536,t=4,p=1$MW43MEI2MkpVVHpMRlpFQQ$iSZbFaX9409YqLKbLSDP+/YhZAHVhzgkkoTOrqJMFfA', 'bachelor'),
(145, 'fghbjnk,l;ds@gvhjb', '[]', '$argon2i$v=19$m=65536,t=4,p=1$dmpmWmZMdFRQWTAzRWZKWg$1V+aZBgrq+JFyQfBvNdTfo2MQpOZ2mAsBByALnzJsv8', 'bachelor'),
(146, 'fghjkkc@kjbzfjn', '[]', '$argon2i$v=19$m=65536,t=4,p=1$d284b25EN1ZqM2V0MFo3Nw$0kh5/0Mek6/EyEk01LD2REKy0ko+S8HviLCPKBtqtKU', 'bachelor'),
(147, 'fgchbjdscujnds@cinjsd', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cS5QNlQ2ZnN6UzJvcjdRcg$jcC5Hzw4dZzcQAqxBnr3ziuLCjOW7iTid3uqR+EgJE8', 'bachelor'),
(148, 'ozkz@zzhbzn', '[]', '$argon2i$v=19$m=65536,t=4,p=1$a0dVLkF0cEJXbk5OTXpRWA$qkD8rlVefNY83VijQdaB6i3NXh1u8V5B4DEx9Nzr4BE', 'bachelor'),
(149, 'zgbsdhkj@vfgbhjnk', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Uk5lZVlscVRUVnliemh2eA$blJkH/Z8btZIGv3jtiEEpM4GR9z64N/OjowCEIiCTuU', 'bachelor'),
(150, 'kvv@svjnsdks', '[]', '$argon2i$v=19$m=65536,t=4,p=1$L0sxLlNQZFBLYnl5QzJqUA$VpVGVqyPbE4iK/9YTZ9YG6JZledOWOviYIpXaI/Rt7E', 'bachelor'),
(151, 'amine@kefi.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cXFvaXlBODhwb1R1UzljNw$V6/+KkwcfjZGBJmBnaN+HdTbwn8uUkY9T1xR5SLTpl8', 'bachelor'),
(152, 'k,sksddds@jndjksd', '[]', '$argon2i$v=19$m=65536,t=4,p=1$N1dmSWpmOE5lL2piY1RCMw$enAlokz6EAfFrjv5rHdAJci5DQHNRLErvd7heYMzlh8', 'university'),
(153, 'klsdkcndsn@jdsjdsj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$WGQ2L1cvV0FDS2U2eVNGVw$6p0rNfyPA8IWZ3hp14RDjXPXMuOFaaDmJ0OEMe+nt4I', 'university'),
(154, 'ncncnnc@ncncn', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Vy42YmJwYjJVVExha1lCNQ$JfaioA7o8Zv7Bsx6vAm/PBRlma4f6tDUOmT0CrRp3Kk', 'university'),
(155, 'kjhgfcvbhfghn@', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bzd1dDlncUJxdlp6Q2I0Ng$zfrqr9uesjg1/gUWJkeRyQfLRbvE0Ve2x04UgVesY8g', 'university'),
(156, 'kjsdkjdskjdjksdkj@', '[]', '$argon2i$v=19$m=65536,t=4,p=1$MXR6VEVGTXk5QlQ4empQVg$Xm3gBaQwXxqzlayzokJfB+fylny/Mqjmb15L6DR6MQo', 'university'),
(157, 'jkjskjsk@sdhbsidubs', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Tk5acFZTSHdlUGY3c2xhcg$bfhCvtvnse0qfjGqIbi8QdykWlh0FzhCCYC/8qtsnj4', 'university'),
(158, 'ayqj@sdbhkj.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$eFkzVDlscmtSTURFYTNtLw$Afttiwxu/0uMtMCiPa+Y/2X5U4r+AfThzLebxhnYCiM', 'bachelor'),
(159, 'dfghj@dtrfgh', '[]', '$argon2i$v=19$m=65536,t=4,p=1$dWdEYVlWWWFLbUIwSnV6RQ$oqeD7md8NTfByjCdOWgyPL4a9ob30KGfCq5IqRDi8pQ', 'bachelor'),
(160, 'ghjklfvsqh@fcghvjbdjks', '[]', '$argon2i$v=19$m=65536,t=4,p=1$RFkwTHpYaXFjeFNRYUh4YQ$fS1AxLGyaMEQmB75LfUs9DP6/yWO7lTFi1FR3JfpZA4', 'bachelor'),
(161, 'fghjbkln,;msdvw@pifgbsdvw', '[]', '$argon2i$v=19$m=65536,t=4,p=1$RWNzam5FQlRHVWwwTGRZdA$shjRCizBPPfNLXXHV/biMt32OXc49hAwoaSMd9ENBMc', 'university'),
(162, 'tyuiol@fcygvhbjnk,lds', '[]', '$argon2i$v=19$m=65536,t=4,p=1$MkUzZDhhcHMzcFpjSi90WQ$829GuRD1k4pKvclPsSk09NTJY9O/4iLHbBXmALGRYiQ', 'university'),
(163, 'dcyuefklqd@afuvgqshbj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$dWdzcEs0T204Vlk3QzV5VA$d4BBI3LfqZmjn00ts3kTevCnbH879xCo5Db7IGUF0Cw', 'university'),
(164, 'qhbfsjd@skdfjbsdkjb', '[]', '$argon2i$v=19$m=65536,t=4,p=1$dDU3Lzk2SHpJRzBraUdrTQ$ZFxKtFEQMBWvMjQ1Ef1RsU1l26YLKaJwCn+VwcpMp88', 'university'),
(165, 'zgyhujisqdk;@zegfubhaj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$aDlybTBJeXhCMnlPbVhSOA$lZjEoHFt/NFpyvuE6TVtvKkVNDNBiKpa/MUXTCGQSU8', 'university'),
(166, 'gvhbjk,l;m@vghjkl', '[]', '$argon2i$v=19$m=65536,t=4,p=1$alduaFdCZUc3TC5iOVRXeg$/997wEhRKvDa+aHZhkGFxOCHDgahXzB8mBbLvpodbFM', 'university'),
(167, 'fghjklsdqc@ytzebuinf,qlc', '[]', '$argon2i$v=19$m=65536,t=4,p=1$TjE4eFBqSFdkYk1VTlpsbg$siyIW7i/EvXUNELtBi2LjAPkQaEQ3SAXwuUrwxXfyHA', 'university'),
(168, 'ghjnk,l;sf@pjfbza', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bFRja2V6RDFUb1ZjVmxXdg$ZjD3eEUOUqttQ1EvVQla+POj0iZa9zjz/B+Sn0ZBWFs', 'university'),
(169, ';akjcnhfeu@zhj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bHJGVkhYMGhxODYuU0kwWg$IdJoPiaqX0Jj1pf3tGXxWF5VJ6zLI+QjDz3IYSaKvyk', 'university'),
(170, ',velkv,er@k,', '[]', '$argon2i$v=19$m=65536,t=4,p=1$T3NSRFIwUldxUllrN0RULw$aViLudpBUNxHLMsbkq+S6CwjHUgbh4O5tWdBUPZZXBE', 'university'),
(171, 'oiujkiu@ek,;el', '[]', '$argon2i$v=19$m=65536,t=4,p=1$eGJiT2UzTVRkWTdEV0xWRA$0xdyR0y2oppQI1GI9zB/2RCrsMJdnabX8TAV+trs2Oo', 'university'),
(172, 'yzghnjk,lz@pohjg', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bWVCZG5OQjZRbzJZdUpaMQ$2wcNziS1Gg6PnlOMVnBWA8gFeUBud/J9jKY46zVU9fY', 'university'),
(173, 'znjvz,sq@zjn', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VU85aFRNWXc5TGtvVThoOA$PEBTeGwdUedmlagKLjaDArV/dZwTHwExAV/81kn8qHg', 'university'),
(174, 'lkjhghjk@kjhgfghjkl', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Sk1EbDFCUnRDZlJjMmRNbg$f8PgH4+HslxzvdTmeeTupvBh+N7cE9kPk3xflGaJXLo', 'university'),
(175, 'cvbn,;@jhgfdfghj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$TDlHc1FFZnZLVS5LbWkxUw$AqJ3ndeNgpLJK6Tnck3IVd3bSG7HT7JjI6XZKVnTC0M', 'university'),
(176, 'ghjklm@;lvefvkh', '[]', '$argon2i$v=19$m=65536,t=4,p=1$YnZEQjZSakpidmd4d2hkcQ$66GsJAXL3LhNJRAuwGeKld/+/Z6K4lDegnVNcUWtK9Y', 'university'),
(177, 'ghjkdlm@opiuhbs', '[]', '$argon2i$v=19$m=65536,t=4,p=1$YnRwN29DbW1LcGdRUDc3cw$aV+8oEdYXW5zwSCVa+N4dDnpvp8o2DJ1E2/rzWMIdEo', 'bachelor'),
(178, 'serdcfvg@hvjghfwd', '[]', '$argon2i$v=19$m=65536,t=4,p=1$TDQ0eFFxUlF3bjlQczY1Tw$2sIPgco8TT4SeiDZlGYDj21nr1lrYWnWIKEILWA3OcE', 'bachelor'),
(179, 'xfcghjbk@jhgfgdf', '[]', '$argon2i$v=19$m=65536,t=4,p=1$S3RZNjB4cTQwbm91TWhITg$fNklrFK1b4+okYkpETT4UYS50DCaRQGSwVWqPrszXl4', 'bachelor'),
(180, 'gfghjk@;;', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bEVkZW5Wbkg2aFJuS0lBdg$PVALDulp8hP1L1fdnfXzXmUexhcEmlS3MEPqq2pZuMw', 'bachelor'),
(181, 'iyguyfcghuijok@rtfyguhij,okl;m:', '[]', '$argon2i$v=19$m=65536,t=4,p=1$LkV2UTBndEdELmtNdmdxQQ$m9QKbmXfqSu9+j6kz+xnR2o9iW/iHjMCh7Cz7vEVse0', 'university'),
(182, 'poiujklm@sdfghjuytr', '[]', '$argon2i$v=19$m=65536,t=4,p=1$ZVNTTUdvQnl0bzVHS0VYMA$H28YrHWA43PRm0fQbDXcwPVgjAiR24eXHBSjP3QQL8A', 'university'),
(183, 'dfghjksm@;;o', '[]', '$argon2i$v=19$m=65536,t=4,p=1$Sms2Zzk0NzdvRFY0aWhSZg$7lZEqC/sPf/Wx5v4DAS8e0rV3Dg4Gif2opUwF4EYkQo', 'university'),
(184, 'cfvgbhnjoijdsk@1234dhsnj,kl', '[]', '$argon2i$v=19$m=65536,t=4,p=1$UHJpeVVyMS94Ry9CV1pqdQ$FalMjSNYQ5FShjBu7AVEuRq1PAdLnp1mY3eLuU6xBWA', 'university'),
(185, 'cfvgbhnjoijdsk@1234dhsnj,kl;', '[]', '$argon2i$v=19$m=65536,t=4,p=1$MmVROE1LWDNadUNsN1N4ZQ$ieoWVsN600SHbBR8hPD6NTVcZ/dVejxSjVJ51S59Xi8', 'university'),
(186, 'vbnjuhytrrfghjk@84521', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cU11SWdlYWc4dVdYQ0hnbg$gyw8HkZyUKN/VmGNYo+S1WqiHNyYg/QBG6KTdPSGuR4', 'university'),
(187, 'fgvbhnj,k@:::::', '[]', '$argon2i$v=19$m=65536,t=4,p=1$UGgxWUlWMXZQYlM4ck45Ug$XAeUXrOSNHV6NQMpWnMGzAYtmm5tC0H+wWIRW7jWwFE', 'university'),
(188, 'kjhgfyguhjn@mlkjhbjn,;', '[]', '$argon2i$v=19$m=65536,t=4,p=1$aHFDUURhTnEzQVVhakdYcQ$aIg9Hkj9yhfwq/mC+MX/Fdx+7qMTITy4KvmVNmCy4zw', 'university'),
(189, 'admin12@admin.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VHUvekFNdW1qakhZNTYvRw$eSx8aKsrUfkcVoOGnKR4lw3ZzlMQfhVH7CUuOdmrOYg', 'admin'),
(190, 'ezedrfgbhnj,@jkjfhesdrftgyhjk', '[]', '$argon2i$v=19$m=65536,t=4,p=1$SGdteTZWZTVoR3d5V2R2eA$J4RY8JeI0BIGH4srRCz+6ornjICzjg+kh+24gCsXu+A', 'university'),
(191, ';;pp@;;p', '[]', '$argon2i$v=19$m=65536,t=4,p=1$STVVUFBuOEdhTE5KSkROOQ$FGZ6n1v565q4hffzmIywELoWsP0JcSKmdkKbSCinDI4', 'university'),
(192, 'aa@aa;;aa', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bFNZWWlDY2NyTWovWGxXSQ$tAVZAfp6mQtKKK0HMks/Ugzc774siZIVW5Gq9X4tu/w', 'university'),
(193, 'hh;;@;;hh', '[]', '$argon2i$v=19$m=65536,t=4,p=1$UWdSbjNreDlZV0xxLlFjZA$F5r4wzXmhWmMCxZDNoZu3rMv3WyjxZy7UvCTVCUk6Gc', 'university'),
(194, 'kk;;kk@jj', '[]', '$argon2i$v=19$m=65536,t=4,p=1$N3ZnNGgvd1JmNTJLSE1xTw$MK0kPK42YgDw6tMCC4is3S1N9X2eQPzChhent6dwX/s', 'university'),
(195, 'mm::mmm@mm', '[]', '$argon2i$v=19$m=65536,t=4,p=1$TTVxYTdDalBCdkNPcDg1bg$wWjdcerEunY5BMXENf8mvv0pBSl7ISknFns8oceHmCg', 'university'),
(196, '::pp@pp::', '[]', '$argon2i$v=19$m=65536,t=4,p=1$ZFNqUVBlcENzTnFZMFQ5Mg$emcIKvd//AU8g5Y9ZE/LrBTHD89MZwa6lf93Qhf87y8', 'university'),
(197, 'pppppm@pppm!', '[]', '$argon2i$v=19$m=65536,t=4,p=1$ODE2R2E1Qm1sSHdFSGQuUg$VEHZ8QeAIxwO3fKUxTQzjq7UZU/2ET9Hh+z/pBRI76o', 'university'),
(198, 'dzsfsghbjk,l@::::', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VVdzazJGZUZVTWxZS0RyNA$xl+wpnvlipCnoA8q8JTbJ2LFPBGBxrxTBFwzVyuT9Uc', 'university'),
(199, 'lmllml@kjkl,', '[]', '$argon2i$v=19$m=65536,t=4,p=1$bkV6cmIzRWJvWi53VGxsRA$VfTJQU31yqLqQZa+Q5MS0tx0ecj8savuUje49VgPLzg', 'university'),
(200, 'bachelorexample@example.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$WldsSVFsNWVuNFVzNzJlNA$RTJHOv4DLFmdlkz31bwfG7jtSa71ev7PGcRbvRLJ8rg', 'bachelor'),
(201, 'universityexample@example.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$cE52Y3ZGSkdjSy5aWEQ4RQ$MSH2aOnGwTJIyo6z7gcEpkpCt2+d0lPgU8TdGzKa3F4', 'university');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A45BDDC1C3CBAC87` (`condidate_id`);

--
-- Index pour la table `bachelor`
--
ALTER TABLE `bachelor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EC542C8BA76ED395` (`user_id`);

--
-- Index pour la table `description_mj`
--
ALTER TABLE `description_mj`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8E4B7E68E93695C7` (`major_id`),
  ADD KEY `IDX_8E4B7E68309D1878` (`university_id`);

--
-- Index pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_68C58ED9DE16CFFE` (`bachelor_id`);

--
-- Index pour la table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9BACE7E1C74F2195` (`refresh_token`);

--
-- Index pour la table `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_466F2FFC3E030ACD` (`application_id`);

--
-- Index pour la table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `test_data`
--
ALTER TABLE `test_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A88AD9AC1E5D0459` (`test_id`),
  ADD KEY `IDX_A88AD9ACDE16CFFE` (`bachelor_id`);

--
-- Index pour la table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A07A85ECA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `bachelor`
--
ALTER TABLE `bachelor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `description_mj`
--
ALTER TABLE `description_mj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `major`
--
ALTER TABLE `major`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT pour la table `target`
--
ALTER TABLE `target`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `test_data`
--
ALTER TABLE `test_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `university`
--
ALTER TABLE `university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `FK_A45BDDC1C3CBAC87` FOREIGN KEY (`condidate_id`) REFERENCES `bachelor` (`id`);

--
-- Contraintes pour la table `bachelor`
--
ALTER TABLE `bachelor`
  ADD CONSTRAINT `FK_EC542C8BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `description_mj`
--
ALTER TABLE `description_mj`
  ADD CONSTRAINT `FK_8E4B7E68309D1878` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `FK_8E4B7E68E93695C7` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`);

--
-- Contraintes pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `FK_68C58ED9DE16CFFE` FOREIGN KEY (`bachelor_id`) REFERENCES `bachelor` (`id`);

--
-- Contraintes pour la table `target`
--
ALTER TABLE `target`
  ADD CONSTRAINT `FK_466F2FFC3E030ACD` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`);

--
-- Contraintes pour la table `test_data`
--
ALTER TABLE `test_data`
  ADD CONSTRAINT `FK_A88AD9AC1E5D0459` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`),
  ADD CONSTRAINT `FK_A88AD9ACDE16CFFE` FOREIGN KEY (`bachelor_id`) REFERENCES `bachelor` (`id`);

--
-- Contraintes pour la table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `FK_A07A85ECA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
