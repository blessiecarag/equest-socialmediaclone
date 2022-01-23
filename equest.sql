-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2022 at 05:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `equest`
--

-- --------------------------------------------------------

--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(2, 3, 3, 'You two are adorable! Can I join? I want to walk with my horse too!', '2022-01-23 00:54:15'),
(3, 2, 3, 'Wow! Makes me wanna visit at your friend\'s farm too.', '2022-01-23 00:55:12'),
(4, 1, 3, 'Goodluck! ', '2022-01-23 00:55:33'),
(5, 6, 4, 'Look at these two beauties!', '2022-01-23 01:01:18'),
(6, 5, 4, 'I agree! They can melt you with their eyes indeed!', '2022-01-23 01:01:56'),
(7, 4, 4, 'Wow! What a view!', '2022-01-23 01:02:06'),
(8, 3, 4, 'Yes! The best go-to companion for a walk is always a horse.', '2022-01-23 01:03:18'),
(9, 2, 4, 'Nice! Where is this farm located?', '2022-01-23 01:03:39'),
(10, 1, 4, 'Wish you the best!', '2022-01-23 01:03:50'),
(11, 9, 2, 'You\'re doing great sir!', '2022-01-23 01:04:37'),
(12, 8, 2, 'No one beats a horse\'s loyalty when it comes to friendship.', '2022-01-23 01:05:15'),
(13, 7, 2, 'True! I wish they would do this again.', '2022-01-23 01:05:57'),
(14, 6, 2, 'You two look great! ', '2022-01-23 01:06:15'),
(15, 5, 2, 'Oh wow! Can\'t take my eyes off their eyes.', '2022-01-23 01:06:35'),
(16, 4, 2, 'Wow! Let\'s do a photoshoot together with our horses!', '2022-01-23 01:07:38'),
(17, 9, 3, 'Woah! That is a strong jump but knowing you\'re the trainer I wouldn\'t be surprised.', '2022-01-23 01:09:22'),
(18, 8, 3, 'Aww! Me and my horses have the best friendship as well.', '2022-01-23 01:10:01'),
(19, 7, 3, 'Wish I was able to watch! You both look wonderful.', '2022-01-23 01:10:21'),
(20, 3, 1, 'Wow! That is one cute walking buddy.', '2022-01-23 02:02:48'),
(21, 10, 3, 'I agree! It makes me want to join them on their run.', '2022-01-23 02:13:49'),
(22, 10, 2, 'I bet my horses would like to play with them!', '2022-01-23 02:14:32'),
(23, 10, 4, 'They remind me of my horses. They are very playful!', '2022-01-23 02:15:17'),
(24, 12, 2, 'That\'s true! They look heaven-sent!', '2022-01-23 02:50:30'),
(25, 12, 3, 'I wish I can see these many white horses in real life!', '2022-01-23 02:50:58'),
(26, 12, 4, 'This picture would be great to paint.', '2022-01-23 02:51:26'),
(27, 12, 6, 'Cool horses!', '2022-01-23 04:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `follow_list`
--

CREATE TABLE `follow_list` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follow_list`
--

INSERT INTO `follow_list` (`id`, `follower_id`, `user_id`) VALUES
(1, 3, 2),
(2, 3, 4),
(3, 4, 2),
(4, 4, 3),
(5, 2, 4),
(6, 2, 3),
(14, 3, 1),
(16, 4, 1),
(17, 1, 3),
(19, 1, 4),
(21, 6, 1),
(22, 6, 2),
(23, 6, 3),
(24, 6, 4),
(26, 1, 6),
(28, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(1, 3, 3),
(2, 3, 2),
(3, 3, 1),
(4, 4, 6),
(5, 4, 5),
(6, 4, 4),
(7, 4, 3),
(8, 4, 2),
(9, 4, 1),
(10, 2, 9),
(11, 2, 8),
(12, 2, 7),
(13, 2, 6),
(14, 2, 5),
(15, 2, 4),
(17, 3, 9),
(18, 3, 8),
(19, 3, 7),
(20, 1, 3),
(21, 3, 10),
(22, 2, 10),
(23, 2, 12),
(24, 3, 12),
(25, 4, 12),
(26, 6, 12);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_user_id` int(11) NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `post_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `to_user_id`, `message`, `created_at`, `from_user_id`, `read_status`, `post_id`) VALUES
(5, 2, 'started following you !', '2022-01-23 00:53:18', 3, 1, '0'),
(6, 2, 'liked your post !', '2022-01-23 00:53:33', 3, 1, '3'),
(7, 2, 'commented on your post', '2022-01-23 00:54:15', 3, 1, '3'),
(8, 2, 'liked your post !', '2022-01-23 00:54:25', 3, 1, '2'),
(9, 2, 'commented on your post', '2022-01-23 00:55:11', 3, 1, '2'),
(10, 2, 'liked your post !', '2022-01-23 00:55:15', 3, 1, '1'),
(11, 2, 'commented on your post', '2022-01-23 00:55:33', 3, 1, '1'),
(12, 4, 'started following you !', '2022-01-23 00:55:56', 3, 1, '0'),
(13, 2, 'started following you !', '2022-01-23 01:00:35', 4, 1, '0'),
(14, 3, 'started following you !', '2022-01-23 01:00:35', 4, 1, '0'),
(15, 3, 'liked your post !', '2022-01-23 01:00:50', 4, 1, '6'),
(16, 3, 'commented on your post', '2022-01-23 01:01:18', 4, 1, '6'),
(17, 3, 'commented on your post', '2022-01-23 01:01:55', 4, 1, '5'),
(18, 3, 'liked your post !', '2022-01-23 01:01:57', 4, 1, '5'),
(19, 3, 'liked your post !', '2022-01-23 01:01:58', 4, 1, '4'),
(20, 3, 'commented on your post', '2022-01-23 01:02:06', 4, 1, '4'),
(21, 2, 'liked your post !', '2022-01-23 01:02:08', 4, 1, '3'),
(22, 2, 'commented on your post', '2022-01-23 01:03:18', 4, 1, '3'),
(23, 2, 'liked your post !', '2022-01-23 01:03:21', 4, 1, '2'),
(24, 2, 'commented on your post', '2022-01-23 01:03:39', 4, 1, '2'),
(25, 2, 'liked your post !', '2022-01-23 01:03:42', 4, 1, '1'),
(26, 2, 'commented on your post', '2022-01-23 01:03:49', 4, 1, '1'),
(27, 4, 'started following you !', '2022-01-23 01:04:21', 2, 1, '0'),
(28, 3, 'started following you !', '2022-01-23 01:04:24', 2, 1, '0'),
(29, 4, 'liked your post !', '2022-01-23 01:04:27', 2, 1, '9'),
(30, 4, 'commented on your post', '2022-01-23 01:04:37', 2, 1, '9'),
(31, 4, 'liked your post !', '2022-01-23 01:04:39', 2, 1, '8'),
(32, 4, 'commented on your post', '2022-01-23 01:05:15', 2, 1, '8'),
(33, 4, 'liked your post !', '2022-01-23 01:05:17', 2, 1, '7'),
(34, 4, 'commented on your post', '2022-01-23 01:05:57', 2, 1, '7'),
(35, 3, 'liked your post !', '2022-01-23 01:05:59', 2, 1, '6'),
(36, 3, 'commented on your post', '2022-01-23 01:06:15', 2, 1, '6'),
(37, 3, 'liked your post !', '2022-01-23 01:06:17', 2, 1, '5'),
(38, 3, 'commented on your post', '2022-01-23 01:06:34', 2, 1, '5'),
(39, 3, 'liked your post !', '2022-01-23 01:06:37', 2, 1, '4'),
(40, 3, 'commented on your post', '2022-01-23 01:07:38', 2, 1, '4'),
(41, 4, 'liked your post !', '2022-01-23 01:08:39', 3, 1, '9'),
(42, 4, 'commented on your post', '2022-01-23 01:09:22', 3, 1, '9'),
(43, 4, 'liked your post !', '2022-01-23 01:09:23', 3, 1, '8'),
(44, 4, 'commented on your post', '2022-01-23 01:10:01', 3, 1, '8'),
(45, 4, 'liked your post !', '2022-01-23 01:10:03', 3, 1, '7'),
(46, 4, 'commented on your post', '2022-01-23 01:10:21', 3, 1, '7'),
(47, 2, 'started following you !', '2022-01-23 01:59:21', 1, 1, '0'),
(48, 3, 'started following you !', '2022-01-23 01:59:25', 1, 1, '0'),
(49, 4, 'started following you !', '2022-01-23 01:59:25', 1, 1, '0'),
(50, 3, 'Unfollowed you !', '2022-01-23 01:59:40', 1, 1, '0'),
(51, 4, 'Unfollowed you !', '2022-01-23 01:59:57', 1, 1, '0'),
(52, 3, 'started following you !', '2022-01-23 02:00:13', 1, 1, '0'),
(53, 4, 'started following you !', '2022-01-23 02:00:13', 1, 1, '0'),
(54, 2, 'liked your post !', '2022-01-23 02:02:04', 1, 1, '3'),
(55, 2, 'commented on your post', '2022-01-23 02:02:48', 1, 1, '3'),
(56, 4, 'blocked you', '2022-01-23 02:10:54', 1, 1, '0'),
(57, 4, 'Unblocked you !', '2022-01-23 02:11:32', 1, 1, '0'),
(58, 4, 'started following you !', '2022-01-23 02:11:35', 1, 1, '0'),
(59, 2, 'blocked you', '2022-01-23 02:11:43', 1, 1, '0'),
(60, 2, 'Unblocked you !', '2022-01-23 02:12:55', 1, 1, '0'),
(61, 2, 'started following you !', '2022-01-23 02:12:56', 1, 1, '0'),
(62, 1, 'started following you !', '2022-01-23 02:13:25', 3, 1, '0'),
(63, 1, 'liked your post !', '2022-01-23 02:13:34', 3, 1, '10'),
(64, 1, 'commented on your post', '2022-01-23 02:13:49', 3, 1, '10'),
(65, 1, 'started following you !', '2022-01-23 02:14:02', 2, 1, '0'),
(66, 1, 'liked your post !', '2022-01-23 02:14:14', 2, 1, '10'),
(67, 1, 'commented on your post', '2022-01-23 02:14:32', 2, 1, '10'),
(68, 1, 'started following you !', '2022-01-23 02:14:57', 4, 1, '0'),
(69, 1, 'commented on your post', '2022-01-23 02:15:17', 4, 1, '10'),
(70, 3, 'Unfollowed you !', '2022-01-23 02:46:51', 1, 0, '0'),
(71, 2, 'Unfollowed you !', '2022-01-23 02:46:52', 1, 1, '0'),
(72, 4, 'Unfollowed you !', '2022-01-23 02:46:53', 1, 0, '0'),
(73, 1, 'liked your post !', '2022-01-23 02:50:14', 2, 1, '12'),
(74, 1, 'commented on your post', '2022-01-23 02:50:30', 2, 1, '12'),
(75, 1, 'liked your post !', '2022-01-23 02:50:42', 3, 1, '12'),
(76, 1, 'commented on your post', '2022-01-23 02:50:58', 3, 1, '12'),
(77, 1, 'liked your post !', '2022-01-23 02:51:10', 4, 1, '12'),
(78, 1, 'commented on your post', '2022-01-23 02:51:26', 4, 1, '12'),
(79, 3, 'started following you !', '2022-01-23 04:20:29', 1, 0, '0'),
(80, 2, 'started following you !', '2022-01-23 04:20:30', 1, 1, '0'),
(81, 4, 'started following you !', '2022-01-23 04:20:31', 1, 0, '0'),
(82, 2, 'blocked you', '2022-01-23 04:20:48', 1, 1, '0'),
(83, 2, 'started following you !', '2022-01-23 04:24:07', 1, 1, '0'),
(84, 2, 'Unfollowed you !', '2022-01-23 04:24:17', 1, 1, '0'),
(85, 2, 'blocked you', '2022-01-23 04:24:29', 1, 1, '0'),
(86, 2, 'Unblocked you !', '2022-01-23 04:29:14', 1, 1, '0'),
(87, 1, 'started following you !', '2022-01-23 04:32:37', 6, 1, '0'),
(88, 2, 'started following you !', '2022-01-23 04:32:38', 6, 0, '0'),
(89, 3, 'started following you !', '2022-01-23 04:32:39', 6, 0, '0'),
(90, 4, 'started following you !', '2022-01-23 04:32:40', 6, 0, '0'),
(91, 1, 'liked your post !', '2022-01-23 04:33:34', 6, 1, '12'),
(92, 1, 'commented on your post', '2022-01-23 04:33:42', 6, 1, '12'),
(93, 2, 'started following you !', '2022-01-23 04:35:03', 1, 0, '0'),
(94, 6, 'started following you !', '2022-01-23 04:35:04', 1, 0, '0'),
(95, 2, 'blocked you', '2022-01-23 04:36:17', 1, 0, '0'),
(96, 2, 'Unblocked you !', '2022-01-23 04:36:18', 1, 0, '0'),
(97, 2, 'started following you !', '2022-01-23 04:36:21', 1, 0, '0'),
(98, 2, 'blocked you', '2022-01-23 04:36:32', 1, 0, '0'),
(99, 2, 'Unblocked you !', '2022-01-23 04:36:36', 1, 0, '0'),
(100, 2, 'started following you !', '2022-01-23 04:36:38', 1, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `created_at`) VALUES
(1, 2, '164289879014.jpg', 'I practiced for my show jumping for this upcoming competition :)', '2022-01-23 00:46:30'),
(2, 2, '164289883815.jpg', 'Met this wonderful creature today at my friend\'s farm.', '2022-01-23 00:47:18'),
(3, 2, '164289886716.jpg', 'Sometimes all you need is a walking buddy ;)', '2022-01-23 00:47:47'),
(4, 3, '16428990996.jpg', 'Photoshoot with Choco is always amazing to do.', '2022-01-23 00:51:39'),
(5, 3, '16428991567.jpg', 'These two horses can make you fall for their magnificent and innocent eyes.', '2022-01-23 00:52:36'),
(6, 3, '16428991848.jpg', 'Getting ready for the horse show with my beautiful stallion!', '2022-01-23 00:53:04'),
(7, 4, '164289949210.jpg', 'This event was memorable! Hope to participate again.', '2022-01-23 00:58:12'),
(8, 4, '164289954111.jpg', 'My two bestfriends who have been with me for a very long time.', '2022-01-23 00:59:01'),
(9, 4, '164289963012.jpg', 'A strong horse needs a strong owner.', '2022-01-23 01:00:30'),
(10, 1, '16429037412.jpg', 'These two horses are having the best time of their lives!', '2022-01-23 02:09:01'),
(11, 1, '16429061463.jpg', 'My dream horse :)', '2022-01-23 02:49:06'),
(12, 1, '16429061964.jpg', 'White horses are beautiful!', '2022-01-23 02:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profile_pic` text NOT NULL DEFAULT 'default_profile.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ac_status` int(11) NOT NULL COMMENT '1 = active, 2 = blocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`, `ac_status`) VALUES
(1, 'Blessie', 'Carag', 2, 'blessiecarag@gmail.com', 'bcarag', 'e10adc3949ba59abbe56e057f20f883e', '16429032061.jpg', '2022-01-23 00:30:51', '2022-01-23 02:00:06', 0),
(2, 'Joanne', 'Shin', 2, 'joanneshin@gmail.com', 'joanneshin', '9f368db55e39a12c1d7a58f244289d53', '164289865513.jpg', '2022-01-23 00:32:59', '2022-01-23 00:44:15', 0),
(3, 'Judy', 'Lee', 2, 'judylee@gmail.com', 'judylee', '832a584ba346fb06959aa03df925b229', '16428990315.jpg', '2022-01-23 00:40:02', '2022-01-23 00:50:31', 0),
(4, 'Luke', 'Wilson', 1, 'lukewilson@gmail.com', 'lukewilson', 'a14a2491c2c56b065d32e773e39ec1ac', '16428994509.jpg', '2022-01-23 00:41:29', '2022-01-23 00:57:30', 0),
(6, 'Blessie', 'Pangilinan', 2, 'blessiep@gmail.com', 'blessiep', '101a6ec9f938885df0a44f20458d2eb4', '1642912456dp.jpg', '2022-01-23 04:32:12', '2022-01-23 04:34:29', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_list`
--
ALTER TABLE `follow_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `block_list`
--
ALTER TABLE `block_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `follow_list`
--
ALTER TABLE `follow_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
