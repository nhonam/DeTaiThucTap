-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_user` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fm4wld2k9rii4aa508ahl3652` (`id_user`),
  CONSTRAINT `FKd7fhinotgwm2xa9gq7rx9hl41` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,2),(2,3),(3,4),(24,16),(25,17),(26,18);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `id_cart` bigint DEFAULT NULL,
  `id_product` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs3p4c1u0wxi7wg88j5gxpxiqe` (`id_cart`),
  KEY `FK248uajx6di85sc1oj4q17ksuo` (`id_product`),
  CONSTRAINT `FK248uajx6di85sc1oj4q17ksuo` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  CONSTRAINT `FKs3p4c1u0wxi7wg88j5gxpxiqe` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (15,1,24,14),(16,1,24,17),(26,2,25,19);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `public_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Thể Hình','http://res.cloudinary.com/dzljztsyy/image/upload/v1691118568/shop_sport/c112e783-b6e8-42fd-8d93-cf6e9e672123.jpg','c112e783-b6e8-42fd-8d93-cf6e9e672123'),(2,'Yoga','http://res.cloudinary.com/dzljztsyy/image/upload/v1691118686/shop_sport/b724153e-70bf-4d94-84c2-d7364064fbcd.jpg','b724153e-70bf-4d94-84c2-d7364064fbcd'),(3,'Giày Dép','http://res.cloudinary.com/dzljztsyy/image/upload/v1691118708/shop_sport/cd629421-ac84-4cb0-be18-cde3d538c5c7.jpg','cd629421-ac84-4cb0-be18-cde3d538c5c7'),(4,'Ngoài Trời','http://res.cloudinary.com/dzljztsyy/image/upload/v1691118725/shop_sport/dd568009-56f3-4415-9949-f4f12260b055.jpg','dd568009-56f3-4415-9949-f4f12260b055'),(5,'Võ Thuật','http://res.cloudinary.com/dzljztsyy/image/upload/v1691118742/shop_sport/620576fd-2f82-4f41-b5a8-73d5ba9e4eb5.jpg','620576fd-2f82-4f41-b5a8-73d5ba9e4eb5'),(6,'Phụ Kiện','http://res.cloudinary.com/dzljztsyy/image/upload/v1691118801/shop_sport/0501f245-14d6-4282-bfda-2f23d8781bf0.jpg','0501f245-14d6-4282-bfda-2f23d8781bf0');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order1`
--

