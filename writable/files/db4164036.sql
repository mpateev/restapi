-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 02:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db4164036`
--

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
CREATE TABLE `audits` (
  `id` int(9) NOT NULL,
  `source` varchar(63) NOT NULL,
  `source_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `event` varchar(31) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_description` text NOT NULL,
  `post_featured_image` varchar(255) NOT NULL,
  `post_created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `post_updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`post_id`, `post_title`, `post_description`, `post_featured_image`, `post_created_at`, `post_updated_at`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'http://placekitten.com/200/300', '2020-11-04 15:13:31', '2020-11-19 11:29:45'),
(2, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'http://placekitten.com/200/300', '2020-11-04 15:13:31', '2020-11-19 11:29:45'),
(3, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'http://placekitten.com/200/300', '2020-11-04 15:14:12', '2020-11-19 11:29:45'),
(4, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'http://placekitten.com/200/300', '2020-11-04 15:14:12', '2020-11-19 11:29:45'),
(7, 'Post with an image 23', 'This is a post with another image', 'murvik_2.jpg', '2020-11-19 13:18:54', '2020-11-19 13:18:54'),
(8, 'Post with an Erbes image', 'This is a post with another image', 'PateevMR.jpg', '2020-11-19 17:07:42', '2020-11-19 17:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
CREATE TABLE `downloads` (
  `id` int(9) NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `name` varchar(100) NOT NULL COMMENT 'Name',
  `email` varchar(255) NOT NULL COMMENT 'Email Address'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='datatable demo table';

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`) VALUES
(1, 'John Doe', 'john@gmail.com'),
(2, 'Vanya Hargreeves', 'vanya@gmail.com'),
(3, 'Luther Hargreeves', 'luther@gmail.com'),
(4, 'Diego Hargreeves', 'diego@gmail.com'),
(5, 'Klaus Hargreeves', 'klaus@gmail.com'),
(6, 'Ben Hargreeves', 'ben@gmail.com'),
(7, 'The Handler', 'handler@gmail.com'),
(8, 'Murad Pateev', 'mpateev@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(9) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `localname` varchar(255) NOT NULL,
  `clientname` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `files_users`
--

DROP TABLE IF EXISTS `files_users`;
CREATE TABLE `files_users` (
  `id` int(9) NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gariki`
--

DROP TABLE IF EXISTS `gariki`;
CREATE TABLE `gariki` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gariki`
--

INSERT INTO `gariki` (`id`, `title`, `slug`, `summary`, `body`, `created_at`) VALUES
(24, 'Решение', 'reshenie', 'Давай, Господь, решим согласно', '<p>Давай, Господь, решим согласно,&nbsp;<br />\r\nОпределив друг другу роль:&nbsp;<br />\r\nТы любишь грешников? Прекрасно.&nbsp;<br />\r\nА грешниц мне любить позволь.</p>\r\n', '2020-05-25 17:40:24'),
(26, 'Своевременно', 'svoevremenno', 'Все на свете своевременно', '<p>С неуклонностью упрямой&nbsp;<br />\r\nВсе на свете своевременно;&nbsp;<br />\r\nЧем невинней дружба с дамой,&nbsp;<br />\r\nтем быстрей она беременна.</p>\r\n', '2020-05-25 18:08:17'),
(30, 'Фаза души', 'faza-dushi', 'Я у дамы боюсь не отказа', '<p>Наступила в душе моей фаза&nbsp;<br />\r\nУпрощения жизненной драмы:&nbsp;<br />\r\nЯ у дамы боюсь не отказа,&nbsp;<br />\r\nА боюсь я согласия дамы.</p>\r\n', '2020-05-25 19:30:11'),
(31, 'Истины', 'istiny', 'Кто ищет истину, держись', '<p>Кто ищет истину, держись&nbsp;<br />\r\nУ парадокса на краю;&nbsp;<br />\r\nВот женщины: дают нам жизнь,&nbsp;<br />\r\nА после жить нам не дают.</p>\r\n', '2020-05-25 22:44:55'),
(32, 'Родник', 'rodnik', 'Я женских слов люблю родник', '<p>Я женских слов люблю родник&nbsp;<br />\r\nИ женских мыслей хороводы,&nbsp;<br />\r\nПоскольку мы умны от книг,&nbsp;<br />\r\nА бабы &mdash; прямо от природы.</p>\r\n', '2020-05-25 23:02:06'),
(36, 'На горбу', 'na-gorbu', 'На собственном горбу и на чужом', '<p>На собственном горбу и на чужом<br />\r\nя вынянчил понятие простое:<br />\r\nбессмысленно идти на танк с ножом,<br />\r\nно если очень хочется, то стоит.</p>\r\n', '2020-05-26 00:26:56'),
(37, 'Хоровод', 'horovod', 'В цветном разноголосом хороводе', '<p>В цветном разноголосом хороводе,<br />\r\nв мелькании различий и примет<br />\r\nесть люди, от которых свет исходит,<br />\r\nи люди, поглощающие свет.</p>\r\n', '2020-05-26 00:27:34'),
(38, 'Супруг', 'suprug', 'Отменной верности супруг', '<p>Отменной верности супруг,&nbsp;<br />\r\nУсердный брачных уз невольник-&nbsp;<br />\r\nТакой семейный чертит круг,&nbsp;<br />\r\nЧто бабе снится треугольник.</p>\r\n', '2020-05-26 00:28:12'),
(39, 'Одежда', 'odezhda', 'Бабы одеваются сейчас', '<p>Бабы одеваются сейчас,&nbsp;<br />\r\nПомня, что слыхали от подружек:&nbsp;<br />\r\nЦель наряда женщины &mdash; показ,&nbsp;<br />\r\nЧто и без него она не хуже.</p>\r\n', '2020-05-26 00:30:06'),
(40, 'Жаровня', 'zharovnya', 'Душой и телом охладев', '<p>Душой и телом охладев,&nbsp;<br />\r\nЯ погасил мою жаровню:&nbsp;<br />\r\nЕще смотрю на нежных дев,&nbsp;<br />\r\nА для чего &mdash; уже не помню.</p>\r\n', '2020-05-26 00:30:39'),
(41, 'Мрамор', 'mramor', 'Есть дамы: каменны, как мрамор', '<p>Есть дамы: каменны, как мрамор,&nbsp;<br />\r\nИ холодны, как зеркала,&nbsp;<br />\r\nНо чуть смягчившись, эти дамы&nbsp;<br />\r\nВ дальнейшем липнут, как смола.</p>\r\n', '2020-05-26 00:31:31'),
(42, 'Тишина', 'tishina', 'Был холост — снились одалиски', '<p>Был холост &mdash; снились одалиски,&nbsp;<br />\r\nВакханки, шлюхи, гейши, киски;&nbsp;<br />\r\nТеперь со мной живет жена,&nbsp;<br />\r\nА ночью снится тишина.</p>\r\n', '2020-05-26 00:32:14'),
(43, 'Зуб', 'zub', 'Вчера я бежал запломбировать зуб', '<p>Вчера я бежал запломбировать зуб,<br />\r\nи смех меня брал на бегу:<br />\r\nвсю жизнь я таскаю мой будущий труп<br />\r\nи рьяно его берегу.</p>\r\n', '2020-05-26 00:32:56'),
(44, 'В наш век', 'v-nash-vek', 'В наш век искусственного меха', '<p>В наш век искусственного меха<br />\r\nи нефтью пахнущей икры<br />\r\nнет ничего дороже смеха,<br />\r\nлюбви, печали и игры.</p>\r\n', '2020-05-26 00:33:52'),
(45, 'Презерватив', 'prezervativ', 'За радости любовных ощущений', 'За радости любовных ощущений<br />\r\nоднажды острой болью заплатив,<br />\r\nмы так боимся новых увлечений,<br />\r\nчто носим на душе презерватив.\r\n', '2020-05-26 00:34:28'),
(46, 'Надо делать', 'nado-delat', 'Жить, покоем дорожа', '<p>Жить, покоем дорожа, &mdash;<br />\r\nпресно, тускло, простоквашно;<br />\r\nчтоб душа была свежа,<br />\r\nнадо делать то, что страшно.</p>\r\n', '2020-05-26 00:35:48'),
(47, 'Оптимизм', 'optimizm', 'Вся наша склонность к оптимизму', '<p>Вся наша склонность к оптимизму -<br />\r\nот неспособности представить,<br />\r\nкакого рода завтра клизму<br />\r\nсудьба решила нам поставить.</p>\r\n', '2020-05-26 00:36:18'),
(48, 'Улыбнуться', 'ulybnutsya', 'Когда, глотая кровь и зубы', '<p>Когда, глотая кровь и зубы,<br />\r\nмне доведется покачнуться,<br />\r\nя вас прошу, глаза и губы,<br />\r\nне подвести и улыбнуться.</p>\r\n', '2020-05-26 12:45:11'),
(49, 'Личности', 'lichnosti', 'Есть личности — святая простота', '<p>Есть личности &mdash; святая простота<br />\r\nиграет их поступки, как по нотам,<br />\r\nнаивность &mdash; превосходная черта,<br />\r\nприсущая творцам и идиотам.</p>\r\n', '2020-05-26 12:45:45'),
(50, 'Рати', 'rati', 'Текут рекой за ратью рать', '<p>Текут рекой за ратью рать,<br />\r\nчтобы уткнуться в землю лицами;<br />\r\nкак это глупо &mdash; умирать<br />\r\nза чей-то гонор и амбиции.</p>\r\n', '2020-05-26 13:00:17'),
(51, 'Отношения', 'otnosheniya', 'Всего слабей усваивают люди', '<p>Всего слабей усваивают люди,<br />\r\nвзаимным обучаясь отношениям,<br />\r\nчто слишком залезать в чужие судьбы<br />\r\nвозможно лишь по личным приглашениям.</p>\r\n', '2020-05-26 13:18:21'),
(52, 'Непонятность', 'neponyatnost', 'Нам непонятность ненавистна', '<p>Нам непонятность ненавистна<br />\r\nв рулетке радостей и бед.<br />\r\nМы даже в смерти ищем смысла,<br />\r\nхотя его и в жизни нет.</p>\r\n', '2020-05-26 13:19:03'),
(53, 'Слоистость', 'sloistost', 'Слой человека в нас чуть-чуть', '<p>Слой человека в нас чуть-чуть<br />\r\nнаслоен зыбко и тревожно,<br />\r\nлегко в скотину нас вернуть,<br />\r\nподнять обратно очень сложно.</p>\r\n', '2020-05-26 13:19:45'),
(54, 'Гнида', 'gnida', 'Вся история нам говорит', '<p>Вся история нам говорит,<br />\r\nчто Господь неустанно творит:<br />\r\nкаждый год появляется гнида<br />\r\nнеизвестного ранее вида.</p>\r\n', '2020-05-26 13:20:37'),
(55, 'Дремучесть', 'dremuchest', 'Мы сохранили всю дремучесть', '<p>Мы сохранили всю дремучесть<br />\r\nбылых российских поколений,<br />\r\nно к ним прибавили пахучесть<br />\r\nсвоих духовных выделений.</p>\r\n', '2020-05-26 13:21:23'),
(56, 'Пятна', 'pyatna', 'Увы, но я не деликатен', '<p>Увы, но я не деликатен<br />\r\nи вечно с наглостью циничной<br />\r\nинтересуюсь формой пятен<br />\r\nна нимбах святости различной.</p>\r\n', '2020-05-26 13:22:46'),
(57, 'Воры', 'vory', 'Ворует власть, ворует челядь', '<p>Ворует власть, ворует челядь,<br />\r\nвор любит вора укорять;<br />\r\nв Россию можно смело верить,<br />\r\nно ей опасно доверять.</p>\r\n', '2020-05-26 13:24:27'),
(58, 'Зеркало', 'zerkalo', 'Поездил я по разным странам', '<p>Поездил я по разным странам,<br />\r\nпечаль моя, как мир, стара:<br />\r\nкакой подлец везде над краном<br />\r\nповесил зеркало с утра?</p>\r\n', '2020-05-26 13:25:42'),
(59, 'Мужик', 'muzhik', 'Мужик тугим узлом совьется', '<p>Мужик тугим узлом совьется,<br />\r\nно, если пламя в нем клокочет,<br />\r\nвсегда от женщины добьется<br />\r\nтого, что женщина захочет.</p>\r\n', '2020-05-26 13:26:15'),
(60, 'Брезгливость', 'brezglivost', 'Мне моя брезгливость дорога', '<p>Мне моя брезгливость дорога,<br />\r\nмной руководящая давно:<br />\r\nдаже чтобы плюнуть во врага,<br />\r\nя не набираю в рот говно.</p>\r\n', '2020-05-26 13:27:37'),
(61, 'Отчизна', 'otchizna', 'Живя в загадочной отчизне', '<p>Живя в загадочной отчизне<br />\r\nиз ночи в день десятки лет,<br />\r\nмы пьем за русский образ жизни,<br />\r\nгде образ есть, а жизни нет.</p>\r\n', '2020-05-26 13:28:18'),
(62, 'Возраст', 'vozrast', 'Любил я книги, выпивку и женщин', '<p>Любил я книги, выпивку и женщин<br />\r\nИ большего у бога не просил.<br />\r\nТеперь азарт мой возрастом уменьшен,<br />\r\nТеперь уже на книги нету сил.</p>\r\n', '2020-05-26 13:29:30'),
(63, 'Разгильдяи', 'razgildyai', 'За то люблю я разгильдяев', '<p>За то люблю я разгильдяев,<br />\r\nблаженных духом, как тюлень,<br />\r\nчто нет меж ними негодяев<br />\r\nи делать пакости им лень.</p>\r\n', '2020-05-26 13:30:00'),
(64, 'Вожди России', 'vozhdi-rossii', 'Вожди России свой народ', '<p>Вожди России свой народ<br />\r\nво имя чести и морали<br />\r\nопять зовут идти вперед,<br />\r\nа где перед, опять соврали.</p>\r\n', '2020-05-26 13:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2019-03-26-110032', 'Tatter\\Permits\\Database\\Migrations\\CreatePermitsTables', 'default', 'Tatter\\Permits', 1605778275, 1),
(2, '20190404090152', 'Tatter\\Audits\\Database\\Migrations\\Migration_create_table_audits', 'default', 'Tatter\\Audits', 1605778275, 1),
(3, '20190407221924', 'Tatter\\Settings\\Database\\Migrations\\Migration_create_table_settings', 'default', 'Tatter\\Settings', 1605778275, 1),
(4, '20190724212056', 'Tatter\\Files\\Database\\Migrations\\Migration_create_table_files', 'default', 'Tatter\\Files', 1605778275, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('017b057a97261af9d9bd8aeb4f1464ea5f44d01b', 'testclient', '2', '2020-11-19 05:13:53', 'app'),
('0cdf37911271b897b4d783c2020aaa861d24798b', 'a428284e-aae4-489d-a44f-9c6d15baf023', '2', '2020-11-19 06:03:15', 'app'),
('1838b8540900d2a0e31c819ded31f202ed270070', 'testclient', '2', '2020-11-19 09:22:00', 'app'),
('4ffe268710514338041a7b9660c1cb9e08173ee6', 'testclient', '2', '2020-11-19 08:04:18', 'app'),
('58036cc7f17b288af30122580803f1985dd62a50', 'testclient', 'mpateev', '2020-11-18 10:00:48', 'app'),
('72d903885d18b8013c275d5e48e586b13d772fa1', 'testclient', 'mpateev', '2020-11-18 07:07:04', 'app'),
('8a380418f2727b24c20f51e2d671269d9e18e2d3', 'a428284e-aae4-489d-a44f-9c6d15baf023', '2', '2020-11-19 05:15:20', 'app'),
('91da75dd810c2f75c39e7a76c556c6693f5c7b2e', 'testclient', '2', '2020-11-19 09:42:59', 'app'),
('ac03a7f28b1f11292a2927bb1a9e719c0fb21811', 'testclient', 'mpateev', '2020-11-18 10:27:53', 'app'),
('adbfaf32e452a15757b30c5cd662f29f9a0928d2', 'testclient', 'mpateev', '2020-11-18 07:19:56', 'app'),
('df40609a87cd56340fcb23f911506db94b3baea0', 'testclient', 'mpateev', '2020-11-18 08:59:01', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

DROP TABLE IF EXISTS `oauth_authorization_codes`;
CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_token` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grant_types` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('a428284e-aae4-489d-a44f-9c6d15baf023', 'ab8f29e1-b92e-4641-8172-21e56bc24436', NULL, 'password', 'app', NULL),
('testclient', 'testpass', NULL, 'password', 'app', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

DROP TABLE IF EXISTS `oauth_jwt`;
CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_key` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('07334131edaaf069f059635522a20b0cdc95b0fc', 'testclient', 'mpateev', '2020-12-02 09:00:48', 'app'),
('16323a17f40a7b6b2fa8ad0927f99ec15fb1dcc5', 'testclient', 'mpateev', '2020-12-02 06:07:04', 'app'),
('24fe64c09b7ef428f55503e295b27b5d3058073d', 'a428284e-aae4-489d-a44f-9c6d15baf023', '2', '2020-12-03 05:03:15', 'app'),
('3ab7a491bc402c6a06fc241fdd8ce2836be3355a', 'testclient', 'mpateev', '2020-12-02 06:19:56', 'app'),
('4753bf8175f49c1f1e1ae37a57dc55ed9f9bdded', 'a428284e-aae4-489d-a44f-9c6d15baf023', '2', '2020-12-03 04:15:20', 'app'),
('7f8c0e90b0ae1ad3aa1cb130c9116c0d919fff7d', 'testclient', 'mpateev', '2020-12-02 09:27:53', 'app'),
('856ff4fb46ece08a73a326abdfd46843659a5375', 'testclient', '2', '2020-12-03 07:04:18', 'app'),
('ab70f93379a5daaf34d36cb5712092aaa3ffac31', 'testclient', 'mpateev', '2020-12-02 07:59:01', 'app'),
('b5042fe2c7cae29ab8cac618d140e6333275d7a3', 'testclient', '2', '2020-12-03 04:13:53', 'app'),
('f001ecf88fdb6dc0a3ea809551483fa5a1d00b77', 'testclient', '2', '2020-12-03 08:22:00', 'app'),
('fe1d5ff5d185d672315508c4aba11b9725b904e2', 'testclient', '2', '2020-12-03 08:42:59', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

DROP TABLE IF EXISTS `oauth_scopes`;
CREATE TABLE `oauth_scopes` (
  `scope` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

DROP TABLE IF EXISTS `oauth_users`;
CREATE TABLE `oauth_users` (
  `username` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `scope` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_users`
--

INSERT INTO `oauth_users` (`username`, `password`, `first_name`, `last_name`, `email`, `email_verified`, `scope`) VALUES
('alexlancer', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Alex', 'Lancer', 'test@email.com', 1, 'app'),
('mpateev', '24d6097798d236e3ce0c8f27a332cae0ee6d87a0', 'Murad', 'Pateev', 'mpateev@gmail.com', 1, 'app');

-- --------------------------------------------------------

--
-- Table structure for table `permits`
--

DROP TABLE IF EXISTS `permits`;
CREATE TABLE `permits` (
  `id` int(9) NOT NULL,
  `name` varchar(63) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rtin_animals`
--

DROP TABLE IF EXISTS `rtin_animals`;
CREATE TABLE `rtin_animals` (
  `id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `female` tinyint(4) DEFAULT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `title` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine` tinyint(4) DEFAULT NULL,
  `chip_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chip_date` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rtin_animals`
--

INSERT INTO `rtin_animals` (`id`, `type`, `female`, `name`, `birth_date`, `title`, `summary`, `text`, `image`, `vaccine`, `chip_number`, `chip_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'Marsik', '1994-05-21', 'Ut excepteur do duis ex duis', 'Sunt incididunt elit laborum elit. Incididunt elit ut dolor proident Lorem sunt elit ad. Dolor excepteur velit dolore pariatur dolore eiusmod officia Lorem.', 'Sint tempor in duis do aliquip aliquip esse deserunt ea. Irure reprehenderit excepteur ipsum sunt irure irure commodo. Veniam minim labore consectetur elit amet eu eu nulla eiusmod. Sit ut enim magna velit. Consequat esse id pariatur nostrud incididunt nisi consequat culpa tempor non. Dolor minim ut consequat tempor ad dolor laboris excepteur culpa.', 'https://cataas.com/cat', NULL, '276210005220036', NULL, '2020-11-05 16:12:30', '2020-11-05 16:12:30', NULL),
(2, 1, NULL, 'Mischka', '2010-02-17', 'Quis fugiat amet', 'Sint tempor in duis do aliquip aliquip esse deserunt ea. Irure reprehenderit excepteur ipsum sunt irure irure commodo. Veniam minim labore consectetur elit amet eu eu nulla eiusmod.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque nulla atque similique, corrupti saepe deserunt illo a maiores dolorem nam odio sapiente maxime voluptatibus culpa temporibus aspernatur? Distinctio, illo voluptate!', 'https://cataas.com/cat?type=md', NULL, '276210002133569', NULL, '2020-11-05 16:12:30', '2020-11-05 16:12:30', NULL),
(3, 1, 1, 'Zlata', '2007-05-21', 'Eiusmod Lorem magna', 'Ullamco aute est aliqua deserunt. Commodo irure minim cupidatat reprehenderit ipsum sit deserunt. Sit ea commodo dolore qui mollit do aliqua pariatur.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias molestias recusandae omnis! Fugiat laboriosam sapiente sint delectus quaerat, reprehenderit id excepturi doloribus mollitia eum at tempora! Sequi voluptates non nulla, saepe ipsam possimus impedit doloremque iste beatae, libero adipisci sint?', 'https://cataas.com/cat?filter=sepia', NULL, '276210002196075', NULL, '2020-11-05 16:12:30', '2020-11-05 16:12:30', NULL),
(4, 2, 1, 'Glascha', '2008-02-21', 'Consequat deserunt anim.', 'Cupidatat sit minim ex non nostrud irure quis voluptate nostrud dolore pariatur. Id ipsum cupidatat ad velit veniam magna velit sunt elit. Ad do fugiat est velit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque nulla atque similique, corrupti saepe deserunt illo a maiores dolorem nam odio sapiente maxime voluptatibus culpa temporibus aspernatur? Distinctio, illo voluptate!', 'https://placedog.net/300', NULL, NULL, NULL, '2020-11-05 16:12:30', '2020-11-05 16:12:30', NULL),
(5, 1, 1, 'Marusja', '2007-05-21', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Asperiores, provident saepe. Qui beatae nisi quaerat repudiandae. Earum unde debitis, error nesciunt deleniti rerum soluta beatae praesentium alias? Omnis, aliquid blanditiis!', 'Cillum do quis eiusmod eu consequat. Nostrud nulla qui excepteur fugiat eiusmod anim ut mollit enim. Eu aliqua non cupidatat exercitation culpa do eu ut amet eiusmod commodo eu magna velit. Dolor voluptate labore ut cupidatat dolor laboris excepteur proident sunt culpa minim commodo. Labore proident fugiat officia Lorem ullamco voluptate ut est dolore eiusmod elit non enim do. Fugiat sit non mollit eiusmod quis minim tempor sint fugiat ullamco dolore occaecat nisi veniam.', 'https://placekitten.com/300/300', NULL, NULL, NULL, '2020-11-05 16:12:30', '2020-11-05 16:12:30', NULL),
(6, 2, NULL, 'Timoty', '2004-08-14', 'Est non qui totam ', 'Dolor labore consectetur anim enim. Elit excepteur cupidatat exercitation reprehenderit. Sint consequat voluptate ex ad non in excepteur do et. Duis culpa ut eu aliqua sunt sunt nostrud ullamco fugiat. Amet ipsum occaecat id officia reprehenderit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi, a dolores maiores ullam quisquam, iure voluptatum dicta fugiat assumenda et aut quos esse voluptatibus hic saepe. Quae, rem. A repellendus adipisci suscipit corrupti perspiciatis eos hic asperiores vel, autem molestiae optio, voluptate provident.', 'https://placedog.net/300/?random', NULL, NULL, NULL, '2020-11-05 16:12:30', '2020-11-05 16:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rtin_type`
--

DROP TABLE IF EXISTS `rtin_type`;
CREATE TABLE `rtin_type` (
  `id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `en` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `de` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ru` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rtin_type`
--

INSERT INTO `rtin_type` (`id`, `description`, `en`, `de`, `ru`) VALUES
('cat', 'Any cat', 'Cat', 'Katze', 'Кошка'),
('dog', 'Any dog breed', 'Dog', 'Hund', 'Собака');

-- --------------------------------------------------------

--
-- Table structure for table `rtin_vaccine`
--

DROP TABLE IF EXISTS `rtin_vaccine`;
CREATE TABLE `rtin_vaccine` (
  `id` int(11) NOT NULL,
  `vaccine_type` int(11) NOT NULL,
  `vaccine_date` date NOT NULL,
  `tier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rtin_vaccine`
--

INSERT INTO `rtin_vaccine` (`id`, `vaccine_type`, `vaccine_date`, `tier_id`) VALUES
(1, 2, '2018-11-10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `name` varchar(63) NOT NULL,
  `scope` varchar(15) NOT NULL,
  `content` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `scope`, `content`, `summary`, `protected`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'perPage', 'user', '10', 'Number of items to show per page', 1, '2020-11-19 03:32:31', '2020-11-19 03:32:31', NULL),
(2, 'filesFormat', 'user', 'cards', 'Display format for listing files', 0, '2020-11-19 03:32:31', '2020-11-19 03:32:31', NULL),
(3, 'filesSort', 'user', 'filename', 'Sort field for listing files', 0, '2020-11-19 03:32:31', '2020-11-19 03:32:31', NULL),
(4, 'filesOrder', 'user', 'asc', 'Sort order for listing files', 0, '2020-11-19 03:32:31', '2020-11-19 03:32:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings_users`
--

DROP TABLE IF EXISTS `settings_users`;
CREATE TABLE `settings_users` (
  `id` int(9) NOT NULL,
  `setting_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'app',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'Murad', 'Pateev', 'test@test.com', '$2y$10$XV9wv41j7T5TEIeqiDKCXOGIZhKoEm/0hs7/Gv2WRxySb0.nhaNhy', 'app', '2020-11-19 11:31:19', '2020-11-19 11:31:19'),
(2, 'Murad', 'Pateev', 'mpateev@gmail.com', '$2y$10$DMNK0uC9.olJAC32ZsOH1uXX2oQSObuL1s8igHbskO1Guvtj3P1J2', 'app', '2020-11-19 11:37:47', '2020-11-19 11:37:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `source_source_id_event` (`source`,`source_id`,`event`),
  ADD KEY `user_id_source_event` (`user_id`,`source`,`event`),
  ADD KEY `event_user_id_source_source_id` (`event`,`user_id`,`source`,`source_id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id_user_id` (`file_id`,`user_id`),
  ADD KEY `user_id_file_id` (`user_id`,`file_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filename` (`filename`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `files_users`
--
ALTER TABLE `files_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_id_user_id` (`file_id`,`user_id`),
  ADD UNIQUE KEY `user_id_file_id` (`user_id`,`file_id`);

--
-- Indexes for table `gariki`
--
ALTER TABLE `gariki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_scopes`
--
ALTER TABLE `oauth_scopes`
  ADD PRIMARY KEY (`scope`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `permits`
--
ALTER TABLE `permits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `user_id_name` (`user_id`,`name`),
  ADD KEY `group_id_name` (`group_id`,`name`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `rtin_animals`
--
ALTER TABLE `rtin_animals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chipNummer` (`chip_number`);

--
-- Indexes for table `rtin_type`
--
ALTER TABLE `rtin_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rtin_vaccine`
--
ALTER TABLE `rtin_vaccine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `settings_users`
--
ALTER TABLE `settings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_id_user_id` (`setting_id`,`user_id`),
  ADD KEY `user_id_setting_id` (`user_id`,`setting_id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_users`
--
ALTER TABLE `files_users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gariki`
--
ALTER TABLE `gariki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permits`
--
ALTER TABLE `permits`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rtin_animals`
--
ALTER TABLE `rtin_animals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rtin_vaccine`
--
ALTER TABLE `rtin_vaccine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings_users`
--
ALTER TABLE `settings_users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
