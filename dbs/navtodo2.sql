-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 09, 2019 at 11:32 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_table`
--

INSERT INTO `list_table` (`list_id`, `list_item`, `due_date`, `class`, `created_at`, `user_id`) VALUES
(52, 'testing on submit 2', '2019-10-31', 'no', '2019-10-09 23:13:21', 2),
(49, 'ml', '2019-10-24', 'no', '2019-10-09 12:00:43', 2),
(50, 'testing 1', '2019-10-13', 'no', '2019-10-09 22:57:45', 2),
(51, 'testing on submit', '2019-10-31', 'no', '2019-10-09 23:12:22', 2);

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
