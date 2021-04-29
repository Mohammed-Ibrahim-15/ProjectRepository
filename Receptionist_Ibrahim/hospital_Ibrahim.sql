-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 03:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

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
-- Table structure for table `admitpatient`
--

CREATE TABLE `admitpatient` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admitpatient`
--

INSERT INTO `admitpatient` (`id`, `full_name`, `mobile_no`, `email`, `gender`, `blood_group`, `dob`) VALUES
(1, 'rr', '213', 'mrx@gmail.com', 'male', 'B+', '2021-04-01'),
(2, 'Wq', '018', 're@gmail.com', 'male', 'A-', '2021-04-02'),
(3, 'Saqib', '01819', 'saqib@gmail.com', 'male', 'A+', '2021-04-01'),
(4, 'Rafid', '018', 'mrx@gmail.com', 'male', 'O+', '2021-04-01'),
(5, 'Saqib', '01819223344', 'saqib@gmail.com', 'male', 'A+', '2021-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `createappointment`
--

CREATE TABLE `createappointment` (
  `a_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `doctor_spec` varchar(50) NOT NULL,
  `app_time` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `createappointment`
--

INSERT INTO `createappointment` (`a_id`, `full_name`, `mobile_no`, `doctor_spec`, `app_time`, `date`) VALUES
(4, 'Ibrahim', '01834683171', 'Dr.Fahima Rahman', '15:28', '2021-05-07'),
(5, 'Saqib', '01819223344', 'Dr.Tahmid Hasan', '16:00', '2021-04-28');

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
(9, 'Zihan Hossain', 'zihan121', 222, 0, '', 0, '00:00:00', '00:00:00', '2021-03-29', 'male', 'zihanhossain02@gmail'),
(10, 'Rafid', '', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-19', 'male', 'r@gmail.com'),
(11, 'Rafid', '', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-19', 'male', 'r@gmail.com'),
(12, 'Rafid', '', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-19', 'male', 'r@gmail.com'),
(13, 'Rafid', '', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-19', 'male', 'r@gmail.com'),
(14, 'Rafid', '', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-01', 'male', 'r@gmail.com'),
(15, 'qw', 'qw', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-10', 'male', 'mrx@gmail.com'),
(16, 'as', 'as', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-08', 'male', 'mrx@gmail.com'),
(17, 'as', 'as', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-08', 'male', 'mrx@gmail.com'),
(18, 'ib', 'ib', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-08', 'male', 'mrx@gmail.com'),
(19, 'a', 'a', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-09', 'male', 'mrx@gmail.com'),
(20, '123', '123', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-08', 'male', 'mrx@gmail.com'),
(21, 'das', 'sda', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-04-05', 'male', 'md@gmail.com'),
(22, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(23, 'sa', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(24, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'mrx@gmail.com'),
(25, 'as', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'mrx@gmail.com'),
(26, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(27, 'sa', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(28, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(29, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(30, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'mrx@gmail.com'),
(31, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(32, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(33, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(34, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(35, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(36, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(37, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'mrx@gmail.com'),
(38, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(39, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(40, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(41, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(42, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(43, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'mrx@gmail.com'),
(44, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(45, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(46, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(47, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(48, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(49, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(50, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(51, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(52, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(53, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(54, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(55, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(56, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(57, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(58, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(59, '12', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(60, '123123', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(61, '21312', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'mrx@gmail.com'),
(62, '21312', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'mrx@gmail.com'),
(63, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(64, 'Ib', 'ib', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-07', 'Male', 'mrx@gmail.com'),
(65, 'Ibrahim', 'Ibrahim', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-04-01', 'Male', 'mrx@gmail.com'),
(66, 'QWE', 'qwe', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-02', 'Female', 'mrx@gmail.com'),
(67, 'QWE', 'qwe', 123456, 0, '', 0, '00:00:00', '00:00:00', '2021-04-02', 'Female', 'mrx@gmail.com'),
(68, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(69, 'wa', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(70, 'Ibrahim', 'Ibrahim', 123456, 0, '', 0, '00:00:00', '00:00:00', '2021-04-01', 'Male', 'ib@gmail.com'),
(71, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(72, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(73, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(74, 'ib', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(75, 'ib', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(76, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(77, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(78, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(79, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(80, 'IB', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(81, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(82, 'ada', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(83, 'adasd', 'asdasd', 123456, 0, '', 0, '00:00:00', '00:00:00', '2021-04-02', 'Male', 'mrx@gmail.com'),
(84, 'Saqib', 'Saqib', 123456, 0, '', 0, '00:00:00', '00:00:00', '2021-04-02', 'Male', 'saqib@gmail.com'),
(85, 'Ibrahim', 'Ibrahim', 123456, 0, '', 0, '00:00:00', '00:00:00', '2021-04-15', 'male', 'mohammed.ibrahim11@a');

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

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `r_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dateofbirth` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`r_id`, `full_name`, `u_name`, `password`, `dateofbirth`, `email`, `gender`) VALUES
(1, 'Ibrahim', 'Ibrahim', '123456', '2021-04-07', 'mohammed.ibrahim11@aiesec.net', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admitpatient`
--
ALTER TABLE `admitpatient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createappointment`
--
ALTER TABLE `createappointment`
  ADD PRIMARY KEY (`a_id`);

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
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admitpatient`
--
ALTER TABLE `admitpatient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `createappointment`
--
ALTER TABLE `createappointment`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

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

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
