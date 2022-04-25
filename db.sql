-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.5-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- lottecinema 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `lottecinema` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `lottecinema`;

-- 테이블 lottecinema.card_terms_mst 구조 내보내기
DROP TABLE IF EXISTS `card_terms_mst`;
CREATE TABLE IF NOT EXISTS `card_terms_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `terms_id` int(11) NOT NULL,
  `card_number` varchar(19) NOT NULL,
  `card_company` varchar(10) NOT NULL,
  `certificate_flag` tinyint(1) unsigned NOT NULL COMMENT '0: "간편인증" / 1: "일반인증" / 2: "홈페이지인증"',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_number` (`card_number`),
  KEY `user_id_for_card_terms` (`user_id`),
  KEY `terms_id_for_card_terms` (`terms_id`),
  CONSTRAINT `card_number_for_card_terms` FOREIGN KEY (`card_number`) REFERENCES `user_detail` (`card_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `terms_id_for_card_terms` FOREIGN KEY (`terms_id`) REFERENCES `terms` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_id_for_card_terms` FOREIGN KEY (`user_id`) REFERENCES `user_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- 테이블 lottecinema.email_terms_mst 구조 내보내기
DROP TABLE IF EXISTS `email_terms_mst`;
CREATE TABLE IF NOT EXISTS `email_terms_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `terms_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `l_point_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0 COMMENT '0: false / 1: true',
  `privacy_necessary_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0,
  `privacy_optional_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0,
  `third_party_necessary_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0,
  `third_party_optional_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0,
  `subsidiary_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0,
  `culture_necessary_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0,
  `culture_optional_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `user_id_for_email_terms` (`user_id`),
  KEY `terms_id_for_email_terms` (`terms_id`),
  CONSTRAINT `email_for_email_terms` FOREIGN KEY (`email`) REFERENCES `user_detail` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `terms_id_for_email_terms` FOREIGN KEY (`terms_id`) REFERENCES `terms` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_id_for_email_terms` FOREIGN KEY (`user_id`) REFERENCES `user_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- 테이블 lottecinema.marketing_receive_flags_mst 구조 내보내기
DROP TABLE IF EXISTS `marketing_receive_flags_mst`;
CREATE TABLE IF NOT EXISTS `marketing_receive_flags_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0 COMMENT '0: false / 1: true',
  `sms_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0 COMMENT '0: false / 1: true',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_for_marketing_flags` FOREIGN KEY (`user_id`) REFERENCES `user_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- 테이블 lottecinema.phone_terms_mst 구조 내보내기
DROP TABLE IF EXISTS `phone_terms_mst`;
CREATE TABLE IF NOT EXISTS `phone_terms_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `terms_id` int(11) NOT NULL,
  `telecom` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `privacy_flag` tinyint(1) NOT NULL COMMENT '0: false / 1: true',
  `unique_flag` tinyint(1) NOT NULL,
  `service_flag` tinyint(1) NOT NULL,
  `agency_flag` tinyint(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `user_id_for_phone_terms` (`user_id`),
  KEY `terms_id_for_phone_terms` (`terms_id`),
  CONSTRAINT `phone_number_for_phone_terms` FOREIGN KEY (`phone`) REFERENCES `user_detail` (`phone`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `terms_id_for_phone_terms` FOREIGN KEY (`terms_id`) REFERENCES `terms` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_id_for_phone_terms` FOREIGN KEY (`user_id`) REFERENCES `user_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- 테이블 lottecinema.terms 구조 내보내기
DROP TABLE IF EXISTS `terms`;
CREATE TABLE IF NOT EXISTS `terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terms_category` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `열 2` (`terms_category`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- 테이블 lottecinema.user_detail 구조 내보내기
DROP TABLE IF EXISTS `user_detail`;
CREATE TABLE IF NOT EXISTS `user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL COMMENT 'length >= 6 && length <= 15',
  `password` varchar(100) NOT NULL COMMENT 'length >= 8 && length <= 16',
  `name` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `card_number` varchar(19) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT 5 COMMENT '1,3: male / 2,4: female / 5: unknown',
  `birthday` varchar(6) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `delete_flag` tinyint(1) unsigned zerofill NOT NULL DEFAULT 0 COMMENT '0: enable / 1: disable',
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `card_number` (`card_number`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- 테이블 lottecinema.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `user_id_for_select` (`user_id`),
  CONSTRAINT `user_id_for_select` FOREIGN KEY (`user_id`) REFERENCES `user_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
