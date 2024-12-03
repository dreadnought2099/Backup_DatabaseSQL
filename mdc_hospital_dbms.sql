-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 03:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdc_hospital_dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `Appointment_ID` varchar(8) NOT NULL,
  `Patient_ID` varchar(8) NOT NULL,
  `Doctor_ID` varchar(5) NOT NULL,
  `Appontment_Date` date NOT NULL,
  `Time` time NOT NULL,
  `Consultation_Type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`Appointment_ID`, `Patient_ID`, `Doctor_ID`, `Appontment_Date`, `Time`, `Consultation_Type`) VALUES
('A001', '001', 'D01', '2024-08-01', '09:00:00', 'Regular Checkup'),
('A002', '002', 'D02', '2024-08-02', '10:00:00', 'Consultation'),
('A003', '001', 'D03', '2024-08-03', '11:00:00', 'Skin Examination'),
('A004', '003', 'D01', '2024-08-04', '12:00:00', 'Follow-up');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `Doctor_ID` varchar(5) NOT NULL,
  `Doctor_Name` varchar(50) NOT NULL,
  `specialty` varchar(25) NOT NULL,
  `Phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`Doctor_ID`, `Doctor_Name`, `specialty`, `Phone`) VALUES
('D01', 'Dr. Adams', 'Cardiology', '555-9876'),
('D02', 'Dr. Baker', 'Neurology', '555-8765'),
('D03', 'Dr. Clark', 'Dermatology', '555-7654');

-- --------------------------------------------------------

--
-- Table structure for table `medical_records`
--

CREATE TABLE `medical_records` (
  `Record_ID` varchar(5) NOT NULL,
  `Appointment_ID` varchar(8) NOT NULL,
  `Diagnosis` varchar(25) NOT NULL,
  `Prescription` varchar(10) NOT NULL,
  `Test_Results` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_records`
--

INSERT INTO `medical_records` (`Record_ID`, `Appointment_ID`, `Diagnosis`, `Prescription`, `Test_Results`) VALUES
('R002', 'A002', 'Migraine', 'Med B', 'MRI: Normal'),
('ROO1', 'A001', 'Hypertension', 'Med A', 'Blood Pressure: 130/85');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_ID` varchar(8) NOT NULL,
  `Patient_Name` varchar(25) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Address` text NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_ID`, `Patient_Name`, `Age`, `Gender`, `Address`, `Phone`) VALUES
('001', 'Alice Brown', 29, 'Female', '123 Maple St.', '555-1234'),
('002', 'Bob Smith', 45, 'Female', '456 Oak St.', '555-5678'),
('003', 'Carol White', 34, 'Female', '789 Pine Ave.', '555-7890'),
('004', 'David Green', 52, 'Male', '101 Birch Dr.', '555-4321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`Appointment_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`Doctor_ID`);

--
-- Indexes for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD PRIMARY KEY (`Record_ID`),
  ADD KEY `Appointment_ID` (`Appointment_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`);

--
-- Constraints for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD CONSTRAINT `medical_records_ibfk_1` FOREIGN KEY (`Appointment_ID`) REFERENCES `appointments` (`Appointment_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
