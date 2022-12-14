/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : newdata_hainan

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-09 20:06:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_ysdwy
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_ysdwy`;
CREATE TABLE `tuniu_ysdwy` (
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuniu_ysdwy
-- ----------------------------
INSERT INTO `tuniu_ysdwy` VALUES ('63', '8126539769', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '取票很方便，还挺好的，下次还要订', '2018-10-30 21:55:53', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('64', '8126550051', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '恐龙吓到孩子…但还是很好玩！不错！！！', '2018-07-13 20:26:29', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('65', '6826181871', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '非常好，取票很顺利，工作人员很及时与客人沟通。', '2018-06-04 17:38:56', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('66', '8055857812', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '适合自驾游，带孩子去很好玩。', '2018-05-25 09:07:56', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('67', 'wanglei_000711', 'http://m.tuniucdn.com/filebroker/cdn/prd/74/4c/744c4e513f2d0c1a46d29cd5bc2fe738_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '价格实惠，换票方便，动植物园值得一游，免费提供讲解器，自驾区感觉很棒', '2018-04-11 17:28:45', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('68', '8126539589', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '还不错！值得去看看！', '2018-04-01 10:56:00', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('69', 'tuniu676446', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '领票效率很低，服务态度也一般', '2018-02-21 12:30:17', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('70', '8051056968', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '还不错，还真的不错。', '2018-02-09 19:14:49', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('71', '杨大器', 'http://m.tuniucdn.com/fb2/t1/G3/M00/1E/00/Cii_JVlUdlaIC1nzABq3IISe4GcAAB89QJNoq4AGrc4205_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '价格优惠，取票便利，很满意，宝宝也长了见识', '2018-01-25 11:26:48', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('72', '8121516218', '', '预订优惠:一般;取票便捷:一般;景区服务:一般;', '订票方便，又便宜了一点！只是不知道为什么不给我票，只让我进，如果要能给纸质门票就更好了！', '2017-10-05 10:08:16', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('73', '6836681778', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '挺不错的动物园，自驾区有点短，孩子喂了大象、河马、猴子，很开心。。。个人认为挺好的，推荐带孩子去。。。', '2017-09-21 09:45:06', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('74', '6825101111', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '很棒的地方，这次去看到许多小猴子，开心', '2017-09-05 15:22:05', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('75', '8115592227', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不错，就是老虎区保养，没看到老虎', '2017-08-30 09:49:09', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('76', '8115592227', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不错，就是老虎区保养，没看到老虎', '2017-08-30 09:48:38', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('77', '8117187276', 'http://m.tuniucdn.com/fb2/t1/G4/M00/08/DE/Cii-VVmaO06IOnFAAAC03i67o04AAANSQIdYmsAALT2078_w90_h90_c1_t0.jpg', '预订优惠:一般;取票便捷:满意;景区服务:不满意;', '动物太少，不值得推荐！', '2017-08-15 09:11:39', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('78', '8117187276', 'http://m.tuniucdn.com/fb2/t1/G4/M00/08/DE/Cii-VVmaO06IOnFAAAC03i67o04AAANSQIdYmsAALT2078_w90_h90_c1_t0.jpg', '预订优惠:一般;取票便捷:一般;景区服务:不满意;', '动物太少了，不值这个价！', '2017-08-15 09:10:12', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('79', '青蓝居', '', '预订优惠:一般;取票便捷:一般;景区服务:一般;', '真是看景不如听景啊！', '2017-08-10 08:52:43', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('80', '青蓝居', '', '预订优惠:一般;取票便捷:一般;景区服务:一般;', '车行区还好，步行区太勉强了', '2017-08-10 08:51:46', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('81', '8020216327', 'http://m.tuniucdn.com/fb2/t1/G2/M00/3A/01/Cii-T1hCeA-IJI4eAAb2vp6pfKkAAFF9AEOMLsABvbW795_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '还不错，这次再来参观！', '2017-06-16 12:13:40', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('82', '8013361577', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '这个价格还是挺值的，可以不是自己开车，还是不够方便，步行区还需要一个一个的看不能自己选。', '2017-05-31 23:27:03', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('83', '8108852153', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '一般般111111111', '2017-05-31 07:50:20', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('84', '6823593777', '', '预订优惠:满意;取票便捷:一般;景区服务:满意;', '省钱，就是临时定要提前两小时有点麻烦', '2017-03-19 17:50:07', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('85', '8107217173', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '挺好的方便了快捷服务态度好', '2017-03-16 09:05:24', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('86', 'tuniu479872', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '好评 值得去的地方环境好', '2017-03-07 10:14:20', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('87', 'tuniu479872', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不错值得去 孩子很喜欢', '2017-03-07 10:13:45', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('88', '6815118752', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '需要提前两小时预订，动物一般', '2017-02-26 07:06:27', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('89', '大米159', 'http://m.tuniucdn.com/fb2/t1/G2/M00/BC/E4/Cii-Tlh17PKIEVYgAACHCUsSY6cAAGo8gE46QEAAIch342_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '天气原因取消了，退款了，有信誉', '2017-02-20 14:28:55', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('90', '大米159', 'http://m.tuniucdn.com/fb2/t1/G2/M00/BC/E4/Cii-Tlh17PKIEVYgAACHCUsSY6cAAGo8gE46QEAAIch342_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '天气原因取消了，退款了，有信誉\n', '2017-02-20 14:28:37', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('91', '6815013838', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '很不错的地方，就是有点儿小', '2017-02-16 15:22:56', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('92', '8097669769', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '最近特别好特别美非常适合带小孩玩。猴山特别好玩！', '2017-02-09 17:13:49', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('93', '6830501388', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '动物种类多，热带植物生长繁盛，景区环境优美，只是人车太多', '2017-02-02 12:06:21', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('94', '8087622605', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '其他都很满意，就是景区部分服务人员的态度差，尤其是餐厅的，有损三亚形象。', '2017-01-28 09:54:14', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('95', '8097669769', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '非常方便门口就可以取票还蛮适合小朋友玩的', '2017-01-26 09:45:59', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('96', '6825521629', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不错的景点很方便！！！', '2017-01-12 21:56:15', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('97', '8076009867', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '环境很好，位于热带雨林', '2016-12-16 16:31:29', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('98', '8035121751', '', '预订优惠:一般;取票便捷:一般;景区服务:一般;', '初一去的，人超多，适合小孩子家庭出游', '2016-12-05 23:35:24', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('99', '8083087178', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '非常满意，下次还会去。', '2016-11-28 16:35:06', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('100', 'wenwenkay', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '小孩子们玩得很高兴…', '2016-11-23 09:19:04', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('101', '6817386352', '', '预订优惠:一般;取票便捷:不满意;景区服务:一般;', '一般吧 散养的动物不多', '2016-09-23 22:24:01', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('102', '8091101837', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '逛游了3个多小时，主要特点是狮子，老虎，狮虎兽，其他动物种类有点少，棕熊有点憨，餐厅的饭菜着实有点难吃！', '2016-09-17 11:10:28', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('103', '8000679233', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '好好好好好好好好好好', '2016-08-13 11:48:07', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('104', '8087059003', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '非常不错，取票很方便。', '2016-08-10 09:24:18', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('105', '8087059003', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '很不错，取票很方便。', '2016-08-10 09:20:09', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('106', '8070915708', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '在海南来说不错了，没什么动物园', '2016-08-02 21:19:03', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('107', '8076786271', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '自驾车自由自在值得一去', '2016-07-22 09:14:32', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('108', '8076786271', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '自驾车自由自在值得一去', '2016-07-22 09:13:14', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('109', '8026082063', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '途牛网站订票、取票非常方便。', '2016-07-21 15:50:18', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('110', '8026082063', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '一家四口去的，小孩非常高兴。途牛网购买的，非常方便！', '2016-07-21 15:49:13', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('111', '8083358178', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '天太热，动物都跑去乘凉了，照片还不错', '2016-07-21 13:34:45', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('112', '6818256328', '', '预订优惠:满意;取票便捷:满意;景区服务:不满意;', '园区太小，动物也很少，性价比太差，不值。', '2016-07-18 18:11:05', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('113', '6818256328', '', '预订优惠:满意;取票便捷:满意;景区服务:不满意;', '园区太少，性价比太差！不值的去。', '2016-07-18 18:09:46', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('114', '8082298909', 'http://m.tuniucdn.com/fb2/t1/G2/M00/05/8E/Cii-TleEnMiIA5kNAAPMGIQz3NUAAAHTwDOBpwAA8ww461_w90_h90_c1_t0.png', '预订优惠:一般;取票便捷:不满意;景区服务:一般;', '途牛买的门票，结果没有给我发手机短信。这是什么问题？途牛打广告，蒙逼？', '2016-07-12 15:28:09', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('115', '8067086585', '', '预订优惠:满意;取票便捷:一般;景区服务:满意;', '很不错，就是取票要2小时限定，不方便', '2016-04-07 13:01:29', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('116', '8055793659', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '虽然动物不多还是值得一走里面有难得见到的大象 鳄鱼', '2016-03-31 22:09:33', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('117', '8038971139', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '。。还行。值得一游。', '2016-02-24 12:09:36', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('118', '索菲菲', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '值得一去！请提前两小时买票 ', '2016-02-24 09:25:23', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('119', '8037761895', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '去的这天人很少，小朋友玩的很开心(ಡωಡ)hiahiahia', '2016-02-18 08:20:23', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('120', '8037173137', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '很好很好很好很好很好很好', '2016-02-17 09:07:04', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('121', '8032062355', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '真的值得去转一转 开车进猛兽区与那些猛兽只隔着一层车皮真的还是蛮刺激～里面还可以钓鳄鱼 各种喂食啊娱乐项目差不多都是五块十块 所以还挺合理的 猴山的猴子也不会抢包什么的 可能是有工作人员在的原因吧 景很美 植物真的真的很多～在网上订真心便宜', '2016-02-06 19:55:52', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('122', '8019712581', '', '预订优惠:满意;取票便捷:一般;景区服务:满意;', '取票很方便，价格实惠，就是取票时出了点误会，很快就解决了。', '2016-02-02 09:08:03', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('123', '8020083313', '', '预订优惠:满意;取票便捷:一般;景区服务:满意;', '景色宜人，很不错。就是离市区有点远', '2015-12-15 10:08:59', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('124', '8017269381', '', '预订优惠:满意;取票便捷:一般;景区服务:不满意;', '服务不好，喂食动物比门票还贵。', '2015-11-14 01:19:00', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('125', '6825851312', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不错哦，，一家人出来玩，，，小孩子什么的最高兴了，一路上都是有说有笑的，，激动的哟', '2015-03-11 16:29:36', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('126', '6825687382', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '有没有搞错啊 非要评论20个字以上才可以提交，', '2015-02-28 11:43:09', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('127', '6825687382', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '便宜倒是挺便宜的 ，就是买了就不能退了 我多么买了一张儿童票，退不了', '2015-02-28 11:41:24', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('128', '6825552623', '', '预订优惠:满意;取票便捷:一般;景区服务:一般;', '还不错，网上订票方便，只是在取的时候比较慢，等了好久才拿到票', '2015-02-25 10:19:22', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('129', '6825588137', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '取票很方便，工作人员态度也好，一家出游很合适，不错！', '2015-02-24 00:07:56', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('130', '6823370863', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '很便利 三个大人一个小孩 小孩子不满1.2m免票 小孩子玩的很开心', '2015-02-10 09:46:08', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('131', '6822191389', '', '预订优惠:满意;取票便捷:满意;景区服务:一般;', '价格优惠，取票便捷，交通太差了，服务一般，吃饭不方便，猴山不错，有惊喜，有失望，带孩子值得一去。。。', '2014-12-27 01:50:24', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('132', '6822670215', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '方便快捷，门票也非常便宜，支付也非常安全，以后去每个景点我都要途牛上订票', '2014-12-03 16:40:13', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('133', '6813267105', '', '预订过程:满意;景区:满意;', '', '2013-10-15 08:40:14', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('134', 'sunshouhui', '', '预订过程:满意;景区:满意;', '唯 一不满意的是对咱们的技术，真的服务太不周到了，总出问题，在有，客服处理问题太慢了，希望改进吧!', '2013-02-28 15:50:48', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('135', '6811197188', '', '预订过程:不满意;景区:不满意;', '', '2013-02-10 10:50:43', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('136', '6811283361', '', '预订过程:满意;景区:满意;', '', '2012-10-05 16:40:20', '2018-11-02 19:22:23', '19940');
INSERT INTO `tuniu_ysdwy` VALUES ('137', '6811283361', '', '预订过程:满意;景区:满意;', '', '2012-10-05 16:39:20', '2018-11-02 19:22:23', '19940');
