-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 03:45 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`) VALUES
(50, 1, 2, 2, '2023-02-03 12:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(5, 'Процесори', 'процесори', 'Голямо разнообразие от процесори. Единствено вие трябва да определите кой ще покрие вашите нужди.', 0, 0, '1674996213.png', 'Процесори', 'Голямо разнообразие от процесори. Единствено вие трябва да определите кой ще покрие вашите нужди.', 'процесори, cpus, CPUs', '2023-01-29 12:43:33'),
(6, 'RAM ', 'ram', 'Предлагаме както DDR4, така и DDR5.', 0, 0, '1674998530.png', 'RAM', 'Предлагаме както DDR4, така и DDR5.', 'RAM, ram, оперативна памет', '2023-01-29 12:47:16'),
(7, 'Видео карти', 'видео карти', 'Обикновено това е най-скъпия компонент във вашия компютър.', 0, 0, '1674996754.png', 'Видео карти', 'Обикновено това е най-скъпия компонент във вашия компютър.', 'GPUs, GPU, gpu, видео карти, видео, карти', '2023-01-29 12:52:34'),
(8, 'Захранвания', 'захранвания', 'Не си стискайте парите за този компонент.', 0, 0, '1674998735.png', 'Захранвания', 'Не си стискайте парите за този компонент.', 'Захранвания, захранване, PSUs, psu', '2023-01-29 12:55:44'),
(9, 'Охладители', 'охладители', 'Охладите за процесори и видео карти.', 0, 0, '1674998637.png', 'Охладители', 'Охладите за процесори и видео карти.', 'охладител, coolers, Coolers, Охладители', '2023-01-29 13:09:52'),
(10, 'Дънни платки', 'дънни платки', 'Основата на един компютър. Съвместимостта е много важна.', 0, 0, '1675530165.png', 'Дънни платки', 'Основата на един компютър. Съвместимостта е много важна.', 'дъно, дънна платка, платка, motherboard', '2023-02-04 17:02:45'),
(11, 'Кутии', 'кутии', 'В нея ще ви бъде компютъра. Може и без нея :D', 0, 0, '1675530451.png', 'Кутии', 'В нея ще ви бъде компютъра. Може и без нея :D', 'кутии, кутия, pc case, case', '2023-02-04 17:07:31'),
(12, 'Вентилатори', 'вентилатори', 'Има както за кутии, така и за охладители.', 0, 0, '1676215591.png', 'Вентилатори', 'Има както за кутии, така и за охладители.', 'вентилатор, вентилатори, fan, pc fan, fans', '2023-02-12 15:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tracking_number` varchar(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` mediumtext NOT NULL,
  `pincode` int(191) NOT NULL,
  `total_price` int(191) NOT NULL,
  `payment_mode` varchar(191) NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_number`, `user_id`, `name`, `email`, `phone`, `address`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `comments`, `created_at`) VALUES
(1, 'dan93029042334', 2, 'Tom Thomas Tom', 'user@gmail.com', '589042334', 'fgsdffwe', 3435, 920, 'COD', '', 1, NULL, '2023-02-05 17:06:17'),
(2, 'dan8312234', 2, 'fwer', 'sdqd@gmail.com', '34234', 'wefwf', 345235, 920, 'COD', '', 1, NULL, '2023-02-05 17:10:14'),
(3, 'dan4289745674567', 2, 'ergerggrg', 'erger@gmail.com', '45745674567', 'frdfgwerfw', 45345, 460, 'COD', '', 0, NULL, '2023-02-07 16:02:49'),
(4, 'dan320847о534780', 2, 'икербгихерхбигер', 'user@gmail.com', '8347о534780', 'исдфхжуисдфхжфхжиеруфхжефхжхефжхйеидйжсдиожйосдфхжеруихфже', 54785423, 80, 'COD', '', 0, NULL, '2023-03-19 16:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(191) NOT NULL,
  `prod_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`) VALUES
