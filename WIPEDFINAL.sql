-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for essentialmode
DROP DATABASE IF EXISTS `essentialmode`;
CREATE DATABASE IF NOT EXISTS `essentialmode` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `essentialmode`;

-- Dumping structure for table essentialmode.addon_account
DROP TABLE IF EXISTS `addon_account`;
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.addon_account: ~10 rows (approximately)
DELETE FROM `addon_account`;
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('bank_savings', 'Bank Savings', 0),
	('caution', 'Caution', 0),
	('property_black_money', 'Black Money', 0),
	('society_ambulance', 'EMS', 1),
	('society_banker', 'Bank', 1),
	('society_cardealer', 'Cardealer', 1),
	('society_groove', 'groove', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table essentialmode.addon_account_data
DROP TABLE IF EXISTS `addon_account_data`;
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.addon_account_data: ~123 rows (approximately)
DELETE FROM `addon_account_data`;
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(276, 'society_ambulance', 8000, NULL),
	(277, 'society_banker', 0, NULL),
	(278, 'society_cardealer', 2713260, NULL),
	(279, 'society_mechanic', 0, NULL),
	(280, 'society_police', 0, NULL),
	(281, 'society_taxi', 0, NULL),
	(285, 'bank_savings', 0, 'Char1:1100001333322a0'),
	(286, 'property_black_money', 0, 'Char1:1100001333322a0'),
	(287, 'caution', 0, 'Char1:1100001333322a0'),
	(291, 'bank_savings', 0, 'steam:11000011986d23d'),
	(292, 'caution', 0, 'steam:11000011986d23d'),
	(293, 'property_black_money', 0, 'steam:11000011986d23d'),
	(294, 'bank_savings', 0, 'Char5:11000013425c1d8'),
	(295, 'caution', 0, 'Char5:11000013425c1d8'),
	(296, 'property_black_money', 0, 'Char5:11000013425c1d8'),
	(300, 'caution', 0, 'steam:1100001333b2bd2'),
	(301, 'property_black_money', 0, 'steam:1100001333b2bd2'),
	(302, 'bank_savings', 0, 'steam:1100001333b2bd2'),
	(303, 'caution', 0, 'steam:11000013d08c2fd'),
	(304, 'property_black_money', 0, 'steam:11000013d08c2fd'),
	(305, 'bank_savings', 0, 'steam:11000013d08c2fd'),
	(306, 'bank_savings', 0, 'steam:110000131e1a905'),
	(307, 'caution', 0, 'steam:110000131e1a905'),
	(308, 'property_black_money', 0, 'steam:110000131e1a905'),
	(309, 'bank_savings', 0, 'Char1:1100001164c12c1'),
	(310, 'caution', 0, 'Char1:1100001164c12c1'),
	(311, 'property_black_money', 0, 'Char1:1100001164c12c1'),
	(312, 'bank_savings', 0, 'steam:110000117729806'),
	(313, 'caution', 0, 'steam:110000117729806'),
	(314, 'property_black_money', 0, 'steam:110000117729806'),
	(315, 'bank_savings', 0, 'Char1:1100001007891ea'),
	(316, 'caution', 0, 'Char1:1100001007891ea'),
	(317, 'property_black_money', 0, 'Char1:1100001007891ea'),
	(321, 'bank_savings', 0, 'Char1:110000136fdeee3'),
	(322, 'caution', 0, 'Char1:110000136fdeee3'),
	(323, 'property_black_money', 0, 'Char1:110000136fdeee3'),
	(324, 'bank_savings', 0, 'steam:11000011ae6ed83'),
	(325, 'caution', 0, 'steam:11000011ae6ed83'),
	(326, 'property_black_money', 0, 'steam:11000011ae6ed83'),
	(327, 'bank_savings', 0, 'steam:1100001082331e8'),
	(328, 'property_black_money', 0, 'steam:1100001082331e8'),
	(329, 'caution', 0, 'steam:1100001082331e8'),
	(330, 'caution', 0, 'steam:11000013715099c'),
	(331, 'property_black_money', 0, 'steam:11000013715099c'),
	(332, 'bank_savings', 0, 'steam:11000013715099c'),
	(333, 'bank_savings', 0, 'steam:11000010ff2dbf8'),
	(334, 'caution', 0, 'steam:11000010ff2dbf8'),
	(335, 'property_black_money', 0, 'steam:11000010ff2dbf8'),
	(336, 'bank_savings', 0, 'steam:11000013530cf85'),
	(337, 'caution', 0, 'steam:11000013530cf85'),
	(338, 'property_black_money', 0, 'steam:11000013530cf85'),
	(339, 'bank_savings', 0, 'steam:110000115baa4fb'),
	(340, 'property_black_money', 0, 'steam:110000115baa4fb'),
	(341, 'caution', 0, 'steam:110000115baa4fb'),
	(363, 'bank_savings', 0, 'steam:110000115e9b4f0'),
	(364, 'property_black_money', 0, 'steam:110000115e9b4f0'),
	(365, 'caution', 0, 'steam:110000115e9b4f0'),
	(369, 'property_black_money', 0, 'steam:1100001121236d9'),
	(370, 'caution', 0, 'steam:1100001121236d9'),
	(371, 'bank_savings', 0, 'steam:1100001121236d9'),
	(372, 'bank_savings', 0, 'Char2:11000013d08c2fd'),
	(373, 'caution', 0, 'Char2:11000013d08c2fd'),
	(374, 'property_black_money', 0, 'Char2:11000013d08c2fd'),
	(390, 'bank_savings', 0, 'steam:1100001007891ea'),
	(391, 'caution', 0, 'steam:1100001007891ea'),
	(392, 'property_black_money', 0, 'steam:1100001007891ea'),
	(396, 'bank_savings', 0, 'steam:11000011b0b9af1'),
	(397, 'property_black_money', 0, 'steam:11000011b0b9af1'),
	(398, 'caution', 0, 'steam:11000011b0b9af1'),
	(399, 'bank_savings', 0, 'steam:11000013bab8789'),
	(400, 'caution', 0, 'steam:11000013bab8789'),
	(401, 'property_black_money', 0, 'steam:11000013bab8789'),
	(405, 'bank_savings', 0, 'steam:1100001158c1b21'),
	(406, 'caution', 0, 'steam:1100001158c1b21'),
	(407, 'property_black_money', 0, 'steam:1100001158c1b21'),
	(411, 'bank_savings', 0, 'Char3:1100001007891ea'),
	(412, 'caution', 0, 'Char3:1100001007891ea'),
	(413, 'property_black_money', 0, 'Char3:1100001007891ea'),
	(417, 'bank_savings', 0, 'steam:11000013b8a3d20'),
	(418, 'caution', 0, 'steam:11000013b8a3d20'),
	(419, 'property_black_money', 0, 'steam:11000013b8a3d20'),
	(420, 'bank_savings', 0, 'steam:110000106ec637b'),
	(421, 'caution', 0, 'steam:110000106ec637b'),
	(422, 'property_black_money', 0, 'steam:110000106ec637b'),
	(423, 'bank_savings', 0, 'steam:110000134f38b7d'),
	(424, 'caution', 0, 'steam:110000134f38b7d'),
	(425, 'property_black_money', 0, 'steam:110000134f38b7d'),
	(429, 'bank_savings', 0, 'steam:11000010d5c1009'),
	(430, 'caution', 0, 'steam:11000010d5c1009'),
	(431, 'property_black_money', 0, 'steam:11000010d5c1009'),
	(453, 'bank_savings', 0, 'steam:1100001345e5866'),
	(454, 'caution', 0, 'steam:1100001345e5866'),
	(455, 'property_black_money', 0, 'steam:1100001345e5866'),
	(456, 'bank_savings', 0, 'steam:11000013b7d5760'),
	(457, 'caution', 0, 'steam:11000013b7d5760'),
	(458, 'property_black_money', 0, 'steam:11000013b7d5760'),
	(459, 'bank_savings', 0, 'steam:11000013a5dc04d'),
	(460, 'caution', 0, 'steam:11000013a5dc04d'),
	(461, 'property_black_money', 0, 'steam:11000013a5dc04d'),
	(462, 'bank_savings', 0, 'Char1:110000134481ed5'),
	(463, 'caution', 0, 'Char1:110000134481ed5'),
	(464, 'property_black_money', 0, 'Char1:110000134481ed5'),
	(468, 'bank_savings', 0, 'steam:11000011cb32a67'),
	(469, 'caution', 0, 'steam:11000011cb32a67'),
	(470, 'property_black_money', 0, 'steam:11000011cb32a67'),
	(471, 'bank_savings', 0, 'steam:11000013d408968'),
	(472, 'caution', 0, 'steam:11000013d408968'),
	(473, 'property_black_money', 0, 'steam:11000013d408968'),
	(474, 'caution', 0, 'steam:110000137972c5f'),
	(475, 'bank_savings', 0, 'steam:110000137972c5f'),
	(476, 'property_black_money', 0, 'steam:110000137972c5f'),
	(477, 'caution', 0, 'steam:11000013425c1d8'),
	(478, 'property_black_money', 0, 'steam:11000013425c1d8'),
	(479, 'bank_savings', 0, 'steam:11000013425c1d8'),
	(483, 'bank_savings', 0, 'steam:11000011b23ad9b'),
	(484, 'caution', 0, 'steam:11000011b23ad9b'),
	(485, 'property_black_money', 0, 'steam:11000011b23ad9b'),
	(486, 'bank_savings', 0, 'steam:110000139b0479e'),
	(487, 'caution', 0, 'steam:110000139b0479e'),
	(488, 'property_black_money', 0, 'steam:110000139b0479e'),
	(510, 'motels_bed_black_money', 0, 'steam:110000139b0479e'),
	(511, 'motels_black_money', 0, 'steam:110000139b0479e'),
	(512, 'society_groove', 0, NULL);
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table essentialmode.addon_inventory
DROP TABLE IF EXISTS `addon_inventory`;
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.addon_inventory: ~8 rows (approximately)
DELETE FROM `addon_inventory`;
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('housing', 'Housing', 0),
	('property', 'Property', 0),
	('society_ambulance', 'EMS', 1),
	('society_cardealer', 'Cardealer', 1),
	('society_groove', 'groove', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumping structure for table essentialmode.addon_inventory_items
DROP TABLE IF EXISTS `addon_inventory_items`;
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.addon_inventory_items: ~0 rows (approximately)
DELETE FROM `addon_inventory_items`;
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumping structure for table essentialmode.arrests_list
DROP TABLE IF EXISTS `arrests_list`;
CREATE TABLE IF NOT EXISTS `arrests_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.arrests_list: ~0 rows (approximately)
DELETE FROM `arrests_list`;
/*!40000 ALTER TABLE `arrests_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `arrests_list` ENABLE KEYS */;

-- Dumping structure for table essentialmode.billing
DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.billing: ~0 rows (approximately)
DELETE FROM `billing`;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Dumping structure for table essentialmode.bolos_list
DROP TABLE IF EXISTS `bolos_list`;
CREATE TABLE IF NOT EXISTS `bolos_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.bolos_list: ~0 rows (approximately)
DELETE FROM `bolos_list`;
/*!40000 ALTER TABLE `bolos_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolos_list` ENABLE KEYS */;

-- Dumping structure for table essentialmode.bought_houses
DROP TABLE IF EXISTS `bought_houses`;
CREATE TABLE IF NOT EXISTS `bought_houses` (
  `houseid` int(50) NOT NULL,
  PRIMARY KEY (`houseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.bought_houses: ~0 rows (approximately)
DELETE FROM `bought_houses`;
/*!40000 ALTER TABLE `bought_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `bought_houses` ENABLE KEYS */;

-- Dumping structure for table essentialmode.cardealer_vehicles
DROP TABLE IF EXISTS `cardealer_vehicles`;
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.cardealer_vehicles: ~0 rows (approximately)
DELETE FROM `cardealer_vehicles`;
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Dumping structure for table essentialmode.characters
DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `lastdigits` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.characters: ~0 rows (approximately)
DELETE FROM `characters`;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table essentialmode.criminal_records
DROP TABLE IF EXISTS `criminal_records`;
CREATE TABLE IF NOT EXISTS `criminal_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offence` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `officer_id` varchar(250) NOT NULL,
  `jail` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.criminal_records: ~0 rows (approximately)
DELETE FROM `criminal_records`;
/*!40000 ALTER TABLE `criminal_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `criminal_records` ENABLE KEYS */;

-- Dumping structure for table essentialmode.datastore
DROP TABLE IF EXISTS `datastore`;
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.datastore: ~9 rows (approximately)
DELETE FROM `datastore`;
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('housing', 'Housing', 0),
	('property', 'Property', 1),
	('society_ambulance', 'EMS', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1),
	('user_ears', 'Ears', 0),
	('user_glasses', 'Glasses', 0),
	('user_helmet', 'Helmet', 0),
	('user_mask', 'Mask', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for table essentialmode.datastore_data
DROP TABLE IF EXISTS `datastore_data`;
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.datastore_data: ~0 rows (approximately)
DELETE FROM `datastore_data`;
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for table essentialmode.disc_ammo
DROP TABLE IF EXISTS `disc_ammo`;
CREATE TABLE IF NOT EXISTS `disc_ammo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `hash` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.disc_ammo: ~0 rows (approximately)
DELETE FROM `disc_ammo`;
/*!40000 ALTER TABLE `disc_ammo` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_ammo` ENABLE KEYS */;

-- Dumping structure for table essentialmode.disc_inventory
DROP TABLE IF EXISTS `disc_inventory`;
CREATE TABLE IF NOT EXISTS `disc_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `type` text DEFAULT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.disc_inventory: ~0 rows (approximately)
DELETE FROM `disc_inventory`;
/*!40000 ALTER TABLE `disc_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_inventory` ENABLE KEYS */;

-- Dumping structure for table essentialmode.disc_inventory_itemdata
DROP TABLE IF EXISTS `disc_inventory_itemdata`;
CREATE TABLE IF NOT EXISTS `disc_inventory_itemdata` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `closeonuse` tinyint(1) NOT NULL DEFAULT 0,
  `max` int(11) NOT NULL DEFAULT 100,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.disc_inventory_itemdata: ~0 rows (approximately)
DELETE FROM `disc_inventory_itemdata`;
/*!40000 ALTER TABLE `disc_inventory_itemdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_inventory_itemdata` ENABLE KEYS */;

-- Dumping structure for table essentialmode.dpkeybinds
DROP TABLE IF EXISTS `dpkeybinds`;
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.dpkeybinds: ~0 rows (approximately)
DELETE FROM `dpkeybinds`;
/*!40000 ALTER TABLE `dpkeybinds` DISABLE KEYS */;
/*!40000 ALTER TABLE `dpkeybinds` ENABLE KEYS */;

-- Dumping structure for table essentialmode.fine_types
DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.fine_types: ~52 rows (approximately)
DELETE FROM `fine_types`;
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Misuse of a horn', 30, 0),
	(2, 'Illegally Crossing a continuous Line', 40, 0),
	(3, 'Driving on the wrong side of the road', 250, 0),
	(4, 'Illegal U-Turn', 250, 0),
	(5, 'Illegally Driving Off-road', 170, 0),
	(6, 'Refusing a Lawful Command', 30, 0),
	(7, 'Illegally Stopping a Vehicle', 150, 0),
	(8, 'Illegal Parking', 70, 0),
	(9, 'Failing to Yield to the right', 70, 0),
	(10, 'Failure to comply with Vehicle Information', 90, 0),
	(11, 'Failing to stop at a Stop Sign ', 105, 0),
	(12, 'Failing to stop at a Red Light', 130, 0),
	(13, 'Illegal Passing', 100, 0),
	(14, 'Driving an illegal Vehicle', 100, 0),
	(15, 'Driving without a License', 1500, 0),
	(16, 'Hit and Run', 800, 0),
	(17, 'Exceeding Speeds Over < 5 mph', 90, 0),
	(18, 'Exceeding Speeds Over 5-15 mph', 120, 0),
	(19, 'Exceeding Speeds Over 15-30 mph', 180, 0),
	(20, 'Exceeding Speeds Over > 30 mph', 300, 0),
	(21, 'Impeding traffic flow', 110, 1),
	(22, 'Public Intoxication', 90, 1),
	(23, 'Disorderly conduct', 90, 1),
	(24, 'Obstruction of Justice', 130, 1),
	(25, 'Insults towards Civilans', 75, 1),
	(26, 'Disrespecting of an LEO', 110, 1),
	(27, 'Verbal Threat towards a Civilan', 90, 1),
	(28, 'Verbal Threat towards an LEO', 150, 1),
	(29, 'Providing False Information', 250, 1),
	(30, 'Attempt of Corruption', 1500, 1),
	(31, 'Brandishing a weapon in city Limits', 120, 2),
	(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
	(33, 'No Firearms License', 600, 2),
	(34, 'Possession of an Illegal Weapon', 700, 2),
	(35, 'Possession of Burglary Tools', 300, 2),
	(36, 'Grand Theft Auto', 1800, 2),
	(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
	(38, 'Frabrication of an Illegal Substance', 1500, 2),
	(39, 'Possession of an Illegal Substance ', 650, 2),
	(40, 'Kidnapping of a Civilan', 1500, 2),
	(41, 'Kidnapping of an LEO', 2000, 2),
	(42, 'Robbery', 650, 2),
	(43, 'Armed Robbery of a Store', 650, 2),
	(44, 'Armed Robbery of a Bank', 1500, 2),
	(45, 'Assault on a Civilian', 2000, 3),
	(46, 'Assault of an LEO', 2500, 3),
	(47, 'Attempt of Murder of a Civilian', 3000, 3),
	(48, 'Attempt of Murder of an LEO', 5000, 3),
	(49, 'Murder of a Civilian', 10000, 3),
	(50, 'Murder of an LEO', 30000, 3),
	(51, 'Involuntary manslaughter', 1800, 3),
	(52, 'Fraud', 2000, 2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumping structure for table essentialmode.fivem_fishing
DROP TABLE IF EXISTS `fivem_fishing`;
CREATE TABLE IF NOT EXISTS `fivem_fishing` (
  `fish` varchar(30) NOT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`fish`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.fivem_fishing: ~10 rows (approximately)
DELETE FROM `fivem_fishing`;
/*!40000 ALTER TABLE `fivem_fishing` DISABLE KEYS */;
INSERT INTO `fivem_fishing` (`fish`, `data`) VALUES
	('char', NULL),
	('crawfish', '{"name":"crawfish","weight":163,"owner":"KEN MAGE"}'),
	('goldfish', '{"weight":267,"name":"goldfish","owner":"Chasham Singh"}'),
	('lobster', NULL),
	('mackerel', '{"weight":1245,"name":"mackerel","owner":"Chasham Singh"}'),
	('pike', '{"name":"pike","owner":"Luke Hobbs","weight":4810}'),
	('roach', '{"weight":683,"name":"roach","owner":"Drake Pheonix"}'),
	('salmon', NULL),
	('trout', '{"weight":2094,"name":"trout","owner":"Drake Pheonix"}'),
	('whitefish', '{"owner":"Zorawar SIngh","name":"whitefish","weight":5475}');
/*!40000 ALTER TABLE `fivem_fishing` ENABLE KEYS */;

-- Dumping structure for table essentialmode.glovebox_inventory
DROP TABLE IF EXISTS `glovebox_inventory`;
CREATE TABLE IF NOT EXISTS `glovebox_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.glovebox_inventory: ~1 rows (approximately)
DELETE FROM `glovebox_inventory`;
/*!40000 ALTER TABLE `glovebox_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `glovebox_inventory` ENABLE KEYS */;

-- Dumping structure for table essentialmode.items
DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `limit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.items: ~248 rows (approximately)
DELETE FROM `items`;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `price`, `id`, `limit`) VALUES
	('10', 'diamond', 3, 0, 1, 10, 176, '50'),
	('100gbag', 'Ziploc Bag[100g]', 2, 0, 1, 1, 21, '20'),
	('1gbag', 'Ziploc Bag[1g]', 1, 0, 1, 1, 22, '20'),
	('50gbag', 'Ziploc Bag[50g]', 10, 0, 1, 1, 23, '20'),
	('5gbag', 'Ziploc Bag[5g]', 5, 0, 1, 10, 24, '20'),
	('9mm_rounds', '9mm Rounds', 20, 0, 1, 0, 0, NULL),
	('MountedScope', 'Scope Pistols MK2', 130, 0, 1, 10, 143, '-1'),
	('Suppressor', 'Suppressor', 1, 0, 1, 10, 162, '-1'),
	('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', 110, 0, 1, 10, 25, '20'),
	('WEAPON_ADVANCEDRIFLE_AMMO', 'Advanced Rifle Ammo', 10, 0, 1, 10, 26, '20'),
	('WEAPON_APPISTOL', 'AP Pistol', 60, 0, 1, 10, 27, '20'),
	('WEAPON_APPISTOL_AMMO', 'AP Pistol Ammo', 3, 0, 1, 10, 28, '20'),
	('WEAPON_ASSAULTRIFLE', 'Assault Rifle', 90, 0, 1, 10, 29, '20'),
	('WEAPON_ASSAULTRIFLE_AMMO', 'Assault Rifle Ammo', 10, 0, 1, 10, 30, '20'),
	('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', 80, 0, 1, 10, 31, '20'),
	('WEAPON_ASSAULTSHOTGUN_AMMO', 'Assault Shotgun Ammo', 5, 0, 1, 10, 32, '20'),
	('WEAPON_ASSAULTSMG', 'Assault SMG', 70, 0, 1, 10, 33, '20'),
	('WEAPON_ASSAULTSMG_AMMO', 'Assault SMG Ammo', 5, 0, 1, 10, 34, '20'),
	('WEAPON_AUTOSHOTGUN', 'Auto Shotgun', 90, 0, 1, 10, 35, '20'),
	('WEAPON_AUTOSHOTGUN_AMMO', 'Auto Shotgun Ammo', 10, 0, 1, 10, 36, '20'),
	('WEAPON_BAT', 'Baseball Bat', 30, 0, 1, 10, 37, '20'),
	('WEAPON_CARBINERIFLE', 'Carbine Rifle', 100, 0, 1, 10, 38, '20'),
	('WEAPON_CARBINERIFLE_AMMO', 'Carbin Rifle Ammo', 10, 0, 1, 10, 39, '20'),
	('WEAPON_COMBATPISTOL', 'Combat Pistol', 50, 0, 1, 10, 40, '20'),
	('WEAPON_COMBATPISTOL_AMMO', 'Combat Pistol Ammo', 3, 0, 1, 10, 41, '20'),
	('WEAPON_FLASHLIGHT', 'Flashlight', 20, 0, 1, 10, 42, '20'),
	('WEAPON_KNIFE', 'Knife', 40, 1, 1, 10, 43, '20'),
	('WEAPON_PISTOL', 'Pistol', 50, 0, 1, 10, 44, '20'),
	('WEAPON_PISTOL_AMMO', '9mm Rounds', 6, 0, 1, 10, 45, '20'),
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 90, 0, 1, 10, 46, '20'),
	('WEAPON_PUMPSHOTGUN_AMMO', 'Pump Shotgun Ammo', 10, 0, 1, 10, 47, '20'),
	('WEAPON_SMG', 'SMG', 80, 0, 1, 10, 48, '20'),
	('WEAPON_SMG_AMMO', 'Shotgun Shells', 10, 0, 1, 10, 49, '20'),
	('WEAPON_STUNGUN', 'Taser', 60, 1, 1, 10, 50, '20'),
	('absinthe', 'absinthe', 1, 0, 1, 10, 163, '5'),
	('acetone', 'Acetone', 1, 0, 1, 0, 0, '40'),
	('adrenaline', 'Adrenaline', 1, 0, 1, 10, 164, '5'),
	('adrenaline_shot', 'Adrenaline Shot', 1, 0, 1, 0, 0, '5'),
	('advancedlockpick', 'Advance Lockpick', 20, 0, 1, 10, 51, '20'),
	('airbag', 'Airbag', 1, 0, 1, 10, 165, '7'),
	('alive_chicken', 'Alive Chiken', 1, 0, 1, 0, 166, '20'),
	('apple_iphone', 'Apple iPhone', 5, 0, 1, 10, 1, '20'),
	('bandage', 'Bandage', 1, 0, 1, 10, 167, '20'),
	('battery', 'Battery', 5, 0, 1, 10, 2, '20'),
	('beer', 'Beer', 10, 0, 1, 10, 52, '20'),
	('binocular', 'Binoculars', 2, 0, 1, 10, 53, '20'),
	('blowpipe', 'Blowtorch', 1, 0, 1, 10, 168, '10'),
	('blowtorch', 'Blowtorch', 1, 0, 1, 0, 0, NULL),
	('boitierrgb', 'Boitier RGB', 1, 0, 1, 10, 169, '-1'),
	('bolcacahuetes', 'A bowl of peanuts', 1, 0, 1, 10, 170, '5'),
	('bolchips', 'Chips Bowl', 1, 0, 1, 10, 171, '5'),
	('bolnoixcajou', 'Cashew Nut Bowl', 1, 0, 1, 10, 172, '5'),
	('bolpistache', 'Pistachio Bowl', 1, 0, 1, 10, 173, '5'),
	('boomdlugie', 'Boom Rifles Skin', 1, 0, 1, 10, 174, '-1'),
	('bread', 'Bread', 1, 0, 1, 10, 175, '30'),
	('breadboard', 'Breadboard', 2, 0, 1, 10, 3, '20'),
	('bulletproof', 'BulletProof', 1, 0, 1, 10, 177, '5'),
	('c4_bank', 'C4', 50, 0, 1, 0, 0, NULL),
	('cajadecamarones', 'Box Of Shrimp', 5, 0, 1, 10, 55, '20'),
	('cajadecangrejos', 'Box Of Crabs', 5, 0, 1, 10, 56, '20'),
	('camarones', 'Shrimp', 2, 0, 1, 10, 57, '20'),
	('cangrejos', 'Crabs', 2, 0, 1, 10, 58, '20'),
	('cannabis', 'Weed', 5, 0, 1, 10, 160, '40'),
	('carokit', 'Body Kit', 2, 0, 1, 10, 144, '3'),
	('carotool', 'Tools', 1, 0, 1, 10, 145, '4'),
	('cashew', 'Cashew', 2, 0, 1, 10, 59, '20'),
	('casio_watch', 'Casio Watch', 1, 0, 1, 10, 4, '20'),
	('cchip', 'Casino Chip', 1, 0, 1, 10, 146, '-1'),
	('celownikdluga', 'Scope Rifles', 100, 0, 1, 10, 147, '-1'),
	('champagne', 'Champagne', 20, 0, 1, 10, 148, '10'),
	('chemicals', 'Chemicals', 5, 0, 1, 0, 0, '100'),
	('chemicalslisence', 'Chemicals license', 2, 0, 1, 0, 0, '1'),
	('chips', 'Chips', 2, 0, 1, 10, 60, '20'),
	('chocolate', 'Chocolate', 2, 0, 1, 10, 61, '20'),
	('cigarett', 'Cigarett', 5, 0, 1, 10, 149, '20'),
	('cigarette', 'Cigarette', 5, 0, 1, 10, 62, '20'),
	('clip', 'Ammo', 10, 0, 1, 10, 150, '5'),
	('clothe', 'clothe', 1, 0, 1, 10, 151, '40'),
	('clutch', 'Clutch', 2, 0, 1, 10, 63, '20'),
	('coca_leaf', 'Coca Leaf', 2, 0, 1, 0, 0, '40'),
	('cocacola', 'Coca-Cola', 2, 0, 1, 10, 64, '20'),
	('coffe', 'Coffe', 3, 0, 1, 10, 184, '10'),
	('coke', 'Coke', 2, 0, 1, 0, 0, '40'),
	('coke_pooch', 'Bag of Coke', 2, 0, 1, 10, 5, '20'),
	('colis', 'Colis', 1, 0, 1, 0, 0, '-1'),
	('copper', 'copper', 3, 0, 1, 10, 152, '56'),
	('cupcake', 'Cupcake', 2, 0, 1, 1, 65, '20'),
	('cutted_wood', 'cutted_wood', 6, 0, 1, 10, 153, '20'),
	('czaszkidlugie', 'Skull Rifles Skin', 1, 0, 1, 10, 154, '-1'),
	('drill', 'Drill', 10, 0, 1, 10, 66, '20'),
	('drpepper', 'Dr Pepper', 5, 0, 1, 10, 67, '20'),
	('drugscales', 'Scales', 20, 0, 1, 10, 68, '20'),
	('electronic_kit', 'Electronic Kit', 10, 0, 1, 10, 6, '20'),
	('electronics', 'Electronics', 5, 0, 1, 10, 7, '20'),
	('energy', 'Energy Drink', 1, 0, 1, 10, 69, '20'),
	('enginekiller', 'EngineKiller', 10, 0, 1, 10, 155, '3'),
	('epinephrine', 'Epinephrine', 1, 0, 1, 0, 0, '40'),
	('essence', 'essence', 5, 0, 1, 10, 156, '24'),
	('fabric', 'fabric', 1, 0, 1, 10, 157, '80'),
	('firstaid', 'First-Aid Kit', 10, 0, 1, 10, 158, '10'),
	('firstaidkit', 'Dirstaid Kit', 10, 0, 1, 10, 159, '10'),
	('fish', 'Fish', 3, 0, 1, 10, 178, '100'),
	('fishbait', 'Fish Bait', 1, 0, 1, 10, 179, '30'),
	('fishingrod', 'Fishing Rod', 8, 0, 1, 10, 198, '2'),
	('fixkit', 'Fix Kit', 10, 0, 1, 10, 70, '20'),
	('fixtool', 'Repair Tools', 30, 0, 1, 10, 199, '6'),
	('flashlight', 'flashlight Weapons', 80, 0, 1, 10, 200, '-1'),
	('fluor_stick', 'Fluorinated Stick', 1, 0, 1, 0, 0, '5'),
	('fuse', 'Glass', 10, 0, 1, 10, 8, '20'),
	('gameboy', 'Gameboy', 10, 0, 1, 10, 9, '20'),
	('gas_mask', 'Gas Mask', 1, 0, 1, 0, 0, '5'),
	('gas_pump', 'Gas Pump', 1, 0, 1, 0, 0, '2'),
	('gauze', 'Gauze', 3, 0, 1, 10, 201, '25'),
	('gazbottle', 'Gas Bottle', 5, 0, 1, 10, 202, '11'),
	('gintonic', 'gintonic', 1, 0, 1, 10, 203, '5'),
	('glass', 'Glass', 5, 0, 1, 10, 10, '20'),
	('gold', 'gold', 15, 0, 1, 10, 204, '21'),
	('golem', 'Golem', 1, 0, 1, 10, 205, '5'),
	('gps', 'GPS', 5, 0, 1, 10, 71, '20'),
	('grand_cru', 'Champagne', 2, 0, 1, 10, 72, '20'),
	('grapperaisin', 'Bunch of grapes', 1, 0, 1, 10, 206, '5'),
	('grip', 'Grip Rifles', 1, 0, 1, 10, 207, '-1'),
	('hackerDevice', 'Hacking Device', 30, 0, 1, 10, 73, '20'),
	('hamburger', 'Hamburger', 2, 0, 1, 10, 74, '20'),
	('handcuffs', 'Cuff/Key', 1, 0, 1, 10, 208, '-1'),
	('heroin', 'Heroin', 20, 0, 1, 0, 0, '80'),
	('highgradefert', 'Fertilizer [high]', 25, 0, 1, 10, 75, '20'),
	('highradio', 'Aftermarket Radio', 1, 0, 1, 10, 209, '5'),
	('highrim', 'Nice Rim', 1, 0, 1, 10, 210, '20'),
	('holografik', 'Holographic Sight', 1, 0, 1, 10, 211, '-1'),
	('hydrochloric_acid', 'HydroChloric Acid', 1, 0, 1, 0, 0, '15'),
	('hydrocodone', 'Hydrocodone', 1, 0, 1, 10, 212, '5'),
	('ice', 'ICE', 1, 0, 1, 10, 213, '5'),
	('icetea', 'Ice-Tea', 2, 0, 1, 10, 76, '20'),
	('iron', 'iron', 1, 0, 1, 10, 197, '42'),
	('jager', 'Jaegermeister', 1, 0, 1, 10, 196, '5'),
	('jagerbomb', 'Jagger bomb', 1, 0, 1, 10, 180, '5'),
	('jagercerbere', 'Jäger Cerbère', 1, 0, 1, 10, 181, '3'),
	('jewels', 'Jewels', 15, 0, 1, 10, 182, '10000'),
	('joint', 'Joint', 1, 0, 1, 95, 215, '1'),
	('jusfruit', 'Fruit Juise', 2, 0, 1, 10, 183, '5'),
	('kastetbalas', 'Knuckle Skin Ballas', 1, 0, 1, 10, 184, '-1'),
	('kastetdiament', 'Knuckle Skin Diamond', 1, 0, 1, 10, 185, '-1'),
	('kastetdollar', 'Knuckle Skin Dollar', 1, 0, 1, 10, 186, '-1'),
	('kastethate', 'Knuckle Skin Hate', 1, 0, 1, 10, 187, '-1'),
	('kastetpimp', 'Knuckle Skin PIMP', 1, 0, 1, 10, 188, '-1'),
	('kastetpink', 'Knuckle Skin LOVE', 1, 0, 1, 10, 189, '-1'),
	('kastetplayer', 'Knuckle Skin Player', 2, 0, 1, 10, 190, '-1'),
	('kastetvagos', 'Knuckle Skin Vagos', 4, 0, 1, 10, 191, '-1'),
	('keycard', 'Keycard', 1, 0, 1, 0, 0, '-1'),
	('kompensator', 'Compensator', 2, 0, 1, 10, 192, '-1'),
	('largescope', 'Large Scope', 8, 0, 1, 10, 193, '-1'),
	('leather', 'Leather', 20, 0, 1, 10, 194, '-1'),
	('lemonade', 'Lemonade', 2, 0, 1, 1, 77, '20'),
	('letter', 'Courrier', 2, 0, 1, 0, 0, '-1'),
	('lighter', 'Lighter', 1, 0, 1, 10, 78, '20'),
	('limonade', 'Lemonada', 5, 0, 1, 10, 195, '5'),
	('lithium', 'Lithium', 7, 0, 1, 0, 0, '40'),
	('lockpick', 'Lockpick', 10, 0, 1, 1, 79, '20'),
	('lowgradefert', 'Fertilizer [low]', 2, 0, 1, 1, 80, '20'),
	('lowradio', 'Stock Radio', 1, 0, 1, 10, 214, '5'),
	('lsa', 'LSA', 20, 0, 1, 0, 0, '100'),
	('lsd', 'LSD', 25, 0, 1, 0, 0, '100'),
	('marijuana', 'marijuana', 5, 0, 1, 10, 94, '14'),
	('martini', 'Martini White', 20, 0, 1, 10, 110, '5'),
	('meat', 'Meat', 5, 0, 1, 10, 107, '-1'),
	('medikit', 'Medikit', 8, 0, 1, 10, 108, '5'),
	('mediumscope', 'Medium Scope', 1, 0, 1, 10, 106, '-1'),
	('medkit', 'Medkit', 5, 0, 1, 10, 103, '5'),
	('menthe', 'Mint Leaf', 5, 0, 1, 10, 102, '10'),
	('meth', 'Meth', 20, 0, 1, 0, 0, '30'),
	('metreshooter', 'Shooter meter', 30, 0, 1, 10, 101, '3'),
	('mixapero', 'Mix Aperitif', 10, 0, 1, 10, 100, '3'),
	('mleko', 'Milk', 2, 0, 1, 10, 97, '20'),
	('mojito', 'Mojito', 25, 0, 1, 10, 111, '5'),
	('moneywash', 'MoneyWash License', 10, 0, 1, 0, 0, '1'),
	('moneywashid', 'Moneywashid', 1, 0, 1, 10, 96, '-1'),
	('morphine', 'Morphine', 5, 0, 1, 10, 98, '5'),
	('nokia_phone', 'Nokia Phone', 5, 0, 1, 1, 81, '20'),
	('opium', 'Opium', 3, 0, 1, 0, 0, '40'),
	('oxygen_mask', 'Oxygen Cylinder', 5, 0, 1, 10, 99, '1'),
	('packaged_chicken', 'Packaged Chicken', 2, 0, 1, 10, 104, '100'),
	('packaged_plank', '', 1, 0, 1, 10, 105, '100'),
	('petrol', 'petrol', 10, 0, 1, 10, 109, '24'),
	('petrol_raffin', 'petrol raffin', 5, 0, 1, 10, 95, '24'),
	('phone', 'Phone', 5, 0, 1, 10, 82, '20'),
	('pistachio', 'Pistachio', 2, 0, 1, 10, 83, '20'),
	('pizza', 'Pizza', 10, 0, 1, 0, 0, '-1'),
	('plantpot', 'Plant Pot', 1, 0, 1, 1, 84, '20'),
	('platin50', 'Platinium Pistol 50 Skin', 1, 0, 1, 10, 91, '-1'),
	('poppyresin', 'Poppy Resin', 1, 0, 1, 0, 0, '160'),
	('powiekszonymagazynek', 'Extended Clip', 1, 0, 1, 10, 93, '-1'),
	('raspberry', 'Raspberry', 1, 0, 1, 0, 0, NULL),
	('receipt', 'W.C receipt', 1, 0, 1, 0, 0, '100'),
	('rhum', 'Rum', 5, 0, 1, 10, 113, '5'),
	('rhumcoca', 'Rum-cola', 5, 0, 1, 10, 92, '5'),
	('rhumfruit', 'Rum-Fruit Juice', 5, 0, 1, 10, 129, '5'),
	('rolling_paper', 'Rolling paper', 5, 0, 1, 1, 11, '20'),
	('rollingpaper', 'Rolling Paper', 5, 0, 1, 1, 85, '20'),
	('rope', 'Rope/Drag (After Cuff)', 5, 0, 1, 10, 130, '-1'),
	('rubber', 'Rubber', 2, 0, 1, 1, 12, '20'),
	('samsung_s8', 'Samsung S8', 5, 0, 1, 1, 13, '20'),
	('sandwich', 'Sandwich', 3, 0, 1, 1, 86, '20'),
	('saucisson', 'Sausage', 1, 0, 1, 10, 131, '5'),
	('scrap_metal', 'Scrap Metal', 1, 0, 1, 1, 14, '20'),
	('screen', 'Screen', 1, 0, 1, 1, 15, '20'),
	('scubagear', 'Scuba Gear', 20, 0, 1, 1, 87, '20'),
	('shark', 'Shark', 1, 0, 1, 10, 132, '-1'),
	('shotgun_shells', 'Shotgun Shells', 20, 0, 1, 0, 0, NULL),
	('sim', 'Sim', 1, 0, 1, 0, 0, '-1'),
	('slaughtered_chicken', '', 1, 0, 1, 10, 133, '20'),
	('soda', 'Soda', 5, 0, 1, 10, 134, '5'),
	('sodium', 'Sodium', 4, 0, 1, 0, 0, '40'),
	('sodium_hydroxide', 'Sodium Hydroxide', 10, 0, 1, 0, 0, '15'),
	('spare_parts', 'Spare Parts', 1, 0, 1, 0, 0, '10'),
	('steel', 'Steel', 4, 0, 1, 1, 16, '20'),
	('stockrim', 'Stock Rim', 1, 0, 1, 10, 135, '4'),
	('stone', 'stone', 15, 0, 1, 10, 136, '7'),
	('sulfuric_acid', 'Sulfuric Acid', 5, 0, 1, 0, 0, '15'),
	('sunglasses', 'Sunglasses', 2, 0, 1, 1, 17, '20'),
	('syringe', 'Syringe', 1, 0, 1, 0, 0, '30'),
	('tactitalmuzle', 'Tactical Muzzle Brake', 1, 0, 1, 10, 137, '-1'),
	('teqpaf', 'Teyapaph', 1, 0, 1, 10, 138, '5'),
	('tequila', 'Tequila', 20, 0, 1, 1, 88, '20'),
	('thionyl_chloride', 'Thionyl Chloride', 1, 0, 1, 0, 0, '100'),
	('turbo', 'Turbo', 2, 0, 1, 10, 139, '2'),
	('turtle', 'Sea Turtle', 1, 0, 1, 10, 140, '3'),
	('turtlebait', 'Turtle Bait', 1, 0, 1, 10, 141, '10'),
	('vicodin', 'Vicodin', 2, 0, 1, 10, 128, '5'),
	('vipskinmotyl', 'VIP Skin Butterfly', 5, 0, 1, 10, 127, '-1'),
	('vodka', 'Vodka', 10, 0, 1, 10, 89, '20'),
	('vodkaenergy', 'Vodka-Energy', 5, 0, 1, 0, 114, '5'),
	('vodkafruit', 'Vodka-fruit juice', 5, 0, 1, 10, 115, '5'),
	('walkie_ems', 'EMS Walkie Talkie', 2, 0, 1, 10, 116, '-1'),
	('walkie_lspd', 'LSPD Walkie Talkie', 1, 0, 1, 10, 117, '-1'),
	('washed_stone', 'washed_stone', 1, 0, 1, 10, 118, '7'),
	('water', 'Water', 2, 0, 1, 10, 119, '25'),
	('weapon_piece', 'Weapon Piece', 2, 0, 1, 10, 120, '25'),
	('wheel', 'Wheel', 3, 0, 1, 0, 0, '5'),
	('whisky', 'Whisky', 20, 0, 1, 1, 90, '20'),
	('whiskycoca', 'Whisky-cola', 3, 0, 1, 0, 121, '5'),
	('white_pearl', 'White Pearl', 5, 0, 1, 1, 18, '20'),
	('wine', 'Wine', 20, 0, 1, 1, 19, '20'),
	('wood', 'Wood', 5, 0, 1, 10, 122, '20'),
	('wooddlugie', 'Wood Rifles Skin', 1, 0, 1, 10, 123, '-1'),
	('woodheavyp', 'Wood Heavy Pistol Skin', 50, 0, 1, 10, 124, '-1'),
	('wool', 'Wool', 5, 0, 1, 10, 125, '40'),
	('xtc', 'X', 1, 0, 1, 10, 20, '20'),
	('yusuf', 'Gold Skin', 1, 0, 1, 10, 126, '-1'),
	('zebradlugie', 'Zebra Rifles Skin', 10, 0, 1, 10, 142, '-1');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table essentialmode.itemsdicsinventaryhud
DROP TABLE IF EXISTS `itemsdicsinventaryhud`;
CREATE TABLE IF NOT EXISTS `itemsdicsinventaryhud` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `limit` int(10) NOT NULL DEFAULT 0,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.itemsdicsinventaryhud: ~163 rows (approximately)
DELETE FROM `itemsdicsinventaryhud`;
/*!40000 ALTER TABLE `itemsdicsinventaryhud` DISABLE KEYS */;
INSERT INTO `itemsdicsinventaryhud` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', 1, 1, 0, 1),
	('WEAPON_APPISTOL', 'AP Pistol', 1, 1, 0, 1),
	('WEAPON_ASSAULTRIFLE', 'Assault Rifle', 1, 1, 0, 1),
	('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', 1, 1, 0, 1),
	('WEAPON_ASSAULTSMG', 'Assault SMG', 1, 1, 0, 1),
	('WEAPON_AUTOSHOTGUN', 'Auto Shotgun', 1, 1, 0, 1),
	('WEAPON_BALL', 'Ball', 1, 1, 0, 1),
	('WEAPON_BAT', 'Bat', 1, 1, 0, 1),
	('WEAPON_BATTLEAXE', 'Battle Axe', 1, 1, 0, 1),
	('WEAPON_BOTTLE', 'Bottle', 1, 1, 0, 1),
	('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', 1, 1, 0, 1),
	('WEAPON_BULLPUPSHOTGUN', 'Bullpup Shotgun', 1, 1, 0, 1),
	('WEAPON_BZGAS', 'BZ Gas', 1, 1, 0, 1),
	('WEAPON_CARBINERIFLE', 'Carbine Rifle', 1, 1, 0, 1),
	('WEAPON_COMBATMG', 'Combat MG', 1, 1, 0, 1),
	('WEAPON_COMBATPDW', 'Combat PDW', 1, 1, 0, 1),
	('WEAPON_COMBATPISTOL', 'Combat Pistol', 1, 1, 0, 1),
	('WEAPON_COMPACTLAUNCHER', 'Compact Launcher', 1, 1, 0, 1),
	('WEAPON_COMPACTRIFLE', 'Compact Rifle', 1, 1, 0, 1),
	('WEAPON_CROWBAR', 'Crowbar', 1, 1, 0, 1),
	('WEAPON_DAGGER', 'Dagger', 1, 1, 0, 1),
	('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', 1, 1, 0, 1),
	('WEAPON_DIGISCANNER', 'Digiscanner', 1, 1, 0, 1),
	('WEAPON_DOUBLEACTION', 'Double Action Revolver', 1, 1, 0, 1),
	('WEAPON_FIREEXTINGUISHER', 'Fire Extinguisher', 1, 1, 0, 1),
	('WEAPON_FIREWORK', 'Firework Launcher', 1, 1, 0, 1),
	('WEAPON_FLARE', 'Flare', 1, 1, 0, 1),
	('WEAPON_FLAREGUN', 'Flare Gun', 1, 1, 0, 1),
	('WEAPON_FLASHLIGHT', 'Flashlight', 1, 1, 0, 1),
	('WEAPON_GARBAGEBAG', 'Garbage Bag', 1, 1, 0, 1),
	('WEAPON_GOLFCLUB', 'Golf Club', 1, 1, 0, 1),
	('WEAPON_GRENADE', 'Grenade', 1, 1, 0, 1),
	('WEAPON_GRENADELAUNCHER', 'Gernade Launcher', 1, 1, 0, 1),
	('WEAPON_GUSENBERG', 'Gusenberg', 1, 1, 0, 1),
	('WEAPON_HAMMER', 'Hammer', 1, 1, 0, 1),
	('WEAPON_HANDCUFFS', 'Handcuffs', 1, 1, 0, 1),
	('WEAPON_HATCHET', 'Hatchet', 1, 1, 0, 1),
	('WEAPON_HEAVYPISTOL', 'Heavy Pistol', 1, 1, 0, 1),
	('WEAPON_HEAVYSHOTGUN', 'Heavy Shotgun', 1, 1, 0, 1),
	('WEAPON_HEAVYSNIPER', 'Heavy Sniper', 1, 1, 0, 1),
	('WEAPON_HOMINGLAUNCHER', 'Homing Launcher', 1, 1, 0, 1),
	('WEAPON_KNIFE', 'Knife', 1, 1, 0, 1),
	('WEAPON_KNUCKLE', 'Knuckle Dusters ', 1, 1, 0, 1),
	('WEAPON_MACHETE', 'Machete', 1, 1, 0, 1),
	('WEAPON_MACHINEPISTOL', 'Machine Pistol', 1, 1, 0, 1),
	('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', 1, 1, 0, 1),
	('WEAPON_MARKSMANRIFLE', 'Marksman Rifle', 1, 1, 0, 1),
	('WEAPON_MG', 'MG', 1, 1, 0, 1),
	('WEAPON_MICROSMG', 'Micro SMG', 1, 1, 0, 1),
	('WEAPON_MINIGUN', 'Minigun', 1, 1, 0, 1),
	('WEAPON_MINISMG', 'Mini SMG', 1, 1, 0, 1),
	('WEAPON_MOLOTOV', 'Molotov', 1, 1, 0, 1),
	('WEAPON_MUSKET', 'Musket', 1, 1, 0, 1),
	('WEAPON_NIGHTSTICK', 'Police Baton', 1, 1, 0, 1),
	('WEAPON_PETROLCAN', 'Jerrycan', 1, 1, 0, 1),
	('WEAPON_PIPEBOMB', 'Pipe Bomb', 1, 1, 0, 1),
	('WEAPON_PISTOL', 'Pistol', 1, 1, 0, 1),
	('WEAPON_PISTOL50', 'Police .50', 1, 1, 0, 1),
	('WEAPON_POOLCUE', 'Pool Cue', 1, 1, 0, 1),
	('WEAPON_PROXMINE', 'Proximity Mine', 1, 1, 0, 1),
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 1, 1, 0, 1),
	('WEAPON_RAILGUN', 'Rail Gun', 1, 1, 0, 1),
	('WEAPON_REVOLVER', 'Revolver', 1, 1, 0, 1),
	('WEAPON_RPG', 'RPG', 1, 1, 0, 1),
	('WEAPON_SAWNOFFSHOTGUN', 'Sawn Off Shotgun', 1, 1, 0, 1),
	('WEAPON_SMG', 'SMG', 1, 1, 0, 1),
	('WEAPON_SMOKEGRENADE', 'Smoke Gernade', 1, 1, 0, 1),
	('WEAPON_SNIPERRIFLE', 'Sniper Rifle', 1, 1, 0, 1),
	('WEAPON_SNOWBALL', 'Snow Ball', 1, 1, 0, 1),
	('WEAPON_SNSPISTOL', 'SNS Pistol', 1, 1, 0, 1),
	('WEAPON_SPECIALCARBINE', 'Special Rifle', 1, 1, 0, 1),
	('WEAPON_STICKYBOMB', 'Sticky Bombs', 1, 1, 0, 1),
	('WEAPON_STINGER', 'Stinger', 1, 1, 0, 1),
	('WEAPON_STUNGUN', 'Police Taser', 1, 1, 0, 1),
	('WEAPON_SWITCHBLADE', 'Switch Blade', 1, 1, 0, 1),
	('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', 1, 1, 0, 1),
	('WEAPON_WRENCH', 'Wrench', 1, 1, 0, 1),
	('alive_chicken', 'Live Chicken', 1, 20, 0, 1),
	('bait', 'Bait', 1, 25, 0, 1),
	('bandage', 'Bandage', 2, 5, 0, 1),
	('bankidcard', 'Bank ID', 1, -1, 0, 1),
	('beer', 'Beer', 1, 40, 0, 1),
	('blowpipe', 'Blowtorch', 2, 0, 0, 1),
	('bread', 'Bread', 1, 20, 0, 1),
	('cannabis', 'Cannabis', 3, 0, 0, 1),
	('carokit', 'Body Kit', 3, 0, 0, 1),
	('carotool', 'Tools', 2, 0, 0, 1),
	('char', 'Rodling', 1, 20, 0, 1),
	('cigarette', 'Cigarette', 1, 40, 0, 1),
	('clothe', 'Cloth', 1, 40, 0, 1),
	('coke10g', 'Cocaine (10G)', 1, 50, 0, 1),
	('coke1g', 'Cocaine (1G)', 1, 50, 0, 1),
	('cokebrick', 'Cocaine Brick (100G)', 1, 20, 0, 1),
	('cokeburn', 'Cdecryptor', 1, 2, 0, 1),
	('copper', 'Copper', 1, 56, 0, 1),
	('crawfish', 'Crawfish', 1, 20, 0, 1),
	('cutted_wood', 'Cut Wood', 1, 20, 0, 1),
	('disc_ammo_pistol', 'Pistol Ammo', 10, 0, 0, 1),
	('disc_ammo_pistol_large', 'Pistol Ammo Large', 10, 0, 0, 1),
	('disc_ammo_rifle', 'Rifle Ammo', 10, 0, 0, 1),
	('disc_ammo_rifle_large', 'Rifle Ammo Large', 10, 0, 0, 1),
	('disc_ammo_shotgun', 'Shotgun Shells', 10, 0, 0, 1),
	('disc_ammo_shotgun_large', 'Shotgun Shells Large', 10, 0, 0, 1),
	('disc_ammo_smg', 'SMG Ammo', 10, 0, 0, 1),
	('disc_ammo_smg_large', 'SMG Ammo Large', 10, 0, 0, 1),
	('disc_ammo_snp', 'Sniper Ammo', 10, 0, 0, 1),
	('disc_ammo_snp_large', 'Sniper Ammo Large', 10, 0, 0, 1),
	('drugItem', 'Bdecryptor', 1, 2, 0, 1),
	('drugbags', 'Bags', 1, 80, 0, 1),
	('essence', 'Essence', 1, 24, 0, 1),
	('fabric', 'Fabric', 1, 80, 0, 1),
	('fish', 'Fish', 1, 100, 0, 1),
	('fishingpermit', 'Fishing Permit', 1, 5, 0, 1),
	('fishingrod', 'Fishing Rod', 1, 5, 0, 1),
	('fixkit', 'Repair Kit', 3, 0, 0, 1),
	('fixtool', 'Repair Tools', 2, 0, 0, 1),
	('gazbottle', 'Gas Bottle', 2, 0, 0, 1),
	('goldbar', 'Gold Bar', 1, 25, 0, 1),
	('goldfish', 'Goldfish', 1, 20, 0, 1),
	('goldwatch', 'Gold Watch', 1, 2500, 0, 1),
	('hackerDevice', 'Hacker Device', 1, 25, 0, 1),
	('hatchet_lj', 'Axe', 1, 1, 0, 1),
	('hqscale', 'High Quality Scale', 1, 1, 0, 1),
	('iron', 'Iron', 1, 42, 0, 1),
	('joint', 'Joint', 1, 40, 0, 1),
	('joint2g', 'Joint (2G)', 1, 50, 0, 1),
	('keycard', 'Keycard', 1, -1, 0, 1),
	('lobster', 'Hummer', 1, 20, 0, 1),
	('lockpick', 'Lockpick', 1, 5, 0, 1),
	('mackerel', 'Mackerel', 1, 20, 0, 1),
	('marijuana', 'Marijuana', 2, 0, 0, 1),
	('medikit', 'Medikit', 2, 0, 0, 1),
	('meth10g', 'Meth (10G)', 1, 50, 0, 1),
	('meth1g', 'Meth (1G)', 1, 50, 0, 1),
	('methbrick', 'Meth Brick (100G)', 1, 20, 0, 1),
	('methburn', 'Mdecryptor', 1, 2, 0, 1),
	('net_cracker', 'Net Cracker', 1, 2, 0, 1),
	('oxycutter', 'Plasma Torch', 1, -1, 0, 1),
	('pacificidcard', 'Pacific ID', 1, -1, 0, 1),
	('packaged_chicken', 'Packaged Chicken', 1, 100, 0, 1),
	('packaged_plank', 'Packaged Plank', 1, 100, 0, 1),
	('petrol', 'Petrol', 1, 24, 0, 1),
	('petrol_raffin', 'Refined Petrol', 1, 24, 0, 1),
	('phone', 'Phone', 1, 20, 0, 1),
	('pike', 'Pike', 1, 20, 0, 1),
	('pro_wood', 'Plank', 1, 2, 0, 1),
	('roach', 'Roach', 1, 20, 0, 1),
	('rolpaper', 'Rolling Paper', 1, 80, 0, 1),
	('salmon', 'Salmon', 1, 20, 0, 1),
	('slaughtered_chicken', 'Slaughtered Chicken', 1, 20, 0, 1),
	('soda', 'Soda', 1, 40, 0, 1),
	('stone', 'Stone', 1, 7, 0, 1),
	('thermite', 'Thermite Bomb', 1, 5, 0, 1),
	('trout', 'Trout', 1, 20, 0, 1),
	('washed_stone', 'Washed Stone', 1, 7, 0, 1),
	('water', 'Water', 1, 20, 0, 1),
	('weed20g', 'Weed (20G)', 1, 100, 0, 1),
	('weed4g', 'Weed (4G)', 1, 200, 0, 1),
	('weedbrick', 'Weed Brick (200G)', 1, 25, 0, 1),
	('weedburn', 'Wdecryptor', 1, 2, 0, 1),
	('whitefish', 'Stylish', 1, 20, 0, 1),
	('wood', 'Wood', 1, 10, 0, 1),
	('wool', 'Wool', 1, 40, 0, 1);
/*!40000 ALTER TABLE `itemsdicsinventaryhud` ENABLE KEYS */;

-- Dumping structure for table essentialmode.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.jobs: ~23 rows (approximately)
DELETE FROM `jobs`;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'LSMC', 1),
	('ballas', 'Ballas', 1),
	('banksecurity', 'banksecurity', 0),
	('cardealer', 'Cardealer', 1),
	('families', 'Families', 1),
	('fisherman', 'Fisherman', 0),
	('god', 'Gunslinger', 1),
	('gopostal', 'GoPostal', 0),
	('groove', 'groove', 0),
	('krowa', 'Farmer', 0),
	('mafia', 'Mafia', 1),
	('mechanic', 'Mechanic', 1),
	('offambulance', 'Off-Duty', 1),
	('offpolice', 'Off-Duty', 1),
	('police', 'LSPD', 1),
	('reporter', 'Journalist', 0),
	('taxi', 'Taxi', 0),
	('tlmc', 'TLMC', 1),
	('trucker', 'Trucker', 0),
	('unemployed', 'Unemployed', 0),
	('vagos', 'Vagos', 1),
	('windowcleaner', 'Windowcleaner', 0),
	('zomato', 'Uber Eats', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table essentialmode.job_grades
DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.job_grades: ~57 rows (approximately)
DELETE FROM `job_grades`;
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Unemployed', 100, '{}', '{}'),
	(2, 'zomato', 0, 'employee', 'Employee', 50, '{}', '{}'),
	(3, 'fisherman', 0, 'employee', 'Employee', 50, '{}', '{}'),
	(5, 'reporter', 0, 'employee', 'Employee', 200, '{}', '{}'),
	(14, 'mechanic', 0, 'recrue', 'Trainee', 50, '{}', '{}'),
	(15, 'mechanic', 1, 'novice', 'Trainer', 75, '{}', '{}'),
	(16, 'mechanic', 2, 'experimente', 'Manager', 100, '{}', '{}'),
	(17, 'mechanic', 3, 'chief', 'Sr.Manager', 125, '{}', '{}'),
	(18, 'mechanic', 4, 'boss', 'Boss', 150, '{}', '{}'),
	(24, 'cardealer', 0, 'recruit', 'Trainee', 50, '{}', '{}'),
	(25, 'cardealer', 1, 'novice', 'Sales Man', 75, '{}', '{}'),
	(26, 'cardealer', 2, 'experienced', 'Manager', 100, '{}', '{}'),
	(27, 'cardealer', 3, 'boss', 'Boss', 150, '{}', '{}'),
	(28, 'ambulancebackup', 0, 'ambulance', 'Trainee', 200, '{"tshirt_1":88,"tshirt_2":0,"torso_1":32,"torso_2":7,"shoes_1":10,"shoes_2":10,"pants_1":24,"pants_2":5,"sex":0,"decals_1":58,"decals_2":0,"chain_1":0,"chain_2":0,"arms_1":63}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(29, 'ambulancebackup', 1, 'doctor', 'Doctor', 300, '{"tshirt_1":57,"tshirt_2":0,"torso_1":24,"torso_2":5,"shoes_1":10,"shoes_2":10,"pants_1":24,"pants_2":5,"sex":0,"decals_1":0,"decals_2":0,"chain_1":0,"chain_2":0,"arms_1":71}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(30, 'ambulancebackup', 2, 'chief_doctor', 'Paramedic', 400, '{"tshirt_1":53,"tshirt_2":1,"torso_1":24,"torso_2":6,"shoes_1":10,"shoes_2":10,"pants_1":24,"pants_2":5,"sex":0,"decals_1":0,"decals_2":0,"chain_1":0,"chain_2":0,"arms_1":71}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(31, 'ambulancebackup', 3, 'boss', 'Chief', 500, '{"tshirt_1":122,"tshirt_2":0,"torso_1":24,"torso_2":0,"shoes_1":10,"shoes_2":10,"pants_1":24,"pants_2":5,"sex":0,"decals_1":0,"decals_2":0,"chain_1":0,"chain_2":0,"arms_1":71}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(32, 'policebackup', 0, 'recruit', 'Recruit', 100, '{"tshirt_1":122,"tshirt_2":0,"torso_1":19,"torso_2":0,"decals_1":0,"decals_2":0,"arms":35,"pants_1":32,"pants_2":1,"shoes_1":13,"shoes_2":0,"helmet_1":58,"helmet_2":2,"chain_1":0,"chain_2":0,"ears_1":2,"ears_2":0,"bproof_1":10,"bproof_2":0}', '{}'),
	(33, 'policebackup', 1, 'officer', 'Officer/Sr. Officer', 200, '{"tshirt_1":129,"tshirt_2":0,"torso_1":29,"torso_2":3,"decals_1":11,"decals_2":0,"arms":30,"pants_1":46,"pants_2":0,"shoes_1":24,"shoes_2":0,"helmet_1":44,"helmet_2":0,"glasses_1":5,"glasses_2":5,chain_1":0,"chain_2":0,"ears_1":2,"ears_2":0,"bproof_1":10,"bproof_2":0}', '{}'),
	(34, 'policebackup', 2, 'sergeant', 'Corporal/Sergeant', 300, '{"tshirt_1":57,"tshirt_2":0,"torso_1":29,"torso_2":4,"decals_1":11,"decals_2":1,"arms":30,"pants_1":46,"pants_2":0,"shoes_1":24,"shoes_2":0,"helmet_1":44,"helmet_2":0,"glasses_1":5,"glasses_2":5,chain_1":0,"chain_2":0,"ears_1":2,"ears_2":0,"bproof_1":10,"bproof_2":0}', '{}'),
	(35, 'policebackup', 3, 'lieutenant', 'Lieutenant/Captain', 400, '{"tshirt_1":53,"tshirt_2":1,"torso_1":52,"torso_2":3,"decals_1":0,"decals_2":0,"arms":31,"pants_1":46,"pants_2":0,"shoes_1":24,"shoes_2":0,"helmet_1":46,"helmet_2":0,"glasses_1":5,"glasses_2":5,chain_1":0,"chain_2":0,"ears_1":2,"ears_2":0,"bproof_1":10,"bproof_2":0}', '{}'),
	(36, 'policebackup', 4, 'boss', 'Chief/Asst Chief', 0, '{"tshirt_1":92,"tshirt_2":16,"torso_1":39,"torso_2":1,"decals_1":0,"decals_2":0,"arms":39,"pants_1":24,"pants_2":2,"shoes_1":10,"shoes_2":0,"helmet_1":1,"helmet_2":0,"glasses_1":5,"glasses_2":1,chain_1":0,"chain_2":0,"ears_1":2,"ears_2":0,"bproof_1":10,"bproof_2":0}', '{}'),
	(37, 'offpolice', 0, 'recruit', 'Recruit', 100, '{}', '{}'),
	(38, 'offpolice', 1, 'officer', 'Officer', 100, '{}', '{}'),
	(39, 'offpolice', 2, 'sergeant', 'Sergeant', 100, '{}', '{}'),
	(40, 'offpolice', 3, 'lieutenant', 'Lieutenant', 100, '{}', '{}'),
	(41, 'offpolice', 4, 'boss', 'Boss', 100, '{}', '{}'),
	(42, 'offambulance', 0, 'ambulance', 'Ambulance', 100, '{}', '{}'),
	(43, 'offambulance', 1, 'doctor', 'Doctor', 100, '{}', '{}'),
	(44, 'offambulance', 2, 'chief_doctor', 'Chef', 100, '{}', '{}'),
	(45, 'offambulance', 3, 'boss', 'Boss', 100, '{}', '{}'),
	(46, 'vagos', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(47, 'ballas', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(48, 'mafia', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(49, 'families', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(50, 'tlmc', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(51, 'god', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(52, 'taxi', 0, 'Employee', 'Employee', 50, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(53, 'krowa', 0, 'employee', 'Farmer', 10, '', ''),
	(57, 'windowcleaner', 0, 'cleaner', 'Cleaner', 100, '{}', '{}'),
	(58, 'trucker', 0, 'employe', 'Employee', 200, '{}', '{}'),
	(59, 'banksecurity', 0, 'employee', 'banksecurity', 200, '{"tshirt_1":60,"torso_1":130,"arms":31,"pants_1":25,"glasses_1":0,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":0,"shoes":63,"hair_1":0,"skin":0,"sex":0,"glasses_1":19,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":65}', '{"tshirt_1":60,"torso_1":0,"arms":68,"pants_1":25,"glasses_1":0,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":27,"glasses_2":0,"torso_2":0,"shoes":63,"hair_1":5,"skin":0,"sex":1,"glasses_1":15,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":65}'),
	(60, 'gopostal', 0, 'employee', 'Intérimaire', 200, '', ''),
	(61, 'groove', 0, 'recrue', 'Recrue', 685, '{}', '{}'),
	(62, 'groove', 1, 'novice', 'Novice', 1150, '{}', '{}'),
	(63, 'groove', 2, 'experimente', 'Experimente', 1350, '{}', '{}'),
	(64, 'groove', 3, 'chief', 'Chef', 1750, '{}', '{}'),
	(65, 'groove', 4, 'boss', 'Boss', 2500, '{}', '{}'),
	(66, 'ambulance', 0, 'ambulance', 'Jr. EMT', 20, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(67, 'ambulance', 1, 'doctor', 'EMT', 40, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(68, 'ambulance', 2, 'chief_doctor', 'Sr. EMT', 60, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(69, 'ambulance', 3, 'boss', 'EMT Supervisor', 80, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(70, 'police', 0, 'recruit', 'Recruit', 20, '{}', '{}'),
	(71, 'police', 1, 'officer', 'Officer', 40, '{}', '{}'),
	(72, 'police', 2, 'sergeant', 'Sergeant', 60, '{}', '{}'),
	(73, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
	(74, 'police', 4, 'boss', 'Chief', 100, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table essentialmode.jsfour_criminalrecord
DROP TABLE IF EXISTS `jsfour_criminalrecord`;
CREATE TABLE IF NOT EXISTS `jsfour_criminalrecord` (
  `offense` varchar(160) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `classified` int(2) NOT NULL DEFAULT 0,
  `identifier` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `warden` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`offense`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.jsfour_criminalrecord: ~0 rows (approximately)
DELETE FROM `jsfour_criminalrecord`;
/*!40000 ALTER TABLE `jsfour_criminalrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsfour_criminalrecord` ENABLE KEYS */;

-- Dumping structure for table essentialmode.jsfour_criminaluserinfo
DROP TABLE IF EXISTS `jsfour_criminaluserinfo`;
CREATE TABLE IF NOT EXISTS `jsfour_criminaluserinfo` (
  `identifier` varchar(160) NOT NULL,
  `aliases` varchar(255) DEFAULT NULL,
  `recordid` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `eyecolor` varchar(255) DEFAULT NULL,
  `haircolor` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.jsfour_criminaluserinfo: ~0 rows (approximately)
DELETE FROM `jsfour_criminaluserinfo`;
/*!40000 ALTER TABLE `jsfour_criminaluserinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsfour_criminaluserinfo` ENABLE KEYS */;

-- Dumping structure for table essentialmode.licenses
DROP TABLE IF EXISTS `licenses`;
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.licenses: ~9 rows (approximately)
DELETE FROM `licenses`;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` (`type`, `label`) VALUES
	('boat', 'Boat License'),
	('chemicalslisence', 'Chemicals license'),
	('dmv', 'Driving Permit'),
	('drive', 'Drivers License'),
	('drive_bike', 'Motorcycle License'),
	('drive_truck', 'Commercial Drivers License'),
	('weapon', 'Weapon Permit'),
	('weed_processing', 'Weed Processing License'),
	('wweashopseapon', 'License to carry a weapon');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumping structure for table essentialmode.outfits
DROP TABLE IF EXISTS `outfits`;
CREATE TABLE IF NOT EXISTS `outfits` (
  `idSteam` varchar(255) NOT NULL,
  `dad` int(11) NOT NULL DEFAULT 0,
  `mum` int(11) NOT NULL DEFAULT 0,
  `dadmumpercent` int(11) NOT NULL DEFAULT 0,
  `skinton` int(11) NOT NULL DEFAULT 0,
  `eyecolor` int(11) NOT NULL DEFAULT 0,
  `acne` int(11) NOT NULL DEFAULT 0,
  `skinproblem` int(11) NOT NULL DEFAULT 0,
  `freckle` int(11) NOT NULL DEFAULT 0,
  `wrinkle` int(11) NOT NULL DEFAULT 0,
  `wrinkleopacity` int(11) NOT NULL DEFAULT 0,
  `eyebrow` int(11) NOT NULL DEFAULT 0,
  `eyebrowopacity` int(11) NOT NULL DEFAULT 0,
  `beard` int(11) NOT NULL DEFAULT 0,
  `beardopacity` int(11) NOT NULL DEFAULT 0,
  `beardcolor` int(11) NOT NULL DEFAULT 0,
  `hair` int(11) NOT NULL DEFAULT 0,
  `hairtext` int(11) NOT NULL DEFAULT 0,
  `torso` int(11) NOT NULL DEFAULT 0,
  `torsotext` int(11) NOT NULL DEFAULT 0,
  `leg` int(11) NOT NULL DEFAULT 0,
  `legtext` int(11) NOT NULL DEFAULT 0,
  `shoes` int(11) NOT NULL DEFAULT 0,
  `shoestext` int(11) NOT NULL DEFAULT 0,
  `accessory` int(11) NOT NULL DEFAULT 0,
  `accessorytext` int(11) NOT NULL DEFAULT 0,
  `undershirt` int(11) NOT NULL DEFAULT 0,
  `undershirttext` int(11) NOT NULL DEFAULT 0,
  `torso2` int(11) NOT NULL DEFAULT 0,
  `torso2text` int(11) NOT NULL DEFAULT 0,
  `prop_hat` int(11) NOT NULL DEFAULT 0,
  `prop_hat_text` int(11) NOT NULL DEFAULT 0,
  `prop_glasses` int(11) NOT NULL DEFAULT 0,
  `prop_glasses_text` int(11) NOT NULL DEFAULT 0,
  `prop_earrings` int(11) NOT NULL DEFAULT 0,
  `prop_earrings_text` int(11) NOT NULL DEFAULT 0,
  `prop_watches` int(11) NOT NULL DEFAULT 0,
  `prop_watches_text` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.outfits: ~0 rows (approximately)
DELETE FROM `outfits`;
/*!40000 ALTER TABLE `outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `outfits` ENABLE KEYS */;

-- Dumping structure for table essentialmode.owned_properties
DROP TABLE IF EXISTS `owned_properties`;
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.owned_properties: ~0 rows (approximately)
DELETE FROM `owned_properties`;
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- Dumping structure for table essentialmode.owned_shops
DROP TABLE IF EXISTS `owned_shops`;
CREATE TABLE IF NOT EXISTS `owned_shops` (
  `identifier` varchar(250) DEFAULT NULL,
  `ShopNumber` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT 0,
  `ShopValue` int(11) DEFAULT NULL,
  `LastRobbery` int(11) DEFAULT 0,
  `ShopName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.owned_shops: ~20 rows (approximately)
DELETE FROM `owned_shops`;
/*!40000 ALTER TABLE `owned_shops` DISABLE KEYS */;
INSERT INTO `owned_shops` (`identifier`, `ShopNumber`, `money`, `ShopValue`, `LastRobbery`, `ShopName`) VALUES
	('0', 1, 0, 280000, 1549643682, '0'),
	('0', 2, 0, 220000, 1549643682, '0'),
	('0', 3, 0, 235000, 1549643682, '0'),
	('0', 4, 0, 285000, 1549643682, '0'),
	('0', 5, 0, 135000, 1549643682, '0'),
	('0', 6, 0, 235000, 1549643682, '0'),
	('0', 7, 0, 160000, 1549643682, '0'),
	('0', 8, 0, 275000, 1549643682, '0'),
	('0', 9, 0, 265000, 1549643682, '0'),
	('0', 10, 0, 300000, 1549643682, '0'),
	('0', 12, 0, 145000, 1549643682, '0'),
	('0', 13, 0, 145000, 1549643682, '0'),
	('0', 14, 0, 280000, 1549643682, '0'),
	('0', 15, 0, 300000, 1549643682, '0'),
	('0', 16, 0, 435000, 1549643682, '0'),
	('0', 18, 0, 235000, 1549643682, '0'),
	('0', 11, 0, 225000, 1549643682, '0'),
	('0', 19, 0, 150000, 1549643682, '0'),
	('0', 20, 0, 165000, 1549643682, '0'),
	('0', 17, 0, 150000, 1549643682, '0');
/*!40000 ALTER TABLE `owned_shops` ENABLE KEYS */;

-- Dumping structure for table essentialmode.owned_vehicles
DROP TABLE IF EXISTS `owned_vehicles`;
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) NOT NULL DEFAULT 'unemployed',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `jamstate` int(11) NOT NULL DEFAULT 0,
  `garage` varchar(200) NOT NULL DEFAULT 'A',
  `finance` int(32) NOT NULL DEFAULT 0,
  `financetimer` int(32) NOT NULL DEFAULT 0,
  `lasthouse` int(11) NOT NULL DEFAULT 0,
  `date` varchar(50) NOT NULL DEFAULT '0000-00-00',
  `damages` varchar(255) NOT NULL DEFAULT '{}',
  `paidprice` varchar(50) NOT NULL DEFAULT 'paidprice',
  `model` varchar(30) NOT NULL DEFAULT 'model',
  `modelname` varchar(250) DEFAULT 'modelname',
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.owned_vehicles: ~0 rows (approximately)
DELETE FROM `owned_vehicles`;
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Dumping structure for table essentialmode.phone_app_chat
DROP TABLE IF EXISTS `phone_app_chat`;
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.phone_app_chat: ~0 rows (approximately)
DELETE FROM `phone_app_chat`;
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- Dumping structure for table essentialmode.phone_calls
DROP TABLE IF EXISTS `phone_calls`;
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.phone_calls: ~0 rows (approximately)
DELETE FROM `phone_calls`;
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Dumping structure for table essentialmode.phone_messages
DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.phone_messages: 0 rows
DELETE FROM `phone_messages`;
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumping structure for table essentialmode.phone_users_contacts
DROP TABLE IF EXISTS `phone_users_contacts`;
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.phone_users_contacts: 0 rows
DELETE FROM `phone_users_contacts`;
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Dumping structure for table essentialmode.playerhousing
DROP TABLE IF EXISTS `playerhousing`;
CREATE TABLE IF NOT EXISTS `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.playerhousing: ~0 rows (approximately)
DELETE FROM `playerhousing`;
/*!40000 ALTER TABLE `playerhousing` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerhousing` ENABLE KEYS */;

-- Dumping structure for table essentialmode.playerhousing_keys
DROP TABLE IF EXISTS `playerhousing_keys`;
CREATE TABLE IF NOT EXISTS `playerhousing_keys` (
  `owner` varchar(50) NOT NULL,
  `house` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.playerhousing_keys: ~0 rows (approximately)
DELETE FROM `playerhousing_keys`;
/*!40000 ALTER TABLE `playerhousing_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerhousing_keys` ENABLE KEYS */;

-- Dumping structure for table essentialmode.playermotels
DROP TABLE IF EXISTS `playermotels`;
CREATE TABLE IF NOT EXISTS `playermotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL,
  `zone` varchar(50) NOT NULL,
  `door` longtext NOT NULL,
  `inventory` longtext NOT NULL,
  `weapons` longtext NOT NULL,
  `dirtymoney` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.playermotels: ~0 rows (approximately)
DELETE FROM `playermotels`;
/*!40000 ALTER TABLE `playermotels` DISABLE KEYS */;
/*!40000 ALTER TABLE `playermotels` ENABLE KEYS */;

-- Dumping structure for table essentialmode.playermotels_homeinventory
DROP TABLE IF EXISTS `playermotels_homeinventory`;
CREATE TABLE IF NOT EXISTS `playermotels_homeinventory` (
  `owner` varchar(50) NOT NULL,
  `inventory` longtext NOT NULL,
  `weapons` longtext NOT NULL,
  `dirtymoney` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.playermotels_homeinventory: ~0 rows (approximately)
DELETE FROM `playermotels_homeinventory`;
/*!40000 ALTER TABLE `playermotels_homeinventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `playermotels_homeinventory` ENABLE KEYS */;

-- Dumping structure for table essentialmode.properties
DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entering` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `exit` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `outside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ipls` varchar(255) COLLATE utf8mb4_bin DEFAULT '[]',
  `gateway` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.properties: ~42 rows (approximately)
DELETE FROM `properties`;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 1500000),
	(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907},', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 1500000),
	(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 1700000),
	(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 1500000),
	(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 1500000),
	(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 1500000),
	(7, 'LowEndApartment', 'Appartement de base', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 562500),
	(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 1500000),
	(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 1500000),
	(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 1500000),
	(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 1700000),
	(12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
	(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 1300000),
	(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 1300000),
	(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 1300000),
	(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 1300000),
	(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 1300000),
	(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 1300000),
	(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 1300000),
	(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 1300000),
	(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 1300000),
	(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 1300000),
	(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 1300000),
	(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 1300000),
	(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 1300000),
	(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 1300000),
	(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 1300000),
	(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 1300000),
	(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 1300000),
	(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 1300000),
	(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 1300000),
	(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 1300000),
	(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 1300000),
	(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 1300000),
	(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 1300000),
	(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 1300000),
	(37, 'IntegrityWay', '4 Integrity Way', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
	(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 1700000),
	(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 1700000),
	(40, 'DellPerroHeights', 'Dell Perro Heights', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
	(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 1700000),
	(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 1700000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Dumping structure for table essentialmode.rented_vehicles
DROP TABLE IF EXISTS `rented_vehicles`;
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.rented_vehicles: ~0 rows (approximately)
DELETE FROM `rented_vehicles`;
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Dumping structure for table essentialmode.shipments
DROP TABLE IF EXISTS `shipments`;
CREATE TABLE IF NOT EXISTS `shipments` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `time` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.shipments: ~0 rows (approximately)
DELETE FROM `shipments`;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;

-- Dumping structure for table essentialmode.shops
DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `label` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.shops: ~43 rows (approximately)
DELETE FROM `shops`;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` (`id`, `store`, `item`, `label`, `price`) VALUES
	(1, 'TwentyFourSeven', 'bread', '', 30),
	(2, 'TwentyFourSeven', 'water', '', 15),
	(4, 'RobsLiquor', 'water', '', 15),
	(5, 'LTDgasoline', 'bread', '', 30),
	(6, 'LTDgasoline', 'water', '', 15),
	(7, 'TwentyFourSeven', 'phone', '', 10),
	(9, 'LTDgasoline', 'chocolate', '', 10),
	(11, 'RobsLiquor', 'sandwich', '', 10),
	(12, 'LTDgasoline', 'sandwich', '', 10),
	(13, 'TwentyFourSeven', 'hamburger', '', 15),
	(14, 'RobsLiquor', 'hamburger', '', 15),
	(15, 'LTDgasoline', 'hamburger', '', 15),
	(16, 'TwentyFourSeven', 'cupcake', '', 10),
	(17, 'RobsLiquor', 'cupcake', '', 10),
	(18, 'LTDgasoline', 'cupcake', '', 10),
	(19, 'TwentyFourSeven', 'chips', '', 15),
	(20, 'RobsLiquor', 'chips', '', 15),
	(21, 'LTDgasoline', 'chips', '', 15),
	(22, 'TwentyFourSeven', 'cocacola', '', 15),
	(23, 'RobsLiquor', 'cocacola', '', 15),
	(24, 'LTDgasoline', 'cocacola', '', 15),
	(25, 'TwentyFourSeven', 'icetea', '', 10),
	(26, 'RobsLiquor', 'icetea', '', 10),
	(27, 'LTDgasoline', 'icetea', '', 10),
	(28, 'TwentyFourSeven', 'coffe', '', 10),
	(29, 'RobsLiquor', 'coffe', '', 10),
	(30, 'LTDgasoline', 'coffe', '', 10),
	(34, 'RobsLiquor', 'cigarette', '', 15),
	(36, 'LTDgasoline', 'cigarette', '', 15),
	(38, 'TwentyFourSeven', 'cigarette', '', 15),
	(46, 'Bar', 'beer', '', 30),
	(47, 'Bar', 'joint', '', 25),
	(48, 'Bar', 'vodka', '', 60),
	(53, 'Disco', 'beer', '', 30),
	(55, 'Disco', 'vodka', '', 60),
	(59, 'Disco', 'joint', '', 100),
	(62, 'Bar', 'whiskey', '', 25),
	(63, 'Disco', 'whiskey', '', 25),
	(64, 'LTDgasoline', 'phone', '', 10),
	(65, 'RobsLiquor', 'phone', '', 10),
	(66, 'YouTool', 'c4_bank', '', 1500),
	(67, 'YouTool', 'blowtorch', '', 500),
	(68, 'YouTool', 'raspberry', '', 2000);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;

-- Dumping structure for table essentialmode.shops2
DROP TABLE IF EXISTS `shops2`;
CREATE TABLE IF NOT EXISTS `shops2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode.shops2: ~0 rows (approximately)
DELETE FROM `shops2`;
/*!40000 ALTER TABLE `shops2` DISABLE KEYS */;
/*!40000 ALTER TABLE `shops2` ENABLE KEYS */;

-- Dumping structure for table essentialmode.society_moneywash
DROP TABLE IF EXISTS `society_moneywash`;
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.society_moneywash: ~0 rows (approximately)
DELETE FROM `society_moneywash`;
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Dumping structure for table essentialmode.trucks
DROP TABLE IF EXISTS `trucks`;
CREATE TABLE IF NOT EXISTS `trucks` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.trucks: ~240 rows (approximately)
DELETE FROM `trucks`;
/*!40000 ALTER TABLE `trucks` DISABLE KEYS */;
INSERT INTO `trucks` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 900000, 'super'),
	('Akuma', 'AKUMA', 7500, 'motorcycles'),
	('Alpha', 'alpha', 60000, 'sports'),
	('Ardent', 'ardent', 1150000, 'sportsclassics'),
	('Asea', 'asea', 5500, 'sedans'),
	('Autarch', 'autarch', 1955000, 'super'),
	('Avarus', 'avarus', 18000, 'motorcycles'),
	('Bagger', 'bagger', 13500, 'motorcycles'),
	('Baller', 'baller2', 40000, 'suvs'),
	('Baller Sport', 'baller3', 60000, 'suvs'),
	('Banshee', 'banshee', 70000, 'sports'),
	('Banshee 900R', 'banshee2', 255000, 'super'),
	('Bati 801', 'bati', 12000, 'motorcycles'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles'),
	('Bestia GTS', 'bestiagts', 55000, 'sports'),
	('BF400', 'bf400', 6500, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroad'),
	('Bifta', 'bifta', 12000, 'offroad'),
	('Bison', 'bison', 45000, 'vans'),
	('Blade', 'blade', 15000, 'muscle'),
	('Blazer', 'blazer', 6500, 'offroad'),
	('Blazer Sport', 'blazer4', 8500, 'offroad'),
	('blazer5', 'blazer5', 1755600, 'offroad'),
	('Blista', 'blista', 8000, 'compacts'),
	('BMX (velo)', 'bmx', 160, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans'),
	('Brawler', 'brawler', 45000, 'offroad'),
	('Brioso R/A', 'brioso', 18000, 'compacts'),
	('Btype', 'btype', 62000, 'sportsclassics'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 18000, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
	('Buffalo', 'buffalo', 12000, 'sports'),
	('Buffalo S', 'buffalo2', 20000, 'sports'),
	('Bullet', 'bullet', 90000, 'super'),
	('Burrito', 'burrito3', 19000, 'vans'),
	('Camper', 'camper', 42000, 'vans'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
	('Casco', 'casco', 30000, 'sportsclassics'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs'),
	('Cheetah', 'cheetah', 375000, 'super'),
	('Chimera', 'chimera', 38000, 'motorcycles'),
	('Chino', 'chino', 15000, 'muscle'),
	('Chino Luxe', 'chino2', 19000, 'muscle'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Comet', 'comet2', 65000, 'sports'),
	('Comet 5', 'comet5', 1145000, 'sports'),
	('Contender', 'contender', 70000, 'suvs'),
	('Coquette', 'coquette', 65000, 'sports'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
	('Cyclone', 'cyclone', 1890000, 'super'),
	('Daemon', 'daemon', 11500, 'motorcycles'),
	('Daemon High', 'daemon2', 13500, 'motorcycles'),
	('Defiler', 'defiler', 9800, 'motorcycles'),
	('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
	('Dominator', 'dominator', 35000, 'muscle'),
	('Double T', 'double', 28000, 'motorcycles'),
	('Dubsta', 'dubsta', 45000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
	('Dukes', 'dukes', 28000, 'muscle'),
	('Dune Buggy', 'dune', 8000, 'offroad'),
	('Elegy', 'elegy2', 38500, 'sports'),
	('Emperor', 'emperor', 8500, 'sedans'),
	('Enduro', 'enduro', 5500, 'motorcycles'),
	('Entity XF', 'entityxf', 425000, 'super'),
	('Esskey', 'esskey', 4200, 'motorcycles'),
	('Exemplar', 'exemplar', 32000, 'coupes'),
	('F620', 'f620', 40000, 'coupes'),
	('Faction', 'faction', 20000, 'muscle'),
	('Faction Rider', 'faction2', 30000, 'muscle'),
	('Faction XL', 'faction3', 40000, 'muscle'),
	('Faggio', 'faggio', 1900, 'motorcycles'),
	('Vespa', 'faggio2', 2800, 'motorcycles'),
	('Felon', 'felon', 42000, 'coupes'),
	('Felon GT', 'felon2', 55000, 'coupes'),
	('Feltzer', 'feltzer2', 55000, 'sports'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
	('Fixter (velo)', 'fixter', 225, 'motorcycles'),
	('FMJ', 'fmj', 185000, 'super'),
	('Fhantom', 'fq2', 17000, 'suvs'),
	('Fugitive', 'fugitive', 12000, 'sedans'),
	('Furore GT', 'furoregt', 45000, 'sports'),
	('Fusilade', 'fusilade', 40000, 'sports'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
	('Gauntlet', 'gauntlet', 30000, 'muscle'),
	('Gang Burrito', 'gburrito', 45000, 'vans'),
	('Burrito', 'gburrito2', 29000, 'vans'),
	('Glendale', 'glendale', 6500, 'sedans'),
	('Grabger', 'granger', 50000, 'suvs'),
	('Gresley', 'gresley', 47500, 'suvs'),
	('GT 500', 'gt500', 785000, 'sportsclassics'),
	('Guardian', 'guardian', 45000, 'offroad'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
	('Hermes', 'hermes', 535000, 'muscle'),
	('Hexer', 'hexer', 12000, 'motorcycles'),
	('Hotknife', 'hotknife', 125000, 'muscle'),
	('Huntley S', 'huntley', 40000, 'suvs'),
	('Hustler', 'hustler', 625000, 'muscle'),
	('Infernus', 'infernus', 180000, 'super'),
	('Innovation', 'innovation', 23500, 'motorcycles'),
	('Intruder', 'intruder', 7500, 'sedans'),
	('Issi', 'issi2', 10000, 'compacts'),
	('Jackal', 'jackal', 38000, 'coupes'),
	('Jester', 'jester', 65000, 'sports'),
	('Jester(Racecar)', 'jester2', 135000, 'sports'),
	('Journey', 'journey', 6500, 'vans'),
	('Kamacho', 'kamacho', 345000, 'offroad'),
	('Khamelion', 'khamelion', 38000, 'sports'),
	('Kuruma', 'kuruma', 30000, 'sports'),
	('Landstalker', 'landstalker', 35000, 'suvs'),
	('RE-7B', 'le7b', 325000, 'super'),
	('Lynx', 'lynx', 40000, 'sports'),
	('Mamba', 'mamba', 70000, 'sports'),
	('Manana', 'manana', 12800, 'sportsclassics'),
	('Manchez', 'manchez', 5300, 'motorcycles'),
	('Massacro', 'massacro', 65000, 'sports'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
	('Mesa', 'mesa', 16000, 'suvs'),
	('Mesa Trail', 'mesa3', 40000, 'suvs'),
	('Minivan', 'minivan', 13000, 'vans'),
	('Monroe', 'monroe', 55000, 'sportsclassics'),
	('The Liberator', 'monster', 210000, 'offroad'),
	('Moonbeam', 'moonbeam', 18000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
	('Nemesis', 'nemesis', 5800, 'motorcycles'),
	('Neon', 'neon', 1500000, 'sports'),
	('Nightblade', 'nightblade', 35000, 'motorcycles'),
	('Nightshade', 'nightshade', 65000, 'muscle'),
	('9F', 'ninef', 65000, 'sports'),
	('9F Cabrio', 'ninef2', 80000, 'sports'),
	('Omnis', 'omnis', 35000, 'sports'),
	('Oppressor', 'oppressor', 3524500, 'super'),
	('Oracle XS', 'oracle2', 35000, 'coupes'),
	('Osiris', 'osiris', 160000, 'super'),
	('Panto', 'panto', 10000, 'compacts'),
	('Paradise', 'paradise', 19000, 'vans'),
	('Pariah', 'pariah', 1420000, 'sports'),
	('Patriot', 'patriot', 55000, 'suvs'),
	('PCJ-600', 'pcj', 6200, 'motorcycles'),
	('Penumbra', 'penumbra', 28000, 'sports'),
	('Pfister', 'pfister811', 85000, 'super'),
	('Phoenix', 'phoenix', 12500, 'muscle'),
	('Picador', 'picador', 18000, 'muscle'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics'),
	('Prairie', 'prairie', 12000, 'compacts'),
	('Premier', 'premier', 8000, 'sedans'),
	('Primo Custom', 'primo2', 14000, 'sedans'),
	('X80 Proto', 'prototipo', 2500000, 'super'),
	('Radius', 'radi', 29000, 'suvs'),
	('raiden', 'raiden', 1375000, 'sports'),
	('Rapid GT', 'rapidgt', 35000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
	('Reaper', 'reaper', 150000, 'super'),
	('Rebel', 'rebel2', 35000, 'offroad'),
	('Regina', 'regina', 5000, 'sedans'),
	('Retinue', 'retinue', 615000, 'sportsclassics'),
	('Revolter', 'revolter', 1610000, 'sports'),
	('riata', 'riata', 380000, 'offroad'),
	('Rocoto', 'rocoto', 45000, 'suvs'),
	('Ruffian', 'ruffian', 6800, 'motorcycles'),
	('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
	('Rumpo', 'rumpo', 15000, 'vans'),
	('Rumpo Trail', 'rumpo3', 19500, 'vans'),
	('Sabre Turbo', 'sabregt', 20000, 'muscle'),
	('Sabre GT', 'sabregt2', 25000, 'muscle'),
	('Sanchez', 'sanchez', 5300, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
	('Sanctus', 'sanctus', 25000, 'motorcycles'),
	('Sandking', 'sandking', 55000, 'offroad'),
	('Savestra', 'savestra', 990000, 'sportsclassics'),
	('SC 1', 'sc1', 1603000, 'super'),
	('Schafter', 'schafter2', 25000, 'sedans'),
	('Schafter V12', 'schafter3', 50000, 'sports'),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
	('Seminole', 'seminole', 25000, 'suvs'),
	('Sentinel', 'sentinel', 32000, 'coupes'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes'),
	('Sentinel3', 'sentinel3', 650000, 'sports'),
	('Seven 70', 'seven70', 39500, 'sports'),
	('ETR1', 'sheava', 220000, 'super'),
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
	('Slam Van', 'slamvan3', 11500, 'muscle'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Stinger', 'stinger', 80000, 'sportsclassics'),
	('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
	('Streiter', 'streiter', 500000, 'sports'),
	('Stretch', 'stretch', 90000, 'sedans'),
	('Stromberg', 'stromberg', 3185350, 'sports'),
	('Sultan', 'sultan', 15000, 'sports'),
	('Sultan RS', 'sultanrs', 65000, 'super'),
	('Super Diamond', 'superd', 130000, 'sedans'),
	('Surano', 'surano', 50000, 'sports'),
	('Surfer', 'surfer', 12000, 'vans'),
	('T20', 't20', 300000, 'super'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Tampa', 'tampa', 16000, 'muscle'),
	('Drift Tampa', 'tampa2', 80000, 'sports'),
	('Thrust', 'thrust', 24000, 'motorcycles'),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 60000, 'offroad'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
	('Tropos', 'tropos', 40000, 'sports'),
	('Turismo R', 'turismor', 350000, 'super'),
	('Tyrus', 'tyrus', 600000, 'super'),
	('Vacca', 'vacca', 120000, 'super'),
	('Vader', 'vader', 7200, 'motorcycles'),
	('Verlierer', 'verlierer2', 70000, 'sports'),
	('Vigero', 'vigero', 12500, 'muscle'),
	('Virgo', 'virgo', 14000, 'muscle'),
	('Viseris', 'viseris', 875000, 'sportsclassics'),
	('Visione', 'visione', 2250000, 'super'),
	('Voltic', 'voltic', 90000, 'super'),
	('Voltic 2', 'voltic2', 3830400, 'super'),
	('Voodoo', 'voodoo', 7200, 'muscle'),
	('Vortex', 'vortex', 9800, 'motorcycles'),
	('Warrener', 'warrener', 4000, 'sedans'),
	('Washington', 'washington', 9000, 'sedans'),
	('Windsor', 'windsor', 95000, 'coupes'),
	('Windsor Drop', 'windsor2', 125000, 'coupes'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
	('XLS', 'xls', 32000, 'suvs'),
	('Yosemite', 'yosemite', 485000, 'muscle'),
	('Youga', 'youga', 10800, 'vans'),
	('Youga Luxuary', 'youga2', 14500, 'vans'),
	('Z190', 'z190', 900000, 'sportsclassics'),
	('Zentorno', 'zentorno', 1500000, 'super'),
	('Zion', 'zion', 36000, 'coupes'),
	('Zion Cabrio', 'zion2', 45000, 'coupes'),
	('Zombie', 'zombiea', 9500, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
	('Z-Type', 'ztype', 220000, 'sportsclassics');
/*!40000 ALTER TABLE `trucks` ENABLE KEYS */;

-- Dumping structure for table essentialmode.truck_categories
DROP TABLE IF EXISTS `truck_categories`;
CREATE TABLE IF NOT EXISTS `truck_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.truck_categories: ~11 rows (approximately)
DELETE FROM `truck_categories`;
/*!40000 ALTER TABLE `truck_categories` DISABLE KEYS */;
INSERT INTO `truck_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'Coupés'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans');
/*!40000 ALTER TABLE `truck_categories` ENABLE KEYS */;

-- Dumping structure for table essentialmode.trunk_inventory
DROP TABLE IF EXISTS `trunk_inventory`;
CREATE TABLE IF NOT EXISTS `trunk_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.trunk_inventory: ~0 rows (approximately)
DELETE FROM `trunk_inventory`;
/*!40000 ALTER TABLE `trunk_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunk_inventory` ENABLE KEYS */;

-- Dumping structure for table essentialmode.twitter_accounts
DROP TABLE IF EXISTS `twitter_accounts`;
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.twitter_accounts: ~0 rows (approximately)
DELETE FROM `twitter_accounts`;
/*!40000 ALTER TABLE `twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_accounts` ENABLE KEYS */;

-- Dumping structure for table essentialmode.twitter_likes
DROP TABLE IF EXISTS `twitter_likes`;
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.twitter_likes: ~0 rows (approximately)
DELETE FROM `twitter_likes`;
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;

-- Dumping structure for table essentialmode.twitter_tweets
DROP TABLE IF EXISTS `twitter_tweets`;
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table essentialmode.twitter_tweets: ~0 rows (approximately)
DELETE FROM `twitter_tweets`;
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

-- Dumping structure for table essentialmode.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastdigits` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_house` int(11) DEFAULT 0,
  `house` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `bought_furniture` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.users: ~1 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `last_property`, `is_dead`, `tattoos`, `jail`, `phone_number`, `lastdigits`, `last_house`, `house`, `bought_furniture`) VALUES
	('steam:110000137972c5f', 'license:cd09795df59f34bd5d6f81add2d605343e2d48a3', 2542805, 'SubhamNOOBYT', '{"skin":12,"moles_2":1,"complexion_2":1,"tshirt_2":0,"chain_2":0,"arms":0,"watches_1":-1,"beard_1":0,"watches_2":-1,"beard_3":0,"hair_color_2":0,"pants_2":0,"beard_4":0,"helmet_2":-1,"ears_1":-1,"tshirt_1":0,"shoes_1":0,"chain_1":0,"glasses_2":0,"beard_2":10,"eyebrows_1":0,"eye_color":0,"ears_2":-1,"hair_color_1":0,"torso_1":0,"helmet_1":-1,"hair_1":0,"complexion_1":0,"glasses_1":0,"pants_1":0,"arms_2":0,"eyebrows_2":10,"sex":0,"hair_2":0,"shoes_2":0,"torso_2":0,"moles_1":0,"age_1":0,"age_2":0}', 'police', 4, '[{"label":"Micro SMG","components":["clip_default"],"ammo":42,"name":"WEAPON_MICROSMG"},{"label":"Pump shotgun","components":[],"ammo":15,"name":"WEAPON_PUMPSHOTGUN"},{"label":"Taser","components":[],"ammo":1,"name":"WEAPON_STUNGUN"}]', '{"y":-993.8,"x":467.7,"z":24.9}', 52420, 0, 'superadmin', 'Subham', 'PRO', '1998', 'm', '200', '[{"val":862200,"percent":86.22,"name":"hunger"},{"val":898000,"percent":89.8,"name":"thirst"},{"val":0,"percent":0.0,"name":"drunk"},{"val":82900.0,"percent":8.29,"name":"stress"}]', NULL, 0, NULL, 0, '45893', NULL, 0, '{"furniture":[],"houseId":4,"owns":false}', '{"prop_table_07":{"name":"Table 21","amount":1}}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table essentialmode.user_accounts
DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.user_accounts: ~0 rows (approximately)
DELETE FROM `user_accounts`;
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Dumping structure for table essentialmode.user_inventory
DROP TABLE IF EXISTS `user_inventory`;
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.user_inventory: ~0 rows (approximately)
DELETE FROM `user_inventory`;
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

-- Dumping structure for table essentialmode.user_lastcharacter
DROP TABLE IF EXISTS `user_lastcharacter`;
CREATE TABLE IF NOT EXISTS `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.user_lastcharacter: ~0 rows (approximately)
DELETE FROM `user_lastcharacter`;
/*!40000 ALTER TABLE `user_lastcharacter` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_lastcharacter` ENABLE KEYS */;

-- Dumping structure for table essentialmode.user_licenses
DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.user_licenses: ~0 rows (approximately)
DELETE FROM `user_licenses`;
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Dumping structure for table essentialmode.user_policearmory
DROP TABLE IF EXISTS `user_policearmory`;
CREATE TABLE IF NOT EXISTS `user_policearmory` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weapons` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.user_policearmory: ~0 rows (approximately)
DELETE FROM `user_policearmory`;
/*!40000 ALTER TABLE `user_policearmory` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_policearmory` ENABLE KEYS */;

-- Dumping structure for table essentialmode.vehicles
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) NOT NULL,
  `inshop` int(11) NOT NULL DEFAULT 1,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.vehicles: ~237 rows (approximately)
DELETE FROM `vehicles`;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`, `stock`) VALUES
	('Adder', 'adder', 900000, 'super', 0, 1),
	('Akuma', 'AKUMA', 7500, 'importbikes', 0, 10),
	('Alpha', 'alpha', 60000, 'importcars', 0, 10),
	('Ardent', 'ardent', 1150000, 'importcarsclassics', 0, 10),
	('Asea', 'asea', 5500, 'importcars', 0, 10),
	('Autarch', 'autarch', 1955000, 'importcars', 0, 10),
	('Avarus', 'avarus', 18000, 'importbikes', 0, 10),
	('Bagger', 'bagger', 13500, 'importbikes', 0, 10),
	('Baller', 'baller2', 40000, 'importcars', 0, 9),
	('Baller Sport', 'baller3', 60000, 'importcars', 0, 10),
	('Banshee', 'banshee', 70000, 'importcars', 0, 10),
	('Banshee 900R', 'banshee2', 255000, 'importcars', 0, 10),
	('Bati 801', 'bati', 12000, 'importbikes', 0, 10),
	('Bati 801RR', 'bati2', 19000, 'importbikes', 0, 10),
	('Bestia GTS', 'bestiagts', 55000, 'importcars', 0, 10),
	('BF400', 'bf400', 6500, 'importbikes', 0, 10),
	('Bf Injection', 'bfinjection', 16000, 'importcars', 0, 10),
	('Bifta', 'bifta', 12000, 'importcars', 0, 10),
	('Bison', 'bison', 45000, 'importcars', 0, 10),
	('Blade', 'blade', 15000, 'importcars', 0, 10),
	('Blazer', 'blazer', 6500, 'importcars', 0, 10),
	('Blazer Sport', 'blazer4', 8500, 'importcars', 0, 10),
	('blazer5', 'blazer5', 1755600, 'importcars', 0, 10),
	('Blista', 'blista', 8000, 'importcars', 0, 10),
	('BMX (velo)', 'bmx', 160, 'importbikes', 0, 10),
	('Bobcat XL', 'bobcatxl', 32000, 'importcars', 0, 10),
	('Brawler', 'brawler', 45000, 'importcars', 0, 10),
	('Brioso R/A', 'brioso', 18000, 'importcars', 0, 10),
	('Btype', 'btype', 62000, 'importcarsclassics', 0, 10),
	('Btype Hotroad', 'btype2', 155000, 'importcarsclassics', 0, 10),
	('Btype Luxe', 'btype3', 85000, 'importcarsclassics', 0, 10),
	('Buccaneer', 'buccaneer', 18000, 'importcars', 0, 10),
	('Buccaneer Rider', 'buccaneer2', 24000, 'importcars', 0, 10),
	('Buffalo', 'buffalo', 12000, 'importcars', 0, 10),
	('Buffalo S', 'buffalo2', 20000, 'importcars', 0, 10),
	('Bullet', 'bullet', 90000, 'importcars', 0, 10),
	('Burrito', 'burrito3', 19000, 'importcars', 0, 10),
	('Camper', 'camper', 42000, 'importcars', 0, 10),
	('Carbonizzare', 'carbonizzare', 75000, 'importcars', 0, 10),
	('Carbon RS', 'carbonrs', 18000, 'importbikes', 0, 9),
	('Casco', 'casco', 30000, 'importcarsclassics', 0, 10),
	('Cavalcade', 'cavalcade2', 55000, 'importcars', 0, 10),
	('Cheetah', 'cheetah', 375000, 'importcars', 0, 10),
	('Chimera', 'chimera', 38000, 'importbikes', 0, 10),
	('Chino', 'chino', 15000, 'importcars', 0, 10),
	('Chino Luxe', 'chino2', 19000, 'importcars', 0, 10),
	('Cliffhanger', 'cliffhanger', 9500, 'importbikes', 0, 10),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'importcars', 0, 10),
	('Cognoscenti', 'cognoscenti', 55000, 'importcars', 0, 10),
	('Comet', 'comet2', 65000, 'importcars', 0, 10),
	('Comet 5', 'comet5', 1145000, 'importcars', 0, 10),
	('Contender', 'contender', 70000, 'importcars', 0, 10),
	('Coquette', 'coquette', 65000, 'importcars', 0, 10),
	('Coquette Classic', 'coquette2', 40000, 'importcarsclassics', 0, 10),
	('Coquette BlackFin', 'coquette3', 55000, 'importcars', 0, 10),
	('Cruiser (velo)', 'cruiser', 510, 'importbikes', 0, 10),
	('Cyclone', 'cyclone', 1890000, 'importcars', 0, 10),
	('Daemon', 'daemon', 11500, 'importbikes', 0, 10),
	('Daemon High', 'daemon2', 13500, 'importbikes', 0, 10),
	('Defiler', 'defiler', 9800, 'importbikes', 0, 10),
	('Dominator', 'dominator', 35000, 'importcars', 0, 10),
	('Double T', 'double', 28000, 'importbikes', 0, 10),
	('Dubsta', 'dubsta', 45000, 'importcars', 0, 10),
	('Dubsta Luxuary', 'dubsta2', 60000, 'importcars', 0, 10),
	('Bubsta 6x6', 'dubsta3', 120000, 'importcars', 0, 10),
	('Dukes', 'dukes', 28000, 'importcars', 0, 10),
	('Dune Buggy', 'dune', 8000, 'importcars', 0, 10),
	('Elegy', 'elegy2', 38500, 'importcars', 0, 10),
	('Emperor', 'emperor', 8500, 'importcars', 0, 10),
	('Enduro', 'enduro', 5500, 'importbikes', 0, 10),
	('Entity XF', 'entityxf', 425000, 'importcars', 0, 10),
	('Esskey', 'esskey', 4200, 'importbikes', 0, 10),
	('Exemplar', 'exemplar', 32000, 'importcars', 0, 10),
	('F620', 'f620', 40000, 'importcars', 0, 10),
	('Faction', 'faction', 20000, 'importcars', 0, 10),
	('Faction Rider', 'faction2', 30000, 'importcars', 0, 10),
	('Faction XL', 'faction3', 40000, 'importcars', 0, 10),
	('Faggio', 'faggio', 1900, 'importbikes', 0, 10),
	('Vespa', 'faggio2', 2800, 'importbikes', 0, 10),
	('Felon', 'felon', 42000, 'importcars', 0, 10),
	('Felon GT', 'felon2', 55000, 'importcars', 0, 10),
	('Feltzer', 'feltzer2', 55000, 'importcars', 0, 10),
	('Stirling GT', 'feltzer3', 65000, 'importcarsclassics', 0, 10),
	('Fixter (velo)', 'fixter', 225, 'importbikes', 0, 10),
	('Flat Bed', 'flatbed', 15000, 'utility', 0, 10),
	('FMJ', 'fmj', 185000, 'importcars', 0, 10),
	('Fhantom', 'fq2', 17000, 'importcars', 0, 10),
	('Fugitive', 'fugitive', 12000, 'importcars', 0, 0),
	('Furore GT', 'furoregt', 45000, 'importcars', 0, 0),
	('Fusilade', 'fusilade', 40000, 'importcars', 0, 0),
	('Gargoyle', 'gargoyle', 16500, 'importbikes', 0, 0),
	('Gauntlet', 'gauntlet', 30000, 'importcars', 0, 0),
	('Gang Burrito', 'gburrito', 45000, 'importcars', 0, 0),
	('Burrito', 'gburrito2', 29000, 'importcars', 0, 0),
	('Glendale', 'glendale', 6500, 'importcars', 0, 0),
	('Grabger', 'granger', 50000, 'importcars', 0, 0),
	('Gresley', 'gresley', 47500, 'importcars', 0, 0),
	('GT 500', 'gt500', 785000, 'importcarsclassics', 0, 0),
	('Guardian', 'guardian', 45000, 'importcars', 0, 0),
	('Hakuchou', 'hakuchou', 31000, 'importbikes', 0, 0),
	('Hakuchou Sport', 'hakuchou2', 55000, 'importbikes', 0, 0),
	('Hermes', 'hermes', 535000, 'importcars', 0, 0),
	('Hexer', 'hexer', 12000, 'importbikes', 0, 0),
	('Hotknife', 'hotknife', 125000, 'importcars', 0, 0),
	('Huntley S', 'huntley', 40000, 'importcars', 0, 0),
	('Hustler', 'hustler', 625000, 'importcars', 0, 0),
	('importcars Diamond', 'importcarsd', 130000, 'importcars', 0, 0),
	('Infernus', 'infernus', 180000, 'importcars', 0, 0),
	('Innovation', 'innovation', 23500, 'importbikes', 0, 0),
	('Intruder', 'intruder', 7500, 'importcars', 0, 0),
	('Issi', 'issi2', 10000, 'importcars', 0, 0),
	('Jackal', 'jackal', 38000, 'importcars', 0, 0),
	('Jester', 'jester', 65000, 'importcars', 0, 0),
	('Jester(Racecar)', 'jester2', 135000, 'importcars', 0, 0),
	('Journey', 'journey', 6500, 'importcars', 0, 0),
	('Kamacho', 'kamacho', 345000, 'importcars', 0, 0),
	('Khamelion', 'khamelion', 38000, 'importcars', 0, 0),
	('Kuruma', 'kuruma', 30000, 'importcars', 0, 0),
	('Landstalker', 'landstalker', 35000, 'importcars', 0, 0),
	('RE-7B', 'le7b', 325000, 'importcars', 0, 0),
	('Lynx', 'lynx', 40000, 'importcars', 0, 0),
	('Mamba', 'mamba', 70000, 'importcars', 0, 0),
	('Manana', 'manana', 12800, 'importcarsclassics', 0, 0),
	('Manchez', 'manchez', 5300, 'importbikes', 0, 0),
	('Massacro', 'massacro', 65000, 'importcars', 0, 0),
	('Massacro(Racecar)', 'massacro2', 130000, 'importcars', 0, 0),
	('Mesa', 'mesa', 16000, 'importcars', 0, 0),
	('Mesa Trail', 'mesa3', 40000, 'importcars', 0, 0),
	('Minivan', 'minivan', 13000, 'importcars', 0, 0),
	('Monroe', 'monroe', 55000, 'importcarsclassics', 0, 0),
	('The Liberator', 'monster', 210000, 'importcars', 0, 0),
	('Moonbeam', 'moonbeam', 18000, 'importcars', 0, 0),
	('Moonbeam Rider', 'moonbeam2', 35000, 'importcars', 0, 0),
	('Nemesis', 'nemesis', 5800, 'importbikes', 0, 0),
	('Neon', 'neon', 1500000, 'importcars', 0, 0),
	('Nightblade', 'nightblade', 35000, 'importbikes', 0, 0),
	('Nightshade', 'nightshade', 65000, 'importcars', 0, 0),
	('9F', 'ninef', 65000, 'importcars', 0, 0),
	('9F Cabrio', 'ninef2', 80000, 'importcars', 0, 0),
	('Omnis', 'omnis', 35000, 'importcars', 0, 0),
	('Oracle XS', 'oracle2', 35000, 'importcars', 0, 0),
	('Osiris', 'osiris', 160000, 'importcars', 0, 0),
	('Panto', 'panto', 10000, 'importcars', 0, 9),
	('Paradise', 'paradise', 19000, 'importcars', 0, 0),
	('Pariah', 'pariah', 1420000, 'importcars', 0, 0),
	('Patriot', 'patriot', 55000, 'importcars', 0, 0),
	('PCJ-600', 'pcj', 6200, 'importbikes', 0, 0),
	('Penumbra', 'penumbra', 28000, 'importcars', 0, 0),
	('Pfister', 'pfister811', 85000, 'importcars', 0, 0),
	('Phoenix', 'phoenix', 12500, 'importcars', 0, 0),
	('Picador', 'picador', 18000, 'importcars', 0, 0),
	('Pigalle', 'pigalle', 20000, 'importcarsclassics', 0, 0),
	('Prairie', 'prairie', 12000, 'importcars', 0, 0),
	('Premier', 'premier', 8000, 'importcars', 0, 0),
	('Primo Custom', 'primo2', 14000, 'importcars', 0, 0),
	('X80 Proto', 'prototipo', 2500000, 'importcars', 0, 0),
	('Radius', 'radi', 29000, 'importcars', 0, 0),
	('raiden', 'raiden', 1375000, 'importcars', 0, 0),
	('Rapid GT', 'rapidgt', 35000, 'importcars', 0, 0),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'importcars', 0, 0),
	('Rapid GT3', 'rapidgt3', 885000, 'importcarsclassics', 0, 0),
	('Reaper', 'reaper', 150000, 'importcars', 0, 0),
	('Rebel', 'rebel2', 35000, 'importcars', 0, 0),
	('Regina', 'regina', 5000, 'importcars', 0, 0),
	('Retinue', 'retinue', 615000, 'importcarsclassics', 0, 0),
	('Revolter', 'revolter', 1610000, 'importcars', 0, 0),
	('riata', 'riata', 380000, 'importcars', 0, 0),
	('Rocoto', 'rocoto', 45000, 'importcars', 0, 0),
	('Ruffian', 'ruffian', 6800, 'importbikes', 0, 0),
	('Rumpo', 'rumpo', 15000, 'importcars', 0, 0),
	('Rumpo Trail', 'rumpo3', 19500, 'importcars', 0, 0),
	('Sabre Turbo', 'sabregt', 20000, 'importcars', 0, 0),
	('Sabre GT', 'sabregt2', 25000, 'importcars', 0, 0),
	('Sanchez', 'sanchez', 5300, 'importbikes', 0, 0),
	('Sanchez Sport', 'sanchez2', 5300, 'importbikes', 0, 0),
	('Sanctus', 'sanctus', 25000, 'importbikes', 0, 0),
	('Sandking', 'sandking', 55000, 'importcars', 0, 0),
	('Savestra', 'savestra', 990000, 'importcarsclassics', 0, 0),
	('SC 1', 'sc1', 1603000, 'importcars', 0, 0),
	('Schafter', 'schafter2', 25000, 'importcars', 0, 0),
	('Schafter V12', 'schafter3', 50000, 'importcars', 0, 0),
	('Scorcher (velo)', 'scorcher', 280, 'importbikes', 0, 0),
	('Seminole', 'seminole', 25000, 'importcars', 0, 0),
	('Sentinel', 'sentinel', 32000, 'importcars', 0, 0),
	('Sentinel XS', 'sentinel2', 40000, 'importcars', 0, 0),
	('Sentinel3', 'sentinel3', 650000, 'importcars', 0, 0),
	('Seven 70', 'seven70', 39500, 'importcars', 0, 0),
	('ETR1', 'sheava', 220000, 'importcars', 0, 0),
	('Shotaro Concept', 'shotaro', 320000, 'importbikes', 0, 0),
	('Slam Van', 'slamvan3', 11500, 'importcars', 0, 0),
	('Sovereign', 'sovereign', 22000, 'importbikes', 0, 0),
	('Stinger', 'stinger', 80000, 'importcarsclassics', 0, 0),
	('Stinger GT', 'stingergt', 75000, 'importcarsclassics', 0, 0),
	('Streiter', 'streiter', 500000, 'importcars', 0, 0),
	('Stretch', 'stretch', 90000, 'importcars', 0, 0),
	('Sultan', 'sultan', 15000, 'importcars', 0, 0),
	('Sultan RS', 'sultanrs', 65000, 'importcars', 0, 0),
	('Surano', 'surano', 50000, 'importcars', 0, 0),
	('Surfer', 'surfer', 12000, 'importcars', 0, 0),
	('T20', 't20', 300000, 'importcars', 0, 0),
	('Tailgater', 'tailgater', 30000, 'importcars', 0, 0),
	('Tampa', 'tampa', 16000, 'importcars', 0, 0),
	('Drift Tampa', 'tampa2', 80000, 'importcars', 0, 0),
	('Thrust', 'thrust', 24000, 'importbikes', 0, 0),
	('Tow Truck', 'towtruck', 15000, 'utility', 0, 0),
	('Tri bike (velo)', 'tribike3', 520, 'importbikes', 0, 0),
	('Trophy Truck', 'trophytruck', 60000, 'importcars', 0, 10),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'importcars', 0, 10),
	('Tropos', 'tropos', 40000, 'importcars', 0, 0),
	('Turismo R', 'turismor', 350000, 'importcars', 0, 0),
	('Tyrus', 'tyrus', 600000, 'importcars', 0, 0),
	('Vacca', 'vacca', 120000, 'importcars', 0, 0),
	('Vader', 'vader', 7200, 'importbikes', 0, 0),
	('Verlierer', 'verlierer2', 70000, 'importcars', 0, 0),
	('Vigero', 'vigero', 12500, 'importcars', 0, 0),
	('Virgo', 'virgo', 14000, 'importcars', 0, 0),
	('Viseris', 'viseris', 875000, 'importcarsclassics', 0, 0),
	('Visione', 'visione', 2250000, 'importcars', 0, 0),
	('Voltic', 'voltic', 90000, 'importcars', 0, 0),
	('Voodoo', 'voodoo', 7200, 'importcars', 0, 0),
	('Vortex', 'vortex', 9800, 'importbikes', 0, 0),
	('Warrener', 'warrener', 4000, 'importcars', 0, 0),
	('Washington', 'washington', 9000, 'importcars', 0, 0),
	('Windsor', 'windsor', 95000, 'importcars', 0, 0),
	('Windsor Drop', 'windsor2', 125000, 'importcars', 0, 0),
	('Woflsbane', 'wolfsbane', 9000, 'importbikes', 0, 0),
	('XLS', 'xls', 32000, 'importcars', 0, 0),
	('Yosemite', 'yosemite', 85000, 'importcars', 0, 0),
	('Youga', 'youga', 10800, 'importcars', 0, 0),
	('Youga Luxuary', 'youga2', 14500, 'importcars', 0, 0),
	('Z190', 'z190', 900000, 'importcarsclassics', 0, 0),
	('Zentorno', 'zentorno', 1500000, 'importcars', 0, 10),
	('Zion', 'zion', 36000, 'importcars', 0, 0),
	('Zion Cabrio', 'zion2', 45000, 'importcars', 0, 0),
	('Zombie', 'zombiea', 9500, 'importbikes', 0, 0),
	('Zombie Luxuary', 'zombieb', 12000, 'importbikes', 0, 0),
	('Z-Type', 'ztype', 220000, 'importcarsclassics', 0, 0);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table essentialmode.vehicles_display
DROP TABLE IF EXISTS `vehicles_display`;
CREATE TABLE IF NOT EXISTS `vehicles_display` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `profit` int(11) NOT NULL DEFAULT 10,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.vehicles_display: ~6 rows (approximately)
DELETE FROM `vehicles_display`;
/*!40000 ALTER TABLE `vehicles_display` DISABLE KEYS */;
INSERT INTO `vehicles_display` (`ID`, `name`, `model`, `profit`, `price`) VALUES
	(1, 'Voltic', 'voltic', 10, 90000),
	(2, 'Dominator', 'dominator', 17, 35000),
	(3, 'Alpha', 'alpha', 1000, 60000),
	(4, 'Double T', 'double', 16, 28000),
	(5, 'Hakuchou Sport', 'hakuchou2', 50, 55000),
	(6, 'Bati 801', 'bati', 100, 12000);
/*!40000 ALTER TABLE `vehicles_display` ENABLE KEYS */;

-- Dumping structure for table essentialmode.vehicles_for_sale
DROP TABLE IF EXISTS `vehicles_for_sale`;
CREATE TABLE IF NOT EXISTS `vehicles_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.vehicles_for_sale: ~2 rows (approximately)
DELETE FROM `vehicles_for_sale`;
/*!40000 ALTER TABLE `vehicles_for_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles_for_sale` ENABLE KEYS */;

-- Dumping structure for table essentialmode.vehicle_categories
DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.vehicle_categories: ~15 rows (approximately)
DELETE FROM `vehicle_categories`;
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'Coupés'),
	('importbikes', 'Import Bikes'),
	('importcars', 'Import Cars'),
	('importcarsclassics', 'Import Carsclassics'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('utility', 'Utility'),
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Dumping structure for table essentialmode.vehicle_display
DROP TABLE IF EXISTS `vehicle_display`;
CREATE TABLE IF NOT EXISTS `vehicle_display` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `commission` int(11) NOT NULL DEFAULT 10,
  `downpayment` int(11) NOT NULL DEFAULT 25,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.vehicle_display: ~9 rows (approximately)
DELETE FROM `vehicle_display`;
/*!40000 ALTER TABLE `vehicle_display` DISABLE KEYS */;
INSERT INTO `vehicle_display` (`id`, `model`, `name`, `commission`, `downpayment`) VALUES
	(1, 'panto', 'Panto', 10, 25),
	(2, 'carbonrs', 'Carbon RS', 10, 25),
	(3, 'adder', 'Adder', 10, 25),
	(4, 'adder', 'Adder', 10, 25),
	(5, 'adder', 'Adder', 10, 25),
	(6, 'adder', 'Adder', 10, 25),
	(7, 'baller2', 'Baller', 10, 25),
	(8, 'fixter', 'Fixter (velo)', 10, 25),
	(9, 'bati2', 'Bati 801RR', 10, 25);
/*!40000 ALTER TABLE `vehicle_display` ENABLE KEYS */;

-- Dumping structure for table essentialmode.vehicle_sold
DROP TABLE IF EXISTS `vehicle_sold`;
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.vehicle_sold: ~0 rows (approximately)
DELETE FROM `vehicle_sold`;
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Dumping structure for table essentialmode.warrants_list
DROP TABLE IF EXISTS `warrants_list`;
CREATE TABLE IF NOT EXISTS `warrants_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.warrants_list: ~0 rows (approximately)
DELETE FROM `warrants_list`;
/*!40000 ALTER TABLE `warrants_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `warrants_list` ENABLE KEYS */;

-- Dumping structure for table essentialmode.weashops
DROP TABLE IF EXISTS `weashops`;
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.weashops: ~38 rows (approximately)
DELETE FROM `weashops`;
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT INTO `weashops` (`id`, `name`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 300),
	(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
	(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
	(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
	(5, 'GunShop', 'WEAPON_MACHETE', 90),
	(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
	(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
	(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
	(9, 'GunShop', 'WEAPON_BAT', 100),
	(10, 'BlackWeashop', 'WEAPON_BAT', 100),
	(11, 'GunShop', 'WEAPON_STUNGUN', 50),
	(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
	(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
	(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
	(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
	(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
	(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
	(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
	(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
	(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
	(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
	(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
	(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
	(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
	(25, 'GunShop', 'WEAPON_GRENADE', 500),
	(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
	(27, 'GunShop', 'WEAPON_BZGAS', 200),
	(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
	(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
	(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
	(31, 'GunShop', 'WEAPON_BALL', 50),
	(32, 'BlackWeashop', 'WEAPON_BALL', 50),
	(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
	(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
	(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
	(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
	(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
	(38, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;

-- Dumping structure for table essentialmode.world_furnishings
DROP TABLE IF EXISTS `world_furnishings`;
CREATE TABLE IF NOT EXISTS `world_furnishings` (
  `motelId` bigint(20) NOT NULL DEFAULT 0,
  `furnishingData` longtext DEFAULT NULL,
  `ownedFurnishingData` longtext DEFAULT NULL,
  PRIMARY KEY (`motelId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.world_furnishings: ~0 rows (approximately)
DELETE FROM `world_furnishings`;
/*!40000 ALTER TABLE `world_furnishings` DISABLE KEYS */;
INSERT INTO `world_furnishings` (`motelId`, `furnishingData`, `ownedFurnishingData`) VALUES
	(445410, NULL, '[{"price":7500,"name":"big_black_doublebed","description":"A bed.","handle":722435,"label":"Black double bed.","model":-1729561268},{"price":2500,"name":"beige_rug","description":"A cool rug.","handle":719619,"label":"White/beige mat.","model":-1424152376},{"price":5000,"name":"large_drawer","func":{"__cfx_functionReference":"es_extended:20950:28875"},"description":"A big dresser where you can store items and such.","handle":664323,"label":"Big dresser","model":-699619545}]');
/*!40000 ALTER TABLE `world_furnishings` ENABLE KEYS */;

-- Dumping structure for table essentialmode.world_keys
DROP TABLE IF EXISTS `world_keys`;
CREATE TABLE IF NOT EXISTS `world_keys` (
  `uuid` bigint(20) NOT NULL DEFAULT 0,
  `owner` varchar(50) NOT NULL,
  `keyData` longtext NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.world_keys: ~4 rows (approximately)
DELETE FROM `world_keys`;
/*!40000 ALTER TABLE `world_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_keys` ENABLE KEYS */;

-- Dumping structure for table essentialmode.world_motels
DROP TABLE IF EXISTS `world_motels`;
CREATE TABLE IF NOT EXISTS `world_motels` (
  `userIdentifier` varchar(50) NOT NULL,
  `motelData` longtext NOT NULL,
  `motelCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.world_motels: ~2 rows (approximately)
DELETE FROM `world_motels`;
/*!40000 ALTER TABLE `world_motels` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_motels` ENABLE KEYS */;

-- Dumping structure for table essentialmode.world_storages
DROP TABLE IF EXISTS `world_storages`;
CREATE TABLE IF NOT EXISTS `world_storages` (
  `storageId` varchar(255) NOT NULL,
  `storageData` longtext NOT NULL,
  PRIMARY KEY (`storageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode.world_storages: ~0 rows (approximately)
DELETE FROM `world_storages`;
/*!40000 ALTER TABLE `world_storages` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_storages` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
