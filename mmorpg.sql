-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 23, 2016 at 09:51 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mmorpg`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `name` varchar(45) NOT NULL,
  `item` varchar(45) NOT NULL,
  `amount` int(11) DEFAULT '0',
  PRIMARY KEY (`name`),
  UNIQUE KEY `item` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `name` varchar(45) NOT NULL,
  `money` int(11) DEFAULT '1000',
  `lv` int(11) DEFAULT '1',
  `exp` int(11) DEFAULT '0',
  `hp` int(11) DEFAULT '100',
  `attack` int(11) DEFAULT '4',
  `defense` int(11) DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`name`, `money`, `lv`, `exp`, `hp`, `attack`, `defense`) VALUES
('1234', 1000, 1, 0, 100, 4, 0),
('Enter user name', 1000, 1, 0, 100, 4, 0),
('Enter user name32165', 1000, 1, 0, 100, 4, 0),
('hung', 1000, 1, 0, 100, 4, 0),
('lung', 2000, 1, 0, 100, 4, 0),
('pp', 1000, 1, 0, 100, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `isOnline` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `password`, `isOnline`) VALUES
('1234', 'Enter password', 0),
('Enter user name', 'Enter password', 0),
('Enter user name32165', 'Enter password', 1),
('hung', '1234', 0),
('lung', '1234', 0),
('pp', 'pp', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
