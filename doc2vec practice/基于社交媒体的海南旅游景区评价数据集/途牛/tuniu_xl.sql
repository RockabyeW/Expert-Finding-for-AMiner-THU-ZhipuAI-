/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : newdata_hainan

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-09 20:05:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_xl
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_xl`;
CREATE TABLE `tuniu_xl` (
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
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuniu_xl
-- ----------------------------
INSERT INTO `tuniu_xl` VALUES ('470', '8117586860', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '挺好的植物园 。。。。', '2018-10-09 16:18:47', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('471', '8093672616', '', '预订优惠:一般;取票便捷:一般;景区服务:一般;', '让小孩子去见识见识，不过时间不够，只是走马观花。', '2018-08-23 10:15:18', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('472', '8093672616', '', '预订优惠:一般;取票便捷:一般;景区服务:一般;', '有时间带孩子去科普一下，还是可以的，大人去是有点无聊了。', '2018-08-23 10:14:23', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('473', '6830132759', 'http://m.tuniucdn.com/fb2/t1/G4/M00/C8/5D/Cii_J1oBe2qICVwNAACME6tYLqMAADAtwFxhJ4AAIwr955_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:不满意;景区服务:一般;', '不知道哪里出问题!跟途牛客服电话联系几次，折腾半个小时才拿到预订的门票!非常不愉快!但途牛客服还是很热情!', '2018-08-19 17:02:39', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('474', '8087009315', '', '预订优惠:一般;取票便捷:一般;景区服务:一般;', '景区较大，但各种植物的标示基本没有。', '2018-08-04 20:56:48', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('475', '8100956019', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '途牛勤劳勤恳信得过！', '2018-06-27 20:58:55', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('476', '8100956019', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '享受大自然，带着外孙游植物园一家快乐，', '2018-06-27 20:57:04', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('477', '8129893035', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '至于很多，花很美，里面的泰国椰子超级好喝，水多肉厚，价格也实惠，外面买不到哦', '2018-03-21 16:17:55', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('478', '8108712586', 'http://m.tuniucdn.com/fb2/t1/G5/M00/76/70/Cii-tFqUviiIU1xEABwT5VlUQSAAADsngJ-x8YAHBP9744_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不错 方便 快捷！！！！！！！！！', '2018-03-18 18:18:55', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('479', '8126370170', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '植物园里的游览车司机还能讲解一下', '2018-02-28 09:26:38', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('480', '8085095353', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '切记要提前购票！免得耽误时间，比景区买优惠，推荐这家购买', '2018-02-28 09:05:48', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('481', 'silencedear', 'http://m.tuniucdn.com/fb2/t1/G1/M00/09/ED/Cii9EFZC7FSIQ-h9ABN_hqO8DJ8AAAKIQLXIJ0AE3-e908_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '非常方便，直接手机就可验票！', '2018-02-24 09:49:29', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('482', '8128862273', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '环境不错，还能品尝咖啡，给个赞！', '2018-02-22 09:13:27', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('483', '邓琢凡', 'http://m.tuniucdn.com/fb2/t1/G5/M00/62/F0/Cii-slqA4GGISlZxAA0X5S8wdYEAADbJANhL8EADRf9729_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '取票很方便，园内植物种类丰富适合带小朋友游玩。', '2018-02-17 09:53:23', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('484', '小小兔0829', 'http://m.tuniucdn.com/fb2/t1/G2/M00/DC/F4/Cii-TliEQ8qIY4CUAA4wlHOAQMwAAG3uwFP5-IADjCs559_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不建议去，从三亚出发两个小时，不值得去', '2018-01-22 21:10:54', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('485', '小小兔0829', 'http://m.tuniucdn.com/fb2/t1/G2/M00/DC/F4/Cii-TliEQ8qIY4CUAA4wlHOAQMwAAG3uwFP5-IADjCs559_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不建议去，没什么意思', '2018-01-22 21:10:26', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('486', 'mocllmo', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '植物园不算很大，可去可不去', '2017-12-20 22:09:55', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('487', '8122716332', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '出票需要一个小时，提前购买的，优惠挺多的。', '2017-11-27 10:12:48', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('488', '8122716332', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '出票需要一个小时，提前购买的，优惠挺多的。', '2017-11-27 10:12:33', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('489', '8019978900', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '途牛旅游网络购票方便快捷', '2017-11-23 17:34:44', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('490', '8110261209', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '还行。还行。还行。还行还行。', '2017-11-20 09:10:21', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('491', '680326yuan', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '取票方便，预订有优惠。', '2017-11-07 09:05:51', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('492', '高东方', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '好！棒！真值得一看！', '2017-11-04 10:57:30', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('493', 'panzhihan', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '那天下雨，坐的缆车，但是和家人一起很开心', '2017-10-18 16:04:45', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('494', 'limulin', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '挺好看的，蚊子比较多，一定要带防蚊水', '2017-10-09 12:35:28', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('495', '8120099190', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '兴城镇植物园里的植物太漂亮了 我是北方人第一次看到这么多植物 开阔视野 太棒了', '2017-09-30 17:38:02', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('496', '8119893836', '', '预订优惠:满意;取票便捷:满意;景区服务:不满意;', '园区在大规模修缮，感觉像一个工地，所有植物似乎也没有精心管理，然后各种体院馆感觉就是一个菜园子，景区整体感觉就是一个普通花园。如果住的地方距离景区近，去看看还行，距离远就可以放弃了……', '2017-09-10 10:19:53', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('497', '6828157875', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '六百余亩热带植物，郁郁葱葱的富氧环境，舒服！漫步园中，了解胡椒，香草兰，可可，咖啡，香蕉，还有番开头的水果，随处可见的槟榔树，糯米香和香草兰的芬芳飘散在园区各处。如果想见识“见血封喉”和黄花梨，这里也可以实现你的愿望。这里还是冯小刚新片《芳华》的选景地，最后可以免费品尝四种饮品，当然是为了让你买。最后，提醒如果不是行动不便，完全可以不做电瓶车，途牛自带讲解非常赞！在园区散散步，一点都不累。', '2017-09-02 11:20:38', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('498', '8076807178', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '很多珍稀植物，长知识的地方，值得一游。购物也非常实惠。', '2017-07-06 07:09:39', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('499', '8098611366', '', '预订优惠:满意;取票便捷:满意;景区服务:不满意;', '取票很方便，价格优惠！谢谢途牛网提供的方便服务！', '2017-03-19 11:11:56', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('500', '8079180313', '', '预订优惠:满意;取票便捷:一般;景区服务:满意;', '取票超慢，建议建立自主取票窗口。', '2017-02-04 14:02:18', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('501', '8061525866', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不错 不过进园最好配个讲解员 可以了解不少东西', '2017-02-03 09:37:44', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('502', '8086867532', 'http://m.tuniucdn.com/fb2/t1/G2/M00/3B/1F/Cii-TFewIPKIUV3NAAC_026-KGcAABNPgPJUKgAAL_r185_w90_h90_c1_t0.jpg', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '景区还不错，值得一看', '2017-01-31 06:40:03', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('503', '8021928571', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '第二次去，带小朋友和老人一起去的，科普一下热带植物', '2017-01-23 22:17:33', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('504', '8085235179', '', '预订优惠:一般;取票便捷:满意;景区服务:满意;', '很好，蛮舒服的，取票方便，反正不是第一次去了，还不错', '2016-07-30 18:45:17', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('505', 'tuniu552255', '', '预订优惠:不满意;取票便捷:满意;景区服务:满意;', '还不错，可以跟免费导游，也可以静静地走，园内环境不错，是个成熟景区', '2015-02-06 20:20:40', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('506', '出水芙蓉', '', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '票价不仅优惠，而且还有导游，意想不到，免费品尝咖啡、茶！景色就不用说了！', '2015-02-03 10:18:27', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('507', '6813906695', '', '预订过程:一般;景区:一般;', '', '2014-02-11 14:00:16', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('508', '王海丽', 'http://m.tuniucdn.com/fb2/t1/G5/M00/8C/B4/Cii-tFtQJkuIGWBDAAWp3JnsiMkAAKdawBqVxMABan0555_w90_h90_c1_t0.jpg', '预订过程:满意;景区:满意;', '看到了很多热带植物，感觉不错', '2014-02-09 15:00:46', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('509', 'tuniu01248690', '', '预订过程:满意;景区:满意;', '预订过程和游玩都比较顺利，下次还来', '2014-02-07 19:40:08', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('510', '6813899327', '', '预订过程:满意;景区:满意;', '网站很不错、真的省钱了、也不费事、以后会再次光顾的！', '2014-02-05 11:00:53', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('511', '6813726755', '', '预订过程:满意;景区:满意;', '', '2014-01-11 10:50:11', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('512', '愚公移树', '', '预订过程:满意;景区:满意;', '不错，取票也方便', '2013-12-24 12:20:19', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('513', 'sunhn', '', '预订过程:满意;景区:满意;', '', '2013-10-03 10:31:13', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('514', '6810330967', '', '预订过程:满意;景区:满意;', '不错 比到现场买划算多了', '2013-07-15 12:41:05', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('515', '陆文波', '', '预订过程:满意;景区:满意;', '还行', '2013-05-23 12:40:32', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('516', '6812162502', '', '预订过程:满意;景区:满意;', '，很满意，还有免费讲解员！', '2013-05-03 10:50:56', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('517', '6812122686', '', '预订过程:满意;景区:满意;', '票取到了，很开心', '2013-04-22 16:20:09', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('518', '6812106155', '', '预订过程:满意;景区:满意;', '便捷', '2013-04-18 17:40:02', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('519', '6811998325', '', '预订过程:满意;景区:满意;', '非常方便，下次还选途牛。', '2013-04-04 15:00:25', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('520', '6811970705', '', '预订过程:满意;景区:满意;', '', '2013-03-22 10:11:36', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('521', '黄垃垃', '', '预订过程:满意;景区:一般;', '不错，订票很方便，公园门口拿票也算顺利。就是散客比较遭人嫌弃，没有导游，只能跟在旅游团后面走。兴隆植物园更像是现代化农场。', '2013-03-19 11:10:25', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('522', '6811883767', '', '预订过程:满意;景区:满意;', '', '2013-03-02 20:40:21', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('523', '6811853715', '', '预订过程:满意;景区:满意;', '', '2013-02-19 11:31:25', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('524', 'tuniu01517764', '', '预订过程:满意;景区:满意;', '', '2013-02-16 11:01:00', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('525', '缘豹', 'http://m.tuniucdn.com/filebroker/cdn/prd/5e/07/5e075393016d7372b64d47aa072da2c0_w90_h90_c1_t0.jpg', '预订过程:满意;景区:满意;', '', '2013-02-08 10:50:26', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('526', '6811775995', '', '预订过程:满意;景区:满意;', '', '2013-02-02 18:30:30', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('527', '6811618363', '', '预订过程:满意;景区:满意;', '', '2012-12-31 14:11:32', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('528', '6811562879', '', '预订过程:满意;景区:满意;', '', '2012-12-17 12:11:06', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('529', 'zxtaoyong', '', '预订过程:不满意;景区:满意;', '到景区无法进园', '2012-12-25 18:44:35', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('530', '6811516057', '', '预订过程:满意;景区:满意;', '', '2012-11-16 15:15:19', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('531', '6811137772', '', '', '', '2012-08-29 10:07:25', '2018-11-02 19:26:27', '1338');
INSERT INTO `tuniu_xl` VALUES ('532', 'jiulee', '', '', '预订方便，景区也非常不错，值得推荐。', '2012-08-26 21:37:22', '2018-11-02 19:26:27', '1338');
