-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2019 at 10:19 AM
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
  `article_date_time` datetime NOT NULL,
  `FK_author_name` int(11) NOT NULL,
  `FK_author_img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `article_title`, `article`, `FK_article_img`, `FK_article_category`, `article_date_time`, `FK_author_name`, `FK_author_img`) VALUES
(1, 'Financial news: A new company is born today at the stock market', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac. Nam id congue lectus, a venenatis massa. Maecenas justo libero, vulputate vel nunc id, blandit feugiat sem.', 25, 8, '2019-06-12 09:35:00', 1, 1),
(2, 'Pompeo moves to reassure skeptical Dems in bid to be US diplomat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac. Nam id congue lectus, a venenatis massa. Maecenas justo libero, vulputate vel nunc id, blandit feugiat sem.', 26, 1, '2018-06-12 09:49:00', 1, 1),
(3, 'Most investors think 2018 is the peak year for stocks', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac. Nam id congue lectus, a venenatis massa. Maecenas justo libero, vulputate vel nunc id, blandit feugiat sem.', 27, 3, '2017-06-12 09:50:00', 1, 1),
(4, 'Facebook is offering facial recognition again in Europe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac. Nam id congue lectus, a venenatis massa. Maecenas justo libero, vulputate vel nunc id, blandit feugiat sem.\r\n\r\n', 28, 4, '2016-06-12 10:18:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `article_imgs`
--

CREATE TABLE `article_imgs` (
  `article_img_id` int(11) NOT NULL,
  `article_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article_imgs`
--

INSERT INTO `article_imgs` (`article_img_id`, `article_img`) VALUES
(1, '/img/bg-img/1.jpg'),
(2, '/img/bg-img/2.jpg'),
(3, '/img/bg-img/3.jpg'),
(4, '/img/bg-img/4.jpg'),
(5, '/img/bg-img/5.jpg'),
(6, '/img/bg-img/6.jpg'),
(7, '/img/bg-img/7.jpg'),
(8, '/img/bg-img/8.jpg'),
(9, '/img/bg-img/9.jpg'),
(10, '/img/bg-img/10.jpg'),
(11, '/img/bg-img/11.jpg'),
(12, '/img/bg-img/12.jpg'),
(13, '/img/bg-img/13.jpg'),
(14, '/img/bg-img/14.jpg'),
(15, '/img/bg-img/15.jpg'),
(16, '/img/bg-img/16.jpg'),
(17, '/img/bg-img/17.jpg'),
(18, '/img/bg-img/18.jpg'),
(19, '/img/bg-img/19.jpg'),
(20, '/img/bg-img/20.jpg'),
(21, '/img/bg-img/21.jpg'),
(22, '/img/bg-img/22.jpg'),
(23, '/img/bg-img/23.jpg'),
(24, '/img/bg-img/24.jpg'),
(25, '/img/bg-img/25.jpg'),
(26, '/img/bg-img/26.jpg'),
(27, '/img/bg-img/27.jpg'),
(28, '/img/bg-img/28.jpg'),
(29, '/img/bg-img/bg1.jpg'),
(30, '/img/bg-img/footer-add.gif'),
(31, 'hero-add.gif');

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

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`, `author_email`, `author_img`, `author_description`) VALUES
(1, 'Christian Williams', 'christian.williams@gmail.com', '/img/bg-img/32.jpg', 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.');

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
(1, 'Politics'),
(2, 'Breaking News'),
(3, 'Business'),
(4, 'Technology'),
(5, 'Health'),
(6, 'Travel'),
(7, 'Sports'),
(8, 'Finance');

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
(1, 'James Williams', '/img/bg-img/t1.jpg', 'Senior Editor'),
(2, 'Christinne Smith', '/img/bg-img/t2.jpg', 'Senior Editor'),
(3, 'Alicia Dormund', '/img/bg-img/t3.jpg', 'Senior Editor'),
(4, 'Steve Duncan', '/img/bg-img/t4.jpg', 'Senior Editor'),
(5, 'James Williams', '/img/bg-img/t5.jpg', 'Senior Editor'),
(6, 'Christinne Smith', '/img/bg-img/t6.jpg', 'Senior Editor'),
(7, 'Alicia Dormund', '/img/bg-img/t7.jpg', 'Senior Editor'),
(8, 'Steve Duncan', '/img/bg-img/t8.jpg', 'Senior Editor');

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
(1, 'Jamie Smith', 'jamie.smith@gmail.com', 'password', '/img/bg-img/29.jpg\r\n', '1985-06-11', '2019-06-01'),
(2, 'Ann Thompson', 'ann.thompson@gmail.com', 'password', '/img/bg-img/30.jpg', '1985-06-11', '2019-06-01'),
(3, 'Sandy Doe', 'sandy.doe@gmail.com', 'password', '/img/bg-img/31.jpg', '1985-06-11', '2019-06-01'),
(4, 'Christian Williams\r\n', 'christian.williams@gmail.com', 'password', '/img/bg-img/32.jpg', '1985-06-11', '2019-06-01');

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
(1, 'video1', 'https://www.youtube.com/watch?v=5BQr-j3BBzU', '/img/bg-img/video1.jpg'),
(2, 'video2', 'https://www.youtube.com/watch?v=5BQr-j3BBzU', '/img/bg-img/video2.jpg'),
(3, 'video3', 'https://www.youtube.com/watch?v=5BQr-j3BBzU', '/img/bg-img/video3.jpg');

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
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `article_imgs`
--
ALTER TABLE `article_imgs`
  MODIFY `article_img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
