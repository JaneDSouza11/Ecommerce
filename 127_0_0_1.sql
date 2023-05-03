-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 08:47 PM
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
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `o_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`c_id`, `p_id`, `o_id`, `quantity`) VALUES
(8, 12, NULL, 1),
(2, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `first_name`, `last_name`, `username`, `password`, `mobile_no`, `email`, `address`) VALUES
(1, 'Jehan', 'Shaikh', 'JehanShaikh', 'shaikhjehan', '8910482917', 'jehanshaikh@gmail.com', 'Margao, Goa, India'),
(2, 'Jane', 'Dsouza', 'JaneDsouza', 'dsouzajane', '9317483647', 'janedsouza@gmail.com', 'Margao, Goa, India'),
(3, 'Gladys', 'Fernandes', 'GladysFernandes', 'ferngladys', '9568321034', 'gladysfernandes@gmail.com', 'Margao, Goa, India'),
(8, 'Maria', 'Dias', 'MariaDias', 'diasmaria', '1628397457', 'dias@gmail.com', 'Goa');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(150) NOT NULL,
  `seller_name` varchar(255) NOT NULL,
  `prod_desc` varchar(255) NOT NULL,
  `prod_details` varchar(255) NOT NULL,
  `category` varchar(20) NOT NULL,
  `prod_img` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `seller_name`, `prod_desc`, `prod_details`, `category`, `prod_img`, `price`, `quantity`) VALUES
(1, 'Dark Brown Crop Biker Jacket', 'High Street Essentials Private Limited', 'Dark brown cropped biker jacket in faux leather. Crafted with full sleeves, this jacket features 3 pockets, a collared neck and a zip closure', 'Color: Dark Brown, \r\n Material: Faux Leather,  Neck: Collared,  Sleeve: Full,  Closure: Zip, \r\n Pockets: 3', 'Women', 'w1.jpg', '1530.00', 200),
(2, 'Navy Solid Belted A-Line Dress', 'Satrani Fashion', 'Crisp, clean, and elegant, this blue belted dress is an effortlessly stylish pick to elevate your OOTD. It features two handy pockets in the front and a buckled self-fabric belt.', 'Color: Blue,  Material: Poly Lycra, \r\n Sleeveless,  V-Neck, \r\n Closure: Zip,  Pockets: Two', 'Women', 'w2.jpg', '879.00', 250),
(3, 'Navy Blue Cotton Shift Dress With Belt', 'Satrani Fashion', 'Navy blue shift dress in cotton.\r\nTailored with three quarter sleeves, this dress features a round neck and a zip closure.\r\nThis dress comes with a buckled navy blue fabric belt cinching the waist.', 'Color: Black,Material: cotton,three-fourth sleeves,Round-neck', 'Women', 'w3.jpg', '1100.00', 150),
(4, 'Peach Front Knot Shirt and Pant Co-ord Set', 'High Street Essentials Private Limited', 'Formal gets an elevated update in this chic peach shirt and pants set. Tailored in crepe, this set comes with a front knotted top and matching pants that has two pockets to slip in your essentials.', 'Color: Peach,Sleeves: Three Quarter,Fabric: Crepe,Neck: Collared,Closure of Top: Button,Closure of Pants: Zip,Pockets: Two', 'Women', 'w4.jpg', '1960.00', 190),
(5, 'Black Printed Strappy Pyjama Set', 'High Street Essentials Private Limited', 'With its perky print and playful silhouette, this black printed pyjama set is designed for comfort and style alike. It features a ruffled cami top and a straight leg pyjama with a comfortable elastic waistband.', 'Color: Black,Material: Viscose,Pattern: Abstract,Sleeveless,Neck: Strappy,Closure: Slip On,Pockets in Bottom: Two,Length : 23 Inches', 'Women', 'w5.jpg', '990.00', 225),
(6, 'Pink Blue Ruffled High Neck Blouse', 'High Street Essentials Private Limited', 'With a blooming print and summer-ready hues, this pink and blue blouse is sure to become your favorite this season. It features ruffled detail on the high neck and shoulders.', 'Color: Blue,Material: Georgette,Neck: High,Print: Floral,Sleeveless,Closure: Button', 'Women', 'w6.jpg', '528.00', 250),
(7, 'BASICS Wine Striped Button Shoulder Top', 'Flashtech Retail', 'An effortlessly stylish wardrobe staple, this wine striped top is perfect to slip into on a casual day. With wine and pink stripes, it also features a high-neck with button detail on one shoulder.', 'Color: Maroon,Material: Viscose,Pattern: Striped,Neck: High,Sleeves: Short,Closure: Slip On,Length : 23 Inches', 'Women', 'w7.jpg', '558.00', 225),
(8, 'CURVE Pink Strappy Lace Trim Cold Shoulder Top', 'Readiprint Fashion', 'Piece together a perfect OOTD with this pink strappy top. Tailored in georgette, it is designed with cold shoulders and has a trim lace detail.', 'Color: Coral,Sleeves: Short,Fabric: Georgette,Neck: Strappy,Closure: Hook', 'Women', 'w8.jpg', '704.00', 200),
(9, 'Peach Halter Neck Ruffled Mini Dress', 'GO FASHION INDIA LTD.', 'Fun and flirty, this peach ruffled halter dress is made for the fashion conscious ladies. Features ruffles at the bottom and embellishments on the neck. Also comes with a cut-out at the back.', 'Fabric: Crepe,Color: Peach,Pattern: Embellished,Sleeves: Sleeveless,Neck: Round,Closure: Button,Lining: No,Length : 39 Inches', 'Women', 'w9.jpg', '638.00', 180),
(10, 'Blush Pink Lace Halter Dress', 'in leather', 'Tailored in elegant lace with a stunning blush pink shade, pick this dress to give your closet a fun, flirty and oh-so-feminine update. It features a halter neck with a fit-and-flare detail.', 'Color: Pink,Material: Lace,Pattern: Aztec,Neck: Halter,Sleeves: Sleeveless,Closure: Zip,Length : 34 Inches', 'Women', 'w10.jpg', '1100.00', 195),
(11, 'Relax Printed T-shirt for Men', 'Brainbees Solutions Pvt. Ltd.', '100% Bio-washed Cotton – makes the fabric extra soft & silky\r\nFlexible ribbed crew neck\r\nPrecisely stitched with no pilling & no fading\r\nProvide all-time comfort. Anytime, anywhere\r\nInfinite range of matte-finish HD prints', 'Fabric: Bio-washed Cotton,Neck: Round Neck,Pattern: Printed,Sleeve: Half-sleeves,Fit: Regular-fit,Style: Casual Wear', 'Men', 'm11.jpg', '329.00', 200),
(12, 'Music Panda Mens T-shirt', 'Brainbees Solutions Pvt. Ltd.', '100% Bio-washed Cotton – makes the fabric extra soft & silky\r\nFlexible ribbed crew neck\r\nPrecisely stitched with no pilling & no fading\r\nProvide all-time comfort. Anytime, anywhere\r\nInfinite range of matte-finish HD prints', 'Fabric: Bio-washed Cotton,Neck: Round Neck,Pattern: Printed,Sleeve: Half-sleeves,Fit: Regular-fit,Style: Casual Wear', 'Men', 'm12.jpg', '359.00', 270),
(13, 'Solid Co-ord Sets: Black T-shirt & Sweatpants', 'CrayonFlakes Design Pvt Ltd.', '1 x Black Plain T-shirt\r\nMade from 100% Bio-washed Cotton for extra softness Everytime. This plain t-shirt consists ribbed crew neck, is lightweight, and doesn’t form fuzzballs.\r\n1 x Black Men Striped Sweatpants\r\nMade from LoopKnit Cotton for 2x softness ', 'Top Fabric: 100% Cotton\r\nTop Pattern: Solid\r\nTop Style: Casual Wear\r\nBottom Fabric: LoopKnit Cotton\r\nBottom Pattern: Solid\r\nBottom Pocket: 2 Functional Zipper Pocket', 'Men', 'm13.jpg', '1499.00', 165),
(14, 'Cheesy Jerry Half Sleeve T-shirt for Men (WB)', 'Balloon Fashion PVT LTD.', '100% Bio-washed Cotton – makes the fabric extra soft & silky\r\nFlexible ribbed crew neck\r\nPrecisely stitched with no pilling & no fading\r\nProvide all-time comfort. Anytime, anywhere\r\nInfinite range of matte-finish HD prints', 'Fabric: Bio-washed Cotton,Neck: Round Neck,Pattern: Printed,Sleeve: Half-sleeves,Fit: Regular-fit,Style: Casual Wear', 'Men', 'm14.jpg', '419.00', 200),
(15, 'Men Olive Green Solid Active Bomber Jacket', 'Omnitech retail', 'Lightweight jacket provides insulation and helps maintain body temperature in mild cold\r\nBreathable fabric helps sweat dry fast.\r\nZippered pockets keep your essentials safe', 'Style: Full Front Open Zipper\r\nSleeve: Full Sleeves\r\nColour: Olive green\r\nFit: Regular', 'Men', 'm15.jpg', '2399.00', 240),
(16, 'Urbano Fashion', 'Imperial Online Services Limited', 'Men Black Slim Fit Mid-Rise Clean Look Stretchable Jeans', 'Black dark wash 5-pocket mid-rise jeans, clean look, no fade, has a button and zip closure, and waistband with belt loops.', 'Men', 'm16.jpg', '659.00', 200),
(17, 'Raymond', 'Raymond ltd.', 'Men Blue Self-Design Slim Fit Pure Cotton Formal Shirt', 'Blue self-design Formal shirt, has a cutaway collar, button placket, 1 patch pocket, long regular sleeves, curved hem.', 'Men', 'm17.jpg', '1269.00', 250),
(18, 'WYRE', 'Jadeblue Lifestyle ltd.', 'Men Grey Tight Slim Fit Printed Cotton Casual Shirt', 'Grey printed opaque Casual shirt ,has a spread collar, button placket, long regular sleeves, curved hem.', 'Men', 'm18.jpg', '2039.00', 175),
(19, 'Park Avenue', 'Flashtech Retail', 'Men Blue Slim Fit Striped Casual Shirt', 'Blue vertical stripes striped opaque Casual shirt ,has a spread collar, button placket, long regular sleeves, curved hem.', 'Men', 'm19.jpg', '2499.00', 100),
(20, 'Wildcraft', 'Coracle marketing and services private ltd.', 'Men Teal-Blue & Black Solid Hooded Rain Jacket', 'Has an attached hood with drawcord toggle, seam-sealed with adjustable hems, a full front zipper placket with flap, cuffs and hood with drawcord, and two flap zipper pockets\r\nFeatures: Waterproof And Durable', 'Men', 'm20.jpg', '1399.00', 200),
(21, 'Pine Kids Full Sleeves Moderate Winter Solid Puffed Hooded Jacket ', 'Brainbees Solutions Pvt. Ltd.', '7 to 8 Years, comfy & warm jacket with hood, and front zipper closure for boys', 'Brand - Pine Kids\r\nType - Hooded Jacket\r\nFabric - Polyester/Woven\r\nSleeves - Full Sleeves\r\nNeck - Hooded Neck\r\nPattern - Solid\r\nOccasion - Winter Wear\r\nFit - Regular Fit', 'Kids', 'k1.jpg', '1429.00', 150),
(22, 'Anthrilo Full Sleeves Growing Printed & Striped Night Suit', 'ANTHRILO DESIGN HOUSE', '0 to 6 Months, Send your baby to sleep in this comfy sleep wear.', 'Brand Name - Anthrilo\r\nType - Night Suit\r\nFabric - Cotton\r\nNeck - Round Neck\r\nSleeves - Full Sleeves', 'Kids', 'k2.jpg', '509.00', 200),
(23, 'Pine Kids Textured Woollen Cap Pink', 'GREWAL COLONY', '7 to 8 Years, comfy & stylish woollen cap to keep your kid warm', 'Brand - Pine Kids\r\nType - Woollen Cap \r\nFabric - Knit\r\nHighlight - Textured Woollen Cap\r\nOccasion - Winter Wear', 'Kids', 'k3.jpg', '359.00', 170),
(24, 'Babyhug Full Sleeves Solid Hooded Padded Winter Jacket with Patch', 'Brainbees Solutions Pvt. Ltd.', '9 to 12 Months. Comfy and snug jacket with front zipper and pockets for boys', 'Brand - Babyhug\r\nType - Padded Winter Jacket\r\nFabric - Polyester/Woven\r\nSleeves - Full\r\nNeck - Hooded', 'Kids', 'k4.jpg', '899.00', 200),
(25, 'Little Bansi Full Sleeves Kurta With Deer Printed Waistcoat & Dhoti Set', 'Little Bansi', '1 to 2 Years, An outfit that will brighten every festival.', 'Brand Name - Little Bansi\r\nType - Kurta & Waistcoat With Dhoti\r\nFabric - Cotton\r\nNeck - Stand Collar Neck\r\nSleeves - Full Sleeves', 'Kids', 'k5.jpg', '1299.00', 250),
(26, 'Aj Dezines Leaves Printed Indo Western Full Sleeves Sherwani With Pyjama Set', 'Shri Shantinath Trading Company', '1 to 2 Years, An outfit that will brighten every festival.', 'Brand Name - Aj Dezines \r\nType - Sherwani With Pyjama\r\nFabric - Blended\r\nSleeves - Full Sleeves \r\nNeck - Stand Collar Neck', 'Kids', 'k6.jpg', '1189.00', 225),
(27, 'Babyhug Full Sleeves Solid Colour Frock With Leggings Floral Embroidery', 'Brainbees Solutions Pvt. Ltd.', '5 to 6 Years, set of comfy & stylish frock with peter pan collar neck & matching leggings for girls', 'Brand - Babyhug\r\nType - Frocks With Leggings\r\nFabric - Cotton/Yarn Dyed\r\nFrock Sleeves - Full Sleeves', 'Kids', 'k7.jpg', '529.00', 250),
(28, 'Babyhug Full Sleeves Frock Floral Print With Solid Leggings', 'Brainbees Solutions Pvt. Ltd.', '5 to 6 Years, Stylish pullover frock with back buttons and leggings for girls', 'Brand - Babyhug\r\nType - Frock with Leggings\r\nFabric - Cotton/Woven\r\nSleeves - Full Sleeves', 'Kids', 'k8.jpg', '549.00', 200),
(29, 'Babyhug 100% Cotton Polka Print Poplin Dress With Lace And Mesh Detailing At Hemline & Yoke', 'Brainbees Solutions Pvt. Ltd.', '5 to 6 Years, Comfy round neck frock dress with back button closure & cotton lining for girls.', 'Brand - Babyhug\r\nType - Frock\r\nFabric - Cotton/Woven\r\nSleeves - Half Sleeves', 'Kids', 'k9.jpg', '599.00', 175),
(30, 'Little Bansi Full Sleeves Brocade Patch Work With Gold Strip Print Kurta And Sharara With Net Dupatta', 'Little Bansi', '2 to 3 Years, Add a touch of glamour with this fashionable ethnic outfit!', 'Brand Name - Little Bansi\r\nType - Kurta And Sharara With Dupatta\r\nFabric - Cotton Lurex\r\nNeck - V Neck \r\nSleeves - Full Sleeves', 'Kids', 'k10.jpg', '1599.00', 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `c_id` (`c_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `o_id` (`o_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `product` (`prod_id`);
--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exam`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ecommerce\",\"table\":\"customer\"},{\"db\":\"ecommerce\",\"table\":\"cart\"},{\"db\":\"ecommerce\",\"table\":\"product\"},{\"db\":\"prac\",\"table\":\"pp\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-05-03 18:25:24', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `prac`
--
CREATE DATABASE IF NOT EXISTS `prac` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prac`;

-- --------------------------------------------------------

--
-- Table structure for table `pp`
--

CREATE TABLE `pp` (
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pp`
--

INSERT INTO `pp` (`username`, `email`, `age`) VALUES
('jane', 'jane@gmail.com', '20'),
('joel', 'joel@gmail.com', '22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pp`
--
ALTER TABLE `pp`
  ADD PRIMARY KEY (`username`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
