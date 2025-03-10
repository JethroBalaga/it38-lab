-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2025 at 08:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it38c-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`login_id`, `user_id`, `login_time`) VALUES
(1, 1, '2025-02-13 15:29:40'),
(2, 2, '2025-02-13 15:30:15'),
(3, 1, '2025-02-13 15:30:28'),
(4, 3, '2025-03-10 15:05:52'),
(5, 4, '2025-03-10 15:07:07'),
(6, 3, '2025-03-10 15:09:33'),
(7, 3, '2025-03-10 15:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `last_login`, `created_at`) VALUES
(1, 'Admin', '$2y$10$nsuFjY4boXS4Rlp1n8o.Q.A/qAfMNyX22pFkdNq6kcl2u620jsskq', 'admin', '2025-02-13 15:30:28', '2025-02-13 07:29:32'),
(2, 'User', '$2y$10$NeYG8ccllpLnGG6ChY/V8eDT46jsWU3fII2z3xYrG/343uCozs7mG', 'user', '2025-02-13 15:30:15', '2025-02-13 07:30:07'),
(5, 'sarah', '$2y$10$pXYxT4xsELeSEm65oijktekGTf9ZgXG03VuKckq/pny5wHntv9Svi', 'user', NULL, '2025-03-10 07:26:15'),
(6, 'jetjet', '$2y$10$pxH/0R8CB0xBDBbABuLOHu7v7F3/WLtNwy1z64pitlu3uFxfI6Qai', 'admin', NULL, '2025-03-10 07:26:27'),
(7, 'arky', '$2y$10$ufiQgEShGBM/i2LKdda74u6p9xpdYkV9csLR8.LG5bLZX0z7hbb7y', 'admin', NULL, '2025-03-10 07:26:42'),
(8, 'lebron', '$2y$10$x4.vShTUEsecjle4db0.Gu4NToOQc1G0PKYYQBHfLA5B8mDrRtBRO', 'user', NULL, '2025-03-10 07:27:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD CONSTRAINT `tbl_attendance_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
