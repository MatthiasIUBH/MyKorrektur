-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for mykorrektur
CREATE DATABASE IF NOT EXISTS `mykorrektur` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mykorrektur`;

-- Dumping structure for table mykorrektur.bearbeitung
CREATE TABLE IF NOT EXISTS `bearbeitung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` varchar(10000) NOT NULL,
  `korrekturID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_bearbeitung_korrektur` (`korrekturID`),
  CONSTRAINT `FK_bearbeitung_korrektur` FOREIGN KEY (`korrekturID`) REFERENCES `korrektur` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

-- Dumping data for table mykorrektur.bearbeitung: ~49 rows (approximately)
/*!40000 ALTER TABLE `bearbeitung` DISABLE KEYS */;
INSERT INTO `bearbeitung` (`ID`, `date`, `text`, `korrekturID`) VALUES
	(59, '2017-05-02 22:16:00', 'Status geändert: 1 &rarr; 3\r\nText: wird nicht bearbeitet!', 34),
	(60, '2017-05-04 19:42:02', 'Status geändert: 1 &rarr; 6\r\nText: Das ist Info 1', 36),
	(61, '2017-05-04 19:42:11', 'Text: Das ist Info 2', 36),
	(62, '2017-05-04 19:42:22', 'Text: Das ist info 3', 36),
	(63, '2017-05-04 19:42:34', 'Status geändert: 6 &rarr; 5\r\nText: Bearbeitung erledigt!', 36),
	(64, '2017-05-04 20:09:45', 'Status geändert: 1 &rarr; 6\r\nText: Zwischeninfo1', 37),
	(65, '2017-05-04 20:10:25', 'Text: Zwischeninfo2', 37),
	(66, '2017-05-04 20:10:57', 'Status geändert: 6 &rarr; 3\r\nText: abgelehnt', 37),
	(67, '2017-05-04 20:12:41', 'Status geändert: 1 &rarr; 4\r\nText: erwerwer', 35),
	(68, '2017-05-04 21:40:57', 'Status geändert: Wartend &rarr; Zwischeninfo\r\nText: fsfsdfsdf', 35),
	(69, '2017-05-04 22:39:21', 'Status geändert: Zwischeninfo &rarr; in Arbeit\r\nText: sdsdasd', 35),
	(70, '2017-05-04 22:48:06', 'Status geändert: in Arbeit &rarr; Wartend\r\nText: sdasdad', 35),
	(71, '2017-05-13 23:33:23', 'Status geändert: Unbearbeitet &rarr; in Arbeit\r\nText: wir schauen uns das an!', 39),
	(72, '2017-05-13 23:33:35', 'Status geändert: Wartend &rarr; Zwischeninfo\r\nText: ist in arbeit!', 35),
	(73, '2017-05-13 23:33:45', 'Status geändert: Zwischeninfo &rarr; Geschlossen\r\nText: erledigt', 35),
	(74, '2017-05-13 23:36:11', 'Status geändert: Unbearbeitet &rarr; Abgelehnt\r\nText: vorschlag abgelehnt!', 40),
	(75, '2017-05-13 23:40:57', 'Status geändert: Unbearbeitet &rarr; in Arbeit\r\nText: check!', 38),
	(76, '2017-05-13 23:42:10', 'Status geändert: in Arbeit &rarr; Zwischeninfo\r\nText: check2', 38),
	(77, '2017-05-14 19:48:47', 'Text: tet', 38),
	(78, '2017-05-29 20:05:35', 'Status geändert: Unbearbeitet &rarr; Abgelehnt\r\nText: yxcyxc', 45),
	(79, '2017-05-29 20:15:50', 'Status geändert: Unbearbeitet &rarr; Abgelehnt\r\nText: Nö', 46),
	(80, '2017-05-29 20:16:05', 'Status geändert: Abgelehnt &rarr; Archiviert\r\nText: ok ok', 46),
	(81, '2017-05-29 20:16:12', 'Status geändert: Archiviert &rarr; Abgelehnt\r\nText: jlk', 46),
	(82, '2017-05-29 22:25:52', 'Status geändert: Unbearbeitet &rarr; Geschlossen\r\nText: Das ist richtig. Wird korrigiert.', 47),
	(83, '2017-05-30 12:41:53', 'Status geändert: Unbearbeitet &rarr; in Arbeit\r\nText: wird geprüft', 48),
	(84, '2017-05-30 12:44:48', 'Status geändert: in Arbeit &rarr; Geschlossen\r\nText: baum', 48),
	(85, '2017-05-30 19:29:46', 'Status geändert: Unbearbeitet &rarr; Abgelehnt\r\nText: Kurzbeschreibung nicht ausreichend', 50),
	(86, '2017-05-30 19:39:51', 'Status geändert: Abgelehnt &rarr; in Arbeit\r\nText: Wird noch ausführlich kontrolliert', 50),
	(87, '2017-05-30 19:40:12', 'Status geändert: in Arbeit &rarr; Wartend\r\nText: Wird aufgeschoben', 50),
	(88, '2017-05-30 20:06:29', 'Status geändert: Unbearbeitet &rarr; Abgelehnt\r\nText: bla', 53),
	(89, '2017-05-30 20:07:09', 'Status geändert: Wartend &rarr; Geschlossen\r\nText: Guter Einwand', 50),
	(90, '2017-05-30 20:07:29', 'Status geändert: Unbearbeitet &rarr; in Arbeit\r\nText: Dauert noch', 55),
	(91, '2017-05-30 20:13:00', 'Status geändert: Unbearbeitet &rarr; in Arbeit\r\nText: Vielen Dank', 57),
	(92, '2017-05-30 20:13:41', 'Status geändert: Unbearbeitet &rarr; Wartend\r\nText: blablablabla', 56),
	(93, '2017-05-30 20:22:35', 'Status geändert: Unbearbeitet &rarr; in Arbeit\r\nText: Ist kein Fehler', 60),
	(94, '2017-05-30 20:22:45', 'Status geändert: Unbearbeitet &rarr; Zwischeninfo\r\nText: makes me funny', 61),
	(95, '2017-05-30 20:25:43', 'Status geändert: in Arbeit &rarr; Wartend\r\nText: Oh doch', 60),
	(96, '2017-05-30 20:28:25', 'Status geändert: Wartend &rarr; in Arbeit\r\nText: Test', 60),
	(97, '2017-05-30 20:28:37', 'Status geändert: Unbearbeitet &rarr; in Arbeit\r\nText: Hallo', 62),
	(98, '2017-05-30 20:45:25', 'Status geändert: Unbearbeitet &rarr; Abgelehnt\r\nText: geht nicht!', 63),
	(99, '2017-05-30 20:46:32', 'Status geändert: Unbearbeitet &rarr; Archiviert\r\nText: sdadasd', 64),
	(100, '2017-06-05 14:08:12', 'Status geändert: in Arbeit &rarr; Abgelehnt\r\nText: Kein Wunsch mehr.', 57),
	(101, '2017-06-05 14:10:44', 'Status geändert: Abgelehnt &rarr; Zwischeninfo\r\nText: Ist nur ein Test\r\n', 57),
	(102, '2017-06-24 11:14:07', 'Status geändert: Unbearbeitet &rarr; in Arbeit\r\nText: Wird bearbeitet', 52),
	(103, '2017-06-24 11:14:33', 'Status geändert: in Arbeit &rarr; Archiviert\r\nText: Super Idee, wird umgesetzt. Danke für die Meldung.', 52),
	(104, '2017-06-24 11:14:44', 'Status geändert: Archiviert &rarr; in Arbeit\r\nText: nl', 52),
	(105, '2017-06-26 20:05:20', 'Status geändert: Unbearbeitet &rarr; Abgelehnt\r\nText: korrektur abgelehnt!', 67),
	(106, '2017-06-26 20:36:04', 'Status geändert: Unbearbeitet &rarr; in Arbeit\r\nText: ich schau mir das mal an', 68),
	(107, '2017-06-26 20:37:20', 'Status geändert: in Arbeit &rarr; Geschlossen\r\nText: Erledig, Fehler behoben', 68),
	(108, '2017-06-29 19:14:50', 'Status geändert: in Arbeit &rarr; Abgelehnt\r\nText: Test', 60),
	(109, '2017-06-29 19:15:09', 'Status geändert: in Arbeit &rarr; Wartend\r\nText: Dauert noch', 55),
	(110, '2017-06-29 19:15:24', 'Status geändert: Unbearbeitet &rarr; Archiviert\r\nText: Mal sehen', 54);
/*!40000 ALTER TABLE `bearbeitung` ENABLE KEYS */;

-- Dumping structure for table mykorrektur.korrektur
CREATE TABLE IF NOT EXISTS `korrektur` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `moduleID` int(11) NOT NULL,
  `typeID` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `materialID` int(11) NOT NULL,
  `userStudentID` int(11) NOT NULL,
  `statusID` int(11) NOT NULL,
  `userDozentID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_korrektur_module` (`moduleID`),
  KEY `FK_korrektur_type` (`typeID`),
  KEY `FK_korrektur_material` (`materialID`),
  KEY `FK_korrektur_status` (`statusID`),
  KEY `FK_korrektur_user` (`userStudentID`),
  KEY `FK_korrektur_user_2` (`userDozentID`),
  CONSTRAINT `FK_korrektur_material` FOREIGN KEY (`materialID`) REFERENCES `material` (`ID`),
  CONSTRAINT `FK_korrektur_module` FOREIGN KEY (`moduleID`) REFERENCES `module` (`ID`),
  CONSTRAINT `FK_korrektur_status` FOREIGN KEY (`statusID`) REFERENCES `status` (`ID`),
  CONSTRAINT `FK_korrektur_type` FOREIGN KEY (`typeID`) REFERENCES `type` (`ID`),
  CONSTRAINT `FK_korrektur_user` FOREIGN KEY (`userStudentID`) REFERENCES `user` (`ID`),
  CONSTRAINT `FK_korrektur_user_2` FOREIGN KEY (`userDozentID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- Dumping data for table mykorrektur.korrektur: ~35 rows (approximately)
