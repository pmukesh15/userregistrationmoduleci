-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 01:18 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `regci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `pk_int_user_id` int(11) NOT NULL,
  `vchr_first_name` varchar(250) NOT NULL,
  `vchr_last_name` varchar(250) NOT NULL,
  `vchr_phone` varchar(20) NOT NULL,
  `dat_dob` date NOT NULL,
  `vchr_email` varchar(250) NOT NULL,
  `vchr_password` varchar(250) NOT NULL,
  `bln_email_verified` tinyint(1) DEFAULT NULL,
  `int_user_role` tinyint(1) NOT NULL COMMENT '0-admin, 1-user',
  `vchr_subscription` varchar(11) DEFAULT NULL,
  `vchr_country` varchar(20) NOT NULL DEFAULT 'UK',
  `tim_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tim_modified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`pk_int_user_id`, `vchr_first_name`, `vchr_last_name`, `vchr_phone`, `dat_dob`, `vchr_email`, `vchr_password`, `bln_email_verified`, `int_user_role`, `vchr_subscription`, `vchr_country`, `tim_created_at`, `tim_modified_at`) VALUES
(30, 'Mukesh ', 'P ', '+44411111111', '2020-12-08', 'pmukesh15@gmail.com1', 'Mukesh@2020', 1, 1, 'story', 'UK', '2020-12-13 17:06:03', NULL),
(31, 'Admin', 'Admin', '+4441111111', '2020-12-06', 'admin@admin', 'admin@2020', 1, 0, '', 'UK', '2020-12-13 21:32:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_subscription`
--

CREATE TABLE `tbl_user_subscription` (
  `int_subscription_id` int(11) NOT NULL,
  `fk_int_user_id` int(11) NOT NULL,
  `vchr_comment` varchar(500) DEFAULT NULL,
  `vchr_story` varchar(500) DEFAULT NULL,
  `vchr_title` varchar(250) DEFAULT NULL,
  `vchr_url` varchar(250) DEFAULT NULL,
  `vchr_author` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_subscription`
--

INSERT INTO `tbl_user_subscription` (`int_subscription_id`, `fk_int_user_id`, `vchr_comment`, `vchr_story`, `vchr_title`, `vchr_url`, `vchr_author`) VALUES
(76, 30, NULL, NULL, 'Code Size: Squeezing more with linker outlining', NULL, 'parsecs'),
(75, 30, NULL, NULL, 'The Break-Up Big Tech Act is a bipartisan bill to tackle social media censorship', NULL, 'admiralspoo'),
(74, 30, NULL, NULL, 'The Lost History of Socialism’s DIY Computer', NULL, 'bschne'),
(73, 30, NULL, NULL, 'Billionaire Wants to Give Every Baby $6,750 to Solve the Retirement Crisis', NULL, 'Reedx'),
(72, 30, NULL, NULL, 'Taking advantage of Python\'s concurrent futures to full saturate your bandwidth', NULL, 'delduca'),
(71, 30, NULL, NULL, 'OpenBSD devs imply they don\'t have to follow their own policies', NULL, 'candied_scarf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`pk_int_user_id`),
  ADD UNIQUE KEY `vchr_email` (`vchr_email`,`vchr_first_name`);

--
-- Indexes for table `tbl_user_subscription`
--
ALTER TABLE `tbl_user_subscription`
  ADD PRIMARY KEY (`int_subscription_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `pk_int_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_user_subscription`
--
ALTER TABLE `tbl_user_subscription`
  MODIFY `int_subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
