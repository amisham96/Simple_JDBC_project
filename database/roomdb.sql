CREATE TABLE `building` (
  `buildingId` int NOT NULL AUTO_INCREMENT,
  `buildingName` varchar(45) NOT NULL,
  PRIMARY KEY (`buildingId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `room` (
  `roomId` int NOT NULL AUTO_INCREMENT,
  `roomName` varchar(45) NOT NULL,
  `capacity` int NOT NULL,
  `buildingId` int NOT NULL,
  PRIMARY KEY (`roomId`),
  KEY `buildingId_idx` (`buildingId`),
  CONSTRAINT `buildingId` FOREIGN KEY (`buildingId`) REFERENCES `building` (`buildingId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

