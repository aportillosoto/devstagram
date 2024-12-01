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

/*Data for the table `failed_jobs` */

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(5,'2014_10_12_000000_create_users_table',1),
(6,'2014_10_12_100000_create_password_resets_table',1),
(7,'2019_08_19_000000_create_failed_jobs_table',1),
(8,'2019_12_14_000001_create_personal_access_tokens_table',1),
(10,'2024_11_20_173730_add_username_to_users_table',2),
(13,'2024_11_28_205247_create_posts_table',3);

/*Data for the table `password_resets` */

/*Data for the table `personal_access_tokens` */

/*Data for the table `posts` */

insert  into `posts`(`id`,`titulo`,`descripcion`,`imagen`,`user_id`,`created_at`,`updated_at`) values 
(1,'Mi curso de big data','En este curso aprenderás desde los fundamentos hasta temas más avanzados.','04f3ea4e-369e-4b3d-a6bc-688f5f422f13.jpg',8,'2024-11-29 15:41:10','2024-11-29 15:41:10'),
(2,'Un día en el trabajo','Trabajando con laravel','69885b66-db3a-45ed-8327-ad51527c6f56.jpg',8,'2024-11-29 16:32:40','2024-11-29 16:32:40'),
(3,'Hoy es el día de programación','Felicidades!!!','2591aa36-ba45-425a-8314-576374f35a5f.jpg',8,'2024-11-29 18:31:14','2024-11-29 18:31:14'),
(4,'Solucionando bugs.','Cuando no encontras el error.','c5d46505-b3ff-44d2-88d3-efff5b6e9894.jpg',8,'2024-11-29 19:44:49','2024-11-29 19:44:49'),
(5,'Día te testing','Probando antes de levantar a producción','c38a8af3-6b03-482f-98f5-5406b0a63d98.jpg',8,'2024-11-29 19:45:23','2024-11-29 19:45:23'),
(6,'Nuevo requerimiento','Diseñando un nuevo proceso.','a73b3623-213f-4bb9-b0f7-d7e13bfc06b7.jpg',8,'2024-11-29 19:46:11','2024-11-29 19:46:11'),
(7,'Trabajo nocturno','A trasnochar para finalizar los ajustes','64b6582c-edb8-4cf9-9529-87b400e2e016.jpg',8,'2024-11-29 19:47:08','2024-11-29 19:47:08'),
(8,'Pruebas','Pruebas y más pruebas','bb8c5a42-7c9f-4ac9-a79d-58c2ff29bd8f.jpg',8,'2024-11-29 19:48:02','2024-11-29 19:48:02');

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`,`username`) values 
(7,'Antonio Portillo','aportillosoto@gmail.com',NULL,'$2y$10$/ttDxd8gzQpOLcM/hT2qQ./sqB0uoX8c2ArIYerx8fydYSA0vkqW.','REkvjTpFqdOpUMRcDty6RFz8PFqBvRfBcE15SkPszl4kgH1ny07TNPFHzIs3','2024-11-27 13:49:46','2024-11-27 13:49:46','aportillo'),
(8,'Arelys Portillo','aivonneportillo@gmail.com',NULL,'$2y$10$gSJOr2jMUofZgcKB/13uVOC.p1DJBC/QegmJRn3rieH5h0SVUPRNi',NULL,'2024-11-27 18:18:05','2024-11-27 18:18:05','aivonne');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
