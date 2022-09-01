/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:16:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_zhongxing41
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_zhongxing41`;
CREATE TABLE `tuniu_fjzd_zhongxing41` (
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
-- Records of tuniu_fjzd_zhongxing41
-- ----------------------------
INSERT INTO `tuniu_fjzd_zhongxing41` VALUES ('47636', '6827768551', '', '041', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '分界潜水还不错。价格也还好', '2018/9/25 21:54', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_zhongxing41` VALUES ('47704', '8132961389', '', '041', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '还可以，带小孩去看的，这个项目小朋友也要收费，到景区才知道。不去买全潜票，小孩免票，看的都差不多。', '2018/5/1 17:36', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_zhongxing41` VALUES ('47775', '8089608275', '', '041', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '本来在行游天下订的票，结果没给订。在途牛订还可以', '2018/3/6 20:03', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_zhongxing41` VALUES ('47820', '8120560360', '', '041', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '还行，自己到自助机上打印门票即可。', '2017/12/31 15:17', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_zhongxing41` VALUES ('47838', '8003818169', '', '041', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '总体来说还可以，比现场买划算。', '2017/11/18 1:55', '2018/10/16 15:24', '4267');
