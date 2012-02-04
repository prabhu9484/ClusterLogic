-- phpMyAdmin SQL Dump
-- version 3.2.2.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 13, 2010 at 01:09 PM
-- Server version: 5.1.37
-- PHP Version: 5.2.10-2ubuntu6.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `opensis`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADDRESS`
--

CREATE TABLE IF NOT EXISTS `ADDRESS` (
  `address_id` int(8) NOT NULL AUTO_INCREMENT,
  `house_no` decimal(5,0) DEFAULT NULL,
  `fraction` varchar(3) DEFAULT NULL,
  `letter` varchar(2) DEFAULT NULL,
  `direction` varchar(2) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `apt` varchar(5) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `plus4` varchar(4) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `mail_street` varchar(30) DEFAULT NULL,
  `mail_city` varchar(60) DEFAULT NULL,
  `mail_state` varchar(50) DEFAULT NULL,
  `mail_zipcode` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mail_address` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `student_id` decimal(10,0) DEFAULT NULL,
  `bus_no` varchar(20) DEFAULT NULL,
  `bus_pickup` varchar(2) DEFAULT NULL,
  `bus_dropoff` varchar(2) DEFAULT NULL,
  `prim_student_relation` varchar(100) DEFAULT NULL,
  `pri_first_name` varchar(100) DEFAULT NULL,
  `pri_last_name` varchar(100) DEFAULT NULL,
  `home_phone` varchar(100) DEFAULT NULL,
  `work_phone` varchar(100) DEFAULT NULL,
  `mobile_phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `prim_custody` varchar(2) DEFAULT NULL,
  `prim_address` varchar(100) DEFAULT NULL,
  `prim_street` varchar(100) DEFAULT NULL,
  `prim_city` varchar(100) DEFAULT NULL,
  `prim_state` varchar(100) DEFAULT NULL,
  `prim_zipcode` varchar(20) DEFAULT NULL,
  `sec_student_relation` varchar(100) DEFAULT NULL,
  `sec_first_name` varchar(100) DEFAULT NULL,
  `sec_last_name` varchar(100) DEFAULT NULL,
  `sec_home_phone` varchar(100) DEFAULT NULL,
  `sec_work_phone` varchar(100) DEFAULT NULL,
  `sec_mobile_phone` varchar(100) DEFAULT NULL,
  `sec_email` varchar(100) DEFAULT NULL,
  `sec_custody` varchar(2) DEFAULT NULL,
  `sec_address` varchar(100) DEFAULT NULL,
  `sec_street` varchar(100) DEFAULT NULL,
  `sec_city` varchar(60) DEFAULT NULL,
  `sec_state` varchar(100) DEFAULT NULL,
  `sec_zipcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `address_3` (`zipcode`,`plus4`) USING BTREE,
  KEY `address_4` (`street`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ADDRESS`
--

INSERT INTO `ADDRESS` (`address_id`, `house_no`, `fraction`, `letter`, `direction`, `street`, `apt`, `zipcode`, `plus4`, `city`, `state`, `mail_street`, `mail_city`, `mail_state`, `mail_zipcode`, `address`, `mail_address`, `phone`, `student_id`, `bus_no`, `bus_pickup`, `bus_dropoff`, `prim_student_relation`, `pri_first_name`, `pri_last_name`, `home_phone`, `work_phone`, `mobile_phone`, `email`, `prim_custody`, `prim_address`, `prim_street`, `prim_city`, `prim_state`, `prim_zipcode`, `sec_student_relation`, `sec_first_name`, `sec_last_name`, `sec_home_phone`, `sec_work_phone`, `sec_mobile_phone`, `sec_email`, `sec_custody`, `sec_address`, `sec_street`, `sec_city`, `sec_state`, `sec_zipcode`) VALUES
(1, NULL, NULL, NULL, NULL, 'Unit 56', NULL, '30309', NULL, 'Atlanta', 'GA', 'Unit 56', 'Atlanta', 'GA', '30309', '1050 Peachtree Street', '1050 Peachtree Street', NULL, '1', '14', 'Y', 'Y', 'Father', 'Dennis', 'Williams', '404-555-1212', '678-232-4300 Xt 77', '404-524-3234', 'dennis@email.com', 'Y', '1050 Peachtree Street', 'Unit 56', 'Atlanta', 'GA', '30309', 'Mother', 'Julia', 'Williams', '404-555-1212', NULL, NULL, 'julia@email.com', 'Y', '1050 Peachtree Street', 'Unit 56', 'Atlanta', 'GA', '30309'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, '30306', NULL, 'Atlanta', 'GA', NULL, 'Atlanta', 'GA', '30306', '1190 N Highland Avenue Northeast', '1190 N Highland Avenue Northeast', NULL, '10', '15', 'Y', 'Y', 'Father', 'Stan  ', 'Allen', '678-243-3453', '404-324-6000', NULL, NULL, 'Y', '1190 N Highland Avenue Northeast', NULL, 'Atlanta', 'GA', '30306', 'Mother', 'Emma', 'Allen', NULL, NULL, NULL, NULL, 'Y', '1190 N Highland Avenue Northeast', NULL, 'Atlanta', 'GA', '30306'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, '30306', NULL, 'Atlanta', 'GA', NULL, 'Atlanta', 'GA', '30306', '822 Ralph McGill Boulevard Northeast', '822 Ralph McGill Boulevard Northeast', NULL, '7', '22', 'Y', 'Y', 'Step Father', 'Ian', 'Roy', '404-543-9365', '404-876-4399', NULL, NULL, 'Y', '822 Ralph McGill Boulevard Northeast', NULL, 'Atlanta', 'GA', '30306', 'Mother', 'Emily', 'Atkinson', NULL, NULL, NULL, NULL, 'Y', '822 Ralph McGill Boulevard Northeast', NULL, 'Atlanta', 'GA', '30306'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, '30314', NULL, 'Atlanta', 'GA', NULL, 'Atlanta', 'GA', '30314', '50 Sunset Avenue', '50 Sunset Avenue', NULL, '6', '9', 'Y', 'Y', 'Father', 'Surjit', 'Chawla', '678-28-6398', '678-879-4500 Ext 143', NULL, NULL, NULL, '50 Sunset Avenue', NULL, 'Atlanta', 'GA', '30314', 'Mother', 'Sunita', 'Chawla', '678-28-6398', NULL, NULL, NULL, 'Y', '50 Sunset Avenue', NULL, 'Atlanta', 'GA', '30314'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, '30316', NULL, 'Atlanta', 'GA', NULL, 'Atlanta', 'GA', '30316', '1273 Metropolitan Avenue', '1273 Metropolitan Avenue', NULL, '4', '22', 'Y', 'Y', 'Father', 'Graham', 'Chowksy', NULL, NULL, NULL, NULL, 'Y', '1273 Metropolitan Avenue', NULL, 'Atlanta', 'GA', '30316', 'Mother', 'Sophia', 'Chowksy', NULL, NULL, NULL, NULL, 'Y', '1273 Metropolitan Avenue', NULL, 'Atlanta', 'GA', '30316'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, '30315', NULL, 'Atlanta', 'GA', NULL, 'Atlanta', 'GA', '30315', '1590 Jonesboro Road Southeast', '1590 Jonesboro Road Southeast', NULL, '5', '8', 'Y', 'Y', 'Mother', 'Evilyn', 'Dillard', '404-524-3260', '404-324-6000', '404-524-3290', 'evilyn@email.com', 'Y', '1590 Jonesboro Road Southeast', NULL, 'Atlanta', 'GA', '30315', 'Father', 'Charles William', 'Dillard', '404-524-3260', '404-864-3277', '404-764-3253', 'charles@email.com', 'Y', '1590 Jonesboro Road Southeast', NULL, 'Atlanta', 'GA', '30315'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, '30310', NULL, 'Atlanta', 'GA', NULL, 'Atlanta', 'GA', '30310', '848 Oglethorpe Avenue Southwest', '848 Oglethorpe Avenue Southwest', NULL, '3', '22', 'Y', 'Y', 'Father', 'Walid', 'Elabassi', '404-835-5472', '404-555-6856', '404-777-3467', 'walid@email.com', 'Y', '848 Oglethorpe Avenue Southwest', NULL, 'Atlanta', 'GA', '30310', 'Mother', 'Khaleda', 'Elabassi', '404-835-5472', NULL, NULL, 'khaleda@email.com', 'Y', '848 Oglethorpe Avenue Southwest', NULL, 'Atlanta', 'GA', '30310'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, '30344', NULL, 'East Point', 'GA', NULL, 'East Point', 'GA', '30344', '2905 East Point Street', '2905 East Point Street', NULL, '2', '31', 'Y', 'Y', 'Grandmother', 'Gladys', 'Harper', '404-305-9259', '678-232-4300', '678-834-9734', 'harper22@email.com', 'Y', '2905 East Point Street', NULL, 'East Point', 'GA', '30344', 'Other Family Member', 'Amelia', 'Donlan', '404-555-1212', '404-864-3277', '404-764-3453', 'Amelia@email.com', NULL, '3799 Main Street', 'Unit # 50', 'College PArk', 'GA', '30337'),
(9, NULL, NULL, NULL, NULL, 'Condo 25', NULL, '30303', NULL, 'Atlanta', 'GA', 'Condo 25', 'Atlanta', 'GA', '30303', '400 Pryor Street Southwest', '400 Pryor Street Southwest', NULL, '11', '8', 'Y', 'Y', 'Step Mother', 'Eva', 'Hall', '770-735-9724', NULL, NULL, 'eva34@email.com', 'Y', '400 Pryor Street Southwest', 'Condo 25', 'Atlanta', 'GA', '30303', 'Father', 'Emerson', 'Hall', '770-735-9724', '404-864-3277', '404-764-3253', 'hall@email.com', 'Y', '400 Pryor Street Southwest', 'Condo 25', 'Atlanta', 'GA', '30303'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, '30032', NULL, 'Decatur', 'GA', NULL, 'Decatur', 'GA', '30032', '3651 Memorial Drive', 'P.O. Bob 8755', NULL, '12', '10', 'Y', 'Y', 'Mother', 'Laruen', 'Mellon', '678-124-2142', '678-877-9000', '404-762-9573', 'laureen@email.com', 'Y', '3651 Memorial Drive', NULL, 'Decatur', 'GA', '30032', 'Step Father', 'Benjamin', 'Ellis', '678-124-2142', '404-213-4376', '404-764-3253', 'Benjamin@email.com', NULL, '3651 Memorial Drive', NULL, 'Decatur', 'GA', '30032'),
(11, NULL, NULL, NULL, NULL, 'Apt 12A', NULL, '30030', NULL, 'Decatur', 'GA', 'Apt 12A', 'Decatur', 'GA', '30030', '141 East College Avenue', '141 East College Avenue', NULL, '9', '10', 'Y', 'Y', 'Mother', 'Victoria', 'Milton', '404-471-6349', '678-232-4900', '678-834-9342', 'Victoria@email.com', 'Y', '141 East College Avenue', 'Apt 12A', 'Decatur', 'GA', '30030', 'Father', 'Robert', 'Milton', '404-471-6349', '404-864-4400 XT 5789', '404-123-3253', 'robert@email.com', 'Y', '141 East College Avenue', 'Apt 12A', 'Decatur', 'GA', '30030'),
(12, NULL, NULL, NULL, NULL, 'Apt 77', NULL, '30318', NULL, 'Atlanta', 'GA', 'Apt 77', 'Atlanta', 'GA', '30318', '967 Brady Avenue Northwest', '967 Brady Avenue Northwest', NULL, '8', NULL, NULL, NULL, 'Father', 'Fernando', 'Rodriguez', '678-213-9815', '678-835-7245', '404-916-5522', 'fernando@email.com', 'Y', '967 Brady Avenue Northwest', 'Apt 77', 'Atlanta', 'GA', '30318', 'Mother', 'Araceli', 'Rodriguez', '678-213-9815', NULL, NULL, 'araceli@email.com', 'Y', '967 Brady Avenue Northwest', 'Apt 77', 'Atlanta', 'GA', '30318');

-- --------------------------------------------------------

--
-- Table structure for table `ADDRESS_FIELDS`
--

CREATE TABLE IF NOT EXISTS `ADDRESS_FIELDS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `search` varchar(1) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `select_options` varchar(10000) DEFAULT NULL,
  `category_id` decimal(10,0) DEFAULT NULL,
  `system_field` char(1) DEFAULT NULL,
  `required` varchar(1) DEFAULT NULL,
  `default_selection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_desc_ind` (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ADDRESS_FIELDS`
--


-- --------------------------------------------------------

--
-- Table structure for table `ADDRESS_FIELD_CATEGORIES`
--

CREATE TABLE IF NOT EXISTS `ADDRESS_FIELD_CATEGORIES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `residence` char(1) DEFAULT NULL,
  `mailing` char(1) DEFAULT NULL,
  `bus` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ADDRESS_FIELD_CATEGORIES`
--


-- --------------------------------------------------------

--
-- Table structure for table `APP`
--

CREATE TABLE IF NOT EXISTS `APP` (
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `APP`
--

INSERT INTO `APP` (`name`, `value`) VALUES
('version', '4.6.01'),
('date', '2009-09-22'),
('build', '09222009000'),
('update', '1'),
('last_updated', 'Sep 22, 2009');

-- --------------------------------------------------------

--
-- Table structure for table `ATTENDANCE_CALENDAR`
--

CREATE TABLE IF NOT EXISTS `ATTENDANCE_CALENDAR` (
  `syear` decimal(4,0) NOT NULL,
  `school_id` decimal(10,0) NOT NULL,
  `school_date` date NOT NULL,
  `minutes` decimal(10,0) DEFAULT NULL,
  `block` varchar(10) DEFAULT NULL,
  `calendar_id` decimal(10,0) NOT NULL,
  PRIMARY KEY (`syear`,`school_id`,`school_date`,`calendar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ATTENDANCE_CALENDAR`
--

INSERT INTO `ATTENDANCE_CALENDAR` (`syear`, `school_id`, `school_date`, `minutes`, `block`, `calendar_id`) VALUES
('2009', '1', '2009-08-19', '999', NULL, '1'),
('2009', '1', '2009-08-20', '999', NULL, '1'),
('2009', '1', '2009-08-21', '999', NULL, '1'),
('2009', '1', '2009-08-24', '999', NULL, '1'),
('2009', '1', '2009-08-25', '999', NULL, '1'),
('2009', '1', '2009-08-26', '999', NULL, '1'),
('2009', '1', '2009-08-27', '999', NULL, '1'),
('2009', '1', '2009-08-28', '999', NULL, '1'),
('2009', '1', '2009-08-31', '999', NULL, '1'),
('2009', '1', '2009-09-01', '999', NULL, '1'),
('2009', '1', '2009-09-02', '999', NULL, '1'),
('2009', '1', '2009-09-03', '999', NULL, '1'),
('2009', '1', '2009-09-04', '999', NULL, '1'),
('2009', '1', '2009-09-07', '999', NULL, '1'),
('2009', '1', '2009-09-08', '999', NULL, '1'),
('2009', '1', '2009-09-09', '999', NULL, '1'),
('2009', '1', '2009-09-10', '999', NULL, '1'),
('2009', '1', '2009-09-11', '999', NULL, '1'),
('2009', '1', '2009-09-14', '999', NULL, '1'),
('2009', '1', '2009-09-15', '999', NULL, '1'),
('2009', '1', '2009-09-16', '999', NULL, '1'),
('2009', '1', '2009-09-17', '999', NULL, '1'),
('2009', '1', '2009-09-18', '999', NULL, '1'),
('2009', '1', '2009-09-21', '999', NULL, '1'),
('2009', '1', '2009-09-22', '999', NULL, '1'),
('2009', '1', '2009-09-23', '999', NULL, '1'),
('2009', '1', '2009-09-24', '999', NULL, '1'),
('2009', '1', '2009-09-25', '999', NULL, '1'),
('2009', '1', '2009-09-28', '999', NULL, '1'),
('2009', '1', '2009-09-29', '999', NULL, '1'),
('2009', '1', '2009-09-30', '999', NULL, '1'),
('2009', '1', '2009-10-01', '999', NULL, '1'),
('2009', '1', '2009-10-02', '999', NULL, '1'),
('2009', '1', '2009-10-05', '999', NULL, '1'),
('2009', '1', '2009-10-06', '999', NULL, '1'),
('2009', '1', '2009-10-07', '999', NULL, '1'),
('2009', '1', '2009-10-08', '999', NULL, '1'),
('2009', '1', '2009-10-09', '999', NULL, '1'),
('2009', '1', '2009-10-12', '999', NULL, '1'),
('2009', '1', '2009-10-13', '999', NULL, '1'),
('2009', '1', '2009-10-14', '999', NULL, '1'),
('2009', '1', '2009-10-15', '999', NULL, '1'),
('2009', '1', '2009-10-16', '999', NULL, '1'),
('2009', '1', '2009-10-19', '999', NULL, '1'),
('2009', '1', '2009-10-20', '999', NULL, '1'),
('2009', '1', '2009-10-21', '999', NULL, '1'),
('2009', '1', '2009-10-22', '999', NULL, '1'),
('2009', '1', '2009-10-23', '999', NULL, '1'),
('2009', '1', '2009-10-26', '999', NULL, '1'),
('2009', '1', '2009-10-27', '999', NULL, '1'),
('2009', '1', '2009-10-28', '999', NULL, '1'),
('2009', '1', '2009-10-29', '999', NULL, '1'),
('2009', '1', '2009-10-30', '999', NULL, '1'),
('2009', '1', '2009-11-02', '999', NULL, '1'),
('2009', '1', '2009-11-03', '999', NULL, '1'),
('2009', '1', '2009-11-04', '999', NULL, '1'),
('2009', '1', '2009-11-05', '999', NULL, '1'),
('2009', '1', '2009-11-06', '999', NULL, '1'),
('2009', '1', '2009-11-09', '999', NULL, '1'),
('2009', '1', '2009-11-10', '999', NULL, '1'),
('2009', '1', '2009-11-11', '999', NULL, '1'),
('2009', '1', '2009-11-12', '999', NULL, '1'),
('2009', '1', '2009-11-13', '999', NULL, '1'),
('2009', '1', '2009-11-16', '999', NULL, '1'),
('2009', '1', '2009-11-17', '999', NULL, '1'),
('2009', '1', '2009-11-18', '999', NULL, '1'),
('2009', '1', '2009-11-19', '999', NULL, '1'),
('2009', '1', '2009-11-20', '999', NULL, '1'),
('2009', '1', '2009-11-23', '999', NULL, '1'),
('2009', '1', '2009-11-24', '999', NULL, '1'),
('2009', '1', '2009-11-30', '999', NULL, '1'),
('2009', '1', '2009-12-01', '999', NULL, '1'),
('2009', '1', '2009-12-02', '999', NULL, '1'),
('2009', '1', '2009-12-03', '999', NULL, '1'),
('2009', '1', '2009-12-04', '999', NULL, '1'),
('2009', '1', '2009-12-07', '999', NULL, '1'),
('2009', '1', '2009-12-08', '999', NULL, '1'),
('2009', '1', '2009-12-09', '999', NULL, '1'),
('2009', '1', '2009-12-10', '999', NULL, '1'),
('2009', '1', '2009-12-11', '999', NULL, '1'),
('2009', '1', '2009-12-14', '999', NULL, '1'),
('2009', '1', '2009-12-15', '999', NULL, '1'),
('2009', '1', '2009-12-16', '999', NULL, '1'),
('2009', '1', '2009-12-17', '999', NULL, '1'),
('2009', '1', '2009-12-18', '999', NULL, '1'),
('2009', '1', '2010-01-05', '999', NULL, '1'),
('2009', '1', '2010-01-06', '999', NULL, '1'),
('2009', '1', '2010-01-07', '999', NULL, '1'),
('2009', '1', '2010-01-08', '999', NULL, '1'),
('2009', '1', '2010-01-11', '999', NULL, '1'),
('2009', '1', '2010-01-12', '999', NULL, '1'),
('2009', '1', '2010-01-13', '999', NULL, '1'),
('2009', '1', '2010-01-14', '999', NULL, '1'),
('2009', '1', '2010-01-15', '999', NULL, '1'),
('2009', '1', '2010-01-19', '999', NULL, '1'),
('2009', '1', '2010-01-20', '999', NULL, '1'),
('2009', '1', '2010-01-21', '999', NULL, '1'),
('2009', '1', '2010-01-22', '999', NULL, '1'),
('2009', '1', '2010-01-25', '999', NULL, '1'),
('2009', '1', '2010-01-26', '999', NULL, '1'),
('2009', '1', '2010-01-27', '999', NULL, '1'),
('2009', '1', '2010-01-28', '999', NULL, '1'),
('2009', '1', '2010-01-29', '999', NULL, '1'),
('2009', '1', '2010-02-01', '999', NULL, '1'),
('2009', '1', '2010-02-02', '999', NULL, '1'),
('2009', '1', '2010-02-03', '999', NULL, '1'),
('2009', '1', '2010-02-04', '999', NULL, '1'),
('2009', '1', '2010-02-05', '999', NULL, '1'),
('2009', '1', '2010-02-08', '999', NULL, '1'),
('2009', '1', '2010-02-09', '999', NULL, '1'),
('2009', '1', '2010-02-10', '999', NULL, '1'),
('2009', '1', '2010-02-11', '999', NULL, '1'),
('2009', '1', '2010-02-12', '999', NULL, '1'),
('2009', '1', '2010-02-15', '999', NULL, '1'),
('2009', '1', '2010-02-16', '999', NULL, '1'),
('2009', '1', '2010-02-17', '999', NULL, '1'),
('2009', '1', '2010-02-18', '999', NULL, '1'),
('2009', '1', '2010-02-19', '999', NULL, '1'),
('2009', '1', '2010-02-22', '999', NULL, '1'),
('2009', '1', '2010-02-23', '999', NULL, '1'),
('2009', '1', '2010-02-24', '999', NULL, '1'),
('2009', '1', '2010-02-25', '999', NULL, '1'),
('2009', '1', '2010-02-26', '999', NULL, '1'),
('2009', '1', '2010-03-01', '999', NULL, '1'),
('2009', '1', '2010-03-02', '999', NULL, '1'),
('2009', '1', '2010-03-03', '999', NULL, '1'),
('2009', '1', '2010-03-04', '999', NULL, '1'),
('2009', '1', '2010-03-05', '999', NULL, '1'),
('2009', '1', '2010-03-08', '999', NULL, '1'),
('2009', '1', '2010-03-09', '999', NULL, '1'),
('2009', '1', '2010-03-10', '999', NULL, '1'),
('2009', '1', '2010-03-11', '999', NULL, '1'),
('2009', '1', '2010-03-12', '999', NULL, '1'),
('2009', '1', '2010-03-15', '999', NULL, '1'),
('2009', '1', '2010-03-16', '999', NULL, '1'),
('2009', '1', '2010-03-17', '999', NULL, '1'),
('2009', '1', '2010-03-18', '999', NULL, '1'),
('2009', '1', '2010-03-19', '999', NULL, '1'),
('2009', '1', '2010-03-22', '999', NULL, '1'),
('2009', '1', '2010-03-23', '999', NULL, '1'),
('2009', '1', '2010-03-24', '999', NULL, '1'),
('2009', '1', '2010-03-25', '999', NULL, '1'),
('2009', '1', '2010-03-26', '999', NULL, '1'),
('2009', '1', '2010-03-29', '999', NULL, '1'),
('2009', '1', '2010-03-30', '999', NULL, '1'),
('2009', '1', '2010-03-31', '999', NULL, '1'),
('2009', '1', '2010-04-01', '999', NULL, '1'),
('2009', '1', '2010-04-02', '999', NULL, '1'),
('2009', '1', '2009-08-18', '999', NULL, '1'),
('2009', '1', '2010-04-12', '999', NULL, '1'),
('2009', '1', '2010-04-13', '999', NULL, '1'),
('2009', '1', '2010-04-14', '999', NULL, '1'),
('2009', '1', '2010-04-15', '999', NULL, '1'),
('2009', '1', '2010-04-16', '999', NULL, '1'),
('2009', '1', '2010-04-19', '999', NULL, '1'),
('2009', '1', '2010-04-20', '999', NULL, '1'),
('2009', '1', '2010-04-21', '999', NULL, '1'),
('2009', '1', '2010-04-22', '999', NULL, '1'),
('2009', '1', '2010-04-23', '999', NULL, '1'),
('2009', '1', '2010-04-26', '999', NULL, '1'),
('2009', '1', '2010-04-27', '999', NULL, '1'),
('2009', '1', '2010-04-28', '999', NULL, '1'),
('2009', '1', '2010-04-29', '999', NULL, '1'),
('2009', '1', '2010-04-30', '999', NULL, '1'),
('2009', '1', '2010-05-03', '999', NULL, '1'),
('2009', '1', '2010-05-04', '999', NULL, '1'),
('2009', '1', '2010-05-05', '999', NULL, '1'),
('2009', '1', '2010-05-06', '999', NULL, '1'),
('2009', '1', '2010-05-07', '999', NULL, '1'),
('2009', '1', '2010-05-10', '999', NULL, '1'),
('2009', '1', '2010-05-11', '999', NULL, '1'),
('2009', '1', '2010-05-12', '999', NULL, '1'),
('2009', '1', '2010-05-13', '999', NULL, '1'),
('2009', '1', '2010-05-14', '999', NULL, '1'),
('2009', '1', '2010-05-17', '999', NULL, '1'),
('2009', '1', '2010-05-18', '999', NULL, '1'),
('2009', '1', '2010-05-19', '999', NULL, '1'),
('2009', '1', '2010-05-20', '999', NULL, '1'),
('2009', '1', '2010-05-21', '999', NULL, '1'),
('2009', '1', '2010-05-24', '999', NULL, '1'),
('2009', '1', '2010-05-25', '999', NULL, '1'),
('2009', '1', '2010-05-26', '150', NULL, '1'),
('2009', '1', '2010-05-27', '150', NULL, '1'),
('2009', '1', '2010-05-28', '999', NULL, '1'),
('2009', '1', '2009-08-17', '999', NULL, '1'),
('2009', '1', '2010-06-01', '999', NULL, '1'),
('2009', '1', '2010-06-02', '999', NULL, '1'),
('2009', '1', '2010-06-03', '999', NULL, '1'),
('2009', '1', '2010-06-04', '999', NULL, '1'),
('2009', '1', '2010-06-07', '999', NULL, '1'),
('2009', '1', '2010-06-08', '999', NULL, '1'),
('2009', '1', '2010-06-09', '999', NULL, '1'),
('2009', '1', '2010-06-10', '999', NULL, '1'),
('2009', '1', '2010-06-11', '999', NULL, '1'),
('2009', '1', '2010-06-14', '999', NULL, '1'),
('2009', '1', '2010-06-15', '999', NULL, '1'),
('2009', '1', '2010-06-16', '999', NULL, '1'),
('2009', '1', '2010-06-17', '999', NULL, '1'),
('2009', '1', '2010-06-18', '999', NULL, '1'),
('2009', '1', '2010-06-21', '999', NULL, '1'),
('2009', '1', '2010-06-22', '999', NULL, '1'),
('2009', '1', '2010-06-23', '999', NULL, '1'),
('2009', '1', '2010-06-24', '999', NULL, '1'),
('2009', '1', '2010-06-25', '999', NULL, '1'),
('2009', '1', '2010-06-28', '999', NULL, '1'),
('2009', '1', '2010-06-29', '999', NULL, '1'),
('2009', '1', '2010-06-30', '999', NULL, '1'),
('2009', '1', '2010-07-01', '999', NULL, '1'),
('2009', '3', '2010-06-01', '999', NULL, '2'),
('2009', '3', '2010-06-02', '999', NULL, '2'),
('2009', '3', '2010-06-03', '999', NULL, '2'),
('2009', '3', '2010-06-04', '999', NULL, '2'),
('2009', '3', '2010-06-07', '999', NULL, '2'),
('2009', '3', '2010-06-08', '999', NULL, '2'),
('2009', '3', '2010-06-09', '999', NULL, '2'),
('2009', '3', '2010-06-10', '999', NULL, '2'),
('2009', '3', '2010-06-11', '999', NULL, '2'),
('2009', '3', '2010-06-14', '999', NULL, '2'),
('2009', '3', '2010-06-15', '999', NULL, '2'),
('2009', '3', '2010-06-16', '999', NULL, '2'),
('2009', '3', '2010-06-17', '999', NULL, '2'),
('2009', '3', '2010-06-18', '999', NULL, '2'),
('2009', '3', '2010-06-21', '999', NULL, '2'),
('2009', '3', '2010-06-22', '999', NULL, '2'),
('2009', '3', '2010-06-23', '999', NULL, '2'),
('2009', '3', '2010-06-24', '999', NULL, '2'),
('2009', '3', '2010-06-25', '999', NULL, '2'),
('2009', '3', '2010-06-28', '999', NULL, '2'),
('2009', '3', '2010-06-29', '999', NULL, '2'),
('2009', '3', '2010-06-30', '999', NULL, '2'),
('2009', '3', '2010-07-01', '999', NULL, '2'),
('2009', '3', '2010-07-02', '999', NULL, '2'),
('2009', '3', '2010-07-05', '999', NULL, '2'),
('2009', '3', '2010-07-06', '999', NULL, '2'),
('2009', '3', '2010-07-07', '999', NULL, '2'),
('2009', '3', '2010-07-08', '999', NULL, '2'),
('2009', '3', '2010-07-09', '999', NULL, '2'),
('2009', '3', '2010-07-12', '999', NULL, '2'),
('2009', '3', '2010-07-13', '999', NULL, '2'),
('2009', '3', '2010-07-14', '999', NULL, '2'),
('2009', '3', '2010-07-15', '999', NULL, '2'),
('2009', '3', '2010-07-16', '999', NULL, '2'),
('2009', '3', '2010-07-19', '999', NULL, '2'),
('2009', '3', '2010-07-20', '999', NULL, '2'),
('2009', '3', '2010-07-21', '999', NULL, '2'),
('2009', '3', '2010-07-22', '999', NULL, '2'),
('2009', '3', '2010-07-23', '999', NULL, '2'),
('2009', '3', '2010-07-26', '999', NULL, '2'),
('2009', '3', '2010-07-27', '999', NULL, '2'),
('2009', '3', '2010-07-28', '999', NULL, '2'),
('2009', '3', '2010-07-29', '999', NULL, '2'),
('2009', '3', '2010-07-30', '999', NULL, '2'),
('2009', '3', '2010-08-02', '999', NULL, '2'),
('2009', '3', '2010-08-03', '999', NULL, '2'),
('2009', '3', '2010-08-04', '999', NULL, '2'),
('2009', '3', '2010-08-05', '999', NULL, '2'),
('2009', '3', '2010-08-06', '999', NULL, '2'),
('2009', '3', '2010-08-09', '999', NULL, '2'),
('2009', '3', '2010-08-10', '999', NULL, '2'),
('2009', '3', '2010-08-11', '999', NULL, '2'),
('2009', '3', '2010-08-12', '999', NULL, '2'),
('2009', '3', '2010-08-13', '999', NULL, '2'),
('2009', '3', '2010-08-16', '999', NULL, '2'),
('2009', '3', '2010-08-17', '999', NULL, '2'),
('2009', '3', '2010-08-18', '999', NULL, '2'),
('2009', '3', '2010-08-19', '999', NULL, '2'),
('2009', '3', '2010-08-20', '999', NULL, '2'),
('2009', '3', '2010-08-23', '999', NULL, '2'),
('2009', '3', '2010-08-24', '999', NULL, '2'),
('2009', '3', '2010-08-25', '999', NULL, '2'),
('2009', '3', '2010-08-26', '999', NULL, '2'),
('2009', '3', '2010-08-27', '999', NULL, '2'),
('2009', '3', '2010-08-30', '999', NULL, '2'),
('2009', '3', '2010-08-31', '999', NULL, '2'),
('2009', '3', '2010-09-01', '999', NULL, '2'),
('2009', '3', '2010-09-02', '999', NULL, '2'),
('2009', '3', '2010-09-03', '999', NULL, '2'),
('2009', '3', '2010-09-06', '999', NULL, '2'),
('2009', '3', '2010-09-07', '999', NULL, '2'),
('2009', '3', '2010-09-08', '999', NULL, '2'),
('2009', '3', '2010-09-09', '999', NULL, '2'),
('2009', '3', '2010-09-10', '999', NULL, '2'),
('2009', '3', '2010-09-13', '999', NULL, '2'),
('2009', '3', '2010-09-14', '999', NULL, '2'),
('2009', '3', '2010-09-15', '999', NULL, '2'),
('2009', '3', '2010-09-16', '999', NULL, '2'),
('2009', '3', '2010-09-17', '999', NULL, '2'),
('2009', '3', '2010-09-20', '999', NULL, '2'),
('2009', '3', '2010-09-21', '999', NULL, '2'),
('2009', '3', '2010-09-22', '999', NULL, '2'),
('2009', '3', '2010-09-23', '999', NULL, '2'),
('2009', '3', '2010-09-24', '999', NULL, '2'),
('2009', '3', '2010-09-27', '999', NULL, '2'),
('2009', '3', '2010-09-28', '999', NULL, '2'),
('2009', '3', '2010-09-29', '999', NULL, '2'),
('2009', '3', '2010-09-30', '999', NULL, '2'),
('2009', '3', '2010-10-01', '999', NULL, '2'),
('2009', '3', '2010-10-04', '999', NULL, '2'),
('2009', '3', '2010-10-05', '999', NULL, '2'),
('2009', '3', '2010-10-06', '999', NULL, '2'),
('2009', '3', '2010-10-07', '999', NULL, '2'),
('2009', '3', '2010-10-08', '999', NULL, '2'),
('2009', '3', '2010-10-11', '999', NULL, '2'),
('2009', '3', '2010-10-12', '999', NULL, '2'),
('2009', '3', '2010-10-13', '999', NULL, '2'),
('2009', '3', '2010-10-14', '999', NULL, '2'),
('2009', '3', '2010-10-15', '999', NULL, '2'),
('2009', '3', '2010-10-18', '999', NULL, '2'),
('2009', '3', '2010-10-19', '999', NULL, '2'),
('2009', '3', '2010-10-20', '999', NULL, '2'),
('2009', '3', '2010-10-21', '999', NULL, '2'),
('2009', '3', '2010-10-22', '999', NULL, '2'),
('2009', '3', '2010-10-25', '999', NULL, '2'),
('2009', '3', '2010-10-26', '999', NULL, '2'),
('2009', '3', '2010-10-27', '999', NULL, '2'),
('2009', '3', '2010-10-28', '999', NULL, '2'),
('2009', '3', '2010-10-29', '999', NULL, '2'),
('2009', '3', '2010-11-01', '999', NULL, '2'),
('2009', '3', '2010-11-02', '999', NULL, '2'),
('2009', '3', '2010-11-03', '999', NULL, '2'),
('2009', '3', '2010-11-04', '999', NULL, '2'),
('2009', '3', '2010-11-05', '999', NULL, '2'),
('2009', '3', '2010-11-08', '999', NULL, '2'),
('2009', '3', '2010-11-09', '999', NULL, '2'),
('2009', '3', '2010-11-10', '999', NULL, '2'),
('2009', '3', '2010-11-11', '999', NULL, '2'),
('2009', '3', '2010-11-12', '999', NULL, '2'),
('2009', '3', '2010-11-15', '999', NULL, '2'),
('2009', '3', '2010-11-16', '999', NULL, '2'),
('2009', '3', '2010-11-17', '999', NULL, '2'),
('2009', '3', '2010-11-18', '999', NULL, '2'),
('2009', '3', '2010-11-19', '999', NULL, '2'),
('2009', '3', '2010-11-22', '999', NULL, '2'),
('2009', '3', '2010-11-23', '999', NULL, '2'),
('2009', '3', '2010-11-24', '999', NULL, '2'),
('2009', '3', '2010-11-25', '999', NULL, '2'),
('2009', '3', '2010-11-26', '999', NULL, '2'),
('2009', '3', '2010-11-29', '999', NULL, '2'),
('2009', '3', '2010-11-30', '999', NULL, '2'),
('2009', '3', '2010-12-01', '999', NULL, '2'),
('2009', '3', '2010-12-02', '999', NULL, '2'),
('2009', '3', '2010-12-03', '999', NULL, '2'),
('2009', '3', '2010-12-06', '999', NULL, '2'),
('2009', '3', '2010-12-07', '999', NULL, '2'),
('2009', '3', '2010-12-08', '999', NULL, '2'),
('2009', '3', '2010-12-09', '999', NULL, '2'),
('2009', '3', '2010-12-10', '999', NULL, '2'),
('2009', '3', '2010-12-13', '999', NULL, '2'),
('2009', '3', '2010-12-14', '999', NULL, '2'),
('2009', '3', '2010-12-15', '999', NULL, '2'),
('2009', '3', '2010-12-16', '999', NULL, '2'),
('2009', '3', '2010-12-17', '999', NULL, '2'),
('2009', '3', '2010-12-20', '999', NULL, '2'),
('2009', '3', '2010-12-21', '999', NULL, '2'),
('2009', '3', '2010-12-22', '999', NULL, '2'),
('2009', '3', '2010-12-23', '999', NULL, '2'),
('2009', '3', '2010-12-24', '999', NULL, '2'),
('2009', '3', '2010-12-27', '999', NULL, '2'),
('2009', '3', '2010-12-28', '999', NULL, '2'),
('2009', '3', '2010-12-29', '999', NULL, '2'),
('2009', '3', '2010-12-30', '999', NULL, '2'),
('2009', '3', '2010-12-31', '999', NULL, '2');

-- --------------------------------------------------------

--
-- Table structure for table `ATTENDANCE_CALENDARS`
--

CREATE TABLE IF NOT EXISTS `ATTENDANCE_CALENDARS` (
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `calendar_id` int(8) NOT NULL AUTO_INCREMENT,
  `default_calendar` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`calendar_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ATTENDANCE_CALENDARS`
--

INSERT INTO `ATTENDANCE_CALENDARS` (`school_id`, `title`, `syear`, `calendar_id`, `default_calendar`, `rollover_id`) VALUES
('1', 'Master', '2009', 1, 'Y', NULL),
('3', 'RVS Calendar', '2009', 2, 'Y', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ATTENDANCE_CODES`
--

CREATE TABLE IF NOT EXISTS `ATTENDANCE_CODES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state_code` varchar(1) DEFAULT NULL,
  `default_code` varchar(1) DEFAULT NULL,
  `table_name` decimal(10,0) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attendance_codes_ind2` (`syear`,`school_id`) USING BTREE,
  KEY `attendance_codes_ind3` (`short_name`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ATTENDANCE_CODES`
--

INSERT INTO `ATTENDANCE_CODES` (`id`, `syear`, `school_id`, `title`, `short_name`, `type`, `state_code`, `default_code`, `table_name`, `sort_order`) VALUES
(1, '2009', '1', 'Absent', 'A', 'teacher', 'A', NULL, '0', '2'),
(2, '2009', '1', 'Vacation', 'V', 'official', 'A', NULL, '0', '7'),
(3, '2009', '1', 'Present', 'P', 'teacher', 'P', 'Y', '0', '1'),
(4, '2009', '1', 'Tardy', 'T', 'teacher', 'P', NULL, '0', '4'),
(5, '2009', '1', 'Less than 5 minutes late', 'L', 'teacher', 'P', NULL, '0', '3'),
(6, '2009', '1', 'Excused Absence', 'E', 'official', 'A', NULL, '0', '5'),
(7, '2009', '1', 'Sick', 'S', 'official', 'A', NULL, '0', '6');

-- --------------------------------------------------------

--
-- Table structure for table `ATTENDANCE_CODE_CATEGORIES`
--

CREATE TABLE IF NOT EXISTS `ATTENDANCE_CODE_CATEGORIES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attendance_code_categories_ind1` (`id`) USING BTREE,
  KEY `attendance_code_categories_ind2` (`syear`,`school_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ATTENDANCE_CODE_CATEGORIES`
--


-- --------------------------------------------------------

--
-- Table structure for table `ATTENDANCE_COMPLETED`
--

CREATE TABLE IF NOT EXISTS `ATTENDANCE_COMPLETED` (
  `staff_id` decimal(10,0) NOT NULL,
  `school_date` date NOT NULL,
  `period_id` decimal(10,0) NOT NULL,
  PRIMARY KEY (`staff_id`,`school_date`,`period_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ATTENDANCE_COMPLETED`
--

INSERT INTO `ATTENDANCE_COMPLETED` (`staff_id`, `school_date`, `period_id`) VALUES
('2', '2009-08-17', '8'),
('2', '2009-08-18', '8'),
('2', '2009-08-19', '8'),
('2', '2009-08-20', '8'),
('2', '2009-08-21', '8'),
('2', '2009-08-24', '8'),
('2', '2009-08-25', '8'),
('2', '2009-08-26', '8'),
('2', '2009-08-27', '8'),
('2', '2009-08-28', '8'),
('2', '2009-08-31', '8'),
('2', '2009-09-01', '8'),
('2', '2009-09-02', '8'),
('2', '2009-09-03', '8'),
('2', '2009-09-04', '8'),
('2', '2009-09-07', '8'),
('2', '2009-09-08', '8'),
('2', '2009-09-09', '8'),
('2', '2009-09-10', '8'),
('2', '2009-09-11', '8'),
('2', '2009-09-14', '8'),
('2', '2009-09-15', '8'),
('2', '2009-09-16', '8'),
('2', '2009-09-17', '8'),
('2', '2009-09-18', '8'),
('2', '2009-09-21', '8'),
('2', '2009-09-22', '8'),
('2', '2009-09-23', '8'),
('2', '2009-09-24', '8'),
('2', '2009-09-25', '8'),
('2', '2009-09-28', '8'),
('2', '2009-09-29', '8'),
('2', '2009-09-30', '8'),
('2', '2009-10-01', '8'),
('2', '2009-10-02', '8'),
('2', '2009-10-05', '8'),
('2', '2009-10-06', '8'),
('2', '2009-10-07', '8'),
('2', '2009-10-08', '8'),
('2', '2009-10-09', '8'),
('2', '2009-10-12', '8'),
('2', '2009-10-13', '8'),
('2', '2009-10-14', '8'),
('2', '2009-10-15', '8'),
('2', '2009-10-16', '8'),
('2', '2009-10-19', '8'),
('2', '2009-10-20', '8'),
('2', '2009-10-21', '8'),
('2', '2009-10-22', '8'),
('2', '2009-10-23', '8'),
('2', '2009-10-26', '8'),
('2', '2009-10-27', '8'),
('2', '2009-10-28', '8'),
('2', '2009-10-29', '8'),
('2', '2009-10-30', '8'),
('2', '2009-11-02', '8'),
('2', '2009-11-03', '8'),
('2', '2009-11-04', '8'),
('2', '2009-11-05', '8'),
('2', '2009-11-06', '8'),
('2', '2009-11-09', '8'),
('2', '2009-11-10', '8'),
('2', '2009-11-11', '8'),
('2', '2009-11-12', '8'),
('2', '2009-11-13', '8'),
('2', '2009-11-16', '8'),
('2', '2009-11-17', '8'),
('2', '2009-11-18', '8'),
('2', '2009-11-19', '8'),
('2', '2009-11-20', '8'),
('2', '2009-11-23', '8'),
('2', '2009-11-24', '8'),
('2', '2009-11-30', '8'),
('2', '2009-12-01', '8'),
('2', '2009-12-02', '8'),
('2', '2009-12-03', '8'),
('2', '2009-12-04', '8'),
('2', '2009-12-07', '8'),
('2', '2009-12-08', '8'),
('2', '2009-12-09', '8'),
('2', '2009-12-10', '8'),
('2', '2009-12-11', '8'),
('2', '2009-12-14', '8'),
('2', '2009-12-15', '8'),
('2', '2009-12-16', '8'),
('2', '2009-12-17', '8'),
('2', '2009-12-18', '8'),
('2', '2010-01-01', '8'),
('2', '2010-01-05', '8'),
('2', '2010-01-06', '8'),
('2', '2010-01-07', '8'),
('2', '2010-01-08', '8'),
('2', '2010-01-11', '8'),
('2', '2010-01-12', '8'),
('2', '2010-01-13', '8'),
('2', '2010-01-14', '8'),
('2', '2010-01-15', '8'),
('2', '2010-01-19', '8'),
('2', '2010-01-20', '8'),
('2', '2010-01-21', '8'),
('2', '2010-01-22', '8'),
('2', '2010-01-25', '8'),
('2', '2010-01-26', '8'),
('2', '2010-01-27', '8'),
('2', '2010-01-28', '8'),
('2', '2010-01-29', '8'),
('2', '2010-02-01', '8'),
('2', '2010-02-02', '8'),
('2', '2010-02-03', '8'),
('2', '2010-02-04', '8'),
('2', '2010-02-05', '8'),
('2', '2010-02-08', '8'),
('2', '2010-02-09', '8'),
('2', '2010-02-10', '8'),
('2', '2010-02-11', '8'),
('2', '2010-02-12', '8');

-- --------------------------------------------------------

--
-- Table structure for table `ATTENDANCE_DAY`
--

CREATE TABLE IF NOT EXISTS `ATTENDANCE_DAY` (
  `student_id` decimal(10,0) NOT NULL,
  `school_date` date NOT NULL,
  `minutes_present` decimal(10,0) DEFAULT NULL,
  `state_value` decimal(2,1) DEFAULT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`school_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ATTENDANCE_DAY`
--

INSERT INTO `ATTENDANCE_DAY` (`student_id`, `school_date`, `minutes_present`, `state_value`, `syear`, `marking_period_id`, `comment`) VALUES
('10', '2009-08-17', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-17', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-17', '420', '1.0', '2009', 3, NULL),
('3', '2009-08-17', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-17', '420', '1.0', '2009', 3, NULL),
('11', '2009-08-17', '420', '1.0', '2009', 3, NULL),
('12', '2009-08-17', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-17', '420', '1.0', '2009', 3, NULL),
('8', '2009-08-17', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-17', '420', '1.0', '2009', 3, NULL),
('10', '2009-08-18', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-18', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-18', '420', '1.0', '2009', 3, NULL),
('3', '2009-08-18', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-18', '420', '1.0', '2009', 3, NULL),
('11', '2009-08-18', '420', '1.0', '2009', 3, NULL),
('12', '2009-08-18', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-18', '420', '1.0', '2009', 3, NULL),
('8', '2009-08-18', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-18', '420', '1.0', '2009', 3, NULL),
('10', '2009-08-19', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-19', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-19', '0', '0.0', '2009', 3, NULL),
('3', '2009-08-19', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-19', '420', '1.0', '2009', 3, NULL),
('11', '2009-08-19', '420', '1.0', '2009', 3, NULL),
('12', '2009-08-19', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-19', '420', '1.0', '2009', 3, NULL),
('8', '2009-08-19', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-19', '420', '1.0', '2009', 3, NULL),
('10', '2009-08-20', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-20', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-20', '420', '1.0', '2009', 3, NULL),
('3', '2009-08-20', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-20', '420', '1.0', '2009', 3, NULL),
('11', '2009-08-20', '420', '1.0', '2009', 3, NULL),
('12', '2009-08-20', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-20', '420', '1.0', '2009', 3, NULL),
('8', '2009-08-20', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-20', '420', '1.0', '2009', 3, NULL),
('10', '2009-08-21', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-21', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-21', '420', '1.0', '2009', 3, NULL),
('3', '2009-08-21', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-21', '420', '1.0', '2009', 3, NULL),
('11', '2009-08-21', '420', '1.0', '2009', 3, NULL),
('12', '2009-08-21', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-21', '420', '1.0', '2009', 3, NULL),
('8', '2009-08-21', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-21', '420', '1.0', '2009', 3, NULL),
('10', '2009-08-24', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-24', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-24', '420', '1.0', '2009', 3, NULL),
('3', '2009-08-24', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-24', '420', '1.0', '2009', 3, NULL),
('11', '2009-08-24', '420', '1.0', '2009', 3, NULL),
('12', '2009-08-24', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-24', '420', '1.0', '2009', 3, NULL),
('8', '2009-08-24', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-24', '420', '1.0', '2009', 3, NULL),
('10', '2009-08-25', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-25', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-25', '420', '1.0', '2009', 3, NULL),
('3', '2009-08-25', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-25', '0', '0.0', '2009', 3, NULL),
('11', '2009-08-25', '420', '1.0', '2009', 3, NULL),
('12', '2009-08-25', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-25', '0', '0.0', '2009', 3, NULL),
('8', '2009-08-25', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-25', '420', '1.0', '2009', 3, NULL),
('10', '2009-08-26', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-26', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-26', '420', '1.0', '2009', 3, NULL),
('3', '2009-08-26', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-26', '420', '1.0', '2009', 3, NULL),
('11', '2009-08-26', '0', '0.0', '2009', 3, NULL),
('12', '2009-08-26', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-26', '420', '1.0', '2009', 3, NULL),
('8', '2009-08-26', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-26', '420', '1.0', '2009', 3, NULL),
('10', '2009-08-27', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-27', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-27', '420', '1.0', '2009', 3, NULL),
('3', '2009-08-27', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-27', '420', '1.0', '2009', 3, NULL),
('11', '2009-08-27', '420', '1.0', '2009', 3, NULL),
('12', '2009-08-27', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-27', '420', '1.0', '2009', 3, NULL),
('8', '2009-08-27', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-27', '420', '1.0', '2009', 3, NULL),
('10', '2009-08-28', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-28', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-28', '420', '1.0', '2009', 3, NULL),
('3', '2009-08-28', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-28', '420', '1.0', '2009', 3, NULL),
('11', '2009-08-28', '420', '1.0', '2009', 3, NULL),
('12', '2009-08-28', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-28', '420', '1.0', '2009', 3, NULL),
('8', '2009-08-28', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-28', '420', '1.0', '2009', 3, NULL),
('10', '2009-08-31', '420', '1.0', '2009', 3, NULL),
('6', '2009-08-31', '420', '1.0', '2009', 3, NULL),
('5', '2009-08-31', '420', '1.0', '2009', 3, NULL),
('3', '2009-08-31', '420', '1.0', '2009', 3, NULL),
('2', '2009-08-31', '420', '1.0', '2009', 3, NULL),
('11', '2009-08-31', '420', '1.0', '2009', 3, NULL),
('12', '2009-08-31', '420', '1.0', '2009', 3, NULL),
('9', '2009-08-31', '420', '1.0', '2009', 3, NULL),
('8', '2009-08-31', '420', '1.0', '2009', 3, NULL),
('1', '2009-08-31', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-01', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-01', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-01', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-01', '0', '0.0', '2009', 3, NULL),
('2', '2009-09-01', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-01', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-01', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-01', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-01', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-01', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-02', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-02', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-02', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-02', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-02', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-02', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-02', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-02', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-02', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-02', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-03', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-03', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-03', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-03', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-03', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-03', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-03', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-03', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-03', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-03', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-04', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-04', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-04', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-04', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-04', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-04', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-04', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-04', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-04', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-04', '0', '0.0', '2009', 3, NULL),
('10', '2009-09-07', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-07', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-07', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-07', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-07', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-07', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-07', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-07', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-07', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-07', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-08', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-08', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-08', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-08', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-08', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-08', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-08', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-08', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-08', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-08', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-09', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-09', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-09', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-09', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-09', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-09', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-09', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-09', '0', '0.0', '2009', 3, NULL),
('8', '2009-09-09', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-09', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-10', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-10', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-10', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-10', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-10', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-10', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-10', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-10', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-10', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-10', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-11', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-11', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-11', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-11', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-11', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-11', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-11', '0', '0.0', '2009', 3, NULL),
('9', '2009-09-11', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-11', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-11', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-14', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-14', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-14', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-14', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-14', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-14', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-14', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-14', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-14', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-14', '0', '0.0', '2009', 3, NULL),
('10', '2009-09-15', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-15', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-15', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-15', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-15', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-15', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-15', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-15', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-15', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-15', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-16', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-16', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-16', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-16', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-16', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-16', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-16', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-16', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-16', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-16', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-17', '0', '0.0', '2009', 3, NULL),
('6', '2009-09-17', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-17', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-17', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-17', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-17', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-17', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-17', '0', '0.0', '2009', 3, NULL),
('8', '2009-09-17', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-17', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-18', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-18', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-18', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-18', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-18', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-18', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-18', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-18', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-18', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-18', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-21', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-21', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-21', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-21', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-21', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-21', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-21', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-21', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-21', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-21', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-22', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-22', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-22', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-22', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-22', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-22', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-22', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-22', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-22', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-22', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-23', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-23', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-23', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-23', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-23', '0', '0.0', '2009', 3, NULL),
('11', '2009-09-23', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-23', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-23', '0', '0.0', '2009', 3, NULL),
('8', '2009-09-23', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-23', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-24', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-24', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-24', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-24', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-24', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-24', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-24', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-24', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-24', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-24', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-25', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-25', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-25', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-25', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-25', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-25', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-25', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-25', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-25', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-25', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-28', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-28', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-28', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-28', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-28', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-28', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-28', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-28', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-28', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-28', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-29', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-29', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-29', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-29', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-29', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-29', '420', '1.0', '2009', 3, NULL),
('12', '2009-09-29', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-29', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-29', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-29', '420', '1.0', '2009', 3, NULL),
('10', '2009-09-30', '420', '1.0', '2009', 3, NULL),
('6', '2009-09-30', '420', '1.0', '2009', 3, NULL),
('5', '2009-09-30', '420', '1.0', '2009', 3, NULL),
('3', '2009-09-30', '420', '1.0', '2009', 3, NULL),
('2', '2009-09-30', '420', '1.0', '2009', 3, NULL),
('11', '2009-09-30', '0', '0.0', '2009', 3, NULL),
('12', '2009-09-30', '420', '1.0', '2009', 3, NULL),
('9', '2009-09-30', '420', '1.0', '2009', 3, NULL),
('8', '2009-09-30', '420', '1.0', '2009', 3, NULL),
('1', '2009-09-30', '420', '1.0', '2009', 3, NULL),
('10', '2009-10-01', '420', '1.0', '2009', 3, NULL),
('6', '2009-10-01', '420', '1.0', '2009', 3, NULL),
('5', '2009-10-01', '420', '1.0', '2009', 3, NULL),
('3', '2009-10-01', '420', '1.0', '2009', 3, NULL),
('2', '2009-10-01', '420', '1.0', '2009', 3, NULL),
('11', '2009-10-01', '420', '1.0', '2009', 3, NULL),
('12', '2009-10-01', '420', '1.0', '2009', 3, NULL),
('9', '2009-10-01', '420', '1.0', '2009', 3, NULL),
('8', '2009-10-01', '420', '1.0', '2009', 3, NULL),
('1', '2009-10-01', '420', '1.0', '2009', 3, NULL),
('10', '2009-10-02', '420', '1.0', '2009', 3, NULL),
('6', '2009-10-02', '420', '1.0', '2009', 3, NULL),
('5', '2009-10-02', '420', '1.0', '2009', 3, NULL),
('3', '2009-10-02', '420', '1.0', '2009', 3, NULL),
('2', '2009-10-02', '420', '1.0', '2009', 3, NULL),
('11', '2009-10-02', '420', '1.0', '2009', 3, NULL),
('12', '2009-10-02', '420', '1.0', '2009', 3, NULL),
('9', '2009-10-02', '420', '1.0', '2009', 3, NULL),
('8', '2009-10-02', '420', '1.0', '2009', 3, NULL),
('1', '2009-10-02', '420', '1.0', '2009', 3, NULL),
('10', '2009-10-05', '0', '0.0', '2009', 3, NULL),
('6', '2009-10-05', '420', '1.0', '2009', 3, NULL),
('5', '2009-10-05', '420', '1.0', '2009', 3, NULL),
('3', '2009-10-05', '420', '1.0', '2009', 3, NULL),
('2', '2009-10-05', '420', '1.0', '2009', 3, NULL),
('11', '2009-10-05', '420', '1.0', '2009', 3, NULL),
('12', '2009-10-05', '420', '1.0', '2009', 3, NULL),
('9', '2009-10-05', '420', '1.0', '2009', 3, NULL),
('8', '2009-10-05', '420', '1.0', '2009', 3, NULL),
('1', '2009-10-05', '420', '1.0', '2009', 3, NULL),
('10', '2009-10-06', '420', '1.0', '2009', 3, NULL),
('6', '2009-10-06', '420', '1.0', '2009', 3, NULL),
('5', '2009-10-06', '420', '1.0', '2009', 3, NULL),
('3', '2009-10-06', '420', '1.0', '2009', 3, NULL),
('2', '2009-10-06', '420', '1.0', '2009', 3, NULL),
('11', '2009-10-06', '420', '1.0', '2009', 3, NULL),
('12', '2009-10-06', '420', '1.0', '2009', 3, NULL),
('9', '2009-10-06', '420', '1.0', '2009', 3, NULL),
('8', '2009-10-06', '0', '0.0', '2009', 3, NULL),
('1', '2009-10-06', '420', '1.0', '2009', 3, NULL),
('10', '2009-10-07', '420', '1.0', '2009', 3, NULL),
('6', '2009-10-07', '420', '1.0', '2009', 3, NULL),
('5', '2009-10-07', '420', '1.0', '2009', 3, NULL),
('3', '2009-10-07', '420', '1.0', '2009', 3, NULL),
('2', '2009-10-07', '420', '1.0', '2009', 3, NULL),
('11', '2009-10-07', '420', '1.0', '2009', 3, NULL),
('12', '2009-10-07', '420', '1.0', '2009', 3, NULL),
('9', '2009-10-07', '420', '1.0', '2009', 3, NULL),
('8', '2009-10-07', '420', '1.0', '2009', 3, NULL),
('1', '2009-10-07', '420', '1.0', '2009', 3, NULL),
('10', '2009-10-08', '420', '1.0', '2009', 3, NULL),
('6', '2009-10-08', '420', '1.0', '2009', 3, NULL),
('5', '2009-10-08', '420', '1.0', '2009', 3, NULL),
('3', '2009-10-08', '420', '1.0', '2009', 3, NULL),
('2', '2009-10-08', '420', '1.0', '2009', 3, NULL),
('11', '2009-10-08', '420', '1.0', '2009', 3, NULL),
('12', '2009-10-08', '420', '1.0', '2009', 3, NULL),
('9', '2009-10-08', '420', '1.0', '2009', 3, NULL),
('8', '2009-10-08', '420', '1.0', '2009', 3, NULL),
('1', '2009-10-08', '420', '1.0', '2009', 3, NULL),
('10', '2009-10-09', '420', '1.0', '2009', 3, NULL),
('6', '2009-10-09', '420', '1.0', '2009', 3, NULL),
('5', '2009-10-09', '420', '1.0', '2009', 3, NULL),
('3', '2009-10-09', '420', '1.0', '2009', 3, NULL),
('2', '2009-10-09', '420', '1.0', '2009', 3, NULL),
('11', '2009-10-09', '420', '1.0', '2009', 3, NULL),
('12', '2009-10-09', '420', '1.0', '2009', 3, NULL),
('9', '2009-10-09', '420', '1.0', '2009', 3, NULL),
('8', '2009-10-09', '420', '1.0', '2009', 3, NULL),
('1', '2009-10-09', '420', '1.0', '2009', 3, NULL),
('10', '2009-10-12', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-12', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-12', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-12', '0', '0.0', '2009', 4, NULL),
('2', '2009-10-12', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-12', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-12', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-12', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-12', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-12', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-13', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-13', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-13', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-13', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-13', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-13', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-13', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-13', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-13', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-13', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-14', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-14', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-14', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-14', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-14', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-14', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-14', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-14', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-14', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-14', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-15', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-15', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-15', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-15', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-15', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-15', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-15', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-15', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-15', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-15', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-16', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-16', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-16', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-16', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-16', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-16', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-16', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-16', '0', '0.0', '2009', 4, NULL),
('8', '2009-10-16', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-16', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-19', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-19', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-19', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-19', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-19', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-19', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-19', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-19', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-19', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-19', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-20', '0', '0.0', '2009', 4, NULL),
('6', '2009-10-20', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-20', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-20', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-20', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-20', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-20', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-20', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-20', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-20', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-21', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-21', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-21', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-21', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-21', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-21', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-21', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-21', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-21', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-21', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-22', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-22', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-22', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-22', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-22', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-22', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-22', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-22', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-22', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-22', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-23', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-23', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-23', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-23', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-23', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-23', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-23', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-23', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-23', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-23', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-26', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-26', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-26', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-26', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-26', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-26', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-26', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-26', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-26', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-26', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-27', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-27', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-27', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-27', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-27', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-27', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-27', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-27', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-27', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-27', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-28', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-28', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-28', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-28', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-28', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-28', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-28', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-28', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-28', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-28', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-29', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-29', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-29', '420', '1.0', '2009', 4, NULL),
('3', '2009-10-29', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-29', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-29', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-29', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-29', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-29', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-29', '420', '1.0', '2009', 4, NULL),
('10', '2009-10-30', '420', '1.0', '2009', 4, NULL),
('6', '2009-10-30', '420', '1.0', '2009', 4, NULL),
('5', '2009-10-30', '0', '0.0', '2009', 4, NULL),
('3', '2009-10-30', '420', '1.0', '2009', 4, NULL),
('2', '2009-10-30', '420', '1.0', '2009', 4, NULL),
('11', '2009-10-30', '420', '1.0', '2009', 4, NULL),
('12', '2009-10-30', '420', '1.0', '2009', 4, NULL),
('9', '2009-10-30', '420', '1.0', '2009', 4, NULL),
('8', '2009-10-30', '420', '1.0', '2009', 4, NULL),
('1', '2009-10-30', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-02', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-02', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-02', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-02', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-02', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-02', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-02', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-02', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-02', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-02', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-03', '0', '0.0', '2009', 4, NULL),
('6', '2009-11-03', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-03', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-03', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-03', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-03', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-03', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-03', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-03', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-03', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-04', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-04', '0', '0.0', '2009', 4, NULL),
('5', '2009-11-04', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-04', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-04', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-04', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-04', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-04', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-04', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-04', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-05', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-05', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-05', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-05', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-05', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-05', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-05', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-05', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-05', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-05', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-06', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-06', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-06', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-06', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-06', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-06', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-06', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-06', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-06', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-06', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-09', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-10', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-10', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-10', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-10', '0', '0.0', '2009', 4, NULL),
('3', '2009-11-10', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-10', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-10', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-10', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-10', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-10', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-10', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-11', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-12', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-13', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-16', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-17', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-18', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-19', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-20', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-23', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-23', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-23', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-23', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-23', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-23', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-23', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-23', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-23', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-23', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-23', '0', '0.0', '2009', 4, NULL),
('10', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-24', '420', '1.0', '2009', 4, NULL),
('10', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('6', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('4', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('5', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('3', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('2', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('11', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('12', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('9', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('8', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('1', '2009-11-30', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-01', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-02', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-03', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-03', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-03', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-03', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-03', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-03', '0', '0.0', '2009', 4, NULL),
('11', '2009-12-03', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-03', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-03', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-03', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-03', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-04', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-07', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('7', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-08', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('7', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-09', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-09', '0', '0.0', '2009', 4, NULL),
('10', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('7', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-10', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('7', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-11', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('7', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-14', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('7', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-15', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('7', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-16', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('7', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-17', '420', '1.0', '2009', 4, NULL),
('10', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('7', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('6', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('4', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('5', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('3', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('2', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('11', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('12', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('9', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('8', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('1', '2009-12-18', '420', '1.0', '2009', 4, NULL),
('10', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('7', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('6', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('4', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('5', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('3', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('2', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('11', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('12', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('9', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('8', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('1', '2010-01-01', '420', '1.0', '2009', 4, NULL),
('10', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('7', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('6', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('4', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('5', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('3', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('2', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('11', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('12', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('9', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('8', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('1', '2010-01-05', '420', '1.0', '2009', 4, NULL),
('10', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('7', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('6', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('4', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('5', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('3', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('2', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('11', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('12', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('9', '2010-01-06', '0', '0.0', '2009', 4, NULL),
('8', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('1', '2010-01-06', '420', '1.0', '2009', 4, NULL),
('10', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('7', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('6', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('4', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('5', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('3', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('2', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('11', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('12', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('9', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('8', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('1', '2010-01-07', '420', '1.0', '2009', 4, NULL),
('10', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('7', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('6', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('4', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('5', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('3', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('2', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('11', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('12', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('9', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('8', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('1', '2010-01-08', '420', '1.0', '2009', 4, NULL),
('10', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-11', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-12', '0', '0.0', '2009', 5, NULL),
('2', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-12', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-13', '420', '1.0', '2009', 5, NULL);
INSERT INTO `ATTENDANCE_DAY` (`student_id`, `school_date`, `minutes_present`, `state_value`, `syear`, `marking_period_id`, `comment`) VALUES
('6', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-13', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-14', '0', '0.0', '2009', 5, NULL),
('12', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-14', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-15', '0', '0.0', '2009', 5, NULL),
('8', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-15', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-19', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-20', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-21', '0', '0.0', '2009', 5, NULL),
('7', '2010-01-21', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-21', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-21', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-21', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-21', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-21', '0', '0.0', '2009', 5, NULL),
('11', '2010-01-21', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-21', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-21', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-21', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-21', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-22', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-25', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-26', '0', '0.0', '2009', 5, NULL),
('1', '2010-01-26', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-27', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-28', '420', '1.0', '2009', 5, NULL),
('10', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('7', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('6', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('4', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('5', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('3', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('2', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('11', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('12', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('9', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('8', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('1', '2010-01-29', '420', '1.0', '2009', 5, NULL),
('10', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('7', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('6', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('4', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('5', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('3', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('2', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('11', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('12', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('9', '2010-02-01', '0', '0.0', '2009', 5, NULL),
('8', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('1', '2010-02-01', '420', '1.0', '2009', 5, NULL),
('10', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('7', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('6', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('4', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('5', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('3', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('2', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('11', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('12', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('9', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('8', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('1', '2010-02-02', '420', '1.0', '2009', 5, NULL),
('10', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('7', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('6', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('4', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('5', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('3', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('2', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('11', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('12', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('9', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('8', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('1', '2010-02-03', '420', '1.0', '2009', 5, NULL),
('10', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('7', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('6', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('4', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('5', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('3', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('2', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('11', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('12', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('9', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('8', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('1', '2010-02-04', '420', '1.0', '2009', 5, NULL),
('10', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('7', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('6', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('4', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('5', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('3', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('2', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('11', '2010-02-05', '0', '0.0', '2009', 5, NULL),
('12', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('9', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('8', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('1', '2010-02-05', '420', '1.0', '2009', 5, NULL),
('10', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('7', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('6', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('4', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('5', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('3', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('2', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('11', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('12', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('9', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('8', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('1', '2010-02-08', '420', '1.0', '2009', 5, NULL),
('10', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('7', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('6', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('4', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('5', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('3', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('2', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('11', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('12', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('9', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('8', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('1', '2010-02-09', '420', '1.0', '2009', 5, NULL),
('10', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('7', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('6', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('4', '2010-02-10', '0', '0.0', '2009', 5, NULL),
('5', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('3', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('2', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('11', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('12', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('9', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('8', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('1', '2010-02-10', '420', '1.0', '2009', 5, NULL),
('10', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('7', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('6', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('4', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('5', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('3', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('2', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('11', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('12', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('9', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('8', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('1', '2010-02-11', '420', '1.0', '2009', 5, NULL),
('10', '2010-02-12', '420', '1.0', '2009', 5, NULL),
('7', '2010-02-12', '420', '1.0', '2009', 5, NULL),
('6', '2010-02-12', '420', '1.0', '2009', 5, NULL),
('4', '2010-02-12', '420', '1.0', '2009', 5, NULL),
('5', '2010-02-12', '420', '1.0', '2009', 5, NULL),
('3', '2010-02-12', '0', '0.0', '2009', 5, NULL),
('2', '2010-02-12', '420', '1.0', '2009', 5, NULL),
('11', '2010-02-12', '420', '1.0', '2009', 5, NULL),
('12', '2010-02-12', '420', '1.0', '2009', 5, NULL),
('9', '2010-02-12', '420', '1.0', '2009', 5, NULL),
('8', '2010-02-12', '0', '0.0', '2009', 5, NULL),
('1', '2010-02-12', '420', '1.0', '2009', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ATTENDANCE_PERIOD`
--

CREATE TABLE IF NOT EXISTS `ATTENDANCE_PERIOD` (
  `student_id` decimal(10,0) NOT NULL,
  `school_date` date NOT NULL,
  `period_id` decimal(10,0) NOT NULL,
  `attendance_code` decimal(10,0) DEFAULT NULL,
  `attendance_teacher_code` decimal(10,0) DEFAULT NULL,
  `attendance_reason` varchar(100) DEFAULT NULL,
  `admin` varchar(1) DEFAULT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`school_date`,`period_id`),
  KEY `attendance_period_ind1` (`student_id`) USING BTREE,
  KEY `attendance_period_ind2` (`period_id`) USING BTREE,
  KEY `attendance_period_ind3` (`attendance_code`) USING BTREE,
  KEY `attendance_period_ind4` (`school_date`) USING BTREE,
  KEY `attendance_period_ind5` (`attendance_code`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ATTENDANCE_PERIOD`
--

INSERT INTO `ATTENDANCE_PERIOD` (`student_id`, `school_date`, `period_id`, `attendance_code`, `attendance_teacher_code`, `attendance_reason`, `admin`, `course_period_id`, `marking_period_id`, `comment`) VALUES
('10', '2009-08-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-08-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-08-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-08-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-08-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-08-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-08-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-08-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-08-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-08-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-08-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-08-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-08-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-08-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-08-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-08-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-08-19', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-08-19', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-08-19', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('3', '2009-08-19', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-08-19', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-08-19', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-08-19', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-19', '8', '4', '4', NULL, NULL, '18', 3, NULL),
('8', '2009-08-19', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-19', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-08-20', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-08-20', '8', '5', '5', NULL, NULL, '18', 3, NULL),
('5', '2009-08-20', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-08-20', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-08-20', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-08-20', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-08-20', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-20', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-08-20', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-20', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-08-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-08-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-08-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-08-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-08-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-08-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-08-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-08-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-08-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-08-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-08-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-08-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-08-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-08-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-08-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-08-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-24', '8', '5', '5', NULL, NULL, '18', 3, NULL),
('10', '2009-08-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-08-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-08-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-08-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-08-25', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('11', '2009-08-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-08-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-25', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('8', '2009-08-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-08-26', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-08-26', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-08-26', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-08-26', '8', '5', '5', NULL, NULL, '18', 3, NULL),
('2', '2009-08-26', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-08-26', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('12', '2009-08-26', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-26', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-08-26', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-26', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-08-27', '8', '4', '4', NULL, NULL, '18', 3, NULL),
('6', '2009-08-27', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-08-27', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-08-27', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-08-27', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-08-27', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-08-27', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-27', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-08-27', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-27', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-08-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-08-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-08-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-08-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-08-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-08-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-08-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-08-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-08-31', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-08-31', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-08-31', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-08-31', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-08-31', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-08-31', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-08-31', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-08-31', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-08-31', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-08-31', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-01', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('2', '2009-09-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-01', '8', '4', '4', NULL, NULL, '18', 3, NULL),
('12', '2009-09-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-03', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-03', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-03', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-03', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-03', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-03', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-03', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-03', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-03', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-03', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-04', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-04', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-04', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-04', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-04', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-04', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-04', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-04', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-04', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-04', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('10', '2009-09-07', '8', '5', '5', NULL, NULL, '18', 3, NULL),
('6', '2009-09-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-07', '8', '5', '5', NULL, NULL, '18', 3, NULL),
('11', '2009-09-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-09', '8', '4', '4', NULL, NULL, '18', 3, NULL),
('3', '2009-09-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-09', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('8', '2009-09-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-10', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-10', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-10', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-10', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-10', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-10', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-10', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-10', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-10', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-10', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-11', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-11', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-11', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-11', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-11', '8', '5', '5', NULL, NULL, '18', 3, NULL),
('11', '2009-09-11', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-11', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('9', '2009-09-11', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-11', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-11', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-14', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-14', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-14', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-14', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-14', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-14', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-14', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-14', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-14', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-14', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('10', '2009-09-15', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-15', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-15', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-15', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-15', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-15', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-15', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-15', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-15', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-15', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-16', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-16', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-16', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-16', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-16', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-16', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-16', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-16', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-16', '8', '4', '4', NULL, NULL, '18', 3, NULL),
('1', '2009-09-16', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-17', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('6', '2009-09-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-17', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('8', '2009-09-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-17', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-18', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-21', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-22', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-22', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-22', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-22', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-22', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-22', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-22', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-22', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-22', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-22', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-23', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-23', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-23', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-23', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-23', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('11', '2009-09-23', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-23', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-23', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('8', '2009-09-23', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-23', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-24', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-25', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-28', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-29', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-29', '8', '5', '5', NULL, NULL, '18', 3, NULL),
('5', '2009-09-29', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-29', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-29', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-29', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-09-29', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-29', '8', '4', '4', NULL, NULL, '18', 3, NULL),
('8', '2009-09-29', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-29', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-09-30', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-09-30', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-09-30', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-09-30', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-09-30', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-09-30', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('12', '2009-09-30', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-09-30', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-09-30', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-09-30', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-10-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-10-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-10-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-10-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-10-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-10-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-10-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-10-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-10-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-10-01', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-10-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-10-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-10-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-10-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-10-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-10-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-10-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-10-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-10-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-10-02', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-10-05', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('6', '2009-10-05', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-10-05', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-10-05', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-10-05', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-10-05', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-10-05', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-10-05', '8', '4', '4', NULL, NULL, '18', 3, NULL),
('8', '2009-10-05', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-10-05', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-10-06', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-10-06', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-10-06', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-10-06', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-10-06', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-10-06', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-10-06', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-10-06', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-10-06', '8', '1', '1', NULL, NULL, '18', 3, NULL),
('1', '2009-10-06', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-10-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-10-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-10-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-10-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-10-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-10-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-10-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-10-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-10-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-10-07', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-10-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-10-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-10-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-10-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-10-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-10-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-10-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-10-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-10-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-10-08', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-10-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('6', '2009-10-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('5', '2009-10-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('3', '2009-10-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('2', '2009-10-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('11', '2009-10-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('12', '2009-10-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('9', '2009-10-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('8', '2009-10-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('1', '2009-10-09', '8', '3', '3', NULL, NULL, '18', 3, NULL),
('10', '2009-10-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-12', '8', '4', '4', NULL, NULL, '18', 4, NULL),
('5', '2009-10-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-12', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('2', '2009-10-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-12', '8', '4', '4', NULL, NULL, '18', 4, NULL),
('10', '2009-10-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-13', '8', '4', '4', NULL, NULL, '18', 4, NULL),
('2', '2009-10-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-13', '8', '5', '5', NULL, NULL, '18', 4, NULL),
('9', '2009-10-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-16', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('8', '2009-10-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-19', '8', '4', '4', NULL, NULL, '18', 4, NULL),
('6', '2009-10-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-20', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('6', '2009-10-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-21', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-21', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-21', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-21', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-21', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-21', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-21', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-21', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-21', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-21', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-22', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-22', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-22', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-22', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-22', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-22', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-22', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-22', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-22', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-22', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-26', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-26', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-26', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-26', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-26', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-26', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-26', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-26', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-26', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-26', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-27', '8', '4', '4', NULL, NULL, '18', 4, NULL),
('6', '2009-10-27', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-27', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-27', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-27', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-27', '8', '4', '4', NULL, NULL, '18', 4, NULL),
('12', '2009-10-27', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-27', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-27', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-27', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-28', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-28', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-28', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-28', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-28', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-28', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-28', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-28', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-28', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-28', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-29', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-29', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-29', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-10-29', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-29', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-29', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-29', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-29', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-29', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-29', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-10-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-10-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-10-30', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('3', '2009-10-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-10-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-10-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-10-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-10-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-10-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-10-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-03', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('6', '2009-11-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-03', '8', '5', '5', NULL, NULL, '18', 4, NULL),
('11', '2009-11-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-04', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('5', '2009-11-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-10', '8', '5', '5', NULL, NULL, '18', 4, NULL),
('4', '2009-11-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-10', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('3', '2009-11-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-10', '8', '4', '4', NULL, NULL, '18', 4, NULL),
('9', '2009-11-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-12', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-13', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-19', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-20', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-23', '8', '4', '4', NULL, NULL, '18', 4, NULL),
('5', '2009-11-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-23', '8', '4', '4', NULL, NULL, '18', 4, NULL),
('9', '2009-11-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-23', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-23', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('10', '2009-11-24', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-24', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-24', '8', '5', '5', NULL, NULL, '18', 4, NULL),
('5', '2009-11-24', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-24', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-24', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-24', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-24', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-24', '8', '5', '5', NULL, NULL, '18', 4, NULL),
('8', '2009-11-24', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-24', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-11-30', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-01', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-02', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-03', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('11', '2009-12-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-03', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-04', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2009-12-09', '8', '3', '3', NULL, NULL, '18', 4, NULL);
INSERT INTO `ATTENDANCE_PERIOD` (`student_id`, `school_date`, `period_id`, `attendance_code`, `attendance_teacher_code`, `attendance_reason`, `admin`, `course_period_id`, `marking_period_id`, `comment`) VALUES
('6', '2009-12-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-09', '8', '5', '5', NULL, NULL, '18', 4, NULL),
('3', '2009-12-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-09', '8', '4', '4', NULL, NULL, '18', 4, NULL),
('12', '2009-12-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-09', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-09', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('10', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-10', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-11', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-14', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-15', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-16', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-17', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2009-12-18', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('7', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('6', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('4', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('5', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('3', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('2', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('11', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('12', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('9', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('8', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('1', '2010-01-01', '8', NULL, '3', NULL, 'Y', '18', 4, NULL),
('10', '2010-01-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2010-01-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2010-01-05', '8', '5', '5', NULL, NULL, '18', 4, NULL),
('4', '2010-01-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2010-01-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2010-01-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2010-01-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2010-01-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2010-01-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2010-01-05', '8', '5', '5', NULL, NULL, '18', 4, NULL),
('8', '2010-01-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2010-01-05', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2010-01-06', '8', '1', '1', NULL, NULL, '18', 4, NULL),
('8', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2010-01-06', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2010-01-07', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('7', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('6', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('4', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('5', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('3', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('2', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('11', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('12', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('9', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('8', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('1', '2010-01-08', '8', '3', '3', NULL, NULL, '18', 4, NULL),
('10', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-12', '8', '4', '4', NULL, NULL, '18', 5, NULL),
('5', '2010-01-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-12', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('2', '2010-01-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-12', '8', '5', '5', NULL, NULL, '18', 5, NULL),
('8', '2010-01-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-13', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-14', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-14', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-14', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-14', '8', '4', '4', NULL, NULL, '18', 5, NULL),
('5', '2010-01-14', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-14', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-14', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-14', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('12', '2010-01-14', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-14', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-14', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-14', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-15', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('8', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-15', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-19', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-20', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-21', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('7', '2010-01-21', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-21', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-21', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-21', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-21', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-21', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('11', '2010-01-21', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-21', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-21', '8', '5', '5', NULL, NULL, '18', 5, NULL),
('8', '2010-01-21', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-21', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-22', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-25', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-26', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('1', '2010-01-26', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-27', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-27', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-27', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-27', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-27', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-27', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-27', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-27', '8', '5', '5', NULL, NULL, '18', 5, NULL),
('12', '2010-01-27', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-27', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-27', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-27', '8', '4', '4', NULL, NULL, '18', 5, NULL),
('10', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-28', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-01-29', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-02-01', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('8', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-02-01', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-02-02', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-02-03', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-02-04', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-02-05', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('12', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-02-05', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-02-08', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-02-09', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-02-10', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-02-10', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-02-10', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-02-10', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('5', '2010-02-10', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-02-10', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-02-10', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-02-10', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-02-10', '8', '5', '5', NULL, NULL, '18', 5, NULL),
('9', '2010-02-10', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-02-10', '8', '4', '4', NULL, NULL, '18', 5, NULL),
('1', '2010-02-10', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('2', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('8', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('1', '2010-02-11', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('10', '2010-02-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('7', '2010-02-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('6', '2010-02-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('4', '2010-02-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('5', '2010-02-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('3', '2010-02-12', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('2', '2010-02-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('11', '2010-02-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('12', '2010-02-12', '8', '3', '3', NULL, NULL, '18', 5, NULL),
('9', '2010-02-12', '8', '4', '4', NULL, NULL, '18', 5, NULL),
('8', '2010-02-12', '8', '1', '1', NULL, NULL, '18', 5, NULL),
('1', '2010-02-12', '8', '3', '3', NULL, NULL, '18', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CALENDAR_EVENTS`
--

CREATE TABLE IF NOT EXISTS `CALENDAR_EVENTS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `school_date` date DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `CALENDAR_EVENTS`
--

INSERT INTO `CALENDAR_EVENTS` (`id`, `syear`, `school_id`, `school_date`, `title`, `description`) VALUES
(1, '2009', '1', '2009-11-25', 'Thanksgiving Holiday', 'No School'),
(2, '2009', '1', '2009-11-26', 'Thanksgiving Holiday', 'No School'),
(3, '2009', '1', '2009-11-27', 'Thanksgiving Holiday', 'No School'),
(4, '2009', '1', '2009-12-21', 'Christmas Holiday Begins', 'Christmas Holiday Begins'),
(5, '2009', '1', '2010-01-04', 'Christmas Holiday Ends', 'Christmas Holiday Ends'),
(6, '2009', '1', '2010-01-05', 'First day of school ', 'First day of school '),
(7, '2009', '1', '2010-01-18', 'MLK Birthday', 'No School'),
(8, '2009', '1', '2010-04-05', 'Spring Break ', NULL),
(9, '2009', '1', '2010-04-06', 'Spring Break ', NULL),
(10, '2009', '1', '2010-04-07', 'Spring Break ', NULL),
(11, '2009', '1', '2010-04-08', 'Spring Break ', NULL),
(12, '2009', '1', '2010-04-09', 'Spring Break ', NULL),
(13, '2009', '1', '2010-05-28', 'Last day of school', NULL),
(14, '2009', '1', '2010-05-27', 'Early release', NULL),
(15, '2009', '1', '2010-05-26', 'Early release', NULL),
(16, '2009', '3', '2010-06-01', 'Project List', 'Submit your proposed projects');

-- --------------------------------------------------------

--
-- Table structure for table `CONFIG`
--

CREATE TABLE IF NOT EXISTS `CONFIG` (
  `title` varchar(100) DEFAULT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `login` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CONFIG`
--

INSERT INTO `CONFIG` (`title`, `syear`, `login`) VALUES
('Opensis Student Information System', '2008', 'Y'),
('Opensis Student Information System', '2009', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `COURSES`
--

CREATE TABLE IF NOT EXISTS `COURSES` (
  `syear` decimal(4,0) NOT NULL,
  `course_id` int(8) NOT NULL AUTO_INCREMENT,
  `subject_id` decimal(10,0) NOT NULL,
  `school_id` decimal(10,0) NOT NULL,
  `grade_level` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_name` varchar(25) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `courses_ind1` (`course_id`,`syear`) USING BTREE,
  KEY `courses_ind2` (`subject_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `COURSES`
--

INSERT INTO `COURSES` (`syear`, `course_id`, `subject_id`, `school_id`, `grade_level`, `title`, `short_name`, `rollover_id`) VALUES
('2009', 1, '5', '1', NULL, 'Music', 'Mu', NULL),
('2009', 16, '8', '1', NULL, 'Home Room', 'HR', NULL),
('2009', 15, '4', '1', NULL, 'Chemistry', 'Chem', NULL),
('2009', 4, '1', '1', NULL, 'English', 'Eng', NULL),
('2009', 8, '2', '1', NULL, 'EveryDayMath', 'EDM', NULL),
('2009', 9, '4', '1', NULL, 'GeoScience', 'GSCI', NULL),
('2009', 10, '4', '1', NULL, 'Physics', 'Phy', NULL),
('2009', 11, '3', '1', NULL, 'US History', 'USH', NULL),
('2009', 12, '3', '1', NULL, 'World History', 'WH', NULL),
('2009', 13, '7', '1', NULL, 'Study Hall Tactics', 'SHT', NULL),
('2009', 14, '7', '1', NULL, 'Library Skills', 'LS', NULL),
('2009', 17, '10', '3', NULL, 'Code Division Multiplexing', 'CDMA', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `COURSE_DETAILS`
--
CREATE TABLE IF NOT EXISTS `COURSE_DETAILS` (
`school_id` decimal(10,0)
,`syear` decimal(4,0)
,`marking_period_id` int(11)
,`period_id` decimal(10,0)
,`subject_id` decimal(10,0)
,`course_id` decimal(10,0)
,`course_period_id` int(8)
,`teacher_id` decimal(10,0)
,`course_title` varchar(100)
,`cp_title` varchar(100)
,`grade_scale_id` decimal(10,0)
,`mp` varchar(3)
,`credits` decimal(10,3)
);
-- --------------------------------------------------------

--
-- Table structure for table `COURSE_PERIODS`
--

CREATE TABLE IF NOT EXISTS `COURSE_PERIODS` (
  `syear` decimal(4,0) NOT NULL,
  `school_id` decimal(10,0) NOT NULL,
  `course_period_id` int(8) NOT NULL AUTO_INCREMENT,
  `course_id` decimal(10,0) NOT NULL,
  `course_weight` varchar(10) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_name` varchar(25) DEFAULT NULL,
  `period_id` decimal(10,0) DEFAULT NULL,
  `mp` varchar(3) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `teacher_id` decimal(10,0) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `total_seats` decimal(10,0) DEFAULT NULL,
  `filled_seats` decimal(10,0) DEFAULT '0',
  `does_attendance` varchar(1) DEFAULT NULL,
  `does_honor_roll` varchar(1) DEFAULT NULL,
  `does_class_rank` varchar(1) DEFAULT NULL,
  `gender_restriction` varchar(1) DEFAULT NULL,
  `house_restriction` varchar(1) DEFAULT NULL,
  `availability` decimal(10,0) DEFAULT NULL,
  `parent_id` decimal(10,0) DEFAULT NULL,
  `days` varchar(7) DEFAULT NULL,
  `calendar_id` decimal(10,0) DEFAULT NULL,
  `half_day` varchar(1) DEFAULT NULL,
  `does_breakoff` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  `grade_scale_id` decimal(10,0) DEFAULT NULL,
  `credits` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`course_period_id`),
  KEY `course_periods_ind1` (`syear`) USING BTREE,
  KEY `course_periods_ind2` (`course_id`,`course_weight`,`syear`,`school_id`) USING BTREE,
  KEY `course_periods_ind3` (`course_period_id`) USING BTREE,
  KEY `course_periods_ind4` (`period_id`) USING BTREE,
  KEY `course_periods_ind5` (`parent_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `COURSE_PERIODS`
--

INSERT INTO `COURSE_PERIODS` (`syear`, `school_id`, `course_period_id`, `course_id`, `course_weight`, `title`, `short_name`, `period_id`, `mp`, `marking_period_id`, `teacher_id`, `room`, `total_seats`, `filled_seats`, `does_attendance`, `does_honor_roll`, `does_class_rank`, `gender_restriction`, `house_restriction`, `availability`, `parent_id`, `days`, `calendar_id`, `half_day`, `does_breakoff`, `rollover_id`, `grade_scale_id`, `credits`) VALUES
('2009', '1', 1, '14', NULL, 'Period 7 - Q3 - Lib101 - Mary M Jones', 'Lib101', '7', 'QTR', 5, '2', 'Library', '24', '12', NULL, NULL, NULL, 'N', NULL, NULL, '1', 'MTWHF', '1', NULL, NULL, NULL, '1', '3.000'),
('2009', '1', 2, '11', NULL, 'Period 6 - Q1 - USH1 - Derrick  Holland', 'USH1', '6', 'QTR', 3, '4', 'SS101', '24', '10', NULL, 'Y', 'Y', 'N', NULL, NULL, '2', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 3, '9', NULL, 'Period 5 - Q1 - GeoSci1 - Sandra  Wilcox', 'GeoSci1', '5', 'QTR', 3, '5', 'SCI101', '24', '10', NULL, 'Y', 'Y', 'N', NULL, NULL, '3', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 4, '8', NULL, 'Period 4 - Q1 - EDM1 - Jacob A Donoldson', 'EDM1', '4', 'QTR', 3, '6', 'M101', '24', '10', NULL, 'Y', 'Y', 'N', NULL, NULL, '4', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 8, '4', NULL, 'Period 3 - Reading - Derrick  Holland', 'Reading', '3', 'FY', 11, '4', '100', '24', '12', NULL, 'Y', 'Y', 'N', NULL, NULL, '8', 'MTWHF', '1', NULL, NULL, NULL, '1', '3.000'),
('2009', '1', 6, '4', NULL, 'Period 2 - Writing - Mary M Teacher', 'Writing', '2', 'FY', 11, '2', 'lang 101', '24', '12', NULL, NULL, NULL, 'N', NULL, NULL, '6', 'MTWHF', '1', NULL, NULL, NULL, '1', '3.000'),
('2009', '1', 7, '1', NULL, 'Period 1 - Q1 - Mu1 - Mary M Teacher', 'Mu1', '1', 'QTR', 3, '2', 'Mu101', '24', '10', NULL, NULL, 'Y', 'N', NULL, NULL, '3', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 9, '8', NULL, 'Period 4 - Q2 - Algebra1 - Jacob A Donoldson', 'Algebra1', '4', 'QTR', 4, '6', 'M101', '24', '12', NULL, 'Y', 'Y', 'N', NULL, NULL, '9', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 10, '8', NULL, 'Period 4 - Q3 - Algebra2 - Jacob A Donoldson', 'Algebra2', '4', 'QTR', 5, '6', 'M101', '24', '10', NULL, 'Y', 'Y', 'N', NULL, NULL, '10', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 11, '8', NULL, 'Period 4 - Q4 - Calculus - Jacob A Donoldson', 'Calculus', '4', 'QTR', 6, '6', 'M101', '24', '0', NULL, 'Y', 'Y', 'N', NULL, NULL, '11', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 12, '13', NULL, 'Period 7 - Q4 - SHT - Mary M Jones', 'SHT', '7', 'QTR', 6, '2', 'Library', '24', '0', NULL, 'Y', 'Y', 'N', NULL, NULL, '12', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 13, '11', NULL, 'Period 6 - Q2 - USH2 - Derrick  Holland', 'USH2', '6', 'QTR', 4, '4', 'SS101', '24', '12', NULL, NULL, 'Y', 'N', NULL, NULL, '13', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 14, '12', NULL, 'Period 6 - Q3 - WH1 - Derrick  Holland', 'WH1', '6', 'QTR', 5, '4', 'SS101', '24', '12', NULL, 'Y', 'Y', 'N', NULL, NULL, '14', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 15, '12', NULL, 'Period 6 - Q4 - WH2 - Derrick  Holland', 'WH2', '6', 'QTR', 6, '4', 'SS101', '24', '0', NULL, 'Y', 'Y', 'N', NULL, NULL, '15', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 16, '10', NULL, 'Period 5 - Q3 - Phy101 - Sandra  Wilcox', 'Phy101', '5', 'QTR', 5, '5', 'SC302', '24', '12', NULL, 'Y', 'Y', 'N', NULL, NULL, '16', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 17, '15', NULL, 'Period 5 - Q4 - Chemistry 101 - Sandra  Wilcox', 'Chemistry 101', '5', 'QTR', 6, '5', 'SC302', '24', '0', NULL, 'Y', 'Y', 'N', NULL, NULL, '17', 'MTWHF', '1', NULL, NULL, NULL, '1', '0.750'),
('2009', '1', 18, '16', NULL, 'Home Room - HR - Mary M Jones', 'HR', '8', 'FY', 11, '2', '100', '25', '12', 'Y', NULL, NULL, 'N', NULL, NULL, '18', 'MTWHF', '1', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `COURSE_SUBJECTS`
--

CREATE TABLE IF NOT EXISTS `COURSE_SUBJECTS` (
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `subject_id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `short_name` varchar(25) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`subject_id`),
  KEY `course_subjects_ind1` (`syear`,`school_id`,`subject_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `COURSE_SUBJECTS`
--

INSERT INTO `COURSE_SUBJECTS` (`syear`, `school_id`, `subject_id`, `title`, `short_name`, `rollover_id`) VALUES
('2009', '1', 1, 'Languages', NULL, NULL),
('2009', '1', 2, 'Mathematics', NULL, NULL),
('2009', '1', 3, 'Social Studies', NULL, NULL),
('2009', '1', 4, 'Sciences', NULL, NULL),
('2009', '1', 5, 'Arts', NULL, NULL),
('2009', '1', 8, 'Home Room Attendance', NULL, NULL),
('2009', '1', 7, 'Study Skills', NULL, NULL),
('2009', '3', 9, 'Computer Networks', NULL, NULL),
('2009', '3', 10, 'Communications Technology', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOM`
--

CREATE TABLE IF NOT EXISTS `CUSTOM` (
  `student_id` int(8) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`student_id`),
  KEY `custom_ind` (`student_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `CUSTOM`
--


-- --------------------------------------------------------

--
-- Table structure for table `CUSTOM_FIELDS`
--

CREATE TABLE IF NOT EXISTS `CUSTOM_FIELDS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `search` varchar(1) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `select_options` varchar(10000) DEFAULT NULL,
  `category_id` decimal(10,0) DEFAULT NULL,
  `system_field` char(1) DEFAULT NULL,
  `required` varchar(1) DEFAULT NULL,
  `default_selection` varchar(255) DEFAULT NULL,
  `hide` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_desc_ind2` (`type`) USING BTREE,
  KEY `address_fields_ind3` (`category_id`) USING BTREE,
  KEY `custom_desc_ind` (`id`) USING BTREE,
  KEY `custom_desc_ind2` (`type`) USING BTREE,
  KEY `custom_fields_ind3` (`category_id`) USING BTREE,
  KEY `people_desc_ind2` (`type`) USING BTREE,
  KEY `people_fields_ind3` (`category_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `CUSTOM_FIELDS`
--


-- --------------------------------------------------------

--
-- Table structure for table `ELIGIBILITY`
--

CREATE TABLE IF NOT EXISTS `ELIGIBILITY` (
  `student_id` decimal(10,0) DEFAULT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_date` date DEFAULT NULL,
  `period_id` decimal(10,0) DEFAULT NULL,
  `eligibility_code` varchar(20) DEFAULT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  KEY `eligibility_ind1` (`student_id`,`course_period_id`,`school_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ELIGIBILITY`
--


-- --------------------------------------------------------

--
-- Table structure for table `ELIGIBILITY_ACTIVITIES`
--

CREATE TABLE IF NOT EXISTS `ELIGIBILITY_ACTIVITIES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eligibility_activities_ind1` (`school_id`,`syear`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ELIGIBILITY_ACTIVITIES`
--

INSERT INTO `ELIGIBILITY_ACTIVITIES` (`id`, `syear`, `school_id`, `title`, `start_date`, `end_date`) VALUES
(1, '2008', '1', 'Boy''s Basketball', '2008-01-01', '2008-04-14'),
(2, '2008', '1', 'Chess Team', '2008-09-01', '2008-06-04'),
(3, '2008', '1', 'Girl''s Basketball', '2008-01-01', '2008-04-15'),
(4, '2009', '1', 'test', '2009-07-01', '2009-07-12'),
(5, '2009', '1', 'new ', '2009-07-01', '2009-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `ELIGIBILITY_COMPLETED`
--

CREATE TABLE IF NOT EXISTS `ELIGIBILITY_COMPLETED` (
  `staff_id` decimal(10,0) NOT NULL,
  `school_date` date NOT NULL,
  `period_id` decimal(10,0) NOT NULL,
  PRIMARY KEY (`staff_id`,`school_date`,`period_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ELIGIBILITY_COMPLETED`
--

INSERT INTO `ELIGIBILITY_COMPLETED` (`staff_id`, `school_date`, `period_id`) VALUES
('2', '2009-08-17', '1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ENROLL_GRADE`
--
CREATE TABLE IF NOT EXISTS `ENROLL_GRADE` (
`id` int(8)
,`syear` decimal(4,0)
,`school_id` decimal(10,0)
,`student_id` decimal(10,0)
,`start_date` date
,`end_date` date
,`short_name` varchar(2)
,`title` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `FAILURE_COUNT`
--

CREATE TABLE IF NOT EXISTS `FAILURE_COUNT` (
  `fail_count` decimal(5,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FAILURE_COUNT`
--


-- --------------------------------------------------------

--
-- Table structure for table `GOAL`
--

CREATE TABLE IF NOT EXISTS `GOAL` (
  `goal_id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) NOT NULL,
  `goal_title` varchar(100) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal_description` text,
  `school_id` decimal(10,0) DEFAULT NULL,
  `syear` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`goal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `GOAL`
--


-- --------------------------------------------------------

--
-- Table structure for table `GRADEBOOK_ASSIGNMENTS`
--

CREATE TABLE IF NOT EXISTS `GRADEBOOK_ASSIGNMENTS` (
  `assignment_id` int(8) NOT NULL AUTO_INCREMENT,
  `staff_id` decimal(10,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  `course_id` decimal(10,0) DEFAULT NULL,
  `assignment_type_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `assigned_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `points` decimal(10,0) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `ungraded` int(8) NOT NULL DEFAULT '1',
  PRIMARY KEY (`assignment_id`),
  KEY `gradebook_assignment_types_ind1` (`staff_id`,`course_id`) USING BTREE,
  KEY `gradebook_assignments_ind1` (`staff_id`,`marking_period_id`) USING BTREE,
  KEY `gradebook_assignments_ind2` (`course_id`,`course_period_id`) USING BTREE,
  KEY `gradebook_assignments_ind3` (`assignment_type_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `GRADEBOOK_ASSIGNMENTS`
--

INSERT INTO `GRADEBOOK_ASSIGNMENTS` (`assignment_id`, `staff_id`, `marking_period_id`, `course_period_id`, `course_id`, `assignment_type_id`, `title`, `assigned_date`, `due_date`, `points`, `description`, `ungraded`) VALUES
(1, '2', 3, '7', NULL, '3', 'T1', '2009-09-22', '2009-09-22', '100', 'test on scales', 1),
(2, '2', 3, '7', NULL, '3', 'T2', '2009-10-06', '2009-10-06', '25', 'test on Fur Elise', 1),
(5, '2', 3, '7', NULL, '2', 'Q1', '2009-08-28', '2009-08-28', '25', 'quiz on notation', 1),
(6, '2', 3, '7', NULL, '2', 'Q2', '2009-09-25', '2009-09-25', '25', 'music theory', 1),
(9, '2', 3, '7', NULL, '1', 'H1', '2009-08-17', '2009-08-20', '10', 'study notations and practice writing 3 pages of notation from step by step book', 1),
(10, '2', 3, '7', NULL, '1', 'H2', '2009-09-07', '2009-09-11', '10', 'record 20 minutes of practice and bring it in a flash drive as mp3 file', 1),
(11, '2', 3, '7', NULL, '1', 'H3', '2009-10-11', '2009-10-16', '10', 'Learn to play Section A and B of Fur Elise', 1),
(71, '2', 3, '6', NULL, '4', 'Chapter 1 and 2 of textbook', '2009-08-26', '2009-08-28', '20', 'Answer questions on chapter 1 and 2. All evens.', 2),
(19, '2', 3, '5', NULL, '9', 'T1', '2009-08-17', NULL, '25', NULL, 2),
(20, '2', 3, '5', NULL, '9', 'T2', '2009-08-17', NULL, '25', NULL, 2),
(21, '2', 3, '5', NULL, '9', 'T3', '2009-08-17', NULL, '25', NULL, 2),
(22, '2', 3, '5', NULL, '9', 'T4', '2009-08-17', NULL, '25', NULL, 2),
(23, '2', 3, '5', NULL, '8', 'Q1', '2009-08-17', NULL, '25', NULL, 2),
(24, '2', 3, '5', NULL, '8', 'Q2', '2009-08-17', NULL, '25', NULL, 2),
(25, '2', 3, '5', NULL, '8', 'Q3', '2009-08-17', NULL, '25', NULL, 1),
(26, '2', 3, '5', NULL, '8', 'Q4', '2009-08-17', NULL, '25', NULL, 1),
(27, '2', 3, '5', NULL, '7', 'H1', '2009-08-17', NULL, '20', NULL, 1),
(28, '2', 3, '5', NULL, '7', 'H2', '2009-08-17', NULL, '20', NULL, 1),
(29, '2', 3, '5', NULL, '7', 'H3', '2009-08-17', NULL, '20', NULL, 1),
(30, '2', 3, '5', NULL, '7', 'H4', '2009-08-17', NULL, '20', NULL, 1),
(31, '2', 3, '5', NULL, '7', 'H5', '2009-08-17', NULL, '20', NULL, 1),
(32, '2', 3, '4', NULL, '7', 'H1', '2009-08-17', NULL, '20', NULL, 1),
(33, '2', 3, '4', NULL, '7', 'H2', '2009-08-17', NULL, '20', NULL, 1),
(34, '2', 3, '4', NULL, '7', 'H3', '2009-08-17', NULL, '20', NULL, 1),
(35, '2', 3, '4', NULL, '7', 'H4', '2009-08-17', NULL, '20', NULL, 1),
(36, '2', 3, '4', NULL, '7', 'H5', '2009-06-27', NULL, '20', NULL, 1),
(37, '2', 3, '4', NULL, '8', 'Q1', '2009-08-17', NULL, '25', NULL, 1),
(38, '2', 3, '4', NULL, '8', 'Q2', '2009-08-17', NULL, '25', NULL, 1),
(39, '2', 3, '4', NULL, '8', 'Q3', '2009-08-17', NULL, '25', NULL, 1),
(40, '2', 3, '4', NULL, '8', 'Q4', '2009-08-17', NULL, '25', NULL, 1),
(41, '2', 3, '4', NULL, '9', 'T1', '2009-08-17', NULL, '25', NULL, 1),
(42, '2', 3, '4', NULL, '9', 'T2', '2009-08-17', NULL, '25', NULL, 1),
(43, '2', 3, '4', NULL, '9', 'T3', '2009-08-17', NULL, '25', NULL, 1),
(44, '2', 3, '4', NULL, '9', 'T4', '2009-08-17', NULL, '25', NULL, 1),
(45, '2', 3, '2', NULL, '13', 'H1', '2009-08-17', NULL, '20', NULL, 1),
(46, '2', 3, '2', NULL, '13', 'H2', '2009-08-17', NULL, '20', NULL, 1),
(47, '2', 3, '2', NULL, '13', 'H3', '2009-08-17', NULL, '20', NULL, 1),
(48, '2', 3, '2', NULL, '13', 'H4', '2009-08-17', NULL, '20', NULL, 1),
(49, '2', 3, '2', NULL, '13', 'H5', '2009-08-17', NULL, '20', NULL, 1),
(50, '2', 3, '2', NULL, '14', 'Q1', '2009-08-17', NULL, '25', NULL, 1),
(51, '2', 3, '2', NULL, '14', 'Q2', '2009-08-17', NULL, '25', NULL, 1),
(52, '2', 3, '2', NULL, '14', 'Q3', '2009-08-17', NULL, '25', NULL, 1),
(53, '2', 3, '2', NULL, '14', 'Q4', '2009-08-17', NULL, '25', NULL, 1),
(54, '2', 3, '2', NULL, '15', 'T1', '2009-08-17', NULL, '25', NULL, 1),
(55, '2', 3, '2', NULL, '15', 'T2', '2009-08-17', NULL, '25', NULL, 1),
(56, '2', 3, '2', NULL, '15', 'T3', '2009-08-17', NULL, '25', NULL, 1),
(57, '2', 3, '2', NULL, '15', 'T4', '2009-08-17', NULL, '25', NULL, 1),
(58, '2', 3, '1', NULL, '16', 'H1', '2009-08-17', '2009-08-21', '20', 'write one page about effective search tactics for library materials ', 1),
(63, '2', 3, '1', NULL, '17', 'Q1', '2009-08-28', '2009-08-28', '25', 'basics of library', 1),
(64, '2', 3, '1', NULL, '17', 'Q2', '2009-09-18', '2009-09-18', '25', 'introduction to multi-media', 1),
(73, '2', 3, '6', NULL, '6', 'Chapter 1 thru 5', '2009-09-14', '2009-09-14', '200', 'test on chapter 1 thru 5', 2),
(67, '2', 3, '1', NULL, '18', 'T1', '2009-10-05', '2009-10-05', '200', 'test on library skills', 1),
(74, '2', 5, '6', NULL, '4', 'HW1', '2010-01-13', '2010-01-15', '10', 'Read chapter 8 and answer all questions at the end of the chapter', 2),
(72, '2', 3, '6', NULL, '5', 'Chapter 1 quiz', '2009-09-09', '2009-09-09', '25', 'quiz on chapter 1', 2),
(75, '2', 5, '6', NULL, '4', 'HW 2', '2010-02-01', '2010-02-05', '20', 'project on T. S. Elliott', 2),
(76, '2', 5, '6', NULL, '5', 'Q1', '2010-02-03', '2010-02-03', '50', 'quiz on chapter 8', 2),
(77, '2', 5, '6', NULL, '5', 'Q2', '2010-02-10', '2010-02-10', '50', 'quiz on chapter 10', 2),
(78, '2', 5, '6', NULL, '6', 'Test 1', '2010-02-11', '2010-02-11', '200', 'Test on chapters 1 - 8', 2),
(79, '2', 5, '6', NULL, '4', 'HW 3', '2010-02-23', '2010-02-26', '20', 'Essay on Christmas vacation', 2),
(80, '2', 5, '1', NULL, '16', 'HW 1', '2010-02-02', '2010-02-04', '20', 'write essay on Dewey Decimal system', 2),
(81, '2', 5, '1', NULL, '17', 'Q1', '2010-01-19', '2010-01-19', '25', 'research basics', 2),
(82, '2', 5, '1', NULL, '18', 'Test 1', '2010-01-29', '2010-01-29', '100', 'Test on on-line search skills', 2);

-- --------------------------------------------------------

--
-- Table structure for table `GRADEBOOK_ASSIGNMENT_TYPES`
--

CREATE TABLE IF NOT EXISTS `GRADEBOOK_ASSIGNMENT_TYPES` (
  `assignment_type_id` int(8) NOT NULL AUTO_INCREMENT,
  `staff_id` decimal(10,0) DEFAULT NULL,
  `course_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `final_grade_percent` decimal(6,5) DEFAULT NULL,
  PRIMARY KEY (`assignment_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `GRADEBOOK_ASSIGNMENT_TYPES`
--

INSERT INTO `GRADEBOOK_ASSIGNMENT_TYPES` (`assignment_type_id`, `staff_id`, `course_id`, `title`, `final_grade_percent`) VALUES
(1, '2', '1', 'Homework', '0.20000'),
(2, '2', '1', 'Quiz', '0.40000'),
(3, '2', '1', 'Tests', '0.40000'),
(4, '2', '4', 'Homework', '0.20000'),
(5, '2', '4', 'Quiz', '0.40000'),
(6, '2', '4', 'Test', '0.40000'),
(7, '2', '8', 'Homework', '0.20000'),
(8, '2', '8', 'Quiz', '0.40000'),
(9, '2', '8', 'Test', '0.40000'),
(10, '2', '9', 'Test', '0.40000'),
(11, '2', '9', 'Quiz', '0.40000'),
(12, '2', '9', 'Homework', '0.20000'),
(13, '2', '11', 'Homework', '0.20000'),
(14, '2', '11', 'Quiz', '0.40000'),
(15, '2', '11', 'Test', '0.40000'),
(16, '2', '14', 'Homework', '0.20000'),
(17, '2', '14', 'Quiz', '0.40000'),
(18, '2', '14', 'Test', '0.40000');

-- --------------------------------------------------------

--
-- Table structure for table `GRADEBOOK_GRADES`
--

CREATE TABLE IF NOT EXISTS `GRADEBOOK_GRADES` (
  `student_id` decimal(10,0) NOT NULL,
  `period_id` decimal(10,0) DEFAULT NULL,
  `course_period_id` decimal(10,0) NOT NULL,
  `assignment_id` decimal(10,0) NOT NULL,
  `points` decimal(6,2) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`assignment_id`,`course_period_id`),
  KEY `gradebook_grades_ind1` (`assignment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GRADEBOOK_GRADES`
--

INSERT INTO `GRADEBOOK_GRADES` (`student_id`, `period_id`, `course_period_id`, `assignment_id`, `points`, `comment`) VALUES
('1', '4', '4', '44', '19.00', NULL),
('1', '4', '4', '43', '16.00', NULL),
('1', '2', '4', '42', '9.00', NULL),
('1', '2', '4', '41', '8.00', NULL),
('1', '2', '4', '40', '7.00', NULL),
('1', '2', '4', '39', '6.00', NULL),
('1', '2', '4', '38', '8.00', NULL),
('1', '2', '4', '37', '9.00', NULL),
('1', '2', '4', '36', '6.00', NULL),
('1', '2', '4', '35', '8.00', NULL),
('1', '2', '4', '34', '7.00', NULL),
('1', '2', '4', '33', '6.00', NULL),
('1', '2', '4', '32', '17.00', NULL),
('1', '2', '7', '31', '19.00', NULL),
('1', '2', '7', '30', '22.00', NULL),
('1', '2', '7', '29', '21.00', NULL),
('1', '2', '7', '28', '23.00', NULL),
('1', '2', '7', '27', '25.00', NULL),
('1', '2', '7', '26', '22.00', NULL),
('1', '2', '7', '25', '24.00', NULL),
('1', '5', '2', '57', '17.00', NULL),
('1', '5', '2', '56', '19.00', NULL),
('1', '4', '2', '55', '19.00', '2'),
('1', '4', '2', '54', '19.00', NULL),
('1', '4', '2', '53', '18.00', NULL),
('1', '4', '2', '52', '16.00', NULL),
('1', '4', '2', '51', '17.00', NULL),
('1', '4', '2', '50', '23.00', NULL),
('1', '4', '2', '49', '16.00', NULL),
('1', '4', '2', '48', '19.00', NULL),
('1', '4', '2', '47', '18.00', NULL),
('1', '4', '2', '46', '17.00', NULL),
('1', '4', '2', '45', '17.00', NULL),
('6', '1', '7', '10', '10.00', NULL),
('10', '1', '7', '10', '9.00', NULL),
('10', '1', '7', '11', '8.00', NULL),
('1', '5', '1', '67', '24.00', NULL),
('3', '1', '7', '10', '8.00', NULL),
('5', '1', '7', '10', '10.00', NULL),
('1', '5', '1', '64', '24.00', NULL),
('1', '5', '1', '63', '25.00', NULL),
('11', '1', '7', '10', '8.00', NULL),
('2', '1', '7', '10', '7.50', NULL),
('5', '1', '7', '11', '10.00', NULL),
('6', '1', '7', '11', '9.00', NULL),
('1', '5', '1', '58', '18.00', NULL),
('6', '1', '7', '9', '8.00', NULL),
('10', '1', '7', '9', '7.00', NULL),
('8', '1', '7', '10', '10.00', NULL),
('9', '1', '7', '10', '10.00', NULL),
('12', '1', '7', '10', '9.00', NULL),
('9', '1', '7', '11', '8.00', NULL),
('12', '1', '7', '11', '10.00', NULL),
('1', '6', '7', '11', '9.00', NULL),
('1', '6', '7', '10', '9.00', NULL),
('1', '6', '7', '9', '10.00', NULL),
('8', '1', '7', '11', '9.00', NULL),
('11', '1', '7', '11', '9.00', NULL),
('1', '7', '7', '6', '23.00', NULL),
('1', '7', '7', '5', '22.00', NULL),
('2', '1', '7', '11', '7.00', NULL),
('3', '1', '7', '11', '9.00', NULL),
('1', '7', '7', '2', '24.00', NULL),
('1', '7', '7', '1', '84.00', NULL),
('5', '1', '7', '9', '5.00', NULL),
('3', '1', '7', '9', '9.00', NULL),
('2', '1', '7', '9', '10.00', NULL),
('11', '1', '7', '9', '7.00', NULL),
('12', '1', '7', '9', '6.00', NULL),
('9', '1', '7', '9', '10.00', NULL),
('8', '1', '7', '9', '9.00', NULL),
('10', '1', '7', '6', '19.00', NULL),
('6', '1', '7', '6', '20.00', NULL),
('5', '1', '7', '6', '23.00', NULL),
('3', '1', '7', '6', '21.00', NULL),
('2', '1', '7', '6', '24.00', NULL),
('11', '1', '7', '6', '18.00', NULL),
('12', '1', '7', '6', '17.00', NULL),
('9', '1', '7', '6', '19.00', NULL),
('8', '1', '7', '6', '20.00', NULL),
('10', '1', '7', '5', '23.00', NULL),
('6', '1', '7', '5', '24.00', NULL),
('5', '1', '7', '5', '20.00', NULL),
('3', '1', '7', '5', '22.00', NULL),
('2', '1', '7', '5', '24.00', NULL),
('11', '1', '7', '5', '21.00', NULL),
('12', '1', '7', '5', '19.00', NULL),
('9', '1', '7', '5', '18.00', NULL),
('8', '1', '7', '5', '19.00', NULL),
('10', '1', '7', '2', '19.00', NULL),
('6', '1', '7', '2', '19.00', NULL),
('5', '1', '7', '2', '21.00', NULL),
('3', '1', '7', '2', '22.00', NULL),
('2', '1', '7', '2', '24.00', NULL),
('11', '1', '7', '2', '23.00', NULL),
('12', '1', '7', '2', '22.00', NULL),
('9', '1', '7', '2', '20.00', NULL),
('8', '1', '7', '2', '19.00', NULL),
('10', '1', '7', '1', '96.00', NULL),
('6', '1', '7', '1', '89.00', NULL),
('5', '1', '7', '1', '95.00', NULL),
('3', '1', '7', '1', '99.00', NULL),
('2', '1', '7', '1', '92.00', NULL),
('11', '1', '7', '1', '91.00', NULL),
('12', '1', '7', '1', '88.00', NULL),
('9', '1', '7', '1', '75.00', NULL),
('8', '1', '7', '1', '79.00', NULL),
('10', '2', '6', '73', '189.00', NULL),
('6', '2', '6', '73', '190.00', NULL),
('5', '2', '6', '73', '178.00', NULL),
('3', '2', '6', '73', '188.00', NULL),
('2', '2', '6', '73', '194.00', NULL),
('11', '2', '6', '73', '187.00', NULL),
('12', '2', '6', '73', '191.00', NULL),
('9', '2', '6', '73', '165.00', NULL),
('8', '2', '6', '73', '188.00', NULL),
('1', '2', '6', '73', '190.00', NULL),
('10', '2', '6', '72', '23.00', NULL),
('10', '2', '6', '71', '19.00', NULL),
('6', '2', '6', '72', '24.00', NULL),
('6', '2', '6', '71', '16.00', NULL),
('5', '2', '6', '72', '22.00', NULL),
('5', '2', '6', '71', '16.00', NULL),
('3', '2', '6', '72', '19.00', NULL),
('3', '2', '6', '71', '18.00', NULL),
('2', '2', '6', '72', '18.00', NULL),
('2', '2', '6', '71', '16.00', NULL),
('11', '2', '6', '72', '19.00', NULL),
('11', '2', '6', '71', '19.00', NULL),
('12', '2', '6', '72', '17.00', NULL),
('12', '2', '6', '71', '20.00', NULL),
('9', '2', '6', '72', '21.00', NULL),
('9', '2', '6', '71', '15.00', NULL),
('8', '2', '6', '72', '23.00', NULL),
('8', '2', '6', '71', '18.00', NULL),
('1', '2', '6', '72', '20.00', NULL),
('1', '2', '6', '71', '19.00', NULL),
('10', '2', '6', '79', '19.00', NULL),
('10', '2', '6', '78', '189.00', NULL),
('7', '2', '6', '79', '18.00', NULL),
('7', '2', '6', '78', '190.00', NULL),
('6', '2', '6', '79', '17.00', NULL),
('6', '2', '6', '78', '195.00', NULL),
('4', '2', '6', '79', '18.00', NULL),
('4', '2', '6', '78', '176.00', NULL),
('5', '2', '6', '79', '16.00', NULL),
('5', '2', '6', '78', '188.00', NULL),
('3', '2', '6', '79', '16.00', NULL),
('3', '2', '6', '78', '193.00', NULL),
('2', '2', '6', '79', '19.00', NULL),
('2', '2', '6', '78', '190.00', NULL),
('11', '2', '6', '79', '20.00', NULL),
('11', '2', '6', '78', '179.00', NULL),
('12', '2', '6', '79', '19.00', NULL),
('12', '2', '6', '78', '188.00', NULL),
('9', '2', '6', '79', '19.00', NULL),
('9', '2', '6', '78', '167.00', NULL),
('8', '2', '6', '79', '19.00', NULL),
('8', '2', '6', '78', '190.00', NULL),
('1', '2', '6', '79', '17.00', NULL),
('1', '2', '6', '78', '176.00', NULL),
('10', '2', '6', '77', '45.00', NULL),
('10', '2', '6', '76', '44.00', NULL),
('7', '2', '6', '77', '48.00', NULL),
('7', '2', '6', '76', '40.00', NULL),
('6', '2', '6', '77', '44.00', NULL),
('6', '2', '6', '76', '40.00', NULL),
('4', '2', '6', '77', '40.00', NULL),
('4', '2', '6', '76', '36.00', NULL),
('5', '2', '6', '77', '36.00', NULL),
('5', '2', '6', '76', '45.00', NULL),
('3', '2', '6', '77', '28.00', NULL),
('3', '2', '6', '76', '45.00', NULL),
('2', '2', '6', '77', '37.00', NULL),
('2', '2', '6', '76', '41.00', NULL),
('11', '2', '6', '77', '49.00', NULL),
('11', '2', '6', '76', '39.00', NULL),
('12', '2', '6', '77', '44.00', NULL),
('12', '2', '6', '76', '40.00', NULL),
('9', '2', '6', '77', '34.00', NULL),
('9', '2', '6', '76', '44.00', NULL),
('8', '2', '6', '77', '38.00', NULL),
('8', '2', '6', '76', '48.00', NULL),
('1', '2', '6', '77', '35.00', NULL),
('1', '2', '6', '76', '48.00', NULL),
('10', '2', '6', '75', '18.00', NULL),
('10', '2', '6', '74', '8.00', NULL),
('7', '2', '6', '75', '19.00', NULL),
('7', '2', '6', '74', '9.00', NULL),
('6', '2', '6', '75', '20.00', NULL),
('6', '2', '6', '74', '8.00', NULL),
('4', '2', '6', '75', '16.00', NULL),
('4', '2', '6', '74', '9.00', NULL),
('5', '2', '6', '75', '15.00', NULL),
('5', '2', '6', '74', '7.00', NULL),
('3', '2', '6', '75', '15.00', NULL),
('3', '2', '6', '74', '5.00', NULL),
('2', '2', '6', '75', '19.00', NULL),
('2', '2', '6', '74', '7.00', NULL),
('11', '2', '6', '75', '18.00', NULL),
('11', '2', '6', '74', '7.00', NULL),
('12', '2', '6', '75', '17.00', NULL),
('12', '2', '6', '74', '8.00', NULL),
('9', '2', '6', '75', '16.00', NULL),
('9', '2', '6', '74', '9.00', NULL),
('8', '2', '6', '75', '15.00', NULL),
('8', '2', '6', '74', '10.00', NULL),
('1', '2', '6', '75', '19.00', NULL),
('1', '2', '6', '74', '10.00', NULL),
('10', '7', '1', '82', '97.00', NULL),
('10', '7', '1', '81', '23.00', NULL),
('10', '7', '1', '80', '17.00', NULL),
('7', '7', '1', '82', '87.00', NULL),
('7', '7', '1', '81', '23.00', NULL),
('7', '7', '1', '80', '19.00', NULL),
('6', '7', '1', '82', '77.00', NULL),
('6', '7', '1', '81', '20.00', NULL),
('6', '7', '1', '80', '19.00', NULL),
('4', '7', '1', '82', '89.00', NULL),
('4', '7', '1', '81', '19.00', NULL),
('4', '7', '1', '80', '20.00', NULL),
('5', '7', '1', '82', '91.00', NULL),
('5', '7', '1', '81', '20.00', NULL),
('5', '7', '1', '80', '20.00', NULL),
('3', '7', '1', '82', '93.00', NULL),
('3', '7', '1', '81', '18.00', NULL),
('3', '7', '1', '80', '16.00', NULL),
('2', '7', '1', '82', '93.00', NULL),
('2', '7', '1', '81', '17.00', NULL),
('2', '7', '1', '80', '17.00', NULL),
('11', '7', '1', '82', '95.00', NULL),
('11', '7', '1', '81', '21.00', NULL),
('11', '7', '1', '80', '16.00', NULL),
('12', '7', '1', '82', '98.00', NULL),
('12', '7', '1', '81', '24.00', NULL),
('12', '7', '1', '80', '14.00', NULL),
('9', '7', '1', '82', '87.00', NULL),
('9', '7', '1', '81', '22.00', NULL),
('9', '7', '1', '80', '19.00', NULL),
('8', '7', '1', '82', '69.00', NULL),
('8', '7', '1', '81', '20.00', NULL),
('8', '7', '1', '80', '19.00', NULL),
('1', '7', '1', '82', '88.00', NULL),
('1', '7', '1', '81', '18.00', NULL),
('1', '7', '1', '80', '18.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GRADES_COMPLETED`
--

CREATE TABLE IF NOT EXISTS `GRADES_COMPLETED` (
  `staff_id` decimal(10,0) NOT NULL,
  `marking_period_id` int(11) NOT NULL,
  `period_id` decimal(10,0) NOT NULL,
  PRIMARY KEY (`staff_id`,`marking_period_id`,`period_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GRADES_COMPLETED`
--

INSERT INTO `GRADES_COMPLETED` (`staff_id`, `marking_period_id`, `period_id`) VALUES
('2', 3, '1'),
('2', 3, '2'),
('2', 4, '2'),
('4', 3, '3'),
('4', 4, '3'),
('4', 4, '6'),
('5', 3, '5'),
('6', 4, '4');

-- --------------------------------------------------------

--
-- Table structure for table `HACKING_LOG`
--

CREATE TABLE IF NOT EXISTS `HACKING_LOG` (
  `host_name` varchar(20) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `login_date` date DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `php_self` varchar(20) DEFAULT NULL,
  `document_root` varchar(100) DEFAULT NULL,
  `script_name` varchar(100) DEFAULT NULL,
  `modname` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HACKING_LOG`
--


-- --------------------------------------------------------

--
-- Table structure for table `HISTORY_MARKING_PERIODS`
--

CREATE TABLE IF NOT EXISTS `HISTORY_MARKING_PERIODS` (
  `parent_id` int(11) DEFAULT NULL,
  `mp_type` char(20) DEFAULT NULL,
  `name` char(30) DEFAULT NULL,
  `post_end_date` date DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `syear` int(11) DEFAULT NULL,
  `marking_period_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`marking_period_id`),
  KEY `history_marking_period_ind1` (`school_id`) USING BTREE,
  KEY `history_marking_period_ind2` (`syear`) USING BTREE,
  KEY `history_marking_period_ind3` (`mp_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HISTORY_MARKING_PERIODS`
--


-- --------------------------------------------------------

--
-- Table structure for table `LOGIN_RECORDS`
--

CREATE TABLE IF NOT EXISTS `LOGIN_RECORDS` (
  `syear` decimal(5,0) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `profile` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `faillog_count` decimal(4,0) DEFAULT NULL,
  `staff_id` decimal(10,0) DEFAULT NULL,
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `faillog_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `LOGIN_RECORDS`
--

INSERT INTO `LOGIN_RECORDS` (`syear`, `first_name`, `last_name`, `profile`, `user_name`, `login_time`, `faillog_count`, `staff_id`, `id`, `faillog_time`, `ip_address`, `status`) VALUES
('2009', 'Admin', 'Administrator', 'admin', 'admin', '2010-02-08 05:29:37', NULL, '1', 1, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Admin', 'Administrator', 'admin', 'admin', '2010-02-08 18:26:54', NULL, '1', 2, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-02-10 10:37:10', NULL, '1', 3, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-02-10 17:59:05', NULL, '1', 4, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2009-08-17 21:54:43', NULL, '1', 5, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2009-08-17 21:59:55', NULL, '1', 6, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2009-12-31 22:07:56', NULL, '1', 7, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2009-08-17 22:10:40', NULL, '1', 8, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2009-08-17 22:18:18', NULL, '2', 9, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2009-08-17 22:19:46', NULL, '1', 10, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2009-08-21 22:21:25', NULL, '2', 11, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2009-08-21 22:22:11', NULL, '1', 12, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2009-08-21 22:23:08', NULL, '2', 13, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2009-10-10 23:59:29', NULL, '2', 14, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2009-10-10 00:46:32', NULL, '1', 15, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2009-10-12 00:56:24', NULL, '1', 16, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2010-01-09 01:03:55', NULL, '2', 17, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-01-09 01:06:58', NULL, '1', 18, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2010-01-09 01:44:30', NULL, '2', 19, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2010-01-09 01:45:13', NULL, '2', 20, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-01-09 01:53:43', NULL, '1', 21, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2010-01-09 02:25:27', NULL, '2', 22, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-01-09 02:26:13', NULL, '1', 23, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-02-11 02:29:46', NULL, '1', 24, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-02-11 02:35:21', NULL, '1', 25, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Dennis', 'Williams', 'parent', 'parent', '2010-02-11 02:44:46', NULL, '3', 26, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2010-02-11 02:48:04', NULL, '2', 27, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-02-11 02:54:46', NULL, '1', 28, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2010-02-11 02:55:07', NULL, '2', 29, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-02-11 03:05:51', NULL, '1', 30, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-01-11 03:06:26', NULL, '1', 31, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2010-02-11 03:10:08', NULL, '2', 32, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Dennis', 'Williams', 'parent', 'parent', '2010-02-11 03:16:29', NULL, '3', 33, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2010-02-11 03:17:50', NULL, '2', 34, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', NULL, NULL, NULL, 'parent', '2010-02-11 03:21:04', NULL, NULL, 35, '2010-02-11 03:21:04', '127.0.0.1', 'Failed'),
('2009', 'Dennis', 'Williams', 'parent', 'parent', '2010-02-11 03:21:12', '1', '3', 36, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-02-11 03:23:27', NULL, '1', 37, '0000-00-00 00:00:00', '127.0.0.1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-06-08 14:52:28', NULL, '1', 38, '0000-00-00 00:00:00', '::1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-06-15 11:13:57', NULL, '1', 39, '0000-00-00 00:00:00', '::1', 'Success'),
('2009', 'Dennis', 'Williams', 'parent', 'parent', '2010-06-15 12:10:47', NULL, '3', 40, '0000-00-00 00:00:00', '::1', 'Success'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-06-15 12:41:11', NULL, '1', 41, '0000-00-00 00:00:00', '::1', 'Success'),
('2009', NULL, NULL, NULL, 'teacherOne', '2010-06-15 17:28:15', NULL, NULL, 42, '2010-06-15 05:28:15', '::1', 'Failed'),
('2009', NULL, NULL, NULL, 'teacher1', '2010-06-15 17:28:29', NULL, NULL, 43, '2010-06-15 05:28:29', '::1', 'Failed'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-06-16 12:04:25', NULL, '1', 44, '0000-00-00 00:00:00', '::1', 'Success'),
('2009', NULL, NULL, NULL, 'sidj', '2010-06-16 14:46:18', NULL, NULL, 45, '2010-06-16 02:46:18', '::1', 'Failed'),
('2009', NULL, NULL, NULL, 'sidjain', '2010-06-16 14:47:04', NULL, NULL, 46, '2010-06-16 02:47:04', '::1', 'Failed'),
('2009', NULL, NULL, NULL, 'sjain', '2010-06-16 14:47:14', NULL, NULL, 47, '2010-06-16 02:47:14', '::1', 'Failed'),
('2009', 'Dharmendra', 'Jain', 'parent', 'dharm', '2010-06-18 12:59:06', NULL, '7', 48, '0000-00-00 00:00:00', '::1', 'Success'),
('2009', NULL, NULL, NULL, 'sidjain', '2010-06-18 12:59:37', NULL, NULL, 49, '2010-06-18 12:59:37', '::1', 'Failed'),
('2009', NULL, NULL, NULL, 'sidj', '2010-06-18 12:59:44', NULL, NULL, 50, '2010-06-18 12:59:44', '::1', 'Failed'),
('2009', 'John', 'Administrator', 'admin', 'admin', '2010-06-18 13:00:00', NULL, '1', 51, '0000-00-00 00:00:00', '::1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2010-07-06 10:56:50', NULL, '2', 52, '0000-00-00 00:00:00', '::1', 'Success'),
('2009', 'Mary', 'Jones', 'teacher', 'teacher', '2010-08-06 12:52:23', NULL, '2', 53, '0000-00-00 00:00:00', '::1', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `LOG_MAINTAIN`
--

CREATE TABLE IF NOT EXISTS `LOG_MAINTAIN` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `value` decimal(30,0) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `LOG_MAINTAIN`
--

INSERT INTO `LOG_MAINTAIN` (`id`, `value`, `session_id`) VALUES
(3, '8452', 'lfoj5gemdhuiq2gabpetcilmg1'),
(4, '281742050', 'ea85dea2344b901da8dc29a0e30865cc'),
(13, '2114874169', 'c23576d322c366a429199d2d0a64e7bd'),
(12, '406577623', 'c23576d322c366a429199d2d0a64e7bd'),
(11, '778769922', 'c23576d322c366a429199d2d0a64e7bd'),
(15, '604528066', 'f3a021b2265cf371165fe20449ab09a4');

-- --------------------------------------------------------

--
-- Table structure for table `LUNCH_PERIOD`
--

CREATE TABLE IF NOT EXISTS `LUNCH_PERIOD` (
  `student_id` decimal(10,0) DEFAULT NULL,
  `school_date` date DEFAULT NULL,
  `period_id` decimal(10,0) DEFAULT NULL,
  `attendance_code` decimal(10,0) DEFAULT NULL,
  `attendance_teacher_code` decimal(10,0) DEFAULT NULL,
  `attendance_reason` varchar(100) DEFAULT NULL,
  `admin` varchar(1) DEFAULT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `lunch_period` varchar(100) DEFAULT NULL,
  `table_name` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LUNCH_PERIOD`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `MARKING_PERIODS`
--
CREATE TABLE IF NOT EXISTS `MARKING_PERIODS` (
`marking_period_id` int(11)
,`mp_source` varchar(7)
,`syear` decimal(10,0)
,`school_id` decimal(10,0)
,`mp_type` varchar(20)
,`title` varchar(50)
,`short_name` varchar(10)
,`sort_order` decimal(10,0)
,`parent_id` decimal(19,0)
,`grandparent_id` decimal(19,0)
,`start_date` date
,`end_date` date
,`post_start_date` date
,`post_end_date` date
,`does_grades` varchar(1)
,`does_exam` varchar(1)
,`does_comments` varchar(1)
);
-- --------------------------------------------------------

--
-- Table structure for table `MARKING_PERIOD_ID_GENERATOR`
--

CREATE TABLE IF NOT EXISTS `MARKING_PERIOD_ID_GENERATOR` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `MARKING_PERIOD_ID_GENERATOR`
--

INSERT INTO `MARKING_PERIOD_ID_GENERATOR` (`id`) VALUES
(13),
(14),
(15),
(16);

-- --------------------------------------------------------

--
-- Table structure for table `OLD_COURSE_WEIGHTS`
--

CREATE TABLE IF NOT EXISTS `OLD_COURSE_WEIGHTS` (
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `course_id` decimal(10,0) DEFAULT NULL,
  `course_weight` varchar(10) DEFAULT NULL,
  `gpa_multiplier` decimal(10,0) DEFAULT NULL,
  `year_fraction` decimal(10,0) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `OLD_COURSE_WEIGHTS`
--


-- --------------------------------------------------------

--
-- Table structure for table `PEOPLE`
--

CREATE TABLE IF NOT EXISTS `PEOPLE` (
  `person_id` int(8) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `people_1` (`last_name`,`first_name`) USING BTREE,
  KEY `people_3` (`person_id`,`last_name`,`first_name`,`middle_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PEOPLE`
--


-- --------------------------------------------------------

--
-- Table structure for table `PEOPLE_FIELDS`
--

CREATE TABLE IF NOT EXISTS `PEOPLE_FIELDS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `search` varchar(1) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `select_options` varchar(10000) DEFAULT NULL,
  `category_id` decimal(10,0) DEFAULT NULL,
  `system_field` char(1) DEFAULT NULL,
  `required` varchar(1) DEFAULT NULL,
  `default_selection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_desc_ind` (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PEOPLE_FIELDS`
--


-- --------------------------------------------------------

--
-- Table structure for table `PEOPLE_FIELD_CATEGORIES`
--

CREATE TABLE IF NOT EXISTS `PEOPLE_FIELD_CATEGORIES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `custody` char(1) DEFAULT NULL,
  `emergency` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PEOPLE_FIELD_CATEGORIES`
--


-- --------------------------------------------------------

--
-- Table structure for table `PEOPLE_JOIN_CONTACTS`
--

CREATE TABLE IF NOT EXISTS `PEOPLE_JOIN_CONTACTS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `person_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_join_contacts_ind1` (`person_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PEOPLE_JOIN_CONTACTS`
--


-- --------------------------------------------------------

--
-- Table structure for table `PORTAL_NOTES`
--

CREATE TABLE IF NOT EXISTS `PORTAL_NOTES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `school_id` decimal(10,0) DEFAULT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `published_user` decimal(10,0) DEFAULT NULL,
  `published_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `published_profiles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `PORTAL_NOTES`
--

INSERT INTO `PORTAL_NOTES` (`id`, `school_id`, `syear`, `title`, `content`, `sort_order`, `published_user`, `published_date`, `start_date`, `end_date`, `published_profiles`) VALUES
(1, '1', '2009', 'Welcome to openSIS', 'Welcome to openSIS, the premier open source student information system !\n \n This sample school data will act as a guide for you to configure your own school. There are sample Teacher, Student and Parent in the system. Use the access info given below to experience the functionalities.\n \n To access the teacher portal, use user id: teacher, password:teacher\n \n To access the student portal, use user id: student, password:student\n \n To access the parent portal, use user id: parent, password:parent\n \n ', '1', '1', '2010-02-08 20:46:02', '2009-08-01', '2010-12-31', ',admin,1,'),
(2, '1', '2009', 'Welcome to openSIS', 'Welcome to openSIS, the premier open source student information system !\n \n Thru this portal, you can view relevant information of your child instantly. This portal is available 24/7.', '2', '1', '2010-02-10 18:48:09', '2009-08-01', '2010-12-31', ',parent,3,'),
(3, '1', '2009', 'Welcome to openSIS', 'Welcome to openSIS, the premier open source student information system !\n \n Please take the daily attendance first. If you do not take attendance, it will show as an alert for you and the school administrator.\n \n Note that you can only view the students that are assigned to your course periods/classes.\n \n ', '3', '1', '2010-02-10 18:47:58', '2009-08-01', '2010-12-31', ',teacher,2,'),
(4, '3', '2009', 'Session Start', 'The New Academic Session will start from June 16.\n\nHave a great Session', '1', '1', '2010-06-15 13:18:14', '2010-06-01', '2010-06-30', ',admin,teacher,parent,0,1,2,3,'),
(5, '3', '2009', 'Project Dates', '8th Semester Computer Science Project Submission date is 30th June, 2010.', '3', '1', '2010-06-15 13:20:01', '2010-06-01', '2010-06-30', ',admin,teacher,parent,0,1,2,3,'),
(6, '3', '2009', 'Lecture Routine', '3rd and 4th Semester Lecture Routine is linked in the College Intranet.', '2', '1', '2010-06-15 13:22:00', '2010-06-01', '2010-06-30', ',admin,teacher,parent,0,1,2,3,');

-- --------------------------------------------------------

--
-- Table structure for table `PROFILE_EXCEPTIONS`
--

CREATE TABLE IF NOT EXISTS `PROFILE_EXCEPTIONS` (
  `profile_id` decimal(10,0) DEFAULT NULL,
  `modname` varchar(255) DEFAULT NULL,
  `can_use` varchar(1) DEFAULT NULL,
  `can_edit` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROFILE_EXCEPTIONS`
--

INSERT INTO `PROFILE_EXCEPTIONS` (`profile_id`, `modname`, `can_use`, `can_edit`) VALUES
('0', 'School_Setup/Schools.php', 'Y', NULL),
('0', 'School_Setup/Calendar.php', 'Y', NULL),
('0', 'Students/Student.php', 'Y', NULL),
('0', 'Students/Student.php&category_id=1', 'Y', NULL),
('0', 'Students/Student.php&category_id=3', 'Y', NULL),
('0', 'Students/Stu_ChangePass.php', 'Y', 'Y'),
('0', 'Scheduling/Schedule.php', 'Y', NULL),
('0', 'Scheduling/Requests.php', 'Y', NULL),
('0', 'Grades/StudentGrades.php', 'Y', NULL),
('0', 'Grades/FinalGrades.php', 'Y', NULL),
('0', 'Grades/ReportCards.php', 'Y', NULL),
('0', 'Grades/Transcripts.php', 'Y', NULL),
('0', 'Grades/GPARankList.php', 'Y', NULL),
('0', 'Attendance/StudentSummary.php', 'Y', NULL),
('0', 'Attendance/DailySummary.php', 'Y', NULL),
('0', 'Eligibility/Student.php', 'Y', NULL),
('0', 'Eligibility/StudentList.php', 'Y', NULL),
('1', 'School_Setup/PortalNotes.php', 'Y', 'Y'),
('1', 'School_Setup/Schools.php', 'Y', 'Y'),
('1', 'School_Setup/Schools.php?new_school=true', 'Y', 'Y'),
('1', 'School_Setup/CopySchool.php', 'Y', 'Y'),
('1', 'School_Setup/MarkingPeriods.php', 'Y', 'Y'),
('1', 'School_Setup/Calendar.php', 'Y', 'Y'),
('1', 'School_Setup/Periods.php', 'Y', 'Y'),
('1', 'School_Setup/GradeLevels.php', 'Y', 'Y'),
('1', 'School_Setup/Rollover.php', 'Y', 'Y'),
('1', 'School_Setup/Courses.php', 'Y', 'Y'),
('1', 'School_Setup/CourseCatalog.php', 'Y', 'Y'),
('1', 'School_Setup/PrintCatalog.php', 'Y', 'Y'),
('1', 'School_Setup/PrintAllCourses.php', 'Y', 'Y'),
('1', 'Students/Student.php', 'Y', 'Y'),
('1', 'Students/Student.php&include=General_Info&student_id=new', 'Y', 'Y'),
('1', 'Students/AssignOtherInfo.php', 'Y', 'Y'),
('1', 'Students/AddUsers.php', 'Y', 'Y'),
('1', 'Students/AdvancedReport.php', 'Y', 'Y'),
('1', 'Students/AddDrop.php', 'Y', 'Y'),
('1', 'Students/Letters.php', 'Y', 'Y'),
('1', 'Students/MailingLabels.php', 'Y', 'Y'),
('1', 'Students/StudentLabels.php', 'Y', 'Y'),
('1', 'Students/PrintStudentInfo.php', 'Y', 'Y'),
('1', 'Students/GoalReport.php', 'Y', 'Y'),
('1', 'Students/StudentFields.php', 'Y', 'Y'),
('1', 'Students/AddressFields.php', 'Y', 'Y'),
('1', 'Students/PeopleFields.php', 'Y', 'Y'),
('1', 'Students/EnrollmentCodes.php', 'Y', 'Y'),
('1', 'Students/Upload.php?modfunc=edit', 'Y', 'Y'),
('1', 'Students/Upload.php', 'Y', 'Y'),
('1', 'Students/Student.php&category_id=1', 'Y', 'Y'),
('1', 'Students/Student.php&category_id=3', 'Y', 'Y'),
('1', 'Students/Student.php&category_id=2', 'Y', 'Y'),
('1', 'Students/Student.php&category_id=4', 'Y', 'Y'),
('1', 'Users/User.php', 'Y', 'Y'),
('1', 'Users/User.php&category_id=1', 'Y', NULL),
('1', 'Users/User.php&staff_id=new', 'Y', 'Y'),
('1', 'Users/AddStudents.php', 'Y', 'Y'),
('1', 'Users/Preferences.php', 'Y', 'Y'),
('1', 'Users/Profiles.php', 'Y', 'Y'),
('1', 'Users/Exceptions.php', 'Y', 'Y'),
('1', 'Users/UserFields.php', 'Y', 'Y'),
('1', 'Users/TeacherPrograms.php?include=Grades/InputFinalGrades.php', 'Y', 'Y'),
('1', 'Users/TeacherPrograms.php?include=Grades/Grades.php', 'Y', 'Y'),
('1', 'Users/TeacherPrograms.php?include=Attendance/TakeAttendance.php', 'Y', 'Y'),
('1', 'Users/TeacherPrograms.php?include=Attendance/Missing_Attendance.php', 'Y', 'Y'),
('1', 'Users/TeacherPrograms.php?include=Eligibility/EnterEligibility.php', 'Y', 'Y'),
('1', 'Scheduling/Schedule.php', 'Y', 'Y'),
('1', 'Scheduling/Requests.php', 'Y', 'Y'),
('1', 'Scheduling/MassSchedule.php', 'Y', 'Y'),
('1', 'Scheduling/MassRequests.php', 'Y', 'Y'),
('1', 'Scheduling/MassDrops.php', 'Y', 'Y'),
('1', 'Scheduling/ScheduleReport.php', 'Y', 'Y'),
('1', 'Scheduling/RequestsReport.php', 'Y', 'Y'),
('1', 'Scheduling/UnfilledRequests.php', 'Y', 'Y'),
('1', 'Scheduling/IncompleteSchedules.php', 'Y', 'Y'),
('1', 'Scheduling/AddDrop.php', 'Y', 'Y'),
('1', 'Scheduling/PrintSchedules.php', 'Y', 'Y'),
('1', 'Scheduling/PrintRequests.php', 'Y', 'Y'),
('1', 'Scheduling/PrintClassLists.php', 'Y', 'Y'),
('1', 'Scheduling/PrintClassPictures.php', 'Y', 'Y'),
('1', 'Scheduling/Courses.php', 'Y', 'Y'),
('1', 'Scheduling/Scheduler.php', 'Y', 'Y'),
('1', 'Grades/ReportCards.php', 'Y', 'Y'),
('1', 'Grades/CalcGPA.php', 'Y', 'Y'),
('1', 'Grades/Transcripts.php', 'Y', 'Y'),
('1', 'Grades/TeacherCompletion.php', 'Y', 'Y'),
('1', 'Grades/GradeBreakdown.php', 'Y', 'Y'),
('1', 'Grades/FinalGrades.php', 'Y', 'Y'),
('1', 'Grades/GPARankList.php', 'Y', 'Y'),
('1', 'Grades/ReportCardGrades.php', 'Y', 'Y'),
('1', 'Grades/ReportCardComments.php', 'Y', 'Y'),
('1', 'Grades/FixGPA.php', 'Y', 'Y'),
('1', 'Grades/EditReportCardGrades.php', 'Y', 'Y'),
('1', 'Grades/EditHistoryMarkingPeriods.php', 'Y', 'Y'),
('1', 'Attendance/Administration.php', 'Y', 'Y'),
('1', 'Attendance/AddAbsences.php', 'Y', 'Y'),
('1', 'Attendance/AttendanceData.php?list_by_day=true', 'Y', 'Y'),
('1', 'Attendance/Percent.php', 'Y', 'Y'),
('1', 'Attendance/Percent.php?list_by_day=true', 'Y', 'Y'),
('1', 'Attendance/DailySummary.php', 'Y', 'Y'),
('1', 'Attendance/StudentSummary.php', 'Y', 'Y'),
('1', 'Attendance/TeacherCompletion.php', 'Y', 'Y'),
('1', 'Attendance/DuplicateAttendance.php', 'Y', 'Y'),
('1', 'Attendance/AttendanceCodes.php', 'Y', 'Y'),
('1', 'Attendance/FixDailyAttendance.php', 'Y', 'Y'),
('1', 'Eligibility/Student.php', 'Y', 'Y'),
('1', 'Eligibility/AddActivity.php', 'Y', 'Y'),
('1', 'Eligibility/StudentList.php', 'Y', 'Y'),
('1', 'Eligibility/TeacherCompletion.php', 'Y', 'Y'),
('1', 'Eligibility/Activities.php', 'Y', 'Y'),
('1', 'Eligibility/EntryTimes.php', 'Y', 'Y'),
('1', 'Tools/LogDetails.php', 'Y', 'Y'),
('1', 'Tools/DeleteLog.php', 'Y', 'Y'),
('1', 'Tools/Rollover.php', 'Y', 'Y'),
('1', 'Students/Upload.php', 'Y', 'Y'),
('1', 'Students/Upload.php?modfunc=edit', 'Y', 'Y'),
('2', 'School_Setup/Schools.php', 'Y', NULL),
('2', 'School_Setup/MarkingPeriods.php', 'Y', NULL),
('2', 'School_Setup/Calendar.php', 'Y', NULL),
('2', 'Students/Student.php', 'Y', NULL),
('2', 'Students/AddUsers.php', 'Y', NULL),
('2', 'Students/AdvancedReport.php', 'Y', NULL),
('2', 'Students/Student.php&category_id=1', 'Y', NULL),
('2', 'Students/Student.php&category_id=3', 'Y', NULL),
('2', 'Students/Student.php&category_id=4', 'Y', 'Y'),
('2', 'Users/User.php', 'Y', NULL),
('2', 'Users/User.php&category_id=1', 'Y', NULL),
('2', 'Users/User.php&category_id=2', 'Y', NULL),
('2', 'Users/Preferences.php', 'Y', NULL),
('2', 'Scheduling/Schedule.php', 'Y', NULL),
('2', 'Scheduling/PrintSchedules.php', 'Y', NULL),
('2', 'Scheduling/PrintClassLists.php', 'Y', NULL),
('2', 'Scheduling/PrintClassPictures.php', 'Y', NULL),
('2', 'Grades/InputFinalGrades.php', 'Y', NULL),
('2', 'Grades/ReportCards.php', 'Y', NULL),
('2', 'Grades/Grades.php', 'Y', NULL),
('2', 'Grades/Assignments.php', 'Y', NULL),
('2', 'Grades/AnomalousGrades.php', 'Y', NULL),
('2', 'Grades/Configuration.php', 'Y', NULL),
('2', 'Grades/ProgressReports.php', 'Y', NULL),
('2', 'Grades/StudentGrades.php', 'Y', NULL),
('2', 'Grades/FinalGrades.php', 'Y', NULL),
('2', 'Grades/ReportCardGrades.php', 'Y', NULL),
('2', 'Grades/ReportCardComments.php', 'Y', NULL),
('2', 'Attendance/TakeAttendance.php', 'Y', NULL),
('2', 'Attendance/DailySummary.php', 'Y', NULL),
('2', 'Attendance/StudentSummary.php', 'Y', NULL),
('2', 'Eligibility/EnterEligibility.php', 'Y', NULL),
('3', 'Attendance/StudentSummary.php', 'Y', NULL),
('3', 'Attendance/DailySummary.php', 'Y', NULL),
('3', 'Eligibility/Student.php', 'Y', NULL),
('3', 'Eligibility/StudentList.php', 'Y', NULL),
('3', 'School_Setup/Schools.php', 'Y', NULL),
('3', 'School_Setup/Calendar.php', 'Y', NULL),
('3', 'Students/Student.php', 'Y', NULL),
('3', 'Students/Student.php&category_id=1', 'Y', NULL),
('3', 'Students/Student.php&category_id=3', 'Y', 'Y'),
('3', 'Users/User.php', 'Y', NULL),
('3', 'Users/User.php&category_id=1', 'Y', 'Y'),
('3', 'Users/Preferences.php', 'Y', NULL),
('3', 'Scheduling/Schedule.php', 'Y', NULL),
('3', 'Scheduling/Requests.php', 'Y', NULL),
('3', 'Grades/StudentGrades.php', 'Y', NULL),
('3', 'Grades/FinalGrades.php', 'Y', NULL),
('3', 'Grades/ReportCards.php', 'Y', NULL),
('3', 'Grades/Transcripts.php', 'Y', NULL),
('3', 'Grades/GPARankList.php', 'Y', NULL),
('3', 'Students/Student.php&category_id=2', 'Y', NULL),
('3', 'Students/Student.php&category_id=4', 'Y', NULL),
('3', 'Students/Student.php&category_id=5', 'Y', NULL),
('3', 'Users/User.php&category_id=2', 'Y', NULL),
('3', 'Users/User.php&category_id=3', 'Y', NULL),
('3', 'Scheduling/PrintClassPictures.php', 'Y', NULL),
('0', 'Students/Student.php&category_id=6', 'Y', 'Y'),
('1', 'Students/Student.php&category_id=6', 'Y', 'Y'),
('2', 'Students/Student.php&category_id=6', 'Y', 'Y'),
('3', 'Students/Student.php&category_id=6', 'Y', 'Y'),
('1', 'School_Setup/system_preference.php', 'Y', 'Y'),
('1', 'Students/Student.php&category_id=5', 'Y', 'Y'),
('1', 'Tools/Backup.php', 'Y', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `PROGRAM_CONFIG`
--

CREATE TABLE IF NOT EXISTS `PROGRAM_CONFIG` (
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  KEY `program_config_ind1` (`program`,`school_id`,`syear`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROGRAM_CONFIG`
--

INSERT INTO `PROGRAM_CONFIG` (`syear`, `school_id`, `program`, `title`, `value`) VALUES
('2008', '1', 'eligibility', 'START_DAY', '1'),
('2008', '1', 'eligibility', 'START_HOUR', '8'),
('2008', '1', 'eligibility', 'START_MINUTE', '00'),
('2008', '1', 'eligibility', 'START_M', 'AM'),
('2008', '1', 'eligibility', 'END_DAY', '5'),
('2008', '1', 'eligibility', 'END_HOUR', '16'),
('2008', '1', 'eligibility', 'END_MINUTE', '00'),
('2008', '1', 'eligibility', 'END_M', 'PM'),
('2009', '1', 'eligibility', 'START_DAY', '1'),
('2009', '1', 'eligibility', 'START_HOUR', '8'),
('2009', '1', 'eligibility', 'START_MINUTE', '00'),
('2009', '1', 'eligibility', 'START_M', 'AM'),
('2009', '1', 'eligibility', 'END_DAY', '5'),
('2009', '1', 'eligibility', 'END_HOUR', '16'),
('2009', '1', 'eligibility', 'END_MINUTE', '00'),
('2009', '1', 'eligibility', 'END_M', 'PM');

-- --------------------------------------------------------

--
-- Table structure for table `PROGRAM_USER_CONFIG`
--

CREATE TABLE IF NOT EXISTS `PROGRAM_USER_CONFIG` (
  `user_id` decimal(10,0) NOT NULL,
  `program` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  KEY `program_user_config_ind1` (`user_id`,`program`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROGRAM_USER_CONFIG`
--

INSERT INTO `PROGRAM_USER_CONFIG` (`user_id`, `program`, `title`, `value`) VALUES
('1', 'Preferences', 'THEME', 'Blue'),
('1', 'Preferences', 'MONTH', 'M'),
('1', 'Preferences', 'DAY', 'j'),
('1', 'Preferences', 'YEAR', 'Y'),
('1', 'Preferences', 'HIDDEN', 'Y'),
('2', 'Gradebook', '3-6', ''),
('2', 'Gradebook', '3-5', ''),
('2', 'Gradebook', '3-4', ''),
('2', 'Gradebook', '3-3', ''),
('2', 'Gradebook', '3-2', ''),
('2', 'Gradebook', '3-1', ''),
('2', 'Gradebook', 'COMMENT_A', ''),
('2', 'Gradebook', 'LATENCY', '0'),
('2', 'Gradebook', 'ANOMALOUS_MAX', '100'),
('2', 'Gradebook', 'ELIGIBILITY_CUMULITIVE', 'Y'),
('2', 'Gradebook', 'DEFAULT_ASSIGNED', 'Y'),
('2', 'Gradebook', 'ASSIGNMENT_SORTING', 'ASSIGNMENT_ID'),
('2', 'Gradebook', 'ROUNDING', ''),
('2', 'Gradebook', '3-7', ''),
('2', 'Gradebook', '3-8', ''),
('2', 'Gradebook', '3-9', ''),
('2', 'Gradebook', '3-10', ''),
('2', 'Gradebook', '3-11', ''),
('2', 'Gradebook', '3-12', ''),
('2', 'Gradebook', '3-14', ''),
('2', 'Gradebook', '3-13', ''),
('2', 'Gradebook', '3-15', ''),
('2', 'Preferences', 'HIGHLIGHT', '#f3bb96'),
('2', 'Preferences', 'MONTH', 'M'),
('2', 'Preferences', 'DAY', 'j'),
('2', 'Preferences', 'YEAR', 'Y'),
('2', 'Preferences', 'HIDDEN', 'Y'),
('2', 'Preferences', 'THEME', 'Blue'),
('2', 'Gradebook', 'WEIGHT', 'Y'),
('1', 'Preferences', 'CURRENCY', 'USD'),
('2', 'Preferences', 'CURRENCY', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `PROGRESS`
--

CREATE TABLE IF NOT EXISTS `PROGRESS` (
  `progress_id` int(8) NOT NULL AUTO_INCREMENT,
  `goal_id` decimal(10,0) NOT NULL,
  `student_id` decimal(10,0) NOT NULL,
  `start_date` date NOT NULL,
  `progress_name` varchar(100) NOT NULL,
  `proficiency` varchar(100) NOT NULL,
  `progress_description` text NOT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`progress_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PROGRESS`
--


-- --------------------------------------------------------

--
-- Table structure for table `REPORT_CARD_COMMENTS`
--

CREATE TABLE IF NOT EXISTS `REPORT_CARD_COMMENTS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `course_id` decimal(10,0) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `report_card_comments_ind1` (`syear`,`school_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `REPORT_CARD_COMMENTS`
--

INSERT INTO `REPORT_CARD_COMMENTS` (`id`, `syear`, `school_id`, `course_id`, `sort_order`, `title`) VALUES
(1, '2009', '1', NULL, '1', 'Fails to Meet Course Requirements'),
(2, '2009', '1', NULL, '2', 'Comes to Class Unprepared'),
(3, '2009', '1', NULL, '3', 'Exerts Positive Influence in Class');

-- --------------------------------------------------------

--
-- Table structure for table `REPORT_CARD_GRADES`
--

CREATE TABLE IF NOT EXISTS `REPORT_CARD_GRADES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(3) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `gpa_value` decimal(4,2) DEFAULT NULL,
  `break_off` decimal(10,0) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `grade_scale_id` decimal(10,0) DEFAULT NULL,
  `unweighted_gp` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `report_card_grades_ind1` (`syear`,`school_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `REPORT_CARD_GRADES`
--

INSERT INTO `REPORT_CARD_GRADES` (`id`, `syear`, `school_id`, `title`, `sort_order`, `gpa_value`, `break_off`, `comment`, `grade_scale_id`, `unweighted_gp`) VALUES
(1, '2009', '1', 'A+', '1', '12.00', '97', 'Consistently superior', '2', '12.00'),
(2, '2009', '1', 'A', '2', '11.00', '93', 'Superior', '2', '11.00'),
(3, '2009', '1', 'A-', '3', '10.00', '90', NULL, '2', '10.00'),
(4, '2009', '1', 'B+', '4', '9.00', '87', NULL, '2', '9.00'),
(5, '2009', '1', 'B', '5', '8.00', '83', 'Above average', '2', '8.00'),
(6, '2009', '1', 'B-', '6', '7.00', '80', NULL, '2', '7.00'),
(7, '2009', '1', 'C+', '7', '6.00', '77', NULL, '2', '6.00'),
(8, '2009', '1', 'C', '8', '5.00', '73', 'Average', '2', '5.00'),
(9, '2009', '1', 'C-', '9', '4.00', '70', NULL, '2', '4.00'),
(10, '2009', '1', 'D+', '10', '3.00', '67', NULL, '2', '3.00'),
(11, '2009', '1', 'D', '11', '2.00', '63', 'Below average', '2', '2.00'),
(12, '2009', '1', 'D-', '12', '1.00', '60', NULL, '2', '1.00'),
(13, '2009', '1', 'F', '13', '0.00', '0', 'Failing', '2', '0.00'),
(14, '2009', '1', 'I', '14', '0.00', '0', 'Incomplete', '2', '0.00'),
(15, '2009', '1', 'N/A', '15', '0.00', NULL, NULL, '2', '0.00'),
(16, '2009', '1', 'A+', '1', '4.00', '97', '', '1', '4.00'),
(17, '2009', '1', 'A', '2', '3.67', '93', '', '1', '3.67'),
(18, '2009', '1', 'A-', '3', '3.33', '90', '', '1', '3.33'),
(19, '2009', '1', 'B+', '4', '3.00', '87', '', '1', '3.00'),
(20, '2009', '1', 'B', '5', '2.67', '83', '', '1', '2.67'),
(21, '2009', '1', 'B-', '6', '2.33', '80', '', '1', '2.33'),
(22, '2009', '1', 'C+', '7', '2.00', '77', '', '1', '2.00'),
(23, '2009', '1', 'C', '8', '1.67', '73', '', '1', '1.67'),
(24, '2009', '1', 'C-', '9', '1.33', '70', '', '1', '1.33'),
(25, '2009', '1', 'D+', '10', '1.00', '67', '', '1', '1.00'),
(26, '2009', '1', 'D', '11', '0.67', '63', '', '1', '0.67'),
(27, '2009', '1', 'D-', '12', '0.33', '60', '', '1', '0.33'),
(28, '2009', '1', 'F', '13', '0.00', '59', '', '1', '0.00'),
(29, '2009', '1', 'Inc', '14', '0.00', '0', NULL, '1', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `REPORT_CARD_GRADE_SCALES`
--

CREATE TABLE IF NOT EXISTS `REPORT_CARD_GRADE_SCALES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) NOT NULL,
  `title` varchar(25) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  `gp_scale` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `REPORT_CARD_GRADE_SCALES`
--

INSERT INTO `REPORT_CARD_GRADE_SCALES` (`id`, `syear`, `school_id`, `title`, `comment`, `sort_order`, `rollover_id`, `gp_scale`) VALUES
(1, '2009', '1', 'Main', NULL, '1', NULL, '4.000');

-- --------------------------------------------------------

--
-- Table structure for table `SCHEDULE`
--

CREATE TABLE IF NOT EXISTS `SCHEDULE` (
  `syear` decimal(4,0) NOT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `student_id` decimal(10,0) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `course_id` decimal(10,0) NOT NULL,
  `course_weight` varchar(10) DEFAULT NULL,
  `course_period_id` decimal(10,0) NOT NULL,
  `mp` varchar(3) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `scheduler_lock` varchar(1) DEFAULT NULL,
  `id` int(8) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `schedule_ind1` (`course_id`,`course_weight`) USING BTREE,
  KEY `schedule_ind2` (`course_period_id`) USING BTREE,
  KEY `schedule_ind3` (`student_id`,`marking_period_id`,`start_date`,`end_date`) USING BTREE,
  KEY `schedule_ind4` (`syear`,`school_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=149 ;

--
-- Dumping data for table `SCHEDULE`
--

INSERT INTO `SCHEDULE` (`syear`, `school_id`, `student_id`, `start_date`, `end_date`, `modified_date`, `modified_by`, `course_id`, `course_weight`, `course_period_id`, `mp`, `marking_period_id`, `scheduler_lock`, `id`) VALUES
('2009', '1', '6', '2009-08-17', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 4),
('2009', '1', '10', '2009-08-17', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 3),
('2009', '1', '5', '2009-08-17', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 5),
('2009', '1', '3', '2009-08-17', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 6),
('2009', '1', '2', '2009-08-17', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 7),
('2009', '1', '11', '2009-08-17', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 8),
('2009', '1', '12', '2009-08-17', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 9),
('2009', '1', '9', '2009-08-17', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 10),
('2009', '1', '8', '2009-08-17', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 11),
('2009', '1', '1', '2009-08-17', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 12),
('2009', '1', '10', '2009-08-17', NULL, NULL, NULL, '1', NULL, '7', 'QTR', 3, NULL, 13),
('2009', '1', '6', '2009-08-17', NULL, NULL, NULL, '1', NULL, '7', 'QTR', 3, NULL, 14),
('2009', '1', '5', '2009-08-17', NULL, NULL, NULL, '1', NULL, '7', 'QTR', 3, NULL, 15),
('2009', '1', '3', '2009-08-17', NULL, NULL, NULL, '1', NULL, '7', 'QTR', 3, NULL, 16),
('2009', '1', '2', '2009-08-17', NULL, NULL, NULL, '1', NULL, '7', 'QTR', 3, NULL, 17),
('2009', '1', '11', '2009-08-17', NULL, NULL, NULL, '1', NULL, '7', 'QTR', 3, NULL, 18),
('2009', '1', '12', '2009-08-17', NULL, NULL, NULL, '1', NULL, '7', 'QTR', 3, NULL, 19),
('2009', '1', '9', '2009-08-17', NULL, NULL, NULL, '1', NULL, '7', 'QTR', 3, NULL, 20),
('2009', '1', '8', '2009-08-17', NULL, NULL, NULL, '1', NULL, '7', 'QTR', 3, NULL, 21),
('2009', '1', '1', '2009-08-17', NULL, NULL, NULL, '1', NULL, '7', 'QTR', 3, NULL, 22),
('2009', '1', '10', '2009-08-17', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 23),
('2009', '1', '6', '2009-08-17', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 24),
('2009', '1', '5', '2009-08-17', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 25),
('2009', '1', '3', '2009-08-17', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 26),
('2009', '1', '2', '2009-08-17', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 27),
('2009', '1', '11', '2009-08-17', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 28),
('2009', '1', '12', '2009-08-17', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 29),
('2009', '1', '9', '2009-08-17', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 30),
('2009', '1', '8', '2009-08-17', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 31),
('2009', '1', '1', '2009-08-17', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 32),
('2009', '1', '10', '2009-08-17', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 33),
('2009', '1', '6', '2009-08-17', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 34),
('2009', '1', '5', '2009-08-17', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 35),
('2009', '1', '3', '2009-08-17', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 36),
('2009', '1', '2', '2009-08-17', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 37),
('2009', '1', '11', '2009-08-17', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 38),
('2009', '1', '12', '2009-08-17', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 39),
('2009', '1', '9', '2009-08-17', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 40),
('2009', '1', '8', '2009-08-17', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 41),
('2009', '1', '1', '2009-08-17', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 42),
('2009', '1', '10', '2009-08-17', NULL, NULL, NULL, '8', NULL, '4', 'QTR', 3, NULL, 43),
('2009', '1', '6', '2009-08-17', NULL, NULL, NULL, '8', NULL, '4', 'QTR', 3, NULL, 44),
('2009', '1', '5', '2009-08-17', NULL, NULL, NULL, '8', NULL, '4', 'QTR', 3, NULL, 45),
('2009', '1', '3', '2009-08-17', NULL, NULL, NULL, '8', NULL, '4', 'QTR', 3, NULL, 46),
('2009', '1', '2', '2009-08-17', NULL, NULL, NULL, '8', NULL, '4', 'QTR', 3, NULL, 47),
('2009', '1', '11', '2009-08-17', NULL, NULL, NULL, '8', NULL, '4', 'QTR', 3, NULL, 48),
('2009', '1', '12', '2009-08-17', NULL, NULL, NULL, '8', NULL, '4', 'QTR', 3, NULL, 49),
('2009', '1', '9', '2009-08-17', NULL, NULL, NULL, '8', NULL, '4', 'QTR', 3, NULL, 50),
('2009', '1', '8', '2009-08-17', NULL, NULL, NULL, '8', NULL, '4', 'QTR', 3, NULL, 51),
('2009', '1', '1', '2009-08-17', NULL, NULL, NULL, '8', NULL, '4', 'QTR', 3, NULL, 52),
('2009', '1', '10', '2009-08-17', NULL, NULL, NULL, '9', NULL, '3', 'QTR', 3, NULL, 53),
('2009', '1', '6', '2009-08-17', NULL, NULL, NULL, '9', NULL, '3', 'QTR', 3, NULL, 54),
('2009', '1', '5', '2009-08-17', NULL, NULL, NULL, '9', NULL, '3', 'QTR', 3, NULL, 55),
('2009', '1', '3', '2009-08-17', NULL, NULL, NULL, '9', NULL, '3', 'QTR', 3, NULL, 56),
('2009', '1', '2', '2009-08-17', NULL, NULL, NULL, '9', NULL, '3', 'QTR', 3, NULL, 57),
('2009', '1', '11', '2009-08-17', NULL, NULL, NULL, '9', NULL, '3', 'QTR', 3, NULL, 58),
('2009', '1', '12', '2009-08-17', NULL, NULL, NULL, '9', NULL, '3', 'QTR', 3, NULL, 59),
('2009', '1', '9', '2009-08-17', NULL, NULL, NULL, '9', NULL, '3', 'QTR', 3, NULL, 60),
('2009', '1', '8', '2009-08-17', NULL, NULL, NULL, '9', NULL, '3', 'QTR', 3, NULL, 61),
('2009', '1', '1', '2009-08-17', NULL, NULL, NULL, '9', NULL, '3', 'QTR', 3, NULL, 62),
('2009', '1', '10', '2009-08-17', NULL, NULL, NULL, '11', NULL, '2', 'QTR', 3, NULL, 63),
('2009', '1', '6', '2009-08-17', NULL, NULL, NULL, '11', NULL, '2', 'QTR', 3, NULL, 64),
('2009', '1', '5', '2009-08-17', NULL, NULL, NULL, '11', NULL, '2', 'QTR', 3, NULL, 65),
('2009', '1', '3', '2009-08-17', NULL, NULL, NULL, '11', NULL, '2', 'QTR', 3, NULL, 66),
('2009', '1', '2', '2009-08-17', NULL, NULL, NULL, '11', NULL, '2', 'QTR', 3, NULL, 67),
('2009', '1', '11', '2009-08-17', NULL, NULL, NULL, '11', NULL, '2', 'QTR', 3, NULL, 68),
('2009', '1', '12', '2009-08-17', NULL, NULL, NULL, '11', NULL, '2', 'QTR', 3, NULL, 69),
('2009', '1', '9', '2009-08-17', NULL, NULL, NULL, '11', NULL, '2', 'QTR', 3, NULL, 70),
('2009', '1', '8', '2009-08-17', NULL, NULL, NULL, '11', NULL, '2', 'QTR', 3, NULL, 71),
('2009', '1', '1', '2009-08-17', NULL, NULL, NULL, '11', NULL, '2', 'QTR', 3, NULL, 72),
('2009', '1', '10', '2009-10-12', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 73),
('2009', '1', '6', '2009-10-12', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 74),
('2009', '1', '5', '2009-10-12', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 75),
('2009', '1', '3', '2009-10-12', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 76),
('2009', '1', '2', '2009-10-12', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 77),
('2009', '1', '11', '2009-10-12', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 78),
('2009', '1', '12', '2009-10-12', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 79),
('2009', '1', '9', '2009-10-12', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 80),
('2009', '1', '8', '2009-10-12', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 81),
('2009', '1', '1', '2009-10-12', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 82),
('2009', '1', '10', '2009-10-12', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 83),
('2009', '1', '6', '2009-10-12', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 84),
('2009', '1', '5', '2009-10-12', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 85),
('2009', '1', '3', '2009-10-12', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 86),
('2009', '1', '2', '2009-10-12', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 87),
('2009', '1', '11', '2009-10-12', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 88),
('2009', '1', '12', '2009-10-12', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 89),
('2009', '1', '9', '2009-10-12', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 90),
('2009', '1', '8', '2009-10-12', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 91),
('2009', '1', '1', '2009-10-12', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 92),
('2009', '1', '7', '2009-12-08', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 93),
('2009', '1', '7', '2009-12-08', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 94),
('2009', '1', '7', '2009-12-08', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 95),
('2009', '1', '7', '2009-12-08', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 96),
('2009', '1', '7', '2009-12-08', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 97),
('2009', '1', '4', '2009-11-09', NULL, NULL, NULL, '16', NULL, '18', 'FY', 11, NULL, 98),
('2009', '1', '4', '2009-11-09', NULL, NULL, NULL, '4', NULL, '6', 'FY', 11, NULL, 99),
('2009', '1', '4', '2009-11-09', NULL, NULL, NULL, '4', NULL, '8', 'FY', 11, NULL, 100),
('2009', '1', '4', '2009-11-09', NULL, NULL, NULL, '8', NULL, '9', 'QTR', 4, NULL, 101),
('2009', '1', '4', '2009-11-09', NULL, NULL, NULL, '11', NULL, '13', 'QTR', 4, NULL, 102),
('2009', '1', '10', '2010-01-11', NULL, NULL, NULL, '8', NULL, '10', 'QTR', 5, NULL, 103),
('2009', '1', '6', '2010-01-11', NULL, NULL, NULL, '8', NULL, '10', 'QTR', 5, NULL, 104),
('2009', '1', '5', '2010-01-11', NULL, NULL, NULL, '8', NULL, '10', 'QTR', 5, NULL, 105),
('2009', '1', '3', '2010-01-11', NULL, NULL, NULL, '8', NULL, '10', 'QTR', 5, NULL, 106),
('2009', '1', '2', '2010-01-11', NULL, NULL, NULL, '8', NULL, '10', 'QTR', 5, NULL, 107),
('2009', '1', '11', '2010-01-11', NULL, NULL, NULL, '8', NULL, '10', 'QTR', 5, NULL, 108),
('2009', '1', '12', '2010-01-11', NULL, NULL, NULL, '8', NULL, '10', 'QTR', 5, NULL, 109),
('2009', '1', '9', '2010-01-11', NULL, NULL, NULL, '8', NULL, '10', 'QTR', 5, NULL, 110),
('2009', '1', '8', '2010-01-11', NULL, NULL, NULL, '8', NULL, '10', 'QTR', 5, NULL, 111),
('2009', '1', '1', '2010-01-11', NULL, NULL, NULL, '8', NULL, '10', 'QTR', 5, NULL, 112),
('2009', '1', '10', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 113),
('2009', '1', '7', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 114),
('2009', '1', '6', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 115),
('2009', '1', '4', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 116),
('2009', '1', '5', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 117),
('2009', '1', '3', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 118),
('2009', '1', '2', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 119),
('2009', '1', '11', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 120),
('2009', '1', '12', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 121),
('2009', '1', '9', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 122),
('2009', '1', '8', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 123),
('2009', '1', '1', '2010-01-11', NULL, NULL, NULL, '10', NULL, '16', 'QTR', 5, NULL, 124),
('2009', '1', '10', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 125),
('2009', '1', '7', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 126),
('2009', '1', '6', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 127),
('2009', '1', '4', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 128),
('2009', '1', '5', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 129),
('2009', '1', '3', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 130),
('2009', '1', '2', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 131),
('2009', '1', '11', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 132),
('2009', '1', '12', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 133),
('2009', '1', '9', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 134),
('2009', '1', '8', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 135),
('2009', '1', '1', '2010-01-11', NULL, NULL, NULL, '14', NULL, '1', 'QTR', 5, NULL, 136),
('2009', '1', '10', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 137),
('2009', '1', '7', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 138),
('2009', '1', '6', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 139),
('2009', '1', '4', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 140),
('2009', '1', '5', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 141),
('2009', '1', '3', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 142),
('2009', '1', '2', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 143),
('2009', '1', '11', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 144),
('2009', '1', '12', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 145),
('2009', '1', '9', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 146),
('2009', '1', '8', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 147),
('2009', '1', '1', '2010-01-11', NULL, NULL, NULL, '12', NULL, '14', 'QTR', 5, NULL, 148);

-- --------------------------------------------------------

--
-- Table structure for table `SCHEDULE_REQUESTS`
--

CREATE TABLE IF NOT EXISTS `SCHEDULE_REQUESTS` (
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `request_id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) DEFAULT NULL,
  `subject_id` decimal(10,0) DEFAULT NULL,
  `course_id` decimal(10,0) DEFAULT NULL,
  `course_weight` varchar(10) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `priority` decimal(10,0) DEFAULT NULL,
  `with_teacher_id` decimal(10,0) DEFAULT NULL,
  `not_teacher_id` decimal(10,0) DEFAULT NULL,
  `with_period_id` decimal(10,0) DEFAULT NULL,
  `not_period_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`request_id`),
  KEY `schedule_requests_ind1` (`student_id`,`course_id`,`course_weight`,`syear`,`school_id`) USING BTREE,
  KEY `schedule_requests_ind2` (`syear`,`school_id`) USING BTREE,
  KEY `schedule_requests_ind3` (`course_id`,`course_weight`,`syear`,`school_id`) USING BTREE,
  KEY `schedule_requests_ind4` (`with_teacher_id`) USING BTREE,
  KEY `schedule_requests_ind5` (`not_teacher_id`) USING BTREE,
  KEY `schedule_requests_ind6` (`with_period_id`) USING BTREE,
  KEY `schedule_requests_ind7` (`not_period_id`) USING BTREE,
  KEY `schedule_requests_ind8` (`request_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `SCHEDULE_REQUESTS`
--

INSERT INTO `SCHEDULE_REQUESTS` (`syear`, `school_id`, `request_id`, `student_id`, `subject_id`, `course_id`, `course_weight`, `marking_period_id`, `priority`, `with_teacher_id`, `not_teacher_id`, `with_period_id`, `not_period_id`) VALUES
('2009', '3', 1, '14', '10', '17', NULL, 13, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHOOLS`
--

CREATE TABLE IF NOT EXISTS `SCHOOLS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `area_code` decimal(3,0) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `principal` varchar(100) DEFAULT NULL,
  `www_address` varchar(100) DEFAULT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  `ceeb` varchar(100) DEFAULT NULL,
  `reporting_gp_scale` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schools_ind1` (`syear`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `SCHOOLS`
--

INSERT INTO `SCHOOLS` (`id`, `syear`, `title`, `address`, `city`, `state`, `zipcode`, `area_code`, `phone`, `principal`, `www_address`, `e_mail`, `ceeb`, `reporting_gp_scale`) VALUES
(1, '2009', 'Sample High School', '123 Main Street', 'Atlanta', 'GA', '30030', NULL, '404-555-1212', 'Dr. Sandra Worthington', 'www.opensis.com', 'info@school.edu', '45636', '4.000'),
(3, '2009', 'RVS College of Engineering', 'NH5', 'Jamshedpur', 'Jharkhand', '831003', NULL, '65722245', 'B. Singh', 'http://www.rvscet.com', 'principal@rvscet.com', NULL, '10.000'),
(4, '2009', 'GH Raisoni College of Engineering', 'Hingna', 'Nagpur', 'Maharashtr', '650001', NULL, '919191919', 'BN Jajoo', 'http://www/ghrce.com', 'bnjajoo@ghrce.com', NULL, '10.000'),
(5, '2009', 'Priyadarshini College of Engg', 'Hingna Road', 'Nagpur', 'Maharashtr', '78690', NULL, '9191919191', 'M Siddiqui', 'http://www.pcea.com', 'siddiqui@pcea.com', NULL, '20.000');

-- --------------------------------------------------------

--
-- Table structure for table `SCHOOL_GRADELEVELS`
--

CREATE TABLE IF NOT EXISTS `SCHOOL_GRADELEVELS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `school_id` decimal(10,0) DEFAULT NULL,
  `short_name` varchar(2) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `next_grade_id` decimal(10,0) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `school_gradelevels_ind1` (`school_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `SCHOOL_GRADELEVELS`
--

INSERT INTO `SCHOOL_GRADELEVELS` (`id`, `school_id`, `short_name`, `title`, `next_grade_id`, `sort_order`) VALUES
(1, '1', 'Fr', 'Freshman', '2', '1'),
(2, '1', 'So', 'Sophomore', '3', '2'),
(3, '1', 'jr', 'Junior', '4', '3'),
(4, '1', 'Sr', 'Senior', NULL, '4'),
(5, '3', 'gl', 'Grade Level 1', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `SCHOOL_PERIODS`
--

CREATE TABLE IF NOT EXISTS `SCHOOL_PERIODS` (
  `period_id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `length` decimal(10,0) DEFAULT NULL,
  `block` varchar(10) DEFAULT NULL,
  `ignore_scheduling` varchar(10) DEFAULT NULL,
  `attendance` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  `start_time` varchar(15) DEFAULT NULL,
  `end_time` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`period_id`),
  KEY `school_periods_ind1` (`period_id`,`syear`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `SCHOOL_PERIODS`
--

INSERT INTO `SCHOOL_PERIODS` (`period_id`, `syear`, `school_id`, `sort_order`, `title`, `short_name`, `length`, `block`, `ignore_scheduling`, `attendance`, `rollover_id`, `start_time`, `end_time`) VALUES
(1, '2009', '1', '1', 'Period 1', 'P1', '50', NULL, NULL, '', NULL, '8:00 AM', '8:50 AM'),
(2, '2009', '1', '2', 'Period 2', 'P2', '50', NULL, NULL, '', NULL, '9:00 AM', '9:50 AM'),
(3, '2009', '1', '3', 'Period 3', 'P3', '50', NULL, NULL, '', NULL, '10:00 AM', '10:50 AM'),
(4, '2009', '1', '4', 'Period 4', 'P4', '50', NULL, NULL, '', NULL, '11:00 AM', '11:50 AM'),
(5, '2009', '1', '5', 'Period 5', 'P5', '50', NULL, NULL, '', NULL, '12:00 PM', '12:50 PM'),
(6, '2009', '1', '6', 'Period 6', 'P6', '50', NULL, NULL, '', NULL, '1:00 PM', '1:50 PM'),
(7, '2009', '1', '7', 'Period 7', 'P7', '50', NULL, NULL, '', NULL, '2:00 PM', '2:50 PM'),
(8, '2009', '1', '0', 'Home Room', 'HR', '420', NULL, 'Y', 'Y', NULL, '8:00 AM', '3:00 PM'),
(9, '2009', '3', '1', 'Computer Networks', 'CN', '114', NULL, NULL, 'Y', NULL, '1:06 PM', '3:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `SCHOOL_PROGRESS_PERIODS`
--

CREATE TABLE IF NOT EXISTS `SCHOOL_PROGRESS_PERIODS` (
  `marking_period_id` int(11) NOT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `quarter_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `post_start_date` date DEFAULT NULL,
  `post_end_date` date DEFAULT NULL,
  `does_grades` varchar(1) DEFAULT NULL,
  `does_exam` varchar(1) DEFAULT NULL,
  `does_comments` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`marking_period_id`),
  KEY `school_progress_periods_ind1` (`quarter_id`) USING BTREE,
  KEY `school_progress_periods_ind2` (`syear`,`school_id`,`start_date`,`end_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHOOL_PROGRESS_PERIODS`
--

INSERT INTO `SCHOOL_PROGRESS_PERIODS` (`marking_period_id`, `syear`, `school_id`, `quarter_id`, `title`, `short_name`, `sort_order`, `start_date`, `end_date`, `post_start_date`, `post_end_date`, `does_grades`, `does_exam`, `does_comments`, `rollover_id`) VALUES
(16, '2009', '3', '15', 'Networking ', 'ntw', '1', '2010-04-01', '2010-06-30', '2010-04-01', '2010-06-30', 'Y', 'Y', 'Y', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHOOL_QUARTERS`
--

CREATE TABLE IF NOT EXISTS `SCHOOL_QUARTERS` (
  `marking_period_id` int(11) NOT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `semester_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `post_start_date` date DEFAULT NULL,
  `post_end_date` date DEFAULT NULL,
  `does_grades` varchar(1) DEFAULT NULL,
  `does_exam` varchar(1) DEFAULT NULL,
  `does_comments` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`marking_period_id`),
  KEY `school_quarters_ind1` (`semester_id`) USING BTREE,
  KEY `school_quarters_ind2` (`syear`,`school_id`,`start_date`,`end_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHOOL_QUARTERS`
--

INSERT INTO `SCHOOL_QUARTERS` (`marking_period_id`, `syear`, `school_id`, `semester_id`, `title`, `short_name`, `sort_order`, `start_date`, `end_date`, `post_start_date`, `post_end_date`, `does_grades`, `does_exam`, `does_comments`, `rollover_id`) VALUES
(3, '2009', '1', '1', 'Quarter 1', 'Q1', '110', '2009-08-17', '2009-10-09', '2009-10-05', '2009-10-16', 'Y', NULL, 'Y', NULL),
(4, '2009', '1', '1', 'Quarter 2', 'Q2', '120', '2009-10-12', '2010-01-08', '2010-01-04', '2010-01-15', 'Y', NULL, 'Y', NULL),
(5, '2009', '1', '2', 'Quarter 3', 'Q3', '210', '2010-01-11', '2010-03-05', '2010-03-01', '2010-03-12', 'Y', NULL, 'Y', NULL),
(6, '2009', '1', '2', 'Quarter 4', 'Q4', '220', '2010-03-08', '2010-05-28', '2010-05-24', '2010-06-04', 'Y', NULL, 'Y', NULL),
(15, '2009', '3', '14', '1st Quarter', 'Q 1', '3', '2010-04-01', '2010-06-30', '2010-04-01', '2010-06-30', 'Y', 'Y', 'Y', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHOOL_SEMESTERS`
--

CREATE TABLE IF NOT EXISTS `SCHOOL_SEMESTERS` (
  `marking_period_id` int(11) NOT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `year_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `post_start_date` date DEFAULT NULL,
  `post_end_date` date DEFAULT NULL,
  `does_grades` varchar(1) DEFAULT NULL,
  `does_exam` varchar(1) DEFAULT NULL,
  `does_comments` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`marking_period_id`),
  KEY `school_semesters_ind1` (`year_id`) USING BTREE,
  KEY `school_semesters_ind2` (`syear`,`school_id`,`start_date`,`end_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHOOL_SEMESTERS`
--

INSERT INTO `SCHOOL_SEMESTERS` (`marking_period_id`, `syear`, `school_id`, `year_id`, `title`, `short_name`, `sort_order`, `start_date`, `end_date`, `post_start_date`, `post_end_date`, `does_grades`, `does_exam`, `does_comments`, `rollover_id`) VALUES
(1, '2009', '1', '11', 'Semester 1', 'S1', '100', '2009-08-17', '2010-01-07', '2010-01-04', '2010-01-15', NULL, NULL, NULL, NULL),
(2, '2009', '1', '11', 'Semester 2', 'S2', '200', '2010-01-11', '2010-05-28', '2010-05-24', '2010-06-04', NULL, NULL, NULL, NULL),
(14, '2009', '3', '13', '7th Semester', '7th Sem', '2', '2010-06-01', '2010-12-31', '2010-06-01', '2010-12-31', 'Y', 'Y', 'Y', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHOOL_YEARS`
--

CREATE TABLE IF NOT EXISTS `SCHOOL_YEARS` (
  `marking_period_id` int(11) NOT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `post_start_date` date DEFAULT NULL,
  `post_end_date` date DEFAULT NULL,
  `does_grades` varchar(1) DEFAULT NULL,
  `does_exam` varchar(1) DEFAULT NULL,
  `does_comments` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`marking_period_id`),
  KEY `school_years_ind2` (`syear`,`school_id`,`start_date`,`end_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHOOL_YEARS`
--

INSERT INTO `SCHOOL_YEARS` (`marking_period_id`, `syear`, `school_id`, `title`, `short_name`, `sort_order`, `start_date`, `end_date`, `post_start_date`, `post_end_date`, `does_grades`, `does_exam`, `does_comments`, `rollover_id`) VALUES
(11, '2009', '1', 'Full Year', 'FY', '999', '2009-08-17', '2010-05-28', NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2009', '3', '8th Smester', '8th Sem', '1', '2010-06-01', '2010-12-31', '2010-06-01', '2010-12-31', 'Y', 'Y', 'Y', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `STAFF`
--

CREATE TABLE IF NOT EXISTS `STAFF` (
  `staff_id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `current_school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profile` varchar(30) DEFAULT NULL,
  `homeroom` varchar(5) DEFAULT NULL,
  `schools` varchar(255) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `failed_login` decimal(10,0) DEFAULT NULL,
  `profile_id` decimal(10,0) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  `is_disable` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `staff_ind4` (`username`,`syear`) USING BTREE,
  KEY `staff_ind1` (`staff_id`,`syear`) USING BTREE,
  KEY `staff_ind2` (`last_name`,`first_name`) USING BTREE,
  KEY `staff_ind3` (`schools`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `STAFF`
--

INSERT INTO `STAFF` (`staff_id`, `syear`, `current_school_id`, `title`, `first_name`, `last_name`, `middle_name`, `username`, `password`, `phone`, `email`, `profile`, `homeroom`, `schools`, `last_login`, `failed_login`, `profile_id`, `rollover_id`, `is_disable`) VALUES
(1, '2009', '3', 'Mr.', 'John', 'Administrator', 'A', 'admin', 'ae2b1fca515949e5d54fb22b8ed95575', NULL, NULL, 'admin', NULL, ',1,3,4,5,', '2010-06-18 13:00:00', NULL, '1', NULL, NULL),
(2, '2009', '1', 'Mrs.', 'Mary', 'Jones', 'M', 'teacher', '8d788385431273d11e8b43bb78f3aa41', NULL, NULL, 'teacher', NULL, ',1,', '2010-08-06 12:52:23', NULL, '2', NULL, NULL),
(3, '2009', '1', NULL, 'Dennis', 'Williams', ' ', 'parent', 'd0e45878043844ffc41aac437e86b602', NULL, NULL, 'parent', NULL, ',1,', '2010-06-15 12:52:02', NULL, '3', NULL, NULL),
(4, '2009', '1', 'Mr.', 'Derrick', 'Holland', NULL, 'derrick', 'ba8869bd398d1922f6d2ddd1c06c4ecc', NULL, NULL, 'teacher', NULL, ',1,', '2010-06-15 12:52:02', NULL, '2', NULL, NULL),
(5, '2009', '1', 'Ms.', 'Sandra', 'Wilcox', NULL, 'sandra', 'f40a37048732da05928c3d374549c832', NULL, NULL, 'teacher', NULL, ',1,', '2010-06-15 12:52:02', NULL, '2', NULL, NULL),
(6, '2009', '1', 'Dr', 'Jacob', 'Donoldson', 'A', 'jacob', '736b19f69aaca691fecd8400294cc383', NULL, NULL, 'teacher', NULL, ',1,', '2010-06-15 12:52:02', NULL, '2', NULL, NULL),
(7, '2009', '3', 'Mr.', 'Dharmendra', 'Jain', NULL, 'dharm', '301cd15a7467548adbb66ef7bd8f4a4e', '91919191', 'dh@jain.com', 'parent', NULL, ',3,', '2010-06-18 12:59:06', NULL, '3', NULL, NULL),
(8, '2009', '3', 'Mr.', 'TeacherOne', 'Teachers', NULL, 'TeacherOne', 'ee281b52012ec459027cf957f9fc0b5f', '91919191', 'teacher@rvscet.com', 'teacher', NULL, ',3,', '2010-06-15 17:28:15', '1', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `STAFF_EXCEPTIONS`
--

CREATE TABLE IF NOT EXISTS `STAFF_EXCEPTIONS` (
  `user_id` decimal(10,0) NOT NULL,
  `modname` varchar(255) DEFAULT NULL,
  `can_use` varchar(1) DEFAULT NULL,
  `can_edit` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STAFF_EXCEPTIONS`
--

INSERT INTO `STAFF_EXCEPTIONS` (`user_id`, `modname`, `can_use`, `can_edit`) VALUES
('1', 'School_Setup/PortalNotes.php', 'Y', 'Y'),
('1', 'School_Setup/Schools.php', 'Y', 'Y'),
('1', 'School_Setup/Schools.php?new_school=true', 'Y', 'Y'),
('1', 'School_Setup/CopySchool.php', 'Y', 'Y'),
('1', 'School_Setup/MarkingPeriods.php', 'Y', 'Y'),
('1', 'School_Setup/Calendar.php', 'Y', 'Y'),
('1', 'School_Setup/Periods.php', 'Y', 'Y'),
('1', 'School_Setup/GradeLevels.php', 'Y', 'Y'),
('1', 'School_Setup/Rollover.php', 'Y', 'Y'),
('1', 'Students/Student.php', 'Y', 'Y'),
('1', 'Students/Student.php&include=General_Info&student_id=new', 'Y', 'Y'),
('1', 'Students/AssignOtherInfo.php', 'Y', 'Y'),
('1', 'Students/AddUsers.php', 'Y', 'Y'),
('1', 'Students/AdvancedReport.php', 'Y', 'Y'),
('1', 'Students/AddDrop.php', 'Y', 'Y'),
('1', 'Students/Letters.php', 'Y', 'Y'),
('1', 'Students/MailingLabels.php', 'Y', 'Y'),
('1', 'Students/StudentLabels.php', 'Y', 'Y'),
('1', 'Students/PrintStudentInfo.php', 'Y', 'Y'),
('1', 'Students/StudentFields.php', 'Y', 'Y'),
('1', 'Students/AddressFields.php', 'Y', 'Y'),
('1', 'Students/PeopleFields.php', 'Y', 'Y'),
('1', 'Students/EnrollmentCodes.php', 'Y', 'Y'),
('1', 'Students/Student.php&category_id=1', 'Y', 'Y'),
('1', 'Students/Student.php&category_id=3', 'Y', 'Y'),
('1', 'Students/Student.php&category_id=2', 'Y', 'Y'),
('1', 'Users/User.php', 'Y', 'Y'),
('1', 'Users/User.php&category_id=1', 'Y', 'Y'),
('1', 'Users/User.php&staff_id=new', 'Y', 'Y'),
('1', 'Users/AddStudents.php', 'Y', 'Y'),
('1', 'Users/Preferences.php', 'Y', 'Y'),
('1', 'Users/Profiles.php', 'Y', 'Y'),
('1', 'Users/Exceptions.php', 'Y', 'Y'),
('1', 'Users/UserFields.php', 'Y', 'Y'),
('1', 'Users/TeacherPrograms.php?include=Grades/InputFinalGrades.php', 'Y', 'Y'),
('1', 'Users/TeacherPrograms.php?include=Grades/Grades.php', 'Y', 'Y'),
('1', 'Users/TeacherPrograms.php?include=Attendance/TakeAttendance.php', 'Y', 'Y'),
('1', 'Users/TeacherPrograms.php?include=Eligibility/EnterEligibility.php', 'Y', 'Y'),
('1', 'Scheduling/Schedule.php', 'Y', 'Y'),
('1', 'Scheduling/Requests.php', 'Y', 'Y'),
('1', 'Scheduling/MassSchedule.php', 'Y', 'Y'),
('1', 'Scheduling/MassRequests.php', 'Y', 'Y'),
('1', 'Scheduling/MassDrops.php', 'Y', 'Y'),
('1', 'Scheduling/ScheduleReport.php', 'Y', 'Y'),
('1', 'Scheduling/RequestsReport.php', 'Y', 'Y'),
('1', 'Scheduling/UnfilledRequests.php', 'Y', 'Y'),
('1', 'Scheduling/IncompleteSchedules.php', 'Y', 'Y'),
('1', 'Scheduling/AddDrop.php', 'Y', 'Y'),
('1', 'Scheduling/PrintSchedules.php', 'Y', 'Y'),
('1', 'Scheduling/PrintRequests.php', 'Y', 'Y'),
('1', 'Scheduling/PrintClassLists.php', 'Y', 'Y'),
('1', 'Scheduling/PrintClassPictures.php', 'Y', 'Y'),
('1', 'Scheduling/Courses.php', 'Y', 'Y'),
('1', 'Scheduling/Scheduler.php', 'Y', 'Y'),
('1', 'Grades/ReportCards.php', 'Y', 'Y'),
('1', 'Grades/CalcGPA.php', 'Y', 'Y'),
('1', 'Grades/Transcripts.php', 'Y', 'Y'),
('1', 'Grades/TeacherCompletion.php', 'Y', 'Y'),
('1', 'Grades/GradeBreakdown.php', 'Y', 'Y'),
('1', 'Grades/FinalGrades.php', 'Y', 'Y'),
('1', 'Grades/GPARankList.php', 'Y', 'Y'),
('1', 'Grades/FixGPA.php', 'Y', 'Y'),
('1', 'Attendance/Administration.php', 'Y', 'Y'),
('1', 'Attendance/AddAbsences.php', 'Y', 'Y'),
('1', 'Attendance/Percent.php', 'Y', 'Y'),
('1', 'Attendance/Percent.php?list_by_day=true', 'Y', 'Y'),
('1', 'Attendance/DailySummary.php', 'Y', 'Y'),
('1', 'Attendance/StudentSummary.php', 'Y', 'Y'),
('1', 'Attendance/TeacherCompletion.php', 'Y', 'Y'),
('1', 'Attendance/DuplicateAttendance.php', 'Y', 'Y'),
('1', 'Attendance/AttendanceCodes.php', 'Y', 'Y'),
('1', 'Attendance/FixDailyAttendance.php', 'Y', 'Y'),
('1', 'Eligibility/Student.php', 'Y', 'Y'),
('1', 'Eligibility/AddActivity.php', 'Y', 'Y'),
('1', 'Eligibility/StudentList.php', 'Y', 'Y'),
('1', 'Eligibility/TeacherCompletion.php', 'Y', 'Y'),
('1', 'Eligibility/Activities.php', 'Y', 'Y'),
('1', 'Eligibility/EntryTimes.php', 'Y', 'Y'),
('1', 'Grades/ReportCardComments.php', 'Y', 'Y'),
('1', 'Grades/ReportCardGrades.php', 'Y', 'Y'),
('1', 'Grades/EditReportCardGrades.php', 'Y', 'Y'),
('1', 'Grades/EditHistoryMarkingPeriods.php', 'Y', 'Y'),
('1', 'Grades/EditReportCardGrades.php', 'Y', 'Y'),
('1', 'Grades/EditHistoryMarkingPeriods.php', 'Y', 'Y'),
('1', 'Tools/Update.php', 'Y', 'Y'),
('1', 'Tools/InstallModule.php', 'Y', 'Y'),
('1', 'Tools/Backup.php', 'Y', 'Y'),
('1', 'Tools/Restore.php', 'Y', 'Y'),
('1', 'Tools/LogDetails.php', 'Y', 'Y'),
('1', 'Tools/DeleteLog.php', 'Y', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `STAFF_FIELDS`
--

CREATE TABLE IF NOT EXISTS `STAFF_FIELDS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `search` varchar(1) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `select_options` varchar(10000) DEFAULT NULL,
  `category_id` decimal(10,0) DEFAULT NULL,
  `system_field` char(1) DEFAULT NULL,
  `required` varchar(1) DEFAULT NULL,
  `default_selection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_desc_ind1` (`id`) USING BTREE,
  KEY `staff_desc_ind2` (`type`) USING BTREE,
  KEY `staff_fields_ind3` (`category_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `STAFF_FIELDS`
--


-- --------------------------------------------------------

--
-- Table structure for table `STAFF_FIELD_CATEGORIES`
--

CREATE TABLE IF NOT EXISTS `STAFF_FIELD_CATEGORIES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `include` varchar(100) DEFAULT NULL,
  `admin` char(1) DEFAULT NULL,
  `teacher` char(1) DEFAULT NULL,
  `parent` char(1) DEFAULT NULL,
  `none` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `STAFF_FIELD_CATEGORIES`
--

INSERT INTO `STAFF_FIELD_CATEGORIES` (`id`, `title`, `sort_order`, `include`, `admin`, `teacher`, `parent`, `none`) VALUES
(1, 'General Info', '1', NULL, 'Y', 'Y', 'Y', 'Y'),
(2, 'Schedule', '2', NULL, NULL, 'Y', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENTS`
--

CREATE TABLE IF NOT EXISTS `STUDENTS` (
  `student_id` int(8) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `name_suffix` varchar(3) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `failed_login` decimal(10,0) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `ethnicity` varchar(255) DEFAULT NULL,
  `common_name` varchar(255) DEFAULT NULL,
  `social_security` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `physician` varchar(255) DEFAULT NULL,
  `physician_phone` varchar(255) DEFAULT NULL,
  `preferred_hospital` varchar(255) DEFAULT NULL,
  `estimated_grad_date` varchar(255) DEFAULT NULL,
  `alt_id` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `name` (`last_name`,`first_name`,`middle_name`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `STUDENTS`
--

INSERT INTO `STUDENTS` (`student_id`, `last_name`, `first_name`, `middle_name`, `name_suffix`, `username`, `password`, `last_login`, `failed_login`, `gender`, `ethnicity`, `common_name`, `social_security`, `birthdate`, `language`, `physician`, `physician_phone`, `preferred_hospital`, `estimated_grad_date`, `alt_id`, `email`, `phone`) VALUES
(1, 'Williams', 'Robert', 'Alexander', NULL, 'student', 'cd73502828457d15655bbd7a63fb0bc8', '2010-08-13 12:34:17', NULL, 'Male', 'White, Non-Hispanic', 'Bob', NULL, '1995-12-04', 'English', NULL, NULL, NULL, '2013-06-04', 'GA1', 'robert@school.edu', '678-555-1212'),
(2, 'Griffin', 'Grace', 'Elizabeth', NULL, 'grace', '15e5c87b18c1289d45bb4a72961b58e8', '2010-02-08 21:54:53', NULL, 'Female', 'White, Non-Hispanic', 'Gracy', NULL, '1995-05-27', 'English', NULL, NULL, NULL, '2013-06-04', 'GA2', 'grace@school.edu', '404-555-1212'),
(3, 'Elabassi', 'Kareem', NULL, NULL, 'kareem', 'f3dfcc5c5ba4f2df56175d9fe896f18d', '2010-02-08 21:55:46', NULL, 'Male', 'Middle Eastern', 'Kareem', NULL, '1994-03-04', 'Arabic', NULL, NULL, NULL, '2012-06-04', 'GA3', 'kareem@school.edu', '404-555-1212'),
(4, 'Chowksy', 'Monica', 'Daniella', NULL, 'monica', 'ff0d813dd5d2f64dd372c6c4b6aed086', '2010-02-08 21:56:15', NULL, 'Female', 'White, Non-Hispanic', 'Monica', NULL, '1993-02-26', 'English', NULL, NULL, NULL, '2011-06-08', 'GA4', 'monica@school.edu', '678-555-1212'),
(5, 'Dillard', 'Ryan', 'Jacob', NULL, 'ryan', '10c7ccc7a4f0aff03c915c485565b9da', '2010-02-08 21:59:41', NULL, 'Male', 'Black, Non-Hispanic', 'Ryan', NULL, '1995-06-10', 'English', NULL, NULL, NULL, '2013-06-07', 'GA5', 'Ryan@school.edu', '770-555-1212'),
(6, 'Chawla', 'Mitali', NULL, NULL, 'mitali', '9180cf095734d9749ff5d8f41c89e248', '2010-02-08 22:04:32', NULL, 'Female', 'Indian', 'Mita', NULL, '1995-08-05', 'Hindi', NULL, NULL, NULL, '2013-06-07', 'GA6', 'mitali@school.edu', '770-555-1212'),
(7, 'Atkinson', 'Chase', 'William', NULL, 'chase', 'cd8e7918010a87cc619849e00265c9a6', '2010-02-08 22:07:27', NULL, 'Male', 'White, Non-Hispanic', 'Chase', NULL, '1992-02-16', 'English', NULL, NULL, NULL, '2010-06-04', 'GA7', 'chase@school.edu', '404-555-1212'),
(8, 'Rodriguez', 'Maria', 'Isabella', NULL, 'maria', '263bce650e68ab4e23f28263760b9fa5', '2010-02-08 22:12:27', NULL, 'Female', 'Hispanic', 'Maria', NULL, '1992-04-15', 'Spanish', NULL, NULL, NULL, '2011-06-08', 'GA8', 'maria@school.edu', '678-555-1212'),
(9, 'Milton', 'Lindy', 'E.', NULL, 'lindy', '3616c19bdb82c77557370cb94b40036f', '2010-02-08 22:16:21', NULL, 'Female', 'White, Non-Hispanic', 'Lindy', NULL, '1994-04-02', 'English', NULL, NULL, NULL, '2012-06-08', 'GA9', 'lindy@school.edu', '404-555-1212'),
(10, 'Allen', 'Rebecca', 'Josephine', NULL, 'becky', '2a63cc4aef5193e84c0b1c7d8d2abef5', '2010-02-08 22:49:10', NULL, 'Female', 'White, Non-Hispanic', 'Becky', NULL, '1993-05-28', 'English', 'Dr Hipkins', '404-555-1212', 'Kaiser Permanante', '2010-06-04', 'GA10', 'becky@school.edu', '770-555-1212'),
(11, 'Hall', 'Joshu', NULL, 'Jr.', 'joshua', 'd1133275ee2118be63a577af759fc052', '2010-02-08 22:24:57', NULL, 'Male', 'Black, Non-Hispanic', 'Josh', NULL, '1994-03-24', 'English', NULL, NULL, NULL, '2012-06-07', 'GA11', 'josh@school.edu', '404-555-1212'),
(12, 'Mellon', 'Jeffery', 'Christopher', NULL, 'jeffery', '913013028698f70c12b568ec173f5f86', '2010-02-08 22:28:07', NULL, 'Male', 'Black, Non-Hispanic', 'Jeff', NULL, '1993-06-19', 'English', NULL, NULL, NULL, '2011-06-03', 'GA12', 'jeff@school.edu', '404-555-1212'),
(13, 'Singh', 'Prabhu', 'Shiv', NULL, 'prabhu', 'dcddeca0df007ea104c728a160d509ea', '2010-06-15 15:32:00', NULL, 'Male', 'Indian', 'shiv', NULL, '1984-04-09', 'English', NULL, NULL, NULL, '2014-04-01', NULL, 'prabhu9484@gmail.com', '91919191919191'),
(14, 'Jain', 'Siddharth', NULL, NULL, 'sid', 'b8c1a3069167247e3503f0daba6c5723', '2010-06-15 17:22:04', NULL, 'Male', 'Indian', 'sid', NULL, '1983-01-01', 'Hindi', NULL, NULL, NULL, '2014-04-01', NULL, 'sidj@hotmail.com', '91919191');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENTS_JOIN_ADDRESS`
--

CREATE TABLE IF NOT EXISTS `STUDENTS_JOIN_ADDRESS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) NOT NULL,
  `address_id` decimal(10,0) NOT NULL,
  `contact_seq` decimal(10,0) DEFAULT NULL,
  `gets_mail` varchar(1) DEFAULT NULL,
  `primary_residence` varchar(1) DEFAULT NULL,
  `legal_residence` varchar(1) DEFAULT NULL,
  `am_bus` varchar(1) DEFAULT NULL,
  `pm_bus` varchar(1) DEFAULT NULL,
  `mailing` varchar(1) DEFAULT NULL,
  `residence` varchar(1) DEFAULT NULL,
  `bus` varchar(1) DEFAULT NULL,
  `bus_pickup` varchar(1) DEFAULT NULL,
  `bus_dropoff` varchar(1) DEFAULT NULL,
  `bus_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stu_addr_meets_2` (`address_id`) USING BTREE,
  KEY `stu_addr_meets_3` (`primary_residence`) USING BTREE,
  KEY `stu_addr_meets_4` (`legal_residence`) USING BTREE,
  KEY `students_join_address_ind1` (`student_id`) USING BTREE,
  KEY `sys_c007322` (`id`,`student_id`,`address_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `STUDENTS_JOIN_ADDRESS`
--

INSERT INTO `STUDENTS_JOIN_ADDRESS` (`id`, `student_id`, `address_id`, `contact_seq`, `gets_mail`, `primary_residence`, `legal_residence`, `am_bus`, `pm_bus`, `mailing`, `residence`, `bus`, `bus_pickup`, `bus_dropoff`, `bus_no`) VALUES
(1, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(2, '10', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(3, '7', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(4, '6', '4', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(5, '4', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(6, '5', '6', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(7, '3', '7', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(8, '2', '8', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(9, '11', '9', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(10, '12', '10', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(11, '9', '11', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL),
(12, '8', '12', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENTS_JOIN_PEOPLE`
--

CREATE TABLE IF NOT EXISTS `STUDENTS_JOIN_PEOPLE` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) NOT NULL,
  `person_id` decimal(10,0) NOT NULL,
  `address_id` decimal(10,0) DEFAULT NULL,
  `custody` varchar(1) DEFAULT NULL,
  `emergency` varchar(1) DEFAULT NULL,
  `student_relation` varchar(100) DEFAULT NULL,
  `addn_bus_pickup` varchar(2) DEFAULT NULL,
  `addn_bus_dropoff` varchar(2) DEFAULT NULL,
  `addn_busno` varchar(50) DEFAULT NULL,
  `addn_home_phone` varchar(100) DEFAULT NULL,
  `addn_work_phone` varchar(100) DEFAULT NULL,
  `addn_mobile_phone` varchar(100) DEFAULT NULL,
  `addn_email` varchar(100) DEFAULT NULL,
  `addn_address` varchar(100) DEFAULT NULL,
  `addn_street` varchar(100) DEFAULT NULL,
  `addn_city` varchar(100) DEFAULT NULL,
  `addn_state` varchar(100) DEFAULT NULL,
  `addn_zipcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `relations_meets_2` (`person_id`) USING BTREE,
  KEY `relations_meets_5` (`id`) USING BTREE,
  KEY `relations_meets_6` (`custody`,`emergency`) USING BTREE,
  KEY `students_join_people_ind1` (`student_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `STUDENTS_JOIN_PEOPLE`
--


-- --------------------------------------------------------

--
-- Table structure for table `STUDENTS_JOIN_USERS`
--

CREATE TABLE IF NOT EXISTS `STUDENTS_JOIN_USERS` (
  `student_id` decimal(10,0) NOT NULL,
  `staff_id` decimal(10,0) NOT NULL,
  PRIMARY KEY (`student_id`,`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STUDENTS_JOIN_USERS`
--

INSERT INTO `STUDENTS_JOIN_USERS` (`student_id`, `staff_id`) VALUES
('1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_ELIGIBILITY_ACTIVITIES`
--

CREATE TABLE IF NOT EXISTS `STUDENT_ELIGIBILITY_ACTIVITIES` (
  `syear` decimal(4,0) DEFAULT NULL,
  `student_id` decimal(10,0) DEFAULT NULL,
  `activity_id` decimal(10,0) DEFAULT NULL,
  KEY `student_eligibility_activities_ind1` (`student_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STUDENT_ELIGIBILITY_ACTIVITIES`
--

INSERT INTO `STUDENT_ELIGIBILITY_ACTIVITIES` (`syear`, `student_id`, `activity_id`) VALUES
('2009', '1', '5'),
('2009', '1', '4');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_ENROLLMENT`
--

CREATE TABLE IF NOT EXISTS `STUDENT_ENROLLMENT` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `student_id` decimal(10,0) DEFAULT NULL,
  `grade_id` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `enrollment_code` decimal(10,0) DEFAULT NULL,
  `drop_code` decimal(10,0) DEFAULT NULL,
  `next_school` decimal(10,0) DEFAULT NULL,
  `calendar_id` decimal(10,0) DEFAULT NULL,
  `last_school` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_enrollment_1` (`student_id`,`enrollment_code`) USING BTREE,
  KEY `student_enrollment_2` (`grade_id`) USING BTREE,
  KEY `student_enrollment_3` (`syear`,`student_id`,`school_id`,`grade_id`) USING BTREE,
  KEY `student_enrollment_6` (`start_date`,`end_date`) USING BTREE,
  KEY `student_enrollment_7` (`school_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `STUDENT_ENROLLMENT`
--

INSERT INTO `STUDENT_ENROLLMENT` (`id`, `syear`, `school_id`, `student_id`, `grade_id`, `start_date`, `end_date`, `enrollment_code`, `drop_code`, `next_school`, `calendar_id`, `last_school`) VALUES
(1, '2009', '1', '1', '1', '2009-08-17', NULL, '3', NULL, '1', '1', NULL),
(2, '2009', '1', '2', '1', '2009-08-17', NULL, '3', NULL, '1', '1', NULL),
(3, '2009', '1', '3', '2', '2009-08-17', NULL, '3', NULL, '1', '1', NULL),
(4, '2009', '1', '4', '3', '2009-11-09', NULL, '4', NULL, '1', '1', NULL),
(5, '2009', '1', '5', '1', '2009-08-17', NULL, '3', NULL, '1', '1', NULL),
(6, '2009', '1', '6', '1', '2009-08-17', NULL, '3', NULL, '1', '1', NULL),
(7, '2009', '1', '7', '4', '2009-12-08', NULL, '6', NULL, '-1', '1', NULL),
(8, '2009', '1', '8', '3', '2009-08-17', NULL, '3', NULL, '1', '1', NULL),
(9, '2009', '1', '9', '2', '2009-08-17', NULL, '3', NULL, '1', '1', NULL),
(10, '2009', '1', '10', '4', '2009-08-17', NULL, '3', NULL, '-1', '1', NULL),
(11, '2009', '1', '11', '2', '2009-08-17', NULL, '3', NULL, '1', '1', NULL),
(12, '2009', '1', '12', '3', '2009-08-17', NULL, '4', NULL, '1', '1', NULL),
(13, '2009', '3', '13', '5', '2010-06-01', NULL, NULL, NULL, NULL, '2', NULL),
(14, '2009', '3', '14', '5', '2010-06-01', NULL, '3', NULL, '3', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_ENROLLMENT_CODES`
--

CREATE TABLE IF NOT EXISTS `STUDENT_ENROLLMENT_CODES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `STUDENT_ENROLLMENT_CODES`
--

INSERT INTO `STUDENT_ENROLLMENT_CODES` (`id`, `syear`, `title`, `short_name`, `type`) VALUES
(1, '2009', 'Moved from District', 'MOVE', 'Drop'),
(2, '2009', 'Expelled', 'EXP', 'Drop'),
(3, '2009', 'Beginning of Year', 'EBY', 'Add'),
(4, '2009', 'From Other District', 'OTHER', 'Add'),
(5, '2009', 'Transferred in District', 'TRAN', 'Drop'),
(6, '2009', 'Transferred in District', 'EMY', 'Add');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_FIELD_CATEGORIES`
--

CREATE TABLE IF NOT EXISTS `STUDENT_FIELD_CATEGORIES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `include` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `STUDENT_FIELD_CATEGORIES`
--

INSERT INTO `STUDENT_FIELD_CATEGORIES` (`id`, `title`, `sort_order`, `include`) VALUES
(1, 'General Info', '1', NULL),
(2, 'Medical', '3', NULL),
(3, 'Addresses & Contacts', '2', NULL),
(4, 'Comments', '4', NULL),
(5, 'Goals', '6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_GPA_CALCULATED`
--

CREATE TABLE IF NOT EXISTS `STUDENT_GPA_CALCULATED` (
  `student_id` decimal(10,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `mp` varchar(4) DEFAULT NULL,
  `gpa` decimal(10,0) DEFAULT NULL,
  `weighted_gpa` decimal(10,0) DEFAULT NULL,
  `unweighted_gpa` decimal(10,0) DEFAULT NULL,
  `class_rank` decimal(10,0) DEFAULT NULL,
  KEY `student_gpa_calculated_ind1` (`marking_period_id`,`student_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STUDENT_GPA_CALCULATED`
--


-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_GPA_RUNNING`
--

CREATE TABLE IF NOT EXISTS `STUDENT_GPA_RUNNING` (
  `student_id` decimal(10,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `gpa_points` decimal(10,0) DEFAULT NULL,
  `gpa_points_weighted` decimal(10,0) DEFAULT NULL,
  `divisor` decimal(10,0) DEFAULT NULL,
  KEY `student_gpa_running_ind1` (`marking_period_id`,`student_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STUDENT_GPA_RUNNING`
--


-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_MEDICAL`
--

CREATE TABLE IF NOT EXISTS `STUDENT_MEDICAL` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `medical_date` date DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_medical_ind1` (`student_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `STUDENT_MEDICAL`
--

INSERT INTO `STUDENT_MEDICAL` (`id`, `student_id`, `type`, `medical_date`, `comments`) VALUES
(1, '10', 'Physical', '2009-06-25', 'Complete physical on record');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_MEDICAL_ALERTS`
--

CREATE TABLE IF NOT EXISTS `STUDENT_MEDICAL_ALERTS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alert_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_medical_alerts_ind1` (`student_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `STUDENT_MEDICAL_ALERTS`
--

INSERT INTO `STUDENT_MEDICAL_ALERTS` (`id`, `student_id`, `title`, `alert_date`) VALUES
(1, '10', 'Allergy in MSG confirmed by PCP', '2009-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_MEDICAL_NOTES`
--

CREATE TABLE IF NOT EXISTS `STUDENT_MEDICAL_NOTES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) NOT NULL,
  `doctors_note_date` date DEFAULT NULL,
  `doctors_note_comments` varchar(2052) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `STUDENT_MEDICAL_NOTES`
--

INSERT INTO `STUDENT_MEDICAL_NOTES` (`id`, `student_id`, `doctors_note_date`, `doctors_note_comments`) VALUES
(1, '10', '2009-09-02', 'Allergy in MSG');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_MEDICAL_VISITS`
--

CREATE TABLE IF NOT EXISTS `STUDENT_MEDICAL_VISITS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) DEFAULT NULL,
  `school_date` date DEFAULT NULL,
  `time_in` varchar(20) DEFAULT NULL,
  `time_out` varchar(20) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  KEY `student_medical_visits_ind1` (`student_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `STUDENT_MEDICAL_VISITS`
--

INSERT INTO `STUDENT_MEDICAL_VISITS` (`id`, `student_id`, `school_date`, `time_in`, `time_out`, `reason`, `result`, `comments`) VALUES
(1, '10', '2009-08-25', '10:00 AM', '10:30 AM', 'skin break out', 'allergy suspect', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_MP_COMMENTS`
--

CREATE TABLE IF NOT EXISTS `STUDENT_MP_COMMENTS` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) NOT NULL,
  `syear` decimal(4,0) NOT NULL,
  `marking_period_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `comment` text,
  `comment_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `STUDENT_MP_COMMENTS`
--


-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_MP_STATS`
--

CREATE TABLE IF NOT EXISTS `STUDENT_MP_STATS` (
  `student_id` int(11) NOT NULL,
  `marking_period_id` int(11) NOT NULL,
  `cum_weighted_factor` decimal(10,6) DEFAULT NULL,
  `cum_unweighted_factor` decimal(10,6) DEFAULT NULL,
  `cum_rank` int(11) DEFAULT NULL,
  `mp_rank` int(11) DEFAULT NULL,
  `sum_weighted_factors` decimal(10,6) DEFAULT NULL,
  `sum_unweighted_factors` decimal(10,6) DEFAULT NULL,
  `count_weighted_factors` int(11) DEFAULT NULL,
  `count_unweighted_factors` int(11) DEFAULT NULL,
  `grade_level_short` varchar(3) DEFAULT NULL,
  `class_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`marking_period_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STUDENT_MP_STATS`
--

INSERT INTO `STUDENT_MP_STATS` (`student_id`, `marking_period_id`, `cum_weighted_factor`, `cum_unweighted_factor`, `cum_rank`, `mp_rank`, `sum_weighted_factors`, `sum_unweighted_factors`, `count_weighted_factors`, `count_unweighted_factors`, `grade_level_short`, `class_size`) VALUES
(10, 3, '0.736250', '0.736250', 1, NULL, '4.752500', '4.752500', 6, 6, 'Sr', NULL),
(6, 3, '0.833333', '0.833333', 2, NULL, '4.915000', '4.915000', 6, 6, 'Fr', NULL),
(5, 3, '0.847500', '0.847500', 1, NULL, '4.917500', '4.917500', 6, 6, 'Fr', NULL),
(3, 3, '0.764167', '0.764167', 1, NULL, '5.002500', '5.002500', 6, 6, 'So', NULL),
(2, 3, '0.722083', '0.722083', 3, NULL, '4.667500', '4.667500', 6, 6, 'Fr', NULL),
(11, 3, '0.708750', '0.708750', 2, NULL, '4.335000', '4.335000', 6, 6, 'So', NULL),
(12, 3, '0.486250', '0.486250', 2, NULL, '3.335000', '3.335000', 6, 6, 'jr', NULL),
(9, 3, '0.472083', '0.472083', 3, NULL, '2.832500', '2.832500', 6, 6, 'So', NULL),
(8, 3, '0.652500', '0.652500', 1, NULL, '4.080000', '4.080000', 6, 6, 'jr', NULL),
(1, 3, '0.638750', '0.638750', 4, NULL, '3.750000', '3.750000', 6, 6, 'Fr', NULL),
(10, 4, '0.736250', '0.736250', 2, NULL, '3.000000', '3.000000', 4, 4, 'Sr', NULL),
(7, 4, '0.917500', '0.917500', 1, NULL, '3.335000', '3.335000', 4, 4, 'Sr', NULL),
(6, 4, '0.833333', '0.833333', 2, NULL, '3.585000', '3.585000', 4, 4, 'Fr', NULL),
(4, 4, '0.750000', '0.750000', 1, NULL, '3.250000', '3.250000', 4, 4, 'jr', NULL),
(5, 4, '0.847500', '0.847500', 1, NULL, '3.082500', '3.082500', 4, 4, 'Fr', NULL),
(3, 4, '0.764167', '0.764167', 1, NULL, '2.250000', '2.250000', 4, 4, 'So', NULL),
(2, 4, '0.722083', '0.722083', 3, NULL, '2.832500', '2.832500', 4, 4, 'Fr', NULL),
(11, 4, '0.708750', '0.708750', 2, NULL, '2.835000', '2.835000', 4, 4, 'So', NULL),
(12, 4, '0.486250', '0.486250', 3, NULL, '1.500000', '1.500000', 4, 4, 'jr', NULL),
(9, 4, '0.472083', '0.472083', 3, NULL, '2.832500', '2.832500', 4, 4, 'So', NULL),
(8, 4, '0.652500', '0.652500', 2, NULL, '2.250000', '2.250000', 4, 4, 'jr', NULL),
(1, 4, '0.638750', '0.638750', 4, NULL, '2.250000', '2.250000', 4, 4, 'Fr', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_REPORT_CARD_COMMENTS`
--

CREATE TABLE IF NOT EXISTS `STUDENT_REPORT_CARD_COMMENTS` (
  `syear` decimal(4,0) NOT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `student_id` decimal(10,0) NOT NULL,
  `course_period_id` decimal(10,0) NOT NULL,
  `report_card_comment_id` decimal(10,0) NOT NULL,
  `comment` varchar(1) DEFAULT NULL,
  `marking_period_id` int(11) NOT NULL,
  PRIMARY KEY (`syear`,`student_id`,`course_period_id`,`marking_period_id`,`report_card_comment_id`),
  KEY `student_report_card_comments_ind1` (`school_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STUDENT_REPORT_CARD_COMMENTS`
--

INSERT INTO `STUDENT_REPORT_CARD_COMMENTS` (`syear`, `school_id`, `student_id`, `course_period_id`, `report_card_comment_id`, `comment`, `marking_period_id`) VALUES
('2009', '1', '12', '9', '2', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_REPORT_CARD_GRADES`
--

CREATE TABLE IF NOT EXISTS `STUDENT_REPORT_CARD_GRADES` (
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `student_id` decimal(10,0) NOT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  `report_card_grade_id` decimal(10,0) DEFAULT NULL,
  `report_card_comment_id` decimal(10,0) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `grade_percent` decimal(4,1) DEFAULT NULL,
  `marking_period_id` varchar(10) NOT NULL,
  `grade_letter` varchar(5) DEFAULT NULL,
  `weighted_gp` decimal(10,3) DEFAULT NULL,
  `unweighted_gp` decimal(10,3) DEFAULT NULL,
  `gp_scale` decimal(10,3) DEFAULT NULL,
  `credit_attempted` decimal(10,3) DEFAULT NULL,
  `credit_earned` decimal(10,3) DEFAULT NULL,
  `credit_category` varchar(10) DEFAULT NULL,
  `course_title` varchar(100) DEFAULT NULL,
  `id` int(8) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `student_report_card_grades_ind1` (`school_id`) USING BTREE,
  KEY `student_report_card_grades_ind2` (`student_id`) USING BTREE,
  KEY `student_report_card_grades_ind3` (`course_period_id`) USING BTREE,
  KEY `student_report_card_grades_ind4` (`marking_period_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `STUDENT_REPORT_CARD_GRADES`
--

INSERT INTO `STUDENT_REPORT_CARD_GRADES` (`syear`, `school_id`, `student_id`, `course_period_id`, `report_card_grade_id`, `report_card_comment_id`, `comment`, `grade_percent`, `marking_period_id`, `grade_letter`, `weighted_gp`, `unweighted_gp`, `gp_scale`, `credit_attempted`, `credit_earned`, `credit_category`, `course_title`, `id`) VALUES
('2009', '1', '10', '4', '19', NULL, NULL, '89.0', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 1),
('2009', '1', '6', '4', '18', NULL, NULL, '92.0', '3', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 2),
('2009', '1', '5', '4', '17', NULL, NULL, '95.0', '3', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 3),
('2009', '1', '3', '4', '16', NULL, NULL, '98.0', '3', 'A+', '4.000', '4.000', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 4),
('2009', '1', '2', '4', '19', NULL, NULL, '89.0', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 5),
('2009', '1', '11', '4', '22', NULL, NULL, '78.0', '3', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 6),
('2009', '1', '12', '4', '16', NULL, NULL, '99.0', '3', 'A+', '4.000', '4.000', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 7),
('2009', '1', '9', '4', '23', NULL, NULL, '76.0', '3', 'C', '1.670', '1.670', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 8),
('2009', '1', '8', '4', '19', NULL, NULL, '89.0', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 9),
('2009', '1', '1', '4', '18', NULL, NULL, '92.0', '3', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 10),
('2009', '1', '10', '2', '19', NULL, NULL, '88.0', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'US History', 11),
('2009', '1', '6', '2', '19', NULL, NULL, '89.0', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'US History', 12),
('2009', '1', '5', '2', '18', NULL, NULL, '91.0', '3', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'US History', 13),
('2009', '1', '3', '2', '17', NULL, NULL, '93.0', '3', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'US History', 14),
('2009', '1', '2', '2', '17', NULL, NULL, '95.0', '3', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'US History', 15),
('2009', '1', '11', '2', '19', NULL, NULL, '87.0', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'US History', 16),
('2009', '1', '12', '2', '23', NULL, NULL, '75.0', '3', 'C', '1.670', '1.670', '4.000', '0.750', '0.750', NULL, 'US History', 17),
('2009', '1', '9', '2', '29', NULL, NULL, '58.0', '3', 'Inc', '0.000', '0.000', '4.000', '0.750', '0.000', NULL, 'US History', 18),
('2009', '1', '8', '2', '22', NULL, NULL, '77.0', '3', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'US History', 19),
('2009', '1', '1', '2', '17', NULL, NULL, '94.0', '3', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'US History', 20),
('2009', '1', '10', '8', '17', NULL, NULL, '95.0', '3', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'English', 21),
('2009', '1', '6', '8', '17', NULL, NULL, '95.0', '3', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'English', 22),
('2009', '1', '5', '8', '16', NULL, NULL, '98.5', '3', 'A+', '4.000', '4.000', '4.000', '0.750', '0.750', NULL, 'English', 23),
('2009', '1', '3', '8', '20', NULL, NULL, '85.0', '3', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'English', 24),
('2009', '1', '2', '8', '16', NULL, NULL, '98.5', '3', 'A+', '4.000', '4.000', '4.000', '0.750', '0.750', NULL, 'English', 25),
('2009', '1', '11', '8', '20', NULL, NULL, '85.0', '3', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'English', 26),
('2009', '1', '12', '8', '22', NULL, NULL, '78.5', '3', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'English', 27),
('2009', '1', '9', '8', '18', NULL, NULL, '91.5', '3', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'English', 28),
('2009', '1', '8', '8', '21', NULL, NULL, '81.5', '3', 'B-', '2.330', '2.330', '4.000', '0.750', '0.750', NULL, 'English', 29),
('2009', '1', '1', '8', '22', NULL, NULL, '78.5', '3', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'English', 30),
('2009', '1', '10', '7', '20', NULL, NULL, '85.0', '3', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'Music', 31),
('2009', '1', '6', '7', '19', NULL, NULL, '88.5', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'Music', 32),
('2009', '1', '5', '7', '19', NULL, NULL, '88.5', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'Music', 33),
('2009', '1', '3', '7', '18', NULL, NULL, '91.5', '3', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'Music', 34),
('2009', '1', '2', '7', '18', NULL, NULL, '91.5', '3', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'Music', 35),
('2009', '1', '11', '7', '20', NULL, NULL, '85.0', '3', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'Music', 36),
('2009', '1', '12', '7', '21', NULL, NULL, '81.5', '3', 'B-', '2.330', '2.330', '4.000', '0.750', '0.750', NULL, 'Music', 37),
('2009', '1', '9', '7', '22', NULL, NULL, '78.5', '3', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'Music', 38),
('2009', '1', '8', '7', '21', NULL, NULL, '81.5', '3', 'B-', '2.330', '2.330', '4.000', '0.750', '0.750', NULL, 'Music', 39),
('2009', '1', '1', '7', '19', NULL, NULL, '88.5', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'Music', 40),
('2009', '1', '10', '6', '17', NULL, NULL, '95.0', '3', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'English', 41),
('2009', '1', '6', '6', '18', NULL, NULL, '91.5', '3', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'English', 42),
('2009', '1', '5', '6', '19', NULL, NULL, '88.5', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'English', 43),
('2009', '1', '3', '6', '20', NULL, NULL, '85.0', '3', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'English', 44),
('2009', '1', '2', '6', '20', NULL, NULL, '85.0', '3', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'English', 45),
('2009', '1', '11', '6', '19', NULL, NULL, '88.5', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'English', 46),
('2009', '1', '12', '6', '20', NULL, NULL, '85.0', '3', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'English', 47),
('2009', '1', '9', '6', '21', NULL, NULL, '81.5', '3', 'B-', '2.330', '2.330', '4.000', '0.750', '0.750', NULL, 'English', 48),
('2009', '1', '8', '6', '18', NULL, NULL, '91.5', '3', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'English', 49),
('2009', '1', '1', '6', '19', NULL, NULL, '88.5', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'English', 50),
('2009', '1', '10', '3', '19', NULL, NULL, '88.5', '3', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'GeoScience', 51),
('2009', '1', '6', '3', '18', NULL, NULL, '91.5', '3', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'GeoScience', 52),
('2009', '1', '5', '3', '20', NULL, NULL, '85.0', '3', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'GeoScience', 53),
('2009', '1', '3', '3', '17', NULL, NULL, '95.0', '3', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'GeoScience', 54),
('2009', '1', '2', '3', '22', NULL, NULL, '78.5', '3', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'GeoScience', 55),
('2009', '1', '11', '3', '16', NULL, NULL, '98.5', '3', 'A+', '4.000', '4.000', '4.000', '0.750', '0.750', NULL, 'GeoScience', 56),
('2009', '1', '12', '3', '26', NULL, NULL, '65.0', '3', 'D', '0.670', '0.670', '4.000', '0.750', '0.750', NULL, 'GeoScience', 57),
('2009', '1', '9', '3', '22', NULL, NULL, '78.5', '3', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'GeoScience', 58),
('2009', '1', '8', '3', '18', NULL, NULL, '91.5', '3', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'GeoScience', 59),
('2009', '1', '1', '3', '28', NULL, NULL, '59.5', '3', 'F', '0.000', '0.000', '4.000', '0.750', '0.000', NULL, 'GeoScience', 60),
('2009', '1', '10', '9', '19', NULL, NULL, '88.5', '4', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 61),
('2009', '1', '7', '9', '17', NULL, NULL, '95.0', '4', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 62),
('2009', '1', '6', '9', '17', NULL, NULL, '95.0', '4', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 63),
('2009', '1', '4', '9', '20', NULL, NULL, '85.0', '4', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 64),
('2009', '1', '5', '9', '16', NULL, NULL, '98.5', '4', 'A+', '4.000', '4.000', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 65),
('2009', '1', '3', '9', '22', NULL, NULL, '78.5', '4', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 66),
('2009', '1', '2', '9', '21', NULL, NULL, '81.5', '4', 'B-', '2.330', '2.330', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 67),
('2009', '1', '11', '9', '23', NULL, NULL, '75.0', '4', 'C', '1.670', '1.670', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 68),
('2009', '1', '12', '9', '25', NULL, NULL, '68.5', '4', 'D+', '1.000', '1.000', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 69),
('2009', '1', '9', '9', '18', NULL, NULL, '91.5', '4', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 70),
('2009', '1', '8', '9', '17', NULL, NULL, '95.0', '4', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 71),
('2009', '1', '1', '9', '24', NULL, NULL, '71.5', '4', 'C-', '1.330', '1.330', '4.000', '0.750', '0.750', NULL, 'EveryDayMath', 72),
('2009', '1', '10', '13', '19', NULL, NULL, '88.5', '4', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'US History', 73),
('2009', '1', '6', '13', '17', NULL, NULL, '95.0', '4', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'US History', 74),
('2009', '1', '4', '13', '18', NULL, NULL, '91.5', '4', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'US History', 75),
('2009', '1', '5', '13', '17', NULL, NULL, '95.0', '4', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'US History', 76),
('2009', '1', '3', '13', '23', NULL, NULL, '75.0', '4', 'C', '1.670', '1.670', '4.000', '0.750', '0.750', NULL, 'US History', 77),
('2009', '1', '2', '13', '19', NULL, NULL, '88.5', '4', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'US History', 78),
('2009', '1', '11', '13', '17', NULL, NULL, '95.0', '4', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'US History', 79),
('2009', '1', '12', '13', '22', NULL, NULL, '78.5', '4', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'US History', 80),
('2009', '1', '9', '13', '21', NULL, NULL, '81.5', '4', 'B-', '2.330', '2.330', '4.000', '0.750', '0.750', NULL, 'US History', 81),
('2009', '1', '8', '13', '24', NULL, NULL, '71.5', '4', 'C-', '1.330', '1.330', '4.000', '0.750', '0.750', NULL, 'US History', 82),
('2009', '1', '1', '13', '16', NULL, NULL, '98.5', '4', 'A+', '4.000', '4.000', '4.000', '0.750', '0.750', NULL, 'US History', 83),
('2009', '1', '10', '8', '19', NULL, NULL, '88.5', '4', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'English', 84),
('2009', '1', '7', '8', '20', NULL, NULL, '85.0', '4', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'English', 85),
('2009', '1', '6', '8', '18', NULL, NULL, '91.5', '4', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'English', 86),
('2009', '1', '4', '8', '17', NULL, NULL, '95.0', '4', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'English', 87),
('2009', '1', '5', '8', '21', NULL, NULL, '81.5', '4', 'B-', '2.330', '2.330', '4.000', '0.750', '0.750', NULL, 'English', 88),
('2009', '1', '3', '8', '22', NULL, NULL, '78.5', '4', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'English', 89),
('2009', '1', '2', '8', '19', NULL, NULL, '88.5', '4', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'English', 90),
('2009', '1', '11', '8', '18', NULL, NULL, '91.5', '4', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'English', 91),
('2009', '1', '12', '8', '25', NULL, NULL, '68.5', '4', 'D+', '1.000', '1.000', '4.000', '0.750', '0.750', NULL, 'English', 92),
('2009', '1', '9', '8', '22', NULL, NULL, '78.5', '4', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'English', 93),
('2009', '1', '8', '8', '21', NULL, NULL, '81.5', '4', 'B-', '2.330', '2.330', '4.000', '0.750', '0.750', NULL, 'English', 94),
('2009', '1', '1', '8', '20', NULL, NULL, '85.0', '4', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'English', 95),
('2009', '1', '10', '6', '19', NULL, NULL, '88.5', '4', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'English', 96),
('2009', '1', '7', '6', '18', NULL, NULL, '91.5', '4', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'English', 97),
('2009', '1', '6', '6', '17', NULL, NULL, '95.0', '4', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'English', 98),
('2009', '1', '4', '6', '18', NULL, NULL, '91.5', '4', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'English', 99),
('2009', '1', '5', '6', '21', NULL, NULL, '81.5', '4', 'B-', '2.330', '2.330', '4.000', '0.750', '0.750', NULL, 'English', 100),
('2009', '1', '3', '6', '18', NULL, NULL, '91.5', '4', 'A-', '3.330', '3.330', '4.000', '0.750', '0.750', NULL, 'English', 101),
('2009', '1', '2', '6', '19', NULL, NULL, '88.5', '4', 'B+', '3.000', '3.000', '4.000', '0.750', '0.750', NULL, 'English', 102),
('2009', '1', '11', '6', '20', NULL, NULL, '85.0', '4', 'B', '2.670', '2.670', '4.000', '0.750', '0.750', NULL, 'English', 103),
('2009', '1', '12', '6', '22', NULL, NULL, '78.5', '4', 'C+', '2.000', '2.000', '4.000', '0.750', '0.750', NULL, 'English', 104),
('2009', '1', '9', '6', '17', NULL, NULL, '95.0', '4', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'English', 105),
('2009', '1', '8', '6', '23', NULL, NULL, '75.0', '4', 'C', '1.670', '1.670', '4.000', '0.750', '0.750', NULL, 'English', 106),
('2009', '1', '1', '6', '25', NULL, NULL, '68.5', '4', 'D+', '1.000', '1.000', '4.000', '0.750', '0.750', NULL, 'English', 107),
('2009', '1', '7', '13', '17', NULL, NULL, '95.0', '4', 'A', '3.670', '3.670', '4.000', '0.750', '0.750', NULL, 'US History', 108);

--
-- Triggers `STUDENT_REPORT_CARD_GRADES`
--
DROP TRIGGER IF EXISTS `ti_student_report_card_grades`;
DELIMITER //
CREATE TRIGGER `ti_student_report_card_grades` AFTER INSERT ON `STUDENT_REPORT_CARD_GRADES`
 FOR EACH ROW SELECT CALC_GPA_MP(NEW.student_id, NEW.marking_period_id) INTO @return$$
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tu_student_report_card_grades`;
DELIMITER //
CREATE TRIGGER `tu_student_report_card_grades` AFTER UPDATE ON `STUDENT_REPORT_CARD_GRADES`
 FOR EACH ROW SELECT CALC_GPA_MP(NEW.student_id, NEW.marking_period_id) INTO @return$$
//
DELIMITER ;
DROP TRIGGER IF EXISTS `td_student_report_card_grades`;
DELIMITER //
CREATE TRIGGER `td_student_report_card_grades` AFTER DELETE ON `STUDENT_REPORT_CARD_GRADES`
 FOR EACH ROW SELECT CALC_GPA_MP(OLD.student_id, OLD.marking_period_id) INTO @return$$
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `SYSTEM_PREFERENCE`
--

CREATE TABLE IF NOT EXISTS `SYSTEM_PREFERENCE` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `school_id` int(8) NOT NULL,
  `full_day_minute` int(8) DEFAULT NULL,
  `half_day_minute` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `SYSTEM_PREFERENCE`
--

INSERT INTO `SYSTEM_PREFERENCE` (`id`, `school_id`, `full_day_minute`, `half_day_minute`) VALUES
(1, 1, 300, 150),
(2, 3, NULL, NULL),
(3, 4, NULL, NULL),
(4, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `TRANSCRIPT_GRADES`
--
CREATE TABLE IF NOT EXISTS `TRANSCRIPT_GRADES` (
`school_id` int(8)
,`mp_source` varchar(7)
,`mp_id` int(11)
,`mp_name` varchar(50)
,`syear` decimal(10,0)
,`posted` date
,`student_id` decimal(10,0)
,`gradelevel` varchar(3)
,`grade_letter` varchar(5)
,`gp_value` decimal(10,3)
,`weighting` decimal(10,3)
,`gp_scale` decimal(10,3)
,`credit_attempted` decimal(10,3)
,`credit_earned` decimal(10,3)
,`credit_category` varchar(10)
,`course_name` varchar(100)
,`cum_gp_factor` decimal(10,6)
,`cum_gpa` decimal(20,9)
,`gpa` decimal(24,13)
,`cum_rank` int(11)
,`sort_order` decimal(10,0)
);
-- --------------------------------------------------------

--
-- Table structure for table `USER_PROFILES`
--

CREATE TABLE IF NOT EXISTS `USER_PROFILES` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `profile` varchar(30) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `USER_PROFILES`
--

INSERT INTO `USER_PROFILES` (`id`, `profile`, `title`) VALUES
(0, 'student', 'Student'),
(1, 'admin', 'Administrator'),
(2, 'teacher', 'Teacher'),
(3, 'parent', 'Parent');

-- --------------------------------------------------------

--
-- Structure for view `COURSE_DETAILS`
--
DROP TABLE IF EXISTS `COURSE_DETAILS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `COURSE_DETAILS` AS select `cp`.`school_id` AS `school_id`,`cp`.`syear` AS `syear`,`cp`.`marking_period_id` AS `marking_period_id`,`cp`.`period_id` AS `period_id`,`c`.`subject_id` AS `subject_id`,`cp`.`course_id` AS `course_id`,`cp`.`course_period_id` AS `course_period_id`,`cp`.`teacher_id` AS `teacher_id`,`c`.`title` AS `course_title`,`cp`.`title` AS `cp_title`,`cp`.`grade_scale_id` AS `grade_scale_id`,`cp`.`mp` AS `mp`,`cp`.`credits` AS `credits` from (`COURSE_PERIODS` `cp` join `COURSES` `c`) where (`cp`.`course_id` = `c`.`course_id`);

-- --------------------------------------------------------

--
-- Structure for view `ENROLL_GRADE`
--
DROP TABLE IF EXISTS `ENROLL_GRADE`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ENROLL_GRADE` AS select `e`.`id` AS `id`,`e`.`syear` AS `syear`,`e`.`school_id` AS `school_id`,`e`.`student_id` AS `student_id`,`e`.`start_date` AS `start_date`,`e`.`end_date` AS `end_date`,`sg`.`short_name` AS `short_name`,`sg`.`title` AS `title` from (`STUDENT_ENROLLMENT` `e` join `SCHOOL_GRADELEVELS` `sg`) where (`e`.`grade_id` = `sg`.`id`);

-- --------------------------------------------------------

--
-- Structure for view `MARKING_PERIODS`
--
DROP TABLE IF EXISTS `MARKING_PERIODS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `MARKING_PERIODS` AS select `q`.`marking_period_id` AS `marking_period_id`,'Centre' AS `mp_source`,`q`.`syear` AS `syear`,`q`.`school_id` AS `school_id`,'quarter' AS `mp_type`,`q`.`title` AS `title`,`q`.`short_name` AS `short_name`,`q`.`sort_order` AS `sort_order`,`q`.`semester_id` AS `parent_id`,`s`.`year_id` AS `grandparent_id`,`q`.`start_date` AS `start_date`,`q`.`end_date` AS `end_date`,`q`.`post_start_date` AS `post_start_date`,`q`.`post_end_date` AS `post_end_date`,`q`.`does_grades` AS `does_grades`,`q`.`does_exam` AS `does_exam`,`q`.`does_comments` AS `does_comments` from (`SCHOOL_QUARTERS` `q` join `SCHOOL_SEMESTERS` `s` on((`q`.`semester_id` = `s`.`marking_period_id`))) union select `SCHOOL_SEMESTERS`.`marking_period_id` AS `marking_period_id`,'Centre' AS `mp_source`,`SCHOOL_SEMESTERS`.`syear` AS `syear`,`SCHOOL_SEMESTERS`.`school_id` AS `school_id`,'semester' AS `mp_type`,`SCHOOL_SEMESTERS`.`title` AS `title`,`SCHOOL_SEMESTERS`.`short_name` AS `short_name`,`SCHOOL_SEMESTERS`.`sort_order` AS `sort_order`,`SCHOOL_SEMESTERS`.`year_id` AS `parent_id`,-(1) AS `grandparent_id`,`SCHOOL_SEMESTERS`.`start_date` AS `start_date`,`SCHOOL_SEMESTERS`.`end_date` AS `end_date`,`SCHOOL_SEMESTERS`.`post_start_date` AS `post_start_date`,`SCHOOL_SEMESTERS`.`post_end_date` AS `post_end_date`,`SCHOOL_SEMESTERS`.`does_grades` AS `does_grades`,`SCHOOL_SEMESTERS`.`does_exam` AS `does_exam`,`SCHOOL_SEMESTERS`.`does_comments` AS `does_comments` from `SCHOOL_SEMESTERS` union select `SCHOOL_YEARS`.`marking_period_id` AS `marking_period_id`,'Centre' AS `mp_source`,`SCHOOL_YEARS`.`syear` AS `syear`,`SCHOOL_YEARS`.`school_id` AS `school_id`,'year' AS `mp_type`,`SCHOOL_YEARS`.`title` AS `title`,`SCHOOL_YEARS`.`short_name` AS `short_name`,`SCHOOL_YEARS`.`sort_order` AS `sort_order`,-(1) AS `parent_id`,-(1) AS `grandparent_id`,`SCHOOL_YEARS`.`start_date` AS `start_date`,`SCHOOL_YEARS`.`end_date` AS `end_date`,`SCHOOL_YEARS`.`post_start_date` AS `post_start_date`,`SCHOOL_YEARS`.`post_end_date` AS `post_end_date`,`SCHOOL_YEARS`.`does_grades` AS `does_grades`,`SCHOOL_YEARS`.`does_exam` AS `does_exam`,`SCHOOL_YEARS`.`does_comments` AS `does_comments` from `SCHOOL_YEARS` union select `HISTORY_MARKING_PERIODS`.`marking_period_id` AS `marking_period_id`,'History' AS `mp_source`,`HISTORY_MARKING_PERIODS`.`syear` AS `syear`,`HISTORY_MARKING_PERIODS`.`school_id` AS `school_id`,`HISTORY_MARKING_PERIODS`.`mp_type` AS `mp_type`,`HISTORY_MARKING_PERIODS`.`name` AS `title`,NULL AS `short_name`,NULL AS `sort_order`,`HISTORY_MARKING_PERIODS`.`parent_id` AS `parent_id`,-(1) AS `grandparent_id`,NULL AS `start_date`,`HISTORY_MARKING_PERIODS`.`post_end_date` AS `end_date`,NULL AS `post_start_date`,`HISTORY_MARKING_PERIODS`.`post_end_date` AS `post_end_date`,'Y' AS `does_grades`,NULL AS `does_exam`,NULL AS `does_comments` from `HISTORY_MARKING_PERIODS`;

-- --------------------------------------------------------

--
-- Structure for view `TRANSCRIPT_GRADES`
--
DROP TABLE IF EXISTS `TRANSCRIPT_GRADES`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `TRANSCRIPT_GRADES` AS select `s`.`id` AS `school_id`,`mp`.`mp_source` AS `mp_source`,`mp`.`marking_period_id` AS `mp_id`,`mp`.`title` AS `mp_name`,`mp`.`syear` AS `syear`,`mp`.`end_date` AS `posted`,`rcg`.`student_id` AS `student_id`,`sms`.`grade_level_short` AS `gradelevel`,`rcg`.`grade_letter` AS `grade_letter`,`rcg`.`weighted_gp` AS `gp_value`,`rcg`.`unweighted_gp` AS `weighting`,`rcg`.`gp_scale` AS `gp_scale`,`rcg`.`credit_attempted` AS `credit_attempted`,`rcg`.`credit_earned` AS `credit_earned`,`rcg`.`credit_category` AS `credit_category`,`rcg`.`course_title` AS `course_name`,`sms`.`cum_weighted_factor` AS `cum_gp_factor`,(`sms`.`cum_weighted_factor` * `s`.`reporting_gp_scale`) AS `cum_gpa`,((`sms`.`sum_weighted_factors` / `sms`.`count_weighted_factors`) * `s`.`reporting_gp_scale`) AS `gpa`,`sms`.`cum_rank` AS `cum_rank`,`mp`.`sort_order` AS `sort_order` from (((`STUDENT_REPORT_CARD_GRADES` `rcg` join `MARKING_PERIODS` `mp` on(((`mp`.`marking_period_id` = `rcg`.`marking_period_id`) and (`mp`.`mp_type` in ('year','semester','quarter'))))) join `STUDENT_MP_STATS` `sms` on(((`sms`.`student_id` = `rcg`.`student_id`) and (`sms`.`marking_period_id` = `rcg`.`marking_period_id`)))) join `SCHOOLS` `s` on((`s`.`id` = `mp`.`school_id`)));
