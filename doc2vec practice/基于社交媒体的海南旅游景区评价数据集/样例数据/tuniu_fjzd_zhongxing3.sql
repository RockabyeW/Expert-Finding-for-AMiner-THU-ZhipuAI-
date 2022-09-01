/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:16:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_zhongxing3
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_zhongxing3`;
CREATE TABLE `tuniu_fjzd_zhongxing3` (
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
-- Records of tuniu_fjzd_zhongxing3
-- ----------------------------
INSERT INTO `tuniu_fjzd_zhongxing3` VALUES ('48035', '8081271328', '', '03', '预订优惠:一般;取票便捷:满意;景区服务:满意;', '景点一般吧，过年价格就是贵啊！！', '2017/3/18 22:34', '2018/10/16 15:24', '4267');
