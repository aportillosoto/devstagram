/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.2.0 : Database - devstagram
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`devstagram` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `devstagram`;

/*Table structure for table `comentarios` */

DROP TABLE IF EXISTS `comentarios`;

CREATE TABLE `comentarios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `comentario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comentarios_user_id_foreign` (`user_id`),
  KEY `comentarios_post_id_foreign` (`post_id`),
  CONSTRAINT `comentarios_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comentarios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `comentarios` */

insert  into `comentarios`(`id`,`user_id`,`post_id`,`comentario`,`created_at`,`updated_at`) values 
(1,8,1,'un nuevo comentario','2024-12-02 21:22:23','2024-12-02 21:22:23');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

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

/*Data for the table `failed_jobs` */

/*Table structure for table `followers` */

DROP TABLE IF EXISTS `followers`;

CREATE TABLE `followers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `follower_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `followers_user_id_foreign` (`user_id`),
  KEY `followers_follower_id_foreign` (`follower_id`),
  CONSTRAINT `followers_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`),
  CONSTRAINT `followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `followers` */

insert  into `followers`(`id`,`user_id`,`follower_id`,`created_at`,`updated_at`) values 
(3,8,7,NULL,NULL),
(4,8,9,NULL,NULL),
(5,7,9,NULL,NULL),
(6,7,8,NULL,NULL),
(7,9,8,NULL,NULL);

/*Table structure for table `likes` */

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_user_id_foreign` (`user_id`),
  KEY `likes_post_id_foreign` (`post_id`),
  CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `likes` */

insert  into `likes`(`id`,`user_id`,`post_id`,`created_at`,`updated_at`) values 
(4,8,1,'2024-12-02 21:22:32','2024-12-02 21:22:32'),
(5,7,1,'2024-12-02 21:23:00','2024-12-02 21:23:00'),
(6,8,10,'2024-12-11 14:56:18','2024-12-11 14:56:18'),
(26,7,2,'2024-12-11 21:24:01','2024-12-11 21:24:01'),
(30,7,11,'2024-12-13 19:12:15','2024-12-13 19:12:15');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(5,'2014_10_12_000000_create_users_table',1),
(6,'2014_10_12_100000_create_password_resets_table',1),
(7,'2019_08_19_000000_create_failed_jobs_table',1),
(8,'2019_12_14_000001_create_personal_access_tokens_table',1),
(10,'2024_11_20_173730_add_username_to_users_table',2),
(13,'2024_11_28_205247_create_posts_table',3),
(15,'2024_12_01_205947_create_comentarios_table',4),
(16,'2024_12_02_161014_create_likes_table',5),
(17,'2024_12_03_202154_add_imagen_field_to_users_table',6),
(18,'2024_12_05_205032_create_followers_table',7);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `posts` */

insert  into `posts`(`id`,`titulo`,`descripcion`,`imagen`,`user_id`,`created_at`,`updated_at`) values 
(1,'Mi curso de big data','En este curso aprenderás desde los fundamentos hasta temas más avanzados.','04f3ea4e-369e-4b3d-a6bc-688f5f422f13.jpg',8,'2024-11-29 15:41:10','2024-11-29 15:41:10'),
(2,'Un día en el trabajo','Trabajando con laravel','69885b66-db3a-45ed-8327-ad51527c6f56.jpg',8,'2024-11-29 16:32:40','2024-11-29 16:32:40'),
(3,'Hoy es el día de programación','Felicidades!!!','2591aa36-ba45-425a-8314-576374f35a5f.jpg',8,'2024-11-29 18:31:14','2024-11-29 18:31:14'),
(4,'Solucionando bugs.','Cuando no encontras el error.','c5d46505-b3ff-44d2-88d3-efff5b6e9894.jpg',8,'2024-11-29 19:44:49','2024-11-29 19:44:49'),
(5,'Día te testing','Probando antes de levantar a producción','c38a8af3-6b03-482f-98f5-5406b0a63d98.jpg',8,'2024-11-29 19:45:23','2024-11-29 19:45:23'),
(6,'Nuevo requerimiento','Diseñando un nuevo proceso.','a73b3623-213f-4bb9-b0f7-d7e13bfc06b7.jpg',8,'2024-11-29 19:46:11','2024-11-29 19:46:11'),
(9,'De paseo','Viaje Familiar','ddf213be-bfef-4b90-b8d9-e0ed3377875e.jpg',9,'2024-12-11 14:05:30','2024-12-11 14:05:30'),
(10,'Urgencias HRC','El grupete','345fb195-fe44-44df-a02c-3e0beb20e9c3.jpg',9,'2024-12-11 14:06:21','2024-12-11 14:06:21'),
(11,'Family','#','f3c5d248-cbde-4c2c-bb19-6d3a33b9db09.jpg',7,'2024-12-11 14:49:08','2024-12-11 14:49:08');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`,`username`,`imagen`) values 
(7,'Antonio Portillo','aportillosoto@gmail.com',NULL,'$2y$10$/ttDxd8gzQpOLcM/hT2qQ./sqB0uoX8c2ArIYerx8fydYSA0vkqW.','PwYkLhRdFOcwkLEpjxfuopkBIto0J3t398wUhXirD2Bkg9gQbm06TkMdFVTK','2024-11-27 13:49:46','2024-12-11 14:48:20','aportillo','d00398ab-3c2d-44db-8a02-435714750299.jpg'),
(8,'Arelys Portillo','aivonneportillo@gmail.com',NULL,'$2y$10$/ttDxd8gzQpOLcM/hT2qQ./sqB0uoX8c2ArIYerx8fydYSA0vkqW.',NULL,'2024-11-27 18:18:05','2024-12-05 17:46:35','aivonne','47739ada-dc26-476f-93fc-a0651287133f.jpg'),
(9,'Diana Romero','romerordianar@gmail.com',NULL,'$2y$10$GlBIp83s1Gs3e7o4DHb4AuYJg6BFBAp/DQJl6I.bE25C.7y.D8W2q',NULL,'2024-12-11 14:04:37','2024-12-11 14:05:01','didy','1dd11c82-144a-4acc-a987-466e6fb1b9fd.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