DROP TABLE IF EXISTS `order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order1` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_date` date DEFAULT NULL,
  `shipping_adress` varchar(255) DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `id_user` bigint DEFAULT NULL,
  `id_order_status` bigint DEFAULT NULL,
  `id_shipping_method` bigint DEFAULT NULL,
  `name_reciver` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd3ml57025s5bwopdie3fwft9t` (`id_user`),
  KEY `FK5e3s1sa8m49mcfupu9gs804xv` (`id_order_status`),
  KEY `FK9of9iyohlmudsxmdt22nali9b` (`id_shipping_method`),
  CONSTRAINT `FK5e3s1sa8m49mcfupu9gs804xv` FOREIGN KEY (`id_order_status`) REFERENCES `order_status` (`id`),
  CONSTRAINT `FK9of9iyohlmudsxmdt22nali9b` FOREIGN KEY (`id_shipping_method`) REFERENCES `shipping_method` (`id`),
  CONSTRAINT `FKd3ml57025s5bwopdie3fwft9t` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES (19,'2023-08-01','hà tĩnh123','2023-08-08',123123,3,2,1,'dinh nho nam1','123123'),(20,'2023-08-01','hà tĩnh123','2023-08-08',123123,3,2,1,'dinh nho nam1','123123'),(26,'2023-08-02','hehehe','2023-08-09',NULL,1,1,1,'hoàng ngu1','01231213'),(27,'2023-08-02','hehehe','2023-08-09',NULL,1,1,1,'hoàng ngu1','01231213'),(28,'2023-08-02','hehehe','2023-08-09',NULL,1,1,1,'hoàng ngu1','01231213'),(29,'2023-08-02','hehehe','2023-08-09',NULL,1,1,1,'hoàng ngu1','01231213'),(30,'2023-08-02','hehehe','2023-08-09',NULL,1,1,1,'hoàng ngu1','01231213'),(31,'2023-08-02','hà tĩnh123','2023-08-09',NULL,3,1,1,'dinh nho nam1','123123'),(32,'2023-08-05','hehehe','2023-08-12',NULL,1,1,1,'hoàng ngu1','01231213'),(33,'2023-08-05','hehehe','2023-08-12',NULL,1,1,1,'hoàng ngu1','01231213'),(34,'2023-08-05','hehehe','2023-08-12',NULL,1,1,1,'hoàng ngu1','01231213'),(35,'2023-08-05','hehehe','2023-08-12',NULL,1,1,1,'hoàng ngu1','01231213'),(36,'2023-08-05','hehehe','2023-08-12',40000000,1,2,1,'hoàng ngu1','01231213'),(37,'2023-08-06','son tay - huong son - ha tinh','2023-08-13',NULL,16,1,1,'Le Huu Hoang','0386012379'),(38,'2023-08-06','son tay - huong son - ha tinh','2023-08-13',NULL,16,1,1,'Le Huu Hoang','0386012379'),(39,'2023-08-06','son tay - huong son - ha tinh','2023-08-13',NULL,16,1,1,'Le Huu Hoang','0386012379'),(40,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',50000000,16,2,1,'Le Huu Hoang','0386012379'),(41,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(42,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(43,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(44,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(45,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(46,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(47,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(48,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(49,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(50,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(51,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(52,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(53,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(54,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(55,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(56,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(57,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(58,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(59,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(60,'2023-08-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(61,'2023-05-07','son tay - huong son - ha tinh','2023-08-14',NULL,16,1,1,'Le Huu Hoang','0386012379'),(63,'2023-07-08','hehehe','2023-08-15',NULL,1,1,1,'hoàng ngu1','01231213'),(66,'2023-08-10','hà tĩnh123','2023-08-17',10000000,3,2,1,'dinh nho nam1','123123'),(68,'2023-08-12','20 to hcm','2023-08-19',NULL,18,1,1,'df','0831231213'),(70,'2023-08-12','hà tĩnh123','2023-08-19',NULL,3,1,1,'dinh nho nam1','123123'),(71,'2023-08-12','hà tĩnh123','2023-08-19',NULL,3,1,1,'dinh nho nam1','123123'),(72,'2023-08-12','hà tĩnh123','2023-08-19',NULL,3,1,1,'dinh nho nam1','123123'),(73,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(74,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(75,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(76,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(77,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(78,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(79,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(80,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(81,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(82,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(83,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(84,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(85,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(86,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(87,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(88,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(89,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(90,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(91,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(92,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(93,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(94,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(95,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(96,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(97,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(98,'2023-08-13','hà tĩnh123','2023-08-20',NULL,3,1,1,'dinh nho nam1','123123'),(99,'2023-08-13','hà tĩnh123','2023-08-20',10000000,3,2,1,'dinh nho nam1','123123'),(100,'2023-08-13','hà tĩnh123','2023-08-20',10000000,3,2,1,'dinh nho nam1','123123'),(101,'2023-08-13','hà tĩnh123','2023-08-20',20000000,3,2,1,'dinh nho nam1','123123'),(102,'2023-08-13','hà tĩnh123','2023-08-20',20000000,3,2,1,'dinh nho nam1','123123'),(103,'2023-08-13','hà tĩnh123','2023-08-20',10000000,3,2,1,'dinh nho nam1','123123'),(105,'2023-08-13',NULL,'2023-08-20',10000000,3,2,1,NULL,NULL),(107,'2023-08-14',NULL,'2023-08-21',NULL,3,1,1,NULL,NULL);
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` bigint DEFAULT NULL,
  `id_order` bigint DEFAULT NULL,
  `id_product` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6p23pvpkq428p2202r72fmatj` (`id_order`),
  KEY `FKhpraxq28c9p8aljm2jebpun9s` (`id_product`),
  CONSTRAINT `FK6p23pvpkq428p2202r72fmatj` FOREIGN KEY (`id_order`) REFERENCES `order1` (`id`),
  CONSTRAINT `FKhpraxq28c9p8aljm2jebpun9s` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (58,2,36,13),(59,4,37,16),(60,4,38,16),(61,4,39,16),(63,1,39,15),(66,4,41,16),(68,4,43,16),(70,4,45,16),(71,4,46,16),(72,4,47,16),(73,4,48,16),(74,4,49,16),(75,4,50,16),(76,4,51,16),(77,4,52,16),(78,4,53,16),(79,4,54,16),(80,4,55,16),(81,4,56,16),(82,4,57,16),(83,4,58,16),(84,4,59,16),(85,4,60,16),(86,1,61,12),(88,2,63,12),(89,2,63,13),(92,1,66,12),(94,3,68,14),(96,6,70,15),(97,1,71,20),(98,2,72,13),(99,1,73,20),(100,6,74,23),(101,6,75,15),(102,6,76,23),(103,1,77,20),(104,1,78,13),(105,1,79,12),(106,1,80,20),(107,1,81,13),(108,1,82,12),(109,1,83,23),(110,1,84,12),(111,1,85,12),(112,1,86,12),(113,1,87,12),(114,1,88,12),(115,1,89,13),(116,1,90,12),(117,1,91,12),(118,1,92,16),(119,1,93,16),(120,1,94,23),(121,1,95,12),(122,1,96,12),(123,1,97,12),(124,1,98,12),(125,1,99,12),(126,1,100,12),(127,2,101,23),(128,2,102,13),(129,1,103,15),(131,1,105,15),(133,3,107,20);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_payment`
--

DROP TABLE IF EXISTS `order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_amout` float DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `id_order` bigint DEFAULT NULL,
  `id_payment_method` bigint DEFAULT NULL,
  `id_seller` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc3n3gquyn58vytmt6eem6vavh` (`id_order`),
  KEY `FK5nu91bdqq3f169b6nq2pxmumu` (`id_payment_method`),
  KEY `FKjmjon1n7982iqsril39i0xmb9` (`id_seller`),
  CONSTRAINT `FK5nu91bdqq3f169b6nq2pxmumu` FOREIGN KEY (`id_payment_method`) REFERENCES `payment_method` (`id`),
  CONSTRAINT `FKc3n3gquyn58vytmt6eem6vavh` FOREIGN KEY (`id_order`) REFERENCES `order1` (`id`),
  CONSTRAINT `FKjmjon1n7982iqsril39i0xmb9` FOREIGN KEY (`id_seller`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_payment`
--

LOCK TABLES `order_payment` WRITE;
/*!40000 ALTER TABLE `order_payment` DISABLE KEYS */;
INSERT INTO `order_payment` VALUES (5,123123,'2023-08-05',19,2,2),(6,123123,'2023-08-05',20,2,2),(14,50000000,'2023-08-07',40,2,2),(16,10000000,'2023-08-10',66,2,1),(17,10000000,'2023-08-10',66,2,1),(18,10000000,'2023-08-13',105,2,1),(19,10000000,'2023-08-13',105,2,1),(20,10000000,'2023-08-13',103,2,1),(21,10000000,'2023-08-13',103,2,1),(22,20000000,'2023-08-13',102,2,1),(23,20000000,'2023-08-13',102,2,1),(24,20000000,'2023-08-13',101,2,1),(25,20000000,'2023-08-13',101,2,1),(26,10000000,'2023-08-13',100,2,1),(27,10000000,'2023-08-13',100,2,1),(28,10000000,'2023-08-13',99,2,1),(29,10000000,'2023-08-13',99,2,1);
/*!40000 ALTER TABLE `order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_status_name` varchar(255) DEFAULT NULL,
  `order_status_detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'PROCESSING','Đơn hàng đã được tiếp nhận và đang được xử lý bởi hệ thống'),(2,'CONFIRMED','Đơn hàng đã được xác nhận thành công và đang chờ quá trình giao hàng'),(3,'SHIPPING','Đơn hàng đang trong quá trình giao hàng từ kho hàng đến địa chỉ giao hàng của khách hàng'),(4,'COMPLETED','Đơn hàng đã được giao thành công và đã được khách hàng nhận'),(5,'CANCELLED',' Đơn hàng đã bị hủy bỏ bởi khách hàng hoặc do lý do nào đó'),(6,'RETURNED','Đơn hàng đã được hoàn trả thành công');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_method_detail` varchar(255) DEFAULT NULL,
  `payment_name` enum('BANKING','MOMO','SHIPCODE','VISA') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'Thanh toán bằng tiền mặt','SHIPCODE'),(2,'Thanh toán bằng thẻ ATM/Banking','BANKING'),(3,'Thanh toán bằng thẻ tín dụng','VISA'),(4,'Thanh toán bằng momo','MOMO');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `public_id` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `stock_quantity` int DEFAULT NULL,
  `id_category` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_383i0awxqlq7pc33hil7afbgo` (`product_name`),
  KEY `FK5cxv31vuhc7v32omftlxa8k3c` (`id_category`),
  CONSTRAINT `FK5cxv31vuhc7v32omftlxa8k3c` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (12,'The Well is more than just another gym in Bondi. State-of-the-art exercise equipment and a team of highly-trained fitness experts will enable you to get the most out of every workout.','http://res.cloudinary.com/dzljztsyy/image/upload/v1691120114/shop_sport/e19821c7-1a83-4134-9ee7-c647d5023971.jpg',10000000,'tạ tập gym','e19821c7-1a83-4134-9ee7-c647d5023971',_binary '',9976,1),(13,'The Well is more than just another gym in Bondi. State-of-the-art exercise equipment and a team of highly-trained fitness experts will enable you to get the most out of every workout.','http://res.cloudinary.com/dzljztsyy/image/upload/v1691120129/shop_sport/cdfafdc8-d8c0-4e8d-ae9b-123db531586a.jpg',10000000,'tạ tập gym 1','cdfafdc8-d8c0-4e8d-ae9b-123db531586a',_binary '',9990,1),(14,'The Well is more than just another gym in Bondi. State-of-the-art exercise equipment and a team of highly-trained fitness experts will enable you to get the most out of every workout.','http://res.cloudinary.com/dzljztsyy/image/upload/v1691120156/shop_sport/c107d8ac-de94-4b27-a8e1-d29507d5aae1.jpg',10000000,'thảm tập yoga','c107d8ac-de94-4b27-a8e1-d29507d5aae1',_binary '',9997,2),(15,'The Well is more than just another gym in Bondi. State-of-the-art exercise equipment and a team of highly-trained fitness experts will enable you to get the most out of every workout.','http://res.cloudinary.com/dzljztsyy/image/upload/v1691120160/shop_sport/a2adf590-e90a-45b8-bed8-6806fe155c06.jpg',10000000,'thảm tập yoga 1','a2adf590-e90a-45b8-bed8-6806fe155c06',_binary '',9980,2),(16,'The Well is more than just another gym in Bondi. State-of-the-art exercise equipment and a team of highly-trained fitness experts will enable you to get the most out of every workout.','http://res.cloudinary.com/dzljztsyy/image/upload/v1691131230/shop_sport/93dd8c3d-8e23-48e5-a94b-fa158f007cf3.jpg',10000000,'thảm tập yoga 112','93dd8c3d-8e23-48e5-a94b-fa158f007cf3',_binary '',9998,2),(17,'Giá trên chưa ba gồm chi phí vận chuyển. Chúng tôi sẽ liên hệ lại để báo phí ship chính xác tùy theo trọng lượng bộ tạ và địa chỉ của quý khách sau khi quý khách đặt hàng. Phí ship hiển thị khi đặt hàng có thể thay đổi tùy theo địa chỉ của quý khách.','http://res.cloudinary.com/dzljztsyy/image/upload/v1691139437/shop_sport/90854392-7a42-4bdc-8cb8-104a81cf3880.jpg',150000,'Tạ Tập Tay1','90854392-7a42-4bdc-8cb8-104a81cf3880',_binary '',1000,2),(19,'ao1123','http://res.cloudinary.com/dzljztsyy/image/upload/v1691138846/shop_sport/8fcd06d8-2e4f-4f9a-afcd-7b36b2cb0040.jpg',1123,'ao123','8fcd06d8-2e4f-4f9a-afcd-7b36b2cb0040',_binary '',1123,3),(20,'giay chay bo giay re chat luong can nha, giay rat phone hi[','http://res.cloudinary.com/dzljztsyy/image/upload/v1691133133/shop_sport/f7e219ac-4976-4924-a5b1-08a67bad8126.jpg',100000,'giay chay bo giay re','f7e219ac-4976-4924-a5b1-08a67bad8126',_binary '',9992,3),(22,'nam','http://res.cloudinary.com/dzljztsyy/image/upload/v1691133152/shop_sport/82aa5468-4c40-4616-bf61-075f41c13fb4.jpg',1,'nhonam1','82aa5468-4c40-4616-bf61-075f41c13fb4',_binary '\0',1,1),(23,'giafy tap chna giay re giay tap giup ban khoe manh hon, giup back cos the dude vung phong do CU ban trong nhung buoc chay','http://res.cloudinary.com/dzljztsyy/image/upload/v1691595110/shop_sport/6ac13bb6-ce75-41c4-94e3-e53e72fd2e99.jpg',10000000,'giay tap chan','6ac13bb6-ce75-41c4-94e3-e53e72fd2e99',_binary '',981,3),(24,'Hahahcjwoxjqifiwjzx','http://res.cloudinary.com/dzljztsyy/image/upload/v1691596791/shop_sport/137d9e10-2a26-4197-875e-e42dcd247163.jpg',1000000,'Ao đã bong','137d9e10-2a26-4197-875e-e42dcd247163',_binary '\0',1000,6);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_method` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shipping_method_detail` varchar(255) DEFAULT NULL,
  `shipping_method_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method`
--

LOCK TABLES `shipping_method` WRITE;
/*!40000 ALTER TABLE `shipping_method` DISABLE KEYS */;
INSERT INTO `shipping_method` VALUES (1,'Thanh toán bằng tiền mặt khi nhận hàng','CASH');
/*!40000 ALTER TABLE `shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `public_id` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','CUSTOMER','EMPLOYEE') DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'123','https://res.cloudinary.com/dzljztsyy/image/upload/v1691198788/shop_sport/80cadd2a-6308-41ef-8a12-cf9b4fb72540.jpg',NULL,'nhonamstg@gmail.com','123','$2a$10$LvOUl3H6pUicW42d8zDL7eyDOaSu7vRKrBQ22759E2XOMhOZzR5O.','123','6d65d874-f6cc-4dd3-8d5a-4b96aee8fae9','ADMIN',_binary '','admin'),(2,'1','https://res.cloudinary.com/dzljztsyy/image/upload/v1691198788/shop_sport/80cadd2a-6308-41ef-8a12-cf9b4fb72540.jpg','2023-07-26','nhonam@gamil.com','dinh nho nam','$2a$10$quQ6XdttFCqcFWqrgz2bjeH2d2Tdao6NvtU6SA8D9VsPcWj4jxZSK','123234','80cadd2a-6308-41ef-8a12-cf9b4fb72540','EMPLOYEE',_binary '','employee'),(3,'hà tĩnh123','http://res.cloudinary.com/dzljztsyy/image/upload/v1691596405/shop_sport/5efccb0d-fb03-4ed7-a415-a71f764a1c45.jpg',NULL,'nhonamstg@gmail.com','dinh nho nam1','$2a$10$vQn5mQ95WpHwdjNNtEoV2usnJ5fiqhJ9EZdMQkQkoMiE75fwwmwXy','123123','5efccb0d-fb03-4ed7-a415-a71f764a1c45','CUSTOMER',_binary '','hihi'),(4,'ha tinh','https://res.cloudinary.com/dzljztsyy/image/upload/v1691198788/shop_sport/80cadd2a-6308-41ef-8a12-cf9b4fb72540.jpg','2023-07-10','nhonamstg@gmail.com','dinh nho nam','$2a$10$4Z/HLxIA8xk4VsOSqj9MeeBYgAzgAwxCQ90BZM0ckqmP338zXCDgG','023832344',NULL,'CUSTOMER',_binary '','namne'),(6,NULL,'https://res.cloudinary.com/dzljztsyy/image/upload/v1691198788/shop_sport/80cadd2a-6308-41ef-8a12-cf9b4fb72540.jpg',NULL,'nhonamstg@gmail.com','nam dinh nho','$2a$10$33CFMIERf891Ueu5o.C9reXHNwT8imXxEW751KnSpRozkaDLz658m','0386021379',NULL,'EMPLOYEE',_binary '','nhonamstg@gmail.com'),(12,NULL,'https://res.cloudinary.com/dzljztsyy/image/upload/v1691198788/shop_sport/80cadd2a-6308-41ef-8a12-cf9b4fb72540.jpg',NULL,'nhonamsthg@gmail.com',NULL,'$2a$10$WuiOyL0eEllIju3KZ9pAJ.0hIihw9yJyjfuCTfvTcn2duyg7VkBKK',NULL,NULL,'EMPLOYEE',_binary '','nhonamsthg@gmail.com'),(14,NULL,'https://res.cloudinary.com/dzljztsyy/image/upload/v1691198788/shop_sport/80cadd2a-6308-41ef-8a12-cf9b4fb72540.jpg',NULL,'tranthibichngoc9a@gmail.com','dinh nho nam','$2a$10$yWb1dg9rtZotBLi5goES3OfpqumeiwpKa598JhC8gS77fV/y/e4wW','07688665',NULL,'EMPLOYEE',_binary '\0','n19dccn113@student.ptithcm.edu.vn'),(16,'son tay - huong son - ha tinh','https://res.cloudinary.com/dzljztsyy/image/upload/v1691198788/shop_sport/80cadd2a-6308-41ef-8a12-cf9b4fb72540.jpg','2001-03-30','nhonamstg@gmail.com','Le Huu Hoang','$2a$10$66ek1.G.SI8hxmjQ6LqnaOid/8FjVT/8bNAEky4qtXhw0quGbCEFC','0386012379',NULL,'CUSTOMER',_binary '','lehuuhoang'),(17,'dong nai','https://res.cloudinary.com/dzljztsyy/image/upload/v1690356797/shop_sport/avt%20default/images_emq5om.png','2023-08-01','nhonamstg@gmail.com','quoc bao','$2a$10$vhnoDZf9UE6wLs1JXs2EiuJxamgYxvkCEkdcnGRSRDWlSnBW3nrt6','0686024379',NULL,'CUSTOMER',_binary '','customer'),(18,'12313','https://res.cloudinary.com/dzljztsyy/image/upload/v1690356797/shop_sport/avt%20default/images_emq5om.png','2023-08-13','asnam@gmail.com','df','$2a$10$DXJFVidkx9H5Ix3cMJbMBeqku6cIp7Pxe8/DngFMXcngQ6Q94qz5e','0831231213',NULL,'CUSTOMER',_binary '','nam123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test'
--
/*!50003 DROP PROCEDURE IF EXISTS `addtoCart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addtoCart`(
  IN p_user_id INT,
    IN p_product_id INT,
    IN p_quantity INT)
BEGIN

  IF  EXISTS (SELECT * FROM cart WHERE cart.id_user = p_user_id ) THEN
       SET @idcart =( SELECT id FROM cart WHERE cart.id_user = p_user_id);
       
       if exists ( select * from cart_item where cart_item.id_product = p_product_id) then
			set @quati_cur = (select cart_item.quantity from cart_item where cart_item.id_product = p_product_id);
			update cart_item 
            set  quantity = @quati_cur + p_quantity
            where cart_item.id_cart = @idcart and cart_item.id_product =p_product_id;
			
       else
			INSERT INTO cart_item (id_cart, id_product, quantity)
			VALUES (@idcart, p_product_id, p_quantity);
       end if;
       
       
ELSE
		   -- Insert into Cart table
		INSERT INTO cart (id_user)
		VALUES (p_user_id);

		-- Get the auto-incremented ID of the inserted cart
		SET @cart_id = LAST_INSERT_ID();

		-- Insert into CartItem table
		INSERT INTO cart_item (id_cart, id_product, quantity)
		VALUES (@cart_id, p_product_id, p_quantity);
    
    END IF;
    

    
   

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `best_sell_month` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `best_sell_month`( thang int,  nam int)
BEGIN
SELECT table_tmp.product_name, sum(quantity) as quantity, table_tmp.price FROM 
(select order_item.id_product, quantity, order_date ,product.product_name, product.price
from order1 join order_item on order1.id = order_item.id
join product on order_item.id_product = product.id) as table_tmp
WHERE MONTH(table_tmp.order_date) = thang
AND YEAR(table_tmp.order_date) = nam
group by table_tmp.product_name, table_tmp.price
order by quantity desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `best_sell_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `best_sell_product`()
BEGIN
select product.*
from product join order_item on product.id = order_item.id_product and product.status = b'1' 
union
select product.*
from product join cart_item on product.id = cart_item.id_product and product.status = b'1' ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_delete_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_delete_product`(idProduct int)
BEGIN

	DECLARE cart_count INT;
    DECLARE order_count INT;

    -- Kiểm tra sản phẩm có trong giỏ hàng không
    SELECT COUNT(*) INTO cart_count FROM cart_item WHERE cart_item.id_product = idProduct;

    -- Kiểm tra sản phẩm có trong đơn hàng không
    SELECT COUNT(*) INTO order_count FROM order_item WHERE order_item.id_product = idProduct;

    -- Trả về kết quả dựa trên số lượng sản phẩm trong giỏ hàng và đơn hàng
    IF cart_count = 0 AND order_count = 0 THEN
        select true;
    ELSE
        select false;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_delete_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_delete_user`(idUser int)
BEGIN

	DECLARE cart_count INT;
    DECLARE order_count INT;
    DECLARE order_payment_count INT;

    -- Kiểm tra user có trong giỏ hàng không
    SELECT COUNT(*) INTO cart_count FROM cart WHERE cart.id_user = idUser;

    -- Kiểm tra sản phẩm có trong đơn hàng không
    SELECT COUNT(*) INTO order_count FROM order1 WHERE order1.id_user = idUser;
    
     SELECT COUNT(*) INTO order_payment_count FROM order_payment WHERE order_payment.id_seller = idUser;

    -- Trả về kết quả dựa trên số lượng sản phẩm trong giỏ hàng và đơn hàng
    IF cart_count = 0 AND order_count = 0 and order_payment_count=0 THEN
        select true;
    ELSE
        select false;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `comfirm_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `comfirm_order`(idEmployee int, 
								 payment_amout float, id_order int, id_payment_method int )
BEGIN
 INSERT INTO order_payment (payment_amout, payment_date, id_order, id_payment_method, id_seller)
    VALUES (payment_amout, CURDATE(), id_order, id_payment_method, idEmployee);
    
    -- Update the order table
    UPDATE `order1`
    SET total_amount = payment_amout,
        id_order_status = 2 -- Assuming '2' represents the 'CONFIRMED' status
    WHERE id = id_order;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_order`(id_order int)
BEGIN

  IF (SELECT order1.id_order_status FROM order1 WHERE order1.id = id_order) = 1  THEN
         -- Xóa dữ liệu từ bảng order_item trước
    DELETE FROM order_item WHERE order_item.id_order IN (SELECT id FROM order1 WHERE order1.id = id_order);

    -- Xóa dữ liệu từ bảng order1
    DELETE FROM order1 WHERE order1.id = id_order;
    select true;

ELSE
select false;
    END IF;

	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllProductByCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllProductByCategory`( categoryname nvarchar(50))
BEGIN
select product.*
 from product join category on product.id_category = category.id  and category.category_name = categoryname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUserByRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUserByRole`( chucvu nvarchar(50))
BEGIN
 	select user.*
     from user where user.role = chucvu and user.status = b'1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCart_by_iduser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCart_by_iduser`(user_id long)
BEGIN
select cart_item.id, cart_item.quantity, product.image_url, product.price*cart_item.quantity as price_total , product.product_name, product.id as product_id
from product join cart_item on product.id = cart_item.id_product and product.status =b'1'
join cart on cart.id = cart_item.id_cart and cart.id_user = user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOrder_byIdUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrder_byIdUser`(idUser int)
BEGIN
select distinctrow order1.id_order_status, order_item_tmp.id_order, product_tmp.image_url, product_tmp.id as id_product, product_tmp.product_name,sum(order_item_tmp.quantity) as quantity,sum( product_tmp.price) as price
from (select product.image_url , product.product_name, product.id, product.price from product) as product_tmp
join  (select  order_item.id_order, order_item.id, order_item.id_product, order_item.quantity from order_item) as order_item_tmp
on product_tmp.id = order_item_tmp.id_product 
join order1 on order1.id = order_item_tmp.id_order and order1.id_user = idUser
group by product_tmp.image_url, product_tmp.product_name , product_tmp.id,order_item_tmp.id_order,order1.id_order_status ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_All_Product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_All_Product`()
BEGIN
	SELECT san_pham.*, gia.gia, gia.ngay_bat_dau, gia.ngay_ket_thuc
    FROM san_pham join gia_san_pham on san_pham.id = gia_san_pham.id_san_pham
    join gia on gia.id = gia_san_pham.id_giasp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_data_chart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_data_chart`(nam int)
BEGIN
   DECLARE a INT DEFAULT 1;
   DECLARE soluong INT DEFAULT 0;
    DECLARE str VARCHAR(50) DEFAULT '';

    WHILE (a <= 12) DO
    
    
set soluong = ( SELECT count(*) as quantity FROM 
(select order_item.id_product, quantity, order_date ,product.product_name
from order1 join order_item on order1.id = order_item.id
join product on order_item.id_product = product.id) as table_tmp
WHERE MONTH(table_tmp.order_date) = a
AND YEAR(table_tmp.order_date) = nam) ;
    
    
    
        SET str = CONCAT(str, soluong, ',');
        SET a = a + 1;
    END WHILE;

    SELECT str;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hoadon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hoadon`(idOrder int)
BEGIN
select order_tmp.id as id_Order,  product_tmp.product_name, order_item_tmp.quantity, product_tmp.price, order_tmp.shipping_adress, order_tmp.name_reciver, order_tmp.sdt
from ( select order1.id, order1.shipping_adress, order1.name_reciver, order1.sdt from order1 where id =idOrder) as order_tmp
join
(select order_item.quantity, order_item.id_order , order_item.id_product from order_item) as order_item_tmp
on order_tmp.id = order_item_tmp.id_order
join ( select product.id, product.price, product.product_name from product) as product_tmp
on product_tmp.id = order_item_tmp.id_product ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPromotion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPromotion`(
	IN promotion_name VARCHAR(255),
	IN promotionCode VARCHAR(255),
	IN banner VARCHAR(255),
	IN publicId VARCHAR(255),
	IN discountType VARCHAR(255),
	IN startDate date,
	IN endDate date,
	IN discountValue long,
	IN minimumOrderValue long,
    
    
    IN product_ids VARCHAR(255))
BEGIN
 DECLARE v_promotion_id int;
    
    -- Insert into Promotion table
  --   INSERT INTO promotion (promotion_name)
--     VALUES (promotion_name);
    INSERT INTO promotion (banner_url, discount_type, discount_value, end_date, minimum_order_value, promotion_code, promotion_name, public_id, start_date) 
    VALUES (banner, discountType, discountValue, endDate, minimumOrderValue, promotionCode, promotion_name, publicId, startDate);

    
    -- Get the auto-incremented ID of the inserted promotion
    SET v_promotion_id = LAST_INSERT_ID();
    
    -- Insert into PromotionProduct table
    INSERT INTO promotion_product (id_product, id_promotion)
    SELECT id, v_promotion_id
    FROM product
    WHERE FIND_IN_SET(id, product_ids);
    
    SELECT v_promotion_id AS promotion_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_to_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_to_order`( shipping_adress nvarchar(255), 
									id_user int, id_shipping_method int, phone nvarchar(20), ngnhan nvarchar(100)  )
BEGIN
	
    DECLARE new_order_id INT;

  -- Thực hiện thêm đơn hàng vào bảng Orders
  INSERT INTO order1 ( order_date,shipping_adress, shipping_date, id_order_status, id_user,id_shipping_method, sdt, name_reciver  )
  VALUES (CURDATE(),shipping_adress, DATE_ADD(CURDATE(), INTERVAL 7 DAY), 1,id_user,id_shipping_method,phone,ngnhan );
  -- Kiểm tra xem đơn hàng đã được thêm thành công hay chưa

    SET new_order_id = LAST_INSERT_ID();
 

  select new_order_id;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_to_order_order_item` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_to_order_order_item`( shipping_adress nvarchar(255), 
									id_user int, id_shipping_method int, phone nvarchar(20), ngnhan nvarchar(100),
                                       IN productIds VARCHAR(255),
									IN quantities VARCHAR(255))
BEGIN
	
    DECLARE new_order_id INT;
      DECLARE itemCount INT;
    DECLARE i INT DEFAULT 1;
    DECLARE productId INT;
    DECLARE quantity INT;

  -- Thực hiện thêm đơn hàng vào bảng Orders
  INSERT INTO order1 ( order_date,shipping_adress, shipping_date, id_order_status, id_user,id_shipping_method, sdt, name_reciver  )
  VALUES (CURDATE(),shipping_adress, DATE_ADD(CURDATE(), INTERVAL 7 DAY), 1,id_user,id_shipping_method,phone,ngnhan );
  -- Kiểm tra xem đơn hàng đã được thêm thành công hay chưa

    SET new_order_id = LAST_INSERT_ID();
    -- Split productIds and quantities into arrays based on commas
    SET itemCount = (SELECT LENGTH(productIds) - LENGTH(REPLACE(productIds, ',', '')) + 1);
    
    -- Start loop to insert items into OrderItem table
    WHILE i <= itemCount DO
        SET productId = SUBSTRING_INDEX(SUBSTRING_INDEX(productIds, ',', i), ',', -1);
        SET quantity = SUBSTRING_INDEX(SUBSTRING_INDEX(quantities, ',', i), ',', -1);
        
        -- Insert the item into OrderItem
        INSERT INTO Order_Item (id_order, id_product, quantity)
        VALUES (new_order_id, productId, quantity);
        
        update product set stock_quantity = stock_quantity - quantity where product.id = productId;
        
        SET i = i + 1;
    END WHILE;
    
    -- Display a message indicating successful insertion
    SELECT CONCAT(' mua hang thanh cong ') AS Message;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inset_to_order_item` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inset_to_order_item`(   IN orderId INT,
    IN productIds VARCHAR(255),
    IN quantities VARCHAR(255))
BEGIN
  -- Declare variables
    DECLARE itemCount INT;
    DECLARE i INT DEFAULT 1;
    DECLARE productId INT;
    DECLARE quantity INT;
    
    -- Split productIds and quantities into arrays based on commas
    SET itemCount = (SELECT LENGTH(productIds) - LENGTH(REPLACE(productIds, ',', '')) + 1);
    
    -- Start loop to insert items into OrderItem table
    WHILE i <= itemCount DO
        SET productId = SUBSTRING_INDEX(SUBSTRING_INDEX(productIds, ',', i), ',', -1);
        SET quantity = SUBSTRING_INDEX(SUBSTRING_INDEX(quantities, ',', i), ',', -1);
        
        -- Insert the item into OrderItem
        INSERT INTO Order_Item (id_order, id_product, quantity)
        VALUES (orderId, productId, quantity);
        
        SET i = i + 1;
    END WHILE;
    
    -- Display a message indicating successful insertion
    SELECT CONCAT(itemCount, ' items added to OrderItem for orderId ', orderId) AS Message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `order_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `order_detail`(idOrder int)
BEGIN
select order_tmp.id as id_Order,  product_tmp.product_name, order_item_tmp.quantity, product_tmp.price, order_tmp.shipping_adress, order_tmp.name_reciver, order_tmp.sdt
from ( select order1.id, order1.shipping_adress, order1.name_reciver, order1.sdt from order1 where id =idOrder) as order_tmp
join
(select order_item.quantity, order_item.id_order , order_item.id_product from order_item) as order_item_tmp
on order_tmp.id = order_item_tmp.id_order
join ( select product.id, product.price, product.product_name from product) as product_tmp
on product_tmp.id = order_item_tmp.id_product ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_product`(text1 nvarchar(255))
BEGIN
select distinct product.* from product join category on product.id_category = category.id
  and product.status = true 
and product.price LIKE CONCAT('%', text1, '%') 
or product.product_name LIKE CONCAT('%', text1, '%')
or category.category_name LIKE CONCAT('%', text1, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_user`(IN chucvu nvarchar(255),IN text1 nvarchar(50))
BEGIN
    SELECT user.*
     FROM user
     WHERE user.role = chucvu and user.status = b'1' 
      and (user.email LIKE CONCAT('%', text1, '%')
           OR user.fullname LIKE CONCAT('%', text1, '%')
            OR user.phone = text1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `total_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `total_order`(idOrder int)
BEGIN
select sum(total_amount) as total_amount
from (
select order_item_tmp.quantity * product_tmp.price as total_amount 
from ( select order1.id from order1 where id =idOrder) as order_tmp
join
(select order_item.quantity, order_item.id_order , order_item.id_product from order_item) as order_item_tmp
on order_tmp.id = order_item_tmp.id_order
join ( select product.id, product.price from product) as product_tmp
on product_tmp.id = order_item_tmp.id_product 
) as total ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-15  7:30:46