/*!40000 ALTER TABLE `korrektur` DISABLE KEYS */;
INSERT INTO `korrektur` (`ID`, `moduleID`, `typeID`, `description`, `materialID`, `userStudentID`, `statusID`, `userDozentID`) VALUES
	(34, 84, 1, 'geht nicht! Daten fehlen!', 4, 1, 3, 4),
	(35, 15, 3, 'Prüfung bitte ausfallen lassen!', 5, 1, 5, 4),
	(36, 12, 1, 'Auf Seite 32 ist ein Fehler der nicht auf den ersten Blick ersichtlich ist. Es geht darum das X ungleich Y ist. Aber das ist falsch, es müsste eigentlich Y gleich Z heißen. Bitte korrigieren!', 2, 1, 5, 4),
	(37, 20, 1, 'Das ist der test von heute', 1, 1, 3, 4),
	(38, 12, 2, 'Das geht halt nicht', 5, 1, 6, 4),
	(39, 13, 2, 'sdasdasd', 3, 1, 2, 4),
	(40, 13, 2, 'sfsdfsdfsdf', 3, 1, 3, 4),
	(41, 14, 2, 'asdadasdasd', 4, 1, 1, 4),
	(42, 11, 3, 'sdfsfsdf', 4, 1, 1, 4),
	(43, 16, 1, 'Seite 37 Zeile 14 ist ein Fehler - TEST ', 1, 5, 1, 4),
	(44, 90, 1, 'fsdfsdf', 2, 1, 1, 1),
	(45, 90, 2, 'test2', 3, 1, 3, 1),
	(46, 10, 1, 'Lektion 3 Frage 5 ist fehlerhaft', 2, 2, 3, 2),
	(47, 71, 1, 'Seite 17, Zeile 26 Fehler - TEST', 1, 5, 5, 5),
	(48, 17, 1, 'Frage 3 der Prüfung vom 15.7 war fehlerhaft formuliert', 5, 2, 5, 2),
	(49, 23, 1, 'asdf', 2, 2, 1, 2),
	(50, 78, 1, 'Nicht vorhanden. Böser Fehler!', 1, 3, 5, 5),
	(51, 10, 2, 'Vielleicht ein Vodcast dazu wo alle kritischen Fragen geklärt werden?', 3, 3, 1, 2),
	(52, 27, 3, 'Kann man auch weglassen', 5, 3, 2, 2),
	(53, 22, 4, 'Muss das sein?', 6, 3, 3, 2),
	(54, 63, 2, 'kann eh jeder, einfach weglassen', 4, 3, 7, 5),
	(55, 67, 2, 'also nochmal der test hier gerade', 1, 3, 4, 5),
	(56, 10, 1, 'Michas Wunschticket', 1, 3, 4, 2),
	(57, 86, 2, 'Michas Wunschticket mit I', 4, 3, 6, 5),
	(58, 90, 4, 'michas wunschticket', 4, 1, 1, 1),
	(59, 90, 3, 'sfsdfsdf', 4, 1, 1, 1),
	(60, 64, 3, 'Fehler 1', 7, 3, 3, 5),
	(61, 25, 4, 'Money money money...', 2, 3, 6, 2),
	(62, 63, 2, 'lieber chinesisch!', 6, 3, 2, 5),
	(63, 90, 2, 'dfdsfdsf', 4, 1, 3, 1),
	(64, 90, 4, 'adasdsad', 4, 1, 7, 1),
	(65, 90, 4, 'Ok, scheint wirklich nur mein Firefox zu sein, auf der Arbeit gehts auch ^^', 3, 3, 1, 1),
	(66, 75, 1, 'Die ist nur eine kleiner wie viel in der Korrekturübersicht angezeigt wird. Deswegen schreibe ich hier einfach nur Text um zu sehen wie sich die Korrekturübersicht bei längerem Text verhält. TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST', 1, 5, 1, 5),
	(67, 90, 1, 'test', 2, 1, 3, 1),
	(68, 90, 1, 'Spanisch ist toll', 1, 1, 5, 1);
