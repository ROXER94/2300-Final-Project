-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 05, 2015 at 05:15 AM
-- Server version: 5.6.19-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cs2300fp`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line_1` varchar(256) NOT NULL,
  `line_2` text,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zipcode` text NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE IF NOT EXISTS `availability` (
  `id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `11:00 PM` int(1) NOT NULL,
  `10:45 PM` int(1) NOT NULL,
  `10:30 PM` int(1) NOT NULL,
  `10:15 PM` int(1) NOT NULL,
  `10:00 PM` int(1) NOT NULL,
  `9:45 PM` int(1) NOT NULL,
  `9:30 PM` int(1) NOT NULL,
  `9:15 PM` int(1) NOT NULL,
  `9:00 PM` int(1) NOT NULL,
  `8:45 PM` int(1) NOT NULL,
  `8:30 PM` int(1) NOT NULL,
  `8:15 PM` int(1) NOT NULL,
  `8:00 PM` int(1) NOT NULL,
  `7:45 PM` int(1) NOT NULL,
  `7:30 PM` int(1) NOT NULL,
  `7:15 PM` int(1) NOT NULL,
  `7:00 PM` int(1) NOT NULL,
  `6:45 PM` int(1) NOT NULL,
  `6:30 PM` int(1) NOT NULL,
  `6:15 PM` int(1) NOT NULL,
  `6:00 PM` int(1) NOT NULL,
  `5:45 PM` int(1) NOT NULL,
  `5:30 PM` int(1) NOT NULL,
  `5:15 PM` int(1) NOT NULL,
  `5:00 PM` int(1) NOT NULL,
  `4:45 PM` int(1) NOT NULL,
  `4:30 PM` int(1) NOT NULL,
  `4:15 PM` int(1) NOT NULL,
  `4:00 PM` int(1) NOT NULL,
  `3:45 PM` int(1) NOT NULL,
  `3:30 PM` int(1) NOT NULL,
  `3:15 PM` int(1) NOT NULL,
  `3:00 PM` int(1) NOT NULL,
  `2:45 PM` int(1) NOT NULL,
  `2:30 PM` int(1) NOT NULL,
  `2:15 PM` int(1) NOT NULL,
  `2:00 PM` int(1) NOT NULL,
  `1:45 PM` int(1) NOT NULL,
  `1:30 PM` int(1) NOT NULL,
  `1:15 PM` int(1) NOT NULL,
  `1:00 PM` int(1) NOT NULL,
  `12:45 PM` int(1) NOT NULL,
  `12:30 PM` int(1) NOT NULL,
  `12:15 PM` int(1) NOT NULL,
  `12:00 PM` int(1) NOT NULL,
  `11:45 AM` int(1) NOT NULL,
  `11:30 AM` int(1) NOT NULL,
  `11:15 AM` int(1) NOT NULL,
  `11:00 AM` int(1) NOT NULL,
  `10:45 AM` int(1) NOT NULL,
  `10:30 AM` int(1) NOT NULL,
  `10:15 AM` int(1) NOT NULL,
  `10:00 AM` int(1) NOT NULL,
  `9:45 AM` int(1) NOT NULL,
  `9:30 AM` int(1) NOT NULL,
  `9:15 AM` int(1) NOT NULL,
  `9:00 AM` int(1) NOT NULL,
  `8:45 AM` int(1) NOT NULL,
  `8:30 AM` int(1) NOT NULL,
  `8:15 AM` int(1) NOT NULL,
  `8:00 AM` int(1) NOT NULL,
  `7:45 AM` int(1) NOT NULL,
  `7:30 AM` int(1) NOT NULL,
  `7:15 AM` int(1) NOT NULL,
  `7:00 AM` int(1) NOT NULL,
  `6:45 AM` int(1) NOT NULL,
  `6:30 AM` int(1) NOT NULL,
  `6:15 AM` int(1) NOT NULL,
  `6:00 AM` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `salt` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `picture` varchar(256) NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE IF NOT EXISTS `providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `salt` varchar(256) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `description` text,
  `picture` varchar(256) DEFAULT 'uploads/default.png',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `comments` text,
  `token` varchar(256) NOT NULL,
  `payment_token` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`,`provider_id`,`address_id`),
  KEY `requests_ibfk_1` (`provider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rating` int(2) NOT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
