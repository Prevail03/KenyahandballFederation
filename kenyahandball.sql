-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 11:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kenyahandball`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `detail_id` int(11) NOT NULL,
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

INSERT INTO `details` (`detail_id`, `gender`, `teamID`, `headCoach`, `established`, `leagues`, `logoUrl`, `location`, `gamePlay`) VALUES
(1, 'Men', 1, 'Peter Kungu Mwathi', '2005', 'KHF League/NASOKUSA', 'TeamPictures/1Men1.jpg', 'Madaraka', 'Offensive ,Defensive ,Systems.Speed'),
(2, 'Men', 2, 'Danston Eshikumo', '2001', 'KHF League', 'TeamPictures/2Men2.jpg', 'Donholm', 'Offensive ,Defensive, Speed');

-- --------------------------------------------------------

--
-- Table structure for table `fixtures`
--

CREATE TABLE `fixtures` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `homeTeam` varchar(255) NOT NULL,
  `hteam` int(11) DEFAULT NULL,
  `hscore` tinyint(4) DEFAULT 0,
  `awayTeam` varchar(255) NOT NULL,
  `ateam` int(11) DEFAULT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `ascore` tinyint(4) DEFAULT 0,
  `time` varchar(255) NOT NULL,
  `venue` enum('Nyayo Stadium','Kaloleni Grounds','','') NOT NULL,
  `status` enum('Played','Fixture','','') NOT NULL DEFAULT 'Fixture'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fixtures`
--

INSERT INTO `fixtures` (`id`, `date`, `path`, `homeTeam`, `hteam`, `hscore`, `awayTeam`, `ateam`, `imageUrl`, `ascore`, `time`, `venue`, `status`) VALUES
(1, '2022-09-17', 'strath.jpg', 'Strathmore', 2, 50, 'N.C.C', 5, 'khf1.jpg', 10, '09:00', 'Nyayo Stadium', 'Played'),
(2, '2022-09-17', 'blackmamba.jpg', 'Black', 1, 23, 'Ulinzi', 4, 'kdflogo.jpg', 16, '10:30', 'Nyayo Stadium', 'Played'),
(3, '2022-09-16', 'Ncpb.jpg', 'N.C.P.B', 3, 20, 'K.U', 7, 'kulogo.png', 50, '12:30', 'Nyayo Stadium', 'Played'),
(4, '2022-09-18', 'strath.jpg', 'Strathmore', 2, 25, 'N.C.P.B', 3, 'Ncpb.jpg', 21, '15:00', 'Nyayo Stadium', 'Played');

-- --------------------------------------------------------

--
-- Table structure for table `fixtureswomen`
--

CREATE TABLE `fixtureswomen` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `homeTeam` varchar(255) NOT NULL,
  `hteam` int(11) DEFAULT NULL,
  `hscore` tinyint(4) DEFAULT 0,
  `awayTeam` varchar(255) NOT NULL,
  `ateam` int(11) DEFAULT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `ascore` tinyint(4) DEFAULT 0,
  `time` varchar(255) NOT NULL,
  `venue` enum('Nyayo Stadium','Kaloleni Grounds','','') NOT NULL,
  `status` enum('Played','Fixture','','') NOT NULL DEFAULT 'Fixture'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fixtureswomen`
--

INSERT INTO `fixtureswomen` (`id`, `date`, `path`, `homeTeam`, `hteam`, `hscore`, `awayTeam`, `ateam`, `imageUrl`, `ascore`, `time`, `venue`, `status`) VALUES
(1, '2022-09-24', 'khf1.jpg', 'Net Navigators', 1, 12, 'Ulinzi', 2, 'kdflogo.jpg', 55, '17:03', 'Nyayo Stadium', 'Played'),
(2, '2022-10-18', 'Picture1.jpg', 'Net', 1, 0, 'Ulinzi', 2, 'Logo.png', 0, '14:40', 'Kaloleni Grounds', 'Fixture');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `hteam` int(11) DEFAULT NULL,
  `ateam` int(11) DEFAULT NULL,
  `hscore` tinyint(4) DEFAULT NULL,
  `ascore` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `date`, `hteam`, `ateam`, `hscore`, `ascore`) VALUES
(1, '2008-01-01 20:00:00', 1, 2, 1, 0),
(2, '2008-01-01 20:00:00', 3, 4, 0, 2),
(3, '2008-01-08 20:00:00', 1, 3, 1, 1),
(4, '2008-01-08 20:00:00', 2, 4, 2, 1);

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
(1, 1, 'Strathmore University Handball Club', 19, 18, 0, 1, 611, 276, 335, 36),
(2, 2, 'NCPB Men', 15, 15, 0, 0, 615, 254, 361, 36),
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
(20, 20, 'National Youth Service Men', 14, 4, 0, 10, 375, 466, -91, 8);

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
(5, 5, 'MKU Thika Ladies', 7, 3, 0, 4, 143, 175, -32, 6),
(6, 6, 'Kenyatta University Ladies', 8, 2, 1, 5, 156, 227, -71, 5),
(7, 7, 'Kaluluini Ladies', 7, 1, 0, 6, 125, 232, -107, 2),
(8, 8, 'NYS Ladies', 10, 0, 1, 9, 117, 311, -194, 1);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(8) NOT NULL,
  `member_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `member_password` varchar(64) NOT NULL,
  `member_email` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `member_name`, `member_password`, `member_email`) VALUES
