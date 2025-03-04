-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop1`
--
CREATE DATABASE IF NOT EXISTS `shop1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop1`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(7) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detail` text NOT NULL,
  `p_price` float(9,2) NOT NULL,
  `p_ext` varchar(50) NOT NULL,
  `c_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_ext`, `c_id`) VALUES
(1, 'อณาสิริ รัตนาธิเบศร์', 'บ้านเดี่ยวและบ้านแฝด สไตล์ Lagom ใกล้ MRT สถานีบางพลู และเซ็นทรัล เวสต์เกต เพียง 5 นาที* รับข้อเสนอพิเศษ', 4.99, 'jpg.', 1),
(2, 'ฮาบิเทีย ชัยพฤกษ์ - วงแหวน', 'บ้านเดี่ยว ชัยพฤกษ์ สไตล์ Modern European ใกล้ทางด่วน และรถไฟฟ้า ให้ความเป็นส่วนตัวสูงเพียง 15 ยูนิต', 5.59, 'jpg.', 1),
(3, 'อณาสิริ ชัยพฤกษ์ - วงแหวน 2', 'บ้านเดี่ยวและบ้านแฝด ชัยพฤกษ์ ติดถนนบางกรวย-ไทรน้อย ใกล้ทางด่วน รถไฟฟ้า ห้าง โรงพยาบาล และสถาบันศึกษาชั้นนำ', 4.39, 'jpg.', 1),
(4, 'เศรษฐสิริ ราชพฤกษ์ - นครอินทร์', 'บ้านเดี่ยว ราชพฤกษ์ สไตล์ Modern Classic ทำเลใจกลางราชพฤกษ์ ใกล้เซ็นทรัลเวสต์วิลล์และทางด่วน', 12.00, 'jpg.', 1),
(5, 'สราญสิริ ราชพฤกษ์ - 346', 'บ้านเดี่ยว ดีไซน์ใหม่ สไตล์ Modern Farmhouse ติดถนนใหญ่ ราชพฤกษ์ (ตัดใหม่) รายล้อมสิ่งอำนวยความสะดวกครบครัน', 6.59, 'jpg.', 1),
(6, 'เศรษฐสิริ สะพานมหาเจษฎาบดินทร์ฯ', 'บ้านเดี่ยว สไตล์ Berlin Architecture ติดถนนใหญ่ราชพฤกษ์ - นนทบุรี 1 สามารถเชื่อมต่อจตุจักร บางซื่อ ได้อย่างรวดเร็ว', 18.00, 'jpg.', 1),
(7, 'สราญสิริ ราชพฤกษ์ - 345', 'บ้านเดี่ยว ราชพฤกษ์ 345 ฟังก์ชันครบ สไตล์โมเดิร์นฟาร์มเฮาส์ ใกล้ถนนราชพฤกษ์ เพียง 1 กม. ครบทุกศักยภาพเพื่อการเดินทาง', 6.99, 'jpg.', 1),
(8, 'เศรษฐสิริ ราชพฤกษ์ - สาย 1', 'บ้านเดี่ยว ราชพฤกษ์ พื้นที่ใช้สอยกว่า 100 ตร.วา ดีไซน์ใหม่ สไตล์ Berlin เชื่อมต่อถนนกาญจนาภิเษก เข้าเมืองสะดวก', 25.00, 'jpg.', 1),
(9, 'สิริ เพลส ราชพฤกษ์ - นครอินทร์', 'ทาวน์โฮม ราชพฤกษ์ 2 ชั้น หน้าสวน 4 ห้องนอน ใกล้ทางด่วนศรีรัช-จตุจักร The Walk และวงเวียนพระราม 5', 3.49, 'jpg.', 2),
(10, 'เศรษฐสิริ ราชพฤกษ์ - พรานนก', 'บ้านเดี่ยว ราชพฤกษ์-พรานนก บ้านสไตล์ Georgian ใกล้ รพ.ศิริราช เป็นส่วนตัวเพียง 35 หลังบนทำเลศักยภาพที่เชื่อมต่อได้หลายเส้นทาง สะท้อนวิถีการใช้ชีวิตที่โดดเด่น', 25.90, 'jpg.', 1),
(11, 'สิริ เพลส ราชพฤกษ์ - 346', 'ทาวน์โฮม ราชพฤกษ์ 2 ชั้น สไตล์ลอฟท์ เดินทางสะดวก ติดถนนราชพฤกษ์ตัดใหม่-346 ใกล้ทางด่วน รถไฟฟ้า และ ห้างสรรพสินค้า', 1.99, 'jpg.', 2),
(12, 'สิริ เพลส ราชพฤกษ์ - 345', 'ทาวน์โฮม ราชพฤกษ์ 2 ชั้น เฟสใหม่ 4 ห้องนอน ใกล้แจ้งวัฒนะ และทางด่วนศรีสมานฯ รายล้อมสิ่งอำนวยความสะดวกครบครัน', 2.59, 'jpg.', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
