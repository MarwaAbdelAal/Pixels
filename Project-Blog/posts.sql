-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2018 at 03:55 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `post` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `post`, `user_id`, `time`) VALUES
(59, 'CodeBetter', 'CodeBetter blog has one main goal â€“ introduce developers to better tools, methodologies and practices within software development. They are focused on technical content that is actually relevant rather than filling their blog with random fluff to increase the views.\r\n\r\nWhat makes CodeBetter different from other blogs is that they avoid writing about stuff that does not work and spend time criticizing it. They focus on pointing out whatâ€™s good and worth your time.\r\n\r\nThe blog can definitely be trusted in terms of information as the writers post purely based on their personal experiences and knowledge.\r\n\r\nYou will find plenty of code examples and innovative techniques here. It is perfect for developers who are focused on Microsoft technologies, especially .Net based languages, Sql Server, Sharepoint, BizTalk, server platforms and other software.\r\n\r\n', 4, '2018-08-17 06:47:26'),
(60, 'A List Apart', 'Now a successful blog for software developers, A List Apart started out as a mailing list back in 1997. The website has been up and running since 1998! It was founded by L. Jeffrey Zeldman and features contributing writers like Senongo Akpem, Rachel Andrew, Cennydd Bowles, Anthony Colangelo, Lyza Danger Gardner, Debra Gelman, Matt Griffin, and many more. This is a perfect destination for those who are looking for a place to broaden their knowledge of software development or just wondering around for some cool tips and tricks. The blog covers all kinds of topics on the design, development and meaning of web content, but more specifically on web standards and best practices.\r\n\r\nA List Apart welcomes other writers, developers, strategists, designers and other specialists to post on their blog as long as they have some interesting thoughts to share with the world of developers.', 4, '2018-08-17 06:47:54'),
(61, 'PhraseApp Blog', 'You have probably heard about us, donâ€™t you. Our blog is equally useful for engineers who spend a lot of time on localization of templates and product managers, who are just getting started.\r\n\r\nThe PhraseApp blog offers various informative posts and tutorials, as well as interviews with experts of the industry.\r\n', 5, '2018-08-17 06:49:50'),
(62, 'Coding Horror', 'Jeff Atwood began Coding Horror blog in 2004 and since then he has been keeping his readers entertained with his brilliant posts that are full of humor. Throughout the years, Jeff took the readers on his journey of growth as a writer and a software developer. Currently, his posts are easy to read and understand; something you would enjoy reading after a hard day at work. A rather rare thing in software developmentâ€¦\r\n\r\nJeff is also a co-founder of Stack Exchange Network of Q&A sites, formerly Stack Overflow, which he created together with Joel Spolsky.\r\n\r\n', 5, '2018-08-17 06:50:15'),
(63, 'Joel On Software', 'Jeffâ€™s ex-partner Joel started blogging a little earlier, back in 2000. He has been into programming for almost 40 years now, so, yes, he has a lot to share about software development. He used to be one of the first employees of Microsoft and work hard to create what you know now as OLE Automation or IDispatch.\r\n\r\nJoelâ€™s posts are focused on the business and management of software. He is currently the CEO of Stack Exchange.\r\n\r\nHe has written 4 book, including one on user interface design, which is also available on the blog. Joel also runs a software company, Fog Creek Software.', 5, '2018-08-17 06:50:40'),
(64, 'Geeks For Geeks', 'This is an online journal for yearning programming software engineers who are meaning to break interviews at huge tech organizations. The primary goal behind this site is to give answers to programming/algorithmic inquiries that are normally asked in meetings. Itâ€™s a client submitted blog, where amateur developers post their own meeting encounters.', 6, '2018-08-17 07:12:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `posts_ibfk_1` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
