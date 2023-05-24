-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 24, 2023 at 05:26 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `t05903l04`
--

CREATE TABLE `t05903l04` (
  `id` bigint(20) NOT NULL,
  `FYPHHCalendarId` varchar(10) NOT NULL,
  `FYPHHFiscalYearId` varchar(4) NOT NULL,
  `FYPHHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `FYPHHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `FYPHHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPHHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPHHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t05903l04`
--

INSERT INTO `t05903l04` (`id`, `FYPHHCalendarId`, `FYPHHFiscalYearId`, `FYPHHMarkForDeletion`, `FYPHHUser`, `FYPHHLastCreated`, `FYPHHLastUpdated`, `FYPHHDeletedAt`) VALUES
(1, '1000', '2022', 0, '3SIS', '2022-03-22 10:52:38', '2022-04-11 10:31:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05903l0411`
--

CREATE TABLE `t05903l0411` (
  `id` bigint(20) NOT NULL,
  `idH` bigint(20) NOT NULL,
  `FYPHDCalendarId` varchar(10) NOT NULL,
  `FYPHDFiscalYearId` varchar(4) NOT NULL,
  `FYPHDHolidayType` varchar(2) DEFAULT 'PH',
  `FYPHDHolidayDate` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPHDDesc1` varchar(100) NOT NULL,
  `FYPHDDesc2` varchar(200) DEFAULT NULL,
  `FYPHDBiDesc` varchar(100) DEFAULT NULL,
  `FYPHDMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `FYPHDUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `FYPHDLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPHDLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPHDDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t05903l0411`
--

INSERT INTO `t05903l0411` (`id`, `idH`, `FYPHDCalendarId`, `FYPHDFiscalYearId`, `FYPHDHolidayType`, `FYPHDHolidayDate`, `FYPHDDesc1`, `FYPHDDesc2`, `FYPHDBiDesc`, `FYPHDMarkForDeletion`, `FYPHDUser`, `FYPHDLastCreated`, `FYPHDLastUpdated`, `FYPHDDeletedAt`) VALUES
(1, 1, '1000', '2021', 'PH', '2021-05-01 00:00:00', 'Labor Day', NULL, NULL, 0, '3SIS', '2022-04-11 10:31:20', '2022-04-11 10:31:20', NULL),
(2, 1, '1000', '2021', 'PH', '2021-05-16 00:00:00', 'Test', NULL, NULL, 0, '3SIS', '2022-04-11 10:30:43', '2022-04-11 10:30:43', NULL),
(3, 1, '1000', '2021', 'PH', '2022-01-26 00:00:00', 'Republic Day', NULL, NULL, 0, '3SIS', '2022-03-22 10:51:14', '2022-03-22 10:51:14', NULL),
(4, 1, '1000', '2021', 'PH', '2022-03-18 00:00:00', 'Holi', NULL, NULL, 0, '3SIS', '2022-03-22 10:51:38', '2022-03-22 10:51:38', NULL),
(5, 1, '1000', '2021', 'PH', '2022-03-21 00:00:00', 'Shiv Jayanti', NULL, NULL, 0, '3SIS', '2022-03-22 10:52:05', '2022-03-22 10:52:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t05903l04`
--
ALTER TABLE `t05903l04`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FYPHDCalendarId` (`FYPHHCalendarId`,`FYPHHFiscalYearId`);

--
-- Indexes for table `t05903l0411`
--
ALTER TABLE `t05903l0411`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FYPHDCalendarId` (`FYPHDCalendarId`,`FYPHDFiscalYearId`,`FYPHDHolidayDate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t05903l04`
--
ALTER TABLE `t05903l04`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t05903l0411`
--
ALTER TABLE `t05903l0411`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
