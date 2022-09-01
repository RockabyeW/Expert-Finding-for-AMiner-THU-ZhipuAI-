/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:15:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_xiaoji5
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_xiaoji5`;
CREATE TABLE `tuniu_fjzd_xiaoji5` (
  `id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userimg` varchar(255) DEFAULT NULL,
  `fenlei` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `descrtion` varchar(255) DEFAULT NULL,
  `uptime` varchar(255) DEFAULT NULL,
  `tasktimes` varchar(255) DEFAULT NULL,
  `tuniuid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuniu_fjzd_xiaoji5
-- ----------------------------
INSERT INTO `tuniu_fjzd_xiaoji5` VALUES ('47696', '8025502699', '', '-15', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '一点也不好 之前去了蜈支洲岛和凤凰岛 都比这里好 我们住了别墅 很破很旧 年久失修的感觉', '2018/5/22 21:02', '2018/10/16 15:24', '4267');
