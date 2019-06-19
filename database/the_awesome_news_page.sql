-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 19. 06 2019 kl. 11:17:01
-- Serverversion: 10.1.30-MariaDB
-- PHP-version: 7.2.1

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
-- Struktur-dump for tabellen `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(300) NOT NULL,
  `article_excerpt` varchar(5000) NOT NULL,
  `FK_article_img` int(11) NOT NULL,
  `FK_article_category` int(11) NOT NULL,
  `article_date_time` datetime NOT NULL,
  `FK_author_name` int(11) NOT NULL,
  `FK_author_img` int(11) NOT NULL,
  `FK_article_thumbnail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `articles`
--

INSERT INTO `articles` (`article_id`, `article_title`, `article_excerpt`, `FK_article_img`, `FK_article_category`, `article_date_time`, `FK_author_name`, `FK_author_img`, `FK_article_thumbnail`) VALUES
(1, 'Financial news: A new company is born today at the stock market', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac. Nam id congue lectus, a venenatis massa. Maecenas justo libero, vulputate vel nunc id, blandit feugiat sem.', 1, 8, '2019-06-13 11:30:00', 1, 1, 16),
(2, 'Pompeo moves to reassure skeptical Dems in bid to be US diplomat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac. Nam id congue lectus, a venenatis massa. Maecenas justo libero, vulputate vel nunc id, blandit feugiat sem.', 2, 1, '2019-06-13 11:30:00', 1, 1, 0),
(3, 'Most investors think 2018 is the peak year for stocks', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac. Nam id congue lectus, a venenatis massa. Maecenas justo libero, vulputate vel nunc id, blandit feugiat sem.', 3, 3, '2019-06-13 11:30:00', 1, 1, 23),
(4, 'Facebook is offering facial recognition again in Europe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac. Nam id congue lectus, a venenatis massa. Maecenas justo libero, vulputate vel nunc id, blandit feugiat sem.\r\n\r\n', 4, 4, '2019-06-13 11:30:00', 1, 1, 22),
(5, 'Dummy Title\r\n(aside - single featured post)', 'Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.', 1, 8, '2019-06-19 07:00:00', 1, 1, 19),
(6, 'Dummy Title\r\n(aside - single featured post)', 'Sed a elit euismod augue semper congue sit amet ac sapien.', 2, 1, '2019-06-19 07:00:00', 1, 1, 20),
(7, 'Dummy Title\r\n(aside - single featured posts)', 'Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.', 3, 5, '2019-06-19 07:00:00', 1, 1, 21),
(8, 'Dummy Title\r\n(aside - single featured posts)', 'Augue semper congue sit amet ac sapien. Fusce consequat.', 4, 8, '2019-06-19 07:00:00', 1, 1, 22),
(9, 'Dummy Title\r\n(aside - single featured posts)', 'Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.', 1, 6, '2019-06-19 07:00:00', 1, 1, 23),
(10, 'Dummy Title\r\n(aside - single featured posts)', 'Augue semper congue sit amet ac sapien. Fusce consequat.', 2, 1, '2019-06-19 07:00:00', 1, 1, 24),
(11, 'Dummy Title 1\r\n(Editor\'s Pick)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 1, 3, '2018-02-16 00:00:00', 1, 1, 1),
(12, 'Dummy Title 2\r\n(Editor\'s Pick)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 2, 6, '2018-02-15 00:00:00', 1, 1, 2),
(13, 'Dummy Title 3\r\n(Editor\'s Pick)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 3, 8, '2018-02-14 00:00:00', 1, 1, 3),
(14, 'Dummy Title 4\r\n(Editor\'s Pick)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 4, 4, '2018-02-13 00:00:00', 1, 1, 4),
(15, 'Dummy Title 5\r\n(Editor\'s Pick)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 1, 3, '2018-02-12 00:00:00', 1, 1, 5),
(16, 'Dummy Title 6\r\n(Editor\'s Pick)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 2, 5, '2018-02-11 00:00:00', 1, 1, 6),
(17, 'Dummy Title 1\r\n(World news)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 1, 5, '2018-02-05 00:00:00', 1, 1, 7),
(18, 'Dummy Title 2\r\n(World news)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 2, 2, '2018-02-04 00:00:00', 1, 1, 8),
(19, 'Dummy Title 3\r\n(World News)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 3, 6, '2018-02-03 00:00:00', 1, 1, 9),
(20, 'Dummy Title 4\r\n(World News)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 4, 5, '2018-02-02 00:00:00', 1, 1, 10),
(21, 'Dummy Title 5\r\n(World News)', 'Orci varius natoque penatibus et magnis dis parturient montes.', 1, 8, '2018-02-01 00:00:00', 1, 1, 11),
(22, 'Dummy Title 1\r\n(Aside - Single Featured Post)', '...', 1, 1, '2019-06-20 00:00:00', 1, 1, 19),
(23, 'Dummy Title 2\r\n(Aside - Single Featured Post)', '...', 2, 2, '2019-06-20 00:00:00', 1, 1, 20),
(24, 'Dummy Title 3\r\n(Aside - Single Featured Post)', '...', 3, 3, '2019-06-20 00:00:00', 1, 1, 21),
(25, 'Dummy Title 4\r\n(Aside - Single Featured Post)', '...', 4, 4, '2019-06-20 00:00:00', 1, 1, 22),
(26, 'Dummy Title 5\r\n(Aside - Single Featured Post)', '...', 1, 5, '2019-06-20 00:00:00', 1, 1, 23),
(27, 'Dummy Title 6\r\n(Aside - Single Featured Post)', '...', 2, 6, '2019-06-20 00:00:00', 1, 1, 24),
(28, 'Dummy Title 7\r\n(Aside - Single Featured Post)', '...', 3, 7, '2019-06-20 00:00:00', 1, 1, 19),
(29, 'Dummy Title 8\r\n(Aside - Single Featured Post)', '...', 4, 8, '2019-06-20 00:00:00', 1, 1, 20);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `article_imgs`
--

CREATE TABLE `article_imgs` (
  `article_img_id` int(11) NOT NULL,
  `article_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `article_imgs`
--

INSERT INTO `article_imgs` (`article_img_id`, `article_img`) VALUES
(1, '/img/bg-img/25.jpg'),
(2, '/img/bg-img/26.jpg'),
(3, '/img/bg-img/27.jpg'),
(4, '/img/bg-img/28.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `article_thumbnails`
--

CREATE TABLE `article_thumbnails` (
  `article_thumbnail_id` int(11) NOT NULL,
  `article_thumbnail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `article_thumbnails`
--

INSERT INTO `article_thumbnails` (`article_thumbnail_id`, `article_thumbnail`) VALUES
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
(24, '/img/bg-img/24.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `author_email` varchar(300) NOT NULL,
  `author_img` varchar(100) NOT NULL,
  `author_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`, `author_email`, `author_img`, `author_description`) VALUES
(1, 'Christian Williams', 'christian.williams@gmail.com', '/img/bg-img/32.jpg', 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `categories`
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
-- Struktur-dump for tabellen `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `FK_user` int(11) NOT NULL,
  `FK_user_img` int(11) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_time` time NOT NULL,
  `FK_article_title` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `comments`
--

INSERT INTO `comments` (`comment_id`, `FK_user`, `FK_user_img`, `comment`, `comment_date`, `comment_time`, `FK_article_title`) VALUES
(1, 1, 1, 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.', '2018-04-15', '00:00:00', 0),
(2, 2, 2, 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.', '2018-04-15', '00:00:00', 0),
(3, 3, 3, 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.', '2018-04-15', '00:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `editors_picks`
--

CREATE TABLE `editors_picks` (
  `editors_pick_id` int(11) NOT NULL,
  `FK_editors_pick_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `editors_picks`
--

INSERT INTO `editors_picks` (`editors_pick_id`, `FK_editors_pick_article`) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `employee_img` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `employee_img`, `job`) VALUES
(1, 'William James', '/img/bg-img/t1.jpg', 'Senior Editor'),
(2, 'Alice Johnson', '/img/bg-img/t2.jpg', 'Senior Editor'),
(3, 'Kimberly Dormund', '/img/bg-img/t3.jpg', 'Senior Editor'),
(4, 'Steve Duncan', '/img/bg-img/t4.jpg', 'Senior Editor'),
(5, 'Jamie Smith', '/img/bg-img/t5.jpg', 'Senior Editor'),
(6, 'Christinne Smith', '/img/bg-img/t6.jpg', 'Senior Editor'),
(7, 'Sandy Doe', '/img/bg-img/t7.jpg', 'Senior Editor'),
(8, 'Eric Matthews', '/img/bg-img/t8.jpg', 'Senior Editor');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
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
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `password`, `user_img`, `birthday`, `account_creation_date`) VALUES
(1, 'Jamie Smith', 'jamie.smith@gmail.com', 'password', '/img/bg-img/29.jpg\r\n', '1985-06-11', '2019-06-01'),
(2, 'Ann Thompson', 'ann.thompson@gmail.com', 'password', '/img/bg-img/30.jpg', '1985-06-11', '2019-06-01'),
(3, 'Sandy Doe', 'sandy.doe@gmail.com', 'password', '/img/bg-img/31.jpg', '1985-06-11', '2019-06-01'),
(4, 'Christian Williams\r\n', 'christian.williams@gmail.com', 'password', '/img/bg-img/32.jpg', '1985-06-11', '2019-06-01');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `video_title` varchar(100) NOT NULL,
  `video_src` varchar(300) NOT NULL,
  `video_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `videos`
--

INSERT INTO `videos` (`video_id`, `video_title`, `video_src`, `video_img`) VALUES
(1, 'video1', 'https://www.youtube.com/watch?v=5BQr-j3BBzU', '/img/bg-img/video1.jpg'),
(2, 'video2', 'https://www.youtube.com/watch?v=5BQr-j3BBzU', '/img/bg-img/video2.jpg'),
(3, 'video3', 'https://www.youtube.com/watch?v=5BQr-j3BBzU', '/img/bg-img/video3.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `world_news`
--

CREATE TABLE `world_news` (
  `world_news_id` int(11) NOT NULL,
  `FK_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `world_news`
--

INSERT INTO `world_news` (`world_news_id`, `FK_article`) VALUES
(1, 17),
(2, 18),
(3, 19),
(4, 20),
(5, 21);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `FK_author_name` (`FK_author_name`),
  ADD KEY `FK_author_img` (`FK_author_img`),
  ADD KEY `article_img` (`FK_article_img`),
  ADD KEY `FK_article_category` (`FK_article_category`),
  ADD KEY `FK_article_thumbnail` (`FK_article_thumbnail`);

--
-- Indeks for tabel `article_imgs`
--
ALTER TABLE `article_imgs`
  ADD PRIMARY KEY (`article_img_id`);

--
-- Indeks for tabel `article_thumbnails`
--
ALTER TABLE `article_thumbnails`
  ADD PRIMARY KEY (`article_thumbnail_id`);

--
-- Indeks for tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indeks for tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks for tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `fk_user` (`FK_user`),
  ADD KEY `fk_user_img` (`FK_user_img`),
  ADD KEY `FK_article_title` (`FK_article_title`);

--
-- Indeks for tabel `editors_picks`
--
ALTER TABLE `editors_picks`
  ADD PRIMARY KEY (`editors_pick_id`),
  ADD KEY `article` (`FK_editors_pick_article`);

--
-- Indeks for tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks for tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indeks for tabel `world_news`
--
ALTER TABLE `world_news`
  ADD PRIMARY KEY (`world_news_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tilføj AUTO_INCREMENT i tabel `article_imgs`
--
ALTER TABLE `article_imgs`
  MODIFY `article_img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tilføj AUTO_INCREMENT i tabel `article_thumbnails`
--
ALTER TABLE `article_thumbnails`
  MODIFY `article_thumbnail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tilføj AUTO_INCREMENT i tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tilføj AUTO_INCREMENT i tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tilføj AUTO_INCREMENT i tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `editors_picks`
--
ALTER TABLE `editors_picks`
  MODIFY `editors_pick_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tilføj AUTO_INCREMENT i tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tilføj AUTO_INCREMENT i tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `world_news`
--
ALTER TABLE `world_news`
  MODIFY `world_news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
