-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2018 年 01 月 04 日 11:12
-- 伺服器版本: 10.1.10-MariaDB
-- PHP 版本： 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `Project`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Customer`
--

CREATE TABLE `Customer` (
  `Customer_ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Rencency` int(11) DEFAULT NULL,
  `Frequency` int(11) DEFAULT NULL,
  `Monetary` int(11) DEFAULT NULL,
  `RFM_Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Customer`
--

INSERT INTO `Customer` (`Customer_ID`, `Name`, `Email`, `Phone`, `Rencency`, `Frequency`, `Monetary`, `RFM_Score`) VALUES
(1, '郝萌', 'iamsocute@yahoo.com.tw', '0912345678', 0, 3, 250, 322),
(2, '吳所畏', 'fearlesshahaha@yahoo.com.tw', '0923456789', 8, 6, 456, 111),
(3, '毛容容', 'hairyhairy@yahoo.com.tw', '0934567891', 11, 1, 65, 133),
(4, '杜子鄂', 'iamsohungry@gmail.com', '0945678912', 11, 1, 130, 133),
(5, '陳懇', 'iamsincere@nccu.edu.tw', '0967891234', 0, 6, 459, 311),
(6, '顧衍', 'goodgood@yahoo.com.tw', '0978912345', 0, 2, 134, 333),
(7, '蘇白', 'suwhite@nccu.edu.tw', '0989123456', 0, 2, 125, 333),
(8, '羅強', 'strong@yahoo.com.tw', '0977778888', 0, 2, 69, 333),
(9, '程宇', 'idiom@nccu.edu.tw', '0978787878', 0, 2, 125, 333),
(10, '王維中', 'wangwei@yahoo.com.tw', '0955555555', 9, 1, 138, 133),
(11, '梁緣', 'liang@gmail.com', '0922222222', 0, 2, 125, 333),
(12, '林子偉', 'linziwei@yahoo.com.tw', '0911111111', 9, 1, 65, 133),
(13, '邵鈞', 'show@yahoo.com.tw', '0933333333', 8, 1, 60, 133),
(14, '邵鈞', 'shaw@yahoo.com.tw', '0932323232', 0, 0, 0, 0),
(15, '方錚', 'fc@yahoo.com.tw', '0955555555', 8, 2, 134, 133),
(16, '白瑄', 'white@yahoo.com.tw', '0921213232', 8, 1, 69, 133),
(17, '莫力譁', 'Jasmine@nccu.edu.tw', '0987878787', 8, 2, 130, 133),
(18, '元輥鯀', 'round@yahoo.com.tw', '0900000000', 0, 2, 207, 323),
(19, '元輥鯀', 'round@yahoo.com.tw', '0900000000', 0, 0, 0, 0),
(20, '賈芢', 'dummy@yahoo.com.tw', '0977777777', 8, 2, 180, 123),
(21, '賈芢', 'dummy@yahoo.com.tw', '0977777777', 0, 0, 0, 0),
(22, '陳小希', 'chansmall@yahoo.com.tw', '0912123232', 8, 1, 60, 133),
(23, '江辰', 'lovesmall@gmail.com', '0999999999', 8, 1, 138, 133),
(24, '張育成', 'zhang@yahoo.com.tw', '0912333211', 8, 1, 60, 133),
(25, '胡智為', 'whowho@gmail.com', '0988881111', 8, 1, 130, 133),
(26, '郭俊麟', 'kuo@yahoo.com.tw', '0922223333', 8, 1, 69, 133),
(27, '葉冶', 'yeahyeah@yahoo.com.tw', '0912122121', 8, 2, 130, 133),
(28, '白語靈', '102211211@yahoo.com.tw', '0910211211', 8, 2, 189, 123),
(29, '錢恒喜', 'jlsdh@yahoo.com.tw', '0912212121', 8, 2, 185, 123),
(30, '謝培英', 'thank@yahoo.com.tw', '0956123478', 7, 3, 310, 212),
(31, '侯維倫', '102jhk2jh@gmail.com', '0987152483', 8, 1, 65, 133),
(32, '黃思龍', 'njdkn@yahoo.com.tw', '0936281936', 8, 2, 125, 133),
(33, '張喬南', 'djk@yahoo.com.tw', '0936483624', 8, 3, 245, 122),
(34, '吳慶盈', 'wlksmlw@yahoo.com.tw', '0983745372', 8, 3, 250, 122),
(35, '蘇瑋婷', 'dwmlk@yahoo.com.tw', '0918274537', 8, 1, 138, 133),
(36, '王秀娟', 'wang@yahoo.com.tw', '0983638261', 7, 2, 134, 233),
(37, '郭宜蓁', 'kuo@nccu.edu.tw', '0938473524', 8, 2, 189, 123);

-- --------------------------------------------------------

--
-- 資料表結構 `Customer_Order`
--

CREATE TABLE `Customer_Order` (
  `id` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `OrderForm_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Customer_Order`
--

INSERT INTO `Customer_Order` (`id`, `Customer_ID`, `OrderForm_ID`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 30),
(7, 3, 39),
(8, 1, 41),
(9, 5, 45),
(10, 4, 47),
(11, 2, 49),
(12, 2, 50),
(13, 2, 51),
(14, 5, 52),
(15, 1, 53),
(16, 2, 54),
(17, 5, 55),
(18, 10, 56),
(19, 9, 57),
(20, 12, 58),
(21, 6, 59),
(22, 7, 62),
(23, 8, 63),
(24, 11, 64),
(25, 2, 66),
(26, 2, 67),
(27, 13, 68),
(28, 15, 69),
(29, 16, 70),
(30, 17, 71),
(31, 18, 72),
(32, 20, 73),
(33, 20, 74),
(34, 22, 75),
(35, 23, 76),
(36, 24, 77),
(37, 25, 78),
(38, 27, 80),
(39, 28, 81),
(40, 29, 82),
(41, 30, 83),
(42, 31, 84),
(43, 32, 85),
(44, 33, 86),
(45, 34, 87),
(46, 35, 88),
(47, 36, 89),
(48, 37, 90),
(49, 30, 91),
(50, 28, 92),
(51, 33, 93),
(52, 34, 94),
(53, 32, 98),
(54, 17, 100),
(55, 26, 101),
(56, 33, 102),
(57, 29, 103),
(58, 27, 104),
(59, 37, 105),
(60, 34, 106),
(61, 15, 107),
(62, 36, 108),
(63, 30, 113),
(64, 7, 125),
(65, 11, 128),
(66, 18, 129),
(67, 1, 130),
(68, 9, 131),
(69, 6, 132),
(70, 5, 133),
(71, 5, 134),
(72, 8, 136),
(73, 5, 137);

-- --------------------------------------------------------

--
-- 資料表結構 `Employee`
--

CREATE TABLE `Employee` (
  `Employee_ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Department` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Employee`
