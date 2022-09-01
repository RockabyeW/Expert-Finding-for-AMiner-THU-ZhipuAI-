/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:16:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_xiaoji92
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_xiaoji92`;
CREATE TABLE `tuniu_fjzd_xiaoji92` (
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
-- Records of tuniu_fjzd_xiaoji92
-- ----------------------------
INSERT INTO `tuniu_fjzd_xiaoji92` VALUES ('48040', '8105639853', '', '-192', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '商业气息太浓，各类游玩项目多，价格和质量比不上东南亚游', '2017/2/18 8:29', '2018/10/16 15:24', '4267');
