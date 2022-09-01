/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:12:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_jiji12
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_jiji12`;
CREATE TABLE `tuniu_fjzd_jiji12` (
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
-- Records of tuniu_fjzd_jiji12
-- ----------------------------
INSERT INTO `tuniu_fjzd_jiji12` VALUES ('47653', '8139172533', '', '112', '预订优惠:满意;取票便捷:满意;景区服务:不满意;', '分界洲岛也就那样，沙子很粗，岛上唯一不错的就是吃饭不贵，估计因为人少的缘故', '2018/8/19 8:08', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji12` VALUES ('47694', '8055857812', '', '112', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '订船票和表演就可以了，不要订吃的套餐，不好吃，自己上岛点，价格不贵。', '2018/5/25 9:06', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji12` VALUES ('47653', '8139172533', '', '112', '预订优惠:满意;取票便捷:满意;景区服务:不满意;', '分界洲岛也就那样，沙子很粗，岛上唯一不错的就是吃饭不贵，估计因为人少的缘故', '2018/8/19 8:08', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji12` VALUES ('47694', '8055857812', '', '112', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '订船票和表演就可以了，不要订吃的套餐，不好吃，自己上岛点，价格不贵。', '2018/5/25 9:06', '2018/10/16 15:24', '4267');
