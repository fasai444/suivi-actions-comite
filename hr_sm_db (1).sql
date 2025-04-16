-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 10 juil. 2023 à 19:09
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hr_sm_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `actions`
--

CREATE TABLE `actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `responsible` text DEFAULT NULL,
  `accountable` varchar(255) DEFAULT NULL,
  `consulted` text DEFAULT NULL,
  `informed` text DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `deadline` datetime NOT NULL,
  `priority` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `datetime` varchar(255) DEFAULT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reunion_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actions`
--

INSERT INTO `actions` (`id`, `action`, `responsible`, `accountable`, `consulted`, `informed`, `start_date`, `deadline`, `priority`, `status`, `description`, `file_name`, `path`, `datetime`, `progress`, `created_at`, `updated_at`, `reunion_name`) VALUES
(28, 'Coordination des parties prenantes externes', 'fatima sifi - expert technique', 'leila sadiki - chef de COPIL,salma khalki - Contrôleur de gestion', 'leila sadiki - chef de COPIL,amina tijani - Directeur informatique,mohammed elmalki - Responsable de la communication', 'ahmed salmi - chef de projet', '2023-06-08 20:31:00', '2023-06-23 20:31:00', 'élevé', 'compléte', 'coordination des interactions avec les parties prenantes externes, telles que les clients, les fournisseurs ou les organismes réglementaires', 'pdf (3).pdf', 'upload/pdf (3).pdf', 'Mon, Jun 19, 2023 2:33 AM', 20, NULL, '2023-06-20 22:48:00', 'Projet Pôle Urbain Guercif'),
(29, 'Gestion des changements', 'leila sadiki - chef de COPIL', 'leila sadiki - chef de COPIL,ayman hamdaoui - Responsable des finances,amina tijani - Directeur informatique', 'salma khalki - Contrôleur de gestion,ahmed salmi - chef de projet', 'ayman hamdaoui - Responsable des finances,ahmed salmi - chef de projet', '2023-06-22 20:34:00', '2023-06-21 20:34:00', 'moyen', 'en attente', 'la gestion les demandes de changement dans le périmètre ou les objectifs du projet', '62911a5190456 (1).pdf', 'upload/62911a5190456 (1).pdf', 'Mon, Jun 19, 2023 2:35 AM', 50, NULL, NULL, 'Projet Pôle Urbain Guercif'),
(30, 'Évaluation des risques', 'leila sadiki - chef de COPIL', 'leila sadiki - chef de COPIL,salma khalki - Contrôleur de gestion,nabil vardi - responsable du service RH', 'leila sadiki - chef de COPIL,salma khalki - Contrôleur de gestion,mohammed elmalki - Responsable de la communication', 'leila sadiki - chef de COPIL,salma khalki - Contrôleur de gestion', '2023-06-01 20:36:00', '2023-06-23 20:36:00', 'élevé', 'active', 'réalisation une évaluation détaillée des risques identifiés, de les classer par ordre de priorité et de proposer des mesures d\'atténuation spécifiques pour chaque risque.', 'Système de gestion des demandes formulées du système d\'information - AMARA Oussama (2).pdf', 'upload/Système de gestion des demandes formulées du système d\'information - AMARA Oussama (2).pdf', 'Mon, Jun 19, 2023 2:37 AM', 100, NULL, '2023-06-21 03:06:28', 'Projet WAHA'),
(31, 'Suivi des réalisations', 'leila sadiki - chef de COPIL', 'amina tijani - Directeur informatique,nabil vardi - responsable du service RH', 'amina tijani - Directeur informatique,mohammed elmalki - Responsable de la communication', 'leila sadiki - chef de COPIL,amina tijani - Directeur informatique', '2023-06-19 20:38:00', '2023-06-30 20:38:00', 'élevé', 'compléte', 'suivi  des réalisations dans le projet, en s\'assurant que les engagements pris sont respectés et que les livrables sont conformes aux normes et aux attentes.', '538e13f946a79 (1).pdf', 'upload/538e13f946a79 (1).pdf', 'Mon, Jun 19, 2023 2:40 AM', 32, NULL, '2023-06-19 02:31:36', 'Projet Pôle Urbain Guercif Ghiata'),
(32, 'Coordination des partenariats', 'ayman hamdaoue - Responsable des finances', 'salma khalki - Contrôleur de gestion', 'mohammed elmalki - Responsable de la communication,fatima sifi - expert technique,nabil vardi - responsable du service RH', 'amina tijani - Directeur informatique', '2023-06-18 20:41:00', '2023-06-30 20:41:00', 'élevé', 'compléte', 'coordination des activités et les interactions  dans le projet, en veillant à ce que la communication soit fluide, que les engagements soient respectés et que les objectifs communs soient atteints.', 'DB6HXFyarPsvFsRi7CmKhfIExIMfAQZ9dkdzM08K.pdf', 'upload/DB6HXFyarPsvFsRi7CmKhfIExIMfAQZ9dkdzM08K.pdf', 'Mon, Jun 19, 2023 2:42 AM', 90, NULL, '2023-06-21 18:33:27', 'Projet Pôle Urbain Guercif Ghiata');

