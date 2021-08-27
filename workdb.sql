-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2021 at 08:54 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `admintype` enum('super','sub') NOT NULL,
  `lastlogindate` datetime NOT NULL,
  `lastlogoutdate` datetime NOT NULL,
  `lastloginip` varchar(100) NOT NULL,
  `isverified` tinyint(4) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `contact`, `admintype`, `lastlogindate`, `lastlogoutdate`, `lastloginip`, `isverified`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@yopmail.com', '$2y$10$z1osNArlHUi2vchqsI62/OYyDFNvwCbfDPGOcF9cSJxcGLK3UYpVe', '', 'super', '2020-02-06 09:30:53', '2018-06-26 11:37:05', '', 1, 'active', '2018-06-26 00:00:00', '2018-06-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`id`, `event_id`, `name`, `email`, `phone`, `description`, `created_at`, `updated_at`) VALUES
(1, 14, 'Baranikumar', 'barani@gmail.com', '9025054062', 'saas', '2021-08-27 17:31:48', '2021-08-27 17:31:48'),
(2, 14, 'arun', 'arun@yopmail.com', '7845124545', 'test', '2021-08-27 17:33:01', '2021-08-27 17:33:01'),
(3, 14, 'tamil', 'tamil@yopmail.com', '7845124589', 'data', '2021-08-27 17:36:30', '2021-08-27 17:36:30'),
(4, 13, 'kilan', 'kilan@yopmail.com', '9588751542', 'test data', '2021-08-27 17:36:52', '2021-08-27 17:36:52'),
(5, 14, 'dsd', 'admi34n@yopmail.com', '34434354', 'fdg', '2021-08-27 17:39:16', '2021-08-27 17:39:16'),
(6, 13, 'fg', 'gf@ds.gf', '34434354', 'gdg', '2021-08-27 17:41:32', '2021-08-27 17:41:32'),
(7, 13, 'fds', 'admi32n@yopmail.com', '34434354', 'dfdsf', '2021-08-27 17:42:33', '2021-08-27 17:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `date`, `place`, `image`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Cultural', 'Festival', '14/05/1995', 'chennai', 'uploads/images/events/1630086494.jpg', 1, '2021-08-27 18:52:01', '2021-08-27 18:52:13'),
(12, 'Birthday', 'celebration', '14/05/1995', 'guindy', 'uploads/images/events/1629997044.jpg', 1, '2021-08-27 18:54:22', '2021-08-27 18:54:26'),
(13, 'Temple', 'govt', '14/05/1995', 'chennai', 'uploads/images/events/1629997044.jpg', 1, '2021-08-27 18:57:32', '2021-08-27 18:58:36'),
(14, 'Annual', 'celebration', '14/05/1995', 'madurai', 'uploads/images/events/1629997044.jpg', 1, '2021-08-27 18:59:41', '2021-08-27 18:59:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
