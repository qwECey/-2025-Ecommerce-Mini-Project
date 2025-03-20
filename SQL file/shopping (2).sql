-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2025 at 04:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)   SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Test anuj', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Electronics', 'Electronic Products', '2017-01-24 19:19:32', ''),
(5, 'Accessories', 'Fashion', '2017-01-24 19:19:54', '04-02-2025 10:32:49 PM'),
(6, 'Footwears', 'Fashion', '2017-02-20 19:18:52', '01-02-2025 02:16:04 PM'),
(7, 'Clothing', 'Fashion', '2025-01-29 09:22:54', '01-02-2025 03:26:40 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(8, 4, '21', 1, '2025-01-29 09:26:33', 'MOMO', NULL),
(11, 4, '34', 1, '2025-02-05 09:05:30', 'MOMO', 'Delivered'),
(13, 4, '18', 1, '2025-02-05 09:21:51', 'MOMO', NULL),
(14, 4, '34', 1, '2025-02-05 09:21:51', 'MOMO', NULL),
(15, 4, '34', 1, '2025-02-05 09:28:31', 'MOMO', NULL),
(16, 4, '17', 1, '2025-02-05 09:30:01', 'MOMO', NULL),
(17, 4, '36', 1, '2025-02-05 09:30:28', 'MOMO', NULL),
(18, 4, '57', 1, '2025-02-05 10:00:33', 'MOMO', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 11, 'Delivered', 'ggg', '2025-02-05 09:34:52'),
(6, 18, 'Delivered', 'save', '2025-02-05 10:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 139900, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 1200, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 36990, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'Redmi', 10999, 0, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', 'Micromax', 6999, 0, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 4, 4, 'OPPO A57', 'OPPO', 14990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:11:54', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 259, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2017-02-04 04:17:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:26:17', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 10999, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 205, 250, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 50, 'In Stock', '2017-02-04 04:35:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 240, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 30, 'In Stock', '2017-02-04 04:36:23', ''),
(17, 5, 9, 'UNEPIC', 'Paris', 350, 0, 'available color: black and gold', 'IMG-20241011-WA0004.jpg', 'IMG-20241011-WA0004.jpg', 'IMG-20241011-WA0004.jpg', 5, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Classic', 'Hubbies', 150, 300, 'Purchase the monthly hot deal of a cool classic package on a discounted price, including an earring, necklace, bracelet, and a wrist watch. choose a preferred theme.', 'IMG-20240909-WA0002.jpg', 'IMG-20240823-WA0018.jpg', 'IMG-20240823-WA0016.jpg', 0, 'In Stock', '2017-02-04 04:42:27', ''),
(19, 6, 12, 'Karama Caris', 'Paris', 300, 0, 'Available Sizes: 40, 39, 42\r\ncolour: Black, Brown ', 'WhatsApp Image 2025-01-26 at 10.59.52_957f8317.jpg', 'WhatsApp Image 2025-01-26 at 10.59.52_957f8317.jpg', 'WhatsApp Image 2025-01-26 at 10.59.52_957f8317.jpg', 5, 'In Stock', '2017-03-10 20:16:03', ''),
(20, 6, 12, 'Karama Caris', 'Paris', 310, 0, 'Available Sizes: 38, 39, 40, 41\r\nColour: Black, Gray, Brown', 'WhatsApp Image 2025-01-26 at 10.59.53_28c3a487.jpg', 'WhatsApp Image 2025-01-26 at 10.59.53_28c3a487.jpg', 'WhatsApp Image 2025-01-26 at 10.59.53_28c3a487.jpg', 5, 'In Stock', '2017-03-10 20:19:22', ''),
(22, 6, 12, 'Pierre Cardin', 'Paris', 300, 350, 'Available Sizes: 38, 39, 40,  41, 42, 43, 44, 45\r\nColors: Brown, Black, Gray, DarkBlue\r\n', 'WhatsApp Image 2025-01-26 at 10.59.57_f8db0ce9.jpg', 'WhatsApp Image 2025-01-26 at 10.59.57_f8db0ce9.jpg', 'WhatsApp Image 2025-01-26 at 10.59.57_f8db0ce9.jpg', 5, 'In Stock', '2025-02-01 08:07:43', NULL),
(23, 6, 12, 'Steve Riot', 'Paris', 430, 450, 'Available Sizes: 38, 39, 40\r\nColours:  Black, Brown', 'WhatsApp Image 2025-01-26 at 10.59.54_9ce8b3a8.jpg', 'WhatsApp Image 2025-01-26 at 10.59.54_9ce8b3a8.jpg', 'WhatsApp Image 2025-01-26 at 10.59.54_9ce8b3a8.jpg', 5, 'In Stock', '2025-02-01 08:23:09', NULL),
(24, 6, 12, 'Valentino', 'Garavani', 400, 0, 'Available Sizes: 40, 41, 42, 39\r\nColour: Black, Brown', 'WhatsApp Image 2025-01-26 at 10.59.54_62d203e4.jpg', 'WhatsApp Image 2025-01-26 at 10.59.54_62d203e4.jpg', 'WhatsApp Image 2025-01-26 at 10.59.54_62d203e4.jpg', 5, 'In Stock', '2025-02-01 08:26:35', NULL),
(25, 6, 12, 'Valentino', 'Garavani', 380, 0, 'Available Sizes: 39, 40, 41\r\nColour: Black, Brown', 'WhatsApp Image 2025-01-26 at 10.59.55_64c3ec4c.jpg', 'WhatsApp Image 2025-01-26 at 10.59.55_64c3ec4c.jpg', 'WhatsApp Image 2025-01-26 at 10.59.55_64c3ec4c.jpg', 5, 'In Stock', '2025-02-01 08:30:03', NULL),
(26, 6, 12, 'CK', 'CK', 300, 0, 'Available Sizes: 39, 40, 38, 42\r\nColour: Black, Brown', 'WhatsApp Image 2025-01-26 at 10.56.07_8fdfad83.jpg', 'WhatsApp Image 2025-01-26 at 10.56.08_36d27545.jpg', 'WhatsApp Image 2025-01-26 at 10.56.07_8fdfad83.jpg', 5, 'In Stock', '2025-02-01 08:39:32', NULL),
(27, 6, 12, 'Louis', 'Louis', 299, 350, 'Available Sizes: 39, 38, 42, 41, 43', 'WhatsApp Image 2025-01-26 at 10.56.10_b286b8f1.jpg', 'WhatsApp Image 2025-01-26 at 10.56.10_b286b8f1.jpg', 'WhatsApp Image 2025-01-26 at 10.56.10_b286b8f1.jpg', 5, 'In Stock', '2025-02-01 08:42:35', NULL),
(28, 6, 14, 'Adidas Superstar', 'Adidas', 350, 0, 'Available Sizes: 39, 38, 41, 42, 43\r\nColour: Black and White', 's-l1200.jpg', 's-l1200.jpg', 's-l1200.jpg', 5, 'In Stock', '2025-02-01 08:49:57', NULL),
(29, 6, 14, 'Jordan 23', 'Jordan', 400, 450, 'Available Sizes: 38, 39, 40, 42\r\nColours: Cream, Black, White', 'IMG-20240515-WA0026.jpg', 'IMG-20240515-WA0026.jpg', 'IMG-20240515-WA0026.jpg', 5, 'In Stock', '2025-02-01 08:54:46', NULL),
(30, 6, 14, 'Jordan 1', 'Jordan', 280, 0, 'Available Sizes: 38, 39, 40, 42, 41\r\nColours: black, blue, red, pink', 'IMG-20240527-WA0013.jpg', 'IMG-20240527-WA0009.jpg', 'IMG-20240527-WA0014.jpg', 5, 'In Stock', '2025-02-01 08:57:54', NULL),
(31, 6, 14, 'Jordan 1', 'Jordan', 280, 0, 'Available Sizes: 39, 38, 41, 42, 43\r\ncolours: pink, gray, black, designer ', 'IMG-20240527-WA0011.jpg', 'IMG-20240527-WA0012.jpg', 'IMG-20240527-WA0015.jpg', 5, 'In Stock', '2025-02-01 09:00:51', NULL),
(32, 6, 14, 'Nike Air', 'Nike', 350, 0, 'Size: 41, 49, 39, 38, 42\r\ncolour: black', 'IMG-20240514-WA0012.jpg', 'IMG-20240514-WA0012.jpg', 'IMG-20240514-WA0012.jpg', 5, 'In Stock', '2025-02-01 09:03:14', NULL),
(33, 6, 14, 'Jordan Classic', 'Jordan', 390, 0, 'Available Size: 39, 38, 42, 43, 41', 'IMG-20240515-WA0025.jpg', 'IMG-20240522-WA0008.jpg', 'IMG-20240522-WA0007.jpg', 5, 'In Stock', '2025-02-01 09:06:35', NULL),
(34, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'Available Size: M, L, XL, XXL, S<div>Colours: white , Yellow Black</div>', 'IMG-20240515-WA0041.jpg', 'IMG-20240515-WA0045.jpg', 'IMG-20240515-WA0048.jpg', 0, 'In Stock', '2025-02-01 10:18:15', NULL),
(35, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'Sizes: S, L, M. XL&nbsp;', 'IMG-20240515-WA0043.jpg', 'IMG-20240515-WA0055.jpg', 'IMG-20240515-WA0058.jpg', 0, 'In Stock', '2025-02-01 10:19:33', NULL),
(36, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'Size: XXL, S, M, L,', 'IMG-20240515-WA0047.jpg', 'IMG-20240515-WA0061.jpg', 'IMG-20240515-WA0046.jpg', 0, 'In Stock', '2025-02-01 10:30:24', NULL),
(37, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'Size: L, XXL, M, S', 'IMG-20240515-WA0050.jpg', 'IMG-20240515-WA0059.jpg', 'IMG-20240515-WA0056.jpg', 0, 'In Stock', '2025-02-01 10:31:46', NULL),
(38, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'Sizes: L, XL, M, S, XXL', 'IMG-20240515-WA0059.jpg', 'IMG-20240515-WA0049.jpg', 'IMG-20240515-WA0053.jpg', 0, 'In Stock', '2025-02-01 10:37:35', NULL),
(39, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'Sizes: XXL, XL, L, M,S&nbsp;', 'IMG-20240515-WA0060.jpg', 'IMG-20240515-WA0057.jpg', 'IMG-20240515-WA0055.jpg', 0, 'In Stock', '2025-02-01 10:40:21', NULL),
(40, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'Sizes: XXL,L S, M,&nbsp;', 'IMG-20240515-WA0046.jpg', 'IMG-20240515-WA0048.jpg', 'IMG-20240515-WA0042.jpg', 0, 'In Stock', '2025-02-01 10:45:37', NULL),
(41, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'XXL, L, M, S,', 'IMG-20240515-WA0055.jpg', 'IMG-20240515-WA0057.jpg', 'IMG-20240515-WA0058.jpg', 0, 'In Stock', '2025-02-01 10:49:33', NULL),
(42, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'Sizes: XXL, L , M, S,', 'IMG-20240515-WA0053.jpg', 'IMG-20240515-WA0056.jpg', 'IMG-20240515-WA0054.jpg', 0, 'In Stock', '2025-02-01 10:54:34', NULL),
(43, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'Sizes:&nbsp; M, L, XXL, XL, S', 'IMG-20240515-WA0051.jpg', 'IMG-20240515-WA0052.jpg', 'IMG-20240515-WA0045.jpg', 0, 'In Stock', '2025-02-01 10:56:44', NULL),
(44, 7, 13, 'Hubbies T', 'E.C.TO.ATT', 50, 0, 'Sizes: M, L, XL, XXL, S', 'IMG-20240515-WA0054.jpg', 'IMG-20240515-WA0061.jpg', 'IMG-20240515-WA0058.jpg', 0, 'In Stock', '2025-02-01 10:59:27', NULL),
(45, 7, 13, 'Adidas-Oversized-T-Shirt-scaled', 'Adidas', 50, 0, 'Sizes: XXL, L, M, S, XL', 'Adidas-Oversized-T-Shirt-scaled.jpg', 'Adidas-Oversized-T-Shirt-scaled.jpg', 'Adidas-Oversized-T-Shirt-scaled.jpg', 0, 'In Stock', '2025-02-01 11:14:27', NULL),
(46, 7, 15, 'Beachy', 'E.C.TO.ATT', 100, 0, 'Available sizes: XL', 'WhatsApp Image 2025-01-11 at 10.44.41_bf5d7492.jpg', 'WhatsApp Image 2025-01-11 at 10.44.41_bf5d7492.jpg', 'WhatsApp Image 2025-01-11 at 10.44.41_bf5d7492.jpg', 0, 'In Stock', '2025-02-01 11:52:37', NULL),
(47, 7, 15, 'Beachy', 'E.C.TO.ATT', 100, 0, 'Sizes: XL, L', 'WhatsApp Image 2025-01-11 at 10.44.44_9a151874.jpg', 'WhatsApp Image 2025-01-11 at 10.44.44_9a151874.jpg', 'WhatsApp Image 2025-01-11 at 10.44.44_9a151874.jpg', 0, 'In Stock', '2025-02-01 11:54:17', NULL),
(48, 7, 15, 'Beachy', 'E.C.TO.ATT', 100, 0, 'Sizes: XL, L', 'WhatsApp Image 2025-01-11 at 10.44.44_ca06da27.jpg', 'WhatsApp Image 2025-01-11 at 10.44.44_ca06da27.jpg', 'WhatsApp Image 2025-01-11 at 10.44.44_ca06da27.jpg', 0, 'In Stock', '2025-02-01 11:55:49', NULL),
(49, 7, 15, 'Beachy', 'E.C.TO.ATT', 100, 0, 'Sizes: XL', 'WhatsApp Image 2025-01-11 at 10.44.47_8da57554.jpg', 'WhatsApp Image 2025-01-11 at 10.44.45_f6bf0b51.jpg', 'WhatsApp Image 2025-01-11 at 10.44.46_4190942e.jpg', 0, 'In Stock', '2025-02-01 11:57:05', NULL),
(50, 5, 10, 'Classic', 'Hubbies', 150, 300, 'Purchase a cool deal of a classic package on a discounted price, including an earring, necklace, bracelet, and a wrist watch. choose a preferred theme.', 'IMG-20240823-WA0016.jpg', 'IMG-20240909-WA0002.jpg', 'IMG-20240823-WA0018.jpg', 0, 'In Stock', '2025-02-04 17:38:34', NULL),
(51, 5, 10, 'Classic', 'Hubbies', 150, 300, 'Purchase a cool deal of a classic package on a discounted price, including an earring, necklace, bracelet, and a wrist watch. choose a preferred theme.', 'IMG-20240823-WA0018.jpg', 'IMG-20240909-WA0002.jpg', 'IMG-20240823-WA0016.jpg', 0, 'In Stock', '2025-02-04 17:41:49', NULL),
(52, 5, 10, 'Classic', 'Hubbies', 150, 300, 'Purchase a cool deal of a classic package on a discounted price, including an earring, necklace, bracelet, and a wrist watch. choose a preferred theme.', 'IMG-20240909-WA0008.jpg', 'IMG-20240823-WA0018.jpg', 'IMG-20240909-WA0002.jpg', 0, 'In Stock', '2025-02-04 17:45:20', NULL),
(53, 5, 11, 'Caris Combinations', 'caris', 230, 250, 'Purchase a cool deal of a combination package on a discounted price, including a bracelet, and a wrist watch. choose a preferred theme.', 'IMG-20240909-WA0003.jpg', 'IMG-20240909-WA0004.jpg', 'IMG-20240909-WA0005.jpg', 0, 'In Stock', '2025-02-04 17:50:04', NULL),
(54, 5, 11, 'Caris Combinations', 'caris', 230, 250, 'Purchase a cool deal of a combination package on a discounted price, including a bracelet, and a wrist watch. choose a preferred theme.', 'IMG-20240909-WA0007.jpg', 'IMG-20240909-WA0004.jpg', 'IMG-20240909-WA0003.jpg', 0, 'In Stock', '2025-02-04 17:52:18', NULL),
(55, 5, 11, 'Caris Combinations', 'caris', 230, 250, 'Purchase a cool deal of a combination package on a discounted price, including a bracelet, and a wrist watch. choose a preferred theme.', 'IMG-20240909-WA0006.jpg', 'IMG-20240909-WA0003.jpg', 'IMG-20240909-WA0005.jpg', 0, 'In Stock', '2025-02-04 17:57:14', NULL),
(56, 5, 11, 'Caris Combinations', 'caris', 230, 250, 'Purchase a cool deal of a combination package on a discounted price, including a bracelet, and a wrist watch. choose a preferred theme.', 'IMG-20240909-WA0004.jpg', 'IMG-20240909-WA0007.jpg', 'IMG-20240909-WA0005.jpg', 0, 'In Stock', '2025-02-04 18:01:56', NULL),
(57, 5, 9, 'G-SHOCK', 'Faogman Mr-G', 200, 0, 'available color: white', 'IMG-20241011-WA0003.jpg', 'IMG-20241011-WA0003.jpg', 'IMG-20241011-WA0003.jpg', 5, 'In Stock', '2025-02-04 18:16:18', NULL),
(58, 5, 9, 'MONT- BLANC', 'Guide', 270, 2, 'Available color: black-cream', 'IMG-20241011-WA0005.jpg', 'IMG-20241011-WA0005.jpg', 'IMG-20241011-WA0005.jpg', 5, 'In Stock', '2025-02-04 18:21:49', NULL),
(59, 5, 9, 'ROLEX', 'ROLEX', 150, 0, 'Classic Rolex', 'IMG-20241011-WA0006.jpg', 'IMG-20241011-WA0006.jpg', 'IMG-20241011-WA0006.jpg', 0, 'In Stock', '2025-02-04 18:23:54', NULL),
(60, 5, 9, 'UNEPIC', 'UNEPIC', 350, 0, '', 'IMG-20241011-WA0002.jpg', 'IMG-20241011-WA0002.jpg', 'IMG-20241011-WA0002.jpg', 5, 'Out of Stock', '2025-02-04 18:26:41', NULL),
(61, 5, 9, 'G-SHOCK', 'Faogman Mr-G', 180, 200, '', 'IMG-20241011-WA0001.jpg', 'IMG-20241011-WA0001.jpg', 'IMG-20241011-WA0001.jpg', 5, 'In Stock', '2025-02-04 18:28:36', NULL),
(62, 5, 9, 'CASIO QUARTZ', 'CASIO', 120, 200, '', 'IMG-20241011-WA0000.jpg', 'IMG-20241011-WA0000.jpg', 'IMG-20241011-WA0000.jpg', 0, 'Out of Stock', '2025-02-04 18:30:07', NULL),
(63, 5, 17, 'CASIO QUARTZ Combo', 'CASIO', 260, 300, 'Purchase a hot  combo deal with Casio for a cool price. choose your theme ', 'IMG-20240826-WA0006.jpg', 'IMG-20240824-WA0001.jpg', 'IMG-20240826-WA0007.jpg', 5, 'In Stock', '2025-02-04 18:53:52', NULL),
(64, 5, 17, 'HUBLOT Combo', 'HUBLOT', 230, 0, 'Purchase a hot  combo deal with Casio for a cool price. choose your theme ', 'IMG-20240824-WA0001.jpg', 'IMG-20240824-WA0004.jpg', 'IMG-20240824-WA0004.jpg', 5, 'In Stock', '2025-02-04 18:55:30', NULL),
(65, 5, 17, 'HUBLOT Combo', 'HUBLOT', 230, 0, 'Purchase a hot  combo deal with Casio for a cool price. choose your theme ', 'IMG-20240824-WA0004.jpg', 'IMG-20240824-WA0001.jpg', 'IMG-20240824-WA0004.jpg', 5, 'In Stock', '2025-02-04 18:57:03', NULL),
(66, 5, 17, 'TISSOT Combo', 'Tissiot', 200, 0, 'Purchase a hot  combo deal with Tissot for a cool price. choose your theme ', 'IMG-20240830-WA0005.jpg', 'IMG-20240830-WA0005.jpg', 'IMG-20240830-WA0005.jpg', 5, 'In Stock', '2025-02-04 19:00:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(8, 3, 'Comics', '2017-02-04 04:13:54', ''),
(9, 5, 'Watches', '2017-02-04 04:36:45', '04-02-2025 10:33:18 PM'),
(10, 5, 'Packages', '2017-02-04 04:37:02', '04-02-2025 10:34:03 PM'),
(11, 5, 'Combination', '2017-02-04 04:37:51', '04-02-2025 11:16:58 PM'),
(12, 6, 'Mens Footware', '2017-03-10 20:12:59', '01-02-2025 02:15:42 PM'),
(13, 7, 'T-Shirts', '2025-01-29 09:23:13', '01-02-2025 03:27:18 PM'),
(14, 6, 'Sneakers', '2025-02-01 08:46:30', NULL),
(15, 7, 'Beachy', '2025-02-01 11:50:37', NULL),
(16, 6, 'Hills', '2025-02-04 17:07:31', NULL),
(17, 5, 'Mens Combo', '2025-02-04 18:33:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-09 22:23:13', NULL, 1),
(25, 'gazyjohnson18@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-28 23:29:14', NULL, 1),
(26, 'gazyjohnson18@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-29 09:25:43', NULL, 1),
(27, 'gazyjohnson18@gmail.com', 0x3a3a3100000000000000000000000000, '2025-02-05 08:50:49', '05-02-2025 02:53:44 PM', 1),
(28, 'gazyjohnson18@gmail.com', 0x3a3a3100000000000000000000000000, '2025-02-05 09:24:34', '05-02-2025 02:54:40 PM', 1),
(29, 'gazyjohnson18@gmail.com', 0x3a3a3100000000000000000000000000, '2025-02-05 09:24:54', '05-02-2025 02:55:01 PM', 1),
(30, 'gazyjohnson18@gmail.com', 0x3a3a3100000000000000000000000000, '2025-02-05 09:27:35', NULL, 1),
(31, 'gazyjohnson18@gmail.com', 0x3a3a3100000000000000000000000000, '2025-02-05 09:55:14', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'NOWDEMY OFFICIAL', 'Nowdemy@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'karachi,khi', 'Sindh', 'Sindh', 110001, 'Sindh area', 'Sindh area', 'SIndh', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amir@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Gazy Johnson', 'gazyjohnson18@gmail.com', 556402064, '549bdc8551da59bd5ed7baebda9e458a', 'Effia-Kuma Mrs Cudjoe', 'Takoradi', 'Effia-Kuma', 1234, 'Effia-Kuma Mrs Cudjoe', 'Takoradi', 'Effia-Kuma', 1234, '2025-01-28 23:29:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
