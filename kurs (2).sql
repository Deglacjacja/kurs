-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Paź 2019, 13:57
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kurs`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autotabela`
--

CREATE TABLE `autotabela` (
  `id` int(10) UNSIGNED NOT NULL,
  `idStudent` int(10) UNSIGNED NOT NULL,
  `idKolor` int(11) UNSIGNED NOT NULL,
  `idModel` int(10) UNSIGNED NOT NULL,
  `cena` decimal(7,2) NOT NULL,
  `sprzedany` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `autotabela`
--

INSERT INTO `autotabela` (`id`, `idStudent`, `idKolor`, `idModel`, `cena`, `sprzedany`) VALUES
(1, 2, 1, 6, '10000.00', 1),
(2, 4, 2, 5, '7500.00', 0),
(3, 5, 3, 4, '2000.00', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kolor`
--

CREATE TABLE `kolor` (
  `id` int(10) UNSIGNED NOT NULL,
  `kolor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `kolor`
--

INSERT INTO `kolor` (`id`, `kolor`) VALUES
(1, 'czerwony'),
(2, 'niebieski'),
(3, 'zielony');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `marka`
--

CREATE TABLE `marka` (
  `id` int(10) UNSIGNED NOT NULL,
  `marka` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `marka`
--

INSERT INTO `marka` (`id`, `marka`) VALUES
(1, 'ferrari'),
(2, 'fiat'),
(3, 'ford');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `model`
--

CREATE TABLE `model` (
  `id` int(10) UNSIGNED NOT NULL,
  `model` varchar(20) NOT NULL,
  `idMarka` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `model`
--

INSERT INTO `model` (`id`, `model`, `idMarka`) VALUES
(1, 'seicento', 2),
(2, 'california', 1),
(3, 'mondeo', 3),
(4, 'escort', 3),
(5, 'Ka', 3),
(6, '500', 2),
(7, 'bravo', 2),
(8, 'testarossa', 1),
(9, 'enzo', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) NOT NULL,
  `surname` varchar(40) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `student`
--

INSERT INTO `student` (`id`, `imie`, `surname`, `city`) VALUES
(1, 'Janusz', 'Kowalski', 'Poznań'),
(2, 'Anna', 'Kowal', 'Gniezno'),
(3, 'Tomasz', 'Nowak', 'Gniezno'),
(4, 'Grażyna', 'Komin', 'Gdańsk'),
(5, 'Kamila', 'Koral', 'Gdańsk');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `autotabela`
--
ALTER TABLE `autotabela`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idStudent` (`idStudent`),
  ADD KEY `idKolor` (`idKolor`),
  ADD KEY `idModel` (`idModel`);

--
-- Indexes for table `kolor`
--
ALTER TABLE `kolor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idMarka` (`idMarka`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `autotabela`
--
ALTER TABLE `autotabela`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `kolor`
--
ALTER TABLE `kolor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `marka`
--
ALTER TABLE `marka`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `model`
--
ALTER TABLE `model`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `autotabela`
--
ALTER TABLE `autotabela`
  ADD CONSTRAINT `autotabela_ibfk_1` FOREIGN KEY (`idStudent`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `autotabela_ibfk_3` FOREIGN KEY (`idKolor`) REFERENCES `kolor` (`id`),
  ADD CONSTRAINT `autotabela_ibfk_4` FOREIGN KEY (`idModel`) REFERENCES `model` (`id`);

--
-- Ograniczenia dla tabeli `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`idMarka`) REFERENCES `marka` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
