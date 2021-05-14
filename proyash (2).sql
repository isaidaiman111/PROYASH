-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2021 at 12:09 AM
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
  `APPOINTMENT_ID` int(11) NOT NULL,
  `PRESCRIPTION` varchar(200) DEFAULT NULL,
  `TESTS_ATTACHED` varchar(150) DEFAULT NULL,
  `DOCTOR_ID` int(11) DEFAULT NULL,
  `PATIENT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `available_timings`
--

CREATE TABLE `available_timings` (
  `DOCTOR_ID` int(11) DEFAULT NULL,
  `AVAILABLE_SLOT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `ID` int(11) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `EXPERIENCE` varchar(50) DEFAULT NULL,
  `VISIT_FEES` int(11) DEFAULT NULL,
  `SPECIALIZATION` varchar(50) DEFAULT NULL,
  `CHAMBER_ADDRESS` varchar(75) DEFAULT NULL,
  `AREA_LOCATION` varchar(50) DEFAULT NULL,
  `BANK_AC` varchar(20) DEFAULT NULL,
  `BANK_BRANCH` varchar(20) DEFAULT NULL,
  `BANK_NAME` varchar(40) DEFAULT NULL,
  `BKASH` int(11) DEFAULT NULL,
  `PATIENT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`ID`, `EMAIL`, `PASSWORD`, `GENDER`, `FIRST_NAME`, `LAST_NAME`, `EXPERIENCE`, `VISIT_FEES`, `SPECIALIZATION`, `CHAMBER_ADDRESS`, `AREA_LOCATION`, `BANK_AC`, `BANK_BRANCH`, `BANK_NAME`, `BKASH`, `PATIENT_ID`) VALUES
(1, 'dr_firdaus@gmail.com', 'BiologyIsMyFavSub', 'Male', 'Firdaus', 'Rahman', 'Worked as a senior Doc at Labaid Hospital', 1000, 'Medicine', 'Mirpur 10 DG-Lab', 'Mirpur 10', '58899555555552448', 'Bashundhra', 'Standard Chattered Bank ltd', 147854412, 2),
(2, 'dr_Khalil@gmail.com', 'Pickachuuu', 'Male', 'Khalil', 'Basit', 'Practicing Medicine for past 7 years', 1500, 'Medicine', 'Evercare Hospital ltd', 'Bashundhara', '5998856652448', 'Bashundhara', 'Standard Chartered Bank ltd', 147858982, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_phone`
--

CREATE TABLE `doctor_phone` (
  `PHONE_NUMBERS` varchar(15) DEFAULT NULL,
  `DOCTOR_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `health_details`
--

CREATE TABLE `health_details` (
  `PATIENT_ID` int(11) DEFAULT NULL,
  `TESTS_DONE` varchar(100) DEFAULT NULL,
  `TEST_RESULTS` varchar(200) DEFAULT NULL,
  `HEALTH_COMPLICATIONS` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` int(11) NOT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
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
  `BKASH` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `EMAIL`, `PASSWORD`, `FIRST_NAME`, `LAST_NAME`, `NID`, `AGE`, `BLOOD_GROUP`, `GENDER`, `AREA_LOCATION`, `BANK_AC`, `BANK_BRANCH`, `BANK_NAME`, `BKASH`) VALUES
(1, 'saida.iman@northsout', '123123123', 'Saida', 'Iman', 2147483647, 21, 'B+', 'Female', 'Mirpur', '125559863', 'RKS', 'South East Bank ltd', '0188798885'),
(2, 'tanvirul.hasan@gmail', '115566', 'Tanvir', 'Hasan', 225564852, 22, 'O-', 'Male', 'Uttara', '25688874', 'Mirpur', 'Jamuna Bank', '01589788853');

-- --------------------------------------------------------

--
-- Table structure for table `patient_phone`
--

CREATE TABLE `patient_phone` (
  `PATIENT_ID` int(11) DEFAULT NULL,
  `PHONE_NUMBER` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_portal`
--

CREATE TABLE `payment_portal` (
  `PAYMENT_ID` int(11) NOT NULL,
  `BKASH_NUMBER` int(11) DEFAULT NULL,
  `BANK_ACCOUNT` varchar(20) DEFAULT NULL,
  `BANK_BRANCH` varchar(40) DEFAULT NULL,
  `BANK_NAME` varchar(100) DEFAULT NULL,
  `APPOINTMENT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `DOCTOR_ID` int(11) DEFAULT NULL,
  `TIMINGS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`APPOINTMENT_ID`),
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`);

--
-- Indexes for table `available_timings`
--
ALTER TABLE `available_timings`
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`);

--
-- Indexes for table `doctor_phone`
--
ALTER TABLE `doctor_phone`
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`);

--
-- Indexes for table `health_details`
--
ALTER TABLE `health_details`
  ADD KEY `PATIENT_ID` (`PATIENT_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patient_phone`
--
ALTER TABLE `patient_phone`
  ADD KEY `PATIENT_ID` (`PATIENT_ID`);

--
-- Indexes for table `payment_portal`
--
ALTER TABLE `payment_portal`
  ADD PRIMARY KEY (`PAYMENT_ID`),
  ADD KEY `APPOINTMENT_ID` (`APPOINTMENT_ID`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `doctor` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `available_timings`
--
ALTER TABLE `available_timings`
  ADD CONSTRAINT `available_timings_ibfk_1` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `doctor` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_phone`
--
ALTER TABLE `doctor_phone`
  ADD CONSTRAINT `doctor_phone_ibfk_1` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `doctor` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `health_details`
--
ALTER TABLE `health_details`
  ADD CONSTRAINT `health_details_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `patient_phone`
--
ALTER TABLE `patient_phone`
  ADD CONSTRAINT `patient_phone_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `payment_portal`
--
ALTER TABLE `payment_portal`
  ADD CONSTRAINT `payment_portal_ibfk_1` FOREIGN KEY (`APPOINTMENT_ID`) REFERENCES `appointment` (`APPOINTMENT_ID`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `doctor` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
