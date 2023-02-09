-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.10


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ems
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ ems;
USE ems;

--
-- Table structure for table `ems`.`failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ems`.`failed_jobs`
--

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;


--
-- Table structure for table `ems`.`migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ems`.`migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`,`migration`,`batch`) VALUES 
 (1,'2014_10_12_000000_create_users_table',1),
 (2,'2014_10_12_100000_create_password_resets_table',1),
 (3,'2019_08_19_000000_create_failed_jobs_table',1),
 (4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


--
-- Table structure for table `ems`.`password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ems`.`password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


--
-- Table structure for table `ems`.`personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ems`.`personal_access_tokens`
--

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;


--
-- Table structure for table `ems`.`posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post` varchar(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ems`.`posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`,`user_id`,`post`) VALUES 
 (1,1,'new post');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t00900l01`
--

DROP TABLE IF EXISTS `t00900l01`;
CREATE TABLE `t00900l01` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `AMAMHAppId` int(11) NOT NULL,
  `AMAMHDesc1` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t00900l01`
--

/*!40000 ALTER TABLE `t00900l01` DISABLE KEYS */;
INSERT INTO `t00900l01` (`Id`,`AMAMHAppId`,`AMAMHDesc1`) VALUES 
 (1,11,'Payroll'),
 (2,21,'SnOP Pro\r\n'),
 (3,25,'SFA\r\n'),
 (4,30,'Fixed Asset\r\n');
/*!40000 ALTER TABLE `t00900l01` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t00900l04`
--

DROP TABLE IF EXISTS `t00900l04`;
CREATE TABLE `t00900l04` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `AMACHAccessId` int(11) NOT NULL,
  `AMACHDesc1` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t00900l04`
--

/*!40000 ALTER TABLE `t00900l04` DISABLE KEYS */;
INSERT INTO `t00900l04` (`Id`,`AMACHAccessId`,`AMACHDesc1`) VALUES 
 (1,1,'Add Access\r\n'),
 (2,2,'Update Access\r\n'),
 (3,3,'Full Access\r\n'),
 (4,4,'Display Access\r\n');
/*!40000 ALTER TABLE `t00900l04` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t00900l05`
--

DROP TABLE IF EXISTS `t00900l05`;
CREATE TABLE `t00900l05` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `LMLAHUserId` int(11) NOT NULL,
  `LMLAHDesc1` varchar(100) NOT NULL,
  `LMLAHPassword` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t00900l05`
--

/*!40000 ALTER TABLE `t00900l05` DISABLE KEYS */;
INSERT INTO `t00900l05` (`Id`,`LMLAHUserId`,`LMLAHDesc1`,`LMLAHPassword`) VALUES 
 (1,1,'Krishna\r\n','12345'),
 (2,2,'Madhav','12345'),
 (3,3,'Shrutav\r\n','12345');
/*!40000 ALTER TABLE `t00900l05` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t00900l06`
--

DROP TABLE IF EXISTS `t00900l06`;
CREATE TABLE `t00900l06` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `AAAHHAppId` int(11) NOT NULL,
  `AAAHHDesc1` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t00900l06`
--

/*!40000 ALTER TABLE `t00900l06` DISABLE KEYS */;
INSERT INTO `t00900l06` (`Id`,`user_id`,`AAAHHAppId`,`AAAHHDesc1`) VALUES 
 (1,1,11,'Payroll\r\n'),
 (2,1,21,'S&OP Pro\r\n'),
 (3,1,21,'S&OP Pro\r\n'),
 (4,2,11,'Payroll\r\n'),
 (5,2,21,'S&OP Pro\r\n'),
 (6,2,25,'Sales Force Automation\r\n'),
 (7,3,11,'Payroll\r\n'),
 (8,3,21,'S&OP Pro\r\n'),
 (9,3,25,'Sales Force Automation\r\n'),
 (10,3,30,'Fixed Asset\r\n');
/*!40000 ALTER TABLE `t00900l06` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t00900l0611`
--

DROP TABLE IF EXISTS `t00900l0611`;
CREATE TABLE `t00900l0611` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `AAADDUserId` int(11) NOT NULL,
  `AAADDAppId` int(11) NOT NULL,
  `AAADDDesc1` varchar(100) NOT NULL,
  `AAADDProgramId` varchar(30) NOT NULL,
  `AAADDPrgDesc1` varchar(100) NOT NULL,
  `AAADDAccessId` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t00900l0611`
--

/*!40000 ALTER TABLE `t00900l0611` DISABLE KEYS */;
INSERT INTO `t00900l0611` (`Id`,`AAADDUserId`,`AAADDAppId`,`AAADDDesc1`,`AAADDProgramId`,`AAADDPrgDesc1`,`AAADDAccessId`) VALUES 
 (1,1,11,'Payroll\r\n','CompMast','Company Master\r\n','3'),
 (2,1,11,'Payroll\r\n','GendMast','Gender Master\r\n','2'),
 (3,3,11,'Payroll\r\n','CompMast','Company Master\r\n','3'),
 (4,3,11,'Payroll\r\n','GendMast','Gender Master\r\n','3'),
 (5,3,11,'Payroll\r\n','BldGroup','Blood Group\r\n','4'),
 (6,3,11,'Payroll\r\n','CurrMast','Currency Master\r\n','1');
