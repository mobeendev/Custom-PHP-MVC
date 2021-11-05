-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 05, 2021 at 11:01 PM
-- Server version: 5.7.32
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_db`
--
DROP DATABASE IF EXISTS `student_db`;
CREATE DATABASE IF NOT EXISTS `student_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `student_db`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `present` tinyint(4) NOT NULL,
  `absent` tinyint(4) NOT NULL,
  `attendance_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `student_id`, `present`, `absent`, `attendance_date`) VALUES
(12, 9, 1, 0, '1974-08-22'),
(13, 11, 1, 0, '1974-08-22'),
(14, 12, 0, 1, '1974-08-22'),
(15, 9, 0, 1, '1990-06-18'),
(16, 11, 0, 1, '1990-06-18'),
(17, 12, 0, 1, '1990-06-18'),
(18, 13, 1, 0, '1990-06-18'),
(20, 9, 1, 0, '1974-08-22'),
(21, 11, 1, 0, '1974-08-22'),
(22, 12, 0, 1, '1974-08-22'),
(23, 9, 0, 1, '1990-06-18'),
(24, 11, 0, 1, '1990-06-18'),
(25, 12, 0, 1, '1990-06-18'),
(26, 13, 1, 0, '1990-06-18'),
(28, 9, 1, 0, '1974-08-22'),
(29, 11, 1, 0, '1974-08-22'),
(30, 12, 0, 1, '1974-08-22'),
(31, 9, 0, 1, '1990-06-18'),
(32, 11, 0, 1, '1990-06-18'),
(33, 12, 0, 1, '1990-06-18'),
(34, 13, 1, 0, '1990-06-18'),
(36, 9, 1, 0, '1974-08-22'),
(37, 11, 1, 0, '1974-08-22'),
(38, 12, 0, 1, '1974-08-22'),
(39, 9, 0, 1, '1990-06-18'),
(40, 11, 0, 1, '1990-06-18'),
(41, 12, 0, 1, '1990-06-18'),
(42, 13, 1, 0, '1990-06-18'),
(44, 9, 1, 0, '1974-08-22'),
(45, 11, 1, 0, '1974-08-22'),
(46, 12, 0, 1, '1974-08-22'),
(47, 9, 0, 1, '1990-06-18'),
(48, 11, 0, 1, '1990-06-18'),
(49, 12, 0, 1, '1990-06-18'),
(50, 13, 1, 0, '1990-06-18'),
(52, 9, 1, 0, '1974-08-22'),
(53, 11, 1, 0, '1974-08-22'),
(54, 12, 0, 1, '1974-08-22'),
(55, 9, 0, 1, '1990-06-18'),
(56, 11, 0, 1, '1990-06-18'),
(57, 12, 0, 1, '1990-06-18'),
(58, 13, 1, 0, '1990-06-18'),
(60, 9, 1, 0, '1974-08-22'),
(61, 11, 1, 0, '1974-08-22'),
(62, 12, 0, 1, '1974-08-22'),
(63, 9, 0, 1, '1990-06-18'),
(64, 11, 0, 1, '1990-06-18'),
(65, 12, 0, 1, '1990-06-18'),
(66, 13, 1, 0, '1990-06-18'),
(68, 9, 1, 0, '1974-08-22'),
(69, 11, 1, 0, '1974-08-22'),
(70, 12, 0, 1, '1974-08-22'),
(71, 9, 0, 1, '1990-06-18'),
(72, 11, 0, 1, '1990-06-18'),
(73, 12, 0, 1, '1990-06-18'),
(74, 13, 1, 0, '1990-06-18'),
(76, 9, 1, 0, '1974-08-22'),
(77, 11, 1, 0, '1974-08-22'),
(78, 12, 0, 1, '1974-08-22'),
(79, 9, 0, 1, '1990-06-18'),
(80, 11, 0, 1, '1990-06-18'),
(81, 12, 0, 1, '1990-06-18'),
(82, 13, 1, 0, '1990-06-18'),
(84, 9, 1, 0, '1974-08-22'),
(85, 11, 1, 0, '1974-08-22'),
(86, 12, 0, 1, '1974-08-22'),
(87, 9, 0, 1, '1990-06-18'),
(88, 11, 0, 1, '1990-06-18'),
(89, 12, 0, 1, '1990-06-18'),
(90, 13, 1, 0, '1990-06-18'),
(92, 9, 1, 0, '1974-08-22'),
(93, 11, 1, 0, '1974-08-22'),
(94, 12, 0, 1, '1974-08-22'),
(95, 9, 0, 1, '1990-06-18'),
(96, 11, 0, 1, '1990-06-18'),
(97, 12, 0, 1, '1990-06-18'),
(98, 13, 1, 0, '1990-06-18'),
(100, 9, 1, 0, '1974-08-22'),
(101, 11, 1, 0, '1974-08-22'),
(102, 12, 0, 1, '1974-08-22'),
(103, 9, 0, 1, '1990-06-18'),
(104, 11, 0, 1, '1990-06-18'),
(105, 12, 0, 1, '1990-06-18'),
(106, 13, 1, 0, '1990-06-18'),
(108, 9, 1, 0, '1974-08-22'),
(109, 11, 1, 0, '1974-08-22'),
(110, 12, 0, 1, '1974-08-22'),
(111, 9, 0, 1, '1990-06-18'),
(112, 11, 0, 1, '1990-06-18'),
(113, 12, 0, 1, '1990-06-18'),
(114, 13, 1, 0, '1990-06-18'),
(116, 9, 1, 0, '1974-08-22'),
(117, 11, 1, 0, '1974-08-22'),
(118, 12, 0, 1, '1974-08-22'),
(119, 9, 0, 1, '1990-06-18'),
(120, 11, 0, 1, '1990-06-18'),
(121, 12, 0, 1, '1990-06-18'),
(122, 13, 1, 0, '1990-06-18'),
(124, 9, 1, 0, '1974-08-22'),
(125, 11, 1, 0, '1974-08-22'),
(126, 12, 0, 1, '1974-08-22'),
(127, 9, 0, 1, '1990-06-18'),
(128, 11, 0, 1, '1990-06-18'),
(129, 12, 0, 1, '1990-06-18'),
(130, 13, 1, 0, '1990-06-18'),
(132, 9, 1, 0, '1974-08-22'),
(133, 11, 1, 0, '1974-08-22'),
(134, 12, 0, 1, '1974-08-22'),
(135, 9, 0, 1, '1990-06-18'),
(136, 11, 0, 1, '1990-06-18'),
(137, 12, 0, 1, '1990-06-18'),
(138, 13, 1, 0, '1990-06-18'),
(140, 9, 1, 0, '1974-08-22'),
(141, 11, 1, 0, '1974-08-22'),
(142, 12, 0, 1, '1974-08-22'),
(143, 9, 0, 1, '1990-06-18'),
(144, 11, 0, 1, '1990-06-18'),
(145, 12, 0, 1, '1990-06-18'),
(146, 13, 1, 0, '1990-06-18'),
(148, 9, 1, 0, '1974-08-22'),
(149, 11, 1, 0, '1974-08-22'),
(150, 12, 0, 1, '1974-08-22'),
(151, 9, 0, 1, '1990-06-18'),
(152, 11, 0, 1, '1990-06-18'),
(153, 12, 0, 1, '1990-06-18'),
(154, 13, 1, 0, '1990-06-18'),
(156, 9, 1, 0, '1974-08-22'),
(157, 11, 1, 0, '1974-08-22'),
(158, 12, 0, 1, '1974-08-22'),
(159, 9, 0, 1, '1990-06-18'),
(160, 11, 0, 1, '1990-06-18'),
(161, 12, 0, 1, '1990-06-18'),
(162, 13, 1, 0, '1990-06-18'),
(164, 9, 1, 0, '1974-08-22'),
(165, 11, 1, 0, '1974-08-22'),
(166, 12, 0, 1, '1974-08-22'),
(167, 9, 0, 1, '1990-06-18'),
(168, 11, 0, 1, '1990-06-18'),
(169, 12, 0, 1, '1990-06-18'),
(170, 13, 1, 0, '1990-06-18'),
(172, 9, 1, 0, '1974-08-22'),
(173, 11, 1, 0, '1974-08-22'),
(174, 12, 0, 1, '1974-08-22'),
(175, 9, 0, 1, '1990-06-18'),
(176, 11, 0, 1, '1990-06-18'),
(177, 12, 0, 1, '1990-06-18'),
(178, 13, 1, 0, '1990-06-18'),
(180, 9, 1, 0, '1974-08-22'),
(181, 11, 1, 0, '1974-08-22'),
(182, 12, 0, 1, '1974-08-22'),
(183, 9, 0, 1, '1990-06-18'),
(184, 11, 0, 1, '1990-06-18'),
(185, 12, 0, 1, '1990-06-18'),
(186, 13, 1, 0, '1990-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `dob` date NOT NULL,
  `class` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `name`, `roll_number`, `dob`, `class`) VALUES
(9, 'Ezekiel Rosario', 753, '1970-01-01', 'Ad expedita quas pro'),
(11, 'Dylan Jensen', 428, '2012-12-23', 'Ut ipsa ratione lib'),
(12, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(13, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(15, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(16, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(17, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(18, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(19, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(38, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(39, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(40, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(41, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(42, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(43, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(44, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(45, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(46, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(47, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(48, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(49, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(50, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(51, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(52, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(53, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(54, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(55, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(56, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(57, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(58, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(59, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(60, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(61, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(62, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(63, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(64, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(65, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(66, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(67, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(68, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(69, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(70, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(71, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(72, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(73, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(74, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(75, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(76, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(77, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(78, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(79, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(80, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(81, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(83, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(84, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(85, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(86, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(87, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(88, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(89, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(90, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(91, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(92, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(93, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(94, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(95, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(96, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(97, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(98, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(99, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(100, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(101, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(102, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(103, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(104, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(105, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(106, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(107, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(108, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(109, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(110, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(111, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(112, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(113, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(114, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(115, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(116, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(117, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(118, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(119, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(121, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(122, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(125, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat'),
(126, 'Rhoda Harvey', 345, '2008-03-19', 'In ipsum dolorem tem'),
(127, 'Ava Gordon', 111, '1994-05-28', 'Quam beatae voluptat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`id`, `name`, `class`) VALUES
(52, 'Gloria Richmond', 'Dolores iste amet v'),
(53, 'Gloria Richmond', 'Dolores iste amet v'),
(54, 'Gloria Richmond', 'Dolores iste amet v'),
(55, 'Gloria Richmond', 'Dolores iste amet v'),
(56, 'Gloria Richmond', 'Dolores iste amet v'),
(57, 'Gloria Richmond', 'Dolores iste amet v'),
(58, 'Gloria Richmond', 'Dolores iste amet v'),
(59, 'Gloria Richmond', 'Dolores iste amet v'),
(60, 'Gloria Richmond', 'Dolores iste amet v'),
(61, 'Gloria Richmond', 'Dolores iste amet v'),
(62, 'Gloria Richmond', 'Dolores iste amet v'),
(63, 'Gloria Richmond', 'Dolores iste amet v'),
(64, 'Gloria Richmond', 'Dolores iste amet v'),
(65, 'Gloria Richmond', 'Dolores iste amet v'),
(66, 'Gloria Richmond', 'Dolores iste amet v'),
(67, 'Gloria Richmond', 'Dolores iste amet v'),
(68, 'Gloria Richmond', 'Dolores iste amet v'),
(69, 'Gloria Richmond', 'Dolores iste amet v'),
(70, 'Gloria Richmond', 'Dolores iste amet v'),
(71, 'Gloria Richmond', 'Dolores iste amet v'),
(72, 'Gloria Richmond', 'Dolores iste amet v'),
(73, 'Gloria Richmond', 'Dolores iste amet v'),
(74, 'Gloria Richmond', 'Dolores iste amet v'),
(75, 'Gloria Richmond', 'Dolores iste amet v'),
(76, 'Gloria Richmond', 'Dolores iste amet v'),
(77, 'Gloria Richmond', 'Dolores iste amet v'),
(78, 'Gloria Richmond', 'Dolores iste amet v'),
(79, 'Gloria Richmond', 'Dolores iste amet v'),
(81, 'Gloria Richmond', 'Dolores iste amet v'),
(83, 'Gloria Richmond', 'Dolores iste amet v'),
(85, 'Emma Richardson', 'Dicta quasi animi e'),
(86, 'Amy Rogers', 'Aut qui consequatur'),
(89, 'Giselle Hebert', 'Ipsa quia duis comm'),
(90, 'Cheryl Castaneda', 'Aut adipisci accusam'),
(91, 'Janna Fischer', 'Velit qui qui in qui');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD UNIQUE KEY `teacher_id_indx` (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD CONSTRAINT `tbl_attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `tbl_student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
