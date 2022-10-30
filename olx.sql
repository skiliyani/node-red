CREATE DATABASE `olx` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

-- olx.ads definition

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `search_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `is_notified` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- olx.`search` definition

CREATE TABLE `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `search_term` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `location_id` int(11) DEFAULT 1000001 COMMENT 'Default to all India (1000001)\r\n\r\nKerala = 2001160\r\nThiruvanathapuram = 4058889',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;