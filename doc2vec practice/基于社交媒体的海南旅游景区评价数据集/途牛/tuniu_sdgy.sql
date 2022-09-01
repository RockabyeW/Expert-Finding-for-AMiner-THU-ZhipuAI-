/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : newdata_hainan

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-09 20:03:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_sdgy
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_sdgy`;
CREATE TABLE `tuniu_sdgy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `userimg` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `descrtion` text,
  `uptime` varchar(100) DEFAULT NULL,
  `tasktimes` varchar(50) DEFAULT NULL,
  `tuniuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`),
  UNIQUE KEY `ss` (`username`,`uptime`)
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuniu_sdgy
-- ----------------------------
INSERT INTO `tuniu_sdgy` VALUES ('533', '娜娜猪', 'http://m.tuniucdn.com/fb2/t1/G3/M00/3C/43/Cii_JVlnd_OIfWh4AAwpVzvH0csAADi1ANs9pQADClv236_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不好玩，就是喂蚊子去的。而且票价根本不值这个价，就是农田装几个恐龙，让你去喂蚊子。', '2018-07-21 14:19:04', '2018-11-02 19:27:05', '1834099');
INSERT INTO `tuniu_sdgy` VALUES ('534', 'yangchaojie', 'http://m.tuniucdn.com/fb2/t1/G2/M00/87/CD/Cii-Tlhic0qIeUJLAAcwfGLtuAEAAGFEgPKxCsABzCU088_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '第一次来 虽然景点还不成熟 但恐龙还是不错的', '2018-03-25 10:24:53', '2018-11-02 19:27:05', '1834099');
INSERT INTO `tuniu_sdgy` VALUES ('535', 'K4_Kala', 'http://m.tuniucdn.com/fb2/t1/G1/M00/77/A7/Cii9EFZ5DkaIFvtRAAoGH7tVMyUAABHEgPQN8MACgY3297_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '很好 不用买带灯光秀的 步道就可以', '2018-02-23 09:12:10', '2018-11-02 19:27:05', '1834099');
INSERT INTO `tuniu_sdgy` VALUES ('536', '8126108070', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '景区服务一般，指示牌不完善，徒有概念的景区。', '2018-02-14 09:53:57', '2018-11-02 19:27:05', '1834099');
INSERT INTO `tuniu_sdgy` VALUES ('537', '8122865685', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '下点小雨，工作人员贴心的发了一次性雨衣，现场震撼，壮观，赞！', '2017-11-14 17:07:08', '2018-11-02 19:27:05', '1834099');
INSERT INTO `tuniu_sdgy` VALUES ('538', '6825065607', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '非常震撼！孩子们的演出非常棒', '2017-11-13 09:57:08', '2018-11-02 19:27:05', '1834099');
INSERT INTO `tuniu_sdgy` VALUES ('539', '8110665927', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '空气好，服务好，表演好，各种好！！！', '2017-05-22 09:09:52', '2018-11-02 19:27:05', '1834099');
INSERT INTO `tuniu_sdgy` VALUES ('540', '花石小易', '', '预订优惠:满意;取票便捷:一般;景区服务:一般;', '还不错，意想不到的惊喜', '2017-05-13 14:33:25', '2018-11-02 19:27:05', '1834099');
INSERT INTO `tuniu_sdgy` VALUES ('541', '8110361600', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '还不错，小孩子也 喜欢！', '2017-05-13 12:29:21', '2018-11-02 19:27:05', '1834099');
INSERT INTO `tuniu_sdgy` VALUES ('542', '6815087563', 'http://m.tuniucdn.com/filebroker/cdn/prd/9a/50/9a50df58af13402697e80ce057e62a0a_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '演出挺好看的，就是位置不太好找', '2017-05-03 08:08:04', '2018-11-02 19:27:05', '1834099');
