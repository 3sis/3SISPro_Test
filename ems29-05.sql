-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 29, 2023 at 09:22 AM
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
-- Table structure for table `t92`
--

CREATE TABLE `t92` (
  `id` int(11) NOT NULL,
  `MNCompId` varchar(5) NOT NULL,
  `MNSystemId` int(11) NOT NULL,
  `MNRootCode` int(11) NOT NULL,
  `MNParentCode` decimal(10,2) NOT NULL,
  `MNChildCode` decimal(10,2) NOT NULL,
  `MNMenuTitle` varchar(100) NOT NULL,
  `MNFastPath` varchar(100) NOT NULL,
  `MNRoute` varchar(100) NOT NULL,
  `MNFormHeadeding` varchar(100) NOT NULL,
  `MNDesc1` varchar(100) NOT NULL,
  `MNDesc2` varchar(100) NOT NULL,
  `MNDesc3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t92`
--

INSERT INTO `t92` (`id`, `MNCompId`, `MNSystemId`, `MNRootCode`, `MNParentCode`, `MNChildCode`, `MNMenuTitle`, `MNFastPath`, `MNRoute`, `MNFormHeadeding`, `MNDesc1`, `MNDesc2`, `MNDesc3`) VALUES
(1, '', 11, 0, '0.00', '89.00', 'Application', '', '', 'Application', '', '', ''),
(2, '', 11, 0, '0.00', '91.00', 'Configuration', '', '', 'Configuration', '', '', ''),
(8, '', 11, 0, '89.00', '8000.00', 'Employee Master', '', '', 'Employee Master', '', '', ''),
(8, '', 11, 0, '91.00', '9300.00', 'General Master', '', '', 'Common', '', '', ''),
(8, '', 11, 0, '91.00', '9400.00', 'Banking Master', '', '', 'Banking Master', '', '', ''),
(8, '', 11, 0, '91.00', '9500.00', 'Geographic', '', '', 'Geographic', '', '', ''),
(8, '', 11, 0, '91.00', '9600.00', 'Fiscal Year', '', '', 'Fiscal Year', '', '', ''),
(8, '', 11, 0, '91.00', '9700.00', 'Income Deduction Type', '', '', 'Income Deduction Type', '', '', ''),
(6, '', 11, 0, '8000.00', '8000.05', 'General Info', 'GI', 'generalInfo', 'General Info', '', '', ''),
(15, '', 11, 0, '9300.00', '9300.05', 'Company Master', 'CSM', 'company', 'GeneralMaster/Company Master', '', '', ''),
(16, '', 11, 0, '9300.00', '9300.10', 'Currency Master', 'CUM', 'currency', 'General Master/Currency Master', '', '', ''),
(6, '', 11, 0, '9400.00', '9400.05', 'Account Type', 'AT', 'acctType', 'Account Type', '', '', ''),
(6, '', 11, 0, '9400.00', '9400.10', 'Bank Name', 'BN', 'bankName', 'Bank Name', '', '', ''),
(6, '', 11, 0, '9400.00', '9400.15', 'Branch Name', 'BAN', 'branchName', 'Branch Name', '', '', ''),
(6, '', 11, 0, '9400.00', '9400.20', 'Payment Mode', 'PM', 'paymentMode', 'Payment Mode', '', '', ''),
(7, '', 11, 0, '9500.00', '9500.05', 'City Master', 'CT', 'city', 'city', '', '', ''),
(5, '', 11, 0, '9500.00', '9500.10', 'State Master', 'ST', 'state', 'State', '', '', ''),
(5, '', 11, 0, '9500.00', '9500.15', 'Country Master', 'CT', 'country', 'Country', '', '', ''),
(6, '', 11, 0, '9500.00', '9500.20', 'Location Master', 'LM', 'location', 'location', '', '', ''),
(7, '', 11, 0, '9600.00', '9600.05', 'Period Master', 'period', 'period', 'Period Master', '', '', ''),
(7, '', 11, 0, '9600.00', '9600.10', 'Fiscal Year', 'FY', 'fiscalYear', 'Fiscal Year', '', '', ''),
(7, '', 11, 0, '9600.00', '9600.15', 'Period Change', 'APC', 'periodChange', 'Active Period Change', '', '', ''),
(20, '', 11, 0, '9600.00', '9600.20', 'Public Holiday', 'PHD', 'publicHoliday', 'public Holiday', '', '', ''),
(17, '', 11, 0, '9700.00', '9700.05', 'Income Type', 'INC', 'incomeType', 'Inc.Dad. Type/Income Type', '', '', ''),
(18, '', 11, 0, '9700.00', '9700.10', 'Deduction Type', 'DED', 'deductionType', 'Inc.Dad. Type/DeductionType', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t92`
--
ALTER TABLE `t92`
  ADD UNIQUE KEY `MNCompId` (`MNCompId`,`MNSystemId`,`MNRootCode`,`MNParentCode`,`MNChildCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
