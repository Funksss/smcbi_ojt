-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 06:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avojt101`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dos` date NOT NULL,
  `doe` date NOT NULL,
  `assigned_dept` varchar(20) NOT NULL,
  `summary` varchar(500) NOT NULL,
  `accomplishment` varchar(500) NOT NULL,
  `challenges` varchar(500) NOT NULL,
  `learnings` varchar(500) NOT NULL,
  `status` varchar(9) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `timestamp`, `dos`, `doe`, `assigned_dept`, `summary`, `accomplishment`, `challenges`, `learnings`, `status`, `image_path`) VALUES
(30, 3, '2024-05-06 07:31:50', '2024-04-30', '2024-05-11', 'IT', 'sadsad', 'sadsadas', 'dasdasdsa', 'dsa', 'Saved', NULL),
(32, 3, '2024-06-01 13:21:02', '2312-12-31', '1212-12-12', 'IT', '1213123ADA', 'SDASDASDAS', 'ASDASDASD', 'ASDASDAS', 'Submitted', NULL),
(33, 7, '2024-06-01 14:20:47', '1212-12-31', '0000-00-00', 'IT', 'asdasda', 'sdasdasd', 'adsadasd', 'asdasdasd', 'Submitted', NULL),
(34, 5, '2024-06-02 01:47:53', '1212-12-12', '1211-12-12', 'IT', '123', 'asd', 'asd', 'asdasd', 'Submitted', 'C:\\xampp\\htdocs\\SMCBI\\Php/uploads/440877468_8019699278062472_6630986457337767916_n.jpg'),
(35, 26, '2024-06-04 15:07:33', '1212-12-12', '1212-12-12', 'Accounting', 'adas', 'dasasd', 'asdasd', 'asdas', 'Pending', 'C:\\xampp\\htdocs\\SMCBI\\Php/uploads/FINAL-REPORT-BSIT-2B.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announcement`
--

CREATE TABLE `tbl_announcement` (
  `id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `PostedBy` varchar(255) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL,
  `DateEnd` date DEFAULT NULL,
  `isEnded` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE `timesheet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `event_type` varchar(3) NOT NULL,
  `total_hours` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timesheet`
--

INSERT INTO `timesheet` (`id`, `user_id`, `timestamp`, `event_type`, `total_hours`) VALUES
(85, 3, '2024-05-03 00:48:02', 'In', 0),
(86, 3, '2024-05-03 05:38:02', 'Out', 5),
(87, 3, '2024-05-04 01:08:14', 'In', 0),
(88, 1, '2024-05-04 02:10:38', 'In', 0),
(89, 3, '2024-05-06 06:26:53', 'In', 0),
(90, 3, '2024-05-06 08:27:07', 'Out', 2),
(91, 1, '2024-05-23 04:31:08', 'In', 0),
(92, 8, '2024-05-23 04:57:50', 'In', 0),
(93, 3, '2024-05-23 06:16:53', 'In', 0),
(94, 1, '2024-05-23 06:33:26', 'Out', 2),
(95, 5, '2024-05-28 06:44:39', 'In', 0),
(96, 5, '2024-05-29 00:28:05', 'In', 0),
(97, 2, '2024-06-01 11:34:50', 'In', 0),
(98, 8, '2024-06-01 11:39:15', 'In', 0),
(99, 7, '2024-06-01 11:39:42', 'In', 0),
(101, 7, '2024-06-01 14:11:50', 'Out', 3),
(102, 8, '2024-06-01 14:13:36', 'Out', 3);

-- --------------------------------------------------------

--
-- Table structure for table `trainees`
--

CREATE TABLE `trainees` (
  `id` int(11) NOT NULL,
  `ojt_id` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `age` int(2) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `contact_num` varchar(11) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `hours_to_render` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dos` date NOT NULL,
  `profile` text NOT NULL,
  `qoute` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainees`
--

INSERT INTO `trainees` (`id`, `ojt_id`, `user_id`, `first_name`, `middle_name`, `last_name`, `age`, `sex`, `contact_num`, `degree`, `university`, `hours_to_render`, `email`, `dos`, `profile`, `qoute`, `author`) VALUES
(1, 'SMCBIOJT-1', 1, 'Carl Jacob ', 'Cordova ', 'Quirante', 22, 'Male', '09772799104', 'Bachelor of Industrial Technology major in Computer Technology', 'St. Mary\'s College of Bansalan, Inc. ', 1800, 'quirante@gmail.com', '2023-09-11', '442479188_10161158956537980_1675266124347202834_n.jpg', 'Success is not final, failure is not fatal: It is the courage to continue that counts.', 'Carl Jacob Cordova Quirante'),
(3, 'SMCBIOJT-3', 3, 'Jen Gracia', 'no', 'Jen Graciano Gatmait', 27, 'Female', '09057306552', 'Bachelor of Science in Information Technology', 'St. Mary\'s College of Bansalan, Inc. ', 600, 'gatmaitan@gmail.com', '2024-04-08', '442479188_10161158956537980_1675266124347202834_n.jpg', 'Information technology is not just about machines and code; it\'s the symphony that orchestrates the dance of innovation and efficiency in the modern world.', 'Jen Graciano Gatmaitan '),
(5, 'SMCBIOJT-5', 5, 'Joana ', 'Daya', 'Reyes', 23, 'Female', '08888888888', 'Bachelor of Industrial Technology major in Computer Technology', 'St. Mary\'s College of Bansalan, Inc. ', 1800, 'reyes@gmail.com', '2024-05-01', '', 'Opportunities don\'t happen, you create them.', 'Joana Reyes'),
(7, 'SMCBIOJT-7', 7, 'John Bryan', 'Mondejar', 'Cantil', 43, 'Male', '44545', 'Bachelor of Industrial Technology major in Computer Technology', 'St. Mary\'s College of Bansalan, Inc. ', 435, 'cantil@gmail.com', '2024-05-06', '', 'You are never too old to set another goal or to dream a new dream.', ' Jhon Bryan Cantil\n'),
(8, 'SMCBIOJT-8', 8, 'Rhyven Jay ', 'Mondejar', 'Caballero', 22, 'Male', '13123323', 'Bachelor of Industrial Technology major in Computer Technology', 'St. Mary\'s College of Bansalan, Inc. ', 1232, 'caballero@gmail.com', '2024-05-06', '', 'Believe you can and you\'re halfway there.', 'Rhyven Jay Caballero');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `profile_image_path` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `status` varchar(12) DEFAULT NULL,
  `office_assigned` varchar(15) NOT NULL,
  `department` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `verification_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `profile_image_path`, `password`, `user_type`, `profile`, `status`, `office_assigned`, `department`, `first_name`, `last_name`, `middle_name`, `sex`, `dob`, `verification_code`) VALUES
(1, 'quirante@gmail.com', '../Assets/img/avatars/442449145_2737261523116878_5204041081271255444_n.jpg', '$2a$05$HCp6A/WvPLASuuYK6hszD.OmYMO8fZMzStehs/JmOfFYQSGusctjy', 'Trainee', '442449145_2737261523116878_5204041081271255444_n.jpg', 'Active', 'Bansalan', 'IT', 'C.Quirante', '', NULL, 'Male', NULL, 'C220459'),
(2, 'mondejar@gmail.com', '../Assets/img/avatars/av.jpg', '$2a$05$HCp6A/WvPLASuuYK6hszD.OmYMO8fZMzStehs/JmOfFYQSGusctjy', 'Admin', '../Assets/img/avatars/av.png', 'Active', 'Bansalan', 'IT', 'J.Mondejar', '', NULL, 'Male', NULL, 'C220459'),
(3, 'gatmaitan@gmail.com', '../Assets/img/avatars/440877468_8019699278062472_6630986457337767916_n.jpg', '$2a$05$HCp6A/WvPLASuuYK6hszD.OmYMO8fZMzStehs/JmOfFYQSGusctjy', 'Trainee', '440877468_8019699278062472_6630986457337767916_n.jpg', 'Active', 'Digos', 'IT', 'J.Gatmaitan', '', '', 'Female', NULL, 'C220459'),
(4, 'test@gmail.com', '../Assets/img/avatars/av.png', '$2a$05$HCp6A/WvPLASuuYK6hszD.OmYMO8fZMzStehs/JmOfFYQSGusctjy', 'Trainee', '../Assets/img/avatars/av.png', 'Active', 'Davao', 'IT', 'test', '', NULL, 'Female', NULL, 'C220459'),
(5, 'reyes@gmail.com', '../Assets/img/avatars/442500838_10161158956777980_4810020818170580971_n.jpg', '$2a$05$HCp6A/WvPLASuuYK6hszD.OmYMO8fZMzStehs/JmOfFYQSGusctjy', 'Trainee', '442500838_10161158956777980_4810020818170580971_n.jpg', 'Active', 'Tubod', 'IT', 'J.Reyes', '', NULL, 'Female', NULL, 'C220459'),
(7, 'cantil@gmail.com', '../Assets/img/avatars/442490481_10161158956737980_7541861034503376322_n.jpg', '$2a$05$HCp6A/WvPLASuuYK6hszD.OmYMO8fZMzStehs/JmOfFYQSGusctjy', 'Trainee', '442490481_10161158956737980_7541861034503376322_n.jpg', 'Active', 'Digos', 'IT', 'J.Cantil', '', NULL, 'Male', NULL, 'C220459'),
(8, 'caballero@gmail.com', '../Assets/img/avatars/442479188_10161158956537980_1675266124347202834_n.jpg', '$2a$05$HCp6A/WvPLASuuYK6hszD.OmYMO8fZMzStehs/JmOfFYQSGusctjy', 'Trainee', '442479188_10161158956537980_1675266124347202834_n.jpg', 'Active', 'Tubod', 'IT', 'J.Caballero', '', NULL, 'Male', NULL, 'C220459'),
(9, 'manilyn@gmail.com', '../Assets/img/avatars/428621592_1428394714433729_6551833151159117142_n.jpg', '$2a$05$HCp6A/WvPLASuuYK6hszD.OmYMO8fZMzStehs/JmOfFYQSGusctjy', 'Admin', '428621592_1428394714433729_6551833151159117142_n.jpg', 'Active', 'Digos', 'IT', 'Manilyn', '', NULL, 'Male', NULL, 'C220459'),
(23, 'yajipo2953@adrais.com', '	\n../Assets/img/avatars/5.png', '$2y$10$4pTKoAzYC21YPrn5faPGx.nyfu1.e23bzl48pH1Vczv.k.eD.OdBq', 'Trainee', '5.png', 'Active', 'Digos', 'IT', 'Karl', 'Daya', 'A.', 'Male', '1899-12-12', 'C187175'),
(24, 'degeyom986@crodity.com', '	\n../Assets/img/avatars/348356459_947571823357695_5961330921754375052_n.jpg', '$2y$10$5jnDwvi/LTGyfBuDmGcgWe49d4AH1zxMAdONIgC3NvF84nRZJdblC', 'Trainee', '348356459_947571823357695_5961330921754375052_n.jpg', 'Active', 'Digos', 'IT', 'Jesson', 'Mondejar', 'E.', 'Male', '2000-12-18', 'C227170'),
(25, 'degeyom986@crodity.com', NULL, '$2y$10$wDXAELGDP7Ms2qm2XA1w8esBwLlWzS.60NS6Pc6IQvwQ0GwYjCWXa', 'Trainee', '../Assets/img/avatars/av.png', 'Active', 'Digos', 'IT', '12312', '3123', '1232', 'Male', '1212-12-12', NULL),
(26, 'taley37746@avastu.com', '	\n../Assets/img/avatars/348356459_947571823357695_5961330921754375052_n.jpg', '$2y$10$cFz6YDfG9Q2qVHaWzOGz8.ywidZDWPWBHeLPIWwKSRE2VwijyVCvm', 'Trainee', '348356459_947571823357695_5961330921754375052_n.jpg', 'Active', 'Digos', 'IT', 'Jesson', 'Mondejar', 'E.', 'Male', '2000-12-18', 'C991144'),
(27, 'mepapi9104@adrais.com', '	\n../Assets/img/avatars/346088341_912458090055966_711155427657942026_n.jpg', '$2y$10$V/zAMku9M7SWLfgxXu6dNed/Y8SRXHdMz952c3Kc8E5xjFDJsHAkO', 'Trainee', '346037109_3435028116712966_497214967895633093_n.jpg', 'Active', 'Davao', 'IT', 'TEST', 'TEST', 'TSET', 'Male', '1212-12-12', 'C902491'),
(28, 'timeril828@acuxi.com', NULL, '$2y$10$hFmBQJ08ISVfGF7MPrrAGOflgnOnC0aysUa2tkwxgb/TKT9mBbgOy', 'Admin', '../Assets/img/avatarsav.png', 'Active', 'Bansalan', 'IT', 'Jesson Noel', 'Mondejar', 'E.', 'Male', '2000-12-18', 'C152431'),
(29, 'jajay65935@crodity.com', NULL, '$2y$10$przAGPIvAsvKncTX3lCLYOjyiDRR60qwCjLw/qJjWBw5YJ3TgygtG', 'Trainee', '../Assets/img/avatars/av.png', 'Active', 'Digos', 'IT', '12321', '123', '3123', 'Male', '3122-12-12', 'C647813');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainee_id` (`user_id`);

--
-- Indexes for table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainee_id` (`user_id`);

--
-- Indexes for table `trainees`
--
ALTER TABLE `trainees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timesheet`
--
ALTER TABLE `timesheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `trainees`
--
ALTER TABLE `trainees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD CONSTRAINT `timesheet_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `trainees`
--
ALTER TABLE `trainees`
  ADD CONSTRAINT `trainees_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
