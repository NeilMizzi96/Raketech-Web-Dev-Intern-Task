-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2019 at 10:45 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raketechtask`
--

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `changeID` int(11) NOT NULL,
  `changeType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `changes`
--

INSERT INTO `changes` (`changeID`, `changeType`) VALUES
(29, 'New Task Laundry Added'),
(30, 'New Task Cook Lunch Added'),
(31, 'New Task Wash Car Added'),
(32, 'Task Wash Car Deleted'),
(33, 'Task Laundry Deleted'),
(34, 'New Task Play Guitar Added'),
(35, 'Task Play Guitar Deleted'),
(36, 'New Task Play Guitar Added'),
(37, 'Task Cook Lunch Deleted'),
(38, 'Task Play Guitar Deleted'),
(39, 'New Task Do Something Added'),
(40, 'Task Do Something Changed To Do Anything'),
(41, 'New Task Play Guitar Added'),
(42, 'New Task Do Something Added'),
(43, 'Task Do Anything Deleted'),
(44, 'Task Do Something Deleted'),
(45, 'New Task Do Something Added'),
(46, 'Task Play Guitar Deleted'),
(47, 'New Task Play Guitar Added'),
(48, 'New Task Do Something Added'),
(49, 'Task Do Something Deleted'),
(50, 'New Task Run Added'),
(52, 'New Task Study Added'),
(53, 'Task Do Something Changed To Wash Dishes'),
(54, 'Task Run Changed To Jog'),
(55, 'Task Jog Deleted'),
(56, 'New Task Jog Added'),
(57, 'Task Jog Changed To Run'),
(58, 'New Task Crafts Added'),
(59, 'New Task Do Something Added'),
(60, 'New Task Walk Dog Added'),
(61, 'New Task Feed Cats Added'),
(62, 'Task Crafts Changed To Crafts'),
(63, 'Task Do Something Changed To Do Anything'),
(64, 'Task Feed Cats Changed To Feed Dogs'),
(65, 'Task Study Changed To Revise'),
(66, 'Task Study Changed To Revise'),
(67, 'Task Study status Changed to 3'),
(68, 'New Task Do Something Added'),
(69, 'Task Do Something Changed To Cook Lunch'),
(70, 'Task Do Something status Changed to 3'),
(71, 'Task Walk Dog Changed To Walk Status: 3'),
(72, 'Task Cook Lunch Deleted'),
(73, 'Task Run Deleted'),
(74, 'New Task Jog Added'),
(75, 'Task Jog Deleted'),
(76, 'New Task Watch TV Added'),
(77, 'Task Play Guitar Changed To Play Guitar Status: 1'),
(78, 'New Task Do Something Added'),
(80, 'Task Do Something Changed To Do Something Status: Completed'),
(81, 'Task Walk Changed To Walk Status: Completed'),
(82, 'Task Play Guitar Changed To Play Piano Status: To Do'),
(83, 'New Task Run Added'),
(84, 'Task Run Changed To Run Status: In Progress'),
(85, 'Task Crafts Changed To Arts Status: Completed'),
(86, 'Task Arts Changed To Arts Status: In Progress'),
(87, 'Task Run Changed To Run Status: Completed'),
(88, 'New Task Play Guitar Added'),
(89, 'Task Arts Deleted'),
(90, 'New Task Jog Added'),
(91, 'Task Jog Changed To Jog Status: In Progress'),
(93, 'New Task Sing Added'),
(94, 'Task Sing Changed To Sing Status: To Do'),
(95, 'Task Walk Changed To Walk Status: In Progress'),
(96, 'Task Do Anything Deleted'),
(97, 'Task Do Something Deleted'),
(98, 'New Task Shower Added'),
(101, 'Task Nap Deleted'),
(102, 'New Task Finish Task with 2 hours Added'),
(103, 'Task Finish Task Deleted'),
(104, 'New Task Finish Task Added. Task Hours: 2'),
(105, 'Task Finish Task Changed To Finish Task Status: To Do. Hours: 4'),
(106, 'New Task Jog Added. Task Hours: 2'),
(107, 'Task Finish Task Deleted'),
(108, 'Task Jog Deleted'),
(109, 'New Task Jog Added. Task Hours: 5'),
(110, 'Task Jog Deleted'),
(111, 'Task Run Changed To Run Status: In Progress Hours: 5'),
(112, 'Task Sing Changed To Sing Status: In Progress Hours: 5'),
(113, 'New Task Nap Added. Task Hours: 4'),
(114, 'New Task Gaming Added. Task Hours: 3'),
(115, 'Task Walk Deleted'),
(116, 'Task Run Deleted'),
(117, 'New Task Gardening Added. Task Hours: 2'),
(118, 'Task Gardening Changed To Gardening Status: Completed Hours: 2'),
(120, 'Task Nap Changed To Sleep Status: In Progress Hours: 4'),
(121, 'Task Feed Dogs Deleted'),
(122, 'New Task Feed Dogs Added. Task Hours: 1'),
(123, 'Task Play Guitar Changed To Play Guitar Status: In Progress Hours: 3'),
(124, 'New Task Finalize Task Added. Task Hours: 2'),
(125, 'Task Finalize Task Changed To Finish Task Status: To Do. Hours: 2'),
(126, 'Task Finish Task Changed To Finalize Task Status: In Progress Hours: 3'),
(127, 'Task Finalize Task Changed To Finish Task Status: Completed Hours: 3'),
(128, 'Task Wash Dishes Deleted'),
(129, 'Task Gaming Changed To Gaming Status: Completed Hours: 3'),
(130, 'New Task Babysit Added. Task Hours: 2'),
(131, 'Task Babysit Changed To Babysit Status: In Progress Hours: 2');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `statusID` int(11) NOT NULL,
  `statusName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`statusID`, `statusName`) VALUES
(1, 'To Do'),
(2, 'In Progress'),
(3, 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_ID` int(11) NOT NULL,
  `task_title` varchar(100) NOT NULL,
  `task_hours` tinyint(4) NOT NULL,
  `statusID` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_ID`, `task_title`, `task_hours`, `statusID`) VALUES
(42, 'Play Piano', 5, 1),
(46, 'Revise', 5, 3),
(54, 'Watch TV', 5, 1),
(57, 'Play Guitar', 3, 2),
(58, 'Jog', 5, 2),
(60, 'Sing', 5, 2),
(61, 'Shower', 1, 1),
(67, 'Sleep', 4, 2),
(68, 'Gaming', 3, 3),
(69, 'Gardening', 2, 3),
(70, 'Feed Dogs', 1, 1),
(71, 'Finish Task', 3, 3),
(72, 'Babysit', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD PRIMARY KEY (`changeID`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`statusID`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_ID`),
  ADD KEY `task_status` (`statusID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `changes`
--
ALTER TABLE `changes`
  MODIFY `changeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `statusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
