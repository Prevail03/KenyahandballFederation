-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 07:21 AM
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
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `teamphoto`
--

CREATE TABLE `teamphoto` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `imageUrl` varchar(80) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamphoto`
--

INSERT INTO `teamphoto` (`id`, `name`, `imageUrl`) VALUES
(4, 'Samsung', 'BrandsPictures/Samsung.jpg'),
(5, 'Nokia', 'BrandsPictures/Nokia.jpg'),
(6, 'Brian Murangiri Kithinji', 'BrandsPictures/Brian Murangiri Kithinji.jpg'),
(7, 'Prevailer Muhani', 'BrandsPictures/Prevailer Muhani.jpg'),
(8, 'Prevailer Muhani', 'BrandsPictures/Prevailer Muhani.jpg'),
(9, 'Brian Murangiri Kithinji', 'BrandsPictures/Brian Murangiri Kithinji.jpg'),
(10, 'Felix Omondi', 'BrandsPictures/Felix Omondi.jpg'),
(11, 'Elvis Osodo', 'BrandsPictures/Elvis Osodo.jpg'),
(12, 'Abigael Mwivali', 'BrandsPictures/Abigael Mwivali.jpg'),
(13, 'Mercy Mursoy Chelengat', 'BrandsPictures/Mercy Mursoy Chelengat.jpg'),
(14, 'Maxwell Munene', 'BrandsPictures/Maxwell Munene.jpg'),
(15, 'Prevailer Muhani', 'BrandsPictures/Prevailer Muhani.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teamphoto`
--
ALTER TABLE `teamphoto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teamphoto`
--
ALTER TABLE `teamphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
