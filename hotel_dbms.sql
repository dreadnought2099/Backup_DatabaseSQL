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
-- Database: `hotel_dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `hotelNo` int(11) NOT NULL,
  `guestNo` int(11) NOT NULL,
  `dateFrom` date NOT NULL,
  `dateTo` date NOT NULL,
  `roomNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`hotelNo`, `guestNo`, `dateFrom`, `dateTo`, `roomNo`) VALUES
(1, 1, '2023-09-01', '2023-09-05', 101),
(1, 2, '2023-09-10', '2023-09-12', 102),
(2, 3, '2023-08-20', '2023-08-25', 201),
(2, 4, '2023-07-15', '2023-07-18', 202),
(3, 5, '2023-06-05', '2023-06-10', 301),
(3, 6, '2023-10-01', '2023-10-05', 302),
(4, 7, '2023-11-20', '2023-11-25', 101),
(4, 8, '2023-05-01', '2023-05-03', 102),
(5, 9, '2023-12-01', '2023-12-05', 201),
(5, 10, '2023-08-10', '2023-08-15', 202),
(6, 11, '2023-03-01', '2023-03-05', 101),
(6, 12, '2023-02-01', '2023-02-05', 102),
(7, 13, '2023-09-15', '2023-09-20', 301),
(7, 14, '2023-11-10', '2023-11-12', 302),
(8, 15, '2023-07-25', '2023-07-30', 101),
(8, 16, '2023-06-10', '2023-06-15', 102),
(9, 17, '2023-05-20', '2023-05-25', 201),
(9, 18, '2023-10-30', '2023-11-05', 202),
(10, 19, '2023-04-05', '2023-04-10', 101),
(10, 20, '2023-08-05', '2023-08-10', 102);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guestNo` int(11) NOT NULL,
  `guestName` varchar(20) NOT NULL,
  `guestAddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guestNo`, `guestName`, `guestAddress`) VALUES
(1, 'John Doe', '123 Elm St, New York, NY'),
(2, 'Jane Smith', '456 Maple St, Miami, FL'),
(3, 'Michael Brown', '789 Pine St, Denver, CO'),
(4, 'Emily Johnson', '321 Oak St, Chicago, IL'),
(5, 'David Wilson', '654 Cedar St, Austin, TX'),
(6, 'Laura Davis', '987 Birch St, Los Angeles, CA'),
(7, 'Chris Taylor', '123 Palm St, Seattle, WA'),
(8, 'Anna Clark', '456 Pineapple St, Orlando, FL'),
(9, 'Matthew Martinez', '789 Redwood St, San Francisco, CA'),
(10, 'Sophia Anderson', '321 Sequoia St, San Diego, CA'),
(11, 'James Thompson', '654 Spruce St, Dallas, TX'),
(12, 'Olivia Lee', '987 Fir St, Nashville, TN'),
(13, 'Daniel White', '123 Cedar St, Las Vegas, NV'),
(14, 'Mia Harris', '456 Aspen St, Houston, TX'),
(15, 'Joshua Moore', '789 Pine St, Portland, OR'),
(16, 'Grace Lewis', '321 Oak St, Honolulu, HI'),
(17, 'Benjamin Hall', '654 Cedar St, Phoenix, AZ'),
(18, 'Victoria King', '987 Maple St, San Francisco, CA'),
(19, 'Ethan Green', '123 Birch St, Boston, MA'),
(20, 'Chloe Young', '456 Pine St, Minneapolis, MN');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotelNo` int(11) NOT NULL,
  `hotelName` varchar(25) NOT NULL,
  `city` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotelNo`, `hotelName`, `city`) VALUES
(1, 'Sunrise Inn', 'New York'),
(2, 'Ocean Breeze Hotel', 'Miami'),
(3, 'Mountain Lodge', 'Denver'),
(4, 'Cityscape Suites', 'Chicago'),
(5, 'Riverfront Hotel', 'Austin'),
(6, 'Seaside Resort', 'Los Angeles'),
(7, 'The Urban Stay', 'Seattle'),
(8, 'Lakeside Inn', 'Orlando'),
(9, 'Downtown Hotel', 'San Francisco'),
(10, 'Palm Tree Hotel', 'San Diego'),
(11, 'Skyline Tower', 'Dallas'),
(12, 'Hilltop Retreat', 'Nashville'),
(13, 'Grand Plaza', 'Las Vegas'),
(14, 'Royal Garden Hotel', 'Houston'),
(15, 'Maplewood Lodge', 'Portland'),
(16, 'Silver Sands Resort', 'Honolulu'),
(17, 'Sunset Villas', 'Phoenix'),
(18, 'Golden Gate Inn', 'San Francisco'),
(19, 'Harbor View Hotel', 'Boston'),
(20, 'Cedar Grove Inn', 'Minneapolis');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomNo` int(11) NOT NULL,
  `hotelNo` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `hotelNo`, `type`, `price`) VALUES
(101, 1, 'Single', 120),
(101, 4, 'Single', 110),
(101, 6, 'Double', 180),
(101, 8, 'Single', 100),
(101, 10, 'Single', 130),
(102, 1, 'Double', 150),
(102, 4, 'Double', 160),
(102, 6, 'Single', 125),
(102, 8, 'Suite', 200),
(102, 10, 'Double', 160),
(201, 2, 'Suite', 200),
(201, 5, 'Suite', 220),
(201, 9, 'Double', 190),
(202, 2, 'Single', 130),
(202, 5, 'Single', 140),
(202, 9, 'Suite', 240),
(301, 3, 'Double', 170),
(301, 7, 'Suite', 230),
(302, 3, 'Suite', 250),
(302, 7, 'Double', 175);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD KEY `hotelNo` (`hotelNo`,`guestNo`,`roomNo`),
  ADD KEY `guestNo` (`guestNo`),
  ADD KEY `roomNo` (`roomNo`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guestNo`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotelNo`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomNo`,`hotelNo`),
  ADD KEY `hotelNo` (`hotelNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`hotelNo`) REFERENCES `hotel` (`hotelNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`guestNo`) REFERENCES `guest` (`guestNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`roomNo`) REFERENCES `room` (`roomNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`hotelNo`) REFERENCES `hotel` (`hotelNo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
