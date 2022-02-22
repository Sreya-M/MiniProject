-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2022 at 07:16 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covidpt`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_containmentzone`
--

CREATE TABLE `tbl_containmentzone` (
  `zone_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `cont_status` varchar(10) NOT NULL,
  `cont_declaredate` date NOT NULL,
  `cont_end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_containmentzone`
--

INSERT INTO `tbl_containmentzone` (`zone_id`, `ward_id`, `cont_status`, `cont_declaredate`, `cont_end_date`) VALUES
(1, 8, 'Active', '2022-02-08', '2022-02-19'),
(21, 9, 'Active', '2022-02-20', '0000-00-00'),
(26, 10, 'Active', '2022-02-20', '0000-00-00'),
(30, 11, 'Active', '2022-02-20', '0000-00-00'),
(41, 4, 'true', '2022-02-02', '2022-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dco_category`
--

CREATE TABLE `tbl_dco_category` (
  `cat_id` int(11) NOT NULL,
  `ctype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dco_category`
--

INSERT INTO `tbl_dco_category` (`cat_id`, `ctype`) VALUES
(1, 'Physician'),
(2, 'Consultant');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor`
--

CREATE TABLE `tbl_doctor` (
  `doc_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `h_id` int(11) NOT NULL,
  `doc_name` varchar(20) NOT NULL,
  `doc_spec` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_doctor`
--

INSERT INTO `tbl_doctor` (`doc_id`, `cat_id`, `h_id`, `doc_name`, `doc_spec`) VALUES
(1, 1, 1, 'Sudheer', 'ab'),
(2, 2, 1, 'Anu Mathew', 'fc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital`
--

CREATE TABLE `tbl_hospital` (
  `h_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `Phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hospital`
--

INSERT INTO `tbl_hospital` (`h_id`, `login_id`, `panch_id`, `name`, `email`, `Phone`) VALUES
(1, 3, 1, 'MIMS', 'mims@hos.cm', 8596741236),
(2, 18, 2, 'MYTHRA', 'mythra@gmail.com', 7496321589);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `username`, `passwd`, `type`, `status`) VALUES
(1, 'admin', 'admin', 1, 1),
(2, 'Anu123', 'anu123', 3, 1),
(3, 'mims123', 'mims123', 2, 1),
(5, 'kannur@gmail.com', 'kannur', 4, 1),
(6, 'kozhikode@gmail.com', 'kozhikode', 4, 1),
(7, 'pinarayi@gmail.com', 'pinarayi', 4, 1),
(16, 'kollam@gmail.com', 'kollam', 4, 1),
(17, 'kiran123', 'kiran123', 3, 1),
(18, 'mythra123', 'mythra123', 2, 1),
(19, 'ayyamkunn@gmail.com', 'ayamkunn', 4, 1),
(21, 'chempu@gmail.com', 'info', 4, 1),
(22, 'ambalur@gmail.com', 'ambalur', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_panchayath`
--

CREATE TABLE `tbl_panchayath` (
  `panch_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `panch_name` varchar(20) NOT NULL,
  `panch_president_name` varchar(20) NOT NULL,
  `panch_mobile` bigint(20) NOT NULL,
  `panch_email` varchar(20) NOT NULL,
  `num_wards` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_panchayath`
--

INSERT INTO `tbl_panchayath` (`panch_id`, `login_id`, `panch_name`, `panch_president_name`, `panch_mobile`, `panch_email`, `num_wards`) VALUES
(1, 5, 'Kannur', 'Sreekala', 7896541236, 'kannur@gmail.com', 77),
(2, 6, 'Kozhikode', 'Aami A', 7485963625, 'kozhikode@gmail.com', 12),
(9, 7, 'Pinarayi', 'Linu', 6788965478, 'pinarayi@gmail.com', 10),
(15, 16, 'kollam', 'lintu', 7945658241, 'kollam@gmail.com', 3),
(16, 19, 'Ayyamkunn', 'Sheeja', 7496851236, 'ayyamkunn@gmail.com', 17),
(18, 21, 'chempu', 'Antony', 7485123698, 'chempu@gmail.com', 7),
(19, 22, 'Ambalur', 'harish', 7496321584, 'ambalur@gmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `r_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `Phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`r_id`, `login_id`, `panch_id`, `name`, `email`, `Phone`) VALUES
(1, 2, 1, 'Anu', 'anu@gmail.com', 7896321458),
(2, 17, 2, 'Kiran', 'kiran@gmail.com', 9362585774);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wards`
--

CREATE TABLE `tbl_wards` (
  `ward_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `ward_num` varchar(20) NOT NULL,
  `ward_mem_name` varchar(20) NOT NULL,
  `ward_mem_numb` varchar(20) NOT NULL,
  `ward_mem_email` varchar(20) NOT NULL,
  `cont_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wards`
--

INSERT INTO `tbl_wards` (`ward_id`, `panch_id`, `ward_num`, `ward_mem_name`, `ward_mem_numb`, `ward_mem_email`, `cont_status`) VALUES
(1, 1, '5', 'Diya', '8596741236', 'diya@gmail.com', 'Active'),
(2, 2, '7', 'Divya', '8456741236', 'divya@gmail.com', 'Not'),
(3, 2, '8', 'jisha', '7896541236', 'jisha@gmail.com', 'Not'),
(4, 9, '9', 'minnu', '7441855296', 'minnu@gmail.com', 'Not'),
(5, 1, '2', 'Krishna', '7896547736', 'krishna@gmail.com', 'Not'),
(6, 9, '25', 'tinnu', '7741855796', 'tinnu@gmail.com', 'Not'),
(7, 9, '1', 'Reena', '7465893214', 'reena@gmai.com', 'not'),
(8, 15, '1', 'lintu', '9087654323', 'lintu@gmail.com', 'active'),
(9, 15, '2', 'Eran', '9078563412', 'eran@gmail.com', 'not'),
(10, 15, '3', 'yuva', '90090090090', 'yuva@gmail.com', 'active'),
(11, 15, '4', 'Jisha', '9876564567', 'jisha@gmail.com', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_containmentzone`
--
ALTER TABLE `tbl_containmentzone`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `ward_id` (`ward_id`);

--
-- Indexes for table `tbl_dco_category`
--
ALTER TABLE `tbl_dco_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `h_id` (`h_id`);

--
-- Indexes for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  ADD PRIMARY KEY (`h_id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `panch_id` (`panch_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_panchayath`
--
ALTER TABLE `tbl_panchayath`
  ADD PRIMARY KEY (`panch_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `panch_id` (`panch_id`);

--
-- Indexes for table `tbl_wards`
--
ALTER TABLE `tbl_wards`
  ADD PRIMARY KEY (`ward_id`),
  ADD KEY `panch_id` (`panch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_containmentzone`
--
ALTER TABLE `tbl_containmentzone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_panchayath`
--
ALTER TABLE `tbl_panchayath`
  MODIFY `panch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_wards`
--
ALTER TABLE `tbl_wards`
  MODIFY `ward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_containmentzone`
--
ALTER TABLE `tbl_containmentzone`
  ADD CONSTRAINT `tbl_containmentzone_ibfk_1` FOREIGN KEY (`ward_id`) REFERENCES `tbl_wards` (`ward_id`);

--
-- Constraints for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD CONSTRAINT `tbl_doctor_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `tbl_dco_category` (`cat_id`),
  ADD CONSTRAINT `tbl_doctor_ibfk_2` FOREIGN KEY (`h_id`) REFERENCES `tbl_hospital` (`h_id`);

--
-- Constraints for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  ADD CONSTRAINT `tbl_hospital_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`),
  ADD CONSTRAINT `tbl_hospital_ibfk_2` FOREIGN KEY (`panch_id`) REFERENCES `tbl_login` (`login_id`);

--
-- Constraints for table `tbl_panchayath`
--
ALTER TABLE `tbl_panchayath`
  ADD CONSTRAINT `tbl_panchayath_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);

--
-- Constraints for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD CONSTRAINT `tbl_register_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`),
  ADD CONSTRAINT `tbl_register_ibfk_2` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`);

--
-- Constraints for table `tbl_wards`
--
ALTER TABLE `tbl_wards`
  ADD CONSTRAINT `tbl_wards_ibfk_1` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