(1, 'vincy', 'e2f3088a505f1ed02e40f5b62550f291', 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1069642567, 1251326123, 'Hi'),
(2, 1251326123, 1069642567, 'How are you doing'),
(3, 1140063609, 1069642567, ' vnfzdxncv'),
(4, 1140063609, 1069642567, 'ds\\nv  '),
(5, 1251326123, 1069642567, 'gvxfvvgh n'),
(6, 1251326123, 1069642567, 'gvxfvvgh n'),
(7, 1140063609, 1069642567, 'podwcGzkpCKoprCELRS5qfcmGaC90hKYFwUfxg=='),
(8, 1140063609, 1069642567, 'muhani'),
(9, 1140063609, 1069642567, 'gprRTbKTswdtCFF2R2Oi8C4ItmRPBxnCRcc9yA=='),
(10, 1140063609, 1069642567, 'V4HvVHvr+U2ubXnfFvU5xGwmhTGLYHfhemvP2w=='),
(11, 1140063609, 1069642567, 'V4HvVHvr+U2ubXnfFvU5xGwmhTGLYHfhemvP2w=='),
(12, 1140063609, 1069642567, 'V4HvVHvr+U2ubXnfFvU5xGwmhTGLYHfhemvP2w=='),
(13, 1140063609, 1449287789, 'XZdyeJDgQIFAbtML49vzlvoMJNaitwuDTGV88Q=='),
(14, 1449287789, 1069642567, 'XZdyeJDgQIFAbtML49vzlvoMJNaitwuDTGV88Q=='),
(15, 1251326123, 1449287789, 'XZdyeJDgQIFAbtML49vzlvoMJNaitwuDTGV88Q=='),
(16, 1449287789, 1069642567, 'XRhO7VR2OOX2DcooYcvXNN5xv7SBG61nm35a/tWun7QdAcR68vXioA=='),
(17, 1449287789, 1069642567, 'yFbK48kM7gSC70uqk3c3PEMx3tKFfC39UIVqnRODQIEXzqdc2UYyDWUfYRGrLke/'),
(18, 1449287789, 1069642567, 'CZyJTD9fCiUM8Pt6IxcYWJTOo7X6EJ7XzKhUr8/zJ6qWHru143CHvg=='),
(19, 1140063609, 1449287789, 'n8gn0ierjFvN8yLVpze3mmF3ivzf9abVAYk8OaSXG8sXzqdc2UYyDd3TlOmxY6wJ'),
(20, 1069642567, 1449287789, 'AWu+3154HXA28fEKEEZsa9eKyTfyjRNxosJIptUPv/ZJUq10aByDHtar/nkrNa+k'),
(21, 1251326123, 1449287789, 'ycU2fX4XgoWZk2L7ntQKCvqBbsVKdBQY810o9zGAtRb3rTUjhtytAQ=='),
(22, 1140063609, 1069642567, 'tBOSqzBsCKeCEbh7Uevt9bL0ziHFxb/vUrdp//pgThWJEp/d4I+frw=='),
(23, 1251326123, 1069642567, 'tBOSqzBsCKeCEbh7Uevt9bL0ziHFxb/vUrdp//pgThWJEp/d4I+frw=='),
(24, 1449287789, 1069642567, 'sNEyN6Vb4Xo4DBE2J/s+WdhOhiwZK5S30CYB6Cl69uGHAkDqPf9OVw=='),
(25, 1453774870, 1056809568, '/Htm1stB7GrcYw8cNYbzH7GT5KV2YzCtGEOZ+7Ui5XrwtnnviWd/MfS2xihtLYNE'),
(26, 1453774870, 1056809568, 'Wv2LkCp1CrVQz3AMlu/MhPBCjIoZ6OB4IYzH7unzYHs+yQJXIpuu0Q=='),
(27, 1453774870, 1056809568, 'UDkx8wUOC9gWdRLRWtz/AbLEx8R6lY0s11U6NwJCHoU3ANTRUQIaGA=='),
(28, 1140063609, 1056809568, 'HCprLV00lGEbD68cfthCfbhIk5IZYnF7Z5UNhcBU4BrfUz4YjnRFDQ=='),
(29, 1056809568, 1132771320, 'Wv2LkCp1CrVQz3AMlu/MhPBCjIoZ6OB4IYzH7unzYHs+yQJXIpuu0Q==');

-- --------------------------------------------------------

--
-- Table structure for table `phototeam`
--

CREATE TABLE `phototeam` (
  `photoid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imageUrl` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phototeam`
--

INSERT INTO `phototeam` (`photoid`, `name`, `imageUrl`) VALUES
(1, 'Strathmore University Handball Club (Tornadoes)', 'TeamPhotos/Strathmore University Handball Club (Tornadoes).jpg'),
(2, 'NCPB Men', 'TeamPhotos/NCPB Men.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `playerphotos`
--

CREATE TABLE `playerphotos` (
  `photoid` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `playerName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playerphotos`
--

INSERT INTO `playerphotos` (`photoid`, `path`, `playerName`) VALUES
(1, 'khf1.jpg', 'Prevailer Muhani'),
(2, 'kdf.jpg', 'Brian Murangiri'),
(3, 'kenya.jpg', 'Wabbs AQ');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(13) NOT NULL,
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
(2, 'Brian Murangiri', 'Male', 'Strathmore University', 'N/A', '2019', '186cm', '83kg', 'Left Back', 'Centre Back, Right Back, Right Wing', '2', '58', '1999-01-08', '52'),
(3, 'Jane Doe', 'Male', 'NCPB Men', 'N/A', '2005', '186', '83kg', 'Line Player/Pivoter', 'Centre Back', '3', '12', '2000-01-15', '55'),
(4, 'John Doe', 'Male', 'Strathmore University', 'N/A', '1972', '186cm', '83', 'Goalkeeper', 'Centre ack', '4', '12', '2001-02-14', '34'),
(5, 'Muhani Prevailer', 'Male', 'Bucaneers', 'N/A', '1978', '123cm', '156cm', 'Goalkeeper', 'Line', '5', '123', '2022-09-14', '2'),
(6, 'Jane ', 'Male', 'Black Mamba', 'N/A', '1978', '123cm', '156cm', 'Goalkeeper', 'Line', '6', '25', '2022-10-05', '45');

-- --------------------------------------------------------

--
-- Table structure for table `playerswomen`
--

CREATE TABLE `playerswomen` (
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
-- Dumping data for table `playerswomen`
--

INSERT INTO `playerswomen` (`id`, `playerName`, `gender`, `currentTeam`, `previousTeams`, `debutYear`, `height`, `weight`, `position`, `otherPositions`, `scores`, `gamesPlayed`, `age`, `jerseyNumber`) VALUES
(1, 'Sherryl Atieno', 'Female', 'N.C.P.B Women', 'N/A', '1978', '123cm', '56kg', 'Centre Back', 'Line', '231', '215', '2006-01-31', '2'),
(2, 'Euphrasia Mukasia ', 'Female', 'Ulinzi', 'N/A', '1978', '123cm', '56kg', 'Centre Back', 'Line', '123', '251', '2006-01-31', '2'),
(3, 'Carren Lutengeya', 'Female', 'Ulinzi', 'N/A', '1978', '123cm', '56kg', 'Centre Back', 'Line', '213', '34', '2006-01-31', '2'),
(4, 'Michelle Oyoo', 'Female', 'Nairobi Water', 'N/A', '1978', '123cm', '56kg', 'Centre Back', 'Line', '321', '25', '2006-01-31', '2');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profileid` int(11) NOT NULL,
  `path` varchar(300) NOT NULL,
  `image_text` text NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`profileid`, `path`, `image_text`, `name`) VALUES
