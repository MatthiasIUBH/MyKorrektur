-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Mai 2017 um 22:20
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
(59, '2017-05-02 22:16:00', 'Status geändert: 1 &rarr; 3\r\nText: wird nicht bearbeitet!', 34);

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
(34, '84', '1', 'geht nicht! Daten fehlen!', '4', 1, 3, 4),
(35, '15', '3', 'Prüfung bitte ausfallen lassen!', '5', 1, 1, 4);

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
  `userID` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `module`
--

INSERT INTO `module` (`ID`, `module`, `userID`, `description`) VALUES
(10, 'BBAK01', 4, 'Bachelorarbeit'),
(11, 'BBAK02', 4, 'Kolloquium'),
(12, 'BBLO01', 4, 'Beschaffung und Logistik'),
(13, 'BBWL01', 4, 'BWL I (Einführung)'),
(14, 'BBWL02', 4, 'BWL II (Vertiefung)'),
(15, 'BDMG01', 4, 'Dienstleistungsmanagement'),
(16, 'BFIN01', 4, 'Finanzierung I (Einführung)'),
(17, 'BFIN02', 4, 'Finanzierung II (Vertiefung)'),
(18, 'BKLR01', 4, 'Kosten- und Leistungsrechnung I (Einführung)'),
(19, 'BKLR02', 4, 'Kosten- und Leistungsrechnung II (Vertiefung)'),
(20, 'BMAR01', 4, 'Marketing I (Einführung)'),
(21, 'BMAR02', 4, 'Marketing II (Vertiefung)'),
(22, 'BPUE01', 4, 'Planen und Entscheiden'),
(23, 'BREC01-01', 4, 'Recht I (Einführung)'),
(24, 'BREC02-01', 4, 'Recht II (Vertiefung)'),
(25, 'BUFG01', 4, 'Unternehmensführung'),
(26, 'BUGR01', 4, 'Unternehmensgründung und Innovationsmanagement'),
(27, 'BURE01', 4, 'Unternehmensrecht'),
(28, 'BWAF01', 4, 'Advanced Leadership I (Einführung)'),
(29, 'BWAF02', 4, 'Advanced Leadership II (Vertiefung)'),
(30, 'BWAV01', 4, 'Angewandter Vertrieb I (Einführung)'),
(31, 'BWAV02', 4, 'Angewandter Vertrieb II (Vertiefung)'),
(32, 'BWBC01', 4, 'Business Controlling I (Einführung)'),
(33, 'BWBC02', 4, 'Business Controlling II (Vertiefung)'),
(34, 'BWCN01', 4, 'Business Consulting I (Einführung)'),
(35, 'BWCN02', 4, 'Business Consulting II (Vertiefung)'),
(36, 'BWEC01', 4, 'E-Commerce I (Einführung)'),
(37, 'BWEC02', 4, 'E-Commerce II (Vertiefung)'),
(38, 'BWEM01', 4, 'Eventmanagement I (Einführung)'),
(39, 'BWEM02', 4, 'Eventmanagement II (Vertiefung)'),
(40, 'BWFS01', 4, 'Financial Services Management I'),
(41, 'BWFS02', 4, 'Financial Services Management II'),
(42, 'BWGM01', 4, 'Einführung in das Gesundheitsmanagement'),
(43, 'BWGM02', 4, 'Rahmenbedingungen des Gesundheitsmarktes'),
(44, 'BWHO01', 4, 'Hotelmanagement I (Einführung)'),
(45, 'BWHO02', 4, 'Hotelmanagement II (Vertiefung)'),
(46, 'BWIM01', 4, 'Immobilienmanagement I'),
(47, 'BWIM02', 4, 'Immobilienmanagement II'),
(48, 'BWINT01', 4, 'International Management'),
(49, 'BWIR01', 4, 'Einführung in das wissenschaftliche Arbeiten'),
(50, 'BWIR02', 4, 'Selbst- und Zeitmanagement'),
(51, 'BWLM01', 4, 'Luftverkehrsmanagement I'),
(52, 'BWLM02', 4, 'Luftverkehrsmanagement II'),
(53, 'BWMI01', 4, 'Internationales Marketing'),
(54, 'BWMI02', 4, 'Internationales Brand Management'),
(55, 'BWSC01', 4, 'Supply Chain Management I'),
(56, 'BWSC02', 4, 'Supply Chain Management II'),
(57, 'BWSM01', 4, 'Servicemanagement I (Einführung)'),
(58, 'BWSM02', 4, 'Servicemanagement II (Vertiefung)'),
(59, 'BWTO01', 4, 'Tourismusmanagement I (Einführung)'),
(60, 'BWTO02', 4, 'Tourismusmanagement II (Vertiefung)'),
(61, 'DLBISIC01', 4, 'Einführung in Datenschutz und IT-Sicherheit'),
(62, 'DLBISIC02', 4, 'Kryptografische Verfahren'),
(63, 'DLSPENI01', 4, 'Fremdsprache Englisch'),
(64, 'IAMG01', 4, 'IT-Architekturmanagement'),
(65, 'IDBS01', 4, 'Datenmodellierung und Datenbanksysteme'),
(66, 'IGIS01', 4, 'Grundlagen der industriellen Softwaretechnik'),
(67, 'IMT101', 4, 'Mathematik für Wirtschaftsinformatiker I'),
(68, 'IMT102-01', 4, 'Mathematik für Wirtschaftsinformatiker II'),
(69, 'IOBP01', 4, 'Grundlagen der objektorientierten Programmierung mit Java'),
(70, 'IOBP02', 4, 'Datenstrukturen und Java-Klassenbibliothek'),
(71, 'IPMG01', 4, 'IT-Projektmanagement'),
(72, 'IPWA01', 4, 'Programmierung von Web-Anwendungsoberflächen'),
(73, 'IPWA02', 4, 'Programmierung von industriellen Informationssystemen mit Java EE'),
(74, 'IQSS01', 4, 'Qualitätssicherung im SW-Prozess'),
(75, 'IREN01', 4, 'Requirements Engineering'),
(76, 'ISEF01', 4, 'Software Engineering-Fallstudie'),
(77, 'ISPE01', 4, 'Spezifikationen'),
(78, 'ISSE01', 4, 'Seminar Software Engineering'),
(79, 'IWBI01', 4, 'Business Intelligence I'),
(80, 'IWBI02', 4, 'Business Intelligence II'),
(81, 'IWMB01', 4, 'Mobile Software Engineering am Beispiel der Android-Plattform'),
(82, 'IWMB02', 4, 'Fallstudie Mobile Software Engineering'),
(83, 'IWNF01', 4, 'Techniken und Methoden der agilen SW-Entwicklung'),
(84, 'IWNF02', 4, 'Fallstudie Agiles Software Engineering'),
(85, 'IWSM01', 4, 'IT-Servicemanagement I'),
(86, 'IWSM02', 4, 'IT-Servicemanagement II'),
(87, 'SPEN', 4, 'Fremdsprachen: Englisch A1–C1'),
(88, 'SPFR', 4, 'Fremdsprachen: Französisch A1–C1'),
(89, 'SPIT', 4, 'Fremdsprachen: Italienisch A1–B2'),
(90, 'SPSP', 4, 'Fremdsprachen: Spanisch A1–C1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status`
--

CREATE TABLE `status` (
  `ID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `final` tinyint(1) NOT NULL,
  `selectable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `status`
--

INSERT INTO `status` (`ID`, `status`, `final`, `selectable`) VALUES
(1, 'Unbearbeitet', 0, 0),
(2, 'in Arbeit', 0, 1),
(3, 'Abgelehnt', 1, 1),
(4, 'Wartend', 0, 1),
(5, 'Geschlossen', 1, 1),
(6, 'Zwischeninfo', 0, 1),
(7, 'Archiviert', 1, 1);

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
(1, 'Matthias', 'Will', 'Test1234!', 'Matthias.Will@iubh-fernstudium.de', 2),
(2, 'Lukas', 'Bochmann', 'Test1234!', 'Lukas.Bochmann@iubh-fernstudium.de', 2),
(3, 'Linda', 'Braun', 'Test1234!', 'Linda.Braun@iubh-fernstudium.de', 2),
(4, 'Studierendensekretariat', '', 'iubh', 'studierendensekretariat@iubh.de', 1),
(5, 'Michael', 'Koczulla', 'Test1234!', 'Koczulla.Michael@iubh-fernstudium.de', 2);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT für Tabelle `korrektur`
--
ALTER TABLE `korrektur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT für Tabelle `material`
--
ALTER TABLE `material`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `module`
--
ALTER TABLE `module`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `userrolle`
--
ALTER TABLE `userrolle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
