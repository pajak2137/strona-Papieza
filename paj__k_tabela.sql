-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Wrz 2022, 10:08
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pająk tabela`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownivy`
--

CREATE TABLE `pracownivy` (
  `ID` int(11) NOT NULL,
  `BENEK` varchar(255) NOT NULL,
  `ZENEK` varchar(255) DEFAULT NULL,
  `GIENEK` varchar(255) DEFAULT NULL,
  `JACEK` varchar(255) DEFAULT NULL,
  `WACEK` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `robota`
--

CREATE TABLE `robota` (
  `ID` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text DEFAULT NULL,
  `id_odbioorcy` int(11) DEFAULT NULL,
  `wiek` text DEFAULT NULL,
  `Adres` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `robota`
--

INSERT INTO `robota` (`ID`, `imie`, `nazwisko`, `id_odbioorcy`, `wiek`, `Adres`) VALUES
(12, 'BENEK', 'BENKOWSKI', 123, '18', 'PRZODKOWO');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowisko`
--

CREATE TABLE `stanowisko` (
  `ID` int(11) NOT NULL,
  `kucharz` varchar(255) NOT NULL,
  `nauczyciel` varchar(255) DEFAULT NULL,
  `policjant` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownivy`
--
ALTER TABLE `pracownivy`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `robota`
--
ALTER TABLE `robota`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `stanowisko`
--
ALTER TABLE `stanowisko`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pracownivy`
--
ALTER TABLE `pracownivy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `robota`
--
ALTER TABLE `robota`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `stanowisko`
--
ALTER TABLE `stanowisko`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `pracownivy`
--
ALTER TABLE `pracownivy`
  ADD CONSTRAINT `pracownivy_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `robota` (`ID`);

--
-- Ograniczenia dla tabeli `stanowisko`
--
ALTER TABLE `stanowisko`
  ADD CONSTRAINT `stanowisko_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `pracownivy` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
