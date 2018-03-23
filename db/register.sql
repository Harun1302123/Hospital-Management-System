-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2018 at 07:17 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment_id` int(5) NOT NULL AUTO_INCREMENT,
  `appointment_doctor` int(30) NOT NULL,
  `appointment_patient` int(30) NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_available` varchar(3) NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_doctor`, `appointment_patient`, `appointment_time`, `appointment_date`, `appointment_available`) VALUES
(12, 1, 1, '02:34:00', '2017-04-24', 'YES'),
(17, 1, 1, '00:49:00', '2017-04-11', 'YES'),
(19, 5, 8, '01:05:00', '2017-05-10', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `delete_appointment`
--

CREATE TABLE IF NOT EXISTS `delete_appointment` (
  `appointment_id` int(5) NOT NULL,
  `appointment_doctor` int(30) NOT NULL,
  `appointment_patient` int(30) NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_available` varchar(3) NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delete_appointment`
--

INSERT INTO `delete_appointment` (`appointment_id`, `appointment_doctor`, `appointment_patient`, `appointment_time`, `appointment_date`, `appointment_available`) VALUES
(16, 2, 3, '16:45:00', '2017-04-26', 'YES'),
(18, 5, 7, '10:10:00', '2017-04-19', 'YES'),
(20, 6, 3, '13:06:00', '2018-06-01', 'YES'),
(21, 1, 1, '05:02:00', '2018-03-01', 'YES'),
(22, 5, 2, '11:58:00', '2017-12-11', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doctor_id` int(5) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(30) NOT NULL,
  `doctor_spec` varchar(30) NOT NULL,
  `doctor_available` varchar(3) NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `doctor_spec`, `doctor_available`) VALUES
(1, 'abhay', 'heart', 'NOT'),
(2, 'aman', 'eye', 'YES'),
(3, 'raju', 'heart', 'NOT'),
(4, 'anup', 'eye', 'NOT'),
(5, 'abdul', 'nurology', 'NOT'),
(6, 'wazeb', 'mbbs', 'NOT'),
(7, 'fhghfg', 'fghfgh', 'NOT'),
(8, 'hgh', 'nhv', 'NOT'),
(9, 'dfg', 'dfdfg', 'NOT'),
(10, 'zahib', 'ear', 'NOT'),
(11, 'v', 'vara', 'NOT'),
(12, 'ss', 'ss', 'NOT');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(5) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(30) NOT NULL,
  `patient_address` varchar(30) NOT NULL,
  `patient_gender` varchar(6) NOT NULL,
  `patient_available` varchar(3) NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `patient_address`, `patient_gender`, `patient_available`) VALUES
(1, 'anup', 'delhi', 'male', 'YES'),
(2, 'anils', 'mumbai', 'male', 'YES'),
(3, 'sonu', 'agra', 'male', 'YES'),
(4, 'langa', 'noida', 'male', 'NOT'),
(6, 'gggg', 'ggggggg', 'ggggg', 'NOT'),
(7, 'manish', 'bombay', 'male', 'NOT'),
(8, 'sourav', 'bbbb', 'male', 'NOT'),
(9, 'suman', 's', 's', 'NOT'),
(10, 'a', 'a', 'a', 'YES'),
(11, 'c', 'c', 'css', 'YES'),
(12, 'z', 'z', 'zz', 'NOT');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('A', 'M', 'a', 'a@gmail.com', 11111111, '594f803b380a41396ed63dca39503542'),
('Admin', 'M', 'lict', 'admin@gmail.com', 1776967480, '21232f297a57a5a743894a0e4a801fc3'),
('Anamika', 'F', 'hstu', 'anamika@gmail.com', 1888844444444, '012424224c77e9b1d29b271aa4611a45'),
('B', 'M', 'b', 'b@gmail.com', 1777777777777777777, 'a21075a36eeddd084e17611a238c7101'),
('Harun', 'M', 'lict', 'harun@gmail.com', 1776967480, '6a144723835bf8d2ca3241a6535d3cff'),
('Jinna', 'F', 'hstu', 'jinna@gmail.com', 177777777777, '0735f5a36551aabdacc40895e16c81d3'),
('Suman', 'M', 'lict', 'suman@gmail.com', 167733333333, '1533c67e5e70ae7439a9aa993d6a3393'),
('Raihan', 'M', 'hstu', 'td@gmail.com', 1112333343, 'f53ab64206765285ce0903626b024ecb');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(1, 'tanmay', 'td@gmail.com', 'f53ab64206765285ce0903626b024ecb', '2018-03-06 16:07:39');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
