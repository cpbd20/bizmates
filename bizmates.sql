-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 30, 2021 at 09:52 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bizmates`
--

-- --------------------------------------------------------

--
-- Table structure for table `trn_evaluation`
--

DROP TABLE IF EXISTS `trn_evaluation`;
CREATE TABLE IF NOT EXISTS `trn_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `result` tinyint(4) NOT NULL,
  `lesson_datetime` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trn_evaluation`
--

INSERT INTO `trn_evaluation` (`id`, `teacher_id`, `result`, `lesson_datetime`, `created_at`) VALUES
(1, 110250, 1, '2020-01-11 17:00:00', '2020-01-17 01:00:34'),
(2, 110250, 11, '2020-01-11 16:30:00', '2020-01-17 01:00:34'),
(3, 110250, 1, '2020-01-10 16:00:00', '2020-01-17 01:00:34'),
(4, 110011, 1, '2020-01-10 17:00:00', '2020-01-17 01:00:34'),
(5, 110011, 2, '2020-01-10 21:00:00', '2020-01-17 01:00:34'),
(6, 110011, 1, '2020-01-10 23:00:00', '2020-01-17 01:00:34'),
(7, 110030, 1, '2020-01-10 21:30:00', '2020-01-17 01:00:34'),
(8, 110030, 1, '2020-01-10 20:00:00', '2020-01-17 01:00:34'),
(9, 110030, 1, '2020-01-10 19:30:00', '2020-01-17 01:00:34'),
(10, 110023, 1, '2020-01-07 17:00:00', '2020-01-17 01:00:34'),
(11, 110023, 1, '2020-01-06 17:00:00', '2020-01-17 01:00:34'),
(12, 110023, 2, '2020-01-08 16:30:00', '2020-01-17 01:00:34'),
(13, 110033, 1, '2020-01-07 15:30:00', '2020-01-17 01:00:34'),
(14, 110033, 2, '2020-01-06 16:30:00', '2020-01-17 01:00:34'),
(15, 110033, 1, '2020-01-07 10:30:00', '2020-01-17 01:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `trn_teacher`
--

DROP TABLE IF EXISTS `trn_teacher`;
CREATE TABLE IF NOT EXISTS `trn_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110251 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trn_teacher`
--

INSERT INTO `trn_teacher` (`id`, `nickname`, `status`, `created_at`) VALUES
(110250, 'John D', 1, '2020-01-16 11:02:18'),
(110023, 'Mike', 0, '2020-01-16 11:03:25'),
(110011, 'Luca', 1, '2020-01-16 11:04:10'),
(110033, 'Scottie', 2, '2020-01-17 00:10:23'),
(110030, 'Steph C', 1, '2020-01-17 00:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `trn_teacher_role`
--

DROP TABLE IF EXISTS `trn_teacher_role`;
CREATE TABLE IF NOT EXISTS `trn_teacher_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trn_teacher_role`
--

INSERT INTO `trn_teacher_role` (`id`, `teacher_id`, `role`, `created_at`) VALUES
(1, 110250, 1, '2020-01-17 00:29:55'),
(2, 110250, 2, '2020-01-17 01:02:01'),
(3, 110250, 3, '2020-01-17 01:02:09'),
(4, 110011, 1, '2020-01-17 01:02:27'),
(5, 110030, 1, '2020-01-17 01:02:37'),
(6, 110030, 2, '2020-01-17 01:02:45'),
(7, 110023, 1, '2020-01-17 01:02:57'),
(8, 110033, 3, '2020-01-17 01:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `trn_time_table`
--

DROP TABLE IF EXISTS `trn_time_table`;
CREATE TABLE IF NOT EXISTS `trn_time_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `lesson_datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trn_time_table`
--

INSERT INTO `trn_time_table` (`id`, `teacher_id`, `lesson_datetime`, `status`) VALUES
(1, 110250, '2020-01-11 17:00:00', 1),
(2, 110250, '2020-01-11 16:30:00', 1),
(3, 110250, '2020-01-10 16:00:00', 1),
(4, 110011, '2020-01-10 17:00:00', 1),
(5, 110011, '2020-01-10 21:00:00', 2),
(6, 110011, '2020-01-10 23:00:00', 3),
(7, 110030, '2020-01-10 21:30:00', 1),
(8, 110030, '2020-01-10 20:00:00', 1),
(9, 110030, '2020-01-10 19:30:00', 1),
(10, 110023, '2020-01-07 17:00:00', 1),
(11, 110023, '2020-01-06 17:00:00', 1),
(12, 110023, '2020-01-08 16:30:00', 2),
(13, 110033, '2020-01-07 15:30:00', 1),
(14, 110033, '2020-01-06 16:30:00', 2),
(15, 110033, '2020-01-07 10:30:00', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