/*!40000 ALTER TABLE `t00900l0611` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t05901l01`
--

DROP TABLE IF EXISTS `t05901l01`;
CREATE TABLE `t05901l01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `GMCOHESTDate` datetime DEFAULT CURRENT_TIMESTAMP,
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
  `GMCOHDecimalPositionQty` int(11) DEFAULT '0',
  `GMCOHDecimalPositionValue` int(11) DEFAULT '0',
  `GMCOHFolderName` varchar(200) DEFAULT 'No Folder',
  `GMCOHImageFileName` varchar(500) DEFAULT 'No Image File',
  `GMCOHMarkForDeletion` tinyint(1) NOT NULL DEFAULT '0',
  `GMCOHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMCOHLastCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GMCOHLastUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GMCOHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GMCOHCompId` (`GMCOHCompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t05901l01`
--

/*!40000 ALTER TABLE `t05901l01` DISABLE KEYS */;
INSERT INTO `t05901l01` (`id`,`GMCOHCompanyId`,`GMCOHDesc1`,`GMCOHDesc2`,`GMCOHNickName`,`GMCOHTagLine`,`GMCOHCurrencyId`,`GMCOHAddress1`,`GMCOHAddress2`,`GMCOHAddress3`,`GMCOHCityId`,`GMCOHStateId`,`GMCOHCountryId`,`GMCOHPinCode`,`GMCOHLandLine`,`GMCOHMobileNo`,`GMCOHEmail`,`GMCOHWebsite`,`GMCOHCINNo`,`GMCOHPANNo`,`GMCOHGSTNo`,`GMCOHPFNo`,`GMCOHPTNo`,`GMCOHLWFNo`,`GMCOHESICNo`,`GMCOHTANNo`,`GMCOHVATNo`,`GMCOHESTNo`,`GMCOHESTDate`,`GMCOHBankId1`,`GMCOHBranchId1`,`GMCOHIFSId1`,`GMCOHBankAccNo1`,`GMCOHBankAcName1`,`GMCOHBankId2`,`GMCOHBranchId2`,`GMCOHIFSId2`,`GMCOHBankAccNo2`,`GMCOHBankAcName2`,`GMCOHField1`,`GMCOHField2`,`GMCOHField3`,`GMCOHField4`,`GMCOHField5`,`GMCOHBiDesc`,`GMCOHDecimalPositionQty`,`GMCOHDecimalPositionValue`,`GMCOHFolderName`,`GMCOHImageFileName`,`GMCOHMarkForDeletion`,`GMCOHUser`,`GMCOHLastCreated`,`GMCOHLastUpdated`,`GMCOHDeletedAt`) VALUES 
 (4,'1000','3S Innovative Solutions Pvt. Ltd.','3SIS','3SIS1','Journey Towards Excellence','INR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0625-256855','952482285555','test@gmaiol.com','www.3sis.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-08 21:10:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3SIS',0,0,NULL,NULL,0,'admin','2021-12-01 09:05:11','2023-02-09 20:32:15',NULL);
/*!40000 ALTER TABLE `t05901l01` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t05901l03`
--

DROP TABLE IF EXISTS `t05901l03`;
CREATE TABLE `t05901l03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `GMCMHCountryId` varchar(10) NOT NULL,
  `GMCMHDesc1` varchar(100) NOT NULL,
  `GMCMHDesc2` varchar(200) DEFAULT NULL,
  `GMCMHBiDesc` varchar(100) DEFAULT NULL,
  `GMCMHMarkForDeletion` tinyint(1) NOT NULL DEFAULT '0',
  `GMCMHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMCMHLastCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GMCMHLastUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GMCMHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GMCMHCountryId` (`GMCMHCountryId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t05901l03`
--

/*!40000 ALTER TABLE `t05901l03` DISABLE KEYS */;
INSERT INTO `t05901l03` (`id`,`GMCMHCountryId`,`GMCMHDesc1`,`GMCMHDesc2`,`GMCMHBiDesc`,`GMCMHMarkForDeletion`,`GMCMHUser`,`GMCMHLastCreated`,`GMCMHLastUpdated`,`GMCMHDeletedAt`) VALUES 
 (5,'IN','India','IN','IN',1,'3SIS','2021-10-31 09:10:04','2021-11-01 07:11:21',NULL),
 (7,'USA','United State of America','US','USA',0,'admin','2023-01-13 10:43:50','2023-01-13 10:43:50',NULL),
 (8,'SG','Singapore','SG','SG',0,'3SIS','2021-11-01 20:22:49','2021-11-01 20:22:49',NULL),
 (9,'aaa','aaa','aaa','aaa',0,'3SIS','2021-11-23 06:45:30','2021-11-23 06:45:30','2021-11-23 06:45:38'),
 (10,'MY','Mala',NULL,NULL,1,'3SIS','2021-12-01 05:59:18','2022-02-09 14:20:38',NULL);
