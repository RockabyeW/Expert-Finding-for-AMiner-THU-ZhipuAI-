/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:15:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_xiaoji42
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_xiaoji42`;
CREATE TABLE `tuniu_fjzd_xiaoji42` (
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
-- Records of tuniu_fjzd_xiaoji42
-- ----------------------------
INSERT INTO `tuniu_fjzd_xiaoji42` VALUES ('47653', '8139172533', '', '-142', '预订优惠:满意;取票便捷:满意;景区服务:不满意;', '分界洲岛也就那样，沙子很粗，岛上唯一不错的就是吃饭不贵，估计因为人少的缘故', '2018/8/19 8:08', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji42` VALUES ('48074', '8050161561', '', '-142', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '海底观赏性不强，第一次体验还行！', '2017/2/9 9:05', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji42` VALUES ('48098', '8095393597', '', '-142', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '满心欢喜去了，景色太一般般了，比蜈支洲岛差太太多了。', '2016/12/13 14:33', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji42` VALUES ('48104', '8085302305', '', '-142', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '风景还行，可惜海滩泳场最深的地方只有1.2米左右，底下又很多石头，而且面积超小，又没有浪。太菜了，还不如博鳌免费的海滩。', '2016/9/2 11:18', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji42` VALUES ('48188', '6825261970', '', '-142', '预订优惠:满意;取票便捷:不满意;景区服务:不满意;', '景点太差，途牛还是很好的，景区各方面都不怎样', '2015/2/23 18:06', '2018/10/16 15:24', '4267');
