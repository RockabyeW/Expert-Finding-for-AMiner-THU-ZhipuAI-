/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yanglidata

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-12 15:16:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tuniu_fjzd_xiaoji8
-- ----------------------------
DROP TABLE IF EXISTS `tuniu_fjzd_xiaoji8`;
CREATE TABLE `tuniu_fjzd_xiaoji8` (
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
-- Records of tuniu_fjzd_xiaoji8
-- ----------------------------
INSERT INTO `tuniu_fjzd_xiaoji8` VALUES ('47639', '8151632568', '', '-18', '预订优惠:满意;取票便捷:满意;景区服务:满意;', '不满意，打客服电都没人接，无法咨询', '2018/8/24 15:21', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji8` VALUES ('47705', '8132961389', '', '-18', '预订优惠:不满意;取票便捷:不满意;景区服务:不满意;', '说送香蕉船，到了景点说不送，打客服电话协助，我都已经回长沙了，还没有任何反馈，我真是呵呵你们途牛！还不如那些在现场买票的！', '2018/5/1 17:35', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji8` VALUES ('47840', 'killua_43', 'http://m.tuniucdn.com/fb2/t1/G5/M00/A5/77/Cii-s1q-7GiIGxfrAAj8VIBbXa8AAE9KAGlO14ACPxs745_w90_h90_c1_t0.jpg', '-18', '预订优惠:不满意;取票便捷:不满意;景区服务:不满意;', '让人很失望的服务，订的联票，上岛之前没有任何告知，上岛以后告知珊瑚观光艇玩不了，经过半个小时各种打电话联系说会退钱，这已经就耽误了行程，途牛没有一点歉意反而把责任全部推给携程，说是携程给出的票，那我还找途牛干嘛？以后直接携程上订不就完了。最后退的钱，门票是按门市价给我收的费，也就是说我啥都没有干，还要多掏钱，给售后说了觉得这样做合适么，售后只认天气原因和携程出票，自己没有一点不合适的地方，我最后都说了钱都是小事不要了，态度是大事，售后语气很强硬，投诉电话根本没有，渣', '2017/11/13 20:40', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji8` VALUES ('48084', '8092262820', '', '-18', '预订优惠:满意;取票便捷:不满意;景区服务:不满意;', '票不错，但是景区服务不好，还让我联系途牛，给景区发传真。', '2017/2/1 21:59', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji8` VALUES ('48144', '8020798553', 'http://m.tuniucdn.com/fb2/t1/G5/M00/F8/DE/Cii-slr3nnaIImVFAAHE28tH87cAAGw2QHMPvEAAcTz290_w90_h90_c1_t0.jpg', '-18', '预订优惠:满意;取票便捷:满意;景区服务:不满意;', '对分界洲岛五A景区的配套管理非常失望！怎么会评上五A的？？？实在不解！除自然景观，难道配套设施与服务管理不在五A评审范围内，管理，服务太无序太乱！陵水站免费大巴无人管理，游客上车抢座那个乱，无法形容！大巴往返的时间安排不知是咋考虑的，无语！在岛上除了水上项目和表演項目，自然景观一个小时可以结束了！根本不能环岛游啊！值全国首个五A岛屿景区吗？工棚简易小屋随处可见，真的要问 这里是五A景区吗？', '2016/2/13 13:21', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji8` VALUES ('48300', '6813550606', '', '-18', '预订过程:满意;景区:满意;', '景区无视短信，只收传真，那个浪费资源，那个死脑筋，那个慢，那个骂声漫天', '2014/2/2 22:20', '2018/10/16 15:24', '4267');
INSERT INTO `tuniu_fjzd_xiaoji8` VALUES ('48391', 'xohx', 'http://m.tuniucdn.com/filebroker/cdn/prd/63/25/6325addd1e5ed5fa995d75c1b9c95a40_w90_h90_c1_t0.jpg', '-18', '行程:满意;导游:满意;交通:一般;住宿:满意;', '三亚票务人员搞错了人数，景区不卖票，后来电话沟通后才解决，又损失了一笔长途手机费。\r\n景区的托伞看上去蛮不错的，海景不错，岛上的沙滩一般，有很多贝壳碎石，但是上船前的沙滩很不错，很细软，海浪也大。', '2012/9/19 18:17', '2018/10/16 15:24', '4267');
