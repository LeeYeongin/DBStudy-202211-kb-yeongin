-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.31 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 db_study.order_dtl 구조 내보내기
DROP TABLE IF EXISTS `order_dtl`;
CREATE TABLE IF NOT EXISTS `order_dtl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `oder_stock` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.order_dtl:~0 rows (대략적) 내보내기
DELETE FROM `order_dtl`;
INSERT INTO `order_dtl` (`id`, `order_id`, `product_id`, `oder_stock`) VALUES
	(1, 1, 1, 3),
	(2, 1, 2, 10);

-- 테이블 db_study.order_mst 구조 내보내기
DROP TABLE IF EXISTS `order_mst`;
CREATE TABLE IF NOT EXISTS `order_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.order_mst:~1 rows (대략적) 내보내기
DELETE FROM `order_mst`;
INSERT INTO `order_mst` (`id`, `user_id`) VALUES
	(1, 1);

-- 테이블 db_study.product_mst 구조 내보내기
DROP TABLE IF EXISTS `product_mst`;
CREATE TABLE IF NOT EXISTS `product_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_price` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.product_mst:~9 rows (대략적) 내보내기
DELETE FROM `product_mst`;
INSERT INTO `product_mst` (`id`, `product_name`, `product_price`) VALUES
	(1, '스타벅스 블랙 텀블러', 25000),
	(2, '스타벅스 화이트 텀블러', 30000),
	(3, '스타벅스 블루 텀블러', 20000),
	(4, '스타벅스 블랙 머그컵', 15000),
	(5, '스타벅스 화이트 머그컵', 20000),
	(6, '스타벅스 블루 머그컵', 25000),
	(7, '스타벅스 블랙 머그컵2', 15000),
	(8, '스타벅스 화이트 머그컵2', 20000),
	(9, '스타벅스 블루 머그컵2', 25000);

-- 테이블 db_study.student_mst 구조 내보내기
DROP TABLE IF EXISTS `student_mst`;
CREATE TABLE IF NOT EXISTS `student_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `student_year` int NOT NULL DEFAULT '0',
  `score` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.student_mst:~9 rows (대략적) 내보내기
DELETE FROM `student_mst`;
INSERT INTO `student_mst` (`id`, `name`, `student_year`, `score`) VALUES
	(1, '임지현', 1, 80),
	(2, '신경수', 2, 100),
	(4, '문승주', 1, 85),
	(5, '장건녕', 2, 95),
	(6, '박수현', 3, 90),
	(7, '황석민', 1, 80),
	(8, '박준현', 2, 100),
	(9, '이승아', 3, 90),
	(12, NULL, 1, 100);

-- 테이블 db_study.study_notice_img 구조 내보내기
DROP TABLE IF EXISTS `study_notice_img`;
CREATE TABLE IF NOT EXISTS `study_notice_img` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notice_id` int NOT NULL DEFAULT '0',
  `img_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `img_name` (`img_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.study_notice_img:~0 rows (대략적) 내보내기
DELETE FROM `study_notice_img`;
INSERT INTO `study_notice_img` (`id`, `notice_id`, `img_name`) VALUES
	(1, 1, 'a.png'),
	(2, 1, 'b.png'),
	(3, 2, 'c.png'),
	(4, 2, 'd.png'),
	(5, 2, 'e.png'),
	(6, 3, 'f.png'),
	(7, 3, 'g.png');

-- 테이블 db_study.study_notice_mst 구조 내보내기
DROP TABLE IF EXISTS `study_notice_mst`;
CREATE TABLE IF NOT EXISTS `study_notice_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `writer_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.study_notice_mst:~0 rows (대략적) 내보내기
DELETE FROM `study_notice_mst`;
INSERT INTO `study_notice_mst` (`id`, `title`, `content`, `writer_id`) VALUES
	(1, '첫번째 공지사항', 'aaa', 1),
	(2, '두번째 공지사항', 'bbb', 1),
	(3, '세번째 공지사항', 'ccc', 2);

-- 테이블 db_study.study_writer_mst 구조 내보내기
DROP TABLE IF EXISTS `study_writer_mst`;
CREATE TABLE IF NOT EXISTS `study_writer_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.study_writer_mst:~0 rows (대략적) 내보내기
DELETE FROM `study_writer_mst`;
INSERT INTO `study_writer_mst` (`id`, `name`) VALUES
	(1, '김준일'),
	(2, '김준이');

-- 테이블 db_study.user_dtl 구조 내보내기
DROP TABLE IF EXISTS `user_dtl`;
CREATE TABLE IF NOT EXISTS `user_dtl` (
  `id` int NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.user_dtl:~0 rows (대략적) 내보내기
DELETE FROM `user_dtl`;
INSERT INTO `user_dtl` (`id`, `phone`, `address`, `create_date`, `update_date`) VALUES
	(1, NULL, NULL, '2022-12-09 10:46:04', '2022-12-09 10:46:04'),
	(2, NULL, NULL, '2022-12-09 10:46:04', '2022-12-09 10:46:04'),
	(3, NULL, NULL, '2022-12-09 10:46:04', '2022-12-09 10:46:04'),
	(4, NULL, NULL, '2022-12-09 10:46:04', '2022-12-09 10:46:04');

-- 테이블 db_study.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.user_mst:~4 rows (대략적) 내보내기
DELETE FROM `user_mst`;
INSERT INTO `user_mst` (`id`, `username`, `password`, `name`, `email`, `create_date`, `update_date`) VALUES
	(1, 'aaa', '1234', '김준일', 'aaa@gmail.com', '2022-12-09 10:46:04', '2022-12-09 10:46:04'),
	(2, 'bbb', '1234', '김준일', 'aaa@gmail.com', '2022-12-09 10:46:04', '2022-12-09 10:46:04'),
	(3, 'ccc', '1234', '김준일', 'aaa@gmail.com', '2022-12-09 10:46:04', '2022-12-09 10:46:04'),
	(4, 'ddd', '1234', '김준일', 'aaa@gmail.com', '2022-12-09 10:46:04', '2022-12-09 10:46:04');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
