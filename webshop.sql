-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2018 at 08:35 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `cartId` text NOT NULL,
  `productId` int(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `cartId`, `productId`, `quantity`) VALUES
(1, 'f186ab89-122a-48b8-ac01-2d7b162d0a02', 1, 1),
(2, '4255fc0d-7b80-469c-8418-4ef3d055a812', 1, 1),
(3, '2e3ccdd2-7778-41f1-bd81-36b054498a45', 1, 1),
(4, '8d065107-9fcd-4939-a94b-12a408246ef8', 1, 1),
(5, '8d065107-9fcd-4939-a94b-12a408246ef8', 2, 1),
(6, '8d065107-9fcd-4939-a94b-12a408246ef8', 4, 1),
(7, 'f0c23593-b932-4610-858c-3d39c4375b97', 1, 1),
(8, 'f0c23593-b932-4610-858c-3d39c4375b97', 1, 1),
(9, '437ce6b5-18dd-4d0c-a5f7-a669fef341ec', 1, 1),
(10, '437ce6b5-18dd-4d0c-a5f7-a669fef341ec', 2, 1),
(11, '437ce6b5-18dd-4d0c-a5f7-a669fef341ec', 1, 1),
(12, '437ce6b5-18dd-4d0c-a5f7-a669fef341ec', 3, 1),
(13, '437ce6b5-18dd-4d0c-a5f7-a669fef341ec', 2, 1),
(14, '578556d1-ef00-40b9-b42f-1bc60c62aee5', 1, 1),
(15, '9e84c61e-3e82-4f01-bfd2-ab190bb363ac', 1, 1),
(16, '9e84c61e-3e82-4f01-bfd2-ab190bb363ac', 1, 1),
(17, 'd5ce5de6-b104-4802-a65d-c0adfa1a29bd', 1, 1),
(18, '75dbc795-444e-4b12-b4cc-6347abe739ba', 1, 1),
(19, '32371325-c129-4d2b-b5e5-8e30f4da167b', 1, 1),
(20, '1ca46455-959b-489a-8560-fe6970e2a036', 1, 1),
(21, '1ca46455-959b-489a-8560-fe6970e2a036', 1, 1),
(22, 'a8f37923-9922-4fd0-9b68-51b58c6cfff9', 2, 1),
(23, 'a8f37923-9922-4fd0-9b68-51b58c6cfff9', 1, 1),
(24, 'a8f37923-9922-4fd0-9b68-51b58c6cfff9', 3, 1),
(25, 'ae7eeb08-952a-47ae-a8bd-73648160937a', 2, 1),
(26, 'ae7eeb08-952a-47ae-a8bd-73648160937a', 2, 1),
(27, 'ae7eeb08-952a-47ae-a8bd-73648160937a', 4, 1),
(28, 'ae7eeb08-952a-47ae-a8bd-73648160937a', 1, 1),
(29, '1fc0543f-a2cf-487e-aa78-938fe68388ba', 1, 1),
(30, '1fc0543f-a2cf-487e-aa78-938fe68388ba', 1, 1),
(31, '1fc0543f-a2cf-487e-aa78-938fe68388ba', 2, 1),
(32, '6ce153d4-1284-447e-ab47-4ec179257f06', 1, 1),
(33, '6ce153d4-1284-447e-ab47-4ec179257f06', 2, 1),
(34, '6ce153d4-1284-447e-ab47-4ec179257f06', 3, 1),
(35, 'c813f968-8bab-4826-9bfd-94cf033647ae', 1, 1),
(36, 'c813f968-8bab-4826-9bfd-94cf033647ae', 2, 1),
(37, '4e65caae-071b-4159-bb81-3a197fd73c79', 1, 1),
(38, '4e65caae-071b-4159-bb81-3a197fd73c79', 2, 1),
(39, '3b105e6b-ac5b-42af-9893-1c05e3533f4a', 2, 1),
(40, '3b105e6b-ac5b-42af-9893-1c05e3533f4a', 3, 1),
(41, '6045037f-9324-4e06-b973-e431a48b0a1d', 1, 1),
(42, '6045037f-9324-4e06-b973-e431a48b0a1d', 2, 1),
(43, '6045037f-9324-4e06-b973-e431a48b0a1d', 3, 1),
(44, 'de4dc97d-b7f7-4c98-8d8f-e01f3b75e078', 1, 1),
(45, 'de4dc97d-b7f7-4c98-8d8f-e01f3b75e078', 2, 1),
(46, 'de4dc97d-b7f7-4c98-8d8f-e01f3b75e078', 3, 1),
(47, 'de4dc97d-b7f7-4c98-8d8f-e01f3b75e078', 6, 1),
(48, 'c88a8a0e-e3c9-4427-b1ee-b208dbcc2cb3', 1, 1),
(49, '6749ec0f-9f2f-4f1b-8271-a52f2b23a6f0', 1, 1),
(50, '6749ec0f-9f2f-4f1b-8271-a52f2b23a6f0', 2, 1),
(51, '6749ec0f-9f2f-4f1b-8271-a52f2b23a6f0', 3, 1),
(52, '18484491-664b-4dca-b39d-3a522112f559', 1, 1),
(53, 'ee8c309c-48b2-47f9-aee2-17f505fc4f6d', 1, 1),
(54, 'ee8c309c-48b2-47f9-aee2-17f505fc4f6d', 3, 1),
(55, 'ee8c309c-48b2-47f9-aee2-17f505fc4f6d', 4, 1),
(56, '4db7a01b-d9ba-4183-a49c-ccc3ff05210a', 1, 1),
(57, 'f378c3e4-d815-4ae1-a3b0-2b5a027239d1', 1, 1),
(58, 'f378c3e4-d815-4ae1-a3b0-2b5a027239d1', 2, 1),
(59, 'f378c3e4-d815-4ae1-a3b0-2b5a027239d1', 1, 1),
(60, '6028be3e-b2dd-4ac1-9a01-2914a20eada7', 1, 1),
(61, 'fb266161-e3d2-4807-b0f6-10700aed80a0', 1, 1),
(62, 'f02d840b-0bc3-4140-b526-2c3be2ee93f6', 2, 1),
(63, 'f02d840b-0bc3-4140-b526-2c3be2ee93f6', 1, 1),
(64, 'f02d840b-0bc3-4140-b526-2c3be2ee93f6', 2, 1),
(65, 'f02d840b-0bc3-4140-b526-2c3be2ee93f6', 3, 1),
(66, 'f02d840b-0bc3-4140-b526-2c3be2ee93f6', 4, 1),
(67, '620d5c5f-5965-4bde-8e91-dd4919424573', 1, 1),
(68, '620d5c5f-5965-4bde-8e91-dd4919424573', 2, 1),
(69, '620d5c5f-5965-4bde-8e91-dd4919424573', 6, 1),
(70, '620d5c5f-5965-4bde-8e91-dd4919424573', 9, 1),
(71, '620d5c5f-5965-4bde-8e91-dd4919424573', 11, 1),
(72, 'e3679efa-2e5c-46c8-8688-89e2626d800b', 8, 1),
(73, 'e3679efa-2e5c-46c8-8688-89e2626d800b', 2, 1),
(74, '0fc88794-f2bc-4ad3-bfe3-a002623b324e', 1, 1),
(75, '1016d4e0-fd93-4603-9151-3e7630c6aa3a', 1, 1),
(76, 'c20edda5-8465-47aa-badd-eb0d2ea2a3f7', 1, 1),
(77, 'c20edda5-8465-47aa-badd-eb0d2ea2a3f7', 2, 1),
(78, '24e8ce8e-cdc7-4bbb-8604-a868d5eea3a2', 1, 1),
(79, '24e8ce8e-cdc7-4bbb-8604-a868d5eea3a2', 3, 1),
(80, '31da80dc-61db-411b-b092-6a0eb88581a4', 1, 1),
(81, '31da80dc-61db-411b-b092-6a0eb88581a4', 3, 1),
(82, 'f775dd19-c437-4e89-8a8b-dfdf491d1030', 1, 1),
(83, '65db6853-ea3a-4939-a5a0-63e0b0586cef', 1, 1),
(84, '65db6853-ea3a-4939-a5a0-63e0b0586cef', 2, 1),
(85, '65db6853-ea3a-4939-a5a0-63e0b0586cef', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderrows`
--

CREATE TABLE `orderrows` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Item` text NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderrows`
--

INSERT INTO `orderrows` (`Id`, `OrderId`, `ProductId`, `Item`, `Price`, `Quantity`) VALUES
(1, 1, 2, 'Green Lace Top', 40, 1),
(2, 1, 1, 'Vinyl Rose Gold Dress', 120, 1),
(3, 1, 2, 'Green Lace Top', 40, 2),
(4, 1, 3, 'Black Lace-Up Dress', 80, 1),
(5, 1, 4, 'White Lace Top', 30, 1),
(6, 3, 1, 'Vinyl Rose Gold Dress', 120, 1),
(7, 3, 2, 'Green Lace Top', 40, 1),
(8, 3, 6, 'Pink Fuzzy Crop Top Skirt Set ', 150, 1),
(9, 3, 1, 'Vinyl Rose Gold Dress', 120, 1),
(10, 3, 2, 'Green Lace Top', 40, 1),
(11, 3, 6, 'Pink Fuzzy Crop Top Skirt Set ', 150, 1),
(12, 3, 9, 'Lace Up Pants', 90, 1),
(13, 3, 11, 'Pink Mesh Dress', 70, 1),
(14, 5, 2, 'Green Lace Top', 40, 1),
(15, 5, 8, 'Sheer Black Top', 30, 1),
(16, 6, 1, 'Vinyl Rose Gold Dress', 120, 1),
(17, 6, 2, 'Green Lace Top', 40, 1),
(18, 7, 1, 'Vinyl Rose Gold Dress', 120, 1),
(19, 7, 3, 'Black Lace-Up Dress', 80, 1),
(20, 8, 1, 'Vinyl Rose Gold Dress', 120, 1),
(21, 8, 3, 'Black Lace-Up Dress', 80, 1),
(22, 9, 1, 'Vinyl Rose Gold Dress', 120, 1),
(23, 10, 1, 'Vinyl Rose Gold Dress', 120, 2),
(24, 10, 2, 'Green Lace Top', 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Email` text NOT NULL,
  `Address` text NOT NULL,
  `Country` text NOT NULL,
  `Zipcode` int(11) NOT NULL,
  `CardNumber` int(11) NOT NULL,
  `Sum` int(11) NOT NULL,
  `CartId` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Id`, `FirstName`, `LastName`, `Email`, `Address`, `Country`, `Zipcode`, `CardNumber`, `Sum`, `CartId`) VALUES
(1, 'Nugget', 'Johnson', 'nugget.johnson@gmail.com', 'Sausage Street 666', 'United States', 32962, 53564788, 40, 'f02d840b-0bc3-4140-b526-2c3be2ee93f6'),
(2, 'Tommy', 'Hamburger', 'afqeawuw<a ', 'Qt', 'etw', 456422, 0, 310, 'f02d840b-0bc3-4140-b526-2c3be2ee93f6'),
(3, 'sg', 'Johnson', 'afqeawuw<a ', 'Sausage Street 666', 'United States', 34, 245, 310, '620d5c5f-5965-4bde-8e91-dd4919424573'),
(4, 'Betch', 'Johnson', 'h', 'Sausage Street 666', 'United States', 251, 1351, 470, '620d5c5f-5965-4bde-8e91-dd4919424573'),
(5, 'Lard', 'McLardson', 'lardmclardson@gmail.com', 'Lard Street', 'Lardland', 44444, 1111111111, 70, 'e3679efa-2e5c-46c8-8688-89e2626d800b'),
(6, 'h', 'h', 'h', 'h', 'h', 33, 5262642, 160, 'c20edda5-8465-47aa-badd-eb0d2ea2a3f7'),
(7, 'linn', 'turdson', 'drgs', 'aea', 'aga', 14141, 141, 200, '24e8ce8e-cdc7-4bbb-8604-a868d5eea3a2'),
(8, 'rtt', 'tye', 'eyer', 'yery', 'wry', 5343, 3453, 200, '31da80dc-61db-411b-b092-6a0eb88581a4'),
(9, 'sfsds', 'sdfsf', 'sdfsd', 'fsdfsdf', 'sdfsdfs', 123123, 123123, 120, 'f775dd19-c437-4e89-8a8b-dfdf491d1030'),
(10, 'mcnugget', 'wetwe', 'w23wrhwr', 'sgw', 'ryw', 353462, 2352, 280, '65db6853-ea3a-4939-a5a0-63e0b0586cef');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `item` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `item`, `price`, `image`) VALUES
(1, 'Vinyl Rose Gold Dress', 120, 'vinylrosegolddress.jpg'),
(2, 'Green Lace Top', 40, 'greenlacetop.jpg'),
(3, 'Black Lace-Up Dress', 80, 'blacklaceupdress.jpg'),
(4, 'White Lace Top', 30, 'whitelacetop.jpg'),
(6, 'Pink Fuzzy Crop Top Skirt Set ', 150, 'fuzzycroptopskirtset.jpg'),
(8, 'Sheer Black Top', 30, 'sheerblacktop.jpg'),
(9, 'Lace Up Pants', 90, 'laceuppants.jpg'),
(11, 'Pink Mesh Dress', 70, 'pinkdress.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderrows`
--
ALTER TABLE `orderrows`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `orderrows`
--
ALTER TABLE `orderrows`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
