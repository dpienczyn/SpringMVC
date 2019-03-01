CREATE TABLE `pytanie` (
  `pytanieId` int(11) NOT NULL AUTO_INCREMENT,
  `opis` varchar(45) NOT NULL,
  `odp1` varchar(80) NOT NULL,
  `odp2` varchar(80) NOT NULL,
  `odp3` varchar(80) NOT NULL,
  `odppopr` varchar(80) NOT NULL,
  PRIMARY KEY (`pytanieId`)
);