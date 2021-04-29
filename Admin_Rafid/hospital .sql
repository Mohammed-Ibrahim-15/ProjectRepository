-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 03:17 PM
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
-- Table structure for table `adddoctor`
--

CREATE TABLE `adddoctor` (
  `nd_id` int(11) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `doctor_contactno` varchar(50) NOT NULL,
  `joining_time` varchar(50) NOT NULL,
  `joining_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adddoctor`
--

INSERT INTO `adddoctor` (`nd_id`, `doctor_name`, `doctor_contactno`, `joining_time`, `joining_date`) VALUES
(1, 'Dr.Sakib', '01754458966', '15:04', '2021-04-28'),
(3, 'Dr.Tamim', '0187654344', '02:32', '2021-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_list`
--

CREATE TABLE `appointment_list` (
  `sl_no` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_contact` varchar(50) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_list`
--

INSERT INTO `appointment_list` (`sl_no`, `patient_name`, `patient_contact`, `doctor_name`, `date`, `time`) VALUES
(1, 'Md. Harun-Or-Rashid', '01756658922', 'Dr .Bijoy Kumar', '12-05-2021', '12:30 PM'),
(2, 'Mrs. Maisha Banu', '01721420885', 'Dr. Khayeruzzaman ', '29-04-2021', '7:30 PM'),
(3, 'Md. Ibrahim', '01818409776', 'Dr. Mika Singh', '1-05-2021', '10:00 AM'),
(4, 'Mrs. Sumaiya Sumu', '01818308776', 'Dr. Toufique Ahmed', '9-05-2021', '8:30 PM');

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
(10, 'sajib', 'sajib', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-21', 'male', 'rafidalaf.king@gmail'),
(11, 'Anik', 'Anik', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-17', 'male', 'Anik123@gmail.com'),
(12, 'rana', 'rana', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-18', 'male', 'rana@gmail'),
(14, 'rana', 'rana', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-18', 'male', 'rana@gmail'),
(15, 'rafid', 'rafid', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-28', 'male', 'rafidalaf.king@gmail'),
(16, 'rafid', 'rafid', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-28', 'male', 'rafidalaf.king@gmail'),
(17, 'rafid', 'rafid', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-20', 'male', 'rafidalaf.king@gmail'),
(18, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(19, 'rafid', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', 'rafidalaf.king@gmail'),
(20, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(21, 'rafid', 'rafid', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-12', 'Male', 'rafidalaf.king@gmail'),
(22, '', '', 0, 0, '', 0, '00:00:00', '00:00:00', '0000-00-00', 'Male', ''),
(23, 'rafid', 'rafid', 1234, 0, '', 0, '00:00:00', '00:00:00', '2021-04-28', 'Male', 'rafidalaf.king@gmail'),
(24, 'rafid', 'rafid', 0, 0, '', 0, '00:00:00', '00:00:00', '2021-04-13', 'Male', 'rafidalaf.king@gmail');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_list`
--

CREATE TABLE `doctor_list` (
  `d-id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `room_no` varchar(50) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  `starting_time` varchar(50) NOT NULL,
  `ending_time` varchar(50) NOT NULL,
  `fees` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_list`
--

INSERT INTO `doctor_list` (`d-id`, `name`, `room_no`, `speciality`, `starting_time`, `ending_time`, `fees`) VALUES
(1, 'Dr. Razib Hayat Khan', '201', 'Nurologist', '8:00 AM', '12:00 PM', '2000'),
(2, 'Dr.Abdul Al Mamun', '207', 'Dermatologist', '7:00 PM', '9:00 PM', '3000'),
(3, 'Dr. Al Masud', '201', 'Dentist', '4:00 PM', '9:30 PM', '1500'),
(4, 'Dr.Abdul Malek', '421', 'Medicine Specialties', '5:45 PM', '8:45 PM', '2500');

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
-- Table structure for table `patient_list`
--

CREATE TABLE `patient_list` (
  `sl_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `blood_group` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_list`
--

INSERT INTO `patient_list` (`sl_no`, `name`, `gender`, `contact_no`, `blood_group`) VALUES
(1, 'Md.Sajib Rahman', 'Male', '01753358966', 'O+'),
(2, 'Md. Habib Wahid', 'Male', '01818409776', 'AB-'),
(3, 'Mrs. Maisha Khatun', 'Female', '01814277620', 'B+'),
(4, 'Mrs. Shakira Banu', 'Female', '01818709778', 'A+');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adddoctor`
--
ALTER TABLE `adddoctor`
  ADD PRIMARY KEY (`nd_id`);

--
-- Indexes for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `doctor_list`
--
ALTER TABLE `doctor_list`
  ADD PRIMARY KEY (`d-id`);

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
-- Indexes for table `patient_list`
--
ALTER TABLE `patient_list`
  ADD PRIMARY KEY (`sl_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adddoctor`
--
ALTER TABLE `adddoctor`
  MODIFY `nd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointment_list`
--
ALTER TABLE `appointment_list`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `doctor_list`
--
ALTER TABLE `doctor_list`
  MODIFY `d-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `patient_list`
--
ALTER TABLE `patient_list`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
