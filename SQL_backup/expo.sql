-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 18 2020 г., 00:58
-- Версия сервера: 5.7.31-0ubuntu0.16.04.1
-- Версия PHP: 7.0.33-0ubuntu0.16.04.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `expo`
--
CREATE DATABASE IF NOT EXISTS `expo` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `expo`;

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` smallint(6) NOT NULL,
  `access` tinyint(4) NOT NULL,
  `login` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `password` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `salt` tinytext COLLATE utf8_unicode_ci,
  `email` tinytext COLLATE utf8_unicode_ci,
  `phonenumber` tinytext COLLATE utf8_unicode_ci,
  `name` tinytext COLLATE utf8_unicode_ci,
  `surname` tinytext COLLATE utf8_unicode_ci,
  `middlename` tinytext COLLATE utf8_unicode_ci,
  `position` tinytext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `access`, `login`, `password`, `salt`, `email`, `phonenumber`, `name`, `surname`, `middlename`, `position`) VALUES
(1, 0, 'admin', 'qazzaq87', NULL, 'aapetra@yandex.ru', '+7(968)123-45-67', 'Алексей', 'Петраков', NULL, 'Администратор'),
(2, 1, 'director', '123456', NULL, 'director@company.ru', '+7(999)987-76-54', 'Иван', 'Иванов', NULL, 'Директор'),
(3, 2, 'manager', '123456', NULL, 'manager@company.ru', '+7(999)987-76-35', 'Петр', 'Сидоров', NULL, 'Менеджер'),
(4, 3, 'viewer', '123456', NULL, 'viewer@company.ru', '+7(999)987-76-98', 'Антон', 'Петров', NULL, 'Наблюдатель');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
