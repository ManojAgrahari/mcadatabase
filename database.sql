-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2014 at 07:48 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mcadatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `modelquestion`
--

DROP TABLE IF EXISTS `modelquestion`;
CREATE TABLE IF NOT EXISTS `modelquestion` (
`id` int(5) unsigned NOT NULL,
  `Question` varchar(20000) NOT NULL,
  `Option1` varchar(200) NOT NULL,
  `Option2` varchar(200) NOT NULL,
  `Option3` varchar(200) NOT NULL,
  `Option4Right` varchar(200) NOT NULL,
  `Solution` text NOT NULL,
  `Visibility` char(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modelquestion`
--

INSERT INTO `modelquestion` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4Right`, `Solution`, `Visibility`) VALUES
(1, 'The boy made some .......... remarks.', 'Unicautious', 'Incaustious', 'Incautious', 'Uncautious', 'c', 'e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modelquestion`
--
ALTER TABLE `modelquestion`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modelquestion`
--
ALTER TABLE `modelquestion`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
