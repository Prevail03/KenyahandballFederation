-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 10:55 AM
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
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `id` int(11) NOT NULL,
  `playerName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `currentTeam` varchar(100) NOT NULL,
  `previousTeams` varchar(100) CHARACTER SET utf8 NOT NULL,
  `debutYear` varchar(100) NOT NULL,
  `imageUrl` varchar(100) CHARACTER SET utf8 NOT NULL,
  `height` varchar(100) CHARACTER SET utf8 NOT NULL,
  `weight` varchar(100) CHARACTER SET utf8 NOT NULL,
  `position` varchar(100) CHARACTER SET utf8 NOT NULL,
  `otherPositions` varchar(100) CHARACTER SET utf8 NOT NULL,
  `scores` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`id`, `playerName`, `currentTeam`, `previousTeams`, `debutYear`, `imageUrl`, `height`, `weight`, `position`, `otherPositions`, `scores`) VALUES
(1, 'S4', '200', '2014-12-02', '0', 'MobilesPictures/4S4.jpg', '24 MP', '2GB Ram | Storage 16 GB', '3G | 4G', 'Android', '1 MHZ'),
(2, 'n9', '1000', '2017-05-07', '50', 'MobilesPictures/5n9.jpg', '8 mp', '512 RAM / 8 GBstorage', '3G / wifi / bluetooth', 'Android', '1 MHZ'),
(4, 'A7', '2000', '2017-05-16', '200', 'MobilesPictures/4A7.jpg', '20 MP', '32 RAM/ 16 Storage', '3G / wifi / bluetooth', 'andriod', '1 MHZ'),
(5, 'Handball', '3000', '2020-09-29', '0', 'MobilesPictures/6Handball.jpg', '23Mp', '32Gb', 'BLUETOOTH/WIFI/4G', 'Kaloleni', '12'),
(6, 'Handball', '3000', '2020-10-07', '23', 'MobilesPictures/5Handball.jpg', '23Mp', '32Gb', 'BLUETOOTH/WIFI/4G', 'Papi', '17'),
(7, 'Handball', '3000', '2020-09-29', '23', 'MobilesPictures/Handball.jpg', '23Mp', '32Gb', 'BLUETOOTH/WIFI/4G', 'Thika', '17'),
(8, 'Handball', '3000', '2005', '23', 'MobilesPictures/Handball.jpg', '23Mp', '32Gb', 'BLUETOOTH/WIFI/4G', 'Kimilili', '234Ghz'),
(9, 'Handball', '3000', '2020-10-21', '2019', 'MobilesPictures/6Handball.jpg', '200cm', '85kg', 'BLUETOOTH/WIFI/4G', 'Kakamega', '2'),
(10, 'Prevailer Muhani', '3000', '2020-10-26', '2019', 'MobilesPictures/6Prevailer Muhani.jpg', '200cm', '85kg', 'Pivoter', 'Kimilili', '1'),
(11, 'Prevailer Muhani', '0', '2020-10-16', '2019', 'MobilesPictures/Prevailer Muhani.jpg', '186cm', '85kg', 'Pivoter', 'Madaraka', '17'),
(12, 'Prevailer Muhani', '0', 'Mbale High School', '2019', 'MobilesPictures/Prevailer Muhani.jpg', '186cm', '85kg', 'Pivoter', 'N/A', '6'),
(13, 'Prevailer Muhani', 'Peter Mwathi Kungu', 'Mbale High School', '2019', 'MobilesPictures/Prevailer Muhani.jpg', '186cm', '85kg', 'Pivoter', 'Madaraka', '12'),
(14, 'A20', 'Kiroboto', 'N/a', '0', 'MobilesPictures/A20.jpg', '99', '85kg', 'BLUETOOTH/WIFI/4G', 'Kimilili', '6'),
(15, '(WOMEN)', 'Strathmore Tornadoes', 'Mbale High School', 'KHF League', 'MobilesPictures/(WOMEN).jpg', '23Mp', '85kg', 'Pivoter', 'Kakamega', '2'),
(16, 'Marrell Samuel Moraa', 'Kiroboto', 'Mbale High School', 'KHF League', 'MobilesPictures/Marrell Samuel Moraa.jpg', '186cm', '85kg', 'Pivoter', 'Thika', '12'),
(17, 'Handball', 'Strathmore Tornadoes', 'Mbale High School', '2019', 'MobilesPictures/Handball.jpg', '186cm', '85kg', 'Pivoter', 'Kakamega', '2'),
(18, 'Prevailer Muhani', 'Peter Mwathi Kungu', 'Mbale High School', 'KHF League', 'MobilesPictures/.jpg', '186cm', '85kg', 'Pivoter', 'Kimilili', '12'),
(19, 'Elvis Osodo', 'Strathmore FC', 'Bandari Fc', '2019', 'Players/.jpg', '23Mp', '32Gb', 'BLUETOOTH/WIFI/4G', 'N/A', '17'),
(20, 'Elvis Osodo', 'Strathmore Tornadoes', 'Mbale High School', '2017', 'Players/.jpg', '99', '85kg', 'Pivoter', 'Kaloleni', '12'),
(21, 'Prevailer Muhani', '3000', 'Mbale High School', 'KHF League', 'Players/Prevailer Muhani.jpg', '99', '85kg', 'BLUETOOTH/WIFI/4G', 'Thika', '2'),
(22, 'Prevailer Muhani', 'Peter Mwathi Kungu', 'N/a', 'KHF League', 'Players/Prevailer Muhani.jpg', '186cm', '85kg', 'Pivoter', 'Kakamega', '17'),
(23, 'Smith Mbogo', 'Buccanners', 'UON', '2011', 'Players/Smith Mbogo.jpg', '99', '32Gb', 'Pivoter', 'Thika', '6'),
(24, 'Cleophas Frank', 'Strathmore Leos', 'Kisiii', '2018', 'Players/Cleophas Frank.jpg', '186cm', '20kg', 'Pivoter', 'Kakamega', '12'),
(25, 'Chris Deco', 'NCPB ', 'Bandari Fc', '2019', 'Players/Chris Deco.jpg', '186cm', '85kg', 'Left Winger', 'N/A', '12'),
(26, 'Wabbs', 'Strathmore Tornadoes', 'Bandari Fc', 'KHF League', 'Players/Wabbs.jpg', '186cm', '85kg', 'Pivoter', 'Kimilili', '2'),
(27, 'Cele', 'Peter Mwathi Kungu', 'Mbale High School', 'KHF League', 'Players/Cele.jpg', '186cm', '85kg', 'Pivoter', 'Thika', '17'),
(28, 'Sherryl', 'NCPB ', 'Mbale High School', 'KHF League', 'Players/Sherryl.jpg', '186cm', '85kg', 'Pivoter', 'Kakamega', '6'),
(29, 'Brian Murangiri', 'Strathmore University HC', 'N/A', '2018', 'Players/Brian Murangiri.jpg', '186cm', '83', '3', 'N/A', '20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobile`
--
ALTER TABLE `mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
