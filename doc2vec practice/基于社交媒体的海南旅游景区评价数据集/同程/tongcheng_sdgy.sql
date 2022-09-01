/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : newdata_hainan

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-09 20:00:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tongcheng_sdgy
-- ----------------------------
DROP TABLE IF EXISTS `tongcheng_sdgy`;
CREATE TABLE `tongcheng_sdgy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `userimg` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `descrtion` text,
  `uptime` varchar(100) DEFAULT NULL,
  `tasktimes` text,
  `tongchengid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`),
  UNIQUE KEY `ss` (`username`,`uptime`)
) ENGINE=InnoDB AUTO_INCREMENT=8229 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tongcheng_sdgy
-- ----------------------------
INSERT INTO `tongcheng_sdgy` VALUES ('8163', '同程会员_41A5996438E', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '三亚水稻公园在海棠湾附近，在这里玩看到有优惠活动就去玩了一下，恐龙很逼真，还会动会叫，花海花开了，很漂亮，园区很大，逛了半天很舒服。性价比高，下次有机会还是会去的。', '2017-10-13', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8164', '我是辣椒', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(12)', '表演很棒哟，超大的实景舞台，演员至少有一百多人，演的很卖力，尤其喜欢其中一个**唱的歌，音响效果很不错，听着很响亮。同程上1块的门票，太超值了，连门票的印刷成本都不止这些，唯一不足的是景区的道路还没完全修好。', '2017-05-01', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8165', '≈静水流深≈', '//pic3.40017.cn/member/face/2016/08/11/08/ETvLtr.jpg', '好评; 有用:(0)', '“稻花香里说丰年，听取蛙声一片。”晚上来到水稻国家公园观看《田野狂欢》大型实景演出。三亚海棠湾水稻国家公园，拥有袁隆平国家水稻基地的万亩良田。《田野狂欢》由序、春耕和插秧、太阳和月亮、水妹与春仔、**和云彩等几幕组成。试演出阶段，感觉很多需要改进，不过1元的特惠门票还是超值。', '2017-06-03', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8166', '同程会员_CC61431927E', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '带孩子去的，孩子看到比较兴奋。面积很大，环境也很好，性价比很高的景区。有电瓶车司机讲解园区情况，及介绍恐龙。比较好的一次体验。', '2017-10-16', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8167', '609EAF4BCD2DC91C', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '不针对演出，但是请问只有晚上去是什么鬼，我是冲着田去的，不是表演，不是表演', '2017-11-24', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8168', '同程会员_40ADCC7BADA', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(1)', '性价比非常高的景区，三亚除了海洋文化，农耕文化也是重要的组成部分。公园里的花海，一比一比例的恐龙非常吸引小朋友。餐厅味道很有当地特色，不像传统景区。夜晚的演出值得推荐。满满的风土人情。', '2017-10-16', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8169', '18976299965', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '不错不错，值得一看，表演很精彩，同程取票方便，玩的很开心', '2017-05-22', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8170', '一空白纸', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '哈哈，同学聚会，听说水稻公园的恐龙园开了，就集体去玩了。挺不错的，，看到旁边的小朋友一直在喊恐龙叫了恐龙叫了，好好玩听说晚上还有大型的演出，下次就冲着演出去了', '2017-10-10', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8171', '同程会员_ED7A27C94AE', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '前些天看到一篇推文，说是这个地方有恐龙了，抢票来的哈，天气不错，野外的感觉很好，绿油油的稻田，还有鲜花盛开，心情好好啦，恐龙还是不错的，够大，能动，会叫的那种，偶尔出来散散心的好去处。', '2017-10-13', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8172', 'CB14747A323B1801', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(1)', '超值的一次演出！明天让我朋友们都来', '2017-04-29', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8173', '同程会员_1567A7370B6', '//pic3.40017.cn/member/face/2016/02/03/01/gjFnKC.jpg', '好评; 有用:(0)', '我是第二次看了，真的很不错，还有自助餐，非常满意', '2017-08-01', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8174', '同程会员_C4C778938B8', '//pic3.40017.cn/member/face/2015/12/12/02/Ey0y5Z.jpg', '好评; 有用:(0)', '购票方便演出还好很漂亮', '2017-05-15', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8175', '同程会员_9BC5CA04F5A', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(1)', '带小孩去看的，演出很赞，加上灯光很壮观，还有恐龙很逼真，都过了好几天了小孩还在念着下次还要去看演出和恐龙。', '2017-10-21', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8176', '1C7AEDF084397EEF', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '中评; 有用:(0)', '比半年前好多，以后更好，里面有恐龙看，花十元，值得', '2017-11-15', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8177', '同程会员_362C259D284', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '网上购票优惠便宜取票也快，去的时候不对吧景点有点显单调，不过不久后这景点应该会很丰富的，面积大且开发快', '2018-07-02', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8178', '微信用户_6E4BE033724', '//pic3.40017.cn/member/face/2016/01/30/21/RGgpEp.jpg', '好评; 有用:(0)', '实景灯光都很大气 到了门口有电瓶车 服务态度很好 整个水稻公园映入眼帘 演员很敬业 效果确实不错 我们住的近 所以就去看了 同事们第二天也都去了', '2017-05-18', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8179', '佐领妈', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '景区因为雨天原因已关闭，需要退票，但是app上找不到这个景区的退款链接，不过才1块钱，所以就不退了！', '2017-05-28', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8180', 'CE06A0C597478302', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(1)', '太棒了完全可以和迪斯尼表演一拼！演员太卖力了，敬业精神值得学习！', '2017-05-05', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8181', '5B800546F8EEC916', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '差评; 有用:(0)', '不演出，也不通知一声，我们买票是白买的吗？还跑这么远的路程、什么说法都没有吗？', '2017-05-19', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8182', '同程会员_00960F566C8', '//pic3.40017.cn/member/face/2015/08/31/14/jNDStn.png', '好评; 有用:(0)', '一个值得去的地方，尤其对没接触过泥土生活的年轻人来说，一个补充知识的地方', '2017-05-28', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8183', '同程会员_889C15C34C4', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '差评; 有用:(0)', '买了三亚水稻国家公司《田野狂欢》大型实景演出门票又不能看了', '2017-05-22', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8184', 'ggssnn', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(1)', '特别特别好 特别特别超值！', '2017-04-30', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8185', '同程会员_C568F5D6941', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(1)', '非常好看 非常的精彩', '2017-05-01', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8186', '王莹_B8A1A921B747A', '//pic3.40017.cn/member/face/2015/12/31/12/ZxuARG.jpg', '好评; 有用:(1)', '很好看！很满意，孩子也喜欢', '2017-05-01', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8187', '臭宝贝就是我', '//pic5.40017.cn/01/001/13/ca/rBLkBlkeea-ATDtVAAgAAHlB20U161.jpg', '好评; 有用:(0)', '非常好，场景卡通可爱，小朋友们很是喜欢！', '2017-05-19', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8188', 'FCE74FD2D0E9BE63', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '很不错，一元门票还是很值的。', '2017-05-08', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8189', '同程会员_47D094BE4A3', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '晚上去的，演出还不错，对得起双11价格', '2017-11-20', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8190', '罗伊王', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(1)', '超值的一次演出，场面高大上，比较震撼！', '2017-04-30', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8191', '同程会员_3887E7C3B39', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(1)', '不错还是非常不错的价格适宜', '2017-05-01', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8192', '同程会员_32E6AB56AF7', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '不错的地方！下次带上小孩子一起去玩更有意思', '2017-10-10', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8193', 'BA66E56F738EE08C', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '差评; 有用:(0)', '有朋友没来，居然不能退款，抢钱了。么用明显提示买了不退。新诈骗吗？', '2018-03-25', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8194', '同程会员_BCCCFA0EE28', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '里面很大，恐龙很逼真', '2018-09-22', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8195', '6FEA476401742822', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '真的不错，值得一看！￼场景非常好，包括二十四节气、包括**、还有乡村爱情等，场景很新颖，孩子非常爱看，十分推荐！最后还有竹竿舞，黎族风情很浓，非常好！', '2017-05-08', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8196', 'B3186DD66D7206BA', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '很不错的演出，很值得一看，价钱也是超值', '2017-05-27', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8197', '同程会员_385C92EE843', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '真好，不一样景让人觉得就在大自然中。', '2017-05-23', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8198', '梦幻602', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '表演很壮观，配音笑的有点夸张', '2017-05-11', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8199', '同程会员开心一笑', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '演出很不错～挺好看的～就是时间太短了点～', '2017-05-05', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8200', '我就是臭蛋蛋', '//pic5.40017.cn/01/000/d7/00/rBLkBVkNYfuAfDE2AAgAAIdYvNI119.jpg', '好评; 有用:(0)', '环境好，演出特别棒，小朋友们特别喜欢。', '2017-05-08', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8201', '同耍', '//pic3.40017.cn/member/face/2016/05/03/20/CKNwmD.jpg', '好评; 有用:(0)', '节目编排得不错！一块钱真值！', '2017-05-05', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8202', '9A02DA5488704FD7', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '环境挺好的，演出很不错', '2017-05-07', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8203', '大红豆～', '//pic3.40017.cn/member/face/2016/05/16/12/51491z.jpg', '好评; 有用:(0)', '还不错，一块钱团购玩的开心', '2017-05-22', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8204', 'nfser_0e78be715e', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '中评; 有用:(0)', '大部分都是还在建设中的，现在也就算是试营业吧，恐龙倒是不少，只是正式标签都没来得及做呢。这样卖票有点不太合适。', '2018-03-10', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8205', '嗒嗒头', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(1)', '挺不错的演出！阵容强大，视觉效果好！', '2017-04-30', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8206', '130npqkd781', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '取票方便，非常不错的表演！', '2017-05-07', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8207', 'zoe妞', '//pic3.40017.cn/member/face/2016/05/27/07/kl7r3d.jpg', '好评; 有用:(0)', '挺好看的音乐效果很好', '2017-05-07', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8208', '同程会员_FD5937CB870', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '真心不错的景点，赞一个', '2017-05-19', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8209', '同程会员_21FA66266E2', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '演出节目给力，大人孩子都喜欢。', '2017-05-11', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8210', 'w-a《nn》', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '真的是很好！严文龙导演的作品太震撼了！值得一去', '2017-05-09', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8211', '9C6913AD465B7B21', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '演出超值，1元购票更值，还学着跳了竹杆舞', '2017-05-15', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8212', '谁是谁的唯一', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '好看，超值，值得消息！', '2017-05-27', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8213', '67414BE19EEF6DC6', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '差评; 有用:(0)', '同程服务差，**人家订了不能去还可以退', '2017-06-01', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8214', '是日春茗', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '二百多种恐龙，大大小小，形态逼真。孩子们非常喜欢！', '2018-07-11', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8215', '同程会员_81B7541CA0F', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '真是方便到门口看一下购票信息就进了', '2018-02-07', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8216', 'sofialiang', '//pic3.40017.cn/member/face/2017/02/06/11/gSswqE.jpg', '好评; 有用:(0)', '没看，不知道，有机会下次吧', '2017-05-04', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8217', '同程会员_ED346A0421C', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '感觉挺好的，非常脑子！', '2017-06-12', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8218', '同程会员_65604D77A6E', '//pic5.40017.cn/01/001/1b/02/rBLkBlkgbaOAFM0MAAgAAHjBiUc862.jpg', '好评; 有用:(0)', '只有一个字:非常值，没过瘾！！！', '2017-05-21', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8219', '同程会员_ED034BBE648', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '好看。。。。。。。。。。。。。。', '2017-05-03', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8220', '1198021783065C56', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '不错，比较接近农民的生活', '2017-05-18', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8221', '同程会员_86E02BF19B3', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '差评; 有用:(0)', '取消了，没看成，不开森。。。', '2017-06-22', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8222', 'L福中福L', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '这个活动简直太给力了', '2017-05-05', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8223', '10FAB3D9E4E971DD', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(1)', '太值了！推荐了好多人去！', '2017-05-02', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8224', '13910cjqlrn', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(1)', '非常非常非常非常不错！', '2017-05-09', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8225', '同程会员_8F2D0A9A2E5', '//pic3.40017.cn/member/face/2015/08/31/14/jNDStn.png', '好评; 有用:(0)', '很好，很震撼，就是声音有点大，把小朋友吓到了', '2017-05-11', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8226', '同程会员_C5E59373D42', '//pic3.40017.cn/member/face/2015/08/31/14/jNDStn.png', '好评; 有用:(0)', '物超所值很是震撼值得一看', '2017-05-13', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8227', '13915djtmfi', '//pic3.40017.cn/member/face/2015/09/03/14/rvJElL.jpg', '差评; 有用:(0)', '差评！一会说不能用，一会说能用，到底哪个消息是真的？原价票要100多，估计是景区不乐意有1元票吧。没有消费，此单也不能退款。搞不懂！', '2017-06-02', '2018-11-02 19:59:29', '230791');
INSERT INTO `tongcheng_sdgy` VALUES ('8228', '0767A945334685BD', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(2)', '演出挺不错，勾起了儿时的记忆。可在现如今社会，这些也许只是记忆了，再也回不去了', '2017-05-16', '2018-11-02 19:59:29', '230791');
