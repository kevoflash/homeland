-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 11:30 AM
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
-- Database: `homeland`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(1, 'admin.first', 'admin.first@admin.com', '$2y$10$/YWPJk3JmZPOXUrWNfgRKOZUCHBXUy0KzsxT5m9BJKjqaz7EcGfnq', '2023-01-02 12:37:02'),
(2, 'admin.second', 'admin.second@gmail.com', '$2y$10$gIrJziqJc7Yf8TqOMbFXAeNdQrgyjtf0OGZLcFvtq4Ix9FYxHnbmW', '2023-01-02 13:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Executive', '2022-12-29 11:42:14'),
(2, 'Property-Land', '2022-12-29 11:42:14'),
(3, 'Commercial-Building', '2022-12-29 11:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `favs`
--

CREATE TABLE `favs` (
  `id` int(10) NOT NULL,
  `prop_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favs`
--

INSERT INTO `favs` (`id`, `prop_id`, `user_id`, `created_at`) VALUES
(8, 4, 1, '2023-01-03 17:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `props`
--

CREATE TABLE `props` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `sq_ft` varchar(30) NOT NULL,
  `office_type` varchar(200) NOT NULL,
  `year_built` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `price_sqft` int(30) NOT NULL,
  `description` text NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `props`
--

INSERT INTO `props` (`id`, `name`, `location`, `image`, `price`, `sq_ft`, `office_type`, `year_built`, `type`, `price_sqft`, `description`, `admin_name`, `created_at`) VALUES
(1, 'Pinnacle', ' 625 S. Berendo St Unit 607 Westlands, CA 90005', 'img_1.jpg', '12,500', '7,000', 'Executive', '2018', 'sale', 520, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda aperiam perferendis deleniti vitae asperiores accusamus tempora facilis sapiente, quas! Quos asperiores alias fugiat sunt tempora molestias quo deserunt similique sequi.\r\n\r\nNisi voluptatum error ipsum repudiandae, autem deleniti, velit dolorem enim quaerat rerum incidunt sed, qui ducimus! Tempora architecto non, eligendi vitae dolorem laudantium dolore blanditiis assumenda in eos hic unde.\r\n\r\nVoluptatum debitis cupiditate vero tempora error fugit aspernatur sint veniam laboriosam eaque eum, et hic odio quibusdam molestias corporis dicta! Beatae id magni, laudantium nulla iure ea sunt aliquam. A.', 'kelvin munene', '2022-12-28 09:51:49'),
(2, 'SDLC', ' 1 Moi Ave, Warners Bay, CBD', 'img_2.jpg', '2,265,500', '1,620', 'Property-Land', '2020', 'rent', 520, 'Conveniently iterate client-based relationships through compelling portals. Phosfluorescently deploy adaptive internal or \"organic\" sources without one-to-one content. Globally reconceptualize high-payoff deliverables after end-to-end core competencies. Efficiently scale holistic benefits for next-generation ', 'kelvin munene', '2022-12-28 09:51:49'),
(3, 'Karen-front', 'Karen, 798', 'img_8.jpg', '3,233,500\r\n', '620', 'Property-Land', '2021', 'rent', 520, 'Conveniently iterate client-based relationships through compelling portals. Phosfluorescently deploy adaptive internal or \"organic\" sources without one-to-one content. Globally reconceptualize high-payoff deliverables after end-to-end core competencies. Efficiently scale holistic benefits for next-generation ', 'kelvin munene', '2022-12-30 11:48:38'),
(4, 'Kilimani-business', 'Kilimani, 4546', 'img_7.jpg', '100,0000,00', '500', 'Executive', '2019', 'rent', 200, 'Proactively enable enterprise experiences whereas pandemic catalysts for change. Continually disseminate effective networks with process-centric scenarios. Objectively streamline sticky \"outside the box\" thinking vis-a-vis process-centric e-tailers. Conveniently incentivize cost effective leadership via unique users. Collaboratively evolve unique convergence after multidisciplinary e-services.\r\n\r\nAssertively reconceptualize flexible infomediaries whereas emerging best practices. Dynamically incubate high standards in convergence rather than standards compliant ideas. Credibly recaptiualize standardized \"outside the box\" thinking after proactive quality vectors. Holisticly administrate high standards in opportunities and premier niche.', 'admin.second', '2023-01-03 09:56:17'),
(5, 'Upper-hill', 'Upper-hill, 00200', 'img_2.jpg', '1000,2222', '500', 'Executive', '2020', 'rent', 400, 'Proactively foster bricks-and-clicks functionalities with cross functional e-commerce. Quickly communicate flexible initiatives without effective niches. Conveniently architect high standards in \"outside the box\" thinking whereas backend process improvements. Competently cultivate principle-centered benefits after seamless alignments. Collaboratively engage enterprise e-commerce for functional meta-services.\r\n\r\nSynergistically synergize principle-centered customer service for world-class ROI. Continually facilitate intuitive architectures with quality schemas. Distinctively predominate empowered architectures before adaptive expertise. Dynamically e-enable bricks-and-clicks data via B2C markets. Dramatically provide access to cross-platform growth strategies without dynamic.', 'admin.second', '2023-01-03 09:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `related_images`
--

CREATE TABLE `related_images` (
  `id` int(10) NOT NULL,
  `image` varchar(200) NOT NULL,
  `prop_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `related_images`
--

INSERT INTO `related_images` (`id`, `image`, `prop_id`, `created_at`) VALUES
(1, 'img_3.jpg', 1, '2022-12-30 10:27:51'),
(2, 'img_4.jpg', 1, '2022-12-30 10:27:51'),
(3, 'img_5.jpg', 2, '2022-12-30 10:27:51'),
(4, 'img_6.jpg', 2, '2022-12-30 10:27:51'),
(5, 'img_7.jpg', 3, '2022-12-30 10:27:51'),
(6, 'img_8.jpg', 3, '2022-12-30 10:27:51'),
(7, 'img_8.jpg', 4, '2022-12-30 10:27:51'),
(8, 'img_7.jpg', 4, '2022-12-30 10:27:51'),
(16, 'img_7.jpg', 5, '2022-12-30 10:27:51'),
(17, 'img_8.jpg', 5, '2022-12-30 10:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(40) NOT NULL,
  `prop_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `author` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `name`, `email`, `phone`, `prop_id`, `user_id`, `author`, `created_at`) VALUES
(4, 'kelvin munene', 'kelvinmugao@gmail.com', 21234433, 1, 2, 'kelvin munene', '2023-01-01 11:41:43'),
(5, 'kelvin munene', 'kelvinmugao@gmail.com', 22212343, 4, 1, 'admin.second', '2023-01-03 17:48:24');

-- --------------------------------------------------------
--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `created_at`) VALUES
(1, 'kelvin munene', 'kelvinmugao@gmail.com', '$2y$10$/YWPJk3JmZPOXUrWNfgRKOZUCHBXUy0KzsxT5m9BJKjqaz7EcGfnq', '2022-12-27 13:46:51'),
(2, 'user_second', 'user_second@gmail.com', '$2y$10$n1.Wwwd4zCcuxgC.T23HluDOv0OaoPeFO7E8wqXZ7G6p7LgtM7ivy', '2022-12-27 14:56:24');

--
-- Indexes for dumped tables
--

--
-- Table structure for table 'tenants'
--
CREATE TABLE `tenants` (
    `id` int(10) PRIMARY KEY, NOT NULL,
    `tenantName` varchar(200) NOT NULL,
    `companyName` varchar(200) NOT NULL,
    `numberOfEmployees` int NOT NULL,
    `startDate` DATE NOT NULL,
    `endDate` DATE NOT NULL,
    `rent` DECIMAL(10, 2) NOT NULL,
    `deposit` DECIMAL(10, 2) NOT NULL,
    `balance` DECIMAL(10, 2) NOT NULL
);

--
--Dumping data for table 'tenants'
--
INSERT INTO tenants ('id''tenantName','companyName','numberOfEmployees','startDate','endDate','rent', 'deposit', 'balance') VALUES
(1, 'john doe', 'Karen', '20', '2023-01-02 2023:06:02','50,000','100,000', '50,000'),

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favs`
--
ALTER TABLE `favs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `props`
--
ALTER TABLE `props`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_images`
--
ALTER TABLE `related_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3; 

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `favs`
--
ALTER TABLE `favs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `props`
--
ALTER TABLE `props`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `related_images`
--
ALTER TABLE `related_images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
