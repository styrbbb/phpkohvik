-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Juuni 13, 2024 kell 01:49 PL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `kohvikud`
--
CREATE DATABASE IF NOT EXISTS `kohvikud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kohvikud`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `hinnangud`
--

CREATE TABLE `hinnangud` (
  `id` int(11) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kommentaar` varchar(255) NOT NULL,
  `kohvikud_id` int(11) NOT NULL,
  `hinne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `hinnangud`
--

INSERT INTO `hinnangud` (`id`, `nimi`, `kommentaar`, `kohvikud_id`, `hinne`) VALUES
(5, 'gfg', 'dgdgdgdgfdg', 9, 0),
(6, 'asdadsa', 'dsadsadadadadadsdaddasd', 4, 8),
(17, 'fgdgd', 'gfdgdgdg', 1, 6),
(18, 'fgfdgdff', 'dddddd', 1, 3);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kasutajad`
--

CREATE TABLE `kasutajad` (
  `kasutaja` varchar(50) NOT NULL,
  `parool` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kasutajad`
--

INSERT INTO `kasutajad` (`kasutaja`, `parool`) VALUES
('admin', '$2y$10$koaUYzYth9kAQPQ4.Cp/SOi07yRVyQOW9QzrT2cKQ.DfCgKffiKkm');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kohvikud`
--

CREATE TABLE `kohvikud` (
  `id` int(11) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `hinnang` float NOT NULL,
  `korda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kohvikud`
--

INSERT INTO `kohvikud` (`id`, `nimi`, `asukoht`, `hinnang`, `korda`) VALUES
(1, 'Johna', 'Cavaillon', 0, 0),
(2, 'EthelredDDD', 'ChenghuangSSS', 0, 0),
(3, 'Glen', 'El Cantón de San Pablo', 0, 0),
(4, 'Flossyk', 'Pingxiang', 0, 0),
(6, 'Lorrin', 'Almere Haven', 0, 0),
(7, 'Aurel', 'Sekampung', 0, 0),
(8, 'Herb', 'La Huerta', 0, 0),
(9, 'Alford', 'Émpa', 0, 0),
(18, 'Mirabelle', 'Roblin', 0, 0),
(20, 'Vonnie', 'Xiejiaya', 0, 0),
(21, 'Delmer', 'Touying', 0, 0),
(22, 'Jameson', 'Stryszawa', 0, 0),
(24, 'Maurene', 'Galleh Manda', 0, 0),
(27, 'Kimmi', 'Leomil', 0, 0),
(28, 'Starla', 'Sufālat Samā’il', 0, 0),
(29, 'Vito', 'Korenovsk', 0, 0),
(30, 'Monte', 'Brooklyn', 0, 0),
(31, 'dgdf', 'fdgdgf', 0, 0),
(32, 'mcdonalds', 'Tallinn', 0, 0),
(33, 'Johanika', 'dsvdsdsff', 0, 0),
(34, 'bnvbnv', 'nbnvbvnnbbvn', 0, 0),
(35, 'kaka', 'assa', 0, 0);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `kohvikud`
--
ALTER TABLE `kohvikud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT tabelile `kohvikud`
--
ALTER TABLE `kohvikud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Andmebaas: `muusikapood`
--
CREATE DATABASE IF NOT EXISTS `muusikapood` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `muusikapood`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `albumid`
--

CREATE TABLE `albumid` (
  `id` int(11) NOT NULL,
  `artist` varchar(30) NOT NULL,
  `album` varchar(50) NOT NULL,
  `aasta` year(4) NOT NULL,
  `hind` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `albumid`
--

INSERT INTO `albumid` (`id`, `artist`, `album`, `aasta`, `hind`) VALUES
(6, 'Chelseaaadfs', 'Petyakov', '1950', 406.13),
(8, 'Roryyy', 'Madeley', '1998', 987.15),
(9, 'Shanta', 'Blanko', '1919', 946.74),
(11, 'Edyth', 'Redfern', '1910', 159.68),
(18, 'Alvera', 'Bulmer', '1901', 985.41),
(19, 'Blithe', 'Krale', '1908', 890.14),
(20, 'Tamra', 'Pyecroft', '1936', 684.36),
(21, 'Sammy', 'Maryott', '1950', 594.63),
(22, 'Benjamen', 'Rowney', '2020', 233.36),
(23, 'Scottyy', 'Flarity', '1954', 653.59),
(24, 'Rafaello', 'Berni', '1946', 488.42),
(25, 'Darsey', 'Iannetti', '1916', 242.75),
(26, 'Sidney', 'Sabates', '1944', 327.15),
(27, 'Rosette', 'Goodwell', '1929', 965.59),
(28, 'Osbert', 'Hadcock', '1978', 657.40),
(29, 'Zelig', 'Metzig', '1964', 976.99),
(30, 'Brewer', 'Katt', '2019', 87.29),
(31, 'Ellie', 'Wigley', '1917', 702.64),
(32, 'Lorilee', 'Goodnow', '2002', 381.89),
(33, 'Herculie', 'Simonnot', '1980', 186.09),
(34, 'Lauraine', 'Hanaford', '1910', 223.17),
(35, 'Dominik', 'Ewens', '1963', 523.43),
(36, 'Norry', 'Dingle', '1972', 530.28),
(37, 'Cris', 'Redmire', '1925', 78.05),
(38, 'Nevins', 'Pattingson', '1963', 875.45),
(39, 'Drud', 'Gilley', '1907', 421.20),
(40, 'Georg', 'Prate', '1942', 964.21),
(41, 'Garwood', 'Revan', '1978', 41.22),
(42, 'Rozelle', 'Lanchester', '1915', 103.76),
(43, 'Karine', 'Stean', '1950', 688.50),
(44, 'Hailey', 'Godwin', '2021', 830.29),
(45, 'Thibaud', 'Huggins', '1980', 820.72),
(46, 'Krishna', 'Canto', '1912', 8.30),
(47, 'Jewelle', 'Minifie', '1998', 201.96),
(48, 'Lauraine', 'Bethune', '1914', 437.06),
(49, 'Leah', 'Barlee', '1956', 756.93),
(50, 'Rhianna', 'Luesley', '1929', 178.55),
(51, 'Norri', 'Morgan', '1923', 150.55),
(52, 'Alikee', 'Counter', '1966', 474.99),
(53, 'Launce', 'Pithie', '1936', 39.80),
(54, 'Oralla', 'Dawbery', '1998', 585.74),
(55, 'Kelsey', 'Suggitt', '1905', 870.28),
(56, 'Vitia', 'Winterbotham', '1956', 714.65),
(57, 'Hube', 'Isac', '1966', 557.73),
(58, 'Saw', 'Farley', '1930', 471.65),
(59, 'Aloise', 'Chaffe', '1911', 720.92),
(60, 'Janek', 'Limeburn', '1968', 273.75),
(61, 'Haydon', 'Dupree', '1976', 751.74),
(62, 'Margalit', 'Filipic', '1947', 428.60),
(63, 'Orsa', 'Plampin', '1924', 874.00),
(64, 'Zsa zsa', 'Viney', '1983', 358.26),
(65, 'Lynelle', 'Yeatman', '1981', 191.02),
(66, 'Gertruda', 'Carstairs', '1925', 127.29),
(67, 'Ammamaria', 'Arney', '1990', 95.27),
(68, 'Maudie', 'Lissimore', '1920', 666.51),
(69, 'Abagael', 'Tombs', '1914', 288.17),
(70, 'Caresa', 'Farlowe', '1928', 217.41),
(71, 'Klemens', 'Wilcot', '1958', 107.77),
(72, 'Artie', 'Janowicz', '2006', 498.32),
(73, 'Luci', 'Daglish', '1988', 506.08),
(74, 'Michaelina', 'Yarker', '1917', 476.12),
(75, 'Jodie', 'Farish', '1991', 997.34),
(76, 'Reta', 'Overy', '1988', 990.87),
(77, 'Adams', 'Durham', '2007', 844.43),
(78, 'Annelise', 'Kembery', '2010', 5.49),
(79, 'Andreasrr', 'Andresser', '2016', 87.96),
(80, 'Krystle', 'Lanham', '1995', 967.03),
(81, 'Geoff', 'Poluzzi', '1975', 748.50),
(82, 'Marget', 'McFeate', '1902', 354.42),
(83, 'Lancelot', 'Hawford', '1925', 516.75),
(84, 'Noby', 'Newbatt', '1983', 577.46),
(85, 'Walt', 'Leat', '1964', 556.60),
(86, 'Federica', 'Castelain', '1962', 309.35),
(87, 'Marris', 'Beelby', '2006', 77.18),
(88, 'Loren', 'Dominicacci', '1988', 839.21),
(89, 'Helge', 'Kovalski', '1910', 493.95),
(90, 'Lilli', 'Dix', '2002', 437.93),
(91, 'Frances', 'Sloss', '1940', 915.50),
(92, 'Peggi', 'Welland', '1944', 428.95),
(93, 'Hilario', 'Ghelardoni', '1991', 885.81),
(94, 'Lilly', 'McGeachy', '1981', 267.48),
(95, 'Dian', 'Hassen', '2018', 291.58),
(96, 'Nancy', 'Aronstam', '1923', 244.33),
(97, 'Anneliese', 'Aird', '2005', 112.58),
(98, 'Stoddard', 'Duddin', '1971', 447.10),
(99, 'Avie', 'Dickens', '1960', 752.16),
(100, 'Agnella', 'Coull', '1985', 929.58),
(101, 'Temp', 'Paske', '1947', 3.62),
(102, 'dfsff', 'sfff', '1999', 5.00),
(103, 'dfsff', 'ddddd', '2020', 15.00),
(108, 'sdfsfsd', 'dfdsfsd', '2100', 6676.00),
(109, 'Ashbey', 'Supple', '1952', 999.66),
(110, 'Ashbey', 'Supple', '1952', 999.66),
(111, 'Ashbey', 'Supple', '1952', 999.66),
(112, 'Ashbey', 'Supple', '1952', 999.66),
(113, 'Ashbey', 'Supple', '1952', 999.66),
(118, 'yuiyiy', 'yiyui', '2000', 1.00),
(119, 'yuiyiy', 'yiyui', '2000', 1.00),
(120, 'dfsfds', 'dsfsdf', '2000', 100.00),
(122, 'Edyth', 'Redfern', '1910', 159.68),
(123, 'Shari', 'Haggith', '1996', 739.58),
(124, 'Shari', 'Haggith', '1996', 739.58),
(125, 'Kristoforo', 'Cogman', '1940', 311.27),
(126, 'Rory', 'Madeley', '1998', 987.15),
(127, 'Rory', 'Madeley', '1998', 987.15),
(128, 'Edwina', 'Grimditch', '1995', 709.23),
(129, 'dsfds', 'fsfdff', '2020', 333.00),
(130, 'sada', 'asdad', '2020', 3333.00),
(131, 'to', 'ttt', '1952', 2222.00);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `arved`
--

CREATE TABLE `arved` (
  `id` int(11) NOT NULL,
  `kliendid_id` int(11) NOT NULL,
  `albumid_id` int(11) NOT NULL,
  `kogus` int(11) NOT NULL,
  `arve_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `arved`
--

INSERT INTO `arved` (`id`, `kliendid_id`, `albumid_id`, `kogus`, `arve_number`) VALUES
(302, 75, 54, 6, 863),
(303, 66, 62, 10, 706),
(304, 22, 24, 9, 819),
(305, 91, 92, 1, 777),
(306, 7, 15, 10, 814),
(307, 81, 52, 4, 239),
(308, 26, 44, 10, 740),
(309, 94, 14, 6, 692),
(310, 34, 7, 7, 559),
(311, 11, 93, 10, 503),
(312, 9, 62, 9, 134),
(313, 51, 50, 9, 657),
(314, 51, 23, 1, 84),
(315, 33, 2, 5, 600),
(316, 3, 56, 2, 882),
(317, 4, 23, 4, 728),
(318, 70, 15, 6, 195),
(319, 75, 64, 1, 216),
(320, 99, 78, 6, 410),
(321, 45, 73, 5, 307),
(322, 32, 54, 4, 696),
(323, 14, 41, 7, 554),
(324, 91, 36, 2, 489),
(325, 24, 29, 5, 372),
(326, 72, 9, 2, 283),
(327, 93, 97, 10, 598),
(328, 95, 8, 1, 613),
(329, 24, 45, 7, 556),
(330, 21, 93, 2, 792),
(331, 14, 23, 4, 908),
(332, 59, 17, 2, 39),
(333, 28, 99, 8, 578),
(334, 65, 53, 2, 823),
(335, 12, 82, 3, 596),
(336, 13, 93, 5, 921),
(337, 51, 28, 2, 749),
(338, 11, 1, 9, 832),
(339, 86, 46, 7, 789),
(340, 65, 72, 10, 497),
(341, 1, 25, 4, 136),
(342, 42, 35, 7, 428),
(343, 31, 36, 9, 957),
(344, 61, 93, 2, 623),
(345, 35, 57, 3, 979),
(346, 19, 29, 9, 998),
(347, 54, 12, 9, 258),
(348, 97, 72, 8, 818),
(349, 70, 59, 3, 742),
(350, 94, 19, 2, 128),
(351, 93, 73, 5, 972),
(352, 21, 89, 9, 468),
(353, 75, 54, 6, 863),
(354, 66, 62, 10, 706),
(355, 22, 24, 9, 819),
(356, 91, 92, 1, 777),
(357, 7, 15, 10, 814),
(358, 81, 52, 4, 239),
(359, 26, 44, 10, 740),
(360, 94, 14, 6, 692),
(361, 34, 7, 7, 559),
(362, 11, 93, 10, 503),
(363, 9, 62, 9, 134),
(364, 51, 50, 9, 657),
(365, 51, 23, 1, 84),
(366, 33, 2, 5, 600),
(367, 3, 56, 2, 882),
(368, 4, 23, 4, 728),
(369, 70, 15, 6, 195),
(370, 75, 64, 1, 216),
(371, 99, 78, 6, 410),
(372, 45, 73, 5, 307),
(373, 32, 54, 4, 696),
(374, 14, 41, 7, 554),
(375, 91, 36, 2, 489),
(376, 24, 29, 5, 372),
(377, 72, 9, 2, 283),
(378, 93, 97, 10, 598),
(379, 95, 8, 1, 613),
(380, 24, 45, 7, 556),
(381, 21, 93, 2, 792),
(382, 14, 23, 4, 908),
(383, 59, 17, 2, 39),
(384, 28, 99, 8, 578),
(385, 65, 53, 2, 823),
(386, 12, 82, 3, 596),
(387, 13, 93, 5, 921),
(388, 51, 28, 2, 749),
(389, 11, 1, 9, 832),
(390, 86, 46, 7, 789),
(391, 65, 72, 10, 497),
(392, 1, 25, 4, 136),
(393, 42, 35, 7, 428),
(394, 31, 36, 9, 957),
(395, 61, 93, 2, 623),
(396, 35, 57, 3, 979),
(397, 19, 29, 9, 998),
(398, 54, 12, 9, 258),
(399, 97, 72, 8, 818),
(400, 70, 59, 3, 742),
(401, 94, 19, 2, 128),
(402, 93, 73, 5, 972),
(403, 4, 27, 8, 609),
(404, 90, 15, 8, 593),
(405, 30, 100, 3, 661),
(406, 8, 13, 1, 308),
(407, 2, 62, 1, 672),
(408, 74, 13, 6, 486),
(409, 49, 51, 4, 156),
(410, 80, 34, 9, 445),
(411, 25, 33, 6, 52),
(412, 68, 36, 10, 473),
(413, 29, 22, 9, 119),
(414, 88, 99, 1, 37),
(415, 24, 90, 10, 738),
(416, 95, 49, 1, 467),
(417, 90, 37, 9, 324),
(418, 37, 70, 7, 929),
(419, 12, 36, 4, 608),
(420, 49, 56, 4, 16),
(421, 20, 89, 2, 34),
(422, 27, 77, 2, 998),
(423, 17, 77, 3, 510),
(424, 79, 29, 2, 145),
(425, 100, 84, 4, 885),
(426, 66, 98, 7, 555),
(427, 56, 34, 6, 826),
(428, 89, 47, 6, 549),
(429, 88, 74, 5, 702),
(430, 46, 5, 9, 973),
(431, 92, 43, 7, 249),
(432, 24, 62, 5, 462),
(433, 88, 51, 4, 442),
(434, 53, 65, 5, 262),
(435, 75, 25, 7, 625),
(436, 81, 70, 1, 363),
(437, 94, 70, 2, 303),
(438, 39, 18, 3, 440),
(439, 97, 77, 2, 727),
(440, 18, 62, 9, 315),
(441, 67, 27, 9, 823),
(442, 86, 73, 1, 635),
(443, 71, 72, 6, 314),
(444, 77, 18, 1, 768),
(445, 43, 94, 5, 201),
(446, 1, 38, 5, 434),
(447, 99, 89, 5, 151),
(448, 93, 8, 3, 544),
(449, 13, 80, 9, 569),
(450, 5, 48, 8, 736),
(451, 51, 50, 4, 710);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kasutajad`
--

CREATE TABLE `kasutajad` (
  `id` int(7) NOT NULL,
  `kasutaja` varchar(255) NOT NULL,
  `parool` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kasutajad`
--

INSERT INTO `kasutajad` (`id`, `kasutaja`, `parool`) VALUES
(1, 'admin', '$2y$10$YYhwg8IYKZdvnPEImeRlR.qaKzNA5GNQW9ox537dRGb.SxSdHtl3W'),
(2, 'tperk', '$2y$10$5uYBSCE'),
(10, 'kasutaja', '$2y$10$GMfS4G33MBLrgnlL0sOyy.sa.JHrFpvGrstO48eDY1jRRQebUKCYe'),
(11, 'kasutaja2222', '$2y$10$IbZq/wv3fRZIO8fXDpZqvOlD/TP3yercdqwYuFkZxsH71jY30isem');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kliendid`
--

CREATE TABLE `kliendid` (
  `id` int(11) NOT NULL,
  `eesnimi` varchar(20) NOT NULL,
  `perenimi` varchar(20) NOT NULL,
  `tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kliendid`
--

INSERT INTO `kliendid` (`id`, `eesnimi`, `perenimi`, `tel`) VALUES
(1, 'Charlotte', 'Bendson', 1719504302),
(2, 'Margarete', 'Pattingson', 2094459593),
(3, 'Mitchael', 'Brunet', 2147483647),
(4, 'Cami', 'Charopen', 2147483647),
(5, 'Orson', 'Sagerson', 2147483647),
(6, 'Dolores', 'Pontefract', 2147483647),
(7, 'Oralla', 'Houlridge', 2147483647),
(8, 'Tuesday', 'Stubbins', 2147483647),
(9, 'Fayth', 'Vanyarkin', 2147483647),
(10, 'Sofie', 'Moffet', 1815514758),
(11, 'Evy', 'Muckian', 2147483647),
(12, 'Orv', 'Goathrop', 2147483647),
(13, 'Jojo', 'Epp', 2147483647),
(14, 'Maurice', 'Winterburn', 2147483647),
(15, 'Nil', 'Launder', 2147483647),
(16, 'Wes', 'Eplett', 2147483647),
(17, 'Damian', 'Gypps', 2147483647),
(18, 'Adelaide', 'Jollands', 1475275607),
(19, 'Eric', 'Petts', 1968109183),
(20, 'Leta', 'Ainsley', 2147483647),
(21, 'Aile', 'MacFadden', 2147483647),
(22, 'Halimeda', 'Westhead', 2147483647),
(23, 'Manya', 'Greste', 2147483647),
(24, 'Ford', 'Ahlf', 2147483647),
(25, 'Sabra', 'Hairon', 2147483647),
(26, 'Laurene', 'Ingarfill', 2147483647),
(27, 'Guido', 'Ablewhite', 2147483647),
(28, 'Suzanna', 'Iredell', 2147483647),
(29, 'Gregorio', 'Trewhitt', 2147483647),
(30, 'Tilda', 'Beet', 2147483647),
(31, 'Courtnay', 'Varsey', 2147483647),
(32, 'Tani', 'Usmar', 2147483647),
(33, 'Sylvan', 'Girkins', 2147483647),
(34, 'Corly', 'Westphal', 2147483647),
(35, 'Leigh', 'Heiss', 2147483647),
(36, 'Joyce', 'DeSousa', 2147483647),
(37, 'Rosemaria', 'Ramsden', 2147483647),
(38, 'Lorin', 'Ruane', 2147483647),
(39, 'Obediah', 'Cofax', 2147483647),
(40, 'Emogene', 'Thorwarth', 2147483647),
(41, 'Rolfe', 'Deppe', 2027922512),
(42, 'Bart', 'Emor', 2147483647),
(43, 'Kori', 'Hardman', 2147483647),
(44, 'Jacinthe', 'Mitchell', 2147483647),
(45, 'Engracia', 'Bessant', 2147483647),
(46, 'Elisabetta', 'Dounbare', 1869093556),
(47, 'Kendre', 'Peat', 2147483647),
(48, 'Abrahan', 'Tremonte', 2147483647),
(49, 'Emmott', 'Rickesies', 2147483647),
(50, 'Anselma', 'Redmile', 2147483647),
(51, 'Wes', 'Tanner', 2147483647),
(52, 'Margarethe', 'Menear', 2147483647),
(53, 'Hartwell', 'Caherny', 2147483647),
(54, 'Alejandra', 'Burge', 2147483647),
(55, 'Babbie', 'Tremaine', 2147483647),
(56, 'Papagena', 'Joney', 2147483647),
(57, 'Keely', 'Kosiada', 2147483647),
(58, 'Glennis', 'Dougliss', 1589553979),
(59, 'Raven', 'Smiths', 2147483647),
(60, 'Mead', 'Fochs', 2147483647),
(61, 'Fernandina', 'Sponer', 2147483647),
(62, 'Kelbee', 'Brownsword', 2147483647),
(63, 'Lilas', 'Wemes', 2147483647),
(64, 'Arvie', 'Ethelston', 2147483647),
(65, 'Morrie', 'Cheesley', 2147483647),
(66, 'Umberto', 'Barti', 2147483647),
(67, 'Cristine', 'Auchinleck', 1638268511),
(68, 'Arlee', 'Ellery', 2147483647),
(69, 'Arda', 'Gawkroge', 2147483647),
(70, 'Fara', 'Ivkovic', 2147483647),
(71, 'Isadore', 'Ratazzi', 2147483647),
(72, 'Hadria', 'Ismirnioglou', 2147483647),
(73, 'Baxie', 'Levey', 2147483647),
(74, 'Ash', 'Gorwood', 2147483647),
(75, 'Sandra', 'Straughan', 2147483647),
(76, 'Farah', 'Stone', 2147483647),
(77, 'Nickey', 'D\'Aguanno', 2147483647),
(78, 'Harrison', 'Gilchriest', 2147483647),
(79, 'Dick', 'Longden', 2147483647),
(80, 'Henry', 'Mc Caghan', 2147483647),
(81, 'Bambi', 'Haddington', 2147483647),
(82, 'Tracee', 'Manderson', 2147483647),
(83, 'Lucias', 'Pears', 2147483647),
(84, 'Sidonia', 'Clench', 2147483647),
(85, 'Jonah', 'Melmar', 2147483647),
(86, 'Cissiee', 'Heffron', 2147483647),
(87, 'Bernette', 'Matisoff', 2147483647),
(88, 'Rosalie', 'Pettett', 2147483647),
(89, 'Caddric', 'Sheeres', 2147483647),
(90, 'Jania', 'Jentzsch', 2147483647),
(91, 'Goldy', 'Gurge', 2147483647),
(92, 'Estella', 'Gout', 1081123650),
(93, 'Cal', 'MacVicar', 2147483647),
(94, 'Cathryn', 'Faires', 2147483647),
(95, 'Ardyth', 'Turnbull', 2147483647),
(96, 'Gordon', 'Ives', 2147483647),
(97, 'Bealle', 'Kilborn', 2147483647),
(98, 'Garrek', 'Mocker', 2147483647),
(99, 'Tucky', 'Kyte', 2147483647),
(100, 'Brennan', 'Bedford', 2147483647);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `uudised`
--

CREATE TABLE `uudised` (
  `id` int(11) NOT NULL,
  `pealkiri` varchar(125) NOT NULL,
  `uudis` varchar(255) NOT NULL,
  `aasta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `uudised`
--

INSERT INTO `uudised` (`id`, `pealkiri`, `uudis`, `aasta`) VALUES
(1, 'New Tech Innovations Announced', 'Today, several tech companies announced groundbreaking innovations set to revolutionize the industry.', 2024),
(2, 'Historic Peace Treaty Signed', 'Leaders from various countries have signed a historic peace treaty aimed at ending decades of conflict.', 2023),
(3, 'Major Breakthrough in Cancer Research', 'Scientists have made a major breakthrough in cancer research, potentially leading to new treatments.', 2022),
(4, 'Economy Sees Unprecedented Growth', 'The economy has seen unprecedented growth this quarter, with significant increases in GDP and employment.', 2021),
(5, 'Global Climate Agreement Reached', 'Nations around the world have reached a new global climate agreement to combat climate change.', 2020),
(6, 'New Species Discovered in Amazon', 'Researchers have discovered a new species in the Amazon rainforest, adding to the region\'s biodiversity.', 2019),
(7, 'Historic Space Mission Launched', 'A historic space mission has been launched, aiming to explore the outer reaches of our solar system.', 2018),
(8, 'Major Cyber Attack Affects Millions', 'A major cyber attack has affected millions of users worldwide, compromising personal data.', 2017),
(9, 'Breakthrough in Renewable Energy', 'A new breakthrough in renewable energy technology promises to make clean energy more accessible.', 2016),
(10, 'Global Summit on Education Begins', 'The global summit on education has begun, with leaders discussing the future of learning.', 2015),
(11, 'Major Advancements in AI Technology', 'Significant advancements in AI technology were announced today, with potential impacts across industries.', 2014),
(12, 'Historic Election Results Announced', 'The results of a historic election have been announced, marking a significant shift in political dynamics.', 2013),
(13, 'New Artistic Movement Emerges', 'A new artistic movement has emerged, gaining recognition and acclaim in the art world.', 2012),
(14, 'Breakthrough in Quantum Computing', 'Researchers have made a breakthrough in quantum computing, potentially transforming the tech landscape.', 2011),
(15, 'Major Conservation Efforts Succeed', 'Major conservation efforts have succeeded in protecting endangered species and habitats.', 2010),
(16, 'Global Health Initiative Launched', 'A new global health initiative has been launched to tackle widespread health issues.', 2009),
(17, 'Economic Reforms Passed', 'Significant economic reforms have been passed, aiming to boost growth and stability.', 2008),
(18, 'New Discovery in Archaeology', 'A new discovery in archaeology sheds light on ancient civilizations and their cultures.', 2007),
(19, 'Breakthrough in Genetic Research', 'Scientists have made a breakthrough in genetic research, offering new insights into human health.', 2006),
(20, 'New Space Telescope Launched', 'A new space telescope has been launched, promising to provide clearer views of the universe.', 2005),
(21, 'Innovative Education Program Unveiled', 'An innovative education program has been unveiled, aiming to improve learning outcomes.', 2004),
(22, 'Global Tech Conference Concludes', 'The global tech conference has concluded, showcasing the latest advancements and trends.', 2003),
(23, 'Historic Landmark Designated', 'A historic landmark has been officially designated, preserving it for future generations.', 2002),
(24, 'Major Advances in Medical Technology', 'Major advances in medical technology were announced, improving patient care and treatment.', 2001),
(25, 'New Environmental Policies Implemented', 'New environmental policies have been implemented to address climate change and sustainability.', 2000),
(26, 'Historic Sports Achievement', 'An athlete has achieved a historic milestone in their sport, setting new records.', 1999),
(27, 'Breakthrough in Renewable Resources', 'A breakthrough in renewable resources promises to enhance sustainable energy production.', 1998),
(28, 'New Artistic Technique Gains Popularity', 'A new artistic technique is gaining popularity, influencing contemporary art.', 1997),
(29, 'Scientific Discovery in Physics', 'A significant scientific discovery in physics could alter our understanding of the universe.', 1996),
(30, 'Major Cultural Festival Announced', 'A major cultural festival has been announced, celebrating diverse traditions and arts.', 1995),
(31, 'Innovative Transportation System Launched', 'An innovative transportation system has been launched, aiming to reduce congestion and emissions.', 1994),
(32, 'Historic Agreement on Trade', 'Nations have reached a historic agreement on trade, enhancing economic cooperation.', 1993),
(33, 'New Culinary Trend Emerges', 'A new culinary trend is emerging, offering unique flavors and dining experiences.', 1992),
(34, 'Breakthrough in Renewable Energy Storage', 'A breakthrough in renewable energy storage technology could revolutionize the energy sector.', 1991),
(35, 'Major Sports Event Concludes', 'A major sports event has concluded, with memorable performances and outcomes.', 1990),
(36, 'New Discoveries in Marine Biology', 'New discoveries in marine biology provide insights into ocean ecosystems and species.', 1989),
(37, 'Historic Cultural Exchange Program Launched', 'A historic cultural exchange program has been launched, fostering global understanding.', 1988),
(38, 'Significant Advances in Robotics', 'Significant advances in robotics technology were announced, with applications in various fields.', 1987),
(39, 'New Environmental Initiative Announced', 'A new environmental initiative aims to protect natural habitats and combat climate change.', 1986),
(40, 'Breakthrough in Neuroscience', 'Researchers have made a breakthrough in neuroscience, offering new treatments for brain disorders.', 1985),
(41, 'Major Breakthrough in Biotechnology', 'A major breakthrough in biotechnology promises to advance medical research and treatments.', 1984),
(42, 'Historic Music Collaboration Announced', 'A historic music collaboration has been announced, bringing together renowned artists.', 1983),
(43, 'New Discoveries in Astronomy', 'New discoveries in astronomy are expanding our understanding of the universe.', 1982),
(44, 'Innovative Farming Techniques Developed', 'Innovative farming techniques have been developed to increase crop yields and sustainability.', 1981),
(45, 'Historic Legal Decision Made', 'A historic legal decision has been made, setting a precedent for future cases.', 1980),
(46, 'Breakthrough in Renewable Energy Adoption', 'A breakthrough in renewable energy adoption could significantly reduce carbon emissions.', 1979),
(47, 'Major Advances in Cybersecurity', 'Major advances in cybersecurity technology were announced to protect against growing threats.', 1978),
(48, 'New Findings in Paleontology', 'New findings in paleontology shed light on prehistoric life and ecosystems.', 1977),
(49, 'Innovative Housing Solutions Proposed', 'Innovative housing solutions have been proposed to address urban housing shortages.', 1976),
(50, 'Breakthrough in Renewable Energy Efficiency', 'A breakthrough in renewable energy efficiency promises to enhance clean energy production.', 1975),
(51, 'Breakthrough in Renewable Energy Efficiency', 'A breakthrough in renewable energy efficiency promises to enhance clean energy production.', 1975),
(52, 'Significant Advances in Climate Science', 'Significant advances in climate science were announced, improving our understanding of climate change.', 1974),
(53, 'New Discoveries in Space Exploration', 'New discoveries in space exploration are revealing more about our solar system.', 1973),
(54, 'Innovative Health Care Program Launched', 'An innovative health care program has been launched to improve patient outcomes.', 1972),
(55, 'Historic Economic Pact Signed', 'A historic economic pact has been signed, strengthening international economic ties.', 1971),
(56, 'Major Breakthrough in Environmental Science', 'A major breakthrough in environmental science could lead to better conservation practices.', 1970),
(57, 'New Artistic Genre Gains Traction', 'A new artistic genre is gaining traction, influencing contemporary culture.', 1969),
(58, 'Breakthrough in Renewable Energy Deployment', 'A breakthrough in renewable energy deployment could accelerate the transition to clean energy.', 1968),
(59, 'Major Advances in Medical Imaging', 'Major advances in medical imaging technology were announced, improving diagnostics.', 1967),
(60, 'New Discoveries in Ancient History', 'New discoveries in ancient history provide insights into early civilizations.', 1966),
(61, 'Historic Achievement in Literature', 'An author has achieved a historic milestone in literature, gaining international acclaim.', 1965),
(62, 'Innovative Waste Management Solutions Introduced', 'Innovative waste management solutions have been introduced to reduce environmental impact.', 1964),
(63, 'Breakthrough in Solar Energy Technology', 'A breakthrough in solar energy technology promises to enhance renewable energy adoption.', 1963),
(64, 'Major Advances in Artificial Intelligence', 'Major advances in artificial intelligence were announced, with potential impacts on various industries.', 1962),
(65, 'New Discoveries in Human Evolution', 'New discoveries in human evolution provide insights into our ancient ancestors.', 1961),
(66, 'Innovative Clean Water Solutions Implemented', 'Innovative clean water solutions have been implemented to improve access to safe drinking water.', 1960),
(67, 'Historic Environmental Conservation Effort', 'A historic environmental conservation effort has been launched to protect endangered species.', 1959),
(68, 'Breakthrough in Fusion Energy Research', 'A breakthrough in fusion energy research could pave the way for a new era of clean energy.', 1958),
(69, 'Major Advances in Renewable Energy Integration', 'Major advances in renewable energy integration were announced, enhancing grid stability.', 1957),
(70, 'New Discoveries in Space Science', 'New discoveries in space science are expanding our knowledge of the universe.', 1956),
(71, 'Innovative Urban Planning Initiatives Announced', 'Innovative urban planning initiatives have been announced to address growing city challenges.', 1955),
(72, 'Historic Breakthrough in Climate Policy', 'A historic breakthrough in climate policy aims to significantly reduce global emissions.', 1954),
(73, 'Major Advances in Genetic Engineering', 'Major advances in genetic engineering were announced, with potential impacts on health and agriculture.', 1953),
(74, 'New Discoveries in Ancient Artifacts', 'New discoveries in ancient artifacts provide insights into past cultures and societies.', 1952),
(75, 'Innovative Renewable Energy Projects Launched', 'Innovative renewable energy projects have been launched to accelerate the transition to clean energy.', 1951),
(76, 'Breakthrough in Battery Technology', 'A breakthrough in battery technology promises to improve energy storage capabilities.', 1950),
(77, 'Major Advances in Health Care Technology', 'Major advances in health care technology were announced, improving patient care and outcomes.', 1949),
(78, 'New Discoveries in Marine Conservation', 'New discoveries in marine conservation provide insights into protecting ocean ecosystems.', 1948),
(79, 'Innovative Agricultural Practices Adopted', 'Innovative agricultural practices have been adopted to enhance food security and sustainability.', 1947),
(80, 'Historic Space Discovery', 'A historic space discovery has been made, revealing new information about our universe.', 1946),
(81, 'Breakthrough in Environmental Restoration', 'A breakthrough in environmental restoration could lead to the recovery of damaged ecosystems.', 1945),
(82, 'Major Advances in Renewable Energy Technologies', 'Major advances in renewable energy technologies were announced, enhancing clean energy production.', 1944),
(83, 'New Discoveries in Climate Research', 'New discoveries in climate research are improving our understanding of climate change.', 1943),
(84, 'Innovative Education Reforms Introduced', 'Innovative education reforms have been introduced to improve learning outcomes.', 1942),
(85, 'Historic Cultural Heritage Site Discovered', 'A historic cultural heritage site has been discovered, shedding light on ancient civilizations.', 1941),
(86, 'Breakthrough in Hydrogen Fuel Technology', 'A breakthrough in hydrogen fuel technology promises to revolutionize the energy sector.', 1940),
(87, 'Major Advances in Space Technology', 'Major advances in space technology were announced, enabling new space exploration missions.', 1939),
(88, 'New Discoveries in Renewable Energy Resources', 'New discoveries in renewable energy resources could enhance sustainable energy production.', 1938),
(89, 'Innovative Climate Mitigation Strategies Proposed', 'Innovative climate mitigation strategies have been proposed to address global warming.', 1937),
(90, 'Historic Milestone in Scientific Research', 'A historic milestone in scientific research has been achieved, advancing our understanding of the world.', 1936),
(91, 'Breakthrough in Electric Vehicle Technology', 'A breakthrough in electric vehicle technology promises to improve efficiency and range.', 1935);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `albumid`
--
ALTER TABLE `albumid`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `arved`
--
ALTER TABLE `arved`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `kasutajad`
--
ALTER TABLE `kasutajad`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `kliendid`
--
ALTER TABLE `kliendid`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `uudised`
--
ALTER TABLE `uudised`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `albumid`
--
ALTER TABLE `albumid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT tabelile `arved`
--
ALTER TABLE `arved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT tabelile `kasutajad`
--
ALTER TABLE `kasutajad`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT tabelile `kliendid`
--
ALTER TABLE `kliendid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT tabelile `uudised`
--
ALTER TABLE `uudised`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- Andmebaas: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Andmete tõmmistamine tabelile `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'FGFDGFD', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"kohvikud\",\"muusikapood\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'hghmgmh', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"kohvikud\",\"muusikapood\",\"phpmyadmin\",\"restoranid\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"@TABLE@ tabeli struktuur\",\"latex_structure_continued_caption\":\"@TABLE@ tabeli struktuur (jätkub)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"@TABLE@ tabeli sisu\",\"latex_data_continued_caption\":\"@TABLE@ tabeli sisu (jätkub)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Andmete tõmmistamine tabelile `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"kohvikud\",\"table\":\"hinnangud\"},{\"db\":\"kohvikud\",\"table\":\"kohvikud\"},{\"db\":\"kohvikud\",\"table\":\"kasutajad\"},{\"db\":\"kohvikud\",\"table\":\"toidukohad\"},{\"db\":\"muusikapood\",\"table\":\"albumid\"},{\"db\":\"muusikapood\",\"table\":\"kasutajad\"},{\"db\":\"muusikapood\",\"table\":\"arved\"},{\"db\":\"muusikapood\",\"table\":\"kliendid\"},{\"db\":\"restoranid\",\"table\":\"asutused\"},{\"db\":\"restoranid\",\"table\":\"hinnangud\"}]');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Andmete tõmmistamine tabelile `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'muusikapood', 'albumid', '{\"sorted_col\":\"`albumid`.`id` DESC\"}', '2024-06-05 10:43:11'),
('root', 'muusikapood', 'arved', '{\"sorted_col\":\"`arved`.`id` DESC\",\"CREATE_TIME\":\"2024-05-22 08:48:46\",\"col_order\":[0,1,2,3,4],\"col_visib\":[1,1,1,1,1]}', '2024-05-22 06:00:31'),
('root', 'muusikapood', 'uudised', '{\"sorted_col\":\"`uudised`.`id` ASC\"}', '2024-05-22 08:41:06');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Andmete tõmmistamine tabelile `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-06-13 10:31:40', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"et\",\"DefaultConnectionCollation\":\"utf8mb4_estonian_ci\"}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksid tabelile `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksid tabelile `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksid tabelile `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksid tabelile `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksid tabelile `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksid tabelile `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksid tabelile `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksid tabelile `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksid tabelile `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksid tabelile `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksid tabelile `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksid tabelile `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksid tabelile `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT tabelile `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Andmebaas: `restoranid`
--
CREATE DATABASE IF NOT EXISTS `restoranid` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restoranid`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `asutused`
--

CREATE TABLE `asutused` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `keskmine_hinne` double NOT NULL,
  `hinnatud_korda` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `asutused`
--

INSERT INTO `asutused` (`id`, `nimi`, `asukoht`, `keskmine_hinne`, `hinnatud_korda`) VALUES
(1, 'Kaks Kokka', 'Mere Puiestee 6E', 1.2, 14),
(2, 'Von Krahli Aed', 'Raekoja plats 8', 2.7, 52),
(3, 'Pegasus', 'Harju 1', 4.7, 66),
(4, 'Vana Toomase Restoran', 'Mustamäe tee', 6.4, 59),
(5, 'Tuljak', 'Pirita tee 26e', 9.6, 28),
(6, 'Kohvik Moon', 'Võrgu 3t', 6.6, 93),
(7, 'Bruxx', 'Rotermanni 2', 4.9, 26),
(8, 'Pegasus', 'Paldiski mnt', 7.4, 14),
(9, 'Ö', 'Mere puiestee 6e', 9.6, 97),
(10, 'Olde hansa', 'Vana turg 1', 9.5, 20),
(11, 'Rataskaevu 16', 'Ratasekaevu 16', 4.5, 23),
(12, 'Kogu resto ja Pagar', 'Võrgu tn 6', 7.7, 5),
(13, 'Pegasus', 'Vabaduse puiestee', 1.9, 11),
(14, 'F-Hoone', 'Telliskivi 60a', 2.5, 88),
(15, 'F-Hoone', 'Pärnu mnt', 4.4, 63),
(16, 'Rataskaevu 16', 'Tartu maantee', 3.5, 61),
(17, 'Ö', 'Laagna tee', 6.9, 83),
(18, 'Kaks Kokka', 'Rannamäe tee', 2.1, 47),
(19, 'Ö', 'Pärnu mnt', 2.4, 44),
(20, 'F-Hoone', 'Tartu maantee', 4.5, 76),
(21, 'F-Hoone', 'Vabaduse puiestee', 9.3, 49),
(22, 'Kaks Kokka', 'Paldiski mnt', 1.5, 37),
(23, 'F-Hoone', 'Rannamäe tee', 7.3, 13),
(24, 'Rataskaevu 16', 'Mustamäe tee', 10, 69),
(25, 'Kohvik Moon', 'Rannamäe tee', 3.8, 71),
(26, 'Kohvik Moon', 'Tallinna tee', 1.9, 49),
(27, 'Pegasus', 'Vabaduse puiestee', 2.3, 41),
(28, 'Von Krahli Aed', 'Narva maantee', 4.2, 91),
(29, 'Tuljak', 'Vabaduse puiestee', 4.2, 17),
(30, 'F-Hoone', 'Narva maantee', 5.7, 70),
(31, 'Kaks Kokka', 'Narva maantee', 5, 30),
(32, 'Kohvik Moon', 'Laagna tee', 5.2, 34),
(33, 'Kohvik Moon', 'Paldiski mnt', 3.7, 73),
(34, 'Pegasus', 'Tallinna tee', 4.4, 2),
(35, 'Ö', 'Pärnu mnt', 6.8, 65),
(36, 'F-Hoone', 'Mustamäe tee', 1.2, 45),
(37, 'Tuljak', 'Peterburi tee', 10, 1),
(38, 'NOA', 'Laagna tee', 9.8, 33),
(39, 'Kaks Kokka', 'Rannamäe tee', 8.1, 63),
(40, 'Kohvik Moon', 'Pärnu mnt', 3.1, 43),
(41, 'Ö', 'Vabaduse puiestee', 3.6, 74),
(42, 'NOA', 'Rannamäe tee', 9.8, 25),
(43, 'Leib Resto ja Aed', 'Peterburi tee', 3.1, 89),
(44, 'Rataskaevu 16', 'Mustamäe tee', 5.4, 5),
(45, 'Tuljak', 'Mustamäe tee', 9.8, 1),
(46, 'Ö', 'Tallinna tee', 8.6, 8),
(47, 'Leib Resto ja Aed', 'Tartu maantee', 9.1, 13),
(48, 'Rataskaevu 16', 'Laagna tee', 1.2, 92),
(49, 'Kaks Kokka', 'Peterburi tee', 2.8, 33),
(50, 'NOA', 'Narva maantee', 3.3, 5);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `hinnangud`
--

CREATE TABLE `hinnangud` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kommentaar` varchar(255) NOT NULL,
  `hinnang` int(2) NOT NULL,
  `asutused_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `hinnangud`
--

INSERT INTO `hinnangud` (`id`, `nimi`, `kommentaar`, `hinnang`, `asutused_id`) VALUES
(1, 'Schroeder-Crist', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 3, 72),
(2, 'Koss LLC', 'Mauris ullamcorper purus sit amet nulla.', 1, 11),
(3, 'Mertz-Leffler', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauri', 9, 24),
(4, 'Dooley-D\'Amore', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus', 10, 98),
(5, 'McDermott-Bruen', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 10, 9),
(6, 'Bradtke, Ferry and Sporer', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet', 5, 10),
(7, 'Carroll Inc', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 9, 37),
(8, 'Emard Group', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 5, 4),
(9, 'Terry, Purdy and Stoltenberg', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risu', 7, 51),
(10, 'Morissette Inc', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 4, 89),
(11, 'Yost and Sons', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapi', 7, 25),
(12, 'Sanford LLC', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 6, 21),
(13, 'Runolfsdottir Group', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibu', 4, 22),
(14, 'Berge, Dare and Hettinger', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id', 7, 83),
(15, 'Marks Group', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 2, 24),
(16, 'Wiza and Sons', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tin', 1, 83),
(17, 'Gottlieb, Hand and Armstrong', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 3, 1),
(18, 'Keeling-Kunze', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 9, 99),
(19, 'Kshlerin Group', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', 9, 5),
(20, 'Ruecker-Breitenberg', 'Vivamus vestibulum sagittis sapien.', 10, 29),
(21, 'Wehner-Maggio', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ', 9, 13),
(22, 'Emmerich, Roob and Abshire', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 8, 97),
(23, 'Hammes Group', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea di', 9, 73),
(24, 'Koelpin LLC', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 9, 49),
(25, 'Hane, McClure and Spencer', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 8, 42),
(26, 'Anderson Group', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. S', 4, 38),
(27, 'Reichert Group', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 5, 55),
(28, 'Von and Sons', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. M', 9, 33),
(29, 'Smitham-Friesen', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 4, 41),
(30, 'Schneider Inc', 'Fusce posuere felis sed lacus.', 3, 24),
(31, 'Runolfsdottir, Goyette and Wunsch', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 2, 26),
(32, 'Kuphal, Herzog and VonRueden', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 2, 94),
(33, 'Reichert and Sons', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 7, 92),
(34, 'MacGyver-Hegmann', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 5, 27),
(35, 'Wilderman, Heidenreich and Graham', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. S', 1, 37),
(36, 'Runolfsson and Sons', 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 6, 24),
(37, 'Roob Inc', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 5, 83),
(38, 'Ward, Kris and Schneider', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 1, 38),
(39, 'Erdman-Wuckert', 'Fusce consequat.', 2, 76),
(40, 'Satterfield, Dickens and Stanton', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin ', 2, 93),
(41, 'Pagac and Sons', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 3, 76),
(42, 'Marks and Sons', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero', 1, 48),
(43, 'Tremblay-Harvey', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 1, 63),
(44, 'Becker-Buckridge', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim', 9, 13),
(45, 'Koepp, Metz and Ritchie', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 10, 67),
(46, 'Harris-Runolfsson', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 2, 12),
(47, 'Rolfson-Wisoky', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, conse', 2, 34),
(48, 'Pfeffer, Gerhold and Tromp', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 9, 100),
(49, 'Cruickshank LLC', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio', 5, 58),
(50, 'Goyette LLC', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ', 5, 57),
(51, 'McKenzie-Yost', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliqu', 10, 87),
(52, 'Armstrong Group', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet', 6, 95),
(53, 'Kessler-Kautzer', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibu', 2, 42),
(54, 'Tremblay-Parisian', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 7, 77),
(55, 'Williamson, Labadie and Renner', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risu', 2, 36),
(56, 'Treutel, Senger and Rath', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 10, 79),
(57, 'Hermiston, Berge and Funk', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 7, 67),
(58, 'Reynolds-Bogisich', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 3, 7),
(59, 'Orn, Jacobi and Erdman', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 8, 35),
(60, 'Kerluke Group', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Viv', 3, 26),
(61, 'Mraz, Murazik and Greenholt', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 9, 14),
(62, 'Volkman Group', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', 9, 91),
(63, 'Goyette, Rodriguez and Gutmann', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia C', 5, 88),
(64, 'Schuster-Dickens', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 5, 16),
(65, 'Schmitt-O\'Keefe', 'Aenean lectus. Pellentesque eget nunc.', 4, 70),
(66, 'Morar LLC', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', 5, 20),
(67, 'Pfeffer, McGlynn and Kub', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 7, 74),
(68, 'Morar LLC', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', 1, 93),
(69, 'DuBuque, Braun and Cormier', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 10, 32),
(70, 'Murray, Mante and Greenholt', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vita', 8, 99),
(71, 'Ortiz and Sons', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet ', 3, 8),
(72, 'Robel, Swaniawski and Kertzmann', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 8, 99),
(73, 'Bednar and Sons', 'Aliquam non mauris. Morbi non lectus.', 4, 42),
(74, 'Langosh, Boehm and Johns', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt a', 10, 64),
(75, 'Hamill, Olson and Trantow', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 5, 94),
(76, 'Grady Inc', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ip', 10, 86),
(77, 'Jacobson LLC', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 7, 89),
(78, 'Murray-Orn', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ', 1, 36),
(79, 'Hegmann, Christiansen and Fisher', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum e', 9, 82),
(80, 'Krajcik, Cronin and Blick', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.', 1, 21),
(81, 'Huels Group', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 6, 43),
(82, 'Huels, Senger and Lowe', 'Suspendisse potenti. In eleifend quam a odio.', 3, 22),
(83, 'Larkin Inc', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Don', 5, 18),
(84, 'Lockman, Krajcik and Kuvalis', 'Vivamus tortor.', 10, 56),
(85, 'Stehr and Sons', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 10, 48),
(86, 'Graham-Ebert', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 6, 59),
(87, 'Daugherty, Wintheiser and Gleichner', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ip', 3, 65),
(88, 'Stoltenberg LLC', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in fauci', 6, 78),
(89, 'Gorczany and Sons', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapi', 6, 57),
(90, 'Johnston-Wehner', 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 3, 95),
(91, 'Wolff-Nader', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 2, 50),
(92, 'O\'Hara Inc', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 4, 76),
(93, 'Gleichner-Brekke', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia C', 10, 24),
(94, 'Anderson-Tillman', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 4, 74),
(95, 'O\'Connell, Mohr and Mueller', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ulla', 9, 62),
(96, 'Quitzon, Waters and Marks', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 7, 36),
(97, 'Kihn-Aufderhar', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 8, 23),
(98, 'Goldner, Toy and Rippin', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 5, 1),
(99, 'Cruickshank-Kerluke', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 6, 74),
(100, 'MacGyver, Parisian and Stoltenberg', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 4, 64);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `asutused`
--
ALTER TABLE `asutused`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `asutused`
--
ALTER TABLE `asutused`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
