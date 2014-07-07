-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 08, 2014 at 01:50 AM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `advanced_databases`
--

-- --------------------------------------------------------

--
-- Table structure for table `cell`
--

CREATE TABLE `cell` (
  `Prisoner_ID` int(11) NOT NULL,
  `Cell_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Section` int(11) NOT NULL,
  `Capcity` int(11) NOT NULL,
  PRIMARY KEY (`Cell_Number`),
  UNIQUE KEY `Prisoner_ID` (`Prisoner_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=114 ;

--
-- Dumping data for table `cell`
--

INSERT INTO `cell` (`Prisoner_ID`, `Cell_Number`, `Section`, `Capcity`) VALUES
(113, 113, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `e_information`
--

CREATE TABLE `e_information` (
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

CREATE TABLE `hospital` (
  `Prisoner_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Capacity` int(11) NOT NULL,
  `Injury` varchar(100) COLLATE utf8_bin NOT NULL,
  `Visitors` int(11) NOT NULL,
  PRIMARY KEY (`Prisoner_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=114 ;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Prisoner_ID`, `Capacity`, `Injury`, `Visitors`) VALUES
(112, 2, 'Broken Ribs', 1),
(113, 0, 'Broken Knee', 0);

-- --------------------------------------------------------

--
-- Table structure for table `labour`
--

CREATE TABLE `labour` (
  `Prisoner_ID` int(11) NOT NULL,
  `Name` varchar(40) COLLATE utf8_bin NOT NULL,
  `Wage` float NOT NULL,
  PRIMARY KEY (`Prisoner_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `labour`
--

INSERT INTO `labour` (`Prisoner_ID`, `Name`, `Wage`) VALUES
(113, 'Construction', 10);

-- --------------------------------------------------------

--
-- Table structure for table `prisoner`
--

CREATE TABLE `prisoner` (
  `Prisoner_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Prisoner_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=115 ;

--
-- Dumping data for table `prisoner`
--

INSERT INTO `prisoner` (`Prisoner_ID`) VALUES
(111),
(112),
(113),
(114);

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

CREATE TABLE `profits` (
  `Amount` float NOT NULL,
  `Prisoner_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Prisoner_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=114 ;

--
-- Dumping data for table `profits`
--

INSERT INTO `profits` (`Amount`, `Prisoner_ID`) VALUES
(120, 111),
(480, 112),
(100, 113);

-- --------------------------------------------------------

--
-- Table structure for table `p_information`
--

CREATE TABLE `p_information` (
  `Prisoner_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Severity` varchar(100) COLLATE utf8_bin NOT NULL,
  `Sentence` varchar(100) COLLATE utf8_bin NOT NULL,
  `Release_Date` date DEFAULT NULL,
  `First_Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Last_Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Start_Date` date NOT NULL,
  PRIMARY KEY (`Prisoner_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=114 ;

--
-- Dumping data for table `p_information`
--

INSERT INTO `p_information` (`Prisoner_ID`, `Severity`, `Sentence`, `Release_Date`, `First_Name`, `Last_Name`, `Start_Date`) VALUES
(111, 'High', 'Death', NULL, 'Theresa', 'Austin', '2014-07-01'),
(112, 'Medium', 'life without parole', NULL, 'Ken', 'Cobb', '2014-07-01'),
(113, 'High', 'Death', '2014-07-30', 'Mohamed', 'Mursi', '2014-05-01');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cell`
--
ALTER TABLE `cell`
  ADD CONSTRAINT `cell_ibfk_1` FOREIGN KEY (`Cell_Number`) REFERENCES `prisoner` (`Prisoner_ID`) ON DELETE CASCADE;

--
-- Constraints for table `e_information`
--
ALTER TABLE `e_information`
  ADD CONSTRAINT `e_information_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`);

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `hospital_ibfk_1` FOREIGN KEY (`Prisoner_ID`) REFERENCES `prisoner` (`Prisoner_ID`) ON DELETE CASCADE;

--
-- Constraints for table `labour`
--
ALTER TABLE `labour`
  ADD CONSTRAINT `labour_ibfk_1` FOREIGN KEY (`Prisoner_ID`) REFERENCES `prisoner` (`Prisoner_ID`) ON DELETE CASCADE;

--
-- Constraints for table `profits`
--
ALTER TABLE `profits`
  ADD CONSTRAINT `profits_ibfk_1` FOREIGN KEY (`Prisoner_ID`) REFERENCES `prisoner` (`Prisoner_ID`) ON DELETE CASCADE;

--
-- Constraints for table `p_information`
--
ALTER TABLE `p_information`
  ADD CONSTRAINT `p_information_ibfk_1` FOREIGN KEY (`Prisoner_ID`) REFERENCES `prisoner` (`Prisoner_ID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
