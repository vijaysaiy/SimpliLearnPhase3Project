/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.1.45-community : Database - sportyshoes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sportyshoes` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sportyshoes`;

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values 
(8);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `season` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`product_id`,`category`,`brand`,`color`,`created_date`,`discount`,`price`,`product_name`,`season`,`size`) values 
(1,'male','Nike','yellow','26-9-2021',800,2500,'SHOES','summer',10),
(2,'male','Nike','Brown','26-9-2021',800,5500,'Hiking','summer',9),
(3,'male','Nike','yellow','26-9-2021',800,2500,'SHOES','summer',8),
(5,'female','Nike','yellow','26-9-2021',800,2500,'SHOES','summer',7),
(6,'female','Nike','yellow','26-9-2021',800,2500,'SHOES','summer',8),
(7,'female','Nike','yellow','26-9-2021',800,2500,'SHOES','summer',9),
(8,'female','Nike','yellow','26-9-2021',800,2500,'SHOES','summer',10),
(9,'female','Adidas','yellow','26-9-2021',800,2500,'SHOES','summer',10),
(10,'female','Adidas','yellow','26-9-2021',800,2500,'SHOES','summer',9),
(11,'female','Adidas','yellow','26-9-2021',800,2500,'SHOES','summer',8),
(12,'female','Adidas','yellow','26-9-2021',800,2500,'SHOES','summer',7),
(13,'female','Adidas','yellow','26-9-2021',800,2500,'SHOES','summer',6),
(14,'male','Adidas','yellow','26-9-2021',800,2500,'SHOES','summer',6),
(15,'male','Adidas','yellow','26-9-2021',800,2500,'SHOES','summer',8),
(16,'male','Adidas','yellow','26-9-2021',800,2500,'SHOES','summer',9),
(17,'male','Adidas','yellow','26-9-2021',800,2500,'SHOES','summer',10),
(18,'male','Adidas','yellow','27-9-2021',800,4000,'SHOES','rainy',10),
(19,'male','Adidas','yellow','27-9-2021',800,4000,'SHOES','rainy',8),
(20,'male','Adidas','yellow','27-9-2021',800,4000,'SHOES','rainy',6),
(21,'female','Adidas','yellow','27-9-2021',800,4000,'SHOES','rainy',6),
(22,'female','Adidas','yellow','27-9-2021',800,4000,'SHOES','rainy',8),
(23,'female','Adidas','yellow','27-9-2021',800,4000,'SHOES','rainy',9),
(24,'female','Adidas','yellow','27-9-2021',800,4000,'SHOES','Winter',9),
(25,'female','Puma','yellow','27-9-2021',800,4000,'SHOES','Winter',9),
(26,'male','Puma','yellow','27-9-2021',800,4000,'SHOES','Winter',9),
(27,'male','Puma','yellow','27-9-2021',800,4000,'SHOES','Winter',10),
(28,'male','Puma','yellow','27-9-2021',800,4000,'SHOES','Winter',8),
(29,'female','Puma','yellow','27-9-2021',800,4000,'SHOES','Winter',8),
(30,'female','Reebok','yellow','27-9-2021',800,4000,'SHOES','Winter',8),
(31,'female','Reebok','yellow','27-9-2021',800,2000,'SHOES','Winter',8),
(32,'female','Reebok','yellow','27-9-2021',800,2000,'SHOES','Winter',9),
(33,'female','Reebok','yellow','27-9-2021',800,2000,'SHOES','Winter',10),
(34,'male','Reebok','yellow','27-9-2021',800,2000,'SHOES','Winter',10),
(35,'male','Reebok','yellow','27-9-2021',800,2000,'SHOES','Winter',8),
(36,'male','Reebok','yellow','27-9-2021',800,2000,'SHOES','Winter',9),
(38,'male','Nike','black','26-9-2021',800,2500,'Sneakers','rainy',10),
(39,'male','Adidas','White','26-9-2021',800,2000,'Sneakers','summer',9);

/*Table structure for table `purchasereport` */

DROP TABLE IF EXISTS `purchasereport`;

CREATE TABLE `purchasereport` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `colour` varchar(255) DEFAULT NULL,
  `size` int(255) DEFAULT NULL,
  `mobile` int(255) DEFAULT NULL,
  `purchase_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `purchasereport` */

insert  into `purchasereport`(`id`,`username`,`product_name`,`brand`,`colour`,`size`,`mobile`,`purchase_date`) values 
(1,'vijaysai','shoes','adidas','yellow',10,1234567890,'26-9-2021'),
(3,'ankit','sneakers','white','puma',9,1245456152,'26-9-2021');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`emailid`,`mobile`,`password`,`username`) values 
(1,'kirti@kirti.com',1234565,'123456789','kirtichow'),
(2,'vijaysai@vijay.com',1234565,'123456789','vijaysaiy'),
(3,'viren@viren.com',123,'123456788','viren'),
(5,'suraj@suraj.com',123464253,'1237','surajjai'),
(6,'lalit@lalit.com',123464253,'1237','surajjai'),
(7,'ankit@ankit.com',123464253,'1237','ankitp');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
