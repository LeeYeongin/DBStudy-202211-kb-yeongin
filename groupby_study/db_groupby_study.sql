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


-- groupby_study 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `groupby_study`;
CREATE DATABASE IF NOT EXISTS `groupby_study` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `groupby_study`;

-- 테이블 groupby_study.order_mst 구조 내보내기
DROP TABLE IF EXISTS `order_mst`;
CREATE TABLE IF NOT EXISTS `order_mst` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 groupby_study.order_mst:~0 rows (대략적) 내보내기
DELETE FROM `order_mst`;
INSERT INTO `order_mst` (`order_id`, `product_name`, `price`, `stock`) VALUES
	(1, '앗 뜨거워! 핫해! 겨울 신발 특가 LIVE', 39000, 99),
	(2, '네퓨어 마스크의 특집 앵콜 라이브', 41900, 500),
	(3, '겨울엔 기린호빵', 9900, 100),
	(4, '셀렉스 하반기 결산 어워즈 셀렉스 코어프로틴 프로 스틱', 11650, 50),
	(5, '앗 뜨거워! 핫해! 겨울 신발 특가 LIVE', 39000, 10),
	(6, '앗 뜨거워! 핫해! 겨울 신발 특가 LIVE', 39000, 5),
	(7, '앗 뜨거워! 핫해! 겨울 신발 특가 LIVE', 39000, 50),
	(8, '네퓨어 마스크의 특집 앵콜 라이브', 41900, 100),
	(9, '네퓨어 마스크의 특집 앵콜 라이브', 41900, 50),
	(10, '겨울엔 기린호빵', 9900, 50),
	(11, '셀렉스 하반기 결산 어워즈 셀렉스 코어프로틴 프로 스틱', 11650, 30),
	(12, '셀렉스 하반기 결산 어워즈 셀렉스 코어프로틴 프로 스틱', 11650, 10);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
