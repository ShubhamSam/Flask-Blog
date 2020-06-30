-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2020 at 01:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `mes`, `date`) VALUES
(1, 'test', 'test@gmail.com', '123456789', 'Test message', '2020-05-27 14:26:45'),
(2, 'Shubham Kumar Saha', 'shubhamsahaabhi@gmail.com', '08757819887', 'Demo text', '2020-05-28 12:39:39'),
(3, 'Shubham Kumar Saha', 'shubhamsahaabhi@gmail.com', '08757819887', 'Demo text\r\n', '2020-05-28 13:11:07'),
(4, 'Shivam Kumar', 'shubham@gmail.com', '6200461983', 'Demo', '2020-05-28 13:12:27'),
(5, 'Sam', 'sam@gmail.com', '9875678965', 'This is sam.', '2020-05-28 20:06:18'),
(6, 'asdas', 'dca@gmail.com', '3456789', 'dqeihkhdvnsv', '2020-05-31 19:16:16'),
(7, 'asdas', 'dca@gmail.com', '3456789', 'dqeihkhdvnsv', '2020-05-31 19:21:19'),
(8, 'Rajeev Kumar', 'rajeev@gmail.com', '6789356278', 'Hey, this is Rajeev checking email sending is working or not.', '2020-05-31 19:27:35'),
(9, 'Rog', 'rog@gmail.com', '6424434554', 'Rog World', '2020-06-02 20:57:40'),
(10, 'Rog', 'rog@gmail.com', '6424434554', 'Rog World', '2020-06-02 21:02:43'),
(11, 'Shivam Kumar', 'shiv@gmail.com', '6200461983', 'Hey, this is shiv.\r\n', '2020-06-02 21:20:48'),
(12, 'wdesf', 'dqeds@c.com', '2345678678', 'Demo', '2020-06-02 21:30:07'),
(13, 'Rohan', 'rohan@gmail.com', '8676576541', 'Hey this is rohan', '2020-06-08 18:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `sub_title`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This is my First Blog.', 'This is the subtitle of my first Blog', 'first-post', 'Hey Bloggies,\r\nIt’s important to follow trends in your field to ensure you’re staying current on standards and protocols and perhaps more so in the field of coding. Programmers of all specialties can benefit from following industry-leading blogs to stay aware of the latest technologies. Each of these bloggers has made a name for themselves in the programming community by sharing relevant, high-quality information and tips for coders. They maintain their respective blogs well and keep current information posted on a regular basis.\r\nBy following the best programming blogs you’ll find tips and shortcuts you may never have otherwise thought to try. Consider using an RSS feed reader through your phone or desktop browser to automatically download each new post from these top coding bloggers.', 'post-bg.jpg', '2020-06-08 19:17:36'),
(2, 'Python World', 'Python for Begineer', 'second-post on python', 'Thinking of taking the plunge and getting your hands dirty with Python? Perhaps you’re already familiar with the language, but want to dig deeper to find out just how far this rabbit hole goes.\r\n\r\nWhether you’re a developer with some knowledge of programming or are just now dipping your toes in these waters, you’ve made the right choice. Python is an easy-to-grasp language that is, at the same time, versatile enough for you to do some interesting things with.\r\n\r\nStill, the decision to learn how to use Python effectively is only the first step on this thrilling journey. Once that’s out of the way, it’s time to educate yourself.\r\n\r\nIt doesn’t matter whether you’re looking for basic tutorials or news on all the latest developments, you’ll need some quality sources to keep you posted on all things Python.\r\n\r\nTo make things extra easy for you, we’ve compiled a list of 10 reliable Python blogs—it’s as good a place to start as any!', 'about-bg.png', '2020-06-08 18:04:21'),
(3, 'A Minimal Application', 'Flask Bascis', 'third-edited-post', 'For the common case of having one Flask application all you have to do is to create your Flask application, load the configuration of choice and then create the SQLAlchemy object by passing it the application.\r\n\r\nOnce created, that object then contains all the functions and helpers from both sqlalchemy and sqlalchemy.orm. Furthermore it provides a class called Model that is a declarative base which can be used to declare models:\r\n\r\nfrom flask import Flask\r\nfrom flask_sqlalchemy import SQLAlchemy\r\n\r\napp = Flask(__name__)\r\napp.config[\'SQLALCHEMY_DATABASE_URI\'] = \'sqlite:////tmp/test.db\'\r\ndb = SQLAlchemy(app)\r\n\r\n\r\nclass User(db.Model):\r\n    id = db.Column(db.Integer, primary_key=True)\r\n    username = db.Column(db.String(80), unique=True, nullable=False)\r\n    email = db.Column(db.String(120), unique=True, nullable=False)\r\n\r\n    def __repr__(self):\r\n        return \'<User %r>\' % self.username\r\n', 'about-bg.jpg', '2020-06-02 21:31:02'),
(4, 'Road to Enlightenment towards Python World', 'Python Flask', 'fourth-post', 'The only things you need to know compared to plain SQLAlchemy are:\r\n\r\nSQLAlchemy gives you access to the following things:\r\n\r\nall the functions and classes from sqlalchemy and sqlalchemy.orm\r\n\r\na preconfigured scoped session called session\r\n\r\nthe metadata\r\n\r\nthe engine\r\n\r\na SQLAlchemy.create_all() and SQLAlchemy.drop_all() methods to create and drop tables according to the models.\r\n\r\na Model baseclass that is a configured declarative base.\r\n\r\nThe Model declarative base class behaves like a regular Python class but has a query attribute attached that can be used to query the model. (Model and BaseQuery)\r\n\r\nYou have to commit the session, but you don’t have to remove it at the end of the request, Flask-SQLAlchemy does that for you.', 'about-bg.jpg', '2020-06-08 19:47:01'),
(9, 'Sam', 'Hey', 'sam-txt', 'Demo check', 'img.png', '2020-06-08 19:59:55'),
(10, 'This demo', 'tfjyghb', 'ygk', 'gykh', 'yfgj', '2020-06-24 12:51:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
