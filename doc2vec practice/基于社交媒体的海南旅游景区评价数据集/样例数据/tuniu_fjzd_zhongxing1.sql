/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:16:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_zhongxing1
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_zhongxing1`;
CREATE TABLE `tuniu_fjzd_zhongxing1` (
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
-- Records of tuniu_fjzd_zhongxing1
-- ----------------------------
INSERT INTO `tuniu_fjzd_zhongxing1` VALUES ('47833', 'tjguoke', 'http://m.tuniucdn.com/fb2/t1/G1/M00/86/B6/Cii9EFirpayIO5xBAABm8dWqaB8AAHptQKpwvQAAGcJ676_w90_h90_c1_t0.jpg', '01', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '岛不大，散步走一圈两个小时，水上娱乐项目挺多，岛上餐饮不算太贵，三口人一百元能吃饱，椰子才15元', '2017/12/20 10:15', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_zhongxing1` VALUES ('48002', '6815712699', '', '01', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '表演很好。 饭很一般。明显看到套餐的和单点的量不一边多。商家想双向对待。岛上有很多吃饭的地方。价格也还可以。我感觉不这个便宜。以为不够所以要多点。所以还是多花钱了。土牛可以考虑更换合作伙伴了', '2017/5/11 22:59', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_zhongxing1` VALUES ('48091', 'AMUR', 'http://m.tuniucdn.com/fb2/t1/G2/M00/9B/FA/Cii-Tlfz27aIB9eMAAamKaaDY2YAADDbAMN34AABqZB192_w90_h90_c1_t0.jpg', '01', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '人不多，岛上各式餐厅小店都有，价格在正常接受范围', '2017/1/20 7:29', '2018/10/16 15:24', '4267');
