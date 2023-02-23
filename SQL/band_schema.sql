-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.23 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for band
CREATE DATABASE IF NOT EXISTS `band_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `band_db`;

-- Dumping structure for table band.album
CREATE TABLE IF NOT EXISTS `album` (
  `idalbum` int unsigned NOT NULL AUTO_INCREMENT,
  `idband` int unsigned NOT NULL,
  `albumname` varchar(45) DEFAULT NULL,
  `releasedate` date DEFAULT NULL,
  PRIMARY KEY (`idalbum`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table band.album: ~0 rows (approximately)
DELETE FROM `album`;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` (`idalbum`, `idband`, `albumname`, `releasedate`) VALUES
	(1, 1, 'Achtung Baby', '1991-11-18'),
	(2, 1, 'Joshua Tree', '1987-03-09'),
	(3, 1, 'War', '1983-02-28'),
	(4, 1, 'Boy', '1980-10-20'),
	(5, 2, 'Slim Shady', NULL),
	(6, 3, 'Core', '1992-09-29'),
	(7, 3, 'Purple', '1994-06-07'),
	(8, 3, 'Tiny Music - Songs from the Vatican Gift Shop', '1996-03-05'),
	(9, 4, 'Murmur', '1983-04-12'),
	(10, 6, 'Off The Wall', '1979-08-10'),
	(11, 6, 'Bad', '1987-08-31'),
	(12, 6, 'Thriller', '1982-11-30'),
	(13, 6, 'Dangerous', '1991-11-26'),
	(14, 6, 'One Night in Japan', '1987-09-12'),
	(15, 7, 'Surfing with the Alien', '1987-10-15'),
	(16, 7, 'Flying in a Blue Dream', '1989-10-30'),
	(17, 7, 'Not of this Earth', '1986-12-18'),
	(18, 7, 'The Extremist', '1992-07-21'),
	(19, 10, 'Like a Virgin', '1984-11-12'),
	(20, 10, 'Like a Prayer', '1989-03-12'),
	(21, 10, 'True Blue', '1986-06-30'),
	(22, 11, 'The Stranger', '1977-09-29'),
	(23, 11, 'River of Dreams', '1993-08-10'),
	(24, 11, 'An Innocent Man', '1983-08-08'),
	(25, 12, 'Pale', '1990-01-16'),
	(26, 12, 'Bread and Circus', '1989-07-26'),
	(27, 12, 'Fear', '1991-08-27'),
	(28, 12, 'Dulcinea', '1994-05-24'),
	(29, 12, 'Coil', '1997-05-20'),
	(30, 12, 'New Constallation', '2013-10-15'),
	(31, 12, NULL, NULL),
	(32, 13, 'Severed Ties', '2008-10-04'),
	(33, 13, 'Youngbloods', '2010-06-18'),
	(34, 13, 'Chasing Ghosts', '2012-09-07'),
	(35, 14, 'Ride the Lightning', '1984-07-27'),
	(36, 14, 'Master of Puppets', '1986-03-03'),
	(37, 14, '…And Justice for All', '1988-09-07'),
	(38, 14, 'Hardwired… to Self-Destruct', '2016-11-18'),
	(39, 15, 'Speak & Spell', '1981-10-05'),
	(40, 15, 'A Broken Frame', '1982-09-27'),
	(41, 15, 'Music for the Masses', '1987-09-28'),
	(42, 15, 'Violator', '1990-03-19'),
	(43, 16, 'Dare to Dream', '1992-03-17'),
	(44, 16, 'Mexicanisimo', '2010-11-11'),
	(45, 17, 'The Top', '1984-05-22'),
	(46, 17, 'The Head on the Door', '1985-08-26'),
	(47, 17, '4:13 Dream', '2008-10-27'),
	(48, 19, 'Siberia', '2005-09-20'),
	(49, 19, 'The Fountain', '2009-10-12'),
	(50, 19, 'Meteorites', '2014-05-26');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;

