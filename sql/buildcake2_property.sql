-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: buildcake2_property
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accountingautoexpenses`
--

DROP TABLE IF EXISTS `accountingautoexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountingautoexpenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `automobile_expenses` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountingautoexpenses`
--

LOCK TABLES `accountingautoexpenses` WRITE;
/*!40000 ALTER TABLE `accountingautoexpenses` DISABLE KEYS */;
INSERT INTO `accountingautoexpenses` VALUES (1,'Fuel'),(2,'Insurance'),(3,'Interest Exp'),(4,'Lease payments'),(5,'Maintenance'),(6,'Other Exp'),(7,'Registration');
/*!40000 ALTER TABLE `accountingautoexpenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountingexpenses`
--

DROP TABLE IF EXISTS `accountingexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountingexpenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accounting_expense` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountingexpenses`
--

LOCK TABLES `accountingexpenses` WRITE;
/*!40000 ALTER TABLE `accountingexpenses` DISABLE KEYS */;
INSERT INTO `accountingexpenses` VALUES (1,'Advertising'),(2,'Auto'),(3,'Bad Debt'),(4,'Fuel'),(5,'Home'),(6,'Insurance, Business'),(7,'Interest Paid'),(8,'Legal & professional fees'),(9,'Licences & Permits'),(10,'Maintenance'),(11,'Management'),(12,'Meals & Entertainment'),(13,'Office'),(14,'Other Expenses'),(15,'Postage & Delivery'),(16,'Property Tax (Business)'),(17,'Rent Expenses'),(18,'Salary & Wages'),(19,'Supplies, Business'),(20,'Telephone & Utilities'),(21,'Travel, Business');
/*!40000 ALTER TABLE `accountingexpenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountinghomeexpenses`
--

DROP TABLE IF EXISTS `accountinghomeexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountinghomeexpenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountinghomeexpense` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountinghomeexpenses`
--

LOCK TABLES `accountinghomeexpenses` WRITE;
/*!40000 ALTER TABLE `accountinghomeexpenses` DISABLE KEYS */;
INSERT INTO `accountinghomeexpenses` VALUES (1,'Electric'),(2,'Heat'),(3,'Insurance'),(4,'Maintenance'),(5,'Mortgage Interest'),(6,'Other Exp'),(7,'Property Tax (Business use of  home)');
/*!40000 ALTER TABLE `accountinghomeexpenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountingperiods`
--

DROP TABLE IF EXISTS `accountingperiods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountingperiods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accounting_period` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountingperiods`
--

LOCK TABLES `accountingperiods` WRITE;
/*!40000 ALTER TABLE `accountingperiods` DISABLE KEYS */;
INSERT INTO `accountingperiods` VALUES (1,'2015'),(2,'2016');
/*!40000 ALTER TABLE `accountingperiods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountings`
--

DROP TABLE IF EXISTS `accountings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountings` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  `accountingtype_id` int(11) NOT NULL,
  `entry_date` date NOT NULL,
  `reference_#` varchar(50) NOT NULL,
  `accountingperiod_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `amount` float DEFAULT NULL,
  `Tax_id` float NOT NULL,
  `accountingexpense_id` int(11) NOT NULL,
  `accountingautoexpense_id` int(11) NOT NULL,
  `accountinghomeexpense_id` int(11) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `memo` text,
  `recurring_id` int(11) NOT NULL,
  `repeating_id` int(11) NOT NULL,
  `starting_on` date NOT NULL,
  `repeat_until` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountings`
--

LOCK TABLES `accountings` WRITE;
/*!40000 ALTER TABLE `accountings` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountingtypes`
--

DROP TABLE IF EXISTS `accountingtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountingtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accounting_type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountingtypes`
--

LOCK TABLES `accountingtypes` WRITE;
/*!40000 ALTER TABLE `accountingtypes` DISABLE KEYS */;
INSERT INTO `accountingtypes` VALUES (1,'Income'),(2,'Expense');
/*!40000 ALTER TABLE `accountingtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acos`
--

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alternateemails`
--

DROP TABLE IF EXISTS `alternateemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alternateemails` (
  `id` int(200) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `alternate_email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternateemails`
--

LOCK TABLES `alternateemails` WRITE;
/*!40000 ALTER TABLE `alternateemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `alternateemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `gender_id` int(11) NOT NULL,
  `marital_status_id` int(11) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `alternate emails` varchar(200) NOT NULL,
  `cell_phone` varchar(15) DEFAULT NULL,
  `home_phone` varchar(200) NOT NULL,
  `work_phone` varchar(200) DEFAULT NULL,
  `fax` varchar(200) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `street` text NOT NULL,
  `City` varchar(15) NOT NULL,
  `zip` int(11) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `driver_license_number` varchar(15) DEFAULT NULL,
  `driver_license_state` varchar(15) DEFAULT NULL,
  `total_number_of_occupants` varchar(15) DEFAULT NULL,
  `unit_or_address_applying_for` varchar(40) DEFAULT NULL,
  `requested_lease_term` varchar(15) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `emergency_contact` varchar(100) DEFAULT NULL,
  `emergency_contact_email` varchar(200) NOT NULL,
  `emergency_contact_phone` varchar(200) NOT NULL,
  `relationship_to_tenant` varchar(200) NOT NULL,
  `co_signer_details` varchar(100) DEFAULT NULL,
  `notes` text,
  `photo` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `property_or_address_applying_for` (`unit_or_address_applying_for`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications_leases`
--

DROP TABLE IF EXISTS `applications_leases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications_leases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tenant_id` int(10) unsigned DEFAULT NULL,
  `property_id` int(10) unsigned DEFAULT NULL,
  `unit_id` int(10) unsigned DEFAULT NULL,
  `leasestype_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `automatically_end_the_lease` tinyint(1) NOT NULL,
  `recurringcharge_id` int(11) DEFAULT NULL,
  `next_due_date` date DEFAULT NULL,
  `rent_mount` varchar(40) DEFAULT NULL,
  `security_deposit` decimal(15,0) DEFAULT NULL,
  `security_deposit_date` date DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `notes` text,
  `agreement` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications_leases`
--

LOCK TABLES `applications_leases` WRITE;
/*!40000 ALTER TABLE `applications_leases` DISABLE KEYS */;
INSERT INTO `applications_leases` VALUES (1,1,1,1,0,'2014-04-01','2015-04-01',0,0,'2014-05-01','700',1400,'2014-03-03',0,'<br>','1',NULL,NULL),(2,3,2,2,0,'2014-05-01','2016-04-30',0,0,'2014-06-01','800',1600,'2014-03-01',0,'<br>','1',NULL,NULL),(3,2,2,6,0,'2014-04-01','2016-03-31',0,0,'2014-05-01','900',1800,'2014-03-01',0,'<br>','1',NULL,NULL);
/*!40000 ALTER TABLE `applications_leases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros`
--

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros_acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) unsigned NOT NULL,
  `aco_id` int(10) unsigned NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros_acos`
--

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authake_groups`
--

DROP TABLE IF EXISTS `authake_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authake_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authake_groups`
--

LOCK TABLES `authake_groups` WRITE;
/*!40000 ALTER TABLE `authake_groups` DISABLE KEYS */;
INSERT INTO `authake_groups` VALUES (1,'Administrators'),(2,'Registered users'),(3,'author');
/*!40000 ALTER TABLE `authake_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authake_groups_users`
--

DROP TABLE IF EXISTS `authake_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authake_groups_users` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authake_groups_users`
--

LOCK TABLES `authake_groups_users` WRITE;
/*!40000 ALTER TABLE `authake_groups_users` DISABLE KEYS */;
INSERT INTO `authake_groups_users` VALUES (2,2),(3,2),(1,1);
/*!40000 ALTER TABLE `authake_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authake_rules`
--

DROP TABLE IF EXISTS `authake_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authake_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Rule description',
  `group_id` int(10) unsigned DEFAULT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `action` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission` tinyint(1) NOT NULL DEFAULT '0',
  `forward` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authake_rules`
--

LOCK TABLES `authake_rules` WRITE;
/*!40000 ALTER TABLE `authake_rules` DISABLE KEYS */;
INSERT INTO `authake_rules` VALUES (1,'Allow everything for Administrators',1,999999,'*',1,'',''),(2,'Allow anybody to see the home page, the error page, to register, to log in, see profile and log out',NULL,200,'/ or /* or  /authake/user/* or /register or /login or /logout or /lost-password or /verify(/)?* or /pass(/)?* or /profile or /denied or /pages(/)?* or //pages/*',1,'',''),(4,'Deny everything for everybody by default (allow to have allow by default then deny)',NULL,0,'*',0,'','Access denied!'),(6,'Display a message for denied admin page',NULL,100,'/authake(/index)? or /authake/users* or /authake/groups* or /authake/rules*',0,'','You are not allowed to access the administration page!');
/*!40000 ALTER TABLE `authake_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authake_users`
--

DROP TABLE IF EXISTS `authake_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authake_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `emailcheckcode` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `passwordchangecode` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `disable` tinyint(1) NOT NULL COMMENT 'Disable/enable account',
  `expire_account` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authake_users`
--

LOCK TABLES `authake_users` WRITE;
/*!40000 ALTER TABLE `authake_users` DISABLE KEYS */;
INSERT INTO `authake_users` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','alezyy@yahoo.com','','',0,'2031-05-05','2008-02-12 12:19:31','2008-02-12 12:19:31'),(2,'test','098f6bcd4621d373cade4e832627b4f6','tizpeople@gmail.com','e367590af7d67b32a0180845703fe4de','',0,'2034-05-14','2015-05-05 19:48:19','2015-05-05 19:48:19'),(3,'mona','1a1dc91c907325c69271ddf0c944bc72','mona@email.com','','',0,'2021-05-05','2015-05-05 19:58:02','2015-05-05 19:58:02');
/*!40000 ALTER TABLE `authake_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cake_sessions`
--

DROP TABLE IF EXISTS `cake_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cake_sessions` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cake_sessions`
--

LOCK TABLES `cake_sessions` WRITE;
/*!40000 ALTER TABLE `cake_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cake_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,93,3,'Delmas'),(2,93,4,'Milo'),(3,38,7,'kiji');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(90) NOT NULL,
  `description` text NOT NULL,
  `restaurant` varchar(80) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `condition` text NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (1,'Casa Grec $25 Gift certificate.','You can win Casa Grec $25 Gift certificate.','Casa Grec','2015-05-19','2015-05-31','We must ....',0),(2,'Le Ridgewood','$ 25 carte cadeau du  Ridgewood. ','Le Ridgewood','2015-05-25','2015-07-20','consommation cash',1),(3,'Pizza palace price','$50 gift certificate','Pizza palace','2015-05-20','2015-05-30','$50 gift certificate',0),(4,'Caribec','caribec gift certificate','Caribec','2015-05-22','2015-05-30','caribec gift certificate',0),(5,'DEF gift ','Def gift certificate $ 45','DEF gift ','2015-06-26','2015-05-29','Def gift certificate $ 45',0),(6,'Maks resto','Maks resto','Maks resto','2015-05-28','2015-05-31','Maks resto',0);
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comptable`
--

DROP TABLE IF EXISTS `comptable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comptable` (
  `id` int(10) NOT NULL,
  `id_tenants` int(10) NOT NULL,
  `id_payments` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comptable`
--

LOCK TABLES `comptable` WRITE;
/*!40000 ALTER TABLE `comptable` DISABLE KEYS */;
/*!40000 ALTER TABLE `comptable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comptable1`
--

DROP TABLE IF EXISTS `comptable1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comptable1` (
  `ID` int(10) NOT NULL,
  `tenant_id` int(10) NOT NULL,
  `payment_id` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comptable1`
--

LOCK TABLES `comptable1` WRITE;
/*!40000 ALTER TABLE `comptable1` DISABLE KEYS */;
/*!40000 ALTER TABLE `comptable1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comptable1s`
--

DROP TABLE IF EXISTS `comptable1s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comptable1s` (
  `ID` int(10) NOT NULL,
  `tenant_id` int(10) NOT NULL,
  `payment_id` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comptable1s`
--

LOCK TABLES `comptable1s` WRITE;
/*!40000 ALTER TABLE `comptable1s` DISABLE KEYS */;
/*!40000 ALTER TABLE `comptable1s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactaddresses`
--

DROP TABLE IF EXISTS `contactaddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactaddresses` (
  `id` int(19) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL,
  `mailing_city` varchar(40) DEFAULT NULL,
  `mailing_street` varchar(250) DEFAULT NULL,
  `mailing_country` varchar(40) DEFAULT NULL,
  `other_country` varchar(30) DEFAULT NULL,
  `mailing_state` varchar(30) DEFAULT NULL,
  `mailing_pobox` varchar(30) DEFAULT NULL,
  `other_city` varchar(40) DEFAULT NULL,
  `others_tate` varchar(50) DEFAULT NULL,
  `mailing_zip` varchar(30) DEFAULT NULL,
  `other_zip` varchar(30) DEFAULT NULL,
  `other_street` varchar(250) DEFAULT NULL,
  `other_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactaddresses`
--

LOCK TABLES `contactaddresses` WRITE;
/*!40000 ALTER TABLE `contactaddresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactaddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(19) NOT NULL DEFAULT '0',
  `contact_no` varchar(100) NOT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(80) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `contacttype_id` int(11) DEFAULT NULL,
  `otheremail` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `donotcall` varchar(3) DEFAULT NULL,
  `emailoptout` varchar(3) DEFAULT '0',
  `imagename` varchar(150) DEFAULT NULL,
  `reference` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactsubdetails`
--

DROP TABLE IF EXISTS `contactsubdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactsubdetails` (
  `id` int(19) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL,
  `home_phone` varchar(50) DEFAULT NULL,
  `other_phone` varchar(50) DEFAULT NULL,
  `assistant` varchar(30) DEFAULT NULL,
  `assistant_phone` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `laststayintouchrequest` int(30) DEFAULT '0',
  `laststayintouchsavedate` int(19) DEFAULT '0',
  `lead_source` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactsubdetails`
--

LOCK TABLES `contactsubdetails` WRITE;
/*!40000 ALTER TABLE `contactsubdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactsubdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacttypes`
--

DROP TABLE IF EXISTS `contacttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacttypes`
--

LOCK TABLES `contacttypes` WRITE;
/*!40000 ALTER TABLE `contacttypes` DISABLE KEYS */;
INSERT INTO `contacttypes` VALUES (1,'Real Estate Agent'),(2,'Broker'),(3,'Electrician contractor'),(4,'Refrigeration contractor'),(5,'Electrician technician'),(6,'Electrician technician'),(7,'Leads'),(8,'Contact');
/*!40000 ALTER TABLE `contacttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(2) NOT NULL,
  `name` varchar(44) DEFAULT NULL,
  `paypal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AF','Afghanistan',0),(2,'AL','Albania',1),(3,'DZ','Algeria',1),(4,'AS','American Samoa',0),(5,'AD','Andorra',1),(6,'AO','Angola',1),(7,'AI','Anguilla',1),(8,'AQ','Antarctica',0),(9,'AG','Antigua and Barbuda',1),(10,'AR','Argentina',1),(11,'AM','Armenia',1),(12,'AW','Aruba',1),(13,'AU','Australia',1),(14,'AT','Austria',1),(15,'AZ','Azerbaijan',1),(16,'BS','Bahamas',1),(17,'BH','Bahrain',1),(18,'BD','Bangladesh',0),(19,'BB','Barbados',1),(20,'BY','Belarus',0),(21,'BE','Belgium',1),(22,'BZ','Belize',1),(23,'BJ','Benin',1),(24,'BM','Bermuda',1),(25,'BT','Bhutan',1),(26,'BO','Bolivia',1),(27,'BA','Bosnia and Herzegovina',1),(28,'BW','Botswana',1),(29,'BV','Bouvet Island',0),(30,'BR','Brazil',1),(31,'IO','British Indian Ocean Territory',0),(32,'BN','Brunei Darussalam',1),(33,'BG','Bulgaria',1),(34,'BF','Burkina Faso',0),(35,'BI','Burundi',1),(36,'KH','Cambodia',1),(37,'CM','Cameroon',0),(38,'CA','Canada',1),(39,'CV','Cape Verde',1),(40,'KY','Cayman Islands',1),(41,'CF','Central African Republic',0),(42,'TD','Chad',1),(43,'CL','Chile',1),(44,'CN','China',1),(45,'CX','Christmas Island',0),(46,'CC','Cocos (Keeling) Islands',0),(47,'CO','Colombia',1),(48,'KM','Comoros',1),(49,'CG','Congo',1),(50,'CD','Congo, The Democratic Republic of The',1),(51,'CK','Cook Islands',1),(52,'CR','Costa Rica',1),(53,'CI','Cote D\'ivoire',0),(54,'HR','Croatia',1),(55,'CU','Cuba',0),(56,'CY','Cyprus',1),(57,'CZ','Czech Republic',1),(58,'DK','Denmark',1),(59,'DJ','Djibouti',1),(60,'DM','Dominica',1),(61,'DO','Dominican Republic',1),(62,'EC','Ecuador',1),(63,'EG','Egypt',0),(64,'SV','El Salvador',1),(65,'GQ','Equatorial Guinea',0),(66,'ER','Eritrea',1),(67,'EE','Estonia',1),(68,'ET','Ethiopia',1),(69,'FK','Falkland Islands (Malvinas)',1),(70,'FO','Faroe Islands',1),(71,'FJ','Fiji',1),(72,'FI','Finland',1),(73,'FR','France',1),(74,'GF','French Guiana',1),(75,'PF','French Polynesia',1),(76,'TF','French Southern Territories',0),(77,'GA','Gabon',1),(78,'GM','Gambia',1),(79,'GE','Georgia',0),(80,'DE','Germany',1),(81,'GH','Ghana',0),(82,'GI','Gibraltar',1),(83,'GR','Greece',1),(84,'GL','Greenland',1),(85,'GD','Grenada',1),(86,'GP','Guadeloupe',1),(87,'GU','Guam',0),(88,'GT','Guatemala',1),(89,'GG','Guernsey',0),(90,'GN','Guinea',1),(91,'GW','Guinea-bissau',1),(92,'GY','Guyana',1),(93,'HT','Haiti',0),(94,'HM','Heard Island and Mcdonald Islands',0),(95,'VA','Holy See (Vatican City State)',1),(96,'HN','Honduras',1),(97,'HK','Hong Kong',1),(98,'HU','Hungary',1),(99,'IS','Iceland',1),(100,'IN','India',1),(101,'ID','Indonesia',1),(102,'IR','Iran, Islamic Republic of',0),(103,'IQ','Iraq',0),(104,'IE','Ireland',1),(105,'IM','Isle of Man',0),(106,'IL','Israel',1),(107,'IT','Italy',1),(108,'JM','Jamaica',1),(109,'JP','Japan',0),(110,'JE','Jersey',0),(111,'JO','Jordan',1),(112,'KZ','Kazakhstan',1),(113,'KE','Kenya',1),(114,'KI','Kiribati',1),(115,'KP','Korea, Democratic People\'s Republic of',0),(116,'KR','Korea, Republic of',1),(117,'KW','Kuwait',1),(118,'KG','Kyrgyzstan',1),(119,'LA','Lao People\'s Democratic Republic',1),(120,'LV','Latvia',1),(121,'LB','Lebanon',0),(122,'LS','Lesotho',1),(123,'LR','Liberia',0),(124,'LY','Libyan Arab Jamahiriya',0),(125,'LI','Liechtenstein',1),(126,'LT','Lithuania',1),(127,'LU','Luxembourg',1),(128,'MO','Macao',0),(129,'MK','Macedonia, The Former Yugoslav Republic of',0),(130,'MG','Madagascar',1),(131,'MW','Malawi',1),(132,'MY','Malaysia',1),(133,'MV','Maldives',1),(134,'ML','Mali',1),(135,'MT','Malta',1),(136,'MH','Marshall Islands',1),(137,'MQ','Martinique',1),(138,'MR','Mauritania',1),(139,'MU','Mauritius',1),(140,'YT','Mayotte',1),(141,'MX','Mexico',1),(142,'FM','Micronesia, Federated States of',1),(143,'MD','Moldova, Republic of',0),(144,'MC','Monaco',0),(145,'MN','Mongolia',1),(146,'ME','Montenegro',0),(147,'MS','Montserrat',1),(148,'MA','Morocco',1),(149,'MZ','Mozambique',1),(150,'MM','Myanmar',0),(151,'NA','Namibia',1),(152,'NR','Nauru',1),(153,'NP','Nepal',1),(154,'NL','Netherlands',1),(155,'AN','Netherlands Antilles',1),(156,'NC','New Caledonia',1),(157,'NZ','New Zealand',1),(158,'NI','Nicaragua',1),(159,'NE','Niger',1),(160,'NG','Nigeria',0),(161,'NU','Niue',1),(162,'NF','Norfolk Island',1),(163,'MP','Northern Mariana Islands',0),(164,'NO','Norway',1),(165,'OM','Oman',1),(166,'PK','Pakistan',0),(167,'PW','Palau',1),(168,'PS','Palestinian Territory, Occupied',0),(169,'PA','Panama',1),(170,'PG','Papua New Guinea',1),(171,'PY','Paraguay',0),(172,'PE','Peru',1),(173,'PH','Philippines',1),(174,'PN','Pitcairn',1),(175,'PL','Poland',1),(176,'PT','Portugal',1),(177,'PR','Puerto Rico',0),(178,'QA','Qatar',1),(179,'RE','Reunion',1),(180,'RO','Romania',1),(181,'RU','Russian Federation',1),(182,'RW','Rwanda',1),(183,'SH','Saint Helena',1),(184,'KN','Saint Kitts and Nevis',1),(185,'LC','Saint Lucia',1),(186,'PM','Saint Pierre and Miquelon',1),(187,'VC','Saint Vincent and The Grenadines',1),(188,'WS','Samoa',1),(189,'SM','San Marino',1),(190,'ST','Sao Tome and Principe',0),(191,'SA','Saudi Arabia',1),(192,'SN','Senegal',1),(193,'RS','Serbia',0),(194,'SC','Seychelles',1),(195,'SL','Sierra Leone',1),(196,'SG','Singapore',1),(197,'SK','Slovakia',1),(198,'SI','Slovenia',1),(199,'SB','Solomon Islands',1),(200,'SO','Somalia',1),(201,'ZA','South Africa',1),(202,'GS','South Georgia and The South Sandwich Islands',0),(203,'ES','Spain',1),(204,'LK','Sri Lanka',1),(205,'SD','Sudan',0),(206,'SR','Suriname',1),(207,'SJ','Svalbard and Jan Mayen',1),(208,'SZ','Swaziland',1),(209,'SE','Sweden',1),(210,'CH','Switzerland',1),(211,'SY','Syrian Arab Republic',0),(212,'TW','Taiwan, Province of China',1),(213,'TJ','Tajikistan',1),(214,'TZ','Tanzania, United Republic of',1),(215,'TH','Thailand',1),(216,'TL','Timor-leste',0),(217,'TG','Togo',1),(218,'TK','Tokelau',0),(219,'TO','Tonga',1),(220,'TT','Trinidad and Tobago',1),(221,'TN','Tunisia',1),(222,'TR','Turkey',1),(223,'TM','Turkmenistan',1),(224,'TC','Turks and Caicos Islands',1),(225,'TV','Tuvalu',1),(226,'UG','Uganda',1),(227,'UA','Ukraine',1),(228,'AE','United Arab Emirates',1),(229,'GB','United Kingdom',1),(230,'US','United States',1),(231,'UM','United States Minor Outlying Islands',0),(232,'UY','Uruguay',1),(233,'UZ','Uzbekistan',0),(234,'VU','Vanuatu',1),(235,'VE','Venezuela',1),(236,'VN','Viet Nam',1),(237,'VG','Virgin Islands, British',1),(238,'VI','Virgin Islands, U.S.',0),(239,'WF','Wallis and Futuna',1),(240,'EH','Western Sahara',0),(241,'YE','Yemen',1),(242,'ZM','Zambia',1),(243,'ZW','Zimbabwe',0);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposits` (
  `id` int(200) NOT NULL,
  `security_deposit` decimal(65,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employment_and_income_histories`
--

DROP TABLE IF EXISTS `employment_and_income_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employment_and_income_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tenant_id` int(10) unsigned DEFAULT NULL,
  `employer_name` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `employer_phone` varchar(15) DEFAULT NULL,
  `employed_from` date DEFAULT NULL,
  `employed_till` date DEFAULT NULL,
  `monthly_gross_pay` decimal(6,2) DEFAULT NULL,
  `occupation` varchar(40) DEFAULT NULL,
  `additional_income_2nd_job` varchar(40) DEFAULT NULL,
  `assets` varchar(15) DEFAULT NULL,
  `notes` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment_and_income_histories`
--

LOCK TABLES `employment_and_income_histories` WRITE;
/*!40000 ALTER TABLE `employment_and_income_histories` DISABLE KEYS */;
INSERT INTO `employment_and_income_histories` VALUES (1,1,'Anderson Lopez','New Yourk','4989582423','2012-12-01','2014-01-31',5000.00,'database developer','None','None ','<br>',NULL,NULL);
/*!40000 ALTER TABLE `employment_and_income_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'Man'),(2,'Woman');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'administrator','2015-04-23 03:23:27','2015-04-23 03:23:27'),(2,'tenant','2015-04-23 03:23:38','2015-04-23 03:23:38'),(3,'visitor','2015-04-28 01:02:45','2015-04-28 01:02:45');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n`
--

DROP TABLE IF EXISTS `i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i18n` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `locale` (`locale`),
  KEY `model` (`model`),
  KEY `row_id` (`foreign_key`),
  KEY `field` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n`
--

LOCK TABLES `i18n` WRITE;
/*!40000 ALTER TABLE `i18n` DISABLE KEYS */;
/*!40000 ALTER TABLE `i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leasestypes`
--

DROP TABLE IF EXISTS `leasestypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leasestypes` (
  `id` int(200) NOT NULL,
  `type_lease` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leasestypes`
--

LOCK TABLES `leasestypes` WRITE;
/*!40000 ALTER TABLE `leasestypes` DISABLE KEYS */;
INSERT INTO `leasestypes` VALUES (1,'Fixed'),(2,'Fixed w/rollover'),(3,'At-will');
/*!40000 ALTER TABLE `leasestypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text NOT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `time` int(11) NOT NULL,
  `authorized` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uri` (`uri`),
  KEY `ip_address` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marital_statuses`
--

DROP TABLE IF EXISTS `marital_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marital_statuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `marital_status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marital_statuses`
--

LOCK TABLES `marital_statuses` WRITE;
/*!40000 ALTER TABLE `marital_statuses` DISABLE KEYS */;
INSERT INTO `marital_statuses` VALUES (1,'married'),(2,'Single'),(3,'divorced'),(4,'civil union'),(5,'widowed'),(6,'cohabiting');
/*!40000 ALTER TABLE `marital_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_grouppermissions`
--

DROP TABLE IF EXISTS `membership_grouppermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_grouppermissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_membership_group` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_grouppermissions`
--

LOCK TABLES `membership_grouppermissions` WRITE;
/*!40000 ALTER TABLE `membership_grouppermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_grouppermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_groups`
--

DROP TABLE IF EXISTS `membership_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` text,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_groups`
--

LOCK TABLES `membership_groups` WRITE;
/*!40000 ALTER TABLE `membership_groups` DISABLE KEYS */;
INSERT INTO `membership_groups` VALUES (1,'anonymous','Anonymous group created automatically on 2014-03-02',0,0),(2,'Admins','Admin group created automatically on 2014-03-02',0,1);
/*!40000 ALTER TABLE `membership_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_userpermissions`
--

DROP TABLE IF EXISTS `membership_userpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_userpermissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_membership_user` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_userpermissions`
--

LOCK TABLES `membership_userpermissions` WRITE;
/*!40000 ALTER TABLE `membership_userpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_userpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_userrecords`
--

DROP TABLE IF EXISTS `membership_userrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_userrecords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `id_membership_user` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) unsigned DEFAULT NULL,
  `dateUpdated` bigint(20) unsigned DEFAULT NULL,
  `id_membership_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  KEY `pkValue` (`pkValue`),
  KEY `tableName` (`tableName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_userrecords`
--

LOCK TABLES `membership_userrecords` WRITE;
/*!40000 ALTER TABLE `membership_userrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_userrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_users`
--

DROP TABLE IF EXISTS `membership_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_users` (
  `id` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `id_membership_group` int(10) unsigned DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `custom3` text,
  `custom4` text,
  `comments` text,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_users`
--

LOCK TABLES `membership_users` WRITE;
/*!40000 ALTER TABLE `membership_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operating_accounts`
--

DROP TABLE IF EXISTS `operating_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operating_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(15) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operating_accounts`
--

LOCK TABLES `operating_accounts` WRITE;
/*!40000 ALTER TABLE `operating_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `operating_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `firstname` varchar(90) NOT NULL,
  `lastname` varchar(90) NOT NULL,
  `email` varchar(80) NOT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `winner` tinyint(1) NOT NULL DEFAULT '0',
  `unikkey` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (1,1,'Joe','Kanc','jkan@jk.com',1,0,'1jkan@jk.com'),(2,2,'Abdias','Bullxx','bull@yahoo.com',1,0,'2bull@yahoo.com'),(3,2,'Georges','Makes','makes@yourmail.com',0,0,'2.makes@yourmail.com'),(4,2,'Kola','Marc','bull@yahoo.com',0,0,'2bull@yahoo.com'),(5,4,'JOK','KOKO','koko@mail.com',1,0,'koko@mail'),(7,2,'poul','Adi','adi@mail.com',1,0,'123'),(8,2,'azibe','joseph','azibe@yahoo.com',1,1,'abc'),(9,2,'Melanie','Marjo','melanie@gmail.com',1,1,'x'),(10,2,'koral','lap','koralie@k.com',1,1,'c'),(11,2,'kalil','Vilver','vilver@vilver.com',1,1,'CONCAT(11, \' \', email)'),(12,2,'moe','kol','fy@fv.com',1,1,'12email'),(13,2,'bobo','martine','martine@yahoo.fr',1,1,'2email'),(14,2,'Jipo','Koit','koit@yahoo.com',1,1,'2koit@yahoo.com'),(15,2,'Madeleine','Marie','madeleine',1,0,'2madeleine'),(16,2,'Madeleine','Marie','madeleine@yahoo.com',1,0,'2madeleine@yahoo.com'),(19,2,'ko','koo','koooo@ko.com',1,0,'2koooo@ko.com'),(21,2,'bb','bbb','bbbbb@b.net',0,0,'2bbbbb@b.net'),(27,2,'njo','kopl','bbbbb@b.net',0,0,'2bbbbb@b.net'),(28,2,'hjo','vbb','bbbbb@b.net',0,0,'2bbbbb@b.net'),(29,2,'mo','mo','mo@mo.com',0,0,'2mo@mo.com'),(30,2,'goo','ooo','hjh@w.com',0,0,'2hjh@w.com'),(31,2,'polo','molo','molo@mail.net',1,0,'2molo@mail.net'),(32,2,'Hio','Paloma','delmas@delmas.com',1,0,'2delmas@delmas.com');
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(10) NOT NULL,
  `id_tenant` int(10) NOT NULL,
  `date` date NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `post_file` varchar(255) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `parent_id` char(36) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'LA FEMME DANS LA FOULE','femme','','2015-04-23',0,NULL,NULL,'2015-04-23 20:11:35','2015-04-23 20:14:42','La plus belle femme de la planete');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` varchar(36) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `language` varchar(3) NOT NULL DEFAULT 'en',
  `image` varchar(36) DEFAULT NULL,
  `timezone` varchar(32) DEFAULT 'America/Montreal',
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_name` varchar(15) NOT NULL,
  `number_of_units` decimal(15,0) DEFAULT NULL,
  `propertiestype_id` int(11) NOT NULL,
  `propertiestypes_specification_id` int(10) NOT NULL,
  `rental_owner_id` int(10) unsigned DEFAULT NULL,
  `operating_account_id` int(11) NOT NULL,
  `property_reserve` decimal(15,0) DEFAULT NULL,
  `rental_amount` decimal(6,2) DEFAULT NULL,
  `deposit_amount` decimal(6,2) DEFAULT NULL,
  `lease_term` varchar(15) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `street` varchar(40) DEFAULT NULL,
  `City` varchar(40) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `description` text,
  `photo` longblob,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'1600 decarie',25,0,0,1,0,1000,700.00,1400.00,NULL,0,0,'795 E DRAGRAM','TUCSON','85705','','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0X\0\0\0/<aV\0\0\0sBIT��O�\0\0\0tEXtSoftware\0gnome-screenshot��>\0\0�IDATx��wx����33�{I/����T\rUP��  ED�\\˵�ŋ\"U:ҥJ$tBZH%�l6�^f���ذ,!@�$!ᷟ\'O��̙Sv�s�{���	��5�x���(��Ƈ7�t��|���\r>����n|x�O7>�����Ӎo��Ƈ7�t��|���\r>����n|x�O7>����*p:�4M?�Z4h�\']��^��6m�D\"IHH�h4j�\Z!���հ@�x?Ol6ۘ1c222\"##\0!$�ɂ��5\ZM���������c��i�\r�d� \0𦇘3g�7�|�R�\\��D�f;��ǭ�S�S5N�Ϝ���aiB����\"��,*F\"֠�F����4�T��ҥs�ņ��c�\0a�$�\":V��B�I�7k��<��������;�*�|;c��d%�e�!�����f.�+�x�l�J�R�y���Ȧ�f-q\ZyT�D�����g�V��G7{SO��;\02�Ք�-���<\\R@c]�MWl;w�t˺[�����`aBsY�V�8�,*F��Zc��IP�������h�����4�\0��7{���Ѵ���I<5\0�vb��y-�p-�|��\0$�7P���-e�2��7Q<B5V��k����.�\"�F7�,��S����Μ���P�1��:��=��W�������\nt�)�����2\\`��$)_��u|q	WP�2f1\"��@vs>����n���H_j���/�]�ի�J)��F?I�ݔ�3f�f1&b�;�Jļ+y7������PT��2SL�4���N�Ԩk�bJ��K���K5Iʰ&��0�X�9����[�ߺz���n������/?���MO����/��<w#\0$j\"wn��-*(++����/oa��+\rm���(��)���3\'tez��ש8���`r�x���5ͪ�5j\Z��v���e+w\0Bh���X�Y^^\0E�64�y+�����l� ��ɽe9r@��ga��q\'}EY��y,+3}��J��i[�jܺ�i�ǟ��\0���;��}��ՃJe��\'�d��M݁ERp�B�g\0؛zr߾����^C�q�S��N\Z�9ðB!���_GG��d�@ ���#Ic<��S�ttj\0CG55�\'���}�O����5�Ė��Dy�F�Pq%RQ���8h�v������+����^h�����L\0@�$����ǉ�r:����� ���N�m���B]EU��|�E]ZBzZ\0p�((X%�O�kZȣ�Q��x�=-\'O,:=�vP��iR\'�y0O@7f���Y���_P� (D*R(�\\��\\�����op�����_\0��?u�����p\0 �P�P(��j���#(uG~�U8<�/S�������/l�������\0F\0����m��6�!��I��� մT&$�5I\n��+sH�]�{j��8/Ǽu}����\n�����Y����[w�\'����NΞ�P��aiW�H  j�ʏ���BA!B�@�B�U��J�G^�A�����F�]5�O`�<++\0!����=�1fR����m��01����V�N��J�\r�9z�u��&3�A�;�s��1ج��j;Zl?zH��M㤣&Ƶy��3s��>�^�a卣��V\r\0���c���H�j�zh����oX�M�;��+����0��A�E!.��H�����\\�S`� 8L�f��9����P���3�vcii)\0�����J���wOm^w��[\'��ʕEQ		�Ngd�{�c\'�@E�\0�vH�m/�Px�H���u�\Z�1Z����u}v�-M���<!���6�1<< =m�HT�A����#���ávm�񻏳/��W�bu\'�\0���F���PQ���@���_\0G�*��W���5��n�f3� [��ȳCw��\0�V����\'O��l�.w�%�H��#f�9��Bg���뙆���mV�d�n�S���Y~+�6\0L�<����r�L��e���_��s<�v+��{��?\Zw��p\r��������Iu_�]��!,X���Bu�xϲ��igW�z͝_�4����_$�C�AM�Ɣ��/��|���UI���F8B���=O˝�\0\0.�xC�WON��\0P��;��h\ZR{\rz��9�q�ࡳ5v��M�DZ;t��ڍ��+�i��L_�fX��z�ǁ Л�b������1\0\n�$��+ƲlA~~X���ֈN$S�ݾ������C쯿֭YB\0���͚��5���O7�.]��j��L�i�:A��;�΁�T~�{���Sɇ{����ˮ�Y*]\Z.\Z8,�q��p�&��<�N\r\02��z�~���͛G���h���b#O�t�.�2���I�)��M[�>�Yk�y(�����[wF�ݏ�!���\0�	y�c���R� �E\\���\\�u��7�Ĩ���A$��{H�?QPP��_}>�é�<@��4���?k���\"�a���z����v�\0�p8���n�v)�&ԟn�,�a����z�<WZZ�p8(��T*z���9um��1����+�s�M���������VY�Ŷj#S�U��p8���vm4��%�R������C&��$\0��F���є�B\0p���m�:��SO���Ӯ�=\r\0ƌ�KRdII	\0V(�/�>�����nM���\\�s&�z�\0}�G�J]I핆�3V�R�w~ܙc�V�t:�N��\'w_ab� ����V�$�w@Paaa�gc��n\0N����\Z]��6Z�0�I7�����AA���&\r��L��J�r�մP�\0j�v�ؔ{�|��\0\no���;��)+0��|����.��a�U�eqAA~dDЄ�ܗ0��J��.,\' ��c�\0�l��b�wJ�Bp�Z��<f�I}�DW�f�^��+/w\nP:��R�V�S�p8���c�D�\0���ɹt^ֽ]\0@�W�b�%�XP���j�ˍ��d���Tj��O�P��\n�TBӴ�b9�w\\\\��*���ּ4ܦ��/���Z�6&&d�+]\0\0��p�˩Swԇ�f��mO�/��922h��/^�L0a���][r��=�V�Z\rVm�ԪMe�i����Gc���b����5;:7F	\0����\'O��l\0 ��R�L&�H$r��E���ɻ�1���*����1˩�7�$�j�?X(��_�����[ʤ]9\0�}���\\��uA��7N\'�h�v\0x�G�Ȉ �ժ�jo݋���\'�}��]�fYX8;��.�c�����=^��\0\0j\Z+Ѵ����~M&SAA��˗O�8�gϞ������n�[�ؽ�;��^�V�ɫY�l;u�P�����`(�H�#����s˶C\'O]�i���u�qӁ7�j��~f��!/D�$��y�Tέ�\n�(:�Z�������8���M���Ш�� �n�.Ę���[��uc\\N��xՙ9W��I�Dpp�T*�r�E�x<�H$JKKǌ��$\0,V�����SG�#u��ն|�.�qr���Ĩ��b�e���i���1���t0��_���q�v���P��d\nB�$�r!,�s:�T�1�4�ގh8f����v��ɻX���\0 0D�\\\0\n�j�z���3gΜ={�/��]�|Ezz:���;�5\'?q����(z�n�(�J?:#�C�#G�fYF��=��B\0�\Z>.&uG~��e\r:~�h������<�R1~J�c��S���~�/f�$@�dB���HU�B\0�d2�,;��39n�/2<$��sQw���X���x6����$I�V������qE&}?�ɭ��E�:�\r�x����h�Gw�Ъ�X�\n��h4|>ߝ!$��ݟ�Τi���3�f c�ѯ?gvM	���v\"@�-/�\rݾ���\"�����:�H\nq�I��a!���v;M�f��R%ܟB<}��lH\n=�I$��\0�T*=j����v��OG��z~~q#�ͩ�̿�����{�$җ�\0B�f��L�xr���nv�.�=���ޡ�����˶������\0I��c�)0\Z���(mWy�d�*O�T���{c�1v=$N��`0 �����҇�rw�eh	��yM���Ɖ��G����H�!��-��\r˲s�o�,\r��r�N�s�N���d�7n�9s�3�<�$)�·͎Җh�O�\0\0��r�������W$4W�\Z�v���gw霩0OY�WW\\\\��W_����Ou�ڵ[���ރ��@{�:�$��*Ϩ)�JII1,˺~�����J<>Q�\r\\jJ]�ŗ��� \0���K<G�+\0�L��U+�I�������,��5UIoO��Hk0��,:��޶���%��]UG�tjj��͛�nݚ��v���s��a���W�?{B��B��E��e��;�F�Z-�Zײ�2�ݎ�����+@��G\'&��\"�3�����2+IA���G�,���!��X�.L�vC������T����oW����tŶ:�Y�覠�����O��C��Z�\0I��PX�L�\\b�g-x���xjo[W,�V�(��#���h��yFEc\\���#�R\0zs`wM�*щ��qC�o�W�C��dܼ�X,�IE���7�L,�r8�\0\0@��b�R陞��T�O���ߌ޵-��7��`\0H�]0xx�R��8��B����,���u/+ؿ�8*��I�T*�U�7b������?�B��|\0@P�]RΟrXL��Y욇Z�w�+�H(�\"I��#��\0�������mT�!�u�>U�78�4\"P���a���-���t�3XH$�I�fe�N�\rW�B\n�s�vF;[�w`W��#2@��T�*�0�1U~�<�e�Q��XWRa�j��Us�����`00�\n�#B,���vw�X�ֶ�ܸ����h��\n�xR�t��|���\r>����n|x�O7>����ng���4��X\r��q�f��OQ%\rw�����e�ɴ;���>h`W����4���T�&24�??�x�WK2���;���&7W��}���̬��B����x������Y94�h�E�4k�W�+�ӕ����d	�קÀ��k��Fn�0{��%E@�G��9���I�l�}i��6ܾ���2c��:p�_H�����,[^n���CE@J�����,�j���NP��l�;�aҏ\\P�({�<}�Ae͘�Z���l��,[�7&\Z�8E���\0��\")���8]:=3~L�K�o���D��j��\Z�V����\0\0��T*��W<$=BH��U�����r)EΝ�W5~��\Z֬K������mw��S����d_W�R��/߮��c��)�����_��Լi��+~���3q�yZWx�SL��o�c�?�tH�_���p�i�Jfε�y�4�f]ͭt��vG��G��Ȳ��͂��g�ȸv=�J{���z���b[�bW�ײ�K��m�?nL�*;��rS������\0��j�8��u�aσ,���?v���k�di�\rM��\0X�����S����H�����v/^���͂	�|4�\0�dَ�k�f]����٥�>�����m?|�ȅ���u��xP)y����|�@�����[[�.ҖV�2��v�Q!������&����7�o�^)��l]���\"�f������<rDo� ���_�mڲ��-���66;v��٢/?��_\\]�ts���Ͼ�\0�f[���gZ����1Bh��/�yܱf��5�W�����ǻ;�����4�����aU�@^~�kC>{��o��y�|�G����ܟ�áƽ����?/^�Ǘ��r4�,�W�?gr�7\0 �@�^o���\0�H�>�?ӿ\\ҦuBˤ��&��~�\\^nڹ���;G���fv�7߯��ǉ��[=ַV�4�q��I3�{g�w���y���q:��C��߸\0�*�����ŭ�����\0��/�6����p��h\0 :*$>���I���|����ӊ�/���MHh�2)����[�?q�볿��C�$��a4U��q��ߎ��~�o\'N]���·G��ء�ÿ�\'N#Ѝ ���5u�Hȟ3oSM��{ؼ�a���h4Q*���רղ���(.)[��O\0��ʗ,���{��t�H%\"E��0k��O>]����DF�8�]��:p�M�C�Ki��Ƥ�!~!!~z��l�Y��`Y�H���5�Y��&��W�K--5l��WTdP���*S^��0����X���|w�+�;>s�.���Jg���\Z�kH}��t�r�I�\"���&�ށx7��N�e�x�?�	Vz�Kvv��U�-���;�V����l�0i��`^�rz�nm���Un�%3�����k�h�vWH���&�j���%�m\0`=�9EZ}�2$\">6</O�v0�}�`����͇_8|XO��7��5MZ?_e\Zm������b������Ji��J\'L��o���	\"���2�rjԄ��A릒Oc��]��������;w�<	<.\'u��م���٬e+wU�{l���e14\0$Iܝ$��S��?��ss���z��?����sW��ɲ�[��Q!�{>�t����v��0���6�\0�\\J(�<s8����3f������^љ��	��/�}R�Z�Ƅ�k��b�;4�jg�#��ӧ?�:Tͩ�W����JfN��p�Zn�ыk֦.^����m��>����J%���=�nþ�[���	�^Y��V��,�c��8tv��\r/�0-%����&���r���V�=3+�fs$�h\Zn��ӏ^����߷:y���o�ɺ�{3���EF4	Z�h���.^������J�@~jya��\\F���?����_g�4���#���k��\"��SW���u�L�[o�d6�ȅ̬�JFě#�v8���0���@�����W��x:�J��Vq\r�8�O\Z��������2����H�̵�y9��\0EB|E��� �Jf���� �TJ�k\'3<.G��\0ð�yE7n����p��_�7��\0xR��s��JE\"!\0��Z��;�P���เ/�e2Ƹ�`��R�H ��LV�$\\$��x�R�A$H%w��N�V���XC����GC�A�7>\Z,>����n|x�O7>�����Ӎo��Ƈ7�̢e�a�ۨ\0\0\0\0IEND�B`�',NULL,NULL),(2,'1500 decarie',10,0,0,4,0,2000,1000.00,2500.00,NULL,38,1,'421 E DRACHMAN','Saint-Laurent','7598','','GIF89a���\0\0���sRForg�fTQQI��ʏ����ۈYJ�xfɩ��ʺXB5׹����dE8-!\Z���G2(������\0��Ŝ���v�Ǹ��Ӥn[if[���Ť����������œz���W;0�ub��|��|������R6+%&\"7\' f90�ƼrI;մ�\"��j572̲����ҭ�ͷ���ũ�jA,$�ĭ81):UW�L>��rJ8.���ھ�������{t���]^U���Ҥ�F&���������[ME��ཪ���yP@̭�U-$��,.(@B=fO>��z���կ��~`E`b+o~��oaA0��Ӽ|o  Q����߀9..00�¯߸��ѿֱ�v@3��oɯ����������������������),,\Z\Z>g+\"/0,)���\0\0\0���!�\0\0\0\0\0,\0\0\0\0��\0�������������������������������C����C�����RC������������sR���sst���t5t�R������������؉۟����⧸幷��s5R����������������ۂޠ��\Z����ttx�k��Ç���H��ŋ3V�-�R S���2�(S�\\ɲ��H�:��I��͛8s��ɳ�ϟ@�\nJ��ѣ�<\r��n$)oH�J�J�ZH`50c&D׮Z�j8Ё�)UӪ]�VԺ\Zp��fպ�n�\ZR������h�\nL8g��Z�ʥ���]�|��P\0_3sd�̹�E��\"�z�V�4<�Z�ɓ��L��mg��ޝ5�t�N�\\�8�O�^μ��Nst�������t���;�oq�82�)p`����k�`Ʊt쾱�e�^���d��G���( R�m�v�\'�h���d�yek���i6���tJtd!��u��XW�9Yq,���q,���v�p\0��#J������g�{\">6bX��(!�e,�k���~(�ʎXf9�z\"v���s9p����jw	�$�N.��v<�dx��aƕZ�\'5�Dgfia�YXD�h��	*hw!7_� Gs.ঔ2ʘ���ហ�*�a\\Af$](�G�c����!ʤ�ݥ�⬔��\"�iڟ��j`%��k,h�vd˦頳J����G+l�E�­��\\����b���ЁyƦ�a���ת��\na���ײy`_��Rꢅ.b�o���Z�\Z��0fX���:�eF_f��d�w�^i\n)��qs�]\nr\Z\'g�\Z��@����w��A��I�ܝ�B��z�h�ژF�<\\��6\Z��,vi��!M��n.�d��\\\n.窨psV��;��Y)V��_�7똪�uv܅�.��q�t��w�OJm)�O�|\\�kNض���Z\\c�)��i9��w�5�X��<�]����rp:�OZ��O�m�ߨC)�kR։�ˊ,�w��_����<I>W���iylg����Fj��KJ�� p�����B���R�������>�x�q7w0^�$��x�o�O=O;4�w�L��F\n`�ږ�AOR�뛥f��(t���A�V��Y�`�;X��ԤG5�|1��T�����<q��VȒN��v\n*�2�1�	�=�b���VC��nt��f�=MuoS2Ҟ��G�(�O<�`�\n��4d�IbQ05\nC\Z8��XHF|p)U�Se�����TH\Z��\'���y�{���$K�R�����%���P��x3\rV�:��`��	Wā�S� ��,*,�(�ѧMl,[�K���.�M+��!����Mnr3�wK���i��!g$�(m�_��Pպ՝[�`v�	�~�`��1����3N1����mzqL,m���H��\rq)2с��s����I\\\Z�`��d��U֮[O��\"q0���,cԦB����rk�a,�F$��D=�:s�:^����X�:�N���Z��R�FY�I�b�f�8%��)7jP\r A2����x�X��U�J|�(@�Ɠ�wT^� \Z4��J2�����4���IE�d��X$.�ف/�+!Yp��2.�f�Z0�~�������� �Tg��I阠�N�Y�^�s烫�$K8�s�Q�JC=h+�Sr�5���Ef|ABM�������\nO�^���P�>L�,:������p�ꥫ��xAg�l	7�A�^�SPvĹUQ�;��k��\\JR̦)���j��O�Yt�r����5�\"*���JCeYtZ��R�륌��I�r�F�쀵G�+:��$���8�U�j�ʚN2�+fѮ���C��ȊR�IgIU�^!5�T-��4�(g=v��TQ�<����MR��^��ɠhh�NpcB\n�I?ڣd�*3��^�=��p�$\'�T��JJQX�CߦS��ݨ�4Z\\��m��o�0�6)��p��/#?��N�j�Bp�D���%�k��ٶ��|ÜQ�@_��agQr�$71��%W�<���*s\"�̂e�[I����jqw(:��in�H�95Aw��jPC� ��r�g�z,*�DINm\r�#�tK0	1��\Z�_\r�����JQ&�%�R�6�ZԼyMi��y/4;�!�tK���\\uY���\'0�(���\rt��\r`��Z�����vk��3�(�1Q옌�%��A{���_&��50�,sh�g��\rԡ�2��P�X�	�Qѓ\'�a��J+����.�Kz�8�cyn�F*���Ot|1�v�6Dlj��ۆ1F)����ڧuK2�UЗA�l�W\0��B��t��\\5�	����В%E�L��\\���6�{+���>mI�����k4.�w�aF�LZ`���X4R�z�(ø�{�U/��]�7�S���u�\"�\n��\\ǺT�Sq�=ʺ�|��\'3�~p}i���x�u6���`�\Z��U�o{�_X��I�G{���t�lKB�B��SQ���Oj\0��W���-����FF��B͏��v��!\r߫S�-z��bfx��:��qQ�Eã�A|x7w��n�s=��C�{�$OŵNx�Q�7v�<Z�Y��n��e!%=�D\r@�GR�q�R<��F[4NK�&�3;��*ZAE��\\�+a!�\r�=t\".��8�Q���^��\\X52�?�t7�T|��7y4:1fOrӀ�#O�4)8�7u�tnS=if�rW�n�c�֣@�;}}BPc�����vpbxi�}3/R�Y8�)��;�D`�b74oj\0;@}�rH����HH!�	s0��\"_��xOPt7nn��t�Ӆts6Atn?�v��n�#5xT=���C:*�\"�n#f�5�Gg);@��:Do�RW}Iv�W�R=r�R��u��E7 �b!+c�;H�$Ls�<�>gxs�?$�)�\0��%\Z�IB�0*�&�:��yPt0UD}r\"h�j�����7\n�G��C�hGs�K@�G>d7�ToeG�|dpN%bn7�:4�\06�\0�)Q�7l�}P\\D\'HB�G�#WGiđ�ᢏ�(%@gU2��S\0�Q�j@:ѣ�B�:*�)0p\r\0�Q�G��\0R01�$t��0�ED2rBw�zژ[�c�={#Q���>�Wc	=�f�c�#]\Zgx}�G]V�]�x�QX���1c��~}�\000g��f1\'O}T���;@B��{�=��h��E��\0.�(���{2�_>��){(53�@\r@\n�\04@T@i����P\n�01ˤJt%pU$3���f1I�(��);�2SI{�Sk!U��f�s��	�ϳ)�So�y���G���~D}��hR�L�D����~Q�@$#r�\0�G�Ms=\\p�k�\"��[�\ZL�JLM�1\'��&�����\0,	7�gA�c)QО\'\r�\0q\0��Ikp��i�	�@?R�d;?C+#k@2�1H�ES�\"��i}�)��~��$s�}ax�D:~D�#c��Gᓅ���\'?|o��GM���b���b�)}T��f\\ A�����ޣ)%Xo�C:v(0	h\"R!,{elƟyp��2B!\Z��6������jI����~3B�p�ɹ��&��#fP�2��YW��vcD�Y>L�J���f:<c��C�c��D2ڃ�|�:�7�j�c\n��r`��(	�-���&�bئ��tDxM�7�\0Y�~\"\Z�0���S�=�#\\�(��7?bc �\Z@7`�b!S�P��%�:�x=�8:\r��@R#o\" @oSyp7pi`i�\06�Z	��Rp\0(P��PA����4����=�z��3f��1O��]J2�:,\n;��Q-�7\'c�D`JA��R3A�2�G0�=����|S���i)��T0g\rp�ڛ+�~,�\0�:�oi�G7�t=б	Xk1�4-vLt��)P���H�DL��[TD�]�=*���g\"@60g�d۱�#�l%[	ՄV�Y�!3T�w1��.�R=T=k���$%V\\�!5�#�vI)\'H{�IAZDᓞ~$HZ�4A��Ӛ=��=)ڼ22�$��H2hY�Q�1Z�{Ȯ4`���\0o��4Hp0}�yDe۬��-���D}�i7�ڵ8���18*cx�=s\ZkI@Px�uD���i�~��.P5����( ��Q������s��RT����)��~��?�\'$s|�n}T���=~��-�\nh�o}�K��=Y*#?\'B@�Q�\0�s��Y�{�w�ˑߩ��#�\n�\\�~��@�k�ٮ0p�T�@-��{���c�3V�O�=��Eq�&��p�1��t\Z@L�R��D�Y��.z6@H�]�spU��.�	�(Q�@��l�1�W-T2�k�/�y�����3gs�å���7=�3���H;H��񶽲̧���E�\0/9��)�T��zs�\nЮ4��,\nT�����\"ڮ,��\\�JtDs��/ɔ�*��t;H}tp����(�k2+�u;����7o�\n�x��J��V��~\Z@���j�[)#bJ�|�\Z��bn8\'���Z�tQ5�1�T�IK�ċ�ov�y��	�f����@6�Ļ,g�A,zĽ\\�/٬��7�\Z���@��\":o0��\0��\\ЮQP�\\@IP���Լ�B@��#�e���tDݳ�P���qq23T��SH�\']�>�Gx�#!�ܭ@ֱ��=v�f 6z�g2}�UQ$]�Ȧj�iUJ�x�-|�s\n(D�\n�T���l����{��w)c��|M�(��d��0�=WI��l�G��)�~�:�@���=0��\0\"�����@�\0T����MP�̌�4��*��X)�\"ʢ�<�n���D���S�9�\Z�z�P�DT�����w9��wD��&3��$F}\Z�4!�\rP����J}j�r\"b�\r��cG�C�Oj�Tԅ�l��)DI)�g�ʓ���Ic����Fż,o`\n0��\\���Ǽ��~J�՛���ܱ\"J�\\`2��\\��y�6��@���̢:�X��Q����=�Z�X\'{?�H�j�4�,z��U2~��F�_ޑ��3���2t­��ϙq�X\'\',Z�!���(�1�4E3i3#\'��bT�7\nz�x[�^Z� �@%��������X=5\\�$]��:���0����ۿ9o\\��T0ڽI��@e̔��_A�6�Z�\0\\l��ԕ�oPͺ������o��A>��\\�AΔߘ��4��L�~\'�3x�\06ܦk���U���/�d7Zĭ�X��d�!qf�dl���t�jS�v���CR�Ng\0HX���S:����{��zc�Ⳑw�������E��_���i��}����\\����ɝ�b�x�����-��3��1:��\"�qP�l�>�{��ޛ��,���g�O=��\\�n��G��I@g�?N��5k�o���H2�2�����[�LE��\0�}�ϴ1j��wmGTp�?��{��d\r�{�ʦ�@m?{xt�>�-�=s:�:x�-�7�1j��}㔾����A��Ԯ�~j{�7��7�0�&�1��pԘ���@͌������\"�̻m�e+���G<}��=�jQp\"`�S��Kt�3���h�휓!���zKZVN硺�p��9E�.�&(�wu2�\"��׆\'N��<hx\0]$�z�ƿ˗�J��K�G^DU����~{���n���ŧ\'�\\6\n\nT64\r0440��47BB�7;Q;\r7��T��\n�����������4�o���\n0��4T60T\r�\\\n\\\r�\rT0B���\rBIIrrv88� � 8v7�;;B�7�\Z\Z!�kk k�\n�@���l��-�	�!�H�H��ŋ3j�ȱ�Ǐ C���`��3�!\"�����@\r�^���2�M})R��-�Q�rv�	:�h���3\Z�[ҥr�!����l 伋�\0�\'!�`���ơ$��b�@�+p�¸!�\r�H� 5��ڧG��P@(ղU\'(0�@��ȃ잢;�3�^������e�`,2������A&����z��<�6!�v�Egq��=�C��ۉ��5�2�X�.\r\r ��ν����E�\0qc����n�Z��I�6A�ۗ�)��m[�ѣބ%PK��L-EU\0Ve��5�e#D6Y��UY���@\'�ذX\\��,\nP��T��\"�E��}A�#;���$�FLb�$BW-\'B�	`@Y���RtQ��tE)�b,*��\r��4Tʲ��pq�6pE� d��\0���_�ȓ�\r����K��ď?\0��\\:@��J��#�&\Z�Qx�F*餒�!)��n��m�٣�:���TK)��P/��RP�	�PA���\n6�iUE\r!6� �@W;�Vg�y�p�8�(GF��,�%ɘ�V�B�V�҈.�E�����R����� �d��%�dfq\\�$]q$�����9Y*���hiÙc\"�Nm3��f2��9&4x �eM��:��I]B$�9f�A��,���D�L��%%UI�\\�;Q5է>P��?\r�}\Z�ԬGKeR�7�)��%a2BH���%V\'�\nq�\Zj)��\nDv$�I�Rː�\\�X�O�\Z�L�¤\"v�A��i���D�X��\0�₨ee�6��b��b���m�\Z��p�9\r`a�a�f&����3-;<��!�a�1�B�����J8�q�\ri�q��/\'����:�n�4��?�у��), ���y����\Z��@�Z���yU�U/� JbqaX�,��Q`��`t��1nY��T�Ɯ�]�j[c.w�hefvA���7�a�pP\\�<�����HEBEW8#ū2�RĐԖ\nS�2?ZM���..D�\\��k v�$!;��ԁLȉ1%BE\n��\'�3���BI\'�)�:����y�����hAa9�RrC��c7�*G�h�3�$*@K�^E��)�1zR�]h+�0ג�wpB�)[*�y�^�{[��w���G�.ʀ]��@b����2� ���$���4R��0��Rm��������3!ʡ,<�Od͐{��b�tX����%h���t��]��c�5��\Z�Lט�`�`�<��ޔ%,B�m\n$G!@�)Y���!\\�c�`�z�g4���Q�Հ��=�i/(��V�\'�l<���Zl0�C�Z���t��L~��b\\���J��2�Ar�SYɔ �`�:xK�Ԩ��-��(զ5�)�N�m0t�A�$P����\Z��	�	tcJ:�x���6�/���\Z\'�ؓ7;��b�vjG\Z�5��5�H<����f$=�D��=Z�{�# qLz֕��C��sSs����/AU+PQ������%�d�,���~|�3&�	�F�rIb���$ɸ���QqiT�R9H�ss��.0պL��M���.x0��n�����2E�-�kS撄�%�e�$=�m�ja��L�;htұ\0Õ�ى	N0���d�[�sT��x��N���+0;�A;�\r��o�4b�3,���fgR��ܳTأPՒ�s��\')�P�G�QM}0��Ԭf�4kX13+Y��b��8#7��223D��Zo#L�𪒧E��y�[]2o��gήy�|�1����M����Zڔ�5RO�R-�Et!(��(����F��W.�	ƠK�`�uiAN���#�R�쬿��\n��iw�u�bE�j�o l���P���D7�k��\Z��c�\0m�}̷�8��Wi9vsO��&�3�k��	x<�Fl�E!z�#S��5u�soj�1<�H��pfu�9�fj	�=�yGw��w�K��\r�׃M��R��-�t�4%/`\\A+ Y���\'����� ��6(�A*�@\0��(�������?����|�B�~�u��Z�sWOo�3��j�ٰ�N)Z�Ƃ�f����%�ʫ�� ��/+�R�dQ\"�l䏠��/@��G�\"[H��,�_�Ⲗ97t���|�{\0�.�7������|w���>�3�]߈�7�˫�(��\0?�k�.�W�� e`�_p����\r�[���8�HXwNp����X�l~~H�BH�ˡ��M�J9\"uj��U����d1��3њ��}�M�՘Q +=0��;���j3Y\nJ�}����Lp�:n`C�q���XLi A�,\rB�%b����]���]f^��w��w��wHx�7\0 x\r�wЀp�Ho��w�V���x�o��J�]��^�rgzf$�d$�%�\Z�0	�X\ZG���wc�p	`�g<�>4N��;�P(Б	��i`#�C�i�)\Z�{��\'�w)�\0Ƈ|^�,&��u�1m�B}b\rI![a�Dba�,r u0���YW��6~eԇ��0^\'6��?� 6dqC�8	�Q�@��7��g�A6%yJ5fHo�8o؉\n��8\0��S����w��n��f]�Tk�M�E�^Peg��T\'�6����0���	�q��C��7F�4�Nt�>��}0��1�#��\'/b#o�o�\0���p�\'2�@(p\0������\'�p	�`ΤYn�2}[aEc�r2�O�#=����VG\'mʢhb��C���\0�ch��\"�&�2$��m�%o�g�&owGx8�8�09�x\'�/y�>�>�/ɀ1���w{��g�K�8fK�R�\n�c94�%�p8r_u�\'��y�K?8�\Zp�䃻a�H�\r�`m17�.#�i⤍��rr(�]8�|�l�qc��L�% ��Ϡ?VC!l�b��P;ch�Fe�&�r��	���ƀ\\@��V0P#�����M�L�\'U�h�	P�����wB�w8ٓ�)�����ȓS��m0;\079�0����f��j&o�9 ��p��8�4���	8r#\r@9�C�\0�%�d_iu0���;c�AG���	4����@4��|�6�.�}�H�E|٠�s�\0��F�����h!F~됙kTH�\"~�Q!D6�[A	\r@6�@0�(�f�yo�9�\"�\"K�8?0^�eK�x����	��ٓ�����\0��m���/\0/0S\0^�\0�y����L��������J�I��5B>E�\nX�W�UƐ9_Z����A$\0<��}yN�N,�;���p��Ä���6b1Qb�.q1>+��s��Q\0���CY�:�B3�(��aVτ�r[�)Y�b�Q�?��YZ�	X$7�����y�10�8�j@Rv�. ]�U^#X�,�w������ɤ7\0�i�S�$\0-@Xj�Z��]\Z�b�A�wCI���j\Z�EySp磼$h��/��\"���9�B\'pi8p�N�`;��[������	l �/�\"�/��1��}���K2�S�%����h�9&�U!�!i!�\'&�pq�C�ba,h��~1� ��5X�z���!�X-l�,ג\"��\"�8�W$n&�+]�:��(��9�b\n�/��h��i�-�*@*�\0rk���v���.	�~Wo�ص}\'���o��A+B9M\"%�2��%i�A�sP�G;oTX��:б���[5R�\Z;��Y�Z��i�E%�(�s*�|\n!8�5�:�e��C����B\0�P\r����1\'�I3׀0_G��F�`m��!0��������\' M#�K�3n\"�`V��Io�(��	�7�`��j��\0�*�R��/@�$P �m�`�t{�x{�a��FJx���>9��x��3�.,�������,�� =D�`�+�Rw;FXE�pN$c?����\"�p�ck>N�(672}�N��{9��4&T �q����sf�C�ק�q[\"m��~�`�\'}b3��,��H��!Q �#N6@ _2@�2@K�y�U��A��6A�x6uf��oH*��z�x��j�d��{����t���:�<mK,�s��w���ڮ�)��خ���+)gnwS$�K�zڢ�K��p\0{�0��lr\r���0k\0h!qPf#�B\Z㈺�F�4W{ǡE�.�Rp�HFY�%��a��X:�1\n6$q��E�qc�O+,��~ja�\"�Nֽ���p�c�7�J$wp��?�gU+��n	�|�<�d��;�яL���\0n;J0���@P��\0-��Y��wۥe{�ܪ���=��+9��������I\"�@�{1=T��7�ը}��1~��F��@6/�vqp1;VaH{u9�psv(�Sz͍�d�\0\r94q8�_�!Ό�4�!�p�\0���XS���-�y�`C.�!��\"��W%R�\n��y�T8;\Z-\'�0yX�n�ȷ���B����\n|�[��}�l�0�,����\0$p���<�%]�\'ͥv�h�(���K�<�H�\0y���L5J�d\"��m����X�L�?X\0(g����N\r���[�shG�\n@�5��F��gN/�0ip}`���.ë �ǀ&͐C�����tz������p��H�v?����!���\Z�������\nU���JcpIP�M�x����-��)�x��b+�\n��]��V\nY��@��:�4N�:P�@`ڦ�ɩ}�.^�Хi��_���\0$~�[j��y��;��<����1���+x��}1T�:��+�{.�k���O&�:b�40\0a�j{$�S<k����ޓ2&rv�Cs�P1�T��7O�D�T�Π�d���U��\0	0�dC9�AR� h6�\n�Dt�\n\"LJ�7s6yn�c\Z�)\r�@�ck뗝�^Z������n�ٟ=�5,�Ȏ��Ѧ��<����Z��&���m�U��LΥO�ҟ�w�vKO5!�K��y\0pv\0Z�����Cبpb�6BHx������|��o�	�Z�`�E��{ր�}�5��a�\Z���Z�j�Q��.=Re��V`���3WK�~|��Q��񇽈�!��PL�I�$�����N�]���\'��J��z��l�`j�����������~��\r��.�5�|`�6�8��o��a����@�ɼ����^����zKxj�n9�v�T\0˧].�iT����C��B(l)6�?lp%x=�0�t1�����[s��������1\Z\0b�ލ�L_.�����\'��`94\"c���Wf�@�����!W����\Zw�\'��-�B\r�\nHby�AU�v��}W�<9�G��Bo�,�n�+nѿn�����:�5n��_����9��:����=���N�l�k[�������N�		?�c?�?\'\'�\n\nT\\T7\rB7kv\nT��BBv���;}k�\ro44o��04\n�oqq��\rk��ռ�k�B;;\r7�07ivkC��������������6��46�\\ll�p��\r���@ᄳMI�(�����9)��\r6`�P`���ذ��\r�^�Ba\"�.���\0S�J$UqaL#G�J$ؐ�\">����bJ\0�j��5�\0V��}A���\0d!���-$�%����:����BG_��ໂǌ���+���0n#�eЂ����˂�RuJTB\n!\Z�A�ң	rD�d�&�<[�*eGÁ�:y�!$\n,X�qQ\0��w�9c�IQ;�+���0eon|�f\r�k�v�Ypk�\r��\0d0��������WG�B}O\\� �����Â��&��dCC�xB�35!��K$Q��A\\�4a\'�Ĵ�34�8a@��\'`0�}AM�k��V\ZSO!0��Tq6ōV��U�a���X>��cf���da0\0�1����{	+��tC�|�0�aO*�bp56\\m1�e*Lp	-d���;��h�%�T�9�%���8v,`ov\\�N���	o�2�5�a�\Zo ��|�7o0��\"!�L����v㝲�w�d\0�kl�2���F\Z̑�|�k�=�8Q b@8q1���Kf�_}�C�\'0HX�A��C-�O�^ B\r�H�>]�:a���T�AN?�p�$?P�b	0\"�T�e$YDf��Z_��0�3�[�E�ؙuEI��~	��\\�`rOD�e��M &��E�b*�Y�8��לrՙYU��g{�\'i��Q�Z�}�!���U�I��J��q�q\Z���%��I\\\'8� c.l4��0���x�P3M�߄��l���A5Hq���O�O-u\"���q��@�K.+7P��H�4\0R����FQh���t�\r\\�t�\'Z���%�(�c�;R�X2�~�)�m��V�5���	1�Ffl=�M\"�].���Wb���\'?��1���{��r̉ѥ�bhZD�qV�nR���`�Q��A�怈P�\0�\"J``��\'���!�8������u�\0!�A	<ӆ��\']sB�6h��FK��4�j�(��¡����U�X�\r� �>h`X�K��;h1\'�3�}ޅ���$�s�b���9l�f$�H�n�A��Ld_��	�>d�L�����0Ј(�	P#���1�`������:1�N>#ґ�ז�E�zÞ$9�$���eT\"ٖ�>x�|O@�(ϧ���J<>?�)F10�ٜ��FB\0-A�ьf4@>��u�jX��tb����0�	*p��\Z�A� �a*N�@0D���D*�2�Q���C;�Z@tDрv������4nq�rh�=Ķ>�q�$�!��	\'������\nR�PxK7o���1R���\'�Ȁ2�e*�XfM��>���ACJ���,E�I[Jh1��U�g-heH\0ɞN�-Iҩ$������}��`�����(�*(Q���1Xߕ�K��f{�^��3�(l����gh��C�h.��0!H��C4�^%9x\'!�A5�r�6\\q�D��QNd�\'�9H�Bʪ렪��i�:O����\rl��7fqa�Ն����Zc�+D\'H�Mp\0}��}���\Z�2��l+&�\"H�&��-� �Zf�DĻGQ�^�H�	�(0���/�A��@B�f#�!ߒS:]FIJ�)|�_%�)M����%*�50|�d\'�w2�B��RE���22�2�)Ӓ�b����O���]��),��Z��C�w-���4(�8�@j�\r<@ͩX�8.la\0\r�6�)�C����>c� G;1�54 \n;�B;��o��@\'8���೵`vr�7��C��1Dq�fd���P�fL*Pg/�s�\rQ���	�{�R	��\'(9��2�E �\0*�k�%��=e�� ڍ�Ђ6$���\\φ:T��e����6�\'�%��#YL�@���;�(�J�����X�����\0�1�����)�2��;u|�z\'��e��	qT��v{N��K!��.X�&��B�j��-�����)*\0�\Z��	�0Ի�``]�ș����ƀ�\Zn��xF�M��?>�Bg��@���|:��a~�?��zS�P���\0]��DAe~NЀ%����������r?ȁ�����������	-�4��#FC<LL�\n�t�^�^�ݬD%��ޤ&�\\�~Nr��V�F�*���:w]��&�5�E��\'Ժ�\r��I�J\'�`©��\'Wн�m�1L�^��ҙ�Y^�5�� �m�E,�2�����G��4N ,�=}=�\'$�2��\\\"	��%D@���X9]�\06 9\ZM�,5��g6D�$���\r+�qd�R\0y|>��!���5?� �<��x�}���\n͈	l҉��Yr�=\'<[E�$uQʅ\"ו9�h�Ff\"b��]�f{N�4J�@��\"���iw�Subv5S32�&r1�8S���1�S&@p��D>�wwUxW���k���w\r�k=Hkf2{�>��%\'C`�l*(38�S8��S��V�ac6F�fb�n��\Z��\"�@@P�nz���S�\'&�	|��]��\0j��u��� 4�dj\0O7@ej�e�M�!:�$��+iP(P�W�}�+��dB@D6�ր߷�Z�D.,![����1�\n0�.��.\r��WE��4a41{9A3�;I�;���0?�h(D\ZNa4����<VH]w�(\'��3�3?�33_3�qx< `&���x�0xk�X�s7w�3w5��;�>�6k��wF�2��&��r&(HX�xM�Se�H�^�mP�Y���7S6�c�g���\0�!h6�{��X�OOi c���g\0*\nWe*!.X{!͡\0l@eא��׈y���0��X+; -��*�\0Z|(��k0���\0F7GQg��\ny�g&�g67{��X�d��	-�;�UZ`G�ct�h��],��,�}��KX�0E�3�\'qK�3eB�����Jc2�%wG���rǎ�xw��w	v`�����w@(l�&w0��U��w����C��?�6yȓ^UQS�f�>P@�y��VhX�U�eX��\0`[6�X6��j���d�0}��Xv�`|��d7X��5Z�2�(����7��(�Asp��!��2�I�*�I��5�g\nf�qJ��-)*� s���8\n2�Z`�Ԣ�\0]�:�r]\"�;�g�S�s/�x]�Jc^G�9�<>R������5�=��xO�2j��&&�*S�LZ�������u7J֤�h��w�dJ��w�6U�&���y$�$�HPXH��D���Mpz��g�f؜zPS��pj-,�A���A:4�@h��<a�;��7����|N�B\r�Г��W��\n�A�C������A�Z\0��)G�G\r�n\n\0,D)�3�s����0P1�%bIUg-�Ⱥo#��qqIvV�t�ߕ,j�j��A<��4�1@��u=�JR\'nr&�%RB%�qI~�~1%��x���Vʤ:��2�\0��2�&JVz�N\Z+Pl	W�����Gk[k,�2E\Z?4S��A�j�3Ҙ<�!b���YX�eX�Ƒwڜ̹@]`n2@r����a� �*�G��>j|l@�I �[Ik\n���\r��\r�YZ\\9T�s\0r5p� 6֐����Lp�6��\"�/���&�������	��N{fs�p��e����PN��\rq	��]4�T�R]N�hN(,�	�TWy�\0@CH\\��s�aK2��vI�T\\�*2\\�Џ���V���\0��xk9X�S�2���{���T���X��4�K��fw_n�StB\'Ԩ9����0T1��\'{���wZ�ɜS\0LFgtÈ5|v��e����\0�ŗ9\ra�>A�Gv���YӴL&r�����Kvs�p(0�00b#`��B��B�o���6W�$] n@��W,� Δ�0��0vU�5\nH6�J-q���r	9@/��4:��v�j\Z�;^2j@2ڌOAV�Y��ҋS�!T�v(��J5���Z]R��H��9��l��U\Z��i���R�w��T+Jx�[�%A�3���vx��J�XTor����a����<�ɑ�<����U�ɘ��U��T�J�n���u?�eߙ��UZ梸Agn�	ԑxgpee8���+ 0+ꔔIV[sp0�x+}�W)��r�\0r�<��\\%�\"0��c��/+z��4�SY��0\n�05{Cu�9�����*|�!��5�r\r��09@A��qJЏʀriLl<$���_�s��fTk��{%�%e�]rU��������+J4Ȥ�Lw`|��(cJxW8`\0|�I_B�RJ�x�h���� x�3&����S��Ԓ�ĹZ��*���K�-p��\"�1ʘ 76�*���0\n��N7g��z�B��Ũ�5��p/QF�P\rx���|0�����7`\r�,�}ͼ�N��P*\"` �щ5I0��͍z4�F\0����7+A���f4 5�C7|(�\r:ס�	���W	2 ^A�;A�,���ł�����c�s��e7�;� #ư�2�%/�2&��r|�:x�6xw���i��2d�%<��I>K���s P���<�10ͦJ)�$�h�&H\'�K���i�,��*��U��WM\'Rl4�\Zev�Ap�q���*���1�F�Fw�\rn��Y��� [\n�Yy�� ��y�|�L�,����b���W5.i`�\'�͡�;�W�ݬc G&u�$����� 4,�QZ�G�R#ç��x{��@�F\r�	Z\0�F,^��]�FG�\ZS���+W�Z�X!\\�*��Ӌ=��^[��c�1U�\"s�fl��ݥ�޸�Җ����P��w��`�`�-���%�����@�%�&�O%����T&�KG}?���M�	N�[3�|�5�������U�\'{���;��NV�d!�;��/�SW�2Ъ�X!�dw]�6�����	��?��ьC��ʐ�*cz�����{��N@n�f�Iw�@ipD��d�<\n�Esy�W�p:|ʬ��^�\n����n��x�G���}����)/@Y�W��Ul$�N��������z�j�1�ˮ���!�Uq��&��������S*U�X����Ml3�`���1�g�\0�%{Pk\'3��M|@�D͘j�_���6ほ^��&�>�$`�ƞ?�?�N�f�ĩa;!�!���tur4(�\"^Ǫ�*�q�������� �������|C*�\"�������Tnߎ�K~su�A�\n4�����\rh\rumZy%�+u�\nT �*�6FZ��jN�A�ֺ�,:^N�R�qOq72\0��KZ!$Y�0o1�l��Ϋ뷎�>��V�e\\�0(����z<���d �Ǜ�%-�)1{�,:(��fGX:|,{��x1x�|<@3@����*@*$*���U���-��U�*��:JJ��*--//�%?ZZ\'446\n\r�\r0�\n\n�I\"�?�?	%	n``\'\"�ol0�;;�\0�`ǂ�	�� $\Z\r.�3Q��5/Fd��͛8\"�t��%A�\r&�$�2A�90�t�d��,�u���D�ron�PcΐE�4l��F\Z7n�Q A\r*QoPQpC���47�B��\Z\n~Ʊ�\nZ�����K�9�䘗���g�M	��0�)�_�8@\0�^d��	��hq�ϟ_�b�j�i�<t�`�����\"�v��4y�ͻ�oN�4ez�$F�M12e�A���෗�~μxlB�8�T��8`0�G�={��~��S�N1V���4�T�X�j���ӽӋ,��K:T1y���,谊+ȴ��3~��6�d�A9P=��6��A:�`p;?��%�\0�ֈ��\r�|3��@<�Ў� 44pБGb�$E���q�aOc����(%��K\\� �9\\3�;ȀA<u�x�O�����M���6Qqu����TTB��\Z4H q��!\\Z�s\r+���%T\Z�K�@��4�@c���2,��2Y@�ꨝ�bf��VJ��V^y����u��j�s��&�\'���\\t����Gܯ��p���8�]w5��F&p�X��[t�%�	,�@\n��wJ���g\Z,��RLi\n�ҟ��W-k:H8�!	����3|���5�$�\0Q4p�\rgq��_�\";�t�\0o,@ZD�\r4��\rj��\ZBDQqCBF�@J���A1	�@lH�H]$��X6��<.M:O�7����y��?X�ӈZ��FCP5%OI�U\ZTTuC\ZU5\0VTskEP���\'h�7\\Ԥ�W���S��Sd�i3�:@��AVꨐUn9@��~�Y\Z}��vj������Q�k�OD@{�\r+l��-�lq�\"k;sK,|�=�{z�Q��n��f ��& ��y���bo}�vo����K1:D���Fz�l0,�C��3[��	z��\r#��M����\\t����\r�B�|\"�8\\ 	@A^�\0��\r�XB\Z��E� H\Z��\0��|dJT�MV��f\nK���\06Ў��my;�`D�w��CV�_��r<OP��C����a铘.�1��R���\"�\r<C�� ��3Ǥ*2�ʂdN����c)bU����{�\"]jP��Ȇ+p�p\';ٝ�Y�[ϯ�Ӻ@\'7���t�3��X(\0:��Nv�C�:��K<, d\'�\0��V�0�(�%!�A��%�N�I�痱iP�vR�q�%�PL�ѱt\0�C�PT\0!u�2�}؁<`������&�X�qXp):\n�A��0\"�Xf�8��\rI[�>W8\0\'(�.����( ;�;�45x����J���\r�`e�o��\"D�deOnS�V1��or�K@%�Ohp�q��������q��@*�9�\\���Dh�S\Z�������-W�:>�FuNe]�UH�\r�Y��U\"[׺�<�X�ɍ$�c�J�\0G�<�V�:`R�$`��=��j!�����Ѩ���Q�A�\\�������Úa� 4aX��\0\n��Y���4�ް�Y�a �%��(P����\rDG���7��ܰ8(h�o�l�<���b�����3R�>��\0\'4ø��b�����6 �Ƌ�ȗ�N��_���(&^�P�\0h�Ѩ�),��f��jh�.��TA���9�0�%�2W9��2��g��ؙ����3�`\r���1UW���l\\�H�X���)Ns�J�Q�w�;�$�*ֱ��G(��Ё���/�S\\;��!A����TW��Ǫ	2��*X�����H��E���1B�B�~7����Io�p�9�YgrlE2p	�� 7�%*b�7��!���6(��j��u�6 ��y�6�#J���\n}�x�ГE�?��0\n�����@�#�� o݆6` �D}(Oq�hT$�!�$qO�HZ���+B�\Z+�\Z��K�Ņ�02�/c�����ڍ��[QT[ի`�!]`M�G��;^E�e\'bf!�9���!I|I,@��\0��b�����V8����x+`A���z;ں���_gbK�`�(����(XV�V�!lD�$%XC�k�C\"�ˑ8ۀ�\0��,��	��3�H����SiK#4m�z�^�d+����\ZK��.�L��E�U�J�1ް�zO#�4�\nD�\Zk������\Z�N��&�S�T~��\\22S9���3o��Jc�R��˖�;*��\r�LU����#�<`��},@ŀ�H��2�����N�����О��=�\n�@I�~��Z�X+Y��#Uͩ<I��\Z	��VH��k��c2@I� �E�S��� v�\np�`I�����̾�h|��&>�9�m~L��3=��P�ɅS�V\\�cr\r�B*��V\0��?��\ng�ZQ2u&r\rWt�z�uZB_���km�0�P����F�S�\ZqG�g+*pw�5�1Xz7	H��\Z��+�x�;b���P& i`L Z`% \0`�@psJC0�DC@T��R8�N8\'Oh�SX�t�Wx�P�`ȅ]8��O@kȆ���������#H!�U��#!��0��T]�5��t}��\"+b�fxsu��p�M\r�\r�\'�� �Wr�5O�\0�I�@��O�Vh嗊�h~eW����a8�?�Rƅ!0)/�7%�Zx�!qpQx�Oa^�UO�%Z�\rp|(5���!/5�S��9-`*�B9���=�Fn+�с��`�c+&�=��\Z�s:|0	�a��:n(������;t��B\0)fW@\0��\0���FX&АAP	��DX�E�c�S�\rY��&��\ri�`\0D�bّFXWI�+�+�o�G�g��z�6I�$O/��0�4C(�Z�e��pU�&gRP\r��\0��8Dj��\"�q�Z�q\\03\n������X9�U	�x৊3���Q�2��-`!�Q)�{�8��)A�������wM4��5f���|q%	89\0#�\\Tvh�19����1�	s9��l�\0�``tT/߃�/�8d~�\Z�q������A�������ha������	��0��	�@�ٜ����ٜ�)���+�n�y/�	���4�.���H�BI�1vēh�s%\\�&?�e}\"M�& L�u7�!T�e��P�V�\r6�g�,�}�%\rj�u����~3US�\Z*��B8g��2e~��E]�?�z��p�GP1�8�W�2��7�U)*%.�) \0���\03�v����@�\Z{��Fp$+�3/	�lG�.+��!��Da3���9;�h��C`\n��y�dp�Wpcj�Wp�c���I���������y����Y��6�����I�t���b�����X�\0es��p_�䞃�PWD[�Дe�7`��v`ßX�`f&_�\"�Z-�I�b�Z��J�\"{12�~m�m`!��j*m-@�\ZJ*�\0	p% 2���6C9��\'ia��\'۰Q�R�~CR(�Z�LU)wq��)���B9EJ!lG�����k�S�!:��K�+��\ZL%��)o+P,|:,|z����˛o�:/��`��~:�WP�[�cʆpJ���y�X��面���a�k����*,��,`�o4�n��\Z�5��*B\'�ՔfǷe��U��8����j7{�7e�%f�UN\r:����d�@Z�(s������\n�z*�Q��@!hD0\0-2\0S�ˠsΐ\0$R�6�ESQ�\"ys|q�R�Y$)�C_��)\0��Y3��m���C\n	a@a?<�9��Ć	/�laoWx¢���y�7zoh���\Zk�[���;������	#�	�kUW�k��iʲ-�K6�r�`�d��x{�Zk�5��u�MT��w�1�&�� �J�w����#��qe�VK�YK�R�4nP]�����ި9��*g�_@�լa��\n�87ChAXvE�@j7�i��k�Ӑ�0�L*u����)ͺ)�q���8�B��{+�)�qw�+����t+Ȧ\Z&�F���a���\r�z����y��k�{�T�)��Q�e꥞�y�K���.��U�U5�yZ������V�o3���e�1��z_B�c�Yb\"\"�Q�\0\\0R�7��ʩ�̟\0D/�+2�H�[Kɔl_�v�E3ǫ�ګ/��̙:%��Q��*��n�)�|�٨02�)BjzC�7�K���ୟ��E��,5����;\0�_-��Q93<� 4��H`��/�!w��K@�l���A�\Z�o�Ĳ���n����[�K�WL�W �V|�U��[�ů�[�30h�ʫ�)˺��K��̲�6�T>����s/�%-�0�CE��cybtT������r7C\0�,1��8��{�R	�I�4.���m���C\Z����)?�����`�� ��8uWT�%q!�S�^��n�zQ��Z_����1e�82�F�3�@ >�l��L+t��?Xy��A��A�qXU�L������e��P짻K��{������V�����\ZK�J��	+И�3pݒ	�a�\Z����:V{(���B���0m��;7�I����\Z�,�r\"pz�S	��8�Rٿ#sI�R9=��Ez� �A?�*\0�j*g���_0\0b�(��i)3�r��,̕�~��E���_��c�b�k0|Fo�/��\n�@`s�\nMZr�=�鯥�G�����K&��a�,����d�����h�����m�|pd���Ŷ+��m�W@.3��=�r��Ɵ,�y���.�yH�L�4L�?Sv\\\0����1���F��j���\"��`+}%��%�\\�P�姕�5�P����\r��*ø���P�ݓmw���ǰa���\04\n(�����k{����2��=�h�Q߼VF����/:�Ф�A��fG��:��{��\n.x��ƃ-����w�����}=��[����~��\\�oJ���+��3��x.)���\0��A����>?^9�xs��z,��L!I�\0�Y�J��v��J��(�\r\n��41$��2 �N�$s_�8q۫\Z��i+�@� ��9-����*�x�b�3�7\'��g�5��ޕ2i�S��ˌ_�\Z�z��6w��氐��\"/�b�)���q��S�͏l8�N����=��l�n����NК-�}����ꉽ�i�����-~0o�(�أ�X��M��\0\Z�g!�g\\4Q\\��2��\n��N�\r^�7��J1���3�(Ez^��5M�TR%U2�_�B3իu����說���\nBÖ���F�7 ��FS��p!�y���@�\'<��Ո#F��h�Q*S�Fj�v>e�\nBd�����>|�y�WA�TN�О>�Ve����L�~J�j��!�ذ�ᳮز���.CO�B�ػ{�O��,N.�n�g�1O�-�@ -dU�>������7WhLS�,��Vi����7�vBQvB\\\\T\n�\"II	N2]�]2c��]c��N%%SSmm-�-$�$U$*-*�*U�:�J�:@�$$a��*̲aaYZ\'nnnZ9�9Zn9%9�䤥���������/S�Y/��Y8˗/}YdÄ\r:��#!E<0�`!B� A�	r$ɓ%Q�\\�䓗0�� 3s��8s�ϟW��@t�P4Bg�t��P�@���jS�D�\Z���\nX��e��hӪ\r��NЩd�b��\'F<���1G,N`6��6>#p��Ɇ	2a#BąT)�B��\\\Z���@Ȃ(�)Hr��eJ]l�ԉS�P�s�+�\0AUZ��U�03fu��%�װ	YJ�5�Ju�����A�mⶍ���\\�Q��q0�`��x����w�^|c��AF����DY��A��`v��փ��O�A�M:��O]uԇGURLQ5�[p9�T*���TJE\0X_�%���$�(�Gy�eW{��`� �L+-��O:��\'�Hv�I(`���xp�\n�6�d���\"^^ �\"l�(clЉ�nޖ��N�$��/&\\-���_r���è\0�\0�g�u��L�d��|���h!N	�c)��6\0�����s������_p	�hu%)�D*�k�-��:����ZHN�f������D]�VJ������[3~E#�X�^j���-��bYaɅG] \ri�|��`�>Z�/ �C�x�R�jBr�Td��`&Ҁh�4�Y\"Y^p�	�ʛ�u1%�(���)S�6�+�53hr:\0Ɯ`\r�0�0���@�a\0�e�����M��GJ8蝣Ϊ��ӛ1�؃���_?}�P@�bBI����`E@T�QGCF�,������N������QY��bYUŅ��Ⲉ��傅�\n��\0��_��圣����Xc#}4�^1D�W�J��u�RpbO6F�]��`rf��B��#[*@�		�B��N��\')��Bo|��Bq�/ ��������3g�m�0��CN8�=��甂*���s�<�s�=�S�4��@�v�,mj#P0�� � �n���<o-y�I�`��d\'�PO�u�I�)-j\\�Źp*�j�������J4b�$#YA�l��nH{Hݑ�p3�T!vMz�bj�29-�2Wzؗ�d&.��\r��\rh\0�4�oH��r�ܤ�`O�A���V�BR�ɣ-R3�Jp�@\0��_Fm�Q�6�O�~�(z�C��ԏ��������dKuc�$�W�,PF|�����_IR&��\rj�r�%����\\܇|R«��(��[�\\X�L��k,0�4�bC�U��B	�:��Z�D��;�4$<���b�Xp�\'B�\rR�\"�R�*eQM��\0k<\Z0f\0k�\02��5,�7p�=8�1�z�p��D\\��W	хOً�#$H[)}����(%U�ұ�ޘB>��G;�g+{x͓b��?Z�Q\ZG\"�c͆\n�_(h\0S],���\'xė�%.���\'��V� TW����\n_�IVD�-��0q⊡��L���F���ft�ِF���.xAnr�;,���@�\Zֈ.�ҾV�N�)�Jx\"��p��e���0���`�2�B\n4@Z$���(��\Z2���N\rU�CS0xN�e������\0��CM	����a@	ʳR�Jj�p.z�A?�]M��Z�X�z���,nA �ͷX)�B�$��X�j�2GU��3����M2��un�[@4\"\\�D�Ta\\��L����k�X�J׻b�:$	77���nN����\njT��%H\r�KЙNv:{�8�΀0z�n����\r��$����5���5�`\r2@@(^��Ȗ��x�Du�\\<Q�0/���Q��\0��r8�G�0\0j�Q);&�u�\'\0�����5��æ��w�1]�\"@�q7J�p�.x��*�r����`/�\Z�JۤY�PU_b�\nI�\Z�X�2��x+�~f�\Z<�?����k]�zM�n�ւ\r1�5�.��b��N�s�+uJl�.������̍ep%7�Ak\0�v��\rqp�^��Ř{��{(<W�0��\n��Yuvq3�?�{F��A5I!\0t�!5v�ϥ�s�<�Cg����w�N\0w\Z�g�앖5�ޤ��/D6��+ߵ�Ҫz�\\�a⬖[(C]!X�EV�\"S��R+[]a�]��0��@�j>!�\Z�0U��awyx���_��t\r��֜�э��\n\Zi�{X6�q�\nU<��4N(����\0�C�p�X\"�)����t\'1�PE-��=x����r��<4�Pa	�o������r���u0j\n7E��ǪV٧>5��i%�Nf����O�.b��֌�6`�D�3�nAb�.���\n}�&��ۆ�&���U[h\r�3a�������+l�IlX��E/׽��򽦜��k�<|A]�0���HF�}\nau��eّ�9�X�N��2Fc=�cE2 �H	гw����}\'[�!c���Q�[����X��T��GC���&T�y�b\n���s?��*�1�\0S���R�]��SԱGd{gor�D����b��r��W��7L�j�C\"�����L�k��s@GCg����u�Ftn8kއd�tIwk(�tU��N�k��.�G5$l0�(�/��:�/���Pv�U�Xc�\'c�v\"���\'U��s�P%�xe�n��Y��=��/�wJP\\��G�����R1��{����]�H+�q��za���\0 FhTAeJ��TK���h�TDu��r�g~�w!�!Yn�>q��b��)�8��jק}��}�t��Cb�w.G�o���X@_�T_�e�UEi)��k{�9O\'��hHaĦX�K�i�Nx	G*#�R2��	����FS?�Q;��a�nMz�(*������q�\0�,�y��e�\"�\\��	Gz������\r��I��z��\0-\0\r�@�\0�Q�D5��qr�F!�b��\0d�.�7�B\\�-Y�0#ۂs�\'e���.�9�t��4$=@Wo��0@��\'i�g_�F��h�淇Y博�M\0�vW|P:�r	K��X�&Y�`v)c��S�&u���{�2�H;+�LbG�4ʁx��e��^�uo��Hq�[�w�B���9�*S�6h?9���S��zѰg���Q@�AJ|TJ��$K8�#�Qh�rD�)DW i��|`������B�a�ɗ�$�j���Ga%6��y.6ď��}^����WZ�i��w!�/�M�d~{�����w���G@:BR��D�x��NLRY���	[��nyҒ�3r$�g�\n2��`@��:$����y�a�Tᓳ��˩@�R����0?���p��2��I� @R�g�A��`[�+��G_�x�u�׈l����<�.{%BhV|pj�Ll5�p�V{�}�}��u	\Z����x�G \0�ȠG��G\0��f9�7Uw�r�%�(uJ��|��!�8�wW\'V��x���:���zc3��2z���23*cP£ә<Z[Q&��pQ�Do�ԬI��K��L�Q��G`���x?*����*��?`3q��y�S�JC:��o��`I��\n|���1be+`Va�B�\n�\0˗7$l�\Z�	z����	ʏ��^�n8��K�Wi��r��t��W�ٱ��|ř+��G�\Z�*�T��N�墷�0\n�3��0�j�ؑY;��<\nO=z��`Q��:����X\\&���K���{���X`�/��=UZ��\0Ұ1եL�p�5q޹g^��\" hS{�5T+�+P��JN�cNhyu����:�7䨈����v�����۪	��P����30~����W|��_�[���UI���W@��f&\Z{�D+��b��.Z1˚�	�<��7{v��|R���nQ������}�T�{�ʤ�v�:�\0He��x�R���b8h]��`�zi�]��gǮp+h�67��i�b���x0u5��c�nE������Y���p��߷�nhC�v�DW�{�n���~�6�i��urzC�dN��K����v�Fu�+�t�FD����-\Z�2�$�ɻ���:|�@�\n> E�V0L2���N�5��/̛��u�}�{~�Y�QY�/Ml(X�(����׵��w�\'\rYP)�c�+��+m�ьrT�KTwk��·�u�x�X@tW\0:������yW�\\����᷺ޗ�^�ȍ\\tC�Ȏ���șJ\0�Z������t�W�;�X�K�y~�����~�KzU$��6#��yjA*k�K�$/;04�$������eS�w�S���`@Ѩ�9y����+�D�@T̩{C	0��*8��[M)��d�cs�c3\\l����� F��� �_�$���\'� O@\0�x�uȂLa�\\�ɅL\0��mC��uU�C����Xa��E������Ț̠찝U�r(�,��-�ҽԡ(q\n�������^��̐eeu�@�@�g@�D��z��E]Ԕ�|�zc�DKe�4Њ��ѬN~�:b�NӋT��Q{$�vo@��:(_,��	�Ѡ�i\n�^���Zi@l�\r�Ƭ�+>Y�#7��Y�)&�\r�`�\\a.��}�J\0\Z���ݠ���\rLt�MW��ٖ��������\r~�m��膝-����!���p#�KK\'����/]|��ry����RE���އ�y�±��ά>m�C]�J=�I]��}�-���\0O�+Q�\n�00�������x�$ͧ���j�|��5�x�����<�*�_�p��]-�95�gl��P6�����|] ��}���,)fl)f�3 \0�\n`���ܠ �-�߇�\"�щ��%~�#>��hڨ㚪�M����B~�Y��$¹]�çKP\'UQ\'uB^���!Q�$�}7m�9��[k����0+�I����M�K��*�\0*�\'��8����i���Ul���d�Z�T���(<8㋥N�?�2�cܝb������g�P��B �B{�{�Frx� �WuC�A�EP�<W���X���ɡ.�ҧ��L��������ݠ�^밝C;$i��,5A2�|.\'Ƈi�h!���>!�i�|4���L\0��Ƕb���x�j�C]�����\Z�EP�}�dNx0#��JK��NY;�Z�^Ǣ��!����~�\06���7(�a3�ډ���eæ��G���!1rDrhI�^�$`�>b���\Z^�4^�$��)?ꚜ�P���l�^�j���ꨮћ�����Ao㧮�^���y��Z�Z!�viŎ����f��~i�2X�ۂE����\'�\\g�_7�6��7v��A��z`����Z0p�\0\0� @�0�U���b��ı�b��D�@@�f�sN��������]{�5g[��+Ȱ�7\r��οrh�$�y�����G`\0&pO��n��4N�����@�\'�������2������D/�D��-/�\'o�/_��~��t���D�����kU>�ʐ)u\"���ۼ]UX��C�:t���xB���	U�Uz��-z���z�-9f��C$/-aa�$--*U*�J:Jy{�{�{1�1���,,�:3:����{��{,�<���YY�//Y/���Y���a�$��*$�@�@������<:<��1��b<(O�,��H0�� &��! �b���T��Q�ō C�ɡbɓ!�()@�ɕ-a�����ɚ&U�\\i���#-i�\\)�F�%��x�g�ӧ��yB�	�\'+�dժ5늯]�r�j�lճhӪ]Kujک�D��g�\nG���wޚ�oX],|)Q�CG��U\rE�P#EJ��C��-* ����R�+a�G��W��5,��`��%�U;�i�0�F�Z5pྉ�9�sҡB�\ny��~���	�V��``���x�>��d�@ĲhF�;\n�����t��,�D L��P\nV�RH(���Hp`P9U�n�u]}%�`y5ֈcu���,�(b�+r�\\u9�_{��^DД@��b-��Kc�0�Xj�b�\"-��BgT���\0Uh2�:*\"����F�k��&�+�s���sL2�\0!\\3tg͝���\r&���s�PW�u���;�Z����2İG�l��Ǟ{�!��@���a�	�:�����}�u�~�J���Jؠ�L�4 O�Uc�O�E�qե��Έ�T����6+�p���9�W^@$m��Kk,(i�b���$!*��B���I��sZd�=�X0��抙���棐梛ac�L0@��4�ؙ\\��	A��CBt�Mg\Z)x��v�̓���Âx��R�`�ɥPz%��A@��`��@_�����Ѫ������Gk��B��Է�DL;ІT]UV����Za{\r�Z�.�v�\"TU�QQ;�:n�-{��-m	��c��+����dQ��[A�&�i^�J*�Kl��b�m,��1�|..ok6\\\'p�@0���`|�9w�qu�ZGO��1�(=����̌P,�Ά^y���pAB����>m��A���I���L��_��N����F�S+h\rU�V���W|U��+��G���Ob�/bQ���y�lU��2m�/��SC�Yl�`���j��Ũ�&���P@\0����9�)IM���rs����r���t\'�\rg8���s.��slL:�H4\r�Ff2E��,#O͈w����=/�\0�`Tӫ^�74�]����x��1mU�q���]�D\0X��\\~5��M� gC�B���f��-�J��!F��*�dK�x�eG���y*.Ι+�PA �;�$,!8 ��c����VS�1��0D:̚��;[�F7\n��4�A�]��D�t�(�8�v��w�89�,���ˆ3\n^���|��\0�����:� �q��c<M%*3\Z-z���=׈�6zOi���#Է�C��!�W@a%~���C#ȷ�e�$�Z�S�Х�{�H�u-K�M/>:����7����@@	���T�k7@!3J0�\0�����)\Z��լ�7�@Ӑ�\"�m����C�d9{�V�ñ@U\'��\n�a��#Q��6���d1�z��p�p �9�+;�	Ͼ��g�,�\0�4�*h�b�b*>7�siR�	ܧ��P�E�����>\\᳟���8�Y����Mm\0�2�B2�W��[��Qjfhr�/��S��6�J0���/8M��:�T���A�nv���)L��`XU���n5v\Zۘ;���T��eT�s�	�cek8V�p��<x0�\\�p�\"�3�zm\'����w³�d4�<�wϡ�G����c���\ZAx�Z�jD��T�l rhDe�І�ءgid�T�ԪhF{|��vIJ�<�-Z���l����ۙ��8\0��@`2]��)��/��6��0����f�t���mL��l�.@�V�\n�����zǛE�����)3Zfm�w0��/�B� ��<�/���w���L�_�9O0^�\0��^��G�}&v���	���@��M���z��Z���TY�\\�E�Y��mm#d��U�S�T[u�QJ��c�5�BW\"OB\nq��Xi\\&# �x��JeZ�ƨ�\"׸��~i�IeM���0q�@����8��f����m�7z�;�8��� �mX�M���y���8�X�&�N\0Áыp�!��I6�>��PuFk:�j|��v5�̠���e�\"\"����8��\n�pZ��\'�\nVXDs�������(��`߭[瑍�д��@�9%����LA��n�\r ���G�H�2*W���2?��B˵�;+va&gbBL�w��}j�Ϥ���{��Y��������>�LpA�ЃGS��A���1��?������8X�\n��F#\Z���Xq`��V������������4�\"����6jz���������bСg��n@3�>v\'0y\0 �(�AA�����9ƛ�Und��5;6��mx ��B�t��|+��Nd2���S�sp�<\n7~0#`0G`q�Gq9S�x��Gz�qc�h	�W�Di�{�{$�Xi�*�ydj\n�\n�jʂk�V�8�66x���jt1\r�t�E�62Du�7\n* [\'G�:#v�}T~-@��%��\n�vp�~t��w*�~��n����:�Po�g��r&M��(RVehU�a<(�3�� ��Wz������ȁ��hx�zX�7�	fi�eX�7X,(�\'c���cs��Z��{)6�� �sb�hQh��G��|G� }uV�9�w�P 	D��� ��~�\0�J\02��B��_(w��1�~�n�c��L�V��^\0����.�\\+3ׇ��8AQaD\0\0&�\0\0\0\0���8�������ǁ�h��z\"x�Չ��N�r�GY\n�,�{��s�| Ys+ Z�U�8\'Z9w<�Y<�b�t� �BX7X0l�v9���mJP4EdP�#Y0H����9�\0�2@E~�CeM��hF�Y)&rw�@ xF�U��1�3��x�e�pSyC��|�p�V2�F&0Y��ؐ�yq���	z�zUq��q�5&q/GYz$����{<X�����l�Ha�t��5[7��<���gF�;�Q�l`\rБ	/0/��J�\0M�\09��A��%�p~T��q���a�U��Y�UG�]I$;�D\n�L�m�Gx��7�&q)y�A�\n�-~��(�&�a��b+��4�Q>�>�>�	Y�C>����\\S\r�Y�{*2@�$bfAQ�iQ9�4�Q�B#Oq#uË��h$R�\ny�1\0u�lH�\Z�c��9��d �m�2�mg��\0w���w߶/ιU�vo��LH$;��D�U^����(+_����MD��P\0`D`\0����z 7����o� ����#5q^��z��|��~ڧ���G���j�BH\0����b�\0��g�?w0��ʒ+钓zs-|�z?�z?-�?����*���s×���Z�t�Q��N� {��7uY�$��f���	ݐ��9���\" ��H:jBŅ�Ɯ��gwp&�AeJj������`D�2;�B^uf2��9�ZzpS�t)�ID0xqAP#�.P�q\0qX0�<r�dIzq�۰8r7;�t+�A��@�[�30�X0hpz$�	c�6�{:�a�y6�B6)Ib�%6(�?6��5�kT1��@�E\0,�c�\ny\0iPS6�\0�y��Т��m@�J9\09��*�:\0h7��a\n�9�ƙW�a�Ae@\0�\Z��	g�\Z�AN*(�G2gU����g,�	$�8dpW΃�s�F\0�Y9�Y�%�3ph�)���u�����۱��WP��k����.i��{��%�����K���)�W?�GR�!\"5��3?$v�A�:�=�Q�-�����j*+,�k�b�5?� ˰Y�#$p&�$#j��6�G`���1��8��b���20�+	�U0��4\n���>�h�T\0ܶh���n�o6���1N\Z;��Lr(e�\Z_��9�K_�t<Y���>��K�{c�7������	�\nU,+|H��Q�[�0\\��7�]�b��C���뺔���)<�\"�����{�<7��E��3��[�T��瑱��H�jOpZW�X�:�����Y(P�7A�1X �	�0\Z/�\0��c�\0�+�\"��	���Q�\\\\�$�ۿ�飓�f����Iz�_�UIT��PgS9��3$���ץ��P��GM�G��!�,�M�ʪ���ʭ˰�ʱ\\˳��&�ʬ��l���Q���~0��\\��G�VA ,n�Z`�V�/Y����Ԝ���)��s��bo3HB��<�G&\0l�_	B.�Cf}��o�s��0\n�4ϸ�|��c��I���;��%i�ɉl���D�K��\\x����`ω��zgũ�N����-η�\rx�(+ 6R7�a-��0\rӢ��Z��{]\\���0�3 cŌ�A]�\ZruQ�F]�/�C���2������;C�\0`f`.�\0 ��.PCP��lP�^�p/�!J/`\\%�\0|�\0]��Ǌ�\"�0\0�\\.�2c[�l�fk��;9�*�Iz-�_�Ls�����\0�{&u�a���*5��M��d�G�7�@M�3mj�����˰�ҫ��\Z�#�sOP(�(P�ͯDPN`4�N��a�$��VX��8G�����X��E�]s�qa\"���X�?_X1@�Y �1	�CpJg\r��p|g�g�U@w�}�	 �x���j �9�?9\nm=9f5����2���o���Y^^%(����,p����G_��Y\Z�X$�\"�-�`<|pö��U����C��q�޴��ڪ-˶���>�Q��\0E�L�F�F0֚���H��H�[����u0��:D�.�[;?��A�\0(���U�pPG�+�D:RG`���t*AZ/9\"T����d��\0��m}pT��U��\0d�}�>�>��pI`6���mp��1���$>�Du��v�����o��H�����M�(+n&*�M�,ųp�I^\n$,��3��a��<�\0X�1�2����3��!K�;6�>!	�z�W�\"�;�s�6m���(����L.p�}�sޯf>�(`�b�b�R\0R�(0~P�o3�p�i��h��`\0�D bp�.0O��D��\'o�(?�iN\0~pt�5a��+�<@\0`��NdC��^��3�\0�`\\N\0�~ץ.�����V(��+��}�ޣ��fl�ᄗ�����o��gT�^s�<�7�S�sp�>��0���c���!��?�+��>���K\0����b�\Z��ss�E\"�>������cZw`��)��?�\\�\0i�p\0��3�F0��T.�F��?\r�֌���j\0i �i.A@�i��h�?�}��.��cj�	���P�T�%�����\0P�I�8���^OoV��1w�}dG�tMצ��\r6I\n60jjI-JUU:U�:�<��J�J�:����@��������$@$����@�$����<,,1�1��{O�1������x�����1����1<3h|OXX~��~X���GGG�������Ìv��a!��u#J���B,O&���̓�d<� �b�}\0�X���8\\	\"\0\0i�H�	��DP�`��H��H�\\y�P�Ί+W�@��f�4P\0��\np��@�lO�0���c���\\Gxar*T>PK�$ �\0�x��`�ΟÈ+^�X��x�,��$ @���F	��A��I.x0�\0�\r6I�tc�ˆ� ]�dBoN�<���k�%T)_��U*�jђ.}WoK�~�b�c�4fȠK6���lO����[8���o���wx��#P������П��`�*H ���F���?G��=u�=���:u����ъ���F��VJA���E4@�Ai|�L#�G�H��Ɖ����N���\0hu�L.�L/�eN\0�t\01\n�Q.p�P+��BG$�Y�t��	�\0(8�؟�*6D`!w�q�		����\"0\0#�&0���p�\"��Z!\n\\ C��&B2�p[��ફP�&�����s����-�Q��&�q�0�aL1�8�l3�7Mz����{�Ӎ|�3�U)��_~�p`¹�j�n�E$(��pP���.��@\0����W�>\ZX@���>��`_��\rw8��TwQD�c[D\0�L؍\0 �.t0Y��+w@\Z���^!�4�\n;n�R�D�GJ0X�Q�&�0����-K���S�x�f�~H�������}dA\0,#�ڢ��h\0�0E�L��hcXJ\Zj��I���l��q�tQa�����w\"k/�(t����t�ݢ˰�h2w�%{�x�%ӌ��JN5�`km8�b��|<�4�}���\0Ah�a��Q|��\n\0�S`�<���k��Eث}����G``��`\Zh�p�>�:�E���/O�G�AaBr��N���L� �k��\0��+�@eD��P����`L���p�|�h��\\\0���A�L�@�\0�$z\0* 3�\0\0Lȡ���<\0/W\0�T�0���~\0B���������6*�\"3pk�^\0�|�nw��iPc�2�!p��R#�lJ���r0�)� -��f%+�����ۖ�\nF1��8�-j�E�7׹�%�g4�Y�A�V���ɎZ�ݵj��RrcJ�z\r�=�A�%Mb���\\O\0Wh��=vLI\0��Lp=b\n�{Ss��=��x�;�Q �L��޹�)�69�I���p1>��HD��db����H��.g ��@F ��V\"\"DE	(�H����Lh2ӄ6�\"LӅ}������D.�I�h���x1p��HR�́�@e�1\n,��Z􁤼�EJu�4�	\\�=`\Z�&p�x�D\0�4\'(�h�fG��{d/�������ldt�ʨ��\":�Vo>���Lf�[F&#���(��bV��kY�Z������+�E����`���&;���`H4Op �8@	��x��,\0�Ўd��4&f��X�\"�G�d�3���6S\0��HAKr�D,bD��Xt\Z��F0A.�Oy�cD��d�����IΦ��\\��h�(����=�#&)�T$�@me}h�_��ʏ\\�\\�\0����	Yp�Y�R�\0/\00�_Й�m�3w��	4��$��\'�i��h�]\0.�� 4�@���TP�@q)�Jȫv��]}�,jA�ω5�`�20�V��x<�D�\'�s����I���7�Aʄ�@P�J�X�\r���&<I���Rw�AO��H��D-.�\0G�$%��A��+\0�#ӎL�A�	��f>��x�+B.��<�%*P���@@2mL���mp�\"t��!�g^�϶��H\0��R�Asl�*V������hw�d�\0�ePL\0�CB?WF����K�m�R[�	����� ��|�6���j��Q���\0��5�\0D��7X���@�@�\r��\'�� �)8����Dw���~s9-n���cH�`*�1�BQI��`hEV&�*��U\Z��(g;o�2[~��_f����LA`OV��`r��8b�x�,�����К�lN2@X�F��d�b*m�\\��\n|�������	+���Ac0\ZA�Q0iZ����@6�.����\0��:>2�ٶ�X@��+��\n�z�\0(����@��N��\'Lp�\'D>pP}o��m_����0�1EMd9-h�f:��I\r`�����74�qSe�p�\Z�8@��K��So�=�����A\"�\0!Ϫ�_c`y������׺��{��;vF��\Z\rP>��4���S��	\0�Vd���;$�Qb�v��L0!�g\0�#_�rq�\'>P(&�TtFptp\rCXM�3uDgYa����\rX�\rv7�N�\\i�&+�1@��egr�P��iE��#��S�WQ�\03�#�1,�E4��@&&PG�x�vN1R^�}pU���WP_��D@\0 z�\'�q\nO�z\\�z5\ZF�m��)kT��\Z��Fq�l�7@0o\"`���+��o�\'\n@`U���x\n�8c��p�ccc���V>6��}�:��o�I�AW�gd�;��q�#;~�<#G\0h�\":hx04Fq%2��\'& 2���r5*�O=1�<�C<Nx5�K0BL\00���Jp��\\+7&6q�&�X5�jU�>�>m!4$�HC6��$�%��53 ��%H�u�wH 3�v��RW@\0,�L��wS�5 �C}��xf��ThBL�wFp#�?dp���%U2�mjÒ:�H��z>��5��{?�S�2F���!n�\Z�fl@H�\09�T�\0/@b�PH:�|�\0\n�gU�p\\	p��H3��d���h9߷�d�dqѠ�,BFdE�~�8;w;��?�>%lw�*�\\h(��2~�tG�!W3�E)��;�CH �!l%�7�7q1\"gA�f�Q<X�\0X\0wXt�/ᢃ�\"uF /�4�N6!!Swu�f�B\0��OD�R �����b3����@rpOY�N?kUKPZ�y�5`\'b�j<�%-�뀎后$7L��$�ygφ(3�+��k�z�a)2�S�`�F\'@{\r�\0o�\0;�Bea@�b�fGF�d�*�����|��GH�w}��lÐ�lIE޷�k�I�q:��:�w����-���� �5Sw>���2V�^�a\"Q\\3^��5�Hv�4�t�Ap>\nt<�O+W�#P<3�f\\�\0jq@~0\ZC�8��\"*\"�%�3�3m���1p����2xCYRO����6A9%�Z5��1�4C�r��L�Bo�pA�k�2_QC5�&��ob3O\0���D� �Az�@V���4�\0���g)?p)2�GՓqh�@\r���4�<un�\0u�S�p�T~\n��|Y��S� �U��9%::�\0q��*�}>�c�#~BF~�\r7����\rd���r(2]&��e^C��1;9b C�#b��&Ls$5�H��U]<�&.�\\�3Q��_C=P$\Z##,�[\"X���>�v�#t8tC�T^�I����DGC91��A1+��	�E�r�	b�t0�( C�\0~��M#P3!��\"R� B��Du�@��|@�1��cbX���	\Z�1�t{���u�`\n��o@o��Ɣ	P�ڬ�����U�z�/��Ն����\Zp�\0�6�i�V�h�jÖm5��I1\ZW�:\r7�-��q�X 0~�AB+��3r��%(0@7$�:14_!A�Ƃ<;&P����0\"�d\"|6����2qO���8�\'X��s�i[#���tf#���POL�OT�}J3ĶA�Yw�u#�Z$�D0u��f{v_�N�u���x<\0��c�I�9����\0\0�\03����6�$HնEQY��A)N�£����F\'0nC�\0ַ��an@*%�O����p�T�[��\n$\0�S9���!�\n��d�ɢV��(�����Id����Bv�摺��~@�CrD�@�\\^��L��WP��!<�@���. �khd�0�C`�%B3�s^�LE��S#Ch�ܫF0���\"#��<؃N�_�h���e`j�1�b �X�i�[F�v��$�T�_V��~��}L}P�)t_aRb�u�OC����j3��d\0#����1�� Ek�9���B`)l`)�mH6u�)�\0~{4�\Z\'���Ç;\0�[�L��\n7�U9+~d\nIL��}�q�JV�\n��,�|�;�q��ʹ��c�g���I�d-M�\rO�t��s\rDBA�2�Z>x�P5O��k�2֫@��L�h��[�b\n�3w�P�6�>aB������2�1=�\'�hR�&�T�\r	#�R�̚ټ�2����0\n��@�;W ��ԧ养5A.�<(X<�\r�&�c�g+z��â�1�5))�<�r{\Z�\"@��\\@o\0\r��a����|�?�M\Z���ʸ�+`�^������+��ch��f�Mz�{��\Z[W�C��Z�3\Z��1�?�G�+pjw0��A1�\'�=�&�Mx R�(�vQڑ8����X���j�(4�&2UF�B.�\'���\\E�LʔL�>\Z�[�[�\\�4U\0�HNC���`�+�#�I�`��A�Ȳ�G��0�\\ �jA\0<i��o!k��w��k#�֙���6�, Ȇ�5�͆�U����(#L�6����*�\n{v{8�Qa�Gڤ���9p���Mi��Lo��T4۔8�\r\r��Hp��Э0:Q��,U�(l9���=�ū�/�ŧ�]\r?r\\�UQ�5����2\\��0m�\rA脾\n�9nP�v�wp�N��/�@2Y[�\"�~\0\'v�WMR벌�\n���U6�	�9���N�(\0��=8�:����1��\\�3��0}6��:�T�i�QD��6|`�=�#�̪�j	3P	FN`�)۶�c�>�)�FJ��{IEک�9�a`�?��?`�9��O��Oۻ!Vh��m~�]�U�0:y��=z�M�1������ؤm��c����*-DV-K�\r6Z3��h0�r�5���wJ&�]�0��S���$v+�B9������\0=͂0���P�5���\0O�D㛎v+X�>���Aw��\Z�j)�C*}�`��\'�e�.����E]>�\0^\0�#�� #v�Y�\0k/G��\0 35(�\'�ᱮL��d.��\"!X`�iS@����H���f7u��-�)����`�a�ʚZ��\r����b.`�и���c�G����ˡ�K�Y���Q�ѣ��+/m�tܠ]�\Z\r�4o��@13���x(]��C��\'�	�O��m��d�CH[���\rw�hOXD#..#�.bpFDp3~�AD~O�ER�#F\0��p�FbG�xO��x+3XX����Xb�F�L\0Db�u\0��~AC�1O~H#D��LF\0x33h��ڳXwHH��H\0�bAZYF(\Z<~\0(.D.�F(��	�+�� t��\n,.�H�H��ŋ�`\0d�|x��\0D $T@\0�S8�!��\r8��9�\n\"N����QA����TF�.9����G�R�b� ��-R���C	�y\"���Gp0�A.\\���˷$��y���1x��Ç\'(V��#a��Y��L����d\"<��m�ϠC���`4�Ҥ-= ���,=���EK6�H�C�\0�CE�Tzd��J`�@�H�Eb~�%��X�f���{$1����ɏ2?�/\n���/M�����x���O�U�H�L$\0�E%��@210�A��Btb� �pXb�|u(�G �Kw\Z�NYG	Q�=�<�?�)�!�\0�۠��73��i$F\0!�3�q�I<8�J$0�K>d)�\04��ė9% `�qR�>!%�R\"��TT5�A	%�0\0�tr��p�5Yf��G���B{�U�[Y4�h^y�5�Y�f�adE�X�@\0�d&=�d����p�Z����gl�eڬ��&@̲�|����#T ưb��B9\0�����\r`Ir�5W�/�F��lB�}˱�H\"��7�p�Q�&1`�^���^{���}��ꡇh�qw�����I�p`�2<8�(.��H$Rd�@+���6^ �t����(r��i q,\0<<PM��k�?����b���q��GvpX\0��\"-%I$d�U/��p)�N�4�HeTA�0�M]8��n@�E	P�0g�\\u�\\a�Tb�E0�|�qh]y5�V\0���(^�2@Y��u�a���b����a<f��a騨���Z�v�L������F\Z��`�\n�\Z���3��ìjx��P˜sӡS��T�l}����҉���b�\0\0u�r�\0[`/���v �&\Zg�8��r[{�L\0. �ā7��*�̠��rчߕcAX�����Z\\A\0��@�12�q�\0pc\0��D��sA�ݠ\0��x�B2<AU�/\"�m&	���|%jR����������F9�	0����l]��T�2E7�!`�JJ7���n�QB`Т�S�1- ᲠF6:�p/pGGĐ厚ZI:��(��s��LecFѥJ-�\Z]g\\��|fu�k]b��#����0�X�D(���<N`���4�s�lA�WȤ,��#�/X�i��06a	\0 !p��/�|�\0���2�ٟ|�w���B����f��\0���g����V�\0��g>����	;�[��D$�x@(xF��3:T(\Z\0��X6~X��4ÆJ�\0��\Z>���M	sy����em�5I��t�x�(h�P�4����<����\r?�WX�dfaA`X��B^�0@8B\08�\0,�%,a#��R��Usz̪b��)>��S�� #����ʐ�1�23�XA�t�:�\n�(9�Чz��ްvS�1�b0�͜e�\"�aͩC_;`�u���Z� @\0b�考��κB�0Y9�]�ӓ,Ϲ�]���b�� �ǖo\0A\\ �Q��.J�:<���l� ��� ��O�)#P�D\"�\0J \0\Z�@\0�4���hHX%D*�LgΧu����N�3����)Х\0nCK��%�%�?`\"P.�`�P@(AA�P��\nwʒ6���*�\nPb*y1S*�S���T�Aps��P��=v�S8�qӘ�e�b�� Q�V�5��ck���A�5�ɋ�%k��|��X@�f�-8`RPG5�P�2��t0�\0�\\80�7^ނD��n���;\"C6� �0+��#���c)�\0<��C$,�ªm*���_����8p+�E�%: ��RD�r������	�	\\s�+�S��5L�XG����ð�c��@��Z-�<V�}�B�{g<K�-Ɠ�Q���b$��/T@���@\0�~ɖf�Q�b��g:�O���2)G<�Q���(nq�ZK���e�tAG*wGt�\0p���c�]nr6�q��c=VNS �XI5��KF-��� O�*$�jt�yՓG�B���l�A L�C�YrA\nQ_*��%�G{��52��\r��xеF@���AH�-��3�a��E)v��R��d`�p�»�\'!W��;�R��nl��i���}��ȍz9��@��+u� �?,��`v�D���- �=(�`�2�\0���y�mjh\0P�AQ�0�.$\0��V�-�DlL,i��-�3�F9)����$C��Y�+\r\0TP��t1�ê�P�s\\�\\5\Z�����ßr�ң?Ź�٬QV���V�7�I��E�\Z��x��\rz�Y��t�R@}��C��`�\\��u\n1h�?O��@ېB@\0��C[�g�e�\0}��#`Ġw*�!��/��ѵ##\r#,�fB���< �Ȗ>:Ză�Ci�1X7���R`z��w��X��; J{�w;rN���t�g$�rڀcH���_��\0�F�G5]�`�@�D�voKt�&�pn�\'\0p-�w�\':�T�Wp>�p@�&�8�\'>E��q���\Zg9^�U��9�B�*�F�*gA��dH��7��H�1(�\r�+��L��M��\0b��Fx�v�b�XRp��%��е\n�0X{wu mh�X�H�S����l����`i�`u���\r�@`8\\\0	��5�iE�	yVm�Cwr�ԣg��Y m�������ڃ���ȅ��1��V�F�G�_��*)L��)�7�\\�n\n�|�goӇ���L�8�6]0\'sB|\\�\'TayB5W�u�$�8@`C Z \0\'X�����c{�U��G����G*G��XV�r�R*��e$�3�ɸ���i�F��BzF\0�D`���}��}����&0�;�+�G�P+�3PƅlF���<��# \0\Z�B:�Bv�������\'�M�(Y?2��W�Z� Y�ٱ�� �\r>\'y�i\0��j��vB���\\y��kڐ*Cb�QE��e4QB*�Qn$P>�a/�}PU� K���|c�;!Rc�O�o2�o�v�t�Z�2��\0\'7QU�8�#+:�C�� \0���b)�]�QcI�]ecf���A�9�)7Vpid�q*g%�vi�2g:ĸ�E�\Z� {��qWXpB:�B�i1H\0�F�CJ\03�\n��wT�#ސN*tN��z���&�����\\�zE��њ���+\0�\\�\n��?m��p�w�1��Z��Fxg���Y(��#��!�᧬�/��k>z4+p�Ý!��\0!IC*\'�S*P�&��-q�69}[ß�6o�y}b�R��Vc�SaEqPa�zSQ�L9_!Bz\Z,p$�L`y�C\0��x��(A4�h����>���9��ck9H�򋼸*�d����R�\0ߕi*��������\Z���Bw6�����H�z\n�����xñ�x�\nci���S�\r>қ����Q��!��yW��/��+��j��:��������s�T)X)�����L!|-�V��YRt`=ɟf?�R����9Sq�\0o��4�/֗�Дt3b��7z���\n4s���/�Fo���`)��x|r���\"���Z����*��*6�\0,�zk&�ɣ��\r+�!i��.��B�}	y��~	>�\r�Y��Y	�GX\r�x��3�@u;���4��}�/�hW�{Nˤ�1��I���İ>J�w�B���x�����N|�+@\0t��a\r%�AF�{{\'�)�Jn-0�Y5sr}9��	�&p`)}fr4E�4�\04p�{�˴Z�a.��c(7�\Z�@\Z1�\r�\0���T/6q�̚�X��f�:����4~�n;\"q��cr�񭦂d�D\Z�z�������\rW�$dz��k��ۂhp�v+�׀4\\�jk�i9\Z��;�^��H�^+���k�i?��1ȸ��]�ZmH茫P�	��V�L��ww���!��^u����BdL��t��7| �+t ܅(ES4!\"�{dAn�Ʃ�RT?�R�\'���v�4�\n�\06`�۾1�6�\Z�/aQB%\Z����[\Z _0��\'�TȪQxQ�\\��]IE�\r�)ѻc��)�gQD���.*1ڋu�7|���bŭU�xv�Y\\�Ό������ٜ�Yͯ��Ϲ�Լ�ټ�]:k�V�eVή�������vW����L���Q���l���5���1J��|�N<��E��:�P�s�L2w�):����:\0[d�I}��oGTo0ST�\0���4P�4@7�\0���	J�a@�U F�ɗ�<u�f��\0���\Z���e���\n���q(��G�9�<V.*���{�\0�z3�B�	�\r{�g�^���Ջ�sm�B7�e-\\��j��h�i��Y*yZ���9��>��^��|}�~Fj�+�#��������=�#����{w��-YL=W@�yF��5�[\0Z`\'Ne�C�p4�qe93��Fi��Kt]��HR%�T��黴&S���Y50�f1�zYӝ��&Y(\0\0�T;��7�r�),�eI�ZuԏCc�M1��\Z�y`y2x��ޡ��?�j�9ҹ��}��m�����,�׬�������_:���z����<�6l�~��fG<�G�in�k�iB,�I���s^`�8�~�8��ǝ5\0�%�T\n\r�P���G�ip�K`wb�=o=1R��I����T@�LS2�7��m�a�1mi�7���5�\ZY�f��\n�ɚ8���֕�-���qYeQ����Z������9G�{�͌ŒMw����k=��,��,���t�@��[%�n��������N��|�ҹ�����ωͫg͛��.��]�\\��^z�\\��:۵���y$��U2�Sa`���6\"�9;o�>a���T\0\'ҋ�ҿM5>5\0�y��N�U�M�l\Z<��P.k���\n�|��,�f�p��݌�j.9�m�r{r�]G@��^��)w�{W|��Y�B/����eL�r��9.�B����.\n�v�}�i���-�>\\�\r\0��p������k���9֐��f��m��e}֡��߬��u�\n`���\n�j,:�[e�|L���=�8��w���\0T@6�*\r�8��mPZO��N�Ũɣ1:ٮ��i�~��b���=��c�h�!�q�s9��<��ת��z�W�3p�1��}i�A��p��p�w+ffΎ_�~�^\Z�М)���5�����/����_���Q\n����������)A���,�W�R@E�E�J��O�G�q��E�T�9��6٪��D�K�G~Rߛ\0�%Y�a-��b�3�7Vk\Z~#c�1�d?z8��j?q�̬aN4��f+��-7�GY:���,���,{G&E3hX�whW�hh��h��������3��XX����������G��G���������E����������E���������E��&�����A�A�ApA���p�p\0\0���LL\0LH�H���!iL�(1 ��,`��\n<xL��C#*H0x \0�6�H�2��~��@�\nn�T����\'��H�a\0mδhQ����J��Juj�=1�^���Є�4��Ġٳh��P�H�,G����A�X�ꕨ��D,8������q�Ǆ2bT��;+2k^Af�f�w@���y�2�3w&��׹���֮۸d隝�mT�w�%|v-�j?�%W����N~��/��{a��ݗv�Σ��=�y`����!-Z.�,D b*�3x���Q�W $�AI\'\r��&��L�����N^@�P	tQ���Rz��TTyHU�T�ؕ`\r�@��{4��G(�`�Cs�E@]@��^Db��_�\0E�#E�=	֔�	���}��,a�#���J��i�h�2LH`�0%�+<1uF�+�Q~<�yg+��9�*��2�,���y��J/��E�}�f�#*�hj�k?:�Ku�A\Z�̨�q\'^n�UZ�q�`cA�rm*ѝ<\\q�Xc\r�\0�\'1���	��,4A(!THH1u�\0JF�0��bPE�B\\���\'*q�y���HK&F֬��ei8R���v�WD�ed^X\0/�M:e�O�8ecTB,�X&I)�R��3\\,��w�����-�P�BX<���0�,��x�\'(ƥd�\n��|s��^���D=44S�P�0@�\nW�0��C�l�H#}��F[M��<�bc����Mv�Op�6�w\\!�7��g���M�Fv,Y��v&TP�s(��\0���D@\\AF�\r�.	$@@��$ӂ0�P�\nPACNA)K�\0N8ჶ.�ԈJ��ո��@0�\\r	y$Ec�P�����i|���hA\nO��{�ؒ$���T:l��:p`�	�����q�\Zd�-��x��\Zg��m����]�x�\0��2�a�hE{��%�W)\r���`�5�Y�O��5�@A���G����(�\Z׺���Є.Z� \'8q@�O���7�(d\0���4� ~\Z��.7��`k!.I��0-�@h\'Tx�<p��Zp�Q|�n�hv:\0WT�\"�`�w2	�JR��1�J��\03��m\"����:)/A\n��/�,0M����4�	��|E8��б2��d= �\'K\ZM���(%&�0/��Y�f�M����$�X8�Hk�-+(\'��eZ��TQ3m��*2��T3ؼ�:V���	�$\Z�b\0�#��	z�Ѳb˗���f��^�8	�1\0!P/$��r�����	��ʺ\0��`.����UED\'8����1z�[�S������Na 	�����p�$s�;R��������q�P}7���e��K��r�%M�#y	�[�LdXX��@�xuD��aw\0�#0\0�z�z�<�@��7�jb���p�(MǗj\n����i�	~�z��4�<�T��\r��l�j�̚�8�5#��&��)#���r���\0 \0�Y���~�hPH@g�T$���X��.�h�+���~0�*ZB��PV��ص@!m���]�ฝ[\ZK�h�\0L!���S�����c\Z$ �5���E�U��+���%,�~�k�*\0ْ�l^���-t��H��� �!8��iq�����d\0Ђ	8�Z�xkx�Ԫ���H�\0�T�0\'�\ri+0��N����QF�����Tf�4�29��\Z�B�ߎ��!�\0�ph�P��+��.<(\ZP`#�h�3��N2$���\n&�]�$�R�	N :+Z���P�\"F2�NL	�HU �*��/(�D���?c�S��ød.sM\0����� W;0��X�[\0�#��G�K$����\0/�����@�!���1�ի.p�:`\"�5����y��kc��FB��� �lP�1/I%dվ�U��`�f�j��E\0p��,���0��v�����n�\n���\0�\\p���5C�g�|DK�a��	5r�O\Z\0^��`�}\'�g�\r�$O\\	�%:�5��2�Ar��0�K��\n�;;ٵ 0��@hE�����c���=-�Π�i�����a5��P����	����\\Ԟ_�n���s8J`�4�\0f���\'W��E�kX�* �L0\nF�|�������k(��Z�Ap�vk��q�����&|h���ٷ�R=�<m��1pe�C�B�k�6�mր3\0� )�o\\�^��8Ʃ��[8D�A%�����r0q�,	r@`�9�\0ϕ�K̟h���2qI�Y�:�_D$`J Y��9\0h�u%a S{�^`P��ux�4�#�)�gku�.!�;��P|rbL�v�8�5�u!AP�\0N��w�G  @(�#H p���x+�x��V\00H\0nH`yb�}E�d1\0N�WGSZ��@��\n%	��2�@X�X����z�p�b��p��Y�ZQFX�{�\0w*\'h���F4ҷ�74X +i1\0p�����[tD��\'���~�P� ��E`�?0��;�t��/PSd91h�i\nb/S��`�Ej8�X�!fb\Zpyk�&�\0�Z�@�\0\07P(�~� v\0E@\0Y�1����D ���u`�L0n�#\0.�o� U��m��\0`��{F�4�4�qr�A��(��q�GYP}�g�wx`5WpA3rWo�&\0N&Nl�5�aBF*��=��$ڔ�z����42�ZA�E�x=t+�W0Pu�<�Mg��Qj���d��2���:��:�SFf�f��i��\"�Z�h�v��t�T 12���tj�8��5��ufp\05�5��s@t0v�C�ҍE����d��4& b�# �`U�X\03P@�uoZ�# puy�\'��\'n��d�@�U~0�(����\0\0�e4���Q��64<P��`�*�(��z�D���v�oQwn��& �2����2\ZG\0O��h�CE�v``�LX5�PX��$��a Q�\0� %)�:ct�]�S�\\�9��C0@� \'��6^�\0��;li��M\"J�tY�&��I*E����(aV0Z��@����C@\0Of@y�W�(VC�7`l��?�s@~d�O*Y�ɐb�\n�(X/SÆp���H�B�)C3�\0�&@9���u#���5�X�w`\0P5(\0� 50I�r�>�z\n�8�q�g(`h��EP<�6���0�;@>P �h�E��:U��m�:S��\'�z7�E@�Zc	u.E��=\0 a�#�<p��z�A��p�O`	��xp��Xu`px�`�\0��H[����n�9�p�S}0_�Nd�?�G4w�Rz��(�B(�z\\�P_Z�E3�ᛯRo����\r�\n��\0�&d�Y������?\"!`+E\0A��\0l�<�\0��YPW+���X�\0;_�5H�\Z�B��6�M|��;$������:�U�(F����-��\0	p`:�:��Z����؋/�^G/�5�{Ċ�j[��I\0E`l�J8��A���hxݨx�خ�;�\0�D���m���C�6jC�Zd�6�;��T��9o�G�@0�͑�YA�>BkB)(�Z�0���o�A�Ck��\0p\0 \'Xp�E\0���tq4�2G *Ƨj�1A�e�\"���ԅ]����%@�X����,O)�(F�ӴP����SP,Z�\07�\0�B4�Lw��������Tw$e;�h[Mź�\\��z����q	P>�8�H��zۭV�-?(��gyU�7��as6�:6�l��)�!�2V�w�Ä�%\0A@fF�ˁ�I��R3C��2��*{��A5Q�nt��{��f��}&`�0��!�\"Z$\0ke\0%@\02l}�Kb�<P7��Y���\'y�geĔ�)Ec�,��Vy���:��T��K�z:�zcɵ��\rA\n�^�+��+�g�:P���um[A�Ϫ������l_e�g�#\0Ю.c\0+50�u ��m�6Wi \0I�Y�X���������I�\ZN�\0i\0\0�y5�I�A����5�A|��E0Y���ɥz�!���kf�X<���)�¹~P�n�f���AT�l��tմ� �H�\"�;~QH�i}�:V��g`����+5\09@��7@o !8-��p�-��r�����\"?k�A�Մ��4}Sm��J��h`\0��@Xxup���y��\0�|o�.��?xy�V��ӻ�\Z$�Wf�\0|�����T�wɼc3`�,��Y���9��qÉA\0�l�`����8��c�ֱ`�O\n\0Hp}`@  ¢���1�`��&�T@\0�O�U6k7�3�Yq#J$�g��e,�CHaџ���\Z}�W\0[$[d�n 9������i�%?����3]��}8�|d7\Z��>��mfbE\r\0B&�\0�\Z3���B-Wі�ac���y2�X�G��;�����T�f���!4]~s��E� ;��uל�\n��4�\Z`�\0��;a�õ0�~`\0���O�4#0s�s�T�xS�O`M#j.\Z�9��gɵ�*QJ�\0���%��\"� ��o��:�˵}��e]�}���v~�Mg{M���^^/L\0&d�>�Q\'�, j~am�ʀ��\0C�#&`\0F WO�m֚a�\Z��$�^�X| ��+��kz$�B��F�i�Z�X��&ش`oe\n0FLCG@j�Y	����Y)��\0,����n�\"L/#�o��08@b�f�%�\"#@c�yP\"�uJ�Rn ��s�������9`4�\07��\r�\0�s��cy�*��Q>^r^T�g��G9�\"�����p�>&\0�2=�D�V�)�(�xHh��u��v�j��6j��}0A�f��`b�WRs��z�A)c��\r��PL��W:��v�úZ�P�D�\"@wz�k*�bo���`&���ಀ;WkU�Y3q��}�.��v#��*5�tP����P���*�ю QR���]:Т7A�]��H�9��-&Qr��Tx$���H4�~��;��U�*#�xF �\\%��#_�`\0�#hŏ��C\r�} �T�$̚���o¦kj�|���\0��<�6����A�� L1�+{\0E&p=��� �K��aY�A��Q������& �A)����\n�C�F@5h�ę2$g���T�P�R�NG�64��\n}�^�-� �CQ�8a��\04\074o\n4�\n�q`?9�		%%%�9�Y$�$::<,���{1�<�������������µpEExdO��~ERbDbb�\0\0(.~xA.H(}D���uH}}\0�xO���O~h�(���#8@x!\r	`��p�1.��q���0	��ϓ�X6\\y0! �p0A ȁ\"�L�!�!��+�dѱ�2?�)������	,��qY0hA���Y���\0r��cF\0:��ݻwu�I�A�d\"<��b/:!�Ę���,ސ��7(\\8ąA\n@+�HA�ZN�q�	R�.��db�Ô,/ �f\0�:~�b��U�W�h\r[μ������i\0\0�ױh�B��\"FF�p!��6#f��{p�� Aڡ@�\n\"��HAB��\rpO�ь3:�\0\ZA$�Pp1ED%T�uU��F��P=i���V����J]�D\\��\0�E�`�\ZEdbm?���\n�YX�II���B=��\Z$e�%=A�AA.u���� �@��G �I��fWa��v�\0K,���&@0\0A,&Yc�m0�$P�\'P�\nP44��h�xp�Z�	`���j9�f�%�����B��	�)��Bq���`�@g뭸�J�1^!�=H�h��A;H Qǲ��a�7d4ñp��|�aS�O:}q>W��\0`��A$�\"B���C�T/<��o8\0̃�L�3~$$T�G�e\"�ca�T \0��#\\:�T�\Z��1G-�B�:��qO&hP�	9��^�\n��T�3\n\Z�+�b4��Y_i��\n�=�_�iW�x0\0��0�Ղv!(��o�@�\r�5ڀ!�z�!�p��B��ۙ^�%z���c�2�߿��*���R�r�&���s�`$ �d��A��G�}�H�h��bt\0߆��g�5H��a�x�،> ��#��@y�\0ϋ�CJD����د:i��F�l�O��b,DEL`-��w}�W����c4�BIA��\0� Q�	$I@��1�=���!AYG&@\0T��LW(Ȃ��n2_ST�)1y\n�$6(���A��F�B���aj��67�\0?p���Ȇ���:�	�@�3�p�V8Y��c��h�b�\0��p�XO(B��1�G�r�7B��\'A\nE0@�6�:e��� �B\Z�`ɥ+@�;������W�k	6/��GF��|\\`2zd�&�XO�2=q@($��}.�\neVp�\n%#d ��T)�,���旕\'p�b\n	e��U3?��9K�c�:��L�c�X�X=a/| F��&5��`%,��\Z� 3���8�9\Z���\Z\'`��vvM���\0$.�OQ�6��@H�C ��7�!�(�X$��M(0�s��LD;^�0����f\0\0z@�%<�`E���Qkt	��W��љ�\\w\\w���!-IɉB�CƄ��W\ZL��@2G��ݯ��KJ@\0��J\0��2^Eؘ�<vJ�5���*�\0R\0L8�JB�[��o�����H Z~h�(���35�\\�l\Zc@�85mNT>��KT�2Z�L���$������t-���T�6�6-X&W����\"�\\2�H�X49\nͭnw�#<�/%��,w�v���\\�!G�	CHc��c\\k� ?�jH��\0ݑ�3�Ö���U�r%�OORJ�@��V�p$� pť�T��\"h�O�\0$����W%�j�y�����$�\\���+�Fj�ɂo�-�hd�k(�8�#��]5���\0inr�_��Â-1Ф�:y\"�%������rV��B�e��Y�N.�!�Ң�Rn{�[s5Ɉ	OY����7�@�a�@GЃ���	eh�;<�\nw�C9&�-nns\'E\0F��\"�ǣ 5�\"�[�w�4�I7Lp�}�v�XZ �;�����g�X��W3��ɢO��_�2��J�R�\"� \0�G��\njP3x�&!W=��	�����0Y�`V�\0\Z0@����\",تVe�X�p�\r x��z��������Ā��$Lb�\'�Y�Ȅ��gG+Ntj9����BI���G��[�	�}�Tw\n{��΢���8+��3�q<F �P,����\"6P�,\0l��\Z!��\0�I��&\0 \0�`^J��=\0\0��Y4��:Ġ�5D��n�fd������e�Z�(�����c�]TW��4&���>�@\"0l�ս��5�Y��#h�;Q{\Z�`�4��5�c�?�cL�o8��+��D��\n��@��n�QE�落z[\r?�B�V��Jm�kt��,KE,�P6x�f��<�2��L\':��������W!cVЪ����se�\Z��=�Z����#`�[ݪ@\0Ї\r!~�@T?�C\0@�;���\0Zȗ�&\'���>X�k�T^\na2Y�Sbu�K���sA�<vVa�0?��\0@P=ԓ�`\n/���u�3�wg%vc�L��d\0Z\0\rc\0\"�tM7�G0G ��s��n����y��n��&J�\0{\0X/��\'�B*\Zt	�a��Y\\sp�Y���!Nj�5d��)q����n\0*^�7��O��|��*58E�\nm6}~�8t �Oa\0�$;��K@ڠ\r(5��g\00<)�\0w0��?^t]C�R L�1����\0�s��K�4vJQm@�E��!�A�u,U�>d�w67a1A/=!�Dv6�0���A�uĶ(x��3 �8�؊�\0	d.	��M������F(�Z�I�@yXp&1&J3�U�d.lr�Rz�(�����d�5N��NdH#4\Z�2kSe3�B.�C�`a�Af�`fg�\niƇyD�����\00fP*�2E��+@<Xk#G\0#�W \0�P$9�r.�u��\0=)�Г��r���P���S0%MXp��t� ��K��0���!���#��RPi�xؑ8J,���h &�X�V	x1`w���2$S�ygs��u��v�����3�ps�s�\"d�٧�J�n�D�l���R�AVx�����蔐�B�v6@4@��(� )l�B���\0�vXf�pfHP{x��\"���\0s0�v`4�A�poL@LP\0�H��qb>Gw�V$�VT�h@��.\0D�Lɒ$�[P��\0�)�b`t�\05�p�\0��}DGtGg[�t��%[��Z��y\"�/��ɝ����\'JVtًvY�ZP�$J�	R#�W%����^�` ʡ1�lti�ʘ8j�%��=J\0�;���\'hM�X�3@L(��4+���#\\��pAQS�Avz�9Z(���B\n�\r�\0\\0\Z�!��6��n�N\'PCp�	c�	�\0[����&y�f�9!���@���D	�2��2�5��\0��\0��z7�:ɔ��\0#�$3 ;S\n2͠�1��)C`�%9C0,I[ t ��?��~E��i�sh�S bT�$�Xk��i��L�1�^cw]E0��ɒ,C�xjɬ!\0����?�ڭ�A�Ze!�����b%A�?4خ�\Z��:��Jg����jXP��\0\0�3УQ�|J\'nBX�F�B�6\n��\'� (	\0�\'�o����96T ��q�	\r \r �9�w�BOۤC�r\'>�O@4*\0\ZI[E�����D��C/$\\èc0����(�� �t��3�h�ò�@\r��(�\\H��f`*�8�Q�\"(�E��`\0iЮ�8�g����1�(\0��lZR��F�0j��w5�s�\ZT�Gai�0Ha�wY��Ո�;RF��`�ڹ�{J�%�\Z��\Z�u	�hJG1���\Z�B<`E���5:֗�����g\'TXo�B��o`�\0���c�e#7P�0�`�\0��Z�\Z�5	��7{S|d�|�q�BԧY8:[D<۳��A; D�\\S�H{��*	���UCu����\0\0�h@\0^pE�V��}D7��m5**NW��B\0t�L�.�\\Ѳy��gj.F��6G��%�&� ��.���a�{J�� ^i`v(��y��1Q!��ne�¢�}ٙ������a0�X�`u?5si�\"�Okk�vX����8A\nۻ��q��1|��M\0y�����\0�RB�0�x\\�7\Z�E����	����	��*1�O\'8��LŹ\n���ͷ��[�E��+�cp�K������0���~�\'��L@���\0#`1X�Uv$� K|����~1�tYb����d�tP#p\0u��]BJ=�\r\0 uY[�0Ś�����v�ͳ�(�\0���@>c�=�1��뱹��!�`yD;\\E;���=�#U���Hl(Xb.���SK�����9���՗�`�Vz�@�M��Bn��(x\\B�y�u�\'�6��Y3��F�UH|��.�Ȍ���B�ܑș��� �5�ʟ�A���|�K(���U8\07@�:�URD��iy|�h�&{&M���\"�M�LW. �U��gT i%jp����l|�l�wG�e��uWb�JR@JbŖ�ı�G-j�d��V|�Ͱ��\\ }�ش��������2���ӊ8�q`k�����&��O�!\0��AY��H6B����sL҇*Cmp�Ǜ+]|b�O�����|Ɖ�E4�9�\Z �ɟ�ɚ�YC}�E\r(F���<\0@�0<���]�U�gu+;Q*\\��\0X�3:\0p�#�&`;h�g�g.�rh=Ӭ�&�\r�h[�����y������\'�E\0L�����\\;��ē�2���n����-JϦH��\02�ဍG�X\"�y�]���λ���|�\n4/@*8�A�g�&��s�Ǵ�(6�od(Ct�\Z�k	��e�w��\'���*�y4yh�����ܺ�\0v�ӣ��)�gN��m�H����|\"|��s`�V���S��];���\"���%MO\0R��m\0��R��P��.s�\r�\ZE�h�Cg,l10�U9|��@���0\\i.��Α���Z�\Z��$��N���]؈��\0f@f\0�al�J����;�4KY ������ۛ1�-�Y{L�6�qC�9\0�뽦�C�Mnu�*z�Ȯ2Hӑ���渀�W��]�ѝ�ҽ�c�on�H琱	N�\'#��CY�ʃ4|�g��}��z��}�>�n: s�\"\\~�������0��0|�Fp�t	HJ��~��0�(p�.�+���@�����.�\r�N;G<>�����39f�6.��n�0*�\"�	�힕���o`�w)��`�B�	D��7�b\n�t��\0����{�ED8�B�\"� \"p��/��L&N\"��_���n^�	�I\rN@*/���\0f 0,r|����Â�]��K��]��}\0@W} p`.3����gz�Nb�i\0|4�t)�ȘU��w<��C����\0p�\rgd��F��=��ݿ��_ ?�A������/��s&fb@��n{�U�M�|���v7X?9?Z??\'\'�\'��\n��Z�\'Z�\"����n9�9%��SYa$��@�<�:<:��,,|�,��{�1�<����������T�2c\"�\"\"����II��cc���c	�		�N�Lv8LP���\"G��كg��#>�#Q��O�Y���G>�8�0B��;x��Y��N�+� a$H	l�\'�	&���	\'�P+<Y��������Pau*U�`�z�U�X�M��e���ڷiẅK�)��1�}���\"C���@�ϓ1�ƈ�8��\'Q#\0�\0�S%��\\H�!G�<4���$�(:�\0�\"C��*1�T���EX$TWA���t�Z�k��`ˢKov����Ն����{7�֩3w!:q��{Go=z��m��OՋ-&T�A�DP|���Fmd��!�т\nvD�R\08PGR�\0Ӏ>H@4�\0\0L|(\"$��a�	HE�VX]9FV%�X]8��]{��V[?)�SD�Vi��_8@\n��b_9��{L�@\0�r�=9`Й\'(�9�]�\Z�x���S&(��@?Ȑm�tQ��@+/@��,�0P�-����:�s�\r���P�ݦ�ZSA]��w܁�x�3�:��{���>��C��P�\n �+��;�&��3$��w��HT0�h�1\Z�^��h̀�LD!\0i�º.�\"�@MB	\0�\\<�5�u�8��=�8��.h��\'|���0����CL���R@Y~$f�ǌ��\0�e�Y6��	��H!b:Z��Ij^P�i��LE������)۞\'���nS��+	a0p�,��r�r���\\1�)c�t�t����AE2tj�ܼ�t3��r�;��<�ܓ�\08Q�@\0���!���+����+�RKޮ��_���xG�O�GDl�BRw�5WC~�L����+/�*� �\n~�l�[QU�q�[KN������E|M�<_+�c��cD���盠�!�CQ��5�;�@�L��f��f��ɦ�l���ΐPq�$T\00�ip���$?��h�Ԡre(�\n�1�-�s�=��њ0�Ƶeh\nl ��F1����l�իֱ�u��=���|ꁏ��\n��	��aa\Z)P�*��,b�������\0����p�\\�@�\\��ͮ\':���;��#0�����J����2��P�-�S�\\֒��%o)S\"��A�E/)���(H�nC��:@>��O2���`�l ���!���H�I7����7(�oJ�\'a�dF�\ro�&8���@q&������*�\n:�����\0��4��ta>5����qN��Umc�z��7���V�jA8`\0a@ֳ���y:����g>�R:8����@u�`�sW*@���u]�`��&A)�FPxԣmg��\'�?�c�+�c��R��t��JLQ:Ӛ�dU�]�����@J�{f����o��\r(4q�8�7k�#b�&7IfeZ�f@�\'S��I�Z��^�\0���0�9��<���T14�Lf:�x}�4�sM\'��o~��_�1���m�J�<�\0\'�\'7�O�+��@rAt	�Z-�}�+�\Z��ș#\0��8)�ֵ������v�����lw��:�v�x�mk[-\"��\0��pp�}�t����Z�G�.�K�#l(V>�Ńϖv{v���h�;~%�7���CԠU�J��ea��q��\n\ZG�����h@S?7��L�!�=<y\n\\&�I�M/�F�Ԃ�������^�+�`�Wh: \r���|�@�\Z����Gb��o�\"�0lO�f��\0��JB��\0����nv�\0^�V��V�����`AQ\0�k�0��y�3��\\�-���p�3$�L����[�s��<���I�L.m!�g�%7χ�3���Z:t�Ѷ�m&�PT@@\n\nQ���]LQEG\0��D9�h�`\0�\0(�^��Bk\Z#)va\Z�\\�oK��̟@����g�Y%\rh�`U)��D�\0e3a�r������ĺa<��&.tI�x��Y&�JH���Ƚ�@e�\Z���,`C �\'���|�����������n�xnGA:q�r����(��9��6��ݭo+P��V�\'��o%=ۅN\Z�(�m�yK���+���P~��J��zkMhB��ψ��?��t���s�\n�P�d�@�#��C9M�	V���N*�R4p2U(\n��]?��\'�\nN��P�`\0pdna����0q29�v3sMǫn�&78��5�\0����!쿁����o��O\0lw\'!���hs�{zt���u.v/��{��A��B�����z\'�?OlR����%�(�M-���.(�+}iK������B����{��<��Y.�ߎ�涕Bm�O��_� 4VM�G7���o4���a�f`5��\0���Z�T�1J\Zm\"v7@v�F��J�2�� \nzCa�m��K��\n��CNL�2L�`5V��vnˀb\\�)��b��)`	Z���I�A+>��C��c��M:&p�0N�2dDv+-p��d�Q\Z���\\\Zw{صz\r�k�7e]�p�%����׆7q�Qp�ptX�vx�v�\\��..\0Q}�i\r�i�Wi�V��Fׇ�(p}�ƈ�G������P��}�׈�Ȉ�׉����8������i��}P�s`Z3$��u�7�cl��&��?4�\08	`U�\'�t�`\n�mI�4����_�a(N��gb�0����L�ax�����/9 \n�q��D�o�Gc9fC�+u��3t�eC\"xp&p@�p�7e�D\0\r�zGP{�]����z���p ]�׆9�iqZH��]A�D�%��\'���i�X}�h��(�x�5�(9��I8����P5Y��\r��}�P?9A)��i5i��h��xr�XWWlug\n)sd�\Z�`\ZfG7��\r��8	o\0\'�A?� \Z0sn w�d��m��m�A���� F-���>)�Ġb)����Ǎ!��c�`��٘E��7VCN�8C����\0���h��Յ�U]�\0U0\0�]�wz`8���]\rWf@i�A@\0^���͕��{�固{Sf]����9�������i@r$gs��r2�}�\'~��}!��8`�499I��ByP�Pv��}�.�P�䙞�?�艹D)�ߙi`tP�؊���J^\'KV�lo��\\��l`iU���\'�	�P�\nSЖ\nt\Z��w�q�TS��6��A�)�Bp]�m84>��8���>:��r�c�8c�o�B�71to�Q,�+��y�0zZ�2�Pl�aP��Q�QL�;f���j?��iڦ?��+�r:�+�Q���WqE\0Ep.��}�?����(����{�u[���Q�s�7��9i�:�\Z~�gi\0��.s�\n��z���}��r\'w��a\0���V/lR�\Z�P&_m��lʕ�lW�\Z��	�F\n{2����&��h(M���w�Tsb~�5\\SW)�5�2�9�@��m��9ڣm��Cx���)X9�X~5�ZX����Cm���d��\\\'3\nn�3��*,�` `��%P%��k���:�\"��|Uj\Z�\"���Kj̧|�wjA�]?a\0���\"bj�:\"jF�.\\��#Q��.��.�i�F�(pP홓��P��iF{�,	�=)����;Y�C�4�P��\0����\0�Hk3�f�bG�dwvk��\0J9���>t�\n�t� ��4�n�A�*ʗ�f)*��0� �\0p@��>��Ḑk��`�yB\n��c��?�6��F���Un�rc谺��M�	�1\0Y�z��Qi �CK[\0p�&�K���tʦkڦm�j���ȫ�Y`\0�2/�LP�L�\0pi�7����\0 i�k���!i������ЇLp��:����8q��y���8\"�\00��\"¾\" ���\0 �\0`P�F�\\늳j\r�uhUiKvaw\Z0\nrG�q@��\0Z2�t���mO÷@0A�H5�P��8������5݊�`3��ٸ����-P�<Z�AjcF��\n��m�\Z`*�1�Q�������`\\���%�\0Z�QL��(�S%�qm�g���z�z3�;&0/ Qa@�H`�\0P�8P���.�kA�4I��#���p �:L�\"p��!�$��kA7\0/!2i\"�\0& �8�i�\"���;�A�.������.��}�#�b\0�L�P@\0�\'Jǆ`f��4�T0vfG	m�U�T�dK�(�F��n9���_Ms(F�-x�����\Z��؈�Bl\0\0{��9�K�p��>���ZyC�7�X�7UL�w��U�S��\"\0�a��l`b<7\"\r�+Z�\'X�\00�D0s`x��8���\\T���\0%WLp1�m�H���#�Y�suP\'�AP�3u�1�J��3��\Z <@\0H@�k`U!����їB�i�{5`��H�}P ��3<`���P�p��*�\0L�m��V?���6�\00v�\r�q\03L�vqgβ��r����w�Ka�\nz{VX�(VSA����l�s��Z�6�(�0�k��J�N�����ҍ��FNKHXZ�}C��#ͺ&\rޫ+\"M�!-q���\\E��YQ( ��x|��eߺq����՜w�p\0^��훞yˬ�b@�ei�2���{�,IHp\0բ\"\n9��AYH@�X\0<`\0$G�\Z \0�E�i0`��S\0�| �HPH <X��1�8W�F�;Y}[5 <+�8�1E�X}���I.1p��a+��Tv��i�`�\Z�\0���2�Da�0w����e���Fø݂~k�r��[c)�ڈ���5`\'s\n,ܖ�����UP-0����jc�eC�8�{��\n]�����j�I��=� �p��\0���u \0\0`j�7�$�|�|�k�j*�B��z�d/x�0�iA0�(�{%+�5i-�F@�����}���H���A����\Z�A���}`�D]F0��!������8\0\0P\0p�5�D]�<[F��\Z �PL��?�¾����\0]�&��Р��������\0T�q�	�ⶐ7�Q��@��KY���̷k���v.�ZS�ǐ����5�`K4t{���J��GV�纮��9&N04@q&�Q��`&\r�\\�\\ �\\`Ң���}*M�\r�p����\\Q^ı[��E�E��E�3/�r��D>~@\0}��(P�e\0s\0�u��<�t���/�Yd�$���;L@u+ӕ&�3���\"IA\0Pr\0�O9s=[(`d��7�8 \0O�ȓ䪉}�Mf<�E�;  T\0@[��x�D��P�G�o2`\"&�$������o a�U$l*�VmEsm�l�E�0�����QûpL\'��s5�:��\r,�3����������C99%�S/�-��$-U-�/m/S>>�N�N��N	c	�c�?\"\"II���Il�\\I�jj\\l\\�\\��������`ZBfb(fpE�E����������&�����&8`9�\0&}\\�郂Ñ\nR�t�����H��aE�H	�`\0�Hp�3�E\r3(8>�ЧB\0���I��~��?�ЩS���\0:�A\"A\'�f��* �M,A] ��&�,6CTbb\"�:0\rP\"A�Z(�����\Z���;�o��\'�p��Jl�;W.&�d��)\0Y>�`@� *�L����׭�`1[� r��B��A�s���b£�ȓw��M�J�d �&O-BeU�T+�`ͪU�1?У�옰�׆M��ņ�g\\�P�۵8xBh`�MC���\04�`:^<(a:�� �f��:��3��@H��<�\0@6�sHT �OA��D}L$\0>1�H��(��)u��X���S\ZA�AT\Z0��S�`B�\Z�`\0EH��XQ�ipSp�TA�}U}��=�Su��B\ZE���\\��p�^$ʗ�5:X�Wb`0���c�HF٠�Qv	&�M\0\'�Ai�2�Bj����j@�ƃ�g� ����o�\rG!�+�rHha	&%��t�n��\n$��&�T����ؒ�.?�\0�{�ŗ�}IDC3�>�~�\"�24�\r8�BqĂF��zA�C���\0?80�\r?,��s@\0an	��ᣁ}�p�H���GD`��Jp a�8�@WY�$�\n�4Q&�@�p\0f�q &!�MHh %ܴ$UYh��O\0J+���@c\ZX��SLA`\02��9@\0]uJ������F�\0N�9Ȑ�.�LVf�^�g��Pj���\0	�����ʪm�\'��EЛn��n�p,\01��/BU	T@%�Qg8�B�0�)/�2�e�Ē�-�ۢK	� n0��a.2l��=}Ѐ�_5�K�\r�ǋ�I(@\nPP�:\rFL!�{?;\Z6���{���b\Z\0\0J`-\0�vH��p����]���F0� \r.P�$\0?� \rR0��r�Љ	(0�Zx�!(B��0C����S�P\0t\0\0J�	n0�\n@	ȁ�0�\Z��Ehb���\'\0@}���P:�v�BP��{㋢���1\'�Tc.���DfS���%43*� 4�*��8��U�z\r�fc���W�YAp~�+K�v��]�0�ꬱ�1��#\n΍�Tm8E*��<l��q�K@�0.푫װ��iԇ|��O5�I�j��>6x�\r��	P�%P�	��\0b\0\0\0��@N8\0 �L\'���N�c��>\0b�w�X�&����\0Ad�fI�t�Œ�P\"��\0픀V��4���\ZX���>0a3�`p�&L@\0fP�9������\nLP��ha���@��A1��t\0\0����0&AM8H\rL0(]���\Z����\\ ^+N\0�<�1]����8N���\\f���ޅ&�\\$#W:��௠���:i+Kb2��i�&s�P:vvR�80���nY�\r\"U��Jh]��aޠhA�[0���jUKy5#�T�\rd�.�1s�0x����>���o[�*�E�J+��O,�uW��b���>�	+H�	���r���w���������H,���3�լ& �W\0&�\0\r����1�A�����1Xċ�?xHpu�\Z@�����\0�Q�.k@\0�%�6L!&��	J��\0�`:x��\0���@\0%`���:(��n8�G��h�����K0,�]H�.%�GB�m�S�㌨JaWD~F��d�jt�\Z�yV���.��^i�V����Kg�8�\0(A����y$P��0��iqFr�r�-j!�(G�z��j��d��?�X`��T��\r@mm����J�\0^��*�!{0uL�%(3�u�u}�<ad��_� �X�@���͂���Ď����ba4�$��j�\0A`@b=�Z��ֻ>wȽ�W�\nzP�[@�YfBT��ԡ/1HLL�.��(^��\0�A	��T���\rn�c��`�IQ��2pC�/��f���T��),g�2Z�&�0��x�,M#O���ھ����������Ü�L��PE��Y`�=C\0�]�x�.�&R�<~3:z�֥��<.Iw}үʹ|.�[.(@\r�����ا/�u�.p` ��(�X�Aրp�_���β5�ܿ��S��a2�0�̓Vո��P`�ĺ��>|�#�ny�\"m��i�o$91z���z-���H���&A�U��խ�n���\\�.�\0�Z���cG<�1��\'��������\\�P����T��5G��?�5fN���+L�W��|�����YT��g�da����	��\nr~X�}�f=�q��ZI��`.��[�sL�`v�.��\0J�2�wS�-�wGx�x/Hx�������ElW�ؕ]@օ���+�v\Z��k`< k�z��xom�\nn��qM�wT\0?��$G�7h�7z?\'pw�|&�7iq��B�}|)�d�q��8ۗV��}�8��)&\'W� *�Rh��W��H1�~}%X9�I��sl�I��I�AI<�\0�7���\0�z6b�c1Vh�S*�rh��h\r�Z]\0�2p�����(.��Z� 8�S/��[���>%x�y��U�w�`�&x�(x�/X`�f�����a�6]��f�`�ׅ��`ӕx@l�GZ�`܈y�׎	�f���>�F7\0?�A��	\n����7E8o`�4�>�{�\nݗ`�\'}��uD}�Gm�}�Xhr Wrq�e*GH�bH�xW����9��*�efA�lq�s��s��9W+�G�N����ԑMʢ;1F\ZN7-ӂ\n��\n�8��hb9��&c�c`=v\'�08��\rb���\rT�j\"�����w������0�����k����a�i`�x���1��:0x�z4H�1�,��WU��UB��q7\0\r��\r\0�����a��\0Aq`VnDqv�(�S��UuV���q��G�C	o�V2�e��	6�J�刚�9��\Z��\Z����w:��f��x�A+C���y\07A�\0J7\0G�;\Z��	�5u�2�Ћby�Q�-QF����n	�I�\rI�Z:��c0`\n{�w�x��������h�#\n��4hx*ʍDX�aVp+��x��5�J@\n`2�UCF\\����\r�\0BP�Hښ7����\0����IK��Tz��\0�>w(�$)8�\" tw(`��a��`)���m�r[f9v�����*����\Z�ıl�����q���#X����� �Rρ\0��Wuu9�S\n\nX�\Z~d�}�\"���8i)��@����꠷�d\"@��\'H��$��V�\n��9�\"��$:��i`)Zx梋)�-J�Tȍ��8\0���bW��AZ�B�G*Q@����I\n�T L�F�v�X*�L\nB`��1��28%)cE)����q)�0r�S	�yer�o�1u��~:���Ý	�Hx\n�fV+CY�{���g�t�5+X���[@�����;�<�6u��-��|�J���/۲�&��j��j�2`�v�ZmȪ=k�?���/ \n��{���w��ڴ������8n����G`��z���vpa0(9�¸����Bp�F��;�����M��Tʐ4�i�ꤪ9�0@N:�����I���(�Z�{`U�`�2@{�Z	g��$9n\n*Z�a�b9rJ�z�m۰���y��s��:�F:�7�ر��\0[�R\00Y]&���)�V��b��۩Ѓ��}4��8��4����v����D��c����RثMˍ\\�\"j���\Z��{�k+ʘ.��O�nSP�W���i��j��;`�E\Zk��I���Z��������	�y;���E6�\Z����)}xhVi��uAe����rvok���a��r��~�i\Z��*�AI��:��:���y�$��Ⱥ8���b7v<�[Iu��)�9�ǻ-�-C����r�R�K�@���8y7��[:�,��&��O�$\n�I;��\0+�,@]V�������U\0;:�^�[�[\r�v\r���\Z����{�H�w{�z���\n�z�T��!��R����\'YV*�q#�q�~����<�4��+-Z���H؆(Ls�qs�[0,�A�RX�X����9�H bu�YrZ�Z�e��)9�Z\0q�V]\0H���g�\n��Ĺ$=������`��`�Z�oBLoU0J0:�kc����kg\\����q\ZئY���k��ʘ�hx10kT=��\r|�>y�������\r`Ȉ��y�ЭYj��[�&�M�I��\n?��(�zGg҇[)o�#7$���<2=9�0u�$���r�g°f?9�i���f���Ɖ�,��2�5��<zVW^�����^�.���|ӌ	���g�gpzpͱ �=WGZ�v���-f�8��\n�@���ቴػ��Z�~M��V�I;��9x��m�*���k)j�5:�\0ptp�ћ��M�iO:�@�X��Q@ȭ��x+L	�����%M[�>i_�7IpM��!�d*���87~��̙�,7�*�E*��	�u;����*�R˙t���l�t�AL�*�N�!��i9��)��t�V��_͗��Y�\n��<��ַ$��sZ�>�	�q׋-���Ƹ\n�����n�@f\n[�	>Vr�B�٪�*�o�wM[��s��\"^�4p�4n��;�\n�v��>��o���>�>�S۵��¨ۼ���d�8�H|�rV�2���F9ɝ~ǜH�\rs;}\Z��\ZXI:p����BԂ �@w���,�\0L\0��.@���a�j����<m�7/=�Yȗg�	���7K�`KL�/��7m1��a�9xͧ�a��L��n�n�n�}�dvm��gVF~U�U`��1�?dB�@�����Q`�Y:��\Z������[����U/� ���y��d\"0�``=iE��L=�3r��Vw������LHձe�厸~T�~�,���@�+m6�؝�ñle�y��YPv��NM�{ح\ZU\r�L�s�|Ԝ<��7u_�h���L<�\"����H��ׁ��:T+�<����I�+�\0-P���c$�\Z��#e��w/\0E�&��	�!y8�\0�K��{�Mʭk��M�F���7�t.�F�T _�UV�����Q�K�&�<�w���핋��R����i<p_�<s(�\Zd��l��Ƣ��Ͷ����\Z��@��N]Q-�����]�ʬexcr��~No��<� Z�#�0��h�.�ҒWu�Ɨ�@�΃`�`왃ppf6f7kT�ɒ7h����~%0�J@]y09�%���0�#�ȪI�E�T��0�����7Ɛ\ru���q�Z]\'���QƲ#�T�V�\Z�K���1ć�����q*�	a$a���@@��<<�:<:|,,,+O���������,��@<,f�������������&�Y�//aa/���S/�Y�S%�S�m/��m-m��S>>���N��N�������/� <D��\"G�t�ȔI�C�,J��C��	*T�( �\rHPbC��	~`Py��	-��p#�M�<�L0ÅlؠF�B�*m�h�Fap�\nC\rT50n4�\n�\r�$I<��IA�	\"��5��Y�j�ʘ+��.2rtI�e�I�~\0ސ�p�n�L�\'��3ea �!ref3d@h`�X\Z�4C�L�0]a��T��:�r=[U�V�^e��������2S�C�cǔQN-ڴ�ɦN�\rZ�-��p�N]�n���<�n��-H�P����<R��|��\'\\��_E�*m$Y1�dSB	�$!�C0��-���\'����hy��PO9�TRLQ�TJ�0o�H\n���@���	2��9���y��Ez\r�@`�	�M��퓘b�T��@a��3��g$d4� �p�H#4�|�H�*��[���	��������\0�����u@r�d!P2�*�L5�%�QH�\\Sm@�v�M:���:�|G�bPJ��?�\rT���%��\Z�F]z�f��p(��dCR�2�R�g�8�Xo(�Ah]�ֳ*��S�QD!�Q�D=�mQ�Ì6�!TXI��;�����A]s�;��t��H\ZV6�>ɏ7Qb�e�$,eejIk���J�h�!�%i���n�[)m��P%<�g	.\0���,�21�@��r�e�*{\0!�������Ԃ��#�ށ\Zj����?��l�!-��̆d$��S�\n�f_�:���zM7� X���o��@�%��4Ƒ��������;���6���P*v[�,��FXy_�ĳi�4o]�n.û�t�0����WI���5𓞔ʵ����Z�\"��Z�FTq~�(��+�Ak���<k!���*�,�\0\Z�2�-g��/hq�q�-�(s̕-H�s��zX\nb�ua�c�:H3�w�\"]�?�7v![@�\n1�T�.|H1��\rnlc$Y�r�.���,��X��7ЀFv�ۺ�bo1�pHq��2�ōK0�BW\"�\"t]�o\"`��8G��\0/��^����I�z���PQ�]e���P]zX�x���	>���D2�&8��x��m�T���O:\0-v��:l�x��$`������c�W�0�\r$����A�������7꧴��T�*_�X����8�3\n���I擟d ���ĕN@!P�\'!� \r��,(�rvK���U\Z4�pB�\n\r\\�8%n�����n�7g�M�r���~����HD,���D�8���B��(��/2[�4R&XA#��\n�S��<$\"ac������K��8�f�c\'�=P��\n��*���x;*`\0�ԇ��A�URG�1�qJ0u�4L�N(��f6c�18�ɜ���\0j*����$t��~ :���f�\0�8�,%,7��X>TBp��(L������Y2�QX,�78KGi١ư/\"B�t����$�_�����uNA9S�(	���I����>3r�ɾ*>�p�?5F���L΃��F�& ��E�/�@��6{i@rx�*Y\n����I �$f2[`�7+E1�ڑ���L\"\nKQH(�Ӻ�~��1@]�z����}��g����WnH\'��,���	i��[��T�%.��\\�QT$�_..,\n�a�е,�2sq�!]�j�#%�t�t�_��$�<�9��ߕ��QBT� T�UF&�ʎ���O�p3	J�y�m\'>vF�ةdy*�^���\0�]#n��(��\n3�F��GQ�uY($��8�*K�RrNbR��٬��|]P����vw`n�>4����	��L�E7�\\@����\rx��t����\0`�A��*b��E�����k�f�e�|	Xc������	\0u�&%�2�I�@�$�-�8#���#ѻ.��b��CP�	6�xu�6��~F�dH豲_��>2l U�-����̄A\0�G�,\\C���U��9��\\�6J9ى������UW�f�n�H��]�0��_�R^�٫�t{[�{�A���1�[	c�U)kB#4�\rq�#��K�x���iĎ��\0Sb�\ZŨ�1c�*u��w7�{�ܞ����0\n/M	hk�k�zB6���$��\'\0��\0�޲��G\r�\0��`o��xb�����0�#6s6������Q�A��������1֝�b��n�߾*8�\"�8�-jV�K8�%��X_B�&�:�Z�p�%�^w�!7���{0K�x��.�,�=~Lu�O<\"�1H+f�z�8b�H���_{l6@GhD$q{X� \r;f���8���32S{\\U�KL#Z�BE&@�/�#�B�\Z��Q�d����֤��M�jh��e�Ru�}6��1�(�`\0�	i^/1�g�,��^WuKGU��8c�U:dqhWiB�Dti�4�\'z�!jx�$%P�(�PdU�z�O��*��Y��Y�`&�p� <:�sg�F;�\nC7E7EP\0�W�xT \0�5�U 6�01��u� \n�}�\\a3*�snPT)l�@́I�f�NE�]��4\"j�A\Z�9��.0�D|ȇn%th�gp1�Kc��#4�?�\Z�}A�hDJ��Q����Nr?�DX�fSCb�YĂ1wk�1�\Z57\Z27Ŧkiԃg|fd�d\Z$ \0v`��xG8 \0�p5a��Q}�`��rb��:�6v�R}Z�	3;�R~�!���R�(nЅv�5��41E?���0��rN)Q/g/q��i/@�p�g7f#��#n\06�qzg�QDv�����)�V0�3�5c�aB��bO��b�hs�����k=�s�ccq� \0���4�=\Z E Ha}�U}St}ZwO����m\r��a�֍ʠ+Gf)�c0��(�r�]��D�@*�u?����qF�W��#8B,/�9o�U��^̢^gQq>4$?�qu�q�4��Ga�2jޠ��H0�(�H�6��zy&1X�F�a�QF*I��\n�05�G �5���S�6È[b�0����7{����*�eu��HU)�!E�H��(�4�脕I#r����JxE�?4Fig�/nug|�V:�C4aiF�q��W�����$#ha�e�C�F�EE*���+�$6{��� \Z��C�s�h��;���%�\r�|���*3v`G0* 3:Y����$����߃��j��Rlg%��V�0��\\ԛh�N�%��D��J�N�ii�Bi��9? *1!i	�8�#�C$uٝw���w|ٗ\"�f�٢Z�Q\n��\"�}�䑒��#�qk�ɟl$\'�\n��F��P3��l�2`�Y�[3&�����]�}�0[��X�e�$ʅ�zeS(��RSrע/jN��ɩ���z�M>gRj��}G$zU$$�z�qJ���Kr�dwZya� w�ԅ��-8���z�d$�O���3s#i2�qd��;H�1�\n\Zs�P(��m:��P F�ɱ���\\��ī���}��\nY��RHY\\�$����d�GАN��R\\��\0�$IuW�	�C� �\"g0$<*�� ��iH�i��� wJTz�)���%W7�Ԃ�\'��%�����g���1�a	a�&�F�z�m�O�asD�6( & \0�(p�:5 f5���j|\n��:@��Q�ZE%ڮ%�m�j(�P\rO�N��e�r�%�_���ׯyy$f���\0+����w��z�\r �!�3�������Rc�a�r�Ydb�O0k�	����y���{�S<!�/�	+���<�p �7��}Rf�\0���3#}���_3�0�d�	#e�j�\ZE%��5}k\r�1S�1\r����$�&I����y��4D��W��������\'���:��&%������z�ū/<������\'k�������Y�@��@�3�\n���������A@]@\0Y�l����*�����;`�%�%\Z�U��Z�52㻲\Z��u��\"*�C�@�b�/�;N�q$�\Z�HDN=C��T�\"�>FE��xRP�~V+�e&�ȫ��������#���K�����#������1���&�`�\'s�\0 ���=��S��\0+*G@�⧪�m+X�:;]8�N���N~�NXYn��\n�������X�bہ�z�t˽7����M�:�~�]U\"4#F��I�O|���H���\\8�*�s�Vŕ�P.�\0&Pa|��\0(������U��(&��;n�:��N�%-�T�O9����T)5�j�@墤iw����z��JǛ!\'08|�]�nNĨ��0�R�mP�r��u\'��2g�&#F�q1�Z��˥G�b7H��ѲU�ö&���F�Z�\\�}28�G_��Ǳ��f��6���Fy���5\nc�����\0��R*ZY���́��:���R�^�o��:�4�1ȗ�a�W�F6mc�U�m����0Wʺ�Ϧ,Ъ�Ďy1��b�C�,�	\n�	����qD`�j�\'�i`\0��?�QЇ�+�B�����_�E�Ûk��+�0](�����D�Q�iw8��F�D���YY�]*-�3�2��n���fbXm��<�f�Yݸ�q{�]��ʮ,�Wtu2��`�k�ۡ;Z`qݧ�@V31E��,3Ǩ*�>�����0��ӂl3�Io7݆�����4�Q����עߥ����ʡzט+B��A|b\0���O���Ϻ���}�G��\\ڒ��)K<�}�	UZ�a\0\r�t@�\0��d��vz�o,�3sE�i��Q&�0�d��ݻ��3,�ޗ�?6-0�h��e�;IN��lxي1�{��4�H����r��<b:P.\'FN���k	a�4�ߎp���-��Z�-=2��R0�d.�Z0\0}�=��?>̧xS���s>3Q��\n&�9\\�!5́�/�N�ޚ=o�X?/���5I8ި[��$�D��4������- ɬ��z�(��\n.�)����կ@7إ���p���NNے�\Zm$=��e���!�L ��Jk�*�Bv���Hu���֘��7�˰��\r\r���0n�2^�3S���uԚMfin�en��+�һU�Y�-wծn���ߪ��b���\'k�	A$����~���\0R�9��sm�uM�V�0\0D]�u�}��Q\\��\Z��6eJ���>��n�2�4����Ͱ)RB���N�v7U���>�;�U�����;�(;�Ū�8�H��I�įm�K���b�gX ���X`8vO(@[vJ�\Z����Gǭ��Q����(��7߷,�S&��Z֨���.��?+_���4Tij��>�J%�O�-�\\�E��N_��.����m���Co�H����pE�\0���CP7PT�v>&���`��J{=u|,mS�ǚtR\'�N&�a+�W�%�eο�0��Vr��ن����xڴ�kLL�\0u���S>�U��X>��P?�Ͽ��(�������\0�%\0G�Y�Y����$$�����$��S�a�Ya�a������/��/���Y/SS�Y���/���m��-a-��Ŀ�a̷�ѱ��ν�ʬ٧��$��$*���*@��J:�:���,:����<���@�	d�^������@y���G��ŋ\0¡Ȝ? C�I��ɓ(S�\\ɲ�˗0c�t �O	�(#U�\"M��i�#FG��<\nT*POb�F��3`͜=�f�2d�^����le�EE��-T[q���UA�.��x�MP�P`D}	ғ�!�Â�	,p�ay���=�@4r\0���ϠC�M�tJ:�h14h\'OL��\n��ȑ&�Hy:J��m@��r�MV�Qų�:����dO�\Z#T�}�%aj\\������K�]v*�)��n�{Ɗ�;��A����sY2;���C�D�ٓ�9`ڂ6����90D�@H\0:锅k�1ŀ#n(bm�1r�ORTFuJ5/BeK4��LvʈU	)Ɛ\0P����Qj���]%���$9Ln�]��Pz�	�z���~��C��y�=f�!�d�L0=<dvD\Z\nBh�x�i�t�FȆ����$�$�$�D��NHٶ�I��H�*b�T�HGJV6�N6�PEW��%5/�e#,lic�[�P��]{�c�:U֪�|���^|[6�@^�7����_�		{߯�QA�zVk�؎��(�@	�p����p��\"ܱ��n#b[��~�T�D��$�xC�l�\\�[;�1k�>��/Pq:�2��](vQ���xT҅��QVOA�q�a!C$�F��$���:�Cdk��8�9D��!���!�>yC��E��PK�2�6�*9ɿ��/u���]����x�/8;\\E��]:��CƵ�g+{:\\��d�]F`$ӧ��Ȟ��:��P@�l1(P���G��}hnk�xRD�H	Ҁbh��J׋pGB����z�]�;ȰX{����{�j3YWO~��yA97�$�s���}����\Z�����%w]�G��\Z���x&��觯M}�`��k�**��\r2�O�Z\nv �$�Ŋ;���b	H��.[��7JU�&1gܑU]>������@4F2�0�W�S�6&&���b�j�w,F���{o{�F����@\"H@$h�\0E(A�����s�k�l#�N�PC�\\[Z�A�ądQ�����Hb�H���F0�Q/vqX��R=��y�B�_��,��ge$���l%+��pn�Q��;��e#�ʠ9��	�<���: ��G(Z)\"�ʃ.�j�#:��Y��Y��\'�Er0Pz�%�E*Rm��\\\\���.:�{��[��7���<��[\nW��\r \Z�Rx��0�a�m�<x�!����Ȥ:י>��I\"L��������X�R\00��(�&�H[r0�l!5�$1�Q�]dRb��Iц�C��)C�A� �&B�E1\ZR̛��a֦Ȼޕ�-}�8BQ�H�&H\';w�S���\00z�Gds��̃2���@�Q��(��oXT�x9�\"YD	��;%@t�j�uq�E�#Cm�Ь�9�\"#>����ńY�3���lhM�I�2�|=M�b�U�:H@\0@�em���d�]\Z:Qn5�%�^m^�	��*�`<�H3#=<���7T��h�HG����aI�\n��I��f�U���9���~4�)&k�.���͓���IAĒ����Wu������+Q#~�A�1��Z��\'Es��{�df�wJ(r��:-���fO<���F���R6�����4���S��#���f�Ͱ��D��]Ǎb%�QKV��D(�M%\Z��p慃fA��_)rLzSr�2�g�ZϾ�\"fh�Y�\Z25��CA#,��Du��Mo8��\'����F8P�\r{��\ZB\Z���M��r�N�C�PJ�6�	�,�i�sx�a{L&���Tox�#%�j5��m��yHޏ���Z��TJ�ɱy��A�Id92\0\0�GM���\0�X�&��� ��:�΢\na]+V�M~X����Z�־�&5�W<����»%y�l�6J����^���\Z�tϾMo���4���~XFPj��!E����n?<\0X0@�]�;@E�	x�<���1x@X��Yf�m��WmŃ����8��M:Le3l�.��RE���e��;gi3 �Z�8�F폗������A$��`!#E@A�W�@��ǂ	�\0��HOz�Ebt�;��+�wL��4��XG�	ZR\0aYw7�eE�h7uQ@�A��ň�R����^n����xϻ���w�{��u����ބ��=h��\'�����BI�\0��^�ت����%�:�G�,0��Y��JD�z�o�%�o=�E\"^n�	��@]�=Ԗr�9t�减��K�ć<�k�Rp ?����H(��K�ZpX���P80�	A�\0ؑN����������\"����Ϻ�W�}���&0A\0�����	�G\'p���t�t�@զ:t�|��x_PZ8�|�X�CE��|���\'��G�z$dptU7�t�A��}E�t3�}pP-xt\"Q��}&0~Z�L\0��wth�~&�A8�JWF�@\0D�s�(t*����\0K�opEJC�@��(�G���:�a�P\'�z�_���^��ȇ}�(X��z؇��=@���UJ搈�Ȉ��x���e\0P�w&8K���V���g���Vp���w��\'LptA�t�^H1q�� 1I��z�p�tpp��?7�h�IW*A�t)1�@W�\'q�@�?J\0pt<@T�6\0ts�E-�J��4^���	^`�y�V%@��HNyv���X@%E�fq1�}��IA�aK��x�\'���	��B��nɨ]�o_��n9��n3PD\0t��tp`�h�t�t�t/�Zx\Z�\'�!�n҂�&���P����d��j�o�$�\"U�`�� x^@:LF��\'<� x=Pl{�6X��{���D��e��9�wi[ x�w9�Ւ�~@t�q#��X����t[8A�n�i8ɓ������)!�����95�\0pG��M3?��MA�1a�a\\�`�V��|M�Pfi+�W	k)���M9��t�S&A}x�|��ywբ�~��-��v��\0��Yz\'Q�~P�$q�\'���֘)a�*�����i�,���v�!A�P�:�9K��$��@�C	QBLk%�q%8�Ml��rKc��h8�q�h� ��d\0�5}y�}ח��yr�@��)��Y�\"yߩ�!Q�G�#������t6j�K�)�,�&1�Ry��0��P�o1\0Z��F��v�y�}�+�AGV	�xw��$��k�;U	�N��r$�� �D{ٜ+�-�ҙ\'�)�,A�*�o�	���%٣!��%!�5��.���n��G��+��&!�w�0.S0Tޅ���05*�.aʛ��Uz�l�k�F���v�/�0�*l�w�7E=�g�y�<�\0\0�#xw[0�#��Y�xR�?��&q��֧B	G\'�!��\n�J����Y�z-�n�ʬ�%��Y��o�\0\0�YJ�������S�@�@W�i�Ǖ\n�$��d� |�JS$��5dq���tm5d���$�@�)A�-��k\'���.���\Z&��V���/z�~)��@��&у��ZW��f�#[�!�\0�\"n���O@\0p�9��(\n�?S%/�`��i���w�b$FfY@��F�-0+�V��w^`�$�!{�l�\'?�n��7�n�j��G�A�����ʣ���+��A\0�o*ڨ�:�P�+q��i��!!L�A\0.>�n�Jw	C�[��b�KCQ�(Y�����\r��+F4%����f<%%x�6y���q�o+��w׶2�~�+��7&���Z��	�0+�*ѭڨ�zu��n1)�IǼ-�:��;(\0\0\0����p�4rF��EP��c�M�YY����`\rD��U4�\"���cPr�{�� ��$��L��v7�ҭ��0X�\"a�<�-{\"�؛��o�{��Z�J�\'̲I�\0#�H�Hgçq\0f���T�(\0��i��d�D4��G��Ě��<\0�וQ�?L�w^P��cP��ey��j{w��d�w*����Z��ӛ�|��/�n��)���s+��J��\noۻ�O�t̅��� �3�P\Z�%p�?9�D�<\0��D&\0ʂg#���\0&�&���J������\\�B���w�9+TVQ� �%�p\\��¼��X�\rBԙ��,����ԛ�g����y<��4�s=J� Όu�\Z��ȟA}�v� v0f��L�#`�L��o���PZ АuCu������F�:����U����z��K �����8��O7��s��[��#}�}lr�+��,��2��2�N\'ҟ��8���CD`������P0C@D=�i Z�E�	\"�\\�j�$(�OI�8�����\Z�3�u+�y�Ҡ�P���8:?*n�tg-�%Q�Nw��R�љ�C4f`D���ԉP��@@��h�$|TeU���2!�&�8#@z6��V�֟�t����(L�P���=z����~h�\'��\0�\'1. %P����@\0�|w^0N��Gt1�\Zkwa�� ��f9/�t<L\Z1J\Z�zn��\0ќ�^�};ؓ��5|Î�z�m\'�H��(�vg�(1H xG0\r����|g|�fdEW��|��|��\0�w�#ר�ۭ�x,\Z�x��g�&����\'\ZNz\n�>z!�����w⅘��ÀפC:D�I (�Շ>܈z�]�}����d0t��~�Q�w� !�G�11�M��_PX��Z\\\ra \0:㡁���ʋ��Qݣ�~P��W\Z\\�z?�s]�tkn\ZJ�� ��?�\r�p˽�!7` ���[��@��]�:���n�I�f��}�u?� i>z�~���s�.�\r[`�zG�(!x��iĬw�&\0\0\Z\0�NƟ~�z��yG�����\rD�vH���-�Y+�n-�-m�6M���/��Y��\"�wm��w\'�jL���wwSJBS��\0\07�5��k�-��.�ܗ�O��-�^��Z��.�-���� ��t���7��� 1ٵ���>�nw-�0�L��,�!Q�c��\r<�DuШN��8��a��tdp���$1�v��\Z2O�\"����N\n�wF����\Z@I]�\r������{OW惛�\'�� !�\'��nڅ\Z���N�.��J�����}�:���w�,�f��~�G/Io-L\0�d/�=��0a�S�� 1�����T�9L���x�L���w_�y��O�p�������%��x��������q�휿������ \0��V�=~�օ��0��1���V��n�k���#��~��;�\'K\ZǬ�J����������t������ W\'�V����Y��%�޽\\/ع��n�.�~���\n�Ϲr̨��&������V�������������P��������������&~���3���~�����X����L�����ì�������ʲ�Ň�Ǫ�����؝�����P�ގ������������������+�Lڸ-˵k_\"m�,\r�UG\ZBnp�ݒ��j���h0_=KK>|XR�ݩQ�H3��>T,��4�㩁\r�Q�%�XA�;����᱄�8H�&+������rZ*-��bb���ӒsV�u�6�f����n�9+�\"�f���c�N��)v�a��\"\Z�\\_r3�}w�$���J�i�Jȯ�2+Ir�͎�J,m�5l���=���0|�Y��%��@���E<zn��[=�i槰���B���\'{�����\Z�׾	n�kiű{mqOU0�����Aj+�؉Գ��Z�6�#�L�Ar�|Er�<\'���8\"�Ֆ�U��7]��vJ���x��5�}��� *�\"�!\r�4̉X�g���������g��g�ȋ�8.��{�1z�Q����u� i�R���`.R�\"�/DNe�CNcI\0&��7��H	t��$H�Ν�V#l���\Z>�x��Vth�+z�Rg\'}��-Pn������\'$sz��,�4���]�ft2��i#hNFI��|�H��ظ悐#i$t$J�|����MS�$C}Wi$�S�+A��ݢ���0��Ig*��BkGƍ�`�p���\'�`��墨�)������j��Qi���R�2���`D�LA�&x��	���ڬ`L�4o�k�\0����	��ˮ��A������	\"c�H�9*�,����\"�\'�2���\"�Ds��	3�V4�?����,�t���jyA8ED�9�h�t�ǈ�y��%�v\r�{b�Mˡ�U5\"Wg��[w|�ۇ�=�[=4ho��M��Z�����߉\'��Vu���,����ڡ��ػ\"�ٶa.���J�y�D>:��sø�e��x�fv���A/���D�HAp`��p\0r*��\r6o��5�$�<�B?<��	��}h��%�\'��ȕ������~�o�	G�}\'E������J���?i\0�~�����:�������Z��Q� ��*� \r�� �GH����(L�\nW�����0��gH�\Z���8̡w�����@��H�\"\Z�HL����&:�P�b9�5\Zh/�J�R��:D$�R�aÈ\r*�bXdL����!BISI��(�W(�Jt05�F:�O)���$0$00ֱ�~<d\'�HV�쉉����AI �T�#�IH0���9�;���bŕ2�������%�E&�2jw�D�8�2���,�KHX�A��������j��D�v\"b~p��MCJ��R�+a�ғ@�δ��hj�C_�&:��o���� �=Ya�Z\"���&Ɇ��	������VP�:,�d�ITF�:_��C{-�(L���D�X���т���T�9��Fb���V����3�����0��S(�\0��GG��e��l\Z;͓�\n= �od�,�F�͠�/�)+f0Sn��J��\"�(Y��W#(�y���_zѣ�0�(���zlk� @������;�:s��5_%��h�����T���Ȉ�HT0r(�D�)�p�H@ib9��w�(����V#\"`P�ee԰�]�I��E�P�h�\0%+r6�0�TN��<L�z�\n4�3t�i$GIP5���0�3{U%���W�f���Q�b��0�XSqKsn���\\*|(	aP����C,\\J�e.�,�T;��tC~H�y-Q�H,��B=Qe1(��2W*`�@֫X3/.}�taY��Ŷ��lB�$Z�\n��\\q\"V�^?�l��%\\�����y<�DD�_!w�\'�K��0�I�_a(��G/R)\ZC�ȡ�$\0k��0��󕋩���U�n}�ĘLW2Kb�5.\"��7�ZcDf����c�V$���\'�D�<s���kq��\\���eD��*\'�g��fD�z���]5�6&�ügM��@E1*��E\r�֞�sji�p0&5�:�\"?\\��4�\n:\'�e�)3�\n8�V�I�aŊ�&B�ָ����I�J�p�C	�z�iFw9��\Z?�zܱ�D,$e��<ÿvD�3�Tb^�r���ٍ�m�U{*[߈�t\'��/,<��Ep����a���D�,4gD#���M7��q̓�Z(���%�	����Fx��+XqO��͆���:V�>��Ĳ1nRgV0��)�`�� ��b�4etҷ�w͚t6w�E~�R��ז\0Ȼg��\Zkoޑ`ynz:��邆�f1+!c��:�t��X���,��)0���Q�+�{M�)��<\'�ֹ�S(Ԯ����\r�C`�=�_4*\"����\rj��>�H]׊�wBw`%�T�����z�{�Ӎ���v��\\<��4��bc_�R�_{̽.:н#��h�N��y��?a\'��t�sw{��k���M��\"r��_ߚ�T��\Z�Bxt�G7z�u;f\0Ǘ��\n�qntfz5\'16]�\"�TR(�&AG��\0i��i�wed�+�7y����@���Mvr��eBvyo5,�~!�paf�@Th~�gi�bi݇p�e�]\'u�`es�!�V�\0H98xwf	�q�6(u���z�=�uK�n.����W�0[0�W_�j��j�@XL�5�e���}��\naȀU�!��zΓGށpv�X�rU[���Qsc�e	t�kv���e#�e<��\0�q�	Z�5|Hb,�jg��Z�r	&U�PX�S\"n}Т1>��6Q]�Mem�CJ�Gv����y/u{-�W��P�7u�C\\健Xu�7���n��]��_�41]�N�\rl�\n;Q��h�b�xN��G��y\nSA�g��0�D\0p�z/Ht&`\0P�zdVW����~�ׄz�X�HL�7c��ud�@�B�E�p�H# ���&�.�B�KsE�w�0�A��B\0�o\"#�$��<	93�BI���DƢ0T�P��Z=��k��\'�\Z�Hu�@\'ՁLy����&�%�K��@EЕX9�dY�fy�h��j��lٖn��p�r9�tY�vy�x��z��|ٗ~���闁\0\0;',NULL,NULL),(3,'1400 decarie',5,0,0,3,0,16000,1000.00,2000.00,NULL,0,0,'FLOYLSTONE AVE','SEATTLE ','42525','','36299700_1394029775.jpg',NULL,NULL),(4,'2500 Outremont',100,0,1,1,1200,NULL,NULL,NULL,'',38,1,'2500 outremont','Montreal','H2H2X4','','wznkw.png',NULL,NULL);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertiestypes`
