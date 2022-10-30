CREATE DATABASE `mqtt` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

-- mqtt.messages definition

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `topic` varchar(255) NOT NULL,
  `data` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `analytics` (`topic`,`timestamp`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18865562 DEFAULT CHARSET=utf8mb4;