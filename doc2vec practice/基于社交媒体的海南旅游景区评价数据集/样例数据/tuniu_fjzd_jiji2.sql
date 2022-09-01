/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:12:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_jiji2
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_jiji2`;
CREATE TABLE `tuniu_fjzd_jiji2` (
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
-- Records of tuniu_fjzd_jiji2
-- ----------------------------
INSERT INTO `tuniu_fjzd_jiji2` VALUES ('48073', '8101785507', '', '12', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '这是自驾游中，感觉真的很不错的哈', '2017/2/9 17:05', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji2` VALUES ('48077', 'wsf523', '', '12', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '景区风景不错，停车方便，停车收费按次5元。', '2017/2/5 16:04', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji2` VALUES ('48185', 'WJS1234', '', '12', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '自驾车去的码头，岛上景区风景非常好，取票方便快捷。会推荐朋友们去玩，非常满意。', '2015/3/1 7:17', '2018/10/16 15:24', '4267');
