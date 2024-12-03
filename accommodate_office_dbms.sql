-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 03:23 PM
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
-- Database: `accommodate_office_dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisors`
--

CREATE TABLE `advisors` (
  `AdvisorID` char(8) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `position` varchar(20) NOT NULL,
  `dept_name` varchar(25) NOT NULL,
  `int_phone` varchar(20) NOT NULL,
  `room_num` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advisors`
--

INSERT INTO `advisors` (`AdvisorID`, `fname`, `lname`, `position`, `dept_name`, `int_phone`, `room_num`) VALUES
('A0000001', 'Sheryl', 'Enriquez', 'Professor', 'Engineering', '09981234567', 'ENG101'),
('A0000002', 'Josefina', 'Pangan', 'Lecturer', 'Business', '09178887654', 'BUS202'),
('A0000003', 'Jhon Lyod', 'Catalan', 'Senior Lecturer', 'Mathematics', '09229876543', 'MATH303'),
('A0000004', 'Angela Cecilia', 'Lenteria', 'Professor', 'Physics', '09331234512', 'PHYS404'),
('A0000005', 'Ian', 'Claros', 'Assistant Professor', 'Chemistry', '09453456789', 'CHEM505'),
('A0000006', 'Ricardo', 'Rosco', 'Lecturer', 'Biology', '09154567890', 'BIO606'),
('A0000007', 'Christine May', 'Jabal', 'Professor', 'Computer Science', '09253456780', 'CS707'),
('A0000008', 'Cesar', 'Mascariñas', 'Lecturer', 'Economics', '09224567123', 'ECO808'),
('A0000009', 'Amorlee', 'Lenteria', 'Lecturer', 'Psychology', '09198765432', 'PSY909'),
('A0000010', 'Benjie', 'Lenteria', 'Professor', 'Philosophy', '09234567890', 'PHIL010');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` char(8) NOT NULL,
  `course_num` varchar(20) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `course_leader` varchar(100) NOT NULL,
  `int_phone` varchar(20) NOT NULL,
  `room_num` varchar(20) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `course_num`, `course_title`, `course_leader`, `int_phone`, `room_num`, `dept_name`) VALUES
('C0000001', 'ENG101', 'Introduction to Engineering', 'Dennis Walton Balbero', '09981234567', 'ENG101', 'Engineering'),
('C0000002', 'BUS102', 'Principles of Marketing', 'Gladys Marie Gambe', '09178887654', 'BUS202', 'Business'),
('C0000003', 'MATH103', 'Algebra and Trigonometry', 'Herminigildo Vistal', '09229876543', 'MATH303', 'Mathematics'),
('C0000004', 'PHYS104', 'Physics 1', 'Sheryl Enriquez', '09331234512', 'PHYS404', 'Physics'),
('C0000005', 'CHEM105', 'General Chemistry', 'Sheryl Enriquez', '09453456789', 'CHEM505', 'Chemistry'),
('C0000006', 'BIO106', 'Biology 101', '	Josefina J. Pangan', '09154567890', 'BIO606', 'Biology'),
('C0000007', 'CS107', 'Introduction to Programming', 'Ricardo Rosco Jr', '09253456780', 'CS707', 'Computer Science'),
('C0000008', 'ECO108', 'Macroeconomics', 'Christine May Jabal', '09224567123', 'ECO808', 'Economics'),
('C0000009', 'PSY109', 'Psychology 101', 'Sheryl Enriquez', '09198765432', 'PSY909', 'Psychology'),
('C0000010', 'PHIL110', 'Introduction to Philosophy', 'Vanessa Bacolot', '09234567890', 'PHIL010', 'Philosophy');

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `HallID` char(8) NOT NULL,
  `name` varchar(25) NOT NULL,
  `address` varchar(75) NOT NULL,
  `tel_num` varchar(20) NOT NULL,
  `StaffID` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`HallID`, `name`, `address`, `tel_num`, `StaffID`) VALUES
