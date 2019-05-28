-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 07:22 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buildingshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `id` int(10) NOT NULL,
  `buy_date` date DEFAULT NULL,
  `emp_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`id`, `buy_date`, `emp_id`) VALUES
(21, '2019-03-12', '1'),
(22, '2019-03-14', '1'),
(23, '2019-03-15', '1'),
(24, '2019-03-15', '1'),
(25, '2019-03-26', '1');

-- --------------------------------------------------------

--
-- Table structure for table `buy_detail`
--

CREATE TABLE `buy_detail` (
  `id` int(11) NOT NULL,
  `buy_id` int(11) DEFAULT NULL,
  `mat_id` int(11) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buy_detail`
--

INSERT INTO `buy_detail` (`id`, `buy_id`, `mat_id`, `cost`, `qty`) VALUES
(30, 21, 15, 140, 100),
(31, 21, 16, 180, 100),
(32, 21, 17, 110, 100),
(33, 21, 18, 160, 100),
(34, 21, 19, 120, 100),
(35, 21, 20, 130, 100),
(36, 21, 21, 180, 100),
(37, 21, 22, 140, 100),
(38, 21, 23, 500, 100),
(39, 21, 24, 120, 100),
(40, 21, 25, 65, 100),
(41, 21, 26, 85, 100),
(42, 21, 27, 95, 100),
(43, 21, 28, 1100, 100),
(44, 21, 29, 1000, 100),
(45, 22, 17, 100, 10),
(46, 23, 15, 130, 10),
(47, 24, 16, 180, 10);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `cat_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(13, 'สี'),
(14, 'ปูน'),
(15, 'ก็อกน้ำ'),
(17, 'กระเบื้อง'),
(18, 'สายยาง'),
(19, 'กุญเเจ'),
(20, 'เสา'),
(21, 'เครื่องมือช่าง'),
(22, 'มุงหลังคา'),
(23, 'ไม้'),
(24, 'หลอดไฟ');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `cus_id` varchar(13) DEFAULT NULL,
  `cus_firstname` varchar(50) DEFAULT NULL,
  `cus_lastname` varchar(50) DEFAULT NULL,
  `cus_sex` int(11) DEFAULT NULL,
  `cus_tel` varchar(10) DEFAULT NULL,
  `cus_address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `cus_id`, `cus_firstname`, `cus_lastname`, `cus_sex`, `cus_tel`, `cus_address`) VALUES
(27, '1209700419793', 'อินทิรา', 'เเก้วดวงใน', 1, '0884830024', 'none'),
(28, '1234567890123', 'ประทาน', 'ห้องหนองซำ', 0, '0879649295', '10/10'),
(29, '1311200047896', 'กัลยา', 'พันธไชย', 1, '0884830024', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `emp_firstname` varchar(50) DEFAULT NULL,
  `emp_lastname` varchar(50) DEFAULT NULL,
  `emp_address` varchar(150) DEFAULT NULL,
  `emp_tal` varchar(10) DEFAULT NULL,
  `emp_sex` int(11) DEFAULT NULL,
  `emp_birtday` date DEFAULT NULL,
  `emp_salaly` double DEFAULT NULL,
  `emp_hiredate` date DEFAULT NULL,
  `emp_idcard` varchar(13) DEFAULT NULL,
  `emp_password` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_firstname`, `emp_lastname`, `emp_address`, `emp_tal`, `emp_sex`, `emp_birtday`, `emp_salaly`, `emp_hiredate`, `emp_idcard`, `emp_password`) VALUES
(1, 'Admin', '', 'xxx', 'xxx', 1, '1970-01-01', 10, '1970-01-01', 'admin', '1234'),
(2, 'พัชรินทร์', 'วิเชียร', '107/4', '0879649294', 1, '1994-07-17', 120000, '2019-03-13', '1311200078948', '117799'),
(3, 'ดวงดี', 'มีดวง', '12/5', '0879654894', 0, '2019-03-10', 12000, '2019-03-03', '1311200078965', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `fifo`
--

CREATE TABLE `fifo` (
  `id` int(11) NOT NULL,
  `mat_id` int(11) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `req_qty` int(11) DEFAULT NULL,
  `remain_qty` int(11) DEFAULT NULL,
  `buy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fifo`
--

INSERT INTO `fifo` (`id`, `mat_id`, `cost`, `req_qty`, `remain_qty`, `buy_id`) VALUES
(32, 16, 180, 100, 89, 21),
(33, 17, 110, 100, 0, 21),
(34, 18, 160, 100, 100, 21),
(35, 19, 120, 100, 100, 21),
(36, 20, 130, 100, 100, 21),
(37, 21, 180, 100, 100, 21),
(38, 22, 140, 100, 100, 21),
(39, 23, 500, 100, 0, 21),
(40, 24, 120, 100, 100, 21),
(41, 25, 65, 100, 100, 21),
(42, 26, 85, 100, 100, 21),
(43, 27, 95, 100, 100, 21),
(44, 28, 1100, 100, 100, 21),
(45, 29, 1000, 100, 100, 21),
(46, 17, 100, 10, 10, 22),
(48, 16, 180, 10, 10, 24);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(10) NOT NULL,
  `mat_name` varchar(50) DEFAULT NULL,
  `mat_price` double DEFAULT NULL,
  `mat_number` int(100) DEFAULT NULL,
  `cat_id` varchar(10) DEFAULT NULL,
  `mat_cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `mat_name`, `mat_price`, `mat_number`, `cat_id`, `mat_cost`) VALUES
