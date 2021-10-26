CREATE DATABASE  IF NOT EXISTS `videojuegos` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `videojuegos`;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activo` bit(1) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- Data for table `categorias`

INSERT INTO `categorias` VALUES (1,'','Sandbox'),(2,'','Aventura'),(3,'\0','Terror');

--
-- Table structure for table `estudios`
--

DROP TABLE IF EXISTS `estudios`;

CREATE TABLE `estudios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activo` bit(1) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- Data for table `estudios`

INSERT INTO `estudios` VALUES (1,'','Estudio 1'),(2,'','Estudio 2'),(3,'\0','Estudio Test');

--
-- Table structure for table `videojuegos`
--

DROP TABLE IF EXISTS `videojuegos`;

CREATE TABLE `videojuegos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activo` bit(1) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_lanzamiento` datetime DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_categoria` bigint(20) NOT NULL,
  `fk_estudio` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK54ev8cdsfhbdfxufd9wc8g23x` (`fk_categoria`),
  KEY `FKev9v8m1hnvqlpne73pgko027c` (`fk_estudio`),
  CONSTRAINT `FK54ev8cdsfhbdfxufd9wc8g23x` FOREIGN KEY (`fk_categoria`) REFERENCES `categorias` (`id`),
  CONSTRAINT `FKev9v8m1hnvqlpne73pgko027c` FOREIGN KEY (`fk_estudio`) REFERENCES `estudios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- Data for table `videojuegos`

INSERT INTO `videojuegos` VALUES (1,'\0','Descripcion 1a','2021-08-28 03:00:00','https://e.rpp-noticias.io/normal/2016/10/14/035103_266475.png',155,10,'Tetris ',1,1),(2,'','Bloques','2021-07-26 21:49:36','tetris.png',250,0,'Tetris II ',1,1),(3,'','Cuidado con los fantasmas!','2021-09-06 03:00:00','pacman.png',375,12,'PacMan',1,1),(13,'','A rescatar a la princesa!','2021-10-18 03:00:00','mario.png',450,5,'Super Mario',2,2),(14,'','Diversión!','2021-09-08 03:00:00','1635252446129.png',340,10,'Sonic',2,3),(15,'','Fight!','2021-07-14 03:00:00','1635252507831.png',500,3,'Mortal Kombat',1,1),(16,'','Atrapalos a todos!','2021-08-02 03:00:00','1635253676534.png',300,15,'Pokémon',2,3),(17,'','Terror','2021-10-02 03:00:00','1635254129740.png',400,6,'Silent Hill I',3,3),(18,'','Terror','2021-10-23 03:00:00','1635254203683.png',440,4,'Silent Hill II',3,1);

