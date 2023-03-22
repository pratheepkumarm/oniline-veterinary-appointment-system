-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2022 at 08:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

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
(1, 'OVAS-2022010001', '2022-01-04', 'John D Smith', '0912345789', 'jsmith@sample.com', 'Here City', 1, 'German Shepherd', '5 mos. old', '3,1', 1, '2022-01-04 15:55:21', '2022-07-26 19:37:51'),
(2, 'OVAS-2022010002', '2022-01-05', 'Claire Blake', '09123456897', 'cblake@sample.com', 'There City', 1, 'Pug', '6 mos. old', '3,1', 2, '2022-01-04 15:56:55', '2022-07-26 23:38:54'),
(3, 'OVAS-2022010003', '2022-01-05', 'Mark Cooper', '094567894152', 'mcooper@gmail.com', 'Here', 2, 'Persian Cat', '1 yr. old', '5,3', 0, '2022-01-04 15:58:23', NULL),
(4, 'OVAS-2022010004', '2022-01-05', 'Samantha Miller', '0995564887', 'smiller@sample.com', 'Sample Address', 2, 'Maine Coon', '7 mos.', '5,1', 0, '2022-01-04 15:59:51', NULL),
(6, 'OVAS-2022010006', '2022-01-06', 'Jane Park', '09888754466', 'jpark@gmail.com', 'Sample address', 2, 'Ragdoll', '8 mos', '5,1', 1, '2022-01-04 16:27:54', '2022-01-04 17:17:55'),
(8, 'OVAS-2022070001', '2022-07-25', 'dwfhwvdh', 'tfyu', 'dtyhgj', 'dfhwvhwv', 1, 'lab', '1', '2', 1, '2022-07-24 12:00:01', '2022-07-24 12:01:11'),
(9, 'OVAS-2022070002', '2022-07-25', 'asc', '1234556', 'rgerf', 'sdfgftu5u', 1, 'der', '1', '4,1', 0, '2022-07-24 12:14:07', NULL),
(10, 'OVAS-2022070003', '2022-07-25', '', '', '', '', 1, '', '1', '3', 0, '2022-07-24 12:23:50', NULL),
(11, 'OVAS-2022070004', '2022-07-25', '', '', '', '', 1, '', '', '8', 0, '2022-07-24 12:28:06', NULL),
(12, 'OVAS-2022070005', '2022-07-26', 'asc', '1234556', 'ABC@GMAIL.COM', 'hgjhg', 1, 'lab', '1', '4', 1, '2022-07-26 18:42:49', '2022-07-26 18:44:02'),
(13, 'OVAS-2022070006', '2022-07-26', 'Pratheep kumar M', '1234556', 'ABCd@GMAIL.COM', 'mysore', 1, 'lab', '1', '4', 1, '2022-07-26 19:59:05', '2022-07-26 20:00:10'),
(14, 'OVAS-2022070007', '2022-07-27', 'rajesh', '1234556', 'rajesh@gmail.com', 'shivamogga', 1, 'pug', '2', '3', 1, '2022-07-27 00:33:03', '2022-07-27 00:34:58'),
(15, 'OVAS-2022070008', '2022-07-29', 'prathepp', '142365879', 'pratheepp@gamil.com', 'mysore', 1, 'huksy', '3', '4', 0, '2022-07-29 00:13:56', NULL),
(16, 'OVAS-2022080001', '2022-08-01', 'prathepp', '7483632042', 'rajesh@gmail.com', 'mysore', 1, 'lab', '3', '4', 1, '2022-08-01 13:47:04', '2022-08-01 13:49:01'),
(18, 'OVAS-2022080002', '2022-08-10', 'prathepp', '7483632042', 'rajesh@gmail.com', 'mysore', 2, 'huksy', '3', '3', 0, '2022-08-10 22:40:28', NULL),
(19, 'OVAS-2022080003', '2022-08-13', 'pratheeka', '7483632042', 'pratheeka@gmail.com', 'my', 1, 'huksy', '1', '2', 1, '2022-08-13 11:35:09', '2022-08-13 11:38:25');

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
(5, 'pratheep', '7483632042', 'raju@email.com', 'hello', 0, '2022-08-13 11:36:34');

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
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email`, `phone`, `password`, `address`, `gender`) VALUES
('prathee', 'oaftry1', 'jhsy', 'jhdg', ' jkdhh', ''),
('pratheep', 'prathee@gamil.com', '976439623', '1234', ' uey', ''),
('pratheep kumar M', 'pratheep@gmail.com', '12345678', '12345', ' mysore', ''),
('pratheep kumar M', 'pratheep@gmail.com', '12345678', '12345', ' mysore', ''),
('pratheep kumar M', 'pratheep@gmail.com', '12345678', '12345', ' mysore', ''),
('pratheep kumar M', 'pratheep@gmail.com', '12345678', '12345', ' mysore', ''),
('rajesh', 'rajesh@gmail.com', '12345678', '123456', ' shivamogga', ''),
('chethu', 'chetu@gamil.com', '11111111', '987', ' a', ''),
('pratheep', 'raju@email.com', '111111111', '12345678', ' ghg', ''),
('pratheep m', 'rajesh@gmail.com', '11111111', '1234', ' abihdf', ''),
('pratheep', 'raju@email.com', '11111111', '1234567789', ' abc', ''),
('pratheep', 'raju@email.com', '11111111', '1234567789', ' abc', ''),
('pratheep kumar M', 'rajesh@gmail.com', '11111111', 'Pm1', '', 'female'),
('abc', 'rajesh12@gmail.com', '8050415560', 'Ab1', 'ss', 'male'),
('pratheeka', 'pratheeka@gmail.com', '7483632042', 'Pr123', 'myso', 'male');

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
('OVAS-2022010002', 'Pratheep ', 'dog', 'huksy', '3', '11111223335', 'raju@email.com', 'sadfsafsdadsa', 'dczzccz', 'zccz'),
('	OVAS-2022070008', 'pratheep ', 'dog', 'huksy', '3', '7483632042', 'raju@email.com', 'mysure', 'hgfhgfhfhfhfhhfhfghfghfhvcbcvbddgfdfdghghgyutgnvnbvbncvbcvcv', 'bncbcgffdf'),
('OVAS-2022010001', 'rajesh', 'dog', 'lab', '3', '11111223335', 'rajesh12@gmail.com', 'mysure', 'hi', 'dollo');

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
(1, '2,1', 'Immunization', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis quam tellus. Nam elit lectus, lobortis vitae eros a, condimentum pretium eros. Sed mauris nulla, aliquam vel hendrerit ac, aliquam quis mi. In non purus ac metus luctus aliquam. Praesent porta turpis eget molestie pellentesque. In fringilla est vitae sem imperdiet eleifend. Praesent lacinia arcu elit, quis venenatis nisl sollicitudin nec. Pellentesque tempor est nec porta mattis. In hendrerit eleifend felis, quis fermentum dolor eleifend quis. Maecenas dolor magna, luctus id blandit sit amet, bibendum id lacus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Nunc pellentesque nibh vel sapien lobortis tempus. In pretium nulla felis, cursus bibendum augue pretium at. Integer eget dignissim libero. Praesent laoreet, purus eu vehicula hendrerit, felis leo lobortis mi, at aliquet nisl est a dolor. Duis eleifend pharetra augue ut finibus. Curabitur id lorem lobortis, tempus mauris quis, fermentum nunc. Vestibulum eu euismod diam, fermentum vulputate elit. Aenean eu odio tincidunt, semper nulla eget, pretium eros. In ullamcorper fringilla faucibus. Curabitur aliquam leo ex, in cursus arcu commodo eu. Vivamus in nulla id massa efficitur rhoncus. Ut sagittis arcu ipsum, at posuere eros pretium nec. Nam neque mauris, molestie eu euismod a, vulputate at diam. Nullam mattis purus tortor, rutrum fringilla lorem eleifend nec. Vestibulum vitae purus sit amet leo imperdiet tristique at ac orci.</p>', 1500, 0, '2022-01-04 10:59:49', '2022-01-04 11:09:22'),
(2, '2,1', 'Vaccination', '<p><span style=\"color: rgb(39, 38, 38); font-family: &quot;Museo Slab 300&quot;, &quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, &quot;Trebuchet MS&quot;, sans-serif; font-size: 18px;\">Vaccines help prevent many illnesses that affect pets. Vaccinating your pet has long been considered one of the easiest ways to help him live a long, healthy life. Not only are there different vaccines for different diseases, there are different types and combinations of vaccines. Vaccination is a procedure that has risks and benefits that must be weighed for every pet relative to his lifestyle and health. Your veterinarian can determine a vaccination regime that will provide the safest and best protection for your individual animal.</span><br></p>', 1700, 0, '2022-01-04 11:14:24', '2022-07-31 16:34:06'),
(3, '5,2,1,4', 'Check-up', '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">It is recommended to take your pet to a veterinarian&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">every six months</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Some vets also check their daily food, routine, and exposure. An adult pet depending on the type of breed, between 1-7 years should be taken once a year for a routine checkup just as in the case with humans.</span><br></p>', 500, 0, '2022-01-04 11:15:09', '2022-07-31 16:27:02'),
(4, '1', 'door step', '<p><span style=\"color: rgb(0, 0, 0); font-size: 1rem; text-align: justify;\">Some pet owners not haveing vehicles to carry pet to hospitals for check up</span><span style=\"color: rgb(0, 0, 0); font-size: 1rem; text-align: justify;\">.</span><span style=\"color: rgb(0, 0, 0); text-align: justify; font-size: 1rem;\">pet owners who not haveing vehicles can also book appointment for doorstep .</span></p><p><br></p>', 500, 0, '2022-01-04 11:16:24', '2022-07-31 16:29:01'),
(5, '2', 'Anti-Rabies', '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">The disease is carried in the saliva.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Rabies vaccinations are required&nbsp; for cats</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Even if you have an indoor cat, they should be vaccinated in case they get out, or by chance an animal were to get into your house. In nearly all cases, an animal will need to be put down if it has been infected with rabies</span><br></p>', 250, 0, '2022-01-04 11:16:38', '2022-07-31 16:24:30'),
(6, '4', 'deleted', '<p>test</p>', 123, 1, '2022-01-04 11:17:34', '2022-01-04 11:17:46'),
(7, '', 'fluee-500rs', '', 0, 1, '2022-07-24 12:26:29', '2022-07-31 16:22:33'),
(8, '1', 'fluee-500rs', '', 0, 1, '2022-07-24 12:26:38', '2022-07-31 16:22:37');

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
(17, 'contact', '09854698789 / 78945632'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'XYZ Street, There City, Here, 2306'),
(23, 'max_appointment', '11'),
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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message_list`
--
ALTER TABLE `message_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
