-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2018 at 01:08 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `comment_subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `comment_text` text CHARACTER SET utf8 NOT NULL,
  `comment_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_author` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_subject`, `comment_text`, `comment_created`, `comment_author`) VALUES
  (1, 'esimene kommentaar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ultricies sit amet urna at hendrerit. Nullam ultricies dolor ante. Nunc sodales lacus ut ultrices congue. Nulla auctor eros ac eros consectetur volutpat. Nulla luctus velit vel urna lobortis pulvinar. Duis hendrerit massa ut ligula tristique, nec scelerisque metus suscipit. ', '2018-02-14 11:51:03', 'Andres'),
  (2, 'Äge!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ultricies sit amet urna at hendrerit. Nullam ultricies dolor ante. Nunc sodales lacus ut ultrices congue. Nulla auctor eros ac eros consectetur volutpat. Nulla luctus velit vel urna lobortis pulvinar. Duis hendrerit massa ut ligula tristique, nec scelerisque metus suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et tellus ex. Morbi mattis pellentesque iaculis. Nullam varius vestibulum dictum. Integer semper risus feugiat iaculis commodo. Morbi gravida et nibh vel tincidunt. Fusce vulputate eleifend nibh in feugiat. Fusce non iaculis nibh, a scelerisque lectus. ', '2018-02-14 11:51:37', 'Jüri'),
  (3, 'Nii vinge polegi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', '2018-02-14 11:52:01', 'Mari'),
  (4, 'Piim on hea', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ultricies sit amet urna at hendrerit. Nullam ultricies dolor ante. Nunc sodales lacus ut ultrices congue. Nulla auctor eros ac eros consectetur volutpat. Nulla luctus velit vel urna lobortis pulvinar. Duis hendrerit massa ut ligula tristique, nec scelerisque metus suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et tellus ex. Morbi mattis pellentesque iaculis. Nullam varius vestibulum dictum. Integer semper risus feugiat iaculis commodo. Morbi gravida et nibh vel tincidunt. Fusce vulputate eleifend nibh in feugiat. Fusce non iaculis nibh, a scelerisque lectus.\r\n\r\nIn hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut venenatis tempus commodo. Donec non tincidunt nibh. Maecenas fermentum interdum lobortis. Vivamus facilisis egestas porta. Cras nec lectus tellus. Sed ut ipsum nec ex sodales faucibus vel aliquam sapien. Duis nec urna a neque porta mattis sodales semper arcu. Nam egestas urna velit. Sed aliquet augue urna, eu lacinia justo cursus at. Morbi viverra erat tincidunt, efficitur leo vitae, dapibus nibh. ', '2018-02-14 11:52:36', 'Peeter'),
  (5, 'ok', 'ok', '2018-02-14 11:52:49', 'Olgar');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `post_subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `post_text` text CHARACTER SET utf8 NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
  (1, 'Esimese postituse pealkiri', 'Esimese postituse sisu tekst. Väga lahe tekst.Mmmmmm super lahe! ', '2018-01-31 12:51:18', 1),
  (3, 'Teine pealkiri', 'Teine sisu tekst', '2018-02-02 14:14:59', 1),
  (4, 'Kolmas postitus', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat pretium pulvinar. Morbi consectetur sem lectus, non mattis lectus commodo elementum. Curabitur augue purus, malesuada nec quam congue, porttitor accumsan ex. Duis placerat laoreet massa, non sagittis nisl maximus id. Duis venenatis elit id ultricies ornare. Nam bibendum lorem nec quam auctor tempor. Aliquam hendrerit tincidunt erat id rhoncus. Suspendisse ut nulla ullamcorper, molestie turpis a, sodales tellus. In sed turpis vel nunc scelerisque facilisis. Praesent laoreet lacus nec justo bibendum ultrices. Aliquam sit amet lorem ultricies, sodales odio a, tincidunt nulla. Curabitur a orci in felis elementum ullamcorper.\r\n\r\nUt sodales purus sem, eget lacinia erat scelerisque non. Vivamus vel dignissim risus. Praesent euismod, diam non lacinia laoreet, mauris diam commodo mauris, eu finibus felis enim id libero. In hac habitasse platea dictumst. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc convallis turpis ex, vitae vulputate erat pretium sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris quis ante fermentum, euismod elit in, ornare turpis. Nulla facilisi. Nulla efficitur velit at turpis venenatis semper. Cras in diam porttitor dolor laoreet consectetur at vitae nisi. Nam ut lorem non diam vulputate tristique. Pellentesque rhoncus tempor libero, nec gravida dui sagittis at. Sed sodales ornare nisi, quis facilisis dolor rhoncus eu. Aenean porttitor, justo eu volutpat mollis, sem dolor blandit lacus, et dignissim diam risus id ex. ', '2018-02-02 14:24:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE `post_comments` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `comment_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`post_id`, `comment_id`) VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (3, 2),
  (3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `tag_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`) VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(25) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
  (1, 'coolio'),
  (2, 'Python'),
  (3, 'mastergrade');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `translation_id` int(10) UNSIGNED NOT NULL,
  `phrase` varchar(191) NOT NULL,
  `language` char(3) NOT NULL,
  `translation` varchar(191) DEFAULT NULL,
  `controller` varchar(15) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`translation_id`, `phrase`, `language`, `translation`, `controller`, `action`) VALUES
  (1, 'Action', 'en', '{untranslated}', 'welcome', 'index'),
  (2, 'Server returned response in an unexpected format', 'en', '{untranslated}', 'global', 'global'),
  (3, 'Forbidden', 'en', '{untranslated}', 'global', 'global'),
  (4, 'Server returned an error', 'en', '{untranslated}', 'global', 'global'),
  (5, 'Action', 'en', '{untranslated}', 'halo', 'index'),
  (6, 'Logout', 'en', '{untranslated}', 'global', 'global'),
  (7, 'Settings', 'en', '{untranslated}', 'global', 'global'),
  (8, 'Logged in as', 'en', '{untranslated}', 'global', 'global'),
  (9, 'Log out', 'en', '{untranslated}', 'global', 'global'),
  (10, 'Action', 'et', '{untranslated}', 'welcome', 'index'),
  (11, 'Log out', 'et', '{untranslated}', 'global', 'global'),
  (12, 'Server returned response in an unexpected format', 'et', '{untranslated}', 'global', 'global'),
  (13, 'Forbidden', 'et', '{untranslated}', 'global', 'global'),
  (14, 'Server returned an error', 'et', '{untranslated}', 'global', 'global'),
  (15, 'Please sign in', 'et', '{untranslated}', 'global', 'global'),
  (16, 'Email', 'et', '{untranslated}', 'global', 'global'),
  (17, 'Password', 'et', '{untranslated}', 'global', 'global'),
  (18, 'Sign in', 'et', '{untranslated}', 'global', 'global'),
  (19, 'Please sign in', 'en', '{untranslated}', 'global', 'global'),
  (20, 'Email', 'en', '{untranslated}', 'global', 'global'),
  (21, 'Password', 'en', '{untranslated}', 'global', 'global'),
  (22, 'Sign in', 'en', '{untranslated}', 'global', 'global'),
  (23, 'Wrong username or password', 'en', '{untranslated}', 'global', 'global'),
  (24, 'Oops...', 'en', '{untranslated}', 'global', 'global'),
  (25, 'Close', 'en', '{untranslated}', 'global', 'global'),
  (26, 'Server returned an error. Please try again later ', 'en', '{untranslated}', 'global', 'global'),
  (27, 'Oops...', 'et', '{untranslated}', 'global', 'global'),
  (28, 'Close', 'et', '{untranslated}', 'global', 'global'),
  (29, 'Server returned an error. Please try again later ', 'et', '{untranslated}', 'global', 'global'),
  (30, 'Action', 'en', '{untranslated}', 'global', 'global');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `is_admin`, `password`, `email`, `deleted`, `name`) VALUES
  (1, 1, '$2y$10$vTje.ndUFKHyuotY99iYkO.2aHJUgOsy2x0RMXP1UmrTe6CQsKbtm', 'demo@example.com', 0, 'Demo User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`post_id`,`comment_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`translation_id`),
  ADD UNIQUE KEY `language_phrase_controller_action_index` (`language`,`phrase`,`controller`,`action`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `translation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `post_comments_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`);

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `tag` (`tag_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
