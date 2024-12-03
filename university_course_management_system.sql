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
-- Database: `university_course_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `classschedules`
--

CREATE TABLE `classschedules` (
  `ScheduleID` char(8) NOT NULL,
  `CourseID` char(8) NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classschedules`
--

INSERT INTO `classschedules` (`ScheduleID`, `CourseID`, `StartTime`, `EndTime`, `Location`) VALUES
('SCHD0001', 'CRS00001', '08:00:00', '09:30:00', '304A'),
('SCHD0002', 'CRS00002', '09:30:00', '11:00:00', '304A'),
('SCHD0003', 'CRS00003', '11:00:00', '12:30:00', '304A'),
('SCHD0004', 'CRS00004', '13:00:00', '14:30:00', 'CLab 2'),
('SCHD0005', 'CRS00005', '14:30:00', '16:00:00', '304A'),
('SCHD0006', 'CRS00006', '08:00:00', '09:30:00', 'A.C.'),
('SCHD0007', 'CRS00007', '09:30:00', '11:00:00', 'Senior Highschool Bldg. 412A '),
('SCHD0008', 'CRS00008', '11:00:00', '12:30:00', 'CLab 2'),
('SCHD0009', 'CRS00009', '13:00:00', '14:30:00', 'CLab 2'),
('SCHD0010', 'CRS00010', '14:30:00', '16:00:00', 'CLab 1');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` char(8) NOT NULL,
  `CourseTitle` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL,
  `CreditHours` char(3) NOT NULL,
  `DepartmentID` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `CourseTitle`, `Description`, `CreditHours`, `DepartmentID`) VALUES
('CRS00001', 'Filipino 101', 'Introduction to Filipino Language', '2', 'DEP00001'),
('CRS00002', 'History 101', 'Philippine History', '2', 'DEP00002'),
('CRS00003', 'Math 101', 'Basic Algebra', '3', 'DEP00003'),
('CRS00004', 'Domain Course 101', 'Introduction to Domain Course', '3', 'DEP00004'),
('CRS00005', 'Art Appreciation 101', 'Philippine Art History', '2', 'DEP00005'),
('CRS00006', 'PE 101', 'Physical Education', '2', 'DEP00006'),
('CRS00007', 'Networking 1', 'Computer Networking', '3', 'DEP00007'),
('CRS00008', 'Web Systems & Technologies', 'Introduction Web Systems Programming', '3', 'DEP00008'),
('CRS00009', 'Applications Development & Emerging Technologies', 'Introduction to Application Development & Emerging Technologies', '3', 'DEP00009'),
('CRS00010', 'Data Structures & Algorithms', 'Data Structures is about how data can be stored in different structures. Algorithms is about how to solve different problems, often by searching through and manipulating data structures.', '3', 'DEP00010');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` char(8) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `DepartmentHead` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `DepartmentHead`) VALUES
('DEP00001', 'CAST', 'Josefina J. Pangan'),
('DEP00002', 'CAST', 'Josefina J. Pangan'),
('DEP00003', 'CAST', 'Josefina J. Pangant'),
('DEP00004', 'CAST', 'Josefina J. Pangan'),
('DEP00005', 'CAST', 'Josefina J. Pangan'),
('DEP00006', 'CAST', 'Josefina J. Pangan'),
('DEP00007', 'CAST', 'Josefina J. Pangan'),
('DEP00008', 'CAST', 'Josefina J. Pangan'),
('DEP00009', 'CAST', 'Josefina J. Pangan'),
('DEP00010', 'CAST', 'Josefina J. Pangan');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `EnrollmentID` char(8) NOT NULL,
  `StudentID` char(10) NOT NULL,
  `CourseID` char(8) NOT NULL,
  `Grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`EnrollmentID`, `StudentID`, `CourseID`, `Grade`) VALUES
('ENR00001', 'STU001-024', 'CRS00001', 'A'),
('ENR00002', 'STU002-024', 'CRS00002', 'B+'),
('ENR00003', 'STU003-024', 'CRS00003', 'B'),
('ENR00004', 'STU004-024', 'CRS00004', 'A-'),
('ENR00005', 'STU005-024', 'CRS00005', 'C+'),
('ENR00006', 'STU006-024', 'CRS00006', 'B-'),
('ENR00007', 'STU007-024', 'CRS00007', 'A'),
('ENR00008', 'STU008-024', 'CRS00008', 'C'),
('ENR00009', 'STU009-024', 'CRS00009', 'B+'),
('ENR00010', 'STU010-024', 'CRS00010', 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `InstructorID` char(8) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `DepartmentID` char(8) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`InstructorID`, `FirstName`, `LastName`, `DepartmentID`, `Email`, `PhoneNumber`) VALUES
('INSTR001', 'Sheryl', 'Enriquez', 'DEP00001', 'sheryl.enriquez@mdc.edu.ph', '09171234567'),
('INSTR002', 'Ricardo', 'Rosco', 'DEP00002', 'ricx.rosco@mdc.edu.ph', '09181234567'),
('INSTR003', 'Jhon Lyod', 'Catalan', 'DEP00003', 'jhonlyod.cat@mdc.edu.ph', '09192234567'),
('INSTR004', 'Ian', 'Claros', 'DEP00004', 'ian.claros@mdc.edu.ph', '09173234567'),
('INSTR005', 'Angela Cecilia', 'Lenteria', 'DEP00005', 'angela.lenteria@mdc.edu.ph', '09184234567'),
('INSTR006', 'Ian', 'Claros', 'DEP00006', 'ian.claros@mdc.edu.ph', '09195234567'),
('INSTR007', 'Sheryl', 'Enriquez', 'DEP00007', 'sheryl.enriquez@mdc.edu.ph', '09176234567'),
('INSTR008', 'Benjie', 'Lenteria', 'DEP00008', 'benjie.lenteria@mdc.edu.ph', '09187234567'),
('INSTR009', 'Josefina', 'Pangan', 'DEP00009', 'josefina.pangan@mdc.edu.ph', '09198234567'),
('INSTR010', 'Jhon Lyod', 'Catalan', 'DEP00010', 'jhonlyod.cat@mdc.edu.ph', '09179234567');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` char(10) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `FirstName`, `LastName`, `DateOfBirth`, `Email`, `PhoneNumber`) VALUES
('STU001-024', 'Wilson', 'Alampayan', '2004-05-14', 'wilson.alampayan@mdc.edu.ph', '09171123456'),
('STU002-024', 'Jose Victor', 'Alampayan', '2003-09-23', 'jv.alampayan@mdc.edu.ph', '09181123456'),
('STU003-024', 'Roger', 'Asombrado', '2004-02-17', 'roger.asombrado@mdc.edu.ph', '09191123456'),
('STU004-024', 'Ernesto', 'Cabarubias', '2003-11-03', 'ernest.cabarubias@mdc.edu.ph', '09172123456'),
('STU005-024', 'Benito', 'Maglaway', '2004-07-29', 'benito.maglaway@mdc.edu.ph', '09182123456'),
('STU006-024', 'Raymart', 'Magallanes', '2003-12-10', 'skerm.art@mdc.edu.ph', '09192123456'),
('STU007-024', 'Mark Angelo', 'Sab', '2004-03-01', 'markangelo.sab@mdc.edu.ph', '09173123456'),
('STU008-024', 'Ted', 'Lagusan', '2004-01-15', 'ted.lagusan@mdc.edu.ph', '09184123456'),
('STU009-024', 'Mark Lester', 'Jumao-as', '2003-08-05', 'marklester.jumao-as@mdc.edu.ph', '09194123456'),
('STU010-024', 'Rassille Jhones', 'Lofranco', '2004-04-27', 'rassille.jhones@mdc.edu.ph', '09175123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classschedules`
--
ALTER TABLE `classschedules`
  ADD PRIMARY KEY (`ScheduleID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`EnrollmentID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`InstructorID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classschedules`
--
ALTER TABLE `classschedules`
  ADD CONSTRAINT `ClassSchedules_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `Courses_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`);

--
-- Constraints for table `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `Instructors_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
