/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:17:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_zhongxing7
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_zhongxing7`;
CREATE TABLE `tuniu_fjzd_zhongxing7` (
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
-- Records of tuniu_fjzd_zhongxing7
-- ----------------------------
INSERT INTO `tuniu_fjzd_zhongxing7` VALUES ('47706', '8132961389', '', '071', '预订优惠:一般;取票便捷:一般;景区服务:一般;', '还可以，适合小朋友玩，带小孩去的。', '2018/5/1 17:33', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_zhongxing7` VALUES ('47757', '8081033108', '', '072', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '和西岛差不多，纯玩岛，岛上就是各个水上项目另付钱', '2018/3/31 19:27', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_zhongxing7` VALUES ('47822', 'mocllmo', '', '071', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '景色也没特别突出，如果不下水就没啥好玩的，海豚表演只有海豚和海狮，表演水平很一般', '2017/12/20 22:13', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_zhongxing7` VALUES ('47833', 'tjguoke', 'http://m.tuniucdn.com/fb2/t1/G1/M00/86/B6/Cii9EFirpayIO5xBAABm8dWqaB8AAHptQKpwvQAAGcJ676_w90_h90_c1_t0.jpg', '071', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '岛不大，散步走一圈两个小时，水上娱乐项目挺多，岛上餐饮不算太贵，三口人一百元能吃饱，椰子才15元', '2017/12/20 10:15', '2018/10/16 15:24', '4267');
