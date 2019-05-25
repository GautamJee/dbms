-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2019 at 10:49 PM
-- Server version: 10.1.26-MariaDB-1
-- PHP Version: 7.0.22-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lib`
--
CREATE DATABASE IF NOT EXISTS `lib` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lib`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`) VALUES
(1, 'librarian_name'),
(2, 'assistant_librarian ');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `logid` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL DEFAULT 'username',
  `pass` varchar(255) CHARACTER SET latin2 COLLATE latin2_bin NOT NULL DEFAULT 'password'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`logid`, `uname`, `pass`) VALUES
(1, 'lib1', 'hi'),
(2, 'username', 'hi\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(10) NOT NULL,
  `btitle` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `reference` enum('yes','no','','') NOT NULL DEFAULT 'no',
  `publication` varchar(255) DEFAULT NULL,
  `edition` int(2) DEFAULT NULL,
  `branch` enum('mba','cse','mech','eee','ece','civil','h&s','other') NOT NULL DEFAULT 'other',
  `price` decimal(10,2) NOT NULL,
  `line` int(2) NOT NULL DEFAULT '0',
  `floor` int(2) NOT NULL DEFAULT '0',
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `btitle`, `status`, `reference`, `publication`, `edition`, `branch`, `price`, `line`, `floor`, `lastmodified`) VALUES
(200, 'chemistry', 1, 'no', 'kanodia', 3, 'h&s', '783.00', 1, 0, '2018-04-11 11:20:05'),
(300, 'digital electronics', 1, 'no', '', 0, 'eee', '90.00', 0, 0, '2018-04-10 21:18:16'),
(500, 'mathematics 1', 1, 'no', 'pearson', 6, 'h&s', '738.00', 4, 8, '2018-04-09 22:55:05'),
(2252, 'DISTRIBUTED SYSTEM', 1, 'no', 'Pearson', 2, 'cse', '0.00', 0, 0, '2018-04-09 22:56:22'),
(7845, 'strength of materials', 1, 'no', 'oxford', 3, 'civil', '900.00', 0, 0, '2018-04-09 22:46:57'),
(7846, 'strength of materials', 1, 'no', NULL, NULL, 'civil', '289.00', 0, 0, '2018-04-09 22:50:13'),
(8639, 'Cryptography and Network Security', 1, 'no', 'Pearson', 4, 'cse', '0.00', 0, 0, '2018-04-10 20:01:03'),
(17312, 'UML 2 Toolkit', 1, 'no', 'Wiley', 2, 'cse', '429.00', 0, 0, '2018-04-09 22:51:36'),
(23020, 'Managerial Economics and Financial Analysis', 1, 'yes', 'Tata McGraw Hill', 2, 'mba', '378.00', 2, 2, '2018-04-05 13:37:08'),
(23021, 'Managerial Economics and Financial Analysis', 1, 'yes', 'spectrum', 9, 'h&s', '423879.00', 8, 9, '2018-04-10 21:29:05'),
(24179, 'web technologies', 1, 'no', 'Oxford', 4, 'cse', '410.00', 0, 0, '2018-04-10 21:53:30'),
(25121, 'computer system architecture', 1, 'no', 'pearson', 3, 'cse', '450.00', 0, 0, '2018-04-09 18:28:41'),
(25875, 'software testing techniques', 1, 'no', 'Dreamtech', 2, 'cse', '350.00', 0, 0, '2018-04-03 12:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `bid` int(10) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`bid`, `author`) VALUES
(300, 'moriss mano'),
(500, 'kanodia'),
(2252, 'George Coulouris'),
(2252, 'Jean Dollimore'),
(8639, 'William Stallings'),
(17312, 'Brain Lyons'),
(17312, 'David Fado'),
(17312, 'Hans-Erik Eriksson'),
(17312, 'Magnus Penker'),
(23020, 'A R Aryasri'),
(23021, 'A R Aryasri'),
(24179, 'ga'),
(25121, 'm. morris mano');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` longtext,
  `contact` varchar(255) DEFAULT NULL,
  `ondate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `detail`, `contact`, `ondate`) VALUES
(89, 'dance program', 'this week there is a dance program', '7329892074', '2017-09-30'),
(95, 'Cultural Prog', 'Paper', ' - pqr -  - ece - ', '2004-01-01'),
(111, 'drawing', 'there is drawing', ' - pqr -  - ece - ', '2018-01-31'),
(112, 'drawing', 'there is drawing', ' - pqr -  - ece - ', '2018-01-31'),
(115, 'happy birthday', 'Paper', ' - pqr -  - ece - ', '2018-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publication` varchar(255) NOT NULL,
  `edition` int(3) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `issue` int(11) DEFAULT NULL,
  `published_on` date NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `no_of_copies` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `title`, `publication`, `edition`, `volume`, `issue`, `published_on`, `price`, `no_of_copies`) VALUES
