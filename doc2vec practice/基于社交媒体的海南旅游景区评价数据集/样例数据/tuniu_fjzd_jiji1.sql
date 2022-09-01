/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:12:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_jiji1
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_jiji1`;
CREATE TABLE `tuniu_fjzd_jiji1` (
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
-- Records of tuniu_fjzd_jiji1
-- ----------------------------
INSERT INTO `tuniu_fjzd_jiji1` VALUES ('47633', '8117586860', '', '11', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '很棒 岛上很漂亮 吃喝都有', '2018/10/9 16:18', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji1` VALUES ('47653', '8139172533', '', '112', '预订优惠:满意;取票便捷:满意;景区服务:不满意;', '分界洲岛也就那样，沙子很粗，岛上唯一不错的就是吃饭不贵，估计因为人少的缘故', '2018/8/19 8:08', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji1` VALUES ('47694', '8055857812', '', '112', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '订船票和表演就可以了，不要订吃的套餐，不好吃，自己上岛点，价格不贵。', '2018/5/25 9:06', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji1` VALUES ('47941', '8117758787', '', '111', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '包含的午餐味道真的好棒！原以为是应付了事，结果棒棒哒', '2017/8/25 9:07', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji1` VALUES ('47958', '8116599827', 'http://m.tuniucdn.com/fb2/t1/G4/M00/52/B8/Cii-VVm_iMWIR7T9AABVxw8TdCkAABWIALrLRUAAFXf237_w90_h90_c1_t0.jpg', '111', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '景色很美，海天一色。有家台湾小吃店味道不错，卤肉饭、陵水酸粉、菠萝饭都好吃。', '2017/8/16 22:56', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_jiji1` VALUES ('48078', '6811817538', '', '111', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '家庭自驾游，方便快捷，景区餐饮发达，水上游玩项目价格算贵的。', '2017/2/5 8:45', '2018/10/16 15:24', '4267');
