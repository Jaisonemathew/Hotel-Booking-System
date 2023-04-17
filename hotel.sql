-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 04:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `id` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`, `id`) VALUES
('admin', 'admin', 1),
('Jaison', 'password', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bookingstatus`
--

CREATE TABLE `bookingstatus` (
  `email` varchar(40) NOT NULL,
  `category` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `roomWant` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingstatus`
--

INSERT INTO `bookingstatus` (`email`, `category`, `type`, `roomWant`, `status`, `date`) VALUES
('jaisonemathew14@gmail.com', 'Business Class ', 'Double Bed', 1, 0, '2023-04-08'),
('jaisonemathew14@gmail.com', 'Business Class ', 'Single Bed', 1, 1, '2023-01-17'),
('jaisonemathew14@gmail.com', 'Business Class ', 'Single Bed', 1, 1, '2023-03-28'),
('jaisonemathew14@gmail.com', 'Business Class', 'Single Bed', 2, 1, '2023-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `dec` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`name`, `type`, `cost`, `available`, `img`, `dec`) VALUES
('Business Class ', 'Double Bed', 1200, 11, '/assets/img/rooms/room1.jpg', 'Non AC Room'),
('Business Class', 'Double Bed', 4343, 12, '/assets/img/rooms/Business ClassDouble Bed4343.png', 'Full AC double bed'),
('Business Class ', 'Single Bed', 800, 10, '/assets/img/rooms/room3.jpg', 'Non AC Room'),
('Business Class ', 'Single Bed', 1200, 10, '/assets/img/rooms/room4.jpg', 'AC Room'),
('Business Class', 'Single Bed', 1500, 21, '/assets/img/rooms/Business ClassSingle Bed1500.jpg', 'Luxury Suite'),
('First class', 'Double Bed', 1357, 24, '/assets/img/rooms/First classDouble Bed1357.png', 'This is a good room'),
('First class', 'Single Bed', 3000, 30, '/assets/img/rooms/First classSingle Bed3000.png', ''),
('Seceond class', 'Double Bed', 1500, 20, '/assets/img/rooms/Seceond classDouble Bed1500.jpeg', 'Best in class'),
('Seceond class', 'Double Bed', 2000, 10, '/assets/img/rooms/Seceond classDouble Bed2000.jpeg', ''),
('Seceond class', 'Single Bed', 1000, 30, '/assets/img/rooms/Seceond classSingle Bed1000.jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `no` bigint(250) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `no`, `message`) VALUES
('Varghese Babu', 'vbabu@gmail.com', 9374649435, 'Nice Hotel'),
('Jaison Thomas', 'jaison@gmail.com', 9658385953, 'Good Experience'),
('Jaison E Mathew', 'jaisonemathew14@gmail.com', 9526519828, 'Good Service'),
('Febin Binoy', 'febin@gmail.com', 894739573, 'Best Hotel');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `phone`, `password`) VALUES
('Sabit', 'iamsabit99@gmail.com', '01744248058', '1'),
('Jaison E Mathew', 'jaisonemathew14@gmail.com', '9526519828', 'password'),
('Roscoe Jones', 'rosica@gmail.com', '9526519828', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD PRIMARY KEY (`email`,`category`,`type`,`roomWant`,`date`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`name`,`type`,`cost`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD CONSTRAINT `fk_01` FOREIGN KEY (`email`) REFERENCES `user` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
