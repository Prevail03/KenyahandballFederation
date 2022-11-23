-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 07:57 AM
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
(1, 'Men', 1, 'Peter Kungu Mwathi', '2005', 'KHF League/NASOKUSA', 'TeamPictures/1Men1.jpg', 'Madaraka', 'Offensive ,Defensive ,Systems.Speed'),
(2, 'Men', 2, 'Danston Eshikumo', '2001', 'KHF League', 'TeamPictures/2Men2.jpg', 'Donholm', 'Offensive ,Defensive, Speed');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `image_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `image_text`) VALUES
(1, 'JkuatH.jpg', 'asdfgh,/ vn  kxgcvmnm, m   jgkn, vm  bhjln, lm '),
(2, 'ingwela.jpg', 'Rashid-Peter Ingwela a.k.a Spanner(in green ) During the CAHB championship in Tunisia');

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE `league` (
  `id` int(100) NOT NULL,
  `Position` int(100) NOT NULL,
  `Team` varchar(300) NOT NULL,
  `Played` int(100) NOT NULL,
  `Wins` int(100) NOT NULL,
  `Drawn` int(100) NOT NULL,
  `Lost` int(100) NOT NULL,
  `GF` int(100) NOT NULL,
  `GoalsAllowed` int(100) NOT NULL,
  `GoalsDifference` int(100) NOT NULL,
  `Points` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `league`
--

INSERT INTO `league` (`id`, `Position`, `Team`, `Played`, `Wins`, `Drawn`, `Lost`, `GF`, `GoalsAllowed`, `GoalsDifference`, `Points`) VALUES
(1, 1, 'Strathmore University Handball Club', 18, 17, 0, 1, 611, 276, 335, 34),
(2, 2, 'NCPB Men', 15, 15, 0, 0, 615, 254, 361, 30),
(3, 3, 'Black Mamba', 15, 15, 0, 0, 581, 312, 269, 30),
(4, 4, 'Rangers Handball Club', 18, 14, 0, 4, 608, 515, 93, 28),
(5, 5, 'Ulinzi Shooters', 13, 13, 0, 0, 576, 293, 283, 26),
(6, 6, 'Kenyatta University Men', 18, 13, 0, 5, 533, 416, 117, 26),
(7, 7, 'Bucaneers Handball Club', 17, 10, 3, 4, 423, 391, 32, 23),
(8, 8, 'Makueni Bees', 23, 10, 1, 12, 596, 628, -32, 21),
(9, 9, 'Inspired Boys', 23, 10, 1, 12, 539, 685, -146, 21),
(10, 10, 'Boomerang Handball Club', 15, 9, 2, 4, 422, 362, 60, 20),
(11, 11, 'Technical  University of Kenya', 16, 9, 2, 5, 422, 409, 13, 20),
(12, 12, 'MKU Thika ', 20, 9, 1, 10, 559, 543, 16, 19),
(13, 13, 'Nanyuki', 19, 9, 0, 10, 494, 518, -24, 18),
(14, 14, 'St Paul\'s University', 16, 7, 2, 7, 500, 509, -9, 16),
(15, 15, 'Jomo Kenyatta University of Agriculture and Technology', 18, 7, 1, 10, 473, 483, -10, 15),
(16, 16, 'University Of Eldoret', 20, 7, 1, 12, 527, 570, -43, 15),
(17, 17, 'Generations', 17, 6, 2, 9, 440, 483, -43, 14),
(18, 18, 'Thika Engineers', 17, 7, 0, 10, 455, 512, -57, 14),
(19, 19, 'General Service Unit', 15, 6, 0, 9, 380, 459, -79, 12),
(20, 20, 'National Youth Service Men', 14, 4, 0, 10, 375, 466, -91, 8),
(21, 21, 'Adminstration Police', 18, 3, 0, 15, 449, 658, -209, 6),
(22, 22, 'Warriors', 22, 3, 0, 19, 450, 746, -296, 6),
(23, 23, 'University of Nairobi', 14, 2, 0, 12, 319, 497, -178, 4),
(24, 24, 'Kaluluini Men', 12, 1, 0, 11, 243, 361, -118, 2),
(25, 25, 'Gunners', 17, 1, 0, 16, 267, 511, -244, 2);

-- --------------------------------------------------------

--
-- Table structure for table `leaguew`
--

CREATE TABLE `leaguew` (
  `id` int(100) NOT NULL,
  `Position` int(100) NOT NULL,
  `Team` varchar(300) NOT NULL,
  `Played` int(100) NOT NULL,
  `Wins` int(100) NOT NULL,
  `Drawn` int(100) NOT NULL,
  `Lost` int(100) NOT NULL,
  `GF` int(100) NOT NULL,
  `GoalsAllowed` int(100) NOT NULL,
  `GoalsDifference` int(100) NOT NULL,
  `Points` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leaguew`
