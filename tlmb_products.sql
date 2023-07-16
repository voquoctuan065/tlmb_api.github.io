CREATE DATABASE  IF NOT EXISTS `tlmb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tlmb`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: tlmb
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `catalog_id` int NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `discount` int NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `outstanding` int DEFAULT NULL,
  `screenSize` varchar(100) DEFAULT NULL,
  `resolution` varchar(100) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,11,'Samsung Galaxy A14 4G',4990000,10,'https://cdn.tgdd.vn/Products/Images/42/292770/samsung-galaxy-a14-tlte-thumb-den-600x600.jpg',0,'6.6\"','Full HD+','SAMSUNG'),(2,11,'OPPO Find N2 Flip 5G',19990000,0,'https://cdn.tgdd.vn/Products/Images/42/299034/oppo-find-n2-flip-purple-thumb-1-600x600-1-600x600.jpg',1,'Chính 6.8\" & phụ 3.26\"','Full HD+','oppo'),(3,11,'iPhone 14 Pro Max',29990000,9,'https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-den-thumb-600x600.jpg',1,'6.7\"','Super Retina XDR','Apple'),(4,11,'iPhone 14 Pro',27990000,9,'https://cdn.tgdd.vn/Products/Images/42/247508/iphone-14-pro-vang-thumb-600x600.jpg',1,'6.1\"','Super Retina XDR','Apple'),(5,11,'Vivo Y36',6990000,0,'https://cdn.tgdd.vn/Products/Images/42/307203/vivo-y36-xanh-thumb-1-2-600x600.jpg',0,'6.64\"','Full HD+','vivo'),(6,11,'Samsung Galaxy A24',6490000,6,'https://cdn.tgdd.vn/Products/Images/42/274018/samsung-galaxy-a24-black-thumb-600x600.jpg',0,'6.5\"','Full HD+','SAMSUNG'),(7,11,'Oppo Reno8 5G',10990000,0,'https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8t-vang1-thumb-600x600.jpg',1,'6.7\"','Full HD+','oppo'),(8,11,'realme C55',4990000,5,'https://cdn.tgdd.vn/Products/Images/42/301603/realme-c35-vang-thumb-600x600.jpg',0,'6.72\"','Full HD+',NULL),(9,11,'Samsung Galaxy S23 Ultra 5G',31990000,12,'https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-thumb-xanh-600x600.jpg',1,'6.8\"','Quad HD+ (2K+)','SAMSUNG'),(10,22,'iPad 9 WIFI 64GB',8390000,8,'https://cdn.tgdd.vn/Products/Images/522/247517/iPad-9-wifi-trang-600x600.jpg',0,'10.2\"','Retina IPS LCD','Apple'),(11,22,'iPad 10 WIFI',11490000,4,'https://cdn.tgdd.vn/Products/Images/522/294103/iPad-Gen-10-sliver-thumb-600x600.jpg',0,'10.9\"','Retina IPS LCD','Apple'),(12,22,'iPad Pro M1 11 inch WIFI 2TB (2021)',49990000,10,'https://cdn.tgdd.vn/Products/Images/522/269328/ipad-pro-m1-11-inch-wifi-2tb-2021-bac-thumb-600x600.jpeg',1,'11\"','Liquid Retina','Apple'),(13,22,'iPad Pro M1 12.9 inch 5G',34990000,12,'https://cdn.tgdd.vn/Products/Images/522/238649/ipad-pro-2021-129-inch-silver-600x600.jpg',1,'12.9\"','Liquid Retina XDR','Apple'),(14,22,'Samsung Galaxy Tab A8',6990000,0,'https://cdn.tgdd.vn/Products/Images/522/251704/samsung-galaxy-tab-a8-thumb-1-600x600.jpg',0,'10.5\"','TFT LCD','SAMSUNG'),(15,22,'iPad Pro M2 12.9 inch WIFI 128GB',29190000,4,'https://cdn.tgdd.vn/Products/Images/522/294105/ipad-pro-m2-12.5-wifi-xam-thumb-600x600.jpg',1,'12.9\"','Liquid Retina XDR','Apple'),(16,22,'Samsung Galaxy Tab A7 Lite',4490000,0,'https://cdn.tgdd.vn/Products/Images/522/237325/samsung-galaxy-tab-a7-lite-gray-600x600.jpg',0,'8.7\"','TFT LCD',NULL),(17,22,'Samsung Galaxy Tab S8 Ultra 5G',30990000,14,'https://cdn.tgdd.vn/Products/Images/522/247513/samsung-tab-s8-ultra-thumb-600x600.jpg',1,'14.6\"','Supper AMOLED',NULL),(18,33,'Tai nghe Bluetooth True Wireless Rezo Air',890000,30,'https://cdn.tgdd.vn/Products/Images/54/302991/tai-nghe-bluetooth-tws-rezo-air-thumb-600x600.jpeg',0,NULL,NULL,'Rezo'),(19,33,'Tai nghe Bluetooth AirPods 2 Lightning Charge Apple MV7N2',4390000,38,'https://cdn.tgdd.vn/Products/Images/54/236016/bluetooth-airpods-2-apple-mv7n2-imei-ava-600x600.jpg',1,NULL,NULL,'Apple'),(20,33,'Tai nghe Bluetooth True Wireless AVA+ DS200A-WB',350000,50,'https://cdn.tgdd.vn/Products/Images/54/256512/bluetooth-true-wireless-ava-ds200a-wb-thumb-600x600.png',0,NULL,NULL,'AVA+'),(21,33,'Tai nghe Bluetooth True Wireless AVA+ DS200A-WB',350000,50,'https://cdn.tgdd.vn/Products/Images/54/251852/bluetooth-true-wireless-ava-ds201a-wb-021021-090449-600x600.jpg',0,NULL,NULL,'AVA+'),(22,33,'Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3',6790000,0,'https://cdn.tgdd.vn/Products/Images/54/253802/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-thumb-600x600.jpeg',1,NULL,NULL,'Apple'),(23,33,'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N Trắng',2990000,0,'https://cdn.tgdd.vn/Products/Images/54/212136/tai-nghe-chup-tai-bluetooth-sony-wh-ch510-den-thumb-5-600x600.jpg',1,NULL,NULL,'SONY'),(24,33,'Tai nghe Bluetooth AirPods 2 Lightning Charge Apple MV7N2',1190000,0,'https://cdn.tgdd.vn/Products/Images/54/236016/bluetooth-airpods-2-apple-mv7n2-imei-ava-600x600.jpg',1,NULL,NULL,'Apple'),(25,33,'Tai nghe Bluetooth TWS Xiaomi Redmi Buds 4 Lite',790000,12,'https://cdn.tgdd.vn/Products/Images/54/304652/tai-nghe-bluetooth-tws-xiaomi-redmi-buds-4-lite-thumb-600x600.jpg',1,NULL,NULL,'xiaomi'),(26,33,'Tai nghe Bluetooth True Wireless Gaming Asus Rog Cetra',2490000,5,'https://cdn.tgdd.vn/Products/Images/54/307674/tai-nghe-bluetooth-true-wireless-gaming-asus-rog-cetra-trang-thumb-600x600.jpg',1,NULL,NULL,'ASUS'),(27,44,'Samsung 25W EB-P3400',990000,10,'https://cdn.tgdd.vn/Products/Images/57/307306/pin-sac-du-phong-10000mah-type-c-pd-samsung-eb-p3400-thumb-1-600x600.jpg',1,NULL,NULL,'SAMSUNG'),(28,44,'AVA+ 15W DS2107',600000,30,'https://cdn.tgdd.vn/Products/Images/57/245112/pin-polymer-10000mah-type-c-ava-ds2107-thumb-600x600.jpeg',1,NULL,NULL,'AVA+'),(29,44,'AVA+ 10.5W DS006',500000,62,'https://cdn.tgdd.vn/Products/Images/57/245110/pin-polymer-10000mah-ava-ds006-thumb2-600x600.jpeg',0,NULL,NULL,'AVA+'),(30,44,'AVA+ 10W JP208',500000,62,'https://cdn.tgdd.vn/Products/Images/57/240697/ava-pj-jp192-thumb-600x600.jpeg',0,NULL,NULL,'AVA+'),(31,44,'Belkin Pocket Power 15W BPB011',790000,30,'https://cdn.tgdd.vn/Products/Images/57/298873/pin-du-phong-polymer-10000-mah-type-c-15w-pd-belkin-pocket-power-bpb011-thumb-600x600.jpg',1,NULL,NULL,'belkin'),(32,44,'Anker PowerCore Essential 20W A1287',1600000,20,'https://cdn.tgdd.vn/Products/Images/57/253589/pin-polymer-20000mah-type-c-pd-20w-anker-a1287-thumb2-600x600.jpeg',1,NULL,NULL,'ANKER'),(33,44,'Anker PowerCore Slim 12W A1229',800000,37,'https://cdn.tgdd.vn/Products/Images/57/218060/pin-du-phong-10000mah-type-c-anker-powercore-a1229-thumb-600x600.jpeg',1,NULL,NULL,'ANKER'),(34,44,'Xmobile 15W PW37Y5B',600000,40,'https://cdn.tgdd.vn/Products/Images/57/214689/sac-du-phong-polymer-10000mah-c-xmobile-pw37y5b-thumb2-600x600.jpeg',1,NULL,NULL,'xmobile'),(35,44,'Xmobile PowerBox 18W P69D',1000000,10,'https://cdn.tgdd.vn/Products/Images/57/229038/sac-du-phong-polymer-20000mah-type-c-xmobile-p69d-thumb-1-600x600.jpeg',1,NULL,NULL,'xmobile'),(36,66,'Cáp Type C - Lightning 1m Xmobile QC-TC06-1000',220000,0,'https://cdn.tgdd.vn/Products/Images/58/309714/cap-type-c-lightning-1m-xmobile-qc-tc06-1000-thumb-5-600x600.jpg',1,NULL,NULL,'xmobile'),(37,66,'Cáp Type C - Type C 1.25m Mazer C2C125',540000,33,'https://cdn.tgdd.vn/Products/Images/58/308532/cap-type-c-type-c-1-25m-mazer-c2c125-thumb-1-600x600.jpg',1,NULL,NULL,'mazer'),(38,66,'Cáp Type C - Type C 1m Xmobile DS101',220000,0,'https://cdn.tgdd.vn/Products/Images/58/307838/cap-type-c-type-c-1m-xmobile-ds101-thumb-600x600.jpg',0,NULL,NULL,'xmobile'),(39,66,' Cáp Lightning MFI 0.9m Anker Select+ A8012',360000,10,'https://cdn.tgdd.vn/Products/Images/58/217763/cap-lightning-mfi-09m-anker-a8012-600x600.jpg',0,NULL,NULL,'ANKER'),(40,66,'Cáp Type C 2m Belkin CAB002',450000,40,'https://cdn.tgdd.vn/Products/Images/58/217763/cap-lightning-mfi-09m-anker-a8012-600x600.jpg',1,NULL,NULL,'belkin'),(41,66,'Cáp Type C - Lightning 1m Apple MM0A3',590000,16,'https://cdn.tgdd.vn/Products/Images/58/259283/cap-type-c-lightning-1m-apple-mm0a3-trang-thumb-1-600x600.jpeg',1,NULL,NULL,'Apple'),(42,66,'Cáp Micro USB 0.2m AVA Speed II',35000,70,'https://cdn.tgdd.vn/Products/Images/58/217252/cap-micro-20cm-ava-speed-ii-thumb3-600x600.jpeg',1,NULL,NULL,'AVA'),(43,66,'Cáp Type C - Lightning MFI 2m Mbest DS948-WB',350000,0,'https://cdn.tgdd.vn/Products/Images/58/219146/cap-type-c-lightning-mfi-2m-mbest-ds948-wb-xanh-ava-600x600.jpg',1,NULL,NULL,'mbest'),(44,66,'Cáp Lightning MFI 1m Mbest DS950-WB',290000,40,'https://cdn.tgdd.vn/Products/Images/58/229583/cap-lightning-mfi-1m-mbest-ds950-wb-avatar-1-600x600.jpg',1,NULL,NULL,'mberr'),(45,55,'Sạc 2 cổng Mazer T33W',720000,30,'https://cdn.tgdd.vn/Products/Images/9499/308527/adapter-sac-2-cong-usb-type-c-pd-qc-3-0-gan-33w-mazer-t33w-060623-044557-600x600.jpg',1,NULL,NULL,'mazer'),(46,55,'Sạc Apple 20W MHJE3',690000,20,'https://cdn.tgdd.vn/Products/Images/9499/230315/adapter-sac-type-c-20w-cho-iphone-ipad-apple-mhje3-avatar-1-1-600x600.jpg',1,NULL,NULL,'Apple'),(47,55,'Sạc Samsung EP-TA800N',1190000,10,'https://cdn.tgdd.vn/Products/Images/9499/234361/type-c-pd-25w-samsung-ep-ta800n-den-thumb-1-2-600x600.jpg',0,NULL,NULL,'SAMSUNG'),(48,55,'Sạc Belkin WCA004',490000,30,'https://cdn.tgdd.vn/Products/Images/9499/245841/type-c-pd-25w-belkin-wca004-ava-600x600.jpg',0,NULL,NULL,'belkin'),(49,55,'Sạc Anker PowerPort III Nano A2633',400000,26,'https://cdn.tgdd.vn/Products/Images/9499/230266/230266-600x600.jpg',1,NULL,NULL,'ANKER'),(50,55,'Sạc 3 cổng Samsung EP-T6530',1490000,10,'https://cdn.tgdd.vn/Products/Images/9499/271813/adapter-sac-usb-type-c-pd-65w-samsung-ep-t6530n-thumb-600x600.jpeg',1,NULL,NULL,'SAMSUNG');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-11 15:10:53
