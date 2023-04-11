-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 08, 2023 at 05:40 AM
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
-- Database:  `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post`) VALUES
(1, 1, 'new post');

-- --------------------------------------------------------

--
-- Table structure for table `t00900l01`
--

CREATE TABLE `t00900l01` (
  `Id` bigint(20) NOT NULL,
  `AMAMHAppId` int(11) NOT NULL,
  `AMAMHDesc1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t00900l01`
--

INSERT INTO `t00900l01` (`Id`, `AMAMHAppId`, `AMAMHDesc1`) VALUES
(1, 11, 'Payroll'),
(2, 21, 'SnOP Pro\r\n'),
(3, 25, 'SFA\r\n'),
(4, 30, 'Fixed Asset\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `t00900l04`
--

CREATE TABLE `t00900l04` (
  `Id` bigint(20) NOT NULL,
  `AMACHAccessId` int(11) NOT NULL,
  `AMACHDesc1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t00900l04`
--

INSERT INTO `t00900l04` (`Id`, `AMACHAccessId`, `AMACHDesc1`) VALUES
(1, 1, 'Add Access\r\n'),
(2, 2, 'Update Access\r\n'),
(3, 3, 'Full Access\r\n'),
(4, 4, 'Display Access\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `t00900l05`
--

CREATE TABLE `t00900l05` (
  `Id` bigint(20) NOT NULL,
  `LMLAHUserId` int(11) NOT NULL,
  `LMLAHDesc1` varchar(100) NOT NULL,
  `LMLAHPassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t00900l05`
--

INSERT INTO `t00900l05` (`Id`, `LMLAHUserId`, `LMLAHDesc1`, `LMLAHPassword`) VALUES
(1, 1, 'Krishna\r\n', '12345'),
(2, 2, 'Madhav', '12345'),
(3, 3, 'Shrutav\r\n', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `t00900l06`
--

CREATE TABLE `t00900l06` (
  `Id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `AAAHHAppId` int(11) NOT NULL,
  `AAAHHDesc1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t00900l06`
--

INSERT INTO `t00900l06` (`Id`, `user_id`, `AAAHHAppId`, `AAAHHDesc1`) VALUES
(1, 1, 11, 'Payroll\r\n'),
(2, 1, 21, 'S&OP Pro\r\n'),
(3, 1, 21, 'S&OP Pro\r\n'),
(4, 2, 11, 'Payroll\r\n'),
(5, 2, 21, 'S&OP Pro\r\n'),
(6, 2, 25, 'Sales Force Automation\r\n'),
(7, 3, 11, 'Payroll\r\n'),
(8, 3, 21, 'S&OP Pro\r\n'),
(9, 3, 25, 'Sales Force Automation\r\n'),
(10, 3, 30, 'Fixed Asset\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `t00900l0611`
--

CREATE TABLE `t00900l0611` (
  `Id` bigint(20) NOT NULL,
  `AAADDUserId` int(11) NOT NULL,
  `AAADDAppId` int(11) NOT NULL,
  `AAADDDesc1` varchar(100) NOT NULL,
  `AAADDProgramId` varchar(30) NOT NULL,
  `AAADDPrgDesc1` varchar(100) NOT NULL,
  `AAADDAccessId` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t00900l0611`
--

INSERT INTO `t00900l0611` (`Id`, `AAADDUserId`, `AAADDAppId`, `AAADDDesc1`, `AAADDProgramId`, `AAADDPrgDesc1`, `AAADDAccessId`) VALUES
(1, 1, 11, 'Payroll\r\n', 'CompMast', 'Company Master\r\n', '3'),
(2, 1, 11, 'Payroll\r\n', 'GendMast', 'Gender Master\r\n', '2'),
(3, 3, 11, 'Payroll\r\n', 'CompMast', 'Company Master\r\n', '3'),
(4, 3, 11, 'Payroll\r\n', 'GendMast', 'Gender Master\r\n', '3'),
(5, 3, 11, 'Payroll\r\n', 'BldGroup', 'Blood Group\r\n', '4'),
(6, 3, 11, 'Payroll\r\n', 'CurrMast', 'Currency Master\r\n', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t00901l01`
--

CREATE TABLE `t00901l01` (
  `id` bigint(20) NOT NULL,
  `FYPMHPeriodId` tinyint(4) NOT NULL DEFAULT 12,
  `FYPMHNMonth` tinyint(4) NOT NULL DEFAULT 12,
  `FYPMHMonth` varchar(20) NOT NULL,
  `FYPMHDesc2` varchar(200) NOT NULL,
  `FYPMHNAddInt` tinyint(1) NOT NULL DEFAULT 0,
  `FYPMHBiDesc` varchar(100) NOT NULL,
  `FYPMHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `FYPMHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `FYPMHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPMHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPMHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t00901l01`
--

INSERT INTO `t00901l01` (`id`, `FYPMHPeriodId`, `FYPMHNMonth`, `FYPMHMonth`, `FYPMHDesc2`, `FYPMHNAddInt`, `FYPMHBiDesc`, `FYPMHMarkForDeletion`, `FYPMHUser`, `FYPMHLastCreated`, `FYPMHLastUpdated`, `FYPMHDeletedAt`) VALUES
(1, 12, 4, 'April', 'Period :01', 1, 'Apr', 0, '3SIS', '2021-11-02 05:37:05', '2021-11-02 05:37:05', NULL),
(2, 9, 8, 'August', 'Period :02', 0, 'May', 0, 'admin', '2023-03-22 20:36:23', '2023-03-22 20:36:23', NULL),
(3, 1, 3, 'March', 'Period :03', 1, 'Jun', 0, 'admin', '2023-03-23 08:43:57', '2023-03-25 07:45:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t00903l03`
--

CREATE TABLE `t00903l03` (
  `id` bigint(20) NOT NULL,
  `PMRDHRuleId` varchar(10) NOT NULL,
  `PMRDHIncOrDed` varchar(1) DEFAULT 'D',
  `PMRDHDesc1` varchar(100) NOT NULL,
  `PMRDHHierarchyId` varchar(10) NOT NULL,
  `PMRDHSlabDefined` tinyint(1) NOT NULL DEFAULT 0,
  `PMRDHDeductionEligibility` varchar(10) DEFAULT NULL,
  `PMRDHDeductionBasis` varchar(10) DEFAULT NULL,
  `PMRDHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `PMRDHUser` varchar(20) NOT NULL DEFAULT '3SIS',
  `PMRDHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMRDHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMRDHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t00903l03`
--

INSERT INTO `t00903l03` (`id`, `PMRDHRuleId`, `PMRDHIncOrDed`, `PMRDHDesc1`, `PMRDHHierarchyId`, `PMRDHSlabDefined`, `PMRDHDeductionEligibility`, `PMRDHDeductionBasis`, `PMRDHMarkForDeletion`, `PMRDHUser`, `PMRDHLastCreated`, `PMRDHLastUpdated`, `PMRDHDeletedAt`) VALUES
(1, 'D1000', 'D', 'PF Deduction', '1000', 1, '1000', '2000', 0, '3SIS', '2021-12-06 15:10:18', '2022-06-06 08:46:38', NULL),
(2, 'D2000', 'D', 'PT Deduction', '1100', 1, '1000', '1000', 0, '3SIS', '2021-12-06 15:12:12', '2022-06-06 09:33:44', NULL),
(3, 'D3000', 'D', 'ESIC Deduction', '1100', 1, '1000', '2000', 0, '3SIS', '2021-12-06 15:12:42', '2022-06-06 09:00:06', NULL),
(4, 'D4000', 'D', 'LWF Deduction', '1300', 0, '1000', '2000', 0, '3SIS', '2021-12-06 15:13:12', '2022-06-06 08:45:58', NULL),
(6, 'I5000', 'I', 'HRA Exemption', '1000', 0, NULL, NULL, 0, '3SIS', '2021-12-06 15:14:25', '2021-12-06 15:14:25', NULL),
(7, 'Z1000', 'Z', 'No Rule', '1000', 0, NULL, NULL, 0, '3SIS', '2021-12-06 15:14:48', '2021-12-06 15:14:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t00903l04`
--

CREATE TABLE `t00903l04` (
  `id` bigint(20) NOT NULL,
  `PMPCHCycleId` varchar(10) NOT NULL,
  `PMPCHDesc1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t00903l04`
--

INSERT INTO `t00903l04` (`id`, `PMPCHCycleId`, `PMPCHDesc1`) VALUES
(1, 'M', 'Monthly'),
(2, 'P', 'Periodic');

-- --------------------------------------------------------

--
-- Table structure for table `t00905l01`
--

CREATE TABLE `t00905l01` (
  `id` bigint(20) NOT NULL,
  `RSRSHRoundingId` varchar(10) NOT NULL,
  `RSRSHDesc1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t00905l01`
--

INSERT INTO `t00905l01` (`id`, `RSRSHRoundingId`, `RSRSHDesc1`) VALUES
(1, '1000', 'No Round'),
(2, '1100', 'Round'),
(3, '1200', 'Round Up'),
(4, '1300', 'Round Down');

-- --------------------------------------------------------

--
-- Table structure for table `t05901l01`
--

CREATE TABLE `t05901l01` (
  `id` bigint(20) NOT NULL,
  `GMCOHCompanyId` varchar(10) NOT NULL,
  `GMCOHDesc1` varchar(100) NOT NULL,
  `GMCOHDesc2` varchar(200) DEFAULT NULL,
  `GMCOHNickName` varchar(50) DEFAULT NULL,
  `GMCOHTagLine` varchar(100) DEFAULT NULL,
  `GMCOHCurrencyId` varchar(10) DEFAULT NULL,
  `GMCOHAddress1` varchar(200) DEFAULT NULL,
  `GMCOHAddress2` varchar(200) DEFAULT NULL,
  `GMCOHAddress3` varchar(200) DEFAULT NULL,
  `GMCOHCityId` varchar(10) DEFAULT NULL,
  `GMCOHStateId` varchar(10) DEFAULT NULL,
  `GMCOHCountryId` varchar(10) DEFAULT NULL,
  `GMCOHPinCode` varchar(50) DEFAULT NULL,
  `GMCOHLandLine` varchar(50) DEFAULT NULL,
  `GMCOHMobileNo` varchar(50) DEFAULT NULL,
  `GMCOHEmail` varchar(100) DEFAULT NULL,
  `GMCOHWebsite` varchar(100) DEFAULT NULL,
  `GMCOHCINNo` varchar(100) DEFAULT NULL,
  `GMCOHPANNo` varchar(100) DEFAULT NULL,
  `GMCOHGSTNo` varchar(100) DEFAULT NULL,
  `GMCOHPFNo` varchar(100) DEFAULT NULL,
  `GMCOHPTNo` varchar(100) DEFAULT NULL,
  `GMCOHLWFNo` varchar(100) DEFAULT NULL,
  `GMCOHESICNo` varchar(100) DEFAULT NULL,
  `GMCOHTANNo` varchar(100) DEFAULT NULL,
  `GMCOHVATNo` varchar(100) DEFAULT NULL,
  `GMCOHESTNo` varchar(100) DEFAULT NULL,
  `GMCOHESTDate` datetime DEFAULT current_timestamp(),
  `GMCOHBankId1` varchar(10) DEFAULT NULL,
  `GMCOHBranchId1` varchar(10) DEFAULT NULL,
  `GMCOHIFSId1` varchar(100) DEFAULT NULL,
  `GMCOHBankAccNo1` varchar(100) DEFAULT NULL,
  `GMCOHBankAcName1` varchar(100) DEFAULT NULL,
  `GMCOHBankId2` varchar(10) DEFAULT NULL,
  `GMCOHBranchId2` varchar(10) DEFAULT NULL,
  `GMCOHIFSId2` varchar(100) DEFAULT NULL,
  `GMCOHBankAccNo2` varchar(100) DEFAULT NULL,
  `GMCOHBankAcName2` varchar(100) DEFAULT NULL,
  `GMCOHField1` varchar(100) DEFAULT NULL,
  `GMCOHField2` varchar(100) DEFAULT NULL,
  `GMCOHField3` varchar(100) DEFAULT NULL,
  `GMCOHField4` varchar(100) DEFAULT NULL,
  `GMCOHField5` varchar(100) DEFAULT NULL,
  `GMCOHBiDesc` varchar(100) DEFAULT NULL,
  `GMCOHDecimalPositionQty` int(11) DEFAULT 0,
  `GMCOHDecimalPositionValue` int(11) DEFAULT 0,
  `GMCOHFolderName` varchar(200) DEFAULT 'No Folder',
  `GMCOHImageFileName` varchar(500) DEFAULT 'No Image File',
  `GMCOHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMCOHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMCOHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMCOHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMCOHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05901l01`
--

INSERT INTO `t05901l01` (`id`, `GMCOHCompanyId`, `GMCOHDesc1`, `GMCOHDesc2`, `GMCOHNickName`, `GMCOHTagLine`, `GMCOHCurrencyId`, `GMCOHAddress1`, `GMCOHAddress2`, `GMCOHAddress3`, `GMCOHCityId`, `GMCOHStateId`, `GMCOHCountryId`, `GMCOHPinCode`, `GMCOHLandLine`, `GMCOHMobileNo`, `GMCOHEmail`, `GMCOHWebsite`, `GMCOHCINNo`, `GMCOHPANNo`, `GMCOHGSTNo`, `GMCOHPFNo`, `GMCOHPTNo`, `GMCOHLWFNo`, `GMCOHESICNo`, `GMCOHTANNo`, `GMCOHVATNo`, `GMCOHESTNo`, `GMCOHESTDate`, `GMCOHBankId1`, `GMCOHBranchId1`, `GMCOHIFSId1`, `GMCOHBankAccNo1`, `GMCOHBankAcName1`, `GMCOHBankId2`, `GMCOHBranchId2`, `GMCOHIFSId2`, `GMCOHBankAccNo2`, `GMCOHBankAcName2`, `GMCOHField1`, `GMCOHField2`, `GMCOHField3`, `GMCOHField4`, `GMCOHField5`, `GMCOHBiDesc`, `GMCOHDecimalPositionQty`, `GMCOHDecimalPositionValue`, `GMCOHFolderName`, `GMCOHImageFileName`, `GMCOHMarkForDeletion`, `GMCOHUser`, `GMCOHLastCreated`, `GMCOHLastUpdated`, `GMCOHDeletedAt`) VALUES
(4, '1000', '3S Innovative Solutions Pvt. Ltd.', '3SIS', '3SIS1', 'Journey Towards Excellence', 'INR', 'cscsc', 'aasdv', 'aaa', '20', 'BR', 'USA', 'aaav', '452255.999', '952482285555', 'test@gmaiol.com', 'www.3sis.com', 'wfwf', 'wfwfw', 'fewfw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 00:00:00', '1000', '1000', '1234567890', 'wwww', 'wwww', '1000', '1000', '1234567890', 'www', 'wwww', NULL, NULL, NULL, NULL, NULL, '3SIS', 2, 1, 'wfwf', 'wfwf', 0, 'admin', '2021-12-01 09:05:11', '2023-02-13 23:14:18', NULL),
(5, '2000', 'buhu', 'ububu', 'uubub', 'buu', 'INR', 'qfqqq', 'qcascascas', 'acascas', '20', 'BR', 'USA', '794155', 'qcqcq', 'qqc', 'qqcq', 'qfqf', 'ascasc', 'acasca', 'acasca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-16 00:00:00', '1200', '1100', '98765432109876543210', 'acasc', 'acascas', '1000', '1000', '1234567890', 'acasc', 'acasc', NULL, NULL, NULL, NULL, NULL, 'cqcq', 4, 2, 'acasca', 'acasc', 0, 'admin', '2023-02-13 23:16:38', '2023-02-13 23:16:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05901l03`
--

CREATE TABLE `t05901l03` (
  `id` bigint(20) NOT NULL,
  `GMCMHCountryId` varchar(10) NOT NULL,
  `GMCMHDesc1` varchar(100) NOT NULL,
  `GMCMHDesc2` varchar(200) DEFAULT NULL,
  `GMCMHBiDesc` varchar(100) DEFAULT NULL,
  `GMCMHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMCMHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMCMHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMCMHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMCMHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05901l03`
--

INSERT INTO `t05901l03` (`id`, `GMCMHCountryId`, `GMCMHDesc1`, `GMCMHDesc2`, `GMCMHBiDesc`, `GMCMHMarkForDeletion`, `GMCMHUser`, `GMCMHLastCreated`, `GMCMHLastUpdated`, `GMCMHDeletedAt`) VALUES
(5, 'IN', 'India', 'IN', 'IN', 1, '3SIS', '2021-10-31 09:10:04', '2021-11-01 07:11:21', NULL),
(7, 'USA', 'United State of America', 'US', 'USA', 0, 'admin', '2023-03-22 00:12:37', '2023-03-22 00:12:37', NULL),
(8, 'SG', 'Singapore', 'SG', 'SG', 0, '3SIS', '2021-11-01 20:22:49', '2021-11-01 20:22:49', NULL),
(9, 'aaa', 'aaa', 'aaa', 'aaa', 0, '3SIS', '2021-11-23 06:45:30', '2021-11-23 06:45:30', '2021-11-23 06:45:38'),
(10, 'MY', 'Mala', NULL, NULL, 1, '3SIS', '2021-12-01 05:59:18', '2022-02-09 14:20:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05901l04`
--

CREATE TABLE `t05901l04` (
  `id` bigint(20) NOT NULL,
  `GMSMHStateId` varchar(10) NOT NULL,
  `GMSMHCountryId` varchar(10) NOT NULL,
  `GMSMHDesc1` varchar(100) NOT NULL,
  `GMSMHDesc2` varchar(200) DEFAULT NULL,
  `GMSMHBiDesc` varchar(100) DEFAULT NULL,
  `GMSMHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMSMHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMSMHLastCreated` datetime NOT NULL,
  `GMSMHLastUpdated` datetime NOT NULL,
  `GMSMHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05901l04`
--

INSERT INTO `t05901l04` (`id`, `GMSMHStateId`, `GMSMHCountryId`, `GMSMHDesc1`, `GMSMHDesc2`, `GMSMHBiDesc`, `GMSMHMarkForDeletion`, `GMSMHUser`, `GMSMHLastCreated`, `GMSMHLastUpdated`, `GMSMHDeletedAt`) VALUES
(1, 'MH', 'IN', 'Maharastra 1234', 'Maharastra 2', 'Maharastra', 0, 'admin', '2022-11-30 18:55:48', '2022-11-30 18:55:48', NULL),
(2, 'BR', 'USA', 'Bihar 1', 'Bihar', 'Bihar', 0, 'admin', '2022-12-15 09:27:09', '2022-12-15 09:27:09', NULL),
(5, 'AP', 'IN', 'Andhra', 'a', 'a', 0, '3SIS', '2021-11-23 05:45:58', '2021-11-23 05:45:58', NULL),
(8, 'KA', 'aaa', 'KA 11', 'KA 22', NULL, 0, 'admin', '2022-12-12 07:57:51', '2022-12-12 07:57:51', NULL),
(17, 'GJ', 'IN', 'Description 1', 'Description 222', NULL, 0, 'admin', '2022-12-15 09:32:13', '2022-12-15 09:32:13', NULL),
(23, 'GA', 'IN', 'GA 1', '34', NULL, 0, 'admin', '2022-11-26 12:16:37', '2022-11-26 12:16:37', NULL),
(26, '11', 'IN', '12', '13', NULL, 0, 'Krishna', '2022-12-07 19:21:31', '2022-12-07 19:21:31', NULL),
(27, 'asas', 'SG', 'sas', 'assa', NULL, 0, 'Krishna', '2022-12-07 19:15:24', '2022-12-07 19:15:24', NULL),
(28, 'test', 'USA', '1', '2', NULL, 1, 'admin', '2022-12-18 12:48:25', '2022-12-18 12:48:25', NULL),
(29, 'MH1', 'IN', '11111', '221111', NULL, 0, 'Krishna', '2022-12-09 18:15:11', '2022-12-09 18:15:11', NULL),
(30, 'MH2', 'USA', '1', '2', NULL, 1, 'Krishna', '2022-12-07 19:16:44', '2022-12-07 19:16:44', NULL),
(31, 'MH5', 'IN', '1', '2', NULL, 1, 'admin', '2022-12-02 04:29:18', '2022-12-02 04:29:18', NULL),
(32, 'MH50', 'IN', '1110', '22', NULL, 1, 'admin', '2022-12-17 10:30:31', '2022-12-17 10:30:31', NULL),
(33, '9999', 'USA', '100', '5000', NULL, 0, 'admin', '2022-12-02 13:04:45', '2022-12-02 13:04:45', NULL),
(34, '10000', 'USA', '2222', '33333', NULL, 0, 'admin', '2022-12-02 13:06:52', '2022-12-02 13:06:52', NULL),
(35, '909', 'IN', 'desc 1', 'desc 2', NULL, 0, 'Krishna', '2022-12-07 18:21:13', '2022-12-07 18:21:13', NULL),
(36, '112', 'SG', '22', '33', NULL, 0, 'Krishna', '2022-12-07 18:32:51', '2022-12-07 18:32:51', NULL),
(37, '12', 'aaa', '12', '12', NULL, 0, 'Krishna', '2022-12-07 18:35:23', '2022-12-07 18:35:23', NULL),
(38, '123', 'MY', '2', '3', NULL, 0, 'Krishna', '2022-12-07 19:20:37', '2022-12-07 19:20:37', NULL),
(39, '1000', 'SG', '123', '1233', NULL, 0, 'Krishna', '2022-12-09 18:32:40', '2022-12-09 18:32:40', NULL),
(40, 's01', 'SG', 'test', 'dbxdf', NULL, 0, 'admin', '2023-01-20 11:31:28', '2023-01-20 11:31:28', NULL),
(41, 's02', 'MY', 'jv', 'jtdy', NULL, 0, 'admin', '2022-12-13 09:08:29', '2022-12-13 09:08:29', NULL),
(42, 's03', 'SG', 'test123', 'ttt', NULL, 0, 'admin', '2023-01-31 22:12:14', '2023-01-31 22:12:14', NULL),
(43, '2001', 'USA', '1222', '1222', NULL, 0, 'admin', '2022-12-17 09:45:42', '2022-12-17 09:45:42', NULL),
(44, '30012', 'USA', '156', '55', NULL, 0, 'admin', '2022-12-17 09:48:08', '2022-12-17 09:48:08', NULL),
(45, 'efef', 'IN', 'efef', 'efe', NULL, 0, 'admin', '2022-12-17 10:18:15', '2022-12-17 10:18:15', NULL),
(46, 'vee', 'SG', 'ee', 'eg', NULL, 1, 'admin', '2022-12-17 10:32:15', '2022-12-17 10:32:15', NULL),
(47, 'rgeg', 'IN', 'egeg', 'ege', NULL, 1, 'admin', '2022-12-17 10:19:46', '2022-12-17 10:19:46', NULL),
(48, '5556', 'IN', 'knk', 'ink', NULL, 0, 'admin', '2022-12-17 11:31:01', '2022-12-17 11:31:01', NULL),
(49, 'wf', 'SG', 'dve', 'fevev', NULL, 1, 'admin', '2022-12-23 23:23:48', '2022-12-23 23:23:48', NULL),
(50, 'vve', 'IN', '4444', '444', NULL, 1, 'admin', '2023-02-01 08:17:33', '2023-02-01 08:17:33', NULL),
(51, 'eef', 'IN', 'wwdw', 'ww', NULL, 0, 'admin', '2022-12-23 09:38:38', '2022-12-23 09:38:38', NULL),
(52, 'ef', 'IN', 'fef', 'fe', NULL, 0, 'admin', '2022-12-23 09:42:52', '2022-12-23 09:42:52', NULL),
(53, 'dd', 'USA', 'vdvdv', 'dv', NULL, 0, 'admin', '2022-12-23 09:43:28', '2022-12-23 09:43:28', NULL),
(54, 'ee', 'SG', 'cc', 'cc', NULL, 0, 'admin', '2022-12-23 09:45:44', '2022-12-23 09:45:44', NULL),
(55, 'ddd', 'SG', 'dd', 'dd', NULL, 0, 'admin', '2022-12-23 09:46:32', '2022-12-23 09:46:32', NULL),
(56, '4e', 'USA', 'ffff', 'fff', NULL, 0, 'admin', '2022-12-23 10:08:37', '2022-12-23 10:08:37', NULL),
(57, 'www', 'SG', 'ww', 'ww', NULL, 0, 'admin', '2023-01-03 09:58:25', '2023-01-03 09:58:25', NULL),
(58, 'ed', 'USA', 'ee', 'ee', NULL, 0, 'admin', '2022-12-23 10:41:50', '2022-12-23 10:41:50', NULL),
(59, 'cc', 'SG', 'cc', 'cc', NULL, 0, 'admin', '2022-12-23 10:50:39', '2022-12-23 10:50:39', NULL),
(60, 'ccd', 'IN', 'd', 'd', NULL, 0, 'admin', '2022-12-23 10:52:04', '2022-12-23 10:52:04', NULL),
(61, 'dddd', 'SG', 'ddd', 'dd', NULL, 0, 'admin', '2022-12-23 22:42:25', '2022-12-23 22:42:25', NULL),
(62, 'com01', 'IN', 'test', 'ss', NULL, 0, 'admin', '2022-12-23 22:45:28', '2022-12-23 22:45:28', NULL),
(63, 'ddddd', 'SG', 'ddd', 'dd', NULL, 0, 'admin', '2022-12-23 23:15:15', '2022-12-23 23:15:15', NULL),
(64, 'dddq1', 'SG', 'dcdc', 'cdc', NULL, 0, 'admin', '2022-12-23 23:16:07', '2022-12-23 23:16:07', NULL),
(65, 'ggg', 'SG', 'nmm', 'jjk', NULL, 0, 'admin', '2023-01-19 09:07:43', '2023-01-19 09:07:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05901l05`
--

CREATE TABLE `t05901l05` (
  `id` bigint(20) NOT NULL,
  `GMCTHCityId` varchar(10) NOT NULL,
  `GMCTHStateId` varchar(10) DEFAULT NULL,
  `GMCTHCountryId` varchar(10) DEFAULT NULL,
  `GMCTHDesc1` varchar(100) NOT NULL,
  `GMCTHDesc2` varchar(200) DEFAULT NULL,
  `GMCTHBiDesc` varchar(100) DEFAULT NULL,
  `GMCTHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMCTHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMCTHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMCTHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMCTHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05901l05`
--

INSERT INTO `t05901l05` (`id`, `GMCTHCityId`, `GMCTHStateId`, `GMCTHCountryId`, `GMCTHDesc1`, `GMCTHDesc2`, `GMCTHBiDesc`, `GMCTHMarkForDeletion`, `GMCTHUser`, `GMCTHLastCreated`, `GMCTHLastUpdated`, `GMCTHDeletedAt`) VALUES
(1, '10', 'MH', 'IN', 'Pune', 'Pune', 'PUne', 0, '3SIS', '2022-11-02 10:37:35', '2021-11-22 06:06:59', NULL),
(2, '20', 'BR', 'USA', 'Mumbaiaaa', 'Mumbaibbb', 'MHccc', 1, '3SIS', '2021-11-22 16:55:08', '2022-06-06 08:58:42', NULL),
(3, '30', 'AP', 'SG', 'Nashik', 'Nashik1', 'Nashik2', 0, '3SIS', '2021-11-22 17:22:06', '2021-11-22 17:22:06', '2021-11-23 04:21:56'),
(4, '40', 'MH', 'IN', 'Mumbaiaaa', 'Mumbaibbb', NULL, 0, 'admin', '2023-01-18 10:24:45', '2023-01-18 10:24:45', NULL),
(7, '50', 'GA', 'IN', 'UP', 'UP123', NULL, 0, 'admin', '2023-01-18 10:26:50', '2023-01-18 10:26:50', NULL),
(8, '100', '11', 'IN', 'phk', 'kuk', NULL, 0, 'admin', '2023-02-09 20:30:35', '2023-02-09 20:30:35', NULL),
(9, 'hjhj', 'GJ', 'IN', 'ggj', 'mhh', NULL, 0, 'admin', '2023-02-09 11:03:13', '2023-02-09 11:03:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05901l06`
--

CREATE TABLE `t05901l06` (
  `id` bigint(20) NOT NULL,
  `GMLMHCompanyId` varchar(10) NOT NULL,
  `GMLMHLocationId` varchar(10) NOT NULL,
  `GMLMHCityId` varchar(10) DEFAULT NULL,
  `GMLMHStateId` varchar(10) DEFAULT NULL,
  `GMLMHCountryId` varchar(10) DEFAULT NULL,
  `GMLMHDesc1` varchar(100) NOT NULL,
  `GMLMHDesc2` varchar(200) DEFAULT NULL,
  `GMLMHBiDesc` varchar(100) DEFAULT NULL,
  `GMLMHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMLMHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMLMHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMLMHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMLMHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05901l06`
--

INSERT INTO `t05901l06` (`id`, `GMLMHCompanyId`, `GMLMHLocationId`, `GMLMHCityId`, `GMLMHStateId`, `GMLMHCountryId`, `GMLMHDesc1`, `GMLMHDesc2`, `GMLMHBiDesc`, `GMLMHMarkForDeletion`, `GMLMHUser`, `GMLMHLastCreated`, `GMLMHLastUpdated`, `GMLMHDeletedAt`) VALUES
(1, '1000', '10', '10', 'MH', 'IN', 'Hadapsar', 'Hadapsar Branch', 'Hadapsar Branch', 0, '3SIS', '2021-11-22 14:21:02', '2022-02-09 14:29:59', NULL),
(2, '1000', '20', '30', 'AP', 'SG', 'Pune Camp', 'PC', NULL, 0, 'admin', '2023-01-18 18:48:33', '2023-01-18 18:48:33', NULL),
(3, '1000', '30', '50', 'GA', 'IN', 'Patna Camp', 'Patna NaN', NULL, 0, 'admin', '2023-01-18 18:48:18', '2023-01-18 18:48:18', NULL),
(4, '1000', '40', '30', 'AP', 'SG', 'test', 'hh', NULL, 0, 'admin', '2023-02-14 19:50:22', '2023-02-14 19:50:22', NULL),
(5, '1000', '50', '50', 'GA', 'IN', 'Noida', 'Noida new', NULL, 0, 'admin', '2023-02-04 08:45:30', '2023-02-04 08:45:30', NULL),
(6, '1000', 'ytff', '40', 'MH', 'IN', 'kj1', 'hh', NULL, 1, 'admin', '2023-01-18 19:15:01', '2023-01-18 19:15:01', NULL),
(7, '1000', 'm.m.', '100', '11', 'IN', 'm.222', 'm,', NULL, 1, 'admin', '2023-02-04 08:37:39', '2023-02-04 08:37:39', NULL),
(8, '1000', ',,ff', '30', 'AP', 'SG', 'bnn', 'j,,', NULL, 1, 'admin', '2023-01-18 19:19:13', '2023-01-18 19:19:13', NULL),
(9, '1000', ',nn,mn', '40', 'MH', 'IN', 'n,,n,n', 'mm,.m', NULL, 1, 'admin', '2023-01-18 19:22:26', '2023-01-18 19:22:26', NULL),
(10, '1000', ',k//l', '20', 'BR', 'USA', 'mm.,', ';;k;/', NULL, 1, 'admin', '2023-01-18 19:22:54', '2023-01-18 19:22:54', NULL),
(11, '1000', 'd.00', '20', 'BR', 'USA', '4fewf', 'f', NULL, 1, 'admin', '2023-01-18 19:24:05', '2023-01-18 19:24:05', NULL),
(12, '1000', 'kk', '30', 'AP', 'SG', 'kk', 'kkk', NULL, 1, 'admin', '2023-02-04 08:23:27', '2023-02-04 08:23:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05901l07`
--

CREATE TABLE `t05901l07` (
  `id` bigint(20) NOT NULL,
  `GMCRHCurrencyId` varchar(10) NOT NULL,
  `GMCRHDesc1` varchar(100) NOT NULL,
  `GMCRHDesc2` varchar(200) DEFAULT NULL,
  `GMCRHBiDesc` varchar(100) DEFAULT NULL,
  `GMCRHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMCRHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMCRHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMCRHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMCRHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05901l07`
--

INSERT INTO `t05901l07` (`id`, `GMCRHCurrencyId`, `GMCRHDesc1`, `GMCRHDesc2`, `GMCRHBiDesc`, `GMCRHMarkForDeletion`, `GMCRHUser`, `GMCRHLastCreated`, `GMCRHLastUpdated`, `GMCRHDeletedAt`) VALUES
(1, 'INR', 'Indian Rupee', 'Indian Rupee', 'INR', 0, '3SIS', '2021-11-30 14:45:50', '2021-12-01 11:02:23', NULL),
(2, 'USD', 'US Dollars', 'US Dollars', 'USD', 0, '3SIS', '2021-11-30 14:45:50', '2021-11-30 14:45:50', NULL),
(3, 'SGD', 'Singapore Dollars', 'SGD', 'SGD', 0, '3SIS', '2021-12-01 11:04:02', '2021-12-01 11:04:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05902l01`
--

CREATE TABLE `t05902l01` (
  `id` bigint(20) NOT NULL,
  `BMBNHBankId` varchar(10) NOT NULL,
  `BMBNHDesc1` varchar(100) NOT NULL,
  `BMBNHDesc2` varchar(200) DEFAULT NULL,
  `BMBNHBiDesc` varchar(100) DEFAULT NULL,
  `BMBNHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `BMBNHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `BMBNHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `BMBNHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `BMBNHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05902l01`
--

INSERT INTO `t05902l01` (`id`, `BMBNHBankId`, `BMBNHDesc1`, `BMBNHDesc2`, `BMBNHBiDesc`, `BMBNHMarkForDeletion`, `BMBNHUser`, `BMBNHLastCreated`, `BMBNHLastUpdated`, `BMBNHDeletedAt`) VALUES
(1, '1000', 'BOM', 'BOM', 'BOM', 0, '3SIS', '2021-11-22 10:49:47', '2021-11-22 10:49:47', NULL),
(2, '1100', 'SBI1', 'SBI1', 'SBI1', 1, '3SIS', '2021-11-22 10:50:03', '2021-11-22 10:50:36', NULL),
(3, '1200', 'Bank of India', 'BOI0', 'BOI', 0, 'admin', '2023-02-14 08:13:25', '2023-02-14 08:13:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05902l02`
--

CREATE TABLE `t05902l02` (
  `id` bigint(20) NOT NULL,
  `BMBRHBranchId` varchar(10) NOT NULL,
  `BMBRHBankId` varchar(10) DEFAULT NULL,
  `BMBRHIFSCId` varchar(100) DEFAULT NULL,
  `BMBRHDesc1` varchar(100) NOT NULL,
  `BMBRHDesc2` varchar(200) DEFAULT NULL,
  `BMBRHBiDesc` varchar(100) DEFAULT NULL,
  `BMBRHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `BMBRHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `BMBRHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `BMBRHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `BMBRHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05902l02`
--

INSERT INTO `t05902l02` (`id`, `BMBRHBranchId`, `BMBRHBankId`, `BMBRHIFSCId`, `BMBRHDesc1`, `BMBRHDesc2`, `BMBRHBiDesc`, `BMBRHMarkForDeletion`, `BMBRHUser`, `BMBRHLastCreated`, `BMBRHLastUpdated`, `BMBRHDeletedAt`) VALUES
(1, '1000', '1000', '1234567890', 'BOM Branch', 'BOM Branch', NULL, 0, '3SIS', '2021-11-22 10:52:26', '2021-11-30 16:06:15', NULL),
(2, '1100', '1200', '98765432109876543210', 'Bank of India Branch', 'BOI Branch', 'BOI', 0, '3SIS', '2021-11-30 16:07:10', '2021-11-30 16:07:10', NULL),
(3, '101', '1200', NULL, 'test', 'test', NULL, 0, 'admin', '2023-02-15 08:31:32', '2023-02-15 08:31:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05902l03`
--

CREATE TABLE `t05902l03` (
  `id` bigint(20) NOT NULL,
  `BMATHAcctId` varchar(10) NOT NULL,
  `BMATHDesc1` varchar(100) NOT NULL,
  `BMATHDesc2` varchar(200) DEFAULT NULL,
  `BMATHBiDesc` varchar(100) DEFAULT NULL,
  `BMATHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `BMATHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `BMATHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `BMATHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `BMATHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05902l03`
--

INSERT INTO `t05902l03` (`id`, `BMATHAcctId`, `BMATHDesc1`, `BMATHDesc2`, `BMATHBiDesc`, `BMATHMarkForDeletion`, `BMATHUser`, `BMATHLastCreated`, `BMATHLastUpdated`, `BMATHDeletedAt`) VALUES
(1, '1000', 'Saving Account11', 'Sava', 'SavA', 0, 'admin', '2023-02-13 22:29:08', '2023-02-13 22:29:08', NULL),
(2, '2000', 'hycsq', 'mkkk', NULL, 1, 'admin', '2023-02-13 22:29:59', '2023-02-13 22:29:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05902l04`
--

CREATE TABLE `t05902l04` (
  `id` bigint(20) NOT NULL,
  `BMPMHPaymentModeId` varchar(10) NOT NULL,
  `BMPMHDesc1` varchar(100) NOT NULL,
  `BMPMHDesc2` varchar(200) DEFAULT NULL,
  `BMPMHBiDesc` varchar(100) DEFAULT NULL,
  `BMPMHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `BMPMHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `BMPMHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `BMPMHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `BMPMHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05902l04`
--

INSERT INTO `t05902l04` (`id`, `BMPMHPaymentModeId`, `BMPMHDesc1`, `BMPMHDesc2`, `BMPMHBiDesc`, `BMPMHMarkForDeletion`, `BMPMHUser`, `BMPMHLastCreated`, `BMPMHLastUpdated`, `BMPMHDeletedAt`) VALUES
(1, '1000', 'NEFT', 'NEFT1', NULL, 0, 'admin', '2023-02-14 08:13:54', '2023-02-14 08:13:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05903l01`
--

CREATE TABLE `t05903l01` (
  `id` bigint(20) NOT NULL,
  `FYFYHCompanyId` varchar(10) NOT NULL,
  `FYFYHFiscalYearId` varchar(4) NOT NULL,
  `FYFYHStartDate` datetime NOT NULL DEFAULT current_timestamp(),
  `FYFYHEndDate` datetime NOT NULL DEFAULT current_timestamp(),
  `FYFYHCurrentFY` tinyint(1) NOT NULL DEFAULT 0,
  `FYFYHCurrentPeriod` int(11) NOT NULL DEFAULT 12,
  `FYFYHPeriodStartDate` datetime NOT NULL DEFAULT current_timestamp(),
  `FYFYHPeriodEndDate` datetime NOT NULL DEFAULT current_timestamp(),
  `FYFYHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `FYFYHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `FYFYHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYFYHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYFYHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t05903l01`
--

INSERT INTO `t05903l01` (`id`, `FYFYHCompanyId`, `FYFYHFiscalYearId`, `FYFYHStartDate`, `FYFYHEndDate`, `FYFYHCurrentFY`, `FYFYHCurrentPeriod`, `FYFYHPeriodStartDate`, `FYFYHPeriodEndDate`, `FYFYHMarkForDeletion`, `FYFYHUser`, `FYFYHLastCreated`, `FYFYHLastUpdated`, `FYFYHDeletedAt`) VALUES
(18, '1000', '2022', '2022-04-01 00:00:00', '2023-03-31 00:00:00', 1, 1, '2022-03-01 00:00:00', '2022-03-31 00:00:00', 0, 'admin', '2021-11-13 12:49:22', '2023-03-29 07:46:22', NULL),
(21, '1000', '2023', '2023-04-01 00:00:00', '2024-03-31 00:00:00', 0, 12, '2023-04-01 00:00:00', '2023-04-30 00:00:00', 0, 'admin', '2021-11-16 06:31:57', '2023-03-31 07:47:35', NULL),
(24, '1000', '2025', '2025-03-01 00:00:00', '2026-04-30 00:00:00', 0, 1, '2025-03-01 00:00:00', '2025-03-31 00:00:00', 0, 'admin', '2023-03-27 08:41:36', '2023-03-29 07:48:11', NULL),
(26, '1000', '2024', '2024-03-01 00:00:00', '2025-04-30 00:00:00', 0, 12, '2024-04-01 00:00:00', '2024-04-30 00:00:00', 0, 'admin', '2023-03-27 08:47:14', '2023-03-29 07:48:04', NULL),
(27, '1000', '2026', '2026-03-01 00:00:00', '2027-04-30 00:00:00', 0, 1, '2026-03-01 00:00:00', '2026-03-31 00:00:00', 0, 'admin', '2023-03-27 09:07:08', '2023-04-02 23:18:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05903l0111`
--

CREATE TABLE `t05903l0111` (
  `id` bigint(20) NOT NULL,
  `FYPPDCompanyId` varchar(10) NOT NULL,
  `FYPPDFiscalYearId` varchar(4) NOT NULL,
  `FYPPDStartDate` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPPDEndDate` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPPDPeriod` int(11) NOT NULL DEFAULT 12,
  `FYPPDPeriodStartDate` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPPDPeriodEndDate` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPPDMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `FYPPDUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `FYPPDLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPPDLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYPPDDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t05903l0111`
--

INSERT INTO `t05903l0111` (`id`, `FYPPDCompanyId`, `FYPPDFiscalYearId`, `FYPPDStartDate`, `FYPPDEndDate`, `FYPPDPeriod`, `FYPPDPeriodStartDate`, `FYPPDPeriodEndDate`, `FYPPDMarkForDeletion`, `FYPPDUser`, `FYPPDLastCreated`, `FYPPDLastUpdated`, `FYPPDDeletedAt`) VALUES
(1, '1000', '2022', '2022-04-01 00:00:00', '2023-03-31 00:00:00', 1, '2022-03-01 00:00:00', '2022-03-31 00:00:00', 0, 'admin', '2023-03-29 07:46:22', '2023-03-29 07:46:22', NULL),
(2, '1000', '2023', '2023-04-01 00:00:00', '2024-03-31 00:00:00', 1, '2023-03-01 00:00:00', '2023-03-31 00:00:00', 0, 'admin', '2023-03-29 07:48:38', '2023-03-29 07:48:38', NULL),
(3, '1000', '2024', '2024-03-01 00:00:00', '2025-04-30 00:00:00', 12, '2024-04-01 00:00:00', '2024-04-30 00:00:00', 0, 'admin', '2023-03-29 07:48:04', '2023-03-29 07:48:04', NULL),
(4, '1000', '2025', '2025-03-01 00:00:00', '2026-04-30 00:00:00', 1, '2025-03-01 00:00:00', '2025-03-31 00:00:00', 0, 'admin', '2023-03-29 07:48:11', '2023-03-29 07:48:11', NULL),
(5, '1000', '2026', '2026-03-01 00:00:00', '2027-04-30 00:00:00', 6, '2026-04-01 00:00:00', '2026-04-30 00:00:00', 0, 'admin', '2023-03-29 07:54:55', '2023-03-29 07:54:55', NULL),
(6, '1000', '2026', '2026-03-01 00:00:00', '2027-04-30 00:00:00', 1, '2026-03-01 00:00:00', '2026-03-31 00:00:00', 0, 'admin', '2023-03-29 08:01:59', '2023-03-29 08:01:59', NULL),
(7, '1000', '2026', '2026-03-01 00:00:00', '2027-04-30 00:00:00', 7, '2026-10-01 00:00:00', '2026-10-31 00:00:00', 0, 'admin', '2023-03-29 08:01:59', '2023-03-29 08:01:59', NULL),
(8, '1000', '2023', '2023-04-01 00:00:00', '2024-03-31 00:00:00', 9, '2023-08-01 00:00:00', '2023-08-31 00:00:00', 0, 'admin', '2023-03-31 07:21:36', '2023-03-31 07:21:36', NULL),
(9, '1000', '2023', '2023-04-01 00:00:00', '2024-03-31 00:00:00', 12, '2023-04-01 00:00:00', '2023-04-30 00:00:00', 0, 'admin', '2023-03-31 07:47:35', '2023-03-31 07:47:35', NULL),
(10, '1000', '2026', '2026-03-01 00:00:00', '2027-04-30 00:00:00', 12, '2026-04-01 00:00:00', '2026-04-30 00:00:00', 0, 'admin', '2023-04-02 23:13:01', '2023-04-02 23:13:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t05903l02`
--

CREATE TABLE `t05903l02` (
  `FYCAHUniqueId` bigint(20) NOT NULL,
  `FYCAHCalendarId` varchar(10) NOT NULL,
  `FYCAHDesc1` varchar(100) NOT NULL,
  `FYCAHDesc2` varchar(200) DEFAULT NULL,
  `FYCAHShiftStartTime` time DEFAULT NULL,
  `FYCAHLateComingGraceTime` time DEFAULT NULL,
  `FYCAHShiftEndTime` time DEFAULT NULL,
  `FYCAHEarlyGoingGraceTime` time DEFAULT NULL,
  `FYCAHShiftBreakTime` time DEFAULT NULL,
  `FYCAHShiftWorkingTime` time DEFAULT NULL,
  `FYCAHBiDesc` varchar(100) DEFAULT NULL,
  `FYCAHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `FYCAHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `FYCAHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYCAHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `FYCAHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t05903l02`
--

INSERT INTO `t05903l02` (`FYCAHUniqueId`, `FYCAHCalendarId`, `FYCAHDesc1`, `FYCAHDesc2`, `FYCAHShiftStartTime`, `FYCAHLateComingGraceTime`, `FYCAHShiftEndTime`, `FYCAHEarlyGoingGraceTime`, `FYCAHShiftBreakTime`, `FYCAHShiftWorkingTime`, `FYCAHBiDesc`, `FYCAHMarkForDeletion`, `FYCAHUser`, `FYCAHLastCreated`, `FYCAHLastUpdated`, `FYCAHDeletedAt`) VALUES
(1, '1000', 'Calendar For 3SIS', 'Calendar For 3SIS Desc2', '09:00:00', '00:15:00', '17:30:00', '00:15:00', '00:30:00', '08:00:00', 'Calendar For 3SIS BI', 0, '3SIS', '2021-11-10 19:50:56', '2021-11-10 19:50:56', NULL),
(2, '1100', 'Calendar for MEMW', 'Calendar for MEMW', '08:00:00', '00:15:00', '17:00:00', NULL, '00:30:00', '08:00:00', 'Calendar for MEMW', 0, '3SIS', '2021-11-11 05:00:04', '2021-11-29 17:19:50', NULL),
(3, '1200', 'Calendar For BRISK', 'Calendar For BRISK Desc2', '09:00:00', '00:15:00', '17:30:00', '00:10:00', '00:30:00', '08:00:00', 'Calendar For BRISK BI', 0, '3SIS', '2021-11-11 05:25:31', '2021-11-29 14:31:01', NULL);

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
(17, '', 11, 0, '9700.00', '9700.05', 'Income Type', 'INC', 'incomeType', 'Inc.Dad. Type/Income Type', '', '', ''),
(18, '', 11, 0, '9700.00', '9700.10', 'Deduction Type', 'DED', 'deductionType', 'Inc.Dad. Type/DeductionType', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t11101l01`
--

CREATE TABLE `t11101l01` (
  `id` bigint(20) NOT NULL,
  `EMGIHCompId` varchar(10) NOT NULL,
  `EMGIHLocationId` varchar(10) DEFAULT NULL,
  `EMGIHEmployeeId` varchar(25) NOT NULL,
  `EMGIHSalutationId` varchar(10) DEFAULT NULL,
  `EMGIHGenderId` varchar(10) DEFAULT NULL,
  `EMGIHFirstName` varchar(100) DEFAULT NULL,
  `EMGIHMiddleName` varchar(100) DEFAULT NULL,
  `EMGIHLastName` varchar(100) DEFAULT NULL,
  `EMGIHFullName` varchar(305) DEFAULT NULL,
  `EMGIHDateOfBirth` date DEFAULT NULL,
  `EMGIHDateOfJoining` date DEFAULT '2020-01-01',
  `EMGIHDateOfConfirmation` date DEFAULT '2020-01-01',
  `EMGIHEmploymentTypeId` varchar(10) DEFAULT NULL,
  `EMGIHGradeId` varchar(10) DEFAULT NULL,
  `EMGIHDesignationId` varchar(10) DEFAULT NULL,
  `EMGIHDepartmentId` varchar(10) DEFAULT NULL,
  `EMGIHCalendarId` varchar(10) DEFAULT NULL,
  `EMGIHNationalityId` varchar(10) DEFAULT NULL,
  `EMGIHReligionId` varchar(10) DEFAULT NULL,
  `EMGIHRaceCastId` varchar(10) DEFAULT NULL,
  `EMGIHBloodGroupId` varchar(10) DEFAULT NULL,
  `EMGIHPhysicalStatusId` varchar(10) DEFAULT NULL,
  `EMGIHMaritalStatusId` varchar(10) DEFAULT NULL,
  `EMGIHDateOfMarriage` date DEFAULT NULL,
  `EMGIHSpouseName` varchar(100) DEFAULT NULL,
  `EMGIHOfficeEmail` varchar(100) DEFAULT NULL,
  `EMGIHOfficeExtension` varchar(100) DEFAULT NULL,
  `EMGIHOfficeLandLineNo` varchar(100) DEFAULT NULL,
  `EMGIHOfficeMobileNo` varchar(100) DEFAULT NULL,
  `EMGIHPersonalEmail` varchar(100) DEFAULT NULL,
  `EMGIHPersonalPhoneNo` varchar(100) DEFAULT NULL,
  `EMGIHPANNo` varchar(100) DEFAULT NULL,
  `EMGIHAadharNo` varchar(100) DEFAULT NULL,
  `EMGIHDrivingLicenseNo` varchar(100) DEFAULT NULL,
  `EMGIHUANNo` varchar(100) DEFAULT NULL,
  `EMGIHPresentAddress1` varchar(100) DEFAULT NULL,
  `EMGIHPresentAddress2` varchar(100) DEFAULT NULL,
  `EMGIHPresentAddress3` varchar(100) DEFAULT NULL,
  `EMGIHPresentCityId` varchar(10) DEFAULT NULL,
  `EMGIHPresentStateId` varchar(10) DEFAULT NULL,
  `EMGIHPresentCountryId` varchar(10) DEFAULT NULL,
  `EMGIHPresentPinCode` varchar(100) DEFAULT NULL,
  `EMGIHPresentContactName` varchar(100) DEFAULT NULL,
  `EMGIHSameAsPresentAdd` tinyint(1) DEFAULT 0,
  `EMGIHPermanentAddress1` varchar(100) DEFAULT NULL,
  `EMGIHPermanentAddress2` varchar(100) DEFAULT NULL,
  `EMGIHPermanentAddress3` varchar(100) DEFAULT NULL,
  `EMGIHPermanentCityId` varchar(10) DEFAULT NULL,
  `EMGIHPermanentStateId` varchar(10) DEFAULT NULL,
  `EMGIHPermanentCountryId` varchar(10) DEFAULT NULL,
  `EMGIHPermanentPinCode` varchar(100) DEFAULT NULL,
  `EMGIHPermanentContactName` varchar(100) DEFAULT NULL,
  `EMGIHPermanentContactNo` varchar(100) DEFAULT NULL,
  `EMGIHReportingManager1Id` varchar(10) DEFAULT NULL,
  `EMGIHReportingManager2Id` varchar(10) DEFAULT NULL,
  `EMGIHReportingManager3Id` varchar(10) DEFAULT NULL,
  `EMGIHPaymentModeId` varchar(10) DEFAULT NULL,
  `EMGIHBranchId` varchar(10) DEFAULT NULL,
  `EMGIHBankId` varchar(10) DEFAULT NULL,
  `EMGIHIFSCId` varchar(100) DEFAULT NULL,
  `EMGIHAccountTypeId` varchar(10) DEFAULT NULL,
  `EMGIHBankAccountNo` varchar(100) DEFAULT NULL,
  `EMGIHOTApplicable` tinyint(1) DEFAULT 0,
  `EMGIHOTBasisId` varchar(10) DEFAULT NULL,
  `EMGIHIsDailyWages` tinyint(1) DEFAULT 0,
  `EMGIHDailyWagesId` varchar(10) DEFAULT NULL,
  `EMGIHPFApplicable` tinyint(1) DEFAULT 0,
  `EMGIHPFThreshold` decimal(16,2) DEFAULT 0.00,
  `EMGIHPFAgreedByComp` tinyint(1) DEFAULT 0,
  `EMGIHPFCompLimit` decimal(16,2) DEFAULT 0.00,
  `EMGIHPFAcctNo` varchar(100) DEFAULT NULL,
  `EMGIHRegimeId` varchar(10) DEFAULT NULL,
  `EMGIHIsResignation` tinyint(1) DEFAULT 0,
  `EMGIHDateOfLetterSubmission` date DEFAULT '9999-12-31',
  `EMGIHDateOfResignation` date DEFAULT '9999-12-31',
  `EMGIHDateOfLeaving` date DEFAULT '9999-12-31',
  `EMGIHReason` varchar(200) DEFAULT NULL,
  `EMGIHRemarksForFnF` varchar(200) DEFAULT NULL,
  `EMGIHLeaveWithoutPayIndicator` tinyint(1) DEFAULT 0,
  `EMGIHLeaveWithoutPayFrom` date DEFAULT NULL,
  `EMGIHOldEmployeeCode` varchar(100) DEFAULT NULL,
  `EMGIHGroup` varchar(10) DEFAULT NULL,
  `EMGIHLeaveGroupId` varchar(10) DEFAULT NULL,
  `EMGIHBiDesc` varchar(100) DEFAULT NULL,
  `EEGIHIncomeDefined` tinyint(1) DEFAULT NULL,
  `EEGIHDeductionDefined` tinyint(1) DEFAULT NULL,
  `EMGIHMarkForDeletion` tinyint(1) DEFAULT NULL,
  `EMGIHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `EMGIHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `EMGIHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `EMGIHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11101l01`
--

INSERT INTO `t11101l01` (`id`, `EMGIHCompId`, `EMGIHLocationId`, `EMGIHEmployeeId`, `EMGIHSalutationId`, `EMGIHGenderId`, `EMGIHFirstName`, `EMGIHMiddleName`, `EMGIHLastName`, `EMGIHFullName`, `EMGIHDateOfBirth`, `EMGIHDateOfJoining`, `EMGIHDateOfConfirmation`, `EMGIHEmploymentTypeId`, `EMGIHGradeId`, `EMGIHDesignationId`, `EMGIHDepartmentId`, `EMGIHCalendarId`, `EMGIHNationalityId`, `EMGIHReligionId`, `EMGIHRaceCastId`, `EMGIHBloodGroupId`, `EMGIHPhysicalStatusId`, `EMGIHMaritalStatusId`, `EMGIHDateOfMarriage`, `EMGIHSpouseName`, `EMGIHOfficeEmail`, `EMGIHOfficeExtension`, `EMGIHOfficeLandLineNo`, `EMGIHOfficeMobileNo`, `EMGIHPersonalEmail`, `EMGIHPersonalPhoneNo`, `EMGIHPANNo`, `EMGIHAadharNo`, `EMGIHDrivingLicenseNo`, `EMGIHUANNo`, `EMGIHPresentAddress1`, `EMGIHPresentAddress2`, `EMGIHPresentAddress3`, `EMGIHPresentCityId`, `EMGIHPresentStateId`, `EMGIHPresentCountryId`, `EMGIHPresentPinCode`, `EMGIHPresentContactName`, `EMGIHSameAsPresentAdd`, `EMGIHPermanentAddress1`, `EMGIHPermanentAddress2`, `EMGIHPermanentAddress3`, `EMGIHPermanentCityId`, `EMGIHPermanentStateId`, `EMGIHPermanentCountryId`, `EMGIHPermanentPinCode`, `EMGIHPermanentContactName`, `EMGIHPermanentContactNo`, `EMGIHReportingManager1Id`, `EMGIHReportingManager2Id`, `EMGIHReportingManager3Id`, `EMGIHPaymentModeId`, `EMGIHBranchId`, `EMGIHBankId`, `EMGIHIFSCId`, `EMGIHAccountTypeId`, `EMGIHBankAccountNo`, `EMGIHOTApplicable`, `EMGIHOTBasisId`, `EMGIHIsDailyWages`, `EMGIHDailyWagesId`, `EMGIHPFApplicable`, `EMGIHPFThreshold`, `EMGIHPFAgreedByComp`, `EMGIHPFCompLimit`, `EMGIHPFAcctNo`, `EMGIHRegimeId`, `EMGIHIsResignation`, `EMGIHDateOfLetterSubmission`, `EMGIHDateOfResignation`, `EMGIHDateOfLeaving`, `EMGIHReason`, `EMGIHRemarksForFnF`, `EMGIHLeaveWithoutPayIndicator`, `EMGIHLeaveWithoutPayFrom`, `EMGIHOldEmployeeCode`, `EMGIHGroup`, `EMGIHLeaveGroupId`, `EMGIHBiDesc`, `EEGIHIncomeDefined`, `EEGIHDeductionDefined`, `EMGIHMarkForDeletion`, `EMGIHUser`, `EMGIHLastCreated`, `EMGIHLastUpdated`, `EMGIHDeletedAt`) VALUES
(1, '1000', '10', '1000', '1100', 'M', 'Madhav', NULL, 'Saran', 'Madhav  Saran', '1970-01-01', '2021-04-05', '2021-04-05', '1000', '1000', '1000', '1000', '1000', NULL, '1000', '1000', '1000', '1000', '1100', '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pune', NULL, NULL, '10', 'MH', 'IN', '411038', NULL, 1, 'pune', NULL, NULL, '10', 'MH', 'IN', '411038', NULL, NULL, NULL, NULL, NULL, '1000', '1000', '1000', '1234567890', '1000', '112', 0, 'D', 0, 'D', 0, '15000.00', 1, '15000.00', NULL, '2019', 0, '9999-12-31', '9999-12-31', '9999-12-31', NULL, NULL, 1, NULL, NULL, NULL, '1100', NULL, NULL, NULL, 0, '3SIS', '2021-12-21 07:08:01', '2022-06-06 18:27:43', NULL),
(2, '1000', '20', '1100', '1000', 'F', 'Sarika ffefef', 'trf', 'tecc', 'Sarika  te', '1970-01-01', '2021-01-01', '2021-05-05', '1100', '1000', '1100', NULL, '1000', NULL, '1000', NULL, NULL, '1000', '1000', '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rea', 'rrr', NULL, '10', 'MH', 'IN', '12345', NULL, 0, 'rea', 'rrr', NULL, '10', 'MH', 'IN', 'www', NULL, NULL, NULL, NULL, NULL, '1000', '1000', '1000', '1234567890', '1000', '2367c556v778', 1, 'Daily', 1, 'Daily', 0, '15000.00', 1, '15000.00', NULL, NULL, 0, '1970-01-01', '1970-01-01', '2021-05-28', NULL, NULL, 1, '2021-05-05', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'admin', '2023-02-20 08:09:36', '2023-02-20 08:09:36', NULL),
(3, '1000', '20', '1200', '1100', 'M', 'Shishir', NULL, 'Donde', 'Shishir  Donde', '2021-11-01', '2021-04-01', '1970-01-01', '1000', '1000', '1000', NULL, '1000', '1000', '1000', NULL, NULL, '1100', '1000', '2022-04-04', 'BBMMB', 'SDSD', 'HMH', 'JJJLJ', '441878', 'GJJGG', 'CBCBHFH', './,.MNBM', 'N,N,,', 'NNNM', NULL, 'Pune', NULL, NULL, '30', 'AP', 'SG', '411038', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', '1000', '1000', '1234567890', '1000', '123344', 0, 'Hourly', 0, 'Hourly', 0, '15000.00', 1, '15000.00', '112122', NULL, 1, '9999-12-31', '9999-12-31', '9999-12-31', 'DFFD', 'SS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'admin', '2023-03-15 21:51:01', '2023-03-15 21:51:01', NULL),
(4, '1000', '10', '1300', '1000', 'F', 'Swapna 1', NULL, 'Donde 1', 'Swapna 1  Donde 1', '2022-03-29', '2021-04-04', '1970-01-01', '1100', '1000', '1000', NULL, '1200', NULL, '1000', NULL, NULL, '1000', '1000', '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pune', NULL, NULL, '10', 'MH', 'IN', '411048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', '1000', '1000', '1234567890', '1000', '1345', 1, 'Hourly', 1, 'Hourly', 1, '15000.00', 1, '15000.00', NULL, NULL, 1, '9999-12-31', '9999-12-31', '9999-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'admin', '2023-03-20 10:14:40', '2023-03-20 10:14:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11901l01`
--

CREATE TABLE `t11901l01` (
  `id` bigint(20) NOT NULL,
  `GMSLHSalutationId` varchar(10) NOT NULL,
  `GMSLHDesc1` varchar(100) NOT NULL,
  `GMSLHDesc2` varchar(200) DEFAULT NULL,
  `GMSLHBiDesc` varchar(100) DEFAULT NULL,
  `GMSLHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMSLHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMSLHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMSLHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMSLHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11901l01`
--

INSERT INTO `t11901l01` (`id`, `GMSLHSalutationId`, `GMSLHDesc1`, `GMSLHDesc2`, `GMSLHBiDesc`, `GMSLHMarkForDeletion`, `GMSLHUser`, `GMSLHLastCreated`, `GMSLHLastUpdated`, `GMSLHDeletedAt`) VALUES
(1, '1000', 'Ms.', 'Miss', 'Ms.', 0, '3SIS', '2021-12-03 07:20:57', '2021-12-03 07:20:57', NULL),
(2, '1100', 'Mr.', 'Mister', 'Mr.', 0, '3SIS', '2021-12-03 07:21:12', '2022-01-17 07:55:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11901l02`
--

CREATE TABLE `t11901l02` (
  `id` bigint(20) NOT NULL,
  `GMGDHGenderId` varchar(10) NOT NULL,
  `GMGDHDesc1` varchar(100) NOT NULL,
  `GMGDHDesc2` varchar(200) DEFAULT NULL,
  `GMGDHBiDesc` varchar(100) DEFAULT NULL,
  `GMGDHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMGDHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMGDHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMGDHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMGDHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11901l02`
--

INSERT INTO `t11901l02` (`id`, `GMGDHGenderId`, `GMGDHDesc1`, `GMGDHDesc2`, `GMGDHBiDesc`, `GMGDHMarkForDeletion`, `GMGDHUser`, `GMGDHLastCreated`, `GMGDHLastUpdated`, `GMGDHDeletedAt`) VALUES
(1, 'F', 'Female', 'Female', 'Female', 0, '3SIS', '2021-12-03 10:04:46', '2021-12-03 10:04:46', NULL),
(2, 'M', 'Male', 'Male', 'Male', 0, '3SIS', '2021-12-03 10:05:00', '2022-07-06 14:31:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11901l03`
--

CREATE TABLE `t11901l03` (
  `id` bigint(20) NOT NULL,
  `GMBGHBloodGroupId` varchar(10) NOT NULL,
  `GMBGHDesc1` varchar(100) NOT NULL,
  `GMBGHDesc2` varchar(200) DEFAULT NULL,
  `GMBGHBiDesc` varchar(100) DEFAULT NULL,
  `GMBGHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMBGHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMBGHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMBGHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMBGHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11901l03`
--

INSERT INTO `t11901l03` (`id`, `GMBGHBloodGroupId`, `GMBGHDesc1`, `GMBGHDesc2`, `GMBGHBiDesc`, `GMBGHMarkForDeletion`, `GMBGHUser`, `GMBGHLastCreated`, `GMBGHLastUpdated`, `GMBGHDeletedAt`) VALUES
(1, '1000', 'A+', 'A+', 'A+', 0, '3SIS', '2021-12-03 11:19:17', '2021-12-03 11:19:17', NULL),
(2, '1100', 'AB+', 'AB+', 'AB+', 1, '3SIS', '2021-12-03 11:19:50', '2021-12-03 11:20:40', '2022-02-25 10:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `t11901l04`
--

CREATE TABLE `t11901l04` (
  `id` bigint(20) NOT NULL,
  `GMNAHNationalityId` varchar(10) NOT NULL,
  `GMNAHDesc1` varchar(100) NOT NULL,
  `GMNAHDesc2` varchar(200) DEFAULT NULL,
  `GMNAHBiDesc` varchar(100) DEFAULT NULL,
  `GMNAHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMNAHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMNAHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMNAHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMNAHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11901l04`
--

INSERT INTO `t11901l04` (`id`, `GMNAHNationalityId`, `GMNAHDesc1`, `GMNAHDesc2`, `GMNAHBiDesc`, `GMNAHMarkForDeletion`, `GMNAHUser`, `GMNAHLastCreated`, `GMNAHLastUpdated`, `GMNAHDeletedAt`) VALUES
(1, '1000', 'Indian', 'Indian', 'Indian', 0, '3SIS', '2021-12-03 11:54:38', '2021-12-03 11:54:38', NULL),
(2, '1100', 'US Citizen', 'US Citizen', 'US Citizen', 0, '3SIS', '2021-12-03 11:55:24', '2021-12-03 11:55:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11901l05`
--

CREATE TABLE `t11901l05` (
  `id` bigint(20) NOT NULL,
  `GMRAHRaceId` varchar(10) NOT NULL,
  `GMRAHDesc1` varchar(100) NOT NULL,
  `GMRAHDesc2` varchar(200) DEFAULT NULL,
  `GMRAHBiDesc` varchar(100) DEFAULT NULL,
  `GMRAHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMRAHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMRAHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMRAHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMRAHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11901l05`
--

INSERT INTO `t11901l05` (`id`, `GMRAHRaceId`, `GMRAHDesc1`, `GMRAHDesc2`, `GMRAHBiDesc`, `GMRAHMarkForDeletion`, `GMRAHUser`, `GMRAHLastCreated`, `GMRAHLastUpdated`, `GMRAHDeletedAt`) VALUES
(1, '1000', 'Please Create', 'Please Create', 'Please Create', 0, '3SIS', '2021-12-03 12:23:57', '2021-12-03 12:24:36', NULL),
(2, '1100', 'OBC', 'OBC', 'OBC', 0, '3SIS', '2021-12-03 12:24:11', '2021-12-03 12:24:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11901l06`
--

CREATE TABLE `t11901l06` (
  `id` bigint(20) NOT NULL,
  `GMRLHReligionId` varchar(10) NOT NULL,
  `GMRLHDesc1` varchar(100) NOT NULL,
  `GMRLHDesc2` varchar(200) DEFAULT NULL,
  `GMRLHBiDesc` varchar(100) DEFAULT NULL,
  `GMRLHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMRLHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMRLHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMRLHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMRLHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11901l06`
--

INSERT INTO `t11901l06` (`id`, `GMRLHReligionId`, `GMRLHDesc1`, `GMRLHDesc2`, `GMRLHBiDesc`, `GMRLHMarkForDeletion`, `GMRLHUser`, `GMRLHLastCreated`, `GMRLHLastUpdated`, `GMRLHDeletedAt`) VALUES
(1, '1000', 'Hindu', 'Hindu', 'Hindu', 0, '3SIS', '2021-12-03 12:57:26', '2021-12-03 12:57:26', NULL),
(2, '1100', 'Christian', 'Christian', 'Christian', 0, '3SIS', '2021-12-03 12:57:51', '2021-12-03 12:58:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11901l07`
--

CREATE TABLE `t11901l07` (
  `id` bigint(20) NOT NULL,
  `GMMSHMaritalStatusId` varchar(10) NOT NULL,
  `GMMSHDesc1` varchar(100) NOT NULL,
  `GMMSHDesc2` varchar(200) DEFAULT NULL,
  `GMMSHBiDesc` varchar(100) DEFAULT NULL,
  `GMMSHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMMSHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMMSHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMMSHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMMSHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11901l07`
--

INSERT INTO `t11901l07` (`id`, `GMMSHMaritalStatusId`, `GMMSHDesc1`, `GMMSHDesc2`, `GMMSHBiDesc`, `GMMSHMarkForDeletion`, `GMMSHUser`, `GMMSHLastCreated`, `GMMSHLastUpdated`, `GMMSHDeletedAt`) VALUES
(1, '1000', 'Married', 'Married', 'Married', 0, '3SIS', '2021-12-03 13:15:48', '2021-12-03 13:15:48', NULL),
(2, '1100', 'Unmarried', 'Unmarried', 'Unmarried', 0, '3SIS', '2021-12-03 13:16:16', '2021-12-03 13:16:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11901l08`
--

CREATE TABLE `t11901l08` (
  `id` bigint(20) NOT NULL,
  `GMPSHPhysicalStatusId` varchar(10) NOT NULL,
  `GMPSHDesc1` varchar(100) NOT NULL,
  `GMPSHDesc2` varchar(200) DEFAULT NULL,
  `GMPSHBiDesc` varchar(100) DEFAULT NULL,
  `GMPSHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `GMPSHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMPSHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMPSHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `GMPSHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11901l08`
--

INSERT INTO `t11901l08` (`id`, `GMPSHPhysicalStatusId`, `GMPSHDesc1`, `GMPSHDesc2`, `GMPSHBiDesc`, `GMPSHMarkForDeletion`, `GMPSHUser`, `GMPSHLastCreated`, `GMPSHLastUpdated`, `GMPSHDeletedAt`) VALUES
(1, '1000', 'Create Physical Status', 'Create Physical Status', 'Create Physical Status', 0, '3SIS', '2021-12-03 13:45:21', '2021-12-03 13:45:21', NULL),
(2, '1100', 'Physically Handicap', 'Physically Handicap', 'Physically Handicap', 0, '3SIS', '2021-12-03 13:45:42', '2021-12-03 13:46:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11903l01`
--

CREATE TABLE `t11903l01` (
  `id` bigint(20) NOT NULL,
  `ESDEHDesignationId` varchar(10) NOT NULL,
  `ESDEHDesc1` varchar(100) NOT NULL,
  `ESDEHDesc2` varchar(200) DEFAULT NULL,
  `ESDEHBiDesc` varchar(100) DEFAULT NULL,
  `ESDEHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `ESDEHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `ESDEHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ESDEHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `ESDEHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11903l01`
--

INSERT INTO `t11903l01` (`id`, `ESDEHDesignationId`, `ESDEHDesc1`, `ESDEHDesc2`, `ESDEHBiDesc`, `ESDEHMarkForDeletion`, `ESDEHUser`, `ESDEHLastCreated`, `ESDEHLastUpdated`, `ESDEHDeletedAt`) VALUES
(1, '1000', 'Accountant', 'Accountant', 'Accountant', 0, '3SIS', '2021-12-03 15:12:44', '2021-12-03 15:12:44', NULL),
(2, '1100', 'Chief Coordinator', 'Chief Coordinator', 'Chief Coordinator', 0, '3SIS', '2021-12-03 15:13:07', '2021-12-03 15:13:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11903l02`
--

CREATE TABLE `t11903l02` (
  `id` bigint(20) NOT NULL,
  `ESGRHGradeId` varchar(10) NOT NULL,
  `ESGRHDesc1` varchar(100) NOT NULL,
  `ESGRHDesc2` varchar(200) DEFAULT NULL,
  `ESGRHBiDesc` varchar(100) DEFAULT NULL,
  `ESGRHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `ESGRHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `ESGRHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ESGRHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `ESGRHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11903l02`
--

INSERT INTO `t11903l02` (`id`, `ESGRHGradeId`, `ESGRHDesc1`, `ESGRHDesc2`, `ESGRHBiDesc`, `ESGRHMarkForDeletion`, `ESGRHUser`, `ESGRHLastCreated`, `ESGRHLastUpdated`, `ESGRHDeletedAt`) VALUES
(1, '1000', 'SLT', 'SLT', 'SLT', 0, '3SIS', '2021-12-03 15:44:13', '2021-12-03 15:44:13', NULL),
(2, '1100', 'MLT', 'MLT', 'MLT', 0, '3SIS', '2021-12-03 15:44:34', '2021-12-03 15:45:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11903l03`
--

CREATE TABLE `t11903l03` (
  `id` bigint(20) NOT NULL,
  `ESDPHDepartmentId` varchar(10) NOT NULL,
  `ESDPHDesc1` varchar(100) NOT NULL,
  `ESDPHDesc2` varchar(200) DEFAULT NULL,
  `ESDPHBiDesc` varchar(100) DEFAULT NULL,
  `ESDPHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `ESDPHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `ESDPHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ESDPHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `ESDPHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11903l03`
--

INSERT INTO `t11903l03` (`id`, `ESDPHDepartmentId`, `ESDPHDesc1`, `ESDPHDesc2`, `ESDPHBiDesc`, `ESDPHMarkForDeletion`, `ESDPHUser`, `ESDPHLastCreated`, `ESDPHLastUpdated`, `ESDPHDeletedAt`) VALUES
(1, '1000', 'Dept of Accounting', 'Dept of Accounting', 'Dept of Accounting', 0, '3SIS', '2021-12-03 15:41:58', '2021-12-03 15:41:58', NULL),
(2, '1100', 'Dept of Administration', 'Dept of Administration', 'Dept of Administration', 0, '3SIS', '2021-12-03 15:42:47', '2021-12-03 15:43:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11903l04`
--

CREATE TABLE `t11903l04` (
  `id` bigint(20) NOT NULL,
  `ESTYHTypeId` varchar(10) NOT NULL,
  `ESTYHDesc1` varchar(100) NOT NULL,
  `ESTYHDesc2` varchar(200) DEFAULT NULL,
  `ESTYHBiDesc` varchar(100) DEFAULT NULL,
  `ESTYHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `ESTYHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `ESTYHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ESTYHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `ESTYHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11903l04`
--

INSERT INTO `t11903l04` (`id`, `ESTYHTypeId`, `ESTYHDesc1`, `ESTYHDesc2`, `ESTYHBiDesc`, `ESTYHMarkForDeletion`, `ESTYHUser`, `ESTYHLastCreated`, `ESTYHLastUpdated`, `ESTYHDeletedAt`) VALUES
(1, '1000', 'Part Time', 'Part Time', 'Part Time', 0, '3SIS', '2021-12-03 15:46:54', '2021-12-03 15:46:54', NULL),
(2, '1100', 'Contract', 'Contract', 'Contract', 0, '3SIS', '2021-12-03 15:47:09', '2021-12-03 15:47:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11906l01`
--

CREATE TABLE `t11906l01` (
  `id` bigint(20) NOT NULL,
  `PMITHIncomeId` varchar(10) NOT NULL,
  `PMITHIncomeIdK` varchar(11) NOT NULL,
  `PMITHDesc1` varchar(100) NOT NULL,
  `PMITHDesc2` varchar(200) DEFAULT NULL,
  `PMITHIsTaxable` tinyint(1) DEFAULT 0,
  `PMITHRuleId` varchar(10) DEFAULT 'Z1000',
  `PMITHRentExemptPercent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `PMITHRentCityPercent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `PMITHIncomeCycle` varchar(1) NOT NULL DEFAULT 'M',
  `PMITHPrintingSeq` int(11) DEFAULT 0,
  `PMITHRoundingStrategy` varchar(10) DEFAULT '1000',
  `PMITHBiElementId` int(11) DEFAULT NULL,
  `PMITHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `PMITHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `PMITHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMITHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMITHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t11906l01`
--

INSERT INTO `t11906l01` (`id`, `PMITHIncomeId`, `PMITHIncomeIdK`, `PMITHDesc1`, `PMITHDesc2`, `PMITHIsTaxable`, `PMITHRuleId`, `PMITHRentExemptPercent`, `PMITHRentCityPercent`, `PMITHIncomeCycle`, `PMITHPrintingSeq`, `PMITHRoundingStrategy`, `PMITHBiElementId`, `PMITHMarkForDeletion`, `PMITHUser`, `PMITHLastCreated`, `PMITHLastUpdated`, `PMITHDeletedAt`) VALUES
(1, '1000', 'I1000', 'Basic', 'Basic', 1, 'Z1000', '0.00', '0.00', 'M', 1, '1000', 10000, 0, '3SIS', '2021-12-08 06:40:02', '2021-12-08 06:40:02', NULL),
(2, '1100', 'I1100', 'DA', 'DA', 1, 'Z1000', '0.00', '0.00', 'M', 2, '1000', 13000, 0, '3SIS', '2021-12-08 06:41:38', '2021-12-08 06:41:38', NULL),
(3, '4000', 'I4000', 'HRA', 'HRA', 1, 'I5000', '10.00', '0.00', 'M', 3, '1000', 11000, 0, '3SIS', '2021-12-08 06:45:43', '2021-12-08 06:45:43', NULL),
(4, '1300', 'I1300', 'Others', 'Others', 1, 'Z1000', '0.00', '0.00', 'M', 4, '1000', 18000, 0, '3SIS', '2021-12-08 06:46:44', '2021-12-08 06:46:44', NULL),
(5, '1400', 'I1400', 'CCA', 'CCA', 1, 'Z1000', '0.00', '0.00', 'M', 5, '1000', 12000, 0, '3SIS', '2021-12-08 06:47:24', '2021-12-08 06:47:24', NULL),
(6, '1500', 'I1500', 'Bonus', 'Bonus', 1, 'Z1000', '0.00', '0.00', 'P', 6, '1000', 14000, 1, 'admin', '2021-12-08 06:48:34', '2023-04-05 12:11:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11906l010211`
--

CREATE TABLE `t11906l010211` (
  `id` bigint(20) NOT NULL,
  `idH` bigint(20) NOT NULL,
  `PMIDDIncDedId` varchar(10) NOT NULL,
  `PMIDDIncDedIdK` varchar(11) NOT NULL,
  `PMIDDIncOrDed` varchar(1) NOT NULL,
  `PMIDDDesc` varchar(100) DEFAULT NULL,
  `PMIDDPeriodId` tinyint(4) NOT NULL DEFAULT 12,
  `PMIDDMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `PMIDDUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `PMIDDLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMIDDLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMIDDDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t11906l010211`
--

INSERT INTO `t11906l010211` (`id`, `idH`, `PMIDDIncDedId`, `PMIDDIncDedIdK`, `PMIDDIncOrDed`, `PMIDDDesc`, `PMIDDPeriodId`, `PMIDDMarkForDeletion`, `PMIDDUser`, `PMIDDLastCreated`, `PMIDDLastUpdated`, `PMIDDDeletedAt`) VALUES
(1, 8, '1000', 'D1000', 'D', 'test', 12, 0, '3SIS', '2023-04-06 12:18:40', '2023-04-06 12:18:40', '2023-04-06 08:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `t11906l02`
--

CREATE TABLE `t11906l02` (
  `id` bigint(20) NOT NULL,
  `PMDTHDeductionId` varchar(10) NOT NULL,
  `PMDTHDeductionIdK` varchar(11) NOT NULL,
  `PMDTHDesc1` varchar(100) NOT NULL,
  `PMDTHDesc2` varchar(200) DEFAULT NULL,
  `PMDTHApplicableFor` varchar(1) DEFAULT 'C',
  `PMDTHIsTaxExempted` tinyint(1) DEFAULT 0,
  `PMDTHIsThisLoanLine` tinyint(1) DEFAULT 0,
  `PMDTHShowInTaxList` tinyint(1) DEFAULT 0,
  `PMDTHIsIncomeDependent` tinyint(1) DEFAULT 0,
  `PMDTHDedStrategy` varchar(1) DEFAULT 'C',
  `PMDTHDedStrategyDesc` varchar(20) DEFAULT 'Cumulative',
  `PMDTHDeductionCycle` varchar(1) DEFAULT 'M',
  `PMDTHDedPercent` decimal(5,2) DEFAULT 0.00,
  `PMDTHRuleId` varchar(10) DEFAULT 'Z1000',
  `PMDTHPrintingSeq` int(11) DEFAULT 0,
  `PMDTHRoundingStrategy` varchar(10) DEFAULT '1000',
  `PMDTHBiElementId` int(11) DEFAULT 1000,
  `PMDTHMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `PMDTHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `PMDTHLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMDTHLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMDTHDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t11906l02`
--

INSERT INTO `t11906l02` (`id`, `PMDTHDeductionId`, `PMDTHDeductionIdK`, `PMDTHDesc1`, `PMDTHDesc2`, `PMDTHApplicableFor`, `PMDTHIsTaxExempted`, `PMDTHIsThisLoanLine`, `PMDTHShowInTaxList`, `PMDTHIsIncomeDependent`, `PMDTHDedStrategy`, `PMDTHDedStrategyDesc`, `PMDTHDeductionCycle`, `PMDTHDedPercent`, `PMDTHRuleId`, `PMDTHPrintingSeq`, `PMDTHRoundingStrategy`, `PMDTHBiElementId`, `PMDTHMarkForDeletion`, `PMDTHUser`, `PMDTHLastCreated`, `PMDTHLastUpdated`, `PMDTHDeletedAt`) VALUES
(8, '1000', 'D1000', 'Loan', 'Loan', 'C', 0, 1, 0, 0, 'C', 'Cumulative', 'M', '0.00', 'Z1000', 1, '1000', 24000, 0, '3SIS', '2021-12-27 15:12:39', '2022-02-15 10:11:09', NULL),
(9, '1100', 'D1100', 'Other Deductions', NULL, 'C', 0, 0, 0, 0, 'C', 'Cumulative', 'M', '0.00', 'Z1000', 2, '1000', 25000, 0, '3SIS', '2021-12-27 15:13:28', '2021-12-27 15:13:28', NULL),
(10, '1200', 'D1200', 'PF', 'PF', 'C', 1, 0, 0, 1, 'C', 'Cumulative', 'M', '0.00', 'D1000', 3, '1000', 19000, 0, 'admin', '2021-12-27 15:14:27', '2023-04-06 10:50:52', NULL),
(11, '1300', 'D1300', 'PT', 'PT', 'C', 1, 1, 1, 1, 'C', NULL, 'P', '0.00', 'D2000', 4, '1000', 20000, 0, 'admin', '2021-12-27 15:15:34', '2023-04-06 11:48:10', NULL),
(12, '1400', 'D1400', 'ESIC', 'ESIC', 'C', 0, 0, 0, 1, 'C', 'Cumulative', 'M', '0.00', 'D3000', 5, '1000', 21000, 0, 'admin', '2021-12-27 15:16:51', '2023-04-06 08:05:26', NULL),
(14, '6000', 'D6000', 'WWCW', 'WED', 'C', NULL, 0, 0, 0, 'C', 'Cumulative', 'P', '0.00', 'D4000', 33, '1100', 1000, 1, 'admin', '2023-04-06 07:56:54', '2023-04-06 07:56:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11906l0211`
--

CREATE TABLE `t11906l0211` (
  `id` bigint(20) NOT NULL,
  `idH` bigint(20) NOT NULL,
  `PMDTDDeductionId` varchar(10) NOT NULL,
  `PMDTDDeductionIdK` varchar(11) NOT NULL,
  `PMDTDIncomeId` varchar(10) NOT NULL,
  `PMDTDIncomeIdK` varchar(11) NOT NULL,
  `PMDTDIsSelect` tinyint(1) NOT NULL DEFAULT 0,
  `PMDTDDedPercent` decimal(5,2) NOT NULL DEFAULT 100.00,
  `PMDTDMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `PMDTDUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `PMDTDLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMDTDLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMDTDDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t11906l0211`
--

INSERT INTO `t11906l0211` (`id`, `idH`, `PMDTDDeductionId`, `PMDTDDeductionIdK`, `PMDTDIncomeId`, `PMDTDIncomeIdK`, `PMDTDIsSelect`, `PMDTDDedPercent`, `PMDTDMarkForDeletion`, `PMDTDUser`, `PMDTDLastCreated`, `PMDTDLastUpdated`, `PMDTDDeletedAt`) VALUES
(1, 4, '1200', 'I1200', '1000', 'I1000', 1, '100.00', 0, '3SIS', '2021-12-27 05:52:11', '2021-12-27 05:52:11', NULL),
(2, 4, '1200', 'I1200', '1100', 'I1100', 1, '100.00', 0, '3SIS', '2021-12-27 05:52:11', '2021-12-27 05:52:11', NULL),
(3, 4, '1200', 'I1200', '4000', 'I4000', 1, '100.00', 0, '3SIS', '2021-12-27 05:52:11', '2021-12-27 05:52:11', NULL),
(4, 4, '1200', 'I1200', '1300', 'I1300', 1, '100.00', 0, '3SIS', '2021-12-27 05:52:11', '2021-12-27 05:52:11', NULL),
(5, 4, '1200', 'I1200', '1400', 'I1400', 1, '100.00', 0, '3SIS', '2021-12-27 05:52:11', '2021-12-27 05:52:11', NULL),
(6, 3, '1100', 'I1100', '1000', 'I1000', 1, '100.00', 0, '3SIS', '2021-12-27 05:52:53', '2021-12-27 05:52:53', NULL),
(7, 3, '1100', 'I1100', '1100', 'I1100', 1, '100.00', 0, '3SIS', '2021-12-27 05:52:53', '2021-12-27 05:52:53', NULL),
(8, 3, '1100', 'I1100', '4000', 'I4000', 1, '100.00', 0, '3SIS', '2021-12-27 05:52:53', '2021-12-27 05:52:53', NULL),
(9, 3, '1100', 'I1100', '1300', 'I1300', 1, '100.00', 0, '3SIS', '2021-12-27 05:52:53', '2021-12-27 05:52:53', NULL),
(10, 3, '1100', 'I1100', '1400', 'I1400', 1, '100.00', 0, '3SIS', '2021-12-27 05:52:53', '2021-12-27 05:52:53', NULL),
(11, 2, '1000', 'I1000', '1000', 'I1000', 1, '100.00', 0, '3SIS', '2021-12-27 05:53:29', '2021-12-27 05:53:29', NULL),
(12, 2, '1000', 'I1000', '1100', 'I1100', 1, '100.00', 0, '3SIS', '2021-12-27 05:53:29', '2021-12-27 05:53:29', NULL),
(13, 2, '1000', 'I1000', '4000', 'I4000', 1, '100.00', 0, '3SIS', '2021-12-27 05:53:29', '2021-12-27 05:53:29', NULL),
(14, 2, '1000', 'I1000', '1300', 'I1300', 1, '100.00', 0, '3SIS', '2021-12-27 05:53:29', '2021-12-27 05:53:29', NULL),
(15, 2, '1000', 'I1000', '1400', 'I1400', 1, '100.00', 0, '3SIS', '2021-12-27 05:53:29', '2021-12-27 05:53:29', NULL),
(16, 10, '1200', 'D1200', '1000', 'I1000', 1, '100.00', 0, '3SIS', '2021-12-27 15:14:27', '2021-12-27 15:14:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `technical_error`
--

CREATE TABLE `technical_error` (
  `id` int(11) NOT NULL,
  `error` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technical_error`
--

INSERT INTO `technical_error` (`id`, `error`, `created_at`, `updated_at`) VALUES
(1, '{\"message\":\"Undefined variable $request\",\"line\":149,\"code\":0,\"file\":\"\\/media\\/krishna\\/Tutorial\\/3sis\\/payroll\\/app\\/Http\\/Controllers\\/Config\\/GeneralMaster\\/StateController.php\",\"severity\":2}', '2022-12-10 01:27:09', NULL),
(2, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'08-02-2023\' for column \'GMCOHESTDate\' at row 1 (SQL: update `t05901l01` set `GMCOHAddress1` = cfrf, `GMCOHAddress2` = rfrfr, `GMCOHAddress3` = efefe, `GMCOHCityId` = 10, `GMCOHStateId` = MH, `GMCOHCountryId` = IN, `GMCOHPinCode` = 56888, `GMCOHCINNo` = efefe, `GMCOHPANNo` = efef, `GMCOHGSTNo` = wfw, `GMCOHESTDate` = 08-02-2023, `GMCOHBankId1` = 1000, `GMCOHBranchId1` = 1000, `GMCOHIFSId1` = 1234567890, `GMCOHBankAccNo1` = wfqwef, `GMCOHBankAcName1` = wqfqwefq, `GMCOHBankId2` = 1200, `GMCOHBranchId2` = 1100, `GMCOHIFSId2` = 98765432109876543210, `GMCOHBankAccNo2` = wefwef, `GMCOHBankAcName2` = wefewf, `GMCOHFolderName` = wfqwf3qfqw, `GMCOHImageFileName` = fqwewe, `GMCOHLastUpdated` = 2023-02-12 19:48:50 where `id` = 4)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-02-12 07:48:50', NULL),
(3, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'08-02-2023\' for column \'GMCOHESTDate\' at row 1 (SQL: update `t05901l01` set `GMCOHAddress1` = cfrf, `GMCOHAddress2` = rfrfr, `GMCOHAddress3` = efefe, `GMCOHCityId` = 10, `GMCOHStateId` = MH, `GMCOHCountryId` = IN, `GMCOHPinCode` = 56888, `GMCOHCINNo` = efefe, `GMCOHPANNo` = efef, `GMCOHGSTNo` = wfw, `GMCOHESTDate` = 08-02-2023, `GMCOHBankId1` = 1000, `GMCOHBranchId1` = 1000, `GMCOHIFSId1` = 1234567890, `GMCOHBankAccNo1` = wfqwef, `GMCOHBankAcName1` = wqfqwefq, `GMCOHBankId2` = 1200, `GMCOHBranchId2` = 1100, `GMCOHIFSId2` = 98765432109876543210, `GMCOHBankAccNo2` = wefwef, `GMCOHBankAcName2` = wefewf, `GMCOHFolderName` = wfqwf3qfqw, `GMCOHImageFileName` = fqwewe, `GMCOHLastUpdated` = 2023-02-12 19:49:05 where `id` = 4)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-02-12 07:49:05', NULL),
(4, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'07-02-2023\' for column \'GMCOHESTDate\' at row 1 (SQL: update `t05901l01` set `GMCOHAddress1` = vdvdv, `GMCOHAddress2` = dvdvdvr, `GMCOHAddress3` = eegef, `GMCOHCityId` = 10, `GMCOHStateId` = MH, `GMCOHCountryId` = IN, `GMCOHPinCode` = wwwgw4, `GMCOHCINNo` = asvdsavas, `GMCOHPANNo` = asvsav, `GMCOHGSTNo` = asvsdvas, `GMCOHESTDate` = 07-02-2023, `GMCOHBankId1` = 1200, `GMCOHBranchId1` = 1100, `GMCOHIFSId1` = 98765432109876543210, `GMCOHBankAccNo1` = svsdvds, `GMCOHBankAcName1` = avsvsd, `GMCOHBankId2` = 1000, `GMCOHBranchId2` = 1000, `GMCOHIFSId2` = 1234567890, `GMCOHBankAccNo2` = svsav, `GMCOHBankAcName2` = savsdav, `GMCOHFolderName` = savdsav, `GMCOHImageFileName` = asvasv, `GMCOHLastUpdated` = 2023-02-13 22:37:22 where `id` = 4)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-02-13 10:37:22', NULL),
(5, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'08-02-2023\' for column \'GMCOHESTDate\' at row 1 (SQL: update `t05901l01` set `GMCOHAddress1` = ascasc, `GMCOHAddress2` = acasc, `GMCOHAddress3` = ascdave, `GMCOHCityId` = 20, `GMCOHStateId` = BR, `GMCOHCountryId` = USA, `GMCOHPinCode` = 2212, `GMCOHESTDate` = 08-02-2023, `GMCOHLastUpdated` = 2023-02-13 22:39:43 where `id` = 4)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-02-13 10:39:43', NULL),
(6, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'08-02-2023\' for column \'GMCOHESTDate\' at row 1 (SQL: update `t05901l01` set `GMCOHAddress1` = ascasc, `GMCOHAddress2` = acasc, `GMCOHAddress3` = ascdave, `GMCOHCityId` = 20, `GMCOHStateId` = BR, `GMCOHCountryId` = USA, `GMCOHPinCode` = 2212, `GMCOHESTDate` = 08-02-2023, `GMCOHLastUpdated` = 2023-02-13 22:39:58 where `id` = 4)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-02-13 10:39:58', NULL),
(7, '{\"message\":\"Undefined variable $city_data\",\"line\":206,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\EmployeeMaster\\\\GeneralInfoController.php\"}', '2023-02-20 07:56:54', NULL),
(8, '{\"message\":\"Undefined variable $city_data\",\"line\":206,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\EmployeeMaster\\\\GeneralInfoController.php\"}', '2023-02-20 07:59:26', NULL),
(9, '{\"message\":\"Undefined variable $city_data\",\"line\":206,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\EmployeeMaster\\\\GeneralInfoController.php\"}', '2023-02-20 08:01:18', NULL),
(10, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'EMGIHCompId\' cannot be null (SQL: update `T11101l01` set `EMGIHCompId` = ?, `EMGIHDepartmentId` = ?, `EMGIHRaceCastId` = ?, `EMGIHBloodGroupId` = ?, `EMGIHSameAsPresentAdd` = ?, `EMGIHPermanentStateId` = ?, `EMGIHPermanentCountryId` = ?, `EMGIHOTBasisId` = Daily, `EMGIHDailyWagesId` = Daily, `EMGIHRegimeId` = ?, `EMGIHLeaveGroupId` = ?, `EEGIHIncomeDefined` = ?, `EMGIHMarkForDeletion` = ?, `EMGIHUser` = admin, `EMGIHLastCreated` = 2023-02-20 08:02:59, `EMGIHLastUpdated` = 2023-02-20 08:02:59 where `id` = 4)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-02-20 08:02:59', NULL),
(11, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:22:50, `EMGIHLastUpdated` = 2023-03-15 18:22:50 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:22:50', NULL),
(12, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:22:56, `EMGIHLastUpdated` = 2023-03-15 18:22:56 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:22:56', NULL),
(13, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:22:57, `EMGIHLastUpdated` = 2023-03-15 18:22:57 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:22:57', NULL),
(14, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:23:04, `EMGIHLastUpdated` = 2023-03-15 18:23:04 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:23:04', NULL),
(15, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:23:05, `EMGIHLastUpdated` = 2023-03-15 18:23:05 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:23:05', NULL),
(16, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:23:06, `EMGIHLastUpdated` = 2023-03-15 18:23:06 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:23:06', NULL),
(17, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:23:07, `EMGIHLastUpdated` = 2023-03-15 18:23:07 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:23:07', NULL),
(18, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:23:08, `EMGIHLastUpdated` = 2023-03-15 18:23:08 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:23:08', NULL),
(19, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:23:21, `EMGIHLastUpdated` = 2023-03-15 18:23:21 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:23:21', NULL),
(20, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:23:35, `EMGIHLastUpdated` = 2023-03-15 18:23:35 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:23:35', NULL),
(21, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 40, `EMGIHPresentStateId` = MH, `EMGIHPresentCountryId` = IN, `EMGIHPermanentAddress2` = 1233, `EMGIHPermanentAddress3` = 44566, `EMGIHPermanentCityId` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:04, `EMGIHLastUpdated` = 2023-03-15 18:24:04 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:04', NULL),
(22, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 40, `EMGIHPresentStateId` = MH, `EMGIHPresentCountryId` = IN, `EMGIHPermanentAddress1` = ?, `EMGIHPermanentCityId` = 30, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHPermanentPinCode` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:32, `EMGIHLastUpdated` = 2023-03-15 18:24:32 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:32', NULL),
(23, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 20, `EMGIHPresentStateId` = BR, `EMGIHPresentCountryId` = USA, `EMGIHPermanentAddress1` = ?, `EMGIHPermanentCityId` = 30, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHPermanentPinCode` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:44, `EMGIHLastUpdated` = 2023-03-15 18:24:44 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:44', NULL),
(24, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 20, `EMGIHPresentStateId` = BR, `EMGIHPresentCountryId` = USA, `EMGIHPermanentAddress1` = ?, `EMGIHPermanentCityId` = 30, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHPermanentPinCode` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:45, `EMGIHLastUpdated` = 2023-03-15 18:24:45 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:45', NULL),
(25, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 20, `EMGIHPresentStateId` = BR, `EMGIHPresentCountryId` = USA, `EMGIHPermanentAddress1` = ?, `EMGIHPermanentCityId` = 30, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHPermanentPinCode` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:46, `EMGIHLastUpdated` = 2023-03-15 18:24:46 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:46', NULL),
(26, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 20, `EMGIHPresentStateId` = BR, `EMGIHPresentCountryId` = USA, `EMGIHPermanentAddress1` = ?, `EMGIHPermanentCityId` = 30, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHPermanentPinCode` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:47, `EMGIHLastUpdated` = 2023-03-15 18:24:47 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:47', NULL),
(27, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 20, `EMGIHPresentStateId` = BR, `EMGIHPresentCountryId` = USA, `EMGIHPermanentAddress1` = ?, `EMGIHPermanentCityId` = 30, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHPermanentPinCode` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:48, `EMGIHLastUpdated` = 2023-03-15 18:24:48 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:48', NULL),
(28, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 20, `EMGIHPresentStateId` = BR, `EMGIHPresentCountryId` = USA, `EMGIHPermanentAddress1` = ?, `EMGIHPermanentCityId` = 30, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHPermanentPinCode` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:48, `EMGIHLastUpdated` = 2023-03-15 18:24:48 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:48', NULL),
(29, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 20, `EMGIHPresentStateId` = BR, `EMGIHPresentCountryId` = USA, `EMGIHPermanentAddress1` = ?, `EMGIHPermanentCityId` = 30, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHPermanentPinCode` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:49, `EMGIHLastUpdated` = 2023-03-15 18:24:49 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:49', NULL),
(30, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 20, `EMGIHPresentStateId` = BR, `EMGIHPresentCountryId` = USA, `EMGIHPermanentAddress1` = ?, `EMGIHPermanentCityId` = 30, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHPermanentPinCode` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:50, `EMGIHLastUpdated` = 2023-03-15 18:24:50 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:50', NULL),
(31, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: \'13-04-2022\' for column `ems`.`t11101l01`.`EMGIHDateOfMarriage` at row 1 (SQL: update `t11101l01` set `EMGIHMiddleName` = RRR, `EMGIHFullName` = Shishir RRR Donde, `EMGIHDepartmentId` = 1000, `EMGIHNationalityId` = 1000, `EMGIHRaceCastId` = 1000, `EMGIHPhysicalStatusId` = 1100, `EMGIHDateOfMarriage` = 13-04-2022, `EMGIHSpouseName` = DFBDFB, `EMGIHOfficeEmail` = WGWGW, `EMGIHOfficeExtension` = DBDFBD, `EMGIHOfficeLandLineNo` = DBFDBDF, `EMGIHOfficeMobileNo` = DBDFBD, `EMGIHPersonalEmail` = WGWFDDFBF, `EMGIHPersonalPhoneNo` = DBDFBDFB45598899, `EMGIHPANNo` = ERER, `EMGIHAadharNo` = DGER, `EMGIHDrivingLicenseNo` = DBDFBDB, `EMGIHPresentAddress2` = 1233, `EMGIHPresentAddress3` = 44566, `EMGIHPresentCityId` = 20, `EMGIHPresentStateId` = BR, `EMGIHPresentCountryId` = USA, `EMGIHPermanentAddress1` = ?, `EMGIHPermanentCityId` = 30, `EMGIHPermanentStateId` = AP, `EMGIHPermanentCountryId` = SG, `EMGIHPermanentPinCode` = ?, `EMGIHOTBasisId` = Hourly, `EMGIHDailyWagesId` = Hourly, `EMGIHPFAcctNo` = regrg45555, `EMGIHDateOfLetterSubmission` = 26-12-2022, `EMGIHDateOfResignation` = 09-12-2020, `EMGIHDateOfLeaving` = 16-12-2010, `EMGIHReason` = WWGWG, `EMGIHRemarksForFnF` = WGWGWGW, `EMGIHLeaveWithoutPayFrom` = 05-04-2021, `EMGIHLastCreated` = 2023-03-15 18:24:51, `EMGIHLastUpdated` = 2023-03-15 18:24:51 where `id` = 3)\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-15 06:24:51', NULL),
(32, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYPMHNAddInt\' cannot be null (SQL: update `t00901L01` set `FYPMHNMonth` = 5, `FYPMHMonth` = May, `FYPMHNAddInt` = ?, `FYPMHBiDesc` = ?, `FYPMHUser` = admin, `FYPMHLastCreated` = 2023-03-22 20:05:36, `FYPMHLastUpdated` = 2023-03-22 20:05:36 where `id` = 1)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-22 08:05:36', NULL),
(33, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYPMHNAddInt\' cannot be null (SQL: update `t00901L01` set `FYPMHNMonth` = 5, `FYPMHMonth` = May, `FYPMHNAddInt` = ?, `FYPMHBiDesc` = ?, `FYPMHUser` = admin, `FYPMHLastCreated` = 2023-03-22 20:05:39, `FYPMHLastUpdated` = 2023-03-22 20:05:39 where `id` = 1)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-22 08:05:39', NULL),
(34, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYPMHNAddInt\' cannot be null (SQL: update `t00901L01` set `FYPMHNMonth` = 5, `FYPMHMonth` = May, `FYPMHNAddInt` = ?, `FYPMHBiDesc` = ?, `FYPMHUser` = admin, `FYPMHLastCreated` = 2023-03-22 20:05:56, `FYPMHLastUpdated` = 2023-03-22 20:05:56 where `id` = 1)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-22 08:05:56', NULL),
(35, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYPMHNAddInt\' cannot be null (SQL: update `t00901L01` set `FYPMHNAddInt` = ?, `FYPMHBiDesc` = ?, `FYPMHUser` = admin, `FYPMHLastCreated` = 2023-03-22 20:07:27, `FYPMHLastUpdated` = 2023-03-22 20:07:27 where `id` = 2)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-22 08:07:27', NULL),
(36, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYPMHNAddInt\' cannot be null (SQL: update `t00901L01` set `FYPMHNAddInt` = ?, `FYPMHBiDesc` = ?, `FYPMHUser` = admin, `FYPMHLastCreated` = 2023-03-22 20:20:02, `FYPMHLastUpdated` = 2023-03-22 20:20:02 where `id` = 2)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-22 08:20:02', NULL),
(37, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYPMHNAddInt\' cannot be null (SQL: update `t00901L01` set `FYPMHNAddInt` = ?, `FYPMHBiDesc` = ?, `FYPMHUser` = admin, `FYPMHLastCreated` = 2023-03-22 20:22:12, `FYPMHLastUpdated` = 2023-03-22 20:22:12 where `id` = 2)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-22 08:22:12', NULL),
(38, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYPMHNAddInt\' cannot be null (SQL: update `t00901L01` set `FYPMHNAddInt` = ?, `FYPMHBiDesc` = ?, `FYPMHUser` = admin, `FYPMHLastCreated` = 2023-03-22 20:27:28, `FYPMHLastUpdated` = 2023-03-22 20:27:31 where `id` = 2)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-22 08:27:42', NULL),
(39, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYPMHNAddInt\' cannot be null (SQL: update `t00901L01` set `FYPMHNAddInt` = ?, `FYPMHBiDesc` = ?, `FYPMHUser` = admin, `FYPMHLastCreated` = 2023-03-22 20:33:32, `FYPMHLastUpdated` = 2023-03-22 20:33:32 where `id` = 2)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-22 08:33:32', NULL),
(40, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYPMHBiDesc\' cannot be null (SQL: update `t00901L01` set `FYPMHNMonth` = 8, `FYPMHMonth` = August, `FYPMHBiDesc` = ?, `FYPMHUser` = admin, `FYPMHLastCreated` = 2023-03-22 20:34:09, `FYPMHLastUpdated` = 2023-03-22 20:34:09 where `id` = 2)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-22 08:34:09', NULL),
(41, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYPMHBiDesc\' cannot be null (SQL: update `t00901L01` set `FYPMHNMonth` = 8, `FYPMHMonth` = August, `FYPMHBiDesc` = ?, `FYPMHUser` = admin, `FYPMHLastCreated` = 2023-03-22 20:34:44, `FYPMHLastUpdated` = 2023-03-22 20:34:44 where `id` = 2)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-22 08:34:44', NULL),
(42, '{\"message\":\"Undefined variable $results\",\"line\":72,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-24 08:34:29', NULL),
(43, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:00:10', NULL),
(44, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:06:52', NULL),
(45, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:06:58', NULL),
(46, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:07:30', NULL),
(47, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:08:41', NULL),
(48, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCurrentFY\' cannot be null (SQL: update `t05903L01` set `FYFYHCurrentFY` = ?, `FYFYHUser` = admin, `FYFYHLastUpdated` = 2023-03-24 13:09:16 where `id` = 21)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:09:16', NULL),
(49, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCurrentFY\' cannot be null (SQL: update `t05903L01` set `FYFYHCurrentFY` = ?, `FYFYHUser` = admin, `FYFYHLastUpdated` = 2023-03-24 13:17:43 where `id` = 21)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:17:43', NULL),
(50, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCurrentFY\' cannot be null (SQL: update `t05903L01` set `FYFYHCurrentFY` = ?, `FYFYHUser` = admin, `FYFYHLastUpdated` = 2023-03-24 13:18:04 where `id` = 21)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:18:04', NULL),
(51, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCurrentFY\' cannot be null (SQL: update `t05903L01` set `FYFYHCurrentFY` = ?, `FYFYHUser` = admin, `FYFYHLastUpdated` = 2023-03-24 13:24:15 where `id` = 21)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:24:16', NULL),
(52, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCurrentFY\' cannot be null (SQL: update `t05903L01` set `FYFYHCurrentFY` = ?, `FYFYHUser` = admin, `FYFYHLastUpdated` = 2023-03-24 13:25:29 where `id` = 21)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:25:31', NULL),
(53, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:31:21', NULL),
(54, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:31:56', NULL);
INSERT INTO `technical_error` (`id`, `error`, `created_at`, `updated_at`) VALUES
(55, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:32:28', NULL),
(56, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:32:33', NULL),
(57, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:33:20', NULL),
(58, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:33:48', NULL),
(59, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:34:03', NULL),
(60, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:34:20', NULL),
(61, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:34:24', NULL),
(62, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `1000` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:36:43', NULL),
(63, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'21\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `21` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 01:37:19', NULL),
(64, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'21\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `21` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 09:24:40', NULL),
(65, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'21\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `21` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 09:25:58', NULL),
(66, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:44:05', NULL),
(67, '{\"message\":\"Undefined variable $fy\",\"line\":71,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-24 11:50:32', NULL),
(68, '{\"message\":\"Undefined variable $fy\",\"line\":71,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-24 11:54:12', NULL),
(69, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:54:13', NULL),
(70, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:54:23', NULL),
(71, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:54:37', NULL),
(72, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:54:39', NULL),
(73, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:54:42', NULL),
(74, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:55:00', NULL),
(75, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:55:10', NULL),
(76, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:55:12', NULL),
(77, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:55:13', NULL),
(78, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2022 and `18` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-24 11:57:05', NULL),
(79, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":71,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 12:00:21', NULL),
(80, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":71,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 12:00:48', NULL),
(81, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":71,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 07:45:11', NULL),
(82, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":71,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 07:45:28', NULL),
(83, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":71,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 07:45:47', NULL),
(84, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":71,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 07:47:47', NULL),
(85, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":71,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 07:53:07', NULL),
(86, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'21\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `21` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-25 07:54:02', NULL),
(87, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'21\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `21` <> id)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-25 07:55:37', NULL),
(88, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":121,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 08:19:58', NULL),
(89, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":121,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 08:20:35', NULL),
(90, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":121,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 08:22:14', NULL),
(91, '{\"message\":\"A non-numeric value encountered\",\"line\":125,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 08:26:49', NULL),
(92, '{\"message\":\"Undefined variable $date\",\"line\":129,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 09:50:47', NULL),
(93, '{\"message\":\"Undefined variable $date\",\"line\":129,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 09:50:50', NULL),
(94, '{\"message\":\"Undefined variable $date\",\"line\":129,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 09:50:52', NULL),
(95, '{\"message\":\"Undefined variable $date\",\"line\":129,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 09:51:12', NULL),
(96, '{\"message\":\"Undefined variable $date\",\"line\":129,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 09:53:13', NULL),
(97, '{\"message\":\"Undefined variable $date\",\"line\":129,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 09:54:17', NULL),
(98, '{\"message\":\"Undefined variable $date\",\"line\":129,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 09:55:30', NULL),
(99, '{\"message\":\"Undefined variable $date\",\"line\":129,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-25 09:56:38', NULL),
(100, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCompanyId\' cannot be null (SQL: insert into `t05903L01` (`FYFYHCompanyId`, `FYFYHFiscalYearId`, `FYFYHLastCreated`, `FYFYHStartDate`, `FYFYHEndDate`, `FYFYHCurrentPeriod`, `FYFYHPeriodStartDate`, `FYFYHPeriodEndDate`, `FYFYHMarkForDeletion`, `FYFYHUser`, `FYFYHLastUpdated`) values (?, 2025, 2023-03-26 11:00:43, 01-08-2025, 30-04-2026, 1, 1970-01-01, 1970-01-31, 0, admin, 2023-03-26 11:00:43))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 11:00:43', NULL),
(101, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCompanyId\' cannot be null (SQL: insert into `t05903L01` (`FYFYHCompanyId`, `FYFYHFiscalYearId`, `FYFYHLastCreated`, `FYFYHStartDate`, `FYFYHEndDate`, `FYFYHCurrentPeriod`, `FYFYHPeriodStartDate`, `FYFYHPeriodEndDate`, `FYFYHMarkForDeletion`, `FYFYHUser`, `FYFYHLastUpdated`) values (?, 2025, 2023-03-26 11:00:58, 01-08-2025, 30-04-2026, 12, 1970-01-01, 1970-01-31, 0, admin, 2023-03-26 11:00:58))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 11:00:58', NULL),
(102, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCompanyId\' cannot be null (SQL: insert into `t05903L01` (`FYFYHCompanyId`, `FYFYHFiscalYearId`, `FYFYHLastCreated`, `FYFYHStartDate`, `FYFYHEndDate`, `FYFYHCurrentPeriod`, `FYFYHPeriodStartDate`, `FYFYHPeriodEndDate`, `FYFYHMarkForDeletion`, `FYFYHUser`, `FYFYHLastUpdated`) values (?, 2025, 2023-03-26 11:05:44, 01-08-2025, 30-04-2026, 12, 1970-01-01, 1970-01-31, 0, admin, 2023-03-26 11:05:44))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 11:05:44', NULL),
(103, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCompanyId\' cannot be null (SQL: insert into `t05903L01` (`FYFYHCompanyId`, `FYFYHFiscalYearId`, `FYFYHLastCreated`, `FYFYHStartDate`, `FYFYHEndDate`, `FYFYHCurrentPeriod`, `FYFYHPeriodStartDate`, `FYFYHPeriodEndDate`, `FYFYHMarkForDeletion`, `FYFYHUser`, `FYFYHLastUpdated`) values (?, 2024, 2023-03-26 11:44:40, 01-03-2024, 30-04-2025, 1, 1970-01-01, 1970-01-31, 0, admin, 2023-03-26 11:44:40))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 11:44:40', NULL),
(104, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCompanyId\' cannot be null (SQL: insert into `t05903L01` (`FYFYHCompanyId`, `FYFYHFiscalYearId`, `FYFYHLastCreated`, `FYFYHStartDate`, `FYFYHEndDate`, `FYFYHCurrentPeriod`, `FYFYHPeriodStartDate`, `FYFYHPeriodEndDate`, `FYFYHMarkForDeletion`, `FYFYHUser`, `FYFYHLastUpdated`) values (?, 2025, 2023-03-26 11:50:59, 01-03-2025, 30-04-2026, 12, 1970-01-01, 1970-01-31, 0, admin, 2023-03-26 11:50:59))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 11:50:59', NULL),
(105, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCompanyId\' cannot be null (SQL: insert into `t05903L01` (`FYFYHCompanyId`, `FYFYHFiscalYearId`, `FYFYHLastCreated`, `FYFYHStartDate`, `FYFYHEndDate`, `FYFYHCurrentPeriod`, `FYFYHPeriodStartDate`, `FYFYHPeriodEndDate`, `FYFYHMarkForDeletion`, `FYFYHUser`, `FYFYHLastUpdated`) values (?, 2025, 2023-03-26 11:59:30, 01-03-2025, 30-04-2026, 12, 1970-01-01, 1970-01-31, 0, admin, 2023-03-26 11:59:31))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 11:59:31', NULL),
(106, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2025 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 11:59:46', NULL),
(107, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2025 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:00:01', NULL),
(108, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2025 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:00:11', NULL),
(109, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2025 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:00:21', NULL),
(110, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2024 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:00:29', NULL),
(111, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2024 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:00:41', NULL),
(112, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2024 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:00:58', NULL),
(113, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2024 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:01:13', NULL),
(114, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2026 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:01:21', NULL),
(115, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2026 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:01:38', NULL),
(116, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2026 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:01:43', NULL),
(117, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2026 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:02:22', NULL),
(118, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:15:43', NULL),
(119, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:15:53', NULL),
(120, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:22:56', NULL),
(121, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:23:29', NULL),
(122, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:27:48', NULL),
(123, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId1000\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHFiscalYearId` = 2023 and `FYFYHCompanyId1000` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:28:51', NULL),
(124, '{\"message\":\"Undefined array key 1\",\"line\":1029,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Validation\\\\Concerns\\\\ValidatesAttributes.php\"}', '2023-03-26 12:45:06', NULL),
(125, '{\"message\":\"SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ems.fyfyhcompanyid\' doesn\'t exist (SQL: select count(*) as aggregate from `FYFYHCompanyId` where `FYFYHFiscalYearId1000` = 2023)\",\"line\":760,\"code\":\"42S02\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-26 12:45:34', NULL),
(126, '{\"message\":\"SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'01-03-2025\' for column `ems`.`t05903l01`.`FYFYHStartDate` at row 1 (SQL: insert into `t05903L01` (`FYFYHCompanyId`, `FYFYHFiscalYearId`, `FYFYHLastCreated`, `FYFYHStartDate`, `FYFYHEndDate`, `FYFYHCurrentPeriod`, `FYFYHPeriodStartDate`, `FYFYHPeriodEndDate`, `FYFYHMarkForDeletion`, `FYFYHUser`, `FYFYHLastUpdated`) values (1000, 2025, 2023-03-27 08:36:51, 01-03-2025, 30-04-2026, 1, 1970-01-01, 1970-01-31, 0, admin, 2023-03-27 08:36:51))\",\"line\":760,\"code\":\"22007\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-27 08:36:51', NULL),
(127, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'1000-2025\' for key \'FYFYHFiscalYear\' (SQL: insert into `t05903L01` (`FYFYHCompanyId`, `FYFYHFiscalYearId`, `FYFYHLastCreated`, `FYFYHStartDate`, `FYFYHEndDate`, `FYFYHCurrentPeriod`, `FYFYHPeriodStartDate`, `FYFYHPeriodEndDate`, `FYFYHMarkForDeletion`, `FYFYHUser`, `FYFYHLastUpdated`) values (1000, 2025, 2023-03-27 08:46:08, 2025-03-01, 2026-04-30, 1, 1970-01-01, 1970-01-31, 0, admin, 2023-03-27 08:46:08))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-27 08:46:08', NULL),
(128, '{\"message\":\"Undefined array key 3\",\"line\":1029,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Validation\\\\Concerns\\\\ValidatesAttributes.php\"}', '2023-03-28 11:58:23', NULL),
(129, '{\"message\":\"Undefined array key 3\",\"line\":1029,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Validation\\\\Concerns\\\\ValidatesAttributes.php\"}', '2023-03-28 11:59:21', NULL),
(130, '{\"message\":\"Undefined array key 3\",\"line\":1029,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Validation\\\\Concerns\\\\ValidatesAttributes.php\"}', '2023-03-28 12:03:17', NULL),
(131, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'\\n                    FYFYHCurrentFY\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `\\n                    FYFYHCurrentFY` = 1 and `27` <> FYFYHCompanyId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-28 12:06:05', NULL),
(132, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'\\n                    FYFYHCurrentFY\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `\\n                    FYFYHCurrentFY` = 1 and `id` <> FYFYHCompanyId27)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-28 12:06:12', NULL),
(133, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCurrentFY27\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHCompanyId` = 1 and `FYFYHCurrentFY27` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-28 12:08:10', NULL),
(134, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'127\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHCompanyId` = 1 and `127` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-28 12:08:41', NULL),
(135, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'127\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHCompanyId` = 1 and `127` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-28 12:09:38', NULL),
(136, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'127\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHCurrentFY` = 1 and `127` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-28 12:13:35', NULL),
(137, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'1\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHCurrentFY` = 1 and `1` <> FYFYHFiscalYearId)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-28 12:14:16', NULL),
(138, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'FYFYHCurrentFY\' cannot be null (SQL: update `t05903L01` set `FYFYHCurrentFY` = ?, `FYFYHLastUpdated` = 2023-03-28 12:16:49 where `id` = 27)\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-28 12:16:49', NULL),
(139, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FYFYHCompanyId18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHCurrentFY` = 1 and `FYFYHCompanyId18` <> 1)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-28 12:22:22', NULL),
(140, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'id18\' in \'where clause\' (SQL: select count(*) as aggregate from `t05903L01` where `FYFYHCurrentFY` = 1 and `id18` <> 1)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-28 12:23:23', NULL),
(141, '{\"message\":\"Undefined array key 1\",\"line\":1029,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Validation\\\\Concerns\\\\ValidatesAttributes.php\"}', '2023-03-28 12:24:52', NULL),
(142, '{\"message\":\"SQLSTATE[HY000]: General error: 1364 Field \'id\' doesn\'t have a default value (SQL: insert into `t05903L0111` (`FYPPDCompanyId`, `FYPPDFiscalYearId`, `FYPPDLastCreated`, `FYPPDStartDate`, `FYPPDEndDate`, `FYPPDPeriod`, `FYPPDPeriodStartDate`, `FYPPDPeriodEndDate`, `FYPPDMarkForDeletion`, `FYPPDUser`, `FYPPDLastUpdated`) values (1000, 2022, 2023-03-29 07:45:06, 2022-04-01 00:00:00, 2023-03-31 00:00:00, 1, 2022-03-01 00:00:00, 2022-03-31 00:00:00, 0, admin, 2023-03-29 07:45:06))\",\"line\":760,\"code\":\"HY000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-29 07:45:06', NULL),
(143, '{\"message\":\"Attempt to read property \\\"id\\\" on null\",\"line\":186,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-29 07:55:07', NULL),
(144, '{\"message\":\"Attempt to read property \\\"id\\\" on null\",\"line\":186,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-29 07:56:12', NULL),
(145, '{\"message\":\"Attempt to read property \\\"FYPPDFiscalYearId\\\" on null\",\"line\":186,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-29 07:57:22', NULL),
(146, '{\"message\":\"SQLSTATE[HY000]: General error: 1364 Field \'FYPPDCompanyId\' doesn\'t have a default value (SQL: insert into `t05903L0111` (`FYPPDPeriod`, `FYPPDPeriodStartDate`, `FYPPDPeriodEndDate`, `FYPPDMarkForDeletion`, `FYPPDUser`, `FYPPDLastUpdated`) values (1, 2026-03-01 00:00:00, 2026-03-31 00:00:00, 0, admin, 2023-03-29 07:59:46))\",\"line\":760,\"code\":\"HY000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-29 07:59:46', NULL),
(147, '{\"message\":\"SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ems.fyfyhcompanyid\' doesn\'t exist (SQL: select count(*) as aggregate from `FYFYHCompanyId` where `FYFYHFiscalYearId` = 1 and `118` <> FYFYHCurrentFY)\",\"line\":760,\"code\":\"42S02\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-03-29 08:14:35', NULL),
(148, '{\"message\":\"Undefined array key 1\",\"line\":1029,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Validation\\\\Concerns\\\\ValidatesAttributes.php\"}', '2023-03-29 08:15:35', NULL),
(149, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":86,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-31 07:47:52', NULL),
(150, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":86,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-31 07:48:05', NULL),
(151, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":86,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-31 07:48:25', NULL),
(152, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":86,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-31 07:51:58', NULL),
(153, '{\"message\":\"Attempt to read property \\\"FYPMHMonth\\\" on null\",\"line\":86,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\FiscalYear\\\\FiscalYearController.php\"}', '2023-03-31 07:52:49', NULL),
(154, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'PMITHIMarkForDeletion\' in \'field list\' (SQL: update `t11906l01` set `PMITHIMarkForDeletion` = 0, `PMITHIUser` = admin, `PMITHILastUpdated` = 2023-04-05 12:09:46 where `id` = 6)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-05 12:09:46', NULL),
(155, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'PMDTHDeductionId\' in \'where clause\' (SQL: select count(*) as aggregate from `t11906l01` where `PMDTHDeductionId` = 1400 and `id` <> 12)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-06 07:39:26', NULL),
(156, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'PMDTHDeductionId\' in \'where clause\' (SQL: select count(*) as aggregate from `t11906l01` where `PMDTHDeductionId` = 1400 and `id` <> 12)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-06 07:39:29', NULL),
(157, '{\"message\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'PMDTHDeductionId\' in \'where clause\' (SQL: select count(*) as aggregate from `t11906l01` where `PMDTHDeductionId` = 1400 and `id` <> 12)\",\"line\":760,\"code\":\"42S22\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-06 07:39:38', NULL),
(158, '{\"message\":\"SQLSTATE[HY000]: General error: 1364 Field \'PMDTHDeductionIdK\' doesn\'t have a default value (SQL: insert into `t11906l02` (`PMDTHDeductionId`, `PMDTHLastCreated`, `PMDTHDesc1`, `PMDTHDesc2`, `PMDTHIsTaxExempted`, `PMDTHRuleId`, `PMDTHDeductionCycle`, `PMDTHPrintingSeq`, `PMDTHRoundingStrategy`, `PMDTHMarkForDeletion`, `PMDTHUser`, `PMDTHLastUpdated`) values (6000, 2023-04-06 07:44:19, test, cdc, ?, D1000, P, 023, 1100, 0, admin, 2023-04-06 07:44:19))\",\"line\":760,\"code\":\"HY000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-06 07:44:19', NULL),
(159, '{\"message\":\"SQLSTATE[HY000]: General error: 1364 Field \'PMDTHDeductionIdK\' doesn\'t have a default value (SQL: insert into `t11906l02` (`PMDTHDeductionId`, `PMDTHLastCreated`, `PMDTHDesc1`, `PMDTHDesc2`, `PMDTHIsTaxExempted`, `PMDTHRuleId`, `PMDTHDeductionCycle`, `PMDTHPrintingSeq`, `PMDTHRoundingStrategy`, `PMDTHMarkForDeletion`, `PMDTHUser`, `PMDTHLastUpdated`) values (6000, 2023-04-06 07:44:20, test, cdc, ?, D1000, P, 023, 1100, 0, admin, 2023-04-06 07:44:20))\",\"line\":760,\"code\":\"HY000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-06 07:44:20', NULL),
(160, '{\"message\":\"SQLSTATE[HY000]: General error: 1364 Field \'PMDTHDeductionIdK\' doesn\'t have a default value (SQL: insert into `t11906l02` (`PMDTHDeductionId`, `PMDTHLastCreated`, `PMDTHDesc1`, `PMDTHDesc2`, `PMDTHIsTaxExempted`, `PMDTHRuleId`, `PMDTHDeductionCycle`, `PMDTHPrintingSeq`, `PMDTHRoundingStrategy`, `PMDTHMarkForDeletion`, `PMDTHUser`, `PMDTHLastUpdated`) values (6000, 2023-04-06 07:44:25, test, cdc, ?, D1000, P, 023, 1100, 0, admin, 2023-04-06 07:44:25))\",\"line\":760,\"code\":\"HY000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-06 07:44:25', NULL),
(161, '{\"message\":\"SQLSTATE[HY000]: General error: 1364 Field \'PMDTHDeductionIdK\' doesn\'t have a default value (SQL: insert into `t11906l02` (`PMDTHDeductionId`, `PMDTHLastCreated`, `PMDTHDesc1`, `PMDTHDesc2`, `PMDTHIsTaxExempted`, `PMDTHRuleId`, `PMDTHDeductionCycle`, `PMDTHPrintingSeq`, `PMDTHRoundingStrategy`, `PMDTHMarkForDeletion`, `PMDTHUser`, `PMDTHLastUpdated`) values (6000, 2023-04-06 07:44:40, test, cdc, ?, D1000, P, 023, 1100, 0, admin, 2023-04-06 07:44:40))\",\"line\":760,\"code\":\"HY000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-06 07:44:40', NULL),
(162, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMDTHDeductionIdK\' cannot be null (SQL: insert into `t11906l02` (`PMDTHDeductionId`, `PMDTHDeductionIdK`, `PMDTHLastCreated`, `PMDTHDesc1`, `PMDTHDesc2`, `PMDTHIsTaxExempted`, `PMDTHRuleId`, `PMDTHDeductionCycle`, `PMDTHPrintingSeq`, `PMDTHRoundingStrategy`, `PMDTHMarkForDeletion`, `PMDTHUser`, `PMDTHLastUpdated`) values (6000, ?, 2023-04-06 07:49:35, dcec, eedq, ?, D3000, P, 32, 1100, 0, admin, 2023-04-06 07:49:35))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-06 07:49:35', NULL),
(163, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMDTHDeductionIdK\' cannot be null (SQL: insert into `t11906l02` (`PMDTHDeductionId`, `PMDTHDeductionIdK`, `PMDTHLastCreated`, `PMDTHDesc1`, `PMDTHDesc2`, `PMDTHIsTaxExempted`, `PMDTHRuleId`, `PMDTHDeductionCycle`, `PMDTHPrintingSeq`, `PMDTHRoundingStrategy`, `PMDTHMarkForDeletion`, `PMDTHUser`, `PMDTHLastUpdated`) values (6000, ?, 2023-04-06 07:53:03, wecwec, wewe, ?, D4000, P, 022, 1300, 0, admin, 2023-04-06 07:53:03))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-06 07:53:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `theme_setting`
--

CREATE TABLE `theme_setting` (
  `id` int(11) NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `theme` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme_setting`
--

INSERT INTO `theme_setting` (`id`, `type`, `theme`) VALUES
(1, 'table', 'purple_Browser1D_3SIS'),
(2, 'table', 'purple_Browser2D_3SIS'),
(3, 'modal', 'purple_ContentModal1D_3SIS'),
(4, 'modal', 'purple_ContentModal2D_3SIS'),
(5, 'card', 'purple_Card1D_3SIS');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `theme`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@cork.com', NULL, '$2y$10$4.qdQyWtb/vE0QFvV3H1qOQWFsJ.qo732L2mwdnpWzzt.6LAMy49S', NULL, '{\"table\":2, \"modal\": 3,\"card\":5}', '2022-11-01 23:44:50', '2022-11-01 23:44:50'),
(2, 'krishna', 'krishna@gmail.com', NULL, '$2y$10$4.qdQyWtb/vE0QFvV3H1qOQWFsJ.qo732L2mwdnpWzzt.6LAMy49S', NULL, '{\"table\":1, \"modal\": 4,\"card\":5}', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t00900l01`
--
ALTER TABLE `t00900l01`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t00900l04`
--
ALTER TABLE `t00900l04`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t00900l05`
--
ALTER TABLE `t00900l05`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t00900l06`
--
ALTER TABLE `t00900l06`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t00900l0611`
--
ALTER TABLE `t00900l0611`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t00901l01`
--
ALTER TABLE `t00901l01`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FYPMHPeriodId` (`FYPMHPeriodId`);

--
-- Indexes for table `t00903l03`
--
ALTER TABLE `t00903l03`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PMRDHRuleId` (`PMRDHRuleId`);

--
-- Indexes for table `t00903l04`
--
ALTER TABLE `t00903l04`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PMPCHCycleId` (`PMPCHCycleId`);

--
-- Indexes for table `t00905l01`
--
ALTER TABLE `t00905l01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t05901l01`
--
ALTER TABLE `t05901l01`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `GMCOHCompId` (`GMCOHCompanyId`);

--
-- Indexes for table `t05901l03`
--
ALTER TABLE `t05901l03`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `GMCMHCountryId` (`GMCMHCountryId`);

--
-- Indexes for table `t05901l04`
--
ALTER TABLE `t05901l04`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `GMSMHStateId` (`GMSMHStateId`,`GMSMHCountryId`);

--
-- Indexes for table `t05901l05`
--
ALTER TABLE `t05901l05`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `GMCTHCityId` (`GMCTHCityId`,`GMCTHStateId`,`GMCTHCountryId`);

--
-- Indexes for table `t05901l06`
--
ALTER TABLE `t05901l06`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `GMLMHCompanyId` (`GMLMHCompanyId`,`GMLMHLocationId`,`GMLMHCityId`,`GMLMHStateId`,`GMLMHCountryId`);

--
-- Indexes for table `t05901l07`
--
ALTER TABLE `t05901l07`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `GMCRHCurrencyId` (`GMCRHCurrencyId`);

--
-- Indexes for table `t05902l01`
--
ALTER TABLE `t05902l01`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `BMBNHBankId` (`BMBNHBankId`);

--
-- Indexes for table `t05902l02`
--
ALTER TABLE `t05902l02`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `BMBRHBranchId` (`BMBRHBranchId`,`BMBRHBankId`,`BMBRHIFSCId`);

--
-- Indexes for table `t05902l03`
--
ALTER TABLE `t05902l03`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `BMATHAcctId` (`BMATHAcctId`);

--
-- Indexes for table `t05902l04`
--
ALTER TABLE `t05902l04`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `BMPMHPaymentModeId` (`BMPMHPaymentModeId`);

--
-- Indexes for table `t05903l01`
--
ALTER TABLE `t05903l01`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FYFYHFiscalYear` (`FYFYHCompanyId`,`FYFYHFiscalYearId`);

--
-- Indexes for table `t05903l0111`
--
ALTER TABLE `t05903l0111`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t05903l02`
--
ALTER TABLE `t05903l02`
  ADD PRIMARY KEY (`FYCAHUniqueId`),
  ADD UNIQUE KEY `FYCAHCalendarId` (`FYCAHCalendarId`);

--
-- Indexes for table `t92`
--
ALTER TABLE `t92`
  ADD UNIQUE KEY `MNCompId` (`MNCompId`,`MNSystemId`,`MNRootCode`,`MNParentCode`,`MNChildCode`);

--
-- Indexes for table `t11101l01`
--
ALTER TABLE `t11101l01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11901l01`
--
ALTER TABLE `t11901l01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11901l02`
--
ALTER TABLE `t11901l02`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11901l03`
--
ALTER TABLE `t11901l03`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11901l04`
--
ALTER TABLE `t11901l04`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11901l05`
--
ALTER TABLE `t11901l05`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11901l06`
--
ALTER TABLE `t11901l06`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11901l07`
--
ALTER TABLE `t11901l07`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11901l08`
--
ALTER TABLE `t11901l08`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11903l01`
--
ALTER TABLE `t11903l01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11903l02`
--
ALTER TABLE `t11903l02`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11903l03`
--
ALTER TABLE `t11903l03`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11903l04`
--
ALTER TABLE `t11903l04`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11906l01`
--
ALTER TABLE `t11906l01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11906l010211`
--
ALTER TABLE `t11906l010211`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11906l02`
--
ALTER TABLE `t11906l02`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t11906l0211`
--
ALTER TABLE `t11906l0211`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_error`
--
ALTER TABLE `technical_error`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_setting`
--
ALTER TABLE `theme_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t00900l01`
--
ALTER TABLE `t00900l01`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t00900l04`
--
ALTER TABLE `t00900l04`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t00900l05`
--
ALTER TABLE `t00900l05`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t00900l06`
--
ALTER TABLE `t00900l06`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t00900l0611`
--
ALTER TABLE `t00900l0611`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t00901l01`
--
ALTER TABLE `t00901l01`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `t00903l03`
--
ALTER TABLE `t00903l03`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t00903l04`
--
ALTER TABLE `t00903l04`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t00905l01`
--
ALTER TABLE `t00905l01`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t05901l01`
--
ALTER TABLE `t05901l01`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t05901l03`
--
ALTER TABLE `t05901l03`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t05901l04`
--
ALTER TABLE `t05901l04`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `t05901l05`
--
ALTER TABLE `t05901l05`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `t05901l06`
--
ALTER TABLE `t05901l06`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `t05901l07`
--
ALTER TABLE `t05901l07`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t05902l01`
--
ALTER TABLE `t05902l01`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t05902l02`
--
ALTER TABLE `t05902l02`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t05902l03`
--
ALTER TABLE `t05902l03`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t05902l04`
--
ALTER TABLE `t05902l04`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t05903l01`
--
ALTER TABLE `t05903l01`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `t05903l0111`
--
ALTER TABLE `t05903l0111`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t05903l02`
--
ALTER TABLE `t05903l02`
  MODIFY `FYCAHUniqueId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t11101l01`
--
ALTER TABLE `t11101l01`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t11901l01`
--
ALTER TABLE `t11901l01`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11901l02`
--
ALTER TABLE `t11901l02`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11901l03`
--
ALTER TABLE `t11901l03`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11901l04`
--
ALTER TABLE `t11901l04`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11901l05`
--
ALTER TABLE `t11901l05`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11901l06`
--
ALTER TABLE `t11901l06`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11901l07`
--
ALTER TABLE `t11901l07`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11901l08`
--
ALTER TABLE `t11901l08`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11903l01`
--
ALTER TABLE `t11903l01`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11903l02`
--
ALTER TABLE `t11903l02`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11903l03`
--
ALTER TABLE `t11903l03`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11903l04`
--
ALTER TABLE `t11903l04`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11906l01`
--
ALTER TABLE `t11906l01`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `t11906l010211`
--
ALTER TABLE `t11906l010211`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `t11906l02`
--
ALTER TABLE `t11906l02`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `t11906l0211`
--
ALTER TABLE `t11906l0211`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `technical_error`
--
ALTER TABLE `technical_error`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `theme_setting`
--
ALTER TABLE `theme_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
