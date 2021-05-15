-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2021 at 09:44 AM
-- Server version: 10.3.28-MariaDB-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slumber6_touringholicdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grams`
--

CREATE TABLE `tbl_grams` (
  `gram_id` int(5) NOT NULL,
  `gram_desc` varchar(500) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `date_post` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_grams`
--

INSERT INTO `tbl_grams` (`gram_id`, `gram_desc`, `user_email`, `date_post`) VALUES
(1, 'Welcome to my new gram 1. First entry to gram.', 'slumberjer@gmail.com', '2021-04-25 09:09:21.516640'),
(2, 'Welcome to my new gram 2', 'slumberjer@gmail.com', '2021-04-25 09:11:52.149900'),
(3, 'Welcome to my new gram 3', 'slumberjer@gmail.com', '2021-04-25 09:12:54.823762'),
(4, 'Welcome to my new gram 4', 'slumberjer@gmail.com', '2021-04-25 09:14:44.678999'),
(5, 'Welcome to my new gram 5. This entry basically to test longer text and how they will appear in the list. More content will be test later.', 'slumberjer@gmail.com', '2021-04-25 09:15:38.040950'),
(6, 'This is my dog', 'slumberjer@gmail.com', '2021-04-25 10:23:38.786453'),
(7, 'My new tv', 'slumberjer@gmail.com', '2021-04-27 06:57:55.969807'),
(8, 'Drink a cup of coffee before continuing our journey. Another test of long sentences use in this app. The maximum text can take up to 500 characters. So this 5 lines of text will test this function.', 'slumberjer@gmail.com', '2021-04-27 21:27:36.864522'),
(10, 'We are leaving', 'slumberjer@gmail.com', '2021-04-27 22:28:21.067005'),
(11, 'Another door', 'slumberjer@gmail.com', '2021-04-27 22:29:46.363906'),
(12, 'The cat is broken...I think...', 'slumberjer@gmail.com', '2021-04-27 22:46:57.192540'),
(13, 'Resting day after a long journey', 'slumberjer@gmail.com', '2021-04-28 06:26:15.541588'),
(14, 'The room is empty. Test edit this room gram.', 'slumberjer@gmail.com', '2021-04-28 06:46:39.876664'),
(15, 'Nice rug. Quite expensive rug to be frank..', 'slumberjer@gmail.com', '2021-04-28 06:47:56.609414'),
(16, 'Cat not looking at window', 'slumberjer@gmail.com', '2021-04-28 06:55:48.788856'),
(18, 'Empty ceiling. It\'s looking nice. What I\'m looking at? Test update data', 'slumberjer@gmail.com', '2021-04-28 08:07:39.190122'),
(21, 'it raining now.', 'slumberjer@gmail.com', '2021-04-28 15:43:18.945329'),
(22, 'tts with fellow rider', 'slumberjer@gmail.com', '2021-04-28 15:44:56.512190'),
(23, 'Mtb conversion to touring bike with butterfly bar and 26x175 road tyres', 'slumberjer@gmail.com', '2021-04-28 15:46:45.026846'),
(24, 'My lovely cromoly touring bike', 'slumberjer@gmail.com', '2021-04-28 15:48:01.179960'),
(25, 'upgrading..', 'slumberjer@gmail.com', '2021-04-28 15:59:01.906996'),
(26, 'testing more data into database.', 'slumberjer@gmail.com', '2021-04-28 16:04:52.720768'),
(27, 'droplets', 'slumberjer@gmail.com', '2021-04-28 16:05:46.929606'),
(28, 'distance to empty..', 'slumberjer@gmail.com', '2021-04-28 16:06:30.841856'),
(29, 'Drop by at grocery shop', 'slumberjer@gmail.com', '2021-04-28 16:14:03.770449'),
(30, 'received parcel from jnt', 'slumberjer@gmail.com', '2021-04-28 17:38:28.665644'),
(31, 'New Tv', 'slumberjer@gmail.com', '2021-05-02 09:43:32.093602'),
(32, 'New mat', 'slumberjer@gmail.com', '2021-05-02 09:44:47.724064'),
(33, 'New sofa', 'slumberjer@gmail.com', '2021-05-02 09:47:10.993917'),
(34, 'New coffee table', 'slumberjer@gmail.com', '2021-05-02 09:47:34.142201'),
(35, 'New lights', 'slumberjer@gmail.com', '2021-05-02 09:48:01.147739'),
(36, 'my new bike.', 'razynfieras@gmail.com', '2021-05-05 07:53:35.302409'),
(37, 'Keep it here.', 'razynfieras@gmail.com', '2021-05-05 07:54:26.199950'),
(38, 'kona bike', 'razynfieras@gmail.com', '2021-05-05 08:10:12.227017'),
(39, 'Walk-in out', 'slumberjer@gmail.com', '2021-05-15 09:37:29.154096');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gram_comments`
--

CREATE TABLE `tbl_gram_comments` (
  `gram_id` varchar(5) NOT NULL,
  `gram_owner` varchar(50) NOT NULL,
  `gram_reply` varchar(50) NOT NULL,
  `gram_comment` varchar(200) NOT NULL,
  `gram_datepost` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gram_comments`
