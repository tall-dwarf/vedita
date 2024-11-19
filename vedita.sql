-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 19 2024 г., 12:09
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vedita`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_PRICE` decimal(10,0) NOT NULL,
  `PRODUCT_ARTICLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_QUANTITY` int(5) UNSIGNED NOT NULL,
  `DATE_CREATE` datetime NOT NULL DEFAULT current_timestamp(),
  `HIDE` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `PRODUCT_ID`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `PRODUCT_ARTICLE`, `PRODUCT_QUANTITY`, `DATE_CREATE`, `HIDE`) VALUES
(1, 13213, 'Велосипед', '123123', 'awfawf675mhgjy', 0, '2024-11-18 21:10:38', 1),
(4, 1, 'The Lives of Others', '2247', 'eveniet', 59, '2097-02-01 02:40:33', 0),
(5, 4, 'To Kill a Mockingbird', '1863', 'cum', 73, '2071-02-04 07:59:53', 0),
(6, 7, 'Terminator 2: Judgment Day', '2057', 'dicta', 123, '2001-11-04 04:24:53', 0),
(7, 10, 'WALL·E', '2305', 'magni', 62, '2094-11-09 00:49:11', 0),
(8, 13, 'The Iron Giant', '1394', 'illo', 184, '2000-09-01 05:22:19', 1),
(9, 16, 'The Best Years of Our Lives', '2394', 'et', 14, '2062-06-30 11:15:11', 1),
(10, 19, 'Taxi Driver', '117', 'vel', 156, '2065-06-06 04:26:10', 1),
(11, 22, 'The Lord of the Rings: The Fellowship of the Ring', '1055', 'aliquam', 165, '2089-11-09 23:14:04', 1),
(12, 25, 'All About Eve', '2109', 'eveniet', 180, '2053-09-10 05:27:35', 0),
(13, 28, 'The Truman Show', '2725', 'sint', 70, '2000-08-25 01:21:51', 1),
(14, 31, 'Hotel Rwanda', '1813', 'molestiae', 40, '2049-08-17 12:34:45', 1),
(15, 34, 'Cinema Paradiso', '1300', 'at', 74, '2071-07-19 18:29:32', 1),
(16, 37, 'Citizen Kane', '2686', 'accusamus', 169, '2020-03-21 14:43:16', 0),
(17, 40, 'A Clockwork Orange', '2081', 'neque', 80, '2025-09-13 00:19:24', 1),
(18, 43, 'The Lord of the Rings: The Fellowship of the Ring', '2756', 'ullam', 45, '2064-01-25 20:58:20', 0),
(19, 46, 'City of God', '129', 'facilis', 162, '2028-04-24 12:31:34', 0),
(20, 49, 'City Lights', '2887', 'error', 94, '2024-02-06 06:57:43', 0),
(21, 52, 'Vertigo', '1417', 'quasi', 19, '2090-09-15 06:43:19', 0),
(22, 55, 'Blade Runner', '893', 'veniam', 189, '2024-03-07 22:56:18', 0),
(23, 58, 'Raiders of the Lost Ark', '509', 'blanditiis', 2, '2052-10-10 12:53:38', 0),
(24, 61, 'Metropolis', '922', 'est', 134, '2060-10-23 04:55:25', 1),
(25, 64, 'No Country for Old Men', '2243', 'magni', 174, '2090-03-25 11:42:36', 0),
(26, 67, 'Terminator 2: Judgment Day', '175', 'saepe', 164, '2088-03-30 05:56:45', 0),
(27, 70, 'The Sting', '1235', 'voluptatum', 43, '2085-07-21 18:28:43', 1),
(28, 73, 'Raiders of the Lost Ark', '745', 'minima', 8, '2072-09-20 23:12:57', 0),
(29, 76, 'Rashomon', '934', 'consectetur', 76, '2051-09-28 01:47:03', 1),
(30, 79, 'Jurassic Park', '1079', 'officiis', 8, '2097-01-27 01:10:59', 1),
(31, 82, 'Braveheart', '2519', 'eum', 189, '2042-08-21 14:50:53', 1),
(32, 85, 'Fight Club', '2091', 'nam', 149, '2004-09-25 17:17:26', 1),
(33, 88, 'Vertigo', '1695', 'inventore', 35, '2020-07-04 05:42:35', 1),
(34, 91, 'The Gold Rush', '1394', 'excepturi', 172, '1999-03-02 23:26:03', 1),
(35, 94, 'Cinema Paradiso', '1432', 'eius', 102, '2097-01-05 16:35:46', 1),
(36, 97, 'The Sting', '1428', 'error', 162, '2088-11-24 10:17:07', 1),
(37, 100, 'The Apartment', '1781', 'libero', 39, '2093-08-18 09:22:46', 0),
(38, 103, 'The Grapes of Wrath', '2966', 'ipsam', 117, '2049-07-28 01:59:18', 0),
(39, 106, 'Before Sunrise', '1923', 'nostrum', 34, '2068-12-06 09:21:09', 1),
(40, 109, 'Sunset Blvd.', '2383', 'maiores', 116, '2023-09-24 21:36:53', 0),
(41, 112, 'The Battle of Algiers', '1618', 'odit', 130, '2074-01-15 08:42:30', 0),
(42, 115, 'Inception', '1803', 'beatae', 13, '2048-08-30 01:20:48', 0),
(43, 118, 'The Big Lebowski', '2168', 'dolores', 71, '2093-08-15 20:50:46', 1),
(44, 121, 'Lawrence of Arabia', '1787', 'aliquam', 171, '2023-08-28 17:10:51', 0),
(45, 124, 'The Dark Knight Rises', '2745', 'ipsum', 152, '2065-10-04 18:11:22', 1),
(46, 127, 'The Third Man', '567', 'dicta', 170, '1992-09-24 16:53:07', 1),
(47, 130, 'Amélie', '2860', 'corrupti', 167, '2003-02-11 01:57:31', 1),
(48, 133, 'Das Boot', '2970', 'ad', 76, '2005-11-12 12:06:33', 0),
(49, 136, 'The Third Man', '2703', 'nam', 101, '2030-01-09 22:11:38', 1),
(50, 139, 'Chinatown', '1705', 'earum', 115, '2041-08-09 17:05:20', 0),
(51, 142, 'Léon: The Professional', '126', 'officia', 193, '2054-05-29 08:44:41', 1),
(52, 145, 'Gran Torino', '2291', 'assumenda', 159, '2036-11-14 15:45:15', 1),
(53, 148, 'There Will Be Blood', '2864', 'ullam', 131, '2001-05-11 05:18:38', 1),
(54, 151, 'The Iron Giant', '855', 'porro', 191, '2004-07-31 00:57:04', 1),
(55, 154, 'Blade Runner', '626', 'aliquid', 175, '2083-05-13 10:02:02', 0),
(56, 157, 'Goodfellas', '232', 'harum', 169, '1999-04-14 01:12:07', 1),
(57, 160, 'Some Like It Hot', '1022', 'commodi', 142, '2071-06-07 01:28:24', 0),
(58, 163, 'Once Upon a Time in the West', '2503', 'nemo', 15, '2080-05-21 17:18:21', 0),
(59, 166, 'The Godfather: Part II', '1580', 'veritatis', 125, '2038-06-18 04:25:31', 1),
(60, 169, 'Casino', '1054', 'ullam', 4, '2083-11-28 14:01:11', 1),
(61, 172, 'Se7en', '2474', 'maiores', 90, '2006-03-24 21:54:28', 0),
(62, 175, 'The Godfather: Part II', '438', 'dolor', 97, '2056-02-08 23:54:04', 1),
(63, 178, 'Trainspotting', '1063', 'accusamus', 81, '2059-08-12 12:01:10', 1),
(64, 181, 'The Best Years of Our Lives', '743', 'deleniti', 185, '2086-03-17 05:29:18', 0),
(65, 184, 'Prisoners', '1903', 'culpa', 172, '2049-05-16 02:36:53', 0),
(66, 187, 'Casino', '2049', 'molestiae', 111, '1998-09-18 01:04:15', 1),
(67, 190, 'Mad Max: Fury Road', '1602', 'placeat', 191, '2047-07-25 10:47:14', 1),
(68, 193, 'Cool Hand Luke', '2084', 'inventore', 111, '2051-03-08 13:47:08', 1),
(69, 196, 'The Lord of the Rings: The Two Towers', '252', 'consectetur', 12, '2042-06-11 17:08:39', 1),
(70, 199, 'The Best Years of Our Lives', '1682', 'voluptatum', 128, '2066-05-25 16:19:22', 0),
(71, 202, 'The Lion King', '456', 'officiis', 3, '2046-06-07 06:11:31', 1),
(72, 205, 'City Lights', '2099', 'labore', 170, '2007-03-08 06:34:01', 0),
(73, 208, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', '1075', 'beatae', 177, '2060-10-15 02:09:06', 1),
(74, 211, 'Oldboy', '921', 'iste', 96, '2037-12-20 08:41:24', 1),
(75, 214, 'Inception', '1253', 'debitis', 93, '2097-08-10 10:58:38', 1),
(76, 217, 'Unforgiven', '541', 'cupiditate', 1, '2020-03-21 22:03:04', 0),
(77, 220, 'Trainspotting', '914', 'porro', 162, '2076-03-18 03:10:29', 0),
(78, 223, 'The Battle of Algiers', '770', 'accusantium', 70, '2067-07-31 19:08:52', 0),
(79, 226, 'Gandhi', '2467', 'ad', 192, '2037-05-14 12:26:25', 0),
(80, 229, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', '2803', 'nihil', 63, '2024-11-28 09:16:27', 0),
(81, 232, 'The Great Escape', '2243', 'error', 129, '2064-01-02 03:16:58', 1),
(82, 235, 'The Exorcist', '580', 'soluta', 63, '2006-07-21 07:26:40', 1),
(83, 238, 'Kill Bill: Vol. 1', '2473', 'nisi', 107, '2038-01-10 11:37:04', 0),
(84, 241, 'The Sound of Music', '457', 'saepe', 56, '1992-12-13 16:48:00', 1),
(85, 244, 'Taxi Driver', '132', 'omnis', 181, '1998-12-27 11:21:31', 1),
(86, 247, 'The Elephant Man', '1433', 'eos', 176, '2027-11-29 08:39:42', 0),
(87, 250, 'Ben-Hur', '1851', 'ipsa', 112, '2009-05-14 06:36:02', 1),
(88, 253, 'Unforgiven', '1838', 'ipsa', 136, '2015-09-29 01:44:35', 1),
(89, 256, 'Catch Me If You Can', '1133', 'ullam', 105, '2059-11-27 03:31:08', 0),
(90, 259, 'Spirited Away', '1445', 'ipsa', 135, '2084-06-29 19:46:53', 0),
(91, 262, 'Seven Samurai', '1145', 'aliquid', 29, '2072-12-27 17:16:42', 1),
(92, 265, 'The Best Years of Our Lives', '1694', 'ex', 183, '2010-03-09 06:58:35', 1),
(93, 268, 'The Matrix', '619', 'numquam', 112, '2086-09-10 12:29:05', 1),
(94, 271, 'The Secret in Their Eyes', '262', 'nobis', 70, '2001-04-26 04:33:52', 0),
(95, 274, 'Stand by Me', '1609', 'in', 105, '1997-04-04 03:12:37', 1),
(96, 277, '2001: A Space Odyssey', '1966', 'sint', 108, '2063-11-12 16:53:28', 1),
(97, 280, 'Up', '1246', 'doloribus', 80, '2062-03-13 07:01:15', 0),
(98, 283, 'The Seventh Seal', '633', 'molestias', 5, '2081-01-09 22:52:52', 1),
(99, 286, 'The Great Dictator', '1279', 'accusamus', 152, '2086-03-06 16:50:08', 0),
(100, 289, 'Room', '459', 'odio', 65, '2041-09-28 03:11:17', 1),
(101, 292, 'The Good, the Bad and the Ugly', '910', 'totam', 0, '2082-04-22 21:04:09', 0),
(137, 400, 'In the Name of the Father', '1731', 'mollitia', 51, '2014-07-10 08:28:42', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
