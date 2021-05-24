-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 12:55 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyash`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `ID` int(11) NOT NULL,
  `PRESCRIPTION` varchar(500) DEFAULT NULL,
  `TESTS` varchar(100) DEFAULT NULL,
  `DOC_ID` int(11) DEFAULT NULL,
  `PATIENT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`ID`, `PRESCRIPTION`, `TESTS`, `DOC_ID`, `PATIENT_ID`) VALUES
(1, 'Napa Tablet 1-0-1 for 2 weeks', 'None', 37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `EMAIL` varchar(30) DEFAULT NULL,
  `password` varchar(42) DEFAULT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `NID` int(11) DEFAULT NULL,
  `SPECIALISATION` varchar(20) DEFAULT NULL,
  `CHAMBER_ADDRESS` varchar(50) DEFAULT NULL,
  `VISITING_FEE` int(11) DEFAULT NULL,
  `AREA_LOCATION` varchar(20) DEFAULT NULL,
  `BANK_AC` varchar(20) DEFAULT NULL,
  `BANK_BRANCH` varchar(20) DEFAULT NULL,
  `BANK_NAME` varchar(20) DEFAULT NULL,
  `BKASH` varchar(20) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `Phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`EMAIL`, `password`, `FIRST_NAME`, `LAST_NAME`, `NID`, `SPECIALISATION`, `CHAMBER_ADDRESS`, `VISITING_FEE`, `AREA_LOCATION`, `BANK_AC`, `BANK_BRANCH`, `BANK_NAME`, `BKASH`, `ID`, `Phone`) VALUES
('akibulhasan10@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Tanvi', 'Iman', 123456, 'Therapist', '123, Dhaka', 500, 'Mirpur', '123456', 'Mirpur', 'Dutch Bank', '0187339378', 37, 1914942574);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_book`
--

CREATE TABLE `doctor_book` (
  `DOC_ID` int(11) NOT NULL,
  `Day` varchar(5) DEFAULT NULL,
  `Hour` varchar(12) DEFAULT NULL,
  `PATIENT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_book`
--

INSERT INTO `doctor_book` (`DOC_ID`, `Day`, `Hour`, `PATIENT_ID`) VALUES
(37, 'Sun', '7:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_time`
--

CREATE TABLE `doctor_time` (
  `DOC_ID` int(11) NOT NULL,
  `Day` varchar(5) DEFAULT NULL,
  `Hour` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `EMAIL` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(42) DEFAULT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `NID` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BLOOD_GROUP` varchar(10) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `AREA_LOCATION` varchar(20) DEFAULT NULL,
  `BANK_AC` varchar(20) DEFAULT NULL,
  `BANK_BRANCH` varchar(20) DEFAULT NULL,
  `BANK_NAME` varchar(20) DEFAULT NULL,
  `BKASH` varchar(20) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`EMAIL`, `PASSWORD`, `FIRST_NAME`, `LAST_NAME`, `NID`, `AGE`, `BLOOD_GROUP`, `GENDER`, `AREA_LOCATION`, `BANK_AC`, `BANK_BRANCH`, `BANK_NAME`, `BKASH`, `ID`) VALUES
('hasan@mohammad.edu', 'e10adc3949ba59abbe56e057f20f883e', 'Hasan', 'Mohammad', 123456789, 21, 'O+', 'Male', 'Dhanmondi', '123478', 'Dhanmondi', 'AB Bank', '019877768', 1),
('sais@gmail.edu', 'e10adc3949ba59abbe56e057f20f883e', 'Sais', 'Islam', 123456, 21, 'O+', 'Male', 'Dhanmondi', '123478', 'Dhanmondi', 'AB Bank', '019877768', 2),
('abcd@gmail', 'e10adc3949ba59abbe56e057f20f883e', 'Abdul', 'Rahman', 123456, 23, 'B+', 'Male', 'Uttara', '123456', 'Uttara', 'Southeast Bank', '123456789', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DOC_ID` (`DOC_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `doctor_book`
--
ALTER TABLE `doctor_book`
  ADD PRIMARY KEY (`DOC_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`);

--
-- Indexes for table `doctor_time`
--
ALTER TABLE `doctor_time`
  ADD PRIMARY KEY (`DOC_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`DOC_ID`) REFERENCES `doctor` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_book`
--
ALTER TABLE `doctor_book`
  ADD CONSTRAINT `doctor_book_ibfk_1` FOREIGN KEY (`DOC_ID`) REFERENCES `doctor` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_book_ibfk_2` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`);

--
-- Constraints for table `doctor_time`
--
ALTER TABLE `doctor_time`
  ADD CONSTRAINT `doctor_time_ibfk_1` FOREIGN KEY (`DOC_ID`) REFERENCES `doctor` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