/*!40000 ALTER TABLE `t05901l03` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t05901l04`
--

DROP TABLE IF EXISTS `t05901l04`;
CREATE TABLE `t05901l04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `GMSMHStateId` varchar(10) NOT NULL,
  `GMSMHCountryId` varchar(10) NOT NULL,
  `GMSMHDesc1` varchar(100) NOT NULL,
  `GMSMHDesc2` varchar(200) DEFAULT NULL,
  `GMSMHBiDesc` varchar(100) DEFAULT NULL,
  `GMSMHMarkForDeletion` tinyint(1) NOT NULL DEFAULT '0',
  `GMSMHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMSMHLastCreated` datetime NOT NULL,
  `GMSMHLastUpdated` datetime NOT NULL,
  `GMSMHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GMSMHStateId` (`GMSMHStateId`,`GMSMHCountryId`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t05901l04`
--

/*!40000 ALTER TABLE `t05901l04` DISABLE KEYS */;
INSERT INTO `t05901l04` (`id`,`GMSMHStateId`,`GMSMHCountryId`,`GMSMHDesc1`,`GMSMHDesc2`,`GMSMHBiDesc`,`GMSMHMarkForDeletion`,`GMSMHUser`,`GMSMHLastCreated`,`GMSMHLastUpdated`,`GMSMHDeletedAt`) VALUES 
 (1,'MH','IN','Maharastra 1234','Maharastra 2','Maharastra',0,'admin','2022-11-30 18:55:48','2022-11-30 18:55:48',NULL),
 (2,'BR','USA','Bihar 1','Bihar','Bihar',0,'admin','2022-12-15 09:27:09','2022-12-15 09:27:09',NULL),
 (5,'AP','IN','Andhra','a','a',0,'3SIS','2021-11-23 05:45:58','2021-11-23 05:45:58',NULL),
 (8,'KA','aaa','KA 11','KA 22',NULL,0,'admin','2022-12-12 07:57:51','2022-12-12 07:57:51',NULL),
 (17,'GJ','IN','Description 1','Description 222',NULL,0,'admin','2022-12-15 09:32:13','2022-12-15 09:32:13',NULL),
 (23,'GA','IN','GA 1','34',NULL,0,'admin','2022-11-26 12:16:37','2022-11-26 12:16:37',NULL),
 (26,'11','IN','12','13',NULL,0,'Krishna','2022-12-07 19:21:31','2022-12-07 19:21:31',NULL),
 (27,'asas','SG','sas','assa',NULL,0,'Krishna','2022-12-07 19:15:24','2022-12-07 19:15:24',NULL),
 (28,'test','USA','1','2',NULL,1,'admin','2022-12-18 12:48:25','2022-12-18 12:48:25',NULL);
INSERT INTO `t05901l04` (`id`,`GMSMHStateId`,`GMSMHCountryId`,`GMSMHDesc1`,`GMSMHDesc2`,`GMSMHBiDesc`,`GMSMHMarkForDeletion`,`GMSMHUser`,`GMSMHLastCreated`,`GMSMHLastUpdated`,`GMSMHDeletedAt`) VALUES 
 (29,'MH1','IN','11111','221111',NULL,0,'Krishna','2022-12-09 18:15:11','2022-12-09 18:15:11',NULL),
 (30,'MH2','USA','1','2',NULL,1,'Krishna','2022-12-07 19:16:44','2022-12-07 19:16:44',NULL),
 (31,'MH5','IN','1','2',NULL,1,'admin','2022-12-02 04:29:18','2022-12-02 04:29:18',NULL),
 (32,'MH50','IN','1110','22',NULL,1,'admin','2022-12-17 10:30:31','2022-12-17 10:30:31',NULL),
 (33,'9999','USA','100','5000',NULL,0,'admin','2022-12-02 13:04:45','2022-12-02 13:04:45',NULL),
 (34,'10000','USA','2222','33333',NULL,0,'admin','2022-12-02 13:06:52','2022-12-02 13:06:52',NULL),
 (35,'909','IN','desc 1','desc 2',NULL,0,'Krishna','2022-12-07 18:21:13','2022-12-07 18:21:13',NULL),
 (36,'112','SG','22','33',NULL,0,'Krishna','2022-12-07 18:32:51','2022-12-07 18:32:51',NULL),
 (37,'12','aaa','12','12',NULL,0,'Krishna','2022-12-07 18:35:23','2022-12-07 18:35:23',NULL),
 (38,'123','MY','2','3',NULL,0,'Krishna','2022-12-07 19:20:37','2022-12-07 19:20:37',NULL);
