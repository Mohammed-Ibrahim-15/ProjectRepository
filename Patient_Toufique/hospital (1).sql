-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 03:21 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `bookappointment`
--

CREATE TABLE `bookappointment` (
  `id` int(11) NOT NULL,
  `doctor_spec` varchar(50) NOT NULL,
  `app_time` time NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookappointment`
--

INSERT INTO `bookappointment` (`id`, `doctor_spec`, `app_time`, `date`) VALUES
(1, 'Neurologist1', '12:30:00', '2021-03-15'),
(2, 'Psychiatris1', '14:32:00', '2021-03-23'),
(3, 'Dermatologist1', '02:04:00', '2021-03-24'),
(4, 'Ortheopedist2', '01:30:00', '2021-03-24'),
(5, 'Ortheopedist2', '01:30:00', '2021-03-24'),
(6, 'Dr.Abdur Sattar', '20:04:00', '2021-04-29'),
(7, 'Dr.Abdur Sattar', '20:04:00', '2021-04-29'),
(8, 'Dr.Abdur Sattar', '20:04:00', '2021-04-29'),
(9, 'Dr.Khayeruzzam Rakib', '10:13:00', '2021-04-28'),
(10, 'Dr.Rizvi Chowdhury', '12:04:00', '2021-04-28'),
(11, 'Dr.Bijay Kumar', '14:00:00', '2021-04-29');

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
(10, 'MD. IBNEY USUF', 'Yousuf', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-04-13', 'male', 'toufique1597@gmail.c'),
(11, 'MD. IBNEY USUF', 'tondra', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-04-06', 'male', 'toufique1597@gmail.c'),
(12, 'tondra', 'tondra', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-21', 'male', 'toufique1597@gmail.c'),
(13, 'sakib', 'sakib', 12345, 0, '', 0, '00:00:00', '00:00:00', '2021-04-29', 'male', 'rafhiqulislam@yahoo.'),
(14, 'tondra', 'tondra', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-28', 'male', 'ibneyyusuf@gmail.com'),
(15, 'toufique', 'tondra', 1234, 0, '', 0, '00:00:00', '00:00:00', '2020-06-19', '', 'abmtoufique1597@gmai'),
(16, 'gtx', 'gtx', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-05-04', 'male', 'rafhiqulislam@yahoo.'),
(17, 'me', 'be', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-05-05', 'female', 'rafhiqulislam@yahoo.'),
(18, 'raju', 'raju', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-20', 'male', 'rafhiqulislam@yahoo.'),
(19, 'le', 'le', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-05-04', 'male', 'toufique1597@gmail.c'),
(20, 'ru', 'ru', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-28', 'male', 'toufique1597@gmail.c'),
(21, 'new', 'new', 123, 0, '', 0, '00:00:00', '00:00:00', '2021-04-27', 'male', 'toufique1597@gmail.c'),
(22, 'abey', 'abey', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-28', 'male', 'registrar@diu-bd.net'),
(23, 'abey', 'abey', 345, 0, '', 0, '00:00:00', '00:00:00', '2021-04-27', 'male', 'toufique1597@gmail.c'),
(24, 'abey', 'abey', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-04-27', 'male', 'rafhiqulislam@yahoo.'),
(25, 'abey', 'abey', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-04-27', 'male', 'rafhiqulislam@yahoo.'),
(26, 'abey', 'abey', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-04-27', 'male', 'rafhiqulislam@yahoo.'),
(27, 'toufique', 'tondra', 0, 0, '', 0, '00:00:00', '00:00:00', '2020-06-19', '', 'abmtoufique1597@gmai'),
(29, 'toufique', 'tondra', 123, 0, '', 0, '00:00:00', '00:00:00', '2020-06-19', '', 'abmtoufique1597@gmai'),
(30, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(40, 'tondra', 'tondra', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'registrar@diu-bd.net'),
(41, 'tondra', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(42, 'tondra', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'rafhiqulislam@yahoo.'),
(43, 'tondra', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'rafhiqulislam@yahoo.'),
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
(54, 'tondra', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(55, 'tondra', 'tondra', 1234, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'registrar@diu-bd.net'),
(56, 'tondra', 'tondra', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'registrar@diu-bd.net'),
(57, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(58, 'tondra', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(59, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(60, 'tondra', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(61, 'toufique', 'tondra', 0, 0, '', 0, '00:00:00', '00:00:00', '2020-06-19', '', 'abmtoufique1597@gmai'),
(62, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(63, 'tondra', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(64, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(65, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(66, 'tondra', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(67, 'tondra', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(68, 'tondra', 'tondra', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-20', 'male', 'er@gmail.com'),
(69, 'jihan', 'krim', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-04-20', 'male', 'abc@gmail.com'),
(70, 'babul', 'babul', 1356, 0, '', 0, '00:00:00', '00:00:00', '2021-04-27', 'male', 'ibneyyusuf@gmail.com'),
(71, 'me', 'be', 1356, 0, '', 0, '00:00:00', '00:00:00', '2021-05-05', 'female', 'rafhiqulislam@yahoo.'),
(72, 'toufique', 'tondra', 345, 0, '', 0, '00:00:00', '00:00:00', '2020-06-19', '', 'abmtoufique1597@gmai'),
(73, 'tamim', 'tamim', 12345, 0, '', 0, '00:00:00', '00:00:00', '2021-04-20', 'male', 'toufique1597@gmail.c');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_info`
--

CREATE TABLE `doctor_info` (
  `d-id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  `starting_time` varchar(50) NOT NULL,
  `ending_time` varchar(50) NOT NULL,
  `room_no` varchar(50) NOT NULL,
  `fees` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_info`
--

INSERT INTO `doctor_info` (`d-id`, `name`, `speciality`, `starting_time`, `ending_time`, `room_no`, `fees`, `email`) VALUES
(1, 'Dr. Rakibuzzaman', 'Dermatology', '11:00 AM', '5:00 PM', '205a', '1200', 'rakib123@gmail.com'),
(2, 'Dr.Khayeruzzaman', 'Neurologist', '9:30 AM', '2:00 PM', '102b', '1500', 'khayer321@yahoo.com'),
(3, 'Dr.Ibrahimovic', 'Orthopaedic Surgery', '7:00 PM', '10:PM', '129b', '50000', 'ibra320@rocketmail.com'),
(4, 'Dr.Tamim Iqbal', 'Emerjency Medicine Specialist', '1:00 PM', '9:00 PM', '121c', '2000', 'tamim21@yahoo.com'),
(5, 'Dr.Sergio Ramos', 'Psychiatrists', '4:00 PM', '9:00 PM', '222a', '2500', 'ramos007@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `p-id` int(11) NOT NULL,
  `feedbacks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`p-id`, `feedbacks`) VALUES
(1, ' \r\n                            good'),
(2, ' \r\n                            good'),
(3, ' \r\n                            good'),
(4, ' \r\n                            very good'),
(5, ' \r\n                good            ');

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
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `p-id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dateofbirth` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`p-id`, `full_name`, `u_name`, `password`, `dateofbirth`, `email`, `gender`) VALUES
(1, 'abey', 'git', '1234', '2021-04-19', 'rafhiqulislam@yahoo.com', 'female'),
(2, 'new', 'new', '12345', '2021-04-27', 'registrar@diu-bd.net', 'female'),
(3, 'toufique', 'toufique', '12345', '2021-04-21', 'toufique1597@gmail.com', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookappointment`
--
ALTER TABLE `bookappointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `doctor_info`
--
ALTER TABLE `doctor_info`
  ADD PRIMARY KEY (`d-id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`p-id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`p-id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookappointment`
--
ALTER TABLE `bookappointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `doctor_info`
--
ALTER TABLE `doctor_info`
  MODIFY `d-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `p-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_info`
--
ALTER TABLE `patient_info`
  MODIFY `p-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