-- Dumping structure for table band.band
CREATE TABLE IF NOT EXISTS `band` (
  `idband` int unsigned NOT NULL AUTO_INCREMENT,
  `aid` int unsigned NOT NULL,
  `bandname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idband`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table band.band: ~0 rows (approximately)
DELETE FROM `band`;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
INSERT INTO `band` (`idband`, `aid`, `bandname`) VALUES
	(1, 1, 'U2'),
	(2, 1, 'Eminem'),
	(3, 1, 'Stone Temple Pilots'),
	(4, 1, 'REM'),
	(5, 1, 'Drake'),
	(6, 1, 'Michael Jackson'),
	(7, 1, 'Joe Satriani'),
	(8, 1, 'Bruce Springsteen'),
	(9, 1, 'Lady Gaga'),
	(10, 1, 'Madonna'),
	(11, 1, 'Billy Joel'),
	(12, 1, 'Toad the Wet Sprocket'),
	(13, 1, 'Amity Affliction'),
	(14, 1, 'Metallica'),
	(15, 1, 'Depeche Mode'),
	(16, 1, 'Yanni'),
	(17, 1, 'The Cure'),
	(18, 1, 'REM'),
	(19, 1, 'Echo and the Bunnymen'),
	(20, 1, 'Coldplay'),
	(21, 1, 'The Church');
/*!40000 ALTER TABLE `band` ENABLE KEYS */;

-- Dumping structure for table band.gig
CREATE TABLE IF NOT EXISTS `gig` (
  `GigID` int unsigned NOT NULL AUTO_INCREMENT,
  `idvenue` int unsigned NOT NULL,
  `idband` int unsigned NOT NULL,
  `gigdate` date DEFAULT NULL,
  `numattendees` int unsigned DEFAULT NULL,
  PRIMARY KEY (`GigID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table band.gig: ~0 rows (approximately)
DELETE FROM `gig`;
/*!40000 ALTER TABLE `gig` DISABLE KEYS */;
/*!40000 ALTER TABLE `gig` ENABLE KEYS */;

-- Dumping structure for table band.instrument
CREATE TABLE IF NOT EXISTS `instrument` (
  `InstID` int unsigned NOT NULL AUTO_INCREMENT,
  `instrument` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`InstID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table band.instrument: ~0 rows (approximately)
DELETE FROM `instrument`;
/*!40000 ALTER TABLE `instrument` DISABLE KEYS */;
INSERT INTO `instrument` (`InstID`, `instrument`) VALUES
	(1, 'Lead Guitar'),
	(2, 'Bass Guitar'),
	(3, 'Vocals'),
	(4, 'Drums'),
	(5, 'Keyboards'),
	(6, 'DJ'),
	(7, 'Rhythm Guitar'),
	(8, 'Saxophone'),
	(9, 'Strings');
/*!40000 ALTER TABLE `instrument` ENABLE KEYS */;

-- Dumping structure for table band.player
CREATE TABLE IF NOT EXISTS `player` (
  `idplayer` int unsigned NOT NULL AUTO_INCREMENT,
  `InstID` int unsigned NOT NULL,
  `idband` int unsigned NOT NULL,
  `pfname` varchar(45) DEFAULT NULL,
  `plname` varchar(45) DEFAULT NULL,
  `homecity` varchar(45) DEFAULT NULL,
  `homestate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idplayer`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table band.player: ~0 rows (approximately)
DELETE FROM `player`;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` (`idplayer`, `InstID`, `idband`, `pfname`, `plname`, `homecity`, `homestate`) VALUES
	(1, 1, 1, 'The', 'Edge', 'Dublin', 'Ireland'),
	(2, 2, 1, 'Adam', 'Clayton', 'Dublin', 'Ireland'),
	(3, 3, 1, 'Bono', NULL, 'Dublin', 'Ireland'),
	(4, 4, 1, 'Larry', 'Mullen Jr', 'Dublin', 'Ireland'),
	(5, 3, 2, 'Eminem', NULL, 'St. Joseph', 'Missouri'),
	(6, 1, 3, 'Dan', 'DeLeo', 'San Diego', 'CA'),
	(7, 2, 3, 'Robert', 'DeLeo', 'San Diego', 'CA'),
	(8, 3, 3, 'Scott', 'Weiland', 'San Diego', 'CA'),
	(9, 4, 3, 'Eric', 'Kretz', 'San Diego', 'CA'),
	(10, 1, 4, 'Peter', 'Buck', 'Athens', 'GA'),
	(11, 2, 4, 'Mike', 'Mills', 'Athens', 'GA'),
	(12, 3, 4, 'Michael', 'Stipe', 'Athens', 'GA'),
	(13, 4, 4, 'Bill', 'Berry', 'Athens', 'GA'),
	(14, 3, 5, 'Drake', 'Graham', 'Toronto', 'Canada'),
	(15, 3, 6, 'Michael', 'Jackson', 'Gary', 'IN'),
	(16, 1, 7, 'Joe', 'Satriani', 'Westbury', 'NY'),
	(17, 3, 8, 'Bruce', 'Springsteen', 'Long Branch', 'NJ'),
	(18, 1, 8, 'Bruce', 'Springsteen', 'Long Branch', 'NJ'),
	(19, 3, 9, 'Stefani', 'Germanotta - Lady Gaga', 'New York', 'NY'),
	(20, 3, 10, 'Madonna', 'Ciccone', 'Bay City', 'MI'),
	(22, 3, 12, 'Glen', 'Phillips', 'Santa Barbara', 'CA'),
	(23, 1, 12, 'Todd', 'Nichols', 'Santa Barbara', 'CA'),
	(24, 2, 12, 'Dean', 'Dinning', 'Santa Barbara', 'CA'),
	(25, 4, 12, 'Randy', 'Guss', 'Santa Barbara', 'CA'),
	(26, 2, 13, 'Ahren', 'Stringer', 'Gympie', 'Australia'),
	(27, 3, 13, 'Joel', 'Birch', 'Gympie', 'Australia'),
	(28, 1, 13, 'Dan', 'Brown', 'Gympie', 'Australia'),
	(29, 4, 13, 'Joe', 'Longobardi', 'Gympie', 'Australia');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;

-- Dumping structure for table band.venue
CREATE TABLE IF NOT EXISTS `venue` (
  `idvenue` int unsigned NOT NULL AUTO_INCREMENT,
  `vname` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `seats` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idvenue`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table band.venue: ~0 rows (approximately)
DELETE FROM `venue`;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` (`idvenue`, `vname`, `city`, `state`, `zipcode`, `seats`) VALUES
	(1, 'The C Note', 'Hull', 'MA', '02045', 50),
	(2, 'The River Club', 'Scituate', 'MA', '02066', 150),
	(3, 'The Lantana', 'Randolph', 'MA', '02368', 200),
	(4, 'TD Garden', 'Boston', 'MA', '02114', 19500),
	(5, 'Staples Center', 'Los Angeles', 'CA', '90015', 19000),
	(6, 'State Farm Arena', 'Atlanta', 'GA', '30303', 21000),
	(7, 'Capital One Arena', 'Washington', 'DC', '20004', 20356),
	(8, 'SAP Center', 'San Jose', 'CA', '95113', 17562),
	(9, 'American Airlines Center', 'Dallas', 'TX', '75209', 21000),
	(10, 'Moda Center', 'Portland', 'OR', '97227', 19980),
	(11, 'Brooklyn Mirage', 'New York', 'NY', '11237', 12000);
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
