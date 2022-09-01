/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:14:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_jiji72
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_jiji72`;
CREATE TABLE `tuniu_fjzd_jiji72` (
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
-- Records of tuniu_fjzd_jiji72
-- ----------------------------
INSERT INTO `tuniu_fjzd_jiji72` VALUES ('47656', '6817126350', 'http://m.tuniucdn.com/fb2/t1/G5/M00/9F/E8/Cii-s1tafaqIJvnQABODnX0ju7wAAK6QQPcEusAE4O1645_w90_h90_c1_t0.jpg', '172', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '买套票很划算，潜水有意思，缺点是当天人太多，体验差了点', '2018/7/27 14:01', '2018/10/16 15:24', '4267');
