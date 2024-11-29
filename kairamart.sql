-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2023 at 08:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kairamart`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `bill_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_no` int(11) NOT NULL,
  `p_name` varchar(20) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `c_address` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `mobile_no`, `c_address`, `password`) VALUES
(1, 'Abhi', '998877660', 'Mahal, Nagpur', 'abhi123'),
(2, 'Bhavna', '998877661', 'Somalwada, Nagpur', 'bhavna123'),
(3, 'Chetan', '998877662', 'Burdi, Nagpur', 'chetan123'),
(4, 'Diksha', '998877663', 'Nandanvan, Nagpur', 'diksha123'),
(5, 'Gungun', '998877664', 'Dighori', 'gungun123'),
(6, 'Harish ', '998877665', 'Besa, Nagpur', 'harish123'),
(7, 'Joy', '998877666', 'Rajapeth, Nagpur', 'joy123'),
(8, 'Karan ', '998877667', 'Omkar Nagar, Nagpur', 'karan123'),
(9, 'Rashmi', '998877668', 'Narsala, Nagpur', 'rashmi123'),
(10, 'Maithili', '998877669', 'Jamtha, Nagpur', 'maithili123');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `m_name`, `password`) VALUES
(101, 'manager01', 'manager123'),
(102, 'manager02', 'manager321');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `image_url`, `unit_price`) VALUES
(1001, 'Nescafe coffee', 'images\\product.png', 20),
(1002, 'Quaker Oats ', 'images\\product1.webp', 50),
(1003, 'Coca-Cola', NULL, 40),
(1004, 'Lux Soap', NULL, 50),
(1005, 'Oreo Biscuit', NULL, 240),
(1006, 'Himalaya Soap', NULL, 560),
(1007, 'Mozarella Chesse', NULL, 230),
(1008, 'Huggies Dyper', NULL, 150),
(1009, 'Amul Butter', NULL, 340),
(1010, 'Colgate', NULL, 80),
(1011, 'Dinshaw Ice-cream', NULL, 60),
(1012, 'Emami sunflower oil', NULL, 140),
(1013, 'Kissan tomato ketchup', NULL, 100),
(1014, 'Mother dairy milk', NULL, 50),
(1015, 'Paperboat', NULL, 25),
(1016, 'Taj Tea', NULL, 80),
(1017, 'Ashirvad ata', NULL, 300);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `emp_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `position`, `salary`, `floor`, `emp_name`) VALUES
(2001, 'Cashier', 20000.00, 1, 'Manisha'),
(2002, 'Stockclerk', 5500.00, 1, 'Shubhas'),
(2003, 'Security', 4000.00, 2, 'Prakash'),
(2004, 'Technician', 8000.00, 1, 'Sameer'),
(2005, 'Bagger', 5000.00, 2, 'Ruhani'),
(2006, 'Pharmacist', 3500.00, 1, 'Vijay'),
(2007, 'Cashier', 20000.00, 2, 'Harshad'),
(2008, 'Security', 4000.00, 1, 'Jay'),
(2009, 'Bagger', 5000.00, 1, 'Anisha'),
(2010, 'Bagger', 5000.00, 1, 'Sushant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_no`) USING BTREE,
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1018;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2012;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
