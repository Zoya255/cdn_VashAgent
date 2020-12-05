-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 05 2020 г., 10:34
-- Версия сервера: 5.7.27-30
-- Версия PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u1212385_vashagent_easyspydb`
--
CREATE DATABASE IF NOT EXISTS `u1212385_vashagent_easyspydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `u1212385_vashagent_easyspydb`;

-- --------------------------------------------------------

--
-- Структура таблицы `clicks`
--
-- Создание: Дек 03 2020 г., 01:22
-- Последнее обновление: Дек 05 2020 г., 07:28
--

CREATE TABLE `clicks` (
  `id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `url` varchar(100) NOT NULL,
  `click_x` int(11) NOT NULL,
  `click_y` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `ips`
--
-- Создание: Дек 03 2020 г., 04:52
-- Последнее обновление: Дек 05 2020 г., 00:11
--

CREATE TABLE `ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `country` varchar(20) NOT NULL,
  `country_iso_code` char(2) NOT NULL,
  `region` varchar(100) NOT NULL,
  `region_type_full` varchar(20) NOT NULL,
  `region_iso_code` char(2) NOT NULL,
  `city` varchar(100) NOT NULL,
  `city_type_full` varchar(20) NOT NULL,
  `geo_lat` decimal(11,7) NOT NULL,
  `geo_lon` decimal(11,7) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--
-- Создание: Дек 03 2020 г., 01:23
-- Последнее обновление: Дек 05 2020 г., 07:29
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `real_ip` varchar(15) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `browser_family` varchar(30) DEFAULT NULL,
  `browser_name` varchar(35) DEFAULT NULL,
  `browser_version` int(11) DEFAULT NULL,
  `device_type` varchar(50) DEFAULT NULL,
  `device_family` varchar(50) DEFAULT NULL,
  `device_name` varchar(50) DEFAULT NULL,
  `device_manufacturer` varchar(50) DEFAULT NULL,
  `os_family` varchar(30) DEFAULT NULL,
  `os_name` varchar(30) DEFAULT NULL,
  `os_version` int(11) DEFAULT NULL,
  `os_platform` varchar(20) DEFAULT NULL,
  `screen_width` int(11) DEFAULT NULL,
  `screen_height` int(11) DEFAULT NULL,
  `screen_depth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clicks`
--
ALTER TABLE `clicks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ips`
--
ALTER TABLE `ips`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clicks`
--
ALTER TABLE `clicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ips`
--
ALTER TABLE `ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