INSERT INTO `t05901l04` (`id`,`GMSMHStateId`,`GMSMHCountryId`,`GMSMHDesc1`,`GMSMHDesc2`,`GMSMHBiDesc`,`GMSMHMarkForDeletion`,`GMSMHUser`,`GMSMHLastCreated`,`GMSMHLastUpdated`,`GMSMHDeletedAt`) VALUES 
 (39,'1000','SG','123','1233',NULL,0,'Krishna','2022-12-09 18:32:40','2022-12-09 18:32:40',NULL),
 (40,'s01','SG','test','dbxdf',NULL,0,'admin','2023-01-20 11:31:28','2023-01-20 11:31:28',NULL),
 (41,'s02','MY','jv','jtdy',NULL,0,'admin','2022-12-13 09:08:29','2022-12-13 09:08:29',NULL),
 (42,'s03','SG','test123','ttt',NULL,0,'admin','2023-01-31 22:12:14','2023-01-31 22:12:14',NULL),
 (43,'2001','USA','1222','1222',NULL,0,'admin','2022-12-17 09:45:42','2022-12-17 09:45:42',NULL),
 (44,'30012','USA','156','55',NULL,0,'admin','2022-12-17 09:48:08','2022-12-17 09:48:08',NULL),
 (45,'efef','IN','efef','efe',NULL,0,'admin','2022-12-17 10:18:15','2022-12-17 10:18:15',NULL),
 (46,'vee','SG','ee','eg',NULL,1,'admin','2022-12-17 10:32:15','2022-12-17 10:32:15',NULL),
 (47,'rgeg','IN','egeg','ege',NULL,1,'admin','2022-12-17 10:19:46','2022-12-17 10:19:46',NULL),
 (48,'5556','IN','knk','ink',NULL,0,'admin','2022-12-17 11:31:01','2022-12-17 11:31:01',NULL);
INSERT INTO `t05901l04` (`id`,`GMSMHStateId`,`GMSMHCountryId`,`GMSMHDesc1`,`GMSMHDesc2`,`GMSMHBiDesc`,`GMSMHMarkForDeletion`,`GMSMHUser`,`GMSMHLastCreated`,`GMSMHLastUpdated`,`GMSMHDeletedAt`) VALUES 
 (49,'wf','SG','dve','fevev',NULL,1,'admin','2022-12-23 23:23:48','2022-12-23 23:23:48',NULL),
 (50,'vve','IN','4444','444',NULL,1,'admin','2023-02-01 08:17:33','2023-02-01 08:17:33',NULL),
 (51,'eef','IN','wwdw','ww',NULL,0,'admin','2022-12-23 09:38:38','2022-12-23 09:38:38',NULL),
 (52,'ef','IN','fef','fe',NULL,0,'admin','2022-12-23 09:42:52','2022-12-23 09:42:52',NULL),
 (53,'dd','USA','vdvdv','dv',NULL,0,'admin','2022-12-23 09:43:28','2022-12-23 09:43:28',NULL),
 (54,'ee','SG','cc','cc',NULL,0,'admin','2022-12-23 09:45:44','2022-12-23 09:45:44',NULL),
 (55,'ddd','SG','dd','dd',NULL,0,'admin','2022-12-23 09:46:32','2022-12-23 09:46:32',NULL),
 (56,'4e','USA','ffff','fff',NULL,0,'admin','2022-12-23 10:08:37','2022-12-23 10:08:37',NULL),
 (57,'www','SG','ww','ww',NULL,0,'admin','2023-01-03 09:58:25','2023-01-03 09:58:25',NULL),
 (58,'ed','USA','ee','ee',NULL,0,'admin','2022-12-23 10:41:50','2022-12-23 10:41:50',NULL);
INSERT INTO `t05901l04` (`id`,`GMSMHStateId`,`GMSMHCountryId`,`GMSMHDesc1`,`GMSMHDesc2`,`GMSMHBiDesc`,`GMSMHMarkForDeletion`,`GMSMHUser`,`GMSMHLastCreated`,`GMSMHLastUpdated`,`GMSMHDeletedAt`) VALUES 
 (59,'cc','SG','cc','cc',NULL,0,'admin','2022-12-23 10:50:39','2022-12-23 10:50:39',NULL),
 (60,'ccd','IN','d','d',NULL,0,'admin','2022-12-23 10:52:04','2022-12-23 10:52:04',NULL),
 (61,'dddd','SG','ddd','dd',NULL,0,'admin','2022-12-23 22:42:25','2022-12-23 22:42:25',NULL),
 (62,'com01','IN','test','ss',NULL,0,'admin','2022-12-23 22:45:28','2022-12-23 22:45:28',NULL),
 (63,'ddddd','SG','ddd','dd',NULL,0,'admin','2022-12-23 23:15:15','2022-12-23 23:15:15',NULL),
 (64,'dddq1','SG','dcdc','cdc',NULL,0,'admin','2022-12-23 23:16:07','2022-12-23 23:16:07',NULL),
 (65,'ggg','SG','nmm','jjk',NULL,0,'admin','2023-01-19 09:07:43','2023-01-19 09:07:43',NULL);
