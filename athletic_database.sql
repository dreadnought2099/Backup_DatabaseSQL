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
-- Database: `athletic_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custno` char(4) NOT NULL,
  `custname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `internal` char(1) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `phone` char(7) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custno`, `custname`, `address`, `internal`, `contact`, `phone`, `city`, `state`, `zip`) VALUES
('C100', 'Football', 'Box352200', 'Y', 'Mary Manager', '6857100', 'Boulder', 'CO', '80309'),
('C101', 'Men\'s Basketball', 'Box 352400', 'Y', 'Sally', '5321700', 'Boulder', 'CO', '80309'),
('C103', 'Baseball', 'Box 352020', 'Y', 'Bill Baseball', '5321234', 'Boulder', 'CO', '80309'),
('C104', 'Women\'s Softball', 'Box 351200', 'Y', 'Sue Softball', '5434321', 'Boulder', 'CO', '80309'),
('C106', 'High School', '123 AnyStreet', 'N', 'Coach Bob', '4441234', 'Louiseville', 'CO', '80027');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empno` char(4) NOT NULL,
  `empname` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empno`, `empname`, `department`, `email`, `phone`) VALUES
('E100', 'Chuck Coordinator', 'Administrator', 'chuck@colorado.edu', '3-1111'),
('E101', 'Mary Manager', 'Football', 'mary@colorado.edu', '5-1111'),
('E102', 'Sally Supervisor', 'Planning', 'sally@colorado.edu', '3-2222'),
('E103', 'Alan Administrator', 'Administration', 'alan@colorado.edu', '3-3333');

-- --------------------------------------------------------

--
-- Table structure for table `eventplan`
--

