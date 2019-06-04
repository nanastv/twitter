-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 04 2019 г., 02:59
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nanastv`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actual`
--

CREATE TABLE `actual` (
  `title` varchar(355) NOT NULL,
  `linkk` varchar(355) NOT NULL,
  `tweet` int(10) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `actual`
--

INSERT INTO `actual` (`title`, `linkk`, `tweet`, `id`) VALUES
('Zumba', '#', 10002, 1),
('Book', '#', 9005, 2),
('#BlizzCon', '#', 7058, 3),
('RT', '#', 6666, 4),
('Cartoons', '#', 97845, 5),
('Japan', '#', 4567, 6),
('#BL', '#', 3654, 7),
('Love', '#', 424, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `autors`
--

CREATE TABLE `autors` (
  `name` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `autors`
--

INSERT INTO `autors` (`name`, `id`) VALUES
('Пушкин', 1),
('Грибоедов', 2),
('Булгаков', 3),
('Гоголь', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `title` varchar(355) NOT NULL,
  `id` int(10) NOT NULL,
  `autor_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`title`, `id`, `autor_id`) VALUES
('Капитанская дочка', 1, 1),
('Мёртвые души', 2, 4),
('Мастер и Маргарита', 3, 3),
('Горе от ума', 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `restorans_idre` int(10) NOT NULL,
  `link` varchar(355) NOT NULL,
  `id_img` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`restorans_idre`, `link`, `id_img`) VALUES
(6, 'images/knp1.png', 1),
(6, 'images/knp2.png', 2),
(8, 'images/shoff1.png', 5),
(10, 'images/mr1.png', 6),
(1, 'images/mg.png', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `inst`
--

CREATE TABLE `inst` (
  `email` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `login` varchar(355) NOT NULL,
  `pass` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `inst`
--

INSERT INTO `inst` (`email`, `name`, `login`, `pass`, `id`) VALUES
('868nos@gmail.com', 'Nastya', 'nanastv', '123', 1),
('868nos@gmail.com', 'Lilo', 'QWE', '1234', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `id` int(10) NOT NULL,
  `restorans_idre` int(10) NOT NULL,
  `users_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`id`, `restorans_idre`, `users_id`) VALUES
(4, 3, 1),
(5, 6, 10),
(7, 0, 9),
(12, 6, 11),
(14, 6, 12),
(15, 8, 12),
(16, 6, 8),
(17, 8, 8),
(18, 1, 13),
(19, 6, 14),
(20, 10, 15),
(21, 6, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `music`
--

CREATE TABLE `music` (
  `title` varchar(355) NOT NULL,
  `id` int(10) NOT NULL,
  `people_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `music`
--

INSERT INTO `music` (`title`, `id`, `people_id`) VALUES
('2PAC', 1, 3),
('Нюша', 2, 2),
('M.I.A.', 3, 1),
('Скриптонит', 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `people`
--

CREATE TABLE `people` (
  `name` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `people`
--

INSERT INTO `people` (`name`, `id`) VALUES
('Иван', 1),
('Соня', 2),
('Вова', 3),
('Жора', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(10) NOT NULL,
  `title` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `logo` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `text`, `logo`, `img`) VALUES
(1, 'Habr ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum assumenda ullam voluptates magnam mollitia quidem quos fugiat, earum voluptate illum itaque.\r\n		 	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, sequi facilis sed rerum veniam reiciendis.', 'images/post1.jpg', 'images/habr.jpg'),
(2, 'Hi-tech @dada', 'Каждый веб-разработчик знает, что такое текст-«рыба». Текст этот, несмотря на название, не имеет никакого отношения к обитателям водоемов. Используется он веб-дизайнерами для вставки на интернет-страницы и демонстрации внешнего вида контента, просмотра шрифтов, абзацев, отступов и т.д. Так как цель применения такого текста исключительно демонстрационная', 'images/post2.png', 'images/vesti_hi_tech.jpg'),
(20, 'Mary Smith @Maryss', 'sdfasdf', 'images/avatar.jpg', 'images/avatar.jpg'),
(21, 'Mary Smith @Maryss', 'рп', 'images/avatar.jpg', 'images/avatar.jpg'),
(23, 'Mary Smith @Maryss', 'text', 'images/avatar.jpg', 'images/avatar.jpg'),
(24, 'Mary Smith @Maryss', 'opopoop', 'images/avatar.jpg', 'images/avatar.jpg'),
(0, 'Mary Smith @Maryss', 'fgfgfg', 'images/avatar.jpg', 'images/avatar.jpg'),
(0, 'Mary Smith @Maryss', 'fgfgfg', 'images/avatar.jpg', 'images/avatar.jpg'),
(0, 'Mary Smith @Maryss', 'fgfg', 'images/avatar.jpg', 'images/avatar.jpg'),
(0, 'Mary Smith @Maryss', 'fgfg', 'images/avatar.jpg', 'images/avatar.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `headline` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL,
  `id` int(10) NOT NULL,
  `inst_id` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`headline`, `text`, `img`, `id`, `inst_id`) VALUES
('Post', 'da', 'img/avatar.jpg', 8, '1'),
('Post111', 'Q', 'img/277-2955ca912aba0f03916cf19c9f2ebf11.png', 9, '4'),
('New', 'As', 'img/like.png', 10, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `gender` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `brand` varchar(355) NOT NULL,
  `size` int(10) NOT NULL,
  `category` varchar(355) NOT NULL,
  `subcategory` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `gender`, `name`, `brand`, `size`, `category`, `subcategory`, `img`, `price`) VALUES
(1, 'мужской', 'ботинки ecco кожаные', 'ecco', 42, 'обувь', 'ботинки', 'images/1.jpg', 5000),
(2, 'мужской', 'кроссовки nike белые', 'nike', 44, 'обувь', 'кроссовки', 'images/2.jpg', 3500),
(3, 'мужской', 'джинсовая рубашка wrangler', 'wrangler', 48, 'джинсовая одежда', 'рубашки', 'images/3.jpg', 2000),
(4, 'мужской', 'красная рубашка в клетку wrangler', 'wrangler', 50, 'рубашки', 'рубашки', 'images/4.jpg', 3100),
(5, 'мужской', 'классические брюки asos', 'asos', 46, 'брюки', 'брюки', 'images/6.jpg', 4000),
(6, 'мужской', 'джинсы levis', 'levis', 44, 'джинсовая одежда', 'джинсы', 'images/5.jpg', 6000),
(7, 'мужской', 'пуховая куртка', 'bask', 50, 'верхняя одежда', 'куртка', 'images/7.jpg', 28000),
(8, 'мужской', 'ветровка серая alpha industries', 'alpha industries', 44, 'верхняя одежда', 'ветровка', 'images/8.jpg', 10500),
(9, 'мужской', 'шапка вязаная nike', 'nike', 0, 'головные уборы', 'шапка', 'images/9.jpg', 900),
(10, 'мужской', 'кепка коричневая new era', 'new era', 0, 'головные уборы', 'кепка', 'images/10.jpg', 1500),
(11, 'мужской', 'штаны серые', 'noname', 52, 'брюки', 'брюки', 'images/11.jpg', 3000),
(12, 'женский', 'туфли голубые miu miu', 'miu miu', 36, 'обувь', 'туфли', 'images/12.jpg', 14000),
(13, 'женский', 'туфли женские без каблука mui mui', 'miu miu', 38, 'обувь', 'туфли без каблука', 'images/13.jpg', 9000),
(14, 'женский', 'ботинки без каблука коричневые michael kors', 'michael kors', 37, 'обувь', 'ботинки', 'images/14.jpg', 16000),
(15, 'женский', 'сапоги женские без каблука tods', 'tods', 40, 'обувь', 'сапоги', 'images/15.jpg', 17000),
(16, 'женский', 'платье женское prada', 'prada', 44, 'платья', 'платье летнее', 'images/16.jpg', 7500),
(17, 'женский', 'платье вязанное gucci', 'gucci', 46, 'платья', 'платье вечернее', 'images/17.jpg', 9000),
(18, 'женский', 'пальто женское alexanger wang', 'alexanger wang', 52, 'верхняя одежда', 'пальто', 'images/18.jpg', 16000),
(19, 'мужской', 'куртка джинсовая stussy', 'stussy', 50, 'джинсовая одежда', 'куртка', 'images/19.jpg', 5000),
(20, 'мужской', 'куртка the north face', 'the north face', 46, 'верхняя одежда', 'ветровка', 'images/20.jpg', 5500),
(21, 'женский', 'куртка кожаная asos', 'asos', 42, 'верхняя одежда', 'куртка', 'images/21.jpg', 11000);

-- --------------------------------------------------------

--
-- Структура таблицы `restorans`
--

CREATE TABLE `restorans` (
  `idre` int(10) NOT NULL,
  `text` varchar(355) NOT NULL,
  `headline` varchar(355) NOT NULL,
  `logores` varchar(355) NOT NULL,
  `adress` varchar(355) NOT NULL,
  `tel` varchar(355) NOT NULL,
  `site` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `restorans`
--

INSERT INTO `restorans` (`idre`, `text`, `headline`, `logores`, `adress`, `tel`, `site`) VALUES
(1, 'Семейный ресторан кавказской и авторской кухни в Якутске. График работы ресторана 12:00 до 02:00, 12:00 до 04 пт, сб.', 'Мама Гата', 'images/mglogo.png', '202-й микрорайон, 1а', '250-950', ''),
(6, 'Ресторан \"Квартира на проспекте\" Отличное место для приятного отдыха в уютной атмосфере, для деловых и романтических встреч, проведения досуга в кругу семьи или дружеских посиделок. Стилизованный под квартиру ресторан позволит по-настоящему отдохнуть от суеты рабочих будней.', 'Квартира на проспекте', 'images/knplogo.png', 'Ленина проспект 6/6', '8924-8-611-611', 'https://www.instagram.com/kvartira_na_prospekte/'),
(8, 'Гриль-бар с уютной атмосферой и демократичными ценами.', 'Shashlikoff', 'images/shofflogo.png', ' ул. Аммосова, 6а ', '240-009', 'shashlikoff.com'),
(10, 'Готовим бургеры из мраморного мяса.\r\nЛучшая бургерная России 2017.', 'МЯСОROOB ', 'images/mrlogo.png', 'Ойунского, 31/3', '8-800-500-83-93', 'boontar.live/go4408');

-- --------------------------------------------------------

--
-- Структура таблицы `schedule`
--

CREATE TABLE `schedule` (
  `time` varchar(355) NOT NULL,
  `id` int(10) NOT NULL,
  `students_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `schedule`
--

INSERT INTO `schedule` (`time`, `id`, `students_id`) VALUES
('pn_10', 1, 4),
('vt_11', 2, 3),
('sr_12', 3, 2),
('ch_13', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop`
--

CREATE TABLE `shop` (
  `name` varchar(355) NOT NULL,
  `price` varchar(355) NOT NULL,
  `linkk` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop`
--

INSERT INTO `shop` (`name`, `price`, `linkk`, `id`) VALUES
('КОЖАНЫЕ САПОГИ НА КАБЛУКЕ В КОВБОЙСКОМ СТИЛЕ', '8 999 ', 'images/ob1.jpg', 1),
('ПАЛЬТО С МЕТАЛЛИЧЕСКИМИ ПУГОВИЦАМИ', '12 599 ', 'images/ve1.jpg', 2),
('aa', 'aa', 'images/2.jpg', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `name` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`name`, `id`) VALUES
('Женя', 1),
('Егор', 2),
('Юра', 3),
('Слава', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `twee`
--

CREATE TABLE `twee` (
  `headline` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twee`
--

INSERT INTO `twee` (`headline`, `text`, `img`, `id`) VALUES
('12', '&#1091;&#1082;&#1091;&#1082;&#1091;&#1082;', 'images/1.jpg', 16),
('1', '2', 'images/icons8-notification-50.png', 23),
('  bvb', 'tr', 'images/gif.png', 24),
('q', 'trtttttt', 'images/post1.jpg', 25);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `login` varchar(355) NOT NULL,
  `pass` varchar(355) NOT NULL,
  `email` varchar(355) NOT NULL,
  `avatar` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `email`, `avatar`) VALUES
(6, 'Привет, хороший сайт', '1337', 'Email.net', ''),
(8, 'anna1', '123', 'annushkashop@gmail.com', ''),
(9, 'Da', '147', '868@da.com', ''),
(10, 'qwe1', '123', 'da@gmail.com', 'images/Chrysanthemum.jpg'),
(11, 'Gaga', 'ga', 'Ga', 'images/EBD9A2C6-103C-4829-8526-D8265FEB08DC.jpeg'),
(12, 'SAq', '123', 'dany.feliferov@gmail.com', 'images/Безымянный.png'),
(13, '90', '123', '90@gmail.com', ''),
(14, 'Anwir', '123', 'speslyjk2002@gmail.com', ''),
(15, 'lohlaptev', '12345', 'minelaunter@gmail.com', ''),
(16, 'qwerty', '123', '868nos@gmail.com', ''),
(17, 'Anwir', '123', 'speslyjk2002@gmail.com', ''),
(18, 'Anwir', '1234', 'speslyjk2002@gmail.com', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `autors`
--
ALTER TABLE `autors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_img`) USING BTREE;

--
-- Индексы таблицы `inst`
--
ALTER TABLE `inst`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `restorans`
--
ALTER TABLE `restorans`
  ADD PRIMARY KEY (`idre`);

--
-- Индексы таблицы `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twee`
--
ALTER TABLE `twee`
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
-- AUTO_INCREMENT для таблицы `autors`
--
ALTER TABLE `autors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id_img` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `inst`
--
ALTER TABLE `inst`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `music`
--
ALTER TABLE `music`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `restorans`
--
ALTER TABLE `restorans`
  MODIFY `idre` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `twee`
--
ALTER TABLE `twee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