/*!40000 ALTER TABLE `korrektur` ENABLE KEYS */;

-- Dumping structure for table mykorrektur.material
CREATE TABLE IF NOT EXISTS `material` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table mykorrektur.material: ~6 rows (approximately)
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` (`ID`, `material`) VALUES
	(1, 'Studienskript'),
	(2, 'CLIX'),
	(3, 'Vodcast'),
	(4, 'Podcast'),
	(5, 'Prüfung'),
	(6, 'Präsentation'),
	(7, 'Tutorium');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;

-- Dumping structure for table mykorrektur.module
CREATE TABLE IF NOT EXISTS `module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `userID` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_module_user` (`userID`),
  CONSTRAINT `FK_module_user` FOREIGN KEY (`userID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

-- Dumping data for table mykorrektur.module: ~7 rows (approximately)
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` (`ID`, `module`, `userID`, `description`) VALUES
	(10, 'BBAK01', 2, 'Bachelorarbeit'),
	(11, 'BBAK02', 2, 'Kolloquium'),
	(12, 'BBLO01', 2, 'Beschaffung und Logistik'),
	(13, 'BBWL01', 2, 'BWL I (Einführung)'),
	(14, 'BBWL02', 2, 'BWL II (Vertiefung)'),
	(15, 'BDMG01', 2, 'Dienstleistungsmanagement'),
	(16, 'BFIN01', 2, 'Finanzierung I (Einführung)'),
	(17, 'BFIN02', 2, 'Finanzierung II (Vertiefung)'),
	(18, 'BKLR01', 2, 'Kosten- und Leistungsrechnung I (Einführung)'),
	(19, 'BKLR02', 2, 'Kosten- und Leistungsrechnung II (Vertiefung)'),
	(20, 'BMAR01', 2, 'Marketing I (Einführung)'),
	(21, 'BMAR02', 2, 'Marketing II (Vertiefung)'),
	(22, 'BPUE01', 2, 'Planen und Entscheiden'),
	(23, 'BREC01-01', 2, 'Recht I (Einführung)'),
	(24, 'BREC02-01', 2, 'Recht II (Vertiefung)'),
	(25, 'BUFG01', 2, 'Unternehmensführung'),
	(26, 'BUGR01', 2, 'Unternehmensgründung und Innovationsmanagement'),
	(27, 'BURE01', 2, 'Unternehmensrecht'),
	(28, 'BWAF01', 2, 'Advanced Leadership I (Einführung)'),
	(29, 'BWAF02', 2, 'Advanced Leadership II (Vertiefung)'),
	(30, 'BWAV01', 2, 'Angewandter Vertrieb I (Einführung)'),
	(31, 'BWAV02', 2, 'Angewandter Vertrieb II (Vertiefung)'),
	(32, 'BWBC01', 2, 'Business Controlling I (Einführung)'),
	(33, 'BWBC02', 2, 'Business Controlling II (Vertiefung)'),
	(34, 'BWCN01', 2, 'Business Consulting I (Einführung)'),
	(35, 'BWCN02', 2, 'Business Consulting II (Vertiefung)'),
	(36, 'BWEC01', 2, 'E-Commerce I (Einführung)'),
	(37, 'BWEC02', 2, 'E-Commerce II (Vertiefung)'),
	(38, 'BWEM01', 2, 'Eventmanagement I (Einführung)'),
	(39, 'BWEM02', 2, 'Eventmanagement II (Vertiefung)'),
	(40, 'BWFS01', 2, 'Financial Services Management I'),
	(41, 'BWFS02', 2, 'Financial Services Management II'),
	(42, 'BWGM01', 2, 'Einführung in das Gesundheitsmanagement'),
	(43, 'BWGM02', 2, 'Rahmenbedingungen des Gesundheitsmarktes'),
	(44, 'BWHO01', 2, 'Hotelmanagement I (Einführung)'),
	(45, 'BWHO02', 2, 'Hotelmanagement II (Vertiefung)'),
	(46, 'BWIM01', 2, 'Immobilienmanagement I'),
	(47, 'BWIM02', 2, 'Immobilienmanagement II'),
	(48, 'BWINT01', 2, 'International Management'),
	(49, 'BWIR01', 2, 'Einführung in das wissenschaftliche Arbeiten'),
	(50, 'BWIR02', 2, 'Selbst- und Zeitmanagement'),
	(51, 'BWLM01', 2, 'Luftverkehrsmanagement I'),
	(52, 'BWLM02', 2, 'Luftverkehrsmanagement II'),
	(53, 'BWMI01', 2, 'Internationales Marketing'),
	(54, 'BWMI02', 2, 'Internationales Brand Management'),
	(55, 'BWSC01', 2, 'Supply Chain Management I'),
	(56, 'BWSC02', 2, 'Supply Chain Management II'),
	(57, 'BWSM01', 2, 'Servicemanagement I (Einführung)'),
	(58, 'BWSM02', 2, 'Servicemanagement II (Vertiefung)'),
	(59, 'BWTO01', 2, 'Tourismusmanagement I (Einführung)'),
	(60, 'BWTO02', 2, 'Tourismusmanagement II (Vertiefung)'),
	(61, 'DLBISIC01', 5, 'Einführung in Datenschutz und IT-Sicherheit'),
	(62, 'DLBISIC02', 5, 'Kryptografische Verfahren'),
	(63, 'DLSPENI01', 5, 'Fremdsprache Englisch'),
	(64, 'IAMG01', 5, 'IT-Architekturmanagement'),
	(65, 'IDBS01', 5, 'Datenmodellierung und Datenbanksysteme'),
	(66, 'IGIS01', 5, 'Grundlagen der industriellen Softwaretechnik'),
	(67, 'IMT101', 5, 'Mathematik für Wirtschaftsinformatiker I'),
	(68, 'IMT102-01', 5, 'Mathematik für Wirtschaftsinformatiker II'),
	(69, 'IOBP01', 5, 'Grundlagen der objektorientierten Programmierung mit Java'),
	(70, 'IOBP02', 5, 'Datenstrukturen und Java-Klassenbibliothek'),
	(71, 'IPMG01', 5, 'IT-Projektmanagement'),
	(72, 'IPWA01', 5, 'Programmierung von Web-Anwendungsoberflächen'),
	(73, 'IPWA02', 5, 'Programmierung von industriellen Informationssystemen mit Java EE'),
	(74, 'IQSS01', 5, 'Qualitätssicherung im SW-Prozess'),
	(75, 'IREN01', 5, 'Requirements Engineering'),
	(76, 'ISEF01', 5, 'Software Engineering-Fallstudie'),
	(77, 'ISPE01', 5, 'Spezifikationen'),
	(78, 'ISSE01', 5, 'Seminar Software Engineering'),
	(79, 'IWBI01', 5, 'Business Intelligence I'),
	(80, 'IWBI02', 5, 'Business Intelligence II'),
	(81, 'IWMB01', 5, 'Mobile Software Engineering am Beispiel der Android-Plattform'),
	(82, 'IWMB02', 5, 'Fallstudie Mobile Software Engineering'),
	(83, 'IWNF01', 5, 'Techniken und Methoden der agilen SW-Entwicklung'),
	(84, 'IWNF02', 5, 'Fallstudie Agiles Software Engineering'),
	(85, 'IWSM01', 5, 'IT-Servicemanagement I'),
	(86, 'IWSM02', 5, 'IT-Servicemanagement II'),
	(87, 'SPEN', 5, 'Fremdsprachen: Englisch A1–C1'),
	(88, 'SPFR', 5, 'Fremdsprachen: Französisch A1–C1'),
	(89, 'SPIT', 5, 'Fremdsprachen: Italienisch A1–B2'),
	(90, 'SPSP', 1, 'Fremdsprachen: Spanisch A1–C1');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;

-- Dumping structure for table mykorrektur.status
CREATE TABLE IF NOT EXISTS `status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `final` tinyint(1) NOT NULL,
  `selectable` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table mykorrektur.status: ~7 rows (approximately)
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`ID`, `status`, `final`, `selectable`) VALUES
	(1, 'Unbearbeitet', 0, 0),
	(2, 'in Arbeit', 0, 1),
	(3, 'Abgelehnt', 1, 1),
	(4, 'Wartend', 0, 1),
	(5, 'Geschlossen', 1, 1),
	(6, 'Zwischeninfo', 0, 1),
	(7, 'Archiviert', 1, 1);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;