CREATE TABLE `eventplan` (
  `planno` char(4) NOT NULL,
  `eventno` char(4) NOT NULL,
  `workdate` date NOT NULL,
  `notes` varchar(30) NOT NULL,
  `activity` varchar(20) NOT NULL,
  `empno` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventplan`
--

INSERT INTO `eventplan` (`planno`, `eventno`, `workdate`, `notes`, `activity`, `empno`) VALUES
('349', 'E106', '2013-12-12', ' ', 'Cleanup', 'E101'),
('P100', 'E100', '2013-10-25', 'Standard operation', 'Operation', 'E102'),
('P101', 'E104', '2013-12-03', 'Watch for gate crashers', 'Operation', 'E100'),
('P102', 'E105', '2013-12-05', 'Standard Operation', 'Operation', 'E102'),
('P103', 'E106', '2013-12-12', 'Watch for seat switching', 'Operation', 'E100'),
('P104', 'E101', '2013-10-26', 'Standard cleanup', 'Cleanup', 'E101'),
('P105', 'E100', '2013-10-25', 'Light cleanup', 'Cleanup', 'E101'),
('P199', 'B102', '2013-12-10', 'Standard operation', 'Operation', 'E101'),
('P299', 'E101', '2013-10-26', ' ', 'Operation', 'E101'),
('P85', 'E100', '2013-10-25', 'Standard Operation', 'Setup', 'E102'),
('P95', 'E101', '2013-10-26', 'Extra security', 'Setup', 'E102');

-- --------------------------------------------------------

--
-- Table structure for table `eventplanline`
--

CREATE TABLE `eventplanline` (
  `PlanNo` char(4) NOT NULL,
  `LineNo` char(1) NOT NULL,
  `TimeStart` varchar(20) NOT NULL,
  `TimeEnd` varchar(20) NOT NULL,
  `NumberFId` char(2) NOT NULL,
  `Locno` char(4) NOT NULL,
  `ResNo` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventplanline`
--

INSERT INTO `eventplanline` (`PlanNo`, `LineNo`, `TimeStart`, `TimeEnd`, `NumberFId`, `Locno`, `ResNo`) VALUES
('P100', '1', '25-Oct-2013 8:00', '25-Oct-2013 17:00', '2', 'L100', 'R100'),
('P100', '2', '25-Oct-2013 12:00', '25-Oct-2013 17:00', '2', 'L101', 'R101'),
('P100', '3', '25-Oct-2013 7:00', '25-Oct-2013 16:30', '1', 'L102', 'R102'),
('P100', '4', '25-Oct-2013 18:00', '12-Dec-2013 22:00', '2', 'L100', 'R102'),
('P101', '1', '3-Dec-2013 18:00', '3-Dec-2013 20:00', '2', 'L103', 'R100'),
('P101', '2', '3-Dec-2013 18:00', '3-Dec-2013 19:00', '4', 'L105', 'R100'),
('P101', '3', '3-Dec-2013 19:00', '3-Dec-2013 20:00', '2', 'L103', 'R103'),
('P102', '1', '5-Dec-2013 18:00', '5-Dec-2013 19:00', '2', 'L103', 'R100'),
('P102', '2', '5-Dec-2013 18:00', '5-Dec-2013 21:00', '4', 'L105', 'R100'),
('P102', '3', '5-Dec-2013 19:00', '5-Dec-2013 22:00', '2', 'L103', 'R103'),
('P103', '1', '12-Dec-2013 18:00', '12-Dec-2013 21:00', '2', 'L103', 'R100'),
('P103', '2', '12-Dec-2013 18:00', '12-Dec-2013 22:00', '4', 'L105', 'R100'),
('P103', '3', '12-Dec-2013 19:00', '12-Dec-2013 22:00', '2', 'L103', 'R103'),
('P104', '1', '26-Oct-2013 18:00', '26-Oct-2013 22:00', '4', 'L101', 'R104'),
('P104', '2', '26-Oct-2013 18:00', '26-Oct-2013 22:00', '4', 'L100', 'R104'),
('P105', '1', '25-Oct-2013 18:00', '25-Oct-2013 22:00', '4', 'L101', 'R104'),
('P105', '2', '25-Oct-2013 18:00', '25-Oct-2013 22:00', '4', 'L100', 'R104'),
('P199', '1', '10-Dec-2013 8:00', '10-Dec-2013 12:00', '1', 'L100', 'R100'),
('P349', '1', '12-Dec-2013 12:00', '12-Dec-2013 15:00', '1', 'L103', 'R100'),
('P85', '1', '25-Oct-2013 9:00', '25-Oct-2013 17:00', '5', 'L100', 'R100'),
('P85', '2', '25-Oct-2013 8:00', '25-Oct-2013 17:00', '2', 'L102', 'R101'),
('P85', '3', '25-Oct-2013 10:00', '25-Oct-2013 15:00', '3', 'L104', 'R100'),
('P95', '1', '26-Oct-2013 8:00', '25-Oct-2013 17:00', '4', 'L100', 'R100'),
('P95', '2', '26-Oct-2013 9:00', '26-Oct-2013 17:00', '4', 'L102', 'R101'),
('P95', '3', '26-Oct-2013 10:00', '26-Oct-2013 15:00', '4', 'L106', 'R100'),
('P95', '4', '26-Oct-2013 13:00', '26-Oct-2013 17:00', '2', 'L100', 'R103'),
('P95', '5', '26-Oct-2013 13:00', '26-Oct-2013 17:00', '2', 'L101', 'R104');

-- --------------------------------------------------------

--
-- Table structure for table `eventrequest`
--

CREATE TABLE `eventrequest` (
  `eventno` char(4) NOT NULL,
  `dateheld` date NOT NULL,
  `datereq` date NOT NULL,
  `facno` char(4) NOT NULL,
  `custno` char(4) NOT NULL,
  `dateauth` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `estcost` varchar(9) NOT NULL,
  `estaudience` varchar(9) NOT NULL,
  `budno` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventrequest`
--

INSERT INTO `eventrequest` (`eventno`, `dateheld`, `datereq`, `facno`, `custno`, `dateauth`, `status`, `estcost`, `estaudience`, `budno`) VALUES
('B102', '2013-10-14', '2013-07-11', 'F100', 'C101', '2013-07-11', 'Approved', '5,000.00', '80000', 'B100'),
('E100', '2013-10-25', '2013-06-11', 'F100', 'C100', '2013-08-11', 'Approved', '5,000.00', '80000', 'B1000'),
('E101', '2013-10-26', '2013-07-28', 'F100', 'C100', '2014-03-12', 'Pending', '5,000.00', '80000', 'B1000'),
('E103', '2013-09-14', '2013-08-11', 'F100', 'C100', '2013-08-01', 'Approved', '5,000.00', '80000', 'B1000'),
('E104', '2013-12-03', '2013-07-28', 'F101', 'C101', '2013-07-31', 'Approved', '2,000.00', '12000', 'B1000'),
('E105', '2013-12-05', '2013-07-28', 'F101', 'C101', '2013-08-01', 'Approved', '2,000.00', '10000', 'B1000'),
('E106', '2013-12-12', '2013-07-28', 'F101', 'C101', '2013-07-31', 'Approved', '2,000.00', '80000', 'B1000'),
('E107', '2013-11-23', '2013-07-28', 'F100', 'C106', '2013-07-31', 'Denied', '10,000.00', '5000', 'B1000');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `facno` char(4) NOT NULL,
  `facname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`facno`, `facname`) VALUES
('F100', 'Football stadium'),
('F101', 'Basketball arena'),
('F102', 'Baseball field'),
('F103', 'Recreation room');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `locno` char(4) NOT NULL,
  `facno` char(4) NOT NULL,
  `locname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locno`, `facno`, `locname`) VALUES