/*!40000 ALTER TABLE `t05901l04` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t05901l05`
--

DROP TABLE IF EXISTS `t05901l05`;
CREATE TABLE `t05901l05` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `GMCTHCityId` varchar(10) NOT NULL,
  `GMCTHStateId` varchar(10) DEFAULT NULL,
  `GMCTHCountryId` varchar(10) DEFAULT NULL,
  `GMCTHDesc1` varchar(100) NOT NULL,
  `GMCTHDesc2` varchar(200) DEFAULT NULL,
  `GMCTHBiDesc` varchar(100) DEFAULT NULL,
  `GMCTHMarkForDeletion` tinyint(1) NOT NULL DEFAULT '0',
  `GMCTHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMCTHLastCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GMCTHLastUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GMCTHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GMCTHCityId` (`GMCTHCityId`,`GMCTHStateId`,`GMCTHCountryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t05901l05`
--

/*!40000 ALTER TABLE `t05901l05` DISABLE KEYS */;
INSERT INTO `t05901l05` (`id`,`GMCTHCityId`,`GMCTHStateId`,`GMCTHCountryId`,`GMCTHDesc1`,`GMCTHDesc2`,`GMCTHBiDesc`,`GMCTHMarkForDeletion`,`GMCTHUser`,`GMCTHLastCreated`,`GMCTHLastUpdated`,`GMCTHDeletedAt`) VALUES 
 (1,'10','MH','IN','Pune','Pune','PUne',0,'3SIS','2022-11-02 10:37:35','2021-11-22 06:06:59',NULL),
 (2,'20','BR','USA','Mumbaiaaa','Mumbaibbb','MHccc',1,'3SIS','2021-11-22 16:55:08','2022-06-06 08:58:42',NULL),
 (3,'30','AP','SG','Nashik','Nashik1','Nashik2',0,'3SIS','2021-11-22 17:22:06','2021-11-22 17:22:06','2021-11-23 04:21:56'),
 (4,'40','MH','IN','Mumbaiaaa','Mumbaibbb',NULL,0,'admin','2023-01-18 10:24:45','2023-01-18 10:24:45',NULL),
 (7,'50','GA','IN','UP','UP123',NULL,0,'admin','2023-01-18 10:26:50','2023-01-18 10:26:50',NULL),
 (8,'100','11','IN','phk','kuk',NULL,0,'admin','2023-02-09 20:30:35','2023-02-09 20:30:35',NULL),
 (9,'hjhj','GJ','IN','ggj','mhh',NULL,0,'admin','2023-02-09 11:03:13','2023-02-09 11:03:13',NULL);
/*!40000 ALTER TABLE `t05901l05` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t05901l06`
--

DROP TABLE IF EXISTS `t05901l06`;
CREATE TABLE `t05901l06` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `GMLMHCompanyId` varchar(10) NOT NULL,
  `GMLMHLocationId` varchar(10) NOT NULL,
  `GMLMHCityId` varchar(10) DEFAULT NULL,
  `GMLMHStateId` varchar(10) DEFAULT NULL,
  `GMLMHCountryId` varchar(10) DEFAULT NULL,
  `GMLMHDesc1` varchar(100) NOT NULL,
  `GMLMHDesc2` varchar(200) DEFAULT NULL,
  `GMLMHBiDesc` varchar(100) DEFAULT NULL,
  `GMLMHMarkForDeletion` tinyint(1) NOT NULL DEFAULT '0',
  `GMLMHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMLMHLastCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GMLMHLastUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GMLMHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GMLMHCompanyId` (`GMLMHCompanyId`,`GMLMHLocationId`,`GMLMHCityId`,`GMLMHStateId`,`GMLMHCountryId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t05901l06`
--

/*!40000 ALTER TABLE `t05901l06` DISABLE KEYS */;
INSERT INTO `t05901l06` (`id`,`GMLMHCompanyId`,`GMLMHLocationId`,`GMLMHCityId`,`GMLMHStateId`,`GMLMHCountryId`,`GMLMHDesc1`,`GMLMHDesc2`,`GMLMHBiDesc`,`GMLMHMarkForDeletion`,`GMLMHUser`,`GMLMHLastCreated`,`GMLMHLastUpdated`,`GMLMHDeletedAt`) VALUES 
 (1,'1000','10','10','MH','IN','Hadapsar','Hadapsar Branch','Hadapsar Branch',0,'3SIS','2021-11-22 14:21:02','2022-02-09 14:29:59',NULL),
 (2,'1000','20','30','AP','SG','Pune Camp','PC',NULL,0,'admin','2023-01-18 18:48:33','2023-01-18 18:48:33',NULL),
 (3,'1000','30','50','GA','IN','Patna Camp','Patna NaN',NULL,0,'admin','2023-01-18 18:48:18','2023-01-18 18:48:18',NULL),
 (4,'1000','40','30','AP','SG','test','hh',NULL,0,'admin','2023-01-18 18:49:13','2023-01-18 18:49:13',NULL),
 (5,'1000','50','50','GA','IN','Noida','Noida new',NULL,0,'admin','2023-02-04 08:45:30','2023-02-04 08:45:30',NULL),
 (6,'1000','ytff','40','MH','IN','kj1','hh',NULL,1,'admin','2023-01-18 19:15:01','2023-01-18 19:15:01',NULL),
 (7,'1000','m.m.','100','11','IN','m.222','m,',NULL,1,'admin','2023-02-04 08:37:39','2023-02-04 08:37:39',NULL),
 (8,'1000',',,ff','30','AP','SG','bnn','j,,',NULL,1,'admin','2023-01-18 19:19:13','2023-01-18 19:19:13',NULL);
