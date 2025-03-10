-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: astudio_projects
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attribute_values`
--

DROP TABLE IF EXISTS `attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `entity_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_values`
--

LOCK TABLES `attribute_values` WRITE;
/*!40000 ALTER TABLE `attribute_values` DISABLE KEYS */;
INSERT INTO `attribute_values` VALUES (1,1,1,'vitae','2025-03-09 16:52:47','2025-03-09 16:52:47'),(2,2,1,'2024-03-22','2025-03-09 16:52:47','2025-03-09 16:52:47'),(3,3,1,'2024-05-17','2025-03-09 16:52:47','2025-03-09 16:52:47'),(4,4,1,'Medium','2025-03-09 16:52:47','2025-03-09 16:52:47'),(5,5,1,'24343','2025-03-09 16:52:47','2025-03-09 16:52:47'),(6,1,2,'sit','2025-03-09 16:52:47','2025-03-09 16:52:47'),(7,2,2,'2024-10-02','2025-03-09 16:52:47','2025-03-09 16:52:47'),(8,3,2,'2024-03-26','2025-03-09 16:52:47','2025-03-09 16:52:47'),(9,4,2,'High','2025-03-09 16:52:47','2025-03-09 16:52:47'),(10,5,2,'6573','2025-03-09 16:52:47','2025-03-09 16:52:47'),(11,1,3,'dicta','2025-03-09 16:52:47','2025-03-09 16:52:47'),(12,2,3,'2024-09-16','2025-03-09 16:52:47','2025-03-09 16:52:47'),(13,3,3,'2024-07-08','2025-03-09 16:52:47','2025-03-09 16:52:47'),(14,4,3,'High','2025-03-09 16:52:47','2025-03-09 16:52:47'),(15,5,3,'72076','2025-03-09 16:52:47','2025-03-09 16:52:47'),(16,1,4,'saepe','2025-03-09 16:52:47','2025-03-09 16:52:47'),(17,2,4,'2024-10-26','2025-03-09 16:52:47','2025-03-09 16:52:47'),(18,3,4,'2024-05-11','2025-03-09 16:52:47','2025-03-09 16:52:47'),(19,4,4,'Low','2025-03-09 16:52:47','2025-03-09 16:52:47'),(20,5,4,'41083','2025-03-09 16:52:47','2025-03-09 16:52:47'),(21,1,5,'est','2025-03-09 16:52:47','2025-03-09 16:52:47'),(22,2,5,'2024-08-22','2025-03-09 16:52:47','2025-03-09 16:52:47'),(23,3,5,'2024-04-12','2025-03-09 16:52:47','2025-03-09 16:52:47'),(24,4,5,'High','2025-03-09 16:52:47','2025-03-09 16:52:47'),(25,5,5,'32293','2025-03-09 16:52:47','2025-03-09 16:52:47'),(26,1,6,'qui','2025-03-09 16:52:47','2025-03-09 16:52:47'),(27,2,6,'2024-10-13','2025-03-09 16:52:47','2025-03-09 16:52:47'),(28,3,6,'2024-06-08','2025-03-09 16:52:47','2025-03-09 16:52:47'),(29,4,6,'Low','2025-03-09 16:52:47','2025-03-09 16:52:47'),(30,5,6,'5428','2025-03-09 16:52:47','2025-03-09 16:52:47'),(31,1,7,'quia','2025-03-09 16:52:47','2025-03-09 16:52:47'),(32,2,7,'2024-05-12','2025-03-09 16:52:47','2025-03-09 16:52:47'),(33,3,7,'2024-07-03','2025-03-09 16:52:47','2025-03-09 16:52:47'),(34,4,7,'Low','2025-03-09 16:52:47','2025-03-09 16:52:47'),(35,5,7,'70284','2025-03-09 16:52:47','2025-03-09 16:52:47'),(36,1,8,'iusto','2025-03-09 16:52:47','2025-03-09 16:52:47'),(37,2,8,'2024-09-06','2025-03-09 16:52:47','2025-03-09 16:52:47'),(38,3,8,'2024-06-14','2025-03-09 16:52:47','2025-03-09 16:52:47'),(39,4,8,'Low','2025-03-09 16:52:47','2025-03-09 16:52:47'),(40,5,8,'20883','2025-03-09 16:52:47','2025-03-09 16:52:47'),(41,1,9,'minima','2025-03-09 16:52:47','2025-03-09 16:52:47'),(42,2,9,'2024-06-04','2025-03-09 16:52:47','2025-03-09 16:52:47'),(43,3,9,'2024-11-04','2025-03-09 16:52:47','2025-03-09 16:52:47'),(44,4,9,'Low','2025-03-09 16:52:47','2025-03-09 16:52:47'),(45,5,9,'91944','2025-03-09 16:52:47','2025-03-09 16:52:47'),(46,1,10,'sint','2025-03-09 16:52:47','2025-03-09 16:52:47'),(47,2,10,'2024-08-27','2025-03-09 16:52:47','2025-03-09 16:52:47'),(48,3,10,'2024-05-28','2025-03-09 16:52:47','2025-03-09 16:52:47'),(49,4,10,'High','2025-03-09 16:52:47','2025-03-09 16:52:47'),(50,5,10,'30484','2025-03-09 16:52:47','2025-03-09 16:52:47'),(51,1,11,'accusamus','2025-03-09 16:52:47','2025-03-09 16:52:47'),(52,2,11,'2024-08-10','2025-03-09 16:52:47','2025-03-09 16:52:47'),(53,3,11,'2024-03-16','2025-03-09 16:52:47','2025-03-09 16:52:47'),(54,4,11,'Low','2025-03-09 16:52:47','2025-03-09 16:52:47'),(55,5,11,'37342','2025-03-09 16:52:47','2025-03-09 16:52:47'),(56,1,12,'sed','2025-03-09 16:52:47','2025-03-09 16:52:47'),(57,2,12,'2024-08-05','2025-03-09 16:52:47','2025-03-09 16:52:47'),(58,3,12,'2024-10-23','2025-03-09 16:52:47','2025-03-09 16:52:47'),(59,4,12,'High','2025-03-09 16:52:47','2025-03-09 16:52:47'),(60,5,12,'26145','2025-03-09 16:52:47','2025-03-09 16:52:47'),(61,1,13,'minima','2025-03-09 16:52:47','2025-03-09 16:52:47'),(62,2,13,'2024-09-27','2025-03-09 16:52:47','2025-03-09 16:52:47'),(63,3,13,'2024-09-07','2025-03-09 16:52:47','2025-03-09 16:52:47'),(64,4,13,'Medium','2025-03-09 16:52:47','2025-03-09 16:52:47'),(65,5,13,'58067','2025-03-09 16:52:47','2025-03-09 16:52:47'),(66,1,14,'cumque','2025-03-09 16:52:47','2025-03-09 16:52:47'),(67,2,14,'2024-11-01','2025-03-09 16:52:47','2025-03-09 16:52:47'),(68,3,14,'2024-05-10','2025-03-09 16:52:47','2025-03-09 16:52:47'),(69,4,14,'Medium','2025-03-09 16:52:47','2025-03-09 16:52:47'),(70,5,14,'31775','2025-03-09 16:52:47','2025-03-09 16:52:47'),(71,1,15,'laudantium','2025-03-09 16:52:47','2025-03-09 16:52:47'),(72,2,15,'2024-09-29','2025-03-09 16:52:47','2025-03-09 16:52:47'),(73,3,15,'2024-09-22','2025-03-09 16:52:47','2025-03-09 16:52:47'),(74,4,15,'Medium','2025-03-09 16:52:47','2025-03-09 16:52:47'),(75,5,15,'81731','2025-03-09 16:52:47','2025-03-09 16:52:47'),(76,1,16,'facere','2025-03-09 16:52:47','2025-03-09 16:52:47'),(77,2,16,'2024-04-17','2025-03-09 16:52:47','2025-03-09 16:52:47'),(78,3,16,'2024-04-10','2025-03-09 16:52:47','2025-03-09 16:52:47'),(79,4,16,'High','2025-03-09 16:52:47','2025-03-09 16:52:47'),(80,5,16,'51337','2025-03-09 16:52:47','2025-03-09 16:52:47'),(81,1,17,'eligendi','2025-03-09 16:52:47','2025-03-09 16:52:47'),(82,2,17,'2024-08-09','2025-03-09 16:52:47','2025-03-09 16:52:47'),(83,3,17,'2024-07-22','2025-03-09 16:52:47','2025-03-09 16:52:47'),(84,4,17,'High','2025-03-09 16:52:47','2025-03-09 16:52:47'),(85,5,17,'64864','2025-03-09 16:52:47','2025-03-09 16:52:47'),(86,1,18,'eveniet','2025-03-09 16:52:47','2025-03-09 16:52:47'),(87,2,18,'2024-09-03','2025-03-09 16:52:47','2025-03-09 16:52:47'),(88,3,18,'2024-06-22','2025-03-09 16:52:47','2025-03-09 16:52:47'),(89,4,18,'Low','2025-03-09 16:52:47','2025-03-09 16:52:47'),(90,5,18,'80230','2025-03-09 16:52:47','2025-03-09 16:52:47'),(91,1,19,'Travel',NULL,NULL),(92,2,19,'2024-01-15',NULL,NULL),(93,3,19,'2024-08-10',NULL,'2025-03-09 17:59:25'),(94,4,19,'High',NULL,NULL),(95,5,19,'80000',NULL,'2025-03-09 17:59:25'),(96,4,19,'Low','2025-03-09 19:33:08','2025-03-09 19:34:49');
/*!40000 ALTER TABLE `attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','date','number','select') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'department','text','2025-03-09 16:52:46','2025-03-09 16:52:46'),(2,'start_date','date','2025-03-09 16:52:47','2025-03-09 16:52:47'),(3,'end_date','date','2025-03-09 16:52:47','2025-03-09 16:52:47'),(4,'priority','select','2025-03-09 16:52:47','2025-03-09 16:52:47'),(5,'budget','number','2025-03-09 16:52:47','2025-03-09 16:52:47');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_03_08_070713_create_oauth_auth_codes_table',1),(5,'2025_03_08_070714_create_oauth_access_tokens_table',1),(6,'2025_03_08_070715_create_oauth_refresh_tokens_table',1),(7,'2025_03_08_070716_create_oauth_clients_table',1),(8,'2025_03_08_070717_create_oauth_personal_access_clients_table',1),(15,'2025_03_09_072950_create_projects_table',2),(16,'2025_03_09_073456_create_timesheet_table',2),(17,'2025_03_09_073532_create_project_user_table',2),(18,'2025_03_09_212540_create_attributes_table',3),(19,'2025_03_09_212600_create_attribute_values_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('256a1de5e561d71b4005d1ef183a9d3c3655359a9ba93ddd7c4810e2bfa6fdd0a685b11f914f1990',1,'9e628ed1-f977-4758-abaa-0228f012aa1d','apiToken','[\"view-projects\",\"add-project\",\"edit-project\",\"delete-project\",\"view-timesheet\",\"log-timesheet\"]',1,'2025-03-08 14:21:01','2025-03-08 14:58:23','2026-03-08 19:21:01'),('33729ab8ea41068f800ed07a23c78d976b21e887ca820f1d56f4c184331cb65ca6f61157b400342f',1,'9e628ed1-f977-4758-abaa-0228f012aa1d','apiToken','[\"view-projects\",\"add-project\",\"edit-project\",\"delete-project\",\"view-timesheet\",\"log-timesheet\"]',0,'2025-03-08 15:14:11','2025-03-08 15:14:11','2026-03-08 20:14:11'),('419e900edbb27d14df8b6e7f6902cc339a68fd8ad93dfa6b11156846132ab41c83da0d919d587b2b',1,'9e628ed1-f977-4758-abaa-0228f012aa1d','apiToken','[\"view-projects\",\"add-project\",\"edit-project\",\"delete-project\",\"view-timesheet\",\"log-timesheet\"]',1,'2025-03-09 06:28:53','2025-03-09 09:17:34','2026-03-09 11:28:53'),('77aee03d3aa2f1435ef7588d88d75b5d070e9ed9763578ee2ac6081f39fc0a87d5b58d20c211e656',11,'9e628ed1-f977-4758-abaa-0228f012aa1d','apiUserToken','[]',0,'2025-03-09 15:37:28','2025-03-09 15:37:28','2026-03-09 20:37:28'),('86d501a1d91c3e6e892d3cfcca84af5766235de2bac010310e2d377c6747fe0d73490d63b10119da',11,'9e628ed1-f977-4758-abaa-0228f012aa1d','apiUserToken','[]',0,'2025-03-09 12:42:51','2025-03-09 12:42:51','2026-03-09 17:42:51'),('a9274bd7578df4b79d37b5e87bd604f557f66dede06619ad3300c70334cf1ed4e2a0c809e5a06c39',1,'9e628ed1-f977-4758-abaa-0228f012aa1d','apiToken','[\"view-projects\",\"add-project\",\"edit-project\",\"delete-project\",\"view-timesheet\",\"log-timesheet\",\"delete-timesheet\",\"view-users\",\"add-user\",\"edit-user\",\"delete-user\",\"view-attributes\",\"edit-attributes\",\"delete-attributes\"]',1,'2025-03-09 10:03:46','2025-03-09 15:32:07','2026-03-09 15:03:46');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('9e628ed1-f977-4758-abaa-0228f012aa1d',NULL,'astudio_api','yWAWTS3U3wrfeuzAZzAE4ixLvpuRRYxpY8gzZovo',NULL,'http://localhost',1,0,0,'2025-03-08 14:16:41','2025-03-08 14:16:41');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,'9e628ed1-f977-4758-abaa-0228f012aa1d','2025-03-08 14:16:41','2025-03-08 14:16:41');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_user`
--

DROP TABLE IF EXISTS `project_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_user_user_id_project_id_unique` (`user_id`,`project_id`),
  KEY `project_user_project_id_foreign` (`project_id`),
  CONSTRAINT `project_user_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_user`
--

LOCK TABLES `project_user` WRITE;
/*!40000 ALTER TABLE `project_user` DISABLE KEYS */;
INSERT INTO `project_user` VALUES (1,1,1,NULL,NULL),(2,2,1,NULL,NULL),(3,3,2,NULL,NULL),(4,4,2,NULL,NULL),(5,5,2,NULL,NULL),(6,6,3,NULL,NULL),(7,7,4,NULL,NULL),(8,8,4,NULL,NULL),(9,9,4,NULL,NULL),(10,10,5,NULL,NULL),(11,11,5,NULL,NULL),(12,12,6,NULL,NULL),(13,13,7,NULL,NULL),(14,14,7,NULL,NULL),(15,15,8,NULL,NULL),(16,16,8,NULL,NULL),(17,17,9,NULL,NULL),(18,18,9,NULL,NULL);
/*!40000 ALTER TABLE `project_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projects_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Course Platform','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(2,'Social Media Bot','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(3,'Health Portal','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(4,'Event System','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(5,'Task Manager','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(6,'Travel App','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(7,'Real Estate App','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(8,'Blog Rewrite','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(9,'Portfolio Site','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(10,'Mobile UI Revamp','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(11,'Order System','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(12,'Data Dashboard v2','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(13,'Inventory System','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(14,'Payment Gateway','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(15,'LMS Integration','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(16,'Chatbot Support','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(17,'Forum Upgrade','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(18,'Website SEO Fix','active','2025-03-09 15:34:29','2025-03-09 15:34:29'),(19,'Cruise Booking App','active','2025-03-09 17:10:38','2025-03-09 17:10:38');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheet` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `hours` int NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `project_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timesheet_user_id_foreign` (`user_id`),
  KEY `timesheet_project_id_foreign` (`project_id`),
  CONSTRAINT `timesheet_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `timesheet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
INSERT INTO `timesheet` VALUES (1,'Requirement Gathering','2008-01-13',8,1,1,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(2,'Deployment on Staging','2018-05-06',6,1,1,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(3,'Deployment on Production','1975-08-12',7,1,1,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(4,'Code Review','2000-04-26',5,1,1,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(5,'Design','1987-05-09',8,1,2,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(6,'Design','1971-09-22',5,1,2,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(7,'Development','1973-10-29',7,1,2,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(8,'Deployment on Staging','2002-03-28',5,2,3,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(9,'Bugs Fixing','2000-09-10',5,2,3,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(10,'Bugs Fixing','1979-07-27',8,2,3,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(11,'Bugs Fixing','1979-08-29',5,2,3,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(12,'Requirement Gathering','1996-04-18',2,2,4,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(13,'Deployment on Staging','1984-06-29',6,2,4,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(14,'Deployment on Staging','2024-12-23',1,2,4,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(15,'Requirement Gathering','2008-10-20',7,2,4,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(16,'Development','1972-10-30',1,2,5,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(17,'Code Review','1972-11-06',4,2,5,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(18,'Deployment on Production','1974-04-01',4,2,5,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(19,'Design','2022-03-30',1,3,6,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(20,'Code Review','1971-08-30',1,3,6,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(21,'Deployment on Staging','1972-09-07',1,3,6,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(22,'Deployment on Production','2019-08-23',4,3,6,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(23,'Testing','2006-05-26',8,4,7,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(24,'Code Review','1987-08-19',5,4,7,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(25,'Deployment on Staging','1980-01-20',5,4,7,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(26,'Deployment on Production','1987-12-07',7,4,8,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(27,'Development','1992-04-03',1,4,8,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(28,'Deployment on Production','2005-01-01',8,4,8,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(29,'Development','2012-02-16',2,4,8,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(30,'Bugs Fixing','1992-11-19',8,4,9,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(31,'Testing','2003-07-15',1,4,9,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(32,'Design','2007-06-30',5,5,10,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(33,'Code Review','1974-04-20',3,5,10,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(34,'Design','2014-04-03',6,5,10,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(35,'Testing','2009-04-29',2,5,10,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(36,'Design','1980-02-21',7,5,10,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(37,'Requirement Gathering','1978-01-25',3,5,11,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(38,'Testing','1987-06-29',5,5,11,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(39,'Deployment on Production','1970-05-14',7,5,11,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(40,'Code Review','2010-01-16',1,6,12,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(41,'Testing','1970-09-21',5,6,12,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(42,'Deployment on Staging','2003-04-17',4,6,12,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(43,'Development','2011-01-23',2,7,13,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(44,'Testing','1984-03-20',2,7,13,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(45,'Deployment on Staging','1994-05-08',4,7,13,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(46,'Bugs Fixing','1986-04-30',5,7,13,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(47,'Code Review','1994-08-10',5,7,13,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(48,'Requirement Gathering','1971-02-09',4,7,14,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(49,'Bugs Fixing','1982-12-30',3,7,14,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(50,'Design','1975-08-17',8,7,14,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(51,'Testing','1996-05-06',2,7,14,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(52,'Requirement Gathering','1970-12-15',5,7,14,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(53,'Testing','1991-03-12',4,8,15,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(54,'Deployment on Production','1987-12-21',4,8,15,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(55,'Code Review','1993-03-24',8,8,15,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(56,'Design','1996-12-02',5,8,15,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(57,'Testing','2018-03-12',7,8,16,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(58,'Deployment on Staging','2001-01-13',3,8,16,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(59,'Deployment on Production','1993-11-26',5,9,17,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(60,'Code Review','2009-08-22',8,9,17,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(61,'Deployment on Staging','2025-01-07',1,9,17,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(62,'Deployment on Staging','1976-03-31',5,9,17,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(63,'Design','1993-05-25',1,9,18,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(64,'Testing','1990-11-12',7,9,18,'2025-03-09 15:34:29','2025-03-09 15:34:29'),(65,'Developer Testing','2025-03-10',8,11,1,'2025-03-09 16:07:55','2025-03-09 16:15:41');
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Meagan','Boyer','ejacobs@example.org','2025-03-09 15:34:27','$2y$12$AlaGUo7ZyOKu7h09Ay5OsOhRZoPTCxzAp5Fr1mYJj3H7BptlqRIjK','Jk9ow3PaJm','2025-03-09 15:34:29','2025-03-09 15:34:29'),(2,'Yadira','Ledner','abogan@example.com','2025-03-09 15:34:27','$2y$12$dxuOL2HmcsU2VV/EoIssWuCqhuyUYf/n1lS5ooeRVIHUnZKQ.6pua','hnq6ikFN5V','2025-03-09 15:34:29','2025-03-09 15:34:29'),(3,'Neva','Block','oberbrunner.zechariah@example.org','2025-03-09 15:34:27','$2y$12$we9sIwhhLvIl5myV.DAQsuuColbAKKtjSkdAIkNkvvzHqB49QjGW.','z1IcMMzYjv','2025-03-09 15:34:29','2025-03-09 15:34:29'),(4,'Harrison','Schultz','ullrich.alvis@example.org','2025-03-09 15:34:28','$2y$12$1tsKYDfhYgjbCOj5T5XrDO1YehiC5WnmhbnU2/YGK5w4Z2CBzWVpa','ZZbpZZEfvX','2025-03-09 15:34:29','2025-03-09 15:34:29'),(5,'Laury','Wuckert','micah59@example.com','2025-03-09 15:34:28','$2y$12$ylCzrFZRgCKEihvN3rAfIOyF.Ymm4ldC3P10TJDjjfEDTUBbZJ6Dy','RXNWLYcvSl','2025-03-09 15:34:29','2025-03-09 15:34:29'),(6,'Adella','Gutkowski','stark.kraig@example.org','2025-03-09 15:34:28','$2y$12$zh9l5USydeDmGu7om/8fVOjExVmkGC7XfO2dMoagAUYOqJjmTaBJ6','aUKAG0CdfI','2025-03-09 15:34:29','2025-03-09 15:34:29'),(7,'Tony','Blanda','dbode@example.net','2025-03-09 15:34:28','$2y$12$0ILuGjjstimCzFYgwdzo2egVmOxzQnqG0NyoiJvZEEJzl74YOm8yO','U3zH71Jsg8','2025-03-09 15:34:29','2025-03-09 15:34:29'),(8,'Rollin','Schumm','veda55@example.net','2025-03-09 15:34:28','$2y$12$kJrmioQj6iQNPJIijTIgTOCOWZ0NMrIfyP//gnhPQLr/fFWRu8pzi','enMQAFIFBR','2025-03-09 15:34:29','2025-03-09 15:34:29'),(9,'Noemi','Huels','bernice.simonis@example.org','2025-03-09 15:34:28','$2y$12$9OoSAaUVo59TOtwN4RTRculO54XgPv9UinVgc0MzYiTd/Ec5uRpmK','STbuTqN1Zm','2025-03-09 15:34:29','2025-03-09 15:34:29'),(10,'Muhammad','Ahmad','gunner28@example.com','2025-03-09 15:34:29','$2y$12$0CQDQP1M28K7sRWYIswDHedz68fSlCmM34/IjZKuaUi5jZr4mWSX.','wsyLfHLEI5','2025-03-09 15:34:29','2025-03-09 15:34:29'),(11,'Muhammad','Ismail','link2ismail@gmail.com',NULL,'$2y$12$MSyQsTNgvgIEGZwoYdwvmuvrk2.HnvfbFObMQMfcYtE.nWx.O49jO',NULL,'2025-03-09 15:37:12','2025-03-09 15:37:12');
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

-- Dump completed on 2025-03-10  5:39:57
