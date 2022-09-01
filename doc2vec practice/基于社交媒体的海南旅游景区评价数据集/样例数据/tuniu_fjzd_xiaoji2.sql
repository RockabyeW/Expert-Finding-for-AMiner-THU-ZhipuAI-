/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:14:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_xiaoji2
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_xiaoji2`;
CREATE TABLE `tuniu_fjzd_xiaoji2` (
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
-- Records of tuniu_fjzd_xiaoji2
-- ----------------------------
INSERT INTO `tuniu_fjzd_xiaoji2` VALUES ('47993', '8110525018', '', '-12', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '分界洲岛很美，水很清，适合派写真，婚纱照，不足之处就是交通不便，竟然没有公交来回陵水到分界洲', '2017/6/26 13:57', '2018/10/16 15:24', '4267');
