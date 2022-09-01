/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:17:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_zhongxing8
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_zhongxing8`;
CREATE TABLE `tuniu_fjzd_zhongxing8` (
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
-- Records of tuniu_fjzd_zhongxing8
-- ----------------------------
INSERT INTO `tuniu_fjzd_zhongxing8` VALUES ('47933', 'panzhihan', '', '08', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '挺不错的，上船后还打电话告知项目也可以找他们，会便宜，吃饭的老板服务态度一般，但是味道不错，玩的项目也很多，要额外支付哈，准备好票子嗨起来', '2017/10/9 10:38', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_zhongxing8` VALUES ('48150', '6826970971', '', '08', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '这个我要好好说说，这次订票遇到了问题，途牛上传我的电话号码时漏掉了两个数字，导致我没法取票，在三亚的烈日下等了近半个小时，打了好多电话才解决。虽然服务态度还可以，但是服务效率要提高！', '2015/6/18 18:30', '2018/10/16 15:24', '4267');
