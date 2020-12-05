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
-- База данных: `u1212385_vashagent_orderdb`
--
CREATE DATABASE IF NOT EXISTS `u1212385_vashagent_orderdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `u1212385_vashagent_orderdb`;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--
-- Создание: Дек 01 2020 г., 09:08
-- Последнее обновление: Дек 05 2020 г., 06:06
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
