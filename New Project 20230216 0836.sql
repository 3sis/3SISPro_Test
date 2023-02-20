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
-- Create schema lcol1000dev
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ lcol1000dev;
USE lcol1000dev;

--
-- Table structure for table `lcol1000dev`.`t11101l01`
--

DROP TABLE IF EXISTS `t11101l01`;
CREATE TABLE `t11101l01` (
  `EMGIHUniqueId` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `EMGIHSameAsPresentAdd` tinyint(1) DEFAULT '0',
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
  `EMGIHOTApplicable` tinyint(1) DEFAULT '0',
  `EMGIHOTBasisId` varchar(10) DEFAULT NULL,
  `EMGIHIsDailyWages` tinyint(1) DEFAULT '0',
  `EMGIHDailyWagesId` varchar(10) DEFAULT NULL,
  `EMGIHPFApplicable` tinyint(1) DEFAULT '0',
  `EMGIHPFThreshold` decimal(16,2) DEFAULT '0.00',
  `EMGIHPFAgreedByComp` tinyint(1) DEFAULT '0',
  `EMGIHPFCompLimit` decimal(16,2) DEFAULT '0.00',
  `EMGIHPFAcctNo` varchar(100) DEFAULT NULL,
  `EMGIHRegimeId` varchar(10) DEFAULT NULL,
  `EMGIHIsResignation` tinyint(1) DEFAULT '0',
  `EMGIHDateOfLetterSubmission` date DEFAULT '9999-12-31',
  `EMGIHDateOfResignation` date DEFAULT '9999-12-31',
  `EMGIHDateOfLeaving` date DEFAULT '9999-12-31',
  `EMGIHReason` varchar(200) DEFAULT NULL,
  `EMGIHRemarksForFnF` varchar(200) DEFAULT NULL,
  `EMGIHLeaveWithoutPayIndicator` tinyint(1) DEFAULT '0',
  `EMGIHLeaveWithoutPayFrom` date DEFAULT NULL,
  `EMGIHOldEmployeeCode` varchar(100) DEFAULT NULL,
  `EMGIHGroup` varchar(10) DEFAULT NULL,
  `EMGIHLeaveGroupId` varchar(10) DEFAULT NULL,
  `EMGIHBiDesc` varchar(100) DEFAULT NULL,
  `EEGIHIncomeDefined` tinyint(1) DEFAULT NULL,
  `EEGIHDeductionDefined` tinyint(1) DEFAULT NULL,
  `EMGIHMarkForDeletion` tinyint(1) DEFAULT NULL,
  `EMGIHUser` varchar(50) NOT NULL DEFAULT '3SIS',
  `EMGIHLastCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EMGIHLastUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EMGIHDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`EMGIHUniqueId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lcol1000dev`.`t11101l01`
--

/*!40000 ALTER TABLE `t11101l01` DISABLE KEYS */;
INSERT INTO `t11101l01` (`EMGIHUniqueId`,`EMGIHCompId`,`EMGIHLocationId`,`EMGIHEmployeeId`,`EMGIHSalutationId`,`EMGIHGenderId`,`EMGIHFirstName`,`EMGIHMiddleName`,`EMGIHLastName`,`EMGIHFullName`,`EMGIHDateOfBirth`,`EMGIHDateOfJoining`,`EMGIHDateOfConfirmation`,`EMGIHEmploymentTypeId`,`EMGIHGradeId`,`EMGIHDesignationId`,`EMGIHDepartmentId`,`EMGIHCalendarId`,`EMGIHNationalityId`,`EMGIHReligionId`,`EMGIHRaceCastId`,`EMGIHBloodGroupId`,`EMGIHPhysicalStatusId`,`EMGIHMaritalStatusId`,`EMGIHDateOfMarriage`,`EMGIHSpouseName`,`EMGIHOfficeEmail`,`EMGIHOfficeExtension`,`EMGIHOfficeLandLineNo`,`EMGIHOfficeMobileNo`,`EMGIHPersonalEmail`,`EMGIHPersonalPhoneNo`,`EMGIHPANNo`,`EMGIHAadharNo`,`EMGIHDrivingLicenseNo`,`EMGIHUANNo`,`EMGIHPresentAddress1`,`EMGIHPresentAddress2`,`EMGIHPresentAddress3`,`EMGIHPresentCityId`,`EMGIHPresentStateId`,`EMGIHPresentCountryId`,`EMGIHPresentPinCode`,`EMGIHPresentContactName`,`EMGIHSameAsPresentAdd`,`EMGIHPermanentAddress1`,`EMGIHPermanentAddress2`,`EMGIHPermanentAddress3`,`EMGIHPermanentCityId`,`EMGIHPermanentStateId`,`EMGIHPermanentCountryId`,`EMGIHPermanentPinCode`,`EMGIHPermanentContactName`,`EMGIHPermanentContactNo`,`EMGIHReportingManager1Id`,`EMGIHReportingManager2Id`,`EMGIHReportingManager3Id`,`EMGIHPaymentModeId`,`EMGIHBranchId`,`EMGIHBankId`,`EMGIHIFSCId`,`EMGIHAccountTypeId`,`EMGIHBankAccountNo`,`EMGIHOTApplicable`,`EMGIHOTBasisId`,`EMGIHIsDailyWages`,`EMGIHDailyWagesId`,`EMGIHPFApplicable`,`EMGIHPFThreshold`,`EMGIHPFAgreedByComp`,`EMGIHPFCompLimit`,`EMGIHPFAcctNo`,`EMGIHRegimeId`,`EMGIHIsResignation`,`EMGIHDateOfLetterSubmission`,`EMGIHDateOfResignation`,`EMGIHDateOfLeaving`,`EMGIHReason`,`EMGIHRemarksForFnF`,`EMGIHLeaveWithoutPayIndicator`,`EMGIHLeaveWithoutPayFrom`,`EMGIHOldEmployeeCode`,`EMGIHGroup`,`EMGIHLeaveGroupId`,`EMGIHBiDesc`,`EEGIHIncomeDefined`,`EEGIHDeductionDefined`,`EMGIHMarkForDeletion`,`EMGIHUser`,`EMGIHLastCreated`,`EMGIHLastUpdated`,`EMGIHDeletedAt`) VALUES 
 (1,'1000','10','1000','1100','M','Madhav',NULL,'Saran','Madhav  Saran','1970-01-01','2021-04-05','2021-04-05','1000','1000','1000','1000','1000',NULL,'1000','1000','1000','1000','1100','1970-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pune',NULL,NULL,'10','MH','IN','411038',NULL,1,'pune',NULL,NULL,'10','MH','IN','411038',NULL,NULL,NULL,NULL,NULL,'1000','1000','1000','1234567890','1000','112',NULL,'D',NULL,'D',NULL,'15000.00',1,'15000.00',NULL,'2019',NULL,'9999-12-31','9999-12-31','9999-12-31',NULL,NULL,NULL,NULL,NULL,NULL,'1100',NULL,NULL,NULL,0,'3SIS','2021-12-21 07:08:01','2022-06-06 18:27:43',NULL);
INSERT INTO `t11101l01` (`EMGIHUniqueId`,`EMGIHCompId`,`EMGIHLocationId`,`EMGIHEmployeeId`,`EMGIHSalutationId`,`EMGIHGenderId`,`EMGIHFirstName`,`EMGIHMiddleName`,`EMGIHLastName`,`EMGIHFullName`,`EMGIHDateOfBirth`,`EMGIHDateOfJoining`,`EMGIHDateOfConfirmation`,`EMGIHEmploymentTypeId`,`EMGIHGradeId`,`EMGIHDesignationId`,`EMGIHDepartmentId`,`EMGIHCalendarId`,`EMGIHNationalityId`,`EMGIHReligionId`,`EMGIHRaceCastId`,`EMGIHBloodGroupId`,`EMGIHPhysicalStatusId`,`EMGIHMaritalStatusId`,`EMGIHDateOfMarriage`,`EMGIHSpouseName`,`EMGIHOfficeEmail`,`EMGIHOfficeExtension`,`EMGIHOfficeLandLineNo`,`EMGIHOfficeMobileNo`,`EMGIHPersonalEmail`,`EMGIHPersonalPhoneNo`,`EMGIHPANNo`,`EMGIHAadharNo`,`EMGIHDrivingLicenseNo`,`EMGIHUANNo`,`EMGIHPresentAddress1`,`EMGIHPresentAddress2`,`EMGIHPresentAddress3`,`EMGIHPresentCityId`,`EMGIHPresentStateId`,`EMGIHPresentCountryId`,`EMGIHPresentPinCode`,`EMGIHPresentContactName`,`EMGIHSameAsPresentAdd`,`EMGIHPermanentAddress1`,`EMGIHPermanentAddress2`,`EMGIHPermanentAddress3`,`EMGIHPermanentCityId`,`EMGIHPermanentStateId`,`EMGIHPermanentCountryId`,`EMGIHPermanentPinCode`,`EMGIHPermanentContactName`,`EMGIHPermanentContactNo`,`EMGIHReportingManager1Id`,`EMGIHReportingManager2Id`,`EMGIHReportingManager3Id`,`EMGIHPaymentModeId`,`EMGIHBranchId`,`EMGIHBankId`,`EMGIHIFSCId`,`EMGIHAccountTypeId`,`EMGIHBankAccountNo`,`EMGIHOTApplicable`,`EMGIHOTBasisId`,`EMGIHIsDailyWages`,`EMGIHDailyWagesId`,`EMGIHPFApplicable`,`EMGIHPFThreshold`,`EMGIHPFAgreedByComp`,`EMGIHPFCompLimit`,`EMGIHPFAcctNo`,`EMGIHRegimeId`,`EMGIHIsResignation`,`EMGIHDateOfLetterSubmission`,`EMGIHDateOfResignation`,`EMGIHDateOfLeaving`,`EMGIHReason`,`EMGIHRemarksForFnF`,`EMGIHLeaveWithoutPayIndicator`,`EMGIHLeaveWithoutPayFrom`,`EMGIHOldEmployeeCode`,`EMGIHGroup`,`EMGIHLeaveGroupId`,`EMGIHBiDesc`,`EEGIHIncomeDefined`,`EEGIHDeductionDefined`,`EMGIHMarkForDeletion`,`EMGIHUser`,`EMGIHLastCreated`,`EMGIHLastUpdated`,`EMGIHDeletedAt`) VALUES 
 (2,'1000','20','1100','1000','F','Sarika',NULL,'te','Sarika  te','1970-01-01','2021-01-01','2021-05-05','1100','1000','1100','1100','1000',NULL,'1000','1000','1100','1000','1000','1970-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rea','rrr',NULL,'10','MH','IN','12345',NULL,1,'rea','rrr',NULL,'10','MH','IN','www',NULL,NULL,NULL,NULL,NULL,'1000','1000','1000','1234567890','1000','2367c556v778',NULL,'H',NULL,NULL,NULL,'15000.00',1,'15000.00',NULL,'2019',NULL,'1970-01-01','1970-01-01','2021-05-28',NULL,NULL,NULL,'2021-05-05',NULL,NULL,'1000',NULL,1,NULL,0,'3SIS','2021-12-21 07:08:56','2022-06-06 08:40:37',NULL);
INSERT INTO `t11101l01` (`EMGIHUniqueId`,`EMGIHCompId`,`EMGIHLocationId`,`EMGIHEmployeeId`,`EMGIHSalutationId`,`EMGIHGenderId`,`EMGIHFirstName`,`EMGIHMiddleName`,`EMGIHLastName`,`EMGIHFullName`,`EMGIHDateOfBirth`,`EMGIHDateOfJoining`,`EMGIHDateOfConfirmation`,`EMGIHEmploymentTypeId`,`EMGIHGradeId`,`EMGIHDesignationId`,`EMGIHDepartmentId`,`EMGIHCalendarId`,`EMGIHNationalityId`,`EMGIHReligionId`,`EMGIHRaceCastId`,`EMGIHBloodGroupId`,`EMGIHPhysicalStatusId`,`EMGIHMaritalStatusId`,`EMGIHDateOfMarriage`,`EMGIHSpouseName`,`EMGIHOfficeEmail`,`EMGIHOfficeExtension`,`EMGIHOfficeLandLineNo`,`EMGIHOfficeMobileNo`,`EMGIHPersonalEmail`,`EMGIHPersonalPhoneNo`,`EMGIHPANNo`,`EMGIHAadharNo`,`EMGIHDrivingLicenseNo`,`EMGIHUANNo`,`EMGIHPresentAddress1`,`EMGIHPresentAddress2`,`EMGIHPresentAddress3`,`EMGIHPresentCityId`,`EMGIHPresentStateId`,`EMGIHPresentCountryId`,`EMGIHPresentPinCode`,`EMGIHPresentContactName`,`EMGIHSameAsPresentAdd`,`EMGIHPermanentAddress1`,`EMGIHPermanentAddress2`,`EMGIHPermanentAddress3`,`EMGIHPermanentCityId`,`EMGIHPermanentStateId`,`EMGIHPermanentCountryId`,`EMGIHPermanentPinCode`,`EMGIHPermanentContactName`,`EMGIHPermanentContactNo`,`EMGIHReportingManager1Id`,`EMGIHReportingManager2Id`,`EMGIHReportingManager3Id`,`EMGIHPaymentModeId`,`EMGIHBranchId`,`EMGIHBankId`,`EMGIHIFSCId`,`EMGIHAccountTypeId`,`EMGIHBankAccountNo`,`EMGIHOTApplicable`,`EMGIHOTBasisId`,`EMGIHIsDailyWages`,`EMGIHDailyWagesId`,`EMGIHPFApplicable`,`EMGIHPFThreshold`,`EMGIHPFAgreedByComp`,`EMGIHPFCompLimit`,`EMGIHPFAcctNo`,`EMGIHRegimeId`,`EMGIHIsResignation`,`EMGIHDateOfLetterSubmission`,`EMGIHDateOfResignation`,`EMGIHDateOfLeaving`,`EMGIHReason`,`EMGIHRemarksForFnF`,`EMGIHLeaveWithoutPayIndicator`,`EMGIHLeaveWithoutPayFrom`,`EMGIHOldEmployeeCode`,`EMGIHGroup`,`EMGIHLeaveGroupId`,`EMGIHBiDesc`,`EEGIHIncomeDefined`,`EEGIHDeductionDefined`,`EMGIHMarkForDeletion`,`EMGIHUser`,`EMGIHLastCreated`,`EMGIHLastUpdated`,`EMGIHDeletedAt`) VALUES 
 (3,'1000','20','1200','1100','M','Shishir',NULL,'Donde','Shishir  Donde','2021-11-01','2021-04-01','1970-01-01','1000','1000','1000','1000','1000',NULL,'1000','1000','1000','1000','1000','2022-04-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pune',NULL,NULL,'10','MH','IN','411038',NULL,1,'Pune',NULL,NULL,'10','MH','IN','411038',NULL,NULL,NULL,NULL,NULL,'1000','1000','1000','1234567890','1000','123344',NULL,'D',NULL,'D',NULL,'15000.00',1,'15000.00',NULL,'2020',NULL,'9999-12-31','9999-12-31','9999-12-31',NULL,NULL,1,'2021-04-25',NULL,NULL,'1000',NULL,1,NULL,0,'3SIS','2022-04-08 10:37:16','2022-06-06 08:40:51',NULL);
INSERT INTO `t11101l01` (`EMGIHUniqueId`,`EMGIHCompId`,`EMGIHLocationId`,`EMGIHEmployeeId`,`EMGIHSalutationId`,`EMGIHGenderId`,`EMGIHFirstName`,`EMGIHMiddleName`,`EMGIHLastName`,`EMGIHFullName`,`EMGIHDateOfBirth`,`EMGIHDateOfJoining`,`EMGIHDateOfConfirmation`,`EMGIHEmploymentTypeId`,`EMGIHGradeId`,`EMGIHDesignationId`,`EMGIHDepartmentId`,`EMGIHCalendarId`,`EMGIHNationalityId`,`EMGIHReligionId`,`EMGIHRaceCastId`,`EMGIHBloodGroupId`,`EMGIHPhysicalStatusId`,`EMGIHMaritalStatusId`,`EMGIHDateOfMarriage`,`EMGIHSpouseName`,`EMGIHOfficeEmail`,`EMGIHOfficeExtension`,`EMGIHOfficeLandLineNo`,`EMGIHOfficeMobileNo`,`EMGIHPersonalEmail`,`EMGIHPersonalPhoneNo`,`EMGIHPANNo`,`EMGIHAadharNo`,`EMGIHDrivingLicenseNo`,`EMGIHUANNo`,`EMGIHPresentAddress1`,`EMGIHPresentAddress2`,`EMGIHPresentAddress3`,`EMGIHPresentCityId`,`EMGIHPresentStateId`,`EMGIHPresentCountryId`,`EMGIHPresentPinCode`,`EMGIHPresentContactName`,`EMGIHSameAsPresentAdd`,`EMGIHPermanentAddress1`,`EMGIHPermanentAddress2`,`EMGIHPermanentAddress3`,`EMGIHPermanentCityId`,`EMGIHPermanentStateId`,`EMGIHPermanentCountryId`,`EMGIHPermanentPinCode`,`EMGIHPermanentContactName`,`EMGIHPermanentContactNo`,`EMGIHReportingManager1Id`,`EMGIHReportingManager2Id`,`EMGIHReportingManager3Id`,`EMGIHPaymentModeId`,`EMGIHBranchId`,`EMGIHBankId`,`EMGIHIFSCId`,`EMGIHAccountTypeId`,`EMGIHBankAccountNo`,`EMGIHOTApplicable`,`EMGIHOTBasisId`,`EMGIHIsDailyWages`,`EMGIHDailyWagesId`,`EMGIHPFApplicable`,`EMGIHPFThreshold`,`EMGIHPFAgreedByComp`,`EMGIHPFCompLimit`,`EMGIHPFAcctNo`,`EMGIHRegimeId`,`EMGIHIsResignation`,`EMGIHDateOfLetterSubmission`,`EMGIHDateOfResignation`,`EMGIHDateOfLeaving`,`EMGIHReason`,`EMGIHRemarksForFnF`,`EMGIHLeaveWithoutPayIndicator`,`EMGIHLeaveWithoutPayFrom`,`EMGIHOldEmployeeCode`,`EMGIHGroup`,`EMGIHLeaveGroupId`,`EMGIHBiDesc`,`EEGIHIncomeDefined`,`EEGIHDeductionDefined`,`EMGIHMarkForDeletion`,`EMGIHUser`,`EMGIHLastCreated`,`EMGIHLastUpdated`,`EMGIHDeletedAt`) VALUES 
 (4,'1000','10','1300','1000','F','Swapna',NULL,'Donde','Swapna  Donde','2022-03-29','2021-04-04','1970-01-01','1100','1000','1000','1000','1200',NULL,'1000','1000','1000','1000','1000','1970-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pune',NULL,NULL,'10','MH','IN','411048',NULL,1,'pune',NULL,NULL,'10','MH','IN',NULL,NULL,NULL,NULL,NULL,NULL,'1000','1000','1000','1234567890','1000','1345',NULL,'D',NULL,'D',NULL,'15000.00',1,'15000.00',NULL,'2019',NULL,'9999-12-31','9999-12-31','9999-12-31',NULL,NULL,NULL,'1970-01-01',NULL,NULL,'1000',NULL,1,NULL,0,'3SIS','2022-04-08 10:39:56','2022-06-06 08:41:03',NULL);
/*!40000 ALTER TABLE `t11101l01` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