INSERT INTO `t05901l06` (`id`,`GMLMHCompanyId`,`GMLMHLocationId`,`GMLMHCityId`,`GMLMHStateId`,`GMLMHCountryId`,`GMLMHDesc1`,`GMLMHDesc2`,`GMLMHBiDesc`,`GMLMHMarkForDeletion`,`GMLMHUser`,`GMLMHLastCreated`,`GMLMHLastUpdated`,`GMLMHDeletedAt`) VALUES 
 (9,'1000',',nn,mn','40','MH','IN','n,,n,n','mm,.m',NULL,1,'admin','2023-01-18 19:22:26','2023-01-18 19:22:26',NULL),
 (10,'1000',',k//l','20','BR','USA','mm.,',';;k;/',NULL,1,'admin','2023-01-18 19:22:54','2023-01-18 19:22:54',NULL),
 (11,'1000','d.00','20','BR','USA','4fewf','f',NULL,1,'admin','2023-01-18 19:24:05','2023-01-18 19:24:05',NULL),
 (12,'1000','kk','30','AP','SG','kk','kkk',NULL,1,'admin','2023-02-04 08:23:27','2023-02-04 08:23:27',NULL);
/*!40000 ALTER TABLE `t05901l06` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t05901l07`
--

DROP TABLE IF EXISTS `t05901l07`;
CREATE TABLE `t05901l07` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `GMCRHCurrencyId` varchar(10) NOT NULL,
  `GMCRHDesc1` varchar(100) NOT NULL,
  `GMCRHDesc2` varchar(200) DEFAULT NULL,
  `GMCRHBiDesc` varchar(100) DEFAULT NULL,
  `GMCRHMarkForDeletion` tinyint(1) NOT NULL DEFAULT '0',
  `GMCRHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `GMCRHLastCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GMCRHLastUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GMCRHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GMCRHCurrencyId` (`GMCRHCurrencyId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t05901l07`
--

/*!40000 ALTER TABLE `t05901l07` DISABLE KEYS */;
INSERT INTO `t05901l07` (`id`,`GMCRHCurrencyId`,`GMCRHDesc1`,`GMCRHDesc2`,`GMCRHBiDesc`,`GMCRHMarkForDeletion`,`GMCRHUser`,`GMCRHLastCreated`,`GMCRHLastUpdated`,`GMCRHDeletedAt`) VALUES 
 (1,'INR','Indian Rupee','Indian Rupee','INR',0,'3SIS','2021-11-30 14:45:50','2021-12-01 11:02:23',NULL),
 (2,'USD','US Dollars','US Dollars','USD',0,'3SIS','2021-11-30 14:45:50','2021-11-30 14:45:50',NULL),
 (3,'SGD','Singapore Dollars','SGD','SGD',0,'3SIS','2021-12-01 11:04:02','2021-12-01 11:04:02',NULL);
/*!40000 ALTER TABLE `t05901l07` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t05902l01`
--

DROP TABLE IF EXISTS `t05902l01`;
CREATE TABLE `t05902l01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BMBNHBankId` varchar(10) NOT NULL,
  `BMBNHDesc1` varchar(100) NOT NULL,
  `BMBNHDesc2` varchar(200) DEFAULT NULL,
  `BMBNHBiDesc` varchar(100) DEFAULT NULL,
  `BMBNHMarkForDeletion` tinyint(1) NOT NULL DEFAULT '0',
  `BMBNHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `BMBNHLastCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BMBNHLastUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BMBNHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BMBNHBankId` (`BMBNHBankId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t05902l01`
--

/*!40000 ALTER TABLE `t05902l01` DISABLE KEYS */;
INSERT INTO `t05902l01` (`id`,`BMBNHBankId`,`BMBNHDesc1`,`BMBNHDesc2`,`BMBNHBiDesc`,`BMBNHMarkForDeletion`,`BMBNHUser`,`BMBNHLastCreated`,`BMBNHLastUpdated`,`BMBNHDeletedAt`) VALUES 
 (1,'1000','BOM','BOM','BOM',0,'3SIS','2021-11-22 10:49:47','2021-11-22 10:49:47',NULL),
 (2,'1100','SBI1','SBI1','SBI1',0,'3SIS','2021-11-22 10:50:03','2021-11-22 10:50:36',NULL),
 (3,'1200','Bank of India','BOI','BOI',0,'3SIS','2021-11-30 08:01:31','2021-11-30 08:01:31',NULL);
