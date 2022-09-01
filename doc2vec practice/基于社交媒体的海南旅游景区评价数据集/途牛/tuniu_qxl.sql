/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : newdata_hainan

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-09 20:03:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_qxl
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_qxl`;
CREATE TABLE `tuniu_qxl` (
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuniu_qxl
-- ----------------------------
INSERT INTO `tuniu_qxl` VALUES ('1', '懒鱼叨叨', 'http://m.tuniucdn.com/fb2/t1/G1/M00/0C/93/Cii9EFddioeICci8AADzCkpLnhUAAGgPwPbkFYAAPMi555_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '环境不错，蚊虫略多，太阳不晒，阶梯略高', '2018-10-18 18:05:36', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('2', '8082289980', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '环境优美，空气好，是个修养度假的好地方', '2018-07-24 11:02:31', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('3', '6811110627', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '公园属于原始森林，树木多，空气好', '2018-04-18 22:49:02', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('4', '8027631853', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '很方便，比景区窗口便宜8元。', '2018-02-05 15:05:36', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('5', '海南张胖子', 'http://m.tuniucdn.com/fb2/t1/G1/M00/E0/22/Cii9EVdGYFGIJqo_AAYHWWpUDY8AAGLHQKNIHQABgdx223_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不管怎样又征服了一座山', '2017-09-19 11:20:41', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('6', '8113788536', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '还可以。山有点高风景很秀美。', '2017-07-08 13:05:32', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('7', '6810699818', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '比起呀诺达七仙岭更值得一玩，主要人少啊', '2017-05-01 19:05:02', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('8', '8106708978', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '主要是登山，上面的瀑布也很小，最后的爬坡路比较陡', '2017-04-16 20:50:35', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('9', '8099203597', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '景点一般般，顶峰没有安全保护', '2017-02-18 09:09:48', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('10', '6830073091', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '方便，快捷，实惠。七仙岭真心不错，最后的攀岩惊心功魄。', '2017-02-12 15:34:01', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('11', '半柠檬', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '七仙岭-风景旖丽-景色秀丽。\n登仙人台-瞩目眺望-yi lan zhong shan xisi', '2017-02-12 09:14:46', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('12', '8100527108', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '七仙岭非常漂亮。景区服务设施好，游玩线路标识清晰。上下需要四、五个小时，登顶强度稍大。但无限风光在险峰。值得一去！', '2017-02-05 22:30:22', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('13', '他它山之石', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '还是网上预订便宜，景点主要是爬山，热带雨林空气好', '2016-02-16 16:56:42', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('14', '6825629671', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '放松，运动，贴进自然，净化心灵的好地方！', '2015-03-09 09:20:13', '2018-11-02 19:21:43', '37990');
INSERT INTO `tuniu_qxl` VALUES ('15', '6823596930', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '七仙岭爬山很不错，景区山清水秀，登顶靠铁链攀登很刺激。', '2015-01-18 10:43:17', '2018-11-02 19:21:43', '37990');
