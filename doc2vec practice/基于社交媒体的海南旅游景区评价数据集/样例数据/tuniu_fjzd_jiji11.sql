/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:12:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_jiji11
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_jiji11`;
CREATE TABLE `tuniu_fjzd_jiji11` (
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
-- Records of tuniu_fjzd_jiji11
-- ----------------------------
INSERT INTO `tuniu_fjzd_jiji11` VALUES ('47941', '8117758787', '', '111', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '包含的午餐味道真的好棒！原以为是应付了事，结果棒棒哒', '2017/8/25 9:07', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji11` VALUES ('47958', '8116599827', 'http://m.tuniucdn.com/fb2/t1/G4/M00/52/B8/Cii-VVm_iMWIR7T9AABVxw8TdCkAABWIALrLRUAAFXf237_w90_h90_c1_t0.jpg', '111', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '景色很美，海天一色。有家台湾小吃店味道不错，卤肉饭、陵水酸粉、菠萝饭都好吃。', '2017/8/16 22:56', '2018/10/16 15:24', '4267');
