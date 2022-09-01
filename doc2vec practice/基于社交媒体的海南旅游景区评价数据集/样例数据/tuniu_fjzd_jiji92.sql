/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:14:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_jiji92
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_jiji92`;
CREATE TABLE `tuniu_fjzd_jiji92` (
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
-- Records of tuniu_fjzd_jiji92
-- ----------------------------
INSERT INTO `tuniu_fjzd_jiji92` VALUES ('48361', '6811830972', '', '192', '预订过程:满意;景区:满意;', '风景真美，海水很纯净，还算新开发的景点，商业化气息不是很重。', '2013/12/17 16:10', '2018/10/16 15:24', '4267');
