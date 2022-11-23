-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 07:20 AM
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
-- Table structure for table `teamdetails`
--

CREATE TABLE `teamdetails` (
  `id` int(11) NOT NULL,
  `gender` varchar(100) CHARACTER SET utf8 NOT NULL,
  `teamID` int(11) NOT NULL,
  `headCoach` varchar(100) NOT NULL,
  `established` varchar(100) CHARACTER SET utf8 NOT NULL,
  `leagues` varchar(100) NOT NULL,
  `logoUrl` varchar(100) CHARACTER SET utf8 NOT NULL,
  `wining` varchar(100) CHARACTER SET utf8 NOT NULL,
  `losing` varchar(100) CHARACTER SET utf8 NOT NULL,
  `leaguePoints` varchar(100) CHARACTER SET utf8 NOT NULL,
  `location` varchar(100) CHARACTER SET utf8 NOT NULL,
  `goals` varchar(100) CHARACTER SET utf8 NOT NULL,
  `gameStyle` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamdetails`
--

INSERT INTO `teamdetails` (`id`, `gender`, `teamID`, `headCoach`, `established`, `leagues`, `logoUrl`, `wining`, `losing`, `leaguePoints`, `location`, `goals`, `gameStyle`) VALUES
(1, '(MEN)', 8, 'Peter Mwathi Kungu', '2020-10-20', 'KHF League/NASOKUSA', 'MobilesPictures/8(MEN).jpg', '34', '66', 'BLUETOOTH/WIFI/4G', 'Madaraka', '2', '40'),
(2, 'Handball', 9, 'Peter Mwathi Kungu', '2016-02-22', 'KHF League/NASOKUSA', 'MobilesPictures/9Handball.jpg', '186cm', '1%', 'Pivoter', 'Kimilili', '12', 'Offensive'),
(3, 'Men', 10, 'Peter Mwathi Kungu', '2020-10-13', 'KHF League/NASOKUSA', 'MobilesPictures/10Men.jpg', '45', '55', '34', 'Thika', '12', 'Speed,Systems, Defensive'),
(4, 'Men', 7, 'Strathmore Tornadoes', '2020-10-15', 'KHF League/NaKUSA', 'MobilesPictures/7Men.jpg', '45', '55', '34', 'Madaraka', '12', 'Speed,Systems, Defensive'),
(5, 'Prevailer Muhani', 11, 'Kiroboto', '2020-10-20', 'KHF League/NAKUSA', 'MobilesPictures/11Prevailer Muhani.jpg', '45', '55', 'Left Winger', 'Kimilili', '17', 'Speed,Systems, Defensive'),
(6, 'Women', 12, 'Danstone Eshikumo', '2013-02-22', 'KHF League/NASOKUSA', 'MobilesPictures/12Women.jpg', '34', '66', '34', 'Madaraka', '12', 'Speed,Systems, Defensive'),
(7, 'Women', 13, 'Allan Mate', '2020-09-29', 'KHF League/NASOKUSA', 'MobilesPictures/13Women.jpg', '34', '66', '34', 'Thika', '1000', 'Speed, Systems, Defensive, Offensive'),
(8, 'Men', 14, 'Peter Mwathi Kungu', '2020-10-06', 'KHF League/NASOKUSA', 'MobilesPictures/14Men.jpg', '186cm', '55', 'Left Winger', 'Kimilili', '17', 'Speed, Systems, Defensive, Offensive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teamdetails`
--
ALTER TABLE `teamdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teamdetails`
--
ALTER TABLE `teamdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
