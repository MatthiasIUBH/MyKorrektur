-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 22. Apr 2017 um 21:26
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `korrektur`
--

CREATE TABLE `korrektur` (
  `ID` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `korrektur`
--

INSERT INTO `korrektur` (`ID`, `email`, `module`, `type`, `description`, `material`) VALUES
(1, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'Bitte Beschreiben Sie den Fehler bzw. den Verbesserungsvorschlag', 'Studienskript'),
(2, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'Bitte Beschreiben Sie den Fehler bzw. den Verbesserungsvorschlag', 'Studienskript'),
(3, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'Bitte Beschreiben Sie den Fehler bzw. den Verbesserungsvorschlag', 'Studienskript'),
(4, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'Bitte Beschreiben Sie den Fehler bzw. den Verbesserungsvorschlag', 'Studienskript'),
(5, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'Bitte Beschreiben Sie den Fehler bzw. den Verbesserungsvorschlag', 'Studienskript'),
(6, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'Bitte Beschreiben Sie den Fehler bzw. den Verbesserungsvorschlag', 'Studienskript'),
(7, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'wsf', 'Studienskript'),
(8, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'sdsd', 'Studienskript'),
(9, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'dd', 'Studienskript'),
(10, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'dddd', 'Studienskript'),
(11, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'dfsdf', 'Studienskript'),
(12, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'dsf', 'Studienskript'),
(13, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'dfsdf', 'Studienskript'),
(14, 'lukas@iubh.de', '2', '2', 'test', '5'),
(15, 'lukas@iubh.de', '2', '2', 'sdfsdf', '2'),
(16, 'lukas@iubh.de', '1', '1', 'df', '1'),
(17, 'lukas@iubh.de', '1', '1', 'sdf', '1'),
(18, 'lukas@iubh.de', '1', '1', 'dfsf', '1'),
(19, 'lukas@iubh.de', '1', '1', 'sdf', '1'),
(20, 'lukas@iubh.de', '1', '1', 'sdfsdf', '1'),
(21, 'lukas@iubh.de', '1', '1', 'dfsdf', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `material`
--

CREATE TABLE `material` (
  `ID` int(11) NOT NULL,
  `material` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `material`
--

INSERT INTO `material` (`ID`, `material`) VALUES
(1, 'Studienskript'),
(2, 'CLIX'),
(3, 'Vodcast'),
(4, 'Podcast'),
(5, 'Prüfung'),
(6, 'Präsentation');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `module`
--

CREATE TABLE `module` (
  `ID` int(11) NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `module`
--

INSERT INTO `module` (`ID`, `module`) VALUES
(1, 'ISEF01'),
(2, 'IWMB01'),
(5, 'BKLR02'),
(6, 'BKLR01');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `type`
--

CREATE TABLE `type` (
  `ID` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `type`
--

INSERT INTO `type` (`ID`, `type`) VALUES
(1, 'Fehler'),
(2, 'Verbesserung'),
(3, 'Idee'),
(4, 'Frage');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `vorname` text NOT NULL,
  `nachname` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rolle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`ID`, `vorname`, `nachname`, `password`, `email`, `rolle`) VALUES
(1, 'matthias', 'nachname1', 'pass1', 'matthias@iubh.de', 'dozent'),
(2, 'Lukas', 'nachname2', 'pass2', 'lukas@iubh.de', 'student');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `korrektur`
--
ALTER TABLE `korrektur`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `korrektur`
--
ALTER TABLE `korrektur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT für Tabelle `material`
--
ALTER TABLE `material`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `module`
--
ALTER TABLE `module`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `type`
--
ALTER TABLE `type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
