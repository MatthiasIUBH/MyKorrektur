-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 27. Apr 2017 um 19:51
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mykorrektur`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bearbeitung`
--

CREATE TABLE `bearbeitung` (
  `ID` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` varchar(10000) NOT NULL,
  `korrekturID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `bearbeitung`
--

INSERT INTO `bearbeitung` (`ID`, `date`, `text`, `korrekturID`) VALUES
(11, '2017-04-26 20:45:14', 'das ist ein test', 23),
(12, '2017-04-26 20:52:36', 'asdasd', 26),
(13, '2017-04-26 20:52:48', 'das ist 30', 30),
(14, '2017-04-26 20:54:23', 'asdasd', 27),
(15, '2017-04-26 21:03:20', 'dasdsad', 26),
(16, '2017-04-26 21:03:39', 'dfsdf', 25),
(17, '2017-04-26 21:08:49', 'asdad', 25),
(18, '2017-04-26 21:13:37', 'Status geändert: Unbearbeitet --> 3', 27),
(19, '2017-04-26 21:13:37', 'dddd', 27),
(20, '2017-04-26 21:15:42', 'Status geändert: Unbearbeitet --> 4', 28),
(21, '2017-04-26 21:15:43', 'adasd', 28),
(22, '2017-04-27 18:45:27', 'Status geändert: Unbearbeitet --> 4', 24),
(23, '2017-04-27 18:45:27', 'fsdf', 24),
(24, '2017-04-27 19:50:31', 'Status geändert: in Arbeit &rarr; 5', 25),
(25, '2017-04-27 19:50:31', 'sdfsdf', 25);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `korrektur`
--

CREATE TABLE `korrektur` (
  `ID` int(11) NOT NULL,
  `moduleID` varchar(255) NOT NULL,
  `typeID` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `materialID` varchar(255) NOT NULL,
  `userStudentID` int(11) NOT NULL,
  `statusID` int(11) NOT NULL,
  `userDozentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `korrektur`
--

INSERT INTO `korrektur` (`ID`, `moduleID`, `typeID`, `description`, `materialID`, `userStudentID`, `statusID`, `userDozentID`) VALUES
(24, '1', '1', 'text', '1', 2, 4, 1),
(25, '1', '1', 'sdfsdfsdf', '1', 2, 5, 1),
(26, '2', '2', 'sdfdsfsdf', '2', 2, 1, 1),
(27, '1', '1', 'asdasd', '2', 2, 3, 1),
(28, '1', '1', 'sdfsdf', '1', 2, 4, 1),
(29, '1', '1', 'dfsf', '1', 2, 1, 1),
(30, '1', '1', 'das ist ein test', '2', 2, 1, 1),
(31, '2', '1', 'test für linda', '4', 2, 1, 1);

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
  `module` varchar(255) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `module`
--

INSERT INTO `module` (`ID`, `module`, `userID`) VALUES
(1, 'ISEF01', 1),
(2, 'IWMB01', 1),
(5, 'BKLR02', 1),
(6, 'BKLR01', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status`
--

CREATE TABLE `status` (
  `ID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `status`
--

INSERT INTO `status` (`ID`, `status`) VALUES
(1, 'Unbearbeitet'),
(2, 'in Arbeit'),
(3, 'Abgelehnt'),
(4, 'Wartend'),
(5, 'Geschlossen'),
(6, 'Zwischeninfo'),
(7, 'Archiviert');

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
  `userrolleID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`ID`, `vorname`, `nachname`, `password`, `email`, `userrolleID`) VALUES
(1, 'Matthias', 'nachname1', 'pass1', 'matthias@iubh.de', 1),
(2, 'Lukas', 'nachname2', 'pass2', 'lukas@iubh.de', 2),
(3, 'Linda', 'Linda', 'pass3', 'linda@iubh.de', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userrolle`
--

CREATE TABLE `userrolle` (
  `ID` int(11) NOT NULL,
  `rolle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `userrolle`
--

INSERT INTO `userrolle` (`ID`, `rolle`) VALUES
(1, 'Dozent'),
(2, 'Student');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `bearbeitung`
--
ALTER TABLE `bearbeitung`
  ADD PRIMARY KEY (`ID`);

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
-- Indizes für die Tabelle `status`
--
ALTER TABLE `status`
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
-- Indizes für die Tabelle `userrolle`
--
ALTER TABLE `userrolle`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `bearbeitung`
--
ALTER TABLE `bearbeitung`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT für Tabelle `korrektur`
--
ALTER TABLE `korrektur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
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
-- AUTO_INCREMENT für Tabelle `status`
--
ALTER TABLE `status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `type`
--
ALTER TABLE `type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `userrolle`
--
ALTER TABLE `userrolle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
