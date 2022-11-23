-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2020 at 12:54 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `teamID` int(100) NOT NULL,
  `headCoach` varchar(100) NOT NULL,
  `established` varchar(100) NOT NULL,
  `leagues` varchar(100) NOT NULL,
  `logoUrl` varchar(255) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gamePlay` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `gender`, `teamID`, `headCoach`, `established`, `leagues`, `logoUrl`, `location`, `gamePlay`) VALUES
(1, 'Men', 4, 'Peter Kungu Mwathi', '2005', 'KHF League/NASOKUSA', 'TeamPictures/4Men.jpg', 'Madaraka', 'Speed, Systems, Defensive, Offensive'),
(2, 'Women', 19, 'Jack Habert', '2000', 'KHF League', 'TeamPictures/19Women.jpg', 'TBC', 'Speed, Defensive,Offensive'),
(3, 'Men', 20, 'Gerald Abunde Juma', '2000', 'KHF League', 'TeamPictures/20Men.jpg', 'Kimilili', 'Speed,'),
(4, 'Men', 5, 'Danstun Eshikumo', '1987', 'KHF League', 'TeamPictures/5Men.jpg', 'Industrial Area ', 'Defensive, Offensive'),
(5, 'Men', 1, 'Kenah', '2020', 'KHF League', 'TeamPictures/1Men.jpg', 'Uon', 'Offensive'),
(6, 'Men', 2, 'Martin Abunde', '1980', 'KHF League', 'TeamPictures/2Men.jpg', 'Kaloleni', 'Defensive, Offensive'),
(8, 'Men', 1, 'Jack Habert', '1980', 'KHF League/KSSSA', 'TeamPictures/1Men.jpg', 'Malava', 'Speed,'),
(9, 'Men', 28, 'Jack Habert', '1987', 'Khf League', 'TeamPictures/28Men.jpg', 'Malava', 'Speed, Systems, Defensive, Offensive'),
(10, 'Men', 33, 'Kennedy Odhiambo ', '2005', 'Khf League', 'TeamPictures/33Men.jpg', 'Kangema', 'Handball'),
(11, 'prevailer muhani', 28, 'Kenah', 'Nanyuki', '200', 'TeamPictures/28prevailer muhani.jpg', 'Industrial Area ', 'Offensive'),
(12, 'prevailer muhani', 28, 'Martin Abunde', 'Nanyuki', '200', 'TeamPictures/28prevailer muhani.jpg', 'Industrial Area ', 'Offensive'),
(13, 'prevailer muhani', 21, 'Kenah', 'Nanyuki', '200', 'TeamPictures/21prevailer muhani.jpg', 'Industrial Area ', 'Offensive'),
(14, 'prevailer muhani', 3, 'Kenah', 'Nanyuki', '200', 'TeamPictures/3prevailer muhani.jpg', 'Kaloleni', 'Offensive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