--

INSERT INTO `leaguew` (`id`, `Position`, `Team`, `Played`, `Wins`, `Drawn`, `Lost`, `GF`, `GoalsAllowed`, `GoalsDifference`, `Points`) VALUES
(1, 1, 'Nairobi Water', 8, 8, 0, 0, 307, 99, 208, 16),
(2, 2, 'NCPB Ladies', 9, 7, 0, 2, 312, 157, 155, 14),
(3, 3, 'Ulinzi Sharks', 6, 6, 0, 0, 190, 106, 84, 12),
(4, 4, 'Rising Starlets', 11, 5, 0, 6, 321, 364, -43, 10),
(5, 0, 'MKU Thika Ladies', 7, 3, 0, 4, 143, 175, -32, 6),
(6, 6, 'Kenyatta University Ladies', 8, 2, 1, 5, 156, 227, -71, 5),
(7, 7, 'Kaluluini Ladies', 7, 1, 0, 6, 125, 232, -107, 2),
(8, 8, 'NYS Ladies', 10, 0, 1, 9, 117, 311, -194, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phototeam`
--

CREATE TABLE `phototeam` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imageUrl` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phototeam`
--

INSERT INTO `phototeam` (`id`, `name`, `imageUrl`) VALUES
(1, 'Strathmore University Handball Club (Tornadoes)', 'TeamPhotos/Strathmore University Handball Club (Tornadoes).jpg'),
(2, 'NCPB Men', 'TeamPhotos/NCPB Men.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `playerphotos`
--

CREATE TABLE `playerphotos` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `playerName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playerphotos`
--

INSERT INTO `playerphotos` (`id`, `path`, `playerName`) VALUES
(1, 'khf1.jpg', 'Prevailer Muhani'),
(2, 'kdf.jpg', 'Brian Murangiri'),
(3, 'kdf.jpg', 'Brian Murangiri'),
(4, 'kdf.jpg', 'Brian Murangiri'),
(5, 'KUB.jpg', 'Prevailer Muhanio'),
(6, 'KUB.jpg', 'Prevailer Muhanio'),
(7, 'khf1.jpg', 'Prevailer Muhani'),
(8, 'cereals.jpg', 'Thodosia Sangoro'),
(9, 'cereals.jpg', 'Thodosia Sangoro'),
(10, 'kenya.jpg', 'Wabbs AQ');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `playerName` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `currentTeam` varchar(100) NOT NULL,
  `previousTeams` varchar(100) NOT NULL,
  `debutYear` varchar(254) NOT NULL,
  `height` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `otherPositions` varchar(255) NOT NULL,
  `scores` varchar(255) NOT NULL,
  `gamesPlayed` varchar(255) NOT NULL,
  `age` varchar(100) NOT NULL,
  `jerseyNumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `playerName`, `gender`, `currentTeam`, `previousTeams`, `debutYear`, `height`, `weight`, `position`, `otherPositions`, `scores`, `gamesPlayed`, `age`, `jerseyNumber`) VALUES