(1, 1, 2, 2, 460, '2023-02-05 17:06:17'),
(2, 2, 2, 2, 460, '2023-02-05 17:10:14'),
(3, 3, 2, 1, 460, '2023-02-07 16:02:49'),
(4, 4, 5, 1, 80, '2023-03-19 16:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(2, 5, 'Ryzen 5 7600', 'ryzen 5 7600', 'Физически ядра: 6 ||\r\nЛогически ядра/Нишки: 12 ||\r\nМаксимален Boost Clock: До 5.1GHz ||\r\nBase Clock: 3.8GHz', 'Платформа: Desktop ||\r\nФизически ядра: 6 ||\r\nЛогически ядра/Нишки: 12 ||\r\nМаксимален Boost Clock: До 5.1GHz ||\r\nBase Clock: 3.8GHz ||\r\nL1 Cache: 384KB ||\r\nL2 Cache: 6MB ||\r\nL3 Cache: 32MB ||\r\nTDP: 65W ||\r\nProcessor Technology for CPU Cores: TSMC 5nm FinFET ||\r\nOverclocking: Да ||\r\nCPU Socket: AM5 ||\r\nОхладител: AMD Wraith Stealth ||\r\nМаксимална температура на работа (Tjmax): 95°C ||\r\n\r\nPCI Express: PCIe 5.0 ||\r\nОперативна памет: DDR5 ||\r\nБрой канали: 2 ||\r\nМаксимална скорост:\r\n2x1R - DDR5-5200;\r\n2x2R - DDR5-5200;\r\n4x1R - DDR5-3600;\r\n4x2R - DDR5-3600 ||\r\n\r\nГрафични ядра: 2 ||\r\nЧестота: 2200 MHz ||\r\nGPU базова честота: 400 MHz', 460, 500, '1675162701.png', 12, 0, 1, 'Ryzen 5 7600', 'Ryzen, ryzen, ryzen 5, процесор, cpu, 7600', 'Платформа: Desktop ||\r\nФизически ядра: 6 ||\r\nЛогически ядра/Нишки: 12 ||\r\nМаксимален Boost Clock: До 5.1GHz ||\r\nBase Clock: 3.8GHz ||\r\nL1 Cache: 384KB ||\r\nL2 Cache: 6MB ||\r\nL3 Cache: 32MB ||\r\nTDP: 65W ||\r\nProcessor Technology for CPU Cores: TSMC 5nm FinFET ||\r\nOverclocking: Да ||\r\nCPU Socket: AM5 ||\r\nОхладител: AMD Wraith Stealth ||\r\nМаксимална температура на работа (Tjmax): 95°C ||\r\n\r\nPCI Express: PCIe 5.0 ||\r\nОперативна памет: DDR5 ||\r\nБрой канали: 2 ||\r\nМаксимална скорост:\r\n2x1R - DDR5-5200;\r\n2x2R - DDR5-5200;\r\n4x1R - DDR5-3600;\r\n4x2R - DDR5-3600 ||\r\n\r\nГрафични ядра: 2 ||\r\nЧестота: 2200 MHz ||\r\nGPU базова честота: 400 MHz', '2023-01-31 10:58:21'),
(5, 6, 'Kingston FURY Beast 16GB (2x8GB) DDR4 3200MHz ', 'kingston FURY Beast 16GB (2x8GB) DDR4 3200MHz ', '16GB (2x8GB) DDR4 3200MHz ', 'Тип	Памет: за PC ||\r\nРазмер на паметта: 16 GB ||\r\nОкомплектоване: 2x8GB ||\r\nТип памет: DDR4 ||\r\nСкорост: 3200 MHz ||\r\nMulti-Channel комплект: Dual-channel ||\r\nCAS latency: CL 16 ||\r\nОхладителни ребра : Да ||\r\nLED осветление: Не ||\r\nНапрежение: 1.35 V', 80, 88, '1676833800.jpg', 7, 0, 1, 'Kingston FURY Beast 16GB (2x8GB) DDR4 3200MHz ', 'kingston, RAM, ram, 16gb, 3200', 'Тип	Памет: за PC ||\r\nРазмер на паметта: 16 GB ||\r\nОкомплектоване: 2x8GB ||\r\nТип памет: DDR4 ||\r\nСкорост: 3200 MHz ||\r\nMulti-Channel комплект: Dual-channel ||\r\nCAS latency: CL 16 ||\r\nОхладителни ребра : Да ||\r\nLED осветление: Не ||\r\nНапрежение: 1.35 V', '2023-02-19 19:10:00'),
(6, 6, 'Corsair VENGEANCE RGB PRO SL 32GB (2x16GB) DDR4 3600MHz', 'corsair VENGEANCE RGB PRO SL 32GB (2x16GB) DDR4 3600MHz', '32GB (2x16GB) DDR4 3600MHz', 'Тип	Памет: за PC ||\r\nРазмер на паметта: 32 GB ||\r\nОкомплектоване: 2x16GB ||\r\nТип памет: DDR4 ||\r\nСкорост: 3600 MHz ||\r\nMulti-Channel комплект: Dual-channel ||\r\nCAS латентност: CL 18 ||\r\nОхладителни ребра: Да ||\r\nLED осветление: Да ||\r\nНапрежение: 1.3 V', 170, 190, '1676834229.png', 5, 0, 0, 'Corsair VENGEANCE RGB PRO SL 32GB (2x16GB) DDR4 3600MHz', 'corsair, 32gb, 2x16, RAM, ram, 3600mhz', 'Тип	Памет: за PC ||\r\nРазмер на паметта: 32 GB ||\r\nОкомплектоване: 2x16GB ||\r\nТип памет: DDR4 ||\r\nСкорост: 3600 MHz ||\r\nMulti-Channel комплект: Dual-channel ||\r\nCAS латентност: CL 18 ||\r\nОхладителни ребра: Да ||\r\nLED осветление: Да ||\r\nНапрежение: 1.3 V', '2023-02-19 19:17:09'),
(7, 6, 'G.SKILL Trident Z RGB 16GB (2x8GB) DDR4 3200MHz', 'g.SKILL Trident Z RGB 16GB (2x8GB) DDR4 3200MHz', '16GB (2x8GB) DDR4 3200MHz', 'Тип	Памет: за PC ||\r\nРазмер на паметта: 16 GB ||\r\nОкомплектоване: 2x8GB ||\r\nТип памет: DDR4 ||\r\nСкорост: 3200 MHz ||\r\nMulti-Channel комплект: Dual-channel ||\r\nCAS латентност : CL 16 ||\r\nОхладителни ребра : Да ||\r\nLED осветление: Да ||\r\nНапрежение: 1.35 V', 130, 145, '1676834562.png', 4, 0, 1, 'G.SKILL Trident Z RGB 16GB (2x8GB) DDR4 3200MHz', 'ram, RAM, g.skill, 3200mhz, 2x8gb', 'Тип	Памет: за PC ||\r\nРазмер на паметта: 16 GB ||\r\nОкомплектоване: 2x8GB ||\r\nТип памет: DDR4 ||\r\nСкорост: 3200 MHz ||\r\nMulti-Channel комплект: Dual-channel ||\r\nCAS латентност : CL 16 ||\r\nОхладителни ребра : Да ||\r\nLED осветление: Да ||\r\nНапрежение: 1.35 V', '2023-02-19 19:21:34'),
(8, 6, 'G.SKILL Trident Z5 RGB 64GB (2x32GB) DDR5 6000MHz', 'g.SKILL Trident Z5 RGB 64GB (2x32GB) DDR5 6000MHz', '64GB (2x32GB) DDR5 6000MHz', 'Тип	Памет: за PC ||\r\nРазмер на паметта: 64 GB ||\r\nОкомплектоване: 2x32GB ||\r\nТип памет: DDR5 ||\r\nСкорост: 6000 MHz ||\r\nMulti-Channel комплект: Dual-channel ||\r\nCAS латентност : CL 30 ||\r\nОхладителни ребра : Да ||\r\nLED осветление: Да ||\r\nНапрежение: 1.4 V', 860, 840, '1677845146.jpg', 3, 0, 0, 'G.SKILL Trident Z5 RGB 64GB (2x32GB) DDR5 6000MHz', 'RAM, ram, DDR5, 6000MHZ, g.skill, 2x32GB', 'Тип	Памет: за PC ||\r\nРазмер на паметта: 64 GB ||\r\nОкомплектоване: 2x32GB ||\r\nТип памет: DDR5 ||\r\nСкорост: 6000 MHz ||\r\nMulti-Channel комплект: Dual-channel ||\r\nCAS латентност : CL 30 ||\r\nОхладителни ребра : Да ||\r\nLED осветление: Да ||\r\nНапрежение: 1.4 V', '2023-03-03 12:05:46'),
(9, 11, 'Thermaltake V350 Air TG ARGB', 'thermaltake V350 Air TG ARGB', 'Размери: Ширина - 220 мм, Дълбочина - 461 мм ', 'Размери: Ширина - 220 мм, Дълбочина - 461 мм ||\r\nПоддържани дънни платки: Micro ATX - Да, Mini ITX - Да ||\r\nИзводи на предния панел: Аудиожак на предния панел  - Да, FireWire - Не, eSATA - Не', 130, 135, '1677845649.jpg', 4, 0, 1, 'Thermaltake V350 Air TG ARGB', 'thermaltake, кутия, ATX, V350, case', 'Размери: Ширина - 220 мм, Дълбочина - 461 мм ||\r\nПоддържани дънни платки: Micro ATX - Да, Mini ITX - Да ||\r\nИзводи на предния панел: Аудиожак на предния панел  - Да, FireWire - Не, eSATA - Не', '2023-03-03 12:14:09'),
(10, 11, 'be quiet! Pure Base 500DX', 'be quiet! Pure Base 500DX', 'Размери: Ширина - 232 мм, Височина - 463 мм, Дълбочина - 450 мм, Тегло - 7800 г', 'Размери: Ширина - 232 мм, Височина - 463 мм, Дълбочина - 450 мм, Тегло - 7800 г ||\r\nПоддържани дънни платки: ATX - Да, Micro ATX - Да, Extended ATX - Не, Mini ITX - Да ||\r\nИзводи на предния панел: Брой USB портове - 2,  Аудиожак на предния панел  - Да, FireWire - Не, eSATA - Не', 200, 210, '1677846074.jpg', 2, 0, 0, 'be quiet! Pure Base 500DX', 'case, кутии, кутия, be quiet, ', 'Размери: Ширина - 232 мм, Височина - 463 мм, Дълбочина - 450 мм, Тегло - 7800 г ||\r\nПоддържани дънни платки: ATX - Да, Micro ATX - Да, Extended ATX - Не, Mini ITX - Да ||\r\nИзводи на предния панел: Брой USB портове - 2,  Аудиожак на предния панел  - Да, FireWire - Не, eSATA - Не', '2023-03-03 12:21:14'),
(11, 11, 'Aerocool CS-107 V2', 'aerocool CS-107 V2', 'Размери: Ширина - 197 мм, Дълбочина - 340 мм', 'Размери: Ширина - 197 мм, Дълбочина - 340 мм ||\r\nПоддържани дънни платки: ATX - Не, Micro ATX - Да, Extended ATX - Не, Mini ITX - Да ||\r\nИзводи на предния панел: Брой USB портове - 2, Аудиожак на предния панел - Да, FireWire - Не, eSATA - Не', 49, 50, '1677846601.jpg', 8, 0, 1, 'Aerocool CS-107 V2', 'кутии, case, aerocool, V2', 'Размери: Ширина - 197 мм, Дълбочина - 340 мм ||\r\nПоддържани дънни платки: ATX - Не, Micro ATX - Да, Extended ATX - Не, Mini ITX - Да ||\r\nИзводи на предния панел: Брой USB портове - 2, Аудиожак на предния панел - Да, FireWire - Не, eSATA - Не', '2023-03-03 12:30:01'),
(12, 11, 'COUGAR Conquer', 'cougar Conquer', 'Размер: 255 x 580 x 685 мм', 'Вид: Mid Tower || Форм фактор: ATX, Micro ATX, Mini ITX || Захранване: Без захранване || Портове: 1 x Audio Out, 1 x Audio In, 2 x USB 3.0 || Размер: 255 x 580 x 685 мм\r\n', 300, 347, '1680608299.jpg', 2, 0, 0, 'COUGAR Conquer', 'cougar, case, кутия, conquer', 'Вид: Mid Tower || Форм фактор: ATX, Micro ATX, Mini ITX || Захранване: Без захранване || Портове: 1 x Audio Out, 1 x Audio In, 2 x USB 3.0 || Размер: 255 x 580 x 685 мм', '2023-04-04 11:38:19'),
(13, 9, 'ARCTIC Freezer 34 eSports DUO', 'arctic Freezer 34 eSports DUO', 'Тип на охлаждането: Въздушно', 'Тип на охлаждането: Въздушно || Съвместимост: Intel LGA1150, LGA1151, LGA1155, LGA1156, LGA2011-0, LGA2011-3, LGA2066 || \r\nСъвместимост: AMD AM4 ||\r\nКапацитет на охлаждане: 210 W ||\r\nРазмер на вентилатор: 120 x 120 x 25 мм x 2 ||\r\nТип на лагера: Fluid Dynamic Bearing ||\r\nОбороти на въртене: 200-2100 RPM ||\r\nКонектор“ 4 pin PWM ||\r\nВъздушен поток“ 135.12 CFM ||\r\nНИВО НА ШУМ(Max): 0.5 Sone ||\r\nРазмери: 124 x 88 x H157 мм ||\r\nДопълнителни    Direct Touch Heatpipes 6 ,, x 4 ||\r\nТегло: 627 g', 70, 73, '1680608766.jpg', 5, 0, 1, 'ARCTIC Freezer 34 eSports DUO', 'arctic, cooler, охладител', 'Тип на охлаждането: Въздушно || Съвместимост: Intel LGA1150, LGA1151, LGA1155, LGA1156, LGA2011-0, LGA2011-3, LGA2066 || \r\nСъвместимост: AMD AM4 ||\r\nКапацитет на охлаждане: 210 W ||\r\nРазмер на вентилатор: 120 x 120 x 25 мм x 2 ||\r\nТип на лагера: Fluid Dynamic Bearing ||\r\nОбороти на въртене: 200-2100 RPM ||\r\nКонектор“ 4 pin PWM ||\r\nВъздушен поток“ 135.12 CFM ||\r\nНИВО НА ШУМ(Max): 0.5 Sone ||\r\nРазмери: 124 x 88 x H157 мм ||\r\nДопълнителни    Direct Touch Heatpipes 6 ,, x 4 ||\r\nТегло: 627 g', '2023-04-04 11:46:06'),
(14, 9, 'Noctua NH-D15', 'noctua NH-D15', 'LGA2011/1156/1155/1150/AM2/AM2+/AM3/AM3+/F ', 'Тип: активен охладител ||\r\nВентилатор за: Процесор ||\r\nДиаметър на вентилатора: 140 мм ||\r\nОбороти на вентилатора: 1500 об/мин ||\r\nМаксимално ниво на шум: 24.6 dB ||\r\nВъздушен поток: 140.2 CFM ||\r\nLED осветление: Не ||\r\nРазмери: 165 x 160 x 161 мм ||\r\nТегло: 1320 г', 139, 150, '1680614879.jpg', 2, 0, 0, 'Noctua NH-D15', 'cooler, охладител, noctua', 'Тип: активен охладител ||\r\nВентилатор за: Процесор ||\r\nДиаметър на вентилатора: 140 мм ||\r\nОбороти на вентилатора: 1500 об/мин ||\r\nМаксимално ниво на шум: 24.6 dB ||\r\nВъздушен поток: 140.2 CFM ||\r\nLED осветление: Не ||\r\nРазмери: 165 x 160 x 161 мм ||\r\nТегло: 1320 г', '2023-04-04 13:27:59'),
(15, 9, 'be quiet! Pure Rock 2', 'be quiet! pure Rock 2', 'Тип охлаждане: Въздух || Конектор: 4 Pin PWM Connector || Обороти на вентилатора: 1500 RPM\r\n', 'Тип: активен охладител ||\r\nВентилатор за: Процесор ||\r\nДиаметър на вентилатора: 120 мм ||\r\nОбороти на вентилатора: 1500 об/мин ||\r\nМаксимално ниво на шум: 26.8 dB ||\r\nВъздушен поток: 87 CFM ||\r\nLED осветление: Не ||\r\nРазмери: 88 x 121 x 155 мм ||\r\nТегло: 575 г', 58, 60, '1680615364.jpg', 11, 0, 1, 'be quiet! Pure Rock 2', 'cooler, охладител, be quiet', 'Тип: активен охладител ||\r\nВентилатор за: Процесор ||\r\nДиаметър на вентилатора: 120 мм ||\r\nОбороти на вентилатора: 1500 об/мин ||\r\nМаксимално ниво на шум: 26.8 dB ||\r\nВъздушен поток: 87 CFM ||\r\nLED осветление: Не ||\r\nРазмери: 88 x 121 x 155 мм ||\r\nТегло: 575 г', '2023-04-04 13:36:04'),
(16, 9, 'ARCTIC Freezer 7 X', 'arctic Freezer 7 X', 'Тип: активен охладител ||\r\nВентилатор за: Процесор ', 'Тип: активен охладител ||\r\nВентилатор за: Процесор ||\r\nДиаметър на вентилатора: 92 мм ||\r\nОбороти на вентилатора: 2000 об/мин ||\r\nМаксимално ниво на шум: 23.5 dB ||\r\nВъздушен поток: 53 CFM ||\r\nLED осветление: Не ||\r\nРазмери: 133 x 111 x 74 мм ||\r\nТегло: 425 г', 25, 29, '1680615736.jpg', 5, 0, 0, 'ARCTIC Freezer 7 X', 'cooler, охладител, arctic', 'Тип: активен охладител ||\r\nВентилатор за: Процесор ||\r\nДиаметър на вентилатора: 92 мм ||\r\nОбороти на вентилатора: 2000 об/мин ||\r\nМаксимално ниво на шум: 23.5 dB ||\r\nВъздушен поток: 53 CFM ||\r\nLED осветление: Не ||\r\nРазмери: 133 x 111 x 74 мм ||\r\nТегло: 425 г', '2023-04-04 13:40:45'),
(17, 12, 'ARCTIC P12 Max 120mm', 'arctic P12 Max 120mm', 'Диаметър на вентилатора: 120 мм', 'Вентилатор за: Кутия ||\r\nДиаметър на вентилатора: 120 мм ||\r\nОбороти на вентилатора: 200 об/мин ||\r\nМаксимално ниво на шум: 0.6 dB ||\r\nВъздушен поток: 137.69 CFM ||\r\nРазмери: 120 x 120 x 25 мм ||\r\nТегло: 215 г', 12, 17, '1680616034.jpg', 20, 0, 1, 'ARCTIC P12 Max 120mm', 'arctic, fan, вентилатор', 'Вентилатор за: Кутия\r\nДиаметър на вентилатора: 120 мм\r\nОбороти на вентилатора: 200 об/мин\r\nМаксимално ниво на шум: 0.6 dB\r\nВъздушен поток: 137.69 CFM\r\nРазмери: 120 x 120 x 25 мм\r\nТегло: 215 г', '2023-04-04 13:47:14'),
(18, 12, 'ARCTIC BioniX P120 PWM PST', 'arctic BioniX P120 PWM PST', 'Диаметър на вентилатора: 120 мм', 'Вентилатор за: Кутия ||\r\nДиаметър на вентилатора: 120 мм ||\r\nОбороти на вентилатора: 2100 об/мин ||\r\nМаксимално ниво на шум: 25 dB ||\r\nВъздушен поток: 67.56 CFM ||\r\nРазмери: 120 x 120 x 27 мм ||\r\nТегло: 140 г', 15, 17, '1680616807.jpg', 12, 0, 0, 'ARCTIC BioniX P120 PWM PST', 'fan, arctic, вентилатори', 'Вентилатор за: Кутия ||\r\nДиаметър на вентилатора: 120 мм ||\r\nОбороти на вентилатора: 2100 об/мин ||\r\nМаксимално ниво на шум: 25 dB ||\r\nВъздушен поток: 67.56 CFM ||\r\nРазмери: 120 x 120 x 27 мм ||\r\nТегло: 140 г', '2023-04-04 13:57:57'),
(19, 12, 'Deepcool CF120 Plus A-RGB 3x120mm 3-pack', 'deepcool CF120 Plus A-RGB 3x120mm 3-pack', 'Диаметър на вентилатора: 120 мм', 'Тип: активен охладител ||\r\nВентилатор за: Кутия ||\r\nДиаметър на вентилатора: 120 мм ||\r\nОбороти на вентилатора: 1800 об/мин ||\r\nМаксимално ниво на шум: 28.8 dB ||\r\nВъздушен поток: 52.5 CFM ||\r\nLED осветление: Да ||\r\nРазмери: 120 x 120 x 26.5 мм ||\r\nТегло: 675 г', 74, 80, '1680617056.jpg', 3, 0, 0, 'Deepcool CF120 Plus A-RGB 3x120mm 3-pack', 'deepcool, fan, вентилатор', 'Тип: активен охладител ||\r\nВентилатор за: Кутия ||\r\nДиаметър на вентилатора: 120 мм ||\r\nОбороти на вентилатора: 1800 об/мин ||\r\nМаксимално ниво на шум: 28.8 dB ||\r\nВъздушен поток: 52.5 CFM ||\r\nLED осветление: Да ||\r\nРазмери: 120 x 120 x 26.5 мм ||\r\nТегло: 675 г', '2023-04-04 14:04:16'),
(20, 12, 'Fractal Design Aspect 12 RGB PWM 3-Pack', 'fractal Design Aspect 12 RGB PWM 3-Pack', 'Диаметър на вентилатора: 120 мм', 'Тип: активен охладител ||\r\nВентилатор за: Кутия ||\r\nДиаметър на вентилатора: 120 мм ||\r\nОбороти на вентилатора: 2000 об/мин ||\r\nМаксимално ниво на шум: 18.3 dB ||\r\nВъздушен поток: 56 CFM ||\r\nLED осветление: Да ||\r\nРазмери: 120 x 120 x 25 мм ||\r\nТегло: 135 г', 63, 70, '1680617323.jpg', 2, 0, 0, 'Fractal Design Aspect 12 RGB PWM 3-Pack', 'fan, fractal design, вентилатор', 'Тип: активен охладител ||\r\nВентилатор за: Кутия ||\r\nДиаметър на вентилатора: 120 мм ||\r\nОбороти на вентилатора: 2000 об/мин ||\r\nМаксимално ниво на шум: 18.3 dB ||\r\nВъздушен поток: 56 CFM ||\r\nLED осветление: Да ||\r\nРазмери: 120 x 120 x 25 мм ||\r\nТегло: 135 г', '2023-04-04 14:08:43'),
(21, 8, 'Seasonic FOCUS PLUS 850W Gold', 'seasonic FOCUS PLUS 850W Gold', 'Модулно захранване || 850 W', 'Тип захранване: Модулно захранване ||\r\nМощност на захранването: 850 W ||\r\nЕфективност: 80+ Gold ||\r\nPFC защита: Активна ||\r\nРазмер на вентилатора: 120 мм ||\r\nМаксимална консумация на ток: +3,3V, 20 A ||\r\nМаксимална консумация на ток: +5V, 20 A ||\r\nМаксимална консумация на ток: +12V1, 70 A ||\r\nМаксимална консумация на ток: -12V, 0.3 A ||\r\nБутон за включване: Да ||\r\nПревключвател за 110V: Не ||\r\nИзводи:\r\nFDD захранване: 1 ||\r\nHDD захранване: 5 ||\r\nSATA захранване: 10 ||\r\nPCI-Express захранване: 6', 250, 260, '1680867519.jpg', 2, 0, 0, 'Seasonic FOCUS PLUS 850W Gold', 'seasonic, PSU, захранване, 850w', 'Тип захранване: Модулно захранване ||\r\nМощност на захранването: 850 W ||\r\nЕфективност: 80+ Gold ||\r\nPFC защита: Активна ||\r\nРазмер на вентилатора: 120 мм ||\r\nМаксимална консумация на ток: +3,3V, 20 A ||\r\nМаксимална консумация на ток: +5V, 20 A ||\r\nМаксимална консумация на ток: +12V1, 70 A ||\r\nМаксимална консумация на ток: -12V, 0.3 A ||\r\nБутон за включване: Да ||\r\nПревключвател за 110V: Не ||\r\nИзводи:\r\nFDD захранване: 1 ||\r\nHDD захранване: 5 ||\r\nSATA захранване: 10 ||\r\nPCI-Express захранване: 6', '2023-04-07 11:38:39'),
(22, 8, 'Seasonic G12 GC 550W 80 Plus Gold', 'seasonic G12 GC 550W 80 Plus Gold', 'Немодулно захранване || 550 W', 'Тип захранване: Немодулно захранване ||\r\nМощност на захранването: 550 W ||\r\nЕфективност: 80+ Gold ||\r\nPFC защита: Активна ||\r\nРазмер на вентилатора: 120 мм ||\r\nМаксимална консумация на ток: +3,3V, 15 A ||\r\nМаксимална консумация на ток: +5V, 15 A ||\r\nМаксимална консумация на ток: -12V, 0.3 A ||\r\nБутон за включване: Да ||\r\nПревключвател за 110V: Не ||\r\nИзводи:\r\nHDD захранване: 3 ||\r\nSATA захранване: 3 ||\r\nPCI-Express захранване: 4', 110, 132, '1680867883.jpg', 4, 0, 0, 'Seasonic G12 GC 550W 80 Plus Gold', 'PSU, захранване, 550w, seasonic', 'Тип захранване: Немодулно захранване ||\r\nМощност на захранването: 550 W ||\r\nЕфективност: 80+ Gold ||\r\nPFC защита: Активна ||\r\nРазмер на вентилатора: 120 мм ||\r\nМаксимална консумация на ток: +3,3V, 15 A ||\r\nМаксимална консумация на ток: +5V, 15 A ||\r\nМаксимална консумация на ток: -12V, 0.3 A ||\r\nБутон за включване: Да ||\r\nПревключвател за 110V: Не ||\r\nИзводи:\r\nHDD захранване: 3 ||\r\nSATA захранване: 3 ||\r\nPCI-Express захранване: 4', '2023-04-07 11:44:43'),
(23, 8, 'EVGA SuperNOVA 1000 GQ 1000W Gold', 'evga SuperNOVA 1000 GQ 1000W Gold', 'Полу-модулно захранване || 1000 W', 'Тип захранване: Полу-модулно захранване ||\r\nМощност на захранването: 1000 W ||\r\nЕфективност: 80+ Gold ||\r\nPFC защита: Активна ||\r\nРазмер на вентилатора: 135 мм ||\r\nМаксимална консумация на ток: +3,3V, 24 A ||\r\nМаксимална консумация на ток: +5V, 24 A ||\r\nМаксимална консумация на ток: -12V, 0.5 A ||\r\nБутон за включване: Да ||\r\nПревключвател за 110V: Не ||\r\nИзводи:\r\nFDD захранване: 2 ||\r\nHDD захранване: 3 ||\r\nSATA захранване: 12 ||\r\nPCI-Express захранване: 10', 320, 331, '1680868353.jpg', 2, 0, 0, 'EVGA SuperNOVA 1000 GQ 1000W Gold', 'evga, 1000w, PSU, захранване', 'Тип захранване: Полу-модулно захранване ||\r\nМощност на захранването: 1000 W ||\r\nЕфективност: 80+ Gold ||\r\nPFC защита: Активна ||\r\nРазмер на вентилатора: 135 мм ||\r\nМаксимална консумация на ток: +3,3V, 24 A ||\r\nМаксимална консумация на ток: +5V, 24 A ||\r\nМаксимална консумация на ток: -12V, 0.5 A ||\r\nБутон за включване: Да ||\r\nПревключвател за 110V: Не ||\r\nИзводи:\r\nFDD захранване: 2 ||\r\nHDD захранване: 3 ||\r\nSATA захранване: 12 ||\r\nPCI-Express захранване: 10', '2023-04-07 11:52:33'),
(24, 8, 'Corsair HX1200 1200W Platinum', 'corsair HX1200 1200W Platinum', 'Модулно захранване || 1200 W', 'Тип захранване: Модулно захранване ||\r\nМощност на захранването: 1200 W ||\r\nЕфективност: 80+ Platinum ||\r\nPFC защита: Активна ||\r\nРазмер на вентилатора: 140 мм ||\r\nМаксимална консумация на ток: +3,3V, 30 A ||\r\nМаксимална консумация на ток: +5V, 30 A ||\r\nМаксимална консумация на ток: +12V1, 40 A ||\r\nМаксимална консумация на ток: -12V, 0.8 A ||\r\nБутон за включване: Да ||\r\nПревключвател за 110V: Не ||\r\nИзводи:\r\nFDD захранване: 1 ||\r\nHDD захранване: 12 ||\r\nSATA захранване: 12 ||\r\nPCI-Express захранване: 8', 430, 460, '1680868709.jpg', 1, 0, 0, 'Corsair HX1200 1200W Platinum', 'psu, 1200w, захранване, corsair', 'Тип захранване: Модулно захранване ||\r\nМощност на захранването: 1200 W ||\r\nЕфективност: 80+ Platinum ||\r\nPFC защита: Активна ||\r\nРазмер на вентилатора: 140 мм ||\r\nМаксимална консумация на ток: +3,3V, 30 A ||\r\nМаксимална консумация на ток: +5V, 30 A ||\r\nМаксимална консумация на ток: +12V1, 40 A ||\r\nМаксимална консумация на ток: -12V, 0.8 A ||\r\nБутон за включване: Да ||\r\nПревключвател за 110V: Не ||\r\nИзводи:\r\nFDD захранване: 1 ||\r\nHDD захранване: 12 ||\r\nSATA захранване: 12 ||\r\nPCI-Express захранване: 8', '2023-04-07 11:58:29'),
(25, 5, 'AMD Ryzen 7 5800X3D', 'amd Ryzen 7 5800X3D', '8 ядра || 16 нишки', 'Процесор тип: AMD Ryzen 7 ||\r\nБрой ядра: 8 ядра ||\r\nБрой нишки: 16 ||\r\nЦокъл на процесора: AMD Socket AM4 ||\r\nТактова честота на процесора: 3400 MHz ||\r\nПроцесорна Турбо тактова честота: 4500 MHz ||\r\nТехнология на производство: 7 nm ||\r\nИнтегриран графичен процесор: Няма ||\r\nL2 cache памет: 4 MB ||\r\nL3 cache памет: 96 MB ||\r\nTDP: 105 W', 630, 630, '1680870317.jpg', 7, 0, 1, 'AMD Ryzen 7 5800X3D', 'amd, ryzen 7, 5800x3d, cpu, процесор', 'Процесор тип: AMD Ryzen 7 ||\r\nБрой ядра: 8 ядра ||\r\nБрой нишки: 16 ||\r\nЦокъл на процесора: AMD Socket AM4 ||\r\nТактова честота на процесора: 3400 MHz ||\r\nПроцесорна Турбо тактова честота: 4500 MHz ||\r\nТехнология на производство: 7 nm ||\r\nИнтегриран графичен процесор: Няма ||\r\nL2 cache памет: 4 MB ||\r\nL3 cache памет: 96 MB ||\r\nTDP: 105 W', '2023-04-07 12:25:17'),
(26, 5, 'Intel i5-12400F', 'intel i5-12400F', '6 ядра || 12 нишки', 'Процесор тип: Intel Core i5 ||\r\nБрой ядра: 6 ядра ||\r\nБрой нишки: 12 ||\r\nЦокъл на процесора: Intel Socket 1700 ||\r\nТактова честота на процесора: 2500 MHz ||\r\nПроцесорна Турбо тактова честота: 4400 MHz ||\r\nТехнология на производство: 10 nm ||\r\nИнтегриран графичен процесор: Няма ||\r\nL2 cache памет: 7.5 MB ||\r\nL3 cache памет: 18 MB ||\r\nTDP: 65 W', 290, 290, '1680870646.jpg', 8, 0, 1, 'Intel i5-12400F', 'intel, cpu, процесор, 12400f, i5', 'Процесор тип: Intel Core i5 ||\r\nБрой ядра: 6 ядра ||\r\nБрой нишки: 12 ||\r\nЦокъл на процесора: Intel Socket 1700 ||\r\nТактова честота на процесора: 2500 MHz ||\r\nПроцесорна Турбо тактова честота: 4400 MHz ||\r\nТехнология на производство: 10 nm ||\r\nИнтегриран графичен процесор: Няма ||\r\nL2 cache памет: 7.5 MB ||\r\nL3 cache памет: 18 MB ||\r\nTDP: 65 W', '2023-04-07 12:30:46'),
(27, 5, 'Intel Core i7-13700K', 'intel Core i7-13700K', '16 ядра || 24 нишки', 'Процесор тип: Intel Core i7 ||\r\nБрой ядра: 16 ядра ||\r\nБрой нишки: 24 ||\r\nЦокъл на процесора: Intel Socket 1700 ||\r\nТактова честота на процесора: 2500 MHz ||\r\nПроцесорна Турбо тактова честота: 5400 MHz ||\r\nТехнология на производство: 10 nm ||\r\nИнтегриран графичен процесор: Intel UHD Graphics 770 ||\r\nL2 cache памет: 24 MB ||\r\nL3 cache памет: 30 MB ||\r\nTDP: 125 W', 840, 840, '1680871005.jpg', 5, 0, 0, 'Intel Core i7-13700K', 'intel, i7, cpu, процесор, 13700K', 'Процесор тип: Intel Core i7 ||\r\nБрой ядра: 16 ядра ||\r\nБрой нишки: 24 ||\r\nЦокъл на процесора: Intel Socket 1700 ||\r\nТактова честота на процесора: 2500 MHz ||\r\nПроцесорна Турбо тактова честота: 5400 MHz ||\r\nТехнология на производство: 10 nm ||\r\nИнтегриран графичен процесор: Intel UHD Graphics 770 ||\r\nL2 cache памет: 24 MB ||\r\nL3 cache памет: 30 MB ||\r\nTDP: 125 W', '2023-04-07 12:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role_as`, `created_at`) VALUES
(1, 'Voidexe', 'voidexe@gmail.com', 11112222, 'qwerasdfzxcv', 1, '2022-12-04 16:22:06'),
(2, 'user', 'user@gmail.com', 123123, '1234', 0, '2022-12-04 16:25:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
