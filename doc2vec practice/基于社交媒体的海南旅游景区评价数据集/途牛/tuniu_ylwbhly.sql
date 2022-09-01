/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : newdata_hainan

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-09 20:06:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_ylwbhly
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_ylwbhly`;
CREATE TABLE `tuniu_ylwbhly` (
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
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuniu_ylwbhly
-- ----------------------------
INSERT INTO `tuniu_ylwbhly` VALUES ('444', '6813172858', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '性价比高适合带孩子体验', '2017-05-29 09:57:49', '2018-11-02 19:26:05', '1994761');
INSERT INTO `tuniu_ylwbhly` VALUES ('445', '8111053330', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '赠送的东西 蹦床和桃花朵朵开都没有 还有自行车 而且天气太热。海里游了后想洗澡都得要25左右。第一次来还是给个好评吧 谁叫我没看过大海这种东西', '2017-05-24 16:27:41', '2018-11-02 19:26:05', '1994761');
INSERT INTO `tuniu_ylwbhly` VALUES ('446', '8020629080', '', '预订优惠:一般;取票便捷:满意;景区服务:满意;', '饭一般，只是能吃饱。活动组织的不错，氛围很好。', '2017-05-23 17:15:42', '2018-11-02 19:26:05', '1994761');
INSERT INTO `tuniu_ylwbhly` VALUES ('447', '8105672056', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '出票很快，凭短信入场！', '2017-05-14 20:37:18', '2018-11-02 19:26:05', '1994761');
INSERT INTO `tuniu_ylwbhly` VALUES ('448', 'forubaby', 'http://m.tuniucdn.com/fb2/t1/G1/M00/2F/D9/Cii9EFdv3pmIOkyRAAC0EFqG2WgAAGwIQFP6v4AALQo160_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '感觉一般，没什么好玩的，天气太热', '2017-03-17 22:39:40', '2018-11-02 19:26:05', '1994761');
INSERT INTO `tuniu_ylwbhly` VALUES ('449', '8005730927', 'http://m.tuniucdn.com/fb2/t1/G2/M00/CF/A4/Cii-TFgQAkaIYo1AAAq1oefJ8OMAADvFwPfyTYACrW5006_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '这是一次愉快的体验，从没网上订票的我，在途牛尝试了一下，过程非常便捷，爱立方滨海乐园非常好玩。', '2017-02-28 09:55:25', '2018-11-02 19:26:05', '1994761');
INSERT INTO `tuniu_ylwbhly` VALUES ('450', '8101506365', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '还行吧，特别是在雨中走木栈道，特别有意境', '2017-02-20 09:15:45', '2018-11-02 19:26:05', '1994761');
INSERT INTO `tuniu_ylwbhly` VALUES ('451', '威尔逊伯爵', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '真的贵！就一个海滩还这么贵。。。三亚真坑', '2017-02-05 20:22:51', '2018-11-02 19:26:05', '1994761');
INSERT INTO `tuniu_ylwbhly` VALUES ('452', '烛台上的苹果派', 'http://m.tuniucdn.com/fb2/t1/G1/M00/64/6D/Cii9EFiPHyWISjyvAAalzC12-BgAAHNuQES7XgABqXk531_w90_h90_c1_t0.jpg', '预订优惠:不满意;取票便捷:不满意;景区服务:不满意;', '很难玩 太阳很大 里面的浴场是公共浴场 外面不花钱就可以进 钱花得很不值 感觉被骗了。里面的蝴蝶谷等等极其无聊 登山没有观光车 但下山居然有观光车？？有毒吗？？登山步行道没有什么遮蔽 太阳很大很晒 差点中暑。总之 极其难玩 且感觉整个景区就值10块门票 这个钱花得太不值得了 绝对不会推荐其他人来玩呵呵', '2017-01-29 19:20:17', '2018-11-02 19:26:05', '1994761');
