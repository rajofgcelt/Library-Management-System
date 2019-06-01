-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2018 at 09:16 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pwd`, `email`) VALUES
(1, 'admin', '1234', 'sourav.cse.gcelt@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` int(4) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `available` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `title`, `author`, `price`, `publisher`, `available`) VALUES
(1001, 'c plus plus', 'yashwant', 250, 'krishna', 10),
(1002, 'C LANGUAGE', 'KARAN KSOHTI', 10000, 'Gadage Publication', 5),
(1003, 'business communication', 'neha singh', 150, 'kirti', 0);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `bookId` int(4) NOT NULL,
  `issueId` int(3) NOT NULL,
  `issueDate` datetime NOT NULL,
  `returnBookId` int(4) NOT NULL,
  `returnId` int(3) NOT NULL,
  `returnDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`bookId`, `issueId`, `issueDate`, `returnBookId`, `returnId`, `returnDate`) VALUES
(0, 0, '2019-05-31 12:32:07', 1001, 2, '2019-05-31 12:33:51'),
(0, 0, '2019-06-01 05:38:38', 1002, 2, '2019-06-01 05:41:16'),
(1003, 4, '2019-06-01 05:39:26', 0, 0, '0000-00-00 00:00:00'),
(1001, 1, '2019-09-26 10:43:02', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `Id` int(3) NOT NULL,
  `FirstName` varchar(10) NOT NULL,
  `LastName` varchar(10) NOT NULL,
  `Position` varchar(10) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Course` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`Id`, `FirstName`, `LastName`, `Position`, `Mobile`, `Email`, `Course`) VALUES
(1, 'sourav', 'mahata', 'student', '9002303832', 'sourav.cse.gcelt@gmail.com', 'bca'),
(2, 'rajkumar', 'de', 'student', '9083493065', 'rajkumar.cse.gcelt@gmail.com', 'bba'),
(3, 'brijesh', 'sir', 'faculty', '9854232322', 'brijesh5@gmail.com', 'management'),
(4, 'shagufta', 'rahman', 'student', '9843456322', 'srahman1@gmail.com', 'information technology'),
(5, 'pallab', 'nandi', 'student', '8745324652', 'pallab.nandi789@gmail.com', 'bca'),
(6, 'samrat', 'bar', 'student', '8624991829', 'barsamrat@gmail.com', 'Computer Science');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
