-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 09, 2019 at 10:11 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `navtodo`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_table`
--

DROP TABLE IF EXISTS `list_table`;
CREATE TABLE IF NOT EXISTS `list_table` (
  `list_id` int(1) NOT NULL AUTO_INCREMENT,
  `list_item` varchar(512) NOT NULL,
  `due_date` date NOT NULL,
  `class` varchar(8) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`list_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_table`
--

INSERT INTO `list_table` (`list_id`, `list_item`, `due_date`, `class`, `created_at`, `user_id`) VALUES
(35, 'Javascript', '2019-10-26', 'complete', '2019-10-09 06:12:32', 2),
(36, 'jbj', '2019-10-23', 'complete', '2019-10-08 20:33:10', 2),
(37, 'hgcg', '2019-10-16', 'no', '2019-10-08 20:46:13', 2),
(34, 'Danny Brown', '2019-10-23', 'complete', '2019-10-08 20:58:37', 2),
(33, 'Danny Brown', '2019-10-23', 'no', '2019-10-08 20:29:59', 2),
(32, 'machine learning mathematics', '2019-10-24', 'no', '2019-10-08 18:26:14', 2),
(38, 'CXF', '2019-10-23', 'no', '2019-10-08 20:46:27', 2),
(39, 'osesd,sd', '2019-10-23', 'no', '2019-10-08 20:53:10', 2),
(40, 'CXF', '2019-10-17', 'complete', '2019-10-08 20:58:45', 2),
(41, 'CXF', '2019-10-30', 'no', '2019-10-09 06:12:27', 2),
(42, 'rer', '2019-10-09', 'no', '2019-10-08 20:55:42', 2),
(43, 'CXF', '2019-10-23', 'no', '2019-10-08 20:57:30', 2),
(45, 'dsdsdsdsmdjsbfjdbfjdbfjdbfjdbfjbdjfbdjfbdjf', '2019-10-23', 'no', '2019-10-09 06:15:07', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Oe', '$2y$10$D95vS6NwBcpTeBLR1Bfpi.pZy7NrqkAOJQruijPkhhVSzhOuAoQB2', '2019-09-29 15:22:50'),
(2, 'fundile', '$2y$10$SE0C4qDqmm15.DSpH6NBC.6cs55xGUNgfCpG0ZrbGGvGmD3rSduma', '2019-09-29 17:39:05'),
(3, 'Oselu', '$2y$10$kbeDPjB.F3mi7SPYE8mMIOdksGliMdze41W.tDVgA3LYY7wo/aDyG', '2019-09-30 15:32:19'),
(4, 'Jjj', '$2y$10$Ea9EN4EFAYeRmax3uIU8Yez71sGbjJlolo7Lqb/lbtv4hTBz2v5T6', '2019-10-01 10:03:06'),
(5, 'Isaac', '$2y$10$RrXMGCmp.G3RVAijoKFXweU4N6OtvVvJyALIfxefymWDIs6Mw.ZgK', '2019-10-02 12:13:10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
