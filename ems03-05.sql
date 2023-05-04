-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 04, 2023 at 05:54 PM
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
-- Table structure for table `t05903l03`
--

CREATE TABLE `t05903l03` (
  `id` bigint(20) NOT NULL,
  `FYWOHCalendarId` varchar(10) NOT NULL,
  `FYWOHFiscalYearId` varchar(4) NOT NULL,
  `FYWOHDesc1` varchar(100) DEFAULT NULL,
  `FYWOHDesc2` varchar(200) DEFAULT NULL,
  `FYWOHSunday` tinyint(1) NOT NULL DEFAULT 0,
  `FYWOHMonday` tinyint(1) NOT NULL DEFAULT 0,
  `FYWOHTuesday` tinyint(1) NOT NULL DEFAULT 0,
  `FYWOHWednesday` tinyint(1) NOT NULL DEFAULT 0,
  `FYWOHThursday` tinyint(1) NOT NULL DEFAULT 0,
  `FYWOHFriday` tinyint(1) NOT NULL DEFAULT 0,
  `FYWOHSaturday` tinyint(1) NOT NULL DEFAULT 0,
  `FYWOHTotalWeeklyOff` varchar(100) DEFAULT NULL,
  `FYWOHBiDesc` varchar(100) DEFAULT NULL,
  `FYWOHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `FYWOHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `FYWOHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYWOHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYWOHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t05903l03`
--

INSERT INTO `t05903l03` (`id`, `FYWOHCalendarId`, `FYWOHFiscalYearId`, `FYWOHDesc1`, `FYWOHDesc2`, `FYWOHSunday`, `FYWOHMonday`, `FYWOHTuesday`, `FYWOHWednesday`, `FYWOHThursday`, `FYWOHFriday`, `FYWOHSaturday`, `FYWOHTotalWeeklyOff`, `FYWOHBiDesc`, `FYWOHMarkForDeletion`, `FYWOHUser`, `FYWOHLastCreated`, `FYWOHLastUpdated`, `FYWOHDeletedAt`) VALUES
(1, '1000', '2022', 'Calendar For 3SIS', NULL, 1, 0, 0, 0, 0, 0, 1, '2', NULL, 0, '3SIS', '2022-03-22 10:55:05', '2022-04-11 10:26:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05903l0311`
--

CREATE TABLE `t05903l0311` (
  `id` bigint(20) NOT NULL,
  `idH` bigint(20) NOT NULL,
  `FYWODCalendarId` varchar(10) NOT NULL,
  `FYWODFiscalYearId` varchar(4) NOT NULL,
  `FYWODHolidayType` varchar(2) NOT NULL DEFAULT 'WO',
  `FYWODDayId` tinyint(1) DEFAULT 0,
  `FYWODDesc1` varchar(50) DEFAULT NULL,
  `FYWODDesc2` varchar(50) DEFAULT NULL,
  `FYWODAll` tinyint(1) DEFAULT 0,
  `FYWODFirst` tinyint(1) DEFAULT 0,
  `FYWODSecond` tinyint(1) DEFAULT 0,
  `FYWODThird` tinyint(1) DEFAULT 0,
  `FYWODFourth` tinyint(1) DEFAULT 0,
  `FYWODFifth` tinyint(1) DEFAULT 0,
  `FYWODBiDesc` varchar(100) DEFAULT NULL,
  `FYWODMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `FYWODUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `FYWODLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYWODLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYWODDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t05903l0311`
--

INSERT INTO `t05903l0311` (`id`, `idH`, `FYWODCalendarId`, `FYWODFiscalYearId`, `FYWODHolidayType`, `FYWODDayId`, `FYWODDesc1`, `FYWODDesc2`, `FYWODAll`, `FYWODFirst`, `FYWODSecond`, `FYWODThird`, `FYWODFourth`, `FYWODFifth`, `FYWODBiDesc`, `FYWODMarkForDeletion`, `FYWODUser`, `FYWODLastCreated`, `FYWODLastUpdated`, `FYWODDeletedAt`) VALUES
(1, 1, '1000', '2021', 'WO', 6, 'Weekly off on Satraday', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 0, '3SIS', '2022-04-11 10:26:02', '2022-04-11 10:26:02', NULL),
(2, 1, '1000', '2021', 'WO', 7, 'Weekly off on Sunday', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, '3SIS', '2022-04-11 10:26:09', '2022-04-11 10:26:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t05903l03`
--
ALTER TABLE `t05903l03`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FYWOHCalendarId` (`FYWOHCalendarId`,`FYWOHFiscalYearId`);

--
-- Indexes for table `t05903l0311`
--
ALTER TABLE `t05903l0311`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FYWODCalendarId` (`FYWODCalendarId`,`FYWODFiscalYearId`,`FYWODDayId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t05903l03`
--
ALTER TABLE `t05903l03`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `t05903l0311`
--
ALTER TABLE `t05903l0311`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