(234879, 'computer security', 'ieee', 78, 23, 16, '2018-01-11', '8342.00', 9),
(234882, 'isro weekly journal', 'isro', 66, 5, 36, '2018-04-11', '89.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logincheck`
--

CREATE TABLE `logincheck` (
  `id` int(10) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `magazines`
--

CREATE TABLE `magazines` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publication` varchar(255) NOT NULL,
  `edition` int(3) DEFAULT NULL,
  `published_on` date NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `no_of_copies` int(3) NOT NULL,
  `issue` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `magazines`
--

INSERT INTO `magazines` (`id`, `title`, `publication`, `edition`, `published_on`, `price`, `no_of_copies`, `issue`, `volume`) VALUES
(67980, 'employment news', 'govt of india', 7, '2017-01-10', '7.00', 5, 32, 89),
(87342, 'pratiyogita darpan', 'hindustan times', 73, '2018-04-11', '34789.00', 8, 34, 87);

-- --------------------------------------------------------

--
-- Table structure for table `mp_pages`
--

CREATE TABLE `mp_pages` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_desc` text,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `parent` varchar(255) NOT NULL DEFAULT '0',
  `status` enum('A','I') NOT NULL DEFAULT 'A',
  `page_alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_pages`
--

INSERT INTO `mp_pages` (`page_id`, `page_title`, `page_desc`, `meta_keywords`, `meta_desc`, `sort_order`, `parent`, `status`, `page_alias`) VALUES
(1, 'About', '<font size=\\\"4\\\">A one roof where you can get all your works of library being digital.<br><br><br></font>', 'About', '', 1, '-1', 'A', 'About'),
(9, 'Books', '<font size=\\\"4\\\">List of all books available.<br><br></font><div><p><font size=\\\"2\\\"><span style=\\\"font-family: Comic Sans MS;\\\">&lt;&lt;&lt;&lt;----- <span style=\\\"font-style: italic;\\\"><span style=\\\"text-decoration: underline;\\\">Kindly keep the books in the proper line and floor after use </span></span>-----&gt;&gt;&gt;&gt;</span></font></p></div><font size=\\\"4\\\"><br></font>', 'category', '', 1, '-1', 'A', 'books'),
(26, 'Magazines', '<span style=\\\"font-style: italic;\\\">List of all magazines.</span><br><br><br>', '', '', 0, '-1', 'A', 'magazines'),
(27, 'Journals', '<span style=\\\"font-style: italic;\\\">List of all journals</span><br><br><br>', '', '', 0, '-1', 'A', 'journals'),
(34, 'Registering Yourself', '<br><span style=\\\"font-weight: bold;\\\">To get registered, you must require your College ID Card.<br><br></span><br><ol><li>By providing the details as per the College ID, the librarian will feed your details onto the database.</li><li>After that a unique ID will be generated, which will be your library system\\\'s ID.</li></ol><p><br></p><p><span style=\\\"font-style: italic;\\\">NOTE: After successful \r\nregistration, know your password from librarian. You are requested to \r\nchange it there after by logging in to your account.</span></p>', '', '', 0, '1', 'A', 'registering-yourself'),
(35, 'Logging into your Account', '<br>To login to your account, you are required to visit respective Login page enter your:-<br><br><ol><li>Unique User ID as generated during registration.</li><li>Unique Hall Ticket for Students and University ID for Teachers.</li><li>Name as per your College ID.</li><li>Your password.</li></ol><p><br></p><p><br></p><p><span style=\\\"font-style: italic;\\\">NOTE: During the first time registration, the initial password must be known from the librarian. You are requested to change it there after by logging in to your account.</span></p><p><span style=\\\"font-style: italic;\\\"></span><br></p>', '', '', 0, '1', 'A', 'logging-into-your-account'),
(36, 'Issuing / Returning a Book', '<span style=\\\"font-weight: bold;\\\"><span style=\\\"font-style: italic;\\\"><span style=\\\"text-decoration: underline;\\\"><br>To Issue<br><br></span></span></span><ol><li>Go and Search for the book <span style=\\\"font-style: italic;\\\">(to know a book where is kept you may search in the BOOK page of this website).</span></li><li>Take the book and go to the librarian and ask him/her to issue that book.</li><li>He/She might issue the book in your ID.</li><li>You may confirm this by even log-in to your account and may also find the list of books issued and returned by you.</li></ol><p><br></p><hr><p><span style=\\\"font-weight: bold;\\\"><span style=\\\"font-style: italic;\\\"><span style=\\\"text-decoration: underline;\\\"><br></span></span></span></p><p><span style=\\\"font-weight: bold;\\\"><span style=\\\"font-style: italic;\\\"><span style=\\\"text-decoration: underline;\\\">To Return</span></span></span><br></p><ol><li>Similarly, to Return the book, take the book to the librarian and ask to remove that from your account.</li><li>After he/she does it, you may confirm it by checking your account after your personal login.<br></li></ol>', '', '', 0, '1', 'A', 'issuing-returning-a-book'),
(38, 'Changing Your Password', '<ol><li>Login to your account using your generated<span style=\\\"font-style: italic;\\\"> ID</span> by system, <span style=\\\"font-style: italic;\\\">hall ticket number</span> and your <span style=\\\"font-style: italic;\\\">name</span>.</li><li>Go to the change password form.</li><li>Enter the new password.</li><li>Confirm new password.</li><li>Click on Submit button and Confirm.</li><li>Your password will be changed.</li></ol>', '', '', 0, '1', 'A', 'changing-your-password');

-- --------------------------------------------------------

--
-- Table structure for table `mp_tagline`
--

CREATE TABLE `mp_tagline` (
  `id` int(11) NOT NULL,
  `tagline1` varchar(255) DEFAULT NULL,
  `tagline2` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_tagline`
--

INSERT INTO `mp_tagline` (`id`, `tagline1`, `tagline2`) VALUES
(1, 'Library Management System', 'Let\\\'s your Library System work Smoothly...!');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `htno` varchar(10) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `dept` enum('mba','diploma','btech','mtech') DEFAULT NULL,
  `reg` enum('C09','C14','C16','ER-91','R09','R13','R15','R16','R07') DEFAULT NULL,
  `branch` enum('cse','ece','mech','civil','eee','cme') DEFAULT NULL,
  `year` enum('1','2','3','4') DEFAULT NULL,
  `sem` enum('1','2','3','4','5','6','7') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `htno`, `sname`, `dept`, `reg`, `branch`, `year`, `sem`) VALUES
(101, '14w81a0501', 'shweta', 'btech', 'R13', 'cse', '4', '2'),
(103, '14w81a0503', 'sushma', 'btech', 'R13', 'cse', '4', '2'),
(104, '14w81a0504', 'alekya', 'btech', 'R13', 'cse', '4', '2'),
(105, '14w81a0509', 'vineela', 'btech', 'R13', 'cse', '4', '2'),
(109, '14w81a0407', 'krishna', 'btech', 'R13', 'ece', '4', '2'),
(117, '14w81a0406', 'g ramya', 'btech', 'R13', 'ece', '4', '1'),
(125, '14w81a0321', 'sameer', 'btech', 'R13', 'civil', '4', '1'),
(156, '14w81a0402', 'sai', 'btech', 'R13', 'ece', '3', '1'),
(157, '14W81A0403', 'raju', 'btech', 'R13', 'ece', '4', '1'),
(158, '14W81A0404', 'srikanth', 'btech', 'R13', 'ece', '4', '1'),
(159, '14W81A0411', 'srikanth', 'btech', 'R13', 'ece', '4', '1'),
(160, '14W81A0412', 'shailaja', 'btech', 'R13', 'ece', '4', '1'),
(161, '14W81A0415', 'koteswari', 'btech', 'R13', 'ece', '4', '1'),
(162, '14W81A0416', 'vandanna', 'btech', 'R13', 'ece', '4', '1'),
(163, '14W81A0417', 'swapnil', 'btech', 'R13', 'ece', '4', '1'),
(164, '14W81A0418', 'sangeetha rani', 'btech', 'R13', 'ece', '4', '1'),
(165, '14W81A0420', 'G.deepika', 'btech', 'R13', 'ece', '4', '1'),
(168, '510', 'Shruthi', 'diploma', 'C14', 'cme', '3', '2'),
(180, '14w81a0515', 'chinese', 'btech', 'R13', 'cse', '4', '2'),
(89234, '14W81A0520', 'dipika', 'btech', 'R13', 'ece', '4', '2'),
(89236, '16w81a0901', 'raju', 'mba', 'R09', 'ece', '1', '2'),
(89238, '14w81a0510', 'gautam', 'btech', 'R13', 'cse', '4', '2'),
(89239, '14w81a0513', 'rahul', 'btech', 'R13', 'cse', '4', '2');

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `insert student login` AFTER UPDATE ON `student` FOR EACH ROW BEGIN
INSERT INTO `student_login` (`logid`, `uname`, `pass`) VALUES (new.sid, new.htno, 'cGFzc3dvcmRfQCMkI0Bf');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student_contact`
--

CREATE TABLE `student_contact` (
  `sid` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_contact`
--

INSERT INTO `student_contact` (`sid`, `phone`) VALUES
(101, '6666686767'),
(101, '6766876666'),
(101, '7093428708'),
(103, '5325327893'),
(103, '8709980778'),
(103, '8709987078'),
(104, '6768609980'),
(104, '8778898889'),
(104, '8790879987'),
(105, '5875667676'),
(105, '6767867689'),
(105, '9870809870'),
(117, '6768870990'),
(117, '8734290213'),
(117, '9870879578'),
(156, '5245872507'),
(156, '5758879879'),
(156, '7809780978'),
(157, '6758987099'),
(157, '6798709878'),
(157, '8723409578'),
(158, '7809532532'),
(158, '7893420032'),
(158, '9078870934'),
(159, '8035283527'),
(159, '8934298735'),
(159, '983529032'),
(160, '8329872093'),
(160, '8987097890'),
(160, '9867895878'),
(161, '7897803529'),
(161, '8970342235'),
(161, '9837235809'),
(162, '9805327893'),
(162, '9808935532'),
(162, '9823483427'),
(163, '7978989985'),
(163, '8998788786'),
(163, '9528389235'),
(164, '8998687908'),
(164, '9835293527'),
(164, '9852379205'),
(168, '8714203987'),
(168, '8797897809'),
(168, '8798797809'),
(180, '6766879879'),
(180, '6778908795'),
(180, '9324870707'),
(89236, '5656756536'),
(89236, '9284713287'),
(89236, '9878797899'),
(89238, '7329892074'),
(89238, '7660974312'),
(89238, '9873248093'),
(89239, '5689342870'),
(89239, '8798709870'),
(89239, '9870870987');

-- --------------------------------------------------------

--
-- Table structure for table `student_issue`
--

CREATE TABLE `student_issue` (
  `sid` int(11) NOT NULL,
  `bid` int(10) NOT NULL,
  `issdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `retdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `student_issue`
--
DELIMITER $$
CREATE TRIGGER `inserting into student issue history after return of book` AFTER UPDATE ON `student_issue` FOR EACH ROW BEGIN
INSERT INTO stud_issue_history (stud_issue_history.sid, stud_issue_history.bid,stud_issue_history.issdate,stud_issue_history.retdate) VALUES (new.sid, new.bid, new.issdate, new.retdate);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update books when student issues book` BEFORE INSERT ON `student_issue` FOR EACH ROW BEGIN
UPDATE `books` SET `books`.`status`=0 WHERE new.bid = `books`.`bid`;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `logid` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL DEFAULT 'username',
  `pass` varchar(255) NOT NULL DEFAULT 'password'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`logid`, `uname`, `pass`) VALUES
(101, 'gautam', 'cGFzc3dvcmRfQCMkI0Bf'),
(103, '14w81a0503', 'cGFzc3dvcmRfQCMkI0Bf'),
(104, '14w81a0504', 'cGFzc3dvcmRfQCMkI0Bf'),
(105, '14w81a0509', 'aGlfQCMkI0Bf'),
(109, '14w81a0407', 'cGFzc3dvcmRfQCMkI0Bf'),
(117, 'ramya', 'aGlfQCMkI0Bf'),
(125, '14w81a0321', 'cGFzc3dvcmRfQCMkI0Bf'),
(156, '14w81a0402', 'cGFzc3dvcmRfQCMkI0Bf'),
(157, '14W81A0403', 'cGFzc3dvcmRfQCMkI0Bf'),
(158, '14W81A0404', 'cGFzc3dvcmRfQCMkI0Bf'),
(159, '14W81A0411', 'cGFzc3dvcmRfQCMkI0Bf'),
(160, '14W81A0412', 'cGFzc3dvcmRfQCMkI0Bf'),
(161, '14W81A0415', 'cGFzc3dvcmRfQCMkI0Bf'),
(162, '14W81A0416', 'cGFzc3dvcmRfQCMkI0Bf'),
(163, '14W81A0417', 'cGFzc3dvcmRfQCMkI0Bf'),
(164, '14W81A0418', 'cGFzc3dvcmRfQCMkI0Bf'),
(165, '14W81A0420', 'cGFzc3dvcmRfQCMkI0Bf'),
(168, 'username', 'cGFzc3dvcmRfQCMkI0Bf'),
(180, '14w81a0515', 'cGFzc3dvcmRfQCMkI0Bf'),
(89234, '14W81A0520', 'cGFzc3dvcmRfQCMkI0Bf'),
(89236, '16w81a0901', 'cGFzc3dvcmRfQCMkI0Bf'),
(89238, '14w81a0510', 'cGFzc3dvcmRfQCMkI0Bf'),
(89239, '14w81a0513', 'cGFzc3dvcmRfQCMkI0Bf');

-- --------------------------------------------------------

--
-- Table structure for table `student_pic`
--

CREATE TABLE `student_pic` (
  `sid` int(11) NOT NULL,
  `pic` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stud_issue_history`
--

CREATE TABLE `stud_issue_history` (
  `sid` int(11) NOT NULL,
  `bid` int(10) NOT NULL,
  `issdate` datetime NOT NULL,
  `retdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stud_issue_history`
--

INSERT INTO `stud_issue_history` (`sid`, `bid`, `issdate`, `retdate`) VALUES
(101, 23021, '2018-04-10 04:59:46', '2018-04-10 20:06:01'),
(89236, 200, '2018-04-11 01:28:54', '2018-04-11 01:29:26'),
(89238, 23021, '2018-04-11 01:17:54', '2018-04-11 01:30:42'),
(89236, 8639, '2018-04-11 01:29:02', '2018-04-11 01:31:03'),
(89236, 24179, '2018-04-11 01:29:08', '2018-04-11 01:31:08');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `uid` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dept` enum('btech','diploma','mba','mtech') DEFAULT NULL,
  `branch` enum('cse','civil','ece','eee','mech','h&s') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `uid`, `name`, `dept`, `branch`) VALUES
(101014, '101', 's rajeshwar', 'btech', 'cse'),
(101015, '102', 'e ramya', 'btech', 'cse'),
(101016, '103', 'a madhavi', 'btech', 'cse'),
(101017, '879324', 'j lingaiah', 'btech', 'ece'),
(101018, '67333', 'babu rao', 'btech', 'mech');

--
-- Triggers `teacher`
--
DELIMITER $$
CREATE TRIGGER `insert teacher login` AFTER UPDATE ON `teacher` FOR EACH ROW BEGIN
INSERT INTO teacher_login VALUES (new.tid, new.uid, 'cGFzc3dvcmRfQCMkI0Bf');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_contact`
--

CREATE TABLE `teacher_contact` (
  `tid` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_contact`
--

INSERT INTO `teacher_contact` (`tid`, `phone`) VALUES
(101014, '8790908998'),
(101014, '9834203529'),
(101014, '9877898700'),
(101015, '8932489532'),
(101015, '9458099320'),
(101015, '9834253892'),
(101016, '8934289355'),
(101016, '8989238953'),
(101016, '9342882358'),
(101017, '8953589539'),
(101017, '9834235289'),
(101017, '9898987898'),
(101018, '8935298352'),
(101018, '9839889432'),
(101018, '9898352532');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_issue`
--

CREATE TABLE `teacher_issue` (
  `tid` int(11) NOT NULL,
  `bid` int(10) NOT NULL,
  `issdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `retdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `teacher_issue`
--
DELIMITER $$
CREATE TRIGGER `insert into teahcer issue history after return of book` AFTER UPDATE ON `teacher_issue` FOR EACH ROW BEGIN
INSERT INTO teac_issue_history (teac_issue_history.tid, teac_issue_history.bid,teac_issue_history.issdate,teac_issue_history.retdate) VALUES (new.tid, new.bid, new.issdate, new.retdate);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update books when teacher issues book` BEFORE INSERT ON `teacher_issue` FOR EACH ROW BEGIN
UPDATE `books` SET `books`.`status`=0 WHERE new.bid = `books`.`bid`;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE `teacher_login` (
  `logid` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL DEFAULT 'username',
  `pass` varchar(255) NOT NULL DEFAULT 'password'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`logid`, `uname`, `pass`) VALUES
(101014, '101', 'cGFzc3dvcmRfQCMkI0Bf'),
(101015, '102', 'cGFzc3dvcmRfQCMkI0Bf'),
(101016, '103', 'cGFzc3dvcmRfQCMkI0Bf'),
(101017, '879324', 'cGFzc3dvcmRfQCMkI0Bf'),
(101018, '67333', 'cGFzc3dvcmRfQCMkI0Bf');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_pic`
--

CREATE TABLE `teacher_pic` (
  `tid` int(11) NOT NULL,
  `pic` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teac_issue_history`
--

CREATE TABLE `teac_issue_history` (
  `tid` int(11) NOT NULL,
  `issdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `retdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teac_issue_history`
--

INSERT INTO `teac_issue_history` (`tid`, `issdate`, `retdate`, `bid`) VALUES
(813, '2018-04-09 19:21:21', '2018-04-09 19:22:58', 38),
(813, '2018-04-09 19:23:18', '2018-04-09 19:23:27', 38),
(813, '2018-04-09 19:43:47', '2018-04-09 19:43:53', 200),
(813, '2018-04-09 19:23:55', '2018-04-09 19:43:56', 38),
(813, '2018-04-09 19:45:05', '2018-04-09 19:46:16', 7845),
(813, '2018-04-09 22:33:41', '2018-04-09 22:46:29', 300),
(813, '2018-04-09 20:02:24', '2018-04-09 22:46:50', 2384),
(813, '2018-04-09 22:37:27', '2018-04-09 22:46:56', 7845),
(813, '2018-04-09 22:44:24', '2018-04-09 22:51:02', 23021),
(813, '2018-04-09 19:48:09', '2018-04-09 22:51:06', 102050),
(813, '2018-04-09 23:10:11', '2018-04-10 14:20:40', 200),
(101014, '2018-04-10 19:59:40', '2018-04-10 19:59:57', 300),
(101014, '2018-04-10 21:06:04', '2018-04-10 21:06:33', 200),
(101014, '2018-04-10 21:33:18', '2018-04-11 11:20:04', 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`logid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `b_title` (`btitle`,`publication`,`edition`);

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD UNIQUE KEY `bid` (`bid`,`author`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logincheck`
--
ALTER TABLE `logincheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magazines`
--
ALTER TABLE `magazines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_pages`
--
ALTER TABLE `mp_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `page_name` (`page_alias`);

--
-- Indexes for table `mp_tagline`
--
ALTER TABLE `mp_tagline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `htno` (`htno`);

--
-- Indexes for table `student_contact`
--
ALTER TABLE `student_contact`
  ADD UNIQUE KEY `sid` (`sid`,`phone`);

--
-- Indexes for table `student_issue`
--
ALTER TABLE `student_issue`
  ADD UNIQUE KEY `bid` (`bid`,`sid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`logid`),
  ADD UNIQUE KEY `logid` (`logid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `student_pic`
--
ALTER TABLE `student_pic`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `teacher_contact`
--
ALTER TABLE `teacher_contact`
  ADD PRIMARY KEY (`tid`,`phone`);

--
-- Indexes for table `teacher_issue`
--
ALTER TABLE `teacher_issue`
  ADD PRIMARY KEY (`tid`,`bid`),
  ADD UNIQUE KEY `tid` (`tid`,`bid`),
  ADD KEY `teacher_issue_ibfk_2` (`bid`);

--
-- Indexes for table `teacher_login`
--
ALTER TABLE `teacher_login`
  ADD PRIMARY KEY (`logid`),
  ADD UNIQUE KEY `uname` (`uname`),
  ADD UNIQUE KEY `logid` (`logid`);

--
-- Indexes for table `teacher_pic`
--
ALTER TABLE `teacher_pic`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25876;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234883;

--
-- AUTO_INCREMENT for table `magazines`
--
ALTER TABLE `magazines`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87343;

--
-- AUTO_INCREMENT for table `mp_pages`
--
ALTER TABLE `mp_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `mp_tagline`
--
ALTER TABLE `mp_tagline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89240;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101019;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD CONSTRAINT `admin_login_ibfk_1` FOREIGN KEY (`logid`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `books` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_contact`
--
ALTER TABLE `student_contact`
  ADD CONSTRAINT `student_contact_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_issue`
--
ALTER TABLE `student_issue`
  ADD CONSTRAINT `student_issue_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  ADD CONSTRAINT `student_issue_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `books` (`bid`);

--
-- Constraints for table `student_login`
--
ALTER TABLE `student_login`
  ADD CONSTRAINT `student_login_ibfk_1` FOREIGN KEY (`logid`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_pic`
--
ALTER TABLE `student_pic`
  ADD CONSTRAINT `sid` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_contact`
--
ALTER TABLE `teacher_contact`
  ADD CONSTRAINT `teacher_contact_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_issue`
--
ALTER TABLE `teacher_issue`
  ADD CONSTRAINT `teacher_issue_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`),
  ADD CONSTRAINT `teacher_issue_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `books` (`bid`);

--
-- Constraints for table `teacher_login`
--
ALTER TABLE `teacher_login`
  ADD CONSTRAINT `teacher_login_ibfk_1` FOREIGN KEY (`logid`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_pic`
--
ALTER TABLE `teacher_pic`
  ADD CONSTRAINT `teacher_pic_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE;
