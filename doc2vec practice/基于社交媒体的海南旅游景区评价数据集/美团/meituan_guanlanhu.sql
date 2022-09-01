/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : newdata_hainan

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-09 20:12:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meituan_guanlanhu
-- ----------------------------
DROP TABLE IF EXISTS `meituan_guanlanhu`;
CREATE TABLE `meituan_guanlanhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `userurl` varchar(255) DEFAULT NULL,
  `comment` longtext,
  `commenttime` datetime DEFAULT NULL,
  `picurls` longtext,
  `poiid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of meituan_guanlanhu
-- ----------------------------
INSERT INTO `meituan_guanlanhu` VALUES ('1', 'xhddddd', '211888884', 'https://img.meituan.net/avatar/01b0e9aa0439f1c7dcfb05eb8c07a5e4129413.jpg', '', '2017-09-07 00:55:07', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('2', 'nUG18608923955', '44804715', 'https://img.meituan.net/avatar/4ddd7324c68c41e73f4f1d7daf35f379139212.jpg', '环境优美，已经记不得来了多少次，这里每天都在11点就换水，很干净', '2017-07-27 21:08:05', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('3', '匿名用户', '0', 'https://www.dpfile.com/ugc/user/anonymous.png', '人多服务跟不上，票价太高了。普通游客买票是旅行团的两倍多', '2017-07-14 10:28:10', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('4', 'CON419267202', '376654265', 'https://img.meituan.net/avatar/4d88e3792a1836f3f3ad3b5335acb76c106206.jpg', '水池有些脏，漂白水味道太弄，不知道吃了好吗，水里也有，服务态度不好', '2017-07-13 11:11:29', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('5', 'CON419267202', '376654265', 'https://img.meituan.net/avatar/4d88e3792a1836f3f3ad3b5335acb76c106206.jpg', '水有点脏，服务员态度差', '2017-07-13 11:10:32', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('6', 'IDJ220335363', '266094364', '', '', '2017-07-11 20:27:32', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('7', 'welcme_123456', '60315322', '', '', '2017-07-09 23:18:40', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('8', 'ylsqxy', '658972168', 'https://img.meituan.net/avatar/c7fdb36029b94850a85e6134cb1f801a15024.jpg', '', '2017-07-09 15:09:22', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('9', 'wz397796784', '74399405', '', '还行，就是水有点脏', '2017-07-04 18:42:40', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('10', 'sWt301921941', '828666274', '', '', '2017-07-04 03:34:24', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('11', '匿名用户', '0', 'https://www.dpfile.com/ugc/user/anonymous.png', '环境好，但人太多了，没有清闲度假的感觉', '2017-07-01 01:40:41', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('12', '叮叮哐哐啦啦啦', '29494615', 'https://img.meituan.net/avatar/b05d67e6dfb98681c26185d74a79436311465.jpg', '', '2017-06-30 00:04:19', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('13', '陌小致', '54842315', 'https://img.meituan.net/avatar/1d3f7d682abc10e0a88bf5470d32bb16118751.jpg', '2个字 不值 如果真要三个字的话 真不值', '2017-06-28 15:09:39', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('14', '匿名用户', '0', 'https://www.dpfile.com/ugc/user/anonymous.png', '买了年卡，不过有朋友一起来团了一张，周末人比较多，买的很方便用的也很方便，就是排队人多', '2017-06-26 12:11:41', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('15', '陌小致', '54842315', 'https://img.meituan.net/avatar/1d3f7d682abc10e0a88bf5470d32bb16118751.jpg', '和票价一样“值” 自己体会', '2017-06-23 17:16:54', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('16', '景然有序3', '14559822', '', '', '2017-06-20 14:52:43', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('17', 'xOK19821132', '315106998', '', '', '2017-06-19 09:25:11', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('18', 'hRu827870707', '221751656', '', '环境挺好，是一个高大上的好地方。', '2017-06-14 11:32:14', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('19', 'zJr13911522339', '36755182', '', '还可以吧，不是很累。带孩子老人一天都可以的。', '2017-06-13 21:37:32', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('20', '店长、', '263898016', 'https://img.meituan.net/avatar/9a4454684043e7e39e2a9cc6045edb12220242.jpg', '', '2017-06-13 15:31:00', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('21', 'Aht741293022', '154484440', 'https://img.meituan.net/avatar/8d1446e84c47806346f819cf364058c493989.jpg', '', '2017-05-19 10:14:44', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('22', 'VQO774254777', '289152007', '', '', '2017-05-14 09:40:01', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('23', 'Tm小敏子', '90880233', 'https://img.meituan.net/avatar/30dc7d4e539f9f08b51a0796ef7e532b287542.jpg', '', '2017-04-18 20:39:47', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('24', 'dEY933111277', '316594714', 'https://img.meituan.net/avatar/12fdb5d14cd36ae3502dd0032fdf48f445597.jpg', '', '2017-04-11 15:05:46', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('25', 'KEb45988928', '101295616', 'https://img.meituan.net/avatar/fdfa11c5ff9132a53510c02d0f1566cd32448.jpg', '环境还不错，很有感觉，值得推荐', '2017-04-05 23:21:56', '-1889127105:http://p1.meituan.net/shaitu/2dd9f5672bed92767adaccad68ed0617731084.jpg;\n-1889058379:http://p1.meituan.net/shaitu/b3ce3e2a1e2ddc5ee764aa65983aee7c698806.jpg;\n-1888688636:http://p0.meituan.net/shaitu/fd1211031705a2ea7084f97ed7d6b4c2879401.jpg;\n-1889219245:http://p1.meituan.net/shaitu/1b989c29284a0cce9db3d49da63364a0769444.jpg;\n-1889732414:http://p1.meituan.net/shaitu/c3e49d78d62c89d10d480916cff7c255796962.jpg;\n-1889509346:http://p1.meituan.net/shaitu/d1f3f8ffecc5506a2d36bc020a78d8e4725096.jpg;\n-1889164739:http://p1.meituan.net/shaitu/6931c06a34c70ee294c890770b6323f7769574.jpg;\n-1888816336:http://p1.meituan.net/shaitu/f19e72a0ef26ff38556e03406b404266852167.jpg;\n', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('26', '鲁国莲', '364895045', 'https://img.meituan.net/avatar/8702d79373b5c37f97f40794bbc21b04165734.jpg', '', '2017-04-05 05:48:06', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('27', 'ERY439878454', '275411628', 'https://img.meituan.net/avatar/8487f72e998146fcf76726a6ffca555719928.jpg', '同学大一来过才48跑男一录就变成了118,价格变贵了很多，东西也一般般，如果真想去，买1942这一个区吧，南洋十分钟逛完，1942还好一点拍照还可以。这个景点去了就知道特坑。', '2017-03-18 23:43:51', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('28', '经典VIP', '40081622', '', '出乎意料之外，本以为一个钟头可以游览完毕，没想到逛了两个钟头', '2017-03-08 13:06:54', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('29', '豆粒9', '61537856', '', '一般', '2017-02-20 13:12:55', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('30', '小嘟嘟多多', '63836862', '', '两条街，南洋街和民国时期1942的街，建筑真是不错，个人觉得门票小归', '2017-02-11 08:48:55', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('31', '米修716', '603528400', '', '总的来说还是不错的，又吃有喝的有很多新奇的东西！', '2017-02-07 23:13:46', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('32', '成小特儿', '188131966', 'https://img.meituan.net/avatar/ccbe5c44867a2954fcd5f41ada469af5159393.jpg', '', '2017-02-03 22:25:49', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('33', 'bBQ15109805260', '40594394', '', '', '2017-02-02 15:07:50', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('34', 'jiangyueyaoqing', '3081471', '', '占地面积不大，但是建筑非常细致，符合民国时期的风格，门口排队的人很多，排了四五分钟。', '2017-02-02 14:19:48', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('35', 'Cnt348380547', '216263189', '', '挺好，人气挺旺呢', '2017-02-01 16:51:25', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('36', 'dwy309630036', '563830740', '', '', '2017-01-23 18:06:11', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('37', 'dwy309630036', '563830740', '', '', '2017-01-23 18:06:02', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('38', '云哥游天下', '63387797', '', '有种穿越的感觉，环境不错，挺好，下次还来。', '2017-01-05 14:54:49', '-1900173343:http://p0.meituan.net/shaitu/17d20ea9c989e3ee2a29e74901aebd5284754.jpg;\n', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('39', 'xVT558033363', '739863863', '', '太壮观了，道路交通很方便，很适合休闲散步', '2017-01-01 16:03:46', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('40', '牛亲鱼', '55701814', '', '脏乱差 不建议来！温泉眼少的可怜 竟然还有几个是冷的 最高才42  换完泳衣之后要走400米 冻都冻死 而且最关键浴巾烂就算了  还不是循环供应 茶水也是！！浴巾每人一条 冻死人啊！！妈哒！！！我去过的最差的一个温泉酒店！！', '2016-12-30 18:23:25', '-1900997451:http://p0.meituan.net/shaitu/0c82a219d034ba5603b3ad3521e9a02d146716.jpg;\n-1901057245:http://p0.meituan.net/shaitu/1f108ef183119ab4095b31c3b1c1b96e180714.jpg;\n', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('41', 'Xiao威尴尬', '50155984', 'https://img.meituan.net/avatar/cd688f77c8140c669d821caad6fd86ba67765.jpg', '差，尤其是前台服务，可以全部清理掉了', '2016-12-26 21:19:20', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('42', 'strongerjiang', '506246167', '', '', '2016-12-24 13:55:03', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('43', '匿名用户', '0', 'https://www.dpfile.com/ugc/user/anonymous.png', '美团很实惠，方便快捷。只是景点太少，两条街。', '2016-12-08 02:32:40', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('44', '匿名用户', '0', 'https://www.dpfile.com/ugc/user/anonymous.png', '美团很实惠，方便快捷。只是景点太少，两条街。', '2016-12-08 02:32:20', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('45', '匿名用户', '0', 'https://www.dpfile.com/ugc/user/anonymous.png', '出票挺快，客服态度好，赞一个。', '2016-12-07 11:55:04', '', 'None');
INSERT INTO `meituan_guanlanhu` VALUES ('46', 'Wwwwwwwwwly', '704685374', 'https://img.meituan.net/avatar/ac87cdb36e4bb7c912a54a26813d471c152701.jpg', '就是远 还不错 ！以前一个区只要七八十。现在几个区了', '2016-11-29 23:24:25', '', 'None');