('H0000001', 'Bahay Kubo', 'Lungsod ng Quezon', '09181234567', 'S0000001'),
('H0000002', 'Dapitan Hall', 'Manila', '09191234568', 'S0000002'),
('H0000003', 'Lazaro Hall', 'Cebu City', '09201234569', 'S0000003'),
('H0000004', 'Aguinaldo Hall', 'Davao City', '09211234570', 'S0000004'),
('H0000005', 'Bonifacio Hall', 'Makati', '09221234571', 'S0000005'),
('H0000006', 'Rizal Hall', 'Pasig', '09231234572', 'S0000006'),
('H0000007', 'Magsaysay Hall', 'Cavite', '09241234573', 'S0000007'),
('H0000008', 'Laguna Hall', 'Laguna', '09251234574', 'S0000008'),
('H0000009', 'Quezon Hall', 'Batangas', '09261234575', 'S0000009'),
('H0000010', 'Samar Hall', 'Bohol', '09271234576', 'S0000010');

-- --------------------------------------------------------

--
-- Table structure for table `inspections`
--

CREATE TABLE `inspections` (
  `InspectionID` char(8) NOT NULL,
  `StaffID` char(8) NOT NULL,
  `date_of_inspection` date NOT NULL,
  `satisfactory` char(1) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inspections`
--

INSERT INTO `inspections` (`InspectionID`, `StaffID`, `date_of_inspection`, `satisfactory`, `comments`) VALUES
('I0000001', 'S0000001', '2024-09-01', 'Y', 'Malinis at maayos.'),
('I0000002', 'S0000002', '2024-09-02', 'N', 'Kailangan ng ayos.'),
('I0000003', 'S0000003', '2024-09-03', 'Y', 'Walang problema.'),
('I0000004', 'S0000004', '2024-09-04', 'Y', 'Mabilis ang proseso.'),
('I0000005', 'S0000005', '2024-09-05', 'N', 'May mga isyu sa kuryente.'),
('I0000006', 'S0000006', '2024-09-06', 'Y', 'Laging inaalagaan.'),
('I0000007', 'S0000007', '2024-09-07', 'Y', 'Maayos ang lahat.'),
('I0000008', 'S0000008', '2024-09-08', 'N', 'Dapat ayusin ang banyo.'),
('I0000009', 'S0000009', '2024-09-09', 'Y', 'Walang sira.'),
('I0000010', 'S0000010', '2024-09-10', 'Y', 'Maganda ang kondisyon.');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `InvoiceID` char(8) NOT NULL,
  `LeaseID` char(8) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `payment_due` date NOT NULL,
  `matriculation_num` char(8) NOT NULL,
  `place_num` int(11) NOT NULL,
  `room_num` varchar(15) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`InvoiceID`, `LeaseID`, `semester`, `payment_due`, `matriculation_num`, `place_num`, `room_num`, `payment_date`, `payment_method`) VALUES
('INV00001', 'L0000001', '1st Semester 2024', '2024-06-10', 'M0000001', 1, 'ENG101', '2024-06-01', 'Cash'),
('INV00002', 'L0000002', '1st Semester 2024', '2024-06-10', 'M0000002', 2, 'BUS202', '2024-06-02', 'Bank Transfer'),
('INV00003', 'L0000003', '1st Semester 2024', '2024-06-10', 'M0000003', 3, 'MATH303', '2024-06-03', 'Cash'),
('INV00004', 'L0000004', '1st Semester 2024', '2024-06-10', 'M0000004', 4, 'HIST404', NULL, 'Credit Card'),
('INV00005', 'L0000005', '1st Semester 2024', '2024-06-10', 'M0000005', 5, 'LIT505', '2024-06-05', 'Cash'),
('INV00006', 'L0000006', '1st Semester 2024', '2024-06-10', 'M0000006', 6, 'BIO606', NULL, 'Bank Transfer'),
('INV00007', 'L0000007', '1st Semester 2024', '2024-06-10', 'M0000007', 7, 'PS101', '2024-06-04', 'Cash'),
('INV00008', 'L0000008', '1st Semester 2024', '2024-06-10', 'M0000008', 8, 'ECO808', NULL, 'Credit Card'),
('INV00009', 'L0000009', '1st Semester 2024', '2024-06-10', 'M0000009', 9, 'PSY909', '2024-06-10', 'Cash'),
('INV00010', 'L0000010', '1st Semester 2024', '2024-06-10', 'M0000010', 10, 'PHIL010', '2024-06-03', 'Bank Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `leases`
--

CREATE TABLE `leases` (
  `LeaseID` char(8) NOT NULL,
  `matriculation_num` char(8) NOT NULL,
  `place_num` int(11) NOT NULL,
  `room_num` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `duration_of_lease` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leases`
--

INSERT INTO `leases` (`LeaseID`, `matriculation_num`, `place_num`, `room_num`, `address`, `duration_of_lease`, `startDate`, `endDate`) VALUES
('L0000001', 'M0000001', 1, 'ENG101', 'Quezon City', 12, '2024-01-01', '2025-01-01'),
('L0000002', 'M0000002', 2, 'BUS202', 'Manila', 12, '2024-01-01', '2025-01-01'),
('L0000003', 'M0000003', 3, 'MATH30', 'Cebu City', 12, '2024-01-01', '2025-01-01'),
('L0000004', 'M0000004', 4, 'HIST40', 'Davao City', 12, '2024-01-01', '2025-01-01'),
('L0000005', 'M0000005', 5, 'LIT505', 'Makati', 12, '2024-01-01', '2025-01-01'),
('L0000006', 'M0000006', 6, 'BIO606', 'Pasig', 12, '2024-01-01', '2025-01-01'),
('L0000007', 'M0000007', 7, 'PS101', 'Cavite', 12, '2024-01-01', '2025-01-01'),
('L0000008', 'M0000008', 8, 'ECO808', 'Laguna', 12, '2024-01-01', '2025-01-01'),
('L0000009', 'M0000009', 9, 'PSY909', 'Batangas', 12, '2024-01-01', '2025-01-01'),
('L0000010', 'M0000010', 10, 'PHIL01', 'Bohol', 12, '2024-01-01', '2025-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `nextofkin`
--

CREATE TABLE `nextofkin` (
  `KinID` char(8) NOT NULL,
  `matriculation_num` char(8) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `relationship` varchar(30) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `postcode` varchar(6) DEFAULT NULL,
  `contact_num` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nextofkin`
--

INSERT INTO `nextofkin` (`KinID`, `matriculation_num`, `name`, `relationship`, `street`, `city`, `postcode`, `contact_num`) VALUES
('K0000001', 'M0000001', 'Maria Dela Cruz', 'Inahan', 'P. Santos St.', 'Quezon City', '1100', '09181234567'),
('K0000002', 'M0000002', 'Jose Santos', 'Ama', 'R. Reyes St.', 'Manila', '1000', '09281234568'),
('K0000003', 'M0000003', 'Ana Bonifacio', 'Kapatid', 'B. Aquino St.', 'Cebu City', '6000', '09381234569'),
('K0000004', 'M0000004', 'Liza Aguinaldo', 'Asawa', 'M. Roxas St.', 'Davao City', '8000', '09481234570'),
('K0000005', 'M0000005', 'Carlos Rizal', 'Kapatid', 'R. J. C. St.', 'Makati', '1200', '09581234571'),
('K0000006', 'M0000006', 'Tina Alonzo', 'Inahan', 'B. Magat St.', 'Pasig', '1600', '09681234572'),
('K0000007', 'M0000007', 'Rico Magsaysay', 'Ama', 'P. Burgos St.', 'Cavite', '4100', '09781234573'),
('K0000008', 'M0000008', 'Nina Gomez', 'Inahan', 'D. Dela Torre St.', 'Laguna', '4000', '09881234574'),
('K0000009', 'M0000009', NULL, NULL, '', '', '', ''),
('K0000010', 'M0000010', 'Manny Zobel', 'Ama', 'L. De Guzman St.', 'Bohol', '6300', '09081234576');

-- --------------------------------------------------------

--
-- Table structure for table `roomsinflats`
--

CREATE TABLE `roomsinflats` (
  `RoomFlatID` char(8) NOT NULL,
  `FlatID` char(8) NOT NULL,
  `room_num` varchar(6) NOT NULL,
  `place_num` int(11) NOT NULL,
  `monthly_rent_rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomsinflats`
--

INSERT INTO `roomsinflats` (`RoomFlatID`, `FlatID`, `room_num`, `place_num`, `monthly_rent_rate`) VALUES
('R0000001', 'F0000001', '101', 1, 5000.00),
('R0000002', 'F0000002', '102', 2, 6000.00),
('R0000003', 'F0000003', '103', 3, 7000.00),
('R0000004', 'F0000004', '104', 4, 5500.00),
('R0000005', 'F0000005', '105', 5, 6500.00),
('R0000006', 'F0000006', '106', 6, 7200.00),
('R0000007', 'F0000007', '107', 7, 8000.00),
('R0000008', 'F0000008', '108', 8, 7800.00),
('R0000009', 'F0000009', '109', 9, 6200.00),
('R0000010', 'F0000010', '110', 10, 9000.00);

-- --------------------------------------------------------

--
-- Table structure for table `roomsinhalls`
--

CREATE TABLE `roomsinhalls` (
  `RoomID` char(8) NOT NULL,
  `matriculation_num` char(8) NOT NULL,
  `HallID` char(8) NOT NULL,
  `room_num` varchar(10) NOT NULL,
  `place_numb` int(11) NOT NULL,
  `monthly_rent_rate` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomsinhalls`
--

INSERT INTO `roomsinhalls` (`RoomID`, `matriculation_num`, `HallID`, `room_num`, `place_numb`, `monthly_rent_rate`) VALUES
('R0000001', 'M0000001', 'H0000001', 'A101', 1, 3000.00),
('R0000002', 'M0000009', 'H0000002', 'A102', 2, 3200.00),
('R0000003', 'M0000008', 'H0000003', 'A103', 3, 3500.00),
('R0000004', 'M0000007', 'H0000004', 'A104', 4, 2800.00),
('R0000005', 'M0000006', 'H0000005', 'A105', 5, 2900.00),
('R0000006', 'M0000005', 'H0000006', 'A106', 6, 3100.00),
('R0000007', 'M0000004', 'H0000007', 'A107', 7, 3300.00),
('R0000008', 'M0000003', 'H0000008', 'A108', 8, 3400.00),
('R0000009', 'M0000002', 'H0000009', 'A109', 9, 3600.00),
('R0000010', 'M0000010', 'H0000010', 'A110', 10, 3700.00);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` char(8) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `street` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `dob` date NOT NULL,
  `sex` char(1) NOT NULL,
  `position` varchar(30) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `fname`, `lname`, `street`, `city`, `postcode`, `dob`, `sex`, `position`, `location`) VALUES
('S0000001', 'Eduardo', 'Bautista', 'P. Cruz St.', 'Quezon City', '1100', '1985-04-12', 'M', 'Administrator', 'Main Office'),
('S0000002', 'Renee', 'Villanueva', 'R. Santiago St.', 'Manila', '1000', '1990-07-21', 'F', 'Secretary', 'Business Dept'),
('S0000003', 'Alvin', 'Tiongson', 'D. Osmeña St.', 'Cebu City', '6000', '1982-01-11', 'M', 'Professor', 'Engineering'),
('S0000004', 'Sofia', 'Delos Reyes', 'B. Aquino St.', 'Davao City', '8000', '1988-03-08', 'F', 'Lecturer', 'History'),
('S0000005', 'Ricardo', 'Santiago', 'M. Rizal St.', 'Makati', '1200', '1995-09-15', 'M', 'Assistant Professor', 'Literature'),
('S0000006', 'Jasmine', 'Alcantara', 'R. Ponce St.', 'Pasig', '1600', '1992-06-25', 'F', 'Lecturer', 'Biology'),
('S0000007', 'Marcelo', 'Salvador', 'L. Del Castillo St.', 'Cavite', '4100', '1980-12-05', 'M', 'Professor', 'Political Science'),
('S0000008', 'Glenda', 'Rivera', 'D. Abad Santos St.', 'Laguna', '4000', '1987-05-30', 'F', 'Administrator', 'Psychology'),
('S0000009', 'Fernando', 'Torres', 'C. A. B. St.', 'Batangas', '4200', '1978-11-19', 'M', 'Staff', 'Main Office'),
('S0000010', 'Cheryl', 'Dela Cruz', 'L. De Guzman St.', 'Bohol', '6300', '1994-02-14', 'F', 'Secretary', 'Engineering Dept');

-- --------------------------------------------------------

--
-- Table structure for table `studentflats`
--

CREATE TABLE `studentflats` (
  `FlatID` char(8) NOT NULL,
  `flat_num` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `numb_of_beds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentflats`
--

INSERT INTO `studentflats` (`FlatID`, `flat_num`, `address`, `numb_of_beds`) VALUES
('F0000001', 'Flat 1A', 'Quezon City', 2),
('F0000002', 'Flat 1B', 'Manila', 3),
('F0000003', 'Flat 1C', 'Cebu City', 4),
('F0000004', 'Flat 1D', 'Davao City', 2),
('F0000005', 'Flat 1E', 'Makati', 3),
('F0000006', 'Flat 1F', 'Pasig', 4),
('F0000007', 'Flat 1G', 'Cavite', 2),
('F0000008', 'Flat 1H', 'Laguna', 3),
('F0000009', 'Flat 1I', 'Batangas', 4),
('F0000010', 'Flat 1J', 'Bohol', 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `matriculation_num` char(8) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `street` varchar(25) NOT NULL,
  `city` varchar(20) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `dob` date NOT NULL,
  `sex` char(6) NOT NULL,
  `category` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `smoker` char(1) NOT NULL,
  `special_needs` text NOT NULL,
  `comments` text NOT NULL,
  `current_stat` varchar(7) NOT NULL,
  `CourseID` char(8) NOT NULL,
  `AdvisorID` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`matriculation_num`, `fname`, `lname`, `street`, `city`, `postcode`, `dob`, `sex`, `category`, `nationality`, `smoker`, `special_needs`, `comments`, `current_stat`, `CourseID`, `AdvisorID`) VALUES
('M0000001', 'Raymart', 'Magallanes', 'P. Santos St.', 'Quezon City', '1100', '2002-02-14', 'M', 'Undergraduate', 'Filipino', 'N', 'None', 'N/A', 'Placed', 'C0000001', 'A0000001'),
('M0000002', 'Mark Angelo', 'Sab', 'R. Reyes St.', 'Manila', '1000', '2003-04-16', 'F', 'Undergraduate', 'Filipino', 'N', 'None', 'N/A', 'Placed', 'C0000002', 'A0000002'),
('M0000003', 'Benito', 'Maglaway', 'B. Aquino St.', 'Cebu City', '6000', '2001-05-19', 'M', 'Undergraduate', 'Filipino', 'N', 'None', 'N/A', 'Waiting', 'C0000003', 'A0000003'),
('M0000004', 'John Axcel', 'Cervantes', 'M. Roxas St.', 'Davao City', '8000', '2004-06-25', 'F', 'Undergraduate', 'Filipino', 'N', 'None', 'N/A', 'Placed', 'C0000004', 'A0000004'),
('M0000005', 'Ivan Yuichi', 'Cervantes', 'R. J. C. St.', 'Makati', '1200', '2002-09-30', 'M', 'Undergraduate', 'Filipino', 'N', 'None', 'N/A', 'Waiting', 'C0000005', 'A0000005'),
('M0000006', 'Roger Mark', 'Asombrado', 'B. Magat St.', 'Pasig', '1600', '2003-11-12', 'F', 'Undergraduate', 'Filipino', 'N', 'None', 'N/A', 'Placed', 'C0000006', 'A0000006'),
('M0000007', 'Ted', 'Lagusan', 'P. Burgos St.', 'Cavite', '4100', '2001-08-04', 'M', 'Undergraduate', 'Filipino', 'N', 'None', 'N/A', 'Placed', 'C0000007', 'A0000007'),
('M0000008', 'Jandexter', 'Cabilla', 'D. Dela Torre St.', 'Laguna', '4000', '2002-03-29', 'F', 'Undergraduate', 'Filipino', 'N', 'None', 'N/A', 'Placed', 'C0000008', 'A0000008'),
('M0000009', 'John Michael', 'Feltimos', 'A. Bonifacio St.', 'Batangas', '4200', '2003-12-15', 'F', 'Undergraduate', 'Filipino', 'N', 'None', 'N/A', 'Placed', 'C0000009', 'A0000009'),
('M0000010', 'John Jomar', 'Bacalla', 'L. De Guzman St.', 'Bohol', '6300', '2002-07-08', 'M', 'Undergraduate', 'Filipino', 'N', 'None', 'N/A', 'Placed', 'C0000010', 'A0000010');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisors`
--
ALTER TABLE `advisors`
  ADD PRIMARY KEY (`AdvisorID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`HallID`),
  ADD KEY `HallManagerID` (`StaffID`);

--
-- Indexes for table `inspections`
--
ALTER TABLE `inspections`
  ADD PRIMARY KEY (`InspectionID`),
  ADD KEY `StaffID` (`StaffID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`InvoiceID`),
  ADD UNIQUE KEY `place_num` (`place_num`),
  ADD KEY `LeaseID` (`LeaseID`),
  ADD KEY `matriculation_num` (`matriculation_num`);

--
-- Indexes for table `leases`
--
ALTER TABLE `leases`
  ADD PRIMARY KEY (`LeaseID`),
  ADD UNIQUE KEY `place_num` (`place_num`),
  ADD KEY `matriculation_num` (`matriculation_num`);

--
-- Indexes for table `nextofkin`
--
ALTER TABLE `nextofkin`
  ADD PRIMARY KEY (`KinID`),
  ADD KEY `matriculation_num` (`matriculation_num`);

--
-- Indexes for table `roomsinflats`
--
ALTER TABLE `roomsinflats`
  ADD PRIMARY KEY (`RoomFlatID`),
  ADD UNIQUE KEY `place_num` (`place_num`),
  ADD KEY `FlatID` (`FlatID`);

--
-- Indexes for table `roomsinhalls`
--
ALTER TABLE `roomsinhalls`
  ADD PRIMARY KEY (`RoomID`),
  ADD UNIQUE KEY `place_numb` (`place_numb`),
  ADD KEY `HallID` (`HallID`),
  ADD KEY `matriculation_num` (`matriculation_num`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `studentflats`
--
ALTER TABLE `studentflats`
  ADD PRIMARY KEY (`FlatID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`matriculation_num`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `AdvisorID` (`AdvisorID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `halls`
--
ALTER TABLE `halls`
  ADD CONSTRAINT `halls_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`);

--
-- Constraints for table `inspections`
--
ALTER TABLE `inspections`
  ADD CONSTRAINT `inspections_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`LeaseID`) REFERENCES `leases` (`LeaseID`),
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`matriculation_num`) REFERENCES `students` (`matriculation_num`);

--
-- Constraints for table `leases`
--
ALTER TABLE `leases`
  ADD CONSTRAINT `leases_ibfk_1` FOREIGN KEY (`matriculation_num`) REFERENCES `students` (`matriculation_num`);

--
-- Constraints for table `nextofkin`
--
ALTER TABLE `nextofkin`
  ADD CONSTRAINT `nextofkin_ibfk_1` FOREIGN KEY (`matriculation_num`) REFERENCES `students` (`matriculation_num`);

--
-- Constraints for table `roomsinflats`
--
ALTER TABLE `roomsinflats`
  ADD CONSTRAINT `roomsinflats_ibfk_1` FOREIGN KEY (`FlatID`) REFERENCES `studentflats` (`FlatID`);

--
-- Constraints for table `roomsinhalls`
--
ALTER TABLE `roomsinhalls`
  ADD CONSTRAINT `roomsinhalls_ibfk_1` FOREIGN KEY (`HallID`) REFERENCES `halls` (`HallID`),
  ADD CONSTRAINT `roomsinhalls_ibfk_2` FOREIGN KEY (`matriculation_num`) REFERENCES `students` (`matriculation_num`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`AdvisorID`) REFERENCES `advisors` (`AdvisorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
