-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 09:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instrumentstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productPrice` decimal(10,0) NOT NULL,
  `productImage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userId`, `productId`, `qty`, `productName`, `productPrice`, `productImage`) VALUES
(40, 1, 6, 1, 'Casio đôi MTP-1314L-8AVDF (Nam) – LTP-1314L-8AVDF (Nữ)', '230000000', 'watch_5.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(2, 'Đồng Hồ Nam', 1),
(4, 'Đồng Hồ Nữ', 1),
(5, 'Đồng Hồ Điện Tử', 1),
(6, 'Đồng Hồ Cơ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdDate` date NOT NULL,
  `receivedDate` date DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `createdDate`, `receivedDate`, `status`) VALUES
(39, 31, '2021-12-07', '2021-12-07', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `productPrice` decimal(10,0) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productImage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `productId`, `qty`, `productPrice`, `productName`, `productImage`) VALUES
(36, 39, 10, 1, '6200000', 'Fossil-GENT16-169D2', 'watch_9.png'),
(37, 39, 11, 1, '21100000', 'Fossil-SHE11-19AD1', 'watch_10.png'),
(38, 39, 12, 1, '34700000', 'Fossil-SHE20-19GQ1', 'watch_11.png'),
(39, 39, 13, 1, '31000000', 'Fossil-SHE15-18AD1', 'watch_12.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `originalPrice` decimal(10,0) NOT NULL,
  `promotionPrice` decimal(10,0) NOT NULL,
  `image` varchar(50) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdDate` date NOT NULL,
  `cateId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `des` varchar(1000) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `soldCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `originalPrice`, `promotionPrice`, `image`, `createdBy`, `createdDate`, `cateId`, `qty`, `des`, `status`, `soldCount`) VALUES
(2, 'Casio MTP-V006GL-7BUDF', '233000000', '220000000', 'watch_1.png', 1, '2021-12-07', 2, 96, 'Đồng hồ Casio MTP-V006GL-7BUDF với mặt số tròn truyền thống, màu vàng của niềng bao quanh màu trắng của nền số, trung tâm mặt số có 3 kim chỉ màu vàng và vạch số La Mã phủ màu đen nổi bật.', 1, 4),
(3, 'Casio DTH-D001SA-7AFGG', '90500000', '85000000', 'watch_2.png', 1, '2021-12-07', 2, 9, 'Đồng hồ Casio DTH-D001SA-7AFGG\n với mặt số tròn truyền thống, màu vàng của niềng bao quanh màu trắng của nền số, trung tâm mặt số có 3 kim chỉ màu vàng và vạch số La Mã phủ màu đen nổi bật.', 1, 1),
(4, 'Casio DTH-D002SA-7AFSL', '749000000', '749000000', 'watch_3.png', 1, '2021-12-07', 2, 19, 'Đồng hồ Casio DTH-D001SA-7AFGG\n với mặt số tròn truyền thống, màu vàng của niềng bao quanh màu trắng của nền số, trung tâm mặt số có 3 kim chỉ màu vàng và vạch số La Mã phủ màu đen nổi bật.', 1, 1),
(5, 'Casio SHE-4547M-2AUDF', '98000000', '90000000', 'watch_4.png', 1, '2021-12-07', 2, 8, 'Đồng hồ Casio DTH-D002SA-7AFSL\n với mặt số tròn truyền thống, màu vàng của niềng bao quanh màu trắng của nền số, trung tâm mặt số có 3 kim chỉ màu vàng và vạch số La Mã phủ màu đen nổi bật.', 1, 2),
(6, 'Casio đôi MTP-1314L-8AVDF (Nam) – LTP-1314L-8AVDF (Nữ)', '230000000', '230000000', 'watch_5.png', 1, '2021-12-07', 2, 7, 'Mẫu Seiko SRPE77K1 dây đeo kim loại phiên bản dây lưới mạ bạc các chi tiết kim chỉ cùng các cọc chấm tròn được phủ dạ quang trên nền mặt số lớn 42.5mm.', 1, 3),
(7, 'Citizen NY0083-14X', '3190000', '3190000', 'watch_6.png', 1, '2021-12-07', 4, 8, 'Đồng hồ Seiko SUP282P1 có mặt số tròn nhỏ nhắn, kim chỉ và vạch số thanh mãnh nổi bật trên nền số màu trắng trang nhã, dây đeo kim loại màu vàng đem lại phong cách thanh lịch, sang trọng cho phái nữ.', 1, 2),
(8, 'Citizen EG7072-19X', '19000000', '19000000', 'watch_7.png', 1, '2021-12-07', 4, 7, 'Mẫu Citizen NY0083-14X thiết kế dày dặn vỏ máy kim loại vàng hồng chứa đựng trải nghiệm đến từ bộ máy cơ với bề dày 12mm, tạo nên điểm nhấn với khả năng chịu nước 20ATM.', 1, 3),
(9, 'Fossil-GENT12-1D123', '4200000', '4200000', 'watch_8.png', 1, '2021-12-07', 4, 6, 'Mẫu Citizen NY0083-14X thiết kế dày dặn vỏ máy kim loại vàng hồng chứa đựng trải nghiệm đến từ bộ máy cơ với bề dày 12mm, tạo nên điểm nhấn với khả năng chịu nước 20ATM.', 1, 4),
(10, 'Fossil-GENT16-169D2', '6350000', '6200000', 'watch_9.png', 1, '2021-12-07', 4, 10, 'Mẫu Citizen NY0083-14X thiết kế dày dặn vỏ máy kim loại vàng hồng chứa đựng trải nghiệm đến từ bộ máy cơ với bề dày 12mm, tạo nên điểm nhấn với khả năng chịu nước 20ATM.', 1, 0),
(11, 'Fossil-SHE11-19AD1', '21100000', '21100000', 'watch_10.png', 1, '2021-12-07', 4, 10, 'Mẫu Citizen NY0083-14X thiết kế dày dặn vỏ máy kim loại vàng hồng chứa đựng trải nghiệm đến từ bộ máy cơ với bề dày 12mm, tạo nên điểm nhấn với khả năng chịu nước 20ATM.', 1, 0),
(12, 'Fossil-SHE20-19GQ1', '34700000', '34700000', 'watch_11.png', 1, '2021-12-07', 4, 10, 'Mẫu Citizen NY0083-14X thiết kế dày dặn vỏ máy kim loại vàng hồng chứa đựng trải nghiệm đến từ bộ máy cơ với bề dày 12mm, tạo nên điểm nhấn với khả năng chịu nước 20ATM.', 1, 0),
(13, 'Fossil-SHE15-18AD1', '31000000', '31000000', 'watch_12.png', 1, '2021-12-07', 5, 20, 'Mẫu Citizen NY0083-14X thiết kế dày dặn vỏ máy kim loại vàng hồng chứa đựng trải nghiệm đến từ bộ máy cơ với bề dày 12mm, tạo nên điểm nhấn với khả năng chịu nước 20ATM.', 1, 0),
(14, 'Fossil-SHE12-19AD1', '29000000', '29000000', 'watch_13.png', 1, '2021-12-07', 5, 15, 'Mẫu Citizen NY0083-14X thiết kế dày dặn vỏ máy kim loại vàng hồng chứa đựng trải nghiệm đến từ bộ máy cơ với bề dày 12mm, tạo nên điểm nhấn với khả năng chịu nước 20ATM.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Employee'),
(3, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `address` varchar(500) NOT NULL,
  `isConfirmed` tinyint(4) NOT NULL DEFAULT 0,
  `captcha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `fullname`, `dob`, `password`, `role_id`, `status`, `address`, `isConfirmed`, `captcha`) VALUES
(1, 'admin@gmail.com', 'admin', '2021-11-01', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '', 1, ''),
(3, 'customer01@gmail.com', 'customer01', '2022-03-10', '', 3, 1, '01 Adam dst, St.Christ, London', 1, ''),
(31, 'lapankhuongnguyen@gmail.com', 'khuong nguyen', '2021-12-06', 'c4ca4238a0b923820dcc509a6f75849b', 2, 1, 'CanTho', 1, '56661');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`userId`),
  ADD KEY `product_id` (`productId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`userId`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`orderId`),
  ADD KEY `product_id` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id` (`cateId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cateId`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
