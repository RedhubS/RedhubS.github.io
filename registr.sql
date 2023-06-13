-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 13 2023 г., 19:59
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `registr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `mened`
--

CREATE TABLE `mened` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `mened`
--

INSERT INTO `mened` (`id`, `login`, `password`) VALUES
(1, 'maxim', 'pass123');

-- --------------------------------------------------------

--
-- Структура таблицы `svazac`
--

CREATE TABLE `svazac` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `emails` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `telefon` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `soob` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `svazac`
--

INSERT INTO `svazac` (`id`, `name`, `emails`, `telefon`, `soob`) VALUES
(1, 'Maxim', '123@mail.ru', '89999999999', 'Что-то важное тут написано.'),
(2, 'LEONTIY', 'leon@Mail.ru ', '88957423154', 'Запрос о возможном сотрудничестве.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tel` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `tel`) VALUES
(1, '123123123', 'b3146d909172fd444c9ab39e43dc409e', '222222', '2222222'),
(2, 'Maxim', 'fbf39ccdea1124b5e6a1c96623137c47', '123@mail.ru', '899999999'),
(3, '123456', 'f52364e9cb2c62d9f329ce26345b3c1e', '12315@mail.ru', '89654213541'),
(4, 'password12345', 'f3f3dbd105bc6c7c1e6f6c343ec741d5', 'pass@mail.ru', '86452135462'),
(5, 'LEONTIY', 'f52364e9cb2c62d9f329ce26345b3c1e', 'leon@Mail.ru', '88957423154'),
(6, 'poiuszx', '21381d9f1a7717a0f2b3e17dcbfcc3a5', 'pois@mail.ru', '89562315478');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `mened`
--
ALTER TABLE `mened`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `svazac`
--
ALTER TABLE `svazac`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `mened`
--
ALTER TABLE `mened`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `svazac`
--
ALTER TABLE `svazac`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