--

INSERT INTO `Employee` (`Employee_ID`, `Name`, `Department`) VALUES
(1001, '葉懿萱', 'Marketing');

-- --------------------------------------------------------

--
-- 資料表結構 `Employee_Order`
--

CREATE TABLE `Employee_Order` (
  `Employee_ID` int(11) NOT NULL,
  `OrderForm_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `Employee_Supplier`
--

CREATE TABLE `Employee_Supplier` (
  `Employee_ID` int(11) NOT NULL,
  `Supplier_ID` int(11) NOT NULL,
  `Material_ID` int(11) NOT NULL,
  `Demand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `Material`
--

CREATE TABLE `Material` (
  `Material_ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Unit` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Alert_Value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Material`
--

INSERT INTO `Material` (`Material_ID`, `Name`, `Unit`, `Price`, `Stock`, `Alert_Value`) VALUES
(2, '杯子', 1, 3, 805, 2106),
(3, '吸管', 1, 1, 805, 2133),
(4, '塑膠袋', 1, 1, 805, 2016),
(5, '杯蓋', 1, 2, 805, 2016),
(6, '林鳳營鮮乳', 1, 40, 57, 165),
(7, '蔗糖', 1, 10, 169, 190),
(8, '鐵觀音茶', 1, 30, 157, 174),
(9, '珍珠', 1, 2, 147, 198),
(10, '紅豆粉', 1, 5, 130, 195),
(11, '紅豆', 1, 3, 97, 196);

-- --------------------------------------------------------

--
-- 資料表結構 `Order_Form`
--

CREATE TABLE `Order_Form` (
  `Orderform_ID` int(11) UNSIGNED NOT NULL,
  `systime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `O_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Order_Form`
--

INSERT INTO `Order_Form` (`Orderform_ID`, `systime`, `O_amount`) VALUES
(1, '2017-12-24 08:52:16', 0),
(2, '2017-12-24 08:53:45', 0),
(3, '2017-12-24 08:53:52', 0),
(4, '2017-12-24 09:19:45', 0),
(5, '2017-12-24 09:36:27', 0),
(6, '2017-12-24 09:36:31', 0),
(7, '2017-12-24 09:44:04', 0),
(8, '2017-12-24 09:58:48', 0),
(9, '2017-12-24 09:59:41', 0),
(10, '2017-12-24 10:00:43', 0),
(11, '2017-12-24 10:00:54', 0),
(12, '2017-12-24 10:02:43', 0),
(13, '2017-12-24 10:03:11', 0),
(14, '2017-12-24 10:07:48', 0),
(15, '2017-12-24 10:07:52', 0),
(16, '2017-12-24 10:08:04', 0),
(17, '2017-12-24 10:12:48', 0),
(18, '2017-12-24 11:15:06', 65),
(19, '2017-12-24 11:18:24', 0),
(20, '2017-12-24 11:19:03', 65),
(21, '2017-12-24 11:21:04', 0),
(22, '2017-12-24 11:21:19', 0),
(23, '2017-12-24 11:22:22', 0),
(24, '2017-12-24 11:22:36', 0),
(25, '2017-12-24 11:23:47', 0),
(26, '2017-12-24 11:24:50', 60),
(27, '2017-12-24 11:27:09', 130),
(28, '2017-12-24 11:32:32', 69),
(29, '2017-12-24 11:34:15', 120),
(30, '2017-12-24 11:38:53', 65),
(31, '2017-12-24 11:40:14', 0),
(32, '2017-12-24 11:47:18', 0),
(33, '2017-12-24 11:48:34', 0),
(34, '2017-12-24 11:49:10', 0),
(35, '2017-12-24 11:49:59', 0),
(36, '2017-12-24 11:51:46', 0),
(37, '2017-12-24 11:52:24', 0),
(38, '2017-12-24 11:53:55', 0),
(39, '2017-12-24 11:55:54', 65),
(40, '2017-12-24 12:17:10', 60),
(41, '2017-12-24 12:17:46', 65),
(42, '2017-12-24 12:17:58', 138),
(43, '2017-12-24 12:18:06', 130),
(44, '2017-12-24 12:18:14', 60),
(45, '2017-12-24 12:18:21', 130),
(46, '2017-12-24 12:18:53', 65),
(47, '2017-12-24 12:19:03', 130),
(48, '2017-12-24 12:19:17', 69),
(49, '2017-12-24 12:19:33', 60),
(50, '2017-12-24 12:19:48', 138),
(51, '2017-12-24 12:20:52', 69),
(52, '2017-12-25 13:19:00', 69),
(53, '2017-12-25 13:19:17', 120),
(54, '2017-12-25 13:19:33', 60),
(55, '2017-12-26 04:34:37', 65),
(56, '2017-12-26 04:35:48', 138),
(57, '2017-12-26 04:36:07', 60),
(58, '2017-12-26 04:36:29', 65),
(59, '2017-12-26 04:36:46', 69),
(60, '2017-12-26 04:39:59', 0),
(61, '2017-12-26 10:03:47', 0),
(62, '2017-12-27 04:45:05', 60),
(63, '2017-12-27 04:45:16', 69),
(64, '2017-12-27 04:45:26', 60),
(65, '2017-12-27 04:55:19', 0),
(66, '2017-12-27 04:55:29', 60),
(67, '2017-12-27 04:55:38', 69),
(68, '2017-12-27 07:01:31', 60),
(69, '2017-12-27 07:01:46', 69),
(70, '2017-12-27 07:01:58', 69),
(71, '2017-12-27 07:02:11', 65),
(72, '2017-12-27 07:02:21', 138),
(73, '2017-12-27 07:02:35', 120),
(74, '2017-12-27 07:02:47', 60),
(75, '2017-12-27 07:02:59', 60),
(76, '2017-12-27 07:03:07', 138),
(77, '2017-12-27 07:03:17', 60),
(78, '2017-12-27 07:03:28', 130),
(79, '2017-12-27 07:03:43', 120),
(80, '2017-12-27 07:03:54', 65),
(81, '2017-12-27 07:04:03', 120),
(82, '2017-12-27 07:04:17', 120),
(83, '2017-12-27 07:04:28', 60),
(84, '2017-12-27 07:04:37', 65),
(85, '2017-12-27 07:04:51', 60),
(86, '2017-12-27 07:05:00', 65),
(87, '2017-12-27 07:05:11', 60),
(88, '2017-12-27 07:05:19', 138),
(89, '2017-12-27 07:05:27', 65),
(90, '2017-12-27 07:05:37', 120),
(91, '2017-12-27 07:05:45', 120),
(92, '2017-12-27 07:05:51', 69),
(93, '2017-12-27 07:05:59', 60),
(94, '2017-12-27 07:06:06', 125),
(95, '2017-12-27 07:06:17', 60),
(96, '2017-12-27 07:34:50', 0),
(97, '2017-12-27 07:45:29', 0),
(98, '2017-12-27 07:47:00', 65),
(99, '2017-12-27 07:47:16', 0),
(100, '2017-12-27 07:47:51', 65),
(101, '2017-12-27 07:48:37', 69),
(102, '2017-12-27 07:48:58', 120),
(103, '2017-12-27 07:49:10', 65),
(104, '2017-12-27 07:49:23', 65),
(105, '2017-12-27 09:07:29', 69),
(106, '2017-12-27 09:07:41', 65),
(107, '2017-12-27 09:08:22', 65),
(108, '2017-12-28 02:00:47', 69),
(109, '2017-12-28 09:11:20', 0),
(110, '2017-12-28 09:12:24', 0),
(111, '2017-12-28 09:13:49', 0),
(112, '2017-12-28 09:14:33', 0),
(113, '2017-12-28 09:15:11', 130),
(114, '2017-12-28 10:39:16', 0),
(115, '2018-01-03 09:45:07', 0),
(116, '2018-01-03 09:48:51', 0),
(117, '2018-01-03 09:50:51', 0),
(118, '2018-01-03 12:34:30', 0),
(119, '2018-01-03 13:19:06', 0),
(120, '2018-01-03 13:19:21', 0),
(121, '2018-01-03 13:20:38', 0),
(122, '2018-01-03 14:14:13', 0),
(123, '2018-01-04 03:52:06', 0),
(124, '2018-01-04 03:58:35', 0),
(125, '2018-01-04 07:01:06', 65),
(126, '2018-01-04 07:01:27', 65),
(127, '2018-01-04 07:26:35', 0),
(128, '2018-01-04 07:26:58', 65),
(129, '2018-01-04 08:34:36', 69),
(130, '2018-01-04 09:17:07', 65),
(131, '2018-01-04 09:17:43', 65),
(132, '2018-01-04 09:18:04', 65),
(133, '2018-01-04 09:19:04', 65),
(134, '2018-01-04 09:22:55', 65),
(135, '2018-01-04 09:23:21', 0),
(136, '2018-01-04 10:03:03', 0),
(137, '2018-01-04 10:03:44', 65);

-- --------------------------------------------------------

--
-- 資料表結構 `Order_Product`
--

CREATE TABLE `Order_Product` (
  `id` int(10) UNSIGNED NOT NULL,
  `Order_ID` int(10) UNSIGNED NOT NULL,
  `Product_ID` int(10) UNSIGNED NOT NULL,
  `Quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Order_Product`
--

INSERT INTO `Order_Product` (`id`, `Order_ID`, `Product_ID`, `Quantity`) VALUES
(18, 18, 2, 1),
(20, 20, 2, 1),
(22, 27, 2, 2),
(25, 30, 2, 1),
(26, 39, 2, 1),
(29, 41, 2, 1),
(31, 43, 2, 2),
(33, 45, 2, 2),
(34, 46, 2, 1),
(35, 47, 2, 2),
(41, 53, 1, 2),
(42, 54, 1, 1),
(43, 55, 2, 1),
(45, 57, 1, 1),
(47, 58, 2, 1),
(48, 58, 1, 0),
(50, 62, 1, 1),
(52, 64, 1, 1),
(53, 66, 1, 1),
(55, 68, 1, 1),
(58, 71, 2, 1),
(60, 73, 1, 2),
(61, 74, 1, 1),
(62, 75, 1, 1),
(63, 76, 3, 2),
(64, 77, 1, 1),
(65, 78, 2, 2),
(66, 79, 0, 0),
(67, 79, 1, 2),
(68, 80, 2, 1),
(69, 81, 1, 2),
(70, 82, 1, 2),
(72, 84, 2, 1),
(73, 85, 1, 1),
(74, 86, 2, 1),
(75, 87, 1, 1),
(76, 88, 3, 2),
(77, 89, 2, 1),
(78, 90, 1, 2),
(79, 91, 1, 2),
(80, 92, 3, 1),
(81, 93, 1, 1),
(82, 94, 1, 1),
(83, 94, 2, 1),
(84, 95, 0, 0),
(85, 95, 1, 1),
(86, 98, 2, 1),
(87, 100, 2, 1),
(89, 102, 1, 2),
(90, 103, 2, 1),
(91, 104, 2, 1),
(93, 106, 2, 1),
(94, 107, 2, 1),
(96, 113, 2, 2),
(97, 125, 2, 1),
(99, 128, 2, 1),
(101, 130, 2, 1),
(102, 131, 2, 1),
(103, 132, 2, 1),
(104, 133, 2, 1),
(105, 134, 2, 1),
(106, 137, 2, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `Product`
--

CREATE TABLE `Product` (
  `Product_ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Price` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Product`
--

INSERT INTO `Product` (`Product_ID`, `Name`, `Price`) VALUES
(1, '觀音拿鐵', 60),
(2, '觀音珍珠拿鐵', 65),
(3, '珍珠紅豆拿鐵', 69);

-- --------------------------------------------------------

--
-- 資料表結構 `Product_Material`
--

CREATE TABLE `Product_Material` (
  `Product_ID` int(11) NOT NULL,
  `Demand` int(11) NOT NULL,
  `Material_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `RFM`
--

CREATE TABLE `RFM` (
  `RFM_Score` int(11) NOT NULL,
  `Response_Rate` float NOT NULL,
  `BEI` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `RFM`
--

INSERT INTO `RFM` (`RFM_Score`, `Response_Rate`, `BEI`) VALUES
(111, 15.55, 78.5638),
(112, 15.02, 77.8074),
(113, 12.1, 72.4518),
(121, 11.52, 71.0648),
(122, 9.9, 66.33),
(123, 10.89, 69.3909),
(131, 10.6, 68.5535),
(132, 8.76, 61.9482),
(133, 2.98, -11.8568),
(211, 8.5, 60.7843),
(212, 7.72, 56.8221),
(213, 4.01, 16.8745),
(221, 5.65, 41.0029),
(222, 4, 16.6667),
(223, 3.03, -10.011),
(231, 5.05, 33.9934),
(232, 3.22, -3.51967),
(233, 0.29, -1049.43),
(311, 9, 62.963),
(312, 8.5, 60.7843),
(313, 7.5, 55.5556),
(322, 4.3, 22.4806),
(323, 0.45, -640.741),
(331, 5.05, 33.9934),
(332, 0.35, -852.381),
(333, 0.05, -6566.67);

-- --------------------------------------------------------

--
-- 資料表結構 `Supplier`
--

CREATE TABLE `Supplier` (
  `Supplier_ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `Supplier_Material`
--

CREATE TABLE `Supplier_Material` (
  `Supplier_ID` int(11) NOT NULL,
  `Material_ID` int(11) NOT NULL,
  `Arrival_Date` date NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- 資料表索引 `Customer_Order`
--
ALTER TABLE `Customer_Order`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- 資料表索引 `Employee_Order`
--
ALTER TABLE `Employee_Order`
  ADD PRIMARY KEY (`Employee_ID`,`OrderForm_ID`);

--
-- 資料表索引 `Material`
--
ALTER TABLE `Material`
  ADD PRIMARY KEY (`Material_ID`);

--
-- 資料表索引 `Order_Form`
--
ALTER TABLE `Order_Form`
  ADD PRIMARY KEY (`Orderform_ID`);

--
-- 資料表索引 `Order_Product`
--
ALTER TABLE `Order_Product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_ID` (`Order_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- 資料表索引 `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- 資料表索引 `Product_Material`
--
ALTER TABLE `Product_Material`
  ADD PRIMARY KEY (`Product_ID`);

--
-- 資料表索引 `RFM`
--
ALTER TABLE `RFM`
  ADD PRIMARY KEY (`RFM_Score`);

--
-- 資料表索引 `Supplier`
--
ALTER TABLE `Supplier`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `Customer`
--
ALTER TABLE `Customer`
  MODIFY `Customer_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- 使用資料表 AUTO_INCREMENT `Customer_Order`
--
ALTER TABLE `Customer_Order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- 使用資料表 AUTO_INCREMENT `Material`
--
ALTER TABLE `Material`
  MODIFY `Material_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用資料表 AUTO_INCREMENT `Order_Form`
--
ALTER TABLE `Order_Form`
  MODIFY `Orderform_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- 使用資料表 AUTO_INCREMENT `Order_Product`
--
ALTER TABLE `Order_Product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- 使用資料表 AUTO_INCREMENT `Product`
--
ALTER TABLE `Product`
  MODIFY `Product_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `Supplier`
--
ALTER TABLE `Supplier`
  MODIFY `Supplier_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
