-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2023 at 01:09 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `security`
--

-- --------------------------------------------------------

--
-- Table structure for table `facilitators`
--

CREATE TABLE `facilitators` (
  `F_Id` int(11) NOT NULL,
  `F_Names` text NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilitators`
--

INSERT INTO `facilitators` (`F_Id`, `F_Names`, `Email`, `Password`) VALUES
(1, 'Isaac', 'isaac@gmail.com', 'Isaac@123'),

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Fe_Id` int(11) NOT NULL,
  `F_Id` int(11) NOT NULL,
  `Stu_Id` int(11) NOT NULL,
  `Re_Id` int(11) NOT NULL,
  `Feedbacks` varchar(255) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `Re_Id` int(11) NOT NULL,
  `Stu_Id` int(11) NOT NULL,
  `F_Id` int(11) NOT NULL,
  `Requests_Content` varchar(255) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`Re_Id`, `Stu_Id`, `F_Id`, `Requests_Content`, `Time`) VALUES
(1, 22, 2, 'hellooooooooo', '2023-10-10 21:04:57'),
(2, 22, 1, 'Hello Sir', '2023-10-10 21:04:57'),


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Stu_Id` int(11) NOT NULL,
  `Names` text NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Passwords` varchar(255) NOT NULL,
  `Roles` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Stu_Id`, `Names`, `Email`, `Passwords`, `Roles`) VALUES


(25, 'Mimi', 'mimi@gmail.com', 'mimi', 'Student'),
(30, 'nelsa', 'nelsa@gmail.com', '$2y$10$SSY3edW6cjjMQqGjaSzDPeZ2q.5rW3WpzywHSkt.lKqKVwy3t0k1a', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `facilitators`
--
ALTER TABLE `facilitators`
  ADD PRIMARY KEY (`F_Id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Fe_Id`),
  ADD KEY `Re_Id` (`Re_Id`),
  ADD KEY `F_Id` (`F_Id`),
  ADD KEY `Stu_Id` (`Stu_Id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`Re_Id`),
  ADD KEY `F_Id` (`F_Id`),
  ADD KEY `Sender_Id` (`Stu_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Stu_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `facilitators`
--
ALTER TABLE `facilitators`
  MODIFY `F_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Fe_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `Re_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Stu_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`Re_Id`) REFERENCES `requests` (`Re_Id`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`F_Id`) REFERENCES `facilitators` (`F_Id`),
  ADD CONSTRAINT `feedback_ibfk_3` FOREIGN KEY (`Stu_Id`) REFERENCES `users` (`Stu_Id`);

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`F_Id`) REFERENCES `facilitators` (`F_Id`),
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`Stu_Id`) REFERENCES `users` (`Stu_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
