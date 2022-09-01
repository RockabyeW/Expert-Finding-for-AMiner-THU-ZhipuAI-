/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:13:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_jiji6
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_jiji6`;
CREATE TABLE `tuniu_fjzd_jiji6` (
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
-- Records of tuniu_fjzd_jiji6
-- ----------------------------
INSERT INTO `tuniu_fjzd_jiji6` VALUES ('48000', '8110710918', '', '16', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不错哦，景色比蜈支洲好多了，水质也非常棒，推荐游玩', '2017/5/25 18:16', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji6` VALUES ('48033', '小雨果1206', 'http://m.tuniucdn.com/fb2/t1/G1/M00/4F/EC/Cii9EFZng2mICJyUABDpURQsHzYAAA6DwBDa_0AEOlp197_w90_h90_c1_t0.jpg', '16', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '分界洲岛很小，可能是只开发了三分之一。不过海水比蜈支洲还要清澈。岛上吃的东西挺多，比蜈支洲略便宜', '2017/3/23 8:01', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji6` VALUES ('48093', '8031678889', '', '16', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '风景挺好的，水干净，拖伞不好玩，香蕉船还可以', '2017/1/12 9:21', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji6` VALUES ('48094', '8031678889', '', '16', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '风景不错，水比较干净，水上项目比较多', '2017/1/12 9:20', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji6` VALUES ('48211', '吴娜丽', '', '16', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '水浴场清澈透明环境优美舒适海水浴场清澈透明就是海豚表演时间短', '2014/11/14 12:34', '2018/10/16 15:24', '4267');
