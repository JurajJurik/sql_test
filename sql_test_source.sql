-- Adminer 4.8.1 MySQL 8.0.30 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_slovak_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `authors` (`id`, `name`) VALUES
(1,	'Lehotkai'),
(2,	'Cambel'),
(3,	'Alexy'),
(4,	'Lasica'),
(5,	'Ďuríčková');

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `sold_copies` int DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `books` (`id`, `name`, `year`, `sold_copies`, `author_id`) VALUES
(1,	'Človečina',	2022,	2563,	1),
(2,	'Najdlhší román',	2022,	8,	1),
(3,	'Najkratší román',	2019,	897,	1),
(4,	'Najpredávanejší román',	2017,	3698,	1),
(5,	'Najlepší román',	2022,	2546,	1),
(6,	'Prvý román',	2022,	9,	1),
(7,	'Bledomodré slnko',	2021,	103,	2),
(8,	'Trest',	2020,	27,	2),
(9,	'V snahe',	2022,	12,	2),
(10,	'Pavlus',	2022,	9,	2),
(11,	'Slnečná Nina',	2016,	24,	2),
(12,	'Zlomená duša',	2020,	13,	2),
(13,	'Pochybenie',	2022,	12,	2),
(14,	'Zlaté dno',	2021,	237,	3),
(15,	'Grétka',	2022,	53,	3),
(16,	'Jarmilka',	2022,	89,	3),
(17,	'Ondrejko',	2017,	157,	3),
(18,	'Zabudnutý svet',	2022,	999,	3),
(19,	'Nečakanie na Godota',	2022,	974,	4),
(20,	'Bolo nás jedenásť',	2019,	9456,	4),
(21,	'Tri hry',	2022,	1235,	4),
(22,	'Listy Emilovi',	2022,	957,	4),
(23,	'Lenže ja som iba komik',	2022,	4579,	4),
(24,	'Trialóg',	2021,	2478,	4),
(25,	'Zajko a líška',	2017,	55,	5),
(26,	'Papierová rozprávka',	2020,	46,	5),
(27,	'Janček palček',	2022,	23,	5),
(28,	'Útek z gramatiky',	2021,	789,	5),
(29,	'Oriešky',	2022,	1523,	5),
(30,	'Princezná Ruženka',	2022,	567,	5);

DROP TABLE IF EXISTS `library`;
CREATE TABLE `library` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(30) DEFAULT NULL,
  `sold_copies` int DEFAULT NULL,
  `book` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `library` (`id`, `author`, `sold_copies`, `book`) VALUES
(1,	'Lehotkai',	2563,	'Človečina'),
(2,	'Lehotkai',	2546,	'Najlepší román'),
(3,	'Lehotkai',	9,	'Prvý román'),
(4,	'Lasica',	4579,	'Lenže ja som iba komik'),
(5,	'Lasica',	1235,	'Tri hry'),
(6,	'Lasica',	974,	'Nečakanie na Godota');

-- 2023-01-23 00:32:14
