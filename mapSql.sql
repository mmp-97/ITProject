-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 map 的数据库结构
DROP DATABASE IF EXISTS `map`;
CREATE DATABASE IF NOT EXISTS `map` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `map`;


-- 导出  表 map.clist 结构
DROP TABLE IF EXISTS `clist`;
CREATE TABLE IF NOT EXISTS `clist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User_name` varchar(50) NOT NULL DEFAULT '0',
  `tracks_name` varchar(50) NOT NULL DEFAULT '0',
  `walking_tracks` varchar(50) NOT NULL DEFAULT '0',
  `biking_tracks` varchar(50) NOT NULL DEFAULT '0',
  `tracks_album` varchar(50) NOT NULL DEFAULT '0',
  `tracks_length` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  map.clist 的数据：~0 rows (大约)
DELETE FROM `clist`;
/*!40000 ALTER TABLE `clist` DISABLE KEYS */;
INSERT INTO `clist` (`id`, `User_name`, `tracks_name`, `walking_tracks`, `biking_tracks`, `tracks_album`, `tracks_length`) VALUES
	(1, 'user1', 'test1', 'test1', 'test1', 'test1', '1'),
	(2, 'user2', 'test2', 'test2', 'test2', 'test2', '2');
/*!40000 ALTER TABLE `clist` ENABLE KEYS */;


-- 导出  表 map.slist 结构
DROP TABLE IF EXISTS `slist`;
CREATE TABLE IF NOT EXISTS `slist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `List_name` varchar(50) NOT NULL DEFAULT '0',
  `List_intro` varchar(50) NOT NULL DEFAULT '0',
  `Con_num` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  map.slist 的数据：~0 rows (大约)
DELETE FROM `slist`;
/*!40000 ALTER TABLE `slist` DISABLE KEYS */;
INSERT INTO `slist` (`id`, `List_name`, `List_intro`, `Con_num`) VALUES
	(1, 'list1', 'list1', '1'),
	(2, 'list2', 'list2', '2');
/*!40000 ALTER TABLE `slist` ENABLE KEYS */;


-- 导出  表 map.tracks_info 结构
DROP TABLE IF EXISTS `tracks_info`;
CREATE TABLE IF NOT EXISTS `tracks_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracks_pos` varchar(50) DEFAULT NULL,
  `tracks_name` varchar(50) DEFAULT NULL,
  `walking_tracks` varchar(50) DEFAULT NULL,
  `biking_tracks` varchar(50) DEFAULT NULL,
  `tracks_album` varchar(50) DEFAULT NULL,
  `tracks_length` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  map.tracks_info 的数据：~0 rows (大约)
DELETE FROM `tracks_info`;
/*!40000 ALTER TABLE `tracks_info` DISABLE KEYS */;
INSERT INTO `tracks_info` (`id`, `tracks_pos`, `tracks_name`, `walking_tracks`, `biking_tracks`, `tracks_album`, `tracks_length`) VALUES
	(1, '12,12', 'test1', 'test1', 'test1', 'test1', '1'),
	(2, '13,21', 'test2', 'test2', 'test2', 'test2', '2');
/*!40000 ALTER TABLE `tracks_info` ENABLE KEYS */;


-- 导出  表 map.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User_tel` varchar(50) NOT NULL DEFAULT '0',
  `User_password` varchar(50) NOT NULL DEFAULT '0',
  `User_cname` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  map.user 的数据：~0 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `User_tel`, `User_password`, `User_cname`) VALUES
	(1, '123456', '123456', 'user1'),
	(2, '123456', '123456', 'user2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
