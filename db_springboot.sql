-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 31, 2022 at 05:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_springboot`
--

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Role_User'),
(2, 'Role_User'),
(3, 'Role_User'),
(4, 'Role_User');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `star_meter` int(11) NOT NULL,
  `target_date` date NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `description`, `star_meter`, `target_date`, `user`) VALUES
(1, 'Belajar Spring MVC 3.19', 7, '2022-04-25', 'Herman'),
(2, 'Belajar Android Studio', 6, '2022-07-12', 'Budi'),
(3, 'Belajar Swift Programming', 9, '2022-09-30', 'Marsha'),
(4, 'Belajar Comptia Security+', 7, '2022-03-25', 'Jennifer'),
(5, 'Belajar Flutter', 8, '2022-01-03', 'Bagus'),
(12, 'Merapikan Meja', 2, '2022-09-12', 'Ben'),
(14, 'Bermain Pokemon', 3, '2022-03-26', 'Tom'),
(18, 'Membaca Novel', 6, '2022-01-01', 'John'),
(19, 'Nonton Konser', 7, '2022-06-03', 'Sheila'),
(20, 'Mengerjakan Tugas', 5, '2023-11-10', 'Tono'),
(21, 'Berenang', 4, '2022-01-21', 'Steven'),
(22, 'Belajar Python', 8, '2022-12-20', 'Herman'),
(23, 'Belajar Python', 7, '2022-12-01', 'Budi'),
(24, 'Belajar Spring MVC 3.19', 6, '2023-06-11', 'Steven'),
(25, 'Nonton Drakor', 5, '2022-07-07', 'Marsha'),
(26, 'Nonton Konser', 5, '2022-11-11', 'Budi'),
(27, 'Belajar Android Studio', 6, '2022-04-04', 'Kirman'),
(28, 'Nonton Konser', 4, '2022-06-29', 'Natasha'),
(29, 'Masak Pizza', 7, '2022-10-28', 'Lala'),
(30, 'Belajar Python', 8, '2021-12-23', 'Brenda'),
(31, 'Nonton Drama', 4, '2021-07-29', 'Wilson'),
(32, 'Masak Soto', 7, '2021-10-21', 'Joseph'),
(33, 'Belajar Python', 8, '2022-09-30', 'John'),
(34, 'Nonton Drama', 4, '2021-07-19', 'Steve'),
(35, 'Belajar SpringBoot', 9, '2021-05-10', 'Steven'),
(36, 'Mendengarkan Musik', 6, '2022-07-13', 'Jackson'),
(37, 'Belajar Masak', 4, '2022-03-03', 'Herman'),
(38, 'Belajar Spring MVC 3.19', 7, '2022-11-01', 'Jennifer'),
(39, 'Belajar Python', 7, '2022-05-05', 'Tom'),
(40, 'Nonton Drama', 4, '2021-11-30', 'Laras'),
(41, 'Belajar SpringBoot', 8, '2022-04-21', 'Ben'),
(42, 'Mendengarkan Musik', 6, '2021-09-09', 'Tony'),
(43, 'Belajar Masak', 4, '2022-01-31', 'Kirman'),
(44, 'Belajar Spring MVC 3.19', 7, '2021-09-18', 'Max'),
(45, 'Belajar Java', 7, '2022-08-10', 'Harry'),
(46, 'Nonton Drama', 4, '2021-07-30', 'Harry'),
(47, 'Belajar SpringBoot', 8, '2022-08-21', 'Laras'),
(48, 'Mendengarkan Musik', 6, '2022-04-11', 'Wilson'),
(49, 'Belajar Masak', 4, '2022-08-10', 'Bagus'),
(50, 'Belajar Spring MVC 3.19', 7, '2022-10-01', 'Peter'),
(51, 'Belajar Swift Programming', 7, '2022-08-09', 'Tom'),
(52, 'Belajar Swift Programming', 4, '2022-07-01', 'Laras'),
(53, 'Belajar SpringBoot', 8, '2022-12-11', 'Herman'),
(54, 'Belajar Comptia Security+', 6, '2022-05-05', 'Brenda'),
(55, 'Belajar Comptia Security+', 8, '2022-07-11', 'Joseph'),
(56, 'Belajar Comptia Security+', 7, '2022-02-23', 'Marsha'),
(57, 'Belajar Redhat', 7, '2021-08-09', 'Brenda'),
(58, 'Belajar Redhat', 4, '2021-07-01', 'Kirman'),
(59, 'Belajar Redhat', 8, '2021-12-11', 'Bagus'),
(60, 'Belajar Flutter', 6, '2022-05-05', 'Brenda'),
(61, 'Belajar Flutter', 8, '2022-07-11', 'Joseph'),
(62, 'Belajar Flutter', 7, '2022-02-23', 'Marsha'),
(63, 'Nonton Drama', 7, '2021-08-09', 'Brenda'),
(64, 'Nonton Drama', 4, '2021-07-01', 'Kirman'),
(65, 'Nonton Drama', 8, '2021-12-11', 'Bagus'),
(66, 'Belajar SpringBoot', 6, '2022-08-15', 'Lala'),
(67, 'Belajar SpringBoot', 8, '2022-03-21', 'Jackson'),
(68, 'Belajar SpringBoot1', 7, '2022-10-28', 'Steve'),
(69, 'Nonton Drama', 4, '2022-09-23', 'Max'),
(70, 'Belajar Swift Programming', 9, '2021-09-30', 'Ben'),
(71, 'Belajar Comptia Security+', 7, '2021-05-29', 'John'),
(72, 'Belajar Flutter', 8, '2022-10-00', 'Tiffany'),
(73, 'Belajar Spring MVC 3.19', 7, '2021-03-20', 'Leon'),
(74, 'Belajar SpringBoot', 7, '2022-02-25', 'Leon'),
(75, 'Nonton Drama', 5, '2022-05-20', 'Leon'),
(76, 'Masak Nasi', 4, '2022-08-09', 'Leon'),
(77, 'Belajar Spring MVC 3.19', 7, '2021-03-20', 'Bruce'),
(78, 'Belajar SpringBoot', 7, '2022-02-25', 'Bruce'),
(79, 'Nonton Drama', 5, '2022-05-20', 'Bruce'),
(80, 'Masak Nasi', 4, '2022-08-09', 'Bruce'),
(81, 'Belajar Spring MVC 3.19', 7, '2021-03-21', 'Sam'),
(82, 'Belajar SpringBoot', 7, '2022-02-26', 'Sam'),
(83, 'Nonton Drama', 5, '2022-05-21', 'Sam'),
(84, 'Masak Nasi', 4, '2022-08-01', 'Sam'),
(85, 'Belajar Python', 7, '2021-03-20', 'Clark'),
(86, 'Belajar Java', 7, '2022-02-25', 'Clark'),
(87, 'Belajar Masak', 5, '2022-05-20', 'Clark'),
(88, 'Nonton Superman', 4, '2022-08-09', 'Clark'),
(89, 'Belajar Java', 7, '2021-03-20', 'William'),
(90, 'Belajar Python', 7, '2022-02-25', 'William'),
(91, 'Nonton Konser', 5, '2022-05-20', 'William'),
(92, 'Belajar Sepeda', 4, '2022-08-09', 'William'),
(93, 'Belajar Java', 7, '2021-03-20', 'Ethan'),
(94, 'Belajar Python', 7, '2022-02-25', 'Ethan'),
(95, 'Nonton Konser', 5, '2022-05-20', 'Ethan'),
(96, 'Belajar Sepeda', 4, '2022-08-09', 'Ethan'),
(97, 'Belajar Java', 7, '2021-02-20', 'Jimmy'),
(98, 'Belajar Python', 7, '2022-03-25', 'Jimmy'),
(99, 'Nonton Konser', 5, '2022-06-20', 'Jimmy'),
(100, 'Belajar Sepeda', 4, '2022-09-01', 'Jimmy'),
(101, 'Belajar Java', 7, '2021-02-20', 'Bambang'),
(102, 'Belajar Python', 7, '2022-03-25', 'Madison'),
(103, 'Nonton Konser', 5, '2022-06-20', 'Kimberley'),
(104, 'Belajar Sepeda', 4, '2022-09-01', 'Kenta');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `password`, `username`) VALUES
(1, 'Nicholas', 'Phandinata', 'nicz', 'nicz'),
(2, 'Lei', 'Chu Xia', '$2a$10$oQlqbpC2SnAb0KaHn4oLb.jo0xI.9mJiDlzbhmDteNy1tLv4jH0Xm', 'leichuxiaaa'),
(4, 'Sana', 'Minatozaki', '$2a$10$kaklMttrF5IKiZPSnlHAg.SbbybjuRRGqmkn3rLulC4BTp1g/WufS', 'sanaaa'),
(5, 'Nicholas', 'Phandinata', '$2a$10$UxdLqvZV0Xtuxwi0s0E1QOPJkrMb0Z4A8sl80clr0yGryyJlajwrG', 'nicz2');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(4, 3),
(5, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKsb8bbouer5wak8vyiiy4pf2bx` (`username`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
