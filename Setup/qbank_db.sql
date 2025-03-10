-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 25, 2024 at 12:16 AM
-- Server version: 5.7.40-log
-- PHP Version: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `cp_logs`
--

CREATE TABLE `cp_logs` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `logdate` date DEFAULT NULL,
  `logtime` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_papers`
--

CREATE TABLE `cp_papers` (
  `pp_id` int(11) NOT NULL,
  `cp_paper_id` int(20) DEFAULT NULL,
  `pp_paper_name` varchar(255) DEFAULT NULL,
  `pp_question_id` int(11) DEFAULT NULL,
  `pp_question_paper_date` varchar(255) DEFAULT NULL,
  `pp_question_paper_time` varchar(255) DEFAULT NULL,
  `pp_question_paper_exam_name` varchar(255) DEFAULT NULL,
  `pp_question_paper_subj_name` varchar(255) DEFAULT NULL,
  `pp_question_paper_grade` varchar(45) DEFAULT NULL,
  `pp_question_paper_note` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_papers`
--

INSERT INTO `cp_papers` (`pp_id`, `cp_paper_id`, `pp_paper_name`, `pp_question_id`, `pp_question_paper_date`, `pp_question_paper_time`, `pp_question_paper_exam_name`, `pp_question_paper_subj_name`, `pp_question_paper_grade`, `pp_question_paper_note`) VALUES
(12, 240511, 'MCQ01', NULL, '2019-02-17', '3 Hrs', 'O/L 2024', 'ICT', 'Grade: 11', 0x41737761726520416c6c207175657374696f6e73);

-- --------------------------------------------------------

--
-- Table structure for table `cp_question`
--

