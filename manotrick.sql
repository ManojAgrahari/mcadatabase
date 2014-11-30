-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2014 at 02:07 PM
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
CREATE DATABASE IF NOT EXISTS `mcadatabase` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mcadatabase`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modelquestion`
--

INSERT INTO `modelquestion` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4Right`, `Solution`, `Visibility`) VALUES
(1, 'The boy made some .......... remarks.', 'Unicautious', 'Incaustious', 'Incautious', 'Uncautious', 'c', 'e'),
(2, 'If $ \\alpha\\ and\\ \\beta\\ be\\ the\\ roots\\ of\\ ax^2 + bx +c \\ = 0,\\ the\\ value\\ of\\ \\dfrac{1}{{\\alpha}^2}\\ +\\ \\dfrac {1}{{\\beta}^2} $ is ', '$ \\dfrac {b^2 + 2ac}{c^2}  $', '$  \\dfrac {b^2 - 4ac}{c^2} $', '$ \\dfrac {b^2 - 2ac}{c^2} $', '$ {b^2 + 4ac}{c^2} $', ' <br> $ Sum\\ of\\ roots\\ = \\alpha + \\beta = -\\dfrac{b}{a}$</br>  <br> $ Products\\ of\\ roots\\ =\\alpha\\beta =\\dfrac{c}{a}$ </br>  <br>$ \\therefore\\ \\dfrac{1}{\\alpha^2} + \\dfrac{1}{\\beta^2} $ =  $\\dfrac{\\alpha^2 + \\beta^2}{\\alpha^2 \\beta^2}$ =  $ \\dfrac{ { ( {\\alpha} + {\\beta} )}^2 - 2 {\\ ( \\alpha \\beta \\ )} ^2 }{ { \\ ( {\\alpha}{\\beta} \\ )}^2} $ = $ \\dfrac{ \\ ({-b/a \\ )}^2 -2c/a}{ \\ ( c/a \\ )^2} $ = $ \\dfrac{b^2 - 2ac}{c^2} $</br>', 'm'),
(3, 'If  \\alpha\\ and\\ \\beta\\ be\\ the\\ roots\\ of\\ ax^2 + bx +c \\ = 0,\\ the\\ value\\ of\\ \\dfrac{1}{{\\alpha}^2}\\ +\\ \\dfrac {1}{{\\beta}^2}  is ', ' \\dfrac {b^2 + 2ac}{c^2}  ', ' \\dfrac {b^2 - 4ac}{c^2} ', ' \\dfrac {b^2 - 2ac}{c^2} ', ' {b^2 + 4ac}{c^2} ', ' <br>  Sum\\ of\\ roots\\ = \\alpha + \\beta = -\\dfrac{b}{a}</br>  <br>  Products\\ of\\ roots\\ =\\alpha\\beta =\\dfrac{c}{a} </br>  <br> \\therefore\\ \\dfrac{1}{\\alpha^2} + \\dfrac{1}{\\beta^2}  =  \\dfrac{\\alpha^2 + \\beta^2}{\\alpha^2 \\beta^2} =   \\dfrac{ { ( {\\alpha} + {\\beta} )}^2 - 2 {\\ ( \\alpha \\beta \\ )} ^2 }{ { \\ ( {\\alpha}{\\beta} \\ )}^2}  =  \\dfrac{ \\ ({-b/a \\ )}^2 -2c/a}{ \\ ( c/a \\ )^2} =  \\dfrac{b^2 - 2ac}{c^2} </br>', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam`
--

DROP TABLE IF EXISTS `onlineexam`;
CREATE TABLE IF NOT EXISTS `onlineexam` (
`id` int(5) unsigned NOT NULL,
  `Question` varchar(20000) NOT NULL,
  `Option1` varchar(200) NOT NULL,
  `Option2` varchar(200) NOT NULL,
  `Option3` varchar(200) NOT NULL,
  `Option4Right` varchar(200) NOT NULL,
  `Solution` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trick`
--

DROP TABLE IF EXISTS `trick`;
CREATE TABLE IF NOT EXISTS `trick` (
`id` int(5) unsigned NOT NULL,
  `Question` varchar(20000) NOT NULL,
  `Option1` varchar(200) NOT NULL,
  `Option2` varchar(200) NOT NULL,
  `Option3` varchar(200) NOT NULL,
  `Option4Right` varchar(200) NOT NULL,
  `Trick` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modelquestion`
--
ALTER TABLE `modelquestion`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlineexam`
--
ALTER TABLE `onlineexam`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trick`
--
ALTER TABLE `trick`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modelquestion`
--
ALTER TABLE `modelquestion`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `onlineexam`
--
ALTER TABLE `onlineexam`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trick`
--
ALTER TABLE `trick`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
