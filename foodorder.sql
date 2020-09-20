-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 04:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx'),
('hardik', 'hnchosla@gmail.com', '9558378886', 'hi', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Birju123@'),
('chosla1', 'hardik', 'hnchosla@gmail.com', '9558378886', 'palitana', 'pal'),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123@'),
('kishan', 'kishan', 'sarvaiyakishank@gmail.com', '8141913858', 'palitana', '123'),
('meet', 'muliya', 'meet123@gmail.com', '8000706541', 'palitana', 'meet'),
('nidha', 'nidha', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('opt123', 'optimus', 'opt123@gmail.com', '1111111111', 'titan', 'opt123'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek'),
('rahul', 'rahul', 'rahul123@gmail.com', '98655555', 'dubai', 'rahul'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith'),
('rr', 'ram', 'jgdfjhg@gmail.com', '95555564', 'pali', '123123'),
('sakir123', 'sakir', 'a@gmail.com', '9426259060', 'palitana', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `mobile`, `subject`, `message`) VALUES
(1, 'Kishan', 'sarvaiyakishank@gmail.com', '123465789', 'ji', 0),
(3, 'abc', 'apna@gmail.com', '89898', 'food', 0),
(4, 'abhi', 'jgfdg@g.com', '656562625', 'idgf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Juicy Masala Paneer Kathi Roll', 40, 'Juicy Masala Paneer Kathi Roll loaded with Masala Paneer chunks, onion & Mayo.', 1, 'images/Masala_Paneer_Kathi_Roll.jpg', 'ENABLE'),
(59, 'Meurig Fish', 60, 'Try Meurig - A whole Pomfret fish grilled with tangy marination & served with grilled onions and tomatoes.', 2, 'images/Meurig.jpg', 'ENABLE'),
(60, 'Chocolate Hazelnut Truffle', 99, 'Lose all senses over this very delicious chocolate hazelnut truffle.', 3, 'images/Chocolate_Hazelnut_Truffle.jpg', 'ENABLE'),
(61, 'Happy Happy Choco Chip Shake', 80, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg', 'ENABLE'),
(62, 'Spring Rolls', 65, 'Delicious Spring Rolls by Dragon Hut, Delhi. Order now!!!', 2, 'images/Spring_Rolls.jpg', 'ENABLE'),
(63, 'Baahubali Thali', 75, 'Baahubali Thali is accompanied by Kattapa Biriyani, Devasena Paratha, Bhalladeva Patiala Lassi', 3, 'images/Baahubali_Thali.jpg', 'ENABLE'),
(65, 'Coffee', 25, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 4, 'images/coffee.jpg', 'DISABLE'),
(66, 'Tea', 20, 'The simple elixir of tea is of our natural world.', 4, 'images/tea.jpg', 'DISABLE'),
(68, 'Paneer', 85, 'it', 6, 'images/paneer pakora.jpg', 'DISABLE'),
(69, 'Coffee', 25, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 2, 'images/coffee.jpg', 'ENABLE'),
(70, 'Tea', 20, 'The simple elixir of tea is of our natural world.', 2, 'images/tea.jpg', 'ENABLE'),
(71, 'Samosa', 40, 'Cocktail Crispy Samosa..', 2, 'images/samosa.jpg', 'ENABLE'),
(72, 'Paneer Pakora', 45, 'it gives whole new dimension even to the most boring or dull vegetable', 2, 'images/paneer pakora.jpg', 'ENABLE'),
(73, 'Puff', 35, 'Vegetable Puff, a snack with crisp-n-flaky outer layer and mixed vegetables stuffing', 2, 'images/puff.jpg', 'ENABLE'),
(74, 'Pizza', 200, 'Good and Tasty ', 2, 'Pizza.jpg', 'DISABLE'),
(75, 'French Fries', 60, 'Pure Veg and Tasty.', 2, 'frenchfries.jpg', 'DISABLE'),
(76, 'Pakora', 35, 'Pure Vegetable and Tasty.', 2, 'images/Pakora.jpg', 'DISABLE'),
(77, 'Pizza', 200, 'Pure Vegetable and Tasty.', 2, 'images/Pizza.jpg', 'ENABLE'),
(78, 'French Fries', 75, 'Pure Veg and Tasty.', 2, 'images/frenchfries.jpg', 'ENABLE'),
(79, 'Pakora', 45, 'TASTY', 2, 'images/Pakora.jpg', 'ENABLE'),
(80, 'lemon', 1200, 'good item', 6, 'C:\\xampp\\htdocs\\Online-Food-Order\\images\\lemon.jpg', 'DISABLE'),
(81, 'pani', 150, 'pani', 7, 'images\\dish-img/1.jpg', 'ENABLE'),
(82, 'dhokla', 120, 'dhokla is gujrati food', 8, 'images/dhokla.jpg', 'ENABLE'),
(83, 'khandvi', 200, 'khandvi', 8, 'images/khandvi.jpg', 'DISABLE'),
(84, 'frenchfries', 50, 'frenchfries i', 8, 'images/frenchfries.jpg', 'DISABLE'),
(85, 'khandvi', 150, 'khandvi is most popular food of gujrat', 8, 'images/khandvi.jpg', 'ENABLE'),
(86, 'methi paratha', 80, 'gujrati most popular food', 8, 'images/methi paratha.jpg', 'ENABLE'),
(87, 'Matar Paneer', 150, 'Matar Paneer is the best food', 8, 'images/Matar Paneer.jpg', 'ENABLE'),
(88, 'Masala Dosa', 80, 'Masala Dosa', 8, 'images/Masala Dosa.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('abhi', 'abhi', 'mavaniabhi@gmail.com', '4558888', 'palitana', 'abhi'),
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('chosla12', 'hardikchosla', 'hnchosla@gmail.com', '123', 'palitana', 'pal'),
('ckumar', 'Chandan Kumar', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123'),
('dhiraj', 'DHIRAJ kUMAR', 'dk123@gmail.com', '8903079750', 'Pondicherry.', 'Dhiraj'),
('kapil', 'kapil', 'kapil@gmail.co', '99898989', 'bani', 'kapil'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-03', 'ckumar', 1),
(2, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2019-03-03', 'ckumar', 1),
(3, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2019-03-03', 'ckumar', 1),
(5, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2019-03-03', 'ckumar', 1),
(6, 65, 'Coffee', 25, 2, '2019-03-03', 'ckumar', 4),
(7, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2019-03-03', 'ckumar', 1),
(8, 65, 'Coffee', 25, 2, '2019-03-03', 'ckumar', 4),
(9, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-03', 'ckumar', 3),
(10, 59, 'Meurig Fish', 60, 1, '2019-03-05', 'ckumar', 2),
(11, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-05', 'ckumar', 3),
(12, 65, 'Coffee', 25, 1, '2019-03-05', 'ckumar', 4),
(13, 59, 'Meurig Fish', 60, 4, '2019-03-05', 'ckumar', 2),
(14, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'ckumar', 1),
(15, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-05', 'ckumar', 3),
(16, 65, 'Coffee', 25, 1, '2019-03-05', 'ckumar', 4),
(17, 66, 'Tea', 20, 7, '2019-03-05', 'ckumar', 4),
(18, 59, 'Meurig Fish', 60, 5, '2019-03-05', 'birju', 2),
(19, 63, 'Baahubali Thali', 75, 1, '2019-03-05', 'birju', 3),
(20, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(21, 62, 'Spring Rolls', 65, 1, '2019-03-05', 'birju', 2),
(22, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(23, 62, 'Spring Rolls', 65, 1, '2019-03-05', 'birju', 2),
(24, 65, 'Coffee', 25, 1, '2019-03-05', 'birju', 4),
(26, 59, 'Meurig Fish', 60, 6, '2019-03-05', 'birju', 2),
(27, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(28, 59, 'Meurig Fish', 60, 1, '2019-03-05', 'birju', 2),
(29, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(30, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(31, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(32, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(33, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(34, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(35, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(36, 62, 'Spring Rolls', 65, 1, '2019-03-15', 'ckumar', 2),
(37, 72, 'Paneer Pakora', 45, 6, '2019-03-15', 'ckumar', 2),
(38, 78, 'French Fries', 75, 7, '2019-03-15', 'ckumar', 2),
(39, 78, 'French Fries', 75, 1, '2019-03-15', 'ckumar', 2),
(40, 73, 'Puff', 35, 1, '2019-03-15', 'ckumar', 2),
(41, 77, 'Pizza', 200, 2, '2019-03-16', 'ckumar', 2),
(42, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(43, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(44, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(45, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(46, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(47, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(48, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-25', 'ckumar', 3),
(49, 62, 'Spring Rolls', 65, 6, '2019-03-25', 'ckumar', 2),
(50, 70, 'Tea', 20, 5, '2019-03-25', 'ckumar', 2),
(51, 73, 'Puff', 35, 3, '2019-03-25', 'ckumar', 2),
(52, 70, 'Tea', 20, 1, '2019-03-30', 'ckumar', 2),
(53, 60, 'Chocolate Hazelnut Truffle', 99, 5, '2019-03-30', 'ckumar', 3),
(54, 69, 'Coffee', 25, 7, '2019-03-30', 'ckumar', 2),
(55, 62, 'Spring Rolls', 65, 1, '2019-04-01', 'ckumar', 2),
(56, 70, 'Tea', 20, 4, '2019-04-01', 'ckumar', 2),
(57, 70, 'Tea', 20, 1, '2019-04-01', 'ckumar', 2),
(58, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-01', 'ckumar', 3),
(59, 59, 'Meurig Fish', 60, 6, '2019-04-02', 'ckumar', 2),
(60, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-04-02', 'ckumar', 1),
(61, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(62, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(63, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(64, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(65, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(66, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(67, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-18', 'ckumar', 3),
(68, 71, 'Samosa', 40, 1, '2019-04-18', 'ckumar', 2),
(69, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-02-14', 'kishan', 3),
(70, 71, 'Samosa', 40, 1, '2020-02-17', 'kishan', 2),
(71, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-02-18', 'kishan', 3),
(72, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-02-18', 'kishan', 1),
(73, 69, 'Coffee', 25, 1, '2020-02-18', 'kishan', 2),
(74, 63, 'Baahubali Thali', 75, 1, '2020-02-18', 'kishan', 3),
(75, 79, 'Pakora', 45, 1, '2020-02-18', 'kishan', 2),
(76, 73, 'Puff', 35, 1, '2020-02-18', 'kishan', 2),
(77, 70, 'Tea', 20, 1, '2020-02-18', 'kishan', 2),
(78, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-02-18', 'kishan', 1),
(79, 71, 'Samosa', 40, 1, '2020-02-18', 'kishan', 2),
(80, 72, 'Paneer Pakora', 45, 1, '2020-02-27', 'kishan', 2),
(81, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-02-27', 'kishan', 3),
(82, 59, 'Meurig Fish', 60, 1, '2020-02-27', 'kishan', 2),
(83, 69, 'Coffee', 25, 1, '2020-02-27', 'kishan', 2),
(84, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-02-27', 'kishan', 1),
(85, 80, 'lemon', 1200, 1, '2020-02-27', 'chosla1', 6),
(86, 80, 'lemon', 1200, 1, '2020-02-27', 'chosla1', 6),
(87, 69, 'Coffee', 25, 1, '2020-02-27', 'chosla1', 2),
(88, 59, 'Meurig Fish', 60, 1, '2020-02-27', 'chosla1', 2),
(89, 81, 'pani puri', 150, 1, '2020-02-27', 'chosla1', 7),
(90, 79, 'Pakora', 45, 1, '2020-02-27', 'chosla1', 2),
(91, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-02-27', 'chosla1', 1),
(92, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-02-27', 'chosla1', 3),
(93, 87, 'Matar Paneer', 150, 1, '2020-03-01', 'kishan', 8),
(94, 86, 'methi paratha', 80, 1, '2020-03-01', 'kishan', 8),
(95, 88, 'Masala Dosa', 80, 1, '2020-03-01', 'kishan', 8),
(96, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-03-02', 'kishan', 3),
(97, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-03-02', 'kishan', 3),
(98, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-03-02', 'opt123', 1),
(99, 59, 'Meurig Fish', 60, 1, '2020-03-02', 'kishan', 2),
(100, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-03-02', 'kishan', 1),
(101, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-03-02', 'kishan', 3),
(102, 81, 'pani', 150, 1, '2020-03-02', 'kishan', 7),
(103, 86, 'methi paratha', 80, 1, '2020-03-02', 'kishan', 8),
(104, 88, 'Masala Dosa', 80, 1, '2020-03-02', 'kishan', 8),
(105, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-03-02', 'kishan', 3),
(106, 59, 'Meurig Fish', 60, 1, '2020-03-03', 'kishan', 2),
(107, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-03-03', 'sakir123', 3),
(108, 59, 'Meurig Fish', 60, 1, '2020-03-03', 'sakir123', 2),
(109, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-03-03', 'sakir123', 3),
(110, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-03-03', 'kishan', 1),
(111, 87, 'Matar Paneer', 150, 1, '2020-03-04', 'kishan', 8),
(112, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(113, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(114, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(115, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(116, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(117, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(118, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(119, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(120, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(121, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(122, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(123, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(124, 86, 'methi paratha', 80, 1, '2020-03-04', 'kishan', 8),
(125, 59, 'Meurig Fish', 60, 1, '2020-03-04', 'kishan', 2),
(126, 86, 'methi paratha', 80, 1, '2020-03-05', 'kishan', 8),
(127, 86, 'methi paratha', 80, 1, '2020-03-05', 'kishan', 8),
(128, 87, 'Matar Paneer', 150, 1, '2020-03-05', 'kishan', 8),
(129, 85, 'khandvi', 150, 1, '2020-03-05', 'kishan', 8),
(130, 82, 'dhokla', 120, 1, '2020-03-05', 'kishan', 8),
(131, 88, 'Masala Dosa', 80, 1, '2020-03-05', 'kishan', 8),
(132, 59, 'Meurig Fish', 60, 1, '2020-03-06', 'kishan', 2),
(133, 79, 'Pakora', 45, 1, '2020-03-06', 'kishan', 2),
(134, 85, 'khandvi', 150, 1, '2020-03-06', 'kishan', 8),
(135, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-03-06', 'kishan', 1),
(136, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-03-06', 'kishan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi\'s Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068'),
(4, 'Food Exploria', 'ckj40856@gmail.com', '09487810674', 'C:\\xampp\\htdocs\\FoodExploria-master\\images/coffee.', 'ckumar'),
(6, 'Le Cafe', 'lecafepondi234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le cafe', 'dhiraj'),
(7, 'rk', 'rk@g.com', '789789789', 'bhavanagar', 'chosla12'),
(8, 'apna', 'apna@gmail.com', '969555562', 'bhavanagar', 'abhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
