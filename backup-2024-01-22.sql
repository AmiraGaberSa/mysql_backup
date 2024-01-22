-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: laravel_r3
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cars_category_id_foreign` (`category_id`),
  CONSTRAINT `cars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Moore-Willms','Ipsa eum et quos blanditiis.',1,'https://via.placeholder.com/640x480.png/005544?text=voluptates',8,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(2,'Rath PLC','Voluptatem quia blanditiis qui voluptate atque cum.',0,'https://via.placeholder.com/640x480.png/006666?text=numquam',5,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(3,'Greenfelder LLC','Minima quia dolores eaque et.',1,'https://via.placeholder.com/640x480.png/00bbbb?text=maiores',4,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(4,'Yost and Sons','Maiores repellendus nisi soluta quasi est.',1,'https://via.placeholder.com/640x480.png/00ee88?text=numquam',2,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(5,'McClure Group','Modi voluptatibus est ut dignissimos ducimus eum debitis quo.',0,'https://via.placeholder.com/640x480.png/00eeff?text=beatae',8,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(6,'Hamill-Runte','Assumenda eos doloribus delectus sit ut.',0,'https://via.placeholder.com/640x480.png/007722?text=hic',8,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(7,'Kohler, Boyer and Bruen','Quidem neque non nisi id sed tempore qui voluptatibus.',0,'https://via.placeholder.com/640x480.png/00ff00?text=rem',8,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(8,'Zemlak-Schuster','Adipisci id quia dolorem atque error explicabo nobis.',0,'https://via.placeholder.com/640x480.png/0055ee?text=expedita',4,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(9,'Willms, Bruen and Osinski','Enim recusandae et labore et.',1,'https://via.placeholder.com/640x480.png/0033ee?text=quo',8,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(10,'Grant Inc','Saepe commodi nostrum nobis culpa quibusdam pariatur quas.',0,'https://via.placeholder.com/640x480.png/0055ff?text=qui',6,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(11,'DuBuque PLC','Eveniet praesentium est id quasi veniam fugit.',1,'https://via.placeholder.com/640x480.png/003388?text=dicta',10,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(12,'King, Lesch and Bednar','Similique et eaque officiis doloribus est sit eaque fugit.',1,'https://via.placeholder.com/640x480.png/00ff66?text=occaecati',8,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(13,'Runolfsdottir-Weber','Voluptate molestias dolores quidem.',0,'https://via.placeholder.com/640x480.png/000033?text=cum',2,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(14,'Mann Inc','Suscipit ab nemo autem neque quae est sint.',0,'https://via.placeholder.com/640x480.png/0011bb?text=sed',5,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(15,'Mills and Sons','Aut quasi et eius magnam ab sint.',0,'https://via.placeholder.com/640x480.png/0011ff?text=ut',1,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(16,'Schaden Ltd','Laborum magni qui amet.',0,'https://via.placeholder.com/640x480.png/005544?text=quia',6,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(17,'Wunsch, Ankunding and Hand','Quisquam harum sunt quibusdam perferendis.',1,'https://via.placeholder.com/640x480.png/0066cc?text=et',3,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(18,'Jakubowski Group','Et officia voluptatem neque ut quisquam praesentium dolores.',1,'https://via.placeholder.com/640x480.png/0033bb?text=dolor',9,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(19,'Block, Feeney and Powlowski','Ratione quasi quae animi veniam odit temporibus rem autem.',1,'https://via.placeholder.com/640x480.png/0099ee?text=voluptatem',10,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24'),(20,'Bednar, Schuppe and Hyatt','Totam incidunt consectetur delectus dolorem iste pariatur.',0,'https://via.placeholder.com/640x480.png/00cc44?text=praesentium',1,NULL,'2024-01-20 14:00:24','2024-01-20 14:00:24');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Cole LLC','2024-01-20 14:00:24','2024-01-20 14:00:24'),(2,'Robel Group','2024-01-20 14:00:24','2024-01-20 14:00:24'),(3,'Gutkowski, Hahn and Block','2024-01-20 14:00:24','2024-01-20 14:00:24'),(4,'Wiegand, Champlin and Runte','2024-01-20 14:00:24','2024-01-20 14:00:24'),(5,'Mayer, Hickle and Barton','2024-01-20 14:00:24','2024-01-20 14:00:24'),(6,'Corwin-Larkin','2024-01-20 14:00:24','2024-01-20 14:00:24'),(7,'Schaden and Sons','2024-01-20 14:00:24','2024-01-20 14:00:24'),(8,'Hettinger, Huel and Kuhic','2024-01-20 14:00:24','2024-01-20 14:00:24'),(9,'Runte, McGlynn and Jerde','2024-01-20 14:00:24','2024-01-20 14:00:24'),(10,'Kihn-Reichert','2024-01-20 14:00:24','2024-01-20 14:00:24');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_12_29_114420_create_categories_table',1),(7,'2023_12_04_225704_create_cars_table',1),(8,'2023_12_11_233525_create_posts_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `postTitle` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `author` varchar(100) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Zora Hilpert','nrutherford@example.com','2024-01-20 14:00:23','$2y$12$lIQUbtmKOhtrnBjab8xND.NOEGci9VpS0YF.OymY13fQ5zRgmKcJ6','1-947-277-1007',0,'FH7BJnQy1m','2024-01-20 14:00:24','2024-01-20 14:42:40'),(2,'Maryjane Donnelly','tabitha.skiles@example.com','2024-01-20 14:00:24','$2y$12$lIQUbtmKOhtrnBjab8xND.NOEGci9VpS0YF.OymY13fQ5zRgmKcJ6','+1.330.799.0193',0,'0qVCobdYGP','2024-01-20 14:00:24','2024-01-20 14:42:40'),(3,'Hannah Douglas','constantin.brakus@example.net','2024-01-20 14:00:24','$2y$12$lIQUbtmKOhtrnBjab8xND.NOEGci9VpS0YF.OymY13fQ5zRgmKcJ6','540-354-2770',0,'XbCPLEUiRk','2024-01-20 14:00:24','2024-01-20 14:42:40'),(4,'Dr. Alex Reichel','morton.metz@example.net','2024-01-20 14:00:24','$2y$12$lIQUbtmKOhtrnBjab8xND.NOEGci9VpS0YF.OymY13fQ5zRgmKcJ6','940.793.0088',0,'CDiJDbS8g9','2024-01-20 14:00:24','2024-01-20 14:42:40'),(5,'Nia Hessel Jr.','houston47@example.net','2024-01-20 14:00:24','$2y$12$lIQUbtmKOhtrnBjab8xND.NOEGci9VpS0YF.OymY13fQ5zRgmKcJ6','(667) 615-2399',0,'EnvCbUbubS','2024-01-20 14:00:24','2024-01-20 14:42:40'),(6,'Prof. Jaren Gislason','koepp.shannon@example.net','2024-01-20 14:00:24','$2y$12$lIQUbtmKOhtrnBjab8xND.NOEGci9VpS0YF.OymY13fQ5zRgmKcJ6','781.920.5556',0,'iKGFVvFvjD','2024-01-20 14:00:24','2024-01-20 14:42:40'),(7,'Coby Fisher','zjacobson@example.com','2024-01-20 14:00:24','$2y$12$lIQUbtmKOhtrnBjab8xND.NOEGci9VpS0YF.OymY13fQ5zRgmKcJ6','1-216-846-2853',0,'sEDzkLNe02','2024-01-20 14:00:24','2024-01-20 14:42:40'),(8,'Lawson Boyle','koss.macy@example.net','2024-01-20 14:00:24','$2y$12$lIQUbtmKOhtrnBjab8xND.NOEGci9VpS0YF.OymY13fQ5zRgmKcJ6','1-770-998-2265',0,'lfdbxeAUJR','2024-01-20 14:00:24','2024-01-20 14:42:40'),(9,'Maudie Kiehn IV','barrows.orlo@example.org','2024-01-20 14:00:24','$2y$12$lIQUbtmKOhtrnBjab8xND.NOEGci9VpS0YF.OymY13fQ5zRgmKcJ6','+1 (915) 587-5066',0,'Bw6QzSt0OB','2024-01-20 14:00:24','2024-01-20 14:42:40'),(10,'August Reinger MD','creola27@example.org','2024-01-20 14:00:24','$2y$12$lIQUbtmKOhtrnBjab8xND.NOEGci9VpS0YF.OymY13fQ5zRgmKcJ6','+1 (720) 534-3083',0,'CDVfqX8Hpd','2024-01-20 14:00:24','2024-01-20 14:42:40');
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

-- Dump completed on 2024-01-22 22:24:10