CREATE TABLE `cp_question` (
  `que_id` int(11) NOT NULL,
  `que_subj_id` int(11) DEFAULT NULL,
  `que_unit_id` int(11) NOT NULL,
  `que_que_id` int(11) DEFAULT NULL,
  `que_short_description` varchar(255) DEFAULT NULL,
  `que_long_description` text,
  `que_que_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_question`
--

INSERT INTO `cp_question` (`que_id`, `que_subj_id`, `que_unit_id`, `que_que_id`, `que_short_description`, `que_long_description`, `que_que_type`) VALUES
(34, 5515, 20, 5035, 'For a five-page document, is a page number or date used at the bottom of the page?', '<p>For a five-page document, is a page number or date used at the bottom of the page?</p>\r\n\r\n<ul>\r\n	<li>1.  Bottom margin</li>\r\n	<li>2.  Top margin</li>\r\n	<li>3.  Header</li>\r\n	<li>4.  Footer</li>\r\n</ul>\r\n\r\n<p><a href=\"https://postimages.org/\" target=\"_blank\"><img alt=\"96\" src=\"https://i.postimg.cc/WdTky2M5/96.jpg\" /></a></p>\r\n', 'MCQ'),
(35, 5515, 20, 7354, 'The tab you should go to correct spelling and grammar?', '<p>The tab you should go to correct spelling and grammar?&nbsp;</p>\r\n\r\n<ul>\r\n	<li>1.&nbsp;&nbsp;Review</li>\r\n	<li>2.&nbsp;&nbsp;File</li>\r\n	<li>3.&nbsp;&nbsp;Home</li>\r\n	<li>4.&nbsp;&nbsp;Insert</li>\r\n</ul>\r\n', 'Essay'),
(36, 5515, 20, 7011, 'What is the name of this document?', '<p>What is the name of this document?</p>\r\n\r\n<p><img src=\"http://exams.maxmind.lk/wp-content/uploads/2014/04/ribbon2.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>1.&nbsp;&nbsp;Blank Document</li>\r\n	<li>2.&nbsp;&nbsp;Document 1</li>\r\n	<li>3.&nbsp;&nbsp;Microsoft Word</li>\r\n	<li>4.&nbsp;&nbsp;Nimal folder</li>\r\n</ul>\r\n', 'MCQ'),
(37, 5515, 20, 9365, 'What can be done to the document using the \"CUT\" command?', '<p>What can be done to the document using the &quot;CUT&quot; command?</p>\r\n\r\n<ul>\r\n	<li>1. Selected text or graphics can be deleted.<br />\r\n	2. Only half of the screen is visible.<br />\r\n	3.&nbsp;&nbsp;The software turns off.<br />\r\n	4.&nbsp;&nbsp;All the answers are wrong.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'MCQ'),
(38, 5515, 20, 4057, 'What is the tab you use to change the size of a word from 12 points to 18 points?', '<p>What is the tab you use to change the size of a word from 12 points to 18 points?</p>\r\n\r\n<ul>\r\n	<li>1.&nbsp;&nbsp;Home</li>\r\n	<li>2.&nbsp;&nbsp;File</li>\r\n	<li>3.&nbsp;&nbsp;Insert</li>\r\n	<li>4.&nbsp;&nbsp;Page Layout</li>\r\n</ul>\r\n', 'MCQ'),
(39, 5515, 20, 6624, 'Can a word be italicized using this command?', '<p><img alt=\"\" src=\"http://exams.maxmind.lk/wp-content/uploads/2014/04/bold7.png\" />&nbsp;Can a word be italicized using this command?</p>\r\n\r\n<ul>\r\n	<li>1. Correct<br />\r\n	2.&nbsp;&nbsp;Wrong</li>\r\n</ul>\r\n', 'MCQ'),
(40, 5515, 20, 1613, 'What would be the command to use to fold a word very slightly to the right?', '<p>What would be the command to use to fold a word very slightly to the right?</p>\r\n\r\n<ul>\r\n	<li>1.&nbsp;&nbsp;Capitalizing</li>\r\n	<li>2.&nbsp;&nbsp;Boldface</li>\r\n	<li>3.&nbsp;&nbsp;Italics</li>\r\n	<li>4.&nbsp;&nbsp;Underlining</li>\r\n</ul>\r\n', 'MCQ'),
(41, 5515, 20, 5124, 'What is the keyboard shortcut to copy and paste?', '<p>What is the keyboard shortcut to copy and paste?</p>\r\n\r\n<ul>\r\n	<li>1.&nbsp;&nbsp;Copy = CTRL + D / Past = CTRL + P</li>\r\n	<li>2.&nbsp;&nbsp;Copy = CTRL + V / Past = CTRL +C</li>\r\n	<li>3.&nbsp;&nbsp;Copy = CTRL + C / Past = CTRL + P</li>\r\n	<li>4.&nbsp;&nbsp;Copy = CTRL + C / Past = CTRL + V</li>\r\n</ul>\r\n', 'MCQ'),
(42, 5515, 20, 1002, 'What is the correct way to open \"MS Word\"?', '<p>What is the correct way to open &quot;MS Word&quot;?</p>\r\n\r\n<ul>\r\n	<li>1.&nbsp;&nbsp;Start &gt; Microsoft office &gt; Microsoft Word 2010</li>\r\n	<li>2.&nbsp;&nbsp;Start &gt; Microsoft Word 2010</li>\r\n	<li>3.&nbsp;&nbsp;Start &gt; All Programs &gt; Microsoft office &gt; Microsoft Word 2010</li>\r\n	<li>4.&nbsp;&nbsp;Start &gt; All Programs &gt; Microsoft &gt; Microsoft Word 2010</li>\r\n</ul>\r\n', 'MCQ'),
(43, 5515, 20, 3131, '“Times New Roman”, “Comic Sans” and “Calibri” are called by this name?', '<p>&ldquo;Times New Roman&rdquo;, &ldquo;Comic Sans&rdquo; and &ldquo;Calibri&rdquo; are called by this name?</p>\r\n\r\n<ul>\r\n	<li>1.&nbsp;&nbsp;fonts</li>\r\n	<li>2.&nbsp;&nbsp;variations</li>\r\n	<li>3.&nbsp;&nbsp;font sizes</li>\r\n	<li>4.&nbsp;&nbsp;font colors</li>\r\n</ul>\r\n', 'MCQ');

-- --------------------------------------------------------

--
-- Table structure for table `cp_question_details`
--

CREATE TABLE `cp_question_details` (
  `id` int(12) NOT NULL,
  `que_d_paper_id` int(12) DEFAULT NULL,
  `que_d_subj_id` int(12) DEFAULT NULL,
  `que_d_unit_id` int(12) DEFAULT NULL,
  `que_d_question_id` int(12) DEFAULT NULL,
  `que_d_question_order` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_question_details`
--

INSERT INTO `cp_question_details` (`id`, `que_d_paper_id`, `que_d_subj_id`, `que_d_unit_id`, `que_d_question_id`, `que_d_question_order`) VALUES
(193, 240511, 5515, 20, 5035, '1'),
(195, 240511, 5515, 20, 7011, '3'),
(196, 240511, 5515, 20, 1002, '4'),
(198, 240511, 5515, 20, 9365, '4'),
(199, 240511, 5515, 20, 4057, '5'),
(200, 240511, 5515, 20, 6624, '6'),
(201, 240511, 5515, 20, 1613, '7'),
(202, 240511, 5515, 20, 5124, '8'),
(203, 240511, 5515, 20, 1002, '9'),
(204, 240511, 5515, 20, 3131, '10'),
(205, 240511, 5515, 20, 5035, '11');

-- --------------------------------------------------------

--
-- Table structure for table `cp_settings`
--

CREATE TABLE `cp_settings` (
  `setting_id` int(11) NOT NULL,
  `showrecords` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_settings`
--

INSERT INTO `cp_settings` (`setting_id`, `showrecords`) VALUES
(1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `cp_subjects`
--

CREATE TABLE `cp_subjects` (
  `sub_id` int(11) NOT NULL,
  `sub_sub_id` int(11) DEFAULT NULL,
  `sub_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_subjects`
--

INSERT INTO `cp_subjects` (`sub_id`, `sub_sub_id`, `sub_name`) VALUES
(20, 5515, 'ICT'),
(21, 6958, 'Science'),
(22, 6440, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `cp_units`
--

CREATE TABLE `cp_units` (
  `uni_id` int(11) NOT NULL,
  `uni_subj_id` int(11) DEFAULT NULL,
  `uni_uni_id` varchar(11) DEFAULT NULL,
  `uni_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_units`
--

INSERT INTO `cp_units` (`uni_id`, `uni_subj_id`, `uni_uni_id`, `uni_name`) VALUES
(20, 5515, '1', 'Unite 01'),
(21, 5515, '2', 'Unite 02'),
(22, 5515, 'U001N1001', 'New Unit 01');

-- --------------------------------------------------------

--
-- Table structure for table `cp_userpermission`
--

CREATE TABLE `cp_userpermission` (
  `per_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `OnOff` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_users`
--

CREATE TABLE `cp_users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_users`
--

INSERT INTO `cp_users` (`id`, `username`, `password`, `firstname`, `lastname`) VALUES
(9822, 'admin', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'Admin', 'System');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cp_logs`
--
ALTER TABLE `cp_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_papers`
--
ALTER TABLE `cp_papers`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `cp_question`
--
ALTER TABLE `cp_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `cp_question_details`
--
ALTER TABLE `cp_question_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_settings`
--
ALTER TABLE `cp_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `cp_subjects`
--
ALTER TABLE `cp_subjects`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `cp_units`
--
ALTER TABLE `cp_units`
  ADD PRIMARY KEY (`uni_id`);

--
-- Indexes for table `cp_userpermission`
--
ALTER TABLE `cp_userpermission`
  ADD PRIMARY KEY (`per_id`);

--
-- Indexes for table `cp_users`
--
ALTER TABLE `cp_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cp_logs`
--
ALTER TABLE `cp_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `cp_papers`
--
ALTER TABLE `cp_papers`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cp_question`
--
ALTER TABLE `cp_question`
  MODIFY `que_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cp_question_details`
--
ALTER TABLE `cp_question_details`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `cp_settings`
--
ALTER TABLE `cp_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cp_subjects`
--
ALTER TABLE `cp_subjects`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cp_units`
--
ALTER TABLE `cp_units`
  MODIFY `uni_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cp_userpermission`
--
ALTER TABLE `cp_userpermission`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1693;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