('L100', 'F100', 'Locker room'),
('L101', 'F100', 'Plaza'),
('L102', 'F100', 'Vehicle gate'),
('L103', 'F101', 'Locker room'),
('L104', 'F100', 'Ticket Booth'),
('L105', 'F101', 'Gate'),
('L106', 'F100', 'Pedestrian gate');

-- --------------------------------------------------------

--
-- Table structure for table `resourcetbl`
--

CREATE TABLE `resourcetbl` (
  `resno` char(4) NOT NULL,
  `resname` varchar(15) NOT NULL,
  `rate` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resourcetbl`
--

INSERT INTO `resourcetbl` (`resno`, `resname`, `rate`) VALUES
('R100', 'attendant', 10.00),
('R101', 'police', 15.00),
('R102', 'usher', 10.00),
('R103', 'nurse', 20.00),
('R104', 'janitor', 15.00),
('R105', 'food service', 10.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custno`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empno`);

--
-- Indexes for table `eventplan`
--
ALTER TABLE `eventplan`
  ADD PRIMARY KEY (`planno`),
  ADD KEY `eventno` (`eventno`),
  ADD KEY `empno` (`empno`);

--
-- Indexes for table `eventplanline`
--
ALTER TABLE `eventplanline`
  ADD PRIMARY KEY (`PlanNo`,`LineNo`),
  ADD KEY `fk_EventPlanLine` (`Locno`),
  ADD KEY `EventPlanLine_fk` (`ResNo`);

--
-- Indexes for table `eventrequest`
--
ALTER TABLE `eventrequest`
  ADD PRIMARY KEY (`eventno`),
  ADD KEY `facno` (`facno`),
  ADD KEY `custno` (`custno`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`facno`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locno`),
  ADD KEY `facno` (`facno`);

--
-- Indexes for table `resourcetbl`
--
ALTER TABLE `resourcetbl`
  ADD PRIMARY KEY (`resno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `eventplan`
--
ALTER TABLE `eventplan`
  ADD CONSTRAINT `EventPlan_ibfk_1` FOREIGN KEY (`eventno`) REFERENCES `eventrequest` (`eventno`),
  ADD CONSTRAINT `EventPlan_ibfk_2` FOREIGN KEY (`empno`) REFERENCES `employee` (`empno`);

--
-- Constraints for table `eventplanline`
--
ALTER TABLE `eventplanline`
  ADD CONSTRAINT `EventPlanLine_fk` FOREIGN KEY (`ResNo`) REFERENCES `resourcetbl` (`resno`),
  ADD CONSTRAINT `fk_EventPlanLine` FOREIGN KEY (`Locno`) REFERENCES `location` (`locno`);

--
-- Constraints for table `eventrequest`
--
ALTER TABLE `eventrequest`
  ADD CONSTRAINT `EventRequest_ibfk_1` FOREIGN KEY (`facno`) REFERENCES `facility` (`facno`),
  ADD CONSTRAINT `EventRequest_ibfk_2` FOREIGN KEY (`custno`) REFERENCES `customer` (`custno`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `Location_ibfk_1` FOREIGN KEY (`facno`) REFERENCES `facility` (`facno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
