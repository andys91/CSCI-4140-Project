-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2014 at 06:14 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prison_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cell`
--

CREATE TABLE IF NOT EXISTS `cell` (
  `Cell_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Section` int(11) NOT NULL,
  `Capcity` int(11) NOT NULL,
  PRIMARY KEY (`Cell_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `Employee_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `e_information`
--

CREATE TABLE IF NOT EXISTS `e_information` (
  `Employee_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Access_Level` varchar(100) COLLATE utf8_bin NOT NULL,
  `Position` varchar(100) COLLATE utf8_bin NOT NULL,
  `First_Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Last_Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Start_Date` date NOT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `Prisoner_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Capcity` int(11) NOT NULL,
  `Injury` varchar(100) COLLATE utf8_bin NOT NULL,
  `Visitors` int(11) NOT NULL,
  PRIMARY KEY (`Prisoner_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `labour`
--

CREATE TABLE IF NOT EXISTS `labour` (
  `Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Wage` float NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `prisoner`
--

CREATE TABLE IF NOT EXISTS `prisoner` (
  `Prisoner_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Prisoner_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

CREATE TABLE IF NOT EXISTS `profits` (
  `Amount` float NOT NULL,
  `Prisoner_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Prisoner_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `p_information`
--

CREATE TABLE IF NOT EXISTS `p_information` (
  `Priosoner_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Severity` varchar(100) COLLATE utf8_bin NOT NULL,
  `Sentence` int(11) NOT NULL,
  `Release_Date` date NOT NULL,
  `First_Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Last_Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Start_Date` date NOT NULL,
  PRIMARY KEY (`Priosoner_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `e_information`
--
ALTER TABLE `e_information`
  ADD CONSTRAINT `e_information_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`);

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `hospital_ibfk_1` FOREIGN KEY (`Prisoner_ID`) REFERENCES `prisoner` (`Prisoner_ID`);

--
-- Constraints for table `profits`
--
ALTER TABLE `profits`
  ADD CONSTRAINT `profits_ibfk_1` FOREIGN KEY (`Prisoner_ID`) REFERENCES `prisoner` (`Prisoner_ID`);

--
-- Constraints for table `p_information`
--
ALTER TABLE `p_information`
  ADD CONSTRAINT `p_information_ibfk_1` FOREIGN KEY (`Priosoner_ID`) REFERENCES `prisoner` (`Prisoner_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
