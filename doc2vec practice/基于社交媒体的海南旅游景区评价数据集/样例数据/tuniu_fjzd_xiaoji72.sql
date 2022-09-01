/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:15:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_xiaoji72
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_xiaoji72`;
CREATE TABLE `tuniu_fjzd_xiaoji72` (
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
-- Records of tuniu_fjzd_xiaoji72
-- ----------------------------
INSERT INTO `tuniu_fjzd_xiaoji72` VALUES ('47654', '8139172533', '', '-172', '预订优惠:一般;取票便捷:一般;景区服务:一般;', '浮潜现场导游提供的现场呼吸用塑料咬嘴30元一个，太黑了，估计就两块钱的东西，小孩用的呼吸用具还要租，60元一次，浮潜票都买了为什么还要花钱买这些，太他妈黑了', '2018/8/19 8:07', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji72` VALUES ('47960', '8081183753', '', '-172', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不建议带老人来，没有适合老人的项目。上岛后各种项目就是花钱啊！潜水我和孩子一共就960元，而且排队到玩要3个多小时。', '2017/8/14 9:57', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji72` VALUES ('47961', '青蓝居', '', '-172', '预订优惠:不满意;取票便捷:不满意;景区服务:不满意;', '游乐设施少，收费价格虚高！', '2017/8/12 9:08', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji72` VALUES ('47974', 'NiallWONG', '', '-172', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '半潜有点坑爹，海洋剧场还凑合，比较适合小孩子，另外岛上物价不便宜。。。', '2017/7/16 9:38', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji72` VALUES ('47998', '6830906533', '', '-172', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '千万不要买岛上电瓶车，18元一位，只上个坡！！', '2017/6/15 20:13', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji72` VALUES ('48020', '6819712977', '', '-172', '预订优惠:满意;取票便捷:满意;景区服务:不满意;', '其实看海在酒店就够了，都差不多的。路远人又杂，什么都要收费，冲个淡水都收费，也就那样吧', '2017/4/4 14:56', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji72` VALUES ('48190', 'Showfire', 'http://m.tuniucdn.com/filebroker/cdn/prd/18/bf/18bfc8fa24a4dd88568c660e95e43eab_w90_h90_c1_t0.jpg', '-172', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '岛上确实不错，游乐项目很棒又不贵，潜水极力不推荐，460一个人，就是进去洗个脸。真正下水没几个能受得住。不太值得。教练聊天也算时间的。', '2015/2/13 12:15', '2018/10/16 15:24', '4267');
