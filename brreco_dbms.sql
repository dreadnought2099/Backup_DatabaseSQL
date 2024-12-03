-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 03:24 PM
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
-- Database: `brreco_dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillId` char(7) NOT NULL,
  `CustId` char(7) NOT NULL,
  `ConsumeId` char(7) NOT NULL,
  `BillDate` date NOT NULL,
  `DueDate` date NOT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `PayStatus` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillId`, `CustId`, `ConsumeId`, `BillDate`, `DueDate`, `TotalAmount`, `PayStatus`) VALUES
('BILL001', 'CUST001', 'CON001', '2024-01-31', '2024-02-15', 750.00, 'Paid'),
('BILL002', 'CUST002', 'CON002', '2024-01-31', '2024-02-15', 900.00, 'Pending'),
('BILL003', 'CUST003', 'CON003', '2024-01-31', '2024-02-15', 810.00, 'Unpaid'),
('BILL004', 'CUST004', 'CON004', '2024-01-31', '2024-02-15', 880.00, 'Paid'),
('BILL005', 'CUST005', 'CON005', '2024-01-31', '2024-02-15', 780.00, 'Paid'),
('BILL006', 'CUST006', 'CON006', '2024-01-31', '2024-02-15', 850.00, 'Unpaid'),
('BILL007', 'CUST007', 'CON007', '2024-01-31', '2024-02-15', 950.00, 'Paid'),
('BILL008', 'CUST008', 'CON008', '2024-01-31', '2024-02-15', 1050.00, 'Pending'),
('BILL009', 'CUST009', 'CON009', '2024-01-31', '2024-02-15', 900.00, 'Unpaid'),
('BILL010', 'CUST010', 'CON010', '2024-01-31', '2024-02-15', 810.00, 'Unpaid'),
('BILL011', 'CUST011', 'CON011', '2024-01-31', '2024-02-15', 1200.00, 'Unpaid'),
('BILL012', 'CUST012', 'CON012', '2024-01-31', '2024-02-15', 1250.00, 'Paid'),
('BILL013', 'CUST013', 'CON013', '2024-01-31', '2024-02-15', 1150.00, 'Unpaid'),
('BILL014', 'CUST014', 'CON014', '2024-01-31', '2024-02-15', 880.00, 'Unpaid'),
('BILL015', 'CUST015', 'CON015', '2024-01-31', '2024-02-15', 1050.00, 'Paid'),
('BILL016', 'CUST016', 'CON016', '2024-01-31', '2024-02-15', 950.00, 'Unpaid'),
('BILL017', 'CUST017', 'CON017', '2024-01-31', '2024-02-15', 900.00, 'Paid'),
('BILL018', 'CUST018', 'CON018', '2024-01-31', '2024-02-15', 880.00, 'Paid'),
('BILL019', 'CUST019', 'CON019', '2024-01-31', '2024-02-15', 1250.00, 'Unpaid'),
('BILL020', 'CUST020', 'CON020', '2024-01-31', '2024-02-15', 1150.00, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `consumption`
--

CREATE TABLE `consumption` (
  `ConsumeId` char(7) NOT NULL,
  `MeterId` char(7) NOT NULL,
  `ReadDate` date NOT NULL,
  `PrevReadDate` date NOT NULL,
  `CurrReadDate` date NOT NULL,
  `UnitsConsumed` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consumption`
--

