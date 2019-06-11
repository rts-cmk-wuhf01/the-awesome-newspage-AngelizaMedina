-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 11:15 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the_awesome_news_page`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(300) NOT NULL,
  `article` varchar(5000) NOT NULL,
  `FK_article_img` int(11) NOT NULL,
  `FK_article_category` int(11) NOT NULL,
  `article_date_time` varchar(20) NOT NULL,
  `FK_author_name` int(11) NOT NULL,
  `FK_author_img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `article_imgs`
--

CREATE TABLE `article_imgs` (
  `article_img_id` int(11) NOT NULL,
  `article_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `author_email` varchar(300) NOT NULL,
  `author_img` varchar(100) NOT NULL,
  `author_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category`) VALUES
(1, 'finance'),
(2, 'politics'),
(3, 'health'),
(4, 'travel'),
(5, 'breaking news'),
(6, 'business'),
(7, 'technology'),
(8, 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `FK_user` int(11) NOT NULL,
  `FK_user_img` int(11) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `FK_user`, `FK_user_img`, `comment`, `comment_date`, `comment_time`) VALUES
(1, 1, 1, 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.', '2018-04-15', '00:00:00'),
(2, 2, 2, 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.', '2018-04-15', '00:00:00'),
(3, 3, 3, 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.', '2018-04-15', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `employee__name` varchar(100) NOT NULL,
  `employee_img` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee__name`, `employee_img`, `job`) VALUES
(1, 'James Williams', 'img/bg-img/t1.jpg', 'Senior Editor'),
(2, 'Christinne Smith', 'img/bg-img/t2.jpg', 'Senior Editor'),
(3, 'Alicia Dormund', 'img/bg-img/t3.jpg', 'Senior Editor'),
(4, 'Steve Duncan', 'img/bg-img/t4.jpg', 'Senior Editor'),
(5, 'James Williams', 'img/bg-img/t5.jpg', 'Senior Editor'),
(6, 'Christinne Smith', 'img/bg-img/t6.jpg', 'Senior Editor'),
(7, 'Alicia Dormund', 'img/bg-img/t7.jpg', 'Senior Editor'),
(8, 'Steve Duncan', 'img/bg-img/t8.jpg', 'Senior Editor');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_img` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `account_creation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `password`, `user_img`, `birthday`, `account_creation_date`) VALUES
(1, 'Christian Williams', 'christian.williams@gmail.com', 'password', 'img/bg-img/30.jpg', '1985-06-11', '2019-06-01'),
(2, 'Sandy Doe', 'sandy.doe@gmail.com', 'password', 'img/bg-img/31.jpg', '1985-06-11', '2019-06-01'),
(3, 'Christian Williams', 'christian.williams2@gmail.com', 'password', 'img/bg-img/32.jpg', '1985-06-11', '2019-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `video_title` varchar(100) NOT NULL,
  `video_src` varchar(300) NOT NULL,
  `video_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `video_title`, `video_src`, `video_img`) VALUES
(1, 'video1', 'https://www.youtube.com/watch?v=5BQr-j3BBzU', 'img/bg-img/video1.jpg'),
(2, 'video2', 'https://www.youtube.com/watch?v=5BQr-j3BBzU', 'img/bg-img/video2.jpg'),
(3, 'video3', 'https://www.youtube.com/watch?v=5BQr-j3BBzU', 'img/bg-img/video3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `FK_author_name` (`FK_author_name`),
  ADD KEY `FK_author_img` (`FK_author_img`),
  ADD KEY `article_img` (`FK_article_img`),
  ADD KEY `FK_article_category` (`FK_article_category`);

--
-- Indexes for table `article_imgs`
--
ALTER TABLE `article_imgs`
  ADD PRIMARY KEY (`article_img_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `fk_user` (`FK_user`),
  ADD KEY `fk_user_img` (`FK_user_img`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_imgs`
--
ALTER TABLE `article_imgs`
  MODIFY `article_img_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