(1, 'Prevailer Muhani', 'Other', 'Strathmore University HAndball Club(Tornadoes)', 'N/A', '2019', '186cm', '83kg', 'Line Player/Pivoter', 'Defense Specialist', '100', '23', '1984-12-31', '5'),
(2, 'Brian Murangiri', 'Male', 'Strathmore University HAndball Club(Tornadoes)', 'N/A', '2018', '186cm', '78kg', 'Left Back', 'Centre Back, Right Back, Right Wing', '200', '58', '1999-01-08', '52'),
(3, 'Brian Murangiri', 'Male', 'Strathmore University HAndball Club(Tornadoes)', 'N/A', '2019', '186cm', '83kg', 'Left Back', 'Centre Back, Right Back, Right Wing', '200', '58', '1999-01-08', '52'),
(4, 'Prevailer Muhani', 'Male', 'University of Nairobi', 'N/A', '2019', '186cm', '83kg', 'Line Player/Pivoter', 'N/A', '34', '58', '2020-10-12', '5'),
(5, 'Brian Murangiri', 'Male', 'Strathmore University HAndball Club(Tornadoes)', 'N/A', '2018', '186cm', '78kg', 'Right Back', 'Centre Back, Right Back, Right Wing', '20', '18', '1998-01-08', '52');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `path` varchar(300) NOT NULL,
  `image_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `path`, `image_text`) VALUES
(1, 'gallery/akotheee.jpg', 'Akothee'),
(2, 'gallery/muhani.jpg', 'Prevailer Muhani'),
(3, 'gallery/albert.jpg', 'Albert');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
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
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `gender`, `dob`, `country`, `localclub`, `interclub`, `national`, `email`, `userType`, `username`, `password`) VALUES
(1, 'Felix', 'Omondi Odhiambo', 'Male', '2020-09-28', 'Kenya', 'Strathmore Tornadoes', 'Paris Saint-Germain HB', 'Kenya', 'prevamu0@gmail.com', 'user', 'Omondi', '87845b4b39d766b15c7f78074b1cec79'),
(2, 'Prevailer', 'Muhani', 'Male', '2020-09-29', 'Kenya', 'Strathmore Tornadoes', 'THW Kiel', 'Denmark', 'Preailer.Muhani@strathmore.edu', 'admin', 'Muhani', '68c2cab4b382ae6c57334f372120021b'),
(3, 'Felix', 'Omondi', 'Male', '2020-09-29', 'Kenya', 'Boomerang', 'AS SGS Ramhat Hashron', 'Barbados', 'fomondi@gmail.com', 'user', 'Felix', '87845b4b39d766b15c7f78074b1cec79'),
(4, 'Brian Murangiri', 'Kithinji', 'Male', '2001-01-05', 'Kenya', 'Strathmore Tornadoes', 'THW Kiel', 'Kazakhstan', 'brian.kithinji@strathmore.edu', 'user', 'Murangiri', '68c2cab4b382ae6c57334f372120021b'),
(5, 'Felix', 'Omondi', 'Male', '2020-10-01', 'Afghanistan', 'National Youth Service Men', 'A:E.K. Athens HC', 'Afghanistan', 'prevamuo3@gmail.com', 'user', 'Opiyo', '47326c560d339f9610677f2f65fe5df3'),
(6, 'Prevailer', 'Muhani', 'Male', '2020-09-29', 'Afghanistan', 'Bucaneers', 'A:E.K. Athens HC', 'Afghanistan', 'Preailer.Muhani@strathmore.edu', 'user', 'INDIA', '790d71a7fc5afea69061d6093f0506f7'),
(10, 'Brian', 'Kithinji', 'Male', '2020-09-30', 'Kenya', 'National Youth Service Men', 'Aula Alimentos de Valladolid', 'Belgium', 'brian.kithinji@strathnore.w', 'user', 'Omondi34', '87845b4b39d766b15c7f78074b1cec79'),
(11, 'Prevailer', 'Muhani3', 'Male', '2020-10-27', 'Kenya', 'University of Nairobi', 'AS SGS Ramhat Hashron', 'Belarus', 'Preailer.Muhani@strathmore.edu', 'user', 'Muhani 45', '87845b4b39d766b15c7f78074b1cec79'),
(12, 'Brian', 'Kithinji34', 'Male', '2020-10-26', 'Kazakhstan', 'Ulinzi Shooters', 'BHT Hurricanes', 'Belgium', 'brian.kithinji@strathnore.w', 'user', 'Omondi555', '87845b4b39d766b15c7f78074b1cec79'),
(13, 'Charles', 'Omondi', 'Male', '2020-09-28', 'Kenya', 'St Paulsniversity', 'Paris Saint-Germain HB', 'Kenya', 'brian.kithinji@strathmore.edu', 'user', 'admin', 'Charles'),
(14, 'Elvis', 'Osodo', 'Male', '2020-09-30', 'Bahrain', 'Strathmore University HAndball Club(Tornadoes)', 'Paris Saint-Germain HB', 'Denmark', 'muhanipreva@gmail.com', 'user', 'Osodo', '1f04dcf437b234d604d66fb563429607'),
(16, 'Prevailer', 'Muhani', 'Male', '2020-11-29', 'Kenya', 'University of Nairobi', 'Aula Alimentos de Valladolid', 'Barbados', 'Preailer.Muhani@strathmore.edu', 'user', 'Muhan', '68c2cab4b382ae6c57334f372120021b'),
(17, 'Elvis', 'Osodo', 'Male', '2020-11-02', 'Belarus', 'University of Nairobi', 'Azeryol Baku', 'Belarus', 'muhanipreva@gmail.com', 'user', 'Muhani0', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `hometeam` varchar(100) NOT NULL,
  `scorehome` int(100) NOT NULL,
  `awayteam` varchar(100) NOT NULL,
  `scoreaway` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `location` varchar(100) CHARACTER SET utf8 NOT NULL,
  `goals` varchar(100) CHARACTER SET utf8 NOT NULL,
  `gameStyle` varchar(300) CHARACTER SET utf8 NOT NULL,
  `achievements` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamdetails`
