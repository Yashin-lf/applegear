-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2023 at 09:18 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `applegear`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `password` varchar(250) NOT NULL,
  `hash` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`, `hash`) VALUES
(1, '8f571bbd539fcfbbbafb674a1f88db3b', 'fecd5eeb7f3b3d94030d17af27b040f4');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `device` varchar(250) NOT NULL,
  `problem` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `name`, `phone`, `device`, `problem`, `date`, `time`) VALUES
(3, 'Марк', '89998340836', 'Сасунг галаси эс 10 и', 'Пизда ему че', '09.06.23', '07:06:30'),
(4, 'Леха', '899999999999', 'Xiaomi 30 s ultra super pro max mega', 'Накрылся', '09.06.23', '07:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'iPhone'),
(2, 'iPad'),
(3, 'MacBook'),
(4, 'Watch'),
(5, 'iMac'),
(6, 'TV');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `image`) VALUES
(1, 'iPhone 8', '1', '/img/iPhone8.png'),
(2, 'iPhone X', '1', '/img/iPhonex.png'),
(3, 'iPhone XS', '1', '/img/iPhonexs.png'),
(4, 'iPhone 11', '1', '/img/iPhone11.png'),
(5, 'iPhone 12', '1', '/img/iPhone12.png'),
(6, 'iPhone 13', '1', '/img/iPhone13.png'),
(7, 'iPhone 13 Pro', '1', '/img/iPhone13pro.png'),
(8, 'iPhone 13 Pro Max', '1', '/img/iPhone13promax.png'),
(9, 'iPhone 14 Pro', '1', '/img/iPhone14pro.png'),
(10, 'iPad Air', '2', '/img/ipadair.png'),
(11, 'iPad Pro 11', '2', '/img/ipadpro.png'),
(12, 'iPad Air 3', '2', '/img/ipadair3.png'),
(13, 'iPad Air 5', '2', '/img/ipadair5.png'),
(14, 'iPad Pro 12.9', '2', '/img/ipadpro12.png'),
(15, 'MacBook Air', '3', '/img/macbookair.png'),
(16, 'MacBook Pro 13', '3', '/img/macbookpro13.png'),
(17, 'MacBook Pro 13 2023', '3', '/img/macbookpro132023.png'),
(18, 'MacBook Pro 14', '3', '/img/macbookpro14.png'),
(19, 'MacBook Pro 16', '3', '/img/macbookpro16.png');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `direct` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `text`, `direct`) VALUES
(1, 'Дата выхода iPhone 15', 'В сети появилась информация о выходе iPhone 15. Сообщается о конце сенября 2023 года.', 'https://images.macrumors.com/t/wLj3ioBiaEtAl37CLeV-1MId08E=/1600x1200/smart/article-new/2022/11/iPhone-14-Pro-Purple-Side-Perspective-Feature-Purple.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `device` varchar(250) NOT NULL,
  `service` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `device`, `service`, `status`) VALUES
(2, 'iPhone X', 'Замена задней камеры', '1'),
(3, 'iPhone 11', 'Замена дисплея', '3'),
(4, 'iPhone 13 Pro', 'Замена динамика', '3'),
(5, 'MacBook Air', 'Очистка системы охлаждения', '2');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `direct` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `name`, `date`, `text`, `direct`) VALUES
(1, 'Приведи друга', '31.12.2023', 'Приведи к нам друга и получи сертификат на 1000 рублей. Твой друг получит так-же скидку', 'https://www.moy-ka.ru/upload/medialibrary/f51/f519dcceabb32c096d393182311bcd20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `rating` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `text`, `rating`) VALUES
(1, 'Марк', 'Все четко', '5'),
(2, 'Даниил', 'Отремонтировали быстро, предоставили гарантию. Всем ркеомендую!', '4');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `service` varchar(250) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `item`, `service`, `price`) VALUES
(1, 1, 'LCD Original', 27200),
(2, 1, 'Замена АКБ', 12000),
(3, 1, 'Замена динамика', 3000),
(4, 1, 'Задняя камера', 9000),
(5, 1, 'Передняя камера', 4000),
(6, 1, 'Корпус', 20000),
(7, 1, 'Заднее стекло', 14000),
(8, 1, 'Чистка от влаги', 2000),
(9, 1, 'Прошивка', 1000),
(10, 1, 'Пайка', 12000),
(11, 2, 'LCD Original', 27200),
(12, 2, 'Замена АКБ', 12000),
(13, 2, 'Замена динамика', 3000),
(14, 2, 'Задняя камера', 9000),
(15, 2, 'Передняя камера', 4000),
(16, 2, 'Корпус', 20000),
(17, 2, 'Заднее стекло', 14000),
(18, 2, 'Чистка от влаги', 2000),
(19, 2, 'Прошивка', 1000),
(20, 2, 'Пайка', 12000),
(21, 3, 'LCD Original', 27200),
(22, 3, 'Замена АКБ', 12000),
(23, 3, 'Замена динамика', 2000),
(24, 3, 'Задняя камера', 12000),
(25, 3, 'Передняя камера', 6000),
(26, 3, 'Корпус', 25000),
(27, 3, 'Заднее стекло', 11000),
(28, 3, 'Чистка от влаги', 3000),
(29, 3, 'Прошивка', 2000),
(30, 3, 'Пайка', 14000),
(31, 4, 'LCD Original', 27200),
(32, 4, 'Замена АКБ', 12000),
(33, 4, 'Замена динамика', 3000),
(34, 4, 'Задняя камера', 9000),
(35, 4, 'Передняя камера', 4000),
(36, 4, 'Корпус', 20000),
(37, 4, 'Заднее стекло', 14000),
(38, 4, 'Чистка от влаги', 2000),
(39, 4, 'Прошивка', 1000),
(40, 4, 'Пайка', 12000),
(41, 5, 'LCD Original', 27200),
(42, 5, 'Замена АКБ', 12000),
(43, 5, 'Замена динамика', 3000),
(44, 5, 'Задняя камера', 9000),
(45, 5, 'Передняя камера', 4000),
(46, 5, 'Корпус', 20000),
(47, 5, 'Заднее стекло', 14000),
(48, 5, 'Чистка от влаги', 2000),
(49, 5, 'Прошивка', 1000),
(50, 5, 'Пайка', 12000),
(51, 6, 'LCD Original', 27200),
(52, 6, 'Замена АКБ', 12000),
(53, 6, 'Замена динамика', 3000),
(54, 6, 'Задняя камера', 9000),
(55, 6, 'Передняя камера', 4000),
(56, 6, 'Корпус', 20000),
(57, 6, 'Заднее стекло', 14000),
(58, 6, 'Чистка от влаги', 2000),
(59, 6, 'Прошивка', 1000),
(60, 6, 'Пайка', 12000),
(61, 7, 'LCD Original', 27200),
(62, 7, 'Замена АКБ', 12000),
(63, 7, 'Замена динамика', 3000),
(64, 7, 'Задняя камера', 9000),
(65, 7, 'Передняя камера', 4000),
(66, 7, 'Корпус', 20000),
(67, 7, 'Заднее стекло', 14000),
(68, 7, 'Чистка от влаги', 2000),
(69, 7, 'Прошивка', 1000),
(70, 7, 'Пайка', 12000),
(71, 8, 'LCD Original', 27200),
(72, 8, 'LCD Copy', 11600),
(73, 8, 'Замена АКБ', 12000),
(74, 8, 'Замена динамика', 3000),
(75, 8, 'Задняя камера', 9000),
(76, 8, 'Передняя камера', 4000),
(77, 8, 'Корпус', 20000),
(78, 8, 'Вибромотор', 2500),
(79, 8, 'Заднее стекло', 14000),
(80, 8, 'Зарядный шлейф', 2900),
(81, 8, 'Чистка от влаги', 2000),
(82, 8, 'Прошивка', 1000),
(83, 8, 'Пайка', 12000),
(84, 9, 'LCD Original', 27200),
(85, 9, 'Замена АКБ', 12000),
(86, 9, 'Замена динамика', 3000),
(87, 9, 'Задняя камера', 9000),
(88, 9, 'Передняя камера', 4000),
(89, 9, 'Корпус', 20000),
(90, 9, 'Заднее стекло', 14000),
(91, 9, 'Чистка от влаги', 2000),
(92, 9, 'Прошивка', 1000),
(93, 9, 'Вибромотор', 2500),
(94, 9, 'Пайка', 12000),
(95, 10, 'Замена стекла', 3800),
(96, 10, 'Замена кнопки вкл', 2400),
(97, 10, 'Замена дисплея', 5900),
(98, 10, 'Замена кнопки Home', 2450),
(99, 10, 'Замена кнопок громкости', 3800),
(100, 10, 'Замена корпуса', 7900),
(101, 10, 'Замена камеры', 2800),
(102, 10, 'Замена динамика', 2300),
(103, 10, 'Замена АКБ', 3800),
(104, 11, 'Замена стекла', 4800),
(105, 11, 'Замена кнопки вкл', 3400),
(106, 11, 'Замена дисплея', 5900),
(107, 11, 'Замена кнопки Home', 3450),
(108, 11, 'Замена кнопок громкости', 5800),
(109, 11, 'Замена корпуса', 4900),
(110, 11, 'Замена камеры', 5800),
(111, 11, 'Замена динамика', 2300),
(112, 11, 'Замена АКБ', 7800),
(113, 12, 'Замена стекла', 5800),
(114, 12, 'Замена кнопки вкл', 3400),
(115, 12, 'Замена дисплея', 3900),
(116, 12, 'Замена кнопки Home', 4450),
(117, 12, 'Замена кнопок громкости', 3800),
(118, 12, 'Замена корпуса', 7900),
(119, 12, 'Замена камеры', 2800),
(120, 12, 'Замена динамика', 2300),
(121, 12, 'Замена АКБ', 3800),
(122, 13, 'Замена стекла', 3800),
(123, 13, 'Замена кнопки вкл', 2400),
(124, 13, 'Замена дисплея', 5900),
(125, 13, 'Замена кнопки Home', 2450),
(126, 13, 'Замена кнопок громкости', 3800),
(127, 13, 'Замена корпуса', 7900),
(128, 13, 'Замена камеры', 2800),
(129, 13, 'Замена динамика', 2300),
(130, 13, 'Замена АКБ', 3800),
(131, 14, 'Замена стекла', 5800),
(132, 14, 'Замена кнопки вкл', 2400),
(133, 14, 'Замена дисплея', 4900),
(134, 14, 'Замена кнопки Home', 8450),
(135, 14, 'Замена кнопок громкости', 7800),
(136, 14, 'Замена корпуса', 7900),
(137, 14, 'Замена камеры', 6800),
(138, 14, 'Замена динамика', 8300),
(139, 10, 'Замена АКБ', 9800),
(140, 15, 'Замена аккумулятора', 7000),
(141, 15, 'Замена кулера', 3100),
(142, 15, 'Чистка системы охлаждения', 1500),
(143, 15, 'Замена динамика', 1300),
(144, 15, 'Замена дисплея', 22700),
(145, 15, 'Замена диска', 6400),
(146, 15, 'Замена модуль WiFi', 7400),
(147, 15, 'Замена крышки', 2700),
(148, 15, 'Замена тачпада', 4500),
(149, 15, 'Замена ножек', 1600),
(150, 15, 'Замена SSD', 7400),
(151, 15, 'Замена корпуса', 11900),
(152, 16, 'Замена аккумулятора', 7000),
(153, 16, 'Замена кулера', 3100),
(154, 16, 'Чистка системы охлаждения', 1500),
(155, 16, 'Замена динамика', 1300),
(156, 16, 'Замена дисплея', 22700),
(157, 16, 'Замена диска', 6400),
(158, 16, 'Замена модуль WiFi', 7400),
(159, 16, 'Замена крышки', 2700),
(160, 16, 'Замена тачпада', 4500),
(161, 16, 'Замена ножек', 1600),
(162, 16, 'Замена SSD', 7400),
(163, 16, 'Замена корпуса', 11900),
(224, 17, 'Замена аккумулятора', 7000),
(225, 17, 'Замена кулера', 3100),
(226, 17, 'Чистка системы охлаждения', 1500),
(227, 17, 'Замена динамика', 1300),
(228, 17, 'Замена дисплея', 22700),
(229, 17, 'Замена диска', 6400),
(230, 17, 'Замена модуль WiFi', 7400),
(231, 17, 'Замена крышки', 2700),
(232, 17, 'Замена тачпада', 4500),
(233, 17, 'Замена ножек', 1600),
(234, 17, 'Замена SSD', 7400),
(235, 17, 'Замена корпуса', 11900),
(236, 18, 'Замена аккумулятора', 7000),
(237, 18, 'Замена кулера', 3100),
(238, 18, 'Чистка системы охлаждения', 1500),
(239, 18, 'Замена динамика', 1300),
(240, 18, 'Замена дисплея', 22700),
(241, 18, 'Замена диска', 6400),
(242, 18, 'Замена модуль WiFi', 7400),
(243, 18, 'Замена крышки', 2700),
(244, 18, 'Замена тачпада', 4500),
(245, 18, 'Замена ножек', 1600),
(246, 18, 'Замена SSD', 7400),
(247, 18, 'Замена корпуса', 11900),
(248, 19, 'Замена аккумулятора', 7000),
(249, 19, 'Замена кулера', 3100),
(250, 19, 'Чистка системы охлаждения', 1500),
(251, 19, 'Замена динамика', 1300),
(252, 19, 'Замена дисплея', 22700),
(253, 19, 'Замена диска', 6400),
(254, 19, 'Замена модуль WiFi', 7400),
(255, 19, 'Замена крышки', 2700),
(256, 19, 'Замена тачпада', 4500),
(257, 19, 'Замена ножек', 1600),
(258, 19, 'Замена SSD', 7400),
(259, 19, 'Замена корпуса', 11900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
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
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
