-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 11:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khf`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `country` varchar(254) NOT NULL,
  `localclub` varchar(255) NOT NULL,
  `interclub` varchar(255) NOT NULL,
  `national` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `userType` varchar(100) NOT NULL DEFAULT 'user',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `fname`, `lname`, `gender`, `dob`, `country`, `localclub`, `interclub`, `national`, `email`, `userType`, `username`, `password`) VALUES
(1, 'Felix', 'Omondi Odhiambo', 'Male', '2020-09-28', 'Kenya', 'Strathmore Tornadoes', 'Paris Saint-Germain HB', 'Kenya', 'fomondi@gmail.com', 'user', 'Omondi', '87845b4b39d766b15c7f78074b1cec79'),
(2, 'Prevailer', 'Muhani', 'Male', '2020-09-29', 'Kenya', 'Strathmore Tornadoes', 'THW Kiel', 'Denmark', 'Preailer.Muhani@strathmore.edu', 'admin', 'Muhani', '68c2cab4b382ae6c57334f372120021b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
