-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 11:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ovas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_list`
--

CREATE TABLE `appointment_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `schedule` date NOT NULL,
  `owner_name` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `category_id` int(30) NOT NULL,
  `breed` text NOT NULL,
  `age` varchar(50) NOT NULL,
  `service_ids` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_list`
--

INSERT INTO `appointment_list` (`id`, `code`, `schedule`, `owner_name`, `contact`, `email`, `address`, `category_id`, `breed`, `age`, `service_ids`, `status`, `date_created`, `date_updated`) VALUES
(20, 'OVAS-2022080001', '2022-08-19', 'rajesh', '7483632042', 'rajesh@gmail.com', 'mysore', 1, 'black dog', '1', '10', 1, '2022-08-19 14:07:58', '2022-08-19 14:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Active, 1 = Delete',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Dogs', 0, '2022-01-04 10:31:11', NULL),
(2, 'Cats', 0, '2022-01-04 10:31:38', NULL),
(3, 'cow', 1, '2022-01-04 10:32:02', NULL),
(4, 'Rabbits', 0, '2022-01-04 10:32:13', NULL),
(5, 'Birds', 0, '2022-01-04 10:32:47', NULL),
(6, 'test', 1, '2022-01-04 10:33:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_list`
--

CREATE TABLE `message_list` (
  `id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_list`
--

INSERT INTO `message_list` (`id`, `fullname`, `contact`, `email`, `message`, `status`, `date_created`) VALUES
(1, 'test', '09123456897', 'jsmith@sample.com', 'test', 1, '2022-01-04 17:26:19'),
(2, 'jhvdhf', 'ydegu', 'vhdwvhwd@gmail.com', 'vywdywdy', 0, '2022-07-24 12:02:31'),
(3, 'rajesh', '1234556', 'rajesh@gmail.com', 'my application still in pending', 1, '2022-07-27 00:36:02'),
(4, 'pratheep', '7483632042', 'rajesh@gmail.com', 'hi', 1, '2022-08-01 13:50:05'),
(5, 'pratheep', '7483632042', 'raju@email.com', 'hello', 0, '2022-08-13 11:36:34'),
(6, 'rajesh', '7483632042', 'rajesh@gmail.com', 'hello', 1, '2022-08-19 14:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email`, `phone`, `password`, `address`, `gender`) VALUES
('Aditya', '', '7483632042', 'a123', 'skm', ''),
('Akshar', 'pratheepparas12366@gmail.com', '7483632042', 'as', 'sgr', ''),
('Pratheep', 'pratheepparas123@gmail.com', '7483632042', 'Pr123', 'mysore', 'male'),
('Akshar', 'pratheepparas1asdasd2366@gmail', '111', 'asda', 'sgr', ''),
('rajesh', 'rajesh@gmail.com', '7483632042', 'pr123', 'mysore', '');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `code` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pet` varchar(20) NOT NULL,
  `breed` varchar(10) NOT NULL,
  `age` varchar(10) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `discription` varchar(100) NOT NULL,
  `medicine` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`code`, `name`, `pet`, `breed`, `age`, `mobileno`, `email`, `address`, `discription`, `medicine`) VALUES
('OVAS-2022080001', 'rajesh', 'dog', 'black dog', '1', '7483632042', 'rajesh@gmail.com', 'mysore', 'your dog haveing hiper tension', 'amg25');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `category_ids` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `fee` float NOT NULL DEFAULT 0,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `category_ids`, `name`, `description`, `fee`, `delete_flag`, `date_created`, `date_updated`) VALUES
(9, '2', 'Anti-Rabies', '<p>The disease is carried in the saliva. Rabies vaccinations are required&nbsp; for cats. Even if you have an indoor cat, they should be vaccinated in case they get out, or by chance an animal were to get into your house. In nearly all cases, an animal will need to be put down if it has been infected with rabies<br></p>', 125, 0, '2022-08-19 12:40:35', NULL),
(10, '5,2,1,4', 'Check-up', '<p>It is recommended to take your pet to a veterinarian every six months. Some vets also check their daily food, routine, and exposure. An adult pet depending on the type of breed, between 1-7 years should be taken once a year for a routine checkup just as in the case with humans.<br></p>', 250, 0, '2022-08-19 12:41:17', NULL),
(11, '1', 'door step', '<p>Some pet owners not haveing vehicles to carry pet to hospitals for check up.pet owners who not haveing vehicles can also book appointment for doorstep .<br></p>', 500, 0, '2022-08-19 12:41:53', NULL),
(12, '2,1', 'Vaccination', '<p>Vaccines help prevent many illnesses that affect pets. Vaccinating your pet has long been considered one of the easiest ways to help him live a long, healthy life. Not only are there different vaccines for different diseases, there are different types and combinations of vaccines. Vaccination is a procedure that has risks and benefits that must be weighed for every pet relative to his lifestyle and health. Your veterinarian can determine a vaccination regime that will provide the safest and best protection for your individual animal.<br></p>', 250, 0, '2022-08-19 12:42:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Veterinary Appointment System '),
(6, 'short_name', 'OVAS - PHP'),
(11, 'logo', 'uploads/logo-1641262650.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1659796828.png'),
(15, 'content', 'Array'),
(16, 'email', 'info@vetclinic.com'),
(17, 'contact', '7483934705/7483632042'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', ' 2nd main 5th cross  vidyaranyapuram mysore-570025'),
(23, 'max_appointment', '10'),
(24, 'clinic_schedule', '9:00 AM - 5:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1639468007', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-14 15:47:08'),
(3, 'Claire', NULL, 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', 'uploads/avatar-3.png?v=1639467985', NULL, 2, 1, '2021-12-14 15:46:25', '2021-12-14 15:46:25'),
(4, 'pratheep', NULL, 'kumar', 'pratheep', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 1, 1, '2022-07-25 14:25:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_list`
--
ALTER TABLE `message_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_list`
--
ALTER TABLE `appointment_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message_list`
--
ALTER TABLE `message_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD CONSTRAINT `appointment_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