/*!40000 ALTER TABLE `t05902l01` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t05902l02`
--

DROP TABLE IF EXISTS `t05902l02`;
CREATE TABLE `t05902l02` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BMBRHBranchId` varchar(10) NOT NULL,
  `BMBRHBankId` varchar(10) DEFAULT NULL,
  `BMBRHIFSCId` varchar(100) DEFAULT NULL,
  `BMBRHDesc1` varchar(100) NOT NULL,
  `BMBRHDesc2` varchar(200) DEFAULT NULL,
  `BMBRHBiDesc` varchar(100) DEFAULT NULL,
  `BMBRHMarkForDeletion` tinyint(1) NOT NULL DEFAULT '0',
  `BMBRHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `BMBRHLastCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BMBRHLastUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BMBRHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BMBRHBranchId` (`BMBRHBranchId`,`BMBRHBankId`,`BMBRHIFSCId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t05902l02`
--

/*!40000 ALTER TABLE `t05902l02` DISABLE KEYS */;
INSERT INTO `t05902l02` (`id`,`BMBRHBranchId`,`BMBRHBankId`,`BMBRHIFSCId`,`BMBRHDesc1`,`BMBRHDesc2`,`BMBRHBiDesc`,`BMBRHMarkForDeletion`,`BMBRHUser`,`BMBRHLastCreated`,`BMBRHLastUpdated`,`BMBRHDeletedAt`) VALUES 
 (1,'1000','1000','1234567890','BOM Branch','BOM Branch',NULL,0,'3SIS','2021-11-22 10:52:26','2021-11-30 16:06:15',NULL),
 (2,'1100','1200','98765432109876543210','Bank of India Branch','BOI Branch','BOI',0,'3SIS','2021-11-30 16:07:10','2021-11-30 16:07:10',NULL);
/*!40000 ALTER TABLE `t05902l02` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t05902l03`
--

DROP TABLE IF EXISTS `t05902l03`;
CREATE TABLE `t05902l03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BMATHAcctId` varchar(10) NOT NULL,
  `BMATHDesc1` varchar(100) NOT NULL,
  `BMATHDesc2` varchar(200) DEFAULT NULL,
  `BMATHBiDesc` varchar(100) DEFAULT NULL,
  `BMATHMarkForDeletion` tinyint(1) NOT NULL DEFAULT '0',
  `BMATHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `BMATHLastCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BMATHLastUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BMATHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BMATHAcctId` (`BMATHAcctId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t05902l03`
--

/*!40000 ALTER TABLE `t05902l03` DISABLE KEYS */;
INSERT INTO `t05902l03` (`id`,`BMATHAcctId`,`BMATHDesc1`,`BMATHDesc2`,`BMATHBiDesc`,`BMATHMarkForDeletion`,`BMATHUser`,`BMATHLastCreated`,`BMATHLastUpdated`,`BMATHDeletedAt`) VALUES 
 (1,'1000','Saving Account','Sava','SavA',0,'3SIS','2021-11-22 10:51:47','2022-02-09 14:18:18',NULL);
/*!40000 ALTER TABLE `t05902l03` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t05902l04`
--

DROP TABLE IF EXISTS `t05902l04`;
CREATE TABLE `t05902l04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BMPMHPaymentModeId` varchar(10) NOT NULL,
  `BMPMHDesc1` varchar(100) NOT NULL,
  `BMPMHDesc2` varchar(200) DEFAULT NULL,
  `BMPMHBiDesc` varchar(100) DEFAULT NULL,
  `BMPMHMarkForDeletion` tinyint(1) NOT NULL DEFAULT '0',
  `BMPMHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `BMPMHLastCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BMPMHLastUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BMPMHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BMPMHPaymentModeId` (`BMPMHPaymentModeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ems`.`t05902l04`
--

/*!40000 ALTER TABLE `t05902l04` DISABLE KEYS */;
INSERT INTO `t05902l04` (`id`,`BMPMHPaymentModeId`,`BMPMHDesc1`,`BMPMHDesc2`,`BMPMHBiDesc`,`BMPMHMarkForDeletion`,`BMPMHUser`,`BMPMHLastCreated`,`BMPMHLastUpdated`,`BMPMHDeletedAt`) VALUES 
 (1,'1000','NEFT','NEFT',NULL,0,'3SIS','2021-11-22 10:52:59','2021-11-28 08:58:09',NULL);
/*!40000 ALTER TABLE `t05902l04` ENABLE KEYS */;


