-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2020 at 10:55 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `arttable`
--

CREATE TABLE `arttable` (
  `id` int(11) NOT NULL,
  `filename` varchar(500) DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `file` longblob DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `desc` varchar(10000) DEFAULT NULL,
  `tag1` varchar(500) DEFAULT NULL,
  `tag2` varchar(500) DEFAULT NULL,
  `tag3` varchar(500) DEFAULT NULL,
  `logid` int(11) DEFAULT NULL,
  `regid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_name` varchar(100) DEFAULT NULL,
  `file_type` int(11) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `download` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LOG_ID` int(11) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `UKEY` varchar(200) DEFAULT NULL,
  `ENC_PASS` varchar(200) DEFAULT NULL,
  `USRTYPE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oopsie`
--

CREATE TABLE `oopsie` (
  `name` varchar(100) DEFAULT NULL,
  `cno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oopsie`
--

INSERT INTO `oopsie` (`name`, `cno`, `email`) VALUES
('sarath', '2', 'sarathkr@yandex.com');

-- --------------------------------------------------------

--
-- Table structure for table `playground`
--

CREATE TABLE `playground` (
  `name` varchar(20) DEFAULT NULL,
  `eno` int(11) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playground`
--

INSERT INTO `playground` (`name`, `eno`, `phone_number`, `email`) VALUES
('sarath', 22, 4875985, 'sarathkr@yandex.com'),
('Quill', 34, 9404959, NULL),
('Pikachu', 44, 348489, NULL),
(NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `REG_ID` int(11) NOT NULL,
  `UNAME` varchar(20) DEFAULT NULL,
  `LOG_IDR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registeruser`
--

CREATE TABLE `registeruser` (
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registeruser`
--

INSERT INTO `registeruser` (`name`, `password`, `email`) VALUES
('ggg', 'ggg', 'ggg'),
('sar', 'eqwqeq', 'sarathkr@rafad.cok');

-- --------------------------------------------------------

--
-- Table structure for table `regusrs`
--

CREATE TABLE `regusrs` (
  `file_name` varchar(100) DEFAULT NULL,
  `uploads` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `ID` int(11) DEFAULT NULL,
  `NAME` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arttable`
--
ALTER TABLE `arttable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arttable_fk` (`logid`),
  ADD KEY `arttable_fk_1` (`regid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LOG_ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`REG_ID`),
  ADD KEY `register_fk` (`LOG_IDR`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arttable`
--
ALTER TABLE `arttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LOG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `REG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arttable`
--
ALTER TABLE `arttable`
  ADD CONSTRAINT `arttable_fk` FOREIGN KEY (`logid`) REFERENCES `login` (`LOG_ID`),
  ADD CONSTRAINT `arttable_fk_1` FOREIGN KEY (`regid`) REFERENCES `register` (`REG_ID`);

--
-- Constraints for table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_fk` FOREIGN KEY (`LOG_IDR`) REFERENCES `login` (`LOG_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
