-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Apr 2017 um 22:16
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
(10, 'lukas@iubh.de', 'ISEF01', 'Fehler', 'dddd', 'Studienskript');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `testtabelle`
--

CREATE TABLE `testtabelle` (
  `ID` int(11) NOT NULL,
  `vorname` text NOT NULL,
  `nachname` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rolle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `testtabelle`
--

INSERT INTO `testtabelle` (`ID`, `vorname`, `nachname`, `password`, `email`, `rolle`) VALUES
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
-- Indizes für die Tabelle `testtabelle`
--
ALTER TABLE `testtabelle`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `korrektur`
--
ALTER TABLE `korrektur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