-- Dumping structure for table mykorrektur.type
CREATE TABLE IF NOT EXISTS `type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table mykorrektur.type: ~4 rows (approximately)
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`ID`, `type`) VALUES
	(1, 'Fehler'),
	(2, 'Verbesserung'),
	(3, 'Idee'),
	(4, 'Frage');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;

-- Dumping structure for table mykorrektur.user
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `vorname` text NOT NULL,
  `nachname` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `userrolleID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_user_userrolle` (`userrolleID`),
  CONSTRAINT `FK_user_userrolle` FOREIGN KEY (`userrolleID`) REFERENCES `userrolle` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table mykorrektur.user: ~5 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`ID`, `vorname`, `nachname`, `password`, `email`, `userrolleID`) VALUES
	(1, 'Matthias', 'Will', 'Test1234!', 'Matthias.Will@iubh-fernstudium.de', 1),
	(2, 'Lukas', 'Bochmann', 'Test1234!', 'Lukas.Bochmann@iubh-fernstudium.de', 1),
	(3, 'Linda', 'Braun', 'Test1234!', 'Linda.Braun@iubh-fernstudium.de', 2),
	(4, 'Studierendensekretariat', '', 'iubh', '', 1),
	(5, 'Michael', 'Koczulla', 'Test1234!', 'Koczulla.Michael@iubh-fernstudium.de', 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table mykorrektur.userrolle
CREATE TABLE IF NOT EXISTS `userrolle` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `rolle` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mykorrektur.userrolle: ~2 rows (approximately)
/*!40000 ALTER TABLE `userrolle` DISABLE KEYS */;
INSERT INTO `userrolle` (`ID`, `rolle`) VALUES
	(1, 'Dozent'),
	(2, 'Student');
/*!40000 ALTER TABLE `userrolle` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
