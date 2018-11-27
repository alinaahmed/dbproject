-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: recikingdb
-- ------------------------------------------------------
-- Server version	5.7.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('00000000000000_CreateIdentitySchema','2.1.2-rtm-30932'),('20181122081856_addedcategory','2.1.4-rtm-31024');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroleclaims`
--

DROP TABLE IF EXISTS `aspnetroleclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `RoleId` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroleclaims`
--

LOCK TABLES `aspnetroleclaims` WRITE;
/*!40000 ALTER TABLE `aspnetroleclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroleclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `aspnetroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `ConcurrencyStamp` longtext,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroles`
--

LOCK TABLES `aspnetroles` WRITE;
/*!40000 ALTER TABLE `aspnetroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  `UserId` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserclaims`
--

LOCK TABLES `aspnetuserclaims` WRITE;
/*!40000 ALTER TABLE `aspnetuserclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(255) NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserlogins`
--

LOCK TABLES `aspnetuserlogins` WRITE;
/*!40000 ALTER TABLE `aspnetuserlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserroles`
--

LOCK TABLES `aspnetuserroles` WRITE;
/*!40000 ALTER TABLE `aspnetuserroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `ConcurrencyStamp` longtext,
  `Email` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `PasswordHash` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `SecurityStamp` longtext,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusertokens`
--

DROP TABLE IF EXISTS `aspnetusertokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusertokens`
--

LOCK TABLES `aspnetusertokens` WRITE;
/*!40000 ALTER TABLE `aspnetusertokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusertokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CategoryID` char(18) NOT NULL,
  `CategoryName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`),
  UNIQUE KEY `XPKCategory` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chefs`
--

DROP TABLE IF EXISTS `chefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chefs` (
  `UserID` varchar(10) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Age` int(5) NOT NULL,
  `Academy` varchar(15) DEFAULT NULL,
  `YearsOfExperience` int(10) NOT NULL,
  `CookingShowName__if_any_` varchar(20) DEFAULT NULL,
  `ChannelAffiliations_` smallint(6) DEFAULT NULL,
  `UploadCertificate_Picture` blob,
  `Youtub_Channel__if_any_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `XPKChefs` (`UserID`),
  CONSTRAINT `R_14` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `R_15` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `R_18` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chefs`
--

LOCK TABLES `chefs` WRITE;
/*!40000 ALTER TABLE `chefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `chefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `InventoryName` varchar(50) NOT NULL,
  `InventoryID` char(18) NOT NULL,
  `CategoryID` char(18) DEFAULT NULL,
  `QuantityMetric` char(18) NOT NULL,
  PRIMARY KEY (`InventoryID`),
  UNIQUE KEY `XPKInventory` (`InventoryID`),
  KEY `R_2` (`CategoryID`),
  CONSTRAINT `R_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`),
  CONSTRAINT `R_2` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_recipes`
--

DROP TABLE IF EXISTS `inventory_recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_recipes` (
  `InventoryID` char(18) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `RecipeID` char(18) NOT NULL,
  PRIMARY KEY (`RecipeID`),
  UNIQUE KEY `XPKInventory_Recipes` (`RecipeID`),
  KEY `R_7` (`InventoryID`),
  CONSTRAINT `R_7` FOREIGN KEY (`InventoryID`) REFERENCES `inventory` (`InventoryID`),
  CONSTRAINT `R_8` FOREIGN KEY (`RecipeID`) REFERENCES `recipes` (`RecipeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_recipes`
--

LOCK TABLES `inventory_recipes` WRITE;
/*!40000 ALTER TABLE `inventory_recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals`
--

DROP TABLE IF EXISTS `meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meals` (
  `MealID` char(18) NOT NULL,
  `MealName` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`MealID`),
  UNIQUE KEY `XPKMeals` (`MealID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals`
--

LOCK TABLES `meals` WRITE;
/*!40000 ALTER TABLE `meals` DISABLE KEYS */;
INSERT INTO `meals` VALUES ('afsn','afternoon snack'),('br','breakfast'),('bru','brunch'),('din','dinner'),('lu','lunch'),('mdn','midnight snack');
/*!40000 ALTER TABLE `meals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origin`
--

DROP TABLE IF EXISTS `origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `origin` (
  `OriginID` char(18) NOT NULL,
  `Countries` varchar(50) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`OriginID`),
  UNIQUE KEY `XPKOrigin` (`OriginID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origin`
--

LOCK TABLES `origin` WRITE;
/*!40000 ALTER TABLE `origin` DISABLE KEYS */;
INSERT INTO `origin` VALUES ('1','Afghanistan',NULL),('10','Argentina',NULL),('100','Isle of Man',NULL),('101','Indonesia',NULL),('102','Iran (Islamic Republic of)',NULL),('103','Iraq',NULL),('104','Ireland',NULL),('105','Israel',NULL),('106','Italy',NULL),('107','Ivory Coast',NULL),('108','Jersey',NULL),('109','Jamaica',NULL),('11','Armenia',NULL),('110','Japan',NULL),('111','Jordan',NULL),('112','Kazakhstan',NULL),('113','Kenya',NULL),('114','Kiribati',NULL),('115','Korea, Democratic People\'s Republic of',NULL),('116','Korea, Republic of',NULL),('117','Kosovo',NULL),('118','Kuwait',NULL),('119','Kyrgyzstan',NULL),('12','Aruba',NULL),('120','Lao People\'s Democratic Republic',NULL),('121','Latvia',NULL),('122','Lebanon',NULL),('123','Lesotho',NULL),('124','Liberia',NULL),('125','Libyan Arab Jamahiriya',NULL),('126','Liechtenstein',NULL),('127','Lithuania',NULL),('128','Luxembourg',NULL),('129','Macau',NULL),('13','Australia',NULL),('130','Macedonia',NULL),('131','Madagascar',NULL),('132','Malawi',NULL),('133','Malaysia',NULL),('134','Maldives',NULL),('135','Mali',NULL),('136','Malta',NULL),('137','Marshall Islands',NULL),('138','Martinique',NULL),('139','Mauritania',NULL),('14','Austria',NULL),('140','Mauritius',NULL),('141','Mayotte',NULL),('142','Mexico',NULL),('143','Micronesia, Federated States of',NULL),('144','Moldova, Republic of',NULL),('145','Monaco',NULL),('146','Mongolia',NULL),('147','Montenegro',NULL),('148','Montserrat',NULL),('149','Morocco',NULL),('15','Azerbaijan',NULL),('150','Mozambique',NULL),('151','Myanmar',NULL),('152','Namibia',NULL),('153','Nauru',NULL),('154','Nepal',NULL),('155','Netherlands',NULL),('156','Netherlands Antilles',NULL),('157','New Caledonia',NULL),('158','New Zealand',NULL),('159','Nicaragua',NULL),('16','Bahamas',NULL),('160','Niger',NULL),('161','Nigeria',NULL),('162','Niue',NULL),('163','Norfolk Island',NULL),('164','Northern Mariana Islands',NULL),('165','Norway',NULL),('166','Oman',NULL),('167','Pakistan',NULL),('168','Palau',NULL),('169','Palestine',NULL),('17','Bahrain',NULL),('170','Panama',NULL),('171','Papua New Guinea',NULL),('172','Paraguay',NULL),('173','Peru',NULL),('174','Philippines',NULL),('175','Pitcairn',NULL),('176','Poland',NULL),('177','Portugal',NULL),('178','Puerto Rico',NULL),('179','Qatar',NULL),('18','Bangladesh',NULL),('180','Reunion',NULL),('181','Romania',NULL),('182','Russian Federation',NULL),('183','Rwanda',NULL),('184','Saint Kitts and Nevis',NULL),('185','Saint Lucia',NULL),('186','Saint Vincent and the Grenadines',NULL),('187','Samoa',NULL),('188','San Marino',NULL),('189','Sao Tome and Principe',NULL),('19','Barbados',NULL),('190','Saudi Arabia',NULL),('191','Senegal',NULL),('192','Serbia',NULL),('193','Seychelles',NULL),('194','Sierra Leone',NULL),('195','Singapore',NULL),('196','Slovakia',NULL),('197','Slovenia',NULL),('198','Solomon Islands',NULL),('199','Somalia',NULL),('2','Albania',NULL),('20','Belarus',NULL),('200','South Africa',NULL),('201','South Georgia South Sandwich Islands',NULL),('202','South Sudan',NULL),('203','Spain',NULL),('204','Sri Lanka',NULL),('205','St. Helena',NULL),('206','St. Pierre and Miquelon',NULL),('207','Sudan',NULL),('208','Suriname',NULL),('209','Svalbard and Jan Mayen Islands',NULL),('21','Belgium',NULL),('210','Swaziland',NULL),('211','Sweden',NULL),('212','Switzerland',NULL),('213','Syrian Arab Republic',NULL),('214','Taiwan',NULL),('215','Tajikistan',NULL),('216','Tanzania, United Republic of',NULL),('217','Thailand',NULL),('218','Togo',NULL),('219','Tokelau',NULL),('22','Belize',NULL),('220','Tonga',NULL),('221','Trinidad and Tobago',NULL),('222','Tunisia',NULL),('223','Turkey',NULL),('224','Turkmenistan',NULL),('225','Turks and Caicos Islands',NULL),('226','Tuvalu',NULL),('227','Uganda',NULL),('228','Ukraine',NULL),('229','United Arab Emirates',NULL),('23','Benin',NULL),('230','United Kingdom',NULL),('231','United States',NULL),('232','United States minor outlying islands',NULL),('233','Uruguay',NULL),('234','Uzbekistan',NULL),('235','Vanuatu',NULL),('236','Vatican City State',NULL),('237','Venezuela',NULL),('238','Vietnam',NULL),('239','Virgin Islands (British)',NULL),('24','Bermuda',NULL),('240','Virgin Islands (U.S.)',NULL),('241','Wallis and Futuna Islands',NULL),('242','Western Sahara',NULL),('243','Yemen',NULL),('244','Zaire',NULL),('245','Zambia',NULL),('246','Zimbabwe',NULL),('25','Bhutan',NULL),('26','Bolivia',NULL),('27','Bosnia',NULL),('28','Botswana',NULL),('29','Bouvet Island',NULL),('3','Algeria',NULL),('30','Brazil',NULL),('32','Brunei',NULL),('33','Bulgaria',NULL),('34','Burkina Faso',NULL),('35','Burundi',NULL),('36','Cambodia',NULL),('37','Cameroon',NULL),('38','Canada',NULL),('39','Cape Verde',NULL),('4','American Samoa',NULL),('40','Cayman Islands',NULL),('41','Central African Republic',NULL),('42','Chad',NULL),('43','Chile',NULL),('44','China',NULL),('45','Christmas Island',NULL),('46','Cocos (Keeling) Islands',NULL),('47','Colombia',NULL),('48','Comoros',NULL),('49','Congo',NULL),('5','Andorra',NULL),('50','Cook Islands',NULL),('51','Costa Rica',NULL),('52','Croatia (Hrvatska)',NULL),('53','Cuba',NULL),('54','Cyprus',NULL),('55','Czech Republic',NULL),('56','Denmark',NULL),('57','Djibouti',NULL),('58','Dominica',NULL),('59','Dominican Republic',NULL),('6','Angola',NULL),('60','East Timor',NULL),('61','Ecuador',NULL),('62','Egypt',NULL),('63','El Salvador',NULL),('64','Equatorial Guinea',NULL),('65','Eritrea',NULL),('66','Estonia',NULL),('67','Ethiopia',NULL),('68','Falkland Islands (Malvinas)',NULL),('69','Faroe Islands',NULL),('7','Anguilla',NULL),('70','Fiji',NULL),('71','Finland',NULL),('72','France',NULL),('73','France, Metropolitan',NULL),('74','French Guiana',NULL),('75','French Polynesia',NULL),('76','French Southern Territories',NULL),('77','Gabon',NULL),('78','Gambia',NULL),('79','Georgia',NULL),('8','Antarctica',NULL),('80','Germany',NULL),('81','Ghana',NULL),('82','Gibraltar',NULL),('83','Guernsey',NULL),('84','Greece',NULL),('85','Greenland',NULL),('86','Grenada',NULL),('87','Guadeloupe',NULL),('88','Guam',NULL),('89','Guatemala',NULL),('9','Antigua',NULL),('90','Guinea',NULL),('91','Guinea-Bissau',NULL),('92','Guyana',NULL),('93','Haiti',NULL),('94','Heard and Mc Donald Islands',NULL),('95','Honduras',NULL),('96','Hong Kong',NULL),('97','Hungary',NULL),('98','Iceland',NULL),('99','India',NULL);
/*!40000 ALTER TABLE `origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `RecipeID` char(18) NOT NULL,
  `RecipeName` longtext,
  `AverageCookingTime` float DEFAULT NULL,
  `Instructions` longtext,
  `OriginID` char(18) DEFAULT NULL,
  PRIMARY KEY (`RecipeID`),
  UNIQUE KEY `XPKRecipes` (`RecipeID`),
  KEY `R_13` (`OriginID`),
  CONSTRAINT `R_13` FOREIGN KEY (`OriginID`) REFERENCES `origin` (`OriginID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES ('1','Beefy Corn and Black Bean Chili',28,'Combine beef and \nchili powder blend in a large Dutch oven. Cook 6 minutes over \nmedium-high heat or until beef is browned, stirring to crumble. \nDrain and return to pan.  Stir in frozen corn mixture, broth, and \ntomato sauce; bring to a boil. Cover, reduce heat, and simmer 10 minutes. \nUncover and simmer 5 minutes, stirring occasionally.  Ladle chili into bowls. \nTop each serving with sour cream and onions, if desired',NULL),('2','Barbecue-Stuffed Potatoes',17,'Pierce potatoes with a fork; \narrange in a circle on paper towels in microwave oven. Microwave at HIGH \n10 minutes or until done, rearranging potatoes after 5 minutes.  While \npotatoes cook, combine sour cream and 2 tablespoons onions; set aside.  \nPlace chicken in a microwave-safe bowl; cover with plastic wrap (do not \nallow plastic wrap to touch food). Remove potatoes from microwave; place \nchicken in microwave. Microwave at HIGH 2 minutes or until thoroughly heated. \n Slice potatoes lengthwise, cutting to, but not through, other side; fluff with \n fork. Top each potato evenly with chicken, sour cream mixture, cheese, and remaining onions.',NULL),('3','Grilled Heirloom Tomato and Goat Cheese Pizza',15,'Prepare \ngrill to medium heat.  Unroll dough onto a large baking sheet coated with \ncooking spray; pat dough into a 12 x 9-inch rectangle. Lightly coat dough \nwith cooking spray.  Place dough on grill rack coated with cooking spray; \ngrill 1 minute or until lightly browned. Turn crust over. Rub with garlic; \nsprinkle with tomato and cheeses. Close grill lid; grill 3 minutes. Serve immediately.',NULL),('4','Spinach, Hummus, and Bell Pepper Wraps',10,'Spread each flatbread \nwith 1/4 cup hummus, leaving a 1/2-inch border around the edge.  Divide the\n bell pepper evenly between the flatbreads; top each with 1/2 cup spinach and \n 2 tablespoons cheese. Starting from one short side, roll up the wraps. Cut \n each wrap in half, and secure with wooden picks.',NULL);
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes_meals`
--

DROP TABLE IF EXISTS `recipes_meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes_meals` (
  `RecipeID` char(18) NOT NULL,
  `MealID` char(18) NOT NULL,
  PRIMARY KEY (`MealID`),
  UNIQUE KEY `XPKRecipes_Meals` (`MealID`),
  KEY `R_10` (`RecipeID`),
  CONSTRAINT `R_10` FOREIGN KEY (`RecipeID`) REFERENCES `recipes` (`RecipeID`),
  CONSTRAINT `R_11` FOREIGN KEY (`MealID`) REFERENCES `meals` (`MealID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes_meals`
--

LOCK TABLES `recipes_meals` WRITE;
/*!40000 ALTER TABLE `recipes_meals` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipes_meals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserID` varchar(10) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(15) DEFAULT NULL,
  `Password` varchar(20) NOT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `XPKUsers` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-27 15:10:39
