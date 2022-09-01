/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:14:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_xiaoji12
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_xiaoji12`;
CREATE TABLE `tuniu_fjzd_xiaoji12` (
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
-- Records of tuniu_fjzd_xiaoji12
-- ----------------------------
INSERT INTO `tuniu_fjzd_xiaoji12` VALUES ('47758', '8126793372', '', '-112', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '地方不错就是吃的贵这个在意料中。山上风景很美。', '2018/3/25 10:55', '2018/10/16 15:24', '4267');
