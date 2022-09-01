/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:14:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_xiaoji3
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_xiaoji3`;
CREATE TABLE `tuniu_fjzd_xiaoji3` (
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
-- Records of tuniu_fjzd_xiaoji3
-- ----------------------------
INSERT INTO `tuniu_fjzd_xiaoji3` VALUES ('48107', '8039681057', '', '-13', '预订优惠:一般;取票便捷:满意;景区服务:一般;', '景区也没有什么好看的，跟鹿回头景区差不多。', '2016/3/28 9:49', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji3` VALUES ('48341', '6813827193', '', '-13', '预订过程:不满意;景区:满意;', '分界洲岛岛屿很小，个人感觉比网上的评价差。我们由于主要是老人儿童为主，因此在岛上只参观了海豚湾，老人慢慢地爬了会儿山，孩子从海豚湾出来就一直在福龟滩玩沙。其他的游乐项目没玩。这里的沙滩沙子粗糙还有不少建筑杂物掺杂其中，没有我们住的香水湾的沙滩细软干净。不过爬到山顶看海景还是不错的。', '2014/1/19 14:10', '2018/10/16 15:24', '4267');