--

INSERT INTO `teamdetails` (`id`, `gender`, `teamID`, `headCoach`, `established`, `leagues`, `logoUrl`, `location`, `goals`, `gameStyle`, `achievements`) VALUES
(1, 'Men', 1, 'John Doe', '2019', 'KHF League', 'TeamLogo/1Men.jpg', 'Juja', 'TBC', 'Offensive', ''),
(2, 'Men', 2, 'John Doe', 'TBC', 'KHF League', 'TeamLogo/2Men.jpg', 'Kisii', 'TBC', 'Offensive', ''),
(3, 'Men', 3, 'Peter Kungu Mwathi', '2005', 'KHF League/NASOKUSA', 'TeamLogo/3Men.jpg', 'Madaraka', 'TBC', 'Speed ,Systems, Defensive, Ofensive', ''),
(5, 'Men', 4, 'Gerald Juma Abunde', '2019', 'KHF League/KSSSA', 'TeamLogo/4Men.jpg', 'Mbooni', 'Qualify for super cup', 'Speed', 'N/A'),
(6, 'Women', 5, 'Ryan Mutunga and Benjamin Mutisya', '2019', 'KHF League', 'TeamLogo/5Women.jpg', 'Yatta machakos county', 'TBC', 'Speed', 'Nyumu cup and Thika Opens winners'),
(7, 'Men', 6, 'Alvin Caleb Akhumbi ', '2002', 'KHF League/KDF League', 'TeamLogo/6Men.jpg', 'Kahawa Barracks', 'Nature new players', 'Defensive, Offensive, Systems', 'Kdf league champions 2019'),
(8, 'Men', 7, 'Gerald Juma Abunde', '2008', 'KHF League', 'TeamLogo/7Men.jpg', 'Kimilili', 'Finish Top 3', 'Speed', ' Participating in Supercup 2018/19 ,Supercup 2019/20 .Rangers Opens All time Winners'),
(9, 'Men', 8, 'Nickson Oyaro ', '1990`s', 'KHF League/KDF League', 'TeamLogo/8Men.jpg', 'Embakasi Garrison ', 'To win the league convincingly ', 'Patient build up with great endurance ', 'East and Central Champions'),
(10, 'Men', 9, 'Abunde Martin', '1980`s', 'KHF League', 'TeamLogo/9Men.jpg', 'Kaloleni Handball Court, Kaloleni estate', 'Goals for 581; against 312', 'Offensive', 'Several league titles');

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
(1, 'Bucaneers Handball Club', 'TeamPhotos/Bucaneers Handball Club.jpg'),
(2, 'Boomerang Handball Club', 'TeamPhotos/Boomerang Handball Club.jpg'),
(3, 'Strathmore University Handball Club (Tornadoes)', 'TeamPhotos/Strathmore University Handball Club (Tornadoes).jpg'),
(4, 'Makueni Bees', 'TeamPhotos/Makueni Bees.jpg'),
(5, 'Kaluluini Ladies', 'TeamPhotos/Kaluluini Ladies.jpg'),
(6, 'Kahawa Garrisson', 'TeamPhotos/Kahawa Garrisson.jpg'),
(7, 'Rangers Handball Club', 'TeamPhotos/Rangers Handball Club.jpg'),
(8, 'Ulinzi Shooters', 'TeamPhotos/Ulinzi Shooters.jpg'),
(9, 'Black Mamba Handball Club', 'TeamPhotos/Black Mamba Handball Club.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaguew`
--
ALTER TABLE `leaguew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phototeam`
--
ALTER TABLE `phototeam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerphotos`
--
ALTER TABLE `playerphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamdetails`
--
ALTER TABLE `teamdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamphoto`
--
ALTER TABLE `teamphoto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `league`
--
ALTER TABLE `league`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `leaguew`
--
ALTER TABLE `leaguew`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `phototeam`
--
ALTER TABLE `phototeam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `playerphotos`
--
ALTER TABLE `playerphotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teamdetails`
--
ALTER TABLE `teamdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teamphoto`
--
ALTER TABLE `teamphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
