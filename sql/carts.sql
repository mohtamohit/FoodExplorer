-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2016 at 11:05 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carts`
--

-- --------------------------------------------------------

--
-- Table structure for table `A1`
--

CREATE TABLE `A1` (
  `i` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mad`
--

CREATE TABLE `mad` (
  `product_name` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mad`
--

INSERT INTO `mad` (`product_name`, `product_id`, `quantity`) VALUES
('bhujia', '1', 7);

-- --------------------------------------------------------

--
-- Table structure for table `u89`
--

CREATE TABLE `u89` (
  `product_name` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u89`
--

INSERT INTO `u89` (`product_name`, `product_id`, `quantity`) VALUES
('Jaibaberi', ' 1234', 13),
('Malai Baraf', ' 12341', 6),
('Begali churan', ' 12345', 5),
('Jaftf', ' 3441', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u100`
--

CREATE TABLE `u100` (
  `product_name` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u100`
--

INSERT INTO `u100` (`product_name`, `product_id`, `quantity`) VALUES
('Coconut Water', '59', 10),
('Gajak', '12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u911`
--

CREATE TABLE `u911` (
  `product_name` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u911`
--

INSERT INTO `u911` (`product_name`, `product_id`, `quantity`) VALUES
('Coconut Water', '59', 20),
('Banana Chips', '23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `u7894`
--

CREATE TABLE `u7894` (
  `product_name` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u7894`
--

INSERT INTO `u7894` (`product_name`, `product_id`, `quantity`) VALUES
('bhujia', '1', 22),
('Jaibaberi', '1234', 1),
('Malai Baraf', '12341', 1),
('Jaftf', '3441', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u12111`
--

CREATE TABLE `u12111` (
  `product_name` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `u123456789`
--

CREATE TABLE `u123456789` (
  `product_name` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u123456789`
--

INSERT INTO `u123456789` (`product_name`, `product_id`, `quantity`) VALUES
('Lahsun Sev', '10', 4),
('Kalami Vada', '38', 20),
('Sweet Kesar Fini', '42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u741852963`
--

CREATE TABLE `u741852963` (
  `product_name` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u741852963`
--

INSERT INTO `u741852963` (`product_name`, `product_id`, `quantity`) VALUES
('Gajak', '12', 5),
('Ratlami Sev', '19', 2),
('Lassi', '40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u9950814448`
--

CREATE TABLE `u9950814448` (
  `product_name` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u9950814448`
--

INSERT INTO `u9950814448` (`product_name`, `product_id`, `quantity`) VALUES
('Chatpati Daal', '1', 2),
('Suhali', '4', 1),
('Banana Chips', '23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u9993154997`
--

CREATE TABLE `u9993154997` (
  `product_name` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
