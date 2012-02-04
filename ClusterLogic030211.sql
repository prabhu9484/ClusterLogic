-- phpMyAdmin SQL Dump
-- version 3.2.2.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2011 at 10:34 AM
-- Server version: 5.1.37
-- PHP Version: 5.2.10-2ubuntu6.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `clusterl_joomla`
--

-- --------------------------------------------------------

--
-- Table structure for table `AIADAcSocial`
--

CREATE TABLE IF NOT EXISTS `AIADAcSocial` (
  `id` int(11) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `professional` char(100) DEFAULT NULL,
  `organisation` char(100) DEFAULT NULL,
  `url` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AIADAcSocial`
--

INSERT INTO `AIADAcSocial` (`id`, `name`, `professional`, `organisation`, `url`) VALUES
(1, 'Ratan Dasgupta', 'Training Placement Incharge', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/ratan-dasgupta/28/526/502'),
(2, 'Prem Kumar', 'Engineer', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/prem-kumar/7/137/416'),
(3, 'Jhhen B Choudhary', 'Engineer CAD/CAM', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/jhhen-b-choudhary/14/828/872'),
(4, 'Rishav Kumar', 'Engineer CAD/CAM', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/rishav-kumar/23/94b/730'),
(5, 'Mahesh Kumar Gupta', '', 'Indo Danish Tool Room', ''),
(6, 'Suchit Kumar', 'Engineer Hardware & Networking', 'Indo Danish Tool Room', ''),
(7, 'R Chaturvedi', 'Engineer Chief', 'Adityapur Auto Cluster', ''),
(8, 'Razia Ahmed', '', 'CII Jharkhand Chapter', ''),
(9, 'SN Thakur', '', 'Adityapur Small Industries Association', ''),
(10, 'Santosh Khetan', 'General Secretary', 'Adityapur Small Industries Association', ''),
(11, 'Bikash Mukherjee', 'Managing Director', 'Auto Profiles', ''),
(12, 'Ashok Kumar Verma', 'Director Technical', 'Auto Profiles', ''),
(13, 'G Mohankrishna', 'Plant Head', 'RSB Transmissions', 'http://in.linkedin.com/in/gmohankrishna'),
(14, 'Biswajit Jena', 'Manufacturing Head', 'RSB Transmissions', 'http://in.linkedin.com/pub/biswajit-jena/24/70a/499'),
(15, 'Sainik Bibhutiray', 'Finance', 'RSB Transmissions', 'http://in.linkedin.com/pub/sainik-bibhutiray/19/b14/174'),
(16, 'Subramanian Dharmarajan', 'Business Development', 'RSB Transmissions', 'http://in.linkedin.com/pub/subramanian-dharmarajan/21/840/b90'),
(17, 'Sunil Choudhary', 'IT Manager', 'JMT Auto', ''),
(18, 'Sanjay Samanta', 'IT Manager', 'JMT Auto', ''),
(19, 'Rajat Datta', 'IT VP', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/rajat-datta/21/212/b21'),
(20, 'Swapan Banerjee', 'IT Sr Mgr', 'Ramkrishna Forgings', ''),
(21, 'Sitaram Mondal', 'SAP PP/MM Consultant', 'Ramkrishna Forgings', ''),
(22, 'Bhuban Mohan Goswami', 'SAP Basis Administrator', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/bhuban-mohan-goswami/18/352/9b9'),
(23, 'Aninda Manna', 'IT Manager', 'Ramkrishna Forgings', ''),
(24, 'Manoj Sarkar', 'Design & Engineering HOD', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/manoj-sarkar/25/312/7a8'),
(25, 'SJ Rao', 'AGM', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/s-j-rao/20/733/b59'),
(26, 'OP Chopra', 'President', 'Singhbhum Machinometal,JAMCO', ''),
(27, 'Manoj Chopra', '', 'Singhbhum Machinometal, JAMCO', ''),
(28, 'Abhishek Chopra', 'Director', 'Singhbhum Machinometal', 'http://in.linkedin.com/pub/abhishek-chopra/10/5AA/30'),
(29, 'Sandeep Bafna', 'Director', 'MEW Suspension', ''),
(30, 'Nand Kumar Singh', 'Director', 'Inova Enterprise', ''),
(31, 'Amrish Kumar', 'Plant Head', 'Inova Enterprise', ''),
(32, 'Akshay Kumar Agrawal', 'Director', 'Garwaye India', ''),
(33, 'Manish Kumar', 'Director', 'Metal-Om-Technik', ''),
(34, 'Vijay Sharma', 'Director', 'Steel Foundry Industries', ''),
(35, 'Nipam Mehta', 'Director', 'Auro Plastic Injection Moulders', ''),
(36, 'Vinay Singh', '', 'Auro Plastic Injection Moulders', ''),
(37, 'Anand Borai', '', 'Auro Plastic Injection Moulders', ''),
(38, 'Nagendar Mondal', 'Engineer CAD/CAM', 'Auro Plastic Injection Moulders', ''),
(39, 'Dipen Gandhi', 'Director', 'Nutech Auto', ''),
(40, 'Mukesh K Gandhi', '', 'Nutech Auto', ''),
(41, 'Devang M Gandhi', '', 'Nutech Auto', ''),
(42, 'Dipen D Gandhi', '', 'Nutech Auto', ''),
(43, 'Prashant Gandhi', 'Director', 'Nutech Auto', 'http://in.linkedin.com/pub/prashant-gandhi/25/740/404'),
(44, 'Deepak Panchamia', 'Director', 'Metal Shaping & Processing Pvt. Ltd', ''),
(45, 'Sanjay Dubey', 'Director', 'Indico Motors', ''),
(46, 'OS Sunil', 'IT Head', 'Indico Motors', ''),
(47, 'Priyanka Karan', 'HR Manager', 'Indico Motors', 'http://in.linkedin.com/pub/priyanka-karan/16/bb7/4a3'),
(48, 'Amit Kumar Gautam', 'Engineer Tech Support', 'Indico Motors', ''),
(49, 'Vikash Kumar', 'Commercial Purchase Manager', 'Metaldyne India', 'http://in.linkedin.com/pub/vikash-kumar/1b/225/700'),
(50, 'Tanweer Khan', 'Professional', 'Metaldyne India', 'http://in.linkedin.com/pub/tanweer-khan/7/aa2/126'),
(51, 'Manish', 'Professional', 'Metaldyne India', 'http://in.linkedin.com/pub/manish-india/1a/16/2bb'),
(52, 'Dharamveer Singh', 'Director', 'Hardrock Group', ''),
(53, 'RC Mahajan', 'Director Technical', 'Hardrock Group', ''),
(54, 'Param', 'IT Head', 'Hardrock Group', ''),
(55, 'Simmi Gautam', 'HR Manager', 'Hardrock Group', ''),
(56, 'Rajesh', 'HR Manager', 'Hardrock Group', ''),
(57, 'Dheeraj Garg', 'Director', 'Steel Strips', ''),
(58, 'Asit K Singh', 'Manager SMB', 'Aircel Business Solutions', 'http://in.linkedin.com/pub/asit-k-singh/3/923/a44'),
(59, 'Pankaj Gauba', 'Manager Channel Sales', 'Autodesk India', 'http://in.linkedin.com/pub/pankaj-gauba/2/517/94'),
(60, 'Anuj Budhiraja', 'Manager Regional Sales, North and East', 'Autodesk India', 'http://in.linkedin.com/pub/anuj-budhiraja/5/219/421'),
(61, 'Narayan Chandra Saha', 'Partner', 'Ntech Solutions', 'http://in.linkedin.com/pub/narayan-chandra-saha/27/651/aa4'),
(62, 'Prashant Gandhi', 'Owner', 'Empire Infotech', 'http://in.linkedin.com/pub/prashant-gandhi/25/740/404'),
(63, 'Nagendar Yadav', '', 'Empire Infotech', ''),
(64, 'Raghavendra Vatya', '', 'Empire Infotech', ''),
(65, 'Manoj Kumar', '', 'Visual Creations', ''),
(66, 'Prabhu Shiv Singh', 'Principal Consultant', 'E-Logic Systems', 'http://in.linkedin.com/pub/prabhu-singh/a/690/a02'),
(67, 'Merlyn Anklesaria', 'Manager', 'TATA Steel', 'http://in.linkedin.com/pub/merlyn-anklesaria/18/300/500'),
(68, 'Anshuman Dev', 'Manager Ast', 'Mahindra & Mahindra', 'http://in.linkedin.com/in/anshumandev'),
(69, 'Nirav Kumar', 'Ast. Manager, Axis Bank', '', 'http://in.linkedin.com/pub/nirav-kumar/20/15/243'),
(70, 'Naushin Razi', 'HR', '', 'http://in.linkedin.com/pub/naushin-razi/10/5A8/113'),
(71, 'Naushin Razi', 'Legal', '', 'http://in.linkedin.com/pub/naushin-razi/10/5A8/113'),
(72, 'Kailash Singhania', 'Accounts', '', 'http://in.linkedin.com/pub/kailash-singhania/9/30/385'),
(73, 'Mayank Singhania', 'Financial Services', '', 'http://in.linkedin.com/pub/mayank-singhania/1b/204/70a'),
(74, 'Rahul Agarwal', 'Engineer', 'IBM', 'http://in.linkedin.com/in/rahulunlimited'),
(75, 'Aloke Kumar Banerjee', 'Manager Senior', 'Auto Profiles', 'http://in.linkedin.com/pub/aloke-kumar-banerjee/20/a7/a65'),
(76, 'Moumita Mukherjee', 'Finance', 'Auto Profiles', 'http://in.linkedin.com/pub/moumita-mukherjee/6/793/869'),
(77, 'Moumita Mukherjee', 'HR', 'Auto Profiles', 'http://in.linkedin.com/pub/moumita-mukherjee/20/b7b/730'),
(78, 'Neeraj Adeshra', 'Owner', 'Mahalaxmi Auto', 'http://in.linkedin.com/pub/neeraj-adeshra/27/a0/193'),
(79, 'Biswajit Jena', 'Manufacturing Head', '', 'http://in.linkedin.com/pub/biswajit-jena/24/70a/499'),
(80, 'Rajan Singh', 'Engineer', 'TATA Technologies', 'http://in.linkedin.com/pub/rajan-singh/14/761/A33'),
(81, 'Sushant Bhartiya', 'Engineer Lead', 'General Motors', 'http://in.linkedin.com/pub/sushant-bhartiya/18/a40/802'),
(82, 'Upender Kumar', 'Design Team Leader', 'ASB International', 'http://in.linkedin.com/pub/upender-kumar/b/b70/999'),
(83, 'Sanjay Tiwari', 'Project Manager', 'Helwett Packard', 'http://in.linkedin.com/pub/sanjay-tiwary/1b/55b/877'),
(84, 'Pramod Singh Deo', 'Trainee, Technology', 'Sapient', 'http://in.linkedin.com/pub/pramod-singh-deo/15/490/873'),
(85, 'Sushil Mohan', 'Mining', 'Adhunik', 'http://in.linkedin.com/pub/sushil-mohan/11/418/92b'),
(86, 'Prabir Bhattacharjee', 'Draughtsman', 'Adhunik', 'http://in.linkedin.com/pub/prabir-bhattacharjee/27/246/20a'),
(87, 'Mayukh Dey', 'Manager Ast Sales', 'Adhunik', 'http://in.linkedin.com/pub/mayukh-dey/7/13b/72'),
(88, 'Shiv Prakash', '', '', 'http://in.linkedin.com/pub/shiv-prakash/6/777/807'),
(89, 'Niranjan Badhai', '', 'Adhunik', 'http://in.linkedin.com/pub/niranjan-badhai/1b/127/93b'),
(90, 'Amar Gogna', 'Manager Business Development', 'Adhunik', 'http://in.linkedin.com/pub/amar-gogna/7/b2a/470');

-- --------------------------------------------------------

--
-- Table structure for table `AIADAcSocial1`
--

CREATE TABLE IF NOT EXISTS `AIADAcSocial1` (
  `id` int(11) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `professional` char(100) DEFAULT NULL,
  `organisation` char(100) DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `www` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AIADAcSocial1`
--

INSERT INTO `AIADAcSocial1` (`id`, `name`, `professional`, `organisation`, `url`, `www`) VALUES
(1, 'Ratan Dasgupta', 'Training Placement Incharge', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/ratan-dasgupta/28/526/502', 'http://idtrjamshedpur.com'),
(2, 'Prem Kumar', 'Engineer', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/prem-kumar/7/137/416', 'http://idtrjamshedpur.com'),
(3, 'Jhhen B Choudhary', 'Engineer CAD/CAM', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/jhhen-b-choudhary/14/828/872', 'http://idtrjamshedpur.com'),
(4, 'Rishav Kumar', 'Engineer CAD/CAM', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/rishav-kumar/23/94b/730', 'http://idtrjamshedpur.com'),
(5, 'Mahesh Kumar Gupta', '', 'Indo Danish Tool Room', '', 'http://idtrjamshedpur.com'),
(6, 'Suchit Kumar', 'Engineer Hardware & Networking', 'Indo Danish Tool Room', '', 'http://idtrjamshedpur.com'),
(7, 'R Chaturvedi', 'Engineer Chief', 'Adityapur Auto Cluster', '', 'http://autoclusteradityapur.com'),
(8, 'Razia Ahmed', '', 'CII Jharkhand Chapter', '', 'http://cii.in'),
(9, 'SN Thakur', '', 'Adityapur Small Industries Association', '', 'http://helloasia.co.in'),
(10, 'Santosh Khetan', 'General Secretary', 'Adityapur Small Industries Association', '', 'http://helloasia.co.in'),
(11, 'Bikash Mukherjee', 'Managing Director', 'Auto Profiles', '', ''),
(12, 'Ashok Kumar Verma', 'Director Technical', 'Auto Profiles', '', ''),
(13, 'G Mohankrishna', 'Plant Head', 'RSB Transmissions', 'http://in.linkedin.com/in/gmohankrishna', 'http://rsbglobal.com'),
(14, 'Biswajit Jena', 'Manufacturing Head', 'RSB Transmissions', 'http://in.linkedin.com/pub/biswajit-jena/24/70a/499', 'http://rsbglobal.com'),
(15, 'Sainik Bibhutiray', 'Finance', 'RSB Transmissions', 'http://in.linkedin.com/pub/sainik-bibhutiray/19/b14/174', 'http://rsbglobal.com'),
(16, 'Subramanian Dharmarajan', 'Business Development', 'RSB Transmissions', 'http://in.linkedin.com/pub/subramanian-dharmarajan/21/840/b90', 'http://rsbglobal.com'),
(17, 'Sunil Choudhary', 'IT Manager', 'JMT Auto', '', 'http://jmtauto.com'),
(18, 'Sanjay Samanta', 'IT Manager', 'JMT Auto', '', 'http://jmtauto.com'),
(19, 'Rajat Datta', 'IT VP', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/rajat-datta/21/212/b21', 'http://ramkrishnaforgings.com'),
(20, 'Swapan Banerjee', 'IT Sr Mgr', 'Ramkrishna Forgings', '', 'http://ramkrishnaforgings.com'),
(21, 'Sitaram Mondal', 'SAP PP/MM Consultant', 'Ramkrishna Forgings', '', 'http://ramkrishnaforgings.com'),
(22, 'Bhuban Mohan Goswami', 'SAP Basis Administrator', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/bhuban-mohan-goswami/18/352/9b9', 'http://ramkrishnaforgings.com'),
(23, 'Aninda Manna', 'IT Manager', 'Ramkrishna Forgings', '', 'http://ramkrishnaforgings.com'),
(24, 'Manoj Sarkar', 'Design & Engineering HOD', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/manoj-sarkar/25/312/7a8', 'http://ramkrishnaforgings.com'),
(25, 'SJ Rao', 'AGM', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/s-j-rao/20/733/b59', 'http://ramkrishnaforgings.com'),
(26, 'OP Chopra', 'President', 'Singhbhum Machinometal,JAMCO', '', 'http://singhbhummachinometal.com'),
(27, 'Manoj Chopra', '', 'Singhbhum Machinometal, JAMCO', '', 'http://singhbhummachinometal.com'),
(28, 'Abhishek Chopra', 'Director', 'Singhbhum Machinometal', 'http://in.linkedin.com/pub/abhishek-chopra/10/5AA/30', 'http://singhbhummachinometal.com'),
(29, 'Sandeep Bafna', 'Director', 'MEW Suspension', '', 'http://mewsuspension.com'),
(30, 'Nand Kumar Singh', 'Director', 'Inova Enterprise', '', 'http://inovaindia.com'),
(31, 'Amrish Kumar', 'Plant Head', 'Inova Enterprise', '', 'http://inovaindia.com'),
(32, 'Akshay Kumar Agrawal', 'Director', 'Garwaye India', '', ''),
(33, 'Manish Kumar', 'Director', 'Metal-Om-Technik', '', ''),
(34, 'Vijay Sharma', 'Director', 'Steel Foundry Industries', '', 'http://steelfoundry.in'),
(35, 'Nipam Mehta', 'Director', 'Auro Plastic Injection Moulders', '', ''),
(36, 'Vinay Singh', '', 'Auro Plastic Injection Moulders', '', ''),
(37, 'Anand Borai', '', 'Auro Plastic Injection Moulders', '', ''),
(38, 'Nagendar Mondal', 'Engineer CAD/CAM', 'Auro Plastic Injection Moulders', '', ''),
(39, 'Dipen Gandhi', 'Director', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(40, 'Mukesh K Gandhi', '', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(41, 'Devang M Gandhi', '', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(42, 'Dipen D Gandhi', '', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(43, 'Prashant Gandhi', 'Director', 'Nutech Auto', 'http://in.linkedin.com/pub/prashant-gandhi/25/740/404', 'http://nutechauto.co.in'),
(44, 'Deepak Panchamia', 'Director', 'Metal Shaping & Processing Pvt. Ltd', '', ''),
(45, 'Sanjay Dubey', 'Director', 'Indico Motors', '', 'http://indicomotors.in'),
(46, 'OS Sunil', 'IT Head', 'Indico Motors', '', 'http://indicomotors.in'),
(47, 'Priyanka Karan', 'HR Manager', 'Indico Motors', 'http://in.linkedin.com/pub/priyanka-karan/16/bb7/4a3', 'http://indicomotors.in'),
(48, 'Amit Kumar Gautam', 'Engineer Tech Support', 'Indico Motors', '', 'http://indicomotors.in'),
(49, 'Vikash Kumar', 'Commercial Purchase Manager', 'Metaldyne India', 'http://in.linkedin.com/pub/vikash-kumar/1b/225/700', 'http://metaldyne.com'),
(50, 'Tanweer Khan', 'Professional', 'Metaldyne India', 'http://in.linkedin.com/pub/tanweer-khan/7/aa2/126', 'http://metaldyne.com'),
(51, 'Manish', 'Professional', 'Metaldyne India', 'http://in.linkedin.com/pub/manish-india/1a/16/2bb', 'http://metaldyne.com'),
(52, 'Dharamveer Singh', 'Director', 'Hardrock Group', '', 'http://hardrock.net.in'),
(53, 'RC Mahajan', 'Director Technical', 'Hardrock Group', '', 'http://hardrock.net.in'),
(54, 'Param', 'IT Head', 'Hardrock Group', '', 'http://hardrock.net.in'),
(55, 'Simmi Gautam', 'HR Manager', 'Hardrock Group', '', 'http://hardrock.net.in'),
(56, 'Rajesh', 'HR Manager', 'Hardrock Group', '', 'http://hardrock.net.in'),
(57, 'Dheeraj Garg', 'Director', 'Steel Strips', '', ''),
(58, 'Asit K Singh', 'Manager SMB', 'Aircel Business Solutions', 'http://in.linkedin.com/pub/asit-k-singh/3/923/a44', 'http://aircelbusinesssolutions.com'),
(59, 'Pankaj Gauba', 'Manager Channel Sales', 'Autodesk India', 'http://in.linkedin.com/pub/pankaj-gauba/2/517/94', 'http://autodesk.com'),
(60, 'Anuj Budhiraja', 'Manager Regional Sales, North and East', 'Autodesk India', 'http://in.linkedin.com/pub/anuj-budhiraja/5/219/421', 'http://autodesk.com'),
(61, 'Narayan Chandra Saha', 'Partner', 'Ntech Solutions', 'http://in.linkedin.com/pub/narayan-chandra-saha/27/651/aa4', 'http://ntechjharkhand.com'),
(62, 'Prashant Gandhi', 'Owner', 'Empire Infotech', 'http://in.linkedin.com/pub/prashant-gandhi/25/740/404', 'http://empireinfotech.co.in'),
(63, 'Nagendar Yadav', '', 'Empire Infotech', '', 'http://empireinfotech.co.in'),
(64, 'Raghavendra Vatya', '', 'Empire Infotech', '', 'http://empireinfotech.co.in'),
(65, 'Manoj Kumar', '', 'Visual Creations', '', 'http://visualcreations.in'),
(66, 'Prabhu Shiv Singh', 'Principal Consultant', 'E-Logic Systems', 'http://in.linkedin.com/pub/prabhu-singh/a/690/a02', 'http://elogicsystems.co.in'),
(67, 'Merlyn Anklesaria', 'Manager', 'TATA Steel', 'http://in.linkedin.com/pub/merlyn-anklesaria/18/300/500', ''),
(68, 'Anshuman Dev', 'Manager Ast', 'Mahindra & Mahindra', 'http://in.linkedin.com/in/anshumandev', ''),
(69, 'Nirav Kumar', 'Ast. Manager, Axis Bank', '', 'http://in.linkedin.com/pub/nirav-kumar/20/15/243', ''),
(70, 'Naushin Razi', 'HR', '', 'http://in.linkedin.com/pub/naushin-razi/10/5A8/113', ''),
(71, 'Naushin Razi', 'Legal', '', 'http://in.linkedin.com/pub/naushin-razi/10/5A8/113', ''),
(72, 'Kailash Singhania', 'Accounts', '', 'http://in.linkedin.com/pub/kailash-singhania/9/30/385', ''),
(73, 'Mayank Singhania', 'Financial Services', '', 'http://in.linkedin.com/pub/mayank-singhania/1b/204/70a', ''),
(74, 'Rahul Agarwal', 'Engineer', 'IBM', 'http://in.linkedin.com/in/rahulunlimited', ''),
(75, 'Aloke Kumar Banerjee', 'Manager Senior', 'Auto Profiles', 'http://in.linkedin.com/pub/aloke-kumar-banerjee/20/a7/a65', ''),
(76, 'Moumita Mukherjee', 'Finance', 'Auto Profiles', 'http://in.linkedin.com/pub/moumita-mukherjee/6/793/869', ''),
(77, 'Moumita Mukherjee', 'HR', 'Auto Profiles', 'http://in.linkedin.com/pub/moumita-mukherjee/20/b7b/730', ''),
(78, 'Neeraj Adeshra', 'Owner', 'Mahalaxmi Auto', 'http://in.linkedin.com/pub/neeraj-adeshra/27/a0/193', ''),
(79, 'Biswajit Jena', 'Manufacturing Head', '', 'http://in.linkedin.com/pub/biswajit-jena/24/70a/499', ''),
(80, 'Rajan Singh', 'Engineer', 'TATA Technologies', 'http://in.linkedin.com/pub/rajan-singh/14/761/A33', ''),
(81, 'Sushant Bhartiya', 'Engineer Lead', 'General Motors', 'http://in.linkedin.com/pub/sushant-bhartiya/18/a40/802', ''),
(82, 'Upender Kumar', 'Design Team Leader', 'ASB International', 'http://in.linkedin.com/pub/upender-kumar/b/b70/999', ''),
(83, 'Sanjay Tiwari', 'Project Manager', 'Helwett Packard', 'http://in.linkedin.com/pub/sanjay-tiwary/1b/55b/877', ''),
(84, 'Pramod Singh Deo', 'Trainee, Technology', 'Sapient', 'http://in.linkedin.com/pub/pramod-singh-deo/15/490/873', ''),
(85, 'Sushil Mohan', 'Mining', 'Adhunik', 'http://in.linkedin.com/pub/sushil-mohan/11/418/92b', ''),
(86, 'Prabir Bhattacharjee', 'Draughtsman', 'Adhunik', 'http://in.linkedin.com/pub/prabir-bhattacharjee/27/246/20a', ''),
(87, 'Mayukh Dey', 'Manager Ast Sales', 'Adhunik', 'http://in.linkedin.com/pub/mayukh-dey/7/13b/72', ''),
(88, 'Shiv Prakash', '', '', 'http://in.linkedin.com/pub/shiv-prakash/6/777/807', ''),
(89, 'Niranjan Badhai', '', 'Adhunik', 'http://in.linkedin.com/pub/niranjan-badhai/1b/127/93b', ''),
(90, 'Amar Gogna', 'Manager Business Development', 'Adhunik', 'http://in.linkedin.com/pub/amar-gogna/7/b2a/470', ''),
(1, 'Ratan Dasgupta', 'Training Placement Incharge', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/ratan-dasgupta/28/526/502', 'http://idtrjamshedpur.com'),
(2, 'Prem Kumar', 'Engineer', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/prem-kumar/7/137/416', 'http://idtrjamshedpur.com'),
(3, 'Jhhen B Choudhary', 'Engineer CAD/CAM', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/jhhen-b-choudhary/14/828/872', 'http://idtrjamshedpur.com'),
(4, 'Rishav Kumar', 'Engineer CAD/CAM', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/rishav-kumar/23/94b/730', 'http://idtrjamshedpur.com'),
(5, 'Mahesh Kumar Gupta', '', 'Indo Danish Tool Room', '', 'http://idtrjamshedpur.com'),
(6, 'Suchit Kumar', 'Engineer Hardware & Networking', 'Indo Danish Tool Room', '', 'http://idtrjamshedpur.com'),
(7, 'R Chaturvedi', 'Engineer Chief', 'Adityapur Auto Cluster', '', 'http://autoclusteradityapur.com'),
(8, 'Razia Ahmed', '', 'CII Jharkhand Chapter', '', 'http://cii.in'),
(9, 'SN Thakur', '', 'Adityapur Small Industries Association', '', 'http://helloasia.co.in'),
(10, 'Santosh Khetan', 'General Secretary', 'Adityapur Small Industries Association', '', 'http://helloasia.co.in'),
(11, 'Bikash Mukherjee', 'Managing Director', 'Auto Profiles', '', ''),
(12, 'Ashok Kumar Verma', 'Director Technical', 'Auto Profiles', '', ''),
(13, 'G Mohankrishna', 'Plant Head', 'RSB Transmissions', 'http://in.linkedin.com/in/gmohankrishna', 'http://rsbglobal.com'),
(14, 'Biswajit Jena', 'Manufacturing Head', 'RSB Transmissions', 'http://in.linkedin.com/pub/biswajit-jena/24/70a/499', 'http://rsbglobal.com'),
(15, 'Sainik Bibhutiray', 'Finance', 'RSB Transmissions', 'http://in.linkedin.com/pub/sainik-bibhutiray/19/b14/174', 'http://rsbglobal.com'),
(16, 'Subramanian Dharmarajan', 'Business Development', 'RSB Transmissions', 'http://in.linkedin.com/pub/subramanian-dharmarajan/21/840/b90', 'http://rsbglobal.com'),
(17, 'Sunil Choudhary', 'IT Manager', 'JMT Auto', '', 'http://jmtauto.com'),
(18, 'Sanjay Samanta', 'IT Manager', 'JMT Auto', '', 'http://jmtauto.com'),
(19, 'Rajat Datta', 'IT VP', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/rajat-datta/21/212/b21', 'http://ramkrishnaforgings.com'),
(20, 'Swapan Banerjee', 'IT Sr Mgr', 'Ramkrishna Forgings', '', 'http://ramkrishnaforgings.com'),
(21, 'Sitaram Mondal', 'SAP PP/MM Consultant', 'Ramkrishna Forgings', '', 'http://ramkrishnaforgings.com'),
(22, 'Bhuban Mohan Goswami', 'SAP Basis Administrator', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/bhuban-mohan-goswami/18/352/9b9', 'http://ramkrishnaforgings.com'),
(23, 'Aninda Manna', 'IT Manager', 'Ramkrishna Forgings', '', 'http://ramkrishnaforgings.com'),
(24, 'Manoj Sarkar', 'Design & Engineering HOD', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/manoj-sarkar/25/312/7a8', 'http://ramkrishnaforgings.com'),
(25, 'SJ Rao', 'AGM', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/s-j-rao/20/733/b59', 'http://ramkrishnaforgings.com'),
(26, 'OP Chopra', 'President', 'Singhbhum Machinometal,JAMCO', '', 'http://singhbhummachinometal.com'),
(27, 'Manoj Chopra', '', 'Singhbhum Machinometal, JAMCO', '', 'http://singhbhummachinometal.com'),
(28, 'Abhishek Chopra', 'Director', 'Singhbhum Machinometal', 'http://in.linkedin.com/pub/abhishek-chopra/10/5AA/30', 'http://singhbhummachinometal.com'),
(29, 'Sandeep Bafna', 'Director', 'MEW Suspension', '', 'http://mewsuspension.com'),
(30, 'Nand Kumar Singh', 'Director', 'Inova Enterprise', '', 'http://inovaindia.com'),
(31, 'Amrish Kumar', 'Plant Head', 'Inova Enterprise', '', 'http://inovaindia.com'),
(32, 'Akshay Kumar Agrawal', 'Director', 'Garwaye India', '', ''),
(33, 'Manish Kumar', 'Director', 'Metal-Om-Technik', '', ''),
(34, 'Vijay Sharma', 'Director', 'Steel Foundry Industries', '', 'http://steelfoundry.in'),
(35, 'Nipam Mehta', 'Director', 'Auro Plastic Injection Moulders', '', ''),
(36, 'Vinay Singh', '', 'Auro Plastic Injection Moulders', '', ''),
(37, 'Anand Borai', '', 'Auro Plastic Injection Moulders', '', ''),
(38, 'Nagendar Mondal', 'Engineer CAD/CAM', 'Auro Plastic Injection Moulders', '', ''),
(39, 'Dipen Gandhi', 'Director', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(40, 'Mukesh K Gandhi', '', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(41, 'Devang M Gandhi', '', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(42, 'Dipen D Gandhi', '', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(43, 'Prashant Gandhi', 'Director', 'Nutech Auto', 'http://in.linkedin.com/pub/prashant-gandhi/25/740/404', 'http://nutechauto.co.in'),
(44, 'Deepak Panchamia', 'Director', 'Metal Shaping & Processing Pvt. Ltd', '', ''),
(45, 'Sanjay Dubey', 'Director', 'Indico Motors', '', 'http://indicomotors.in'),
(46, 'OS Sunil', 'IT Head', 'Indico Motors', '', 'http://indicomotors.in'),
(47, 'Priyanka Karan', 'HR Manager', 'Indico Motors', 'http://in.linkedin.com/pub/priyanka-karan/16/bb7/4a3', 'http://indicomotors.in'),
(48, 'Amit Kumar Gautam', 'Engineer Tech Support', 'Indico Motors', '', 'http://indicomotors.in'),
(49, 'Vikash Kumar', 'Commercial Purchase Manager', 'Metaldyne India', 'http://in.linkedin.com/pub/vikash-kumar/1b/225/700', 'http://metaldyne.com'),
(50, 'Tanweer Khan', 'Professional', 'Metaldyne India', 'http://in.linkedin.com/pub/tanweer-khan/7/aa2/126', 'http://metaldyne.com'),
(51, 'Manish', 'Professional', 'Metaldyne India', 'http://in.linkedin.com/pub/manish-india/1a/16/2bb', 'http://metaldyne.com'),
(52, 'Dharamveer Singh', 'Director', 'Hardrock Group', '', 'http://hardrock.net.in'),
(53, 'RC Mahajan', 'Director Technical', 'Hardrock Group', '', 'http://hardrock.net.in'),
(54, 'Param', 'IT Head', 'Hardrock Group', '', 'http://hardrock.net.in'),
(55, 'Simmi Gautam', 'HR Manager', 'Hardrock Group', '', 'http://hardrock.net.in'),
(56, 'Rajesh', 'HR Manager', 'Hardrock Group', '', 'http://hardrock.net.in'),
(57, 'Dheeraj Garg', 'Director', 'Steel Strips', '', ''),
(58, 'Asit K Singh', 'Manager SMB', 'Aircel Business Solutions', 'http://in.linkedin.com/pub/asit-k-singh/3/923/a44', 'http://aircelbusinesssolutions.com'),
(59, 'Pankaj Gauba', 'Manager Channel Sales', 'Autodesk India', 'http://in.linkedin.com/pub/pankaj-gauba/2/517/94', 'http://autodesk.com'),
(60, 'Anuj Budhiraja', 'Manager Regional Sales, North and East', 'Autodesk India', 'http://in.linkedin.com/pub/anuj-budhiraja/5/219/421', 'http://autodesk.com'),
(61, 'Narayan Chandra Saha', 'Partner', 'Ntech Solutions', 'http://in.linkedin.com/pub/narayan-chandra-saha/27/651/aa4', 'http://ntechjharkhand.com'),
(62, 'Prashant Gandhi', 'Owner', 'Empire Infotech', 'http://in.linkedin.com/pub/prashant-gandhi/25/740/404', 'http://empireinfotech.co.in'),
(63, 'Nagendar Yadav', '', 'Empire Infotech', '', 'http://empireinfotech.co.in'),
(64, 'Raghavendra Vatya', '', 'Empire Infotech', '', 'http://empireinfotech.co.in'),
(65, 'Manoj Kumar', '', 'Visual Creations', '', 'http://visualcreations.in'),
(66, 'Prabhu Shiv Singh', 'Principal Consultant', 'E-Logic Systems', 'http://in.linkedin.com/pub/prabhu-singh/a/690/a02', 'http://elogicsystems.co.in'),
(67, 'Merlyn Anklesaria', 'Manager', 'TATA Steel', 'http://in.linkedin.com/pub/merlyn-anklesaria/18/300/500', ''),
(68, 'Anshuman Dev', 'Manager Ast', 'Mahindra & Mahindra', 'http://in.linkedin.com/in/anshumandev', ''),
(69, 'Nirav Kumar', 'Ast. Manager, Axis Bank', '', 'http://in.linkedin.com/pub/nirav-kumar/20/15/243', ''),
(70, 'Naushin Razi', 'HR', '', 'http://in.linkedin.com/pub/naushin-razi/10/5A8/113', ''),
(71, 'Naushin Razi', 'Legal', '', 'http://in.linkedin.com/pub/naushin-razi/10/5A8/113', ''),
(72, 'Kailash Singhania', 'Accounts', '', 'http://in.linkedin.com/pub/kailash-singhania/9/30/385', ''),
(73, 'Mayank Singhania', 'Financial Services', '', 'http://in.linkedin.com/pub/mayank-singhania/1b/204/70a', ''),
(74, 'Rahul Agarwal', 'Engineer', 'IBM', 'http://in.linkedin.com/in/rahulunlimited', ''),
(75, 'Aloke Kumar Banerjee', 'Manager Senior', 'Auto Profiles', 'http://in.linkedin.com/pub/aloke-kumar-banerjee/20/a7/a65', ''),
(76, 'Moumita Mukherjee', 'Finance', 'Auto Profiles', 'http://in.linkedin.com/pub/moumita-mukherjee/6/793/869', ''),
(77, 'Moumita Mukherjee', 'HR', 'Auto Profiles', 'http://in.linkedin.com/pub/moumita-mukherjee/20/b7b/730', ''),
(78, 'Neeraj Adeshra', 'Owner', 'Mahalaxmi Auto', 'http://in.linkedin.com/pub/neeraj-adeshra/27/a0/193', ''),
(79, 'Biswajit Jena', 'Manufacturing Head', '', 'http://in.linkedin.com/pub/biswajit-jena/24/70a/499', ''),
(80, 'Rajan Singh', 'Engineer', 'TATA Technologies', 'http://in.linkedin.com/pub/rajan-singh/14/761/A33', ''),
(81, 'Sushant Bhartiya', 'Engineer Lead', 'General Motors', 'http://in.linkedin.com/pub/sushant-bhartiya/18/a40/802', ''),
(82, 'Upender Kumar', 'Design Team Leader', 'ASB International', 'http://in.linkedin.com/pub/upender-kumar/b/b70/999', ''),
(83, 'Sanjay Tiwari', 'Project Manager', 'Helwett Packard', 'http://in.linkedin.com/pub/sanjay-tiwary/1b/55b/877', ''),
(84, 'Pramod Singh Deo', 'Trainee, Technology', 'Sapient', 'http://in.linkedin.com/pub/pramod-singh-deo/15/490/873', ''),
(85, 'Sushil Mohan', 'Mining', 'Adhunik', 'http://in.linkedin.com/pub/sushil-mohan/11/418/92b', ''),
(86, 'Prabir Bhattacharjee', 'Draughtsman', 'Adhunik', 'http://in.linkedin.com/pub/prabir-bhattacharjee/27/246/20a', ''),
(87, 'Mayukh Dey', 'Manager Ast Sales', 'Adhunik', 'http://in.linkedin.com/pub/mayukh-dey/7/13b/72', ''),
(88, 'Shiv Prakash', '', '', 'http://in.linkedin.com/pub/shiv-prakash/6/777/807', ''),
(89, 'Niranjan Badhai', '', 'Adhunik', 'http://in.linkedin.com/pub/niranjan-badhai/1b/127/93b', ''),
(90, 'Amar Gogna', 'Manager Business Development', 'Adhunik', 'http://in.linkedin.com/pub/amar-gogna/7/b2a/470', ''),
(91, 'Goutam Banerjee', 'Management Coordinator and ERP implementation', 'Gajanan Ores', 'http://in.linkedin.com/pub/goutam-banerjee/1a/662/b51', 'http://www.gajanangroup.com'),
(92, 'Biswanath Hazra', 'Auditor', 'Gajanan Ores', 'http://in.linkedin.com/pub/biswanath-hazra/18/a64/49a', ''),
(93, 'Satya Nayarayan Keshri', 'Officer Accounts', 'TATA Robbins Fraser', 'http://in.linkedin.com/pub/satya-narayan-keshri/18/880/88', ''),
(94, 'Uday Shankaram', 'Fabrication Consultant', 'Cordoba Engineering', 'http://in.linkedin.com/pub/uday-shankaram/19/2a6/6ab', 'http://www.cordobaengineering.com'),
(95, 'Sandeep Pandey', 'Design Engineer', 'Pritam Automech', 'http://in.linkedin.com/pub/sandeep-pandey/19/864/34a', ''),
(96, 'Preeti Singh', 'Office Assistant', '', 'http://in.linkedin.com/pub/preeti-singh/23/a98/18b', ''),
(97, 'Atul Dua', 'Director', 'Multitech Auto', 'http://in.linkedin.com/pub/atul-dua/1b/a22/935', 'http://www.malauto.com'),
(98, 'Sandip Das', 'IT Head', 'Multitech Auto', 'http://in.linkedin.com/pub/sandip-das/29/686/130', 'http://www.malauto.com'),
(99, 'Nilu Singh', 'HR Execuitve', 'Multitech Auto', 'http://in.linkedin.com/pub/nilu-singh/21/887/3b7', 'http://www.malauto.com'),
(100, 'MD Yaqub Jamal', 'System administrator ', 'Kaizen IT Services', 'http://in.linkedin.com/pub/md-yaqub-jamal/20/45/857', 'http://kaizencare.net'),
(101, 'Sandip Roy', 'Engineer Support', 'Kaizen IT Services', 'http://in.linkedin.com/pub/sandip-roy/1a/58a/477', 'http://kaizencare.net'),
(102, 'Vinayak Karn', 'Engineer QA', 'Arush Metal Castings', 'http://in.linkedin.com/pub/vinayak-karn/15/ab9/24', ''),
(103, 'Benazir Rashid', 'Engineer Design and Methods', 'Arush Metal Castings', 'http://in.linkedin.com/pub/benazir-rashid/15/a47/886', ''),
(104, 'Arun SK', 'Accountant', 'Arush Metal Castings', 'http://in.linkedin.com/pub/aman-sk/18/a42/756', ''),
(105, 'Sandip Kumar', 'QA', 'Arush Metal Castings', 'http://in.linkedin.com/pub/sandip-kumar/15/a38/a79', ''),
(106, 'Sandip Sen', 'SAP MM Support', 'Reysult India', 'http://in.linkedin.com/pub/sandip-sen/25/478/299', ''),
(107, 'Sandip Chakraborty', 'Logistics', 'BSR', 'http://in.linkedin.com/pub/sandip-chakraborty/12/829/a45', ''),
(108, 'Rajiv Ranjan', 'Excutive Director', 'Highco Engineers', 'http://in.linkedin.com/pub/rajiv-ranjan/b/528/7a3', ''),
(109, 'Koushik Mitra', 'Area Business Manager', 'Ador Welding', 'http://in.linkedin.com/pub/koushik-mitra/27/534/166', ''),
(110, 'Rajeev Jha', 'Engineer', 'Welding Alloys', 'http://in.linkedin.com/pub/rajeev-jha/5/a82/725', ''),
(1, 'Hitesh Wadhwa', 'Business Development Manager', 'DeftSoft Informatics', 'http://in.linkedin.com/pub/hitesh-wadhwa/16/5b7/1b7', 'http://www.deftsoft.com/'),
(2, 'Aditi Parvan', '', 'Interworld Commnet', 'http://in.linkedin.com/pub/aditi-parvan/23/635/101', 'http://interworldcommnet.us/'),
(3, 'Sachin Tyagi', 'Software Developer', 'Interworld Commnet', 'http://in.linkedin.com/pub/sachin-tyagi/21/828/b92', 'http://interworldcommnet.us/'),
(4, 'Tushar Garg', 'Networking Executive', 'Artworld Websolutions', 'http://in.linkedin.com/pub/tushar-garg/29/2b/73a', ''),
(5, 'Ritu Sethi', 'HR & Administration', 'Cogniter Technologies', 'http://in.linkedin.com/pub/ritu-sethi/12/99A/693', ''),
(6, 'Jitender Kumar', 'Internet Marketing', 'Cogniter Technologies', 'http://in.linkedin.com/pub/jitender-kumar/16/89a/626', ''),
(7, 'Chanpreet S. Chawla ', 'CTO and Director', 'Soft Prodigy', 'http://in.linkedin.com/in/chanchawla', ''),
(8, 'Gurvinder Singh', 'Software Developer', 'Fiverivers Solutions', 'http://in.linkedin.com/pub/gurvinder-singh/22/3bb/b22', ''),
(9, 'Kuldeep Verma', 'Website Designer', 'Jayanti Software Solutions', 'http://in.linkedin.com/in/kuldeepkumarverma', 'http://www.jayantisoftwares.com/'),
(10, 'Manish Kaushik', 'Director', 'Gmark Technologies', 'http://in.linkedin.com/pub/manish-kaushik/13/a05/9a0', 'http://www.gmark.co.in/'),
(11, 'Simerpreet Singh', 'Team Leader', 'Smart Data Enterprises', 'http://in.linkedin.com/in/simer169', 'http://www.smartdatainc.com/'),
(12, 'Sonia Dhir', 'Software Developer', 'Smart Data Enterprises', 'http://in.linkedin.com/pub/sonia-dhir/16/9A5/5B6', 'http://www.smartdatainc.com/'),
(13, 'Chander Kant', 'Internet Marketing', 'Sharp Web Studio', 'http://in.linkedin.com/pub/chander-kant/22/b2a/11', ''),
(14, 'Pardeep Kumar', 'Internet Marketing', 'Altruist Technologies', 'http://in.linkedin.com/in/oopsmrlucky', ''),
(15, 'Anuj Aggarwal', 'Director', 'Altruist Technologies', 'http://in.linkedin.com/pub/anuj-aggarwal/4/ab2/400', ''),
(16, 'Vijay Chowdhary', 'Software Developer', 'Miri InfoTech', 'http://in.linkedin.com/pub/vijay-chowdhary/14/9b1/896', ''),
(17, 'Shalini S Bhatnagar', 'HR & Administration', 'Pugmarks InterWeb', 'http://in.linkedin.com/pub/shalini-s-bhatnagar/13/24b/25', ''),
(18, 'Shalini S Bhatnagar', 'HR & Administration', 'Classic Informatics', 'http://in.linkedin.com/pub/shalini-s-bhatnagar/13/24b/25', ''),
(19, 'Meenu Kutlehria', 'Team Leader', 'Classic Informatics', 'http://in.linkedin.com/pub/meenu-kutlehria/9/5a4/309', ''),
(20, 'Aman Kaushish', 'Team Leader', 'Classic Informatics', 'http://in.linkedin.com/in/amankaushish', ''),
(21, 'Kapil Khaneja', 'Internet Marketing', 'NVISH Solutions', 'http://in.linkedin.com/in/kapilkhaneja', ''),
(22, 'Pankaj Tiwari', 'Mobile', 'Soft Prodigy', 'http://in.linkedin.com/in/pankaja1', ''),
(23, 'Shweta Parbhakar', 'Software Developer', 'White Shaarks', 'http://in.linkedin.com/pub/shweta-parbhakar/9/413/491', ''),
(24, 'Ankush Sharma', 'Director', 'Reify Technologies', 'http://in.linkedin.com/pub/ankush-sharma/15/4b9/886', 'http://reifytechnologies.com'),
(25, 'Deepak Nagpal', 'Internet Marketing', 'Intenso Web Solutions', 'http://in.linkedin.com/in/nagpaldeepak', ''),
(26, 'Bikramjeet Singh', 'Website Designer', 'Intenso Web Solutions', 'http://in.linkedin.com/pub/bikramjeet-singh/21/698/883', 'http://www.intensowebsolutions.com/'),
(27, 'InderJeet Singh', 'MIS Analyst', 'Contact Bridge', 'http://in.linkedin.com/pub/inderjeet-singh/26/260/467', ''),
(28, 'Abhinav Tiwari', 'Market Research Analyst ', 'IDS Infotech', 'http://in.linkedin.com/pub/abhinav-tiwari/21/2b6/4b9', 'http://www.idsil.com/'),
(29, 'Manpreet Singh', 'Software Developer', 'Visionaire-us india ', 'http://in.linkedin.com/pub/manpreet-singh/7/6a1/3b0', ''),
(30, 'Sheetal Mahajan', 'Software Developer', 'Visionaire-us india ', 'http://in.linkedin.com/pub/sheetal-mahajan/15/799/138', ''),
(31, 'Ramesh Dhiman', 'System Administrator', 'Sebiz Infotech', 'http://in.linkedin.com/pub/ramesh-dhiman/18/854/6B0', ''),
(32, 'Surender Verma', 'Customer Support Executive', 'SPANCO BPO', 'http://in.linkedin.com/pub/surender-verma/1b/256/444', ''),
(33, 'Surender Singh Sandhu', 'Software Developer', 'Vivido Labs', 'http://in.linkedin.com/in/surendersandhu', 'http://www.vividolabs.com'),
(34, 'Sanjeev Verma', 'Team Leader', 'Vivido Labs', 'http://in.linkedin.com/pub/sanjeev-verma/28/24/a76', 'http://www.vividolabs.com'),
(35, 'Megha Sharma', 'Software Developer', 'Vivido Labs', 'http://in.linkedin.com/pub/megha-sharma/22/837/7b4', 'http://www.vividolabs.com'),
(36, 'Ranjeet Consultant', 'Software Developer', 'Vivido Labs', 'http://in.linkedin.com/in/singhsapabap', 'http://www.vividolabs.com'),
(37, 'Imtiyaz Ali', 'Delivery Manager', 'Vivido Labs', 'http://in.linkedin.com/pub/imtiyaz-ali-pmp/15/537/5b', 'http://www.vividolabs.com'),
(38, 'Sanjay Singh', 'Software Developer', 'Vivido Labs', 'http://in.linkedin.com/in/sanjaykharwar', 'http://www.vividolabs.com'),
(39, 'Reema Chaudhary', 'Quality Analyst', 'Quark', 'http://in.linkedin.com/pub/reema-chaudhary/9/207/648', ''),
(40, 'Arun Kumar Saxena', 'Document Production Specialist', 'Quark Media House', 'http://in.linkedin.com/pub/arun-kumar-saxena/23/51a/699', ''),
(41, 'Aasheesh Bhatnagar', 'Chief Campus Evangelist', 'Chalkpad Technologies', 'http://in.linkedin.com/in/aasheeshb', 'http://www.chalkpad.in'),
(42, 'Kabir Khanna', 'Director', 'Chalkpad Technologies', 'http://in.linkedin.com/in/kabir', 'http://www.chalkpad.in'),
(43, 'Sumeet Sandhu ', 'HR & Administration', 'MindSpin', 'http://in.linkedin.com/pub/sumeet-sandhu-sandhu-sumeet1-gmail-com/12/706/bb8', ''),
(44, 'Richa Soni', 'HR & Administration', 'Microqual Techno', 'http://in.linkedin.com/pub/richa-soni/26/446/39', ''),
(45, 'Atul Gupta', 'Director', 'RedAlkemi', 'http://in.linkedin.com/in/atulgupta1', 'http://www.redalkemi.com'),
(46, 'Manish Sabharwal', 'Project Manager', 'Mondial Assistance', 'http://in.linkedin.com/in/manishsabharwal', ''),
(47, 'Anuja Lath', 'Director', 'RedAlkemi', 'http://in.linkedin.com/in/anujalath', 'http://www.redalkemi.com'),
(48, 'Ashwani Kumar', 'Team Leader', 'Miracle Studios', 'http://in.linkedin.com/pub/ashwani-kumar/10/5b5/12a', ''),
(49, 'Ruchy Dev', 'HR & Administration', 'Relay Strategy', 'http://in.linkedin.com/in/ruchydev', ''),
(50, 'Narinder Dev', 'Software Developer Android Blackberry', 'Relay Strategy', 'http://in.linkedin.com/pub/narinder-dev/14/326/334', ''),
(51, 'Narinder Dev', 'Software Architect', 'Intelligaia Tech', 'http://in.linkedin.com/in/neerajdev', ''),
(52, 'Tanuj Varshney', 'CEO', 'INRA Security Solutions', 'http://in.linkedin.com/pub/tanuj-varshney/6/73a/8bb', ''),
(53, 'Kanwaljeet Singh Nagi', 'Software Web Designer', 'Intelligia', 'http://in.linkedin.com/pub/kanwaljeet-singh-nagi/17/486/570', ''),
(54, 'Salil Jamwal', 'Pharmacovigilance Team Lead', 'Quantum Solutions', 'http://in.linkedin.com/pub/salil-jamwal/14/498/845', ''),
(55, 'Sonika Sharma', 'Team Leader', 'Quantum Solutions', 'http://in.linkedin.com/pub/sonika-sharma/12/407/95', ''),
(56, 'Neha Sood Wasan', 'Pharmacovigilance Scientist', 'Quantum Solutions', 'http://in.linkedin.com/pub/neha-sood-wasan/12/692/447', ''),
(57, 'Tarini Goyal', 'Software Developer', 'Winshuttle', 'http://in.linkedin.com/pub/tarini-goyal/8/955/3b5', ''),
(58, 'Deepanshu Goyal', 'Business Analyst', 'Trigma Solutions', 'http://in.linkedin.com/pub/deepanshu-goyal/9/105/a', ''),
(59, 'Monika Thappar', 'Software Developer', 'Trigma Solutions', 'http://in.linkedin.com/pub/monika-thappar/24/a42/a8', ''),
(60, 'Sunil Chadha', 'Business Development Manager', 'Trigma Solutions', 'http://in.linkedin.com/in/sunilchadha11', ''),
(61, 'Gurwinder Chahal', 'Software Developer', 'Amadeus IT Group', 'http://in.linkedin.com/pub/gurwinder-chahal/13/536/25b', 'http://amadeus.co.in'),
(62, 'Ankur Khurana', 'Head', 'Amadeus IT Group', 'http://in.linkedin.com/pub/ankur-khurana/8/571/469', 'http://amadeus.co.in'),
(63, 'Sumit Kaushal', 'Software Developer', 'Amadeus IT Group', 'http://in.linkedin.com/pub/sumit-kaushal/22/493/b72', 'http://amadeus.co.in'),
(64, 'Sunny Thakur', 'System Administrator', 'Bebo Technologies', 'http://in.linkedin.com/pub/sunny-thakur/16/b4/157', 'http://bebotechnologies.com/'),
(65, 'Reena Satija', 'Software Developer', 'Bebo Technologies', 'http://in.linkedin.com/pub/reena-satija/25/992/4b', 'http://bebotechnologies.com/'),
(66, 'Ravi Satoun', 'HR & Administration', 'FCS Software Solutions', 'http://www.linkedin.com/in/ravisatoun', 'http://www.fcsltd.com'),
(67, 'Renu yadav', 'Software Web Designer', 'Karin Informatics Services', 'http://in.linkedin.com/in/renz7', 'http://www.aerenoutsourcing.com'),
(68, 'Neelakshi Gupta', 'HR & Administration', 'Quarkcity India', 'http://in.linkedin.com/in/neelakshigupta', ''),
(69, 'Sanjay Malhotra', 'Research and Development', 'Quarkcity India', 'http://in.linkedin.com/in/sam2345', ''),
(70, 'Jayanta Patra', 'Business Analyst', 'Quarkcity India', 'http://in.linkedin.com/pub/jayanta-patra/9/829/761', ''),
(71, 'Umesh Goyal', 'VP', 'NetSmartz India', 'http://in.linkedin.com/pub/umesh-goyal/7/174/135', 'http://www.netsmartz.net'),
(72, 'Reema Kaur', 'Link Building Executive', 'NetSmartz India', 'http://in.linkedin.com/pub/reema-kaur/15/328/2b1', 'http://www.netsmartz.net'),
(73, 'Gurpreet Singh', 'Software Developer iPhone iPad', 'Net Solutions', 'http://in.linkedin.com/in/gurpreetsingh149', 'http://www.netsolutionsindia.com'),
(74, 'Anita Thakur', 'Software Tester/Quality Assurance(QA) ', 'White Shaarks', 'http://in.linkedin.com/pub/anita-thakur/20/409/174', ''),
(75, 'Heena Arora', 'C_sat coordinator', 'RT Outsourcing Services', '', 'http://rteservices.com'),
(76, 'Sandeep Bakshi', 'Training Head', 'RT Outsourcing Services', '', 'http://rteservices.com'),
(77, 'Ritesh Vig', 'Centralised Sales Coordinator', 'RT Outsourcing Services', 'http://in.linkedin.com/pub/ritesh-vig/1a/a7b/916', 'http://rteservices.com'),
(78, 'Vikramjit Singh', 'Business Development Manager', 'RT Outsourcing Services', 'http://in.linkedin.com/pub/vikramjit-singh/1b/936/412', 'http://rteservices.com'),
(79, 'Vikas Kaushik', 'Engineer', 'RT Outsourcing Services', 'http://in.linkedin.com/pub/vikas-kaushik/14/52b/401', 'http://rteservices.com'),
(80, 'Prem Lata', 'Regional Service Coordinator ', 'RT Outsourcing Services', 'http://in.linkedin.com/pub/prem-lata/18/483/563', 'http://rteservices.com'),
(81, 'Rinku Garg', '', 'Second Foundation', 'http://in.linkedin.com/pub/rinku-garg/4/20a/4aa', 'http://www.secf.com'),
(82, 'Kamaljit Singh', 'Technical Analyst', 'KMG Infotech', 'http://in.linkedin.com/pub/kamaljit-singh/24/382/148', 'http://kmgin.com'),
(83, 'Gajendra Bhanot', 'HR & Administration', 'KMG Infotech', 'http://in.linkedin.com/pub/gajendra-bhanot/23/182/675', 'http://kmgin.com'),
(84, 'Sudhir Chandel', 'Business Development Manager', 'KMG Infotech', 'http://in.linkedin.com/pub/sudhir-chandel/22/14b/a63', 'http://kmgin.com'),
(85, 'Priyanka Rishi', 'Business Relations', 'KMG Infotech', 'http://in.linkedin.com/pub/priyanka-rishi/18/610/848', 'http://kmgin.com'),
(86, 'Vishant Garg', 'Technical Writer', '22nd Century Technologies', 'http://in.linkedin.com/in/vishantgarg', 'http://tscti.com '),
(87, 'Paramdeep Kaur', 'HR & Administration', '22nd Century Technologies', 'http://in.linkedin.com/pub/paramdeep-kaur/24/a89/9bb', 'http://tscti.com '),
(88, 'Harminder Kaur Suri', 'Controller of Accounts', 'Ramtech Software Solutions', 'http://in.linkedin.com/pub/harminder-kaur-suri/15/801/50', 'http://www.ramtech-corp.com'),
(89, 'Seema Saini', 'HR & Administration', 'Ramtech Software Solutions', 'http://in.linkedin.com/pub/seema-saini/29/339/769', 'http://www.ramtech-corp.com'),
(90, 'Preeti Sharma', 'Account Manager', 'Agilent Technologies', 'http://in.linkedin.com/pub/preeti-sharma/15/30a/491', 'http://www.home.agilent.com/'),
(91, 'Kuldeep Kharyal', 'Team Leader', 'Agilent Technologies', 'http://in.linkedin.com/pub/kuldeep-kharyal/17/124/119', 'http://www.home.agilent.com/'),
(92, 'Neel Kamal', 'Engineer – Customer Service', 'Agilent Technologies', 'http://in.linkedin.com/pub/neel-kamal/26/226/b67', 'http://www.home.agilent.com/'),
(93, 'Taran Raj', 'Software Developer', 'digiBlitz Technologies', 'http://in.linkedin.com/pub/taran-raj/16/434/40a', ''),
(94, 'Vinay Kaushik', 'Software Developer', 'digiBlitz Technologies', 'http://in.linkedin.com/pub/vinay-kaushik/1a/30a/601', ''),
(95, 'Parminder Bawa', 'IT Manager', 'Esys Information Technologies', 'http://in.linkedin.com/in/parminderbawa', 'http://www.esys.in'),
(96, 'Ritesh Aggarwal', 'Channel Manager', 'Esys Information Technologies', 'http://in.linkedin.com/pub/ritesh-aggarwal/21/254/122', 'http://www.esys.in'),
(97, 'Ashish Garg', 'Packaging Development Manager', 'Esys Information Technologies', 'http://in.linkedin.com/pub/ashish-garg/12/b70/789', 'http://www.esys.in'),
(98, 'Jagdeep Singh', 'Product Executive', 'Esys Information Technologies', 'http://in.linkedin.com/pub/jagdeep-singh/10/47/716', 'http://www.esys.in'),
(99, 'Kailash Bhandari', 'Engineer Desktop Support', 'Esys Information Technologies', 'http://in.linkedin.com/pub/kailash-bhandari/23/bb4/381', 'http://www.esys.in'),
(100, 'Supreet Kaur', 'Accounts Officer', 'Esys Information Technologies', 'http://in.linkedin.com/pub/supreet-kaur/9/bab/82', 'http://www.esys.in'),
(101, 'Prixit Gill', 'System Administrator', 'MataFlex Technologies', 'http://in.linkedin.com/pub/prixit-gill/17/B35/187', ''),
(102, 'Reena Pal', 'Associate', 'Mataflex Technologies', 'http://in.linkedin.com/pub/reena-pal/13/967/167', ''),
(103, 'Sandeep Gill', 'TAG(WF & RPO)', 'MataFlex Technologies', 'http://in.linkedin.com/pub/sandeep-gill-1111-connections/12/687/121', ''),
(104, 'Harmeet Singh', 'Recruitment Lead / Team Lead', 'MataFlex Technologies', 'http://in.linkedin.com/pub/harmeet-singh/9/854/882', ''),
(105, 'Malvika Pathak', 'Product Expert', 'Blue Beacon Electronic Security System', 'http://in.linkedin.com/pub/malvika-pathak/29/58/75b', ''),
(106, 'Rajinder Bumrah', 'HR & Administration', 'Blue Beacon Infosys', 'http://in.linkedin.com/pub/rajinder-bumrah/8/967/691', ''),
(107, 'Amanjit Singh Walia', 'Business Developement Manager', 'Blue Beacon Infosys', 'http://in.linkedin.com/pub/amanjit-singh-walia/26/644/374', ''),
(108, 'Veenu George', 'Engineering Lead', 'authorGEN Technologies', 'http://in.linkedin.com/in/veenugeorge', 'www.authorgen.com'),
(109, 'Deepti Dhawan', 'Software Developer UI', 'authorGEN Technologies', 'http://in.linkedin.com/in/deeptidhawan', 'www.authorgen.com'),
(110, 'Jagdeep Singh Pannu', 'Internet Marketing', 'authorGEN Technologies', 'http://in.linkedin.com/in/jpannu', 'www.authorgen.com'),
(111, 'Amardeep Singh', 'Project Lead', 'RatioCinative Solutions', 'http://in.linkedin.com/pub/amardeep-singh/8/999/b47', ''),
(112, 'Naunihal Singh', 'Operations', 'Ratiocinative Solutions', 'http://in.linkedin.com/in/naunihalsingh', ''),
(113, 'Amod Sinha', 'Director', 'Ratiocinative Solutions', 'http://in.linkedin.com/in/amodsinha', ''),
(114, 'Deepak Bagga', 'Lecturer', 'Haryana Engineering College, Jagadhri', 'http://in.linkedin.com/in/deepakbagga', ''),
(115, 'Pradeep Thakur', 'Software Developer', 'Baya Tree', 'http://in.linkedin.com/pub/pradeep-thakur/26/b89/8b9', 'www.bayatree.com'),
(116, 'Nirmal Singh', 'Software System Analyst', 'Baya Tree', 'http://in.linkedin.com/pub/nirmal-singh/24/4b1/321', 'www.bayatree.com'),
(117, 'Gaurav Dua', 'Software Developer', 'Baya Tree', 'http://in.linkedin.com/in/gauravdua2004', 'www.bayatree.com'),
(118, 'Aditi Sharma', 'HR & Administration', 'Basware', 'http://in.linkedin.com/pub/aditi-sharma/14/422/a44', ''),
(119, 'Anamika Mahajan', 'Software Developer', 'Basware', 'http://in.linkedin.com/pub/anamika-mahajan/19/253/24a', ''),
(120, 'Vinish Garg', 'Technical Documentation Operations', 'Baseware', 'http://in.linkedin.com/in/vinishgarg', ''),
(121, 'Kulwinder Singh', 'HR & Administration', 'Baseware', 'http://in.linkedin.com/pub/kulwinder-singh/26/4b3/657', ''),
(122, 'Ritu Karir', 'HR & Administration', 'PHi Business Solutions', 'http://in.linkedin.com/pub/ritu-karir/8/a91/552', 'http://www.phi.co.in'),
(123, 'Bhuvnesh Gulati', 'Business Development and Operations', 'PHi Business Solutions', 'http://in.linkedin.com/pub/bhuvnesh-gulati/7/327/242', 'http://www.phi.co.in'),
(124, 'Siddharth Tyagi', 'Software Developer', 'Object Next', 'http://in.linkedin.com/in/siddharthtyagi', ''),
(125, 'Sarita Sharda', 'Assistant Manager', 'PHi Business Solutions', 'http://in.linkedin.com/pub/sarita-sharda/1b/752/36', 'http://www.phi.co.in'),
(126, 'Nitin Patet', 'Software Developer', 'Packet Video India', 'http://in.linkedin.com/pub/nitin-patet/7/8a8/514', ''),
(127, 'Supreet Kaur', 'Engineer', 'Conexant Systems', 'http://in.linkedin.com/pub/supreet-kaur/7/b68/645', ''),
(128, 'Pankaj Shukla', 'Design Engineer', 'Texas Instruments', 'http://in.linkedin.com/pub/pankaj-shukla/7/379/81b', ''),
(129, 'Jaspreet Singh', 'IT Manager', 'Oceanic Consultants', 'http://in.linkedin.com/pub/jaspreet-singh/b/727/380', ''),
(130, 'Neelam Panjeta', 'Senior Executive', 'Oceanic Consultants', 'http://in.linkedin.com/pub/neelam-panjeta/21/ab1/110', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_banner`
--

CREATE TABLE IF NOT EXISTS `bak_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bak_banner`
--

INSERT INTO `bak_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '', 'Joomla!', 'joomla', 0, 39, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 1, '', 'JoomlaCode', 'joomlacode', 0, 39, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 34, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 34, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 13, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 18, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/amazoncom-bookstores.html', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_bannerclient`
--

CREATE TABLE IF NOT EXISTS `bak_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_bannerclient`
--

INSERT INTO `bak_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bak_bannertrack`
--

CREATE TABLE IF NOT EXISTS `bak_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_bannertrack`
--


-- --------------------------------------------------------

--
-- Table structure for table `bak_categories`
--

CREATE TABLE IF NOT EXISTS `bak_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `bak_categories`
--

INSERT INTO `bak_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Latest', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(3, 0, 'Newsflash', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Free and Open Source Software', '', 'free-and-open-source-software', '', 'com_newsfeeds', 'left', 'Read the latest news about free and open source software from some of its leading advocates.', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(6, 0, 'Related Projects', '', 'related-projects', '', 'com_newsfeeds', 'left', 'Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(29, 0, 'The CMS', '', 'the-cms', '', '4', 'left', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(28, 0, 'Current Users', '', 'current-users', '', '3', 'left', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(25, 0, 'The Project', '', 'the-project', '', '4', 'left', 'General facts about Joomla!<br />', 1, 65, '2007-06-28 14:50:15', NULL, 1, 0, 0, ''),
(27, 0, 'New to Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(30, 0, 'The Community', '', 'the-community', '', '4', 'left', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(32, 0, 'Languages', '', 'languages', '', '3', 'left', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_components`
--

CREATE TABLE IF NOT EXISTS `bak_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `bak_components`
--

INSERT INTO `bak_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_contact_details`
--

CREATE TABLE IF NOT EXISTS `bak_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_contact_details`
--

INSERT INTO `bak_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_content`
--

CREATE TABLE IF NOT EXISTS `bak_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `bak_content`
--

INSERT INTO `bak_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<div align="left"><strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications. <br /></strong></div><p><strong><br /></strong><img src="images/stories/powered_by.png" border="0" alt="Joomla! Logo" title="Example Caption" hspace="6" vspace="0" width="165" height="68" align="left" />Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for intranets and extranets and is supported by a community of tens of thousands of users. </p>', 'With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.<p>Joomla! now provides more developer power while making the user experience all the more friendly. For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p><p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p><p>Thinking Web publishing? Think Joomla!</p>', 1, 1, 0, 1, '2008-08-12 10:00:00', 62, '', '2008-08-12 10:00:00', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 29, 0, 1, '', '', 0, 92, 'robots=\nauthor='),
(2, 'Newsflash 1', 'newsflash-1', '', '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>', '', 1, 1, 0, 3, '2008-08-10 06:30:34', 62, '', '2008-08-10 06:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 1, 'robots=\nauthor='),
(3, 'Newsflash 2', 'newsflash-2', '', '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content through a graphical Control Panel that gives you complete control over your site.</p>', '', 1, 1, 0, 3, '2008-08-09 22:30:34', 62, '', '2008-08-09 22:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 4, '', '', 0, 0, 'robots=\nauthor='),
(4, 'Newsflash 3', 'newsflash-3', '', '<p>With a library of thousands of free <a href="http://extensions.joomla.org" target="_blank" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions">Joomla! Extensions</a>  library today. </p>', '', 1, 1, 0, 3, '2008-08-10 06:30:34', 62, '', '2008-08-10 06:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 5, '', '', 0, 1, 'robots=\nauthor='),
(5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://joomla.org/" target="_blank" title="Joomla!">Joomla!</a> The software and default templates on which it runs are Copyright 2005-2008 <a href="http://www.opensourcematters.org/" target="_blank" title="Open Source Matters">Open Source Matters</a>. The sample content distributed with Joomla! is licensed under the <a href="http://docs.joomla.org/JEDL" target="_blank" title="Joomla! Electronic Document License">Joomla! Electronic Documentation License.</a> All data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p> <p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1" target="_blank" title="GNU General Public License"> GNU General Public License</a>. If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4" target="_blank" title="How To Apply These Terms To Your Program">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html" target="_blank" title="GNU General Public License FAQ">''GNU General Public License FAQ''</a>.</p> <p>The Joomla! licence has always been GPL.</p>', '', 1, 4, 0, 25, '2008-08-20 10:11:07', 62, '', '2008-08-20 10:11:07', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 100, 'robots=\nauthor='),
(6, 'We are Volunteers', 'we-are-volunteers', '', '<p>The Joomla Core Team and Working Group members are volunteer developers, designers, administrators and managers who have worked together to take Joomla! to new heights in its relatively short life. Joomla! has some wonderfully talented people taking Open Source concepts to the forefront of industry standards.  Joomla! 1.5 is a major leap forward and represents the most exciting Joomla! release in the history of the project. </p>', '', 1, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 4, '', '', 0, 54, 'robots=\nauthor='),
(9, 'Millions of Smiles', 'millions-of-smiles', '', '<p>The Joomla! team has millions of good reasons to be smiling about the Joomla! 1.5. In its current incarnation, it''s had millions of downloads, taking it to an unprecedented level of popularity.  The new code base is almost an entire re-factor of the old code base.  The user experience is still extremely slick but for developers the API is a dream.  A proper framework for real PHP architects seeking the best of the best.</p><p>If you''re a former Mambo User or a 1.0 series Joomla! User, 1.5 is the future of CMSs for a number of reasons.  It''s more powerful, more flexible, more secure, and intuitive.  Our developers and interface designers have worked countless hours to make this the most exciting release in the content management system sphere.</p><p>Go on ... get your FREE copy of Joomla! today and spread the word about this benchmark project. </p>', '', 1, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 7, '', '', 0, 23, 'robots=\nauthor='),
(10, 'How do I localise Joomla! to my language?', 'how-do-i-localise-joomla-to-my-language', '', '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>', '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="JED">Joomla! Extensions Directory</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in.</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://community.joomla.org/translations.html" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>', 1, 3, 0, 32, '2008-07-30 14:06:37', 62, '', '2008-07-30 14:06:37', 62, 0, '0000-00-00 00:00:00', '2006-09-29 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 5, '', '', 0, 10, 'robots=\nauthor='),
(11, 'How do I upgrade to Joomla! 1.5 ?', 'how-do-i-upgrade-to-joomla-15', '', '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>', ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p><!--more--></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank" title="JoomlaCode">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''jos_'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>', 1, 3, 0, 28, '2008-07-30 20:27:52', 62, '', '2008-07-30 20:27:52', 62, 0, '0000-00-00 00:00:00', '2006-09-29 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 3, '', '', 0, 14, 'robots=\nauthor='),
(12, 'Why does Joomla! 1.5 use UTF-8 encoding?', 'why-does-joomla-15-use-utf-8-encoding', '', '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>', '', 1, 3, 0, 31, '2008-08-05 01:11:29', 62, '', '2008-08-05 01:11:29', 62, 0, '0000-00-00 00:00:00', '2006-10-03 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 8, '', '', 0, 29, 'robots=\nauthor='),
(13, 'What happened to the locale setting?', 'what-happened-to-the-locale-setting', '', 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.', '', 1, 3, 0, 28, '2008-08-06 16:47:35', 62, '', '2008-08-06 16:47:35', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 11, 'robots=\nauthor='),
(14, 'What is the FTP layer for?', 'what-is-the-ftp-layer-for', '', '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>', '', 1, 3, 0, 31, '2008-08-06 21:27:49', 62, '', '2008-08-06 21:27:49', 62, 0, '0000-00-00 00:00:00', '2006-10-05 16:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 6, '', '', 0, 23, 'robots=\nauthor='),
(15, 'Can Joomla! 1.5 operate with PHP Safe Mode On?', 'can-joomla-15-operate-with-php-safe-mode-on', '', '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perform actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>', '', 1, 3, 0, 31, '2008-08-06 19:28:35', 62, '', '2008-08-06 19:28:35', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 4, '', '', 0, 8, 'robots=\nauthor='),
(16, 'Only one edit window! How do I create "Read more..."?', 'only-one-edit-window-how-do-i-create-read-more', '', '<p>This is now implemented by inserting a <strong>Read more...</strong> tag (the button is located below the editor area) a dotted line appears in the edited text showing the split location for the <em>Read more....</em> A new Plugin takes care of the rest.</p><p>It is worth mentioning that this does not have a negative effect on migrated data from older sites. The new implementation is fully backward compatible.</p>', '', 1, 3, 0, 28, '2008-08-06 19:29:28', 62, '', '2008-08-06 19:29:28', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 4, '', '', 0, 20, 'robots=\nauthor='),
(17, 'My MySQL database does not support UTF-8. Do I have a problem?', 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem', '', 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).', '', 1, 3, 0, 31, '2008-08-07 09:30:37', 62, '', '2008-08-07 09:30:37', 62, 0, '0000-00-00 00:00:00', '2006-10-05 20:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 7, '', '', 0, 9, 'robots=\nauthor='),
(18, 'Joomla! Features', 'joomla-features', '', '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX', '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Easily integrate news feeds into your Web site.</li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site.</li></ul>', 1, 4, 0, 29, '2008-08-08 23:32:45', 62, '', '2008-08-08 23:32:45', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 4, '', '', 0, 59, 'robots=\nauthor='),
(19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br /> </p><p>So what''s the catch? How much does this system cost?</p><p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p><p>Joomla! changes all that ... <br />Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p><p>It is easy to install and administer, and is reliable. </p><p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p><p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>', '', 1, 4, 0, 29, '2008-08-09 07:49:20', 62, '', '2008-08-09 07:49:20', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 2, '', '', 0, 150, 'robots=\nauthor='),
(20, 'Support and Documentation', 'support-and-documentation', '', '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too!</p> <p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features.</p> <p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank" title="Forum">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p> <p>Two other resources for Support are the <a href="http://developer.joomla.org/" target="_blank" title="Joomla! Developer Site">Joomla! Developer Site</a> and the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a> (JED). The Joomla! Developer Site provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site.</p> <p>The Joomla! Developers and Bug Squad members are regularly posting their blog reports about several topics such as programming techniques and security issues.</p> <h1>Documentation</h1> <p>Joomla! Documentation can of course be found on the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. You can find information for beginners, installation, upgrade, Frequently Asked Questions, developer topics, and a lot more. The Documentation Team helps oversee the wiki but you are invited to contribute content, as well.</p> <p>There are also books written about Joomla! You can find a listing of these books in the <a href="http://shop.joomla.org/" target="_blank" title="Joomla! Shop">Joomla! Shop</a>.</p>', '', 1, 4, 0, 25, '2008-08-09 08:33:57', 62, '', '2008-08-09 08:33:57', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 6, 'robots=\nauthor='),
(21, 'Joomla! Facts', 'joomla-facts', '', '<p>Here are some interesting facts about Joomla!</p><ul><li><span>Over 210,000 active registered Users on the <a href="http://forum.joomla.org" target="_blank" title="Joomla Forums">Official Joomla! community forum</a> and more on the many international community sites.</span><ul><li><span>over 1,000,000 posts in over 200,000 topics</span></li><li>over 1,200 posts per day</li><li>growing at 150 new participants each day!</li></ul></li><li><span>1168 Projects on the JoomlaCode (<a href="http://joomlacode.org/" target="_blank" title="JoomlaCode">joomlacode.org</a> ). All for open source addons by third party developers.</span><ul><li><span>Well over 6,000,000 downloads of Joomla! since the migration to JoomlaCode in March 2007.<br /></span></li></ul></li><li><span>Nearly 4,000 extensions for Joomla! have been registered on the <a href="http://extensions.joomla.org" target="_blank" title="http://extensions.joomla.org">Joomla! Extension Directory</a>  </span></li><li><span>Joomla.org exceeds 2 TB of traffic per month!</span></li></ul>', '', 1, 4, 0, 30, '2008-08-09 16:46:37', 62, '', '2008-08-09 16:46:37', 62, 0, '0000-00-00 00:00:00', '2006-10-07 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 50, 'robots=\nauthor='),
(22, 'What''s New in 1.5?', 'whats-new-in-15', '', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>', '<p style="margin-bottom: 0in">In Joomla! 1.5, you''ll notice: </p>    <ul><li>     <p style="margin-bottom: 0in">       Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</p>   </li><li>     <p style="margin-bottom: 0in"> Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</p>   </li><li>     <p style="margin-bottom: 0in"> Extended integration of external applications through Web services and remote authentication such as the Lightweight Directory Access Protocol (LDAP)</p>   </li><li>     <p style="margin-bottom: 0in"> Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</p>   </li><li>     <p style="margin-bottom: 0in">       A more sustainable and flexible framework for Component and Extension developers</p>   </li><li>     <p style="margin-bottom: 0in">Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</p></li></ul>', 1, 4, 0, 29, '2008-08-11 22:13:58', 62, '', '2008-08-11 22:13:58', 62, 0, '0000-00-00 00:00:00', '2006-10-10 18:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 1, '', '', 0, 92, 'robots=\nauthor='),
(23, 'Platforms and Open Standards', 'platforms-and-open-standards', '', '<p class="MsoNormal">Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content.  </p>            <p class="MsoNormal">The minimum requirements are:</p>      <ul><li>Apache 1.x, 2.x and higher</li><li>PHP 4.3 and higher</li><li>MySQL 3.23 and higher</li></ul>It will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', 1, 4, 0, 25, '2008-08-11 04:22:14', 62, '', '2008-08-11 04:22:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 11, 'robots=\nauthor='),
(24, 'Content Layouts', 'content-layouts', '', '<p>Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a <strong>layout</strong>. Use the guide below to understand which layouts are available and how you might use them. </p> <h2>Content </h2> <p>Joomla! makes it extremely easy to add and display content. All content  is placed where your mainbody tag in your template is located. There are three main types of layouts available in Joomla! and all of them can be customised via parameters. The display and parameters are set in the Menu Item used to display the content your working on. You create these layouts by creating a Menu Item and choosing how you want the content to display.</p> <h3>Blog Layout<br /> </h3> <p>Blog layout will show a listing of all Articles of the selected blog type (Section or Category) in the mainbody position of your template. It will give you the standard title, and Intro of each Article in that particular Category and/or Section. You can customise this layout via the use of the Preferences and Parameters, (See Article Parameters) this is done from the Menu not the Section Manager!</p> <h3>Blog Archive Layout<br /> </h3> <p>A Blog Archive layout will give you a similar output of Articles as the normal Blog Display but will add, at the top, two drop down lists for month and year plus a search button to allow Users to search for all Archived Articles from a specific month and year.</p> <h3>List Layout<br /> </h3> <p>Table layout will simply give you a <em>tabular </em>list<em> </em>of all the titles in that particular Section or Category. No Intro text will be displayed just the titles. You can set how many titles will be displayed in this table by Parameters. The table layout will also provide a filter Section so that Users can reorder, filter, and set how many titles are listed on a single page (up to 50)</p> <h2>Wrapper</h2> <p>Wrappers allow you to place stand alone applications and Third Party Web sites inside your Joomla! site. The content within a Wrapper appears within the primary content area defined by the "mainbody" tag and allows you to display their content as a part of your own site. A Wrapper will place an IFRAME into the content Section of your Web site and wrap your standard template navigation around it so it appears in the same way an Article would.</p> <h2>Content Parameters</h2> <p>The parameters for each layout type can be found on the right hand side of the editor boxes in the Menu Item configuration screen. The parameters available depend largely on what kind of layout you are configuring.</p>', '', 1, 4, 0, 29, '2008-08-12 22:33:10', 62, '', '2008-08-12 22:33:10', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 5, '', '', 0, 70, 'robots=\nauthor='),
(25, 'What are the requirements to run Joomla! 1.5?', 'what-are-the-requirements-to-run-joomla-15', '', '<p>Joomla! runs on the PHP pre-processor. PHP comes in many flavours, for a lot of operating systems. Beside PHP you will need a Web server. Joomla! is optimized for the Apache Web server, but it can run on different Web servers like Microsoft IIS it just requires additional configuration of PHP and MySQL. Joomla! also depends on a database, for this currently you can only use MySQL. </p>Many people know from their own experience that it''s not easy to install an Apache Web server and it gets harder if you want to add MySQL, PHP and Perl. XAMPP, WAMP, and MAMP are easy to install distributions containing Apache, MySQL, PHP and Perl for the Windows, Mac OSX and Linux operating systems. These packages are for localhost installations on non-public servers only.<br />The minimum version requirements are:<br /><ul><li>Apache 1.x or 2.x</li><li>PHP 4.3 or up</li><li>MySQL 3.23 or up</li></ul>For the latest minimum requirements details, see <a href="http://www.joomla.org/about-joomla/technical-requirements.html" target="_blank" title="Joomla! Technical Requirements">Joomla! Technical Requirements</a>.', '', 1, 3, 0, 31, '2008-08-11 00:42:31', 62, '', '2008-08-11 00:42:31', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 5, '', '', 0, 25, 'robots=\nauthor='),
(26, 'Extensions', 'extensions', '', '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p> <ul>   <li>Dynamic form builders</li>   <li>Business or organisational directories</li>   <li>Document management</li>   <li>Image and multimedia galleries</li>   <li>E-commerce and shopping cart engines</li>   <li>Forums and chat software</li>   <li>Calendars</li>   <li>E-mail newsletters</li>   <li>Data collection and reporting tools</li>   <li>Banner advertising systems</li>   <li>Paid subscription services</li>   <li>and many, many, more</li> </ul> <p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p><p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a> </p> <h3>Types of Extensions </h3><p>There are five types of extensions:</p> <ul>   <li>Components</li>   <li>Modules</li>   <li>Templates</li>   <li>Plugins</li>   <li>Languages</li> </ul> <p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.<br /> </p> <hr title="Components" class="system-pagebreak" /> <h3><img src="images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3> <p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<font face="courier new,courier">com_content</font>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<font face="courier new,courier">com_user</font>) is the mini-application  that handles User registration.</p> <p>Many of Joomla!''s core features are provided by the use of default Components such as:</p> <ul>   <li>Contacts</li>   <li>Front Page</li>   <li>News Feeds</li>   <li>Banners</li>   <li>Mass Mail</li>   <li>Polls</li></ul><p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p> <p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>  <hr title="Modules" class="system-pagebreak" /> <h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3> <p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p> <p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p> <p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout. </p> <h4>Displaying Modules</h4> <p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p> <p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<font face="courier new,courier">mod_mainmenu</font>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p> <h4>Newsflash Example</h4> <p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p> <p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>  <hr title="Plugins" class="system-pagebreak" /> <h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3> <p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <font face="courier new,courier">onGetEditorArea</font> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>  <hr title="Languages" class="system-pagebreak" /> <h3><img src="images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3> <p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles. </p> <p>More information on languages is available from the <br />   <a href="http://community.joomla.org/translations.html" target="_blank" title="Joomla! Translation Teams">http://community.joomla.org/translations.html</a></p>', '', 1, 4, 0, 29, '2008-08-11 06:00:00', 62, '', '2008-08-11 06:00:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 3, 'About Joomla!, General, Extensions', '', 0, 102, 'robots=\nauthor=');
INSERT INTO `bak_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 210,000 members, the Joomla! Discussion Forums at <a href="http://forum.joomla.org/" target="_blank" title="Forums">forum.joomla.org</a> are a great resource for both new and experienced users. Ask your toughest questions the community is waiting to see what you''ll do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Visit the <a href="http://forum.joomla.org/viewforum.php?f=514" target="_blank" title="Site Showcase">Site Showcase</a> section of our forum.</p><p><strong>Do you want to contribute?</strong></p><p>If you think working with Joomla is fun, wait until you start working on it. We''re passionate about helping Joomla users become contributors. There are many ways you can help Joomla''s development:</p><ul>	<li>Submit news about Joomla. We syndicate Joomla-related news on <a href="http://news.joomla.org" target="_blank" title="JoomlaConnect">JoomlaConnect<sup>TM</sup></a>. If you have Joomla news that you would like to share with the community, find out how to get connected <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</li>	<li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" target="_blank" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://docs.joomla.org/Filing_bugs_and_issues" target="_blank" title="Reporting Bugs">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://docs.joomla.org/Patch_submission_guidelines" target="_blank" title="Submitting Patches">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/viewforum.php?f=509" target="_blank" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://www.joomla.org/about-joomla/the-project/working-groups.html" target="_blank" title="Joomla! working groups">Joomla Working Groups</a> and bring your personal expertise to the Joomla community. </li></ul><p>These are just a few ways you can contribute. See <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank" title="Contribute">Contribute to Joomla</a> for many more ways.</p>', '', 1, 4, 0, 30, '2008-08-12 16:50:48', 62, '', '2008-08-12 16:50:48', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 2, '', '', 0, 52, 'robots=\nauthor='),
(28, 'How do I install Joomla! 1.5?', 'how-do-i-install-joomla-15', '', '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" target="_blank" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" target="_blank" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>', '', 1, 3, 0, 31, '2008-08-11 01:10:59', 62, '', '2008-08-11 01:10:59', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 3, '', '', 0, 5, 'robots=\nauthor='),
(29, 'What is the purpose of the collation selection in the installation screen?', 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen', '', 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.', '', 1, 3, 0, 32, '2008-08-11 03:11:38', 62, '', '2008-08-11 03:11:38', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 4, '', '', 0, 6, 'robots=\nauthor='),
(30, 'What languages are supported by Joomla! 1.5?', 'what-languages-are-supported-by-joomla-15', '', 'Within the Installer you will find a wide collection of languages. The installer currently supports the following languages: Arabic, Bulgarian, Bengali, Czech, Danish, German, Greek, English, Spanish, Finnish, French, Hebrew, Devanagari(India), Croatian(Croatia), Magyar (Hungary), Italian, Malay, Norwegian bokmal, Dutch, Portuguese(Brasil), Portugues(Portugal), Romanian, Russian, Serbian, Svenska, Thai and more are being added all the time.<br />By default the English language is installed for the Back and Front-ends. You can download additional language files from the <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla!Extensions Directory</a>. ', '', 1, 3, 0, 32, '2008-08-11 01:12:18', 62, '', '2008-08-11 01:12:18', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 8, 'robots=\nauthor='),
(31, 'Is it useful to install the sample data?', 'is-it-useful-to-install-the-sample-data', '', 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.', '', 1, 3, 0, 27, '2008-08-11 09:12:55', 62, '', '2008-08-11 09:12:55', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 3, '', '', 0, 3, 'robots=\nauthor='),
(32, 'Where is the Static Content Item?', 'where-is-the-static-content', '', '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>', '', 1, 3, 0, 28, '2008-08-10 23:13:33', 62, '', '2008-08-10 23:13:33', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 6, '', '', 0, 5, 'robots=\nauthor='),
(33, 'What is an Uncategorised Article?', 'what-is-uncategorised-article', '', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', 1, 3, 0, 31, '2008-08-11 15:14:11', 62, '', '2008-08-11 15:14:11', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 2, '', '', 0, 6, 'robots=\nauthor='),
(34, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', '', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', 1, 3, 0, 32, '2008-08-11 17:14:57', 62, '', '2008-08-11 17:14:57', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 6, 'robots=\nauthor='),
(35, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-the-types-of-menu-entries', '', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', 1, 3, 0, 31, '2008-08-10 23:15:36', 62, '', '2008-08-10 23:15:36', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 18, 'robots=\nauthor='),
(36, 'Where did the Installers go?', 'where-did-the-installer-go', '', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', 1, 3, 0, 28, '2008-08-10 23:16:20', 62, '', '2008-08-10 23:16:20', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 4, 'robots=\nauthor='),
(37, 'Where did the Mambots go?', 'where-did-the-mambots-go', '', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', 1, 3, 0, 28, '2008-08-11 09:17:00', 62, '', '2008-08-11 09:17:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 5, '', '', 0, 4, 'robots=\nauthor='),
(38, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is <a href="http://extensions.joomla.org/index.php?option=com_mtree&task=listcats&cat_id=1837&Itemid=35" target="_blank" title="Translations for Joomla!">Translations for Joomla!</a> on JED.</p>', '', 1, 3, 0, 32, '2008-08-11 17:18:14', 62, '', '2008-08-11 17:18:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, '', '', 0, 7, 'robots=\nauthor='),
(39, 'How do I remove an Article?', 'how-do-i-remove-an-article', '', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', 1, 3, 0, 27, '2008-08-11 09:19:01', 62, '', '2008-08-11 09:19:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 2, '', '', 0, 4, 'robots=\nauthor='),
(40, 'What is the difference between Archiving and Trashing an Article? ', 'what-is-the-difference-between-archiving-and-trashing-an-article', '', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', 1, 3, 0, 27, '2008-08-11 05:19:43', 62, '', '2008-08-11 05:19:43', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 1, '', '', 0, 5, 'robots=\nauthor='),
(41, 'Newsflash 5', 'newsflash-5', '', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', 1, 1, 0, 3, '2008-08-12 00:17:31', 62, '', '2008-08-12 00:17:31', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 4, 'robots=\nauthor='),
(42, 'Newsflash 4', 'newsflash-4', '', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.', '', 1, 1, 0, 3, '2008-08-12 00:25:50', 62, '', '2008-08-12 00:25:50', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 1, '', '', 0, 5, 'robots=\nauthor='),
(43, 'Example Pages and Menu Links', 'example-pages-and-menu-links', '', '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p><ul><li>Section Blog</li><li>Section Table</li><li> Blog Category</li><li>Category Table</li></ul><p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p><p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong><font face="courier new,courier">Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</font></strong>. </p>', '', 1, 0, 0, 0, '2008-08-12 09:26:52', 62, '', '2008-08-12 09:26:52', 62, 0, '0000-00-00 00:00:00', '2006-10-11 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, 'Uncategorized, Uncategorized, Example Pages and Menu Links', '', 0, 43, 'robots=\nauthor='),
(44, 'Joomla! Security Strike Team', 'joomla-security-strike-team', '', '<p>The Joomla! Project has assembled a top-notch team of experts to form the new Joomla! Security Strike Team. This new team will solely focus on investigating and resolving security issues. Instead of working in relative secrecy, the JSST will have a strong public-facing presence at the <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a>.</p>', '<p>The new JSST will call the new <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a> their home base. The Security Center provides a public presence for <a href="http://developer.joomla.org/security/news.html" target="_blank" title="Joomla! Security News">security issues</a> and a platform for the JSST to <a href="http://developer.joomla.org/security/articles-tutorials.html" target="_blank" title="Joomla! Security Articles">help the general public better understand security</a> and how it relates to Joomla!. The Security Center also offers users a clearer understanding of how security issues are handled. There''s also a <a href="http://feeds.joomla.org/JoomlaSecurityNews" target="_blank" title="Joomla! Security News Feed">news feed</a>, which provides subscribers an up-to-the-minute notification of security issues as they arise.</p>', 1, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(45, 'Joomla! Community Portal', 'joomla-community-portal', '', '<p>The <a href="http://community.joomla.org/" target="_blank" title="Joomla! Community Portal">Joomla! Community Portal</a> is now online. There, you will find a constant source of information about the activities of contributors powering the Joomla! Project. Learn about <a href="http://community.joomla.org/events.html" target="_blank" title="Joomla! Events">Joomla! Events</a> worldwide, and see if there is a <a href="http://community.joomla.org/user-groups.html" target="_blank" title="Joomla! User Groups">Joomla! User Group</a> nearby.</p><p>The <a href="http://community.joomla.org/magazine.html" target="_blank" title="Joomla! Community Magazine">Joomla! Community Magazine</a> promises an interesting overview of feature articles, community accomplishments, learning topics, and project updates each month. Also, check out <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">JoomlaConnect&#0153;</a>. This aggregated RSS feed brings together Joomla! news from all over the world in your language. Get the latest and greatest by clicking <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</p>', '', 1, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 5, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `bak_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `bak_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_content_frontpage`
--

INSERT INTO `bak_content_frontpage` (`content_id`, `ordering`) VALUES
(45, 2),
(6, 3),
(44, 4),
(5, 5),
(9, 6),
(30, 7),
(16, 8);

-- --------------------------------------------------------

--
-- Table structure for table `bak_content_rating`
--

CREATE TABLE IF NOT EXISTS `bak_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `bak_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `bak_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bak_core_acl_aro`
--

INSERT INTO `bak_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `bak_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `bak_core_acl_aro_groups`
--

INSERT INTO `bak_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `bak_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_core_acl_aro_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `bak_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `bak_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bak_core_acl_aro_sections`
--

INSERT INTO `bak_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `bak_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_core_acl_groups_aro_map`
--

INSERT INTO `bak_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_log_items`
--

CREATE TABLE IF NOT EXISTS `bak_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_core_log_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `bak_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `bak_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `bak_groups`
--

CREATE TABLE IF NOT EXISTS `bak_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_groups`
--

INSERT INTO `bak_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `bak_menu`
--

CREATE TABLE IF NOT EXISTS `bak_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `bak_menu`
--

INSERT INTO `bak_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=Welcome to the Frontpage\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 1),
(2, 'mainmenu', 'Joomla! License', 'joomla-license', 'index.php?option=com_content&view=article&id=5', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(41, 'mainmenu', 'FAQ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0),
(11, 'othermenu', 'Joomla! Home', 'joomla-home', 'http://www.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'othermenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'othermenu', 'Joomla! Documentation', 'joomla-documentation', 'http://docs.joomla.org', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(14, 'othermenu', 'Joomla! Community', 'joomla-community', 'http://community.joomla.org', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(15, 'othermenu', 'Joomla! Magazine', 'joomla-community-magazine', 'http://community.joomla.org/magazine.html', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(16, 'othermenu', 'OSM Home', 'osm-home', 'http://www.opensourcematters.org', 'url', 1, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 6, 'menu_image=-1\n\n', 0, 0, 0),
(17, 'othermenu', 'Administrator', 'administrator', 'administrator/', 'url', 1, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(18, 'topmenu', 'News', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(38, 'keyconcepts', 'Content Layouts', 'content-layouts', 'index.php?option=com_content&view=article&id=24', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(27, 'mainmenu', 'Joomla! Overview', 'joomla-overview', 'index.php?option=com_content&view=article&id=19', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(28, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(29, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(30, 'topmenu', 'The Community', 'the-community', 'index.php?option=com_content&view=article&id=27', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(34, 'mainmenu', 'What''s New in 1.5?', 'what-is-new-in-1-5', 'index.php?option=com_content&view=article&id=22', 'component', 1, 27, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(40, 'keyconcepts', 'Extensions', 'extensions', 'index.php?option=com_content&view=article&id=26', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(37, 'mainmenu', 'More about Joomla!', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0),
(43, 'keyconcepts', 'Example Pages', 'example-pages', 'index.php?option=com_content&view=article&id=43', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(44, 'ExamplePages', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=3', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(45, 'ExamplePages', 'Section Table', 'section-table', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(46, 'ExamplePages', 'Category Blog', 'categoryblog', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(47, 'ExamplePages', 'Category Table', 'category-table', 'index.php?option=com_content&view=category&id=32', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', 1, 0, 4, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=Weblinks\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 0, 0, 0),
(49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', 1, 0, 11, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(50, 'mainmenu', 'The News', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', 1, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=The News\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_menu_types`
--

CREATE TABLE IF NOT EXISTS `bak_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bak_menu_types`
--

INSERT INTO `bak_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'topmenu', 'Top Menu', 'Top level navigation'),
(4, 'othermenu', 'Resources', 'Additional links'),
(5, 'ExamplePages', 'Example Pages', 'Example Pages'),
(6, 'keyconcepts', 'Key Concepts', 'This describes some critical information for new Users.');

-- --------------------------------------------------------

--
-- Table structure for table `bak_messages`
--

CREATE TABLE IF NOT EXISTS `bak_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bak_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `bak_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `bak_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `bak_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `bak_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_migration_backlinks`
--


-- --------------------------------------------------------

--
-- Table structure for table `bak_modules`
--

CREATE TABLE IF NOT EXISTS `bak_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `bak_modules`
--

INSERT INTO `bak_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Main Menu', '', 1, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmoduleclass_sfx=_menu\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Polls', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, 'id=14\ncache=1', 0, 0, ''),
(17, 'User Menu', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1', 1, 0, ''),
(18, 'Login Form', '', 8, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, ''),
(19, 'Latest News', '', 4, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'cache=1', 1, 0, ''),
(20, 'Statistics', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0, ''),
(21, 'Who''s Online', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0, ''),
(22, 'Popular', '', 6, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'cache=1', 0, 0, ''),
(23, 'Archive', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, ''),
(24, 'Sections', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, ''),
(25, 'Newsflash', '', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_newsflash', 0, 0, 1, 'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=', 0, 0, ''),
(26, 'Related Items', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Search', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'cache=1', 0, 0, ''),
(28, 'Random Image', '', 9, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0, ''),
(29, 'Top Menu', '', 1, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'cache=1\nmenutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0', 1, 0, ''),
(30, 'Banners', '', 1, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(31, 'Resources', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(32, 'Wrapper', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Footer', '', 2, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed Display', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(35, 'Breadcrumbs', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, ''),
(36, 'Syndication', '', 3, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_syndicate', 0, 0, 0, '', 1, 0, ''),
(38, 'Advertisement', '', 3, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 1, 'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Featured Links:\r\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n', 0, 0, ''),
(39, 'Example Pages', '', 5, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=ExamplePages\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(40, 'Key Concepts', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=keyconcepts\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href="http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews" target="_blank">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href="http://www.joomla.org/download.html" target="_blank">latest Joomla! release;</a> and (3) a <a href="http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup" target="_blank" title="good Web host">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href="http://docs.joomla.org/Category:Security_Checklist" target="_blank" title="Joomla! Security Checklist">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href="http://developer.joomla.org/security/contact-the-team.html" target="_blank" title="Joomla! Security Task Force">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   "<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginner''s   Guide to Joomla!.</a>" There, you will find a Quick Start to Joomla!   <a href="http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf" target="_blank">guide</a>   and <a href="http://help.joomla.org/ghop/feb2008/task167/index.html" target="_blank">video</a>,   amongst many other tutorials. The   <a href="http://community.joomla.org/magazine/view-all-issues.html" target="_blank">Joomla!   Community Magazine</a> also has   <a href="http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html" target="_blank">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href="http://docs.joomla.org/Category:FAQ" target="_blank">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href="http://forum.joomla.org/" target="_blank">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name="twjs" title="twjs"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Joomla! Security Newsfeed', '', 6, 'cpanel', 62, '2008-10-25 20:15:17', 1, 'mod_feed', 0, 0, 1, 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n', 0, 1, ''),
(43, 'Superfish Menu', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_superfishmenu', 0, 0, 0, 'menutype=topmenu\nmenu_style=navbar\nanimation={opacity:''show''}\nspeed=def\ndelay=800\nhoverClass=sfHover\npathClass=active\npathLevels=1\nautoArrows=1\ndropShadows=1\nclearingDiv=0\ncustom_stylesheets=\ncustom_css=\ncustom_animation={opacity:''show'', height:''show'', width:''show''}\nmenuWidthMod_enable=0\nmenuWidthMod_menuWidth=100%\nmenuWidthMod_equalWidth=1\nmenuWidthMod_resizeSeps=0\nmenuWidthMod_resizeSubMenus=1\nuseEventSpecialHover=1\nhover_delay=100\nhover_speed=100\nuseSuperSubs=0\nmin_width=10\nmax_width=30\nextra_width=0\nuseBgIframe=0\nbgi_top=auto\nbgi_left=auto\nbgi_width=auto\nbgi_height=auto\nbgi_opacity=1\nbgi_src=javascript:false;\nonInit=\nonBeforeShow=\nonShow=\nonHide=\nloadJQuery=1\njquerySafeMode=1\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nstartLevel=0\nendLevel=0\nwindow_open=\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_modules_menu`
--

CREATE TABLE IF NOT EXISTS `bak_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_modules_menu`
--

INSERT INTO `bak_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 1),
(17, 0),
(18, 1),
(19, 1),
(19, 2),
(19, 4),
(19, 27),
(19, 36),
(21, 1),
(22, 1),
(22, 2),
(22, 4),
(22, 27),
(22, 36),
(25, 0),
(27, 0),
(29, 0),
(30, 0),
(31, 1),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(38, 1),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(43, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `bak_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `bak_newsfeeds`
--

INSERT INTO `bak_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! Announcements', 'joomla-official-news', 'http://feeds.joomla.org/JoomlaAnnouncements', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(4, 2, 'Joomla! Core Team Blog', 'joomla-core-team-blog', 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(4, 3, 'Joomla! Community Magazine', 'joomla-community-magazine', 'http://feeds.joomla.org/JoomlaMagazine', '', 1, 20, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(4, 4, 'Joomla! Developer News', 'joomla-developer-news', 'http://feeds.joomla.org/JoomlaDeveloper', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(4, 5, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(5, 6, 'Free Software Foundation Blogs', 'free-software-foundation-blogs', 'http://www.fsf.org/blogs/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(5, 7, 'Free Software Foundation', 'free-software-foundation', 'http://www.fsf.org/news/RSS', NULL, 1, 5, 3600, 62, '2008-09-14 00:24:25', 3, 0),
(5, 8, 'Software Freedom Law Center Blog', 'software-freedom-law-center-blog', 'http://www.softwarefreedom.org/feeds/blog/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 9, 'Software Freedom Law Center News', 'software-freedom-law-center', 'http://www.softwarefreedom.org/feeds/news/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 10, 'Open Source Initiative Blog', 'open-source-initiative-blog', 'http://www.opensource.org/blog/feed', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 11, 'PHP News and Announcements', 'php-news-and-announcements', 'http://www.php.net/feed.atom', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:37', 1, 0),
(6, 12, 'Planet MySQL', 'planet-mysql', 'http://www.planetmysql.org/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:51', 2, 0),
(6, 13, 'Linux Foundation Announcements', 'linux-foundation-announcements', 'http://www.linuxfoundation.org/press/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:11', 3, 0),
(6, 14, 'Mootools Blog', 'mootools-blog', 'http://feeds.feedburner.com/mootools-blog', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:51', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_plugins`
--

CREATE TABLE IF NOT EXISTS `bak_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `bak_plugins`
--

INSERT INTO `bak_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_polls`
--

CREATE TABLE IF NOT EXISTS `bak_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `bak_polls`
--

INSERT INTO `bak_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `bak_poll_data`
--

CREATE TABLE IF NOT EXISTS `bak_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `bak_poll_data`
--

INSERT INTO `bak_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Photo and Media Sites', 2),
(7, 14, 'All of the Above!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_poll_date`
--

CREATE TABLE IF NOT EXISTS `bak_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `bak_poll_date`
--

INSERT INTO `bak_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `bak_poll_menu`
--

CREATE TABLE IF NOT EXISTS `bak_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_poll_menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `bak_sections`
--

CREATE TABLE IF NOT EXISTS `bak_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bak_sections`
--

INSERT INTO `bak_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, ''),
(3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, ''),
(4, 'About Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 14, '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_session`
--

CREATE TABLE IF NOT EXISTS `bak_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_session`
--

INSERT INTO `bak_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('admin', '1267683819', 'fa941492ec236463ece7515e6b34710d', 0, 62, 'Super Administrator', 25, 1, '__default|a:8:{s:15:"session.counter";i:33;s:19:"session.timer.start";i:1267682721;s:18:"session.timer.last";i:1267683819;s:17:"session.timer.now";i:1267683819;s:22:"session.client.browser";s:101:"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.3) Gecko/20091020 Ubuntu/9.10 (karmic) Firefox/3.5.3";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:2:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}s:11:"application";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"lang";s:0:"";}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"62";s:4:"name";s:13:"Administrator";s:8:"username";s:5:"admin";s:5:"email";s:20:"prabhu9484@gmail.com";s:8:"password";s:65:"ed6fc1609332eb2c58d40f7d27eeb21a:xfq4TixOHLEneoYOWUYVWiJQaWT4nrSS";s:14:"password_clear";s:0:"";s:8:"usertype";s:19:"Super Administrator";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:3:"gid";s:2:"25";s:12:"registerDate";s:19:"2010-03-03 13:27:49";s:13:"lastvisitDate";s:19:"2010-03-03 10:28:49";s:10:"activation";s:0:"";s:6:"params";s:0:"";s:3:"aid";i:2;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:56:"/var/www/joomla2/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"29d7e79d1bd448db317110f2f763795d";}'),
('', '1267683825', '9320087d960b4ab7c783f85e01db1898', 1, 0, '', 0, 0, '__default|a:8:{s:15:"session.counter";i:7;s:19:"session.timer.start";i:1267682699;s:18:"session.timer.last";i:1267683727;s:17:"session.timer.now";i:1267683825;s:22:"session.client.browser";s:101:"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.3) Gecko/20091020 Ubuntu/9.10 (karmic) Firefox/3.5.3";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:56:"/var/www/joomla2/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"d847d65c9c3883076da55bb338e39efc";}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_stats_agents`
--

CREATE TABLE IF NOT EXISTS `bak_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_stats_agents`
--


-- --------------------------------------------------------

--
-- Table structure for table `bak_templates_menu`
--

CREATE TABLE IF NOT EXISTS `bak_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_templates_menu`
--

INSERT INTO `bak_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('themza_j15_25', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_users`
--

CREATE TABLE IF NOT EXISTS `bak_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `bak_users`
--

INSERT INTO `bak_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'prabhu9484@gmail.com', 'ed6fc1609332eb2c58d40f7d27eeb21a:xfq4TixOHLEneoYOWUYVWiJQaWT4nrSS', 'Super Administrator', 0, 1, 25, '2010-03-03 13:27:49', '2010-03-04 06:05:30', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_weblinks`
--

CREATE TABLE IF NOT EXISTS `bak_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bak_weblinks`
--

INSERT INTO `bak_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `cSocialAIADA`
--

CREATE TABLE IF NOT EXISTS `cSocialAIADA` (
  `id` int(11) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `professional` char(100) DEFAULT NULL,
  `organisation` char(100) DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `www` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cSocialAIADA`
--

INSERT INTO `cSocialAIADA` (`id`, `name`, `professional`, `organisation`, `url`, `www`) VALUES
(1, 'R Chaturvedi', 'Engineer Chief', 'Adityapur Auto Cluster', '', 'http://autoclusteradityapur.com'),
(2, 'Ratan Dasgupta', 'Training Placement Incharge', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/ratan-dasgupta/28/526/502', 'http://idtrjamshedpur.com'),
(3, 'Prem Kumar', 'Engineer', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/prem-kumar/7/137/416', 'http://idtrjamshedpur.com'),
(4, 'Jhhen B Choudhary', 'Engineer CAD/CAM', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/jhhen-b-choudhary/14/828/872', 'http://idtrjamshedpur.com'),
(5, 'Rishav Kumar', 'Engineer CAD/CAM', 'Indo Danish Tool Room', 'http://in.linkedin.com/pub/rishav-kumar/23/94b/730', 'http://idtrjamshedpur.com'),
(6, 'Mahesh Kumar Gupta', '', 'Indo Danish Tool Room', '', 'http://idtrjamshedpur.com'),
(7, 'Suchit Kumar', 'Engineer Hardware & Networking', 'Indo Danish Tool Room', '', 'http://idtrjamshedpur.com'),
(8, 'Biswaranjan Dhal', 'Research Fellow', 'National Metallurgical Laboratory', 'http://in.linkedin.com/pub/biswaranjan-dhal/13/586/435', 'http://www.nmlindia.org'),
(9, 'Manik Chandra Goswami', 'Scientist', 'National Metallurgical Laboratory', 'http://in.linkedin.com/pub/manik-chandra-goswami/11/270/1a4', 'http://www.nmlindia.org'),
(10, 'Pawan Barasra', 'Intern', 'National Metallurgical Laboratory', 'http://in.linkedin.com/pub/pawan-barasra/19/a2a/b82', 'http://www.nmlindia.org'),
(11, 'Razia Ahmed', '', 'CII Jharkhand Chapter', '', 'http://cii.in'),
(12, 'SN Thakur', '', 'Adityapur Small Industries Association', '', 'http://helloasia.co.in'),
(13, 'Santosh Khetan', 'General Secretary', 'Adityapur Small Industries Association', '', 'http://helloasia.co.in'),
(14, 'Bikash Mukherjee', 'Managing Director', 'Auto Profiles', '', ''),
(15, 'Ashok Kumar Verma', 'Director Technical', 'Auto Profiles', '', ''),
(16, 'Preeti Sehgal', 'Company Secretary', 'Tayo Rolls', 'http://in.linkedin.com/pub/preeti-sehgal/b/6a5/568', 'http://www.tayo.co.in/'),
(17, 'Sudhir Kumartayo', 'Management Services', 'Tayo Rolls', 'http://in.linkedin.com/pub/sudhir-kumartayo/a/929/698', 'http://www.tayo.co.in/'),
(18, 'Rati Rajan', 'Asisstant to MD', 'Tayo Rolls', 'http://in.linkedin.com/pub/rati-rajan/b/7b8/397', 'http://www.tayo.co.in/'),
(19, 'Suresh Padmanabhan', 'Finance & Accounts', 'Tayo Rolls', 'http://in.linkedin.com/pub/suresh-padmanabhan/28/420/941', 'http://www.tayo.co.in/'),
(20, 'Probal Mukherjee', 'Director', 'Bina Metal Way', 'http://in.linkedin.com/pub/probal-mukherjee/5/7b2/9a6', 'http://binametalway.com'),
(21, 'Siddharth Mukherjee', 'Business Development Manager', 'Bina Metal Way', 'http://in.linkedin.com/pub/siddharth-mukherjee/6/b86/632', 'http://binametalway.com'),
(22, 'Anzar Alam', 'Design & Development', 'Bina Metal Way', 'http://in.linkedin.com/pub/anzar-alam/23/81a/b08', 'http://binametalway.com'),
(23, 'Anita Rai', 'Director', 'Kross Manufacturers India', 'http://in.linkedin.com/pub/anita-rai/28/10/871', ''),
(24, 'G Mohankrishna', 'Plant Head', 'RSB Transmissions', 'http://in.linkedin.com/in/gmohankrishna', 'http://rsbglobal.com'),
(25, 'Biswajit Jena', 'Manufacturing Head', 'RSB Transmissions', 'http://in.linkedin.com/pub/biswajit-jena/24/70a/499', 'http://rsbglobal.com'),
(26, 'Sainik Bibhutiray', 'Finance', 'RSB Transmissions', 'http://in.linkedin.com/pub/sainik-bibhutiray/19/b14/174', 'http://rsbglobal.com'),
(27, 'Subramanian Dharmarajan', 'Business Development', 'RSB Transmissions', 'http://in.linkedin.com/pub/subramanian-dharmarajan/21/840/b90', 'http://rsbglobal.com'),
(28, 'Rajeev Ranjan', 'Engineer Quality', 'RSB Transmissions', 'http://in.linkedin.com/pub/rajeev-ranjan/19/225/B0A', 'http://rsbglobal.com'),
(29, 'Sunil Choudhary', 'IT Manager', 'JMT Auto', '', 'http://jmtauto.com'),
(30, 'Sanjay Samanta', 'IT Manager', 'JMT Auto', '', 'http://jmtauto.com'),
(31, 'Rajat Datta', 'IT VP', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/rajat-datta/21/212/b21', 'http://ramkrishnaforgings.com'),
(32, 'Swapan Banerjee', 'IT Sr Mgr', 'Ramkrishna Forgings', '', 'http://ramkrishnaforgings.com'),
(33, 'Sitaram Mondal', 'SAP PP/MM Consultant', 'Ramkrishna Forgings', '', 'http://ramkrishnaforgings.com'),
(34, 'Bhuban Mohan Goswami', 'SAP Basis Administrator', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/bhuban-mohan-goswami/18/352/9b9', 'http://ramkrishnaforgings.com'),
(35, 'Aninda Manna', 'IT Manager', 'Ramkrishna Forgings', '', 'http://ramkrishnaforgings.com'),
(36, 'Manoj Sarkar', 'Design & Engineering HOD', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/manoj-sarkar/25/312/7a8', 'http://ramkrishnaforgings.com'),
(37, 'SJ Rao', 'AGM', 'Ramkrishna Forgings', 'http://in.linkedin.com/pub/s-j-rao/20/733/b59', 'http://ramkrishnaforgings.com'),
(38, 'OP Chopra', 'President', 'Singhbhum Machinometal,JAMCO', '', 'http://singhbhummachinometal.com'),
(39, 'Manoj Chopra', '', 'Singhbhum Machinometal, JAMCO', '', 'http://singhbhummachinometal.com'),
(40, 'Abhishek Chopra', 'Director', 'Singhbhum Machinometal', 'http://in.linkedin.com/pub/abhishek-chopra/10/5AA/30', 'http://singhbhummachinometal.com'),
(41, 'Sandeep Bafna', 'Director', 'MEW Suspension', '', 'http://mewsuspension.com'),
(42, 'Nand Kumar Singh', 'Director', 'Inova Enterprise', '', 'http://inovaindia.com'),
(43, 'Amrish Kumar', 'Plant Head', 'Inova Enterprise', '', 'http://inovaindia.com'),
(44, 'Akshay Kumar Agrawal', 'Director', 'Garwaye India', '', ''),
(45, 'Manish Kumar', 'Director', 'Metal-Om-Technik', '', ''),
(46, 'Vijay Sharma', 'Director', 'Steel Foundry Industries', '', 'http://steelfoundry.in'),
(47, 'Nipam Mehta', 'Director', 'Auro Plastic Injection Moulders', '', ''),
(48, 'Vinay Singh', '', 'Auro Plastic Injection Moulders', '', ''),
(49, 'Anand Borai', '', 'Auro Plastic Injection Moulders', '', ''),
(50, 'Nagendar Mondal', 'Engineer CAD/CAM', 'Auro Plastic Injection Moulders', '', ''),
(51, 'Dipen Gandhi', 'Director', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(52, 'Mukesh K Gandhi', '', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(53, 'Devang M Gandhi', '', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(54, 'Dipen D Gandhi', '', 'Nutech Auto', '', 'http://nutechauto.co.in'),
(55, 'Prashant Gandhi', 'Director', 'Nutech Auto', 'http://in.linkedin.com/pub/prashant-gandhi/25/740/404', 'http://nutechauto.co.in'),
(56, 'Deepak Panchamia', 'Director', 'Metal Shaping & Processing Pvt. Ltd', '', ''),
(57, 'Sanjay Dubey', 'Director', 'Indico Motors', '', 'http://indicomotors.in'),
(58, 'OS Sunil', 'IT Head', 'Indico Motors', '', 'http://indicomotors.in'),
(59, 'Priyanka Karan', 'HR Manager', 'Indico Motors', 'http://in.linkedin.com/pub/priyanka-karan/16/bb7/4a3', 'http://indicomotors.in'),
(60, 'Amit Kumar Gautam', 'Engineer Tech Support', 'Indico Motors', '', 'http://indicomotors.in'),
(61, 'Vikash Kumar', 'Commercial Purchase Manager', 'Metaldyne India', 'http://in.linkedin.com/pub/vikash-kumar/1b/225/700', 'http://metaldyne.com'),
(62, 'Tanweer Khan', 'Professional', 'Metaldyne India', 'http://in.linkedin.com/pub/tanweer-khan/7/aa2/126', 'http://metaldyne.com'),
(63, 'Manish', 'Professional', 'Metaldyne India', 'http://in.linkedin.com/pub/manish-india/1a/16/2bb', 'http://metaldyne.com'),
(64, 'Dharamveer Singh', 'Director', 'Hardrock Group', '', 'http://hardrock.net.in'),
(65, 'RC Mahajan', 'Director Technical', 'Hardrock Group', '', 'http://hardrock.net.in'),
(66, 'Param', 'IT Head', 'Hardrock Group', '', 'http://hardrock.net.in'),
(67, 'Simmi Gautam', 'HR Manager', 'Hardrock Group', '', 'http://hardrock.net.in'),
(68, 'Rajesh', 'HR Manager', 'Hardrock Group', '', 'http://hardrock.net.in'),
(69, 'Dheeraj Garg', 'Director', 'Steel Strips', '', ''),
(70, 'Asit K Singh', 'Manager SMB', 'Aircel Business Solutions', 'http://in.linkedin.com/pub/asit-k-singh/3/923/a44', 'http://aircelbusinesssolutions.com'),
(71, 'Pankaj Gauba', 'Manager Channel Sales', 'Autodesk India', 'http://in.linkedin.com/pub/pankaj-gauba/2/517/94', 'http://autodesk.com'),
(72, 'Anuj Budhiraja', 'Manager Regional Sales, North and East', 'Autodesk India', 'http://in.linkedin.com/pub/anuj-budhiraja/5/219/421', 'http://autodesk.com'),
(73, 'Narayan Chandra Saha', 'Partner', 'Ntech Solutions', 'http://in.linkedin.com/pub/narayan-chandra-saha/27/651/aa4', 'http://ntechjharkhand.com'),
(74, 'Prashant Gandhi', 'Owner', 'Empire Infotech', 'http://in.linkedin.com/pub/prashant-gandhi/25/740/404', 'http://empireinfotech.co.in'),
(75, 'Nagendar Yadav', '', 'Empire Infotech', '', 'http://empireinfotech.co.in'),
(76, 'Raghavendra Vatya', '', 'Empire Infotech', '', 'http://empireinfotech.co.in'),
(77, 'Manoj Kumar', '', 'Visual Creations', '', 'http://visualcreations.in'),
(78, 'Prabhu Shiv Singh', 'Principal Consultant', 'E-Logic Systems', 'http://in.linkedin.com/pub/prabhu-singh/a/690/a02', 'http://elogicsystems.co.in'),
(79, 'Merlyn Anklesaria', 'Manager', 'TATA Steel', 'http://in.linkedin.com/pub/merlyn-anklesaria/18/300/500', ''),
(80, 'Anshuman Dev', 'Manager Ast', 'Mahindra & Mahindra', 'http://in.linkedin.com/in/anshumandev', ''),
(81, 'Nirav Kumar', 'Ast. Manager, Axis Bank', '', 'http://in.linkedin.com/pub/nirav-kumar/20/15/243', ''),
(82, 'Naushin Razi', 'HR', '', 'http://in.linkedin.com/pub/naushin-razi/10/5A8/113', ''),
(83, 'Naushin Razi', 'Legal', '', 'http://in.linkedin.com/pub/naushin-razi/10/5A8/113', ''),
(84, 'Kailash Singhania', 'Accounts', '', 'http://in.linkedin.com/pub/kailash-singhania/9/30/385', ''),
(85, 'Mayank Singhania', 'Financial Services', '', 'http://in.linkedin.com/pub/mayank-singhania/1b/204/70a', ''),
(86, 'Rahul Agarwal', 'Engineer', 'IBM', 'http://in.linkedin.com/in/rahulunlimited', ''),
(87, 'Aloke Kumar Banerjee', 'Manager Senior', 'Auto Profiles', 'http://in.linkedin.com/pub/aloke-kumar-banerjee/20/a7/a65', ''),
(88, 'Moumita Mukherjee', 'Finance', 'Auto Profiles', 'http://in.linkedin.com/pub/moumita-mukherjee/6/793/869', ''),
(89, 'Moumita Mukherjee', 'HR', 'Auto Profiles', 'http://in.linkedin.com/pub/moumita-mukherjee/20/b7b/730', ''),
(90, 'Neeraj Adeshra', 'Owner', 'Mahalaxmi Auto', 'http://in.linkedin.com/pub/neeraj-adeshra/27/a0/193', ''),
(91, 'Biswajit Jena', 'Manufacturing Head', '', 'http://in.linkedin.com/pub/biswajit-jena/24/70a/499', ''),
(92, 'Rajan Singh', 'Engineer', 'TATA Technologies', 'http://in.linkedin.com/pub/rajan-singh/14/761/A33', ''),
(93, 'Sushant Bhartiya', 'Engineer Lead', 'General Motors', 'http://in.linkedin.com/pub/sushant-bhartiya/18/a40/802', ''),
(94, 'Upender Kumar', 'Design Team Leader', 'ASB International', 'http://in.linkedin.com/pub/upender-kumar/b/b70/999', ''),
(95, 'Sanjay Tiwari', 'Project Manager', 'Helwett Packard', 'http://in.linkedin.com/pub/sanjay-tiwary/1b/55b/877', ''),
(96, 'Pramod Singh Deo', 'Trainee, Technology', 'Sapient', 'http://in.linkedin.com/pub/pramod-singh-deo/15/490/873', ''),
(97, 'Sushil Mohan', 'Mining', 'Adhunik', 'http://in.linkedin.com/pub/sushil-mohan/11/418/92b', ''),
(98, 'Prabir Bhattacharjee', 'Draughtsman', 'Adhunik', 'http://in.linkedin.com/pub/prabir-bhattacharjee/27/246/20a', ''),
(99, 'Mayukh Dey', 'Manager Ast Sales', 'Adhunik', 'http://in.linkedin.com/pub/mayukh-dey/7/13b/72', ''),
(100, 'Shiv Prakash', '', '', 'http://in.linkedin.com/pub/shiv-prakash/6/777/807', ''),
(101, 'Niranjan Badhai', '', 'Adhunik', 'http://in.linkedin.com/pub/niranjan-badhai/1b/127/93b', ''),
(102, 'Amar Gogna', 'Manager Business Development', 'Adhunik', 'http://in.linkedin.com/pub/amar-gogna/7/b2a/470', ''),
(103, 'Goutam Banerjee', 'Management Coordinator and ERP implementation', 'Gajanan Ores', 'http://in.linkedin.com/pub/goutam-banerjee/1a/662/b51', 'http://www.gajanangroup.com'),
(104, 'Biswanath Hazra', 'Auditor', 'Gajanan Ores', 'http://in.linkedin.com/pub/biswanath-hazra/18/a64/49a', ''),
(105, 'Satya Nayarayan Keshri', 'Officer Accounts', 'TATA Robbins Fraser', 'http://in.linkedin.com/pub/satya-narayan-keshri/18/880/88', ''),
(106, 'Uday Shankaram', 'Fabrication Consultant', 'Cordoba Engineering', 'http://in.linkedin.com/pub/uday-shankaram/19/2a6/6ab', 'http://www.cordobaengineering.com'),
(107, 'Sandeep Pandey', 'Design Engineer', 'Pritam Automech', 'http://in.linkedin.com/pub/sandeep-pandey/19/864/34a', ''),
(108, 'Preeti Singh', 'Office Assistant', '', 'http://in.linkedin.com/pub/preeti-singh/23/a98/18b', ''),
(109, 'Atul Dua', 'Director', 'Multitech Auto', 'http://in.linkedin.com/pub/atul-dua/1b/a22/935', 'http://www.malauto.com'),
(110, 'Sandip Das', 'IT Head', 'Multitech Auto', 'http://in.linkedin.com/pub/sandip-das/29/686/130', 'http://www.malauto.com'),
(111, 'Nilu Singh', 'HR Execuitve', 'Multitech Auto', 'http://in.linkedin.com/pub/nilu-singh/21/887/3b7', 'http://www.malauto.com'),
(112, 'MD Yaqub Jamal', 'System Administrator', 'Kaizen IT Services', 'http://in.linkedin.com/pub/md-yaqub-jamal/20/45/857', 'http://kaizencare.net'),
(113, 'Sandip Roy', 'Engineer Support', 'Kaizen IT Services', 'http://in.linkedin.com/pub/sandip-roy/1a/58a/477', 'http://kaizencare.net'),
(114, 'Vinayak Karn', 'Engineer QA', 'Arush Metal Castings', 'http://in.linkedin.com/pub/vinayak-karn/15/ab9/24', ''),
(115, 'Benazir Rashid', 'Engineer Design and Methods', 'Arush Metal Castings', 'http://in.linkedin.com/pub/benazir-rashid/15/a47/886', ''),
(116, 'Arun SK', 'Accountant', 'Arush Metal Castings', 'http://in.linkedin.com/pub/aman-sk/18/a42/756', ''),
(117, 'Sandip Kumar', 'QA', 'Arush Metal Castings', 'http://in.linkedin.com/pub/sandip-kumar/15/a38/a79', ''),
(118, 'Sandip Sen', 'SAP MM Support', 'Reysult India', 'http://in.linkedin.com/pub/sandip-sen/25/478/299', ''),
(119, 'Sandip Chakraborty', 'Logistics', 'BSR', 'http://in.linkedin.com/pub/sandip-chakraborty/12/829/a45', ''),
(120, 'Rajiv Ranjan', 'Excutive Director', 'Highco Engineers', 'http://in.linkedin.com/pub/rajiv-ranjan/b/528/7a3', ''),
(121, 'Koushik Mitra', 'Area Business Manager', 'Ador Welding', 'http://in.linkedin.com/pub/koushik-mitra/27/534/166', ''),
(122, 'Rajeev Jha', 'Engineer', 'Welding Alloys', 'http://in.linkedin.com/pub/rajeev-jha/5/a82/725', ''),
(123, 'G Satya Rao', 'Casting', 'Shah Hi Tech Auto Alcast', 'http://in.linkedin.com/pub/g-satya-rao/19/b39/a74', ''),
(124, 'Shyam Sundar Sah', 'SAH', 'Soni Auto and Allied Industries', 'http://in.linkedin.com/pub/shyam-sundar-sah/13/b95/46b', ''),
(125, 'Anil Roy', 'Owner', 'Omni Auto', 'http://in.linkedin.com/pub/anil-roy/14/844/394', ''),
(126, 'T Balaji', 'Employee', 'Omni Auto', 'http://in.linkedin.com/pub/t-balaji/14/7b9/706', ''),
(127, 'Udey Dhir', 'Coal Chemicals', 'Eastern Coatings / Eastern Tar', 'http://in.linkedin.com/pub/udey-dhir/18/A49/A63', 'http://www.easterntarcoatings.com/');

-- --------------------------------------------------------

--
-- Table structure for table `cSocialCM`
--

CREATE TABLE IF NOT EXISTS `cSocialCM` (
  `id` int(11) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `professional` char(100) DEFAULT NULL,
  `organisation` char(100) DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `www` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cSocialCM`
--

INSERT INTO `cSocialCM` (`id`, `name`, `professional`, `organisation`, `url`, `www`) VALUES
(1, 'Hitesh Wadhwa', 'Business Development Manager', 'DeftSoft Informatics', 'http://in.linkedin.com/pub/hitesh-wadhwa/16/5b7/1b7', 'http://www.deftsoft.com/'),
(2, 'Aditi Parvan', '', 'Interworld Commnet', 'http://in.linkedin.com/pub/aditi-parvan/23/635/101', 'http://interworldcommnet.us/'),
(3, 'Sachin Tyagi', 'Software Developer', 'Interworld Commnet', 'http://in.linkedin.com/pub/sachin-tyagi/21/828/b92', 'http://interworldcommnet.us/'),
(4, 'Tushar Garg', 'Networking Executive', 'Artworld Websolutions', 'http://in.linkedin.com/pub/tushar-garg/29/2b/73a', ''),
(5, 'Ritu Sethi', 'HR & Administration', 'Cogniter Technologies', 'http://in.linkedin.com/pub/ritu-sethi/12/99A/693', ''),
(6, 'Jitender Kumar', 'Internet Marketing', 'Cogniter Technologies', 'http://in.linkedin.com/pub/jitender-kumar/16/89a/626', ''),
(7, 'Chanpreet S. Chawla', 'CTO and Director', 'Soft Prodigy', 'http://in.linkedin.com/in/chanchawla', ''),
(8, 'Gurvinder Singh', 'Software Developer', 'Fiverivers Solutions', 'http://in.linkedin.com/pub/gurvinder-singh/22/3bb/b22', ''),
(9, 'Kuldeep Verma', 'Website Designer', 'Jayanti Software Solutions', 'http://in.linkedin.com/in/kuldeepkumarverma', 'http://www.jayantisoftwares.com/'),
(10, 'Manish Kaushik', 'Director', 'Gmark Technologies', 'http://in.linkedin.com/pub/manish-kaushik/13/a05/9a0', 'http://www.gmark.co.in/'),
(11, 'Simerpreet Singh', 'Team Leader', 'Smart Data Enterprises', 'http://in.linkedin.com/in/simer169', 'http://www.smartdatainc.com/'),
(12, 'Sonia Dhir', 'Software Developer', 'Smart Data Enterprises', 'http://in.linkedin.com/pub/sonia-dhir/16/9A5/5B6', 'http://www.smartdatainc.com/'),
(13, 'Chander Kant', 'Internet Marketing', 'Sharp Web Studio', 'http://in.linkedin.com/pub/chander-kant/22/b2a/11', ''),
(14, 'Pardeep Kumar', 'Internet Marketing', 'Altruist Technologies', 'http://in.linkedin.com/in/oopsmrlucky', ''),
(15, 'Anuj Aggarwal', 'Director', 'Altruist Technologies', 'http://in.linkedin.com/pub/anuj-aggarwal/4/ab2/400', ''),
(16, 'Vijay Chowdhary', 'Software Developer', 'Miri InfoTech', 'http://in.linkedin.com/pub/vijay-chowdhary/14/9b1/896', ''),
(17, 'Shalini S Bhatnagar', 'HR & Administration', 'Pugmarks InterWeb', 'http://in.linkedin.com/pub/shalini-s-bhatnagar/13/24b/25', ''),
(18, 'Shalini S Bhatnagar', 'HR & Administration', 'Classic Informatics', 'http://in.linkedin.com/pub/shalini-s-bhatnagar/13/24b/25', ''),
(19, 'Meenu Kutlehria', 'Team Leader', 'Classic Informatics', 'http://in.linkedin.com/pub/meenu-kutlehria/9/5a4/309', ''),
(20, 'Aman Kaushish', 'Team Leader', 'Classic Informatics', 'http://in.linkedin.com/in/amankaushish', ''),
(21, 'Kapil Khaneja', 'Internet Marketing', 'NVISH Solutions', 'http://in.linkedin.com/in/kapilkhaneja', ''),
(22, 'Pankaj Tiwari', 'Mobile', 'Soft Prodigy', 'http://in.linkedin.com/in/pankaja1', ''),
(23, 'Shweta Parbhakar', 'Software Developer', 'White Shaarks', 'http://in.linkedin.com/pub/shweta-parbhakar/9/413/491', ''),
(24, 'Ankush Sharma', 'Director', 'Reify Technologies', 'http://in.linkedin.com/pub/ankush-sharma/15/4b9/886', 'http://reifytechnologies.com'),
(25, 'Deepak Nagpal', 'Internet Marketing', 'Intenso Web Solutions', 'http://in.linkedin.com/in/nagpaldeepak', ''),
(26, 'Bikramjeet Singh', 'Website Designer', 'Intenso Web Solutions', 'http://in.linkedin.com/pub/bikramjeet-singh/21/698/883', 'http://www.intensowebsolutions.com/'),
(27, 'InderJeet Singh', 'MIS Analyst', 'Contact Bridge', 'http://in.linkedin.com/pub/inderjeet-singh/26/260/467', ''),
(28, 'Abhinav Tiwari', 'Market Research Analyst', 'IDS Infotech', 'http://in.linkedin.com/pub/abhinav-tiwari/21/2b6/4b9', 'http://www.idsil.com/'),
(29, 'Manpreet Singh', 'Software Developer', 'Visionaire-us India', 'http://in.linkedin.com/pub/manpreet-singh/7/6a1/3b0', ''),
(30, 'Sheetal Mahajan', 'Software Developer', 'Visionaire-us India', 'http://in.linkedin.com/pub/sheetal-mahajan/15/799/138', ''),
(31, 'Ramesh Dhiman', 'System Administrator', 'Sebiz Infotech', 'http://in.linkedin.com/pub/ramesh-dhiman/18/854/6B0', ''),
(32, 'Surender Verma', 'Customer Support Executive', 'SPANCO BPO', 'http://in.linkedin.com/pub/surender-verma/1b/256/444', ''),
(33, 'Surender Singh Sandhu', 'Software Developer', 'Vivido Labs', 'http://in.linkedin.com/in/surendersandhu', 'http://www.vividolabs.com'),
(34, 'Sanjeev Verma', 'Team Leader', 'Vivido Labs', 'http://in.linkedin.com/pub/sanjeev-verma/28/24/a76', 'http://www.vividolabs.com'),
(35, 'Megha Sharma', 'Software Developer', 'Vivido Labs', 'http://in.linkedin.com/pub/megha-sharma/22/837/7b4', 'http://www.vividolabs.com'),
(36, 'Ranjeet Consultant', 'Software Developer', 'Vivido Labs', 'http://in.linkedin.com/in/singhsapabap', 'http://www.vividolabs.com'),
(37, 'Imtiyaz Ali', 'Delivery Manager', 'Vivido Labs', 'http://in.linkedin.com/pub/imtiyaz-ali-pmp/15/537/5b', 'http://www.vividolabs.com'),
(38, 'Sanjay Singh', 'Software Developer', 'Vivido Labs', 'http://in.linkedin.com/in/sanjaykharwar', 'http://www.vividolabs.com'),
(39, 'Reema Chaudhary', 'Quality Analyst', 'Quark', 'http://in.linkedin.com/pub/reema-chaudhary/9/207/648', ''),
(40, 'Arun Kumar Saxena', 'Document Production Specialist', 'Quark Media House', 'http://in.linkedin.com/pub/arun-kumar-saxena/23/51a/699', ''),
(41, 'Aasheesh Bhatnagar', 'Chief Campus Evangelist', 'Chalkpad Technologies', 'http://in.linkedin.com/in/aasheeshb', 'http://www.chalkpad.in'),
(42, 'Kabir Khanna', 'Director', 'Chalkpad Technologies', 'http://in.linkedin.com/in/kabir', 'http://www.chalkpad.in'),
(43, 'Sumeet Sandhu', 'HR & Administration', 'MindSpin', 'http://in.linkedin.com/pub/sumeet-sandhu-sandhu-sumeet1-gmail-com/12/706/bb8', ''),
(44, 'Richa Soni', 'HR & Administration', 'Microqual Techno', 'http://in.linkedin.com/pub/richa-soni/26/446/39', ''),
(45, 'Atul Gupta', 'Director', 'RedAlkemi', 'http://in.linkedin.com/in/atulgupta1', 'http://www.redalkemi.com'),
(46, 'Manish Sabharwal', 'Project Manager', 'Mondial Assistance', 'http://in.linkedin.com/in/manishsabharwal', ''),
(47, 'Anuja Lath', 'Director', 'RedAlkemi', 'http://in.linkedin.com/in/anujalath', 'http://www.redalkemi.com'),
(48, 'Ashwani Kumar', 'Team Leader', 'Miracle Studios', 'http://in.linkedin.com/pub/ashwani-kumar/10/5b5/12a', ''),
(49, 'Ruchy Dev', 'HR & Administration', 'Relay Strategy', 'http://in.linkedin.com/in/ruchydev', ''),
(50, 'Narinder Dev', 'Software Developer Android Blackberry', 'Relay Strategy', 'http://in.linkedin.com/pub/narinder-dev/14/326/334', ''),
(51, 'Narinder Dev', 'Software Architect', 'Intelligaia Tech', 'http://in.linkedin.com/in/neerajdev', ''),
(52, 'Tanuj Varshney', 'CEO', 'INRA Security Solutions', 'http://in.linkedin.com/pub/tanuj-varshney/6/73a/8bb', ''),
(53, 'Kanwaljeet Singh Nagi', 'Software Web Designer', 'Intelligia', 'http://in.linkedin.com/pub/kanwaljeet-singh-nagi/17/486/570', ''),
(54, 'Salil Jamwal', 'Pharmacovigilance Team Lead', 'Quantum Solutions', 'http://in.linkedin.com/pub/salil-jamwal/14/498/845', ''),
(55, 'Sonika Sharma', 'Team Leader', 'Quantum Solutions', 'http://in.linkedin.com/pub/sonika-sharma/12/407/95', ''),
(56, 'Neha Sood Wasan', 'Pharmacovigilance Scientist', 'Quantum Solutions', 'http://in.linkedin.com/pub/neha-sood-wasan/12/692/447', ''),
(57, 'Tarini Goyal', 'Software Developer', 'Winshuttle', 'http://in.linkedin.com/pub/tarini-goyal/8/955/3b5', ''),
(58, 'Deepanshu Goyal', 'Business Analyst', 'Trigma Solutions', 'http://in.linkedin.com/pub/deepanshu-goyal/9/105/a', ''),
(59, 'Monika Thappar', 'Software Developer', 'Trigma Solutions', 'http://in.linkedin.com/pub/monika-thappar/24/a42/a8', ''),
(60, 'Sunil Chadha', 'Business Development Manager', 'Trigma Solutions', 'http://in.linkedin.com/in/sunilchadha11', ''),
(61, 'Gurwinder Chahal', 'Software Developer', 'Amadeus IT Group', 'http://in.linkedin.com/pub/gurwinder-chahal/13/536/25b', 'http://amadeus.co.in'),
(62, 'Ankur Khurana', 'Head', 'Amadeus IT Group', 'http://in.linkedin.com/pub/ankur-khurana/8/571/469', 'http://amadeus.co.in'),
(63, 'Sumit Kaushal', 'Software Developer', 'Amadeus IT Group', 'http://in.linkedin.com/pub/sumit-kaushal/22/493/b72', 'http://amadeus.co.in'),
(64, 'Sunny Thakur', 'System Administrator', 'Bebo Technologies', 'http://in.linkedin.com/pub/sunny-thakur/16/b4/157', 'http://bebotechnologies.com/'),
(65, 'Reena Satija', 'Software Developer', 'Bebo Technologies', 'http://in.linkedin.com/pub/reena-satija/25/992/4b', 'http://bebotechnologies.com/'),
(66, 'Ravi Satoun', 'HR & Administration', 'FCS Software Solutions', 'http://www.linkedin.com/in/ravisatoun', 'http://www.fcsltd.com'),
(67, 'Renu Yadav', 'Software Web Designer', 'Karin Informatics Services', 'http://in.linkedin.com/in/renz7', 'http://www.aerenoutsourcing.com'),
(68, 'Neelakshi Gupta', 'HR & Administration', 'Quarkcity India', 'http://in.linkedin.com/in/neelakshigupta', ''),
(69, 'Sanjay Malhotra', 'Research and Development', 'Quarkcity India', 'http://in.linkedin.com/in/sam2345', ''),
(70, 'Jayanta Patra', 'Business Analyst', 'Quarkcity India', 'http://in.linkedin.com/pub/jayanta-patra/9/829/761', ''),
(71, 'Umesh Goyal', 'VP', 'NetSmartz India', 'http://in.linkedin.com/pub/umesh-goyal/7/174/135', 'http://www.netsmartz.net'),
(72, 'Reema Kaur', 'Link Building Executive', 'NetSmartz India', 'http://in.linkedin.com/pub/reema-kaur/15/328/2b1', 'http://www.netsmartz.net'),
(73, 'Gurpreet Singh', 'Software Developer iPhone iPad', 'Net Solutions', 'http://in.linkedin.com/in/gurpreetsingh149', 'http://www.netsolutionsindia.com'),
(74, 'Anita Thakur', 'Software Tester/Quality Assurance(QA)', 'White Shaarks', 'http://in.linkedin.com/pub/anita-thakur/20/409/174', ''),
(75, 'Heena Arora', 'C_sat coordinator', 'RT Outsourcing Services', '', 'http://rteservices.com'),
(76, 'Sandeep Bakshi', 'Training Head', 'RT Outsourcing Services', '', 'http://rteservices.com'),
(77, 'Ritesh Vig', 'Centralised Sales Coordinator', 'RT Outsourcing Services', 'http://in.linkedin.com/pub/ritesh-vig/1a/a7b/916', 'http://rteservices.com'),
(78, 'Vikramjit Singh', 'Business Development Manager', 'RT Outsourcing Services', 'http://in.linkedin.com/pub/vikramjit-singh/1b/936/412', 'http://rteservices.com'),
(79, 'Vikas Kaushik', 'Engineer', 'RT Outsourcing Services', 'http://in.linkedin.com/pub/vikas-kaushik/14/52b/401', 'http://rteservices.com'),
(80, 'Prem Lata', 'Regional Service Coordinator', 'RT Outsourcing Services', 'http://in.linkedin.com/pub/prem-lata/18/483/563', 'http://rteservices.com'),
(81, 'Rinku Garg', '', 'Second Foundation', 'http://in.linkedin.com/pub/rinku-garg/4/20a/4aa', 'http://www.secf.com'),
(82, 'Kamaljit Singh', 'Technical Analyst', 'KMG Infotech', 'http://in.linkedin.com/pub/kamaljit-singh/24/382/148', 'http://kmgin.com'),
(83, 'Gajendra Bhanot', 'HR & Administration', 'KMG Infotech', 'http://in.linkedin.com/pub/gajendra-bhanot/23/182/675', 'http://kmgin.com'),
(84, 'Sudhir Chandel', 'Business Development Manager', 'KMG Infotech', 'http://in.linkedin.com/pub/sudhir-chandel/22/14b/a63', 'http://kmgin.com'),
(85, 'Priyanka Rishi', 'Business Relations', 'KMG Infotech', 'http://in.linkedin.com/pub/priyanka-rishi/18/610/848', 'http://kmgin.com'),
(86, 'Vishant Garg', 'Technical Writer', '22nd Century Technologies', 'http://in.linkedin.com/in/vishantgarg', 'http://tscti.com '),
(87, 'Paramdeep Kaur', 'HR & Administration', '22nd Century Technologies', 'http://in.linkedin.com/pub/paramdeep-kaur/24/a89/9bb', 'http://tscti.com '),
(88, 'Harminder Kaur Suri', 'Controller of Accounts', 'Ramtech Software Solutions', 'http://in.linkedin.com/pub/harminder-kaur-suri/15/801/50', 'http://www.ramtech-corp.com'),
(89, 'Seema Saini', 'HR & Administration', 'Ramtech Software Solutions', 'http://in.linkedin.com/pub/seema-saini/29/339/769', 'http://www.ramtech-corp.com'),
(90, 'Preeti Sharma', 'Account Manager', 'Agilent Technologies', 'http://in.linkedin.com/pub/preeti-sharma/15/30a/491', 'http://www.home.agilent.com/'),
(91, 'Kuldeep Kharyal', 'Team Leader', 'Agilent Technologies', 'http://in.linkedin.com/pub/kuldeep-kharyal/17/124/119', 'http://www.home.agilent.com/'),
(92, 'Neel Kamal', 'Engineer Customer Service', 'Agilent Technologies', 'http://in.linkedin.com/pub/neel-kamal/26/226/b67', 'http://www.home.agilent.com/'),
(93, 'Taran Raj', 'Software Developer', 'digiBlitz Technologies', 'http://in.linkedin.com/pub/taran-raj/16/434/40a', ''),
(94, 'Vinay Kaushik', 'Software Developer', 'digiBlitz Technologies', 'http://in.linkedin.com/pub/vinay-kaushik/1a/30a/601', ''),
(95, 'Parminder Bawa', 'IT Manager', 'Esys Information Technologies', 'http://in.linkedin.com/in/parminderbawa', 'http://www.esys.in'),
(96, 'Ritesh Aggarwal', 'Channel Manager', 'Esys Information Technologies', 'http://in.linkedin.com/pub/ritesh-aggarwal/21/254/122', 'http://www.esys.in'),
(97, 'Ashish Garg', 'Packaging Development Manager', 'Esys Information Technologies', 'http://in.linkedin.com/pub/ashish-garg/12/b70/789', 'http://www.esys.in'),
(98, 'Jagdeep Singh', 'Product Executive', 'Esys Information Technologies', 'http://in.linkedin.com/pub/jagdeep-singh/10/47/716', 'http://www.esys.in'),
(99, 'Kailash Bhandari', 'Engineer Desktop Support', 'Esys Information Technologies', 'http://in.linkedin.com/pub/kailash-bhandari/23/bb4/381', 'http://www.esys.in'),
(100, 'Supreet Kaur', 'Accounts Officer', 'Esys Information Technologies', 'http://in.linkedin.com/pub/supreet-kaur/9/bab/82', 'http://www.esys.in'),
(101, 'Prixit Gill', 'System Administrator', 'MataFlex Technologies', 'http://in.linkedin.com/pub/prixit-gill/17/B35/187', ''),
(102, 'Reena Pal', 'Associate', 'Mataflex Technologies', 'http://in.linkedin.com/pub/reena-pal/13/967/167', ''),
(103, 'Sandeep Gill', 'TAG(WF & RPO)', 'MataFlex Technologies', 'http://in.linkedin.com/pub/sandeep-gill-1111-connections/12/687/121', ''),
(104, 'Harmeet Singh', 'Recruitment Lead / Team Lead', 'MataFlex Technologies', 'http://in.linkedin.com/pub/harmeet-singh/9/854/882', ''),
(105, 'Malvika Pathak', 'Product Expert', 'Blue Beacon Electronic Security System', 'http://in.linkedin.com/pub/malvika-pathak/29/58/75b', ''),
(106, 'Rajinder Bumrah', 'HR & Administration', 'Blue Beacon Infosys', 'http://in.linkedin.com/pub/rajinder-bumrah/8/967/691', ''),
(107, 'Amanjit Singh Walia', 'Business Developement Manager', 'Blue Beacon Infosys', 'http://in.linkedin.com/pub/amanjit-singh-walia/26/644/374', ''),
(108, 'Veenu George', 'Engineering Lead', 'authorGEN Technologies', 'http://in.linkedin.com/in/veenugeorge', 'www.authorgen.com'),
(109, 'Deepti Dhawan', 'Software Developer UI', 'authorGEN Technologies', 'http://in.linkedin.com/in/deeptidhawan', 'www.authorgen.com'),
(110, 'Jagdeep Singh Pannu', 'Internet Marketing', 'authorGEN Technologies', 'http://in.linkedin.com/in/jpannu', 'www.authorgen.com'),
(111, 'Amardeep Singh', 'Project Lead', 'RatioCinative Solutions', 'http://in.linkedin.com/pub/amardeep-singh/8/999/b47', ''),
(112, 'Naunihal Singh', 'Operations', 'Ratiocinative Solutions', 'http://in.linkedin.com/in/naunihalsingh', ''),
(113, 'Amod Sinha', 'Director', 'Ratiocinative Solutions', 'http://in.linkedin.com/in/amodsinha', ''),
(114, 'Deepak Bagga', 'Lecturer', 'Haryana Engineering College, Jagadhri', 'http://in.linkedin.com/in/deepakbagga', ''),
(115, 'Pradeep Thakur', 'Software Developer', 'Baya Tree', 'http://in.linkedin.com/pub/pradeep-thakur/26/b89/8b9', 'www.bayatree.com'),
(116, 'Nirmal Singh', 'Software System Analyst', 'Baya Tree', 'http://in.linkedin.com/pub/nirmal-singh/24/4b1/321', 'www.bayatree.com'),
(117, 'Gaurav Dua', 'Software Developer', 'Baya Tree', 'http://in.linkedin.com/in/gauravdua2004', 'www.bayatree.com'),
(118, 'Aditi Sharma', 'HR & Administration', 'Basware', 'http://in.linkedin.com/pub/aditi-sharma/14/422/a44', ''),
(119, 'Anamika Mahajan', 'Software Developer', 'Basware', 'http://in.linkedin.com/pub/anamika-mahajan/19/253/24a', ''),
(120, 'Vinish Garg', 'Technical Documentation Operations', 'Baseware', 'http://in.linkedin.com/in/vinishgarg', ''),
(121, 'Kulwinder Singh', 'HR & Administration', 'Baseware', 'http://in.linkedin.com/pub/kulwinder-singh/26/4b3/657', ''),
(122, 'Ritu Karir', 'HR & Administration', 'PHi Business Solutions', 'http://in.linkedin.com/pub/ritu-karir/8/a91/552', 'http://www.phi.co.in'),
(123, 'Bhuvnesh Gulati', 'Business Development and Operations', 'PHi Business Solutions', 'http://in.linkedin.com/pub/bhuvnesh-gulati/7/327/242', 'http://www.phi.co.in'),
(124, 'Siddharth Tyagi', 'Software Developer', 'Object Next', 'http://in.linkedin.com/in/siddharthtyagi', ''),
(125, 'Sarita Sharda', 'Assistant Manager', 'PHi Business Solutions', 'http://in.linkedin.com/pub/sarita-sharda/1b/752/36', 'http://www.phi.co.in'),
(126, 'Nitin Patet', 'Software Developer', 'Packet Video India', 'http://in.linkedin.com/pub/nitin-patet/7/8a8/514', ''),
(127, 'Supreet Kaur', 'Engineer', 'Conexant Systems', 'http://in.linkedin.com/pub/supreet-kaur/7/b68/645', ''),
(128, 'Pankaj Shukla', 'Design Engineer', 'Texas Instruments', 'http://in.linkedin.com/pub/pankaj-shukla/7/379/81b', ''),
(129, 'Jaspreet Singh', 'IT Manager', 'Oceanic Consultants', 'http://in.linkedin.com/pub/jaspreet-singh/b/727/380', ''),
(130, 'Neelam Panjeta', 'Senior Executive', 'Oceanic Consultants', 'http://in.linkedin.com/pub/neelam-panjeta/21/ab1/110', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_adsense_config`
--

CREATE TABLE IF NOT EXISTS `jos_agora_adsense_config` (
  `conf_name` varchar(255) NOT NULL DEFAULT '',
  `conf_value` text,
  PRIMARY KEY (`conf_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_agora_adsense_config`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_bans`
--

CREATE TABLE IF NOT EXISTS `jos_agora_bans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `expire` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_bans`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_bans_auto`
--

CREATE TABLE IF NOT EXISTS `jos_agora_bans_auto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `points` int(10) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `expire` int(10) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `message_txt` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_bans_auto`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_categories`
--

CREATE TABLE IF NOT EXISTS `jos_agora_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(80) NOT NULL,
  `disp_position` int(10) DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `icon_style_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_agora_categories`
--

INSERT INTO `jos_agora_categories` (`id`, `cat_name`, `disp_position`, `enable`, `icon_style_id`) VALUES
(1, 'Infrastructure', 2, 1, 0),
(2, 'Classrooms', 4, 1, 0),
(3, 'Laboratory', 3, 1, 0),
(4, 'Library', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_censoring`
--

CREATE TABLE IF NOT EXISTS `jos_agora_censoring` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `search_for` varchar(60) DEFAULT NULL,
  `replace_with` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_censoring`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_config`
--

CREATE TABLE IF NOT EXISTS `jos_agora_config` (
  `conf_name` varchar(255) NOT NULL DEFAULT '',
  `conf_value` text,
  PRIMARY KEY (`conf_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_agora_config`
--

INSERT INTO `jos_agora_config` (`conf_name`, `conf_value`) VALUES
('o_cur_version', '3.0.11'),
('o_board_title', 'Agora Olympus Forum'),
('o_board_desc', 'The new Joomla! Forum'),
('o_time_format', 'H:i:s'),
('o_date_format', 'M-d-y'),
('o_timeout_visit', '10'),
('o_timeout_online', '300'),
('o_show_version', '1'),
('o_show_user_info', '1'),
('o_show_post_count', '1'),
('o_smilies', '1'),
('o_smilies_sig', '1'),
('o_make_links', '1'),
('o_default_lang', 'English'),
('o_default_style', 'Neo'),
('o_topic_review', '10'),
('o_disp_topics_default', '10'),
('o_disp_posts_default', '10'),
('o_indent_num_spaces', '4'),
('o_quickpost', '1'),
('o_users_online', '1'),
('o_censoring', '1'),
('o_ranks', '1'),
('o_quickjump', '1'),
('o_report_method', '1'),
('o_regs_report', '0'),
('o_mailing_list', ''),
('o_avatars', '1'),
('o_avatars_dir', 'components/com_agora/img/pre_avatars'),
('o_avatars_width', '100'),
('o_avatars_height', '100'),
('o_avatars_size', '204800'),
('o_search_all_forums', '1'),
('o_pms_enabled', '1'),
('o_pms_mess_per_page', '25'),
('o_base_url', ''),
('o_admin_email', ''),
('o_webmaster_email', ''),
('o_subscriptions', '1'),
('o_announcement', '1'),
('o_announcement_message', '<p>This is a Test Announcement.</p>'),
('o_rules', '1'),
('o_rules_message', 'Testing Rules. :'),
('poll_max_fields', '5'),
('p_mod_ban_users', '0'),
('p_message_bbcode', '1'),
('p_message_img_tag', '1'),
('p_message_all_caps', '1'),
('p_subject_all_caps', '1'),
('p_sig_all_caps', '0'),
('p_sig_bbcode', '1'),
('p_sig_img_tag', '1'),
('p_sig_length', '400'),
('p_sig_lines', '4'),
('p_allow_banned_email', '1'),
('p_allow_dupe_email', '0'),
('p_force_guest_email', '1'),
('o_image_formats', 'gif,png,jpg,jpeg'),
('o_new_window_link', '1'),
('o_board_logo', 'agora_logo_sm.png'),
('o_image_maxbytes', '102400'),
('o_image_maxdimensions', '640x480'),
('o_guest_post_captchabox', '1'),
('o_reputation_enabled', '1'),
('o_reputation_timeout', '300'),
('o_um_key', ''),
('o_um_default_zoom', '15'),
('o_um_default_lat', '42.4923525914282'),
('o_um_default_lng', '-96.4215087890625'),
('o_merge_timeout', '60'),
('o_social_bookmarks', '1'),
('o_top_post_count', '8'),
('o_top_ten', '1'),
('o_max_users_online', '0'),
('o_rt_enabled', '1'),
('o_rt_use_stars', '1'),
('o_rt_cur_version', '1.0'),
('o_rt_cur_stars', 'default_stars'),
('o_rt_default_lang', 'English'),
('o_rss_message_char', '100'),
('o_pms_uddeim', '0'),
('o_rss_cron_builtin', '1'),
('o_uploadile_thumb', '1'),
('o_uploadile_laws', 'txt,jpg,jpeg,png,gif,doc,mp3,pdf,zip,rar'),
('o_autoban_points', '60'),
('o_forummap', '1'),
('o_usermap', '1'),
('o_uploadile_limit_member', '2097152'),
('o_uploadile_thumb_size', '100'),
('o_rss_cron_interval', '180'),
('o_rss_cron_last', '1269433958'),
('o_uploadile_maxsize_modo', '1258291'),
('o_uploadile_maxsize_member', '1258291'),
('o_uploadile_limit_modo', '5242880'),
('o_community_builder', '0'),
('o_jomsocial', '0'),
('o_joomunity', '0'),
('o_notify_message', 'You Have a new PM waiting.'),
('o_notify_subject', 'New PM waiting'),
('o_avatars_dheight', '100'),
('o_avatars_dwidth', '100'),
('o_avatars_ratio', '1'),
('o_auto_subscriptions', '1'),
('o_database_revision', '29'),
('o_default_view', 'forum'),
('o_bbcode_quickpost', '0'),
('o_quickjump_footer', '1'),
('o_prof_title', '1'),
('o_prof_location', '1'),
('o_prof_website', '1'),
('o_prof_gender', '1'),
('o_prof_dob', '1'),
('o_prof_interests', '1'),
('o_prof_about', '1'),
('o_prof_sig', '1'),
('o_prof_messaging', '1'),
('o_prof_gallery', '1'),
('o_prof_attach', '1'),
('o_allow_attach', '1'),
('o_main_menu', '1'),
('o_bstats', '1'),
('o_user_guest', '1'),
('o_binfo', '1'),
('o_pm_subject', 'PM Subject'),
('o_pm_messg', '<p>Hello prabhu<br />You have received a Private message from JEM at JUSCO from admin<br />The PM Reads as follows;</p>\r\n<p>JEM Foundation</p>\r\n<p>please login at JEM and view your message</p>\r\n<p>Thank You<br />Site Administration</p>'),
('o_subscr_subject', 'Subscription Subject'),
('o_subscr_messg', '<p>Hello [username]<br /> <br />[poster] replied to to your post on [sitename] to ([title]) which you are subscribed to. <br />[poster] Wrote: <br />[message]<br /> <br />Please click [topic] to view the post <br />Or <br />Please click here to [unsubscribe]<br /> <br /> [site]</p>\r\n<p>Thank You<br />Site Administration</p>'),
('o_include_jquery', '1'),
('o_guest_userlist', '1'),
('o_rss_enabled', '1'),
('o_legend_enabled', '1'),
('o_bbcode_video_width', '425'),
('o_bbcode_video_height', '350'),
('o_userdata', '0'),
('o_fullnames_enabled', '0'),
('o_joomsocialsuite', '0'),
('o_subscrb_emails_type', '0'),
('o_subscrb_auto_alladmins', '0'),
('o_subscrb_auto_moderators', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_feeds`
--

CREATE TABLE IF NOT EXISTS `jos_agora_feeds` (
  `url` varchar(255) DEFAULT '',
  `max` int(11) NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT 'Guest',
  `last_post` int(10) NOT NULL DEFAULT '0',
  `num_posts` int(10) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_feeds`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_forums`
--

CREATE TABLE IF NOT EXISTS `jos_agora_forums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `forum_name` varchar(80) NOT NULL,
  `forum_desc` text,
  `forum_mdesc` text,
  `forum_key` text,
  `redirect_url` varchar(100) DEFAULT NULL,
  `moderators` text,
  `num_topics` mediumint(8) unsigned DEFAULT '0',
  `num_posts` mediumint(8) unsigned DEFAULT '0',
  `last_post` int(10) unsigned DEFAULT NULL,
  `last_post_id` int(10) unsigned DEFAULT NULL,
  `last_poster` varchar(200) DEFAULT NULL,
  `sort_by` tinyint(1) DEFAULT '0',
  `disp_position` int(10) DEFAULT '0',
  `cat_id` int(10) unsigned DEFAULT '0',
  `parent_forum_id` int(10) unsigned DEFAULT '0',
  `icon_style_id` int(10) unsigned DEFAULT '0',
  `single_topic` tinyint(1) NOT NULL DEFAULT '0',
  `enable_sched` tinyint(1) NOT NULL DEFAULT '0',
  `sched_end` datetime DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `closed_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enable` (`enable`),
  KEY `last_post` (`last_post`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_forums`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_group`
--

CREATE TABLE IF NOT EXISTS `jos_agora_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `caps_message` tinyint(1) NOT NULL DEFAULT '1',
  `caps_subject` tinyint(1) NOT NULL DEFAULT '1',
  `sig_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `sig_bbcode` tinyint(1) NOT NULL DEFAULT '1',
  `sig_bbcode_img` tinyint(1) NOT NULL DEFAULT '1',
  `sig_caps` tinyint(1) NOT NULL DEFAULT '1',
  `sig_length` int(10) NOT NULL DEFAULT '400',
  `sig_lines` int(10) NOT NULL DEFAULT '4',
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `search_users` tinyint(1) NOT NULL DEFAULT '1',
  `pm` tinyint(1) NOT NULL DEFAULT '1',
  `pm_limit` int(10) NOT NULL DEFAULT '20',
  `rep` tinyint(1) NOT NULL DEFAULT '1',
  `rep_minus_min` int(10) unsigned NOT NULL DEFAULT '10',
  `rep_plus_min` int(10) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_agora_group`
--

INSERT INTO `jos_agora_group` (`id`, `name`, `parent_id`, `caps_message`, `caps_subject`, `sig_smilies`, `sig_bbcode`, `sig_bbcode_img`, `sig_caps`, `sig_length`, `sig_lines`, `search`, `search_users`, `pm`, `pm_limit`, `rep`, `rep_minus_min`, `rep_plus_min`) VALUES
(1, 'Global', 0, 1, 1, 1, 1, 1, 1, 400, 4, 1, 1, 1, 20, 1, 10, 10),
(2, 'JUSCO admin', 0, 1, 1, 1, 1, 1, 1, 400, 4, 1, 1, 1, 20, 1, 10, 10),
(3, 'JEM Principals', 0, 1, 1, 1, 1, 1, 1, 400, 4, 1, 1, 1, 20, 1, 10, 10),
(4, 'JSSP Staff', 0, 1, 1, 1, 1, 1, 1, 400, 4, 1, 1, 1, 20, 1, 10, 10),
(5, 'JSK Staff', 0, 1, 1, 1, 1, 1, 1, 400, 4, 1, 1, 1, 20, 1, 10, 10),
(6, 'VJS Staff', 0, 1, 1, 1, 1, 1, 1, 400, 4, 1, 1, 1, 20, 1, 10, 10),
(7, 'KMPM Staff', 0, 1, 1, 1, 1, 1, 1, 400, 4, 1, 1, 1, 20, 1, 10, 10),
(8, 'KHS Staff', 0, 1, 1, 1, 1, 1, 1, 400, 4, 1, 1, 1, 20, 1, 10, 10),
(9, 'JEM Students', 0, 1, 1, 1, 1, 1, 1, 400, 4, 1, 1, 1, 20, 1, 10, 10),
(10, 'JEM Parents', 0, 1, 1, 1, 1, 1, 1, 400, 4, 1, 1, 1, 20, 1, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_group_forum`
--

CREATE TABLE IF NOT EXISTS `jos_agora_group_forum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `forum_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `access_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`forum_id`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_group_forum`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_group_permissions`
--

CREATE TABLE IF NOT EXISTS `jos_agora_group_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `access_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`role_id`),
  UNIQUE KEY `access_id` (`access_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `jos_agora_group_permissions`
--

INSERT INTO `jos_agora_group_permissions` (`id`, `group_id`, `role_id`, `access_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 1, 3, 3),
(4, 1, 4, 4),
(5, 2, 1, 5),
(6, 2, 2, 6),
(7, 2, 3, 7),
(8, 2, 4, 8),
(9, 3, 1, 9),
(10, 3, 2, 10),
(11, 3, 3, 11),
(12, 3, 4, 12),
(13, 4, 1, 13),
(14, 4, 2, 14),
(15, 4, 3, 15),
(16, 4, 4, 16),
(17, 5, 1, 17),
(18, 5, 2, 18),
(19, 5, 3, 19),
(20, 5, 4, 20),
(21, 6, 1, 21),
(22, 6, 2, 22),
(23, 6, 3, 23),
(24, 6, 4, 24),
(25, 7, 1, 25),
(26, 7, 2, 26),
(27, 7, 3, 27),
(28, 7, 4, 28),
(29, 8, 1, 29),
(30, 8, 2, 30),
(31, 8, 3, 31),
(32, 8, 4, 32),
(33, 9, 1, 33),
(34, 9, 2, 34),
(35, 9, 3, 35),
(36, 9, 4, 36),
(37, 10, 1, 37),
(38, 10, 2, 38),
(39, 10, 3, 39),
(40, 10, 4, 40);

-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_icon_styles`
--

CREATE TABLE IF NOT EXISTS `jos_agora_icon_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ref_name` varchar(200) NOT NULL,
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_icon_styles`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_messages`
--

CREATE TABLE IF NOT EXISTS `jos_agora_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` int(10) DEFAULT '0',
  `subject` varchar(120) DEFAULT '0',
  `message` text,
  `sender` varchar(120) DEFAULT NULL,
  `sender_id` int(10) DEFAULT '0',
  `posted` int(10) DEFAULT '0',
  `sender_ip` varchar(120) DEFAULT NULL,
  `smileys` tinyint(4) DEFAULT '1',
  `status` tinyint(4) DEFAULT '0',
  `showed` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_permissions`
--

CREATE TABLE IF NOT EXISTS `jos_agora_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `bbcode` tinyint(1) NOT NULL DEFAULT '1',
  `bbcode_img` tinyint(1) NOT NULL DEFAULT '1',
  `read_rss` tinyint(1) NOT NULL DEFAULT '1',
  `post_reply` tinyint(1) NOT NULL DEFAULT '1',
  `post_poll` tinyint(1) NOT NULL DEFAULT '1',
  `post_topic` tinyint(1) NOT NULL DEFAULT '1',
  `edit_topic` tinyint(1) NOT NULL DEFAULT '1',
  `edit_posts` tinyint(1) NOT NULL DEFAULT '1',
  `delete_topics` tinyint(1) NOT NULL DEFAULT '1',
  `delete_posts` tinyint(1) NOT NULL DEFAULT '1',
  `make_sticky` tinyint(1) NOT NULL DEFAULT '1',
  `close_topic` tinyint(1) NOT NULL DEFAULT '1',
  `use_captcha` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `jos_agora_permissions`
--

INSERT INTO `jos_agora_permissions` (`id`, `read`, `bbcode`, `bbcode_img`, `read_rss`, `post_reply`, `post_poll`, `post_topic`, `edit_topic`, `edit_posts`, `delete_topics`, `delete_posts`, `make_sticky`, `close_topic`, `use_captcha`) VALUES
(1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(5, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(8, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(9, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(11, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(12, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(13, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(15, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(16, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(17, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(19, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(20, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(21, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(23, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(25, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(27, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(28, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(29, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(31, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(32, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(33, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(35, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(36, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(37, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(39, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(40, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_polls`
--

CREATE TABLE IF NOT EXISTS `jos_agora_polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `options` longtext NOT NULL,
  `voters` longtext NOT NULL,
  `ptype` tinyint(4) NOT NULL DEFAULT '0',
  `votes` longtext NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `edited` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_polls`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_posts`
--

CREATE TABLE IF NOT EXISTS `jos_agora_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poster` varchar(200) DEFAULT NULL,
  `poster_id` int(10) unsigned DEFAULT '1',
  `poster_ip` varchar(15) DEFAULT NULL,
  `poster_email` varchar(50) DEFAULT NULL,
  `message` text,
  `hide_smilies` tinyint(1) DEFAULT '0',
  `posted` int(10) unsigned DEFAULT '0',
  `edited` int(10) unsigned DEFAULT NULL,
  `edited_by` varchar(200) DEFAULT NULL,
  `topic_id` int(10) unsigned DEFAULT '0',
  `userimage` varchar(144) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jos_agora_posts_topic_id_idx` (`topic_id`),
  KEY `jos_agora_posts_multi_idx` (`poster_id`,`topic_id`),
  FULLTEXT KEY `message_fulltext_search` (`message`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_profile_fields`
--

CREATE TABLE IF NOT EXISTS `jos_agora_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_type` smallint(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `lang_entry` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_profile_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_profile_field_entries`
--

CREATE TABLE IF NOT EXISTS `jos_agora_profile_field_entries` (
  `e_id` int(6) NOT NULL AUTO_INCREMENT,
  `f_id` int(6) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `u_id` int(6) NOT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_profile_field_entries`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_ranks`
--

CREATE TABLE IF NOT EXISTS `jos_agora_ranks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rank` varchar(50) DEFAULT NULL,
  `min_posts` mediumint(8) unsigned DEFAULT '0',
  `image` varchar(50) DEFAULT '',
  `user_type` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_ranks`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_ratings`
--

CREATE TABLE IF NOT EXISTS `jos_agora_ratings` (
  `rate` tinyint(2) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `topic_id` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_agora_ratings`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_read_posts`
--

CREATE TABLE IF NOT EXISTS `jos_agora_read_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `read_time` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `topic_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_read_posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_reports`
--

CREATE TABLE IF NOT EXISTS `jos_agora_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned DEFAULT '0',
  `topic_id` int(10) unsigned DEFAULT '0',
  `forum_id` int(10) unsigned DEFAULT '0',
  `reported_by` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  `message` text,
  `zapped` int(10) unsigned DEFAULT NULL,
  `zapped_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jos_agora_reports_zapped_idx` (`zapped`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_reports`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_reputation`
--

CREATE TABLE IF NOT EXISTS `jos_agora_reputation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  `rep_plus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rep_minus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topics_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_reputation`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_roles`
--

CREATE TABLE IF NOT EXISTS `jos_agora_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_agora_roles`
--

INSERT INTO `jos_agora_roles` (`id`, `name`) VALUES
(1, 'guest'),
(2, 'member'),
(3, 'moderator'),
(4, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_smilies`
--

CREATE TABLE IF NOT EXISTS `jos_agora_smilies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image` varchar(60) NOT NULL DEFAULT '',
  `text` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `jos_agora_smilies`
--

INSERT INTO `jos_agora_smilies` (`id`, `image`, `text`) VALUES
(1, 'big_smile.png', ':D'),
(2, 'cool.png', ':cool:'),
(3, 'cool.png', ':B:'),
(4, 'lol.png', ':lol:'),
(5, 'hmm.png', ':/'),
(6, 'roll.png', ':rolleyes:'),
(7, 'mad.png', ':mad:'),
(8, 'tongue.png', ':P'),
(9, 'wink.png', ';)'),
(10, 'yikes.png', ':O'),
(11, 'yikes.png', ':o'),
(12, 'big_smile.png', ':=D'),
(13, 'sad.png', ':('),
(14, 'sad.png', '=('),
(15, 'neutral.png', ':|'),
(16, 'smile.png', ':)'),
(17, 'smile.png', '=)');

-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_subscriptions`
--

CREATE TABLE IF NOT EXISTS `jos_agora_subscriptions` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`,`forum_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_agora_subscriptions`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_topics`
--

CREATE TABLE IF NOT EXISTS `jos_agora_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poster` varchar(200) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `descrip_t` varchar(255) DEFAULT NULL,
  `posted` int(10) unsigned DEFAULT '0',
  `last_post` int(10) unsigned DEFAULT '0',
  `last_post_id` int(10) unsigned DEFAULT '0',
  `last_poster` varchar(200) DEFAULT NULL,
  `num_views` mediumint(8) unsigned DEFAULT '0',
  `num_replies` mediumint(8) unsigned DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `sticky` tinyint(1) DEFAULT '0',
  `moved_to` int(10) unsigned DEFAULT NULL,
  `forum_id` int(10) unsigned DEFAULT '0',
  `announcements` tinyint(1) NOT NULL DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `yes` varchar(30) DEFAULT NULL,
  `no` varchar(30) DEFAULT NULL,
  `icon_topic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `jos_agora_topics_forum_id_idx` (`forum_id`),
  KEY `jos_agora_topics_moved_to_idx` (`moved_to`),
  FULLTEXT KEY `subject_fulltext_search` (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_topics`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_users`
--

CREATE TABLE IF NOT EXISTS `jos_agora_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jos_id` int(10) NOT NULL,
  `group_id` int(10) unsigned DEFAULT '4',
  `username` varchar(200) DEFAULT NULL,
  `imgaward` varchar(255) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `jabber` varchar(75) DEFAULT NULL,
  `icq` varchar(12) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `aim` varchar(30) DEFAULT NULL,
  `yahoo` varchar(30) DEFAULT NULL,
  `skype` varchar(30) DEFAULT NULL,
  `xfire` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `use_avatar` tinyint(1) DEFAULT '0',
  `signature` text,
  `disp_topics` tinyint(3) unsigned DEFAULT NULL,
  `disp_posts` tinyint(3) unsigned DEFAULT NULL,
  `notify_with_post` tinyint(1) DEFAULT '0',
  `show_smilies` tinyint(1) DEFAULT '1',
  `show_img` tinyint(1) DEFAULT '1',
  `show_img_sig` tinyint(1) DEFAULT '1',
  `show_avatars` tinyint(1) DEFAULT '1',
  `show_sig` tinyint(1) DEFAULT '1',
  `style` varchar(25) DEFAULT 'Olympus',
  `num_posts` int(10) unsigned DEFAULT '0',
  `last_post` int(10) unsigned DEFAULT NULL,
  `registered` int(10) unsigned DEFAULT '0',
  `last_visit` int(10) unsigned DEFAULT '0',
  `reverse_posts` tinyint(1) NOT NULL DEFAULT '0',
  `admin_note` varchar(30) DEFAULT NULL,
  `reputation_enable` tinyint(1) NOT NULL DEFAULT '0',
  `rep_minus` int(11) unsigned NOT NULL DEFAULT '0',
  `rep_plus` int(11) unsigned NOT NULL DEFAULT '0',
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `gender` int(1) NOT NULL DEFAULT '0',
  `birthday` int(10) DEFAULT '0',
  `hide_age` tinyint(1) NOT NULL DEFAULT '0',
  `interests` varchar(255) NOT NULL DEFAULT '',
  `aboutme` text NOT NULL,
  `ignore_mode` tinyint(1) NOT NULL DEFAULT '1',
  `ignored_users` varchar(255) DEFAULT NULL,
  `auto_subscriptions` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `jos_agora_users_registered_idx` (`registered`),
  KEY `jos_agora_users_username_idx` (`username`(8)),
  KEY `jos_id_index` (`jos_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_agora_users`
--

INSERT INTO `jos_agora_users` (`id`, `jos_id`, `group_id`, `username`, `imgaward`, `email`, `title`, `url`, `jabber`, `icq`, `msn`, `aim`, `yahoo`, `skype`, `xfire`, `location`, `use_avatar`, `signature`, `disp_topics`, `disp_posts`, `notify_with_post`, `show_smilies`, `show_img`, `show_img_sig`, `show_avatars`, `show_sig`, `style`, `num_posts`, `last_post`, `registered`, `last_visit`, `reverse_posts`, `admin_note`, `reputation_enable`, `rep_minus`, `rep_plus`, `latitude`, `longitude`, `gender`, `birthday`, `hide_age`, `interests`, `aboutme`, `ignore_mode`, `ignored_users`, `auto_subscriptions`) VALUES
(1, 62, 4, 'admin', '', 'prabhu9484@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 1, 1, 1, 1, 1, 'Olympus', 0, NULL, 1267684444, 1269408851, 0, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, '', '', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_user_group`
--

CREATE TABLE IF NOT EXISTS `jos_agora_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_agora_user_group`
--

INSERT INTO `jos_agora_user_group` (`id`, `user_id`, `group_id`, `role_id`) VALUES
(1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_user_warning`
--

CREATE TABLE IF NOT EXISTS `jos_agora_user_warning` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `warning_id` int(10) NOT NULL,
  `message` varchar(255) NOT NULL,
  `posted` int(10) NOT NULL,
  `expire` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_user_warning`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_agora_warning`
--

CREATE TABLE IF NOT EXISTS `jos_agora_warning` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `points` int(10) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `expire` int(10) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `message_txt` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_agora_warning`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '', 'Joomla!', 'joomla', 0, 49, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 1, '', 'JoomlaCode', 'joomlacode', 0, 49, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 44, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 44, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 14, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 11, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/amazoncom-bookstores.html', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bannertrack`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Latest', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(3, 0, 'Newsflash', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Free and Open Source Software', '', 'free-and-open-source-software', '', 'com_newsfeeds', 'left', 'Read the latest news about free and open source software from some of its leading advocates.', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(6, 0, 'Related Projects', '', 'related-projects', '', 'com_newsfeeds', 'left', 'Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(29, 0, 'The CMS', '', 'the-cms', '', '4', 'left', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(28, 0, 'Current Users', '', 'current-users', '', '3', 'left', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(25, 0, 'The Project', '', 'the-project', '', '4', 'left', 'General facts about Joomla!<br />', 1, 65, '2007-06-28 14:50:15', NULL, 1, 0, 0, ''),
(27, 0, 'New to Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(30, 0, 'The Community', '', 'the-community', '', '4', 'left', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(32, 0, 'Languages', '', 'languages', '', '3', 'left', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(34, 0, 'home1', '', 'home1', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(35, 0, 'AIADA', '', 'aiada', '', '6', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(36, 0, 'Infrastructure', '', 'infra', '', '7', 'left', '<p>Infrastructure</p>', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(37, 0, 'Faculty', '', 'fct', '', '7', 'left', '<p>Faculty</p>', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(38, 0, 'Message from the Principal', '', 'mp', '', '7', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(39, 0, 'Academics', '', 'acd', '', '7', 'left', '<p>Category - Academics</p>', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(40, 0, 'Extra-Curricular Activities', '', 'eca', '', '7', 'left', '<p>Extra-Carricular Activities</p>', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(41, 0, 'Statements', '', 'stm', '', '7', 'left', '<p>Statements</p>', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(42, 0, 'Awards and Recognitions', '', 'anr', '', '7', 'left', '<p>Awards and Recognitions</p>', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(43, 0, 'Downloads', '', 'dwn', '', '7', 'left', '<p>Results</p>', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(44, 0, 'Contact Us', '', 'cu', '', '7', 'left', '<p>Photo Gallery</p>', 1, 0, '0000-00-00 00:00:00', NULL, 8, 0, 0, ''),
(45, 0, 'Our Stars', '', 'os', '', '7', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 9, 0, 0, ''),
(46, 0, 'Results', '', 'rsl', '', '7', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 10, 0, 0, ''),
(47, 0, 'Employees Corner', '', 'ec', '', '7', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 11, 0, 0, ''),
(48, 0, 'Photo Gallery', '', 'pg', '', '7', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 12, 0, 0, ''),
(49, 0, 'Events', '', 'ev', '', '7', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 13, 0, 0, ''),
(50, 0, 'Infrastructure', '', 'infra', '', '11', 'left', '<p>Category: Mrs. KMPM Inter-College</p>', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(51, 0, 'Faculty', '', 'fct', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Faculty</p>', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(52, 0, 'Message from the Principal', '', 'ms', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Message from the Principal</p>', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(53, 0, 'Academics', '', 'acd', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Academics</p>', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(54, 0, 'Extra-Curricular Activities', '', 'ec', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Extra-Curricular Activities</p>', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(55, 0, 'Statements', '', 'stm', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Statement</p>', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(56, 0, 'Awards and Recognitions', '', 'anr', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Awards and Recognitions</p>', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(57, 0, 'Downloads', '', 'dwn', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Downloads</p>', 1, 0, '0000-00-00 00:00:00', NULL, 8, 0, 0, ''),
(58, 0, 'Contact Us', '', 'cu', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Contact Us</p>', 1, 0, '0000-00-00 00:00:00', NULL, 9, 0, 0, ''),
(59, 0, 'Our Stars', '', 'os', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Our Stars</p>', 1, 0, '0000-00-00 00:00:00', NULL, 10, 0, 0, ''),
(60, 0, 'Results', '', 'rsl', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Results</p>', 1, 0, '0000-00-00 00:00:00', NULL, 11, 0, 0, ''),
(61, 0, 'Employees Corner', '', 'ec', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Employees Corner</p>', 1, 0, '0000-00-00 00:00:00', NULL, 12, 0, 0, ''),
(62, 0, 'Photo Gallery', '', 'pg', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Photo Gallery</p>', 1, 0, '0000-00-00 00:00:00', NULL, 13, 0, 0, ''),
(63, 0, 'Events', '', 'ev', '', '11', 'left', '<p>Section: Mrs. KMPM Inter-College | Category: Events</p>', 1, 0, '0000-00-00 00:00:00', NULL, 14, 0, 0, ''),
(64, 0, 'Infrastructure', '', 'infra', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(65, 0, 'Faculty', '', 'fcl', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(66, 0, 'Message from the Principal', '', 'ms', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(67, 0, 'Academics', '', 'acd', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(68, 0, 'Extra-Curricular Activities', '', 'ec', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(69, 0, 'Statements', '', 'stm', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(70, 0, 'Awards and Recognitions', '', 'anr', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(71, 0, 'Downloads', '', 'dwn', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 8, 0, 0, ''),
(72, 0, 'Contact Us', '', 'cu', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 9, 0, 0, ''),
(73, 0, 'Our Stars', '', 'os', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 10, 0, 0, ''),
(74, 0, 'Class Performance Index', '', 'cpi', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 11, 0, 0, ''),
(75, 0, 'Photo Gallery', '', 'pg', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 12, 0, 0, ''),
(76, 0, 'Infrastructure', '', 'infra', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(77, 0, 'Faculty', '', 'fct', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(78, 0, 'Message from the Principal', '', 'ms', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(79, 0, 'Academics', '', 'acd', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(80, 0, 'Extra-Curricular Activities', '', 'ec', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(81, 0, 'Statements', '', 'stm', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(82, 0, 'Awards and Recognitions', '', 'anr', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(83, 0, 'Downloads', '', 'dwn', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 8, 0, 0, ''),
(84, 0, 'Contact Us', '', 'cu', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 9, 0, 0, ''),
(85, 0, 'Our Stars', '', 'os', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 10, 0, 0, ''),
(86, 0, 'Results', '', 'rsl', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 11, 0, 0, ''),
(87, 0, 'Photo Gallery', '', 'pg', '', '8', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 12, 0, 0, ''),
(88, 0, 'Infrastructure', '', 'infra', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(89, 0, 'Faculty', '', 'fct', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(90, 0, 'Message from the Principal', '', 'ms', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(91, 0, 'Academics', '', 'acd', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(92, 0, 'Extra-Curricular Activities', '', 'ec', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(93, 0, 'Statements', '', 'stm', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(94, 0, 'Awards and Recognitions', '', 'anr', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(95, 0, 'Downloads', '', 'dwn', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 8, 0, 0, ''),
(96, 0, 'Contact Us', '', 'cu', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 9, 0, 0, ''),
(97, 0, 'Our Stars', '', 'os', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 10, 0, 0, ''),
(98, 0, 'Results', '', 'rsl', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 11, 0, 0, ''),
(99, 0, 'Photo Gallery', '', 'pg', '', '9', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 12, 0, 0, ''),
(100, 0, 'Newsflash', '', 'nf', '', '12', 'left', '<p>Category: Newsflash</p>', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(101, 0, 'Chandigarh', '', 'jemf', '', '6', 'left', '<p>About the JEM Foundation</p>', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(91, 'Image Comments', '', 0, 83, 'option=com_phocagallery&view=phocagallerycoimgs', 'Image Comments', 'com_phocagallery', 7, 'components/com_phocagallery/assets/images/icon-16-pg-menu-comment-img.png', 0, '', 1),
(93, 'Info', '', 0, 83, 'option=com_phocagallery&view=phocagalleryin', 'Info', 'com_phocagallery', 9, 'components/com_phocagallery/assets/images/icon-16-pg-menu-info.png', 0, '', 1),
(92, 'Users', '', 0, 83, 'option=com_phocagallery&view=phocagalleryusers', 'Users', 'com_phocagallery', 8, 'components/com_phocagallery/assets/images/icon-16-pg-menu-users.png', 0, '', 1),
(90, 'Category Comments', '', 0, 83, 'option=com_phocagallery&view=phocagallerycos', 'Category Comments', 'com_phocagallery', 6, 'components/com_phocagallery/assets/images/icon-16-pg-menu-comment.png', 0, '', 1),
(83, 'Phoca Gallery', 'option=com_phocagallery', 0, 0, 'option=com_phocagallery', 'Phoca Gallery', 'com_phocagallery', 0, 'components/com_phocagallery/assets/images/icon-16-pg-menu.png', 0, 'enable_thumb_creation=0\n\n', 1),
(84, 'Control Panel', '', 0, 83, 'option=com_phocagallery', 'Control Panel', 'com_phocagallery', 0, 'components/com_phocagallery/assets/images/icon-16-pg-control-panel.png', 0, '', 1),
(85, 'Images', '', 0, 83, 'option=com_phocagallery&view=phocagallerys', 'Images', 'com_phocagallery', 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-gal.png', 0, '', 1),
(86, 'Categories', '', 0, 83, 'option=com_phocagallery&view=phocagallerycs', 'Categories', 'com_phocagallery', 2, 'components/com_phocagallery/assets/images/icon-16-pg-menu-cat.png', 0, '', 1),
(87, 'Themes', '', 0, 83, 'option=com_phocagallery&view=phocagalleryt', 'Themes', 'com_phocagallery', 3, 'components/com_phocagallery/assets/images/icon-16-pg-menu-theme.png', 0, '', 1),
(88, 'Category Rating', '', 0, 83, 'option=com_phocagallery&view=phocagalleryra', 'Category Rating', 'com_phocagallery', 4, 'components/com_phocagallery/assets/images/icon-16-pg-menu-vote.png', 0, '', 1),
(89, 'Image Rating', '', 0, 83, 'option=com_phocagallery&view=phocagalleryraimg', 'Image Rating', 'com_phocagallery', 5, 'components/com_phocagallery/assets/images/icon-16-pg-menu-vote-img.png', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=161 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<div align="left"><strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications. <br /></strong></div><p><strong><br /></strong><img src="images/stories/powered_by.png" border="0" alt="Joomla! Logo" title="Example Caption" hspace="6" vspace="0" width="165" height="68" align="left" />Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for intranets and extranets and is supported by a community of tens of thousands of users. </p>', 'With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.<p>Joomla! now provides more developer power while making the user experience all the more friendly. For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p><p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p><p>Thinking Web publishing? Think Joomla!</p>', 1, 1, 0, 1, '2008-08-12 10:00:00', 62, '', '2008-08-12 10:00:00', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 29, 0, 1, '', '', 0, 92, 'robots=\nauthor='),
(2, 'Newsflash 1', 'newsflash-1', '', '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>', '', 1, 1, 0, 3, '2008-08-10 06:30:34', 62, '', '2008-08-10 06:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 1, 'robots=\nauthor='),
(3, 'Newsflash 2', 'newsflash-2', '', '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content through a graphical Control Panel that gives you complete control over your site.</p>', '', 1, 1, 0, 3, '2008-08-09 22:30:34', 62, '', '2008-08-09 22:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 4, '', '', 0, 0, 'robots=\nauthor='),
(4, 'Newsflash 3', 'newsflash-3', '', '<p>With a library of thousands of free <a href="http://extensions.joomla.org" target="_blank" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions">Joomla! Extensions</a>  library today. </p>', '', 1, 1, 0, 3, '2008-08-10 06:30:34', 62, '', '2008-08-10 06:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 5, '', '', 0, 1, 'robots=\nauthor='),
(5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://joomla.org/" target="_blank" title="Joomla!">Joomla!</a> The software and default templates on which it runs are Copyright 2005-2008 <a href="http://www.opensourcematters.org/" target="_blank" title="Open Source Matters">Open Source Matters</a>. The sample content distributed with Joomla! is licensed under the <a href="http://docs.joomla.org/JEDL" target="_blank" title="Joomla! Electronic Document License">Joomla! Electronic Documentation License.</a> All data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p> <p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1" target="_blank" title="GNU General Public License"> GNU General Public License</a>. If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4" target="_blank" title="How To Apply These Terms To Your Program">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html" target="_blank" title="GNU General Public License FAQ">''GNU General Public License FAQ''</a>.</p> <p>The Joomla! licence has always been GPL.</p>', '', 0, 4, 0, 25, '2008-08-20 10:11:07', 62, '', '2008-08-20 10:11:07', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 100, 'robots=\nauthor='),
(6, 'We are Volunteers', 'we-are-volunteers', '', '<p>The Joomla Core Team and Working Group members are volunteer developers, designers, administrators and managers who have worked together to take Joomla! to new heights in its relatively short life. Joomla! has some wonderfully talented people taking Open Source concepts to the forefront of industry standards.  Joomla! 1.5 is a major leap forward and represents the most exciting Joomla! release in the history of the project. </p>', '', 0, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 4, '', '', 0, 54, 'robots=\nauthor='),
(9, 'Millions of Smiles', 'millions-of-smiles', '', '<p>The Joomla! team has millions of good reasons to be smiling about the Joomla! 1.5. In its current incarnation, it''s had millions of downloads, taking it to an unprecedented level of popularity.  The new code base is almost an entire re-factor of the old code base.  The user experience is still extremely slick but for developers the API is a dream.  A proper framework for real PHP architects seeking the best of the best.</p><p>If you''re a former Mambo User or a 1.0 series Joomla! User, 1.5 is the future of CMSs for a number of reasons.  It''s more powerful, more flexible, more secure, and intuitive.  Our developers and interface designers have worked countless hours to make this the most exciting release in the content management system sphere.</p><p>Go on ... get your FREE copy of Joomla! today and spread the word about this benchmark project. </p>', '', 0, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 7, '', '', 0, 23, 'robots=\nauthor='),
(10, 'How do I localise Joomla! to my language?', 'how-do-i-localise-joomla-to-my-language', '', '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>', '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="JED">Joomla! Extensions Directory</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in.</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://community.joomla.org/translations.html" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>', 1, 3, 0, 32, '2008-07-30 14:06:37', 62, '', '2008-07-30 14:06:37', 62, 0, '0000-00-00 00:00:00', '2006-09-29 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 5, '', '', 0, 10, 'robots=\nauthor='),
(11, 'How do I upgrade to Joomla! 1.5 ?', 'how-do-i-upgrade-to-joomla-15', '', '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>', ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p><!--more--></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank" title="JoomlaCode">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''jos_'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>', 1, 3, 0, 28, '2008-07-30 20:27:52', 62, '', '2008-07-30 20:27:52', 62, 0, '0000-00-00 00:00:00', '2006-09-29 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 3, '', '', 0, 14, 'robots=\nauthor='),
(12, 'Why does Joomla! 1.5 use UTF-8 encoding?', 'why-does-joomla-15-use-utf-8-encoding', '', '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>', '', 1, 3, 0, 31, '2008-08-05 01:11:29', 62, '', '2008-08-05 01:11:29', 62, 0, '0000-00-00 00:00:00', '2006-10-03 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 8, '', '', 0, 29, 'robots=\nauthor='),
(13, 'What happened to the locale setting?', 'what-happened-to-the-locale-setting', '', 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.', '', 1, 3, 0, 28, '2008-08-06 16:47:35', 62, '', '2008-08-06 16:47:35', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 11, 'robots=\nauthor='),
(14, 'What is the FTP layer for?', 'what-is-the-ftp-layer-for', '', '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>', '', 1, 3, 0, 31, '2008-08-06 21:27:49', 62, '', '2008-08-06 21:27:49', 62, 0, '0000-00-00 00:00:00', '2006-10-05 16:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 6, '', '', 0, 23, 'robots=\nauthor='),
(15, 'Can Joomla! 1.5 operate with PHP Safe Mode On?', 'can-joomla-15-operate-with-php-safe-mode-on', '', '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perform actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>', '', 1, 3, 0, 31, '2008-08-06 19:28:35', 62, '', '2008-08-06 19:28:35', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 4, '', '', 0, 8, 'robots=\nauthor='),
(16, 'Only one edit window! How do I create "Read more..."?', 'only-one-edit-window-how-do-i-create-read-more', '', '<p>This is now implemented by inserting a <strong>Read more...</strong> tag (the button is located below the editor area) a dotted line appears in the edited text showing the split location for the <em>Read more....</em> A new Plugin takes care of the rest.</p><p>It is worth mentioning that this does not have a negative effect on migrated data from older sites. The new implementation is fully backward compatible.</p>', '', 0, 3, 0, 28, '2008-08-06 19:29:28', 62, '', '2008-08-06 19:29:28', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 4, '', '', 0, 20, 'robots=\nauthor='),
(17, 'My MySQL database does not support UTF-8. Do I have a problem?', 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem', '', 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).', '', 1, 3, 0, 31, '2008-08-07 09:30:37', 62, '', '2008-08-07 09:30:37', 62, 0, '0000-00-00 00:00:00', '2006-10-05 20:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 7, '', '', 0, 9, 'robots=\nauthor='),
(18, 'Joomla! Features', 'joomla-features', '', '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX', '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Easily integrate news feeds into your Web site.</li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site.</li></ul>', 1, 4, 0, 29, '2008-08-08 23:32:45', 62, '', '2008-08-08 23:32:45', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 4, '', '', 0, 59, 'robots=\nauthor='),
(19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br /> </p><p>So what''s the catch? How much does this system cost?</p><p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p><p>Joomla! changes all that ... <br />Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p><p>It is easy to install and administer, and is reliable. </p><p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p><p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>', '', 1, 4, 0, 29, '2008-08-09 07:49:20', 62, '', '2008-08-09 07:49:20', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 2, '', '', 0, 169, 'robots=\nauthor='),
(20, 'Support and Documentation', 'support-and-documentation', '', '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too!</p> <p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features.</p> <p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank" title="Forum">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p> <p>Two other resources for Support are the <a href="http://developer.joomla.org/" target="_blank" title="Joomla! Developer Site">Joomla! Developer Site</a> and the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a> (JED). The Joomla! Developer Site provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site.</p> <p>The Joomla! Developers and Bug Squad members are regularly posting their blog reports about several topics such as programming techniques and security issues.</p> <h1>Documentation</h1> <p>Joomla! Documentation can of course be found on the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. You can find information for beginners, installation, upgrade, Frequently Asked Questions, developer topics, and a lot more. The Documentation Team helps oversee the wiki but you are invited to contribute content, as well.</p> <p>There are also books written about Joomla! You can find a listing of these books in the <a href="http://shop.joomla.org/" target="_blank" title="Joomla! Shop">Joomla! Shop</a>.</p>', '', 1, 4, 0, 25, '2008-08-09 08:33:57', 62, '', '2008-08-09 08:33:57', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 6, 'robots=\nauthor='),
(21, 'Chandigarh Web Cluster', 'joomla-facts', '', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/student1.jpg" border="0" width="150" height="150" /></td>\r\n<td>\r\n<p><br /> The Chandigarh Web cluster consists of about 200 Enterprises in Offshore Software Development Business. The Rajiv Gandhi Chandigarh Technology Park consists of several of these Startups.<br /> Web Sites, Web Applications, iPhone, Android and Blackbery Apps are developed here by software professionals. Projects are Outsourced from the United States, United Kingdom, Europe and Hong Kong. <br /> Development Platforms include Drupal, Joomla, WordPress, CakePHP, Zend, Symfony among others. iPhone and Android apps development is on J2ME platforms. <br /> The BPO and KPO Industry is seeing robust growth. Customer Support, System and Network Administration Support, Tech Support, Healthcare, Medical Transcription and Recruitment are the sectors of Growth.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 4, 0, 30, '2008-08-09 16:46:37', 62, '', '2011-01-28 10:26:31', 62, 0, '0000-00-00 00:00:00', '2006-10-07 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 22, 0, 1, '', '', 0, 63, 'robots=\nauthor='),
(22, 'cSocial - Chandigarh', 'whats-new-in-15', '', '<p>Social Networking and Mining among Cluster Professionals using existing Social Networks. Sort Professionals by Name, Industry or Enterprise. Connect and understand the Cluster, Channel and Community in terms of Business, Scale and Talent. Diverse and multifaceted Professionals with expertise of Shop Floor to Frontend Operations. Innovation and Creativity is a part of their Professional Life with a flair for Entrepreneurship and Networking.</p>\r\n<p> </p>\r\n<p>{iframe height="400" width="960" frameborder="1"}http://localhost/TestPages/testExc9.php{/iframe}</p>', '', 1, 4, 0, 29, '2008-08-11 22:13:58', 62, '', '2011-01-28 10:21:57', 62, 0, '0000-00-00 00:00:00', '2006-10-10 18:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 15, 0, 1, '', '', 0, 106, 'robots=\nauthor='),
(23, 'cProjects', 'platforms-and-open-standards', '', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/images_3.jpg" border="0" width="150" height="200" /></td>\r\n<td>\r\n<p><br /> A Forum for showcasing Projects from the Cluster <br /> The Chandigarh-Mohali Web cluster consists of about 200 Enterprises in Offshore Software Development Business.<br /> Web Sites, Web Applications, iPhone Apps, Android Apps are developed here by software professionals. Projects are Outsourced from the United States, United Kingdom, Europe and Hong Kong. <br /> Development Platforms include Drupal, Joomla, WordPress, CakePHP, Zend, Symfony among others. iPhone and Android apps development is on J2ME platforms. <br /> The BPO and KPO Industry is seeing robust growth. Customer Support, System and Network Administration Support, Tech Support, Healthcare, Medical Transcription are the sectors of Growth.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 4, 0, 25, '2008-08-11 04:22:14', 62, '', '2011-01-20 07:02:10', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 12, 0, 3, '', '', 0, 16, 'robots=\nauthor='),
(24, 'Content Layouts', 'content-layouts', '', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/csr2.jpg" border="0" width="150" height="200" /></td>\r\n<td>\r\n<p><br />The Events and Happenings for the Tech Community. <br /> The Chandigarh-Mohali Web cluster consists of about 200 Enterprises in Offshore Software Development Business.<br /> Web Sites, Web Applications, iPhone Apps, Android Apps are developed here by software professionals. Projects are Outsourced from the United States, United Kingdom, Europe and Hong Kong. <br /> Development Platforms include Drupal, Joomla, WordPress, CakePHP, Zend, Symfony among others. iPhone and Android apps development is on J2ME platforms. <br /> The BPO and KPO Industry is seeing robust growth. Customer Support, System and Network Administration Support, Tech Support, Healthcare, Medical Transcription are the sectors of Growth.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 4, 0, 29, '2008-08-12 22:33:10', 62, '', '2011-01-20 07:40:51', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 14, 0, 5, '', '', 0, 72, 'robots=\nauthor='),
(25, 'What are the requirements to run Joomla! 1.5?', 'what-are-the-requirements-to-run-joomla-15', '', '<p>Joomla! runs on the PHP pre-processor. PHP comes in many flavours, for a lot of operating systems. Beside PHP you will need a Web server. Joomla! is optimized for the Apache Web server, but it can run on different Web servers like Microsoft IIS it just requires additional configuration of PHP and MySQL. Joomla! also depends on a database, for this currently you can only use MySQL. </p>Many people know from their own experience that it''s not easy to install an Apache Web server and it gets harder if you want to add MySQL, PHP and Perl. XAMPP, WAMP, and MAMP are easy to install distributions containing Apache, MySQL, PHP and Perl for the Windows, Mac OSX and Linux operating systems. These packages are for localhost installations on non-public servers only.<br />The minimum version requirements are:<br /><ul><li>Apache 1.x or 2.x</li><li>PHP 4.3 or up</li><li>MySQL 3.23 or up</li></ul>For the latest minimum requirements details, see <a href="http://www.joomla.org/about-joomla/technical-requirements.html" target="_blank" title="Joomla! Technical Requirements">Joomla! Technical Requirements</a>.', '', 1, 3, 0, 31, '2008-08-11 00:42:31', 62, '', '2008-08-11 00:42:31', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 5, '', '', 0, 25, 'robots=\nauthor='),
(26, 'Extensions', 'extensions', '', '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p> <ul>   <li>Dynamic form builders</li>   <li>Business or organisational directories</li>   <li>Document management</li>   <li>Image and multimedia galleries</li>   <li>E-commerce and shopping cart engines</li>   <li>Forums and chat software</li>   <li>Calendars</li>   <li>E-mail newsletters</li>   <li>Data collection and reporting tools</li>   <li>Banner advertising systems</li>   <li>Paid subscription services</li>   <li>and many, many, more</li> </ul> <p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p><p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a> </p> <h3>Types of Extensions </h3><p>There are five types of extensions:</p> <ul>   <li>Components</li>   <li>Modules</li>   <li>Templates</li>   <li>Plugins</li>   <li>Languages</li> </ul> <p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.<br /> </p> <hr title="Components" class="system-pagebreak" /> <h3><img src="images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3> <p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<font face="courier new,courier">com_content</font>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<font face="courier new,courier">com_user</font>) is the mini-application  that handles User registration.</p> <p>Many of Joomla!''s core features are provided by the use of default Components such as:</p> <ul>   <li>Contacts</li>   <li>Front Page</li>   <li>News Feeds</li>   <li>Banners</li>   <li>Mass Mail</li>   <li>Polls</li></ul><p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p> <p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>  <hr title="Modules" class="system-pagebreak" /> <h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3> <p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p> <p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p> <p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout. </p> <h4>Displaying Modules</h4> <p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p> <p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<font face="courier new,courier">mod_mainmenu</font>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p> <h4>Newsflash Example</h4> <p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p> <p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>  <hr title="Plugins" class="system-pagebreak" /> <h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3> <p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <font face="courier new,courier">onGetEditorArea</font> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>  <hr title="Languages" class="system-pagebreak" /> <h3><img src="images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3> <p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles. </p> <p>More information on languages is available from the <br />   <a href="http://community.joomla.org/translations.html" target="_blank" title="Joomla! Translation Teams">http://community.joomla.org/translations.html</a></p>', '', 1, 4, 0, 29, '2008-08-11 06:00:00', 62, '', '2008-08-11 06:00:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 3, 'About Joomla!, General, Extensions', '', 0, 102, 'robots=\nauthor='),
(27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 210,000 members, the Joomla! Discussion Forums at <a href="http://forum.joomla.org/" target="_blank" title="Forums">forum.joomla.org</a> are a great resource for both new and experienced users. Ask your toughest questions the community is waiting to see what you''ll do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Visit the <a href="http://forum.joomla.org/viewforum.php?f=514" target="_blank" title="Site Showcase">Site Showcase</a> section of our forum.</p><p><strong>Do you want to contribute?</strong></p><p>If you think working with Joomla is fun, wait until you start working on it. We''re passionate about helping Joomla users become contributors. There are many ways you can help Joomla''s development:</p><ul>	<li>Submit news about Joomla. We syndicate Joomla-related news on <a href="http://news.joomla.org" target="_blank" title="JoomlaConnect">JoomlaConnect<sup>TM</sup></a>. If you have Joomla news that you would like to share with the community, find out how to get connected <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</li>	<li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" target="_blank" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://docs.joomla.org/Filing_bugs_and_issues" target="_blank" title="Reporting Bugs">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://docs.joomla.org/Patch_submission_guidelines" target="_blank" title="Submitting Patches">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/viewforum.php?f=509" target="_blank" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://www.joomla.org/about-joomla/the-project/working-groups.html" target="_blank" title="Joomla! working groups">Joomla Working Groups</a> and bring your personal expertise to the Joomla community. </li></ul><p>These are just a few ways you can contribute. See <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank" title="Contribute">Contribute to Joomla</a> for many more ways.</p>', '', 1, 4, 0, 30, '2008-08-12 16:50:48', 62, '', '2008-08-12 16:50:48', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 2, '', '', 0, 63, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(28, 'How do I install Joomla! 1.5?', 'how-do-i-install-joomla-15', '', '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" target="_blank" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" target="_blank" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>', '', 1, 3, 0, 31, '2008-08-11 01:10:59', 62, '', '2008-08-11 01:10:59', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 3, '', '', 0, 5, 'robots=\nauthor='),
(29, 'What is the purpose of the collation selection in the installation screen?', 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen', '', 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.', '', 1, 3, 0, 32, '2008-08-11 03:11:38', 62, '', '2008-08-11 03:11:38', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 4, '', '', 0, 6, 'robots=\nauthor='),
(30, 'What languages are supported by Joomla! 1.5?', 'what-languages-are-supported-by-joomla-15', '', 'Within the Installer you will find a wide collection of languages. The installer currently supports the following languages: Arabic, Bulgarian, Bengali, Czech, Danish, German, Greek, English, Spanish, Finnish, French, Hebrew, Devanagari(India), Croatian(Croatia), Magyar (Hungary), Italian, Malay, Norwegian bokmal, Dutch, Portuguese(Brasil), Portugues(Portugal), Romanian, Russian, Serbian, Svenska, Thai and more are being added all the time.<br />By default the English language is installed for the Back and Front-ends. You can download additional language files from the <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla!Extensions Directory</a>. ', '', 0, 3, 0, 32, '2008-08-11 01:12:18', 62, '', '2008-08-11 01:12:18', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 8, 'robots=\nauthor='),
(31, 'Is it useful to install the sample data?', 'is-it-useful-to-install-the-sample-data', '', 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.', '', 1, 3, 0, 27, '2008-08-11 09:12:55', 62, '', '2008-08-11 09:12:55', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 3, '', '', 0, 3, 'robots=\nauthor='),
(32, 'Where is the Static Content Item?', 'where-is-the-static-content', '', '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>', '', 1, 3, 0, 28, '2008-08-10 23:13:33', 62, '', '2008-08-10 23:13:33', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 6, '', '', 0, 5, 'robots=\nauthor='),
(33, 'What is an Uncategorised Article?', 'what-is-uncategorised-article', '', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', 1, 3, 0, 31, '2008-08-11 15:14:11', 62, '', '2008-08-11 15:14:11', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 2, '', '', 0, 6, 'robots=\nauthor='),
(34, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', '', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', 1, 3, 0, 32, '2008-08-11 17:14:57', 62, '', '2008-08-11 17:14:57', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 6, 'robots=\nauthor='),
(35, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-the-types-of-menu-entries', '', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', 1, 3, 0, 31, '2008-08-10 23:15:36', 62, '', '2008-08-10 23:15:36', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 18, 'robots=\nauthor='),
(36, 'Where did the Installers go?', 'where-did-the-installer-go', '', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', 1, 3, 0, 28, '2008-08-10 23:16:20', 62, '', '2008-08-10 23:16:20', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 4, 'robots=\nauthor='),
(37, 'Where did the Mambots go?', 'where-did-the-mambots-go', '', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', 1, 3, 0, 28, '2008-08-11 09:17:00', 62, '', '2008-08-11 09:17:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 5, '', '', 0, 4, 'robots=\nauthor='),
(38, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is <a href="http://extensions.joomla.org/index.php?option=com_mtree&task=listcats&cat_id=1837&Itemid=35" target="_blank" title="Translations for Joomla!">Translations for Joomla!</a> on JED.</p>', '', 1, 3, 0, 32, '2008-08-11 17:18:14', 62, '', '2008-08-11 17:18:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, '', '', 0, 7, 'robots=\nauthor='),
(39, 'How do I remove an Article?', 'how-do-i-remove-an-article', '', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', 1, 3, 0, 27, '2008-08-11 09:19:01', 62, '', '2008-08-11 09:19:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 2, '', '', 0, 4, 'robots=\nauthor='),
(40, 'What is the difference between Archiving and Trashing an Article? ', 'what-is-the-difference-between-archiving-and-trashing-an-article', '', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', 1, 3, 0, 27, '2008-08-11 05:19:43', 62, '', '2008-08-11 05:19:43', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 1, '', '', 0, 5, 'robots=\nauthor='),
(41, 'Newsflash 5', 'newsflash-5', '', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', 1, 1, 0, 3, '2008-08-12 00:17:31', 62, '', '2008-08-12 00:17:31', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 4, 'robots=\nauthor='),
(42, 'Newsflash 4', 'newsflash-4', '', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.', '', 1, 1, 0, 3, '2008-08-12 00:25:50', 62, '', '2008-08-12 00:25:50', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 1, '', '', 0, 5, 'robots=\nauthor='),
(43, 'Example Pages and Menu Links', 'example-pages-and-menu-links', '', '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p><ul><li>Section Blog</li><li>Section Table</li><li> Blog Category</li><li>Category Table</li></ul><p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p><p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong><font face="courier new,courier">Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</font></strong>. </p>', '', 1, 0, 0, 0, '2008-08-12 09:26:52', 62, '', '2008-08-12 09:26:52', 62, 0, '0000-00-00 00:00:00', '2006-10-11 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, 'Uncategorized, Uncategorized, Example Pages and Menu Links', '', 0, 43, 'robots=\nauthor='),
(44, 'Joomla! Security Strike Team', 'joomla-security-strike-team', '', '<p>The Joomla! Project has assembled a top-notch team of experts to form the new Joomla! Security Strike Team. This new team will solely focus on investigating and resolving security issues. Instead of working in relative secrecy, the JSST will have a strong public-facing presence at the <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a>.</p>', '<p>The new JSST will call the new <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a> their home base. The Security Center provides a public presence for <a href="http://developer.joomla.org/security/news.html" target="_blank" title="Joomla! Security News">security issues</a> and a platform for the JSST to <a href="http://developer.joomla.org/security/articles-tutorials.html" target="_blank" title="Joomla! Security Articles">help the general public better understand security</a> and how it relates to Joomla!. The Security Center also offers users a clearer understanding of how security issues are handled. There''s also a <a href="http://feeds.joomla.org/JoomlaSecurityNews" target="_blank" title="Joomla! Security News Feed">news feed</a>, which provides subscribers an up-to-the-minute notification of security issues as they arise.</p>', 0, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(45, 'Joomla! Community Portal', 'joomla-community-portal', '', '<p>The <a href="http://community.joomla.org/" target="_blank" title="Joomla! Community Portal">Joomla! Community Portal</a> is now online. There, you will find a constant source of information about the activities of contributors powering the Joomla! Project. Learn about <a href="http://community.joomla.org/events.html" target="_blank" title="Joomla! Events">Joomla! Events</a> worldwide, and see if there is a <a href="http://community.joomla.org/user-groups.html" target="_blank" title="Joomla! User Groups">Joomla! User Group</a> nearby.</p><p>The <a href="http://community.joomla.org/magazine.html" target="_blank" title="Joomla! Community Magazine">Joomla! Community Magazine</a> promises an interesting overview of feature articles, community accomplishments, learning topics, and project updates each month. Also, check out <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">JoomlaConnect&#0153;</a>. This aggregated RSS feed brings together Joomla! news from all over the world in your language. Get the latest and greatest by clicking <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</p>', '', 0, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 5, 'robots=\nauthor='),
(46, 'ClusterLogic ~Clusters~Channels~Communities~', 'juscoprofile', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/csr3.jpg" border="0" width="121" height="170" /></td>\r\n<td>\r\n<p class="content" align="justify">ClusterLogic is a Portal committed to empowering Global Enterprise Clusters in the Information Age.<br />We analyze Enterprises from a Cluster, Channel and Community standpoint to enable them with Information and Knowledge to harness their potential.<br />Connecting Buyers, Suppliers and Professionals through the Internet, Social Networking and Social Mining to enable them with Custom Training, Talent Delivery and Automation Solutions.<br />A Forum for Service Providers to understand and connect to Enterprises in Last Mile Geographies through Channel Sales, Financial Services and Industry News.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class="slider-wrap">\r\n<div id="slider1" class="csw">\r\n<div class="panelContainer">\r\n<div class="panel" title="cSocial">\r\n<div class="wrapper">\r\n<h3>Understanding Clusters</h3>\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/e-Logic/images_9.jpg" border="0" width="200" height="150" /></td>\r\n<td>\r\n<p align="CENTER">cSocial connects Professionals through the power of Internet Social Networks. Professionals are increasingly recognising the power Online Networking, and are showcasing their profiles, work and achievments on these Sites. Social Networks offer a structured profile to understand Professionals around the World. Clusters benefit from these Networks by creating a talent pool of Professionals for Talent acquisition, delivery and custom training.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><a class="cross-link" href="#5" title="Go to Panel 5">« Previous</a> | <a class="cross-link" href="#2" title="Go to Panel 2">Next »</a></p>\r\n</div>\r\n</div>\r\n<div class="panel" title="cProgrammes">\r\n<div class="wrapper">\r\n<h3>Sharpening Channels</h3>\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/e-Logic/images_11.jpg" border="0" width="300" height="150" /></td>\r\n<td>Clusters grow like a Community. Training Programmes are organized in Clusters to propagate Best Practices from the Shop Floor to the Management. The Automotive Component Manufacturers Association of India says that its members faced the challenges exposed by the downturn. The Regions organised meetings, interactions and programmes on the current needs of the industry with a view to strengthen the industry to withstand the challenges posed by the downturn. Markelogy is an Enterprise Initiative to incubate the startp Community in Chandigarh.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><a class="cross-link" href="#1" title="Go to Panel 1">« Previous</a> | <a class="cross-link" href="#3" title="Go to Panel 3">Next »</a></p>\r\n</div>\r\n</div>\r\n<div class="panel" title="cAutomation">\r\n<div class="wrapper">\r\n<h3>cAutomation - Shop Floor to Office</h3>\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/e-Logic/images_11.jpg" border="0" width="300" height="150" /></td>\r\n<td>\r\n<div class="wrapper">Enterprises are adopting Automation Technologies faster. Document Management Systems, Wireless Communications and Remote Monitoring Technologies are being increasingly adopted to drive effeciencies in Operations.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><a class="cross-link" href="#1" title="Go to Panel 1">« Previous</a> | <a class="cross-link" href="#3" title="Go to Panel 3">Next »</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 1, 5, 0, 34, '2010-03-05 07:59:21', 62, '', '2011-01-27 11:51:24', 62, 0, '0000-00-00 00:00:00', '2010-03-05 07:59:21', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 179, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(47, 'Commitment to Education', 'cte', '', '<p> </p>\r\n<p><em>Vijnyana brahmetivyajanaat<br />Vijnyantdwevakalvimaani bhootani jyayante<br />Vijnyanenajaatani jeevanti.<br /></em></p>\r\n<p> </p>\r\n<p>- Taittiriya Upanishad, Bhrgu Valli (III. V)</p>\r\n<p> </p>\r\n<p><em>Knowledge is Brahman:<br />From knowledge, all creation originates<br />By knowledge, all creation is sustained<br />Into knowledge, all creation merges.<br /></em><br />As a creator of infrastructure and provider of utility services, JUSCO is fully alive to the reality that sustainable growth of any society and business is based on economic development and prosperity of people who reside within, and that education and resultant self reliance is the cornerstone of this foundation.<br />To ensure sustainable growth JUSCO has established JUSCO Education Mission Foundation, a registered trust as a means to fulfill its commitment of providing “QUALITY SERVICES FOR LIFE”.<br /><br /></p>\r\n<p> </p>', '', 0, 5, 0, 34, '2010-03-05 08:08:49', 62, '', '2010-05-03 09:41:07', 62, 0, '0000-00-00 00:00:00', '2010-03-05 08:08:49', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 16, 0, 2, '', '', 0, 54, 'robots=\nauthor='),
(48, 'Community Support', 'cs', '', '<p> </p>\r\n<p>JUSCO Schools, have resolved to create citizens of the world, rooted in the best Indian traditions. The endeavour shall be to work as a team with all parents to offer it’s students constant and meaningful opportunities for both academic excellence as well as the assimilation of human values. The School will provide the impetus which will inspire each student to be professionally excellent, responsible and upright members of our society. We share a culture of collaborative decision making continuous improvement, open communication &amp; accountability to the work done. The educational services are driven by the mission of our parent company “QUALITY SERVICES FOR LIFE”.</p>\r\n', '\r\n<p>JUSCO Schools were established in 2005 by Jamshedpur Utility Services Company Limited (JUSCO), as a part of as its corporate social responsibility. Its aims &amp; objectives were to strengthen the educational opportunity, providing holistic development of children through quality education, which would be affordable to masses. To ensure growth and sustainability of these educational initiatives, the Company has formed the JUSCO Education Mission Foundation (JEM) for the operation and administration of the JUSCO Schools.</p>\r\n<p> </p>', 0, 5, 0, 34, '2010-03-05 08:14:14', 62, '', '2010-05-03 07:33:05', 62, 0, '0000-00-00 00:00:00', '2010-03-05 08:14:14', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 4, 'robots=\nauthor='),
(49, 'cProgrammes - Empowering Clusters', 'sp', '', '<p> </p>\r\n<p><strong>Source: The Automotive Component Manufacturers Association of India Forty Nineth Annual Report 2008 - 09</strong><br /><em>The Global Economic Downturn impacted the Auto Component Industry too. ACMA members faced the challenges exposed by this downturn. The Regions organised meetings, interactions and programmes on the current needs of the industry with a view to strengthen the industry to withstand the challenges posed by the downturn.</em></p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/images_2.jpg" border="0" width="150" height="100" /></td>\r\n<td><em><strong>Building Competencies<br /> One Day Workshop on 5S &amp; Shop-Floor Improvement<br /> Jamshedpur: June 25, 2008<br /> One Day Workshop on 5S &amp; Shop Floor Improvement<br /> Jamshedpur : August 4, 2008</strong> </em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><em>ACMA (ER) organised a one-day workshop on 5S and shop-floor improvement in Jamshedpur. Mr. Atul Dua, Regional Council Member, ACMA (ER) and MD, Multitech Auto P. Ltd., welcomed the workshop faculty Mr. T.K. Chanda, National Expert, UNIDO Partnership Programme. He stressed on specialising in the fundamentals of 5S and said that it should be our way of life. In today''s competitive world, when every company has a dream to become a truly global company, quality in every field is the mantra of success. Since, it was a programme aiming to train mainly shop-floor persons, Mr. Dua gave simple examples from our day-to-day life and compared a co. without 5S to that of a bachelor''s life, chaotic and unorganised, whereas the co. practicing 5S is like a married person''s life, organised and proper. Mr. T.K. Chanda also gave a practical training on the shop- floor. He divided the participants in different groups and made them implement their learning on the shop- floor to bring improvement.<br /> With the success of the first workshop on 5S on 25th June 2008 and overwhelming response from the members, ACMA (ER) organised the second workshop on 5S.<br /> Mr. Tapas Sahu, Regional Council Member, ACMA (ER) and ED, Highco Engineers (P) Ltd., stressed upon the activities like Cluster programmes being organised by ACMA, which has turned his company into an entirely organised plant after they joined the cluster programme. The first session comprised of the classroom teaching and in the second half, the company was divided into different zones and it was shown practically how to do 5S and bring out improvements on the shop floor. The Faculty for this workshop was Mr. T. K. Chanda, National Expert, UNIDO Partnership Programme in the Eastern Region.</em></p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/images_2.jpg" border="0" width="150" height="100" /></td>\r\n<td><em><strong>Cost Reduction Techniques<br /> Jamshedpur : August 27, 2008</strong> </em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><em>A seminar on Sharing of Experiences on Cost Reduction Techniques was organised for the auto component manufacturers of ACMA ER. Mr. S. K. Behera, Regional Chairman, ACMA (ER) and MD, RSB Transmissions (I) Ltd., extended a special welcome to Mr. D. Nag from Rico Auto Industries Ltd., Mr. Vijay Arora of Asahi India Glass Ltd. and Mr. S. Nagarajan and Mr. M. S. Amusadhurai from Wheels India Ltd. and thanked them for coming to Jamshedpur to share their experiences with the ER members. Mr. Killol Kamani, Dy. Chairman, ACMA(ER) and MD, Samarth Engineering Co. P. Ltd., thanked all the participants for attending the seminar and expressed his pleasure to see such a huge participation. The first presentation was on Energy Monitoring and Conservation Systems by Mr. Vijay Arora from Asahi India glass Ltd. Mr. Arora, after giving a brief background of his company, discussed in detail the initiatives taken for energy conservation and gave a detailed account of actions taken from the year 2000 onwards and the goals achieved in these years. The second presentation was on Sharing of experience on TPM journey in Rico Auto Industries Ltd. by Mr. D. Nag. Mr. Nag talked briefly about Rico Auto Industries Ltd., customers and products, quality improvement milestones Mr. Nag explained what is TPM-Total Productive Maintenance, TPM goals and TPM pillars, and then discussed in detail the TPM journey of Rico Auto Industries Ltd. started in 2002 with model lines, in 2003, kick off and plant wide implementation started and in 2008 they challenged TPM Award.<br /> The third presentation was on Cost Reduction Through Waste Elimination On Nickel/Chrome Plated RIMS by Mr. S. Nagarajan and Mr. M. S. Amusadhurai of Wheels India Ltd. Mr. S. Nagarajan started with briefing about TVS Group, its products, customers, achievements, manufacturing facilities, constant threat from China and the compelling need to reduce cost by waste elimination.<br /> Mr. Tapas Sahu, Regional Council member, ACMA(ER) and Executive Director of Highco Engineers (P) Ltd. appreciated ACMA''s initiative towards the progress of the auto component industries of the region and Mr. Atul Dua, Regional Council Member, ACMA (ER) and MD, Multitech Auto Ltd. gave away the token of appreciations to all the Executives who gave presentations for ACMA (ER) members. </em></p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/images_2.jpg" border="0" width="150" height="100" /></td>\r\n<td><em><strong>Six Sigma Green Belt- 3rd Batch Certification Programme <br /> Jamshedpur : August 27, 2008</strong> </em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><em> ACMA(ER) organised Six Sigma Green Belt Certification programme in Jamshedpur, to honour the delegates who successfully completed the training given in November- December 2007. Mr. S. K. Behera, Regional Chairman, ACMA(ER) and MD, RSB Transmissions (I) Ltd., while giving the certificates, congratulated all the successful delegates and expressed his hopes that they would contribute to the improvement of their company after finishing this training successfully. Mr. Killol D. Kamani, Dy. Chairman, ACMA(ER) and MD, Samarth Engineering Co. P. Ltd. wished the delegates luck to give quality service in their organisations. </em></p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/images_2.jpg" border="0" width="150" height="100" /></td>\r\n<td><em><strong>Seminar on CNC Machining Process and Its Operations</strong> <br /> Jamshedpur : March 2, 2009 </em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><em> ACMA (ER) organised a Seminar on CNC Machining Process &amp; its Operations, Jamshedpur, on 2nd March 2009. Mr. Atul Dua, Regional Council Member, ACMA (ER) and MD, Multitech Auto Ltd., extended a special welcome to Mr. Rajib Mandal &amp; his team from Taegutec India (P) Ltd. and thanked ACMA for organising such programmes at a subsidised rates in the tough recession time for its members. Mr. Rajib Mandal, Territory Manager of Taegutec India (P) Ltd., explained the basics of CNC Machining process, which are Drilling, Machining, Milling, Tooling, and Parting, etc. In his presentation, he also showed the internal operation of boring and various types of chip formation. </em></p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/images_2.jpg" border="0" width="150" height="100" /></td>\r\n<td><em><strong>Seminar on Welding Techniques</strong> <br /> Jamshedpur : March 18, 2009 </em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><em> Because of a huge demand for a programme on Welding Techniques for both the welders and engineers, ACMA (Eastern Region) organised a seminar on Welding Techniques. Mr. S.K Behera, Regional council member of ACMA-ER and MD, RSB Transmissions (I) Ltd., welcomed the faculty members, Mr. K.K Kashyap, Mr. P.K Kanjilal, and Mr. K.N Singh from Indian Institute of Welding, Jamshedpur. Mr. Behera emphasised the importance of welding by saying that it is an art in the garb of science and since it is a vast subject, one should not take it lightly.<br /> Mr. K.K Kashyap, B.E.(Metallurgy), gave the introduction of different types of welding &amp; its process, talked about inspection before, during &amp; after welding. Addressing the participants, Mr. P.K Kanjilal, B.E. (Mechanical), explained the control and correction of distortion in welding by proper technique and procedure and also discussed the check list for minimizing distortion. Mr. K.N Singh. Divisional Manager, Tata Motors Ltd., laid stress on interaction of welding, where he talked about interaction between all three solid, liquid and gaseous forms and covered the topic Safety in Gas Welding. Mr. Tapas Sahu, Regional Council Member, ACMA (ER) &amp; ED, Highco Engineers P. Ltd., thanked the three faculties from Indian Institute of Welding. </em></p>\r\n<p> </p>', '', 1, 6, 0, 35, '2010-03-06 05:34:16', 62, '', '2011-01-28 11:36:17', 62, 0, '0000-00-00 00:00:00', '2010-03-06 05:34:16', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 129, 0, 5, '', '', 0, 425, 'robots=\nauthor='),
(50, 'cAutomation - Enabling Channels', 'kd', '', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/e-Logic/images_11.jpg" border="0" width="300" height="150" /></td>\r\n<td>\r\n<div class="wrapper">Enterprises are adopting Automation Technologies faster. Document Management Systems, Wireless Communications and Remote Monitoring Technologies are being increasingly adopted to drive effeciencies in Operations.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 6, 0, 35, '2010-03-06 05:35:56', 62, '', '2011-01-28 11:36:35', 62, 0, '0000-00-00 00:00:00', '2010-03-06 05:35:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 56, 0, 4, '', '', 0, 162, 'robots=\nauthor='),
(51, 'cTraining - Training Initiatives in Clusters', 'vjs', '', '<p> </p>\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/images_1.jpg" border="0" width="150" height="100" /></td>\r\n<td>\r\n<p>The Adityapur Industrial Area has premier training institutes. <strong>National Institute of Technology (NIT), Jamshedpur </strong>imparts Engineering Education of various streams to the bright minds of India. From Mechanical and Instrumentation to Metallurgy and Computers. Students are placed in leading Companies and secure a path to great Careers.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><img src="images/stories/autocad3.jpg" border="0" width="150" height="100" /></td>\r\n<td><strong>The MSME Tool Room also known as the Indo Danish Tool Room </strong>imparts training to Shop Floor Professionals. From Design, Fabrication and Casting to System and Network Administration. Graduates from here have made their Careers in leading Automotive and Engineering Companies.</td>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td><img src="images/stories/autocad2.jpg" border="0" width="150" height="125" /></td>\r\n<td>\r\n<p>The Adityapur Auto Cluster is proposing to establish a <strong>Design Lab and Computer Centre</strong>. The Design and Computer center would consist of-</p>\r\n<p>Suitable workstations with required capability,A common server,Appropriate and relevant software         A trainer who can train the engineers from the SMEs in the use of software.         Domain experts in the area of manufacturing of casting, forging and sheet metal         based components, who would be available as and when works comes to AAC.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 6, 0, 35, '2010-03-06 05:37:17', 62, '', '2011-01-18 10:00:14', 62, 0, '0000-00-00 00:00:00', '2010-03-06 05:37:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 61, 0, 3, '', '', 0, 190, 'robots=\nauthor='),
(52, 'cSocial - Connecting Communities', 'khs', '', '<p>Social Networking and Mining among Cluster Professionals using existing Social Networks. Sort Professionals by Name, Industry or Enterprise. Connect and understand the Cluster, Channel and Community in terms of Business, Scale and Talent. Diverse and multifaceted Professionals with expertise of Shop Floor to Frontend Operations. Innovation and Creativity is a part of their Professional Life with a flair for Entrepreneurship and Networking.</p>\r\n<p> </p>\r\n<p>{iframe height="400" width="960" frameborder="1"}http://localhost/ClusterLogic/Clusters/cSocialAIADA.php{/iframe}</p>', '', 1, 6, 0, 35, '2010-03-06 05:38:39', 62, '', '2011-01-29 07:57:22', 62, 0, '0000-00-00 00:00:00', '2010-03-06 05:38:39', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 58, 0, 2, '', '', 0, 170, 'robots=\nauthor='),
(53, 'Infrastructure', 'infra', '', '<p>JUSCO School, where learning comes naturally, made a small beginning in 2005.The school has made progress with leaps and bounds in almost all areas of school education. Spread over an area of 3.56 acres, there is a unique combination of nature and technology within the campus. It is an Institution which is trusted by parents for the overall development of their children.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/spinfrabldg.jpg" border="0" alt="School Building" width="250" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>JUSCO Schools have safe and clean buildings with fresh and bright classrooms set in an attractive safe environment where children can excel and play. A place where aspirations can be achieved in a pleasant environment and where children are free to develop morally, culturally, socially, intellectually, physically and spiritually. The features of the school are :</p>\r\n<p><br /> <strong>The Building</strong></p>\r\n<p>The School building is set amidst greenery. The atmosphere in the school preserves the freshness of childhood. The classrooms are spacious with adequate ventilation and lighting. All the classrooms are arranged in a two storied building. The furniture is suited to the children to their age group.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/JSKinfra1.jpg" border="0" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSK/JSKinfra2.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Playground</strong></p>\r\n<p>The big playground is surrounded by beautiful flowers , plants and shady trees. The children have the opportunity to choose one outdoor activity from Archery and Cricket and one indoor activity from Dancing, Vocals, Drawing, Tabla, Synthesizer. Yoga is compulsory for all. Cubs and Bulbuls is for the students of Classes IV and above.</p>\r\n<p><strong>Educomp</strong></p>\r\n<p>Educomp’s Smartclass is a technology oriented initiative of the school. It provides tools and content for interactive self-paced learning for the students, as well as rich media presentations for teacher-led classroom learning. The students are fascinated and grasp the concepts readily and with ease. Such concepts are retained longer.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/speducomp.jpg" border="0" alt="School Building" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSK/JSKinfra5.jpg" border="0" alt="School Building" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The contents available consist of pedagogically sound and visually rich curriculum resources mapped and customized as per the school’s Scheme of work. This content can be streamlined into the classroom to make abstract concepts real. Teachers can also include their own learning materials for use by their students.</p>\r\n<p>The optional SAS engine available with smart class supports creation and management of question bank and eTests. With this tool teachers create multiple choice questions and deliver them to students. The Knowledge center helps a teacher to first view the modules and then show it to the students.</p>\r\n<p><strong>Computer Knowledge</strong></p>\r\n<p>The School has collaborated with NIIT for technology aided education. The school has around 30 computers and all are connected through LAN.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/spcomplab.jpg" border="0" alt="School Building" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSK/JSKinfra4.jpg" border="0" alt="School Building" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>The children get ample hands-on experience on computers. The LAN connectivity allows knowledge sharing in a easy way for both the students and the teachers. The school has Internet connection from BSNL.</p>\r\n<p><strong>Office Automation</strong></p>\r\n<p>The office is well equipped with essential office automation software, printer and photocopier. Most of the functions make use of LCD projector. The office uses Edisoft to keep the soft copy of its records and teachers use it to keep a record of their marks. The detailed information of every student is instantly available on a mouse click. The teachers are trained to make the best use of technology and develop a scientific mind set.</p>\r\n<p><strong>Library</strong></p>\r\n<p>A library is a heart of any school. The School has a furnished library with a treasure of about 2,000 books and the main focus is to instill in the students an enthusiasm for the joy of reading. The children are issued books according to their standard for a week. Regular reading tests are conducted by the librarian to check their progress and assess for the next level of the books.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/JSKinfra6.jpg" border="0" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSSP/spcurriculum.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>The School Bus</strong></p>\r\n<p>The School has buses to take the students for regular educational field trips. Each class is taken for three educational trips in a year.</p>', '', 1, 7, 0, 36, '2010-03-06 07:09:32', 62, '', '2010-05-10 05:09:00', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:09:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 31, 0, 1, '', '', 0, 58, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(54, 'Faculty', 'fcl', '', '<p>The Faculty at JUSCO School South Park, consists of warm, caring and competent teachers who take pride in the culture and community in Jamshedpur. The competent staff is coupled with new innovative ways of teaching and learning giving a fresh new approach to modern education. The faculty includes:</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/FCTmadhusingh.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Dr. Madhu Singh</strong> is the Principal of the School. She has been with the School for the past 5 years. She is has BSc. and MSc. and PhD. degrees from Benaras Hindu University. She also has a B.Ed degree. She believes in "promoting a supportive environment where students, teachers and parents are safe to take creative risks and work collaboratively for the benefit of the learning community".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/FCTshashisingh.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Shashi Singh</strong> has been with the School for the past 5 years. She is a BSc. from Delhi University, MSc. from S.M.U and a BEd. She believes in " becoming a leader in my school, helping transform it into the most preferred school in the city and to provide multitude of ways for teachers to plan, collaborate, innovate and have fun, while at the same time being the best mother and wife I can be".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/FCTaninditaroy.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Anindita Roy</strong> has been with the School for the past 5 years. She is a BA and MA in English from Ranchi University and a BEd. She believes in "being a fantastic teacher who makes learning a joy for ever".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/FCTmilisinha.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Mili Sinha</strong> has been with the School for the past 4 years. She is a BSc. in Chemistry from Delhi University, MSc. from  Benaras Hindu University, A B.Ed. from Ranchi University, and a PGDCA in the German Language. She believes in "excelling in all spheres of life".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/FCTgibikochappam.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Gibi Kochappan</strong> has been with the School for the past 4 years. She is a BA in Economics from Calcutta University and a BEd. from Ranchi University. She believes in "excelling in everything I do".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/FCTrajanikumar.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Rajani Kumar</strong> has been with the School for the past 5 years. She is a BA in Geology and a BEd. from North Bihar University. She believes in "excelling in whatever I do".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/FCTanupamakumar.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Anupama Kumar</strong> has been with the School for the past 4 years. She is a B.A in History, PSc and BEd. from Utkal University. She believes in "making learning more meaningful and fun for my students and to strive for their continual improvement."</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/FCTsomabanerjee.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Soma Banerjee</strong> has been with the School for the past 3 years. She is a BSc.,MSc.and BEd. from Ranchi University. She believes in " never giving up as the sky is not the limit".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/FCTkeyadas.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Keya Das </strong>has been with the School for the past 4 years. She is a BA in History from Jadavpur University and a BEd. from Ranchi University. She believes in " being a life long learner and a performer".</p>', '', 1, 7, 0, 37, '2010-03-06 07:12:02', 62, '', '2010-05-08 06:10:41', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:12:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 39, 0, 1, '', '', 0, 53, 'robots=\nauthor='),
(55, 'A Message from the Principal', 'mp', '', '<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/JSSPprincipal.jpg" border="1" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>" To my mind an educational instituite is not just about bricks, mortar and concrete, but about building character, enriching minds and about enriching    experiences that lasts a lifetime.<br /><br />Frequently I am asked what makes JUSCO Schools so special. My answer is quite simple - people. The people who are at JUSCO School provide a wonderful place where youth and experience come together for the singular purpose of learning about life and living.<br /><br />Life is not a set of instructions but is a series of experiences and learning process. This is where JUSCO School steps in – to make a difference and where learning is not just series of instructions but a passion, which goes beyond books, beyond instructions, beyond learning horizons.<br /><br />We believe in learning by capturing set of experiences and enable one to explore new realms of wisdom. It is truly a wonderful learning community. Our dedicated teachers and staff work closely with our students in bringing quality education to every student.<br /><br />The unified diversity element among student projects the integrated spectrum of prototype India as most of the students belong to the states of differing language and local culture gather with single minded focus to succeed in life.<br /><br />With a student strength of 1200 plus, the efforts are directed to accommodate and address the expectations of each student.<br /><br />The two values that guide our work are excellence and inclusion.<br /><br />Excellence in all that we do and expect. Inclusion of all members of our school community through respect, tolerance and recognition of difference.<br /><br />I am privileged to be the principal of the community at JUSCO School and to be able to daily observe the dynamic interaction of its members. Henry David Thoreau said, "If you have built castles in the air, your work need not be lost; that is where they should be. Now put foundations under them." We believe the education we offer is the foundation upon which students may build their dreams. "</p>\r\n<p> </p>\r\n<p>Dr. Madhu Singh<br /> Principal,<br /> JUSCO School South Park</p>', '', 1, 7, 0, 38, '2010-03-06 07:12:58', 62, '', '2010-03-23 06:14:11', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:12:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 16, 0, 1, '', '', 0, 37, 'robots=\nauthor='),
(56, 'Curriculum', 'cr', '', '<p> </p>\r\n<p>The curriculum in South Park School is as per the guidelines set by the NCERT &amp; State Educational Board. The school believes in experiential learning where a child follows the urge of his instinct and is directed towards the vision of the school. “Tell me, I forget; Show me, I remember; Involve me, I understand" is what the children of JUSCO Schools uphold.</p>\r\n<p style="margin-bottom: 0cm; line-height: 115%;" align="JUSTIFY"> </p>\r\n<p><strong>Grey Caps for GK Development and XSEED for Learning</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/spcurriculum.jpg" border="0" width="200" height="175" /></td>\r\n<td><img src="images/stories/JSSP/xseed.jpg" border="0" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The XSEED curriculum being followed in the school unleashes the young minds. Here everything is learned and nothing is taught. The environment of the school is conducive for the learning and growth potential of children with different learning styles. The knowledge acquired by experiential learning makes the children competent and confident.</p>\r\n<p><strong>NIIT for Computer Education and Educomp for Multimedia Learning</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/niitfaculty.jpg" border="1" width="250" height="175" /></td>\r\n<td><img src="images/stories/JSSP/educomp.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 7, 0, 39, '2010-03-06 07:14:39', 62, '', '2010-05-10 05:10:22', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:14:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 24, 0, 5, '', '', 0, 50, 'robots=\nauthor='),
(57, 'Time Table', 'tt', '', '<p>Article - Time Table</p>', '', 1, 7, 0, 39, '2010-03-06 07:17:47', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-06 07:17:47', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 4, '', '', 0, 0, 'robots=\nauthor='),
(58, 'Procedures and Downloads', 'fees', '', '<p>Article - Procedures and Downloads</p>', '', 1, 7, 0, 39, '2010-03-06 07:19:02', 62, '', '2010-04-30 05:24:42', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:19:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(59, 'Booklist', 'bk', '', '<p>Article - Book List</p>', '', 1, 7, 0, 39, '2010-03-06 07:20:05', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-06 07:20:05', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(60, 'XSEED', 'xseed', '', '<p>Article - XSEED</p>', '', 1, 7, 0, 39, '2010-03-06 07:21:35', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-06 07:21:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(61, 'Games and Sports', 'gns', '', '<p> </p>\r\n<p>JUSCO Schools give a special impetus to Games ans Sports for the students to develop an all-round personality. The spirit of competitiveness and team work is nurtured in the students which help them to take on the challenges of life.</p>\r\n<p>The School Events bring out the talent in the students and the School gives active encouragement to the students to pursue their dreams.</p>\r\n<p><strong>Runner''s Up  in the JRD TATA Archery Competition </strong></p>\r\n<p><strong>and First Prize in  the Open Jamshedpur Yoga Competition</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/archery.jpg" border="2" width="150" height="150" /></td>\r\n<td></td>\r\n<td><img src="images/stories/JSSP/yoga.jpg" border="2" width="150" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>In these settings, the students learn a wide range of professional, leadership, and life skills.<br />The commitment of the school to the all round development of the child is strong. We offer the following co-curricular activities throughout the year to the students.</p>\r\n<p style="margin-bottom: 0cm;" lang="en"><span style="font-size: x-small;"><br /></span></p>\r\n<!-- .style6 {  	font-family: Arial, Helvetica, sans-serif;  	text-align: center;  }  .style9 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 12px; }  .style16 {font-size: 10px}  .style17 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 10px; } --> \r\n<table class="style6" border="1" width="58%">\r\n<tbody>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">Group A (Indoor Activity)</span></strong></td>\r\n<td width="10%" align="center"><strong><span class="style9">Group B (Outdoor Activity)</span></strong></td>\r\n<td width="9%" align="center"><strong><span class="style9">Group C (Club Activities for Std. VI and above)</span></strong></td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Dance</td>\r\n<td class="style9" align="center"><span class="style16">Archery</span></td>\r\n<td class="style9" align="center"><span class="style16">Eco Club</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Synthesizer</td>\r\n<td class="style17" align="center">Cricket</td>\r\n<td class="style17" align="center">Dramatics Club</td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Tabla</td>\r\n<td class="style17" align="center">Cubs and Bulbuls</td>\r\n<td class="style17" align="center">G.K. Club</td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Drawing</td>\r\n<td class="style17" align="center">Chess</td>\r\n<td class="style17" align="center">Math Club</td>\r\n</tr>\r\n<tr valign="top">\r\n<td class="style17" align="center">Singing</td>\r\n<td class="style17" align="center">Table Tennis</td>\r\n<td class="style17" align="center">Guides and Scouts</td>\r\n</tr>\r\n<tr valign="top">\r\n<td class="style17" align="center">Guitar</td>\r\n<td class="style17" align="center">Yoga</td>\r\n<td class="style17" align="center"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', '', 1, 7, 0, 40, '2010-03-06 07:22:46', 62, '', '2010-05-08 06:29:25', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:22:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 11, 0, 3, '', '', 0, 5, 'robots=\nauthor='),
(62, 'Environmental Activities', 'ea', '', '<p>Article - Environmental Activities</p>', '', 1, 7, 0, 40, '2010-03-06 07:24:36', 62, '', '2010-03-23 06:16:03', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:24:36', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(63, 'Culture and Environment', 'ca', '', '<p> </p>\r\n<p>JUSCO Schools take special pride in the culture of Jamshedpur. The Schools nurture its students to be loving, caring and responsible citizens of the Country. The Cultural Events in the School encourage the students to embrace the traditions and festivals of a diverse Country.</p>\r\n<p><strong>First Prize in the Inter-School Science and Quality Competitions</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/schoolscience2.jpg" border="2" width="250" height="175" /></td>\r\n<td><img src="images/stories/JSSP/quality.jpg" border="2" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>What goes on in the classrooms, makes a major contribution to the formation of character and values among students who will go on to become the sun and light in the world. However, the classroom experience is just one part of the School experience. Values and character are inculcated through the School''s various co-curricular activities.</p>\r\n<p>Responsibility to the Environment is a pillar in our Principles. Students are encouraged to take part in various Quality Programs and Green Initiatives. Responsibility to the Environment is an integral part of the culture in the JUSCO Schools.</p>\r\n<p><strong>Environmental Policy and the Yellow Leaf Green Schools Program</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/envpolicy.jpg" border="2" width="200" height="175" /></td>\r\n<td></td>\r\n<td><img src="images/stories/JSSP/green.jpg" border="2" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>In these settings, the students learn a wide range of professional, leadership, and life skills.<br />The commitment of the school to the all round development of the child is strong. We offer the following co-curricular activities throughout the year to the students.</p>\r\n<p style="margin-bottom: 0cm;" lang="en"><span style="font-size: x-small;"><br /></span></p>\r\n<!-- .style6 {  	font-family: Arial, Helvetica, sans-serif;  	text-align: center;  }  .style9 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 12px; }  .style16 {font-size: 10px}  .style17 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 10px; } --> \r\n<table class="style6" border="1" width="58%">\r\n<tbody>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">Group A (Indoor Activity)</span></strong></td>\r\n<td width="10%" align="center"><strong><span class="style9">Group B (Outdoor Activity)</span></strong></td>\r\n<td width="9%" align="center"><strong><span class="style9">Group C (Club Activities for Std. VI and above)</span></strong></td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Dance</td>\r\n<td class="style9" align="center"><span class="style16">Archery</span></td>\r\n<td class="style9" align="center"><span class="style16">Eco Club</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Synthesizer</td>\r\n<td class="style17" align="center">Cricket</td>\r\n<td class="style17" align="center">Dramatics Club</td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Tabla</td>\r\n<td class="style17" align="center">Cubs and Bulbuls</td>\r\n<td class="style17" align="center">G.K. Club</td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Drawing</td>\r\n<td class="style17" align="center">Chess</td>\r\n<td class="style17" align="center">Math Club</td>\r\n</tr>\r\n<tr valign="top">\r\n<td class="style17" align="center">Singing</td>\r\n<td class="style17" align="center">Table Tennis</td>\r\n<td class="style17" align="center">Guides and Scouts</td>\r\n</tr>\r\n<tr valign="top">\r\n<td class="style17" align="center">Guitar</td>\r\n<td class="style17" align="center">Yoga</td>\r\n<td class="style17" align="center"></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 7, 0, 40, '2010-03-06 07:25:46', 62, '', '2010-05-08 06:39:34', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:25:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 54, 0, 1, '', '', 0, 82, 'robots=\nauthor='),
(64, 'Vision, Mission and Values', 'ms', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JUSCOlogo.gif" border="1" width="75" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><strong>VISION:</strong><br /> <br />" To be a learning Institution of choice providing value based education that nurtures individual talent and potential of students, enabling them to be life long learners and excel in their chosen fields. "</p>\r\n<p><strong>MISSION :</strong><br /><br />" Quality Education for Life "</p>\r\n<p><br /><strong>VALUES:</strong></p>\r\n<ol>\r\n<li>Nationalism</li>\r\n<li>Honesty and Integrity</li>\r\n<li>Protection and Conservation of Environment</li>\r\n<li>Pursuit of Excellence</li>\r\n<li>Compassion</li>\r\n</ol>\r\n<p><br /><strong>SCHOOL MOTTO:</strong></p>\r\n<p>" Noble Intent; Loving Heart; Fearless Mind "<br /><br /><strong>OBJECTIVE / STATEMENT OF PURPOSE:</strong></p>\r\n<ol>\r\n<li>To cultivate, recognize, and respect the opinions and contributions of child, parent, and teacher.</li>\r\n<li>To provide a safe, nurturing environment for learning where individuality is recognized and diversity is celebrated.</li>\r\n<li>To provide instruction that encourages development of each child''s practical, cognitive, physical, social, and moral potential.</li>\r\n<li>To present a curriculum that is intellectually stimulating and developmentally appropriate.</li>\r\n<li>To encourage initiative, self-discipline, critical thinking and creative approaches to problem-solving.</li>\r\n<li>To foster the values of good citizenship through community service, civic awareness, and development of leadership potential. </li>\r\n<li>To foster loyalty, mutual respect and respect for all mankind </li>\r\n<li>To foster respect for the environment. </li>\r\n<li>To encourage parents to support the educational efforts of the school and to utilize the structures offered to ensure positive parental involvement. </li>\r\n<li>To encourage close partnership with parents and management to ensure that the aims of the school are achieved.</li>\r\n</ol>\r\n<p> </p>', '', 1, 7, 0, 41, '2010-03-06 07:28:46', 62, '', '2010-05-03 06:01:28', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:28:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 17, 0, 2, '', '', 0, 24, 'robots=\nauthor='),
(65, 'Vision', 'vs', '', '<p>Article - Vision</p>', '', -2, 7, 0, 41, '2010-03-06 07:29:33', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-06 07:29:33', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(66, 'Policies', 'pl', '', '<p>Article - Policies</p>', '', -2, 7, 0, 41, '2010-03-06 07:30:23', 62, '', '2010-05-03 05:50:52', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:30:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(67, 'Students Code of Conduct', 'coc', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JUSCOlogo.gif" border="1" width="75" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>1. NATIONALISM</strong></p>\r\n<ul>\r\n<li>I shall respect our national heritage and take care of it.</li>\r\n<li>I will not entertain or allow any thought, words or deeds harmful to the nation.</li>\r\n<li>I shall imbibe national values and virtues.</li>\r\n<li>I shall value the freedom of my country and protect it.</li>\r\n</ul>\r\n<p><br /><strong>2. PROTECTION AND CONSERVATION OF ENVIRONMENT</strong></p>\r\n<ul>\r\n<li>I shall preserve forest, garden and fields.</li>\r\n<li>I shall plant trees and never cut them.</li>\r\n<li>I shall use nature''s resource judiciously and guard against undue depletion.</li>\r\n<li>I shall not pollute the Earth, its water or air.</li>\r\n</ul>\r\n<p><br /><strong>3. COMPASSION</strong></p>\r\n<ul>\r\n<li>I will love and respect all fellow humans.</li>\r\n<li>I will share my good fortune with people who have fewer blessings than me in life.</li>\r\n<li>I will love and protect all God''s creatures, whose presence ensures a balance on our planet.</li>\r\n<li>I will voluntarily contribute my services to organisations that serve society.</li>\r\n</ul>\r\n<p><br /><strong>4. HONESTY AND INTEGRITY</strong></p>\r\n<ul>\r\n<li>I shall not indulge in any malpractice during my assessment.</li>\r\n<li>I will take responsibility of all work that is given to me.</li>\r\n<li>I will stand by the truth at all times.</li>\r\n<li>I will report any breach of conduct to my superiors whenever I see one.</li>\r\n<li>I shall not knowingly or unknowingly lead any peer to break school rules.</li>\r\n</ul>\r\n<p><br /><strong>5. PURSUIT OF EXCELLENCE</strong></p>\r\n<ul>\r\n<li>I shall always remain committed to my academic duties.</li>\r\n<li>I will not compromise on my academic performance.</li>\r\n<li>I will strive to perform to the best of my abilities at all times.</li>\r\n<li>I will build on my strengths and will accept my weaknesses so as to change them into my strengths.</li>\r\n</ul>\r\n<p> </p>', '', 1, 7, 0, 41, '2010-03-06 07:31:20', 62, '', '2010-03-22 06:09:18', 62, 0, '0000-00-00 00:00:00', '2010-03-06 07:31:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 10, 0, 1, '', '', 0, 6, 'robots=\nauthor='),
(157, 'Chandigarh Web Cluster', 'jemf', '', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/student1.jpg" border="0" width="150" height="150" /></td>\r\n<td>\r\n<p><br /> The Chandigarh Web cluster consists of about 200 Enterprises in Offshore Software Development Business. The Rajiv Gandhi Chandigarh Technology Park consists of several of these Startups.<br /> Web Sites, Web Applications, iPhone, Android and Blackbery Apps are developed here by software professionals. Projects are Outsourced from the United States, United Kingdom, Europe and Hong Kong. <br /> Development Platforms include Drupal, Joomla, WordPress, CakePHP, Zend, Symfony among others. iPhone and Android apps development is on J2ME platforms. <br /> The BPO and KPO Industry is seeing robust growth. Customer Support, System and Network Administration Support, Tech Support, Healthcare, Medical Transcription and Recruitment are the sectors of Growth.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 6, 0, 101, '2010-05-03 07:57:07', 62, '', '2011-01-28 10:27:47', 62, 0, '0000-00-00 00:00:00', '2010-05-03 07:57:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 57, 0, 4, '', '', 0, 189, 'robots=\nauthor='),
(159, 'cProgrammes - Empowering Clusters', 'cprojects', '', '<p> </p>\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/images_3.jpg" border="0" width="150" height="150" /></td>\r\n<td>\r\n<p><strong>Source: Markelogy</strong><br />L-pad, the brainchild of Mohit Bansal, launched in 2009, runs a 6-month program on how to start, manage &amp; run your own venture. Backed by a mentor panel, the program brings together startup junkies and experienced professionals from Chandigarh &amp; across India, to help convert ideas into reality. The program is a combination of interactive sessions, incubation and mentoring. Morpheus Venture Partners is also involved.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><img src="images/stories/images_4.jpg" border="0" width="150" height="150" /></td>\r\n<td>\r\n<p>Selected projects go through a process of pre-incubation, incubation and then graduation. The program includes mentoring entrepreneurs and introducing them to potential investors, among other things. It offers Space, mentorship and services. In addition, one gets exposure, community support, media outreach, access to classified resources, product validation, subsidized start-up ‘Must-Haves’ such as hosting, incorporation designing etc that help the participants get their start-up rolling.</p>\r\n<p>The panel does include a few VCs. Participants get 6-month long intensive engagement, 6 months mentorship (done remotely), and a life-long association, as L-pad continues to work with participants on an as needed basis.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><img src="images/stories/images_6.jpg" border="0" width="150" height="150" /></td>\r\n<td>\r\n<p>The Plug &amp; Play facility covering a 2500 SqFt area is designed to host up to 30 participants at a time, and includes a shared conference room and break room, flexible office suites and a classroom. (Images attached below)   Another stated objective of L-pad is to initiate and facilitate an already energized start-up community &amp; eco-system in Chandigarh region and to establish Chandigarh as the first destination for entrepreneurs to start their venture. L-pad is all about promoting entrepreneurship.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 6, 0, 101, '2011-01-28 10:29:21', 62, '', '2011-01-28 11:35:27', 62, 0, '0000-00-00 00:00:00', '2011-01-28 10:29:21', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 6, 0, 2, '', '', 0, 6, 'robots=\nauthor='),
(160, 'cAutomation - Enabling Channels', 'cautomation-enabling-channels', '', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/e-Logic/images_11.jpg" border="0" width="300" height="150" /></td>\r\n<td>\r\n<div class="wrapper">Enterprises are adopting Automation Technologies faster. Document Management Systems, Wireless Communications and Remote Monitoring Technologies are being increasingly adopted to drive effeciencies in Operations.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 6, 0, 101, '2011-01-28 11:36:52', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-28 11:36:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 1, 'robots=\nauthor='),
(69, 'Performance Index', 'tpi', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/pastarchives.jpg" border="0" width="150" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>JUSCO Schools follow a rigid curriculum in which students are actively engaged. Tests and examinations are conducted regularly to monitor the progress of the students. Feedback between parents and teachers is done through regular meetings. The high standards of academic excellence reflects in the in the results for all Classes and Streams.</p>\r\n<p><strong>Results</strong></p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/cpi3.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!--p><b>Ist Term Performance Index ( 2009 - 10 )<br /></b></p>\r\n<table class="style6" border="1" width="50%">\r\n<tbody>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">Class</span></b></td>\r\n<td width="10%" align="center"><b>English</b></td>\r\n<td width="9%" align="center"><b>Hindi</b></td>\r\n<td width="10%" align="center"><b>Maths</b></td>\r\n<td width="10%" align="center">\r\n<p><b>Theme/</b></p>\r\n<p><b>Science</b></p>\r\n</td>\r\n<td width="9%" align="center"><b>Comp.</b></td>\r\n<td width="10%" align="center"><b>G.K.</b></td>\r\n<td width="10%" align="center"><b>Social Studies</b></td>\r\n<td width="9%" align="center"><b>Sanskrit</b></td>\r\n<td width="10%" align="center"><b>Ev./Ed.</b></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">LKG A</span></b></td>\r\n<td width="10%" align="center">79</td>\r\n<td width="9%" align="center">NA</td>\r\n<td width="10%" align="center">84</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">LKG B</span></b></td>\r\n<td width="10%" align="center">97</td>\r\n<td width="9%" align="center">NA</td>\r\n<td width="10%" align="center">78</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">LKG C</span></b></td>\r\n<td width="10%" align="center">76</td>\r\n<td width="9%" align="center">NA</td>\r\n<td width="10%" align="center">80</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">LKG D</span></b></td>\r\n<td width="10%" align="center">72</td>\r\n<td width="9%" align="center">NA</td>\r\n<td width="10%" align="center">73</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">UKG A</span></b></td>\r\n<td width="10%" align="center">67</td>\r\n<td width="9%" align="center">75.8</td>\r\n<td width="10%" align="center">84</td>\r\n<td width="10%" align="center">74</td>\r\n<td width="9%" align="center">68</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">UKG B</span></b></td>\r\n<td width="10%" align="center">56</td>\r\n<td width="9%" align="center">70.2</td>\r\n<td width="10%" align="center">80</td>\r\n<td width="10%" align="center">73</td>\r\n<td width="9%" align="center">69</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">UKG C</span></b></td>\r\n<td width="10%" align="center">65</td>\r\n<td width="9%" align="center">73.5</td>\r\n<td width="10%" align="center">90</td>\r\n<td width="10%" align="center">74</td>\r\n<td width="9%" align="center">73</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">I A</span></b></td>\r\n<td width="10%" align="center">43</td>\r\n<td width="9%" align="center">70.2</td>\r\n<td width="10%" align="center">89</td>\r\n<td width="10%" align="center">69</td>\r\n<td width="9%" align="center">78</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">I B</span></b></td>\r\n<td width="10%" align="center">46</td>\r\n<td width="9%" align="center">67.7</td>\r\n<td width="10%" align="center">95</td>\r\n<td width="10%" align="center">60</td>\r\n<td width="9%" align="center">65</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">I C</span></b></td>\r\n<td width="10%" align="center">54</td>\r\n<td width="9%" align="center">71.6</td>\r\n<td width="10%" align="center">90</td>\r\n<td width="10%" align="center">65</td>\r\n<td width="9%" align="center">64</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">II A</span></b></td>\r\n<td width="10%" align="center">57</td>\r\n<td width="9%" align="center">47.7</td>\r\n<td width="10%" align="center">71</td>\r\n<td width="10%" align="center">50</td>\r\n<td width="9%" align="center">69</td>\r\n<td width="10%" align="center">58</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">II B</span></b></td>\r\n<td width="10%" align="center">44</td>\r\n<td width="9%" align="center">40.0</td>\r\n<td width="10%" align="center">67</td>\r\n<td width="10%" align="center">61</td>\r\n<td width="9%" align="center">66</td>\r\n<td width="10%" align="center">59</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">II C</span></b></td>\r\n<td width="10%" align="center">46</td>\r\n<td width="10%" align="center">44.7</td>\r\n<td width="9%" align="center">62</td>\r\n<td width="10%" align="center">54</td>\r\n<td width="10%" align="center">49</td>\r\n<td width="9%" align="center">46</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">III A</span></b></td>\r\n<td width="10%" align="center">39</td>\r\n<td width="9%" align="center">64.0</td>\r\n<td width="10%" align="center">84</td>\r\n<td width="10%" align="center">44</td>\r\n<td width="9%" align="center">62</td>\r\n<td width="10%" align="center">46</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">III B</span></b></td>\r\n<td width="10%" align="center">37</td>\r\n<td width="9%" align="center">58.6</td>\r\n<td width="10%" align="center">72</td>\r\n<td width="10%" align="center">39</td>\r\n<td width="9%" align="center">62</td>\r\n<td width="10%" align="center">54</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">IV</span></b></td>\r\n<td width="10%" align="center">39</td>\r\n<td width="9%" align="center">63.5</td>\r\n<td width="10%" align="center">75</td>\r\n<td width="10%" align="center">44</td>\r\n<td width="9%" align="center">55</td>\r\n<td width="10%" align="center">60</td>\r\n<td width="10%" align="center">42.8</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">V</span></b></td>\r\n<td width="10%" align="center">50</td>\r\n<td width="9%" align="center">62.4</td>\r\n<td width="10%" align="center">75</td>\r\n<td width="10%" align="center">46</td>\r\n<td width="9%" align="center">67</td>\r\n<td width="10%" align="center">62</td>\r\n<td width="10%" align="center">45.6</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">VI</span></b></td>\r\n<td width="10%" align="center">48</td>\r\n<td width="9%" align="center">64.0</td>\r\n<td width="10%" align="center">72</td>\r\n<td width="10%" align="center">63</td>\r\n<td width="9%" align="center">67</td>\r\n<td width="10%" align="center">79</td>\r\n<td width="10%" align="center">44.3</td>\r\n<td width="9%" align="center">76</td>\r\n<td width="10%" align="center">55</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">VII</span></b></td>\r\n<td width="10%" align="center">45</td>\r\n<td width="9%" align="center">71.0</td>\r\n<td width="10%" align="center">50</td>\r\n<td width="10%" align="center">70</td>\r\n<td width="9%" align="center">58</td>\r\n<td width="10%" align="center">92</td>\r\n<td width="10%" align="center">55.7</td>\r\n<td width="9%" align="center">78</td>\r\n<td width="10%" align="center">58</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><b><span class="style9">School Avg.</span></b></td>\r\n<td width="10%" align="center"><b>51</b></td>\r\n<td width="9%" align="center"><b>64.0</b></td>\r\n<td width="10%" align="center"><b>51</b></td>\r\n<td width="10%" align="center"><b>60</b></td>\r\n<td width="9%" align="center"><b>68</b></td>\r\n<td width="10%" align="center"><b>69</b></td>\r\n<td width="10%" align="center"><b>47.1</b></td>\r\n<td width="9%" align="center"><b>76</b></td>\r\n<td width="10%" align="center"><b>57</b></td>\r\n</tr>\r\n</tbody>\r\n</table-->', '', 1, 7, 0, 46, '2010-03-11 07:45:20', 62, '', '2010-05-02 08:49:55', 62, 0, '0000-00-00 00:00:00', '2010-03-11 07:45:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 17, 0, 2, '', '', 0, 22, 'robots=\nauthor='),
(68, 'Our Stars', 'sa', '', '<p> </p>\r\n<p>JUSCO School South Park takes immense pride of in every teacher and student who is part of the Institution. We nurture the talent and creativity of every student to fulfill her dreams and feel overwhelmed when students brings back accolades with their accomplishments.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/STabhinavchowdhary.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Abhinav Chowdhary</strong> of Class VI secured a 95.39 percentile score and a city rank of 11 in the National Science Olympiad - Level I in 2008 and a All India Rank of 1147 in Level II.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/STshreyakriti.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Shreya Kriti</strong> of class VI secured a 96.41 percentile score and a city rank of 15 in the National Science Olympiad - Level I in 2008.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/STkamilakbar.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Md. Kamil Akbar</strong> of class III secured a 92.64 percentile score and a City Rank of 8 in the National Science Olympiad 2008 - Level I and an All India Rank of 621 in Level II and secured a 92.10 percentile score and a City Rank of 16 in the International Maths Olympiad 2008 - Level I.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/STshibanaheed.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Shiba Naheed</strong> of Class IV secured a 92.28 percentile score and a City Rank of 18 in the National Science Olympiad 2008 - and an All India Rank of 631 in Level II</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/STarchanakumari.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Archana Kumari</strong> of Class III secured a 99.13 percentile score and a City Rank of 1 in the International Maths Olympiad 2008 - Level I.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/STrishichowdhury.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Rishi Chowdhury</strong> of Class IV secured a 96.54 percentile score and a City Rank of 10 in the International Maths Olympiad 2008 - Level I.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/STutkarshgupta.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Utkarsh Gupta</strong> of Class III secured a 90.73 percentile score and a City Rank of 20 in the International Maths Olympiad 2008 - Level I.</p>', '', 1, 7, 0, 45, '2010-03-08 10:30:08', 62, '', '2010-05-08 06:39:58', 62, 0, '0000-00-00 00:00:00', '2010-03-08 10:30:08', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 29, 0, 1, '', '', 0, 42, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(152, 'Awards and Recognitions', 'anr', '', '<p> </p>\r\n<p>JUSCO School South Park has garnered a host of awards in a short time. The Dr. J.J. Irani Award for Excellence in Education is given to Institutions which have achieved high Quality Standards in the field of education and have achieved a level of scale and sustainability that can enrich the community for a long term.</p>\r\n<p>JUSCO School South Park has been awarded this distinction in 2008 and 2009.</p>\r\n<p><strong>Accomplishments &amp; Accolades - Dr. J.J. Irani Award for Excellence in Education 2008 and 2009<br /></strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/JSSPee.jpg" border="2" width="200" height="150" /></td>\r\n<td></td>\r\n<td><img src="images/stories/JSSP/JSSPee0.jpg" border="2" width="200" height="150" /></td>\r\n<td></td>\r\n<td><img src="images/stories/JSSP/JSSPee1.jpg" border="2" width="200" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>What goes on in the classrooms makes a major contribution to the formation of character and values among students who will go on to become salt and light in the world. However, the classroom experience is just one part of the school experience. Values and character are inculcated also through schools'' various co-curricular activities.<br /><br /></p>\r\n<p><strong>Runner''s Up JRD TATA Archery Competition </strong></p>\r\n<p><strong>and First Prize in Open Jamshedpur Yoga Competition</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/archery.jpg" border="2" width="175" height="125" /></td>\r\n<td></td>\r\n<td><img src="images/stories/JSSP/yoga.jpg" border="2" width="175" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Co-curricular activities are essential in providing quality education to better prepare students for their transition into the working environment and in facing future challenges in this rapidly changing world.<br /><br /></p>\r\n<p><strong>First Prize in Inter-School Science Competition</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/schoolscience.jpg" border="2" width="175" height="125" /></td>\r\n<td><img src="images/stories/JSSP/schoolscience2.jpg" border="2" width="175" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Co-curricular activities develop leadership, time management, teamwork, interpersonal communication, and other skills. These experiences and activities outside of the classroom are directly related to their career development in the future. In essence, the co-curricular programming promotes students participation in activities that supplement developmental goals through issue-oriented and educational programs, and skill-building opportunities.</p>\r\n<p> </p>\r\n<p><strong>First Prize in Inter-School Quality Competition</strong></p>\r\n<p><strong> and Yellow Leaf Green Schools Program</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/quality.jpg" border="2" width="175" height="125" /></td>\r\n<td></td>\r\n<td><img src="images/stories/JSSP/green.jpg" border="2" width="175" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', '', 1, 7, 0, 42, '2010-03-23 06:57:12', 62, '', '2010-05-11 07:33:02', 62, 0, '0000-00-00 00:00:00', '2010-03-23 06:57:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 11, 0, 1, '', '', 0, 19, 'robots=\nauthor='),
(70, 'Class Performance Index II', 'cpii', '', '<p> </p>\r\n<p><strong>II Term Performance Index ( 2009 - 10 )</strong></p>\r\n<table class="style6" border="1" width="50%">\r\n<tbody>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">Class</span></strong></td>\r\n<td width="10%" align="center"><strong>English</strong></td>\r\n<td width="9%" align="center"><strong>Hindi</strong></td>\r\n<td width="10%" align="center"><strong>Maths</strong></td>\r\n<td width="10%" align="center">\r\n<p><strong>Theme/</strong></p>\r\n<p><strong>Science</strong></p>\r\n</td>\r\n<td width="9%" align="center"><strong>Comp.</strong></td>\r\n<td width="10%" align="center"><strong>G.K.</strong></td>\r\n<td width="10%" align="center"><strong>Social Studies</strong></td>\r\n<td width="9%" align="center"><strong>Sanskrit</strong></td>\r\n<td width="10%" align="center"><strong>Ev./Ed.</strong></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">LKG A</span></strong></td>\r\n<td width="10%" align="center">82</td>\r\n<td width="9%" align="center">NA</td>\r\n<td width="10%" align="center">93</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">LKG B</span></strong></td>\r\n<td width="10%" align="center">92</td>\r\n<td width="9%" align="center">NA</td>\r\n<td width="10%" align="center">94</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">LKG C</span></strong></td>\r\n<td width="10%" align="center">81</td>\r\n<td width="9%" align="center">NA</td>\r\n<td width="10%" align="center">95</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">LKG D</span></strong></td>\r\n<td width="10%" align="center">67</td>\r\n<td width="9%" align="center">NA</td>\r\n<td width="10%" align="center">90</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">UKG A</span></strong></td>\r\n<td width="10%" align="center">75</td>\r\n<td width="9%" align="center">47.6</td>\r\n<td width="10%" align="center">86</td>\r\n<td width="10%" align="center">77</td>\r\n<td width="9%" align="center">78</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">UKG B</span></strong></td>\r\n<td width="10%" align="center">82</td>\r\n<td width="9%" align="center">54.7</td>\r\n<td width="10%" align="center">89</td>\r\n<td width="10%" align="center">92</td>\r\n<td width="9%" align="center">80</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">UKG C</span></strong></td>\r\n<td width="10%" align="center">81</td>\r\n<td width="9%" align="center">63.1</td>\r\n<td width="10%" align="center">91</td>\r\n<td width="10%" align="center">92</td>\r\n<td width="9%" align="center">59</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">I A</span></strong></td>\r\n<td width="10%" align="center">39</td>\r\n<td width="9%" align="center">62.1</td>\r\n<td width="10%" align="center">88</td>\r\n<td width="10%" align="center">70</td>\r\n<td width="9%" align="center">76</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">I B</span></strong></td>\r\n<td width="10%" align="center">36</td>\r\n<td width="9%" align="center">59.1</td>\r\n<td width="10%" align="center">93</td>\r\n<td width="10%" align="center">51</td>\r\n<td width="9%" align="center">64</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">I C</span></strong></td>\r\n<td width="10%" align="center">43</td>\r\n<td width="9%" align="center">62.8</td>\r\n<td width="10%" align="center">85</td>\r\n<td width="10%" align="center">62</td>\r\n<td width="9%" align="center">65</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">II A</span></strong></td>\r\n<td width="10%" align="center">38</td>\r\n<td width="9%" align="center">50.0</td>\r\n<td width="10%" align="center">59</td>\r\n<td width="10%" align="center">47</td>\r\n<td width="9%" align="center">68</td>\r\n<td width="10%" align="center">49</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">II B</span></strong></td>\r\n<td width="10%" align="center">46</td>\r\n<td width="9%" align="center">50.9</td>\r\n<td width="10%" align="center">57</td>\r\n<td width="10%" align="center">57</td>\r\n<td width="9%" align="center">61</td>\r\n<td width="10%" align="center">54</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">II C</span></strong></td>\r\n<td width="10%" align="center">43</td>\r\n<td width="10%" align="center">47.3</td>\r\n<td width="9%" align="center">60</td>\r\n<td width="10%" align="center">57</td>\r\n<td width="10%" align="center">66</td>\r\n<td width="9%" align="center">49</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">III A</span></strong></td>\r\n<td width="10%" align="center">54</td>\r\n<td width="9%" align="center">62.6</td>\r\n<td width="10%" align="center">74</td>\r\n<td width="10%" align="center">65</td>\r\n<td width="9%" align="center">67</td>\r\n<td width="10%" align="center">57</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">III B</span></strong></td>\r\n<td width="10%" align="center">40</td>\r\n<td width="9%" align="center">58.5</td>\r\n<td width="10%" align="center">63</td>\r\n<td width="10%" align="center">56</td>\r\n<td width="9%" align="center">60</td>\r\n<td width="10%" align="center">78</td>\r\n<td width="10%" align="center">*</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">IV</span></strong></td>\r\n<td width="10%" align="center">47</td>\r\n<td width="9%" align="center">57.9</td>\r\n<td width="10%" align="center">71</td>\r\n<td width="10%" align="center">67</td>\r\n<td width="9%" align="center">59</td>\r\n<td width="10%" align="center">67</td>\r\n<td width="10%" align="center">55.2</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">V</span></strong></td>\r\n<td width="10%" align="center">57</td>\r\n<td width="9%" align="center">64.1</td>\r\n<td width="10%" align="center">55</td>\r\n<td width="10%" align="center">52</td>\r\n<td width="9%" align="center">63</td>\r\n<td width="10%" align="center">67</td>\r\n<td width="10%" align="center">45.4</td>\r\n<td width="9%" align="center">*</td>\r\n<td width="10%" align="center">*</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">VI</span></strong></td>\r\n<td width="10%" align="center">43</td>\r\n<td width="9%" align="center">55.1</td>\r\n<td width="10%" align="center">74</td>\r\n<td width="10%" align="center">64</td>\r\n<td width="9%" align="center">60</td>\r\n<td width="10%" align="center">67</td>\r\n<td width="10%" align="center">46.9</td>\r\n<td width="9%" align="center">69</td>\r\n<td width="10%" align="center">47</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">VII</span></strong></td>\r\n<td width="10%" align="center">45</td>\r\n<td width="9%" align="center">65.3</td>\r\n<td width="10%" align="center">61</td>\r\n<td width="10%" align="center">66</td>\r\n<td width="9%" align="center">62</td>\r\n<td width="10%" align="center">94</td>\r\n<td width="10%" align="center">54.5</td>\r\n<td width="9%" align="center">84</td>\r\n<td width="10%" align="center">70</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">Sch Avg.</span></strong></td>\r\n<td width="10%" align="center"><strong>65</strong></td>\r\n<td width="9%" align="center"><strong>67.9</strong></td>\r\n<td width="10%" align="center"><strong>63</strong></td>\r\n<td width="10%" align="center"><strong>61</strong></td>\r\n<td width="9%" align="center"><strong>62</strong></td>\r\n<td width="10%" align="center"><strong>86</strong></td>\r\n<td width="10%" align="center"><strong>50.5</strong></td>\r\n<td width="9%" align="center"><strong>69</strong></td>\r\n<td width="10%" align="center"><strong>59</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 7, 0, 46, '2010-03-11 09:41:37', 62, '', '2010-03-11 10:14:52', 62, 0, '0000-00-00 00:00:00', '2010-03-11 09:41:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 7, 'robots=\nauthor='),
(71, 'A Gallery of Accolades', 'gall', '', '<p>{vsig}JSSPgallery{/vsig}</p>\r\n<p>&lt;iframe src="http://docs.google.com/present/embed?id=dhdmf3dg_110gzxpm4gb&amp;autoStart=true&amp;loop=true" frameborder="0" width="410" height="342"&gt;&lt;/iframe&gt;</p>\r\n<p>http://docs.google.com/present/edit?id=0AWaO0lNZML3TZGhkbWYzZGdfMTEwZ3p4cG00Z2I&amp;hl=en</p>\r\n<p><a href="http://docs.google.com/present/edit?id=0AWaO0lNZML3TZGhkbWYzZGdfMTEwZ3p4cG00Z2I&amp;hl=en">Gallery</a></p>', '', 1, 7, 0, 48, '2010-03-11 10:51:54', 62, '', '2010-03-11 13:01:49', 62, 0, '0000-00-00 00:00:00', '2010-03-11 10:51:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 15, 'robots=\nauthor='),
(72, 'Adityapur Industrial Area Development Authority', 'kmpm', '', '<p> </p>\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/images_1.jpg" border="0" width="150" height="150" /></td>\r\n<td>\r\n<p><strong>Adityapur Auto Cluster (AAC)</strong> is a SPV under IIUS, Scheme of Ministry of Commerce and Industry, Government of India. Adityapur Industrial Area, accommodates around 1000 small and medium enterprises.</p>\r\n<p>Most of Small and Medium Enterprises (SMEs) of Adityapur are suppliers to local Commercial vehicle manufacturer TATA Motors Limited as Other Equipment Manufacturers (OEMs) suppliers. Castings (cast iron ,steel and non-ferrous),Forgings and Sheet metal(hot rolled or cold rolled ) are the usual inputs for the manufacture of these auto components.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><img src="images/stories/autocad3.jpg" border="0" width="150" height="200" /></td>\r\n<td>\r\n<p>Typically the manufacturing process at the SME starts with a finished component drawing given by the auto maker.</p>\r\n<ol>\r\n<li>\r\n<p>Creation of a raw part drawing from the component drawing Working out the steps and stages to manufacture the raw part.</p>\r\n</li>\r\n<li>\r\n<p>Development and manufacture of tooling for different stages in manufacturing Production of first samples from the tooling Inspection of these first samples.</p>\r\n</li>\r\n<li>\r\n<p>Modification of manufacturing process and tooling in case the sample is not ok in first attempt.</p>\r\n</li>\r\n<li>\r\n<p>Production of second sample Repetition of the process till the sample meets all the requirements.</p>\r\n</li>\r\n<li>\r\n<p>Machining the sample to obtain the finished components In some cases ,joining or fastening more than one component to obtain a sub-assembly.</p>\r\n</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td><img src="images/stories/autocad5.jpg" border="0" width="150" height="160" /></td>\r\n<td>\r\n<p>All these steps are today carried out manually with little help from the computers. Use of computers (and relevant software) for creation of raw part drawing, process design and tooling design, can substantially compress the total cycle time of component supply. With the use of suitable software, samples can be produced ok in the very first trial. It is therefore needed to integrate computer aided design and manufacturing in today’s production process. In addition to saving time, wastage of materials and non-fruitful engagement of production facilities can also be avoided.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><img src="images/stories/autocad2.jpg" border="0" width="150" height="150" /></td>\r\n<td>\r\n<p>Considering these needs Adityapur Auto Cluster, propose to establish a <strong>Design Lab and Computer Centre</strong>. The Design and Computer center would essentially have the following parts-</p>\r\n<p>Suitable workstations with required capability,A common server,Appropriate and relevant software         A trainer who can train the engineers from the SMEs in the use of software.         Domain experts in the area of manufacturing of casting, forging and sheet metal         based components, who would be available as and when works comes to AAC.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><img src="images/stories/images_3.jpg" border="0" width="150" height="150" /></td>\r\n<td>\r\n<p>AAC would like to have a business partner in setting up and running this center. AAC would like to have a single agency who can provide or procure suitable hardware, select and provide relevant software- and also have experts on call who can provide training to the engineers of local industries and perform actual work of user. This would mean full and comprehensive engagement of the business partner and would avoid any problems of integration of different steps, namely-hardware, software and training.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 6, 0, 35, '2010-03-12 05:26:36', 62, '', '2011-01-28 10:11:26', 62, 0, '0000-00-00 00:00:00', '2010-03-12 05:26:36', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 66, 0, 1, '', '', 0, 278, 'robots=\nauthor='),
(95, 'Infrastructure', 'infra', '', '<p> </p>\r\n<p>Kasidih High School is situated in Sakchi. The school campus has two buildings, one Primary Block and a High School Block. The Kindergarten block is a separate block situated just beside the Primary Block.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/IMG_1767.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The School has an Open Auditorium for cultural programs and activities with a seating capacity of around 500 people. The School playing ground comprises of a football ground, a handball ground &amp; a valley ground.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/IMG_1766.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>There are 5 laboratories in the High School Block comprising of a Physics Lab, Chemistry Lab, Biology Lab, Computer Lab and Mathematics Lab. The Labs are used extensively by the students for their Practicals.</p>\r\n<p>The Sports Room has the equipment for football, volleyball, handball, cricket and other indoor games.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/IMG_2140.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The classrooms are spacious and have adequate and comfortable seating and studying arrangements. All the arrangements for a healthy and hygienic environment are taken care of. The students are given a conducive environment to grow and fulfill their dreams.</p>', '', 1, 10, 0, 64, '2010-03-15 06:35:47', 62, '', '2010-05-08 06:51:58', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:35:47', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 15, 0, 1, '', '', 0, 40, 'robots=\nauthor='),
(73, 'Infrastructure', 'infra', '', '<p> </p>\r\n<p>Mrs. KMPM Inter College has its sprawling campus spread over 5 acres in the heart of Jamshedpur. It houses a Science Block and a Arts &amp; Commerce Block. Well manicured gardens demarcate each block.</p>\r\n<p>There are a total of 22 spacious class rooms and 5 state of the art Audio and Visual Rooms.</p>\r\n<p><strong>Science and Arts &amp; Commerce Block</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/KMPMinfra2.jpg" border="2" width="250" height="175" /></td>\r\n<td></td>\r\n<td><img src="images/stories/KMPM/KMPMinfra3.jpg" border="2" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Interactive Talks on Science and Industry Standards are conducted in the Audio Visual Rooms.</p>\r\n<p><br /><strong>Audio and Visual Rooms</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/KMPMinfra15.jpg" border="2" width="250" height="175" /></td>\r\n<td></td>\r\n<td><img src="images/stories/KMPM/KMPMinfra16.jpg" border="2" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The Science and Computer Laboratories are used extensively by the students for their Practicals.</p>\r\n<p><strong>The Chemistry and Computer Labs.</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/KMPMinfra4.jpg" border="2" width="250" height="175" /></td>\r\n<td></td>\r\n<td><img src="images/stories/KMPM/KMPMinfra9.jpg" border="2" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>The Library and Reading Room have the definitive books, manuals and periodicals for the students.</p>\r\n<p><strong>Library and Reading Rooms</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/KMPMinfra12.jpg" border="2" width="250" height="175" /></td>\r\n<td></td>\r\n<td><img src="images/stories/KMPM/KMPMinfra14.jpg" border="2" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><strong>Work and Play make brighter students</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/KMPMinfra17.jpg" border="2" width="250" height="175" /></td>\r\n<td></td>\r\n<td><img src="images/stories/KMPM/KMPMinfra19.jpg" border="2" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', '', 1, 11, 0, 50, '2010-03-12 05:46:22', 62, '', '2010-05-08 07:23:34', 62, 0, '0000-00-00 00:00:00', '2010-03-12 05:46:22', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 25, 0, 1, '', '', 0, 55, 'robots=\nauthor='),
(74, 'Faculty', 'fct', '', '<p> </p>\r\n<p>Mrs. KMPM Inter College has a rich legacy of academic excellence. The faculty consists of teachers holding Doctorates, Masters and Bachelors degrees in their academic fields. Many of the teachers have been with the Institution for over 20 years.</p>\r\n<p>The rich academic experience is coupled with regular training programs to meet the Quality standards set by the Excellence Program.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/FCTakmishra.jpg" border="0" width="150 border=" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mr. A.K. Mishra - Principal. (MSc. Maths, M.Phil.,BEd.,LLB. ). </strong>He has been with the College since 2007. He is also a TQM Asessor for the TATA Steel Education Excellence Program.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr valign="top">\r\n<td align="center"><img src="images/stories/KMPM/FCTsstiwary.jpg" border="0" width="150" height="125" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mr. S.S. Tiwary, </strong><strong>HOD Physics (MSc. Physics)</strong> has been with the College since 1988.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr valign="top">\r\n<td align="center"><img src="images/stories/KMPM/FCTrnmandal.jpg" border="0" width="150" height="125" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Dr. R.N. Mandal</strong>, <strong>HOD - Chemistry ( MSc. , BEd. and PhD. Chemistry) </strong>has been with the College since 1986. He is also the Controller of Examinations.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr valign="top">\r\n<td align="center"><img src="images/stories/KMPM/FCTbsmangalmurti.jpg" border="0" width="150" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mr. B.S. Mangalmurti</strong>, <strong>HOD - Mathematics (MSc. Mathematics)</strong> has been with the College since 1988. He is also the College Routine Coordinator.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr valign="top">\r\n<td align="center"><img src="images/stories/KMPM/FCTaditichaterjee.jpg" border="0" width="150" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mrs. Aditi Chaterjee</strong>, <strong>HOD - English (MA and BEd)</strong> has been with the College since 1988.  She is also the Cultural Activities Coordinator.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/FCTsjanaki.jpg" border="0" width="150" height="125" /></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mrs. S. Janaki</strong>, <strong>HOD - Biology (MSc. Zoology PGDPMIR)</strong> has been with the College since 1986. She is also a member of Environmental Activities Committee.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr valign="top">\r\n<td align="center"><img src="images/stories/KMPM/FCTashutoshjha.jpg" border="0" width="150" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mr. Ashutosh Jha, </strong><strong>HOD - Hindi (MA. and BEd.)</strong> has been with the College since 2007. He is also a member of the Cultural and Debate &amp; Quiz Committees.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/FCTarunupadhya.jpg" border="0" width="150" height="125" /></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mr. Arun Upadhya</strong>, <strong>HOD - Commerce (MCom.)</strong> has been with the College since 1988. He is also the Discipline Coordinator.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/FCTamiyakumardas.jpg" border="0" width="150" height="125" /></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mr. Amiya Kumar Das, </strong><strong>HOD Computer Science (BITM in Network Engineering, PGDSM )</strong> has been with the College since 1998. He is also the Document Control In-charge. He is a Lead Auditor of ISO 9001, a TQM Auditor, and a Assessor for TATA Steel Education Excellence Program in Information Personnel. He is a Member of the Examination Cell and Admissions.</p>', '', 1, 11, 0, 51, '2010-03-12 05:49:45', 62, '', '2010-05-08 07:25:53', 62, 0, '0000-00-00 00:00:00', '2010-03-12 05:49:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 26, 0, 2, '', '', 0, 73, 'robots=\nauthor='),
(75, 'Curriculum', 'cu', '', '<p> </p>\r\n<p>Mrs. KMPM Inter College is affiliated to the Jharkhand Academic Council. It is a co-educational College offering Intermediate Courses in Science, Commerce and Arts streams.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/KMPMinfra12.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>There is a good student teacher ratio with 60-65 students per class resulting in better engagement. There has been an Introduction of  monthly class test for continuous assessment of students and remedial action plan  Annual syllabus cascaded  down to weekly plan for better compliance and monitoring.  Distribution of syllabus to all students for alignment. There is a preparation of lesson plan per period prepared by lecturers and reviewed by the Principal.</p>\r\n<ul>\r\n</ul>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<strong>SECTIONS PER STREAM</strong>\r\n</tr>\r\n<tr>\r\n<td>CLASS</td>\r\n<td>SCIENCE</td>\r\n<td>ARTS</td>\r\n<td>COMMERCE</td>\r\n</tr>\r\n<tr>\r\n<td valign="center">XI</td>\r\n<td valign="center">10</td>\r\n<td valign="center">1</td>\r\n<td valign="center">6</td>\r\n</tr>\r\n<tr>\r\n<td>XII</td>\r\n<td>8</td>\r\n<td>2</td>\r\n<td>6</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>There is communication of assessment results and monthly attendance to all parents. Exam pacing to reduce stress and give preparation time to students.  Number of Practical periods have been increased to improve learning and revision for students. Substitute classes are in place of dismissal in case of absence of lecturers. Princpal engages himself in taking classes.</p>\r\n<p>There are rank holders in  the JAC Examinations as well as City Toppers (3rd and 6th places in the Science Stream).</p>\r\n<ul>\r\n</ul>\r\n<table border="2">\r\n<tbody>\r\n<tr>\r\n<strong>STUDENTS PER STREAM</strong>\r\n</tr>\r\n<tr>\r\n<td>CLASS</td>\r\n<td>SCIENCE</td>\r\n<td>ARTS</td>\r\n<td>COMMERCE</td>\r\n</tr>\r\n<tr>\r\n<td>XI</td>\r\n<td>640</td>\r\n<td>24</td>\r\n<td>446</td>\r\n</tr>\r\n<tr>\r\n<td>XII</td>\r\n<td>506</td>\r\n<td>61</td>\r\n<td>83</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 11, 0, 53, '2010-03-12 06:04:41', 62, '', '2010-04-20 11:49:36', 62, 62, '2010-04-20 11:49:36', '2010-03-12 06:04:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 15, 0, 5, '', '', 0, 36, 'robots=\nauthor='),
(76, 'Time Table', 'tt', '', '<p>Section: Mrs. KMPM Inter-College | Category: Academics | Article: Time Table</p>', '', -2, 11, 0, 53, '2010-03-12 06:06:26', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-12 06:06:26', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(77, 'Fees', 'fees', '', '<p>Section: Mrs. KMPM Inter-College | Category: Academics | Article: Fees</p>', '', -2, 11, 0, 53, '2010-03-12 06:07:30', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-12 06:07:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(78, 'Booklist', 'bk', '', '<p><strong>English Core(XI)</strong><br /><br />English Reader Text Book by NCERT<br />Supplementary  Reader by NCERT<br /><br /><strong>English Core(XII)</strong><br /><br />Flamingo by NCERT<br />Vistas Supplementary Reader by NCERT<br /><br /><strong>Physics(XI/XII)</strong><br /><br />Physics Text book NCERT<br />New Millennium physics by S.K.Sharma ,Dinesh Publication<br />Modern abc of Physics by Satish  Gupta,Modern Publication<br />Lab Manual by Saraswati/Arya Publication<br /><br /><strong>Chemistry</strong><br /><br />Chemistry for class XI/XII by NCERT<br />Dinesh Companion Chemistry by Dinesh Publication<br />Pradeep New Course Chemistry by S.N.Dhawan Pradeep Publication<br />Lab Manual by Saraswati/Arya Publication<br /><br /><strong>Mathematics</strong><br /><br />Text book of Mathematics Part I and Part II by NCERT<br />Senior Secondary School Math for XI/XII by R.S.Agrawal,Bharti Bhawan<br />Mathematics for class XI/XII by R.D.Sharma<br /><br /><strong>Biology</strong><br /><br />Biology Text book for Class Xi/XII NCERT<br />Modern abc of Biology by Modern Publication<br />Comprehensive Biology by Laxmi publication<br /><br /><strong>Computer Science</strong><br /><br />Computer Science with C++ by Reeta Sahoo,Saraswati Publication<br />Computer Science with C++ by Sumita Arora, Dhanpat Rai Publication<br /><br /><strong>COMMERCE</strong><br /><br /><strong>Hindi A (Core)(XI)</strong><br /><br />Basanti-Bhag-I NCERT<br />Vivida-Bhag-I NCERT<br /><br /><strong>Hindi Core(XII)</strong><br /><br />Aaroh-Bhag-II NCERT<br />Vitan-Bhag-II NCERT<br /><br /><strong>CA</strong><br /><br />Commercial Airthmatic by S.K.Singh Sahitya Bhawan<br />Commercial Airthmatic by Ashok singh Bharti Bhawan<br /><br /><strong>Economics(XI)</strong><br /><br />Introduction to Statistics and EDI by NCERT<br />Stat and EDI by H.N.P.S.Suman by Students Friends<br />Stat and EDI by K.L.Verma    Dinesh Publication<br /><br /><strong>Economics(XII)</strong><br /><br />Introductory Micro and Macro Economics NCERT<br />Introductory Micro and Macro Economics K.L.VERMA-Dinesh<br />Introductory Micro and Macro Economics Deepa shree-Saraswati <br /><br /><strong>Accountancy</strong><br /><br />Accountancy Xi/XII NCERT<br />Comprehensive Financial Accountancy by S.A.Siddique <br />Accontancy by S.K.Singh-Sahitya Bhawan<br /><br /><strong>B.Studies</strong></p>\r\n<p><br />Business Studies for class XI/XII by NCERT<br />Business Studies for class XI/XII by R.K.singh V.K.Publication<br />Business Studies for class XI/XII by O.P.Gupta Dinesh Pub.<br /><br /><strong>B.Math(XII)</strong><br /><br />B.Math and Statistics by T.R.Jain-Vk Publication<br />B.Math and Statistics by B.N.Gupta-Sahitya Bhawan<br /><br /><strong>Computer Sc.</strong><br /><br />Computer Science with C++ by Reeta Sahoo,Saraswati Publication<br />Computer Science with C++ by Sumita Arora, Dhanpat Rai Publication<br /><br /><strong>ARTS</strong><br /><br />Hindi Elective(XI)<br /><br />Antral-Bhag-I NCERT<br />Supplementary Book NCERT<br /><br />Hindi Elective(XII)<br /><br />Antral-Bhag-II by NCERT<br />Supplementary Book NCERT<br /><br /><strong>History(XI)</strong><br /><br />History by NCERT<br />Themes in World History by Raghunath Rai-VK publication<br />Themes in World History by B.K.Srivastava-Sahitya Bhawan<br /><br /><strong>History(XII)</strong><br /><br />History by NCERT<br />Themes in Indian History by Raghunath Rai-VK publication<br />Themes in Indian History by Malti Malik- Saraswati Publication<br /><br /><strong>Geography(XI)</strong><br /><br />Geography by NCERT<br />Geography by Suresh Prasad   Bharti Bhawan<br /><br />Geography(XII)<br /><br />Geography by NCERT<br />Geography by D.R.Khullar-Sraswati Publication<br />Geography by Yaspal singh-Vk publication<br /><br /><strong>POLITICAL SC.(XI/XII)</strong><br /><br />Pol.SC. by NCERT<br />Pol.Sc. by G.N.Rastogi Vk publication<br />Pol.Sc by N.K.Koushik saraswati pub<br /><br /><strong>Psychology</strong><br /><br />Introduction to Psychology by NCERT<br />Introduction to Psychology by Indu Bhusan-Bharti Bhawan<br />Psychology by B.K.Mishra by Saraswati Publication<br /><br /></p>', '', 1, 11, 0, 53, '2010-03-12 06:08:15', 62, '', '2010-03-20 10:31:26', 62, 0, '0000-00-00 00:00:00', '2010-03-12 06:08:15', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 3, 'robots=\nauthor='),
(79, 'XSEED', 'xseed', '', '<p>Section: Mrs. KMPM Inter-College | Category: Academics | Article: XSEED</p>', '', -2, 11, 0, 53, '2010-03-12 06:08:42', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-12 06:08:42', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(80, 'Games and Sports', 'gns', '', '<p> </p>\r\n<p>Mrs. KMPM Inter College gives  special impetus to Games ans Sports for the students to develop an all-round personality. The spirit of competitiveness and team work is nurtured in the students which help them to take on the challenges of life. The School Events bring out the talent in the students and the School gives active encouragement to the students to pursue their dreams. Our Stars have performed consistently at National and International Events.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/STnamitayadav.jpg" border="0" width="150" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><strong> NAMITA YADAV: Student of commerce.</strong></p>\r\n<ul>\r\n<li>2006-Silver medal, Asian Grand Prix Archery at Malaysia</li>\r\n<li>2007-Gold medal, Junior Asian Archery at Bankok</li>\r\n<li>2007-Gold medal ,2nd Junior Asian Archery at China</li>\r\n<li>2007-Silver medal,  National Archery Championship, Andhrapradesh</li>\r\n<li>2007-Bronze medal, National games, Assam</li>\r\n<li>2007-Gold medal ,National Championship at Amaravati and Sikkim</li>\r\n<li>2008-02 gold and 01 Bronze in 28th Senior archery Championship</li>\r\n<li>2009-Participated in 2nd World Cup Archery Championship at Crotia</li>\r\n</ul>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/STarjunrao.jpg" border="0" width="200" height="112" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <br /><strong>ARJUN RAO: Student of science</strong></p>\r\n<ul>\r\n<li>2008- Gold medal(07) and 01 bronze in Jharkhand State Archery Championship</li>\r\n<li>2008-Gold(03) and 01 silver in Junior national championship</li>\r\n<li>2009-Bronze(03) and National Record at ASIAN CIRCUIT GRANDPRIX(BANGKOK)</li>\r\n<li>2009-Gold(04) and 02 Silver and National Record at Sub Junior National Championship(New Delhi)</li>\r\n<li>2009-Participated in 2nd World Cup at Croatia</li>\r\n</ul>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><img src="images/stories/KMPM/STsouravtiwary.jpg" border="0" width="150" height="125" /></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><strong>SOURABH TIWARY: Student of commerce stream. Ranji Trophy-2006,ODI(New Zealand)-2007,Triangular series (Malaysia)-2007,IPL-2009/10</strong></p>', '', 1, 11, 0, 54, '2010-03-12 06:09:35', 62, '', '2010-05-08 07:28:37', 62, 0, '0000-00-00 00:00:00', '2010-03-12 06:09:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 14, 0, 3, '', '', 0, 22, 'robots=\nauthor='),
(81, 'Environmental Activities', 'ev', '', '<p>Section: Mrs. KMPM Inter-College | Category: Extra-Curricular Activities | Article: Environmental Activities</p>', '', 1, 11, 0, 54, '2010-03-12 06:10:43', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-12 06:10:43', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(82, 'Culture and Environment', 'cu', '', '<p> </p>\r\n<p>Mrs. KMPM Inter College takes special pride in the culture of Jamshedpur. The Schools nurture its students to be loving, caring and responsible citizens of the Country. The Cultural Events in the School encourage the students to embrace the traditions and festivals of a diverse Country.</p>\r\n<p><strong>Rangoli of Colours for a Colourful Life</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/ECb.jpg" border="0" width="250" height="175" /></td>\r\n<td><img src="images/stories/KMPM/ECc.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br />What goes on in the classrooms, makes a major contribution to the formation of character and values among students who will go on to become the sun and light in the world. However, the classroom experience is just one part of the School experience. Values and character are inculcated through the School''s various co-curricular activities.</p>\r\n<p><strong>Fostering a Passion for Art because Art is a form of Expression</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/ECh.jpg" border="0" width="112" height="175" /></td>\r\n<td><img src="images/stories/KMPM/ECg.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Responsibility to the Environment is a pillar in our Principles. Students are encouraged to take part in various Quality Programs and Green Initiatives. Responsibility to the Environment is an integral part of the culture in the JUSCO Schools.</p>\r\n<p><strong>World Population Day:</strong><br /> Celebrated on 11th July’08.Seminar and rally organized with the support of “DAINIK JAGARAN” daily newspaper. Mr.B.D.Ram  S.D.O, Jamshedpur was the Chief Guest and eminent speakers from TATA STEEL and Govt officials were present on the occasion.</p>\r\n<p><strong>World Environment Day:</strong><br /> Celebrated on 5th June’2009 .Organised by the Department of E.V.S Tree Plantation  Program was conducted by Mr.Chanchal Chakraborty,Head School Administration,JUSCO</p>\r\n<p><strong>Going back to Nature with World Environment Day</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/ECaj.jpg" border="0" width="250" height="175" /></td>\r\n<td><img src="images/stories/KMPM/ECak.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>A Tribute on Teacher''s Day Celebration</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/ECu.jpg" border="0" width="250" height="175" /></td>\r\n<td><img src="images/stories/KMPM/ECx.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><br /></p>\r\n<p>Spiritual Talks: ISKON: By Ramkrishna Das(RUSSIA) Prajapita Brahma Kumari: By BK.Michel Simon(France)  Social Campaign: Visit to Chesire Home Each year</p>\r\n<p><strong>Our Social Responsibility by giving a Helping Hand</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/ECab.jpg" border="0" width="250" height="175" /></td>\r\n<td><img src="images/stories/KMPM/ECad.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Seminar on No Plastic and Green Awareness</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/ECan.jpg" border="0" width="131" height="175" /></td>\r\n<td><img src="images/stories/KMPM/ECao.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br />In these settings, the students learn a wide range of professional, leadership, and life skills.<br />The commitment of the school to the all round development of the child is strong. We offer the a host of co-curricular activities throughout the year to the students.</p>\r\n<p><strong>Seminars on AIDS Awareness and Steel Making</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/ECaq.jpg" border="0" width="250" height="175" /></td>\r\n<td><img src="images/stories/KMPM/ECar.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><br /></p>', '', 1, 11, 0, 54, '2010-03-12 06:14:19', 62, '', '2010-05-08 08:01:59', 62, 0, '0000-00-00 00:00:00', '2010-03-12 06:14:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 23, 0, 1, '', '', 0, 36, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(83, 'Vision, Mission and Values', 'ms', '', '<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JUSCOlogo.gif" border="1" width="75" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><br /><br /><strong>VISION:</strong><br /> <br />" To be a learning Institution of choice providing value based education that nurtures individual talent  and potential of students, enabling them to be lifelong learners and excel in their chosen fields. "</p>\r\n<p><strong>MISSION :</strong><br /><br />" Quality Education for Life ."</p>\r\n<p><strong></strong><br /><strong>VALUES:</strong></p>\r\n<ol>\r\n<li>Nationalism</li>\r\n<li>Honesty and Integrity</li>\r\n<li>Protection and Conservation of Environment</li>\r\n<li>Pursuit of Excellence</li>\r\n<li>Compassion</li>\r\n</ol>\r\n<p><br /><strong>SCHOOL MOTTO:</strong></p>\r\n<p>" Noble Intent; Loving Heart; Fearless Mind "<br /><br /><strong>OBJECTIVE / STATEMENT OF PURPOSE:</strong></p>\r\n<ol>\r\n<li>To cultivate, recognize, and respect the opinions and contributions of child, parent, and teacher.</li>\r\n<li>To provide a safe, nurturing environment for learning where individuality is recognized and diversity is celebrated.</li>\r\n<li>To provide instruction that encourages development of each child''s practical, cognitive, physical, social, and moral potential.</li>\r\n<li>To present a curriculum that is intellectually stimulating and developmentally appropriate.</li>\r\n<li>To encourage initiative, self-discipline, critical thinking and creative approaches to problem-solving.</li>\r\n<li>To foster the values of good citizenship through community service, civic awareness, and development of leadership potential. </li>\r\n<li>To foster loyalty, mutual respect and respect for all mankind </li>\r\n<li>To foster respect for the environment. </li>\r\n<li>To encourage parents to support the educational efforts of the school and to utilize the structures offered to ensure positive parental involvement. </li>\r\n<li>To encourage close partnership with parents and management to ensure that the aims of the school are achieved.</li>\r\n</ol>\r\n<p> </p>\r\n<p><strong>QUALITY OBJECTIVE:</strong></p>\r\n<p>“ We Shall Constantly Strive To Provide A High Standard Of All Round Education To All Our Students By Anticipating And Exceeding Customer’s Expectation Through Continuous Improvement ,Effective Team Work, commitment And Credibility”</p>', '', 1, 11, 0, 55, '2010-03-12 06:15:40', 62, '', '2010-05-03 06:10:04', 62, 0, '0000-00-00 00:00:00', '2010-03-12 06:15:40', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 10, 0, 2, '', '', 0, 21, 'robots=\nauthor='),
(84, 'Students Code of Conduct', 'coc', '', '<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JUSCOlogo.gif" border="0" width="75" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>1. NATIONALISM</strong></p>\r\n<ul>\r\n<li>I shall respect our national heritage and take care of it.</li>\r\n<li>I will not entertain or allow any thought, words or deeds harmful to the nation.</li>\r\n<li>I shall imbibe national values and virtues.</li>\r\n<li>I shall value the freedom of my country and protect it.</li>\r\n</ul>\r\n<p><br /><strong>2. PROTECTION AND CONSERVATION OF ENVIRONMENT</strong></p>\r\n<ul>\r\n<li>I shall preserve forest, garden and fields.</li>\r\n<li>I shall plant trees and never cut them.</li>\r\n<li>I shall use nature''s resource judiciously and guard against undue depletion.</li>\r\n<li>I shall not pollute the Earth, its water or air.</li>\r\n</ul>\r\n<p><br /><strong>3. COMPASSION</strong></p>\r\n<ul>\r\n<li>I will love and respect all fellow humans.</li>\r\n<li>I will share my good fortune with people who have fewer blessings than me in life.</li>\r\n<li>I will love and protect all God''s creatures, whose presence ensures a balance on our planet.</li>\r\n<li>I will voluntarily contribute my services to organisations that serve society.</li>\r\n</ul>\r\n<p><br /><strong>4. HONESTY AND INTEGRITY</strong></p>\r\n<ul>\r\n<li>I shall not indulge in any malpractice during my assessment.</li>\r\n<li>I will take responsibility of all work that is given to me.</li>\r\n<li>I will stand by the truth at all times.</li>\r\n<li>I will report any breach of conduct to my superiors whenever I see one.</li>\r\n<li>I shall not knowingly or unknowingly lead any peer to break school rules.</li>\r\n</ul>\r\n<p><br /><strong>5. PURSUIT OF EXCELLENCE</strong></p>\r\n<ul>\r\n<li>I shall always remain committed to my academic duties.</li>\r\n<li>I will not compromise on my academic performance.</li>\r\n<li>I will strive to perform to the best of my abilities at all times.</li>\r\n<li>I will build on my strengths and will accept my weaknesses so as to change them into my strengths.</li>\r\n</ul>\r\n<p> </p>', '', 1, 11, 0, 55, '2010-03-12 06:17:04', 62, '', '2010-05-03 06:07:01', 62, 0, '0000-00-00 00:00:00', '2010-03-12 06:17:04', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 8, 0, 1, '', '', 0, 8, 'robots=\nauthor='),
(85, 'Awards and Recognitions', 'anr', '', '<p> </p>\r\n<p>Mrs. KMPM Inter College has given the State and Country exceptional performers and achievers. We are very proud of every student and teacher who is a part of this Institution. We feel overwhelmed when our students and teachers bring back accolades with their accomplishments. Some of our star achievers are:</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/FCTakmishra.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mr. A.K.Mishra ,Principal: </strong> successfully completed the assessor course for TSEEM(Tata Steel Education Excellence Model).Recognized as an assessor on Annual Prize Nite for Excellence in Education-09 Successfully completed the TQM internal Auditor Course for ISO 9000 from SNTI(TATA STEEL)</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/FCTnirmaladwivedi.jpg" border="0" width="100" height="125" /></td>\r\n<td><img src="images/stories/KMPM/FCTsharmilagupta.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mrs.Nirmala Dwivedi(Chemistry) and Mrs.Sharmila Gupta(English)</strong>:  successfully completed the Internal Auditor Course on ISO 9000 (Quality Management System)</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/FCTrnmandal.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Dr.R.N.Mandal(HOD)</strong> <strong>Chemistry:</strong> Author of Chemistry Book for Class XI and XII</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/FCTkkbiswas.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mr.K.K.Biswas(Sports In-Charge):</strong> successfully completed the assessor course for TSEEM with Bronze performance.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/FCTamiyakumardas.jpg" border="0" width="125" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mr.A.K.Das (HOD) Computer Science</strong>: successfully completed the assessor course for TSEEM with GOLD performance and Recognized on Annual Prize Nite for Excellence in Education-09</p>\r\n<p><strong> List of “SHABASHI” awards for Long Service</strong></p>\r\n<p>Dr. R.N.Mandal (Chemistry)</p>\r\n<p>Mr. R.P.Singh (Commerce)</p>\r\n<p>Mr. G.S.Singh (Chemistry)</p>\r\n<p>Mr. B.M.Yadav (Office)</p>\r\n<p>Mr. A.K.Das (Computer Science)</p>\r\n<p>Mrs. Sutapa Banerjee (Biology)</p>', '', 1, 11, 0, 56, '2010-03-12 06:18:15', 62, '', '2010-04-27 04:47:44', 62, 0, '0000-00-00 00:00:00', '2010-03-12 06:18:15', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 12, 0, 1, '', '', 0, 16, 'robots=\nauthor='),
(86, 'Procedures and Downloads', 'dwn', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/pastarchives.jpg" border="0" width="150" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>ADMISSION PROCEDURE</strong></p>\r\n<p>1.ELIGIBILITY FOR ADMISSION</p>\r\n<p>A. Admissions are open to the following categories of employee’s children of JUSCO and TATA STEEL</p>\r\n<ol>\r\n<li> Children of permanent employees in service.</li>\r\n<li> Children of superannuated employees, E.S.S, died or employee permanently disabled while in service.</li>\r\n<li> Dependent grand children of permanent employee in service.</li>\r\n<li> Grand Children of superannuated employees passing from JUSCO high school only.</li>\r\n<li> Admission of grand children of employees is subjected to submission of medical books of dependent relation i.e sons/daughters of TATA STEEL/JUSCO employees.<br /><br /> <strong>Download the:</strong> \r\n<ul>\r\n<li><a href="downloads/KMPMprospectus.pdf">The Prospectus</a></li>\r\n<li><a href="downloads/KMPMadmission.pdf">The Admission Form</a></li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<p>B. Admission open for Non-Employee wards passing from JAC/I.C.S.E./C.B.S.E or its equivalent</p>\r\n<p><strong>List of Documents to be produced at the time of Admission</strong></p>\r\n<ol>\r\n<li>Attested photocopy of Mark-Sheet.Original to be produced during the verification</li>\r\n<li>Original School Leaving Certificate (to be retained by the college)</li>\r\n<li>Original migration certificate of candidates passing from other than JAC, Ranchi (To be retained by college)</li>\r\n<li>Attested copy of SC/ST certificate</li>\r\n<li>Photo copy of Service Book in case of superannuated parent/grand parent (for employee ward )</li>\r\n</ol>\r\n<p>N.B  Admission will be on the basis of Marks at qualifying examination/Marks obtained in ADMISSION TEST conducted by the College<br /><br /><br /></p>', '', 1, 11, 0, 57, '2010-03-12 06:19:27', 62, '', '2010-04-27 12:03:41', 62, 0, '0000-00-00 00:00:00', '2010-03-12 06:19:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 9, 0, 1, '', '', 0, 24, 'robots=\nauthor='),
(87, 'Contact Us', 'cu', '', '<p> </p>\r\n<p><strong>Principal:</strong></p>\r\n<p>Mr.A.K.Mishra</p>\r\n<p><strong>Coordinator:</strong></p>\r\n<p>Mr. A.K. Das</p>\r\n<p><strong> Phone:</strong></p>\r\n<p>+91 657 2144838,  2249571</p>\r\n<p><strong> E-Mail:</strong></p>\r\n<p>akmishra@tatasteel.com</p>\r\n<p><strong>Address:</strong></p>\r\n<p>Mrs. KMPM Inter College</p>\r\n<p>P.O. Bistupur<strong>,</strong></p>\r\n<p>Jamshedpur - 831001<strong><br /></strong></p>\r\n<p> </p>', '', 1, 11, 0, 58, '2010-03-12 06:20:19', 62, '', '2010-04-08 09:29:08', 62, 0, '0000-00-00 00:00:00', '2010-03-12 06:20:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 8, 0, 1, '', '', 0, 5, 'robots=\nauthor='),
(88, 'Our Stars', 'cav', '', '<p> </p>\r\n<p>Mrs. KMPM Inter College has given the State and Country exceptional performers and achievers. We are very proud of every student and teacher who is a part of this Institution. We feel overwhelmed when our students bring back accolades with their accomplishments. Some of our star performers are:</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/STnamitayadav.jpg" border="0" width="150" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><strong> NAMITA YADAV: A Student of commerce in the Institution has emerged as an accomplished archer. She has competed at national and international events bringing back numerous laurels for the Country, State and School.<br /></strong></p>\r\n<ul>\r\n<li>2006-Silver medal, Asian Grand Prix Archery at Malaysia.</li>\r\n<li>2007-Gold medal, Junior Asian Archery at Bankok.</li>\r\n<li>2007-Gold medal ,2nd Junior Asian Archery at China.</li>\r\n<li>2007-Silver medal,  National Archery Championship, Andhra Pradesh.</li>\r\n<li>2007-Bronze medal, National Games, Assam.</li>\r\n<li>2007-Gold medal, National Championship at Amaravati and Sikkim.</li>\r\n<li>2008- 2 golds and 1 Bronze in 28th Senior archery Championships.</li>\r\n<li>2009-Participated in 2nd World Cup Archery Championship at Crotia.</li>\r\n</ul>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/STarjunrao.jpg" border="0" width="150" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <br /><strong>ARJUN RAO: A science student has also won many accolades for the Country, State and School in Archery.<br /></strong></p>\r\n<ul>\r\n<li>2008- 7 Gold medals and 1 bronze in Jharkhand State Archery Championships.</li>\r\n<li>2008- 3 Golds and 1 silver in Junior National Championships.</li>\r\n<li>2009- 3 Bronze and a National Record at ASIAN CIRCUIT GRANDPRIX (BANGKOK).</li>\r\n<li>2009- 4 Golds, 2 Silvers and a National Record at the Sub Junior National Championship(New Delhi)</li>\r\n<li>2009- Participated in the 2nd World Cup at Croatia.</li>\r\n</ul>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><img src="images/stories/KMPM/STsouravtiwary.jpg" border="0" width="150" height="125" /></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>SOURABH TIWARY: Commerce Student has been a cricket prodigy and is taking his career to new heights.</strong></p>\r\n<p>He has played in the Ranji Trophy -2006, ODIs(New Zealand)-2007, Triangular series (Malaysia)-2007 and the Indian Premier League - 2009/10.</p>', '', 1, 11, 0, 59, '2010-03-12 06:21:20', 62, '', '2010-05-08 08:14:08', 62, 0, '0000-00-00 00:00:00', '2010-03-12 06:21:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 31, 'robots=\nauthor='),
(89, 'Performance Index', 'rsl', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/pastarchives.jpg" border="0" width="150" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The College follows a rigid curriculum in which students are actively engaged. Tests and examinations are conducted regularly to monitor the progress of the students. Feedback between parents and teachers is done through regular meetings. The high standards of academic excellence reflects in the in the results for all Classes and Streams.</p>\r\n<p><strong>Results</strong></p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/cpi1.jpg" border="0" width="650" height="250" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!--table class="style6" border="1" width="58%"> \r\n<tbody>\r\n<tr valign="top">\r\n<td width="9%" align="center"><span class="style9"><b>STREAM</b></span></td>\r\n<td width="10%" align="center"><span class="style9"><b>YEAR</b></span></td>\r\n<td width="9%" align="center"><span class="style9"><b>Ist DIV %</b></span></td>\r\n<td width="9%" align="center"><span class="style9"><b>IInd DIV %</b></span></td>\r\n<td width="9%" align="center"><span class="style9"><b>IIIrd DIV %</b></span></td>\r\n<td width="9%" align="center"><span class="style9"><b>PASS %</b></span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="9%" align="center"><span class="style9">SCIENCE</span></td>\r\n<td width="10%" align="center"><span class="style9">2007</span></td>\r\n<td width="9%" align="center"><span class="style9">62.04</span></td>\r\n<td width="9%" align="center"><span class="style9">35.06</span></td>\r\n<td width="9%" align="center"><span class="style9">0</span></td>\r\n<td width="9%" align="center"><span class="style9">97.1</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="9%" align="center"><span class="style9">COMM</span></td>\r\n<td width="10%" align="center"><span class="style9">2007</span></td>\r\n<td width="9%" align="center"><span class="style9">23.76</span></td>\r\n<td width="9%" align="center"><span class="style9">64.60</span></td>\r\n<td width="9%" align="center"><span class="style9">3.96</span></td>\r\n<td width="9%" align="center"><span class="style9">93.25</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="9%" align="center"><span class="style9">ARTS</span></td>\r\n<td width="10%" align="center"><span class="style9">2007</span></td>\r\n<td width="9%" align="center"><span class="style9">5.26</span></td>\r\n<td width="9%" align="center"><span class="style9">68.42</span></td>\r\n<td width="9%" align="center"><span class="style9">15.78</span></td>\r\n<td width="9%" align="center"><span class="style9">89.47</span></td>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr valign="top">\r\n<td width="9%" align="center"><span class="style9">SCIENCE</span></td>\r\n<td width="10%" align="center"><span class="style9">2008</span></td>\r\n<td width="9%" align="center"><span class="style9">46.25</span></td>\r\n<td width="9%" align="center"><span class="style9">32.97</span></td>\r\n<td width="9%" align="center"><span class="style9">0</span></td>\r\n<td width="9%" align="center"><span class="style9">79.21</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="9%" align="center"><span class="style9">COMM</span></td>\r\n<td width="10%" align="center"><span class="style9">2008</span></td>\r\n<td width="9%" align="center"><span class="style9">19.08</span></td>\r\n<td width="9%" align="center"><span class="style9">62.25</span></td>\r\n<td width="9%" align="center"><span class="style9">4.77</span></td>\r\n<td width="9%" align="center"><span class="style9">86.97</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="9%" align="center"><span class="style9">ARTS</span></td>\r\n<td width="10%" align="center"><span class="style9">2008</span></td>\r\n<td width="9%" align="center"><span class="style9">8.83</span></td>\r\n<td width="9%" align="center"><span class="style9">60.77</span></td>\r\n<td width="9%" align="center"><span class="style9">12.15</span></td>\r\n<td width="9%" align="center"><span class="style9">81.76</span></td>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr valign="top">\r\n<td width="9%" align="center"><span class="style9">SCIENCE</span></td>\r\n<td width="10%" align="center"><span class="style9">2009</span></td>\r\n<td width="9%" align="center"><span class="style9">27.06</span></td>\r\n<td width="9%" align="center"><span class="style9">40.28</span></td>\r\n<td width="9%" align="center"><span class="style9">0.6</span></td>\r\n<td width="9%" align="center"><span class="style9">67.97</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="9%" align="center"><span class="style9">COMM</span></td>\r\n<td width="10%" align="center"><span class="style9">2009</span></td>\r\n<td width="9%" align="center"><span class="style9">27.69</span></td>\r\n<td width="9%" align="center"><span class="style9">62.74</span></td>\r\n<td width="9%" align="center"><span class="style9">7.59</span></td>\r\n<td width="9%" align="center"><span class="style9">98.04</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="9%" align="center"><span class="style9">ARTS</span></td>\r\n<td width="10%" align="center"><span class="style9">2009</span></td>\r\n<td width="9%" align="center"><span class="style9">14.28</span></td>\r\n<td width="9%" align="center"><span class="style9">62.69</span></td>\r\n<td width="9%" align="center"><span class="style9">14.28</span></td>\r\n<td width="9%" align="center"><span class="style9">91.25</span></td>\r\n</tr>\r\n</tbody>\r\n</table-->', '', 1, 11, 0, 60, '2010-03-12 06:22:16', 62, '', '2010-05-02 08:53:49', 62, 0, '0000-00-00 00:00:00', '2010-03-12 06:22:16', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 9, 0, 1, '', '', 0, 21, 'robots=\nauthor='),
(90, 'Employees Corner', 'ec', '', '<p>Section: Mrs. KMPM Inter-College | Category: Employees Corner | Article: Employees Corner</p>', '', 1, 11, 0, 61, '2010-03-12 06:22:55', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-12 06:22:55', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(91, 'Photo Gallery', 'pg', '', '<p>Section: Mrs. KMPM Inter-College | Category: Photo Gallery | Article: Photo Gallery</p>', '', 1, 11, 0, 62, '2010-03-12 06:23:57', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-12 06:23:57', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(92, 'Events', 'ev', '', '<p>Section: Mrs. KMPM Inter-College | Category: Events | Article: Events</p>', '', 1, 11, 0, 63, '2010-03-12 06:24:56', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-12 06:24:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(93, 'Message from the Principal', 'ms', '', '<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/FCTakmishra.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>" Keeping in mind that education plays a vital role in the upliftment  of a society and the development of a nation.Mrs.K.M.P.M.Inter college,one of the premier educational institutions in the state and a prestigious unit of JUSCO,has been providing quality education at Intermediate level to the wards of employees of TATA STEEL and JUSCO as well as others,for last two decades.</p>\r\n<p>The college vision is to nurture young students to become responsible,enterprising,socially conscious and environmentally responsive citizens who will add value to the communities and countries they inhabit.To this end,the college blends pursuit of academic excellence along with value education and personal development through focused extra curricular activities.The college follows the TATA Code of Conduct in its functioning and the values of the same are inculcated in our students.<br />Our highly proficient team of lectures look to partnering with the parents of our students to ensure that each one of them reaches their full potential while they are part of our institution.We are proud of an accomplished Alumni who are testimony of the college philosophy of moulding young ignited minds who will be assets of our great country. "</p>\r\n<p> </p>\r\n<p>With best wishes,</p>\r\n<p>A.K. Mishra<br />Principal,<br />Mrs. K.M.P.M. Inter College</p>', '', 1, 11, 0, 52, '2010-03-12 07:00:52', 62, '', '2010-05-02 04:36:55', 62, 0, '0000-00-00 00:00:00', '2010-03-12 07:00:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 9, 0, 1, '', '', 0, 29, 'robots=\nauthor='),
(94, 'Faculty List 2', 'fcl', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KMPM/akmishra.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Mr. A.K.Mishra, Principal<br /> M.Sc.(Math),M.Phil.,B.Ed.,L.L.B.<br /> Years of service: 3<br /> TQM AUDITOR ASSESOR FOR TATA STEEL EDUCATION EXCELLENCE PROGRAM</p>\r\n<table class="style6" border="1" width="100">\r\n<tbody>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><strong>Phtg.</strong></span></td>\r\n<td width="100" align="center"><span class="style9"><strong>Name</strong></span></td>\r\n<td width="100" align="center"><span class="style9"><strong>Years of Service</strong></span></td>\r\n<td width="100" align="center"><span class="style9"><strong>Designation and Qualification</strong></span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/diptisingh.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mrs. Dipti Singh</span></td>\r\n<td width="100" align="center"><span class="style9">4 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">M.Sc(Env.Sc.) , M.A(Pol.Sc.)MEMBER SAFE CLUB,MEMBER EDUCATION EXCELLENCE,MEMBER ENVIRONMENTAL ACTIVITIES</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/nilimamahato.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mrs. Nilima Mahato</span></td>\r\n<td width="100" align="center"><span class="style9">3 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">M.Sc(Botany And Ecology),MEMBER SAFE CLUB,MEMBER ENVIRONMENTAL ACTIVITIES</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/sjanaki.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mrs. S. Janaki</span></td>\r\n<td width="100" align="center"><span class="style9">24 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">H.O.D(BIOLOGY)M.Sc(Zoology),PGDPMIR, MEMBER ENVIRONMEMNTAL ACTIVITIES</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/arunupadhya.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. Arun Upadhya</span></td>\r\n<td width="100" align="center"><span class="style9">22 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">H.O.D(COMMERCE)M.Com CO-ORDINATOR(DISCIPLINE)</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/ckmishra.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. C.K. Mishra</span></td>\r\n<td width="100" align="center"><span class="style9">22 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">M.Com, MEMBER EXAMINATION CELL</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/rpsingh.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. R.P. Singh</span></td>\r\n<td width="100" align="center"><span class="style9">21 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">M.Sc(Math And Statistics),MEMBER DISCIPLINE COMMITTEE</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/amiyakumardas.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. Amiya Kumar Das</span></td>\r\n<td width="100" align="center"><span class="style9">12 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">H.O.D.(COMPUTER SC.)BITM(Network Engg.),PGDSM,DOCUMENT CONTROL INCHARGE,<br /> LEAD AUDITOR ISO 9001<br /> TQM AUDITOR<br /> ASSESOR FOR TATA STEEL EDUCATION EXCELLENCE<br /> INFORMATION PERSONEL<br /> MEMBER EXAMINATION CELL,ADMISSION<br /> </span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/aswinikumarverma.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. Asvini Kumar Verma</span></td>\r\n<td width="100" align="center"><span class="style9">17 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">LIBRARIAN M.A. , B.Lib.</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/kkbiswas.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mrs. K.K. Biswas</span></td>\r\n<td width="100" align="center"><span class="style9">19 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">SPORTS IN CHARGE,B.A, <br />Certificate Course in athletics from NIS Patiala<br /> TRAINING CO-ORDINATOR<br />TQM AUDITOR</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/vktiwary.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. V.K. Tiwary</span></td>\r\n<td width="100" align="center"><span class="style9">24 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">Lab.Tech.(PHYSICS)B.Sc., B.Ed.</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/gssingh.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. G.S. Singh</span></td>\r\n<td width="100" align="center"><span class="style9">20 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">Lab.Tech.(Chemistry)B.Sc.MEMBER EMS TEAM,MEMBER EXAMINATION CELL,TQM AUDITOR</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/manjulasharma.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mrs. Manjula Sharma</span></td>\r\n<td width="100" align="center"><span class="style9">4 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">Lab.Tech.(BIOLOGY)M.Sc.,B.Ed,TQM AUDITOR,MEMBER EXAMINATION CELL</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/mpanda.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. M. Panda</span></td>\r\n<td width="100" align="center"><span class="style9">23 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">OFFICE ASSOCIATE,B.Com</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/pramodkumar.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. Pramod Kumar</span></td>\r\n<td width="100" align="center"><span class="style9">2 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">OFFICE B.Sc. ,B.Ed.</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/bmyadav.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. B.M. Yadav</span></td>\r\n<td width="100" align="center"><span class="style9">1 yr.</span></td>\r\n<td width="100" align="center"><span class="style9">OFFICE, B.Sc</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/munmunchattopadhya.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mrs. Munmun Chattopadhya</span></td>\r\n<td width="100" align="center"><span class="style9">1 yr.</span></td>\r\n<td width="100" align="center"><span class="style9">OFFICE,SPORTS B.A.,D.P.Ed,NIS</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/sitabhagat.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mrs. Sita Bhagat</span></td>\r\n<td width="100" align="center"><span class="style9">1 yr.</span></td>\r\n<td width="100" align="center"><span class="style9">OFFICE B.A. , B.Ed.</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/shivlalmahato.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. Shivlal Mahato</span></td>\r\n<td width="100" align="center"><span class="style9">20 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">LAB. ATTEND.(PHYSICS),SCOUTS AND ROVERS,ARTIST</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/jairamsingh.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. Jai Ram Singh</span></td>\r\n<td width="100" align="center"><span class="style9">6 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">LAB.ATTEND(CHEMISTRY)</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/sutapabanerjee.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mrs. Sutapa Banerjee</span></td>\r\n<td width="100" align="center"><span class="style9">21 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">LAB ATTEND(BIOLOGY)</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="100" align="center"><span class="style9"><img src="images/stories/KMPM/algooprasad.jpg" border="0" width="100" height="125" /></span></td>\r\n<td width="100" align="center"><span class="style9">Mr. Algoo Prasad</span></td>\r\n<td width="100" align="center"><span class="style9">17 yrs.</span></td>\r\n<td width="100" align="center"><span class="style9">OFFICE ATTENDANT</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 0, 11, 0, 51, '2010-03-12 11:42:48', 62, '', '2010-04-19 05:38:23', 62, 0, '0000-00-00 00:00:00', '2010-03-12 11:42:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 10, 0, 1, '', '', 0, 27, 'robots=\nauthor='),
(96, 'Faculty', 'fcl', '', '<p><br />The Faculty at Kasidih High School, consists of warm, caring and competent teachers who take pride in the culture and community in Jamshedpur. The competent staff is coupled with new innovative ways of teaching and learning giving a fresh new approach to modern education. The faculty includes:</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTmeetajakhanwal.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Mrs. Meeta Jakhanwal</strong> <strong> ( MSc. and BEd. ), Principal </strong></p>\r\n<p>She has a teaching experience of more than 20 years including 10 years as a Principal. She was part of the board of examiners of the ISCE Council. She is a certified Lead Auditor for ISO 9000 and a Team Leader for the J.J. Irani Award for Excellence in Education.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsanjaysingh.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Mr. Sanjay Singh</strong> <strong> ( MSc. and BEd. ), Vice-Principal </strong></p>\r\n<p>He has a teaching experience of more than 15 years including 7 years of administrative responsibilities. He is a keen sports and adventure person.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTdsharda.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. D. Sharda</strong> <strong> ( M.A (Hindi) and BEd. ) </strong><br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsaritakumarisrivastava.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Miss Sarita Kumari Srivastava</strong> <strong> ( MSc. and BEd. ) </strong><br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTamanimala.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. A . Mani Mala</strong> <strong> ( BA (H) and BEd. )</strong> <br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTkhurshidkhan.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mr. Khurshid Khan</strong> <strong> ( BA., MPEd., NIS Diploma (Hand Ball)</strong> <br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsantoshkumar.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mr. Santosh Kumar</strong> <strong> ( MA.( Eco) and BEd. ) </strong><br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTjitendrakumarpandey.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mr. Jitendra Kumar Pandey</strong> <strong> ( BEd. ) and MSc. (Maths) </strong><br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTjasdipkaur.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs Jasdip Kaur</strong> <strong> ( MA. and BEd. ) </strong><br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTzahidalam.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mr. Zahid Alam</strong> <strong> ( BLSc. Hist (H)</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTreetamishra.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Reeta Mishra</strong> <strong> ( MA. (Hindi and Sanskrit) and BEd. ) </strong><br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTrenuchoudhary.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Renu choudhary</strong> <strong> ( BA. and BEd. ) </strong><br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTrakeshpandey.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mr. Rakesh Pandey</strong> <strong> ( MSc. and BEd. ) </strong><br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTpushplata.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Pushp Lata Singh</strong> <strong> ( MSc. (Math) and BEd. )</strong> <br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTbarnitabasu.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Barnita Basu  ( BA. (Eng H) and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTchandarana.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. Chanda Rana</strong> ( BSc. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsangeetasharma.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong> <strong>Mrs. Sangeeta Sharma</strong> ( MA. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTshobhakumarigupta.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. Shobha Kumari Gupta</strong> ( BA.(H) and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTlsandhya.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. L. Sandhya</strong> ( BSc. (H) Physiology <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsulakshnakumari.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. Sulakshna Kumari</strong> ( BA. (Economics) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTashokkumarsingh.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mr. Ashok Kumar Singh</strong> ( BSc. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTabhijitnandi.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mr. Abhijit Nandi</strong> ( MSc. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsavitrimishra.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. Savitri Mishra</strong> ( BSc. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTashakumari.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. Asha Kumari</strong> ( BA. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsamarkumarghosh.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mr. Samar Ghosh</strong> ( ISc and BSPWB. <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsubhrachatterjee.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs.Subhra Chatterjee</strong> ( BSc. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTpapiyachakraborty.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong> <strong>Mrs. Papiya Chakraborty</strong> ( BSc. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsantoshkumar.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong> <strong>Mr. Santosh Kumar Verma</strong> ( BSc. (Chemistry) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTneetasinha.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. Neeta Sinha</strong> ( MSc. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTmatiurrahman.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mr. Matiur Rahman</strong> ( MSc., Zoo,Chem and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTbirendraupadhyay.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong> <strong>Mr. Birendra Upadhyay</strong> ( BCom. A/c (H) M.Mus(vocal). <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTarchanasharma.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs.  Archana Sharma</strong> ( MSc. (Bot) and BEd <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsumitasengupta.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. Sumita Sengupta</strong> ( MA.(Pol. Sci) and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTgeetarani.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. Geeta Rani</strong> ( MSc.(Bio) and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsomojitroy.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mr. Somojit Roy</strong> ( BCom. and GNIIT. <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTknutan.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. K.Nutan</strong> ( BCom. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTgautampradhan.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mr. Gautam Kumar Pradhan</strong> ( MSc.( zoo.) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTtuhinasarkar.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs.  Tuhina Sarkar</strong> ( BCom. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTsumitsrivastava.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mr. Sumit Kr. Srivastava</strong> ( BSc.(Phy) and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTshahnazrafique.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Mrs. Shahnaz Rafique</strong> ( MA. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTnishapandey.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong> <strong>Miss. Nisha Pandey</strong> ( MA., BEd. ), B.Lib, PGDFD. <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTlucky.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Ms. Lucky Kumari</strong> ( BSc. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTpujasharma.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><strong>Ms. Puja Sharma</strong> ( BSc. and BEd. ) <br /><br /> </strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTindranidey.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong> <strong>Miss Indrani Dey</strong> ( MSc. and BEd. ) <br /><br /> <br /><br /></strong></p>', '', 1, 10, 0, 65, '2010-03-15 06:37:19', 62, '', '2010-05-04 07:48:52', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:37:19', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 20, 0, 1, '', '', 0, 23, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(97, 'Message from the Principal', 'ms', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/FCTmeetajakhanwal.jpg" border="0" width="100" height="131" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>" Education is not only empowerment in terms of knowledge and skills, but it also needs inculcation of values and ethics. Materialism and selfishness has led to the erosion of moral and spiritual values. It is high time that the youth of today should try to balance material attainments and human values ingrained in our Indian culture. We at Kasidih High School are committed to the holistic development of students."<br /><br />Mrs. Meeta Jakhanwal,<br />Principal<br />Kasidih High School</p>', '', 1, 10, 0, 66, '2010-03-15 06:38:32', 62, '', '2010-04-29 07:08:57', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:38:32', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 15, 0, 1, '', '', 0, 25, 'robots=\nauthor='),
(98, 'Curriculum', 'cr', '', '<p> </p>\r\n<p>Kasidih High School was established in 1936 by TATA Steel to provide quality education to the wards of the Company''s employees. Now, it is a unit of the JEM Foundation and is affiliated to the CBSE Board, New Delhi . The School has a primary, middle, high and senior sections with around 2,100 students on its rolls from classes LKG to XII. The school takes pride in its young, energetic and competent faculty and students.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/IMG_1756.jpg" border="0" width="300" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The Curriculum from the Primary Level is set in accordance with the Board''s process of education and evaluation. There is a continous assessment process from classes LKG to VI. There are terminal exams for Classes VII  to XII. 2 rounds of Unit Tests are taken in Classes IX and X.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/IMG_1767.jpg" border="0" width="300" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>As per the new CBSE  system  of evaluation, 2 summative tests and 2 formative tests for Class IX are held. The formative test will are based on the Comprehensive Continuous Assessment (CCA) pattern.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/IMG_1758.jpg" border="0" width="300" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br />In the Senior Secondary level, the school provides education in three streams - Pure Sciences, Biology and Commerce.<br />The library contains the definitive books, manuals and periodicals for the students. The Science Labs and the Computer Lab is extensively used by the Students for Practicals and References.</p>', '', 1, 10, 0, 67, '2010-03-15 06:40:08', 62, '', '2010-05-08 06:56:58', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:40:08', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 26, 0, 5, '', '', 0, 38, 'robots=\nauthor='),
(99, 'Time Table', 'tt', '', '<p>Section: Kasidih High School | Category: Academics | Article: Time Table</p>', '', 1, 10, 0, 67, '2010-03-15 06:41:12', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-15 06:41:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 4, '', '', 0, 0, 'robots=\nauthor='),
(100, 'Fees', 'fees', '', '<p>Section: Kasidih High School | Category: Academics | Article: Fees</p>', '', 1, 10, 0, 67, '2010-03-15 06:42:10', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-15 06:42:10', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(101, 'Booklist', 'bk', '', '<p> </p>\r\n<ul>\r\n<li><a href="downloads/KHSbooklist.pdf">Book list - XI A / B</a></li>\r\n<br />\r\n<li><a href="downloads/KHSbooklist1.pdf">Book list - XII A / B </a></li>\r\n<br />\r\n<li><a href="downloads/KHSsyllabus1.pdf">Syllabus XII - Biology </a></li>\r\n<br />\r\n<li><a href="downloads/KHSsyllabus2.pdf">Syllabus XI - Economics and English</a></li>\r\n<br />\r\n<li><a href="downloads/KHSsyllabus3.pdf">Syllabus XI - Informatics Practices</a></li>\r\n<br />\r\n<li><a href="downloads/KHSsyllabus4.pdf">Syllabus XII - Chemistry and Mathematics </a></li>\r\n<br /> \r\n</ul>', '', 1, 10, 0, 67, '2010-03-15 06:43:09', 62, '', '2010-03-26 11:54:52', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:43:09', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 2, '', '', 0, 9, 'robots=\nauthor='),
(102, 'XSEED', 'xseed', '', '<p>Section: Kasidih High School | Category: Academics | Article: XSEED</p>', '', 1, 10, 0, 67, '2010-03-15 06:43:51', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-15 06:43:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(103, 'Games and Sports', 'gns', '', '<p> </p>\r\n<p>Kasidih High School gives a special impetus to Games ans Sports for the students to develop an all-round personality. The spirit of competitiveness and team work is nurtured in the students which help them to take on the challenges of life.</p>\r\n<p>The Annual Sports Day organized brings out the competitive spirit in the students. Independence Day and Republic Day are celebrated with great enthusiasm and national fervor.</p>\r\n<p><strong>Games and  Sports at KHS</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/IMG_2140.jpg" border="0" width="250" height="175" /></td>\r\n<td><img src="images/stories/KHS/IMG_2189.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Saraswati Puja is also an occasion of reverence and celebration in the School. For the all round development of students in various fields, the School has various clubs - the Eco club, Safe club, Mathematics club, Culture &amp; Activity Club and the Science Club headed by the respective teachers.</p>\r\n<p> </p>', '', 1, 10, 0, 68, '2010-03-15 06:45:07', 62, '', '2010-05-08 07:03:46', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:45:07', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 9, 0, 3, '', '', 0, 15, 'robots=\nauthor='),
(104, 'Environmental Activities', 'ev', '', '<p>Section: Kasidih High School | Category: Extra-Curricular Activities | Article: Environmental Activities</p>', '', 1, 10, 0, 68, '2010-03-15 06:46:44', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-15 06:46:44', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(105, 'Culture and Environment', 'ca', '', '<p> </p>\r\n<p>Kasidih High School takes special pride in the culture of Jamshedpur. The School nurtures its students to be loving, caring and responsible citizens of the Country. The Cultural Events in the School encourage the students to embrace the traditions and festivals of a diverse Country.</p>\r\n<p><strong>Ethics Month and Awareness Quizes<br /></strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/gh1.jpg" border="0" width="250" height="175" /></td>\r\n<td><img src="images/stories/KHS/gh2.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>What goes on in the classrooms, makes a major contribution to the formation of character and values among students who will go on to become the sun and light in the world. However, the classroom experience is just one part of the School experience. Values and character are nurtured through the School''s various co-curricular activities keeping the spark of creativity alive. Various Competitions bring out the latent creativity in the students. Debate, Elocution, Essay writing, Poster making, Clay modeling are just some of the Event Competitions in the Annual Calendar of the School.</p>\r\n<p><strong>Hindi Diwas and Cultural Events</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/IMG_2114.jpg" border="0" width="250" height="175" /></td>\r\n<td><img src="images/stories/KHS/IMG_2125.jpg" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Responsibility to the Environment is a pillar in our Principles. Students are encouraged to take part in various Quality Programs and Green Initiatives. Responsibility to the Environment is an integral part of the culture in Kasidih High School.</p>\r\n<p><strong>Peace Poster Campaign and Green Initiatives</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/IMG_2747.jpg" border="0" width="250" height="175" /></td>\r\n<td><img src="images/stories/KHS/IMG_4614.JPG" border="0" width="250" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>In these settings, the students learn a wide range of professional, leadership, and life skills. The School Events bring out the talent in the students and the School gives active encouragement to the students to pursue their dreams. The commitment of the school to the all round development of the child is strong. We offer a host of co-curricular activities throughout the year to the students.</p>\r\n<p> </p>', '', 1, 10, 0, 68, '2010-03-15 06:48:00', 62, '', '2010-05-08 07:12:16', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:48:00', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 27, 0, 1, '', '', 0, 41, 'robots=\nauthor='),
(106, 'Vision, Mission and Values', 'ms', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JUSCOlogo.gif" border="0" width="75" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Vision:</strong><br /> "The school aims at preparing students to become professionally competent citizens and responsible human beings who are concerned about the society at large in order to build up a country of our dream."</p>\r\n<p><strong>Mission:</strong><br /> "To promote in our students academic excellence, leadership skills and all round development."<br /><br /><strong>Values:</strong><br /> a. Love and concerns for others.<br /> b. Friendliness and cooperation.<br /> c. Truthfulness.<br /> d. Respect for all.<br /> e. Discipline and self control.<br /> f. Responsible citizenship.<br /> g. Care and concern for the environment.</p>\r\n<p> </p>\r\n<p><strong>Objective Statement of Purpose:</strong><br /> "A team of dedicated teachers mentor students for their mental, physical and emotional development, so thet they can graduate from the school fully equipped to meet the challenges of life successfully."</p>', '', 1, 10, 0, 69, '2010-03-15 06:49:16', 62, '', '2010-05-03 06:04:51', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:49:16', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 9, 0, 2, '', '', 0, 17, 'robots=\nauthor='),
(107, 'Students Code of Conduct', 'coc', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JUSCOlogo.gif" border="0" width="75" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>1. NATIONALISM</strong></p>\r\n<ul>\r\n<li>I shall respect our national heritage and take care of it.</li>\r\n<li>I will not entertain or allow any thought, words or deeds harmful to the nation.</li>\r\n<li>I shall imbibe national values and virtues.</li>\r\n<li>I shall value the freedom of my country and protect it.</li>\r\n</ul>\r\n<p><br /><strong>2. PROTECTION AND CONSERVATION OF ENVIRONMENT</strong></p>\r\n<ul>\r\n<li>I shall preserve forest, garden and fields.</li>\r\n<li>I shall plant trees and never cut them.</li>\r\n<li>I shall use nature''s resource judiciously and guard against undue depletion.</li>\r\n<li>I shall not pollute the Earth, its water or air.</li>\r\n</ul>\r\n<p><br /><strong>3. COMPASSION</strong></p>\r\n<ul>\r\n<li>I will love and respect all fellow humans.</li>\r\n<li>I will share my good fortune with people who have fewer blessings than me in life.</li>\r\n<li>I will love and protect all God''s creatures, whose presence ensures a balance on our planet.</li>\r\n<li>I will voluntarily contribute my services to organisations that serve society.</li>\r\n</ul>\r\n<p><br /><strong>4. HONESTY AND INTEGRITY</strong></p>\r\n<ul>\r\n<li>I shall not indulge in any malpractice during my assessment.</li>\r\n<li>I will take responsibility of all work that is given to me.</li>\r\n<li>I will stand by the truth at all times.</li>\r\n<li>I will report any breach of conduct to my superiors whenever I see one.</li>\r\n<li>I shall not knowingly or unknowingly lead any peer to break school rules.</li>\r\n</ul>\r\n<p><br /><strong>5. PURSUIT OF EXCELLENCE</strong></p>\r\n<ul>\r\n<li>I shall always remain committed to my academic duties.</li>\r\n<li>I will not compromise on my academic performance.</li>\r\n<li>I will strive to perform to the best of my abilities at all times.</li>\r\n<li>I will build on my strengths and will accept my weaknesses so as to change them into my strengths.</li>\r\n</ul>\r\n<p> </p>', '', 1, 10, 0, 69, '2010-03-15 06:50:22', 62, '', '2010-03-19 07:13:57', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:50:22', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, '', '', 0, 9, 'robots=\nauthor='),
(108, 'Awards and Recognitions', 'anr', '', '<p>Section: Kasidih High School | Category: Awards and Recognitions | Article: Awards and Recognitions</p>', '', 1, 10, 0, 70, '2010-03-15 06:52:20', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-15 06:52:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(109, 'Procedures and Downloads', 'dwn', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/pastarchives.jpg" border="0" width="150" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>For classes of LKG &amp; UKG, admission forms are distributed in the month of November / December every year. After submission and verification of age proof, students seeking admission in the Institution are called for interaction along with their parents. After publishing of the results, candidates are invited to take admission as per notice from the School regarding days and timings. Classes starts as per the new academic calendar.<br /><br />For admissions in other classes i.e. Std I to Std IX, a vacancy list is displayed after publishing of Final Term Examination  results.<br /><br />For admission in senior secondary class i.e. Std XI, admission forms are distributed in the month of December / January every year. After verification of academic progress card of Std IX and Std X students appear in written entrance test. List for admission is displayed on next day of  last date of CBSE – AISSE exams . After admission, classes start as per the new academic calendar.</p>', '', 1, 10, 0, 71, '2010-03-15 06:53:34', 62, '', '2010-04-30 05:31:09', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:53:34', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 10, 0, 1, '', '', 0, 26, 'robots=\nauthor='),
(110, 'Contact Us', 'cu', '', '<p> </p>\r\n<p><strong>Principal:</strong></p>\r\n<p>Ms. Meeta Jakhanwal</p>\r\n<p><strong>Phone:</strong></p>\r\n<p>+91 657 2428165, 2442981</p>\r\n<p><strong>E-Mail:</strong></p>\r\n<p>kasidihhs@yahoo.com</p>\r\n<p><strong>Address:</strong></p>\r\n<p>Kasidih High School</p>\r\n<p>Sakchi</p>\r\n<p>Jamshedpur - 831 001</p>', '', 1, 10, 0, 72, '2010-03-15 06:54:25', 62, '', '2010-04-29 05:54:22', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:54:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 8, 0, 1, '', '', 0, 7, 'robots=\nauthor='),
(111, 'Our Stars', 'sa', '', '<p> </p>\r\n<p>Kasidih High School takes is proud of every student and teacher. We take care in nurturing the talent  in every student are proud of every student leaving our portals. We feel overwhelmed by our students accomplishments and their accolades.</p>\r\n<p>Zeenal Yasmin has won numerous laurels for our School:</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/STzeenalyasmin.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<ul>\r\n<li>Secured 3rd position in the Inter School East Zone Hand Ball Tournament for CBSE- 2004.</li>\r\n<li>Represented Jharkhand in the 23rd Federation Cup Hand Ball Championship- 2008.</li>\r\n<li>Secured 2nd position in the 12th East Zone Handball Championship- March 2008 at Kolkata.</li>\r\n<li>Secured 1st position in the 6th Jharkhand State Handball Championship- March 2009.</li>\r\n<li>Participated in the 32nd Junior Girls National Handball Championship at Lucknow October’2009.</li>\r\n<li>Represented Jharkhand School Team in the 54th National School Games 2008-09.</li>\r\n<li>Represented Jharkhand State in the 38th Senior National Handball Championship in Jan 2010 held at Nagpur.</li>\r\n</ul>\r\n<p>Sushmita Vishwakar of Class VIII will represent the Jharkhand School Tennis Team in the 50th National Games Lawn Tennis Championships 2010, Pune.</p>\r\n<p>Other Star Achievers of our School are:</p>\r\n<ul>\r\n<li>Vivek Kumar of 2007 – 08 batch presently pursuing his studies after competing  IIT.</li>\r\n<li>Nishant Choubey of 2007 – 08 batch presently pursuing his studies after competing IIT.</li>\r\n<li>Piyush Ranjan of 2008 – 09 batch presently pursuing his studies after competing  IIT.</li>\r\n<li>Satender Kumar of 2008 – 09 batch presently pursuing his studies after competing  AIEEE.</li>\r\n<li>Neeraj Kumar of 2008 – 09 batch presently pursuing his studies after competing AIEEE.</li>\r\n<li>Vivek Kumar of 2008 – 09 batch presently pursuing his studies after competing AIEEE. </li>\r\n<li>Santosh Kumar of 2008 – 09 batch presently pursuing his studies at NIT, Jamshedpur.</li>\r\n<li>Avinash Prasad of 2008 -09 batch presently pursuing his studies at NIT, Jamshedpur.</li>\r\n</ul>\r\n<p> </p>', '', 1, 10, 0, 73, '2010-03-15 06:55:20', 62, '', '2010-04-29 10:33:11', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:55:20', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 30, 'robots=\nauthor='),
(112, 'Performance Index', 'cpi', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/pastarchives.jpg" border="0" width="150" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The School follows a rigid curriculum in which students are actively engaged. Tests and examinations are conducted regularly to monitor the progress of the students. Feedback between parents and teachers is done through regular meetings. The high standards of academic excellence reflects in the in the results for all Classes and Streams.</p>\r\n<p><strong>Result Of CBSE Board Exams Of Class X and XII  for years 2007 to 2009</strong></p>\r\n<!--table border="1"> \r\n<tbody>\r\n<tr>\r\n<td><b>YEAR</b></td>\r\n<td><b>CLASS X(%)</b></td>\r\n<td><b>CLASS XII(%)</b></td>\r\n</tr>\r\n<tr>\r\n<td>2007</td>\r\n<td>86.6</td>\r\n<td>86.6</td>\r\n</tr>\r\n<tr>\r\n<td>2008</td>\r\n<td>88</td>\r\n<td>81</td>\r\n</tr>\r\n<tr>\r\n<td>2009</td>\r\n<td>91</td>\r\n<td>92</td>\r\n</tr>\r\n</tbody>\r\n</table-->\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/cpi3.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 10, 0, 74, '2010-03-15 06:56:10', 62, '', '2010-05-02 08:54:59', 62, 0, '0000-00-00 00:00:00', '2010-03-15 06:56:10', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 17, 0, 1, '', '', 0, 26, 'robots=\nauthor='),
(113, 'Photo Gallery', 'pg', '', '<p>Section: Kasidih High School | Category: Photo Gallery | Article: Photo Gallery</p>', '', 1, 10, 0, 75, '2010-03-15 06:57:12', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-15 06:57:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(114, 'Infrastructure', 'infra', '', '<p> </p>\r\n<p>Since its inception, JUSCO schools have brought in a few technologies, equipments and facilities to enhance the teaching learning process in the school, as well as bring about agility in the administrative work.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/JSKschool.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Teachers &amp; administrators participate in numerous professional development opportunities pertaining to technology.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><strong>Area</strong></td>\r\n<td><strong>Technology used</strong></td>\r\n<td><strong>Software Teaching</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Computer</td>\r\n<td>LCD Projector, T.V. Audio, DVD</td>\r\n<td>Interactive Computer teaching package from NIIT</td>\r\n</tr>\r\n<tr>\r\n<td>Learning</td>\r\n<td>Computer LAN Digital Class room with PlasmaT.V. Screens</td>\r\n<td>Software from Educomp.</td>\r\n</tr>\r\n<tr>\r\n<td>Administration</td>\r\n<td>E-mail facility, internet connection,</td>\r\n<td>Administrative update through specially Designed software by Edisoft</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><strong>A glimpse of our Staff Room</strong></td>\r\n<td><strong>A Class in progress</strong></td>\r\n</tr>\r\n<tr>\r\n<td><img src="images/stories/JSK/JSKinfra1.jpg" border="0" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSK/JSKinfra2.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>With large, airy classrooms it becomes easier for children to focus on their books.</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/JSKinfra3.jpg" border="0" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSSP/JSSPee2.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Computer Education is an integral part of teaching- learning process in the primary school. Computer education is imparted to students of classes UKG &amp; above. A well equipped computer lab with 20 computers is provided. The software used for imparting computer education has been processed in partnership with NIIT, which is interactive and learner friendly.</p>\r\n<p><br /> <strong>An NIIT faculty  powered Computer class in progress</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/JSKinfra4.jpg" border="0" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSSP/spcomplab.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>The Educomp Smart Class brings abstract and difficult curriculum concepts to life and makes learning an enjoyable experience for students.</p>\r\n<p><br /> <strong>An Educomp Smart Class session in progress</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/JSKinfra5.jpg" border="0" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSSP/speducomp.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>The Library is well equipped with around 3,000 books and the main focus is to instill in our students an enthusiasm and love of reading books.</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/JSKinfra6.jpg" border="0" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSSP/spcurriculum.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 8, 0, 76, '2010-03-16 05:07:19', 62, '', '2010-05-10 04:52:00', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:07:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 21, 0, 1, '', '', 0, 45, 'robots=\nauthor='),
(115, 'Faculty', 'fct', '', '<p>The Faculty at JUSCO School Kadma, consists of warm, caring and competent teachers who take pride in the culture and community in Jamshedpur. The competent staff is coupled with new innovative ways of teaching and learning giving a fresh new approach to modern education. The faculty includes:</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/FCTmadhusingh.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Dr. Madhu Singh</strong> is the Principal of the School. She has been with the School for the past 5 years. She is has BSc. and MSc. and PhD. degrees from Benaras Hindu University. She also has a B.Ed degree. She believes in  " promoting a supportive environment where students, teachers and parents are safe to take creative risks and work collaboratively for the benefit of the learning community".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/FCTartibedi.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Arti Bedi</strong> has been with the School for the past 5 years and has a teaching experience of 13 years.She is a MA. and a BEd. She believes in "recognizing that each child is an individual, and that all children are creative and need to succeed".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/FCTsmithaprasad.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Smitha Prasad</strong> has been with the School for the past 9 months and has a teaching experience for 8 years. She is a BSc. and a BEd. She believes in " helping students in developing into successful citizens who are loving and caring."</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/FCTsonaliroy.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Sonali Roy</strong> has been with the School for the past 3 years. She is a BA. Her believes in "nurturing young talent and to excel in the field of education".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/FCTranuradhasree.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. R Anuradhasree</strong> has been with the School for the past 2 years and has a teaching experience for 7 years. She is a MA. and a BEd. She believes in "developing the talent in children and help them to excel in everything".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/FCTmikkisingh.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Mikki Singh</strong> has been with the School for the past 4 years. She is a MA. and a BEd. She believes in "nurturing young talent to bring out the innate potential".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/FCTchandrapriya.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Chandrapriya</strong> has been with the School for the past 4 years and has a teaching experience of 7 years. She is a BSc. BEd. and PGDCA. Her mission is to "excel in the field of education".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/FCTpreetigusain.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Preeti Gusain</strong> has been with the School for the past 2 years and has a teaching experience of 5 years. She is a BA. and BEd. She believes in "promoting all round development and inculcate a feeling of love and concern ".</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/FCTseematiwary.jpg" border="0" width="125" height="161" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Mrs. Seema Tiwary </strong>has been with the School for the past 5 years and has a teaching experience of 9 years. She is a BA. and a BEd. She believes in "inspiring a passion for learning and developing the attitude, skills and knowledge needed to be successful".</p>', '', 1, 8, 0, 77, '2010-03-16 05:08:49', 62, '', '2010-05-04 12:26:36', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:08:49', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 10, 0, 1, '', '', 0, 20, 'robots=\nauthor='),
(116, 'Message from the Principal', 'ms', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/JSKprincipal.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>" To my mind an educational instituite is not just about bricks, mortar and concrete, but about building character, enriching minds and about enriching    experiences that lasts a lifetime.<br /><br />Frequently I am asked what makes JUSCO Schools so special. My answer is quite simple - people. The people who are at JUSCO School provide a wonderful place where youth and experience come together for the singular purpose of learning about life and living.<br /><br />Life is not a set of instructions but is a series of experiences and learning process. This is where JUSCO School steps in – to make a difference and where learning is not just series of instructions but a passion, which goes beyond books, beyond instructions, beyond learning horizons.<br /><br />We believe in learning by capturing set of experiences and enable one to explore new realms of wisdom. It is truly a wonderful learning community. Our dedicated teachers and staff work closely with our students in bringing quality education to every student.<br /><br />The unified diversity element among student projects the integrated spectrum of prototype India as most of the students belong to the states of differing language and local culture gather with single minded focus to succeed in life.<br /><br />With a student strength of 1200 plus, the efforts are directed to accommodate and address the expectations of each student.<br /><br />The two values that guide our work are excellence and inclusion.<br /><br />Excellence in all that we do and expect. Inclusion of all members of our school community through respect, tolerance and recognition of difference.<br /><br />I am privileged to be the principal of the community at JUSCO School and to be able to daily observe the dynamic interaction of its members. Henry David Thoreau said, "If you have built castles in the air, your work need not be lost; that is where they should be. Now put foundations under them." We believe the education we offer is the foundation upon which students may build their dreams. "<br /><br /></p>\r\n<p>Dr. Madhu Singh<br /> Principal,<br /> JUSCO School Kadma</p>', '', 1, 8, 0, 78, '2010-03-16 05:10:08', 62, '', '2010-03-20 06:47:10', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:10:08', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 12, 'robots=\nauthor='),
(117, 'Curriculum', 'cu', '', '<p>The Curriculum followed in JUSCO School Kadma, is framed with a focus on active learning to bring out the natural curiosity and inquisitiveness in the budding minds.</p>\r\n<p>The teaching is coupled with new methods and technology to give a fresh new approach to modern education.</p>\r\n<p> </p>\r\n<p><strong>The Academic Calendar:</strong></p>\r\n<p>The school follows the national curriculum framework, which emphasizes on learning without burden; ‘Reading, writing, listening and speech’, which contribute to the child’s progress in all curricular areas.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/spcurriculum.jpg" border="0" width="200" height="175" /></td>\r\n<td><img src="images/stories/JSSP/xseed.jpg" border="0" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Emphasis is given on developing reading skills in the primary classes to give solid foundation to students learning.<br /> <strong>At JUSCO School we follow a methodology of “Continual Assessment”. The Academic Calendar is divided into three terms. Each term having 3 assessments.</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/JSKinfra6.jpg" border="0" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSK/JSKinfra3.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 8, 0, 79, '2010-03-16 05:11:40', 62, '', '2010-05-10 05:12:02', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:11:40', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 14, 0, 5, '', '', 0, 28, 'robots=\nauthor='),
(118, 'Time Table', 'tt', '', '<p>Section: JUSCO School Kadma | Category: Academics | Article: Time Table</p>', '', 1, 8, 0, 79, '2010-03-16 05:12:41', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 05:12:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 4, '', '', 0, 0, 'robots=\nauthor='),
(119, 'Fees', 'fees', '', '<p>Section: JUSCO School Kadma | Category: Academics | Article: Fees</p>', '', 1, 8, 0, 79, '2010-03-16 05:13:46', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 05:13:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(120, 'Booklist', 'bk', '', '<p>Section: JUSCO School Kadma | Category: Academics | Article: Booklist</p>', '', 1, 8, 0, 79, '2010-03-16 05:14:43', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 05:14:43', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(121, 'XSEED', 'xseed', '', '<p>Section: JUSCO School Kadma | Category: Academics | Article: XSEED</p>', '', 1, 8, 0, 79, '2010-03-16 05:15:45', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 05:15:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(122, 'Games and Sports', 'gns', '', '<p> </p>\r\n<p>The JUSCO Schools give a special impetus to Games ans Sports for the students to develop an all-round personality. The spirit of competitiveness and team work is nurtured in the students which help them to take on the challenges of life.The School Events bring out the talent in the students and the School gives active encouragement to the students to pursue their dreams.</p>\r\n<p> </p>\r\n<p><strong>Sports Day in full flow</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/ec6.jpg" border="0" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSK/ec7.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The school offers activities which encourage the students to recognize their talent and to strengthen their learning through practical applications both inside and outside the classroom and develops the true personality of the child.</p>\r\n<p> </p>\r\n<p><strong>Spirit of Competition and Teamwork</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/ec8.jpg" border="0" width="225" height="150" /></td>\r\n<td><img src="images/stories/JSK/ec9.jpg" border="0" width="225" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The commitment of the School to the all round development of the child prompts it to offer the following co-curricular activities year-round to its students. they include:</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><strong>Group A</strong></td>\r\n<td><strong>Group B</strong></td>\r\n<td><strong>Group C</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Dance</td>\r\n<td>Archery</td>\r\n<td>Eco Club</td>\r\n</tr>\r\n<tr>\r\n<td>Singing</td>\r\n<td>Cricket</td>\r\n<td>Dramatics Club</td>\r\n</tr>\r\n<tr>\r\n<td>Synthesizer</td>\r\n<td>Cubs and Bulbuls</td>\r\n<td>G.K. Club</td>\r\n</tr>\r\n<tr>\r\n<td>Tabla</td>\r\n<td>Chess</td>\r\n<td>Maths Club</td>\r\n</tr>\r\n<tr>\r\n<td>Guitar</td>\r\n<td>Table Tennis</td>\r\n<td>Guides and Scouts</td>\r\n</tr>\r\n<tr>\r\n<td>Drawing</td>\r\n<td>Yoga</td>\r\n<td>Art and Craft Club</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 8, 0, 80, '2010-03-16 05:16:30', 62, '', '2010-05-08 05:38:25', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:16:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 17, 0, 3, '', '', 0, 32, 'robots=\nauthor='),
(123, 'Culture and Environment', 'ea', '', '<p> </p>\r\n<p>JUSCO Schools take special pride in the culture of Jamshedpur. The Schools nurture its students to be loving, caring and responsible citizens of the Country. The Cultural Events in the School encourage the students to embrace the traditions and festivals of a diverse Country.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/ec16.jpg" border="0" width="113" height="150" /></td>\r\n<td><img src="images/stories/JSK/ec17.jpg" border="0" width="113" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Being part of the JUSCO Green School Project, water conservation forms an integral part of our environment mission.</strong></p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/ec1.jpg" border="0" width="227" height="150" /></td>\r\n<td><img src="images/stories/JSK/ec2.jpg" border="0" width="201" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Responsibility to the Environment is a pillar in our Principles. Students are encouraged to take part in various Quality Programs and Green Initiatives. Responsibility to the Environment is an integral part of the culture in the JUSCO Schools.</p>\r\n<p><strong>JUSCO Schools Environment Policy <br /></strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/envpolicy.jpg" border="2" width="202" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>In these settings, the students learn a wide range of professional, leadership, and life skills.<br />The commitment of the school to the all round development of the child is strong. We offer the following co-curricular activities throughout the year to the students.</p>\r\n<p style="margin-bottom: 0cm;" lang="en"><span style="font-size: x-small;"><br /></span></p>\r\n<!-- .style6 {  	font-family: Arial, Helvetica, sans-serif;  	text-align: center;  }  .style9 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 12px; }  .style16 {font-size: 10px}  .style17 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 10px; } --> \r\n<table class="style6" border="1" width="58%">\r\n<tbody>\r\n<tr valign="top">\r\n<td width="10%" align="center"><strong><span class="style9">Group A (Indoor Activity)</span></strong></td>\r\n<td width="10%" align="center"><strong><span class="style9">Group B (Outdoor Activity)</span></strong></td>\r\n<td width="9%" align="center"><strong><span class="style9">Group C (Club Activities for Std. VI and above)</span></strong></td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Dance</td>\r\n<td class="style9" align="center"><span class="style16">Archery</span></td>\r\n<td class="style9" align="center"><span class="style16">Eco Club</span></td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Synthesizer</td>\r\n<td class="style17" align="center">Cricket</td>\r\n<td class="style17" align="center">Dramatics Club</td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Tabla</td>\r\n<td class="style17" align="center">Cubs and Bulbuls</td>\r\n<td class="style17" align="center">G.K. Club</td>\r\n</tr>\r\n<tr valign="top">\r\n<td align="center">Drawing</td>\r\n<td class="style17" align="center">Chess</td>\r\n<td class="style17" align="center">Math Club</td>\r\n</tr>\r\n<tr valign="top">\r\n<td class="style17" align="center">Singing</td>\r\n<td class="style17" align="center">Table Tennis</td>\r\n<td class="style17" align="center">Guides and Scouts</td>\r\n</tr>\r\n<tr valign="top">\r\n<td class="style17" align="center">Guitar</td>\r\n<td class="style17" align="center">Yoga</td>\r\n<td class="style17" align="center"></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 8, 0, 80, '2010-03-16 05:17:28', 62, '', '2010-05-08 05:43:59', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:17:28', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 15, 0, 2, '', '', 0, 25, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(124, 'Cultural Activities', 'ca', '', '<p> </p>\r\n<p>The JUSCO Schools intend to take the student beyond the realm of learning to the expansive world of education where the complete development of the student necessarily requires equal emphasis on academic and co-curricular activities.</p>\r\n<p><strong>A Cultural Event</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/ec3.jpg" border="0" width="200" height="150" /></td>\r\n<td><img src="images/stories/JSK/ec4.jpg" border="0" width="200" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The school offers activities which challenge the students to recognize their talent and to strengthen their learning through practical applications both inside and outside the classroom, to develop the true personality of the child.</p>\r\n<p><strong>An Exhibition Event</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/ec10.jpg" border="0" width="200" height="150" /></td>\r\n<td><img src="images/stories/JSK/ec12.jpg" border="0" width="200" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>A Rangoli Event</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/ec15.jpg" border="0" width="200" height="150" /></td>\r\n<td><img src="images/stories/JSK/ec17.jpg" border="0" width="200" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> The commitment of the School to the all round development of the child prompts it to offer the following co-curricular activities year-round to its students. they include:</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><strong>Group A</strong></td>\r\n<td><strong>Group B</strong></td>\r\n<td><strong>Group C</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Dance</td>\r\n<td>Archery</td>\r\n<td>Eco Club</td>\r\n</tr>\r\n<tr>\r\n<td>Singing</td>\r\n<td>Cricket</td>\r\n<td>Dramatics Club</td>\r\n</tr>\r\n<tr>\r\n<td>Synthesizer</td>\r\n<td>Cubs and Bulbuls</td>\r\n<td>G.K. Club</td>\r\n</tr>\r\n<tr>\r\n<td>Tabla</td>\r\n<td>Chess</td>\r\n<td>Maths Club</td>\r\n</tr>\r\n<tr>\r\n<td>Guitar</td>\r\n<td>Table Tennis</td>\r\n<td>Guides and Scouts</td>\r\n</tr>\r\n<tr>\r\n<td>Drawing</td>\r\n<td>Yoga</td>\r\n<td>Art and Craft Club</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 8, 0, 80, '2010-03-16 05:18:40', 62, '', '2010-04-26 10:30:03', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:18:40', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, '', '', 0, 8, 'robots=\nauthor='),
(125, 'Vision, Mission and Values', 'ms', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JUSCOlogo.gif" border="1" width="75" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><strong>VISION:</strong><br /> <br />" To be a learning Institution of choice providing value based education that nurtures individual talent and potential of students, enabling them to be life long learners and excel in their chosen fields. "</p>\r\n<p><strong>MISSION :</strong><br /><br />" Quality Education for Life. "</p>\r\n<p><strong>VALUES:</strong></p>\r\n<ol>\r\n<li>Nationalism</li>\r\n<li>Honesty and Integrity</li>\r\n<li>Protection and Conservation of Environment</li>\r\n<li>Pursuit of Excellence</li>\r\n<li>Compassion</li>\r\n</ol>\r\n<p><br /><strong>SCHOOL MOTTO:</strong></p>\r\n<p>" Noble Intent; Loving Heart; Fearless Mind "<br /><br /><strong>OBJECTIVE / STATEMENT OF PURPOSE:</strong></p>\r\n<ol>\r\n<li>To cultivate, recognize, and respect the opinions and contributions of child, parent, and teacher.</li>\r\n<li>To provide a safe, nurturing environment for learning where individuality is recognized and diversity is celebrated.</li>\r\n<li>To provide instruction that encourages development of each child''s practical, cognitive, physical, social, and moral potential.</li>\r\n<li>To present a curriculum that is intellectually stimulating and developmentally appropriate.</li>\r\n<li>To encourage initiative, self-discipline, critical thinking and creative approaches to problem-solving.</li>\r\n<li>To foster the values of good citizenship through community service, civic awareness, and development of leadership potential. </li>\r\n<li>To foster loyalty, mutual respect and respect for all mankind </li>\r\n<li>To foster respect for the environment. </li>\r\n<li>To encourage parents to support the educational efforts of the school and to utilize the structures offered to ensure positive parental involvement. </li>\r\n<li>To encourage close partnership with parents and management to ensure that the aims of the school are achieved.</li>\r\n</ol>\r\n<p> </p>', '', 1, 8, 0, 81, '2010-03-16 05:19:27', 62, '', '2010-05-03 06:02:32', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:19:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 12, 'robots=\nauthor='),
(126, 'Code of Conduct', 'coc', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JUSCOlogo.gif" border="1" width="75" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>1. NATIONALISM</strong></p>\r\n<ul>\r\n<li>I shall respect our national heritage and take care of it.</li>\r\n<li>I will not entertain or allow any thought, words or deeds harmful to the nation.</li>\r\n<li>I shall imbibe national values and virtues.</li>\r\n<li>I shall value the freedom of my country and protect it.</li>\r\n</ul>\r\n<p><br /><strong>2. PROTECTION AND CONSERVATION OF ENVIRONMENT</strong></p>\r\n<ul>\r\n<li>I shall preserve forest, garden and fields.</li>\r\n<li>I shall plant trees and never cut them.</li>\r\n<li>I shall use nature''s resource judiciously and guard against undue depletion.</li>\r\n<li>I shall not pollute the Earth, its water or air.</li>\r\n</ul>\r\n<p><br /><strong>3. COMPASSION</strong></p>\r\n<ul>\r\n<li>I will love and respect all fellow humans.</li>\r\n<li>I will share my good fortune with people who have fewer blessings than me in life.</li>\r\n<li>I will love and protect all God''s creatures, whose presence ensures a balance on our planet.</li>\r\n<li>I will voluntarily contribute my services to organisations that serve society.</li>\r\n</ul>\r\n<p><br /><strong>4. HONESTY AND INTEGRITY</strong></p>\r\n<ul>\r\n<li>I shall not indulge in any malpractice during my assessment.</li>\r\n<li>I will take responsibility of all work that is given to me.</li>\r\n<li>I will stand by the truth at all times.</li>\r\n<li>I will report any breach of conduct to my superiors whenever I see one.</li>\r\n<li>I shall not knowingly or unknowingly lead any peer to break school rules.</li>\r\n</ul>\r\n<p><br /><strong>5. PURSUIT OF EXCELLENCE</strong></p>\r\n<ul>\r\n<li>I shall always remain committed to my academic duties.</li>\r\n<li>I will not compromise on my academic performance.</li>\r\n<li>I will strive to perform to the best of my abilities at all times.</li>\r\n<li>I will build on my strengths and will accept my weaknesses so as to change them into my strengths.</li>\r\n</ul>\r\n<p> </p>', '', 1, 8, 0, 81, '2010-03-16 05:20:46', 62, '', '2010-03-20 07:22:43', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:20:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, '', '', 0, 8, 'robots=\nauthor='),
(127, 'Awards and Recognitions', 'anr', '', '<p>Section: JUSCO School Kadma | Category: Awards and Recognitions | Article: Awards and Recognitions</p>', '', 1, 8, 0, 82, '2010-03-16 05:21:41', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 05:21:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(128, 'Procedures and Downloads', 'dwn', '', '<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/pastarchives.jpg" border="0" width="150" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>For lower classes i.e.  L.KG &amp; U.KG, admission forms are distributed in the month of November every year. After submission and verification of age proof, students seeking admission in our institution are called for interaction along with their parents. After publishing of results (day prescribed from the office of Deputy Commissioner, East Singhbhum), candidates are invited to take admission as per notice from school regarding days and timings. Classes starts as per the new academic calendar.<br /><br /></p>\r\n<ul>\r\n<li><a href="downloads/JSKadmission.pdf">Download the Admission Form</a></li>\r\n</ul>\r\n<p><br /> For admissions in other classes i.e. Std I to Std IX, vacancy list is displayed after publishing of Final Term Examination  result.<br /><br />For admission in senior secondary class i.e. Std XI, admission forms are distributed in the month of December every year. After verification of academic progress card of Std IX and Std X students appear in written entrance test. List for admission is displayed on next day of  last date of CBSE – AISSE exams ( As per directives from CBSE ). After admission classes starts as per new academic calendar.<br /><br /></p>\r\n<p> </p>', '', 1, 8, 0, 83, '2010-03-16 05:25:32', 62, '', '2010-03-22 12:27:12', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:25:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 6, 'robots=\nauthor='),
(129, 'Contact Us', 'cu', '', '<p> </p>\r\n<p><strong>Principal:</strong></p>\r\n<p>Dr. Madhu Singh</p>\r\n<p><strong>Coordinator:</strong></p>\r\n<p>Ms. Arti Bedi</p>\r\n<p><strong>Phone:</strong></p>\r\n<p>+91 657 2142698</p>\r\n<p><strong>Address:</strong></p>\r\n<p>JUSCO School Kadma</p>\r\n<p>P.O. Kadma</p>\r\n<p>Jamshedpur - 831005</p>', '', 1, 8, 0, 84, '2010-03-16 05:26:37', 62, '', '2010-04-08 09:26:49', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:26:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 5, 0, 1, '', '', 0, 1, 'robots=\nauthor='),
(130, 'Our Stars', 'sa', '', '<p> </p>\r\n<p>JUSCO Schools take pride in their bright, young and competent students and faculty. We nurture and encourage the young talents blooming in our Schools and feel ovewhelmed when they bring back accolades with their accomplishments. Some of our Stars are:</p>\r\n<p><strong>Adwitia Ghosh – A budding dancer</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/sa1.jpg" border="0" width="113" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Saqlain – Archery Talent personified. He has won 4 gold medals in the Jharkhand Archery Championships</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/sa2.jpg" border="0" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Tubah :- An ace archer in the making. . She has won a silver medal in the Jharkhand Archery Championships</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/sa3.jpg" border="0" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Wahidur Rahman – Overall Champion (Boys)  (Annual School Sports 2009)</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/sa4.jpg" border="0" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Rekha – Overall Girls Champion -  ( Annual School Sports 2009 )<br /></strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/sa5.jpg" border="0" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <strong>Abhinava Sen – has won the 1st Prize at the Interschool Yoga Championships</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSK/sa6.jpg" border="0" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 8, 0, 85, '2010-03-16 05:27:30', 62, '', '2010-05-08 05:52:22', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:27:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 19, 'robots=\nauthor='),
(131, 'Performance Index', 'cpi', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/pastarchives.jpg" border="0" width="150" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>JUSCO Schools follow a rigid curriculum in which students are actively engaged. Tests and examinations are conducted regularly to monitor the progress of the students. Feedback between parents and teachers is done through regular meetings. The high standards of academic excellence reflects in the in the results for all Classes and Streams.</p>\r\n<p><strong>Results</strong></p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/KHS/cpi3.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 8, 0, 86, '2010-03-16 05:28:27', 62, '', '2010-05-02 08:50:38', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:28:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 12, 0, 1, '', '', 0, 12, 'robots=\nauthor='),
(132, 'Photo Gallery', 'pg', '', '<p>Section: JUSCO School Kadma | Category: Photo Gallery | Article: Photo Gallery</p>', '', 1, 8, 0, 87, '2010-03-16 05:29:25', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 05:29:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(133, 'Infrastructure', 'infra', '', '<p> </p>\r\n<p>Vidya Jyoti School is located in Gamharia, near the city of Jamshedpur.</p>\r\n<p>The School has spacious classrooms and complete laboratories. The students are provided a clean, congenial atmosphere for their academic and creative growth. The School field is used for  a variety of games, sports and events.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/Image2435.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Computer Education:</strong><br /><br />Computer Education is an integral part of the teaching learning process in the Primary School. Computer education is imparted to students of classes UKG and above. A complete computer lab with more than 20 computers is provided and the software used for imparting computer education has been processed in partnership with Edutech and NIIT, both leading software providers.<br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/32.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The audio - video room helps in giving the children a visual learning through the educational and interactive CDs used in them.<br /><br /><strong>Library:</strong><br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/Image2343.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The main focus is to instill in students is an enthusiasm for the joy of reading. The library is complete with the definitive books, manuals and periodicals to support the academics and reading interests of the students.<br /><br /></p>', '', 1, 9, 0, 88, '2010-03-16 05:57:46', 62, '', '2010-05-08 08:21:05', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:57:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 15, 0, 1, '', '', 0, 24, 'robots=\nauthor='),
(134, 'Faculty', 'fct', '', '<p>The Faculty at Vidya Jyoti School, consists of warm, caring and competent teachers who take pride in the culture and community in Jamshedpur. The competent staff is coupled with new innovative ways of teaching and learning giving a fresh new approach to modern education. The faculty includes:</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/FCTgroup.jpg" border="0" width="300" height="200" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>Mr. Flavian Topno</strong> is the Principal of the School. He is a MEd.</p>\r\n<p><strong>Ms. K. Nowrangi</strong> is a BEd.</p>\r\n<p><strong>Ms. Usha Rani Kumar</strong> is a BA. and a BEd.</p>\r\n<p><strong>Mr. P.K. Mishra</strong> is a BEd.</p>\r\n<p><strong>Ms. Surjeet Kaur</strong> is a BA. and a BEd.</p>\r\n<p><strong>Ms. Dorothia Lakra</strong> is a BA. and a BEd.</p>\r\n<p><strong>Ms. Satpal Kaur</strong> is a BEd.</p>\r\n<p><strong>Ms. Jaba Das</strong> is a BSc. and a BEd.</p>\r\n<p><strong>Ms. Savitri Devi</strong> is a BEd.</p>\r\n<p><strong>Ms. Manmit Kour</strong> is a BCom. and a BEd.</p>\r\n<p><strong>Ms. Ranjeet Kour</strong> is a BA. and a BEd.</p>\r\n<p><strong>Mr. Varindar Kour</strong> is BEd.</p>\r\n<p><strong>Ms. Neeta Gupta</strong> is a BEd.</p>\r\n<p><strong>Ms. Shagufita Naz</strong> is a BSc. and a BEd.</p>\r\n<p><strong>Ms. Anand Kumar Singh</strong> is a BA. and a BEd.</p>\r\n<p><strong>Ms. Anindita Mandal</strong> is a BEd.</p>\r\n<p><strong>Ms. Rajni</strong> is a BEd.</p>\r\n<p><strong>Mr. Hare Ram Dubey</strong> is a BEd.</p>\r\n<p><strong>Ms. Anupama Singh</strong> is a BEd.</p>\r\n<p><strong>Mr. Qamar Ali</strong> is a BEd.</p>\r\n<p><strong>Ms. Reema Mukherjee</strong> is a BEd.</p>\r\n<p><strong>Ms. Rashmi Nath</strong> is a BSc. and a BEd. <br /><strong> </strong></p>\r\n<p><strong>Ms. Soma Mahato</strong> is a BA. and Montessori Training.</p>\r\n<p><strong>Ms. Supriya Laxmi Mishra</strong> is a BEd.</p>\r\n<p><strong>Ms. Rekha Singh</strong> is a MSc. and a BEd.</p>\r\n<p><strong>Ms. Kakuli Dey</strong> is a BEd.</p>\r\n<p><strong>Mr. Brahma Nand Sharma</strong> is a BEd.</p>\r\n<p><strong>Ms. Aninder Kaur</strong> is a BEd.</p>\r\n<p><strong>Ms. Anjali Jhingran</strong> is a BEd.</p>\r\n<p><strong>Ms. Indu Jha</strong> is a BEd.</p>\r\n<p><strong>Ms. Shabnam Jahan</strong> is a MA.</p>\r\n<p><strong>Ms. Anita Verma</strong> is a BEd.</p>\r\n<p><strong>Ms. Shweta Singh</strong> is a BEd.</p>\r\n<p><strong>Mr. S.N. Thakur</strong> is a IA., BPEd.</p>\r\n<p><strong>Mr. Shankar Kumar Karn</strong> is a BEd.</p>\r\n<p><strong>Mr. Nitay Jagati</strong> is a BEd.</p>\r\n<p><strong>Ms. Christina</strong> is a BEd.</p>', '', 1, 9, 0, 89, '2010-03-16 05:58:58', 62, '', '2010-04-26 07:02:11', 62, 0, '0000-00-00 00:00:00', '2010-03-16 05:58:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 15, 0, 1, '', '', 0, 30, 'robots=\nauthor='),
(135, 'Message from the Principal', 'ms', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/flaviantopno.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>" Teachers are the all important assets  of a school. The success of a school depends solely on the capabilities of its teachers. It is  imperative that we should empower our teachers and know they play decisive role in the formation of students. The role of a teacher is not to teach only but also to create a conducive environment to learn. Let us also not forget : “No one can tell where the influence of a teacher ends - it affects eternity.”</p>\r\n<p>“ Greetings and Best wishes to all the teaching fraternity.”</p>\r\n<p>Flavian Topno<br /> Principal, Vidya Jyoti School</p>', '', 1, 9, 0, 90, '2010-03-16 06:00:06', 62, '', '2010-04-21 05:23:31', 62, 0, '0000-00-00 00:00:00', '2010-03-16 06:00:06', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 10, 0, 1, '', '', 0, 21, 'robots=\nauthor='),
(136, 'Curriculum', 'cu', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/Image2435.jpg" border="0" width="200" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Vidya Jyoti School is an Engilsh Medium Co-Educational Institution affiliated to the CBSE ( Central Board of Secondary Education), New Delhi. It has classes from LKG to X. The streams for class X  are Science and Commerce. The Curriculum followed is in accordance with the regulations laid down by the CBSE Board.<br /><br />The medium of instruction in the School is English. Hindi has a vital role in the curriculum and is taught daily in all classes. The education at Vidya Jyoti School is liberal and universal but at the same time it is firmly rooted in Indian tradition.<br /><br />The curriculum therefore embraces Moral Instruction, English Language and Literature, Hindi Language and Literature, Mathematics, Natural Sciences, Environmental Studies, Social Studies, Computer Science, Sanskrit and Arts &amp; Crafts.</p>\r\n<p><strong>The School offers these Subjects:<br /></strong></p>\r\n<ul>\r\n<li>English Language/ Literature</li>\r\n<li> Hindi Language/ Literature</li>\r\n<li>Sanskrit</li>\r\n<li> Mathematics</li>\r\n<li> General Science ( Physics, Chemistry, Biology)</li>\r\n<li> Social Studies ( History, Civics, Geography, Economics)</li>\r\n<li> Environmental Studies</li>\r\n<li> Computer</li>\r\n<li>General Knowledge</li>\r\n<li>Moral Science, Physical Education, Art and Craft, Music/ Singing</li>\r\n</ul>\r\n<p> </p>', '', 1, 9, 0, 91, '2010-03-16 06:00:59', 62, '', '2010-04-23 05:32:56', 62, 0, '0000-00-00 00:00:00', '2010-03-16 06:00:59', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 13, 0, 5, '', '', 0, 27, 'robots=\nauthor='),
(137, 'Time Table', 'tt', '', '<p>Section: Vidya Jyoti School | Category: Academics | Article: Time Table</p>', '', 1, 9, 0, 91, '2010-03-16 06:02:08', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 06:02:08', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 4, '', '', 0, 0, 'robots=\nauthor='),
(138, 'Booklist', 'bk', '', '<p>Section: Vidya Jyoti School | Category: Academics | Article: Booklist</p>', '', 1, 9, 0, 91, '2010-03-16 06:03:00', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 06:03:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(139, 'XSEED', 'xseed', '', '<p>Section: Vidya Jyoti School | Category: Academics | Article: XSEED</p>', '', 1, 9, 0, 91, '2010-03-16 06:03:37', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 06:03:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(140, 'Fees', 'fees', '', '<p>Section: Vidya Jyoti School | Category: Academics | Article: Fees</p>', '', 1, 9, 0, 91, '2010-03-16 06:04:20', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 06:04:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(141, 'Games and Sports', 'gns', '', '<p> </p>\r\n<p>Vidya Jyoti School gives a special impetus to Games ans Sports for the students to develop an all-round personality. The spirit of competitiveness and team work is nurtured in the students which help them to take on the challenges of life.</p>\r\n<p>The School Events bring out the talent in the students and the School gives active encouragement to the students to pursue their dreams.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/Image2372.jpg" border="0" width="200" height="150" /></td>\r\n<td><img src="images/stories/VJS/Image2683.jpg" border="0" width="200" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The School offers activities which brings out the talent and creativity in the students strengthens their learning through practical applications both inside and outside the classroom. This ensures the development of the complete personality of the child.The commitment of the School to the all round development of the child is important.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/Image1288.jpg" border="0" width="200" height="150" /></td>\r\n<td><img src="images/stories/VJS/Image2368.jpg" border="0" width="200" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> We offer co-curricular activities year-round to the students. They include:<br /><br /><strong>Group A</strong></p>\r\n<ul>\r\n<li> Dance</li>\r\n<li> Musical Instruments and Vocals</li>\r\n<li> Synthesizer</li>\r\n<li> Tabla </li>\r\n</ul>\r\n<p><strong>Group B</strong></p>\r\n<ul>\r\n<li>Football</li>\r\n<li> Archery</li>\r\n<li> Cricket</li>\r\n<li> Basketball</li>\r\n<li> Cubs &amp; Bulbuls</li>\r\n<li> Chess </li>\r\n<li> Kho-Kho</li>\r\n<li> Athletics</li>\r\n</ul>', '', 1, 9, 0, 92, '2010-03-16 06:05:32', 62, '', '2010-05-02 05:22:43', 62, 0, '0000-00-00 00:00:00', '2010-03-16 06:05:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 12, 0, 3, '', '', 0, 24, 'robots=\nauthor='),
(142, 'Environmental Activities', 'ea', '', '<p>Section: Vidya Jyoti School | Category: Extra-Curricular Activities | Article: Environmental Activities</p>', '', 1, 9, 0, 92, '2010-03-16 06:06:44', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 06:06:44', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(143, 'Culture and Environment', 'ca', '', '<p>Vidya Jyoti School takes special pride in the culture of Jamshedpur. The Schools nurture its students to be loving, caring and responsible citizens of the Country. The Cultural Events in the School encourage the students to embrace the traditions and festivals of a diverse Country.</p>\r\n<p>We believe in taking the student beyond the realm of learning to the expansive world of Education where the complete development of the student requires equal emphasis on academic and co-curricular activities.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/27.jpg" border="0" width="200" height="150" /></td>\r\n<td><img src="images/stories/VJS/DSC_2115.JPG" border="0" width="200" height="150" /></td>\r\n<td><img src="images/stories/VJS/Image1305.jpg" border="0" width="200" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Responsibility to the Environment is a pillar in our Principles. Students are encouraged to take part in various Quality Programs and Green Initiatives. Responsibility to the Environment is an integral part of the culture in the JUSCO Schools.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/SDC11097.JPG" border="0" width="200" height="150" /></td>\r\n<td><img src="images/stories/VJS/SDC11101.JPG" border="0" width="200" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>In these settings, the students learn a wide range of professional, leadership, and life skills.The School offers activities which brings out the talent and creativity in the students strengthens their learning through practical applications both inside and outside the classroom. This ensures the development of the complete personality of the child.The commitment of the School to the all round development of the child is important. We offer co-curricular activities year-round to the students. They include:<br /><br /><strong>Group A</strong></p>\r\n<ul>\r\n<li>Dance</li>\r\n<li> Musical Instruments and Vocals</li>\r\n<li> Synthesizer</li>\r\n<li> Tabla </li>\r\n</ul>\r\n<p><strong>Group B</strong></p>\r\n<ul>\r\n<li>Football</li>\r\n<li> Archery</li>\r\n<li> Cricket</li>\r\n<li> Basketball</li>\r\n<li> Cubs &amp; Bulbuls</li>\r\n<li> Chess </li>\r\n<li> Kho-Kho</li>\r\n<li> Athletics</li>\r\n</ul>', '', 1, 9, 0, 92, '2010-03-16 06:08:15', 62, '', '2010-05-02 05:57:57', 62, 0, '0000-00-00 00:00:00', '2010-03-16 06:08:15', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 9, 0, 1, '', '', 0, 17, 'robots=\nauthor='),
(144, 'Vision, Mission and Values', 'ms', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JUSCOlogo.gif" border="1" width="75" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>VISION:</strong><br /><br />To provide an education that gives all students an equal opportunity to achieve their fullest development intellectually, socially, emotionally, spiritually and physically and to equip them with skill, self-confidence and maturity to meet the demands of a career, as caring and responsible members of their family and community.<br /><br /><strong>MISSION:</strong><br /><br /></p>\r\n<ol>\r\n<li>To help students develop lively, inquisitive minds and physical skills; giving them the ability to question and argue rationally and to apply themselves to tasks at hands;</li>\r\n<li>To install respect for moral values, for other people and for oneself and tolerance of other races, religion and ways of life;</li>\r\n<li>To help students understand the world in which we live and the interdependence of people.</li>\r\n<li>To help students use language effectively and imaginatively in reading, writing and speaking to provide a basis of mathematics, science and linguistic knowledge, enabling boys and girls to learn the essential skills needed in a fast-changing world of work.</li>\r\n<li>To teach children about human achievement and aspirations in the arts and sciences, in religion and in the search for a more just social order.</li>\r\n<li>To encourage and foster individual creativity and leadership among students.</li>\r\n</ol>\r\n<p><br /><strong>VALUES:</strong><br /><br /></p>\r\n<ol>\r\n<li>Each student must be treated with respect because ''He/She is a human being''.</li>\r\n<li>Active involvement of the parents is integral to all the activities in school.</li>\r\n<li>Learning is an active; process and students are continually encouraged to strive for excellence in every-field.</li>\r\n<li>Make the students leaders of tomorrow who will then be the agents of needed social change in their community and become men and women for others.</li>\r\n<li>Students must accept and carry out responsibilities, which comes as their share in running the school. They must be actively involved in teaching- learning process and other pursuit of knowledge.</li>\r\n<li>Students must inculcate in themselves the values of hard-work, smart-work, discipline, self-control, respect for elders, for everything that is Indian, for religion and spirituality, and observe the rules of good-conduct.</li>\r\n</ol>\r\n<p> </p>', '', 1, 9, 0, 93, '2010-03-16 06:09:20', 62, '', '2010-05-03 05:56:47', 62, 0, '0000-00-00 00:00:00', '2010-03-16 06:09:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 8, 'robots=\nauthor='),
(145, 'Code of Conduct', 'coc', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JUSCOlogo.gif" border="1" width="75" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>1. NATIONALISM</strong></p>\r\n<ul>\r\n<li>I shall respect our national heritage and take care of it.</li>\r\n<li>I will not entertain or allow any thought, words or deeds harmful to the nation.</li>\r\n<li>I shall imbibe national values and virtues.</li>\r\n<li>I shall value the freedom of my country and protect it.</li>\r\n</ul>\r\n<p><br /><strong>2. PROTECTION AND CONSERVATION OF ENVIRONMENT</strong></p>\r\n<ul>\r\n<li>I shall preserve forest, garden and fields.</li>\r\n<li>I shall plant trees and never cut them.</li>\r\n<li>I shall use nature''s resource judiciously and guard against undue depletion.</li>\r\n<li>I shall not pollute the Earth, its water or air.</li>\r\n</ul>\r\n<p><br /><strong>3. COMPASSION</strong></p>\r\n<ul>\r\n<li>I will love and respect all fellow humans.</li>\r\n<li>I will share my good fortune with people who have fewer blessings than me in life.</li>\r\n<li>I will love and protect all God''s creatures, whose presence ensures a balance on our planet.</li>\r\n<li>I will voluntarily contribute my services to organisations that serve society.</li>\r\n</ul>\r\n<p><br /><strong>4. HONESTY AND INTEGRITY</strong></p>\r\n<ul>\r\n<li>I shall not indulge in any malpractice during my assessment.</li>\r\n<li>I will take responsibility of all work that is given to me.</li>\r\n<li>I will stand by the truth at all times.</li>\r\n<li>I will report any breach of conduct to my superiors whenever I see one.</li>\r\n<li>I shall not knowingly or unknowingly lead any peer to break school rules.</li>\r\n</ul>\r\n<p><br /><strong>5. PURSUIT OF EXCELLENCE</strong></p>\r\n<ul>\r\n<li>I shall always remain committed to my academic duties.</li>\r\n<li>I will not compromise on my academic performance.</li>\r\n<li>I will strive to perform to the best of my abilities at all times.</li>\r\n<li>I will build on my strengths and will accept my weaknesses so as to change them into my strengths.</li>\r\n</ul>\r\n<p> </p>', '', 1, 9, 0, 93, '2010-03-16 06:11:17', 62, '', '2010-03-22 06:21:03', 62, 0, '0000-00-00 00:00:00', '2010-03-16 06:11:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 4, 0, 1, '', '', 0, 6, 'robots=\nauthor='),
(146, 'Awards and Recognitions', 'anr', '', '<p>Section: Vidya Jyoti School | Category: Awards and Recognitions | Article: Awards and Recognitions</p>', '', 1, 9, 0, 94, '2010-03-16 06:12:20', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 06:12:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(147, 'Procedures and Downloads', 'dwn', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/pastarchives.jpg" border="0" width="150" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>ADMISSIONS:</strong><br /><br />New Admission is taken mainly in Nursery, LKG and UKG. Std. I to VII is as per vacancy of seats. Subjects for the Admission Test: English Language, Mathematics, General Science. This is followed by an Interview of the Parents.</p>', '', 1, 9, 0, 95, '2010-03-16 06:13:34', 62, '', '2010-04-27 12:01:28', 62, 0, '0000-00-00 00:00:00', '2010-03-16 06:13:34', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 11, 'robots=\nauthor='),
(148, 'Contact Us', 'cu', '', '<p> </p>\r\n<p><strong>Principal:</strong></p>\r\n<p>Mr. Flavian Topno</p>\r\n<p><strong>Phone:</strong></p>\r\n<p>+91 657 2904000, 2386101</p>\r\n<p><strong>E-Mail:</strong></p>\r\n<p>vidyajyotischool@gmail.com</p>\r\n<p><strong>Address:</strong></p>\r\n<p>Vidya Jyoti School</p>\r\n<p>TISCO Complex Colony, Gamharia, Seraikela - Kharsawan</p>\r\n<p>Jharkhand - 832108</p>', '', 1, 9, 0, 96, '2010-03-16 06:14:16', 62, '', '2010-04-08 09:31:42', 62, 0, '0000-00-00 00:00:00', '2010-03-16 06:14:16', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 5, 0, 1, '', '', 0, 9, 'robots=\nauthor='),
(149, 'Our Stars', 'sa', '', '<p> </p>\r\n<p>Vidya Jyoti School takes pride in every student and teacher who is a part of the Institution. We take great care in nurturing the talent and creativity in every student and feel overwhelmed when our students bring back accolades with their achievements.</p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/IMG_2235.JPG" border="0" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Some of our accomplished students are:</p>\r\n<p><strong>Gunjan Verma, Ritu Kumari and Sunny Biswas:</strong><br />Toppers in CBSE Class X Exams .</p>\r\n<p><strong>Sameer Mondal:</strong><br />All India Schools, Junior Champion 2007-2008<br />Participated in State Championship, Jharkhand Inter School Championship, 54th National<br />Schools'' Games, Aurangabad.</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/STone.jpg" border="0" width="200" height="175" /></td>\r\n<td><img src="images/stories/VJS/STtwo.jpg" border="0" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><br /><strong>Vivek Singh:</strong><br />Archery<br /><br /><strong>Krishna Mahato:</strong><br />II Degree Brown Belt, Karate<br /><br /><strong>Jashmin Kaur:</strong><br />Orange Belt, Karate<br /><br /><strong>M. Lokesh:</strong><br />Grand Prix Chess Circuit, Inter School: 15th Position<br /><br /></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/STthree.jpg" border="0" width="200" height="175" /></td>\r\n<td><img src="images/stories/VJS/STfour.jpg" border="0" width="200" height="175" /></td>\r\n<td><img src="images/stories/VJS/STfive.jpg" border="0" width="200" height="175" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Shreya Kumari:</strong><br />Grand Prix Chess Circuit, Junior under 10 champion.<br /><br /><strong>Apurba Mahato, Simanta Priya, Nirmelendu Mahato, Saurav Ghosh:</strong><br />winners in TATA Building India Essay Competition.</p>', '', 1, 9, 0, 97, '2010-03-16 06:15:03', 62, '', '2010-05-02 05:19:27', 62, 0, '0000-00-00 00:00:00', '2010-03-16 06:15:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 11, 0, 1, '', '', 0, 21, 'robots=\nauthor='),
(150, 'Performance Index', 'cpi', '', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/pastarchives.jpg" border="0" width="150" height="100" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The Schools follow a rigid curriculum in which students are actively engaged. Tests and examinations are conducted regularly to monitor the progress of the students. Feedback between parents and teachers is done through regular meetings. The high standards of academic excellence reflects in the in the results for all Classes and Streams.</p>\r\n<p><strong>Class Average Marks 2009</strong></p>\r\n<p> </p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/VJS/cpi1.jpg" border="0" width="450" height="300" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!--table border="1"> \r\n<tbody>\r\n<tr>\r\n<td>Sl No.</td>\r\n<td>Class</td>\r\n<td>Average</td>\r\n</tr>\r\n<tr>\r\n<td>1.</td>\r\n<td>I A</td>\r\n<td>66.6</td>\r\n</tr>\r\n<tr>\r\n<td>2.</td>\r\n<td>I B</td>\r\n<td>65.6</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>II A</td>\r\n<td>71.0</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>II B</td>\r\n<td>69.7</td>\r\n</tr>\r\n<tr>\r\n<td>5.</td>\r\n<td>III A</td>\r\n<td>62.0</td>\r\n</tr>\r\n<tr>\r\n<td>6.</td>\r\n<td>III B</td>\r\n<td>61.8</td>\r\n</tr>\r\n<tr>\r\n<td>7.</td>\r\n<td>IV A</td>\r\n<td>63.0</td>\r\n</tr>\r\n<tr>\r\n<td>8.</td>\r\n<td>IV B</td>\r\n<td>66.0</td>\r\n</tr>\r\n<tr>\r\n<td>9.</td>\r\n<td>V A</td>\r\n<td>54.7</td>\r\n</tr>\r\n<tr>\r\n<td>10.</td>\r\n<td>V B</td>\r\n<td>53.5</td>\r\n</tr>\r\n<tr>\r\n<td>11.</td>\r\n<td>VI A</td>\r\n<td>52.0</td>\r\n</tr>\r\n<tr>\r\n<td>12.</td>\r\n<td>VI B</td>\r\n<td>50.0</td>\r\n</tr>\r\n<tr>\r\n<td>13.</td>\r\n<td>VII A</td>\r\n<td>56.0</td>\r\n</tr>\r\n<tr>\r\n<td>14.</td>\r\n<td>VII B</td>\r\n<td>55.0</td>\r\n</tr>\r\n<tr>\r\n<td>15.</td>\r\n<td>VIII A</td>\r\n<td>53.4</td>\r\n</tr>\r\n<tr>\r\n<td>16.</td>\r\n<td>VIII B</td>\r\n<td>49.2</td>\r\n</tr>\r\n<tr>\r\n<td>17.</td>\r\n<td>IX A</td>\r\n<td>47.2</td>\r\n</tr>\r\n<tr>\r\n<td>18.</td>\r\n<td>IX B</td>\r\n<td>49.6</td>\r\n</tr>\r\n<tr>\r\n<td>19.</td>\r\n<td>X A</td>\r\n<td>47.6</td>\r\n</tr>\r\n<tr>\r\n<td>20.</td>\r\n<td>X B</td>\r\n<td>46.0</td>\r\n</tr>\r\n</tbody>\r\n</table-->', '', 1, 9, 0, 98, '2010-03-16 06:15:54', 62, '', '2010-05-02 08:55:43', 62, 0, '0000-00-00 00:00:00', '2010-03-16 06:15:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 12, 0, 1, '', '', 0, 12, 'robots=\nauthor='),
(151, 'Photo Gallery', 'pg', '', '<p>Section: Vidya Jyoti School | Category: Photo Gallery | Article: Photo Gallery</p>', '', 1, 9, 0, 99, '2010-03-16 06:16:47', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-03-16 06:16:47', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(153, 'Contact Us', 'cu', '', '<p><strong>Principal:</strong></p>\r\n<p>Dr. Madhu Singh</p>\r\n<p><strong>Coordinator:</strong></p>\r\n<p>Ms. Shashi Singh</p>\r\n<p><strong>Phone: </strong></p>\r\n<p>+91 657 6451712</p>\r\n<p><strong>Address:</strong></p>\r\n<p>P.O. Bistupur, Jamshedpur - 831 001</p>\r\n<p> </p>', '', 1, 7, 0, 44, '2010-04-08 07:14:39', 62, '', '2010-04-08 09:26:14', 62, 0, '0000-00-00 00:00:00', '2010-04-08 07:14:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 1, 'robots=\nauthor='),
(158, 'cSocial - Connecting Communities', 'fmt', '', '<p>Social Networking and Mining among Cluster Professionals using existing Social Networks. Sort Professionals by Name, Industry or Enterprise. Connect and understand the Cluster, Channel and Community in terms of Business, Scale and Talent. Diverse and multifaceted Professionals with expertise of Shop Floor to Frontend Operations. Innovation and Creativity is a part of their Professional Life with a flair for Entrepreneurship and Networking.</p>\r\n<p> </p>\r\n<p>{iframe height="400" width="960" frameborder="1"}http://localhost/ClusterLogic/Clusters/cSocialCM.php{/iframe}</p>', '', 1, 6, 0, 101, '2010-05-03 10:46:59', 62, '', '2011-01-29 07:58:58', 62, 0, '0000-00-00 00:00:00', '2010-05-03 10:46:59', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 33, 0, 3, '', '', 0, 88, 'robots=\nauthor='),
(154, 'AICTE appoints new Regional Head', 'aicte', '', '<p><em>posted by Arun Singh, JUSCO School South Park, April 28 2010</em></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/student1.jpg" border="2" width="100" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br />VADODARA: M S University''s vice-chancellor Ramesh Goyal was appointed as the regional chairman of All India Council of Technical Education (AICTE). Goyal will be monitoring engineering, pharmacy and management colleges in Gujarat, Madhya Pradesh and Chattisgarh.</p>\r\n', '\r\n<p><br />He would also be in-charge of approving applications for setting up new engineering, pharmacy and management colleges in the three states. Goyal will have to ensure quality improvement and maintenance of required standards in the existing as well as new colleges.</p>\r\n<p> </p>', 0, 12, 0, 100, '2010-04-28 09:39:35', 62, '', '2010-05-03 05:19:13', 62, 0, '0000-00-00 00:00:00', '2010-04-28 09:39:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 4, 0, 3, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(155, 'JUSCO Schools Annual Prize Night', 'japn', '', '<p><em>Posted by Arun Singh, JUSCO School South Park, April 28 2010</em></p>\r\n<p><em><br /></em></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/JSSPee1.jpg" border="0" width="200" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>The JEM Foundation will be holding the JUSCO Schools Annual Prize Night on May 4 to recognize the achievements and contributions made by the students and teachers of JUSCO Schools.</p>\r\n', '\r\n<p>The Chief Guest is JUSCO MD, Mr. Manish Sharma.</p>\r\n<p> </p>', 0, 12, 0, 100, '2010-04-28 09:52:14', 62, '', '2010-05-03 05:18:41', 62, 0, '0000-00-00 00:00:00', '2010-04-28 09:52:14', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(156, 'India''s smallest satellite set for a May 9 launch', 'indias-smallest-satellite-set-for-a-may9-launch', '', '<p><em>Posted by Arun Singh, JUSCO School South Park, April 28, 2010</em></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JSSP/STkamilakbar.jpg" border="0" width="100" height="125" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br />MUMBAI: The smallest Indian satellite, promising to send Indian education into a higher orbit, will leave the Isro Satellite Centre in Bangalore and move to Sriharikota for integration with the four-stage Polar Satellite Launch Vehicle (PSLV) for launch on May 9.</p>\r\n', '\r\n<p><br />What makes this spacecraft, StudSat, unique is that it was designed and developed by about 40 undergraduate students of seven engineering colleges in Bangalore and Hyderabad and weighs only 850 grams. Of the seven, four are in Bangalore and three in Hyderabad. StudSat''s departure from Bangalore to Sriharikota coincides with a conference on small satellites to be held on April 28.<br /><br />StudSat, an acronym for student satellite, has been classified as a pico-satellite, which weighs between 0.1 and 1kg. StudSat will be launched along with the indigenous Cartosat-2b satellite, Alsat, a satellite from Algeria and two satellites from the University of Toronto.</p>\r\n<p> </p>', 1, 12, 0, 100, '2010-04-28 10:02:07', 62, '', '2010-05-03 05:16:17', 62, 0, '0000-00-00 00:00:00', '2010-04-28 10:02:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 4, 0, 2, '', '', 0, 1, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(45, 4),
(6, 5),
(44, 6),
(5, 7),
(9, 8),
(30, 9),
(16, 10),
(46, 1),
(47, 2),
(48, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_easytables`
--

CREATE TABLE IF NOT EXISTS `jos_easytables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `easytablename` varchar(255) NOT NULL,
  `easytablealias` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `defaultimagedir` text NOT NULL,
  `linkedtable` int(11) NOT NULL,
  `created_` datetime NOT NULL,
  `modified_` datetime NOT NULL,
  `modifiedby_` tinyint(3) NOT NULL,
  `checked_out` tinyint(1) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `datatablename` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='1.0.2' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_easytables`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_easytables_table_meta`
--

CREATE TABLE IF NOT EXISTS `jos_easytables_table_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `easytable_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `list_view` tinyint(1) NOT NULL,
  `detail_link` tinyint(1) NOT NULL,
  `detail_view` tinyint(1) NOT NULL,
  `fieldalias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `easytable_id` (`easytable_id`,`position`,`label`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='1.0fc10' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_easytables_table_meta`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 0, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(2, 'mainmenu', 'Services', 'joomla-license', 'index.php?option=com_content&view=article&id=72', 'component', 0, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(41, 'mainmenu', 'Education Consultancy', 'au', 'index.php?option=com_content&view=article&id=72', 'component', 1, 2, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(11, 'othermenu', 'Joomla! Home', 'joomla-home', 'http://www.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'othermenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'othermenu', 'Joomla! Documentation', 'joomla-documentation', 'http://docs.joomla.org', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(14, 'othermenu', 'Joomla! Community', 'joomla-community', 'http://community.joomla.org', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(15, 'othermenu', 'Joomla! Magazine', 'joomla-community-magazine', 'http://community.joomla.org/magazine.html', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(16, 'othermenu', 'OSM Home', 'osm-home', 'http://www.opensourcematters.org', 'url', 1, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 6, 'menu_image=-1\n\n', 0, 0, 0),
(17, 'othermenu', 'Administrator', 'administrator', 'administrator/', 'url', 1, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(18, 'topmenu', 'News', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(38, 'keyconcepts', 'Content Layouts', 'content-layouts', 'index.php?option=com_content&view=article&id=24', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(27, 'mainmenu', 'Training', 'joomla-overview', 'index.php?option=com_content&view=article&id=158', 'component', 0, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(28, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(29, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(30, 'topmenu', 'The Community', 'the-community', 'index.php?option=com_content&view=article&id=27', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(34, 'mainmenu', 'About Us', 'what-is-new-in-1-5', 'index.php?option=com_content&view=article&id=47', 'component', 0, 27, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(40, 'keyconcepts', 'Extensions', 'extensions', 'index.php?option=com_content&view=article&id=26', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(37, 'mainmenu', 'Courses and Faculty', 'more-about-joomla', 'index.php?option=com_content&view=article&id=49', 'component', 1, 53, 20, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(43, 'keyconcepts', 'Example Pages', 'example-pages', 'index.php?option=com_content&view=article&id=43', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(44, 'ExamplePages', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=3', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(45, 'ExamplePages', 'Section Table', 'section-table', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(46, 'ExamplePages', 'Category Blog', 'categoryblog', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(47, 'ExamplePages', 'Category Table', 'category-table', 'index.php?option=com_content&view=category&id=32', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(48, 'mainmenu', 'Training and Placements', 'vjs', 'index.php?option=com_content&view=article&id=51', 'component', 1, 53, 20, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(49, 'mainmenu', 'History of SAP', 'khs', 'index.php?option=com_content&view=article&id=52', 'component', 1, 53, 20, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(50, 'mainmenu', 'Infrastructure', 'the-news', 'index.php?option=com_content&view=article&id=50', 'component', 1, 53, 20, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(54, 'mainmenu', 'Gallery', 'af', 'index.php?option=com_phocagallery&view=categories', 'component', 0, 0, 83, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_pagination_categories=0\nshow_pagination_category=1\nshow_pagination_limit_categories=0\nshow_pagination_limit_category=1\ndisplay_cat_name_title=1\ncategories_columns=\nequal_percentage_width=\ndisplay_image_categories=\ncategories_box_width=\nimage_categories_size=\ncategories_image_ordering=\ncategories_display_avatar=\ndisplay_subcategories=\ndisplay_empty_categories=\nhide_categories=\ndisplay_access_category=\ndefault_pagination_categories=\npagination_categories=\nfont_color=\nbackground_color=\nbackground_color_hover=\nimage_background_color=\nimage_background_shadow=\nborder_color=\nborder_color_hover=\nmargin_box=\npadding_box=\ndisplay_name=\ndisplay_icon_detail=\ndisplay_icon_download=\ndisplay_icon_folder=\nfont_size_name=\nchar_length_name=\ncategory_box_space=\ndisplay_categories_sub=\ndisplay_subcat_page=\ndisplay_category_icon_image=\ncategory_image_ordering=\ndisplay_back_button=\ndisplay_categories_back_button=\ndefault_pagination_category=\npagination_category=\ndisplay_img_desc_box=\nfont_size_img_desc=\nimg_desc_box_height=\nchar_length_img_desc=\ndisplay_categories_cv=\ndisplay_subcat_page_cv=\ndisplay_category_icon_image_cv=\ncategory_image_ordering_cv=\ndisplay_back_button_cv=\ndisplay_categories_back_button_cv=\ncategories_columns_cv=\ndisplay_image_categories_cv=\nimage_categories_size_cv=\ndetail_window=\ndetail_window_background_color=\nmodal_box_overlay_color=\nmodal_box_overlay_opacity=\nmodal_box_border_color=\nmodal_box_border_width=\nsb_slideshow_delay=\nsb_lang=\nhighslide_class=\nhighslide_opacity=\nhighslide_outline_type=\nhighslide_fullimg=\nhighslide_close_button=\nhighslide_slideshow=\njak_slideshow_delay=\njak_orientation=\njak_description=\njak_description_height=\ndisplay_description_detail=\ndisplay_title_description=\nfont_size_desc=\nfont_color_desc=\ndescription_detail_height=\ndescription_lightbox_font_size=\ndescription_lightbox_font_color=\ndescription_lightbox_bg_color=\nslideshow_delay=\nslideshow_pause=\nslideshow_random=\ndetail_buttons=\nphocagallery_width=\nphocagallery_center=\ncategory_ordering=\nimage_ordering=\ngallery_metadesc=\ngallery_metakey=\nenable_user_cp=\nenable_upload_avatar=\nenable_avatar_approve=\nenable_usercat_approve=\nenable_usersubcat_approve=\nuser_subcat_count=\nmax_create_cat_char=\nenable_userimage_approve=\nmax_upload_char=\nupload_maxsize=\nupload_maxres_width=\nupload_maxres_height=\nuser_images_max_size=\nenable_java=\nenable_java_admin=\njava_resize_width=\njava_resize_height=\njava_box_width=\njava_box_height=\ndisplay_rating=\ndisplay_rating_img=\ndisplay_comment=\ndisplay_comment_img=\ncomment_width=\nmax_comment_char=\nexternal_comment_system=\nenable_piclens=\nstart_piclens=\npiclens_image=\nswitch_image=\nswitch_width=\nswitch_height=\nenable_overlib=\nol_bg_color=\nol_fg_color=\nol_tf_color=\nol_cf_color=\noverlib_overlay_opacity=\noverlib_image_rate=\ncreate_watermark=\nwatermark_position_x=\nwatermark_position_y=\ndisplay_icon_vm=\ndisplay_category_statistics=\ndisplay_main_cat_stat=\ndisplay_lastadded_cat_stat=\ncount_lastadded_cat_stat=\ndisplay_mostviewed_cat_stat=\ncount_mostviewed_cat_stat=\ndisplay_camera_info=\nexif_information=\ndisplay_categories_geotagging=\ncategories_lng=\ncategories_lat=\ncategories_zoom=\ncategories_map_width=\ncategories_map_height=\ndisplay_icon_geotagging=\ndisplay_category_geotagging=\ncategory_map_width=\ncategory_map_height=\npagination_thumbnail_creation=\nclean_thumbnails=\nenable_thumb_creation=\ncrop_thumbnail=\njpeg_quality=\nenable_picasa_loading=\npicasa_load_pagination=\nicon_format=\nlarge_image_width=\nlarge_image_height=\nmedium_image_width=\nmedium_image_height=\nsmall_image_width=\nsmall_image_height=\nfront_modal_box_width=\nfront_modal_box_height=\nadmin_modal_box_width=\nadmin_modal_box_height=\nfolder_permissions=\njfile_thumbs=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(53, 'mainmenu', 'SAP R/3', 'schools', 'index.php?option=com_content&view=article&id=158', 'component', 1, 27, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(55, 'mainmenu', 'ClusterLogic', 'home1', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(56, 'mainmenu', 'AIADA', 'nf', 'index.php?option=com_content&view=article&id=72', 'component', 1, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=0\nlink_section=\nshow_category=0\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(57, 'mainmenu', 'ClusterLogic', 'cons', 'index.php?option=com_content&view=article&id=72', 'component', 0, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(58, 'mainmenu', 'Chandigarh', 'cu', 'index.php?option=com_content&view=article&id=157', 'component', 1, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(59, 'mainmenu', 'Adityapur Industrial Area', 'csocial', 'index.php?option=com_content&view=article&id=72', 'component', 1, 57, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(60, 'mainmenu', 'cSocial', 'csocial', 'index.php?option=com_content&view=article&id=52', 'component', 1, 56, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(61, 'mainmenu', 'cProgrammes', 'cprogrammes', 'index.php?option=com_content&view=article&id=49', 'component', 1, 56, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(62, 'mainmenu', 'cAutomation', 'cautomation', 'index.php?option=com_content&view=article&id=50', 'component', 1, 56, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(63, 'mainmenu', 'cTraining', 'ctraining', 'index.php?option=com_content&view=article&id=51', 'component', 1, 56, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(64, 'mainmenu', 'cSocial', 'csocial', 'index.php?option=com_content&view=article&id=158', 'component', 1, 59, 20, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(65, 'mainmenu', 'cProgrammes', 'cprogrammes', 'index.php?option=com_content&view=article&id=49', 'component', 1, 59, 20, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(66, 'mainmenu', 'cAutomation', 'cnews', 'index.php?option=com_content&view=article&id=50', 'component', 1, 59, 20, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(67, 'mainmenu', 'cTraining', 'ctraining', 'index.php?option=com_content&view=article&id=51', 'component', 1, 59, 20, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(68, 'mainmenu', 'cSocial', 'csocial', 'index.php?option=com_content&view=article&id=158', 'component', 1, 58, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(69, 'mainmenu', 'cProgrammes', 'cprojects', 'index.php?option=com_content&view=article&id=159', 'component', 1, 58, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(70, 'mainmenu', 'cAutomation', 'cevents', 'index.php?option=com_content&view=article&id=160', 'component', 1, 58, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'topmenu', 'Top Menu', 'Top level navigation'),
(4, 'othermenu', 'Resources', 'Additional links'),
(5, 'ExamplePages', 'Example Pages', 'Example Pages'),
(6, 'keyconcepts', 'Key Concepts', 'This describes some critical information for new Users.');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_migration_backlinks`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Main Menu', '', 0, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Polls', '', 1, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_poll', 0, 0, 1, 'id=14\ncache=1', 0, 0, ''),
(17, 'User Menu', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1', 1, 0, ''),
(18, 'Login Form', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_login', 0, 0, 1, 'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', 1, 0, ''),
(19, 'Latest News', '', 4, 'user1', 0, '0000-00-00 00:00:00', 0, 'mod_latestnews', 0, 0, 1, 'cache=1', 1, 0, ''),
(20, 'Statistics', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0, ''),
(21, 'Who''s Online', '', 1, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0, ''),
(22, 'Popular', '', 6, 'user2', 0, '0000-00-00 00:00:00', 0, 'mod_mostread', 0, 0, 1, 'cache=1', 0, 0, ''),
(23, 'Archive', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, ''),
(24, 'Sections', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, ''),
(25, 'Newsflash', '', 0, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 1, 'catid=3\nlayout=default\nimage=0\nlink_titles=\nshowLastSeparator=1\nreadmore=0\nitem_title=0\nitems=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(26, 'Related Items', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Search', '', 1, 'user4', 0, '0000-00-00 00:00:00', 0, 'mod_search', 0, 0, 0, 'cache=1', 0, 0, ''),
(28, 'Random Image', '', 9, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0, ''),
(29, 'Top Menu', '', 1, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'cache=1\nmenutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0', 1, 0, ''),
(30, 'Banners', '', 1, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(31, 'Resources', '', 2, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(32, 'Wrapper', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Footer', '', 2, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed Display', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(35, 'Breadcrumbs', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, ''),
(36, 'Syndication', '', 0, 'syndicate', 0, '0000-00-00 00:00:00', 0, 'mod_syndicate', 0, 0, 0, 'cache=0\ntext=Feed Entries\nformat=rss\nmoduleclass_sfx=\n\n', 1, 0, ''),
(38, 'Message from MD JUSCO', '', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 1, 'target=1\ncount=4\ncid=0\ncatid=14\ntag_search=0\nordering=0\nheader_text=Message\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\nmoduleclass_sfx=_text\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(39, 'Example Pages', '', 5, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=ExamplePages\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(40, 'Key Concepts', '', 3, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=keyconcepts\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href="http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews" target="_blank">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href="http://www.joomla.org/download.html" target="_blank">latest Joomla! release;</a> and (3) a <a href="http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup" target="_blank" title="good Web host">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href="http://docs.joomla.org/Category:Security_Checklist" target="_blank" title="Joomla! Security Checklist">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href="http://developer.joomla.org/security/contact-the-team.html" target="_blank" title="Joomla! Security Task Force">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   "<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginner''s   Guide to Joomla!.</a>" There, you will find a Quick Start to Joomla!   <a href="http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf" target="_blank">guide</a>   and <a href="http://help.joomla.org/ghop/feb2008/task167/index.html" target="_blank">video</a>,   amongst many other tutorials. The   <a href="http://community.joomla.org/magazine/view-all-issues.html" target="_blank">Joomla!   Community Magazine</a> also has   <a href="http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html" target="_blank">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href="http://docs.joomla.org/Category:FAQ" target="_blank">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href="http://forum.joomla.org/" target="_blank">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name="twjs" title="twjs"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Joomla! Security Newsfeed', '', 6, 'cpanel', 62, '2008-10-25 20:15:17', 1, 'mod_feed', 0, 0, 1, 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n', 0, 1, ''),
(43, 'From Our MD...', '<p><br /><strong>Mr. Manish Sharma - MD, JUSCO</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/md2.jpg" border="0" width="118" height="120" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border="0" width="202px">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p align="justify"><span style="font-size: x-small;"><br /><strong>In the contemporary world, no resource can equate or supplement the potential of a human mind.  The future possibilities of any nation are manifested through its youth. Education of this generation is the critical key to unleash these possibilities. Development and sustainability stand on the solid bedrock of equity of access to knowledge and skill enhancement. JUSCO, India’s only comprehensive urban infrastructure service provider, has always acknowledged  the significance of education in the development and empowerment of communities. As a company that envisions providing best value infrastructure and utility services, and delivering ''Quality Services for Life'', we recognize that these assurances cannot be fulfilled if we do not simultaneously  partner in the national agenda of EDUCATION FOR ALL.</strong></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(44, 'About JEM...', '<p> </p>\r\n<p><strong>From Ms. Shakti Sharma -Managing Trustee, JEM Foundation</strong></p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/JEMmt.jpg" border="2" width="160" height="150" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p align="justify"><span style="font-size: x-small;"><br /><strong><em>To see a world in a grain of sand,<br />And a heaven in a wild flower,<br />Hold infinity in the palm of your hand,<br />And eternity in an hour.<br /></em><br /> ~William Blake, Auguries of Innocence.<br /><br />The purpose of education is to educate a man to become what he is; as well as to educate him to become what he is not. We as an organization try to provide our students with the opportunity to explore and understand ‘self’ and world. The institutions under the umbrella of JUSCO Education Mission Foundation aspire to become learning centres where the individuality of the student is the prime focus. Amidst this student-centered approach the course of our journey is decided by the curiosity of the student- a learner and the constructor of knowledge. We strongly believe that Value education is not simply the heart of education, but also the education of the heart. It is a necessary component of holistic citizenship education. Therefore, we always take initiatives to cultivate higher values in the students’ life such as national, cultural, aesthetic and spiritual values and to practice self restraint, self realization, self insight and self analysis as well as to grow tolerance and respect for other religions, cultures, languages etc. We hold faith in the education which develops in the individual a sense of connection with people who are a part of our national and cultural heritage. JEM Foundation institutions aspire to develop each student into an inquirer, discoverer, philosopher and creator. The driving philosophy of JEM Foundation is to take society from darkness to enlightenment, to a threshold where an individual can attain complete freedom.</strong></span></p>', 3, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(45, 'Gallery', '', 3, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_hot_joomla_gallery', 0, 0, 1, 'moduleclass_sfx=\nenablejQuery=1\nimageFolder=images/stories/KMPM\nbigImageWidth=200\nbigImageHeight=150\nuserInput=\nthumbsNumber=2\nthumbsSize=10\ntimerValue=3500\ngalleryBackground=000000\ngalleryBorder=6\ngalleryBorderColor=cccccc\nbigImageBorder=0\nbigImageBorderColor=cccccc\nthumbBorderColor=cccccc\nactiveThumbBorderColor=ffffff\ndescTextBackground=000000\ndescTextColor=ffffff\n\n', 0, 0, ''),
(46, 'Board of Trustees', '<p><img src="images/stories/Jem-icon.gif" border="0" width="75" height="90" /><br /> <br /><strong>- Mr. Manish Sharma</strong><br /> Chairman<br /><strong>- Mr. Ritu Raj Sinha</strong><br /> Trustee<br /><strong>- Mr. U.Mishra</strong><br /> Trustee<br /><strong>- Ms. Sunita Thawani</strong><br /> Trustee<br /><strong>- Mr. Deepak Kamath</strong><br /> Trustee<br /><strong>- Ms. Shakti Sharma</strong><br /> Managing Trustee<br /><strong>- Mr. Surendra Goenka</strong><br /> Co-opted Member<br /><strong>- Ms. Preeti Sehgal</strong><br /> Spl. Invitee</p>', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(47, 'Simple Image Holder', '', 0, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_sih', 0, 0, 0, 'moduleclass_sfx=\nfile=templates/themza_j15_25/images/JEMflash9.swf\nwidth=955\nheight=180\nalign=center\ntxt1=\ntxt2=\nalt=\nlink=\npage=new_page\nopacity=\nopacity2=\nimg_id=\nname=first.swf\nquality=high\nloop=yes\nwmode=transparent\npubdate=0\npdate=\nudate=\n\n', 0, 0, ''),
(48, 'In Depth...', '<p> </p>\r\n<p><strong>- JUSCO School South Park</strong><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=53&amp;Itemid=37" title="Infrastructure"><span class="caption"> </span></a></p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=53&amp;Itemid=37" title="Infrastructure"><span class="caption">Infrastructure</span></a><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=54&amp;Itemid=37" title="Faculty"></a></span></p>\r\n<p><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=54&amp;Itemid=37" title="Faculty">Faculty</a></span><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=55&amp;Itemid=37" title="Message from the Principal"></a></span></p>\r\n<!--p><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=55&amp;Itemid=37" mce_href="index.php?option=com_content&amp;view=article&amp;id=55&amp;Itemid=37" title="Message from the Principal">Message from the Principal</a></span></p-->\r\n<p><strong>- Academics</strong> <a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=56&amp;Itemid=37" title="Curriculum"></a></p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=56&amp;Itemid=37" title="Curriculum">Curriculum</a></p>\r\n<p><strong>- Extra-Curriculars<br /></strong></p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=61&amp;Itemid=37" title="Games and Sports">Games and Sports</a> <a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=63&amp;Itemid=37" title="Extra-Curricular Activities"></a></p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=63&amp;Itemid=37" title="Culture and Environment">Culture and Environment</a></p>\r\n<ul>\r\n</ul>\r\n<p><strong>- Policy Statements</strong> <a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=64&amp;Itemid=37" title="Statements"></a></p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=64&amp;Itemid=37" title="Mission, Vision and Values"><span class="caption">Vision,Mission and Values</span></a></p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=67&amp;Itemid=37" title="Students Code of Conduct"><span class="caption">Students Code of Conduct</span></a></p>\r\n<ul>\r\n</ul>\r\n<p><strong>- Admissions</strong></p>\r\n<p><a class="caption" href="#" title="Procedures and Downloads"><span class="caption">Procedures and Downloads</span></a></p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=153&amp;Itemid=37" title="Contact Us"><span class="caption">Contact Us</span></a></p>\r\n<ul>\r\n</ul>\r\n<p><strong>- Results</strong> <a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=68&amp;Itemid=37" title="School Achievers"></a></p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=68&amp;Itemid=37" title="Our Stars"><span class="caption">Our Stars</span></a></p>\r\n<p><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=152&amp;Itemid=37" title="Awards and Recognitions">Awards and Recognitions</a></span></p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=69&amp;Itemid=37" title="Performance Index"><span class="caption">Performance Index</span></a> <span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=70&amp;Itemid=37" title="Performance Index II"></a></span></p>\r\n<p><span class="caption"> </span></p>\r\n<ul>\r\n</ul>\r\n<p><strong>- School''s Corner</strong></p>\r\n<p><a href="index.php?option=com_phocagallery&amp;view=category&amp;id=1:kmpm&amp;Itemid=54">Photo Gallery</a></p>\r\n<ul>\r\n</ul>', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(49, 'In Depth...', '<p> </p>\r\n<p><strong>- JUSCO School Kadma<br /></strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=114&amp;Itemid=50" title="Infrastructure"><span class="caption">Infrastructure</span></a></li>\r\n<li><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=115&amp;Itemid=50" title="Faculty">Faculty</a><br /></span></li>\r\n<!--li><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=116&amp;Itemid=50" mce_href="index.php?option=com_content&amp;view=article&amp;id=116&amp;Itemid=50" title="Message from the Principal">Message from the Principal</a--> \r\n</ul>\r\n<p><strong>- Academics</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=117&amp;Itemid=50" title="Curriculum">Curriculum</a></li>\r\n</ul>\r\n<p><strong>- Extra-Curriculars<br /></strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=122&amp;Itemid=50" title="Games and Sports">Games and Sports</a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=123&amp;Itemid=50" title="Culture and Environment">Culture and Environment</a></li>\r\n</ul>\r\n<p><strong>- Policy Statements</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=125&amp;Itemid=50" title="Mission, Vision and Values"><span class="caption">Vision, Mission and Values</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=126&amp;Itemid=50" title="Students Code of Conduct"><span class="caption">Students Code of Conduct</span></a></li>\r\n</ul>\r\n<p><strong>- Admissions<br /></strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=128&amp;Itemid=50" title="Procedures and Downloads"><span class="caption">Procedures and Downloads</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=129&amp;Itemid=50" title="Contact Us"><span class="caption">Contact Us</span></a></li>\r\n</ul>\r\n<p><strong>- Results</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=130&amp;Itemid=50" title="Our Stars"><span class="caption">Our Stars</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=131&amp;Itemid=50" title="Performance Index"><span class="caption">Performance Index</span></a></li>\r\n</ul>\r\n<p><strong>- School''s Corner<br /></strong></p>\r\n<ul>\r\n<li><a href="index.php?option=com_phocagallery&amp;view=category&amp;id=2:kmpm&amp;Itemid=54">Photo Gallery</a></li>\r\n</ul>', 10, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(50, 'In Depth...', '<p> </p>\r\n<p><strong>- Vidya Jyoti School<br /></strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=133&amp;Itemid=48" title="Infrastructure">Infrastructure</a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=134&amp;Itemid=48" title="Faculty">Faculty</a></li>\r\n<!--li><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=135&amp;Itemid=48" mce_href="index.php?option=com_content&amp;view=article&amp;id=135&amp;Itemid=48" title="Message from the Principal">Message from the Principal</a--> \r\n</ul>\r\n<p><strong>- Academics</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=136&amp;Itemid=48" title="Curriculum">Curriculum</a></li>\r\n</ul>\r\n<ul>\r\n</ul>\r\n<p><strong>- Extra-Curriculars<br /></strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=141&amp;Itemid=48" title="Games and Sports">Games and Sports</a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=143&amp;Itemid=48" title="Culture and Environment">Culture and Environment</a></li>\r\n</ul>\r\n<p><strong>- Policy Statements</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=144&amp;Itemid=48" title="Mission, Vision and Values"><span class="caption">Vision, Mission and Values</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=145&amp;Itemid=48" title="Students Code of Conduct"><span class="caption">Students Code of Conduct</span></a></li>\r\n</ul>\r\n<p><strong>- Admissions</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=147&amp;Itemid=48" title="Procedures and Downloads"><span class="caption">Procedures and Downloads</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=148&amp;Itemid=48" title="Contact Us"><span class="caption">Contact Us</span></a></li>\r\n</ul>\r\n<p><strong>- Results</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=149&amp;Itemid=48" title="Our Stars"><span class="caption">Our Stars</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=150&amp;Itemid=48" title="Performance Index&gt;&lt;span class=">Performance Index</a></li>\r\n</ul>\r\n<p><strong>- School''s Corner<br /></strong></p>\r\n<ul>\r\n<li><a href="index.php?option=com_phocagallery&amp;view=category&amp;id=3:kmpm&amp;Itemid=54"><span class="caption">Photo Gallery</span></a></li>\r\n</ul>', 11, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(51, 'In Depth...', '<p> </p>\r\n<p><strong>- Kasidih High School<br /></strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=95&amp;Itemid=49" title="Infrastructure"><span class="caption">Infrastructure</span></a></li>\r\n<li><span class="caption"><a class="caption" href="#" title="Faculty">Faculty</a><br /></span></li>\r\n<!--li><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=97&amp;Itemid=49" mce_href="index.php?option=com_content&amp;view=article&amp;id=97&amp;Itemid=49" title="Message from the Principal">Message from the Principal</a></span></li--> \r\n</ul>\r\n<p><strong>- Academics</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=98&amp;Itemid=49" title="Curriculum">Curriculum</a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=101&amp;Itemid=49" title="Syllabi and Book Lists">Syllabi and Book Lists</a></li>\r\n</ul>\r\n<p><strong>- Extra-Curriculars<br /></strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=103&amp;Itemid=49" title="Games and Sports">Games and Sports</a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=105&amp;Itemid=49" title="Culture and Environment">Culture and Environment</a></li>\r\n</ul>\r\n<p><strong>- Policy Statements</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=106&amp;Itemid=49" title="Mission, Vision and Values"><span class="caption"> Vision, Mission and Values</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=107&amp;Itemid=49" title="Students Code of Conduct"><span class="caption">Students Code of Conduct</span></a></li>\r\n</ul>\r\n<p><strong>- Admissions</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=109&amp;Itemid=49" title="Procedures and Downloads"><span class="caption">Procedures and Downloads</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=110&amp;Itemid=49" title="Contact Us"><span class="caption">Contact Us</span></a></li>\r\n</ul>\r\n<p><strong>- Results</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=111&amp;Itemid=49" title="Our Stars"><span class="caption">Our Stars</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=112&amp;Itemid=49" title="Performance Index"><span class="caption">Performance Index</span></a></li>\r\n</ul>\r\n<p><strong>- School''s Corner</strong></p>\r\n<ul>\r\n<li><a href="index.php?option=com_phocagallery&amp;view=category&amp;id=4:kmpm&amp;Itemid=54">Photo Gallery</a></li>\r\n</ul>', 12, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(52, 'In Depth...', '<p> </p>\r\n<p><strong>- Mrs. KMPM Inter College<br /></strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=73&amp;Itemid=2" title="Infrastructure"><span class="caption">Infrastructure</span></a></li>\r\n<li><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=74&amp;Itemid=2" title="Faculty">Faculty</a><br /></span></li>\r\n<!--li><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=93&amp;Itemid=2" mce_href="index.php?option=com_content&amp;view=article&amp;id=93&amp;Itemid=2" title="Message from the Principal">Message from the Principal</a></span></li--> \r\n</ul>\r\n<p><strong>-  Academics</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=75&amp;Itemid=2" title="Curriculum">Curriculum</a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=78&amp;Itemid=2" title="Book List">Book List</a></li>\r\n</ul>\r\n<p><strong>- Extra-Curriculars<br /></strong></p>\r\n<ul>\r\n<li><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=80&amp;Itemid=2" title="Games and Sports">Games and Sports</a></span></li>\r\n<li><span class="caption"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=82&amp;Itemid=2" title="Culture and Environment">Culture and Environment</a></span></li>\r\n</ul>\r\n<p><strong>- Policy Statements</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=83&amp;Itemid=2" title="Mission, Vision and Values"><span class="caption"> Vision, Mission and Values</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=84&amp;Itemid=2" title="Students Code of Conduct"><span class="caption">Students Code of Conduct</span></a></li>\r\n</ul>\r\n<p><strong>- Admissions<br /></strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=86&amp;Itemid=2" title="Procedures and Downloads"><span class="caption">Procedures and Downloads</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=87&amp;Itemid=2" title="Contact Us"><span class="caption">Contact Us</span></a></li>\r\n</ul>\r\n<p><strong>- Results</strong></p>\r\n<ul>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=88&amp;Itemid=2" title="Our Stars"><span class="caption">Our Stars</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=85&amp;Itemid=2" title="Statements"><span class="caption">Awards and Recognitions</span></a></li>\r\n<li><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=89&amp;Itemid=2" title="Performance Index"><span class="caption">Performance Index</span></a></li>\r\n</ul>\r\n<p><strong>- School''s Corner</strong></p>\r\n<ul>\r\n<li><span class="caption"><a href="index.php?option=com_phocagallery&amp;view=category&amp;id=5:kmpm&amp;Itemid=54">Photo Gallery</a><br /></span></li>\r\n</ul>', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(54, 'JEM School Events', '<table border="1">\r\n<tbody>\r\n<tr>\r\n<!--td><img src="images/stories/founder1.jpg" mce_src="images/stories/founder1.jpg" border="2" width="100" height="110" /></td-->\r\n<td><img src="images/stories/Jem-icon.gif" border="2" width="75" height="90" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><strong>- JUSCO Annual Prize Night</strong></p>\r\n<p><strong><br /></strong></p>\r\n<p>May 5, 2010 at Sir Michael John Auditorium</p>\r\n<p> </p>\r\n<p><strong>- JSSP Annual Sports Day</strong></p>\r\n<p> </p>\r\n<p>June 1, 2010 at JSSP grounds</p>\r\n<p> </p>\r\n<p><strong>- KMPM ISKON Spiritual Discourse</strong></p>\r\n<p><strong><br /></strong></p>\r\n<p>June 5, Mrs. KMPM Inter College Auditorium</p>\r\n<p> </p>\r\n<p><strong>- Kasidih High School Cultural Evening</strong></p>\r\n<p><strong><br /></strong></p>\r\n<p>June 10, 2010 at Kaisdih High School Auditorium</p>\r\n<p> </p>', 2, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(53, 'Eduflash', '<p> </p>\r\n<p>If Gopal Krishan Gokhle, one of the greatest sons of India, would have been alive today, he would have been the happiest person to see his dream of ‘right to education’ for children of the country come true. It was he who, a hundred years ago, urged the Imperial Legislative Assembly confer such a right on Indian children. That goal has been realized a century later.</p>\r\n<p>The Government has finally come over all the odds and given effect to the Right to Education Act (REA) from 1st April this year. The right to education is now a fundamental right for all children in the age group of 6 to 14 years. In simple words, it means that the Government will be responsible for providing education to every child up to the eighth standard, free of cost, irrespective of class and gender. It has thus paved the way for building a strong, literate and empowered youth of this country.</p>', 0, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(55, 'Simple Image Rotator', '', 0, 'top', 62, '2010-12-03 06:19:16', 1, 'mod_jw_sir', 0, 0, 0, 'moduleclass_sfx=\nimagefolder=images/stories/headers\ndisplay=random\ntransition=40\ndelay=1000\nwidth=1000\nheight=150\nforceresize=0\nenablelink=0\nlink=http://www.joomlaworks.gr\ntarget=0\nlinktitle=JoomlaWorks Simple Image Rotator\ndarkbg=0\nuseforbanners=0\nbannerfolder=images/banners/\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 1),
(17, 0),
(18, 1),
(19, 1),
(19, 2),
(19, 4),
(19, 27),
(19, 36),
(21, 1),
(22, 1),
(22, 2),
(22, 4),
(22, 27),
(22, 36),
(25, 0),
(27, 0),
(29, 0),
(30, 0),
(31, 1),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(38, 1),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(43, 11),
(43, 12),
(43, 13),
(43, 14),
(43, 15),
(43, 16),
(43, 17),
(43, 18),
(43, 20),
(43, 24),
(43, 28),
(43, 29),
(43, 30),
(43, 51),
(43, 52),
(43, 55),
(44, 27),
(44, 53),
(45, 2),
(47, 0),
(48, 37),
(49, 50),
(50, 48),
(51, 49),
(52, 2),
(52, 41),
(53, 1),
(54, 56),
(55, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! Announcements', 'joomla-official-news', 'http://feeds.joomla.org/JoomlaAnnouncements', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(4, 2, 'Joomla! Core Team Blog', 'joomla-core-team-blog', 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(4, 3, 'Joomla! Community Magazine', 'joomla-community-magazine', 'http://feeds.joomla.org/JoomlaMagazine', '', 1, 20, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(4, 4, 'Joomla! Developer News', 'joomla-developer-news', 'http://feeds.joomla.org/JoomlaDeveloper', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(4, 5, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(5, 6, 'Free Software Foundation Blogs', 'free-software-foundation-blogs', 'http://www.fsf.org/blogs/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(5, 7, 'Free Software Foundation', 'free-software-foundation', 'http://www.fsf.org/news/RSS', NULL, 1, 5, 3600, 62, '2008-09-14 00:24:25', 3, 0),
(5, 8, 'Software Freedom Law Center Blog', 'software-freedom-law-center-blog', 'http://www.softwarefreedom.org/feeds/blog/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 9, 'Software Freedom Law Center News', 'software-freedom-law-center', 'http://www.softwarefreedom.org/feeds/news/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 10, 'Open Source Initiative Blog', 'open-source-initiative-blog', 'http://www.opensource.org/blog/feed', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 11, 'PHP News and Announcements', 'php-news-and-announcements', 'http://www.php.net/feed.atom', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:37', 1, 0),
(6, 12, 'Planet MySQL', 'planet-mysql', 'http://www.planetmysql.org/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:51', 2, 0),
(6, 13, 'Linux Foundation Announcements', 'linux-foundation-announcements', 'http://www.linuxfoundation.org/press/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:11', 3, 0),
(6, 14, 'Mootools Blog', 'mootools-blog', 'http://feeds.feedburner.com/mootools-blog', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:51', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_phocagallery`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `jos_phocagallery`
--

INSERT INTO `jos_phocagallery` (`id`, `catid`, `sid`, `title`, `alias`, `filename`, `description`, `date`, `hits`, `latitude`, `longitude`, `zoom`, `geotitle`, `videocode`, `vmproductid`, `imgorigsize`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `params`, `metakey`, `metadesc`, `extlink1`, `extlink2`, `extid`, `extl`, `extm`, `exts`, `exto`, `extw`, `exth`) VALUES
(1, 1, 0, 'Archery Award', 'archery', 'JSSP/archery.jpg', '', '2010-04-02 10:16:01', 49, '', '', 0, '', '', 0, 45917, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(2, 1, 0, 'Educomp Class', 'educomp', 'JSSP/educomp.jpg', '', '2010-04-02 10:16:01', 6, '', '', 0, '', '', 0, 35607, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(3, 1, 0, 'Green Initiative', 'green', 'JSSP/green.jpg', '', '2010-04-02 10:16:01', 3, '', '', 0, '', '', 0, 36119, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(4, 1, 0, 'Computer Education', 'niitfaculty', 'JSSP/niitfaculty.jpg', '', '2010-04-02 10:16:01', 5, '', '', 0, '', '', 0, 40049, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(5, 1, 0, 'Quality Quest', 'quality', 'JSSP/quality.jpg', '', '2010-04-02 10:16:01', 0, '', '', 0, '', '', 0, 638088, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(6, 1, 0, 'Science Exhibition', 'schoolscience', 'JSSP/schoolscience.jpg', '', '2010-04-02 10:16:01', 7, '', '', 0, '', '', 0, 200319, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(7, 1, 0, 'Science Exhibition', 'schoolscience2', 'JSSP/schoolscience2.jpg', '', '2010-04-02 10:16:01', 3, '', '', 0, '', '', 0, 207375, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(8, 1, 0, 'Computer Lab', 'spcomplab', 'JSSP/spcomplab.jpg', '', '2010-04-02 10:16:01', 0, '', '', 0, '', '', 0, 39707, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(9, 1, 0, 'Special Curriculum', 'spcurriculum', 'JSSP/spcurriculum.jpg', '', '2010-04-02 10:16:01', 3, '', '', 0, '', '', 0, 53952, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(10, 1, 0, 'Educomp Class', 'speducomp', 'JSSP/speducomp.jpg', '', '2010-04-02 10:16:01', 1, '', '', 0, '', '', 0, 38494, 1, 1, 0, '0000-00-00 00:00:00', 10, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(11, 1, 0, 'School', 'spinfrabldg', 'JSSP/spinfrabldg.jpg', '', '2010-04-02 10:16:01', 0, '', '', 0, '', '', 0, 323156, 1, 1, 0, '0000-00-00 00:00:00', 11, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(12, 1, 0, 'XSEED', 'xseed', 'JSSP/xseed.jpg', '', '2010-04-02 10:16:01', 0, '', '', 0, '', '', 0, 27320, 1, 1, 0, '0000-00-00 00:00:00', 12, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(13, 1, 0, 'Yoga Award', 'yoga', 'JSSP/yoga.jpg', '', '2010-04-02 10:16:01', 0, '', '', 0, '', '', 0, 28988, 1, 1, 0, '0000-00-00 00:00:00', 13, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(14, 2, 0, 'Rangoli Competition', 'ec15', 'JSK/ec15.jpg', '', '2010-04-02 10:16:39', 15, '', '', 0, '', '', 0, 28732, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(15, 2, 0, 'Republic Day', 'ec44', 'JSK/ec44.jpg', '', '2010-04-02 10:16:39', 1, '', '', 0, '', '', 0, 26322, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(16, 2, 0, 'Republic Day', 'ec55', 'JSK/ec55.jpg', '', '2010-04-02 10:16:39', 8, '', '', 0, '', '', 0, 21702, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(17, 2, 0, 'Sports Day', 'ec66', 'JSK/ec66.jpg', '', '2010-04-02 10:16:39', 0, '', '', 0, '', '', 0, 39585, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(18, 2, 0, 'Sports Day', 'ec99', 'JSK/ec99.jpg', '', '2010-04-02 10:16:39', 0, '', '', 0, '', '', 0, 32214, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(19, 2, 0, 'Science Exhibition', 'ec111', 'JSK/ec111.jpg', '', '2010-04-02 10:16:39', 0, '', '', 0, '', '', 0, 26238, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(20, 2, 0, 'Science Exhibition', 'ec122', 'JSK/ec122.jpg', '', '2010-04-02 10:16:39', 0, '', '', 0, '', '', 0, 27168, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(21, 2, 0, 'Science Exhibition', 'ec133', 'JSK/ec133.jpg', '', '2010-04-02 10:16:39', 0, '', '', 0, '', '', 0, 17848, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(22, 2, 0, 'Rangoli Competition', 'ec177', 'JSK/ec177.jpg', '', '2010-04-02 10:16:39', 0, '', '', 0, '', '', 0, 49497, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(23, 2, 0, 'Save Water Initiative', 'ec199', 'JSK/ec199.jpg', '', '2010-04-02 10:16:39', 0, '', '', 0, '', '', 0, 27821, 1, 1, 0, '0000-00-00 00:00:00', 10, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(24, 2, 0, 'Save Water Initiative', 'ec211', 'JSK/ec211.jpg', '', '2010-04-02 10:16:39', 0, '', '', 0, '', '', 0, 13073, 1, 1, 0, '0000-00-00 00:00:00', 11, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(25, 2, 0, 'Class Room', 'jskinfra22', 'JSK/JSKinfra22.jpg', '', '2010-04-02 10:16:39', 0, '', '', 0, '', '', 0, 22005, 1, 1, 0, '0000-00-00 00:00:00', 12, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(26, 2, 0, 'Computer Education', 'jskinfra44', 'JSK/JSKinfra44.jpg', '', '2010-04-02 10:16:39', 4, '', '', 0, '', '', 0, 24216, 1, 1, 0, '0000-00-00 00:00:00', 13, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(27, 2, 0, 'Educomp Class', 'jskinfra55', 'JSK/JSKinfra55.jpg', '', '2010-04-02 10:16:39', 1, '', '', 0, '', '', 0, 25304, 1, 1, 0, '0000-00-00 00:00:00', 14, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(28, 2, 0, 'Library', 'jskinfra66', 'JSK/JSKinfra66.jpg', '', '2010-04-02 10:16:39', 0, '', '', 0, '', '', 0, 28941, 1, 1, 0, '0000-00-00 00:00:00', 15, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(29, 3, 0, 'Teacher''s Day', '31', 'VIDYAJYOTI/31.jpg', '', '2010-04-02 10:16:58', 14, '', '', 0, '', '', 0, 23519, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(30, 3, 0, 'Annual Prize Night', 'dsc2110', 'VIDYAJYOTI/DSC_2110.jpg', '', '2010-04-02 10:16:58', 0, '', '', 0, '', '', 0, 41788, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(31, 3, 0, 'Annual Prize Night', 'dsc2164', 'VIDYAJYOTI/DSC_2164.jpg', '', '2010-04-02 10:16:58', 0, '', '', 0, '', '', 0, 18812, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(32, 3, 0, 'Dance Competition', 'image2279', 'VIDYAJYOTI/Image2279.jpg', '', '2010-04-02 10:16:58', 0, '', '', 0, '', '', 0, 41781, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(33, 3, 0, 'Class Room', 'image2435', 'VIDYAJYOTI/Image2435.jpg', '', '2010-04-02 10:16:59', 0, '', '', 0, '', '', 0, 27023, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(34, 3, 0, 'Green Initiative', 'sdc11097', 'VIDYAJYOTI/SDC11097.jpg', '', '2010-04-02 10:16:59', 0, '', '', 0, '', '', 0, 21011, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(35, 3, 0, 'Painting Exhibition', 'sdc11101', 'VIDYAJYOTI/SDC11101.jpg', '', '2010-04-02 10:16:59', 0, '', '', 0, '', '', 0, 33469, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(36, 4, 0, 'Quiz', 'gh1', 'KASIDIH/gh1.jpg', '', '2010-04-02 10:17:22', 13, '', '', 0, '', '', 0, 1276895, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(37, 4, 0, 'Debate', 'img1775', 'KASIDIH/IMG_1775.jpg', '', '2010-04-02 10:17:22', 1, '', '', 0, '', '', 0, 1743167, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(38, 4, 0, 'Annual Day', 'img2114', 'KASIDIH/IMG_2114.jpg', '', '2010-04-02 10:17:22', 1, '', '', 0, '', '', 0, 916445, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(39, 4, 0, 'Sports Day', 'img2140', 'KASIDIH/IMG_2140.jpg', '', '2010-04-02 10:17:22', 4, '', '', 0, '', '', 0, 950319, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(40, 4, 0, 'Poster Competition', 'img2766', 'KASIDIH/IMG_2766.jpg', '', '2010-04-02 10:17:22', 1, '', '', 0, '', '', 0, 723672, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(41, 4, 0, 'Green Initiative', 'img4618', 'KASIDIH/IMG_4618.JPG', '', '2010-04-02 10:17:22', 2, '', '', 0, '', '', 0, 748568, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(42, 5, 0, 'Founder''s Day', 'ecai', 'KMPM/ECai.jpg', '', '2010-04-02 10:17:59', 20, '', '', 0, '', '', 0, 1974272, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(43, 5, 0, 'World Environment Day', 'ecaj', 'KMPM/ECaj.jpg', '', '2010-04-02 10:17:59', 0, '', '', 0, '', '', 0, 1949696, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(44, 5, 0, 'Painting Competition', 'ecao', 'KMPM/ECao.jpg', '', '2010-04-02 10:17:59', 0, '', '', 0, '', '', 0, 2052096, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(45, 5, 0, 'Spiritual Session', 'ecav', 'KMPM/ECav.jpg', '', '2010-04-02 10:17:59', 0, '', '', 0, '', '', 0, 1893802, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(46, 5, 0, 'Rangoli Competition', 'ecc', 'KMPM/ECc.jpg', '', '2010-04-02 10:17:59', 0, '', '', 0, '', '', 0, 610304, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(47, 5, 0, 'Teacher''s Day', 'ecx', 'KMPM/ECx.jpg', '', '2010-04-02 10:17:59', 1, '', '', 0, '', '', 0, 1908736, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(48, 5, 0, 'Saraswati Puja', 'ecz', 'KMPM/ECz.jpg', '', '2010-04-02 10:17:59', 0, '', '', 0, '', '', 0, 1994752, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(49, 5, 0, 'Chemistry Lab', 'kmpminfra5', 'KMPM/KMPMinfra5.jpg', '', '2010-04-02 10:17:59', 0, '', '', 0, '', '', 0, 1933312, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(50, 5, 0, 'Library', 'kmpminfra11', 'KMPM/KMPMinfra11.jpg', '', '2010-04-02 10:17:59', 0, '', '', 0, '', '', 0, 1929216, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(51, 5, 0, 'Educomp Class', 'kmpminfra16', 'KMPM/KMPMinfra16.jpg', '', '2010-04-02 10:17:59', 1, '', '', 0, '', '', 0, 1282048, 1, 1, 0, '0000-00-00 00:00:00', 10, NULL, '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_phocagallery_categories`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jos_phocagallery_categories`
--

INSERT INTO `jos_phocagallery_categories` (`id`, `parent_id`, `owner_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `date`, `published`, `approved`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `hits`, `accessuserid`, `uploaduserid`, `deleteuserid`, `userfolder`, `latitude`, `longitude`, `zoom`, `geotitle`, `extid`, `exta`, `extu`, `params`, `metakey`, `metadesc`) VALUES
(1, 0, 0, 'JUSCO School South Park', '', 'jssp', '', '', 'left', '', '2010-04-02 10:14:04', 1, 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, 37, '0', '-2', '-2', '', '', '', 0, '', '', '', '', NULL, '', ''),
(2, 0, 0, 'JUSCO School Kadma', '', 'jsk', '', '', 'left', '', '2010-04-02 10:14:24', 1, 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, 15, '0', '-2', '-2', '', '', '', 0, '', '', '', '', NULL, '', ''),
(3, 0, 0, 'Vidya Jyoti School', '', 'vidya-jyoti-school', '', '', 'left', '', '2010-04-02 10:14:37', 1, 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, 10, '0', '-2', '-2', '', '', '', 0, '', '', '', '', NULL, '', ''),
(4, 0, 0, 'Kasidih High School', '', 'khs', '', '', 'left', '', '2010-04-02 10:15:09', 1, 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, 13, '0', '-2', '-2', '', '', '', 0, '', '', '', '', NULL, '', ''),
(5, 0, 0, 'Mrs. KMPM Inter College', '', 'kmpm', '', '', 'left', '', '2010-04-02 10:15:38', 1, 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, 22, '0', '-2', '-2', '', '', '', 0, '', '', '', '', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_phocagallery_comments`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_phocagallery_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_phocagallery_img_comments`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_img_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_phocagallery_img_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_phocagallery_img_votes`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_img_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_phocagallery_img_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_phocagallery_img_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` tinyint(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_phocagallery_img_votes_statistics`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_phocagallery_user`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_phocagallery_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_phocagallery_votes`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_phocagallery_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_phocagallery_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `jos_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` tinyint(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_phocagallery_votes_statistics`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'Very Simple Image Gallery Plugin', 'vsig', 'content', 0, 0, 1, 0, 0, 62, '2010-03-11 11:29:23', 'im_width=400\nim_percent=0\nim_align=1\nth_width=120\nth_height=90\nth_quality=80\nth_space=5\nth_right=0\nth_area=30\nth_sort=0\nsets_use=\nsets_txt=Set\nctrl_fwd=>>\nctrl_back=<<\ncap_show=1\ncap_pos=1\nlink_use=1\nimagepath=/images/stories/\nbuttonpath=/images/stories/vsig_buttons/\nusescript=1\nsetid=0\n\n'),
(35, 'Iframe Content', 'mosiframe', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'src=http://docs.google.com/present/embed?id=dhdmf3dg_110gzxpm4gb\nwidth=100%\nheight=400\nframeborder=0\nscrolling=auto\nname=mosiframe\nalign=bottom\ntext=Our XYZ-offers\ntext2=\n\n'),
(36, 'Content - Iframe Plugin', 'plg_iframe', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nsrc=http://docs.google.com/present/embed?id=dhdmf3dg_110gzxpm4gb\nsrc_inurl=1\nwidth=410\nheight=342\nmarginwidth=0\nmarginheight=0\nframeborder=0\nscrolling=auto\nalign=top\nname=plg_iframe\nnoframes=No Frames\n\n'),
(37, 'MosModule', 'mosmodule', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'foldername=mosmodule\naliasfile=\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Photo and Media Sites', 2),
(7, 14, 'All of the Above!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_poll_menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, ''),
(3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, ''),
(4, 'About Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 16, ''),
(5, 'Home', '', 'home', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 6, 0, 1, ''),
(6, 'Clusters', '', 'clusters', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 7, 0, 9, ''),
(7, 'JUSCO School South Park', '', 'sp', '', 'content', 'left', '<p><!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } 	--></p>\r\n<p style="margin-bottom: 0.14cm;" align="JUSTIFY"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">To meet the ever increasing expectations of customer and continually improve the service level, JUSCO started two English Medium Schools. The schools were called JUSCO School Kadma, located near the Rankini Mandir at Kadma and JUSCO School South Park located at Bistupur.</span></span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">The schools seek to inculcate in its students the ethos of excellence based on aspirations rather than remain limited by their perceived capability.</span></span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Teaching learning process is made interactive and visual through use of State of Art Technology and Curriculum which includes Smart classes, XSEED, Global Awareness Program and NIIT packages.</span></span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Personality development for students is through various co-curricular activities like archery, cricket, horse riding, singing, dance, vocal music, drawing, quiz contest, various functions celebrated in schools</span></span></p>\r\n<p style="margin-bottom: 0cm;"> </p>\r\n<p> </p>', 1, 0, '0000-00-00 00:00:00', 8, 0, 20, ''),
(8, 'JUSCO School Kadma', '', 'kd', '', 'content', 'left', '<p>JUSCO School Kadma</p>', 1, 0, '0000-00-00 00:00:00', 9, 0, 13, ''),
(9, 'Vidya Jyoti School', '', 'vjs', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 10, 0, 13, ''),
(10, 'Kasidih High School', '', 'khs', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 11, 0, 12, ''),
(11, 'Mrs. KMPM Inter-College', '', 'kmpm', '', 'content', 'left', '<p>Section: Mrs. KMPM Inter-College</p>', 1, 62, '2010-03-12 05:00:38', 12, 0, 14, ''),
(12, 'Newsflash', '', 'nf', '', 'content', 'left', '<p>Newsflash for JEM Schools</p>', 1, 0, '0000-00-00 00:00:00', 13, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1296363578', 'f6d0e5f151d7cc4765bdb629c6fb4b8c', 1, 0, '', 0, 0, '__default|a:7:{s:22:"session.client.browser";s:101:"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.7) Gecko/20100715 Ubuntu/9.10 (karmic) Firefox/3.6.7";s:15:"session.counter";i:3;s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:61:"/var/www/ClusterLogic/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:19:"session.timer.start";i:1296363427;s:18:"session.timer.last";i:1296363427;s:17:"session.timer.now";i:1296363578;}'),
('', '1296363424', 'bc0300b76531b13b0ac2cc9fe4a4cea8', 1, 0, '', 0, 1, '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1296363424;s:18:"session.timer.last";i:1296363424;s:17:"session.timer.now";i:1296363424;s:22:"session.client.browser";s:101:"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.7) Gecko/20100715 Ubuntu/9.10 (karmic) Firefox/3.6.7";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:61:"/var/www/ClusterLogic/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"28521336d4738a436ae75a9ae30ab02f";}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_stats_agents`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('themza_j15_25', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'prabhu9484@gmail.com', '20ced773feaaf7ddaa65bf70dc6bb5f3:q2uhQs8RJZMQ6aWdwWD9xXmlBzEPH9rR', 'Super Administrator', 0, 1, 25, '2010-03-04 12:04:04', '2011-01-29 07:59:09', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');

