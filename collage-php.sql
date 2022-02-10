-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 10 2022 г., 10:40
-- Версия сервера: 5.5.62
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `collage-php`
--

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `idPost` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`idPost`, `title`, `text`, `image`) VALUES
(1, 'Post 1', 'Текст-заполнитель — это текст, который имеет некоторые характеристики реального письменного текста, но является случайным набором слов или сгенерирован иным образом. Его можно использовать для отображения образца шрифтов, создания текста для тестирования или обхода спам-фильтра.', 'image/post1.png'),
(2, 'Post 2', 'Текст-заполнитель — это текст, который имеет некоторые характеристики реального письменного текста, но является случайным набором слов или сгенерирован иным образом. Его можно использовать для отображения образца шрифтов, создания текста для тестирования или обхода спам-фильтра.', 'image/post2.png'),
(3, 'Post 3', 'Текст-заполнитель — это текст, который имеет некоторые характеристики реального письменного текста, но является случайным набором слов или сгенерирован иным образом. Его можно использовать для отображения образца шрифтов, создания текста для тестирования или обхода спам-фильтра.', 'image/post3.png'),
(4, 'rodion', 'sdfasdfasdf', 'image/Screenshot_7.png');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `idUser` int(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `last-name` varchar(150) NOT NULL,
  `login` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`idUser`, `name`, `last-name`, `login`, `password`) VALUES
(1, '', '', '', ''),
(2, 'Rodion', 'Tiunov', 'gmailsdf@sdf.df', 'sdfasdfsaf');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idPost`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `idPost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
