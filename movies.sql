-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2017 at 09:44 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`user_id`, `movie_id`) VALUES
(3, 9),
(3, 2),
(8, 8),
(8, 14),
(15, 14),
(15, 12),
(15, 8),
(15, 10),
(10, 12),
(10, 12),
(10, 5),
(14, 2),
(14, 9),
(14, 15),
(14, 12);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `title`, `description`) VALUES
(1, 'Game of Thrones', 'hhh'),
(2, 'M.S Dhoni, The Untold Story', 'Dhoni Finishes is Off In Style'),
(3, 'Raees', 'Baniye ka dimaag aur Miyan bhai ki daring!'),
(4, 'Spider Man', ' Remember, with great power. comes great responsibility'),
(5, 'Dangal', 'Gold to Gold hota haiâ€¦ chhora laave ya chhori  '),
(6, 'XXX, Return of Xander Cage', 'Let this action begin'),
(7, 'Sachin Tendulkar', 'Master Blaster Sachin Tendulkar 10'),
(8, 'Dear Zindagi', 'Alia, You Have to crack better jokes please.'),
(9, 'Baywatch', 'At the beach...'),
(10, 'Wonder Women', 'Life is tough but so am I, Wonder Women'),
(11, 'Udta Punjab', 'Story of Every punjab House'),
(12, 'Assassins Creed', 'Nothing is True, Everything is Permitted.'),
(13, 'The Dot Matrix', 'They just don''t make ''em like that anymore.'),
(14, 'The Mummy 4', 'Evil Returns'),
(15, 'Logan', 'Wolverine, The Last run'),
(16, 'new movie', 'hot');

-- --------------------------------------------------------

--
-- Table structure for table `movie_goers`
--

CREATE TABLE `movie_goers` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie_goers`
--

INSERT INTO `movie_goers` (`user_id`, `firstname`, `lastname`) VALUES
(3, 'Virat', 'Kohli'),
(5, 'Rohit', 'Sharma'),
(6, 'Ajinkya', 'Rahane'),
(7, 'M.S', 'Dhoni'),
(8, 'Yuvraj', 'Singh'),
(10, 'Rahul', 'Dravid'),
(14, 'Amey', 'Ladge'),
(15, 'VVS', 'Laxman'),
(17, 'Murli', 'Vijay'),
(20, 'Sachin', 'Tendular');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_goers`
--
ALTER TABLE `movie_goers`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `movie_goers`
--
ALTER TABLE `movie_goers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
