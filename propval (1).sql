-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 07:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `propval`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `camera` varchar(1000) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `camera`, `datecreated`) VALUES
(0, '1664637019.jpg', '2022-10-01 20:40:19'),
(0, '1664637159.jpg', '2022-10-01 20:42:39'),
(0, '1664637434.jpg', '2022-10-01 20:47:14'),
(0, '1664643734.jpg', '2022-10-01 22:32:14'),
(0, '1664809411.jpg', '2022-10-03 20:33:31'),
(0, '1664809847.jpg', '2022-10-03 20:40:47'),
(0, '1664810537.jpg', '2022-10-03 20:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `Floor` varchar(255) NOT NULL,
  `PlotNo` bigint(20) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Landmark` varchar(255) NOT NULL,
  `CTS` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `flat`, `Floor`, `PlotNo`, `Location`, `Landmark`, `CTS`) VALUES
(1, 'Anuj kumar', 'info@phpgurukul.com', 2147483647, 'Male', 'Graduate', 'H no- 18/1 Bihari puram phase-1 melrose bye pass'),
(2, 'Rahul', 'rahul@ttest.com', 8285703354, 'Male', 'Graduate', 'Test'),
(3, 'Rahul', 'rahul@ttest.com', 8285703354, 'Male', 'Graduate', 'Test'),
(4, '1', '4', 69, 'kanpur', '', 'r'),
(5, '1', '2', 4, 'Graduation', '6', '');

-- --------------------------------------------------------

--
-- Table structure for table `liveview`
--

CREATE TABLE `liveview` (
  `id` int(11) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `Floor` varchar(255) NOT NULL,
  `society` varchar(255) NOT NULL,
  `PlotNo` varchar(255) NOT NULL,
  `Road` varchar(255) NOT NULL,
  `sector` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Landmark` varchar(255) NOT NULL,
  `CTS` varchar(255) NOT NULL,
  `District` varchar(255) NOT NULL,
  `societyNo` varchar(255) NOT NULL,
  `Pin` varchar(255) NOT NULL,
  `Spl` varchar(255) NOT NULL,
  `Statau` varchar(255) NOT NULL,
  `Visit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(90) NOT NULL,
  `password` int(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('\0', 25),
('Ram', 25);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `Floor` varchar(255) NOT NULL,
  `society` varchar(255) NOT NULL,
  `PlotNo` varchar(255) NOT NULL,
  `Road` varchar(255) NOT NULL,
  `sector` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Landmark` varchar(255) NOT NULL,
  `CTS` varchar(255) NOT NULL,
  `District` varchar(255) NOT NULL,
  `societyNo` varchar(255) NOT NULL,
  `Pin` varchar(255) NOT NULL,
  `Spl` varchar(255) NOT NULL,
  `Statau` varchar(255) NOT NULL,
  `Visit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `flat`, `Floor`, `society`, `PlotNo`, `Road`, `sector`, `city`, `Location`, `Landmark`, `CTS`, `District`, `societyNo`, `Pin`, `Spl`, `Statau`, `Visit`) VALUES
(1, '1', '2', '4', 'Graduation', '6', '', '', '', '', '', '', '', '', '', '', ''),
(2, '1', '2', '4', 'MTech.', 'g', 'g', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userinsert`
--

CREATE TABLE `userinsert` (
  `id` int(11) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `Floor` varchar(255) NOT NULL,
  `society` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinsert`
--

INSERT INTO `userinsert` (`id`, `flat`, `Floor`, `society`) VALUES
(0, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liveview`
--
ALTER TABLE `liveview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinsert`
--
ALTER TABLE `userinsert`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `liveview`
--
ALTER TABLE `liveview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