--

DROP TABLE IF EXISTS `propertiestypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertiestypes` (
  `id` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertiestypes`
--

LOCK TABLES `propertiestypes` WRITE;
/*!40000 ALTER TABLE `propertiestypes` DISABLE KEYS */;
INSERT INTO `propertiestypes` VALUES ('','Aerospace'),('1','Industrial'),('2','Commercial'),('3','Residential');
/*!40000 ALTER TABLE `propertiestypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertiestypes_specifications`
--

DROP TABLE IF EXISTS `propertiestypes_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertiestypes_specifications` (
  `id` int(10) NOT NULL,
  `propertiestype_id` int(10) NOT NULL,
  `propertiestypes_specification` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertiestypes_specifications`
--

LOCK TABLES `propertiestypes_specifications` WRITE;
/*!40000 ALTER TABLE `propertiestypes_specifications` DISABLE KEYS */;
INSERT INTO `propertiestypes_specifications` VALUES (1,3,'apartment'),(2,2,'Entrepot'),(3,1,'laboratoire'),(4,3,'bongalot');
/*!40000 ALTER TABLE `propertiestypes_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurringcharges`
--

DROP TABLE IF EXISTS `recurringcharges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurringcharges` (
  `id` int(200) NOT NULL,
  `frequency` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurringcharges`
--

LOCK TABLES `recurringcharges` WRITE;
/*!40000 ALTER TABLE `recurringcharges` DISABLE KEYS */;
INSERT INTO `recurringcharges` VALUES (1,'Monthly'),(2,'Daily'),(3,'Weekly'),(4,'Every two weeks'),(5,'Every two months'),(6,'Quartely'),(7,'Every six months'),(8,'Yearly'),(9,'One time');
/*!40000 ALTER TABLE `recurringcharges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrings`
--

DROP TABLE IF EXISTS `recurrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recurring` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrings`
--

LOCK TABLES `recurrings` WRITE;
/*!40000 ALTER TABLE `recurrings` DISABLE KEYS */;
INSERT INTO `recurrings` VALUES (1,'month'),(2,'day'),(3,'7 days'),(4,'3 months');
/*!40000 ALTER TABLE `recurrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `references` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tenant_id` int(10) unsigned DEFAULT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `gender_id` int(11) NOT NULL,
  `id_government` varchar(25) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `phone2` varchar(15) DEFAULT NULL,
  `email` varchar(25) CHARACTER SET ucs2 NOT NULL,
  `fax` varchar(20) NOT NULL,
  `relationship_to_tenant` varchar(25) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `photo` longblob,
  `notes` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
/*!40000 ALTER TABLE `references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_owners`
--

DROP TABLE IF EXISTS `rental_owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental_owners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `gender_id` int(11) NOT NULL,
  `id_government` varchar(25) DEFAULT NULL,
  `company_name` varchar(40) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `primary_email` varchar(40) DEFAULT NULL,
  `alternate_email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `comments` text,
  `photo` longblob,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_owners`
--

LOCK TABLES `rental_owners` WRITE;
/*!40000 ALTER TABLE `rental_owners` DISABLE KEYS */;
INSERT INTO `rental_owners` VALUES (1,'Marry','Miller ',0,NULL,'SMALLSYS INC','1969-03-12','marrymiller@she.com','mmiller@we.com','3456789012',NULL,'795 E DRAGRAM',0,0,'TUCSON','85705','<br>',NULL,NULL,NULL),(2,'Anthony','White',0,NULL,'JOHN GULLIBLE','1969-03-12','anthonywhite@he.com','antonwhite@he.com','7665342187',NULL,'200 E MAIN ST',0,0,'PHOENIX','8512','<br>',NULL,NULL,NULL),(3,'Suzan','Edward',0,NULL,'MARY ROE','1976-07-16','suzanedward@she.com','suzan89@she.com','3452877690',NULL,'799 E DRAGRAM SUITE 5A   ',0,0,'TUCSON','8570','<br>',NULL,NULL,NULL),(4,'John','Smith',0,NULL,'MEGASYSTEMS INC','1964-09-16','johnsmith@he.com','jsmith@megasystems.com','2345678912',NULL,'300 BOYLSTON AVE E',0,0,'SEATTLE','98102','<br>',NULL,NULL,NULL);
/*!40000 ALTER TABLE `rental_owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repeatings`
--

DROP TABLE IF EXISTS `repeatings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repeatings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repeating` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repeatings`
--

LOCK TABLES `repeatings` WRITE;
/*!40000 ALTER TABLE `repeatings` DISABLE KEYS */;
INSERT INTO `repeatings` VALUES (1,'indefinitely'),(2,'until a specific date'),(3,'a specific number of times');
/*!40000 ALTER TABLE `repeatings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence_and_rental_histories`
--

DROP TABLE IF EXISTS `residence_and_rental_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residence_and_rental_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tenant_id` int(10) unsigned NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `landlord_or_manager_name` varchar(15) DEFAULT NULL,
  `landlord_or_manager_phone` varchar(15) DEFAULT NULL,
  `monthly_rent` decimal(6,2) DEFAULT NULL,
  `date_of_residency_from` date DEFAULT NULL,
  `date_of_residency_to` date DEFAULT NULL,
  `reason_for_leaving` varchar(40) DEFAULT NULL,
  `notes` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence_and_rental_histories`
--

LOCK TABLES `residence_and_rental_histories` WRITE;
/*!40000 ALTER TABLE `residence_and_rental_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `residence_and_rental_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salutations`
--

DROP TABLE IF EXISTS `salutations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salutations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salutations`
--

LOCK TABLES `salutations` WRITE;
/*!40000 ALTER TABLE `salutations` DISABLE KEYS */;
INSERT INTO `salutations` VALUES (1,'Mr.'),(2,'Ms'),(3,'Mrs.'),(4,'Dr.');
/*!40000 ALTER TABLE `salutations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'1-1/2'),(2,'2-1/2'),(3,'studio');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,38,'Quebec'),(2,38,'Toronto'),(3,93,'Port-au-Prince'),(4,93,'Cap-Haitien'),(5,30,'Brazilia'),(6,108,'kingston'),(7,38,'Vancouver'),(8,230,'Florida'),(9,230,'New York'),(10,230,'California'),(11,230,'New Jersey');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'Applicant'),(2,'Reserved'),(3,'Lease'),(4,'Free'),(5,'Not available'),(6,'N/A');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `tax` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,15),(2,9);
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `gender_id` int(11) NOT NULL,
  `marital_status_id` int(11) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `alternate emails` varchar(200) NOT NULL,
  `cell_phone` varchar(15) DEFAULT NULL,
  `home_phone` varchar(200) NOT NULL,
  `work_phone` varchar(200) DEFAULT NULL,
  `fax` varchar(200) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `street` text NOT NULL,
  `City` varchar(15) NOT NULL,
  `zip` int(11) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `driver_license_number` varchar(15) DEFAULT NULL,
  `driver_license_state` varchar(15) DEFAULT NULL,
  `total_number_of_occupants` varchar(15) DEFAULT NULL,
  `unit_or_address_applying_for` varchar(40) DEFAULT NULL,
  `requested_lease_term` varchar(15) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `emergency_contact` varchar(100) DEFAULT NULL,
  `emergency_contact_email` varchar(200) NOT NULL,
  `emergency_contact_phone` varchar(200) NOT NULL,
  `relationship_to_tenant` varchar(200) NOT NULL,
  `co_signer_details` varchar(100) DEFAULT NULL,
  `notes` text,
  `photo` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `property_or_address_applying_for` (`unit_or_address_applying_for`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES (1,'Nancy','Walker',0,0,'nancywalker@she.com','','9876543210','','0','0',0,0,'','0',0,'1973-03-01','34267789','CA','5','1',NULL,0,'Name: Carola Paul\r\ne-mail: carolapaul@she.com\r\nPhone:1348973884\r\nAddress: POB 65502\r\nTUCSON AZ 85728','','','','Name: John Steve \r\ne-mail: johnsteve@he.com\r\nPhone:48245543\r\nAddress: 300 BOYLSTON AVE E\r\nSEATTLE WA','<br>','87076300_1394033914.jpg',NULL,NULL),(2,'Olivia','Medison',0,0,'oliviamedison@she.com','','8998435325','','0','0',0,0,'','0',0,'1980-01-23','76895432','GU','3','2',NULL,0,'Name: Nim Jackson\r\nemail: nimjackson@she.com','','','','Name: Nim Jackson\r\nemail: nimjackson@she.com','<br>',NULL,NULL,NULL),(3,'Elisabeth','Ban',0,0,'elisabethban@live.com','','2098435890','','0','0',0,0,'','0',0,'1985-07-20','76589965','GU','6','2',NULL,0,NULL,'','','',NULL,'<br>',NULL,NULL,NULL),(4,'Mona','Karim',0,0,'karim@yahoo.com','','4387658987','5147894562','5145453689','4387894523',38,1,'225 plateau mont-royal','1',-1,'2015-04-23','12365456','Quebec','3','45','',0,'Marie Andre Joseph','marieaj@gmail.com','5141237856','Wife','N/A','Application pour un nouveau','',NULL,NULL),(5,'Jean','Joseph',0,0,'jeanj@gmail.com','','5144569878','5147894546','4502589876','5124567823',1,1,'1234 outremont','1',-2,'2015-04-23','','','','','',0,'Darlene','dada@yahoo.ca','4504567823','Wife','','','',NULL,NULL);
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(10) unsigned NOT NULL,
  `rental_owner_id` int(11) DEFAULT NULL,
  `unit_number` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `market_rent` decimal(15,0) NOT NULL,
  `bedrooms` varchar(40) NOT NULL,
  `bath` decimal(15,0) NOT NULL,
  `lease_term` text,
  `leasestype_id` int(11) DEFAULT NULL,
  `rental_amount` double NOT NULL,
  `deposit_amount` int(11) NOT NULL,
  `description` text,
  `features` text,
  `photo` longblob,
  `status_id` varchar(40) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_number` (`unit_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,1,NULL,12,122,344,'4',2,NULL,NULL,0,0,'5-1/2 en bon etat et prore','climatise pour ete',NULL,'available',NULL,NULL),(2,3,NULL,80,45,43,'7',3,NULL,NULL,0,0,'good condition',NULL,NULL,'',NULL,NULL),(3,4,NULL,567,34,567,'3',0,NULL,NULL,0,0,'good condition','ok my friend',NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '2',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'vba@vba.com','vba',1,'2015-04-23 03:31:48','2015-04-23 03:31:48'),(2,'alezyy@yahoo.com','123456',1,'2015-04-24 16:17:20','2015-04-24 16:17:20'),(53,'goooo@oo.cm','123',2,'2015-04-27 17:36:53','2015-04-27 17:36:53'),(54,'qw@h.com','1234',2,'2015-04-27 17:37:58','2015-04-27 17:37:58'),(55,'qwnn@h.com','321',1,'2015-04-27 17:44:49','2015-04-27 17:44:49'),(56,'polo@yahoo.com','123456789',2,'2015-04-27 17:47:14','2015-04-27 17:47:14'),(57,'polobar@yahoo.com','123456789',2,'2015-04-27 17:49:00','2015-04-27 17:49:00'),(58,'tizpeople@gmail.com','123456789',2,'2015-04-27 18:18:46','2015-04-27 18:18:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workorders`
--

DROP TABLE IF EXISTS `workorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `summary` varchar(150) NOT NULL,
  `date_opened` date NOT NULL,
  `date_due` date NOT NULL,
  `work_description` text NOT NULL,
  `worktype_id` int(11) NOT NULL,
  `workstatus_id` int(11) NOT NULL,
  `workpriority_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `repeating_id` int(11) NOT NULL,
  `starting_on` date NOT NULL,
  `repeat_until` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workorders`
--

LOCK TABLES `workorders` WRITE;
/*!40000 ALTER TABLE `workorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `workorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workpriorities`
--

DROP TABLE IF EXISTS `workpriorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workpriorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workpriority` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workpriorities`
--

LOCK TABLES `workpriorities` WRITE;
/*!40000 ALTER TABLE `workpriorities` DISABLE KEYS */;
INSERT INTO `workpriorities` VALUES (1,'Normal'),(2,'Low'),(3,'Medium'),(4,'High'),(5,'Urgent');
/*!40000 ALTER TABLE `workpriorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workstatuses`
--

DROP TABLE IF EXISTS `workstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workstatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workstatus` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workstatuses`
--

LOCK TABLES `workstatuses` WRITE;
/*!40000 ALTER TABLE `workstatuses` DISABLE KEYS */;
INSERT INTO `workstatuses` VALUES (1,'Open'),(2,'Pending'),(3,'Closed');
/*!40000 ALTER TABLE `workstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worktypes`
--

DROP TABLE IF EXISTS `worktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worktypes`
--

LOCK TABLES `worktypes` WRITE;
/*!40000 ALTER TABLE `worktypes` DISABLE KEYS */;
INSERT INTO `worktypes` VALUES (1,'Repair'),(2,'Maintenance'),(3,'Incident'),(4,'Checkup'),(5,'Meter Reading'),(6,'Remove & Replace'),(7,'Violation'),(8,'Other');
/*!40000 ALTER TABLE `worktypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-03 20:39:11
