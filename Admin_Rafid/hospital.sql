-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 05, 2021 at 04:17 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `d_id` int(6) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `u_name` varchar(20) NOT NULL,
  `password` int(20) NOT NULL,
  `room_num` int(5) NOT NULL,
  `degree` varchar(60) NOT NULL,
  `fees` int(15) NOT NULL,
  `w_start` time NOT NULL,
  `w_end` time NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `full_name`, `u_name`, `password`, `room_num`, `degree`, `fees`, `w_start`, `w_end`, `dateofbirth`, `gender`, `email`) VALUES
(8, 'Fly Biman', 'Zihan', 111, 0, '', 0, '00:00:00', '00:00:00', '2021-03-29', 'female', 'zihanhossain02@gmail'),
(9, 'Zihan Hossain', 'zihan121', 222, 0, '', 0, '00:00:00', '00:00:00', '2021-03-29', 'male', 'zihanhossain02@gmail');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `m_id` int(6) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `m_catagory` varchar(50) NOT NULL,
  `disease` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`m_id`, `m_name`, `m_catagory`, `disease`) VALUES
(1, 'Bla Bla', 'Big Bla', 'Buga'),
(2, 'Hmm', 'Big HMM', 'aas'),
(3, 'Bla Bla', 'Small Bla', 'aas');

-- --------------------------------------------------------

--
-- Table structure for table `new appointment`
--

CREATE TABLE `new appointment` (
  `a_id` int(6) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `room_num` int(6) NOT NULL,
  `p_id` int(6) NOT NULL,
  `d_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `old appointment`
--

CREATE TABLE `old appointment` (
  `a_id` int(6) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `room_num` int(6) NOT NULL,
  `p_id` int(6) NOT NULL,
  `d_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `old appointment`
--

INSERT INTO `old appointment` (`a_id`, `p_name`, `d_name`, `room_num`, `p_id`, `d_id`) VALUES
(1, '', 'Zihan', 7, 1, 8),
(2, '', 'Zihan', 7, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` int(6) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dateofbirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `p_name`, `gender`, `email`, `dateofbirth`) VALUES
(1, 'Akram', 'Male', 'hasdfbhdsf', '2018-10-03'),
(2, 'Siam', 'Male', 'hasdfbhdsf', '2017-07-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `new appointment`
--
ALTER TABLE `new appointment`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `old appointment`
--
ALTER TABLE `old appointment`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `m_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `new appointment`
--
ALTER TABLE `new appointment`
  MODIFY `a_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
