/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:13:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_jiji5
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_jiji5`;
CREATE TABLE `tuniu_fjzd_jiji5` (
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
-- Records of tuniu_fjzd_jiji5
-- ----------------------------
INSERT INTO `tuniu_fjzd_jiji5` VALUES ('47996', '8010027256', '', '15', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '景区非常漂亮干净，海水超级清澈，最最重要的是海边椰子店的服务，冰沙便宜，还买一赠一，在里面喝喝饮品不仅可以休息，还能欣赏美女帅哥的现场演唱，太完美了，唯一有点缺憾的是景区关门太早，夏天七点半关门下岛就完美了', '2017/6/23 6:51', '2018/10/16 15:24', '4267');