INSERT INTO `consumption` (`ConsumeId`, `MeterId`, `ReadDate`, `PrevReadDate`, `CurrReadDate`, `UnitsConsumed`) VALUES
('CON001', 'MTR001', '2024-01-31', '2024-01-01', '2024-01-31', 150.00),
('CON002', 'MTR002', '2024-01-31', '2024-01-02', '2024-01-31', 200.00),
('CON003', 'MTR003', '2024-01-31', '2024-01-03', '2024-01-31', 180.00),
('CON004', 'MTR004', '2024-01-31', '2024-01-04', '2024-01-31', 220.00),
('CON005', 'MTR005', '2024-01-31', '2024-01-05', '2024-01-31', 160.00),
('CON006', 'MTR006', '2024-01-31', '2024-01-06', '2024-01-31', 170.00),
('CON007', 'MTR007', '2024-01-31', '2024-01-07', '2024-01-31', 190.00),
('CON008', 'MTR008', '2024-01-31', '2024-01-08', '2024-01-31', 210.00),
('CON009', 'MTR009', '2024-01-31', '2024-01-09', '2024-01-31', 200.00),
('CON010', 'MTR010', '2024-01-31', '2024-01-10', '2024-01-31', 180.00),
('CON011', 'MTR011', '2024-01-31', '2024-01-11', '2024-01-31', 240.00),
('CON012', 'MTR012', '2024-01-31', '2024-01-12', '2024-01-31', 250.00),
('CON013', 'MTR013', '2024-01-31', '2024-01-13', '2024-01-31', 230.00),
('CON014', 'MTR014', '2024-01-31', '2024-01-14', '2024-01-31', 220.00),
('CON015', 'MTR015', '2024-01-31', '2024-01-15', '2024-01-31', 210.00),
('CON016', 'MTR016', '2024-01-31', '2024-01-16', '2024-01-31', 190.00),
('CON017', 'MTR017', '2024-01-31', '2024-01-17', '2024-01-31', 200.00),
('CON018', 'MTR018', '2024-01-31', '2024-01-18', '2024-01-31', 220.00),
('CON019', 'MTR019', '2024-01-31', '2024-01-19', '2024-01-31', 250.00),
('CON020', 'MTR020', '2024-01-31', '2024-01-20', '2024-01-31', 240.00);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustId` char(7) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `PhoneNo` char(11) NOT NULL,
  `Municipality` varchar(20) NOT NULL,
  `AcctCreateDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustId`, `FirstName`, `LastName`, `PhoneNo`, `Municipality`, `AcctCreateDate`) VALUES
('CUST001', 'Jose', 'Rizal', '09123456789', 'Manila', '2024-01-01'),
('CUST002', 'Maria', 'Clara', '09123456788', 'Quezon City', '2024-01-02'),
('CUST003', 'Andres', 'Bonifacio', '09123456787', 'Makati', '2024-01-03'),
('CUST004', 'Apolinario', 'Mabini', '09123456786', 'Pasig', '2024-01-04'),
('CUST005', 'Emilio', 'Aguinaldo', '09123456785', 'Taguig', '2024-01-05'),
('CUST006', 'Lapu-Lapu', 'Lapu-Lapu', '09123456784', 'Cebu City', '2024-01-06'),
('CUST007', 'Sergio', 'Osmena', '09123456783', 'Davao', '2024-01-07'),
('CUST008', 'Benigno', 'Aquino', '09123456782', 'Baguio', '2024-01-08'),
('CUST009', 'Corazon', 'Aquino', '09123456781', 'Iloilo', '2024-01-09'),
('CUST010', 'Manuel', 'Quezon', '09123456780', 'Cavite', '2024-01-10'),
('CUST011', 'Antonio', 'Luna', '09123456779', 'Batangas', '2024-01-11'),
('CUST012', 'Carlos', 'P Garcia', '09123456778', 'Laguna', '2024-01-12'),
('CUST013', 'Josefa', 'Lakandula', '09123456777', 'Pampanga', '2024-01-13'),
('CUST014', 'Juan', 'Dela Cruz', '09123456776', 'Tarlac', '2024-01-14'),
('CUST015', 'Sonia', 'Santos', '09123456775', 'Quezon', '2024-01-15'),
('CUST016', 'Rizalina', 'Pangilinan', '09123456774', 'Marikina', '2024-01-16'),
('CUST017', 'Ricardo', 'Hizon', '09123456773', 'Rizal', '2024-01-17'),
('CUST018', 'Angelina', 'Chavez', '09123456772', 'Mandaluyong', '2024-01-18'),
('CUST019', 'Aida', 'Valdez', '09123456771', 'Muntinlupa', '2024-01-19'),
('CUST020', 'Eduardo', 'Dizon', '09123456770', 'Antipolo', '2024-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `meter`
--

CREATE TABLE `meter` (
  `MeterId` char(7) NOT NULL,
  `MeterNo` varchar(10) NOT NULL,
  `InstallDate` date NOT NULL,
  `CustId` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meter`
--

INSERT INTO `meter` (`MeterId`, `MeterNo`, `InstallDate`, `CustId`) VALUES
('MTR001', 'MTR1234567', '2024-01-01', 'CUST001'),
('MTR002', 'MTR1234568', '2024-01-02', 'CUST002'),
('MTR003', 'MTR1234569', '2024-01-03', 'CUST003'),
('MTR004', 'MTR1234570', '2024-01-04', 'CUST004'),
('MTR005', 'MTR1234571', '2024-01-05', 'CUST005'),
('MTR006', 'MTR1234572', '2024-01-06', 'CUST006'),
('MTR007', 'MTR1234573', '2024-01-07', 'CUST007'),
('MTR008', 'MTR1234574', '2024-01-08', 'CUST008'),
('MTR009', 'MTR1234575', '2024-01-09', 'CUST009'),
('MTR010', 'MTR1234576', '2024-01-10', 'CUST010'),
('MTR011', 'MTR1234577', '2024-01-11', 'CUST011'),
('MTR012', 'MTR1234578', '2024-01-12', 'CUST012'),
('MTR013', 'MTR1234579', '2024-01-13', 'CUST013'),
('MTR014', 'MTR1234580', '2024-01-14', 'CUST014'),
('MTR015', 'MTR1234581', '2024-01-15', 'CUST015'),
('MTR016', 'MTR1234582', '2024-01-16', 'CUST016'),
('MTR017', 'MTR1234583', '2024-01-17', 'CUST017'),
('MTR018', 'MTR1234584', '2024-01-18', 'CUST018'),
('MTR019', 'MTR1234585', '2024-01-19', 'CUST019'),
('MTR020', 'MTR1234586', '2024-01-20', 'CUST020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillId`),
  ADD KEY `CustId` (`CustId`),
  ADD KEY `ConsumeId` (`ConsumeId`);

--
-- Indexes for table `consumption`
--
ALTER TABLE `consumption`
  ADD PRIMARY KEY (`ConsumeId`),
  ADD KEY `MeterId` (`MeterId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustId`);

--
-- Indexes for table `meter`
--
ALTER TABLE `meter`
  ADD PRIMARY KEY (`MeterId`),
  ADD KEY `CustId` (`CustId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `Bill_ibfk_1` FOREIGN KEY (`CustId`) REFERENCES `customer` (`CustId`),
  ADD CONSTRAINT `Bill_ibfk_2` FOREIGN KEY (`ConsumeId`) REFERENCES `consumption` (`ConsumeId`);

--
-- Constraints for table `consumption`
--
ALTER TABLE `consumption`
  ADD CONSTRAINT `Consumption_ibfk_1` FOREIGN KEY (`MeterId`) REFERENCES `meter` (`MeterId`);

--
-- Constraints for table `meter`
--
ALTER TABLE `meter`
  ADD CONSTRAINT `Meter_ibfk_1` FOREIGN KEY (`CustId`) REFERENCES `customer` (`CustId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
