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
-- Database: `student_information_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` char(8) NOT NULL,
  `course_no` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `credit_units` decimal(3,1) NOT NULL,
  `pay_units` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_no`, `description`, `credit_units`, `pay_units`) VALUES
('C0000000', 'GE ELEC 02', 'Philippine Indigenous Community', 3.0, 3.0),
('C0000001', 'WS 301', 'Web Systems & Technologies', 3.0, 3.0),
('C0000002', 'IM 301', 'Information Management 2', 3.0, 3.0),
('C0000003', 'DC 301', 'Domain Course 3', 3.0, 3.0),
('C0000004', 'IPT 301', 'Integrative Programming & Technologies 1', 3.0, 3.0),
('C0000005', 'NET 301', 'Networking 2', 3.0, 3.0),
('C0000006', 'DC 302', 'Domain Course 4', 3.0, 3.0),
('C0000007', 'CC 302', 'Applications Development & Emerging Technologies', 3.0, 3.0),
('C0000008', 'IPT 302', 'Integrative Programming & Technologies 2', 2.0, 1.0),
('C0000009', 'SIA 301', 'System Integration and Architecture 1', 2.0, 1.0),
('C0000010', 'PF 302', 'Event Driven Programming', 2.0, 1.0),
('C0000011', 'DC 303', 'Domain Course 5', 2.0, 1.0),
('C0000012', 'DC 304', 'Domain Course 6', 2.0, 1.0),
('C0000013', 'IM 302', 'Information Management 3', 2.0, 1.0),
('C0000014', 'IAS 301', 'Information Assurance and Security 1', 2.0, 1.0),
('C0000015', 'SP 401', 'Social and Professional Issues 1', 2.0, 1.0);

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `day_id` char(8) NOT NULL,
  `day` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`day_id`, `day`) VALUES
('D0000000', 'M,W,F'),
('D0000001', 'T,Th'),
('D0000002', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` varchar(8) NOT NULL,
  `room` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room`) VALUES
('R0000000', '307A'),
('R0000001', 'CLab 2'),
('R0000002', '304A'),
('R0000003', '301A'),
('R0000004', '302 A'),
('R0000005', '303 A'),
('R0000006', '306 A'),
('R0000007', '308 A'),
('R0000008', '201 A'),
('R0000009', '202 A'),
('R0000010', '203 A'),
('R0000011', '204 A'),
('R0000012', '205 A'),
('R0000013', '206 A'),
('R0000014', '207 A'),
('R0000015', '208 A');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `sched_id` char(8) NOT NULL,
  `time_id` char(8) NOT NULL,
  `day_id` char(8) NOT NULL,
  `room_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`sched_id`, `time_id`, `day_id`, `room_id`) VALUES
