-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2019 at 06:29 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `administer_event`
--

CREATE TABLE IF NOT EXISTS `administer_event` (
  `administer_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administer_event`
--

INSERT INTO `administer_event` (`administer_id`, `event_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `adminster`
--

CREATE TABLE IF NOT EXISTS `adminster` (
  `administer_id` int(11) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminster`
--

INSERT INTO `adminster` (`administer_id`, `password`) VALUES
(1, '12345');

-- --------------------------------------------------------

--
-- Table structure for table `eventinfo`
--

CREATE TABLE IF NOT EXISTS `eventinfo` (
  `event_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `location` varchar(50) NOT NULL,
  `coche` varchar(50) NOT NULL,
  `assistant_coche` varchar(50) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  `up_limit` int(11) NOT NULL,
  `current_attender` int(11) NOT NULL DEFAULT '0',
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventinfo`
--

INSERT INTO `eventinfo` (`event_id`, `name`, `time`, `location`, `coche`, `assistant_coche`, `detail`, `up_limit`, `current_attender`, `is_open`) VALUES
(1, 'action1', '2019-03-08 00:00:00', 'someplace somestreet somecity', 'john doe', 'jane doe', 'waaaaaaaaaaaaaaaaaaaaghwaaaaaaaaaaaaaaaaaaaagh', 30, 5, 1),
(2, '2', '0000-00-00 00:00:00', 'qqqqqqqq', '', 'someone', 'qwertdyfu5tesedtrfytg6rdf', 9, 5, 1),
(5, '12345', '0000-00-00 00:00:00', 'st', '', 'w', 'lllllllllllllllllllllllllllll', 10, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`) VALUES
(1, 'user1', '12345'),
(2, 'user2', '54321'),
(3, 'tom', '12345'),
(4, 'qwe', '123'),
(6, 'test', '111111'),
(8, 'qwert', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE IF NOT EXISTS `userdetails` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_number` char(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `parent_phone` char(11) NOT NULL,
  `birthday` date NOT NULL,
  `paypal_account` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `user_id`, `name`, `age`, `sex`, `address`, `phone_number`, `email`, `parent_phone`, `birthday`, `paypal_account`) VALUES
(1, 1, 'john doe', 20, 'male', 'some house some street some city', '1234567890', '121345@qwe.com', '0987654321', '2015-10-01', '123456789qwert'),
(2, 2, 'jane doe', 21, 'female', 'any house any street any city', '1111111111', '12345@235.com', '0987654321', '2018-09-01', 'asdfghjkl');

-- --------------------------------------------------------

--
-- Table structure for table `user_event`
--

CREATE TABLE IF NOT EXISTS `user_event` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_event`
--

INSERT INTO `user_event` (`user_id`, `event_id`) VALUES
(1, 1),
(1, 2),
(3, 1),
(3, 5),
(4, 5),
(6, 1),
(6, 2),
(8, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administer_event`
--
ALTER TABLE `administer_event`
  ADD KEY `administer_id` (`administer_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `adminster`
--
ALTER TABLE `adminster`
  ADD PRIMARY KEY (`administer_id`);

--
-- Indexes for table `eventinfo`
--
ALTER TABLE `eventinfo`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_event`
--
ALTER TABLE `user_event`
  ADD KEY `user_id` (`user_id`,`event_id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminster`
--
ALTER TABLE `adminster`
  MODIFY `administer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eventinfo`
--
ALTER TABLE `eventinfo`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `administer_event`
--
ALTER TABLE `administer_event`
  ADD CONSTRAINT `administer_event_ibfk_1` FOREIGN KEY (`administer_id`) REFERENCES `adminster` (`administer_id`),
  ADD CONSTRAINT `administer_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `eventinfo` (`event_id`);

--
-- Constraints for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD CONSTRAINT `userdetails_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_event`
--
ALTER TABLE `user_event`
  ADD CONSTRAINT `user_event_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `eventinfo` (`event_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