(16, 'หลอด LED ยาว', 189, NULL, '24', NULL),
(17, 'หลอดตะเกียบ', 129, NULL, '24', NULL),
(18, 'หลอดนีออน', 180, NULL, '24', NULL),
(19, 'หลอดเกลียว', 139, NULL, '24', NULL),
(20, 'ปูนตราเสือซีเมนต์', 150, NULL, '14', NULL),
(21, 'ปูนตราเสือซีเมนต์ขาว', 200, NULL, '14', NULL),
(22, 'ปูนตราเสือเทปรับพื้น', 150, NULL, '14', NULL),
(23, 'สีทารองพื้น TOA ขนาด 3.785 ลิตร', 120, NULL, '13', NULL),
(24, 'ไม้อัด', 120, NULL, '23', NULL),
(25, 'สังกระสี 3 ดาว ลอนเล็ก ขาว 5ฟุต', 79, NULL, '22', NULL),
(26, 'สังกระสี 3 ดาว ลอนเล็ก ขาว ฟุต', 99, NULL, '22', NULL),
(27, 'สังกระสี 3 ดาว ลอนเล็ก ขาว 7ฟุต', 110, NULL, '22', NULL),
(28, 'สว่านไฟฟ้า MAKTEC  3/8 นิ้ว รุ่น MT606', 1200, NULL, '21', NULL),
(29, 'NASH สว่านไร้สาย รุ่น L-DS26', 1150, NULL, '21', NULL),
(30, 'หลอด LED สั้น', 149, NULL, '24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(10) NOT NULL,
  `promo_name` varchar(50) DEFAULT NULL,
  `promo_detail` varchar(150) DEFAULT NULL,
  `promo_discount` double DEFAULT NULL,
  `promo_startdate` date DEFAULT NULL,
  `promo_enddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `promo_name`, `promo_detail`, `promo_discount`, `promo_startdate`, `promo_enddate`) VALUES
(5, 'ฉลองครบ 10 ร้านชลธิชาการก่อสร้าง', 'ลด 10 เปอร์เซนต์', 10, '2019-03-12', '2019-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int(10) NOT NULL,
  `sale_date` date DEFAULT NULL,
  `sale_total` double DEFAULT NULL,
  `cus_id` varchar(10) DEFAULT NULL,
  `emp_id` varchar(10) DEFAULT NULL,
  `promo_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `sale_date`, `sale_total`, `cus_id`, `emp_id`, `promo_id`) VALUES
(38, '2019-03-14', NULL, '', '1', NULL),
(39, '2019-03-15', NULL, '', '1', NULL),
(40, '2019-03-15', NULL, '', '1', NULL),
(41, '2019-03-15', NULL, '', '1', NULL),
(42, '2019-03-26', NULL, '', '1', NULL),
(43, '2019-04-02', NULL, '', '1', NULL),
(44, '2019-04-04', NULL, '', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` int(11) NOT NULL,
  `mat_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `sale_qty` int(11) DEFAULT NULL,
  `sale_price` double DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_detail`
--

INSERT INTO `sale_detail` (`id`, `mat_id`, `sale_id`, `sale_qty`, `sale_price`, `price`) VALUES
(28, 15, 38, 1, 149, 149),
(29, 17, 38, 1, 129, 129),
(30, 15, 39, 99, 149, 149),
(31, 16, 40, 11, 189, 189),
(32, 23, 42, 100, 120, 120),
(33, 17, 44, 99, 129, 129);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_detail`
--
ALTER TABLE `buy_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fifo`
--
ALTER TABLE `fifo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `buy_detail`
--
ALTER TABLE `buy_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fifo`
--
ALTER TABLE `fifo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