--
-- Table structure for table `ems`.`t92`
--

DROP TABLE IF EXISTS `t92`;
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
  `MNDesc3` varchar(100) NOT NULL,
  UNIQUE KEY `MNCompId` (`MNCompId`,`MNSystemId`,`MNRootCode`,`MNParentCode`,`MNChildCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ems`.`t92`
--

/*!40000 ALTER TABLE `t92` DISABLE KEYS */;
INSERT INTO `t92` (`id`,`MNCompId`,`MNSystemId`,`MNRootCode`,`MNParentCode`,`MNChildCode`,`MNMenuTitle`,`MNFastPath`,`MNRoute`,`MNFormHeadeding`,`MNDesc1`,`MNDesc2`,`MNDesc3`) VALUES 
 (1,'',11,0,'0.00','89.00','Application','','','Application','','',''),
 (2,'',11,0,'0.00','91.00','Configuration','','','Configuration','','',''),
 (3,'',11,0,'89.00','88.00','App 2','APP','app/index','App 2','','',''),
 (4,'',11,0,'91.00','9100.00','Admin','','','Admin','','',''),
 (5,'',11,0,'91.00','9200.00','State Master','ST','state','State','','',''),
 (7,'',11,0,'91.00','9210.00','City Master','CT','city','city','','',''),
 (6,'',11,0,'91.00','9220.00','Location Master','LM','location','location','','',''),
 (8,'',11,0,'91.00','9300.00','GeneralMaster','','','Common','','',''),
 (9,'',11,0,'9100.00','9101.00','Company Master','CSM1','company/index1','Customize/Company Master','','',''),
 (10,'',11,0,'9100.00','9102.00','General','GEN','general/index','General Info','','',''),
 (11,'',11,0,'9102.00','9103.00','Salutation','','new/index','Salutation Master','','',''),
 (13,'',11,0,'9102.00','9104.00','Gender Master','','','Gender Master','','','');
INSERT INTO `t92` (`id`,`MNCompId`,`MNSystemId`,`MNRootCode`,`MNParentCode`,`MNChildCode`,`MNMenuTitle`,`MNFastPath`,`MNRoute`,`MNFormHeadeding`,`MNDesc1`,`MNDesc2`,`MNDesc3`) VALUES 
 (14,'',11,0,'9104.00','9501.00','New Child','','','New Child','','',''),
 (15,'',11,0,'9300.00','9300.05','Company Master','CSM','company','GeneralMaster/Company Master','','','');
/*!40000 ALTER TABLE `t92` ENABLE KEYS */;


--
-- Table structure for table `ems`.`technical_error`
--

DROP TABLE IF EXISTS `technical_error`;
CREATE TABLE `technical_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `error` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ems`.`technical_error`
--

/*!40000 ALTER TABLE `technical_error` DISABLE KEYS */;
INSERT INTO `technical_error` (`id`,`error`,`created_at`,`updated_at`) VALUES 
 (1,'{\"message\":\"Undefined variable $request\",\"line\":149,\"code\":0,\"file\":\"\\/media\\/krishna\\/Tutorial\\/3sis\\/payroll\\/app\\/Http\\/Controllers\\/Config\\/GeneralMaster\\/StateController.php\",\"severity\":2}','2022-12-10 01:27:09',NULL);
/*!40000 ALTER TABLE `technical_error` ENABLE KEYS */;


--
-- Table structure for table `ems`.`theme_setting`
--

DROP TABLE IF EXISTS `theme_setting`;
CREATE TABLE `theme_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) DEFAULT NULL,
  `theme` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ems`.`theme_setting`
--

/*!40000 ALTER TABLE `theme_setting` DISABLE KEYS */;
INSERT INTO `theme_setting` (`id`,`type`,`theme`) VALUES 
 (1,'table','purple_Browser1D_3SIS'),
 (2,'table','purple_Browser2D_3SIS'),
 (3,'modal','purple_ContentModal1D_3SIS'),
 (4,'modal','purple_ContentModal2D_3SIS'),
 (5,'card','purple_Card1D_3SIS');
/*!40000 ALTER TABLE `theme_setting` ENABLE KEYS */;


--
-- Table structure for table `ems`.`users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ems`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`theme`,`created_at`,`updated_at`) VALUES 
 (1,'admin','admin@cork.com',NULL,'$2y$10$4.qdQyWtb/vE0QFvV3H1qOQWFsJ.qo732L2mwdnpWzzt.6LAMy49S',NULL,0x7B227461626C65223A322C20226D6F64616C223A20332C2263617264223A357D,'2022-11-01 23:44:50','2022-11-01 23:44:50'),
 (2,'krishna','krishna@gmail.com',NULL,'$2y$10$4.qdQyWtb/vE0QFvV3H1qOQWFsJ.qo732L2mwdnpWzzt.6LAMy49S',NULL,0x7B227461626C65223A312C20226D6F64616C223A20342C2263617264223A357D,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