--

INSERT INTO `tbl_gram_comments` (`gram_id`, `gram_owner`, `gram_reply`, `gram_comment`, `gram_datepost`) VALUES
('38', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'Test new comment', '0000-00-00 00:00:00.000000'),
('38', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'Test new comment 2', '2021-05-05 10:14:51.646796'),
('36', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'nice bike', '2021-05-05 10:15:36.305894'),
('35', 'slumberjer@gmail.com', 'slumberjer@gmail.com', 'Quite bright', '2021-05-05 10:15:57.462051'),
('38', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'Nice Bike', '2021-05-05 23:01:08.373280'),
('38', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'Another test comment', '2021-05-14 19:10:28.497906'),
('37', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'Hello', '2021-05-14 19:11:35.663661'),
('37', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'Test 14/5', '2021-05-14 19:13:40.518604'),
('38', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'Another test for comment', '2021-05-14 19:51:54.763666'),
('38', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'waiting for comment', '2021-05-14 19:52:12.658679'),
('38', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'This is to test longer comment text more than 2 lines of sentences. More test needed to see if it fits into chat window.', '2021-05-14 19:56:36.232482'),
('29', 'slumberjer@gmail.com', 'slumberjer@gmail.com', 'Hello comment', '2021-05-14 20:17:21.144324'),
('29', 'slumberjer@gmail.com', 'slumberjer@gmail.com', 'test comment here', '2021-05-14 20:29:51.535676'),
('29', 'slumberjer@gmail.com', 'slumberjer@gmail.com', 'Test again', '2021-05-14 20:30:30.614061'),
('37', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'keep it up', '2021-05-14 20:33:49.162618'),
('36', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'upgraded?', '2021-05-14 20:42:04.456230'),
('33', 'slumberjer@gmail.com', 'slumberjer@gmail.com', 'Nice sofa', '2021-05-14 20:44:57.898545'),
('33', 'slumberjer@gmail.com', 'slumberjer@gmail.com', 'Hello sir', '2021-05-14 20:45:12.326991'),
('37', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'hello test', '2021-05-14 20:52:31.096532'),
('38', 'razynfieras@gmail.com', 'slumberjer@gmail.com', 'test another comment', '2021-05-14 21:11:13.926415'),
('26', 'slumberjer@gmail.com', 'slumberjer@gmail.com', 'Radio app?', '2021-05-14 21:30:23.030237'),
('25', 'slumberjer@gmail.com', 'slumberjer@gmail.com', 'is it sturdy?', '2021-05-14 21:30:45.814190'),
('31', 'slumberjer@gmail.com', 'slumberjer@gmail.com', 'tell me more', '2021-05-15 09:33:26.909694');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `otp` varchar(5) NOT NULL,
  `date_reg` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `rating` varchar(1) NOT NULL,
  `credit` varchar(6) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_name`, `user_email`, `password`, `otp`, `date_reg`, `rating`, `credit`, `status`) VALUES
('', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '9732', '2021-05-11 21:46:43.302121', '0', '0', 'active'),
('Razyn', 'razynfieras@gmail.com', 'bec75d2e4e2acf4f4ab038144c0d862505e52d07', '0', '2021-05-05 07:38:07.597475', '0', '0', 'active'),
('Ahmad Hanis', 'slumberjer@gmail.com', 'bec75d2e4e2acf4f4ab038144c0d862505e52d07', '0', '2021-04-19 22:19:00.515839', '0', '0', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_grams`
--
ALTER TABLE `tbl_grams`
  ADD PRIMARY KEY (`gram_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_grams`
--
ALTER TABLE `tbl_grams`
  MODIFY `gram_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
