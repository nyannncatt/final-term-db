-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 02:03 PM
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
-- Database: `advdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `brand`, `price`, `img_url`) VALUES
(1, 'Galaxy Explorer T-Shirt', 'adidas', 78.00, 'images/products/f1.jpg'),
(2, 'Neon Nights T-Shirt', 'adidas', 78.00, 'images/products/f2.jpg'),
(3, 'Retro Vibes T-Shirt', 'adidas', 78.00, 'images/products/f3.jpg'),
(4, 'Cosmic Journey T-Shirt', 'adidas', 78.00, 'images/products/f4.jpg'),
(5, 'Starship Wanderer T-Shirt', 'adidas', 78.00, 'images/products/f5.jpg'),
(6, 'Space Odyssey T-Shirt', 'adidas', 78.00, 'images/products/f6.jpg'),
(7, 'Solar Flare T-Shirt', 'adidas', 78.00, 'images/products/f7.jpg'),
(8, 'Cosmic Explorer T-Shirt', 'adidas', 78.00, 'images/products/f8.jpg'),
(9, 'Nebula Horizon T-Shirt', 'adidas', 78.00, 'images/products/n1.jpg'),
(10, 'Galactic Wave T-Shirt', 'adidas', 78.00, 'images/products/n2.jpg'),
(11, 'Stellar Rush T-Shirt', 'adidas', 78.00, 'images/products/n3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
