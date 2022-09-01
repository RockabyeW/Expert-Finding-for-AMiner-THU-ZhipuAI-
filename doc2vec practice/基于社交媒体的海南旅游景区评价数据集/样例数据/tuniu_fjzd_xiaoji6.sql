/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:15:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_xiaoji6
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_xiaoji6`;
CREATE TABLE `tuniu_fjzd_xiaoji6` (
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
-- Records of tuniu_fjzd_xiaoji6
-- ----------------------------
INSERT INTO `tuniu_fjzd_xiaoji6` VALUES ('47818', '6836593830', '', '-16', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '亲子游还可以，就是海底太脏了，不知该说什么', '2018/1/16 14:12', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji6` VALUES ('48183', '6812782952', 'http://m.tuniucdn.com/filebroker/cdn/prd/11/9e/119eb1964b7110e2e88cce2f31afc084_w90_h90_c1_t0.jpg', '-16', '预订优惠:一般;取票便捷:满意;景区服务:不满意;', '景点没想到这么差，脏 乱 差 海水不够蓝 不够绿', '2015/3/7 10:08', '2018/10/16 15:24', '4267');
