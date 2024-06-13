-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Juuni 11, 2024 kell 09:00 EL
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
(1, 'rrrr', 'lorem ipsum', 1, 9),
(2, 'dgdf', 'gfdgdg', 1, 2),
(3, 'dgdf', 'gfdgdg', 1, 5),
(4, 'cvxcvxv', 'lorem ipsum2', 1, 1),
(5, 'gfg', 'dgdgdgdgfdg', 9, 0),
(6, 'dgdf', 'ewrwrewrwerwerwrrwrwrwrwer', 1, 3);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kasutajad`
--

CREATE TABLE `kasutajad` (
  `kasutaja` varchar(50) NOT NULL,
  `parool` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kohvikud`
--

CREATE TABLE `kohvikud` (
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `hinnang` float NOT NULL,
  `korda` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kohvikud`
--

INSERT INTO `kohvikud` (`nimi`, `asukoht`, `hinnang`, `korda`, `id`) VALUES
('Johna', 'Cavaillon', 0, 0, 1),
('Ethelred', 'Chenghuang', 0, 0, 2),
('Glen', 'El Cantón de San Pablo', 0, 0, 3),
('Flossy', 'Pingxiang', 0, 0, 4),
('Anjanette', 'Rosaspata', 0, 0, 5),
('Lorrin', 'Almere Haven', 0, 0, 6),
('Aurel', 'Sekampung', 0, 0, 7),
('Herb', 'La Huerta', 0, 0, 8),
('Alford', 'Émpa', 0, 0, 9),
('Loren', 'Valky', 0, 0, 10),
('Melodie', 'Tracal', 0, 0, 11),
('Betsey', 'Lubuagan', 0, 0, 12),
('Elvyn', 'Mutum', 0, 0, 13),
('Ingrim', 'Радовиш', 0, 0, 14),
('Woodman', 'Stockholm', 0, 0, 15),
('Genvieve', 'Tlučná', 0, 0, 16),
('Nora', 'Lannion', 0, 0, 17),
('Mirabelle', 'Roblin', 0, 0, 18),
('Anabal', 'Kitcharao', 0, 0, 19),
('Vonnie', 'Xiejiaya', 0, 0, 20),
('Delmer', 'Touying', 0, 0, 21),
('Jameson', 'Stryszawa', 0, 0, 22),
('Betta', 'Karvia', 0, 0, 23),
('Maurene', 'Galleh Manda', 0, 0, 24),
('Phillida', 'Bezhta', 0, 0, 25),
('Germana', 'Gamagōri', 0, 0, 26),
('Kimmi', 'Leomil', 0, 0, 27),
('Starla', 'Sufālat Samā’il', 0, 0, 28),
('Vito', 'Korenovsk', 0, 0, 29),
('Monte', 'Brooklyn', 0, 0, 30),
('fdgdgdgd', 'dgfdgg', 5, 1, 31);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT tabelile `kohvikud`
--
ALTER TABLE `kohvikud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
