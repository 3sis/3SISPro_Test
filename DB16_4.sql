-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 16, 2023 at 10:14 AM
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
-- Database: `ems_db`
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
(1, '1000', '1000', '10', 'MH', 'IN', 'Head Office-Chempaka', 'Head Office-Chempaka', 'Head Office-Chempaka', 0, '3SIS', '2021-11-22 14:21:02', '2022-02-09 14:29:59', NULL),
(2, '1000', '1200', '30', 'AP', 'SG', 'L\'école Chempaka\"Silver Rocks\"', 'L\'école Chempaka\"Silver Rocks\"', 'L\'école Chempaka\"Silver Rocks\"', 0, 'admin', '2023-01-18 18:48:33', '2023-01-18 18:48:33', NULL),
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
(1, '1800', '1000', '1234567890', 'BOM Branch', 'BOM Branch', NULL, 0, '3SIS', '2021-11-22 10:52:26', '2021-11-30 16:06:15', NULL),
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
(3, '1000', '20', '12008', '1100', 'M', 'Shishir', NULL, 'Donde', 'Shishir  Donde', '2021-11-01', '2021-04-01', '1970-01-01', '1000', '1000', '1000', '2100', '1000', '1000', '1000', NULL, NULL, '1100', '1000', '2022-04-04', 'BBMMB', 'SDSD', 'HMH', 'JJJLJ', '441878', 'GJJGG', 'CBCBHFH', './,.MNBM', 'N,N,,', 'NNNM', NULL, 'Pune', NULL, NULL, '30', 'AP', 'SG', '411038', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', '1000', '1000', '1234567890', '1000', '123344', 0, 'Hourly', 0, 'Hourly', 0, '15000.00', 1, '15000.00', '112122', NULL, 1, '9999-12-31', '9999-12-31', '9999-12-31', 'DFFD', 'SS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'admin', '2023-03-15 21:51:01', '2023-03-15 21:51:01', NULL),
(4, '1000', '10', '12010', '1000', 'F', 'Swapna 1', NULL, 'Donde 1', 'Swapna 1  Donde 1', '2022-03-29', '2021-04-04', '1970-01-01', '1100', '1000', '1000', '2700', '1200', NULL, '1000', NULL, NULL, '1000', '1000', '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pune', NULL, NULL, '10', 'MH', 'IN', '411048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', '1000', '1000', '1234567890', '1000', '1345', 1, 'Hourly', 1, 'Hourly', 1, '15000.00', 1, '15000.00', NULL, NULL, 1, '9999-12-31', '9999-12-31', '9999-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'admin', '2023-03-20 10:14:40', '2023-03-20 10:14:40', NULL);

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
(2, '1100', 'Chief Coordinator', 'Chief Coordinator', 'Chief Coordinator', 0, '3SIS', '2021-12-03 15:13:07', '2021-12-03 15:13:28', NULL),
(3, '3400', 'Facilitator-Senior School', 'Facilitator-Senior School', 'Facilitator-Senior School', 0, '3SIS', '2021-12-03 15:13:07', '2021-12-03 15:13:28', NULL);

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
(1, '2100', 'Dept of Accounting', 'Dept of Accounting', 'Dept of Accounting', 0, '3SIS', '2021-12-03 15:41:58', '2021-12-03 15:41:58', NULL),
(2, '2700', 'Dept of Administration', 'Dept of Administration', 'Dept of Administration', 0, '3SIS', '2021-12-03 15:42:47', '2021-12-03 15:43:05', NULL),
(3, '2300', 'Dept. of History & Civics', 'Dept. of History & Civics', 'Dept. of History & Civics', 0, '3SIS', '2023-04-12 20:23:21', '2023-04-12 20:23:21', '2023-04-12 16:52:05'),
(4, '2500', 'Dept. of Geography', 'Dept. of Geography', 'Dept. of Geography', 0, '3SIS', '2023-04-12 20:23:21', '2023-04-12 20:23:21', '2023-04-12 16:52:05');

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
(2, '1100', 'Contract', 'Contract', 'Contract', 0, '3SIS', '2021-12-03 15:47:09', '2021-12-03 15:47:57', NULL),
(3, '1300', 'Permanent', 'Permanent', 'Permanent', 0, '3SIS', '2021-12-03 15:47:09', '2021-12-03 15:47:57', NULL);

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
(3, '4000', 'I4000', 'HRA', 'HRA', 1, 'I5000', '10.00', '0.00', 'P', 3, '1000', 11000, 0, 'admin', '2021-12-08 06:45:43', '2023-04-14 09:30:46', NULL),
(4, '1300', 'I1300', 'Others', 'Others', 1, 'Z1000', '0.00', '0.00', 'M', 4, '1000', 18000, 0, '3SIS', '2021-12-08 06:46:44', '2021-12-08 06:46:44', NULL),
(5, '1400', 'I1400', 'CCA', 'CCA', 1, 'Z1000', '0.00', '0.00', 'M', 5, '1000', 12000, 0, '3SIS', '2021-12-08 06:47:24', '2021-12-08 06:47:24', NULL),
(6, '1500', 'I1500', 'Bonus', 'Bonus', 1, 'Z1000', '0.00', '0.00', 'P', 6, '1000', 14000, 1, 'admin', '2021-12-08 06:48:34', '2023-04-05 12:11:55', NULL),
(13, '11', 'I11', '22222', '33', NULL, 'I5000', '0.00', '0.00', 'P', 5, '1100', NULL, 0, 'admin', '2023-04-14 22:55:59', '2023-04-15 00:02:47', NULL),
(14, '22', 'I22', '33', '44', NULL, 'I5000', '0.00', '0.00', 'P', 2, '1200', NULL, 0, 'admin', '2023-04-15 00:11:08', '2023-04-15 00:17:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t11906l010211`
--

CREATE TABLE `t11906l010211` (
  `id` bigint(20) NOT NULL,
  `PMIDDIncDedId` varchar(10) NOT NULL,
  `PMIDDIncDedIdK` varchar(20) DEFAULT NULL,
  `PMIDDIncOrDed` varchar(1) NOT NULL,
  `PMIDDDesc` varchar(100) DEFAULT NULL,
  `PMIDDPeriodId` varchar(150) NOT NULL DEFAULT '12',
  `PMIDDMarkForDeletion` tinyint(1) NOT NULL DEFAULT 0,
  `PMIDDUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `PMIDDLastCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMIDDLastUpdated` datetime NOT NULL DEFAULT current_timestamp(),
  `PMIDDDeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t11906l010211`
--

INSERT INTO `t11906l010211` (`id`, `PMIDDIncDedId`, `PMIDDIncDedIdK`, `PMIDDIncOrDed`, `PMIDDDesc`, `PMIDDPeriodId`, `PMIDDMarkForDeletion`, `PMIDDUser`, `PMIDDLastCreated`, `PMIDDLastUpdated`, `PMIDDDeletedAt`) VALUES
(1, '1000', 'D1000', 'D', 'test', '12', 0, '3SIS', '2023-04-06 12:18:40', '2023-04-06 12:18:40', '2023-04-06 08:47:44'),
(28, '11', 'I11', 'I', '22222', '1', 0, 'admin', '2023-04-15 00:02:47', '2023-04-15 00:02:47', NULL),
(30, '22', 'I22', 'I', '33', '1,9', 0, 'admin', '2023-04-15 00:17:15', '2023-04-15 00:17:15', NULL);

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
-- Table structure for table `t22501`
--

CREATE TABLE `t22501` (
  `PYMPHUniqueId` double NOT NULL,
  `PYMPHCompany` varchar(5) CHARACTER SET latin1 NOT NULL,
  `PYMPHLocId` varchar(10) CHARACTER SET latin1 NOT NULL,
  `PYMPHEmpCode` varchar(10) CHARACTER SET latin1 NOT NULL,
  `PYMPHDesigId` varchar(10) CHARACTER SET latin1 NOT NULL,
  `PYMPHFiscalYear` varchar(4) CHARACTER SET latin1 NOT NULL,
  `PYMPHFiscalPeriod` smallint(6) NOT NULL,
  `PYMPHFiscalMonth` varchar(5) CHARACTER SET latin1 NOT NULL,
  `PYMPHFromDate` date NOT NULL,
  `PYMPHToDate` date NOT NULL,
  `PYMPHCaldendarDays` double NOT NULL,
  `PYMPHAbsentDays` double NOT NULL,
  `PYMPHWeeklyOff` double NOT NULL,
  `PYMPHPublicHoliday` double NOT NULL,
  `PYMPHPaidLeaves` double NOT NULL,
  `PYMPHLeaveWithoutyPay` double NOT NULL,
  `PYMPHPaidDays` double NOT NULL,
  `PYMPHGrossIncome` double NOT NULL,
  `PYMPHGrossPay` double NOT NULL,
  `PYMPHPayrollAmt` double NOT NULL,
  `PYMPHUserEditedAmt` double NOT NULL,
  `PYMPHGrossDeduction` double NOT NULL,
  `PYMPHNetDeduction` double NOT NULL,
  `PYMPHGrossCompContri` double NOT NULL,
  `PYMPHNetCompContri` double NOT NULL,
  `PYMPHGrossPaid` double NOT NULL,
  `PYMPHNetPaid` double NOT NULL,
  `PYMPHEmploymentType` varchar(10) CHARACTER SET latin1 NOT NULL,
  `PYMPHGrade` varchar(10) CHARACTER SET latin1 NOT NULL,
  `PYMPHDeptId` varchar(10) CHARACTER SET latin1 NOT NULL,
  `PYMPHSlashSalary` double NOT NULL,
  `PYMPHLWPSalary` double NOT NULL,
  `PYMPHUser` varchar(20) CHARACTER SET latin1 NOT NULL,
  `PYMPHSysDate` date NOT NULL,
  `PYMPHSysTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t22501`
--

INSERT INTO `t22501` (`PYMPHUniqueId`, `PYMPHCompany`, `PYMPHLocId`, `PYMPHEmpCode`, `PYMPHDesigId`, `PYMPHFiscalYear`, `PYMPHFiscalPeriod`, `PYMPHFiscalMonth`, `PYMPHFromDate`, `PYMPHToDate`, `PYMPHCaldendarDays`, `PYMPHAbsentDays`, `PYMPHWeeklyOff`, `PYMPHPublicHoliday`, `PYMPHPaidLeaves`, `PYMPHLeaveWithoutyPay`, `PYMPHPaidDays`, `PYMPHGrossIncome`, `PYMPHGrossPay`, `PYMPHPayrollAmt`, `PYMPHUserEditedAmt`, `PYMPHGrossDeduction`, `PYMPHNetDeduction`, `PYMPHGrossCompContri`, `PYMPHNetCompContri`, `PYMPHGrossPaid`, `PYMPHNetPaid`, `PYMPHEmploymentType`, `PYMPHGrade`, `PYMPHDeptId`, `PYMPHSlashSalary`, `PYMPHLWPSalary`, `PYMPHUser`, `PYMPHSysDate`, `PYMPHSysTime`) VALUES
(200623115446696, '1000', '1200', '12007', '3400', '2020', 3, 'Jun', '2020-06-01', '2020-06-30', 30, 0, 8, 0, 0, 0, 30, 30252, 30252, 31765, 31765, 0, -1500, 0, -1500, 30252, 30265, '1', '', '', 0, 0, '3SIS', '2020-07-23', '09:16:27'),
(200623115446697, '1000', '1200', '12008', '3400', '2020', 3, 'Jun', '2020-06-01', '2020-06-30', 30, 0, 8, 0, 0, 0, 30, 31248, 31248, 32810, 32810, 0, -1500, 0, -1500, 31248, 31310, '1', '', '', 0, 0, '3SIS', '2020-07-23', '09:16:27'),
(200623115446699, '1000', '1200', '12010', '3400', '2020', 3, 'Jun', '2020-06-01', '2020-06-30', 30, 0, 8, 0, 0, 0, 30, 30653, 30653, 32186, 32186, 0, -1500, 0, -1500, 30653, 30686, '1', '', '', 0, 0, '3SIS', '2020-07-23', '09:16:27'),
(200623115446700, '1000', '1200', '12011', '3400', '2020', 3, 'Jun', '2020-06-01', '2020-06-30', 30, 0, 8, 0, 0, 0, 30, 26756, 26756, 29332, 29332, 0, -1500, 0, -1500, 26756, 27832, '1', '', '', 0, 0, '3SIS', '2020-07-23', '09:16:27'),
(200623115447122, '1000', '1200', '12007', '3400', '2020', 4, 'Jul', '2020-07-01', '2020-07-31', 31, 0, 8, 2, 0, 0, 31, 30252, 30252, 31765, 31765, 0, -1500, 0, -1500, 30252, 30265, '1', '', '', 0, 0, '3SIS', '2020-07-31', '14:12:16'),
(200623115447123, '1000', '1200', '12008', '3400', '2020', 4, 'Jul', '2020-07-01', '2020-07-31', 31, 0, 8, 2, 0, 0, 31, 31248, 31248, 32810, 32810, 0, -1500, 0, -1500, 31248, 31310, '1', '', '', 0, 0, '3SIS', '2020-07-31', '14:12:16'),
(200623115447125, '1000', '1200', '12010', '3400', '2020', 4, 'Jul', '2020-07-01', '2020-07-31', 31, 0, 8, 2, 0, 0, 31, 30653, 30653, 32186, 32186, 0, -1500, 0, -1500, 30653, 30686, '1', '', '', 0, 0, '3SIS', '2020-07-31', '14:12:16'),
(200623115447126, '1000', '1200', '12011', '3400', '2020', 4, 'Jul', '2020-07-01', '2020-07-31', 31, 0, 0, 0, 0, 1, 30, 26756, 26756, 28385.81, 28385.81, 0, -1500, 0, -1500, 26756, 26885.81, '1', '', '', 0, 863.1, '3SIS', '2020-07-31', '14:12:16'),
(200623115447812, '1000', '1200', '12007', '3400', '2020', 5, 'Aug', '2020-08-01', '2020-08-31', 31, 0, 10, 2, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -1500, 0, -1500, 31765, 30265, '1', '', '', 0, 0, '3SIS', '2020-08-28', '11:45:36'),
(200623115447813, '1000', '1200', '12008', '3400', '2020', 5, 'Aug', '2020-08-01', '2020-08-31', 31, 0, 10, 2, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -1500, 0, -1500, 32810, 31310, '1', '', '', 0, 0, '3SIS', '2020-08-28', '11:45:36'),
(200623115447815, '1000', '1200', '12010', '3400', '2020', 5, 'Aug', '2020-08-01', '2020-08-31', 31, 0, 10, 2, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -1500, 0, -1500, 32186, 30686, '1', '', '', 0, 0, '3SIS', '2020-08-28', '11:45:37'),
(200623115447816, '1000', '1200', '12011', '3400', '2020', 5, 'Aug', '2020-08-01', '2020-08-31', 31, 0, 10, 2, 0, 0, 31, 29332, 29332, 29332, 29332, 0, -1500, 0, -1500, 29332, 27832, '1', '', '', 0, 0, '3SIS', '2020-08-28', '11:45:37'),
(200623115448348, '1000', '1200', '12007', '3400', '2020', 1, 'Apr', '2020-04-01', '2020-04-30', 30, 0, 8, 3, 0, 0, 30, 30252, 30252, 30252, 30252, 0, -1800, 0, -1950, 30252, 28452, '1', '', '', 0, 0, '3SIS', '2020-09-09', '16:23:06'),
(200623115448349, '1000', '1200', '12008', '3400', '2020', 1, 'Apr', '2020-04-01', '2020-04-30', 30, 0, 8, 3, 0, 0, 30, 31248, 31248, 31248, 31248, 0, -1800, 0, -1950, 31248, 29448, '1', '', '', 0, 0, '3SIS', '2020-09-09', '16:23:06'),
(200623115448351, '1000', '1200', '12010', '3400', '2020', 1, 'Apr', '2020-04-01', '2020-04-30', 30, 0, 8, 3, 0, 0, 30, 30653, 30653, 30653, 30653, 0, -1800, 0, -1950, 30653, 28853, '1', '', '', 0, 0, '3SIS', '2020-09-09', '16:23:06'),
(200623115448352, '1000', '1200', '12011', '3400', '2020', 1, 'Apr', '2020-04-01', '2020-04-30', 30, 0, 8, 3, 0, 0, 30, 25756, 25756, 25756, 25756, 0, -1800, 0, -1950, 25756, 23956, '1', '', '', 0, 0, '3SIS', '2020-09-09', '16:23:06'),
(200623115448553, '1000', '1200', '12007', '3400', '2020', 2, 'May', '2020-05-01', '2020-05-31', 31, 0, 10, 1, 0, 0, 31, 30252, 30252, 30252, 30252, 0, -1500, 0, -1650, 30252, 28752, '1', '', '', 0, 0, '3SIS', '2020-09-11', '13:10:49'),
(200623115448554, '1000', '1200', '12008', '3400', '2020', 2, 'May', '2020-05-01', '2020-05-31', 31, 0, 10, 1, 0, 0, 31, 31248, 31248, 31248, 31248, 0, -1500, 0, -1650, 31248, 29748, '1', '', '', 0, 0, '3SIS', '2020-09-11', '13:10:49'),
(200623115448556, '1000', '1200', '12010', '3400', '2020', 2, 'May', '2020-05-01', '2020-05-31', 31, 0, 10, 1, 0, 0, 31, 30653, 30653, 30653, 30653, 0, -1500, 0, -1650, 30653, 29153, '1', '', '', 0, 0, '3SIS', '2020-09-11', '13:10:49'),
(200623115448557, '1000', '1200', '12011', '3400', '2020', 2, 'May', '2020-05-01', '2020-05-31', 31, 0, 10, 1, 0, 0, 31, 25756, 25756, 25756, 25756, 0, -1500, 0, -1650, 25756, 24256, '1', '', '', 0, 0, '3SIS', '2020-09-11', '13:10:49'),
(200623115449077, '1000', '1200', '12007', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 30, 0, 8, 4, 0, 0, 30, 31765, 31765, 31765, 31765, 0, -3050, 0, -1950, 31765, 28715, '1300', '1000', '', 0, 0, '3SIS', '2020-09-30', '17:59:21'),
(200623115449078, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 30, 0, 8, 4, 0, 0, 30, 32810, 32810, 32810, 32810, 0, -3050, 0, -1950, 32810, 29760, '1300', '1000', '', 0, 0, '3SIS', '2020-09-30', '17:59:21'),
(200623115449080, '1000', '1200', '12010', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 30, 0, 8, 4, 0, 0, 30, 32186, 32186, 32186, 32186, 0, -3050, 0, -1950, 32186, 29136, '1300', '1000', '', 0, 0, '3SIS', '2020-09-30', '17:59:21'),
(200623115449081, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 30, 0, 8, 4, 0, 0, 30, 29332, 29332, 29332, 29332, 0, -3050, 0, -1950, 29332, 26282, '1300', '1000', '', 0, 0, '3SIS', '2020-09-30', '17:59:21'),
(200623115449379, '1000', '1200', '12007', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 31, 0, 9, 3, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '', 0, 0, 'USER1', '2020-10-28', '14:45:35'),
(200623115449380, '1000', '1200', '12008', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 31, 0, 9, 3, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '', 0, 0, 'USER1', '2020-10-28', '14:45:35'),
(200623115449382, '1000', '1200', '12010', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 31, 0, 9, 3, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '', 0, 0, 'USER1', '2020-10-28', '14:45:35'),
(200623115449383, '1000', '1200', '12011', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 31, 0, 9, 3, 0, 0, 31, 29332, 29332, 29332, 29332, 0, -1800, 0, -1950, 29332, 27532, '1300', '1000', '', 0, 0, 'USER1', '2020-10-28', '14:45:35'),
(200623115449678, '1000', '1200', '12007', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 30, 0, 9, 0, 0, 0, 30, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '', 0, 0, 'USER1', '2020-12-01', '13:17:05'),
(200623115449679, '1000', '1200', '12008', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 30, 0, 9, 0, 0, 0, 30, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '', 0, 0, 'USER1', '2020-12-01', '13:17:05'),
(200623115449681, '1000', '1200', '12010', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 30, 0, 9, 0, 0, 0, 30, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '', 0, 0, 'USER1', '2020-12-01', '13:17:06'),
(200623115449682, '1000', '1200', '12011', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 30, 0, 9, 0, 0, 0, 30, 29332, 29332, 29332, 29332, 0, -1800, 0, -1950, 29332, 27532, '1300', '1000', '', 0, 0, 'USER1', '2020-12-01', '13:17:06'),
(200623115450150, '1000', '1200', '12007', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 31, 0, 8, 1, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '', 0, 0, 'USER1', '2020-12-31', '12:27:24'),
(200623115450151, '1000', '1200', '12008', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 31, 0, 8, 1, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '', 0, 0, 'USER1', '2020-12-31', '12:27:24'),
(200623115450153, '1000', '1200', '12010', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 31, 0, 8, 1, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '', 0, 0, 'USER1', '2020-12-31', '12:27:25'),
(200623115450154, '1000', '1200', '12011', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 31, 0, 8, 1, 0, 0, 31, 29332, 29332, 29332, 29332, 0, -1800, 0, -1950, 29332, 27532, '1300', '1000', '', 0, 0, 'USER1', '2020-12-31', '12:27:25'),
(200623115450603, '1000', '1200', '12007', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 31, 0, 10, 0, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -3050, 0, -1950, 31765, 28715, '1300', '1000', '', 0, 0, 'USER1', '2021-02-01', '13:36:25'),
(200623115450604, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 31, 0, 10, 0, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -3050, 0, -1950, 32810, 29760, '1300', '1000', '', 0, 0, 'USER1', '2021-02-01', '13:36:25'),
(200623115450606, '1000', '1200', '12010', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 31, 0, 10, 0, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -3050, 0, -1950, 32186, 29136, '1300', '1000', '', 0, 0, 'USER1', '2021-02-01', '13:36:25'),
(200623115450607, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 31, 0, 10, 0, 0, 0, 31, 29332, 29332, 29332, 29332, 0, -3050, 0, -1950, 29332, 26282, '1300', '1000', '', 0, 0, 'USER1', '2021-02-01', '13:36:25'),
(200623115451055, '1000', '1200', '12007', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 28, 0, 8, 0, 0, 0, 28, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '', 0, 0, 'USER1', '2021-03-01', '11:07:05'),
(200623115451056, '1000', '1200', '12008', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 28, 0, 8, 0, 0, 0, 28, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '', 0, 0, 'USER1', '2021-03-01', '11:07:05'),
(200623115451058, '1000', '1200', '12010', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 28, 0, 8, 0, 0, 0, 28, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '', 0, 0, 'USER1', '2021-03-01', '11:07:05'),
(200623115451059, '1000', '1200', '12011', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 28, 0, 8, 0, 0, 0, 28, 29332, 29332, 29332, 29332, 0, -1800, 0, -1950, 29332, 27532, '1300', '1000', '', 0, 0, 'USER1', '2021-03-01', '11:07:05'),
(200623115451208, '1000', '1200', '12007', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 31, 0, 8, 0, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '', 0, 0, 'USER1', '2021-03-27', '14:20:34'),
(200623115451209, '1000', '1200', '12008', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 31, 0, 8, 0, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '', 0, 0, 'USER1', '2021-03-27', '14:20:34'),
(200623115451211, '1000', '1200', '12010', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 31, 0, 8, 0, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '', 0, 0, 'USER1', '2021-03-27', '14:20:34'),
(200623115451212, '1000', '1200', '12011', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 31, 0, 8, 0, 0, 0, 31, 29332, 29332, 29332, 29332, 0, -1800, 0, -1950, 29332, 27532, '1300', '1000', '', 0, 0, 'USER1', '2021-03-27', '14:20:34'),
(200623115453499, '1000', '1200', '12007', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 30, 0, 8, 3, 0, 0, 30, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2021-07-23', '15:38:56'),
(200623115453500, '1000', '1200', '12008', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 30, 0, 8, 3, 0, 0, 30, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2021-07-23', '15:38:56'),
(200623115453502, '1000', '1200', '12010', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 30, 0, 8, 3, 0, 0, 30, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2021-07-23', '15:38:56'),
(200623115453503, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 30, 0, 8, 3, 0, 0, 30, 29332, 29332, 29332, 29332, 0, -2800, 0, -1950, 29332, 26532, '1300', '1000', '2500', 0, 0, 'USER1', '2021-07-23', '15:38:56'),
(200623115453646, '1000', '1200', '12007', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 31, 0, 10, 0, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2021-07-23', '15:58:46'),
(200623115453647, '1000', '1200', '12008', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 31, 0, 10, 0, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2021-07-23', '15:58:46'),
(200623115453649, '1000', '1200', '12010', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 31, 0, 10, 0, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2021-07-23', '15:58:46'),
(200623115453650, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 31, 0, 10, 0, 0, 0, 31, 29332, 29332, 29332, 29332, 0, -2800, 0, -1950, 29332, 26532, '1300', '1000', '2500', 0, 0, 'USER1', '2021-07-23', '15:58:46'),
(200623115453787, '1000', '1200', '12007', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 30, 0, 8, 0, 0, 0, 30, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2021-07-28', '14:18:13'),
(200623115453788, '1000', '1200', '12008', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 30, 0, 8, 0, 0, 0, 30, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2021-07-28', '14:18:13'),
(200623115453790, '1000', '1200', '12010', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 30, 0, 8, 0, 0, 0, 30, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2021-07-28', '14:18:13'),
(200623115453791, '1000', '1200', '12011', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 30, 0, 8, 0, 0, 0, 30, 35000, 36000, 35000, 36000, 0, -1800, 0, -1950, 36000, 34200, '1300', '1000', '2500', 0, 0, 'USER1', '2021-07-28', '14:18:13'),
(200623115453954, '1000', '1200', '12007', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 31, 0, 9, 0, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2021-07-29', '14:15:08'),
(200623115453955, '1000', '1200', '12008', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 31, 0, 9, 0, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2021-07-29', '14:15:08'),
(200623115453957, '1000', '1200', '12010', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 31, 0, 9, 0, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2021-07-29', '14:15:08'),
(200623115453958, '1000', '1200', '12011', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 31, 0, 9, 0, 0, 0, 31, 35000, 36000, 35000, 36000, 0, -1800, 0, -1950, 36000, 34200, '1300', '1000', '2500', 0, 0, 'USER1', '2021-07-29', '14:15:08'),
(200623115454223, '1000', '1200', '12007', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 31, 0, 9, 0, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -3050, 0, -1950, 31765, 28715, '1300', '1000', '2100', 0, 0, 'USER1', '2021-08-31', '15:35:52'),
(200623115454224, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 31, 0, 9, 0, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -3050, 0, -1950, 32810, 29760, '1300', '1000', '2700', 0, 0, 'USER1', '2021-08-31', '15:35:52'),
(200623115454226, '1000', '1200', '12010', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 31, 0, 9, 0, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -3050, 0, -1950, 32186, 29136, '1300', '1000', '2300', 0, 0, 'USER1', '2021-08-31', '15:35:52'),
(200623115454227, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 31, 0, 9, 0, 0, 0, 31, 35000, 36000, 35000, 36000, 0, -3050, 0, -1950, 36000, 32950, '1300', '1000', '2500', 0, 0, 'USER1', '2021-08-31', '15:35:52'),
(200623115454487, '1000', '1200', '12007', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 30, 0, 8, 0, 0, 0, 30, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2021-09-30', '10:53:52'),
(200623115454488, '1000', '1200', '12008', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 30, 0, 8, 0, 0, 0, 30, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2021-09-30', '10:53:52'),
(200623115454490, '1000', '1200', '12010', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 30, 0, 8, 0, 0, 0, 30, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2021-09-30', '10:53:52'),
(200623115454491, '1000', '1200', '12011', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 30, 0, 8, 0, 0, 0, 30, 35000, 36000, 35000, 36000, 0, -1800, 0, -1950, 36000, 34200, '1300', '1000', '2500', 0, 0, 'USER1', '2021-09-30', '10:53:52'),
(200623115454759, '1000', '1200', '12007', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 31, 0, 10, 0, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2021-10-28', '14:52:56'),
(200623115454760, '1000', '1200', '12008', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 31, 0, 10, 0, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2021-10-28', '14:52:56'),
(200623115454762, '1000', '1200', '12010', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 31, 0, 10, 0, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2021-10-28', '14:52:56'),
(200623115454763, '1000', '1200', '12011', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 31, 0, 10, 0, 0, 0, 31, 35000, 36000, 35000, 36000, 0, -1800, 0, -1950, 36000, 34200, '1300', '1000', '2500', 0, 0, 'USER1', '2021-10-28', '14:52:56'),
(200623115455673, '1000', '1200', '12007', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 30, 0, 8, 0, 0, 0, 30, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2021-12-22', '11:34:28'),
(200623115455674, '1000', '1200', '12008', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 30, 0, 8, 0, 0, 0, 30, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2021-12-22', '11:34:28'),
(200623115455676, '1000', '1200', '12010', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 30, 0, 8, 0, 0, 0, 30, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2021-12-22', '11:34:29'),
(200623115455677, '1000', '1200', '12011', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 30, 0, 8, 0, 0, 0, 30, 35000, 36000, 35000, 36000, 0, -1800, 0, -1950, 36000, 34200, '1300', '1000', '2500', 0, 0, 'USER1', '2021-12-22', '11:34:29'),
(200623115457719, '1000', '1200', '12007', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 31, 0, 10, 0, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -3050, 0, -1950, 31765, 28715, '1300', '1000', '2100', 0, 0, 'USER1', '2022-01-31', '15:58:33'),
(200623115457720, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 31, 0, 10, 0, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -3050, 0, -1950, 32810, 29760, '1300', '1000', '2700', 0, 0, 'USER1', '2022-01-31', '15:58:33'),
(200623115457722, '1000', '1200', '12010', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 31, 0, 10, 0, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -3050, 0, -1950, 32186, 29136, '1300', '1000', '2300', 0, 0, 'USER1', '2022-01-31', '15:58:33'),
(200623115457723, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 31, 0, 10, 0, 0, 0, 31, 35000, 36000, 35000, 36000, 0, -3050, 0, -1950, 36000, 32950, '1300', '1000', '2500', 0, 0, 'USER1', '2022-01-31', '15:58:33'),
(200623115458002, '1000', '1200', '12007', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 28, 0, 8, 0, 0, 0, 28, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2022-03-02', '14:47:48'),
(200623115458003, '1000', '1200', '12008', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 28, 0, 8, 0, 0, 0, 28, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2022-03-02', '14:47:48'),
(200623115458005, '1000', '1200', '12010', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 28, 0, 8, 0, 0, 0, 28, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2022-03-02', '14:47:48'),
(200623115458006, '1000', '1200', '12011', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 28, 0, 8, 0, 0, 0, 28, 35000, 36000, 35000, 36000, 0, -1800, 0, -1950, 36000, 34200, '1300', '1000', '2500', 0, 0, 'USER1', '2022-03-02', '14:47:48'),
(200623115458288, '1000', '1200', '12007', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 31, 0, 8, 0, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2022-03-11', '10:48:53'),
(200623115458289, '1000', '1200', '12008', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 31, 0, 8, 0, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2022-03-11', '10:48:53'),
(200623115458291, '1000', '1200', '12010', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 31, 0, 8, 0, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2022-03-11', '10:48:53'),
(200623115458292, '1000', '1200', '12011', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 31, 0, 8, 0, 0, 0, 31, 35000, 36000, 35000, 36000, 0, -1800, 0, -1950, 36000, 34200, '1300', '1000', '2500', 0, 0, 'USER1', '2022-03-11', '10:48:53'),
(200623115459433, '1000', '1200', '12007', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 31, 0, 8, 0, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2022-04-04', '12:44:03'),
(200623115459434, '1000', '1200', '12008', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 31, 0, 8, 0, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2022-04-04', '12:44:03'),
(200623115459436, '1000', '1200', '12010', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 31, 0, 8, 0, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2022-04-04', '12:44:03'),
(200623115459437, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 31, 0, 8, 0, 0, 0, 31, 35000, 36000, 35000, 36000, 0, -2100, 0, -1950, 36000, 33900, '1300', '1000', '2500', 0, 0, 'USER1', '2022-04-04', '12:44:03'),
(200623115460153, '1000', '1200', '12007', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 30, 0, 0, 0, 0, 0, 30, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2022-05-04', '14:03:02'),
(200623115460154, '1000', '1200', '12008', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 30, 0, 0, 0, 0, 0, 30, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2022-05-04', '14:03:02'),
(200623115460156, '1000', '1200', '12010', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 30, 0, 0, 0, 0, 0, 30, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2022-05-04', '14:03:02'),
(200623115460157, '1000', '1200', '12011', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 30, 0, 0, 0, 0, 0, 30, 35000, 35000, 35000, 35000, 0, -1800, 0, -1950, 35000, 33200, '1300', '1000', '2500', 0, 0, 'USER1', '2022-05-04', '14:03:02'),
(200623115460955, '1000', '1200', '12007', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 31, 0, 0, 0, 0, 0, 31, 31765, 31765, 31765, 31765, 0, -1800, 0, -1950, 31765, 29965, '1300', '1000', '2100', 0, 0, 'USER1', '2022-06-03', '09:05:49'),
(200623115460956, '1000', '1200', '12008', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 31, 0, 0, 0, 0, 0, 31, 32810, 32810, 32810, 32810, 0, -1800, 0, -1950, 32810, 31010, '1300', '1000', '2700', 0, 0, 'USER1', '2022-06-03', '09:05:49'),
(200623115460958, '1000', '1200', '12010', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 31, 0, 0, 0, 0, 0, 31, 32186, 32186, 32186, 32186, 0, -1800, 0, -1950, 32186, 30386, '1300', '1000', '2300', 0, 0, 'USER1', '2022-06-03', '09:05:50'),
(200623115460959, '1000', '1200', '12011', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 31, 0, 0, 0, 0, 0, 31, 35000, 35000, 35000, 35000, 0, -1800, 0, -1950, 35000, 33200, '1300', '1000', '2500', 0, 0, 'USER1', '2022-06-03', '09:05:50'),
(200623115461711, '1000', '1200', '12007', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 30, 0, 0, 0, 0, 0, 30, 32718, 32718, 32718, 32718, 0, -1800, 0, -1950, 32718, 30918, '1300', '1000', '2100', 0, 0, 'USER1', '2022-07-01', '16:59:53'),
(200623115461712, '1000', '1200', '12008', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 30, 0, 0, 0, 0, 0, 30, 33794, 33794, 33794, 33794, 0, -1800, 0, -1950, 33794, 31994, '1300', '1000', '2700', 0, 0, 'USER1', '2022-07-01', '16:59:53'),
(200623115461714, '1000', '1200', '12010', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 30, 0, 0, 0, 0, 1, 29, 33652, 34452, 32530.27, 33330.27, 0, -1800, 0, -1950, 34452, 31530.27, '1300', '1000', '2300', 0, 1121.73, 'USER1', '2022-07-01', '16:59:54'),
(200623115461715, '1000', '1200', '12011', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 30, 0, 0, 0, 0, 0, 30, 36550, 37350, 36550, 37350, 0, -1800, 0, -1950, 37350, 35550, '1300', '1000', '2500', 0, 0, 'USER1', '2022-07-01', '16:59:54'),
(200623115462534, '1000', '1200', '12007', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 31, 0, 0, 0, 0, 4.5, 26.5, 32718, 32718, 27968.61, 27968.61, 0, -1800, 0, -1950, 32718, 26168.61, '1300', '1000', '2100', 0, 4749.39, 'USER1', '2022-07-30', '12:13:30'),
(200623115462535, '1000', '1200', '12008', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 31, 0, 0, 0, 0, 0, 31, 33794, 33794, 33794, 33794, 0, -1800, 0, -1950, 33794, 31994, '1300', '1000', '2700', 0, 0, 'USER1', '2022-07-30', '12:13:30'),
(200623115462537, '1000', '1200', '12010', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 31, 0, 0, 0, 0, 0, 31, 33652, 34452, 33652, 34452, 0, -1800, 0, -1950, 34452, 32652, '1300', '1000', '2300', 0, 0, 'USER1', '2022-07-30', '12:13:30'),
(200623115462538, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 31, 0, 0, 0, 0, 0, 31, 36550, 37350, 36550, 37350, 0, -2095, 0, -1950, 37350, 35255, '1300', '1000', '2500', 0, 0, 'USER1', '2022-07-30', '12:13:30'),
(200623115462868, '1000', '1200', '12007', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 31, 0, 0, 0, 0, 0, 31, 32718, 35718, 32718, 35718, 0, -1800, 0, -1950, 35718, 33918, '1300', '1000', '2100', 0, 0, 'USER1', '2022-09-19', '14:02:01'),
(200623115462869, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 31, 0, 0, 0, 0, 0, 31, 33794, 36794, 33794, 36794, 0, -1800, 0, -1950, 36794, 34994, '1300', '1000', '2700', 0, 0, 'USER1', '2022-09-19', '14:02:01'),
(200623115462871, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 31, 0, 0, 0, 0, 0, 31, 33652, 37452, 33652, 37452, 0, -1800, 0, -1950, 37452, 35652, '1300', '1000', '2300', 0, 0, 'USER1', '2022-09-19', '14:02:01'),
(200623115462872, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 31, 0, 0, 0, 0, 1, 30, 36550, 40350, 35370.97, 39170.97, 0, -1800, 0, -1950, 40350, 37370.97, '1300', '1000', '2500', 0, 1179.03, 'USER1', '2022-09-19', '14:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `t2250111`
--

CREATE TABLE `t2250111` (
  `PYMPDUniqueId` double NOT NULL,
  `PYMPDCompany` varchar(5) CHARACTER SET latin1 NOT NULL,
  `PYMPDLocId` varchar(10) CHARACTER SET latin1 NOT NULL,
  `PYMPDEmpCode` varchar(10) CHARACTER SET latin1 NOT NULL,
  `PYMPDDesigId` varchar(10) CHARACTER SET latin1 NOT NULL,
  `PYMPDFiscalYear` varchar(4) CHARACTER SET latin1 NOT NULL,
  `PYMPDFiscalPeriod` smallint(6) NOT NULL,
  `PYMPDFiscalMonth` varchar(5) CHARACTER SET latin1 NOT NULL,
  `PYMPDFromDate` date NOT NULL,
  `PYMPDToDate` date NOT NULL,
  `PYMPDSysId` smallint(6) NOT NULL,
  `PYMPDUserSorting` smallint(6) NOT NULL,
  `PYMPDIncDedId` varchar(10) CHARACTER SET latin1 NOT NULL,
  `PYMPDIncOrDed` varchar(1) CHARACTER SET latin1 NOT NULL,
  `PYMPDDesc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `PYMPDGrossIncome` double NOT NULL,
  `PYMPDGrossPay` double NOT NULL,
  `PYMPDPayrollAmt` double NOT NULL,
  `PYMPDUserEditedAmt` double NOT NULL,
  `PYMPDCompContriGross` double NOT NULL,
  `PYMPDCompContriNet` double NOT NULL,
  `PYMPDCompContriUserEditedAmt` double NOT NULL,
  `PYMPDIsTaxable` bit(1) NOT NULL,
  `PYMPDIsExemptInTax` bit(1) NOT NULL,
  `PYMPDConsiderInPF` bit(1) NOT NULL,
  `PYMPDConsiderInPT` bit(1) NOT NULL,
  `PYMPDConsiderInESIC` bit(1) NOT NULL,
  `PYMPDConsiderInLWF` bit(1) NOT NULL,
  `PYMPDConsiderInOT` bit(1) NOT NULL,
  `PYMPDConsiderInWage` bit(1) NOT NULL,
  `PYMPDConsiderInTDS` bit(1) NOT NULL,
  `PYMPDCaldendarDays` double NOT NULL,
  `PYMPDPresentDays` double NOT NULL,
  `PYMPDAbsentDays` double NOT NULL,
  `PYMPDWeeklyOff` double NOT NULL,
  `PYMPDPublicHolidays` double NOT NULL,
  `PYMPDPaidLeave` double NOT NULL,
  `PYMPDLeaveWithoutPay` double NOT NULL,
  `PYMPDPaidDays` double NOT NULL,
  `PYMPDUser` varchar(20) CHARACTER SET latin1 NOT NULL,
  `PYMPDSysDate` date NOT NULL,
  `PYMPDSysTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t2250111`
--

INSERT INTO `t2250111` (`PYMPDUniqueId`, `PYMPDCompany`, `PYMPDLocId`, `PYMPDEmpCode`, `PYMPDDesigId`, `PYMPDFiscalYear`, `PYMPDFiscalPeriod`, `PYMPDFiscalMonth`, `PYMPDFromDate`, `PYMPDToDate`, `PYMPDSysId`, `PYMPDUserSorting`, `PYMPDIncDedId`, `PYMPDIncOrDed`, `PYMPDDesc`, `PYMPDGrossIncome`, `PYMPDGrossPay`, `PYMPDPayrollAmt`, `PYMPDUserEditedAmt`, `PYMPDCompContriGross`, `PYMPDCompContriNet`, `PYMPDCompContriUserEditedAmt`, `PYMPDIsTaxable`, `PYMPDIsExemptInTax`, `PYMPDConsiderInPF`, `PYMPDConsiderInPT`, `PYMPDConsiderInESIC`, `PYMPDConsiderInLWF`, `PYMPDConsiderInOT`, `PYMPDConsiderInWage`, `PYMPDConsiderInTDS`, `PYMPDCaldendarDays`, `PYMPDPresentDays`, `PYMPDAbsentDays`, `PYMPDWeeklyOff`, `PYMPDPublicHolidays`, `PYMPDPaidLeave`, `PYMPDLeaveWithoutPay`, `PYMPDPaidDays`, `PYMPDUser`, `PYMPDSysDate`, `PYMPDSysTime`) VALUES
(200623115484142, '1000', '1200', '12007', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484143, '1000', '1200', '12007', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484144, '1000', '1200', '12007', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484145, '1000', '1200', '12007', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484146, '1000', '1200', '12007', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484147, '1000', '1200', '12007', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484148, '1000', '1200', '12007', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484149, '1000', '1200', '12007', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 28715, 28715, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484150, '1000', '1200', '12007', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484151, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484152, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484153, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484154, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484155, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484156, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484157, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:38'),
(200623115484158, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:39'),
(200623115484159, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 29760, 29760, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:39'),
(200623115484160, '1000', '1200', '12008', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:39'),
(200623115484170, '1000', '1200', '12010', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:39'),
(200623115484171, '1000', '1200', '12010', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:39'),
(200623115484172, '1000', '1200', '12010', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:39'),
(200623115484173, '1000', '1200', '12010', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484174, '1000', '1200', '12010', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484175, '1000', '1200', '12010', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484176, '1000', '1200', '12010', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484177, '1000', '1200', '12010', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 29136, 29136, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484178, '1000', '1200', '12010', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484179, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484180, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484181, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 3, '1300', 'I', 'Other', 1000, 1000, 1000, 1000, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484182, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 4, '1400', 'I', 'CCA', 4576, 4576, 4576, 4576, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484183, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 200, 200, '2999', 'I', 'Total Income', 29332, 29332, 29332, 29332, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484184, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 100, 5, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484185, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484186, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484187, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 900, 900, '5999', '', 'Paid Salary', 29332, 29332, 26282, 26282, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115484188, '1000', '1200', '12011', '3400', '2020', 6, 'Sep', '2020-09-01', '2020-09-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 18, 0, 8, 4, 0, 0, 30, '3SIS', '2020-09-30', '17:59:40'),
(200623115487236, '1000', '1200', '12007', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:51'),
(200623115487237, '1000', '1200', '12007', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:51'),
(200623115487238, '1000', '1200', '12007', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:51'),
(200623115487239, '1000', '1200', '12007', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:51'),
(200623115487240, '1000', '1200', '12007', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:51'),
(200623115487241, '1000', '1200', '12007', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:51'),
(200623115487242, '1000', '1200', '12007', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:51'),
(200623115487243, '1000', '1200', '12007', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:51'),
(200623115487244, '1000', '1200', '12008', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:51'),
(200623115487245, '1000', '1200', '12008', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:51'),
(200623115487246, '1000', '1200', '12008', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:52'),
(200623115487247, '1000', '1200', '12008', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:52'),
(200623115487248, '1000', '1200', '12008', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:52'),
(200623115487249, '1000', '1200', '12008', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:52'),
(200623115487250, '1000', '1200', '12008', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:52'),
(200623115487251, '1000', '1200', '12008', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:52'),
(200623115487252, '1000', '1200', '12008', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:52'),
(200623115487261, '1000', '1200', '12010', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:52'),
(200623115487262, '1000', '1200', '12010', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487263, '1000', '1200', '12010', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487264, '1000', '1200', '12010', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487265, '1000', '1200', '12010', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487266, '1000', '1200', '12010', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487267, '1000', '1200', '12010', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487268, '1000', '1200', '12010', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487269, '1000', '1200', '12011', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487270, '1000', '1200', '12011', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487271, '1000', '1200', '12011', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 3, '1300', 'I', 'Other', 1000, 1000, 1000, 1000, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487272, '1000', '1200', '12011', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 4, '1400', 'I', 'CCA', 4576, 4576, 4576, 4576, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487273, '1000', '1200', '12011', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 200, 200, '2999', 'I', 'Total Income', 29332, 29332, 29332, 29332, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487274, '1000', '1200', '12011', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 100, 5, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487275, '1000', '1200', '12011', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487276, '1000', '1200', '12011', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 900, 900, '5999', '', 'Paid Salary', 29332, 29332, 27532, 27532, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115487277, '1000', '1200', '12011', '3400', '2020', 7, 'Oct', '2020-10-01', '2020-10-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 19, 0, 9, 3, 0, 0, 31, 'USER1', '2020-10-28', '14:45:53'),
(200623115489461, '1000', '1200', '12007', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:22'),
(200623115489462, '1000', '1200', '12007', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489463, '1000', '1200', '12007', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489464, '1000', '1200', '12007', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489465, '1000', '1200', '12007', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489466, '1000', '1200', '12007', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489467, '1000', '1200', '12007', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489468, '1000', '1200', '12007', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489469, '1000', '1200', '12008', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489470, '1000', '1200', '12008', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489471, '1000', '1200', '12008', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489472, '1000', '1200', '12008', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489473, '1000', '1200', '12008', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489474, '1000', '1200', '12008', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489475, '1000', '1200', '12008', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489476, '1000', '1200', '12008', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:23'),
(200623115489477, '1000', '1200', '12008', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:24'),
(200623115489486, '1000', '1200', '12010', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:24'),
(200623115489487, '1000', '1200', '12010', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:24'),
(200623115489488, '1000', '1200', '12010', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:24'),
(200623115489489, '1000', '1200', '12010', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:24'),
(200623115489490, '1000', '1200', '12010', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:24'),
(200623115489491, '1000', '1200', '12010', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489492, '1000', '1200', '12010', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489493, '1000', '1200', '12010', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489494, '1000', '1200', '12011', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489495, '1000', '1200', '12011', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489496, '1000', '1200', '12011', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 3, '1300', 'I', 'Other', 1000, 1000, 1000, 1000, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489497, '1000', '1200', '12011', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 4, '1400', 'I', 'CCA', 4576, 4576, 4576, 4576, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489498, '1000', '1200', '12011', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 200, 200, '2999', 'I', 'Total Income', 29332, 29332, 29332, 29332, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489499, '1000', '1200', '12011', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 100, 5, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489500, '1000', '1200', '12011', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489501, '1000', '1200', '12011', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 900, 900, '5999', '', 'Paid Salary', 29332, 29332, 27532, 27532, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115489502, '1000', '1200', '12011', '3400', '2020', 8, 'Nov', '2020-11-01', '2020-11-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 21, 0, 9, 0, 0, 0, 30, 'USER1', '2020-12-01', '13:17:25'),
(200623115492933, '1000', '1200', '12007', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:42'),
(200623115492934, '1000', '1200', '12007', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:42'),
(200623115492935, '1000', '1200', '12007', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:42'),
(200623115492936, '1000', '1200', '12007', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:42'),
(200623115492937, '1000', '1200', '12007', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:42'),
(200623115492938, '1000', '1200', '12007', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:42'),
(200623115492939, '1000', '1200', '12007', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:42'),
(200623115492940, '1000', '1200', '12007', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:42'),
(200623115492941, '1000', '1200', '12008', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:42'),
(200623115492942, '1000', '1200', '12008', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:42'),
(200623115492943, '1000', '1200', '12008', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:43'),
(200623115492944, '1000', '1200', '12008', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:43'),
(200623115492945, '1000', '1200', '12008', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:43'),
(200623115492946, '1000', '1200', '12008', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:43'),
(200623115492947, '1000', '1200', '12008', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:43'),
(200623115492948, '1000', '1200', '12008', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:43'),
(200623115492949, '1000', '1200', '12008', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:43'),
(200623115492958, '1000', '1200', '12010', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:44'),
(200623115492959, '1000', '1200', '12010', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:44'),
(200623115492960, '1000', '1200', '12010', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:44'),
(200623115492961, '1000', '1200', '12010', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:44'),
(200623115492962, '1000', '1200', '12010', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:44'),
(200623115492963, '1000', '1200', '12010', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:44'),
(200623115492964, '1000', '1200', '12010', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:44'),
(200623115492965, '1000', '1200', '12010', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:44'),
(200623115492966, '1000', '1200', '12011', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:44'),
(200623115492967, '1000', '1200', '12011', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:44'),
(200623115492968, '1000', '1200', '12011', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 3, '1300', 'I', 'Other', 1000, 1000, 1000, 1000, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:45'),
(200623115492969, '1000', '1200', '12011', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 4, '1400', 'I', 'CCA', 4576, 4576, 4576, 4576, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:45'),
(200623115492970, '1000', '1200', '12011', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 200, 200, '2999', 'I', 'Total Income', 29332, 29332, 29332, 29332, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:45'),
(200623115492971, '1000', '1200', '12011', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 100, 5, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:45'),
(200623115492972, '1000', '1200', '12011', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:45'),
(200623115492973, '1000', '1200', '12011', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 900, 900, '5999', '', 'Paid Salary', 29332, 29332, 27532, 27532, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:45'),
(200623115492974, '1000', '1200', '12011', '3400', '2020', 9, 'Dec', '2020-12-01', '2020-12-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 8, 1, 0, 0, 31, 'USER1', '2020-12-31', '12:27:45'),
(200623115496257, '1000', '1200', '12007', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496258, '1000', '1200', '12007', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496259, '1000', '1200', '12007', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496260, '1000', '1200', '12007', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496261, '1000', '1200', '12007', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496262, '1000', '1200', '12007', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496263, '1000', '1200', '12007', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496264, '1000', '1200', '12007', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 28715, 28715, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496265, '1000', '1200', '12007', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496266, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496267, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:42'),
(200623115496268, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:43'),
(200623115496269, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:43'),
(200623115496270, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:43'),
(200623115496271, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:43'),
(200623115496272, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 500, 1, '5000', 'D', 'PF', 500, 500, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:43'),
(200623115496273, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 500, 3, '5200', 'D', 'PT', 100, 100, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:43'),
(200623115496274, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 29760, 29760, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:43'),
(200623115496275, '1000', '1200', '12008', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:43'),
(200623115496285, '1000', '1200', '12010', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496286, '1000', '1200', '12010', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496287, '1000', '1200', '12010', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496288, '1000', '1200', '12010', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496289, '1000', '1200', '12010', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496290, '1000', '1200', '12010', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496291, '1000', '1200', '12010', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496292, '1000', '1200', '12010', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 29136, 29136, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496293, '1000', '1200', '12010', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496294, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496295, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496296, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 3, '1300', 'I', 'Other', 1000, 1000, 1000, 1000, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:44'),
(200623115496297, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 4, '1400', 'I', 'CCA', 4576, 4576, 4576, 4576, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:45'),
(200623115496298, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 200, 200, '2999', 'I', 'Total Income', 29332, 29332, 29332, 29332, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:45'),
(200623115496299, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 100, 5, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:45'),
(200623115496300, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:45');
INSERT INTO `t2250111` (`PYMPDUniqueId`, `PYMPDCompany`, `PYMPDLocId`, `PYMPDEmpCode`, `PYMPDDesigId`, `PYMPDFiscalYear`, `PYMPDFiscalPeriod`, `PYMPDFiscalMonth`, `PYMPDFromDate`, `PYMPDToDate`, `PYMPDSysId`, `PYMPDUserSorting`, `PYMPDIncDedId`, `PYMPDIncOrDed`, `PYMPDDesc`, `PYMPDGrossIncome`, `PYMPDGrossPay`, `PYMPDPayrollAmt`, `PYMPDUserEditedAmt`, `PYMPDCompContriGross`, `PYMPDCompContriNet`, `PYMPDCompContriUserEditedAmt`, `PYMPDIsTaxable`, `PYMPDIsExemptInTax`, `PYMPDConsiderInPF`, `PYMPDConsiderInPT`, `PYMPDConsiderInESIC`, `PYMPDConsiderInLWF`, `PYMPDConsiderInOT`, `PYMPDConsiderInWage`, `PYMPDConsiderInTDS`, `PYMPDCaldendarDays`, `PYMPDPresentDays`, `PYMPDAbsentDays`, `PYMPDWeeklyOff`, `PYMPDPublicHolidays`, `PYMPDPaidLeave`, `PYMPDLeaveWithoutPay`, `PYMPDPaidDays`, `PYMPDUser`, `PYMPDSysDate`, `PYMPDSysTime`) VALUES
(200623115496301, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:45'),
(200623115496302, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 900, 900, '5999', '', 'Paid Salary', 29332, 29332, 26282, 26282, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:45'),
(200623115496303, '1000', '1200', '12011', '3400', '2020', 10, 'Jan', '2021-01-01', '2021-01-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-02-01', '13:36:45'),
(200623115499987, '1000', '1200', '12007', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499988, '1000', '1200', '12007', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499989, '1000', '1200', '12007', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499990, '1000', '1200', '12007', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499991, '1000', '1200', '12007', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499992, '1000', '1200', '12007', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499993, '1000', '1200', '12007', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499994, '1000', '1200', '12007', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499995, '1000', '1200', '12008', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499996, '1000', '1200', '12008', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499997, '1000', '1200', '12008', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499998, '1000', '1200', '12008', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115499999, '1000', '1200', '12008', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:21'),
(200623115500000, '1000', '1200', '12008', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:22'),
(200623115500001, '1000', '1200', '12008', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:22'),
(200623115500002, '1000', '1200', '12008', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:22'),
(200623115500003, '1000', '1200', '12008', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:22'),
(200623115500012, '1000', '1200', '12010', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:22'),
(200623115500013, '1000', '1200', '12010', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:22'),
(200623115500014, '1000', '1200', '12010', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:22'),
(200623115500015, '1000', '1200', '12010', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:22'),
(200623115500016, '1000', '1200', '12010', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500017, '1000', '1200', '12010', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500018, '1000', '1200', '12010', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500019, '1000', '1200', '12010', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500020, '1000', '1200', '12011', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500021, '1000', '1200', '12011', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500022, '1000', '1200', '12011', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 3, '1300', 'I', 'Other', 1000, 1000, 1000, 1000, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500023, '1000', '1200', '12011', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 4, '1400', 'I', 'CCA', 4576, 4576, 4576, 4576, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500024, '1000', '1200', '12011', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 200, 200, '2999', 'I', 'Total Income', 29332, 29332, 29332, 29332, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500025, '1000', '1200', '12011', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 100, 5, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500026, '1000', '1200', '12011', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500027, '1000', '1200', '12011', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 900, 900, '5999', '', 'Paid Salary', 29332, 29332, 27532, 27532, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115500028, '1000', '1200', '12011', '3400', '2020', 11, 'Feb', '2021-02-01', '2021-02-28', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2021-03-01', '11:07:23'),
(200623115501086, '1000', '1200', '12007', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:50'),
(200623115501087, '1000', '1200', '12007', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:50'),
(200623115501088, '1000', '1200', '12007', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:50'),
(200623115501089, '1000', '1200', '12007', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:50'),
(200623115501090, '1000', '1200', '12007', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:50'),
(200623115501091, '1000', '1200', '12007', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:50'),
(200623115501092, '1000', '1200', '12007', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:50'),
(200623115501093, '1000', '1200', '12007', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:51'),
(200623115501094, '1000', '1200', '12008', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:51'),
(200623115501095, '1000', '1200', '12008', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:51'),
(200623115501096, '1000', '1200', '12008', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:51'),
(200623115501097, '1000', '1200', '12008', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:51'),
(200623115501098, '1000', '1200', '12008', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:51'),
(200623115501099, '1000', '1200', '12008', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:51'),
(200623115501100, '1000', '1200', '12008', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:51'),
(200623115501101, '1000', '1200', '12008', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:51'),
(200623115501102, '1000', '1200', '12008', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:51'),
(200623115501111, '1000', '1200', '12010', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501112, '1000', '1200', '12010', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501113, '1000', '1200', '12010', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501114, '1000', '1200', '12010', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501115, '1000', '1200', '12010', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501116, '1000', '1200', '12010', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501117, '1000', '1200', '12010', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501118, '1000', '1200', '12010', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501119, '1000', '1200', '12011', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501120, '1000', '1200', '12011', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501121, '1000', '1200', '12011', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 3, '1300', 'I', 'Other', 1000, 1000, 1000, 1000, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:52'),
(200623115501122, '1000', '1200', '12011', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 4, '1400', 'I', 'CCA', 4576, 4576, 4576, 4576, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:53'),
(200623115501123, '1000', '1200', '12011', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 200, 200, '2999', 'I', 'Total Income', 29332, 29332, 29332, 29332, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:53'),
(200623115501124, '1000', '1200', '12011', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 100, 5, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:53'),
(200623115501125, '1000', '1200', '12011', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:53'),
(200623115501126, '1000', '1200', '12011', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 900, 900, '5999', '', 'Paid Salary', 29332, 29332, 27532, 27532, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:53'),
(200623115501127, '1000', '1200', '12011', '3400', '2020', 12, 'Mar', '2021-03-01', '2021-03-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2021-03-27', '14:20:53'),
(200623115518421, '1000', '1200', '12007', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:10'),
(200623115518422, '1000', '1200', '12007', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:10'),
(200623115518423, '1000', '1200', '12007', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:10'),
(200623115518424, '1000', '1200', '12007', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518425, '1000', '1200', '12007', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518426, '1000', '1200', '12007', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518427, '1000', '1200', '12007', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518428, '1000', '1200', '12007', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518429, '1000', '1200', '12008', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518430, '1000', '1200', '12008', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518431, '1000', '1200', '12008', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518432, '1000', '1200', '12008', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518433, '1000', '1200', '12008', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518434, '1000', '1200', '12008', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518435, '1000', '1200', '12008', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518436, '1000', '1200', '12008', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:11'),
(200623115518437, '1000', '1200', '12008', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:12'),
(200623115518446, '1000', '1200', '12010', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:12'),
(200623115518447, '1000', '1200', '12010', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:12'),
(200623115518448, '1000', '1200', '12010', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:12'),
(200623115518449, '1000', '1200', '12010', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:12'),
(200623115518450, '1000', '1200', '12010', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:12'),
(200623115518451, '1000', '1200', '12010', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518452, '1000', '1200', '12010', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518453, '1000', '1200', '12010', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518454, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518455, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 500, 4, '1004', 'D', 'Reduction in Income', 0, 0, -1000, -1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518456, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518457, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 3, '1300', 'I', 'Other', 1000, 1000, 1000, 1000, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518458, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 4, '1400', 'I', 'CCA', 4576, 4576, 4576, 4576, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518459, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 200, 200, '2999', 'I', 'Total Income', 29332, 29332, 29332, 29332, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518460, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 100, 5, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518461, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518462, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 900, 900, '5999', '', 'Paid Salary', 29332, 29332, 26532, 26532, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115518463, '1000', '1200', '12011', '3400', '2021', 1, 'Apr', '2021-04-01', '2021-04-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -2800, -2800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 19, 0, 8, 3, 0, 0, 30, 'USER1', '2021-07-23', '15:39:13'),
(200623115519481, '1000', '1200', '12007', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519482, '1000', '1200', '12007', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519483, '1000', '1200', '12007', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519484, '1000', '1200', '12007', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519485, '1000', '1200', '12007', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519486, '1000', '1200', '12007', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519487, '1000', '1200', '12007', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519488, '1000', '1200', '12007', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519489, '1000', '1200', '12008', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519490, '1000', '1200', '12008', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519491, '1000', '1200', '12008', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:02'),
(200623115519492, '1000', '1200', '12008', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:03'),
(200623115519493, '1000', '1200', '12008', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:03'),
(200623115519494, '1000', '1200', '12008', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:03'),
(200623115519495, '1000', '1200', '12008', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:03'),
(200623115519496, '1000', '1200', '12008', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:03'),
(200623115519497, '1000', '1200', '12008', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:03'),
(200623115519506, '1000', '1200', '12010', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:04'),
(200623115519507, '1000', '1200', '12010', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:04'),
(200623115519508, '1000', '1200', '12010', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:04'),
(200623115519509, '1000', '1200', '12010', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:04'),
(200623115519510, '1000', '1200', '12010', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:04'),
(200623115519511, '1000', '1200', '12010', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:04'),
(200623115519512, '1000', '1200', '12010', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:04'),
(200623115519513, '1000', '1200', '12010', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:04'),
(200623115519514, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:04'),
(200623115519515, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 500, 4, '1004', 'D', 'Reduction in Income', 0, 0, -1000, -1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:04'),
(200623115519516, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:05'),
(200623115519517, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 3, '1300', 'I', 'Other', 1000, 1000, 1000, 1000, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:05'),
(200623115519518, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 4, '1400', 'I', 'CCA', 4576, 4576, 4576, 4576, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:05'),
(200623115519519, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 200, 200, '2999', 'I', 'Total Income', 29332, 29332, 29332, 29332, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:05'),
(200623115519520, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 100, 5, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:05'),
(200623115519521, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:05'),
(200623115519522, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 900, 900, '5999', '', 'Paid Salary', 29332, 29332, 26532, 26532, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:05'),
(200623115519523, '1000', '1200', '12011', '3400', '2021', 2, 'May', '2021-05-01', '2021-05-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -2800, -2800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-07-23', '15:59:05'),
(200623115520507, '1000', '1200', '12007', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:30'),
(200623115520508, '1000', '1200', '12007', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:30'),
(200623115520509, '1000', '1200', '12007', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:30'),
(200623115520510, '1000', '1200', '12007', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:30'),
(200623115520511, '1000', '1200', '12007', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:30'),
(200623115520512, '1000', '1200', '12007', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520513, '1000', '1200', '12007', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520514, '1000', '1200', '12007', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520515, '1000', '1200', '12008', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520516, '1000', '1200', '12008', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520517, '1000', '1200', '12008', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520518, '1000', '1200', '12008', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520519, '1000', '1200', '12008', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520520, '1000', '1200', '12008', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520521, '1000', '1200', '12008', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520522, '1000', '1200', '12008', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520523, '1000', '1200', '12008', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:31'),
(200623115520533, '1000', '1200', '12010', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520534, '1000', '1200', '12010', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520535, '1000', '1200', '12010', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520536, '1000', '1200', '12010', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520537, '1000', '1200', '12010', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520538, '1000', '1200', '12010', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520539, '1000', '1200', '12010', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520540, '1000', '1200', '12010', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520541, '1000', '1200', '12011', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520542, '1000', '1200', '12011', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520543, '1000', '1200', '12011', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:32'),
(200623115520544, '1000', '1200', '12011', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 5, '1900', 'I', 'Other Allowance', 0, 1000, 1000, 1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:33'),
(200623115520545, '1000', '1200', '12011', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 200, 200, '2999', 'I', 'Total Income', 35000, 36000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:33'),
(200623115520546, '1000', '1200', '12011', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:33'),
(200623115520547, '1000', '1200', '12011', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:33'),
(200623115520548, '1000', '1200', '12011', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 900, 900, '5999', '', 'Paid Salary', 35000, 36000, 34200, 34200, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:33');
INSERT INTO `t2250111` (`PYMPDUniqueId`, `PYMPDCompany`, `PYMPDLocId`, `PYMPDEmpCode`, `PYMPDDesigId`, `PYMPDFiscalYear`, `PYMPDFiscalPeriod`, `PYMPDFiscalMonth`, `PYMPDFromDate`, `PYMPDToDate`, `PYMPDSysId`, `PYMPDUserSorting`, `PYMPDIncDedId`, `PYMPDIncOrDed`, `PYMPDDesc`, `PYMPDGrossIncome`, `PYMPDGrossPay`, `PYMPDPayrollAmt`, `PYMPDUserEditedAmt`, `PYMPDCompContriGross`, `PYMPDCompContriNet`, `PYMPDCompContriUserEditedAmt`, `PYMPDIsTaxable`, `PYMPDIsExemptInTax`, `PYMPDConsiderInPF`, `PYMPDConsiderInPT`, `PYMPDConsiderInESIC`, `PYMPDConsiderInLWF`, `PYMPDConsiderInOT`, `PYMPDConsiderInWage`, `PYMPDConsiderInTDS`, `PYMPDCaldendarDays`, `PYMPDPresentDays`, `PYMPDAbsentDays`, `PYMPDWeeklyOff`, `PYMPDPublicHolidays`, `PYMPDPaidLeave`, `PYMPDLeaveWithoutPay`, `PYMPDPaidDays`, `PYMPDUser`, `PYMPDSysDate`, `PYMPDSysTime`) VALUES
(200623115520549, '1000', '1200', '12011', '3400', '2021', 3, 'Jun', '2021-06-01', '2021-06-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-07-28', '14:18:33'),
(200623115521675, '1000', '1200', '12007', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521676, '1000', '1200', '12007', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521677, '1000', '1200', '12007', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521678, '1000', '1200', '12007', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521679, '1000', '1200', '12007', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521680, '1000', '1200', '12007', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521681, '1000', '1200', '12007', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521682, '1000', '1200', '12007', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521683, '1000', '1200', '12008', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521684, '1000', '1200', '12008', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521685, '1000', '1200', '12008', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521686, '1000', '1200', '12008', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521687, '1000', '1200', '12008', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:24'),
(200623115521688, '1000', '1200', '12008', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:25'),
(200623115521689, '1000', '1200', '12008', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:25'),
(200623115521690, '1000', '1200', '12008', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:25'),
(200623115521691, '1000', '1200', '12008', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:25'),
(200623115521701, '1000', '1200', '12010', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:25'),
(200623115521702, '1000', '1200', '12010', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:25'),
(200623115521703, '1000', '1200', '12010', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:25'),
(200623115521704, '1000', '1200', '12010', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521705, '1000', '1200', '12010', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521706, '1000', '1200', '12010', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521707, '1000', '1200', '12010', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521708, '1000', '1200', '12010', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521709, '1000', '1200', '12011', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521710, '1000', '1200', '12011', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521711, '1000', '1200', '12011', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521712, '1000', '1200', '12011', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 5, '1900', 'I', 'Other Allowance', 0, 1000, 1000, 1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521713, '1000', '1200', '12011', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 200, 200, '2999', 'I', 'Total Income', 35000, 36000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521714, '1000', '1200', '12011', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521715, '1000', '1200', '12011', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521716, '1000', '1200', '12011', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 900, 900, '5999', '', 'Paid Salary', 35000, 36000, 34200, 34200, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115521717, '1000', '1200', '12011', '3400', '2021', 4, 'Jul', '2021-07-01', '2021-07-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-07-29', '14:15:26'),
(200623115523749, '1000', '1200', '12007', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:09'),
(200623115523750, '1000', '1200', '12007', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523751, '1000', '1200', '12007', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523752, '1000', '1200', '12007', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523753, '1000', '1200', '12007', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523754, '1000', '1200', '12007', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523755, '1000', '1200', '12007', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523756, '1000', '1200', '12007', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 28715, 28715, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523757, '1000', '1200', '12007', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523758, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523759, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523760, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523761, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523762, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523763, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523764, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523765, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523766, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 29760, 29760, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:10'),
(200623115523767, '1000', '1200', '12008', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:11'),
(200623115523778, '1000', '1200', '12010', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:11'),
(200623115523779, '1000', '1200', '12010', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:11'),
(200623115523780, '1000', '1200', '12010', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:11'),
(200623115523781, '1000', '1200', '12010', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:11'),
(200623115523782, '1000', '1200', '12010', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523783, '1000', '1200', '12010', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523784, '1000', '1200', '12010', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523785, '1000', '1200', '12010', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 29136, 29136, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523786, '1000', '1200', '12010', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523787, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523788, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523789, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523790, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 5, '1900', 'I', 'Other Allowance', 0, 1000, 1000, 1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523791, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 200, 200, '2999', 'I', 'Total Income', 35000, 36000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523792, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523793, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523794, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523795, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 900, 900, '5999', '', 'Paid Salary', 35000, 36000, 32950, 32950, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115523796, '1000', '1200', '12011', '3400', '2021', 5, 'Aug', '2021-08-01', '2021-08-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 22, 0, 9, 0, 0, 0, 31, 'USER1', '2021-08-31', '15:36:12'),
(200623115526083, '1000', '1200', '12007', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526084, '1000', '1200', '12007', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526085, '1000', '1200', '12007', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526086, '1000', '1200', '12007', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526087, '1000', '1200', '12007', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526088, '1000', '1200', '12007', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526089, '1000', '1200', '12007', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526090, '1000', '1200', '12007', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526091, '1000', '1200', '12008', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526092, '1000', '1200', '12008', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526093, '1000', '1200', '12008', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:09'),
(200623115526094, '1000', '1200', '12008', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:10'),
(200623115526095, '1000', '1200', '12008', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:10'),
(200623115526096, '1000', '1200', '12008', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:10'),
(200623115526097, '1000', '1200', '12008', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:10'),
(200623115526098, '1000', '1200', '12008', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:10'),
(200623115526099, '1000', '1200', '12008', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:10'),
(200623115526109, '1000', '1200', '12010', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:10'),
(200623115526110, '1000', '1200', '12010', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526111, '1000', '1200', '12010', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526112, '1000', '1200', '12010', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526113, '1000', '1200', '12010', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526114, '1000', '1200', '12010', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526115, '1000', '1200', '12010', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526116, '1000', '1200', '12010', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526117, '1000', '1200', '12011', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526118, '1000', '1200', '12011', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526119, '1000', '1200', '12011', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526120, '1000', '1200', '12011', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 5, '1900', 'I', 'Other Allowance', 0, 1000, 1000, 1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526121, '1000', '1200', '12011', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 200, 200, '2999', 'I', 'Total Income', 35000, 36000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526122, '1000', '1200', '12011', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526123, '1000', '1200', '12011', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:11'),
(200623115526124, '1000', '1200', '12011', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 900, 900, '5999', '', 'Paid Salary', 35000, 36000, 34200, 34200, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:12'),
(200623115526125, '1000', '1200', '12011', '3400', '2021', 6, 'Sep', '2021-09-01', '2021-09-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-09-30', '10:54:12'),
(200623115528194, '1000', '1200', '12007', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:13'),
(200623115528195, '1000', '1200', '12007', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:13'),
(200623115528196, '1000', '1200', '12007', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:13'),
(200623115528197, '1000', '1200', '12007', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:13'),
(200623115528198, '1000', '1200', '12007', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:13'),
(200623115528199, '1000', '1200', '12007', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:13'),
(200623115528200, '1000', '1200', '12007', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:13'),
(200623115528201, '1000', '1200', '12007', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:13'),
(200623115528202, '1000', '1200', '12008', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:13'),
(200623115528203, '1000', '1200', '12008', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:13'),
(200623115528204, '1000', '1200', '12008', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:14'),
(200623115528205, '1000', '1200', '12008', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:14'),
(200623115528206, '1000', '1200', '12008', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:14'),
(200623115528207, '1000', '1200', '12008', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:14'),
(200623115528208, '1000', '1200', '12008', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:14'),
(200623115528209, '1000', '1200', '12008', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:14'),
(200623115528210, '1000', '1200', '12008', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:14'),
(200623115528220, '1000', '1200', '12010', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528221, '1000', '1200', '12010', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528222, '1000', '1200', '12010', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528223, '1000', '1200', '12010', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528224, '1000', '1200', '12010', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528225, '1000', '1200', '12010', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528226, '1000', '1200', '12010', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528227, '1000', '1200', '12010', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528228, '1000', '1200', '12011', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528229, '1000', '1200', '12011', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528230, '1000', '1200', '12011', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528231, '1000', '1200', '12011', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 5, '1900', 'I', 'Other Allowance', 0, 1000, 1000, 1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528232, '1000', '1200', '12011', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 200, 200, '2999', 'I', 'Total Income', 35000, 36000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:15'),
(200623115528233, '1000', '1200', '12011', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:16'),
(200623115528234, '1000', '1200', '12011', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:16'),
(200623115528235, '1000', '1200', '12011', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 900, 900, '5999', '', 'Paid Salary', 35000, 36000, 34200, 34200, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:16'),
(200623115528236, '1000', '1200', '12011', '3400', '2021', 7, 'Oct', '2021-10-01', '2021-10-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2021-10-28', '14:53:16'),
(200623115535273, '1000', '1200', '12007', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:45'),
(200623115535274, '1000', '1200', '12007', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:45'),
(200623115535275, '1000', '1200', '12007', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:45'),
(200623115535276, '1000', '1200', '12007', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:45'),
(200623115535277, '1000', '1200', '12007', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:45'),
(200623115535278, '1000', '1200', '12007', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:45'),
(200623115535279, '1000', '1200', '12007', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:45'),
(200623115535280, '1000', '1200', '12007', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:45'),
(200623115535281, '1000', '1200', '12008', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:45'),
(200623115535282, '1000', '1200', '12008', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:45'),
(200623115535283, '1000', '1200', '12008', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:46'),
(200623115535284, '1000', '1200', '12008', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:46'),
(200623115535285, '1000', '1200', '12008', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:46'),
(200623115535286, '1000', '1200', '12008', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:46'),
(200623115535287, '1000', '1200', '12008', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:46'),
(200623115535288, '1000', '1200', '12008', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:46'),
(200623115535289, '1000', '1200', '12008', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:46'),
(200623115535299, '1000', '1200', '12010', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535300, '1000', '1200', '12010', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535301, '1000', '1200', '12010', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535302, '1000', '1200', '12010', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535303, '1000', '1200', '12010', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535304, '1000', '1200', '12010', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535305, '1000', '1200', '12010', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535306, '1000', '1200', '12010', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535307, '1000', '1200', '12011', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535308, '1000', '1200', '12011', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535309, '1000', '1200', '12011', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 5, '1300', 'I', 'Other', 0, 1000, 1000, 1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535310, '1000', '1200', '12011', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535311, '1000', '1200', '12011', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 200, 200, '2999', 'I', 'Total Income', 35000, 36000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535312, '1000', '1200', '12011', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:47'),
(200623115535313, '1000', '1200', '12011', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:48'),
(200623115535314, '1000', '1200', '12011', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 900, 900, '5999', '', 'Paid Salary', 35000, 36000, 34200, 34200, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:48'),
(200623115535315, '1000', '1200', '12011', '3400', '2021', 8, 'Nov', '2021-11-01', '2021-11-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 22, 0, 8, 0, 0, 0, 30, 'USER1', '2021-12-22', '11:34:48');
INSERT INTO `t2250111` (`PYMPDUniqueId`, `PYMPDCompany`, `PYMPDLocId`, `PYMPDEmpCode`, `PYMPDDesigId`, `PYMPDFiscalYear`, `PYMPDFiscalPeriod`, `PYMPDFiscalMonth`, `PYMPDFromDate`, `PYMPDToDate`, `PYMPDSysId`, `PYMPDUserSorting`, `PYMPDIncDedId`, `PYMPDIncOrDed`, `PYMPDDesc`, `PYMPDGrossIncome`, `PYMPDGrossPay`, `PYMPDPayrollAmt`, `PYMPDUserEditedAmt`, `PYMPDCompContriGross`, `PYMPDCompContriNet`, `PYMPDCompContriUserEditedAmt`, `PYMPDIsTaxable`, `PYMPDIsExemptInTax`, `PYMPDConsiderInPF`, `PYMPDConsiderInPT`, `PYMPDConsiderInESIC`, `PYMPDConsiderInLWF`, `PYMPDConsiderInOT`, `PYMPDConsiderInWage`, `PYMPDConsiderInTDS`, `PYMPDCaldendarDays`, `PYMPDPresentDays`, `PYMPDAbsentDays`, `PYMPDWeeklyOff`, `PYMPDPublicHolidays`, `PYMPDPaidLeave`, `PYMPDLeaveWithoutPay`, `PYMPDPaidDays`, `PYMPDUser`, `PYMPDSysDate`, `PYMPDSysTime`) VALUES
(200623115551932, '1000', '1200', '12007', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551933, '1000', '1200', '12007', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551934, '1000', '1200', '12007', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551935, '1000', '1200', '12007', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551936, '1000', '1200', '12007', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551937, '1000', '1200', '12007', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551938, '1000', '1200', '12007', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551939, '1000', '1200', '12007', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 28715, 28715, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551940, '1000', '1200', '12007', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551941, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551942, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551943, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:51'),
(200623115551944, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:52'),
(200623115551945, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:52'),
(200623115551946, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:52'),
(200623115551947, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:52'),
(200623115551948, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:52'),
(200623115551949, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 29760, 29760, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:52'),
(200623115551950, '1000', '1200', '12008', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:52'),
(200623115551961, '1000', '1200', '12010', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551962, '1000', '1200', '12010', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551963, '1000', '1200', '12010', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551964, '1000', '1200', '12010', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551965, '1000', '1200', '12010', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551966, '1000', '1200', '12010', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551967, '1000', '1200', '12010', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551968, '1000', '1200', '12010', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 29136, 29136, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551969, '1000', '1200', '12010', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551970, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551971, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551972, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551973, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 5, '1900', 'I', 'Other Allowance', 0, 1000, 1000, 1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551974, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 200, 200, '2999', 'I', 'Total Income', 35000, 36000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551975, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:53'),
(200623115551976, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:54'),
(200623115551977, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 500, 3, '5200', 'D', 'PT', 0, 0, -1250, -1250, 0, 0, 0, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:54'),
(200623115551978, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 900, 900, '5999', '', 'Paid Salary', 35000, 36000, 32950, 32950, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:54'),
(200623115551979, '1000', '1200', '12011', '3400', '2021', 10, 'Jan', '2022-01-01', '2022-01-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -3050, -3050, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 21, 0, 10, 0, 0, 0, 31, 'USER1', '2022-01-31', '15:58:54'),
(200623115554337, '1000', '1200', '12007', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:04'),
(200623115554338, '1000', '1200', '12007', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:04'),
(200623115554339, '1000', '1200', '12007', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:04'),
(200623115554340, '1000', '1200', '12007', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:04'),
(200623115554341, '1000', '1200', '12007', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:04'),
(200623115554342, '1000', '1200', '12007', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:04'),
(200623115554343, '1000', '1200', '12007', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:04'),
(200623115554344, '1000', '1200', '12007', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:05'),
(200623115554345, '1000', '1200', '12008', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:05'),
(200623115554346, '1000', '1200', '12008', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:05'),
(200623115554347, '1000', '1200', '12008', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:05'),
(200623115554348, '1000', '1200', '12008', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:05'),
(200623115554349, '1000', '1200', '12008', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:05'),
(200623115554350, '1000', '1200', '12008', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:05'),
(200623115554351, '1000', '1200', '12008', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:05'),
(200623115554352, '1000', '1200', '12008', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:05'),
(200623115554353, '1000', '1200', '12008', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:05'),
(200623115554363, '1000', '1200', '12010', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554364, '1000', '1200', '12010', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554365, '1000', '1200', '12010', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554366, '1000', '1200', '12010', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554367, '1000', '1200', '12010', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554368, '1000', '1200', '12010', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554369, '1000', '1200', '12010', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554370, '1000', '1200', '12010', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554371, '1000', '1200', '12011', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554372, '1000', '1200', '12011', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554373, '1000', '1200', '12011', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:06'),
(200623115554374, '1000', '1200', '12011', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 5, '1900', 'I', 'Other Allowance', 0, 1000, 1000, 1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:07'),
(200623115554375, '1000', '1200', '12011', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 200, 200, '2999', 'I', 'Total Income', 35000, 36000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:07'),
(200623115554376, '1000', '1200', '12011', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:07'),
(200623115554377, '1000', '1200', '12011', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:07'),
(200623115554378, '1000', '1200', '12011', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 900, 900, '5999', '', 'Paid Salary', 35000, 36000, 34200, 34200, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:07'),
(200623115554379, '1000', '1200', '12011', '3400', '2021', 11, 'Feb', '2022-02-01', '2022-02-28', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 28, 20, 0, 8, 0, 0, 0, 28, 'USER1', '2022-03-02', '14:48:07'),
(200623115556593, '1000', '1200', '12007', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556594, '1000', '1200', '12007', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556595, '1000', '1200', '12007', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556596, '1000', '1200', '12007', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556597, '1000', '1200', '12007', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556598, '1000', '1200', '12007', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556599, '1000', '1200', '12007', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556600, '1000', '1200', '12007', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556601, '1000', '1200', '12008', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556602, '1000', '1200', '12008', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556603, '1000', '1200', '12008', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556604, '1000', '1200', '12008', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:09'),
(200623115556605, '1000', '1200', '12008', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:10'),
(200623115556606, '1000', '1200', '12008', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:10'),
(200623115556607, '1000', '1200', '12008', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:10'),
(200623115556608, '1000', '1200', '12008', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:10'),
(200623115556609, '1000', '1200', '12008', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:10'),
(200623115556619, '1000', '1200', '12010', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:10'),
(200623115556620, '1000', '1200', '12010', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:10'),
(200623115556621, '1000', '1200', '12010', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556622, '1000', '1200', '12010', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556623, '1000', '1200', '12010', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556624, '1000', '1200', '12010', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556625, '1000', '1200', '12010', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556626, '1000', '1200', '12010', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556627, '1000', '1200', '12011', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556628, '1000', '1200', '12011', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556629, '1000', '1200', '12011', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556630, '1000', '1200', '12011', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 5, '1900', 'I', 'Other Allowance', 0, 1000, 1000, 1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556631, '1000', '1200', '12011', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 200, 200, '2999', 'I', 'Total Income', 35000, 36000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556632, '1000', '1200', '12011', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556633, '1000', '1200', '12011', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556634, '1000', '1200', '12011', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 900, 900, '5999', '', 'Paid Salary', 35000, 36000, 34200, 34200, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115556635, '1000', '1200', '12011', '3400', '2021', 9, 'Dec', '2021-12-01', '2021-12-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-03-11', '10:49:11'),
(200623115565947, '1000', '1200', '12007', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565948, '1000', '1200', '12007', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565949, '1000', '1200', '12007', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565950, '1000', '1200', '12007', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565951, '1000', '1200', '12007', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565952, '1000', '1200', '12007', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565953, '1000', '1200', '12007', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565954, '1000', '1200', '12007', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565955, '1000', '1200', '12008', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565956, '1000', '1200', '12008', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565957, '1000', '1200', '12008', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565958, '1000', '1200', '12008', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:19'),
(200623115565959, '1000', '1200', '12008', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:20'),
(200623115565960, '1000', '1200', '12008', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:20'),
(200623115565961, '1000', '1200', '12008', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:20'),
(200623115565962, '1000', '1200', '12008', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:20'),
(200623115565963, '1000', '1200', '12008', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:20'),
(200623115565973, '1000', '1200', '12010', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:20'),
(200623115565974, '1000', '1200', '12010', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:20'),
(200623115565975, '1000', '1200', '12010', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:20'),
(200623115565976, '1000', '1200', '12010', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565977, '1000', '1200', '12010', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565978, '1000', '1200', '12010', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565979, '1000', '1200', '12010', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565980, '1000', '1200', '12010', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565981, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565982, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 500, 4, '1004', 'D', 'Reduction in Income', 0, 0, -300, -300, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565983, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565984, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565985, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 5, '1900', 'I', 'Other Allowance', 0, 1000, 1000, 1000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565986, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 200, 200, '2999', 'I', 'Total Income', 35000, 36000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565987, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565988, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565989, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 900, 900, '5999', '', 'Paid Salary', 35000, 36000, 33900, 33900, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:21'),
(200623115565990, '1000', '1200', '12011', '3400', '2021', 12, 'Mar', '2022-03-01', '2022-03-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -2100, -2100, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 23, 0, 8, 0, 0, 0, 31, 'USER1', '2022-04-04', '12:44:22'),
(200623115571483, '1000', '1200', '12007', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:18'),
(200623115571484, '1000', '1200', '12007', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:18'),
(200623115571485, '1000', '1200', '12007', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:18'),
(200623115571486, '1000', '1200', '12007', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:18'),
(200623115571487, '1000', '1200', '12007', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:18'),
(200623115571488, '1000', '1200', '12007', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:18'),
(200623115571489, '1000', '1200', '12007', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:18'),
(200623115571490, '1000', '1200', '12007', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:18'),
(200623115571491, '1000', '1200', '12008', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:18'),
(200623115571492, '1000', '1200', '12008', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:19'),
(200623115571493, '1000', '1200', '12008', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:19'),
(200623115571494, '1000', '1200', '12008', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:19'),
(200623115571495, '1000', '1200', '12008', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:19'),
(200623115571496, '1000', '1200', '12008', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:19'),
(200623115571497, '1000', '1200', '12008', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:19'),
(200623115571498, '1000', '1200', '12008', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:19'),
(200623115571499, '1000', '1200', '12008', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:19'),
(200623115571508, '1000', '1200', '12010', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571509, '1000', '1200', '12010', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571510, '1000', '1200', '12010', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571511, '1000', '1200', '12010', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571512, '1000', '1200', '12010', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571513, '1000', '1200', '12010', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571514, '1000', '1200', '12010', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571515, '1000', '1200', '12010', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571516, '1000', '1200', '12011', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571517, '1000', '1200', '12011', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571518, '1000', '1200', '12011', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571519, '1000', '1200', '12011', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 200, 200, '2999', 'I', 'Total Income', 35000, 35000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571520, '1000', '1200', '12011', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571521, '1000', '1200', '12011', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571522, '1000', '1200', '12011', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 900, 900, '5999', '', 'Paid Salary', 35000, 35000, 33200, 33200, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:20'),
(200623115571523, '1000', '1200', '12011', '3400', '2022', 1, 'Apr', '2022-04-01', '2022-04-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-05-04', '14:03:21');
INSERT INTO `t2250111` (`PYMPDUniqueId`, `PYMPDCompany`, `PYMPDLocId`, `PYMPDEmpCode`, `PYMPDDesigId`, `PYMPDFiscalYear`, `PYMPDFiscalPeriod`, `PYMPDFiscalMonth`, `PYMPDFromDate`, `PYMPDToDate`, `PYMPDSysId`, `PYMPDUserSorting`, `PYMPDIncDedId`, `PYMPDIncOrDed`, `PYMPDDesc`, `PYMPDGrossIncome`, `PYMPDGrossPay`, `PYMPDPayrollAmt`, `PYMPDUserEditedAmt`, `PYMPDCompContriGross`, `PYMPDCompContriNet`, `PYMPDCompContriUserEditedAmt`, `PYMPDIsTaxable`, `PYMPDIsExemptInTax`, `PYMPDConsiderInPF`, `PYMPDConsiderInPT`, `PYMPDConsiderInESIC`, `PYMPDConsiderInLWF`, `PYMPDConsiderInOT`, `PYMPDConsiderInWage`, `PYMPDConsiderInTDS`, `PYMPDCaldendarDays`, `PYMPDPresentDays`, `PYMPDAbsentDays`, `PYMPDWeeklyOff`, `PYMPDPublicHolidays`, `PYMPDPaidLeave`, `PYMPDLeaveWithoutPay`, `PYMPDPaidDays`, `PYMPDUser`, `PYMPDSysDate`, `PYMPDSysTime`) VALUES
(200623115577740, '1000', '1200', '12007', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:04'),
(200623115577741, '1000', '1200', '12007', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:04'),
(200623115577742, '1000', '1200', '12007', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 3, '1400', 'I', 'CCA', 3013, 3013, 3013, 3013, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:04'),
(200623115577743, '1000', '1200', '12007', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 200, 200, '2999', 'I', 'Total Income', 31765, 31765, 31765, 31765, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:04'),
(200623115577744, '1000', '1200', '12007', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:04'),
(200623115577745, '1000', '1200', '12007', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:04'),
(200623115577746, '1000', '1200', '12007', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 900, 900, '5999', '', 'Paid Salary', 31765, 31765, 29965, 29965, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:04'),
(200623115577747, '1000', '1200', '12007', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:04'),
(200623115577748, '1000', '1200', '12008', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:04'),
(200623115577749, '1000', '1200', '12008', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:04'),
(200623115577750, '1000', '1200', '12008', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:05'),
(200623115577751, '1000', '1200', '12008', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 4, '1400', 'I', 'CCA', 3062, 3062, 3062, 3062, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:05'),
(200623115577752, '1000', '1200', '12008', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 200, 200, '2999', 'I', 'Total Income', 32810, 32810, 32810, 32810, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:05'),
(200623115577753, '1000', '1200', '12008', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:05'),
(200623115577754, '1000', '1200', '12008', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:05'),
(200623115577755, '1000', '1200', '12008', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 900, 900, '5999', '', 'Paid Salary', 32810, 32810, 31010, 31010, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:05'),
(200623115577756, '1000', '1200', '12008', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:05'),
(200623115577765, '1000', '1200', '12010', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:05'),
(200623115577766, '1000', '1200', '12010', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577767, '1000', '1200', '12010', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 3, '1400', 'I', 'CCA', 3033, 3033, 3033, 3033, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577768, '1000', '1200', '12010', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 200, 200, '2999', 'I', 'Total Income', 32186, 32186, 32186, 32186, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577769, '1000', '1200', '12010', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577770, '1000', '1200', '12010', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577771, '1000', '1200', '12010', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 900, 900, '5999', '', 'Paid Salary', 32186, 32186, 30386, 30386, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577772, '1000', '1200', '12010', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577773, '1000', '1200', '12011', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577774, '1000', '1200', '12011', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577775, '1000', '1200', '12011', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 3, '1400', 'I', 'CCA', 11244, 11244, 11244, 11244, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577776, '1000', '1200', '12011', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 200, 200, '2999', 'I', 'Total Income', 35000, 35000, 35000, 35000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577777, '1000', '1200', '12011', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577778, '1000', '1200', '12011', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577779, '1000', '1200', '12011', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 900, 900, '5999', '', 'Paid Salary', 35000, 35000, 33200, 33200, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:06'),
(200623115577780, '1000', '1200', '12011', '3400', '2022', 2, 'May', '2022-05-01', '2022-05-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-06-03', '09:06:07'),
(200623115583552, '1000', '1200', '12007', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:10'),
(200623115583553, '1000', '1200', '12007', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:10'),
(200623115583554, '1000', '1200', '12007', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 3, '1400', 'I', 'CCA', 3966, 3966, 3966, 3966, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:10'),
(200623115583555, '1000', '1200', '12007', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 200, 200, '2999', 'I', 'Total Income', 32718, 32718, 32718, 32718, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:10'),
(200623115583556, '1000', '1200', '12007', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:10'),
(200623115583557, '1000', '1200', '12007', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:10'),
(200623115583558, '1000', '1200', '12007', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 900, 900, '5999', '', 'Paid Salary', 32718, 32718, 30918, 30918, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583559, '1000', '1200', '12007', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583560, '1000', '1200', '12008', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583561, '1000', '1200', '12008', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583562, '1000', '1200', '12008', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583563, '1000', '1200', '12008', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 4, '1400', 'I', 'CCA', 4046, 4046, 4046, 4046, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583564, '1000', '1200', '12008', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 200, 200, '2999', 'I', 'Total Income', 33794, 33794, 33794, 33794, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583565, '1000', '1200', '12008', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583566, '1000', '1200', '12008', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583567, '1000', '1200', '12008', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 900, 900, '5999', '', 'Paid Salary', 33794, 33794, 31994, 31994, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583568, '1000', '1200', '12008', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:11'),
(200623115583578, '1000', '1200', '12010', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 16626.67, 16626.67, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 29, 0, 0, 0, 0, 1, 29, 'USER1', '2022-07-01', '17:00:12'),
(200623115583579, '1000', '1200', '12010', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7482, 7482, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 29, 0, 0, 0, 0, 1, 29, 'USER1', '2022-07-01', '17:00:12'),
(200623115583580, '1000', '1200', '12010', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 3, '1400', 'I', 'CCA', 4499, 4499, 4349.03, 4349.03, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 29, 0, 0, 0, 0, 1, 29, 'USER1', '2022-07-01', '17:00:12'),
(200623115583581, '1000', '1200', '12010', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 5, '1900', 'I', 'Other Allowance', 0, 800, 800, 800, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 29, 0, 0, 0, 0, 1, 29, 'USER1', '2022-07-01', '17:00:12'),
(200623115583582, '1000', '1200', '12010', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 200, 200, '2999', 'I', 'Total Income', 33652, 34452, 32530.27, 32530.27, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 29, 0, 0, 0, 0, 1, 29, 'USER1', '2022-07-01', '17:00:12'),
(200623115583583, '1000', '1200', '12010', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4072.57, 4072.57, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 29, 0, 0, 0, 0, 1, 29, 'USER1', '2022-07-01', '17:00:12'),
(200623115583584, '1000', '1200', '12010', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 29, 0, 0, 0, 0, 1, 29, 'USER1', '2022-07-01', '17:00:12'),
(200623115583585, '1000', '1200', '12010', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 900, 900, '5999', '', 'Paid Salary', 33652, 34452, 31530, 31530, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 29, 0, 0, 0, 0, 1, 29, 'USER1', '2022-07-01', '17:00:12'),
(200623115583586, '1000', '1200', '12010', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 29, 0, 0, 0, 0, 1, 29, 'USER1', '2022-07-01', '17:00:12'),
(200623115583587, '1000', '1200', '12011', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:12'),
(200623115583588, '1000', '1200', '12011', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:12'),
(200623115583589, '1000', '1200', '12011', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 3, '1400', 'I', 'CCA', 12794, 12794, 12794, 12794, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:13'),
(200623115583590, '1000', '1200', '12011', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 5, '1900', 'I', 'Other Allowance', 0, 800, 800, 800, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:13'),
(200623115583591, '1000', '1200', '12011', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 200, 200, '2999', 'I', 'Total Income', 36550, 37350, 36550, 36550, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:13'),
(200623115583592, '1000', '1200', '12011', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:13'),
(200623115583593, '1000', '1200', '12011', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:13'),
(200623115583594, '1000', '1200', '12011', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 900, 900, '5999', '', 'Paid Salary', 36550, 37350, 35550, 35550, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:13'),
(200623115583595, '1000', '1200', '12011', '3400', '2022', 3, 'Jun', '2022-06-01', '2022-06-30', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 30, 30, 0, 0, 0, 0, 0, 30, 'USER1', '2022-07-01', '17:00:13'),
(200623115590024, '1000', '1200', '12007', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 14446.77, 14446.77, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 26.5, 0, 0, 0, 0, 4.5, 26.5, 'USER1', '2022-07-30', '12:13:46'),
(200623115590025, '1000', '1200', '12007', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 6501.05, 6501.05, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 26.5, 0, 0, 0, 0, 4.5, 26.5, 'USER1', '2022-07-30', '12:13:46'),
(200623115590026, '1000', '1200', '12007', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 3, '1400', 'I', 'CCA', 3966, 3966, 3390.29, 3390.29, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 26.5, 0, 0, 0, 0, 4.5, 26.5, 'USER1', '2022-07-30', '12:13:47'),
(200623115590027, '1000', '1200', '12007', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 200, 200, '2999', 'I', 'Total Income', 32718, 32718, 27968.61, 27968.61, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 26.5, 0, 0, 0, 0, 4.5, 26.5, 'USER1', '2022-07-30', '12:13:47'),
(200623115590028, '1000', '1200', '12007', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 3630.5, 3630.5, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 26.5, 0, 0, 0, 0, 4.5, 26.5, 'USER1', '2022-07-30', '12:13:47'),
(200623115590029, '1000', '1200', '12007', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 26.5, 0, 0, 0, 0, 4.5, 26.5, 'USER1', '2022-07-30', '12:13:47'),
(200623115590030, '1000', '1200', '12007', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 900, 900, '5999', '', 'Paid Salary', 32718, 32718, 26169, 26169, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 26.5, 0, 0, 0, 0, 4.5, 26.5, 'USER1', '2022-07-30', '12:13:47'),
(200623115590031, '1000', '1200', '12007', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 26.5, 0, 0, 0, 0, 4.5, 26.5, 'USER1', '2022-07-30', '12:13:47'),
(200623115590032, '1000', '1200', '12008', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:47'),
(200623115590033, '1000', '1200', '12008', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:47'),
(200623115590034, '1000', '1200', '12008', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:47'),
(200623115590035, '1000', '1200', '12008', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 4, '1400', 'I', 'CCA', 4046, 4046, 4046, 4046, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:47'),
(200623115590036, '1000', '1200', '12008', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 200, 200, '2999', 'I', 'Total Income', 33794, 33794, 33794, 33794, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:47'),
(200623115590037, '1000', '1200', '12008', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:47'),
(200623115590038, '1000', '1200', '12008', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:47'),
(200623115590039, '1000', '1200', '12008', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 900, 900, '5999', '', 'Paid Salary', 33794, 33794, 31994, 31994, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:47'),
(200623115590040, '1000', '1200', '12008', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:47'),
(200623115590050, '1000', '1200', '12010', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:48'),
(200623115590051, '1000', '1200', '12010', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:48'),
(200623115590052, '1000', '1200', '12010', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 3, '1400', 'I', 'CCA', 4499, 4499, 4499, 4499, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:48'),
(200623115590053, '1000', '1200', '12010', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 5, '1900', 'I', 'Other Allowance', 0, 800, 800, 800, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:48'),
(200623115590054, '1000', '1200', '12010', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 200, 200, '2999', 'I', 'Total Income', 33652, 34452, 33652, 33652, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:48'),
(200623115590055, '1000', '1200', '12010', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:48'),
(200623115590056, '1000', '1200', '12010', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:48'),
(200623115590057, '1000', '1200', '12010', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 900, 900, '5999', '', 'Paid Salary', 33652, 34452, 32652, 32652, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590058, '1000', '1200', '12010', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590059, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 14000, 14000, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590060, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 500, 4, '1004', 'D', 'Reduction in Income', 0, 0, -295, -295, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590061, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6300, 6300, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590062, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 3, '1400', 'I', 'CCA', 12794, 12794, 12794, 12794, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590063, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 5, '1900', 'I', 'Other Allowance', 0, 800, 800, 800, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590064, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 200, 200, '2999', 'I', 'Total Income', 36550, 37350, 36550, 36550, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590065, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3456, 3456, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590066, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590067, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 900, 900, '5999', '', 'Paid Salary', 36550, 37350, 35255, 35255, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115590068, '1000', '1200', '12011', '3400', '2022', 4, 'Jul', '2022-07-01', '2022-07-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -2095, -2095, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-07-30', '12:13:49'),
(200623115592698, '1000', '1200', '12007', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 1, '1000', 'I', 'Basic', 16900, 16900, 16900, 16900, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:18'),
(200623115592699, '1000', '1200', '12007', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 2, '1100', 'I', 'DA', 7605, 7605, 7605, 7605, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:18'),
(200623115592700, '1000', '1200', '12007', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 3, '1400', 'I', 'CCA', 3966, 3966, 3966, 3966, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:18'),
(200623115592701, '1000', '1200', '12007', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 5, '1601', 'I', 'Festival Incentive', 0, 3000, 3000, 3000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:18'),
(200623115592702, '1000', '1200', '12007', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 200, 200, '2999', 'I', 'Total Income', 32718, 35718, 32718, 32718, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:18'),
(200623115592703, '1000', '1200', '12007', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 4, '4000', 'I', 'HRA', 4247, 4247, 4247, 4247, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:18'),
(200623115592704, '1000', '1200', '12007', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:18'),
(200623115592705, '1000', '1200', '12007', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 900, 900, '5999', '', 'Paid Salary', 32718, 35718, 33918, 33918, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592706, '1000', '1200', '12007', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592707, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 1, '1000', 'I', 'Basic', 17240, 17240, 17240, 17240, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592708, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 2, '1100', 'I', 'DA', 7758, 7758, 7758, 7758, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592709, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 3, '1300', 'I', 'Other', 450, 450, 450, 450, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592710, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 4, '1400', 'I', 'CCA', 4046, 4046, 4046, 4046, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592711, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 6, '1601', 'I', 'Festival Incentive', 0, 3000, 3000, 3000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592712, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 200, 200, '2999', 'I', 'Total Income', 33794, 36794, 33794, 33794, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592713, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 5, '4000', 'I', 'HRA', 4300, 4300, 4300, 4300, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592714, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592715, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 900, 900, '5999', '', 'Paid Salary', 33794, 36794, 34994, 34994, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592716, '1000', '1200', '12008', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:19'),
(200623115592727, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 1, '1000', 'I', 'Basic', 17200, 17200, 17200, 17200, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:20'),
(200623115592728, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 2, '1100', 'I', 'DA', 7740, 7740, 7740, 7740, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:20'),
(200623115592729, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 3, '1400', 'I', 'CCA', 4499, 4499, 4499, 4499, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:20'),
(200623115592730, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 5, '1601', 'I', 'Festival Incentive', 0, 3000, 3000, 3000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:20'),
(200623115592731, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 6, '1900', 'I', 'Other Allowance', 0, 800, 800, 800, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:20'),
(200623115592732, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 200, 200, '2999', 'I', 'Total Income', 33652, 37452, 33652, 33652, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:20'),
(200623115592733, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 4, '4000', 'I', 'HRA', 4213, 4213, 4213, 4213, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:20'),
(200623115592734, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:20'),
(200623115592735, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 900, 900, '5999', '', 'Paid Salary', 33652, 37452, 35652, 35652, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:20'),
(200623115592736, '1000', '1200', '12010', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 31, 0, 0, 0, 0, 0, 31, 'USER1', '2022-09-19', '14:02:20'),
(200623115592737, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 1, '1000', 'I', 'Basic', 14000, 14000, 13548.39, 13548.39, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 30, 0, 0, 0, 0, 1, 30, 'USER1', '2022-09-19', '14:02:21'),
(200623115592738, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 2, '1100', 'I', 'DA', 6300, 6300, 6096.77, 6096.77, 0, 0, 0, b'1', b'1', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 30, 0, 0, 0, 0, 1, 30, 'USER1', '2022-09-19', '14:02:21'),
(200623115592739, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 3, '1400', 'I', 'CCA', 12794, 12794, 12381.29, 12381.29, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 30, 0, 0, 0, 0, 1, 30, 'USER1', '2022-09-19', '14:02:21'),
(200623115592740, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 5, '1601', 'I', 'Festival Incentive', 0, 3000, 3000, 3000, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 30, 0, 0, 0, 0, 1, 30, 'USER1', '2022-09-19', '14:02:21'),
(200623115592741, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 6, '1900', 'I', 'Other Allowance', 0, 800, 800, 800, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 30, 0, 0, 0, 0, 1, 30, 'USER1', '2022-09-19', '14:02:21'),
(200623115592742, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 200, 200, '2999', 'I', 'Total Income', 36550, 40350, 35370.97, 35370.97, 0, 0, 0, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 30, 0, 0, 0, 0, 1, 30, 'USER1', '2022-09-19', '14:02:21'),
(200623115592743, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 100, 4, '4000', 'I', 'HRA', 3456, 3456, 3344.52, 3344.52, 0, 0, 0, b'1', b'0', b'1', b'1', b'1', b'0', b'0', b'0', b'0', 31, 30, 0, 0, 0, 0, 1, 30, 'USER1', '2022-09-19', '14:02:21'),
(200623115592744, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 500, 1, '5000', 'D', 'PF', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 30, 0, 0, 0, 0, 1, 30, 'USER1', '2022-09-19', '14:02:21'),
(200623115592745, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 900, 900, '5999', '', 'Paid Salary', 36550, 40350, 37371, 37371, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 30, 0, 0, 0, 0, 1, 30, 'USER1', '2022-09-19', '14:02:21'),
(200623115592746, '1000', '1200', '12011', '3400', '2022', 5, 'Aug', '2022-08-01', '2022-08-31', 600, 600, '5999', 'D', 'Total Deductions', 0, 0, -1800, -1800, 0, -1950, -1950, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 31, 30, 0, 0, 0, 0, 1, 30, 'USER1', '2022-09-19', '14:02:21');

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
(163, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMDTHDeductionIdK\' cannot be null (SQL: insert into `t11906l02` (`PMDTHDeductionId`, `PMDTHDeductionIdK`, `PMDTHLastCreated`, `PMDTHDesc1`, `PMDTHDesc2`, `PMDTHIsTaxExempted`, `PMDTHRuleId`, `PMDTHDeductionCycle`, `PMDTHPrintingSeq`, `PMDTHRoundingStrategy`, `PMDTHMarkForDeletion`, `PMDTHUser`, `PMDTHLastUpdated`) values (6000, ?, 2023-04-06 07:53:03, wecwec, wewe, ?, D4000, P, 022, 1300, 0, admin, 2023-04-06 07:53:03))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-06 07:53:03', NULL),
(164, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMIDDIncDedIdK\' cannot be null (SQL: insert into `t11906l010211` (`PMIDDIncDedId`, `PMIDDIncDedIdK`, `PMIDDIncOrDed`, `PMIDDDesc`, `PMIDDPeriodId`, `PMIDDMarkForDeletion`, `PMIDDUser`, `PMIDDLastCreated`, `PMIDDLastUpdated`) values (4000, ?, I, HRA, 1, 0, admin, 2023-04-14 09:09:30, 2023-04-14 09:09:30))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-14 09:09:31', NULL),
(165, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMIDDIncDedIdK\' cannot be null (SQL: insert into `t11906l010211` (`PMIDDIncDedId`, `PMIDDIncDedIdK`, `PMIDDIncOrDed`, `PMIDDDesc`, `PMIDDPeriodId`, `PMIDDMarkForDeletion`, `PMIDDUser`, `PMIDDLastCreated`, `PMIDDLastUpdated`) values (4000, ?, I, HRA, 1, 0, admin, 2023-04-14 09:18:31, 2023-04-14 09:18:31))\",\"line\":760,\"code\":\"23000\",\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\"}', '2023-04-14 09:18:31', NULL),
(166, '{\"message\":\"Undefined variable $requestt\",\"line\":47,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\IncomeDeductionType\\\\IncomeTypeController.php\"}', '2023-04-14 08:09:13', NULL),
(167, '{\"message\":\"Undefined variable $requestt\",\"line\":47,\"code\":0,\"file\":\"E:\\\\3SIS_Pro\\\\3SISPro_Test\\\\app\\\\Http\\\\Controllers\\\\Config\\\\IncomeDeductionType\\\\IncomeTypeController.php\"}', '2023-04-14 08:09:20', NULL),
(168, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMIDDIncDedIdK\' cannot be null (SQL: insert into `t11906l010211` (`PMIDDIncDedId`, `PMIDDIncDedIdK`, `PMIDDIncOrDed`, `PMIDDDesc`, `PMIDDPeriodId`, `PMIDDMarkForDeletion`, `PMIDDUser`, `PMIDDLastCreated`, `PMIDDLastUpdated`) values (111, ?, I, 123, 1,9,12, 0, admin, 2023-04-14 22:30:40, 2023-04-14 22:30:40))\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 10:30:40', NULL),
(169, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMIDDIncDedIdK\' cannot be null (SQL: insert into `t11906l010211` (`PMIDDIncDedId`, `PMIDDIncDedIdK`, `PMIDDIncOrDed`, `PMIDDDesc`, `PMIDDPeriodId`, `PMIDDMarkForDeletion`, `PMIDDUser`, `PMIDDLastCreated`, `PMIDDLastUpdated`) values (111, ?, I, 123, 1,9,12, 0, admin, 2023-04-14 22:31:09, 2023-04-14 22:31:09))\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 10:31:09', NULL),
(170, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMITHIncomeIdK\' cannot be null (SQL: insert into `t11906l01` (`PMITHIncomeId`, `PMITHIncomeIdK`, `PMITHLastCreated`, `PMITHDesc1`, `PMITHDesc2`, `PMITHIsTaxable`, `PMITHRuleId`, `PMITHIncomeCycle`, `PMITHPrintingSeq`, `PMITHRoundingStrategy`, `PMITHMarkForDeletion`, `PMITHUser`, `PMITHLastUpdated`) values (111, ?, 2023-04-14 22:38:22, 123, 1234, 1, I5000, P, 5, 1100, 0, admin, 2023-04-14 22:38:22))\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 10:38:22', NULL),
(171, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMITHIncomeIdK\' cannot be null (SQL: insert into `t11906l01` (`PMITHIncomeId`, `PMITHIncomeIdK`, `PMITHLastCreated`, `PMITHDesc1`, `PMITHDesc2`, `PMITHIsTaxable`, `PMITHRuleId`, `PMITHIncomeCycle`, `PMITHPrintingSeq`, `PMITHRoundingStrategy`, `PMITHMarkForDeletion`, `PMITHUser`, `PMITHLastUpdated`) values (11, ?, 2023-04-14 22:41:33, 12, 13, ?, I5000, P, 4, 1100, 0, admin, 2023-04-14 22:41:33))\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 10:41:33', NULL),
(172, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMITHIncomeIdK\' cannot be null (SQL: insert into `t11906l01` (`PMITHIncomeId`, `PMITHIncomeIdK`, `PMITHLastCreated`, `PMITHDesc1`, `PMITHDesc2`, `PMITHIsTaxable`, `PMITHRuleId`, `PMITHIncomeCycle`, `PMITHPrintingSeq`, `PMITHRoundingStrategy`, `PMITHMarkForDeletion`, `PMITHUser`, `PMITHLastUpdated`) values (11, ?, 2023-04-14 22:41:56, 12, 13, 1, I5000, P, 4, 1100, 0, admin, 2023-04-14 22:41:56))\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 10:41:56', NULL),
(173, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMITHIncomeIdK\' cannot be null (SQL: insert into `t11906l01` (`PMITHIncomeId`, `PMITHIncomeIdK`, `PMITHLastCreated`, `PMITHDesc1`, `PMITHDesc2`, `PMITHIsTaxable`, `PMITHRuleId`, `PMITHIncomeCycle`, `PMITHPrintingSeq`, `PMITHRoundingStrategy`, `PMITHMarkForDeletion`, `PMITHUser`, `PMITHLastUpdated`) values (11, ?, 2023-04-14 22:41:59, 12, 13, 1, I5000, P, 4, 1100, 0, admin, 2023-04-14 22:41:59))\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 10:41:59', NULL);
INSERT INTO `technical_error` (`id`, `error`, `created_at`, `updated_at`) VALUES
(174, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMITHIncomeIdK\' cannot be null (SQL: insert into `t11906l01` (`PMITHIncomeId`, `PMITHIncomeIdK`, `PMITHLastCreated`, `PMITHDesc1`, `PMITHDesc2`, `PMITHIsTaxable`, `PMITHRuleId`, `PMITHIncomeCycle`, `PMITHPrintingSeq`, `PMITHRoundingStrategy`, `PMITHMarkForDeletion`, `PMITHUser`, `PMITHLastUpdated`) values (11, ?, 2023-04-14 22:42:02, 12, 13, 1, I5000, P, 4, 1100, 0, admin, 2023-04-14 22:42:02))\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 10:42:02', NULL),
(175, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMITHIncomeIdK\' cannot be null (SQL: insert into `t11906l01` (`PMITHIncomeId`, `PMITHIncomeIdK`, `PMITHLastCreated`, `PMITHDesc1`, `PMITHDesc2`, `PMITHIsTaxable`, `PMITHRuleId`, `PMITHIncomeCycle`, `PMITHPrintingSeq`, `PMITHRoundingStrategy`, `PMITHMarkForDeletion`, `PMITHUser`, `PMITHLastUpdated`) values (11, ?, 2023-04-14 22:42:07, 12, 13, 1, I5000, P, 4, 1100, 0, admin, 2023-04-14 22:42:07))\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 10:42:08', NULL),
(176, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'PMITHIncomeIdK\' cannot be null (SQL: insert into `t11906l01` (`PMITHIncomeId`, `PMITHIncomeIdK`, `PMITHLastCreated`, `PMITHDesc1`, `PMITHDesc2`, `PMITHIsTaxable`, `PMITHRuleId`, `PMITHIncomeCycle`, `PMITHPrintingSeq`, `PMITHRoundingStrategy`, `PMITHMarkForDeletion`, `PMITHUser`, `PMITHLastUpdated`) values (12, ?, 2023-04-14 22:47:42, 123, 1234, ?, I5000, P, 5, 1100, 0, admin, 2023-04-14 22:47:42))\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 10:47:42', NULL),
(177, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1052 Column \'id\' in where clause is ambiguous (SQL: select * from `t11906l01` inner join `t11906l010211` on `t11906l01`.`PMITHIncomeId` = `t11906l010211`.`PMIDDIncDedId` where `id` = 13 limit 1)\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 11:25:06', NULL),
(178, '{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1052 Column \'id\' in where clause is ambiguous (SQL: select * from `t11906l01` inner join `t11906l010211` on `t11906l01`.`PMITHIncomeId` = `t11906l010211`.`PMIDDIncDedId` where `id` = 13 limit 1)\",\"line\":760,\"code\":\"23000\",\"file\":\"\\/media\\/krishna\\/Tutorial\\/Code\\/3sis\\/3SISPro_Test\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Database\\/Connection.php\"}', '2023-04-14 11:25:44', NULL);

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
-- Indexes for table `t22501`
--
ALTER TABLE `t22501`
  ADD UNIQUE KEY `T22501K1` (`PYMPHUniqueId`),
  ADD UNIQUE KEY `T22501K3` (`PYMPHCompany`,`PYMPHEmpCode`,`PYMPHFiscalYear`,`PYMPHFiscalPeriod`),
  ADD KEY `T22501K2` (`PYMPHCompany`,`PYMPHEmpCode`,`PYMPHFiscalYear`,`PYMPHFiscalPeriod`);

--
-- Indexes for table `t2250111`
--
ALTER TABLE `t2250111`
  ADD UNIQUE KEY `T2250111K1` (`PYMPDUniqueId`),
  ADD KEY `T2250111K2` (`PYMPDCompany`,`PYMPDEmpCode`,`PYMPDFiscalYear`,`PYMPDFiscalPeriod`,`PYMPDSysId`,`PYMPDUserSorting`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t11903l02`
--
ALTER TABLE `t11903l02`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t11903l03`
--
ALTER TABLE `t11903l03`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t11903l04`
--
ALTER TABLE `t11903l04`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t11906l01`
--
ALTER TABLE `t11906l01`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `t11906l010211`
--
ALTER TABLE `t11906l010211`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

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
