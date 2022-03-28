-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 06:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `greenhouse`
--

CREATE TABLE `greenhouse` (
  `greenhouseID` int(11) NOT NULL,
  `greenhouseName` text NOT NULL,
  `gh_create_date` date NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `greenhouse`
--

INSERT INTO `greenhouse` (`greenhouseID`, `greenhouseName`, `gh_create_date`, `status`) VALUES
(1, 'โรงเรือน 1', '2022-03-27', ''),
(2, 'โรงเรือน 2', '2022-03-27', 'ว่าง'),
(3, 'โรงเรือน 3', '2022-03-27', 'ว่าง'),
(4, 'โรงเรือน 4', '2022-03-27', 'ว่าง');

-- --------------------------------------------------------

--
-- Table structure for table `plant_period`
--

CREATE TABLE `plant_period` (
  `periodID` int(11) NOT NULL,
  `period_create_date` date NOT NULL DEFAULT current_timestamp(),
  `greenhouseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant_period`
--

INSERT INTO `plant_period` (`periodID`, `period_create_date`, `greenhouseID`) VALUES
(1, '2022-03-27', 1),
(2, '2022-03-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `watering`
--

CREATE TABLE `watering` (
  `wateringID` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp(),
  `periodID` int(11) NOT NULL,
  `greenhouseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watering`
--

INSERT INTO `watering` (`wateringID`, `date`, `time`, `periodID`, `greenhouseID`) VALUES
(31, '2022-03-27', '23:41:01', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `greenhouse`
--
ALTER TABLE `greenhouse`
  ADD PRIMARY KEY (`greenhouseID`);

--
-- Indexes for table `plant_period`
--
ALTER TABLE `plant_period`
  ADD PRIMARY KEY (`periodID`);

--
-- Indexes for table `watering`
--
ALTER TABLE `watering`
  ADD PRIMARY KEY (`wateringID`,`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `greenhouse`
--
ALTER TABLE `greenhouse`
  MODIFY `greenhouseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plant_period`
--
ALTER TABLE `plant_period`
  MODIFY `periodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `watering`
--
ALTER TABLE `watering`
  MODIFY `wateringID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