('SC000000', 'T0000000', 'D0000001', 'R0000001'),
('SC000001', 'T0000001', 'D0000000', 'R0000000'),
('SC000002', 'T0000002', 'D0000001', 'R0000001'),
('SC000003', 'T0000003', 'D0000000', 'R0000000'),
('SC000004', 'T0000004', 'D0000000', 'R0000001'),
('SC000005', 'T0000005', 'D0000001', 'R0000001'),
('SC000006', 'T0000006', 'D0000002', 'R0000001');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` char(8) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(25) NOT NULL,
  `age` varchar(3) NOT NULL,
  `gender` char(1) NOT NULL,
  `address` varchar(60) NOT NULL,
  `contact_num` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `fname`, `mname`, `lname`, `age`, `gender`, `address`, `contact_num`) VALUES
('S0000000', 'Raymart', 'Enad', 'Magallanes', '20', 'M', 'Poblacion, Sagbayan, Bohol', '09123456789'),
('S0000001', 'Jeric', 'Eduardo', 'Polison', '20', 'M', 'ILijan Sur, Tubigon, Bohol', '09510776203'),
('S0000002', 'Paul Jacob', 'Manuel', 'Tocmo', '20', 'M', 'Panaytayon, Tubigon, Bohol', '09510776204'),
('S0000003', 'Jeferson', 'Miguel', 'Bayking', '20', 'M', 'Pinayagan Sur, Tubigon, Bohol', '09510776205'),
('S0000004', 'Roger Mark', 'Javier', 'Asombrado', '20', 'M', 'ILijan Norte, Tubigon, Bohol', '09510776206'),
('S0000005', 'Ivy', 'Marie', 'Quino', '19', 'F', 'Sevilla, Bohol', '09123456788'),
('S0000006', 'Alistair Jan', 'Luis', 'Loberternos', '19', 'M', 'San Isidro, Inabangga, Bohol', '09123456781'),
('S0000007', 'Ivan Yuichi', 'Carlos', 'Cervantes', '20', 'M', 'Pandan, Tubigon, Bohol', '09123456782'),
('S0000008', 'Carl Vincent', 'Antonio', 'Villamor', '20', 'M', 'Sagbayan, Bohol', '09511234567'),
('S0000009', 'Rica Mae', 'Santos', 'Gudito', '19', 'F', 'Inabanga, Bohol', '09512345679'),
('S0000010', 'Mariella Doreen', 'Carmen', 'Canete', '19', 'F', 'Carmen, Bohol', '09523456789'),
('S0000011', 'Joanna', 'Angelica', 'Astacaan', '20', 'F', 'Tubigon, Bohol', '09515678912'),
('S0000012', 'Nicedimple', 'Lucia', 'Sagarino', '20', 'F', 'Macaas, Tubigon, Bohol', '09712345678'),
('S0000013', 'John Axcel', 'Vicente', 'Cervantes', '20', 'M', 'Panaytayon, Tubigon, Bohol', '09213456789'),
('S0000014', 'Evo', 'Cruz', 'Castanares', '50', 'M', 'Matabao, Tubigon, Bohol', '09991234567'),
('S0000015', 'Harvey', 'Antonio', 'Quibol', '19', 'M', 'San Isidro, Calape, Bohol', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `subject_enrolled`
--

CREATE TABLE `subject_enrolled` (
  `subEnrolled_id` char(8) NOT NULL,
  `stud_id` char(8) NOT NULL,
  `course_id` char(8) NOT NULL,
  `sched_id` char(8) NOT NULL,
  `teach_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_enrolled`
--

INSERT INTO `subject_enrolled` (`subEnrolled_id`, `stud_id`, `course_id`, `sched_id`, `teach_id`) VALUES
('SE000000', 'S0000000', 'C0000000', 'SC000000', 'T0000000'),
('SE000001', 'S0000001', 'C0000001', 'SC000001', 'T0000001'),
('SE000002', 'S0000002', 'C0000002', 'SC000002', 'T0000002'),
('SE000003', 'S0000003', 'C0000003', 'SC000003', 'T0000003'),
('SE000004', 'S0000004', 'C0000004', 'SC000004', 'T0000004'),
('SE000005', 'S0000005', 'C0000005', 'SC000005', 'T0000005'),
('SE000006', 'S0000006', 'C0000006', 'SC000006', 'T0000006'),
('SE000007', 'S0000001', 'C0000007', 'SC000001', 'T0000007'),
('SE000008', 'S0000002', 'C0000008', 'SC000002', 'T0000001'),
('SE000009', 'S0000003', 'C0000009', 'SC000003', 'T0000002'),
('SE000010', 'S0000004', 'C0000010', 'SC000004', 'T0000003'),
('SE000011', 'S0000005', 'C0000011', 'SC000005', 'T0000004'),
('SE000012', 'S0000006', 'C0000012', 'SC000006', 'T0000005'),
('SE000013', 'S0000003', 'C0000013', 'SC000002', 'T0000006'),
('SE000014', 'S0000006', 'C0000014', 'SC000004', 'T0000007'),
('SE000015', 'S0000002', 'C0000015', 'SC000003', 'T0000002'),
('SE000016', 'S0000005', 'C0000013', 'SC000005', 'T0000005');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teach_id` char(8) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(25) NOT NULL,
  `age` varchar(3) NOT NULL,
  `gender` char(1) NOT NULL,
  `address` varchar(60) NOT NULL,
  `contact_num` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teach_id`, `fname`, `mname`, `lname`, `age`, `gender`, `address`, `contact_num`) VALUES
('T0000000', 'Sheryl', 'Marquez', 'Enriquez', '38', 'F', 'Inabangga, Bohol', '09123456781'),
('T0000001', 'Jhon Lyod', 'Badang', 'Catalan', '22', 'M', 'Tubigon, Bohol', '09123456782'),
('T0000002', 'Angela Cecilia', 'Jumaoas', 'Lenteria', '22', 'F', 'Tubigon, Bohol', '09123456784'),
('T0000003', 'Ian', 'Pangan', 'Claros', '31', 'M', 'Pinayagan Norte, Tubigon, Bohol', '09123456783'),
('T0000004', 'Ricardo', 'Rocksteady', 'Rosco', '41', 'M', 'Tubigon, Bohol', '09123456785'),
('T0000005', 'Andrew', 'Goc-ong', 'Rolona', '25', 'M', 'Tubigon, Bohol', '09223456781'),
('T0000006', 'Angel', 'Alampayan', 'Jabal', '23', 'F', 'Tubigon, Bohol', '09423456782'),
('T0000007', 'Benjie', 'Bacalla', 'Lenteria', '37', 'M', 'Tubigon, Bohol', '09623456782');

-- --------------------------------------------------------

--
-- Table structure for table `time_schedule`
--

CREATE TABLE `time_schedule` (
  `time_id` char(8) NOT NULL,
  `time_start` varchar(10) NOT NULL,
  `time_end` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_schedule`
--

INSERT INTO `time_schedule` (`time_id`, `time_start`, `time_end`) VALUES
('T0000000', '7:30am', '9:00am'),
('T0000001', '8:00am', '9:00am'),
('T0000002', '1:00pm', '2:00pm'),
('T0000003', '9:00am', '10:00am'),
('T0000004', '9:00am', '10:30am'),
('T0000005', '1:00pm', '2:30pm'),
('T0000006', '8:00am', '11:00am'),
('T0000007', '11:00am', '12:00pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`day_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`sched_id`),
  ADD KEY `time_id` (`time_id`),
  ADD KEY `day_id` (`day_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `subject_enrolled`
--
ALTER TABLE `subject_enrolled`
  ADD PRIMARY KEY (`subEnrolled_id`),
  ADD KEY `stud_id` (`stud_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `sched_id` (`sched_id`),
  ADD KEY `teach_id` (`teach_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teach_id`);

--
-- Indexes for table `time_schedule`
--
ALTER TABLE `time_schedule`
  ADD PRIMARY KEY (`time_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`time_id`) REFERENCES `time_schedule` (`time_id`),
  ADD CONSTRAINT `schedules_ibfk_2` FOREIGN KEY (`day_id`) REFERENCES `day` (`day_id`),
  ADD CONSTRAINT `schedules_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `subject_enrolled`
--
ALTER TABLE `subject_enrolled`
  ADD CONSTRAINT `subject_enrolled_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`),
  ADD CONSTRAINT `subject_enrolled_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `subject_enrolled_ibfk_3` FOREIGN KEY (`sched_id`) REFERENCES `schedules` (`sched_id`),
  ADD CONSTRAINT `subject_enrolled_ibfk_4` FOREIGN KEY (`teach_id`) REFERENCES `teachers` (`teach_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