(4, 'gallery/allano.jpg', 'Allan Simiyu', 'Strathmore University Tornadoes'),
(6, 'gallery/chema.jpg', 'Chemaswet Stephen', 'Rangers Handball Club'),
(7, 'gallery/chalo.jpg', 'Charles Malema', 'Black Mamba Handball Club'),
(8, 'gallery/ble.jpg', 'Blaise Mbakaya', ' Rangers Handball Club');

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
(15, 'Prevailer', 'Muhani', 'Male', '2022-07-27', 'Kazakhstan', 'University of Nairobi', 'BHT Hurricanes', 'Bangladesh', 'prevamuo3@gmail.com', 'user', 'Preva', 'bf41658cbde5ad1c3bcf8140d40545f3');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'prevamu03@gmail.com', 1, '2020-03-27 14:51:00', '2022-10-09 14:21:37'),
(2, 'harry', '1a1dc91c907325c69271ddf0c944bc72', 'prevamu03@gmail.com', 0, '2022-10-10 08:07:16', '2022-10-10 08:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(8, 'Federation News', 'news About the federation', '2022-01-24 03:54:42', NULL, 1),
(9, 'Team News', 'News About the Teams', '2022-01-24 03:55:02', NULL, 1),
(10, 'Player News', 'news About the Players\r\n', '2022-01-24 03:55:26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 08:06:22', 0),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 08:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 08:27:06', 1),
(4, '15', 'Prevailer Muhani', 'prevamu03@gmail.com', 'Muhani\r\n\r\n', '2022-07-21 04:50:58', 0),
(5, '17', 'Prevailer Muhani', 'prevamu03@gmail.com', 'Qwerty', '2022-11-22 17:24:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2018-06-30 15:01:03', '2018-06-30 16:19:51'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2018-06-30 15:01:36', '2018-06-30 16:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(13, 'International handball coaching course postponed', 8, 10, '<section class=\"article-content_summary\" style=\"box-sizing: inherit; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><h2 class=\"title-small\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 15px; line-height: 1.5; font-weight: 600; color: rgb(36, 36, 36); font-size: 22px; font-family: Roboto, sans-serif; letter-spacing: 1px; clear: both;\">What you need to know:</h2><div class=\"text-block\" style=\"box-sizing: inherit;\"><ul class=\"rte--list\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 20px; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: inherit;\">The license C course, which was to run till December 18, had attracted participants from Rwanda, Ethiopia, Uganda and hosts.</li><li style=\"box-sizing: inherit;\">KHF Fixtures Secretary Charles Omondi confirmed receipt of the email saying they are exhausting other means.</li></ul></div></section><section style=\"box-sizing: inherit; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><div class=\"text-block\" style=\"box-sizing: inherit;\"><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">The <b>Olympic Solidarity Advanced Coaching </b>handball course that was set to kick off this Friday at the Nyayo National stadium in Nairobi under Hungarian coaching instructor Zoltan Marczinka has been shelved.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">This is after Marczinka, an International Handball Federation (IHF) instructor, was advised by Hungarian Foreign Affairs in Budapest and Hungary Embassy in Nairobi not to travel due to new variant of coronavirus- Omicron.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">“<strong style=\"box-sizing: inherit;\">Due to the new variant of Covid-19 Omicron, more and more countries close their borders for flights coming from Africa. I contacted the respective authorities to seek for information regarding my travel and stay in Nairobi but they advised me not to.</strong></p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit;\">For the reason above I ask you both to seriously think about postponing the courses for a future time, when all participants can be safe in Nairobi and can travel safe forth and back,</strong>” an email from the instructor to Kenya Handball Federation (KHF) read in part.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">The license C course, which was to run till December 18, had attracted participants from Rwanda, Ethiopia, Uganda and hosts.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">KHF Fixtures Secretary&nbsp;<strong style=\"box-sizing: inherit;\">Charles Omondi</strong>&nbsp;confirmed receipt of the email saying they are exhausting other means.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">“<strong style=\"box-sizing: inherit;\">We are engaging the participants and the instructor if we can have the course online although a physical one would have been much better. If we cant manage to have it online, then we will purpose to hold the course next year but we remain guided. Marczinka was also to conduct another course in February next year, but with the new development, it’s a matter of wait and see</strong>” said&nbsp;<strong style=\"box-sizing: inherit;\">Omondi</strong>.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit;\">Marczinka</strong>&nbsp;was last in Kenya in 2013 when he conducted the same course in conjunction with National Olympic Committee of Kenya (NOC-K).</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Meanwhile, Nairobi Water women’s winger&nbsp;<strong style=\"box-sizing: inherit;\">Brenda</strong>&nbsp;<strong style=\"box-sizing: inherit;\">Ariviza</strong>&nbsp;was named the Most Valuable Player in the just ended East and Central Africa handball Federation Senior Clubs Championships in Dar es Salaam, Tanzania.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Also feted was National Cereals and Produce Board goalkeeper&nbsp;<strong style=\"box-sizing: inherit;\">Victor Otuom</strong>a. Nairobi Water and Rwanda Police defended their titles.</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">©Nation Media Group</p></div></div></section>', '2022-09-15 01:50:21', '2022-09-15 01:55:29', 1, 'International-handball-coaching-course-postponed', '8eb1436150205643d20655bf03223a20.jpg'),
(14, 'Queens crowned ECAHF champions', 9, 11, '<p class=\"intro\" style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">NCPB men face holders Rwanda Police in the final set for Sati 4 December.</p><div class=\"text\" style=\"box-sizing: inherit; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><div style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Defending champions Nairobi Water Queens have successfully defended the East and Central Africa Handball Federation Senior Club Championships title, bagging their seventh title unbeaten on that stage.</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">On Friday 3 December, the&nbsp;<strong style=\"box-sizing: inherit;\">Jack Ochieng-</strong>coached side had a date with Tanzania’s Kiziguro in the five-team competition ongoing in Dar es Salaam and needed a win to seal the title.</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">The Kenya Handball Federation (KHF) champions left nothing to chance in that final fixture as they romped to a fourteen-goal victory in 32-18 for the title.</p><div class=\"ql-twitter\" contenteditable=\"false\" style=\"box-sizing: inherit;\"><blockquote class=\"twitter-tweet\" style=\"box-sizing: inherit; margin-bottom: 15px; quotes: &quot;&quot; &quot;&quot;; border-color: rgb(193, 31, 31); position: relative;\"><p dir=\"ltr\" lang=\"en\" style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">End of Day 4 of&nbsp;<a href=\"https://twitter.com/hashtag/ECAHF2021?src=hash&amp;ref_src=twsrc%5Etfw\" style=\"box-sizing: inherit; color: rgb(193, 31, 31); text-decoration: inherit;\">#ECAHF2021</a></p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">NYUKI<img draggable=\"false\" role=\"img\" class=\"emoji\" alt=\"??\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/1f1f9-1f1ff.svg\" style=\"box-sizing: inherit; max-width: 100%; border-width: initial !important; border-style: none !important; height: 1em !important; display: inline !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;\"><span>&nbsp;</span>22 Vs 28 POLICE<span>&nbsp;</span><img draggable=\"false\" role=\"img\" class=\"emoji\" alt=\"??\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/1f1f7-1f1fc.svg\" style=\"box-sizing: inherit; border: none !important; height: 1em !important; max-width: 100%; display: inline !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;\"><span>&nbsp;</span>(M)</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">CEREALS<span>&nbsp;</span><img draggable=\"false\" role=\"img\" class=\"emoji\" alt=\"??\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/1f1f0-1f1ea.svg\" style=\"box-sizing: inherit; border: none !important; height: 1em !important; max-width: 100%; display: inline !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;\">23 Vs 28 WATER QUEENS<img draggable=\"false\" role=\"img\" class=\"emoji\" alt=\"??\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/1f1f0-1f1ea.svg\" style=\"box-sizing: inherit; border: none !important; height: 1em !important; max-width: 100%; display: inline !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;\"><span>&nbsp;</span>(W)</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">NGOME<span>&nbsp;</span><img draggable=\"false\" role=\"img\" class=\"emoji\" alt=\"??\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/1f1f9-1f1ff.svg\" style=\"box-sizing: inherit; border: none !important; height: 1em !important; max-width: 100%; display: inline !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;\">21 Vs 27 KIZIGURO SS<span>&nbsp;</span><img draggable=\"false\" role=\"img\" class=\"emoji\" alt=\"??\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/1f1f7-1f1fc.svg\" style=\"box-sizing: inherit; border: none !important; height: 1em !important; max-width: 100%; display: inline !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;\">(W)&nbsp;<a href=\"https://t.co/AEZo8DHjB6\" style=\"box-sizing: inherit; background-color: transparent; color: rgb(193, 31, 31); text-decoration: inherit;\">pic.twitter.com/AEZo8DHjB6</a></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">— East and Central Africa Handball Federation (@ecahfhandball)&nbsp;<a href=\"https://twitter.com/ecahfhandball/status/1466445805200551942?ref_src=twsrc%5Etfw\" style=\"box-sizing: inherit; background-color: transparent; color: rgb(193, 31, 31); text-decoration: inherit;\">December 2, 2021</a></p></blockquote></div><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">Ochieng’s charges had gotten through their biggest hurdle to the title, the most anticipated match of the women’s tourney, by beating nemesis National Cereals and Produce Board (NCPB) 28-23 on Thursday.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">In Friday’s match against Kiziguro,&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Brenda Ariviza&nbsp;</strong>and&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Gladys Chillo</strong>&nbsp;continued their good showing in the competition, scoring six goals a piece as&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Melvin Akinyi&nbsp;</strong>and&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Brenda Musambai&nbsp;</strong>contributed five and four goals respectively in the win.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">“We are happy for the win. We have defended our title and that points to good preparation. Playing high profile matches over the years and especially in the just concluded local league where we had some good competition kept is sailing here.</strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">I am grateful to God, the team’s management, technical bench and all the players for believing in the themselves and executing,”&nbsp;</strong>said coach Ochieng.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">Meanwhile, NCPB Ladies who are looking to clinch second place won their third match against Jeshi la Kujenga Taifa (JKT) 32-23.&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Sarah Mabonga</strong>&nbsp;and&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Medina Kerubo&nbsp;</strong>led the scoring for the millers at six goals each with&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Purity Mwangi</strong>&nbsp;adding five to the final tally for the win.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">JKT’s&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Zena Mohamed&nbsp;</strong>emerged top scorer in the match with eight goals but she painfully watched her effort go down the drain as NCPB proved a tough nut to crack, clinching the nine-goal victory.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">The&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Paul Pudo-</strong>led millers have a date with Kiziguro in their final match of the tourney on Saturday 4 December at 8am.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">In the men’s event, KHF league winners NCPB will be looking to dethrone holders Rwanda Police in Saturday, after booking their final ticket courtesy of a win over local rivals Black Mamba.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">In a tightly contested match, the millers led by three goals at the halftime break at 13-10 and had to dig deep into their reserves to extend the lead to a five-goal winning margin against a stubborn Mamba.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Robert Maraga</strong>&nbsp;and&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">William Malui&nbsp;</strong>lit up the Benjamin Mkapa Indoor Arena with conversion after another to top score at six and five goals respectively.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">Mamba’s&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Paul Ondara</strong>&nbsp;had found his scoring mojo against the millers and managed six with&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Dennis Magoiya&nbsp;</strong>adding four for the&nbsp;<strong style=\"box-sizing: inherit; font-weight: bold;\">Martin Abunde</strong>-coached side. It was, however, not enough to dispense the KHF champions who had managed to hold the other Mamba goal poachers.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">Police, on their part, picked a 29-23 victory over Ngome to set a date with NCPB in the final. Mamba will now face Ngome in the third-place playoff.</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\"><u style=\"box-sizing: inherit;\">Nairobi Water Queens at the ECAHF championship</u></em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2011 Dar es Salaam- bronze</em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2012 Nairobi- silver</em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2013 Arusha- Gold</em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2014 Nairobi- Gold</em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2015 Rwanda- Gold</em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2016 Nairobi- Gold</em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2017 Dar es Salaam – Did not participate</em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2018 Zanzibar -Gold</em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2019 Rwanda- Gold</em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2020- Tournament not held.</em></strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><strong style=\"box-sizing: inherit; font-weight: bold;\"><em style=\"box-sizing: inherit; font-style: italic;\">2021 Dar es Salaam -Gold</em></strong></p></div></div><div class=\"content-bottom\" style=\"box-sizing: inherit; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"writer\" data-v-03cf34fc=\"\" style=\"box-sizing: inherit;\"><div class=\"writer-details\" data-v-03cf34fc=\"\" style=\"box-sizing: inherit;\"><p class=\"name\" data-v-03cf34fc=\"\" style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\">Lynette Matheka, Journalist</p><p style=\"box-sizing: inherit; margin: 0px 0px 15px; line-height: 1.5;\"><a href=\"mailto:lynette.matheka@mozzartsportke.com\" data-v-03cf34fc=\"\" style=\"box-sizing: inherit; background-color: transparent; color: rgb(193, 31, 31); text-decoration: inherit;\">lynette.matheka@mozzartsportke.com</a></p></div></div></div><div class=\"tags-bottom\" style=\"box-sizing: inherit; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">©Mozzart Sports Ke</div>', '2022-09-15 01:50:21', '2022-09-15 01:55:24', 1, 'Queens-crowned-ECAHF-champions', 'd1ad536d1f35f0f5d2e1fa0065e57adc.jpg'),
(15, 'MATCH SCHEDULE FOR SUPER CUP 2022 EDITION', 9, 11, '<p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">MATCH SCHEDULE FOR SUPER CUP 2022 EDITION</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">(5<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TH</span>, 6TH, 12TH AND 13<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TH</span>&nbsp;MARCH 2022 AT NYAYO STADIUM)</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">MEN</p><table style=\"box-sizing: inherit; margin: 0px 0px 1.5em; width: 584.5px; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td width=\"276\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; POOL A</td><td width=\"276\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">&nbsp; POOL B</td></tr><tr style=\"box-sizing: inherit;\"><td width=\"276\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">1. NCPB (CEREALS BOARD)</td><td width=\"276\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">1.STRATHMORE &nbsp;UNIVERSITY</td></tr><tr style=\"box-sizing: inherit;\"><td width=\"276\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">2.BLACK MAMBA</td><td width=\"276\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">2.GENERAL SERVICE UNIT (G.S.U)</td></tr><tr style=\"box-sizing: inherit;\"><td width=\"276\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">3.KENYA DEFENCE FORCES(KDF)</td><td width=\"276\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">3.KENYATTA UNIVERSITY (KU)</td></tr></tbody></table><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">WOMEN</p><table style=\"box-sizing: inherit; margin: 0px 0px 1.5em; width: 584.5px; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td width=\"552\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">1.&nbsp;&nbsp;&nbsp;&nbsp; NAIROBI WATER ANS SEWARGE COMPANY (NAIROBI WATER)</td></tr><tr style=\"box-sizing: inherit;\"><td width=\"552\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">2.&nbsp;&nbsp;&nbsp;&nbsp; KENYA DEFENCE FORCES (KDF)</td></tr><tr style=\"box-sizing: inherit;\"><td width=\"552\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">3.&nbsp;&nbsp;&nbsp;&nbsp; NATIONAL CEREALS AND PRODUCE BOARD&nbsp; (CEREALS)</td></tr><tr style=\"box-sizing: inherit;\"><td width=\"552\" style=\"box-sizing: inherit; padding: 5px; border: 1px solid rgb(221, 221, 221);\">4.&nbsp;&nbsp;&nbsp;&nbsp; NANYUKI</td></tr></tbody></table><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">&nbsp;</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">MATCH SCHEDULE.</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">5<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TH</span>&nbsp;MARCH 2022</p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 20px; list-style-position: initial; list-style-image: initial; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><li style=\"box-sizing: inherit;\">WATER VS NANYUKI (W) – 12.00 NOON</li><li style=\"box-sizing: inherit;\">CEREALS VS KDF (M) – 30 PM</li><li style=\"box-sizing: inherit;\">STRATHMORE VS KU (M)- 3.00 PM</li></ol><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">6<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TH</span>&nbsp;MARCH 2022</p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 20px; list-style-position: initial; list-style-image: initial; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><li style=\"box-sizing: inherit;\">KDF VS NYANYUKI (W) – 10.00 AM</li><li style=\"box-sizing: inherit;\">GSU VS STRATHMORE(M) – 11.30 AM</li><li style=\"box-sizing: inherit;\">CEREALS VS NBI WATER (W)- 1.00PM</li><li style=\"box-sizing: inherit;\">MAMBA VS NCPB (M)- 2.30 PM</li></ol><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">12<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TH</span>&nbsp;MARCH 2022</p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 20px; list-style-position: initial; list-style-image: initial; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><li style=\"box-sizing: inherit;\">NCPB VS NANYUKI(W) 12.00 NOON</li><li style=\"box-sizing: inherit;\">KDF VS MAMBA (M)- 1.30PM</li><li style=\"box-sizing: inherit;\">GSU VS KU (M) – 3.00PM</li></ol><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">&nbsp;</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">&nbsp;</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">13<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TH</span>&nbsp;MARCH 2022</p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 20px; list-style-position: initial; list-style-image: initial; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><li style=\"box-sizing: inherit;\">SEMI FINALS 1(WINNER POOL A VS 2<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">ND</span>&nbsp;POOL B)-12.00 NOON</li><li style=\"box-sizing: inherit;\">SEMI FINALS 2(WINNER POOL B VS 2<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">ND</span>&nbsp;POOL A)-1.30 PM</li><li style=\"box-sizing: inherit;\">KDF VS NCPB (W) 3.00PM</li></ol><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">19<span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TH</span>&nbsp;MARCH 2022</p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 20px; list-style-position: initial; list-style-image: initial; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><li style=\"box-sizing: inherit;\">NAIROBI WATER VS KDF (W)-1.00 PM</li><li style=\"box-sizing: inherit;\">FINALS MEN- 2.30PM</li></ol><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><strong style=\"box-sizing: inherit;\">NATIONAL LEAGUE AND SUPER CUP AWARDS</strong></p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">(ALL COVID PROTOLS TO BE OBSERVED- NO MASK NO ENTRY TO THE STADIUM)</p>', '2022-09-15 01:50:21', '2022-09-15 01:55:21', 1, 'MATCH-SCHEDULE-FOR-SUPER-CUP-2022-EDITION', '4ae955184d134b5ba9f60e087617ad7e.jpg'),
(16, 'Nairobi Water retain regional handball title, NCPB storm final', 9, 12, '<section class=\"article-content_summary\" style=\"box-sizing: inherit; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><h2 class=\"title-small\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 15px; line-height: 1.5; font-weight: 600; color: rgb(36, 36, 36); font-size: 22px; font-family: Roboto, sans-serif; letter-spacing: 1px; clear: both;\">What you need to know:</h2><div class=\"text-block\" style=\"box-sizing: inherit;\"><ul class=\"rte--list\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 20px; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: inherit;\">Black Mamba will take on Ngome in the third place playoff on Saturday.</li><li style=\"box-sizing: inherit;\">NCPB will parade against Kiziguro on Saturday in their final match.</li></ul></div></section><section style=\"box-sizing: inherit; color: rgb(64, 64, 64); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\"><div class=\"text-block\" style=\"box-sizing: inherit;\"><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Nairobi Water women’s team on Friday defended the East and Central Africa Handball Federation Clubs Championships (ECAHF) title after thumping Kiziguro of Rwanda 32-18 in their last match at the Benjamin Mkapa Indoor Stadium in Dar es Salaam, Tanzania.</p></div><div class=\"content-page-ad_wrap desktop\" style=\"box-sizing: inherit;\"><div id=\"desktop-article-ad-1\" class=\"content-page-ad content-page-ad_desktop\" style=\"box-sizing: inherit;\"></div></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Nairobi Water coach Jack Ochieng dedicated the win to the players, technical bench and management.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">“We thank the management of Nairobi Water for the sponsorship. We are very happy we defended our title and it means we have another job of defending it come next year. The hard work has paid off,” said the tactician.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Brenda Ariviza and Gladys Chillo scored six goals each to emerge top scorers for champions as Paulina Mukanabana (6) and Esther Umutesi (3) top-scored for the Rwandans.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">In another women’s match of the day, National Cereals and Produce Board(NCPB) beat hosts Jeshi la Kujenga Taifa(JKT) 32-23 to keep their hope a live of finishing second in the five-team competition that ends on Saturday.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Medina Kerubo chalked six goals for NCPB while Zena Muhamed tallied eight goals for JKT.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">NCPB will parade against Kiziguro on Saturday in their final match.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">In the men’s first semifinal played at the same venue, NCPB overwhelmed compatriots Black Mamba 23-18 to book place in the final where reigning champions Rwanda Police lie in wait on Saturday.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Police beat hosts Ngome 29-23 in the other semifinal.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Cereals were first off the block as they lead 13-10 in a low scoring match at the breather with Robert Maraga netting six goals high for winners while Paul Ondara scored six goals for Mamba.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Ahead of the final match against the Rwandans, NCPB coach Danston Eshikumo said they expect to end the annual event on a high.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">“We are expecting a good match. We won the event in 2018 and we hope to reclaim the title. We will give our all and hopefully the results will work in our favour, ” said Eshikumo.</p></div><div class=\"paragraph-wrapper\" style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">Black Mamba will take on Ngome in the third place playoff on Saturday.</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 1.5;\">©Nation Media Group</p></div></div></section>', '2022-09-15 01:50:21', '2022-09-15 01:55:16', 1, 'Nairobi-Water-retain-regional-handball-title,-NCPB-storm-final', 'bb37ae3327defc3921b33aa62efeafd4.jpg'),
(17, 'Strathmore eye Handball Super Cup ', 9, 12, '<p><font face=\"Courier New\">(Prevailer Muhani(red)&nbsp;of Strathmore tackles Musa Munyasia(white) of Ulinzi Shooters&nbsp;<em>©&nbsp;</em>&nbsp;Mozzart Sport)</font></p><p>Coach Peter Mwathi on Sunday 14 November guided Strathmore University Handball side to a second-place finish in the Kenya Handball Federation (KHF) men\'s league.Having missed out on their maiden title following losses to champions National Cereals and Produce Board (NCPB) and Black Mamba, the varsity side ended their season on a high, subjecting Ulinzi Handball Club to their third loss of the season.&nbsp;</p>', '2022-09-13 04:35:52', '2022-09-15 01:52:02', 1, 'Strathmore-eye-Handball-Super-Cup-', '9727e2895b54b284049551d6118f1ff9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(10, 8, 'Adminstrative', 'Adminstrative\r\n', '2022-01-24 03:57:07', NULL, 1),
(11, 9, 'Match Anaylsis', 'Match news', '2022-01-24 03:57:46', NULL, 1),
(12, 9, 'Match News', 'Match News', '2022-01-24 04:11:44', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sample`
--

CREATE TABLE `tbl_sample` (
  `id` int(11) NOT NULL,
  `date` varchar(250) NOT NULL,
  `path` varchar(255) NOT NULL,
  `homeTeam` varchar(250) NOT NULL,
  `hscore` tinyint(13) NOT NULL,
  `hteam` int(13) NOT NULL,
  `awayTeam` varchar(255) NOT NULL,
  `ateam` int(13) NOT NULL,
  `ascore` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `venue` enum('Nyayo Stadium','Kaloleni Gounds','','') NOT NULL,
  `status` enum('Played','Fixture','','') NOT NULL DEFAULT 'Fixture'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sample`
--

INSERT INTO `tbl_sample` (`id`, `date`, `path`, `homeTeam`, `hscore`, `hteam`, `awayTeam`, `ateam`, `ascore`, `time`, `venue`, `status`) VALUES
(1, 'John', '', 'Smith', 1, 0, 'Smith', 0, 0, '16:40', 'Nyayo Stadium', 'Fixture'),
(2, 'Peter', '', 'Parker', 1, 0, 'Smith', 0, 32, '', 'Nyayo Stadium', 'Played'),
(4, 'Donna', '', 'Huber', 1, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(5, 'Anastasia', '', 'Peterson', 1, 0, '', 0, 23, '', 'Nyayo Stadium', 'Played'),
(6, 'Ollen', '', 'Donald', 1, 0, '', 0, 23, '', 'Nyayo Stadium', 'Played'),
(10, 'Joseph', '', 'Stein', 1, 0, '', 0, 23, '', 'Nyayo Stadium', 'Played'),
(11, 'Wilson', '', 'Fischer', 1, 0, '', 0, 23, '', 'Nyayo Stadium', 'Played'),
(12, 'Lillie', '', 'Kirst', 2, 0, '', 0, 23, '', 'Nyayo Stadium', 'Played'),
(13, 'James', '', 'Whitchurch', 1, 0, '', 0, 32, '', 'Nyayo Stadium', 'Played'),
(14, 'Timothy', '', 'Brewer', 1, 0, '', 0, 23, '', 'Nyayo Stadium', 'Played'),
(16, 'Sally', '', 'Martin', 1, 0, 'Smith', 0, 32, '', 'Nyayo Stadium', 'Played'),
(17, 'Allison', '', 'Pinkston', 1, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(18, 'Karen', '', 'Davis', 1, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(19, 'Jaclyn', '', 'Rocco', 1, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(20, 'Pamela', '', 'Boyter', 1, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(21, 'Anthony', '', 'Alaniz', 1, 0, 'Smith', 0, 3, '', 'Nyayo Stadium', 'Played'),
(22, 'Myrtle', '', 'Stiltner', 1, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(23, 'Gary', '', 'Hernandez', 1, 0, 'Smith', 0, 3, '', 'Nyayo Stadium', 'Played'),
(24, 'Fred', '', 'Jeffery', 1, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(25, 'Ronald', '', 'Stjohn', 1, 0, 'Smith', 0, 323, '', 'Nyayo Stadium', 'Played'),
(26, 'Stephen', '', 'Mohamed', 1, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(28, 'Michael', '', 'Dyer', 1, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(29, 'Betty', '', 'Beam', 1, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(30, 'Anna', '', 'Peterson', 2, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(31, 'Peter', '', 'Mwathi', 23, 0, 'Smith', 0, 23, '', 'Nyayo Stadium', 'Played'),
(32, 'Preailer.Muhani@strathmore.edu', '', 'Muhani', 1, 0, 'Smit', 0, 23, '', 'Nyayo Stadium', 'Played');

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
  `achievements` text NOT NULL,
  `win` varchar(255) NOT NULL,
  `loss` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamdetails`
--

INSERT INTO `teamdetails` (`id`, `gender`, `teamID`, `headCoach`, `established`, `leagues`, `logoUrl`, `location`, `goals`, `gameStyle`, `achievements`, `win`, `loss`) VALUES
(12, 'Male', 12, 'Geral Juma Abunde', '2011-01-27', 'KHF National League', 'TeamLogo/12Male.jpg', 'Amutalla Stadium', '30%', 'Speed', 'Super  Cup Participation', '', ''),
(13, 'Male', 13, 'Martin Juma Abunde', '1977-01-04', 'KHF National League', 'TeamLogo/13Male.jpg', 'Kaloleni Grounds', 'Prevailer Muhani', 'Speed, Systems , Patient build Up', 'Super  Cup Titles, Several League titles', '', ''),
(14, 'Male', 11, 'Peter Mwathi', '2005-06-15', 'KHF League, NASOKUSA', 'TeamLogo/11Male.jpg', 'Strathmore University Sports Complex', 'To win the National League', 'Systems, Speed', 'Super Cup Champions, All time KUSF Champions', '', '');

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
(11, 'Strathmore University Tornadoes', 'TeamPhoto/Strathmore University Tornadoes.jpg'),
(12, 'Rangers Handball Club', 'TeamPhoto/Rangers Handball Club.jpg'),
(13, 'Black Mamba Handball Club', 'TeamPhoto/Black Mamba Handball Club.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `tname` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `tname`) VALUES
(1, 'Black Mamba'),
(2, 'Strathmore University'),
(3, 'N.C.P.B'),
(4, 'Ulinzi Shooters'),
(5, 'N.C.C'),
(6, 'T.U.K'),
(7, 'K.U Hybrids'),
(8, 'U.O.E Pippers');

-- --------------------------------------------------------

--
-- Table structure for table `teamswomen`
--

CREATE TABLE `teamswomen` (
  `id` int(11) NOT NULL,
  `tname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teamswomen`
--

INSERT INTO `teamswomen` (`id`, `tname`) VALUES
(1, 'Net Navigators'),
(2, 'Ulinzi Sharks');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `fname`, `lname`, `phonenumber`, `amount`, `response`) VALUES
(1, 'Prevailer', 'Muhani', '254701694441', 100, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(2, 'Prevailer', 'Muhani', '254701694441', 100, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(3, 'Prevailer', 'Muhani', '254701694441', 100, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(4, 'Prevailer', 'Muhani', '0701694441', 100, '0{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(5, 'Prevailer', 'Muhani', '0701694441', 100, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(6, 'Prevailer', 'Muhani', '0701694441', 100, '0{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(7, 'Prevailer', 'Muhani', '0704388433', 100, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(8, 'Prevailer', 'Muhani', '0701694441', 10, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(9, 'Prevailer', 'Muhani', '0701694441', 10, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(10, 'Prevailer', 'Muhani', '0701694441', 10, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(11, 'Prevailer', 'Muhani', '0701694441', 10, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(12, 'Prevailer', 'Muhani', '0701694441', 10, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(13, 'Prevailer', 'Muhani', '254701694441', 10, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(14, 'Prevailer', 'Muhani', '254701694441', 10, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(15, 'Prevailer', 'Muhani', '254701694441', 10, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(16, 'Prevailer', 'Muhani', '254701694441', 10, '{             \"MerchantRequestID\":\"36252-59283464-1\",             \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",             \"ResponseCode\": \"0\",             \"ResponseDescription\":\"Success. Request accepted for processing\",             \"CustomerMessage\":\"Success. Request accepted for processing\"         }         '),
(17, 'Prevailer', 'Muhani', '254701694441', 10, '{\n                    \"requestId\":\"66704-982978-1\",\n                    \"errorCode\": \"500.001.1001\",\n                    \"errorMessage\": \"Unable to lock subscriber, a transaction is already in process for the current subscriber\"\n                }\n            '),
(18, 'Prevailer', 'Muhani', '+254701694441', 2698, '{\n                    \"requestId\":\"28836-29136771-3\",\n                    \"errorCode\": \"400.002.02\",\n                    \"errorMessage\": \"Bad Request - Invalid PhoneNumber\"\n                }\n            '),
(19, 'Prevailer', 'Muhani', '254799341228', 10, '{\n            \"MerchantRequestID\":\"19160-66144394-2\",\n            \"CheckoutRequestID\":\"ws_CO_16062022115711955799341228\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(20, 'Prevailer', 'Muhani', '+254701694441', 1, '{\n                    \"requestId\":\"36227-59283022-2\",\n                    \"errorCode\": \"400.002.02\",\n                    \"errorMessage\": \"Bad Request - Invalid PhoneNumber\"\n                }\n            '),
(21, 'Prevailer', 'Muhani', '254701694441', 1, '{\n            \"MerchantRequestID\":\"36252-59283464-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022011628721701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(22, 'Prevailer', 'Muhani', '254799341228', 1, '{\n            \"MerchantRequestID\":\"1301-65921689-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022012449349799341228\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(23, 'Prevailer', 'Muhani', '254701694441', 1, '{\n            \"MerchantRequestID\":\"118803-2855434-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022012536252701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(24, 'Prevailer', 'Muhani', '254701694441', 1, '{\n            \"MerchantRequestID\":\"29568-65962990-1\",\n            \"CheckoutRequestID\":\"ws_CO_30072022013518793701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(25, 'Jane', 'Doe', '254701694441', 10, '{\n            \"MerchantRequestID\":\"32293-7876337-1\",\n            \"CheckoutRequestID\":\"ws_CO_20112022162445591701694441\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        '),
(26, 'Jane', 'Doe', '254701694441', 10, '{\n                    \"requestId\":\"32293-7876337-2\",\n                    \"errorCode\": \"500.001.1001\",\n                    \"errorMessage\": \"Unable to lock subscriber, a transaction is already in process for the current subscriber\"\n                }\n            '),
(27, 'Prevailer', 'Muhani', '254710796091', 10, '{\n            \"MerchantRequestID\":\"68438-144216196-1\",\n            \"CheckoutRequestID\":\"ws_CO_22112022202640207710796091\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `phonenumber` varchar(14) NOT NULL,
  `otp_code` int(255) NOT NULL,
  `otp_status` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`, `phonenumber`, `otp_code`, `otp_status`) VALUES
(2, 1251326123, 'Kenya ', 'Handball', 'info@kenyahandballfedaration.org', '36ce4546159e2d78d080f5460e982685', '1650189091khf1.jpg', 'Offline now', '0', 0, 0),
(3, 1140063609, 'Brian', 'Kithinji', 'kithinji@gmail.com', '36ce4546159e2d78d080f5460e982685', '1650189179strath.jpg', 'Active now', '0', 0, 0),
(4, 1449287789, 'Angela', 'wema', 'angelawema@gmail.com', 'fd2e5e227b9e7d3f1a3bd3d34d03d9f0', '1653036730Screenshot (3).png', 'Active now', '0', 0, 0),
(9, 1132771320, 'Prevailer', 'Muhani', 'prevamu03@gmail.com', '36ce4546159e2d78d080f5460e982685', '1654895890Strathmore July 2021.jpeg', 'Active now', '0', 292768, 1),
(10, 443938540, 'Prevailer', 'Muhani', 'prevamu73@gmail.com', '36ce4546159e2d78d080f5460e982685', '1654915249Strathmore July 2021.jpeg', 'Offline now', '0', 855601, 0),
(11, 1626377218, 'Prevailer', 'Muhani', 'qr2ER@GMAIL.COM', 'e807f1fcf82d132f9bb018ca6738a19f', '1654915937Screenshot 2022-04-21 112113.png', 'Offline now', '0', 535698, 1),
(12, 840501783, 'Prevailer', 'Muhani', 'prevamu073@gmail.com', '36ce4546159e2d78d080f5460e982685', '1654931868Strathmore July 2021.jpeg', 'Offline now', '2147483647', 391696, 0),
(13, 337094754, 'Prevailer', 'Muhani', 'dureldee@gmail.com', '36ce4546159e2d78d080f5460e982685', '1654932646Screenshot 2022-04-25 162925.png', 'Offline now', '2147483647', 440869, 0),
(14, 248368074, 'Prevailer', 'Muhani', 'prevamu2173@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655019430Strathmore July 2021.jpeg', 'Offline now', '2147483647', 169149, 0),
(15, 488364302, 'Prevailer', 'Muhani', 'prevamu003@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655019518photo_2021-05-12_11-56-19.jpg', 'Offline now', '2147483647', 968919, 0),
(16, 1399644375, 'P', 'Muhani', 'dureldee333333@gmail.com', 'bfec564ddfd1c55c9e294fe315cb858c', '1655019792photo_2021-05-12_11-55-51.jpg', 'Active now', '254704388433', 971690, 0),
(17, 766155657, 'Prevailer', 'Muhani', 'prevamu7@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655458523khfn.jpg', 'Offline now', '+254701694441', 147509, 0),
(18, 1496787403, 'x', 'y', 'prevamu713@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655458611ball.jpeg', 'Offline now', '+254701694441', 931070, 1),
(19, 815135990, 'y', 'y', 'prevamu731@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655458711cereals.jpg', 'Offline now', '+254701694441', 20, 1),
(20, 837747755, 'qwerty', 'ytrewq', 'prevamu73122@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655459940BoomerangT.jpg', 'Offline now', '+254701694441', 606038, 0),
(21, 255250593, 'ian', 'Osire', 'prevamu72323@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655460076black.jpg', 'Offline now', '+254701694441', 312165, 0),
(22, 1311536837, 'Prevailer', 'Muhani', 'prevamu73324546213@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655460131cereals.jpg', 'Offline now', '+254701694441', 891068, 0),
(23, 1103562943, 'Prevailer', 'Muhani', 'prevamu7453@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655460286facebook.jpg', 'Offline now', '+254701694441', 741360, 0),
(24, 1389534012, 'Prevailer', 'Muhani', 'prevamu7tty3@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655460353cereals.jpg', 'Offline now', '+254701694441', 774462, 0),
(25, 569806428, 'Prevailer', 'Muhani', 'prevamu73ttt@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655460408cerealsT.jpg', 'Active now', '+254701694441', 271847, 0),
(26, 718087794, 'Prevailer', 'Muhani', 'prevamu72233@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655718096ingwela.jpg', 'Active now', '+254799341228', 996306, 0),
(27, 1453774870, 'Prevailer', 'Muhani', 'prevamu7211111111111111111111233@gmail.com', '36ce4546159e2d78d080f5460e982685', '1655718320ingwela.jpg', 'Active now', '+254799341228', 872759, 0),
(28, 1056809568, 'Prevailer', 'Muhani', 'prevamu7eee3@gmail.com', '36ce4546159e2d78d080f5460e982685', '1656506473strath vs Buccaneers.jpg', 'Active now', '+254701694441', 576035, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `location`, `description`) VALUES
(1, 'VID-20210816-WA0005.mp4', 'videos/VID-20210816-WA0005.mp4', 'Lorem Ipsum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `fixtures`
--
ALTER TABLE `fixtures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixtureswomen`
--
ALTER TABLE `fixtureswomen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
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
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `phototeam`
--
ALTER TABLE `phototeam`
  ADD PRIMARY KEY (`photoid`);

--
-- Indexes for table `playerphotos`
--
ALTER TABLE `playerphotos`
  ADD PRIMARY KEY (`photoid`),
  ADD UNIQUE KEY `playerName` (`playerName`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerswomen`
--
ALTER TABLE `playerswomen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profileid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `tbl_sample`
--
ALTER TABLE `tbl_sample`
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
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamswomen`
--
ALTER TABLE `teamswomen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fixtures`
--
ALTER TABLE `fixtures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fixtureswomen`
--
ALTER TABLE `fixtureswomen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `phototeam`
--
ALTER TABLE `phototeam`
  MODIFY `photoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `playerphotos`
--
ALTER TABLE `playerphotos`
  MODIFY `photoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `playerswomen`
--
ALTER TABLE `playerswomen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profileid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_sample`
--
ALTER TABLE `tbl_sample`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `teamdetails`
--
ALTER TABLE `teamdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teamswomen`
--
ALTER TABLE `teamswomen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