-- --------------------------------------------------------

--
-- Structure de la table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `name`, `email`, `description`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:26 AM', NULL, NULL),
(2, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:26 AM', NULL, NULL),
(3, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:27 AM', NULL, NULL),
(4, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:28 AM', NULL, NULL),
(5, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:28 AM', NULL, NULL),
(6, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:29 AM', NULL, NULL),
(7, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:29 AM', NULL, NULL),
(8, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:29 AM', NULL, NULL),
(9, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:29 AM', NULL, NULL),
(10, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:30 AM', NULL, NULL),
(11, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:32 AM', NULL, NULL),
(12, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:33 AM', NULL, NULL),
(13, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sat, Jun 3, 2023 4:46 AM', NULL, NULL),
(14, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sun, Jun 4, 2023 3:23 AM', NULL, NULL),
(15, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sun, Jun 4, 2023 6:20 AM', NULL, NULL),
(16, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sun, Jun 4, 2023 8:44 AM', NULL, NULL),
(17, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Mon, Jun 5, 2023 1:08 AM', NULL, NULL),
(18, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Mon, Jun 5, 2023 7:35 AM', NULL, NULL),
(19, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Mon, Jun 5, 2023 7:35 AM', NULL, NULL),
(20, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Mon, Jun 5, 2023 11:22 PM', NULL, NULL),
(21, 'fatima', 'fatimasaidi1748@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 12:37 AM', NULL, NULL),
(22, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 12:37 AM', NULL, NULL),
(23, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 5:15 AM', NULL, NULL),
(24, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 5:16 AM', NULL, NULL),
(25, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 8:39 AM', NULL, NULL),
(26, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:00 PM', NULL, NULL),
(27, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:06 PM', NULL, NULL),
(28, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:06 PM', NULL, NULL),
(29, 'fatima', 'fatimasaidi1748@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:14 PM', NULL, NULL),
(30, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:14 PM', NULL, NULL),
(31, 'fatima', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:15 PM', NULL, NULL),
(32, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:15 PM', NULL, NULL),
(33, 'fatima', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:15 PM', NULL, NULL),
(34, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:15 PM', NULL, NULL),
(35, 'fatima', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:16 PM', NULL, NULL),
(36, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:16 PM', NULL, NULL),
(37, 'fatima', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:17 PM', NULL, NULL),
(38, 'vangh5677@gmai.com', 'vangh5677@gmai.com', 'has log in', 'Tue, Jun 6, 2023 4:17 PM', NULL, NULL),
(39, 'vangh', 'vangh5677@gmai.com', 'has logged out', 'Tue, Jun 6, 2023 4:23 PM', NULL, NULL),
(40, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:23 PM', NULL, NULL),
(41, 'vangh', 'fatimasaidi1748@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:23 PM', NULL, NULL),
(42, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:24 PM', NULL, NULL),
(43, 'ahmed', 'test@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:24 PM', NULL, NULL),
(44, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:24 PM', NULL, NULL),
(45, 'vangh', 'fatimasaidi1748@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:25 PM', NULL, NULL),
(46, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:25 PM', NULL, NULL),
(47, 'ahmed', 'test@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:26 PM', NULL, NULL),
(48, 'vangh5677@gmai.com', 'vangh5677@gmai.com', 'has log in', 'Tue, Jun 6, 2023 4:27 PM', NULL, NULL),
(49, 'ahmed', 'vangh5677@gmai.com', 'has logged out', 'Tue, Jun 6, 2023 4:30 PM', NULL, NULL),
(50, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:30 PM', NULL, NULL),
(51, 'ahmed', 'test@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:31 PM', NULL, NULL),
(52, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:32 PM', NULL, NULL),
(53, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:41 PM', NULL, NULL),
(54, 'ahmed', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:43 PM', NULL, NULL),
(55, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:43 PM', NULL, NULL),
(56, 'test123', 'test@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:44 PM', NULL, NULL),
(57, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:44 PM', NULL, NULL),
(58, 'ahmed', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:45 PM', NULL, NULL),
(59, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:45 PM', NULL, NULL),
(60, 'test123', 'test@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:46 PM', NULL, NULL),
(61, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:46 PM', NULL, NULL),
(62, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:47 PM', NULL, NULL),
(63, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:47 PM', NULL, NULL),
(64, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:49 PM', NULL, NULL),
(65, 'test123', 'test@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 4:50 PM', NULL, NULL),
(66, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 4:51 PM', NULL, NULL),
(67, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 5:19 PM', NULL, NULL),
(68, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Tue, Jun 6, 2023 5:19 PM', NULL, NULL),
(69, 'test123', 'test@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 5:23 PM', NULL, NULL),
(70, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 5:23 PM', NULL, NULL),
(71, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 6, 2023 5:34 PM', NULL, NULL),
(72, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 6, 2023 6:04 PM', NULL, NULL),
(73, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 7, 2023 7:59 AM', NULL, NULL),
(74, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 7, 2023 8:14 AM', NULL, NULL),
(75, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Wed, Jun 7, 2023 8:15 AM', NULL, NULL),
(76, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 7, 2023 10:28 PM', NULL, NULL),
(77, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Thu, Jun 8, 2023 1:48 AM', NULL, NULL),
(78, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Thu, Jun 8, 2023 5:01 AM', NULL, NULL),
(79, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Thu, Jun 8, 2023 5:01 AM', NULL, NULL),
(80, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Thu, Jun 8, 2023 5:01 AM', NULL, NULL),
(81, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Thu, Jun 8, 2023 4:13 PM', NULL, NULL),
(82, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Fri, Jun 9, 2023 12:25 AM', NULL, NULL),
(83, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Fri, Jun 9, 2023 10:04 PM', NULL, NULL),
(84, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Fri, Jun 9, 2023 10:05 PM', NULL, NULL),
(85, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Fri, Jun 9, 2023 10:53 PM', NULL, NULL),
(86, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sat, Jun 10, 2023 9:42 PM', NULL, NULL),
(87, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Sun, Jun 11, 2023 4:41 AM', NULL, NULL),
(88, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sun, Jun 11, 2023 4:45 AM', NULL, NULL),
(89, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sun, Jun 11, 2023 9:34 PM', NULL, NULL),
(90, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Mon, Jun 12, 2023 12:29 AM', NULL, NULL),
(91, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Mon, Jun 12, 2023 12:31 AM', NULL, NULL),
(92, 'fatima saidi', 'fatimasaidi1748@gmail.com', 'has logged out', 'Mon, Jun 12, 2023 12:32 AM', NULL, NULL),
(93, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Mon, Jun 12, 2023 12:32 AM', NULL, NULL),
(94, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Mon, Jun 12, 2023 12:33 AM', NULL, NULL),
(95, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Mon, Jun 12, 2023 12:33 AM', NULL, NULL),
(96, 'leila sa', 'leilasa487@gmail.com', 'has logged out', 'Mon, Jun 12, 2023 12:33 AM', NULL, NULL),
(97, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Mon, Jun 12, 2023 12:33 AM', NULL, NULL),
(98, 'yyyyyyyyyy89', 'fatimasaidi1748@gmail.com', 'has logged out', 'Mon, Jun 12, 2023 3:18 AM', NULL, NULL),
(99, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Mon, Jun 12, 2023 3:18 AM', NULL, NULL),
(100, 'yyyyyyyyyy89', 'fatimasaidi1748@gmail.com', 'has logged out', 'Mon, Jun 12, 2023 3:19 AM', NULL, NULL),
(101, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Mon, Jun 12, 2023 3:19 AM', NULL, NULL),
(102, 'fatima saidi', 'leilasa487@gmail.com', 'has logged out', 'Mon, Jun 12, 2023 3:19 AM', NULL, NULL),
(103, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Mon, Jun 12, 2023 3:20 AM', NULL, NULL),
(104, 'fatima saidi', 'leilasa487@gmail.com', 'has logged out', 'Mon, Jun 12, 2023 3:20 AM', NULL, NULL),
(105, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Mon, Jun 12, 2023 3:20 AM', NULL, NULL),
(106, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Mon, Jun 12, 2023 9:11 PM', NULL, NULL),
(107, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 13, 2023 11:36 PM', NULL, NULL),
(108, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 14, 2023 10:38 AM', NULL, NULL),
(109, 'leila salmi', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 14, 2023 10:38 AM', NULL, NULL),
(110, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 14, 2023 10:39 AM', NULL, NULL),
(111, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 14, 2023 8:34 PM', NULL, NULL),
(112, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Thu, Jun 15, 2023 12:00 AM', NULL, NULL),
(113, 'leila salmi', 'leilasa487@gmail.com', 'has logged out', 'Thu, Jun 15, 2023 1:49 AM', NULL, NULL),
(114, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Thu, Jun 15, 2023 1:50 AM', NULL, NULL),
(115, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Thu, Jun 15, 2023 5:20 AM', NULL, NULL),
(116, 'fatima', 'fatimasaidi1748@gmail.com', 'has logged out', 'Thu, Jun 15, 2023 9:29 AM', NULL, NULL),
(117, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Thu, Jun 15, 2023 9:29 AM', NULL, NULL),
(118, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Thu, Jun 15, 2023 4:20 PM', NULL, NULL),
(119, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Thu, Jun 15, 2023 5:32 PM', NULL, NULL),
(120, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Thu, Jun 15, 2023 6:06 PM', NULL, NULL),
(121, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Thu, Jun 15, 2023 6:09 PM', NULL, NULL),
(122, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Fri, Jun 16, 2023 3:10 AM', NULL, NULL),
(123, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Fri, Jun 16, 2023 8:40 AM', NULL, NULL),
(124, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Fri, Jun 16, 2023 9:55 PM', NULL, NULL),
(125, 'fatima saidi', 'fatimasaidi1748@gmail.com', 'has logged out', 'Sat, Jun 17, 2023 2:33 AM', NULL, NULL),
(126, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Sat, Jun 17, 2023 2:33 AM', NULL, NULL),
(127, 'fatima saidi', 'fatimasaidi1748@gmail.com', 'has logged out', 'Sat, Jun 17, 2023 2:33 AM', NULL, NULL),
(128, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Sat, Jun 17, 2023 2:50 AM', NULL, NULL),
(129, 'fatima saidi', 'fatimasaidi1748@gmail.com', 'has logged out', 'Sat, Jun 17, 2023 9:47 AM', NULL, NULL),
(130, 'ahmed@gmail.com', 'ahmed@gmail.com', 'has log in', 'Sat, Jun 17, 2023 9:48 AM', NULL, NULL),
(131, 'gg', 'ahmed@gmail.com', 'has logged out', 'Sat, Jun 17, 2023 10:04 AM', NULL, NULL),
(132, 'test@gmail.com', 'test@gmail.com', 'has log in', 'Sat, Jun 17, 2023 10:04 AM', NULL, NULL),
(133, 'test123', 'test@gmail.com', 'has logged out', 'Sat, Jun 17, 2023 10:05 AM', NULL, NULL),
(134, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sat, Jun 17, 2023 10:05 AM', NULL, NULL),
(135, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sat, Jun 17, 2023 7:02 PM', NULL, NULL),
(136, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sun, Jun 18, 2023 5:30 AM', NULL, NULL),
(137, 'ayman@gmail.com', 'ayman@gmail.com', 'has log in', 'Sun, Jun 18, 2023 6:32 PM', NULL, NULL),
(138, 'ayman', 'ayman@gmail.com', 'has logged out', 'Sun, Jun 18, 2023 7:05 PM', NULL, NULL),
(139, 'ayman@gmail.com', 'ayman@gmail.com', 'has log in', 'Sun, Jun 18, 2023 7:05 PM', NULL, NULL),
(140, 'ayman', 'ayman@gmail.com', 'has logged out', 'Sun, Jun 18, 2023 8:57 PM', NULL, NULL),
(141, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Sun, Jun 18, 2023 10:07 PM', NULL, NULL),
(142, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Mon, Jun 19, 2023 2:53 AM', NULL, NULL),
(143, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Mon, Jun 19, 2023 2:53 AM', NULL, NULL),
(144, 'fatima sifi', 'fatimasaidi1748@gmail.com', 'has logged out', 'Mon, Jun 19, 2023 3:11 AM', NULL, NULL),
(145, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Mon, Jun 19, 2023 3:12 AM', NULL, NULL),
(146, 'fatima sifi', 'fatimasaidi1748@gmail.com', 'has logged out', 'Mon, Jun 19, 2023 3:25 AM', NULL, NULL),
(147, 'samir444@gmail.com', 'samir444@gmail.com', 'has log in', 'Mon, Jun 19, 2023 3:25 AM', NULL, NULL),
(148, 'samir barodi', 'samir444@gmail.com', 'has logged out', 'Mon, Jun 19, 2023 3:33 AM', NULL, NULL),
(149, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Mon, Jun 19, 2023 3:36 AM', NULL, NULL),
(150, 'samir444@gmail.com', 'samir444@gmail.com', 'has log in', 'Mon, Jun 19, 2023 10:23 AM', NULL, NULL),
(151, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Mon, Jun 19, 2023 10:23 AM', NULL, NULL),
(152, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Mon, Jun 19, 2023 11:20 AM', NULL, NULL),
(153, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Mon, Jun 19, 2023 11:21 AM', NULL, NULL),
(154, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Mon, Jun 19, 2023 5:13 PM', NULL, NULL),
(155, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 20, 2023 4:58 AM', NULL, NULL),
(156, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 20, 2023 4:58 AM', NULL, NULL),
(157, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 20, 2023 5:12 AM', NULL, NULL),
(158, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 20, 2023 6:34 AM', NULL, NULL),
(159, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 20, 2023 6:35 AM', NULL, NULL),
(160, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 20, 2023 6:38 AM', NULL, NULL),
(161, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Tue, Jun 20, 2023 6:38 AM', NULL, NULL),
(162, 'fatima sifi', 'fatimasaidi1748@gmail.com', 'has logged out', 'Tue, Jun 20, 2023 6:39 AM', NULL, NULL),
(163, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 20, 2023 6:39 AM', NULL, NULL),
(164, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 20, 2023 8:58 AM', NULL, NULL),
(165, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 20, 2023 9:29 AM', NULL, NULL),
(166, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 20, 2023 10:47 PM', NULL, NULL),
(167, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Tue, Jun 20, 2023 11:08 PM', NULL, NULL),
(168, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Tue, Jun 20, 2023 11:29 PM', NULL, NULL),
(169, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 1:29 AM', NULL, NULL),
(170, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 1:30 AM', NULL, NULL),
(171, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 1:58 AM', NULL, NULL),
(172, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 2:44 AM', NULL, NULL),
(173, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 3:24 AM', NULL, NULL),
(174, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 3:26 AM', NULL, NULL),
(175, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 3:31 AM', NULL, NULL),
(176, 'vangh5677@gmail.com', 'vangh5677@gmail.com', 'has log in', 'Wed, Jun 21, 2023 4:05 AM', NULL, NULL),
(177, 'nabil vardi', 'vangh5677@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 4:10 AM', NULL, NULL),
(178, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 4:10 AM', NULL, NULL),
(179, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 4:11 AM', NULL, NULL),
(180, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 5:12 AM', NULL, NULL),
(181, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 5:21 AM', NULL, NULL),
(182, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 5:22 AM', NULL, NULL),
(183, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 5:49 AM', NULL, NULL),
(184, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 5:52 AM', NULL, NULL),
(185, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 6:01 AM', NULL, NULL),
(186, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 7:22 AM', NULL, NULL),
(187, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 7:56 AM', NULL, NULL),
(188, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 7:57 AM', NULL, NULL),
(189, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 8:08 AM', NULL, NULL),
(190, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 8:53 AM', NULL, NULL),
(191, 'leila sadiki', 'leilasa487@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 9:07 AM', NULL, NULL),
(192, 'vangh5677@gmail.com', 'vangh5677@gmail.com', 'has log in', 'Wed, Jun 21, 2023 2:17 PM', NULL, NULL),
(193, 'nabil vardi', 'vangh5677@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 2:17 PM', NULL, NULL),
(194, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Wed, Jun 21, 2023 2:17 PM', NULL, NULL),
(195, 'fatima sifi', 'fatimasaidi1748@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 2:18 PM', NULL, NULL),
(196, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Wed, Jun 21, 2023 2:20 PM', NULL, NULL),
(197, 'fatima sifi', 'fatimasaidi1748@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 2:21 PM', NULL, NULL),
(198, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Wed, Jun 21, 2023 2:22 PM', NULL, NULL),
(199, 'fatima sifi', 'fatimasaidi1748@gmail.com', 'has logged out', 'Wed, Jun 21, 2023 2:24 PM', NULL, NULL),
(200, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Wed, Jun 21, 2023 2:24 PM', NULL, NULL),
(201, 'fatimasaidi1748@gmail.com', 'fatimasaidi1748@gmail.com', 'has log in', 'Wed, Jun 21, 2023 7:28 PM', NULL, NULL),
(202, 'leilasa487@gmail.com', 'leilasa487@gmail.com', 'has log in', 'Fri, Jun 23, 2023 9:38 AM', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `action_id`, `content`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(18, 61, 32, 'je l\'ai verifié bon travail !!', NULL, NULL, NULL, NULL),
(19, 64, 32, 'j\'ai ajouté une nouvelle tache pour aujourd\'hui', NULL, NULL, NULL, NULL),
(20, 64, 31, NULL, 'pdf (2).pdf', 'files/szISaTsFPlJWigaTKh85ZyL4L8vcNS3sQda1tj66.pdf', NULL, NULL),
(21, 61, 32, 'd\'accord', NULL, NULL, NULL, NULL),
(23, 61, 32, NULL, 'DB6HXFyarPsvFsRi7CmKhfIExIMfAQZ9dkdzM08K (13).pdf', 'files/OCx0LKHjavXK434IovTa3PZnK9gplNW2RtPEOagH.pdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conversations`
--

INSERT INTO `conversations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'leila salmi', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_25_224042_create_user_activity_logs_table', 1),
(5, '2021_04_30_224320_create_activity_logs_table', 1),
(6, '2021_05_03_061844_create_user_types_table', 1),
(7, '2021_05_03_061918_create_role_type_users_table', 1),
(8, '2021_06_04_053627_create_sequence_tbls_table', 1),
(9, '2021_06_04_053741_create_generate_id_tbls_table', 1),
(10, '2021_07_03_161410_create_position_types_table', 1),
(11, '2021_07_03_171244_create_departments_table', 1),
(12, '2021_07_14_054840_create_employees_table', 1),
(13, '2021_07_16_143215_create_module_permissions_table', 1),
(14, '2021_07_27_053429_create_holidays_table', 1),
(15, '2021_08_01_052433_create_permission_lists_table', 1),
(16, '2021_08_08_054847_create_roles_permissions_table', 1),
(17, '2021_08_13_054414_create_profile_information_table', 1),
(18, '2021_08_23_053914_create_leaves_admins_table', 1),
(19, '2021_09_21_054658_create_staff_salaries_table', 1),
(20, '2021_11_06_201850_create_performance_indicator_lists_table', 1),
(21, '2021_11_09_070649_create_performance_indicators_table', 1),
(22, '2021_11_18_055032_create_performance_appraisals_table', 1),
(23, '2021_12_04_055348_create_trainings_table', 1),
(24, '2022_01_07_060821_create_trainers_table', 1),
(25, '2022_02_02_060242_create_training_types_table', 1),
(26, '2023_05_29_073738_create_actions_table', 2),
(32, '2023_06_03_044051_create_users_table', 3),
(33, '2023_06_03_061550_create_actions_table', 4),
(38, '2023_06_04_080640_create_comments_table', 5),
(39, '2023_06_06_045109_create_role_type_users_table', 6),
(44, '2023_06_06_080848_create_actions_table', 7),
(45, '2023_06_06_083115_create_comments_table', 8),
(46, '2023_06_08_053724_create_user_types_name', 9),
(49, '2023_06_09_075127_create_actions_table', 10),
(50, '2023_06_10_010446_create_comments_table', 11),
(51, '2023_06_12_091018_create_tasks_table', 12),
(52, '2023_06_15_002303_create_conversations_table', 13),
(53, '2023_06_15_002415_create_conversation_user_table', 14),
(54, '2023_06_15_002515_create_messages_table', 15),
(55, '2023_06_15_055846_create_reunions_table', 16);

-- --------------------------------------------------------

--
-- Structure de la table `module_permissions`
--

CREATE TABLE `module_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `module_permission` varchar(255) DEFAULT NULL,
  `id_count` varchar(255) DEFAULT NULL,
  `read` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `create` varchar(255) DEFAULT NULL,
  `delete` varchar(255) DEFAULT NULL,
  `import` varchar(255) DEFAULT NULL,
  `export` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('fatimasaidi1748@gmail.com', 'W63LXLZPV7BjtdNruhXysDbXOj3Z1C6zD9m8afiyyOKQNMPrSvwsmtbnCJRg', '2023-06-18 20:28:46'),
('fatimasaidi1748@gmail.com', 'rUAEPuHgR7gXIgt6OJOMdNm3pHGoffzFQdhkWzGgNRJcwrPfWFJXkc0iyCA7', '2023-06-18 20:39:50'),
('leilasa487@gmail.com', 'T9BHO3AFzCOskIqmLG1dqqnYbEz9stY8sa4aJpVM5IUbY0Zz4ZNKPmaU26zu', '2023-06-21 18:26:47');

-- --------------------------------------------------------

--
-- Structure de la table `position_types`
--

CREATE TABLE `position_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `position_types`
--

INSERT INTO `position_types` (`id`, `position`, `created_at`, `updated_at`) VALUES
(1, 'CEO', NULL, NULL),
(2, 'CFO', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'Web Designer', NULL, NULL),
(5, 'Web Developer', NULL, NULL),
(6, 'Android Developer', NULL, NULL),
(7, 'IOS Developer', NULL, NULL),
(8, 'Team Leader', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `profile_information`
--

CREATE TABLE `profile_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rec_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `reports_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profile_information`
--

INSERT INTO `profile_information` (`id`, `name`, `rec_id`, `email`, `birth_date`, `gender`, `address`, `state`, `country`, `pin_code`, `phone_number`, `department`, `designation`, `reports_to`, `created_at`, `updated_at`) VALUES
(1, 'fatima saidi', NULL, 'fatimasaidi1748@gmail.com', '24-04-2004', 'Female', 'casablanca', NULL, 'Maroc', '20000', '06785634', NULL, NULL, NULL, '2023-06-06 04:13:53', '2023-06-11 23:37:40');

-- --------------------------------------------------------

--
-- Structure de la table `reunions`
--

CREATE TABLE `reunions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `participants` text DEFAULT NULL,
  `topics` text DEFAULT NULL,
  `associated_actions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reunions`
--

INSERT INTO `reunions` (`id`, `name`, `date`, `duration`, `location`, `participants`, `topics`, `associated_actions`, `created_at`, `updated_at`) VALUES
(9, 'Projet Pôle Urbain Guercif Ghiata', '2023-06-25 20:24:00', 2, 'Salle de réunion', 'leila sadiki - chef de COPIL,salma khalki - Contrôleur de gestion,mohammed elmalki - Responsable de la communication,nabil vardi - responsable du service RH', 'Revue de l\'avancement,Répartition des tâches', NULL, '2023-06-19 01:25:59', '2023-06-19 01:25:59'),
(10, 'Projet WAHA', '2023-06-22 20:26:00', 1, 'Salles de conférence', 'ayman hamdaoui - Responsable des finances,salma khalki - Contrôleur de gestion,mohammed elmalki - Responsable de la communication', 'Discussion sur les ressources nécessaires', NULL, '2023-06-19 01:27:32', '2023-06-19 01:27:32'),
(11, 'Projet Pôle Urbain Guercif', '2023-06-28 20:28:00', 2, 'Salle de réunion', 'ayman hamdaoui - Responsable des finances,fatima sifi - expert technique,ahmed salmi - chef de projet', 'Évaluation des risques potentiels', NULL, '2023-06-19 01:28:59', '2023-06-19 01:28:59'),
(14, 'reunion du projet prochain', '2023-06-21 02:58:00', 1, 'Salle de réunion', 'leila sadiki - chef de COPIL,amina tijani - Directeur informatique,mohammed elmalki - Responsable de la communication', 'Revue de l\'avancement,Répartition des tâches', NULL, '2023-06-21 07:59:25', '2023-06-21 07:59:25'),
(15, 'reunion du projet', '2023-06-22 13:31:00', 1, 'Salle de réunion', 'amina tijani - Directeur informatique,nabil vardi - responsable du service RH', 'Discussion sur les ressources nécessaires', NULL, '2023-06-21 18:31:50', '2023-06-21 18:31:50');

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permissions_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `permissions_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL),
(2, 'CEO', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'Team Leader', NULL, NULL),
(5, 'Accountant', NULL, NULL),
(6, 'Web Developer', NULL, NULL),
(7, 'Web Designer', NULL, NULL),
(8, 'HR', NULL, NULL),
(9, 'UI/UX Developer', NULL, NULL),
(10, 'SEO Analyst', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role_type_users`
--

CREATE TABLE `role_type_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_type_users`
--

INSERT INTO `role_type_users` (`id`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Utilisateur', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sequence_tbls`
--

CREATE TABLE `sequence_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sequence_tbls`
--

INSERT INTO `sequence_tbls` (`id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tasks`
--

INSERT INTO `tasks` (`id`, `action_id`, `description`, `completed`, `created_at`, `updated_at`) VALUES
(30, 31, 'verifier les spécifications techniques', 0, '2023-06-19 02:31:27', '2023-06-19 02:31:27'),
(34, 32, 'evaluation de l\'impact finacier', 0, '2023-06-21 08:03:58', '2023-06-21 08:03:58'),
(35, 32, 'evaluation de l\'impact finacier', 0, '2023-06-21 18:34:14', '2023-06-21 18:34:14');

-- --------------------------------------------------------

--
-- Structure de la table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `trainer_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `rec_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `join_date` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `rec_id`, `email`, `join_date`, `phone_number`, `status`, `role_name`, `avatar`, `position`, `department`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(57, 'ayman hamdaoue', NULL, 'aymenhde@gmail.com', 'Sun, Jun 18, 2023 11:10 PM', '0628638977', 'Active', 'Utilisateur', '1687279587.jpg', 'Responsable des finances', NULL, NULL, '$2y$10$v4/t3ULelXuwcSDpD9MzWO5P1ZcG.iHOobmHZoK4Ep11x0/4U2wq.', NULL, '2023-06-18 22:10:41', '2023-06-20 22:46:27'),
(58, 'salma khalki', NULL, 'salmakh@gmail.com', 'Sun, Jun 18, 2023 11:12 PM', '0628639877', 'Active', 'Utilisateur', '1687104727.jpg', 'Contrôleur de gestion', NULL, NULL, '$2y$10$Tst5QUjm/cml.FpppCGVO.ys3m2OF6fjoLJgGLAWM0TBswwCmqMo6', NULL, '2023-06-18 22:12:07', '2023-06-21 18:29:40'),
(59, 'amina tijani', NULL, 'aminatj@gmail.com', 'Sun, Jun 18, 2023 11:13 PM', '0628639834', 'Inactive', 'Utilisateur', '1687104796.jpg', 'Directeur informatique', NULL, NULL, '$2y$10$aYTejkDkFBWyzidFm/vg0OfLjFvJN5x3jjrQ2ITpBWvaHyuSWGUJS', NULL, '2023-06-18 22:13:16', '2023-06-19 01:52:38'),
(60, 'mohammed elmalki', NULL, 'mohamedml@gmail.com', 'Sun, Jun 18, 2023 11:15 PM', '0628639867', 'Active', 'Utilisateur', '1687104938.jpg', 'Responsable de la communication', NULL, NULL, '$2y$10$FcKj4CoU0pAdnPEf51NsyeRkdFTvw/K5CpLlljguE538DiHR/L5Ga', NULL, '2023-06-18 22:15:38', '2023-06-18 22:15:51'),
(61, 'fatima sifi', NULL, 'fatimasaidi1748@gmail.com', 'Sun, Jun 18, 2023 11:20 PM', '0628637478', 'Active', 'Admin', '1687105258.jpg', 'expert technique', NULL, NULL, '$2y$10$i1JEv40AFnXQybxMWaYpN.tDP0kpNP7qz8ur.f5KMa1CDlCJHI4me', NULL, '2023-06-18 22:20:58', '2023-06-21 18:37:55'),
(62, 'ahmed salmi', NULL, 'ahmedsl@gmail.com', 'Sun, Jun 18, 2023 11:22 PM', '0628637430', 'Inactive', 'Utilisateur', '1687105360.jpg', 'chef de projet', NULL, NULL, '$2y$10$yas6/Fmugylqej.8e/Kid.frqR5MfeKxEoN3McqFW2Iqp6FOv9A9e', NULL, '2023-06-18 22:22:40', '2023-06-19 01:52:47'),
(63, 'nabil vardi', NULL, 'vangh5677@gmail.com', 'Sun, Jun 18, 2023 11:24 PM', '0628630956', 'Active', 'Utilisateur', '1687105473.jpg', 'responsable du service RH', NULL, NULL, '$2y$10$CimOhfBxrXvz06ShND2UfO0C6CIgojGl3Y.e.SZc5u3dXKwQjziWe', NULL, '2023-06-18 22:24:34', '2023-06-21 06:22:01'),
(64, 'samir barodi', NULL, 'samir444@gmail.com', 'Mon, Jun 19, 2023 3:25 AM', '0628637488', 'Active', 'Utilisateur', '1687119913.jpg', 'Responsable de la qualité', NULL, NULL, '$2y$10$r5Xl3s0iaC9SGuw2KwrrAu/pTALSn.g.CnykCBkXpyrkNzpZRIP86', NULL, '2023-06-19 02:25:14', '2023-06-19 02:25:14'),
(71, 'leila sadiki', NULL, 'leilasa487@gmail.com', 'Wed, Jun 21, 2023 2:23 PM', '0628637432', 'Active', 'Admin', '1687332228.jpg', 'ched de COPIL', NULL, NULL, '$2y$10$hpMpDG.8QqtLtCDz.q4zuO1zP0McdFAJg0HZoGICYbQzt5vdF2Mcu', NULL, '2023-06-21 13:23:48', '2023-06-21 13:23:48');

-- --------------------------------------------------------

--
-- Structure de la table `user_activity_logs`
--

CREATE TABLE `user_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `modify_user` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_activity_logs`
--

INSERT INTO `user_activity_logs` (`id`, `user_name`, `email`, `phone_number`, `status`, `role_name`, `modify_user`, `date_time`, `created_at`, `updated_at`) VALUES
(4, 'leila sa', 'leilasa487@gmail.com', NULL, NULL, 'Admin', 'Delete', 'Tue, Jun 6, 2023 5:18 AM', NULL, NULL),
(6, 'ahmed', 'fatimasaidi1748@gmail.com', NULL, NULL, 'Admin', 'Delete', 'Tue, Jun 6, 2023 4:33 PM', NULL, NULL),
(16, 'leila sa', 'leilasa487@gmail.com', NULL, NULL, 'Admin', 'Delete', 'Thu, Jun 8, 2023 4:07 AM', NULL, NULL),
(18, 'leila sa', 'leilasa487@gmail.com', NULL, NULL, 'Admin', 'Delete', 'Thu, Jun 8, 2023 4:16 AM', NULL, NULL),
(19, 'leila sa', 'leilasa487@gmail.com', NULL, NULL, 'Admin', 'Delete', 'Thu, Jun 8, 2023 4:16 AM', NULL, NULL),
(23, 'ahmed89', 'ahmed@gmail.com', NULL, 'Active', 'Normal User', 'Update', 'Thu, Jun 8, 2023 5:04 PM', NULL, NULL),
(24, 'ahmed90', 'ahmed@gmail.com', NULL, 'Active', 'Normal User', 'Update', 'Thu, Jun 8, 2023 5:04 PM', NULL, NULL),
(25, 'fatima56', 'fatimasaidi1748@gmail.com', NULL, 'Active', 'Admin', 'Update', 'Thu, Jun 8, 2023 5:07 PM', NULL, NULL),
(26, 'ahmed09', 'ahmed@gmail.com', NULL, 'Active', 'Normal User', 'Update', 'Thu, Jun 8, 2023 5:11 PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Active', NULL, NULL),
(2, 'Inactive', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_action_id_foreign` (`action_id`);

--
-- Index pour la table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `module_permissions`
--
ALTER TABLE `module_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `position_types`
--
ALTER TABLE `position_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `profile_information`
--
ALTER TABLE `profile_information`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reunions`
--
ALTER TABLE `reunions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_type_users`
--
ALTER TABLE `role_type_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_action_id_foreign` (`action_id`);

--
-- Index pour la table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_join_date_unique` (`join_date`);

--
-- Index pour la table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `module_permissions`
--
ALTER TABLE `module_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `position_types`
--
ALTER TABLE `position_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `profile_information`
--
ALTER TABLE `profile_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reunions`
--
ALTER TABLE `reunions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `role_type_users`
--
ALTER TABLE `role_type_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_action_id_foreign` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_action_id_foreign` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
