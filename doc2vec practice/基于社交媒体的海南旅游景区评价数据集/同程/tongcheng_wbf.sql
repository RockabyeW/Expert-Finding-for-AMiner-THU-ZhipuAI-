/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : newdata_hainan

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-09 20:00:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tongcheng_wbf
-- ----------------------------
DROP TABLE IF EXISTS `tongcheng_wbf`;
CREATE TABLE `tongcheng_wbf` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4476 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tongcheng_wbf
-- ----------------------------
INSERT INTO `tongcheng_wbf` VALUES ('300', '182*****369', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '临时决定来的景点，很好', '2014-03-13', '2018-11-02 16:31:29', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('301', '151*****067', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '错过去玩的时间，如何退款呢', '2014-07-10', '2018-11-02 16:31:29', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4278', '同程会员_C203C397881', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '中评; 有用:(1)', '同程购票很方便但到景点取票出了点小问题，叫我现场支付，我说己网付了并将短信给服务员看，景区服务欠佳叫我与同程联系，我再将银行付款短信给她看，且我是昨天订的票。景区主要是道教文化，景色还是不错的。', '2018-02-10', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4279', '同程会员_33D6C292E0A', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '1、同程取票方便。2、今天风和日利，天地人和。3、风景好，一片绿，风光天限。', '2017-04-03', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4281', '9F798350CD0D1650', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '阴天游玩文**峰，人不多，较清静。', '2017-02-04', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4282', 'yangpx', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '不错，值得一去，对得起门票，山下水果很便宜，良心价格。', '2017-01-26', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4283', '同程会员_CB9815ECF74', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '还行，不过需要很大的体力，本人缺乏锻炼，没有游完就回去了', '2017-01-29', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4284', '13761heuscn', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '风景秀丽，登上山顶一览众山小，唯一不便之处是订票后两小时方可入园。', '2017-01-27', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4285', '无敌小雯雯', '//pic3.40017.cn/member/face/2016/08/12/04/jtAFpQ.jpg', '好评; 有用:(0)', '假期的时候和朋友们一起去玩，周围的环境不错，交通也比较方便，票价不贵，总体来说玩的很开心，性价比比较高，可以很好的放松一下，不错', '2017-01-03', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4286', '同程会员_3B71105844C', '//pic3.40017.cn/member/face/2015/08/31/14/jNDStn.png', '好评; 有用:(0)', '同程订票太给力了，我们提前两小时订的到门口取票非常便捷，比散客方便多了不用排队', '2017-02-05', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4288', '同程会员_4BD0773A0B6', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '网上买票比景点便宜多了，春节期间到处都是人。', '2017-02-02', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4289', 'zwyj2006', '//pic3.40017.cn/member/face/2017/01/30/19/LLe7VY.jpg', '好评; 有用:(0)', '同程订票快捷，比景区购票优惠！好用', '2017-02-21', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4290', '伟淋宝宝', '//pic3.40017.cn/member/face/2016/04/22/00/6oFd4M.jpg', '好评; 有用:(0)', '很不错，风景很美，很漂亮！', '2018-02-16', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4291', '138zkzis010', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '取票方便，风景优美，很有文化氛围，嗨森嗨森，赶赶的……', '2018-02-11', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4292', '6410D657939FCBD2', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '如果能把订票时间缩短就比较好！', '2017-01-10', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4293', '同程会员_F58809F8FC5', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '不错。。。。。。。。。。。', '2017-02-14', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4294', '同程会员_69AD15BBDF3', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '购票后有短信提醒，取票很快，很好。', '2017-02-09', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4295', '187*****811', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '中评; 有用:(1)', ' 我是2月28日晚上十点多通过同程网预定海南定安文**峰门票的，3月1日早上自驾从海口出发，到景区已近中午12点了。因老人和小孩第一次出远门旅游，大家的心情都很不错，但在取票过程中遇到一个小插曲，景点售票员告知我们，说同程网未发我们预定门票的传真，因此叫我们跟同程网联系，当时已经12点了，给同程网致电却没有人接听，后来我们跟景区售票员沟通，他们同意打印同程网的预订信息出来，我们在上面签字就可以了。在当中也浪费了一点时间，不过并没有减退我们游玩的心情。 文**峰是一座山峰，因此需要一定的体力才能逛完。对我们比较有利的是天气不错，温度适宜清爽，挺适合爬山的，当时小孩和老人的精神状态较好，在走走停停中也最终攀上了山顶，一览众山小的体验真是爽。一路上我们在拍下了很多照片，没经过一个寺庙都进行了祭拜，并许下了美好祝愿，祝愿全家平平安安，健健康康，万事如意，心想事成，马到成功。 虽然已经是中午了，但我们却没有感到饥饿疲倦，因为我们自带了干粮，有包子、蛋糕、饼干和王老吉等，边逛边吃，也比较惬意。在祭拜的倒数几个，在旁人的指点下，在上香时，我都进行了表示。', '2014-03-04', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4296', '188****0959', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '非常满意这次行程 班车的司机师傅给十万个赞 人都很贴心 也体验了一把道教文化 虽然不是很懂 就走马观花看了一遍 留了不少汗 还是值得的 地方不大 应该要走一遍的 坐车欣赏不了美景的“内涵”', '2015-10-24', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4297', '186****6733', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '就海口周边景点来说这个景点相对比较值得推荐海口需要周边游的需求，算⭐️⭐️⭐️⭐️⭐️五星推荐！就是停车位较少如果遇见客流量大的情况，估计要停靠马路两侧…外面的商家卖的东西都算良心椰子8元，海口都要卖10元，景点来说真心良心…景点里面也是比较美，道家建筑很有特色、登山登高挺适合一家人出行，我们就选择在年初二大伙来拜财神，人数较多，请香20元三支、应该是可以自己带香进来，景点内可以带宠物入园还算是有人情味，最后同程的网络购票确实方便而且便宜，总体评价五星', '2016-02-09', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4298', '同程会员_22BA5921576', '//pic3.40017.cn/member/face/2016/10/24/13/4TpJ9X.jpg', '好评; 有用:(0)', '风景美不胜收，是块风水宝地。我还会再去的。', '2016-12-03', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4299', '130*****097', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(2)', '景点风景一般、但喜欢研究道家文化的值得一去。网上订票特便宜、喜欢美食的朋友建议不在网上订餐、虽然订的餐便宜、有—浑、一素、一汤、浑素菜和米饭放在一起、一人一份。在养生堂餐厅可直接点菜、也不贵。电瓶车建议别订、景区不大、走走也用不了多长时间。另外每年的正月初九和三月十五好像是免门票的，并且有活动。', '2014-02-05', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4301', '138*****510', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '自己几个家庭组织自驾去的，还挺好玩的，里面场地大，还可以用餐，不过要另外收费哦，风景不错。值得推荐。', '2013-10-05', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4302', '130okmio699', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(1)', '整个山上风景不错，就是交通非常不方便。从海口自己搭车前往定安，后按照热心驾驶员的提示下车，搭乘三轮柴油车（三脚猫）前往景点又花了8元。返程再花8元，高速路口，花了14元搭上回海口的车。到了景点，首先惊叹于其厕所，环境太好了，堪称五星级厕所！景区内，一直有一种香味，后来才知道是一种纯植物的香，央视报道过的，做香的材料全部可以食用。里面的购物点好多门都关着。在砗磲店里，好好见识了一下高档的砗磲。该处还是电影《私人订制》的拍摄地呢！', '2015-04-14', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4303', '150****8591', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '环境清幽，中国文化的传承。换票很方便。', '2016-02-15', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4306', '153*****881', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '定购方便，当天从海口出发当天就能回，没有直接从文**峰回海口的车，要回定安转车，景区还可以，庙多', '2013-10-06', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4308', '139gjmec039', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '还可以玩，就是去晚了，天有点黑', '2016-08-06', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4310', '138*****694', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '总体来说值得去，虽然文**峰不是很高，但还是可以去爬一下的！里面好多阁和殿都挺雄伟的。', '2014-10-06', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4311', '188*****696', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '整个景区的环境是不错的，但是游览起来不太方便，景区的电瓶车管理有些混乱，而景区的导游给游客介绍的多为道教的五行和算命知识，内容比较单一', '2012-04-20', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4312', '136*****160', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '跟朋友临时决定要去，到了景区发现门票好贵。就在景区门口订的票，起先没注意看要3个小时才生效。跟朋友抱着试试看的心理去取票，售票处说要对方传真过来才行，话刚说完就收到传真。真是效率啊！跟朋友玩的很开心', '2014-04-28', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4316', '13976ifggty', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '中评; 有用:(2)', '我是本地人，说实话，这景点真是没啥，不值得去。第一，门票超贵，网上预订还便宜点，本地人去都要64，网上预订42，如果是64我都不想去。第二，这是人造景点，原本尖岭给人淳朴自然的感觉已经不在了。第三，骗钱的太多！！', '2015-01-03', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4317', '136*****369', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '连预约了2天，终于在第二天如约爬到了文**峰。我是先动车去的琼海，然后一早从琼海到定安的车再换三轮摩托到的大门，回海口是搭的黄竹的车。因为反向操作出行太顺了，8点多就到了。好大一座山，有山有水，全现代的道观，高端大气。先进观，再爬山，再下山逛园子，财神殿的那位道爷是念念作法之后才把一张生财的符递到我，太讲究了。甲子殿那位道爷更是跟俺交流许久，最后一拜只收36，多一块不收，哇，我觉得成，正好今年流年点背，好好拜下，', '2014-03-02', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4319', '133*****980', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '由于携带孕妇，所以提前网络踩点，避免排队，网络套票又给了我们很多便捷，这种电子信息整合实体的方式，很赞。但也有些不足之处，电子票与市场票比对单一，从未提及学生票，本地票，以及季节票，需更多本地景点的信息整合。自助出票机需添加现金功能，同程……我的朋友', '2014-07-14', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4320', '138*****680', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '还可以吧，就是路好长，玩回来，过后脚疼呀！没那种运动体力还是别去了！景区总体还ok吧！', '2014-10-29', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4321', '134*****624', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '一、价格划算 同程票价是5折，海南居民持身份证购票竟然才打7.5折二、景色宜人绿化非常好，环境也干净，很舒适三、面积庞大寺庙大小不一、数量较多，跟朋友爬山爬到一半就往回折了，累得不行四、服务周到景点的工作人员都很热情很有礼貌，赞一个', '2014-05-13', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4323', '182*****083', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '首先大大赞一个同程的预定超级方便，下午两点多在车上下的订单，三点到景区直接使用，十分优惠可靠，出门在外必备良品啊！！一家人，有了同程，一切都更加美好起来，在文**峰度过了很棒的一天。谢谢！！', '2014-02-03', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4324', '152*****620', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '第二次去了，这次每个景点都踩了，环境不错，空气大好啊', '2014-10-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4325', '4A36C1A5C1AF2537', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '我们从琼海出发，朋友送过去的，自己打的回来，交通算是便利；价格适中，园内消费比外面贵，景区嘛，可以理解！', '2015-02-25', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4326', '188*****424', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '之前去过，这次门票又涨了。海南身份证要56元。网上买便宜。但是我觉得可以不买票的，但是逃票是不对的，毕竟人家要维持景区。里面还可以。', '2014-09-18', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4327', '138*****630', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '文**峰应该是琼北的最高山峰，景区干净，清静，植被超好。站在峰顶极目远望，一派翠绿的田园风光映入眼帘，令人心醉。虽未深入了解文**峰的人文历史，但美丽的自然风光已让人流连忘返。不过现在天气很热，建议十月份之后来！', '2014-06-02', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4328', '138*****825', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '在此填写您此次游玩的整体感受，包括对同程网提供的服务评价、对景点的吃、住、行、游、购、娱等方面的感受。', '2014-02-02', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4329', '133*****690', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '服务便捷、景点干净、不过还没有完全建设好，有些标识不清楚，尤其是下山路线', '2014-06-09', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4330', '159*****777', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '景色还可以。但作为北方人看着满眼的绿植，各色的花，呼吸着新鲜的空气，心情真真是极好的。边游览风景边看着路边道德经中摘录的醒世名言边感悟其意，心境很平实。耳边间或响起清脆的钵声，心真的安静下来了，恍若置身世外，双手合实，尽享此刻的超然吧。', '2014-03-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4332', '13967buyklr', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '非常漂亮的景点。适合于自驾车去，停车场也很大，爬到山顶感觉非常好！用同程订票取票都很方便。', '2015-01-12', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4333', '130*****016', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '景区幽静，景观优美，值得一游，静静的，很放松！周末近郊游不错！一大群朋友很开心！', '2014-03-16', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4334', '133*****506', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '文**峰应该是琼北的最高山峰，景区干净，清静，植被超好。站在峰顶极目远望，一派翠绿的田园风光映入眼帘，令人心醉。虽未深入了解文**峰的人文历史，但美丽的自然风光已让人流连忘返。', '2014-05-26', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4335', '183****6845', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '自驾游的可以去文**峰逛逛，风景很好哦，4月21号免门票哦，相片用相机拍的，所以没有。我们是9个人去的', '2016-04-19', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4337', '136****7244', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '景色很好，票价很值，如果体力好的话可以玩一整天，这次由于带着孩子和老人，就没逛太久，下次争取多转转', '2016-06-21', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4338', '138****7209', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '评海南身份证现场买61元，同程买42元，便宜了20元，划算，景点比较小，不用电瓶车，还不错！五星好评！', '2016-02-12', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4340', '189*****626', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '环境还是很干净的，不知道是不是受之前台风的影响，去的那天人不是很多，不过1元的门票还是很划算的。', '2014-09-21', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4341', '186*****508', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '预定非常方便，环境也很不错，老婆也非常满意，下次还会带朋友去。', '2014-06-30', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4342', '同程会员_57ED8C2B7C6', '//pic3.40017.cn/member/face/2015/08/31/14/jNDStn.png', '好评; 有用:(0)', '同程网购票特惠，取票方便。文**峰值得一游。我给好评。l', '2016-07-25', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4343', '135*****275', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '网上订票比用海南本地身份证购票还便宜22元，很划算。我觉得文**峰里面看的东西一般，倒是登高看远的风景很好，空气也很好', '2014-04-13', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4344', '151*****023', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '太好玩了，景色那叫个美呀，值得一游。会推荐朋友去的', '2014-04-05', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4346', '189*****764', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '风景很美，很不错啊，就是门票贵了点，个人觉得性价比不高', '2012-04-04', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4348', '137****7990', '//upload.17u.com/uploadfile/2005/11/08/2/boy.gif', '好评; 有用:(0)', '不错，傍晚订票，没有发客户号，打电话咨询客服，客服小哥很尽责，说第二天早上一上班就发，还是服务到位的！对同程顿生好感！', '2015-08-17', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4349', '138****5096', '//pic3.40017.cn/member/face/2015/08/30/19/RDpwpp.jpg', '好评; 有用:(0)', '我们一家三口老婆儿子一起来的，文**峰景色优美、服务周到、我们城心诚意来朝拜祈福！愿文**峰越来越好，香火越来越旺！', '2016-03-23', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4350', '188****6240', '//upload.17u.com/uploadfile/2005/11/08/2/girl.gif', '差评; 有用:(0)', '看到这样我就不想说了，从早上八点在景区等电子码等到十一点，我不知道客服是吃什么长大的，打电话催了不知道多少次电话都打停机了还不来，这种东西有个卵用', '2015-08-17', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4352', '133*****685', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '文**峰还是比较适合休闲度假的地方，不过不要跟旅游团，很多景点旅游团是不去的，更不会带你爬山，所以联系自助游，反正景区也不大，不会迷路的', '2013-07-12', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4353', '136*****666', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '网上订的票，自己开车去，路很好，人不是很多，空气很好 ，玩的不错！', '2014-02-06', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4354', '155*****805', 'member/face/2015/07/22/15/zr4Ta9.jpg', '好评; 有用:(0)', '很不错，爬山使人心情舒畅，但是，出口那就不是很好，太商业化，很绕。', '2015-07-22', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4355', '苗苗老爸', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '老人和孩子在现场买票入园，但还要交电瓶车钱和基金，加起来还不如我们在网上团购的便宜，不错', '2015-02-21', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4356', '130ymnsq138', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '中评; 有用:(0)', '顺路来的景点，超乎想象般美好！空气清新建筑独特，很值得来！', '2015-04-09', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4357', '139*****065', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '文**峰盘古文化旅游区我觉得是一个绝对值得去的地方，景区无论是植被还是人文景观都是很棒的。', '2013-02-12', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4358', '85C3106B33F626F8', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '还不错，和家里老人小孩一起去的，景色很美，建议早上早点去，中午12点后就太热了。', '2015-02-24', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4359', '136*****806', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '文**峰的景色很好，而且文化氛围浓郁，是一个体验道教，清心，安静的一个好地方', '2014-03-17', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4360', 'D693E70A3BB5E0A5', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '不错，就养生餐和缆车不好，养生餐离景点比较远，景区小，走就可以了，不需要坐缆车', '2015-04-19', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4361', '159*****120', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '不错哦！我这次去海南没有参加旅游团，自己玩更自由，通过同程订票方便又有优惠，会继续使用的～', '2013-02-17', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4362', '152*****897', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '宗教文化很浓厚，建筑很有特点景色很清新，比较安静，是个养心的好地方', '2014-05-07', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4363', '133*****789', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '文**峰景色怡人，登楼梯时还有优美舒心的佛乐，已经是第二次来了。文**峰值得游玩。', '2014-03-06', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4364', '155*****992', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '百闻不如一见，文**峰风景很漂亮，文化底蕴深厚，景区很干净，物超所值。', '2014-03-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4365', '136*****077', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '早就听说文**峰，景色不错，今天终于准备去了，好激动', '2014-03-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4366', 'EC999CC919252F50', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '文**峰环境不错，清洁卫生好，天气也好，不错的一次旅游!', '2015-01-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4367', '189*****917', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '景点工作人员服务态度很好，很耐心，也很热情，有特殊要求也能满足我们', '2014-09-30', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4368', '同程会员_F3370471832', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '中评; 有用:(0)', '今天去景点刚好下雨☔️，还是诚心拜佛，景色优美，环境优美！', '2016-08-20', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4370', '137*****578', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '中评; 有用:(0)', '景区商业化比较浓重，道家文化介绍得少，风景还行，适合短途小游', '2014-06-16', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4371', '138****3070', '//upload.17u.com/uploadfile/2015/03/29/7/201503290215239646982.jpg', '好评; 有用:(0)', '很好的道教文化主题景区，时间匆忙，下回再好好一游。', '2016-04-09', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4373', '139****0763', '//upload.17u.com/uploadfile/2005/11/08/2/boy.gif', '好评; 有用:(0)', '还是很合算的，信则有不信则无嘛', '2015-08-19', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4374', '15501811196', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '中评; 有用:(0)', '一个很值得推荐的地方', '2015-04-12', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4375', '131*****245', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '很壮观 大气 值得一游', '2012-10-31', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4376', '138*****537', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '期望大家有时间去玩！', '2013-10-02', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4377', '133*****537', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '景区很干净，游人不多，景致也好。', '2012-10-12', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4378', '136*****960', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '景区很不错。很安静。在山上的空气也非常棒。', '2012-12-09', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4379', '136*****160', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '不错的景点，跟家人一块运动运动', '2014-10-04', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4380', '155****8108', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '非常满意，态度好，服务好', '2015-10-02', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4381', '188****7085', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '还不错，风景也美，困境也好，而且……', '2016-05-20', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4382', '186*****478', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '爬山，游览，拜佛。天气有点热，但是很值得。', '2012-10-12', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4383', '同程会员_D4C625525FC', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '非常方便，优惠幅度很大，我用海南当地身份证，还要61元，而这里只要42元！', '2016-11-13', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4384', '151****0707', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '差评; 有用:(0)', '没有什么可看的，就是一个简单的爬山而已，不值这个价钱', '2015-10-07', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4386', '159*****088', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '中评; 有用:(0)', '地方不大，但挺有意义！', '2015-07-27', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4387', '139****8359', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '大年初二来此不错。健康游', '2016-02-09', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4389', '139*****508', '2015/05/22/7/201505220601552441034.jpg', '好评; 有用:(0)', '景点风景优美，服务周到，是周边出游首选。', '2014-04-20', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4390', 'lfcjhq', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '看着象新建的景区，环境不错，是道教景点。', '2015-01-19', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4391', '136*****531', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '景色优美，就是太热了，交通便利！', '2014-06-02', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4392', '187****6929', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '爬山，运动型景点，值得入去', '2016-02-14', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4393', '136*****720', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '景区很大很干净，适合休闲度假，值得一游。', '2014-02-02', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4394', '139*****935', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '游玩很开心，这个景点值得推荐给朋友 ', '2014-02-16', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4395', '184****7556', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '风景美，空氣好，值得一游', '2016-06-14', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4397', '139****9844', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '中评; 有用:(0)', '一般般，没啥玩的，不值票价', '2016-02-12', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4398', '6E85E9D561C982FF', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '环境还不错，网上票价还便宜些。', '2015-05-21', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4399', 'danny liu', '//pic3.40017.cn/member/face/2016/08/11/15/tKaYri.jpg', '中评; 有用:(0)', '值得一去，大家玩的很开心…', '2015-04-12', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4401', '136*****817', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '还不错。环境挺好的。交通也方便。', '2014-05-02', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4402', '139*****115', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '很好，预定方便，价格合理', '2014-02-26', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4403', '188****6167', '//pic3.40017.cn/member/face/2015/08/31/14/jNDStn.png', '好评; 有用:(0)', '风景很好，环境很棒！', '2016-05-17', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4404', '186*****972', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '道家道场，风景很美，适宜周末修心修身，好去处。', '2013-09-06', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4405', '139****8747', '//pic3.40017.cn/member/face/2015/07/18/18/jslFTE.jpg', '好评; 有用:(0)', '不错，使用方便，换票也方便', '2016-02-27', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4406', '181*****181', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '具有道教特点的一个景点、空气新鲜、小小山丘、出口离谱', '2014-05-03', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4407', '131*****586', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '简单无需预约，无需预付。', '2014-04-07', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4408', '135*****747', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '蛮有特色的，小山大景色', '2014-03-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4409', '虞枫', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '非常好！值得一游！性价比高！', '2015-02-23', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4410', '186****3051', '//pic3.40017.cn/member/face/2016/03/18/12/W9o6JR.jpg', '好评; 有用:(0)', '挺不错的景点，还送了福，挺好的！', '2016-06-13', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4411', '187*****834', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '很值得去的地方 一路爬上去 空气真心好', '2014-05-13', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4412', '189*****180', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '服务也很好，就象一家人一样', '2014-04-15', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4415', '187*****134', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '很开心，玩的好累，真心赞的', '2014-02-15', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4416', '136*****300', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '还不错，一个人到处逛，啥景点都看了，赞个', '2014-02-17', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4417', '138****0162', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '中评; 有用:(0)', '道教圣地，景一般，但空气好。', '2016-02-13', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4419', '43D4284B68188ADC', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '环境自然空气净化温度适宜', '2015-02-13', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4420', '187*****767', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '景色还不错，空气清新，服务态度较好。', '2014-03-22', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4421', '151*****721', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '取票非常方便、服务员很热情非常耐心', '2014-03-03', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4422', '186*****092', '2014/10/26/7/201410260952232852675.jpg', '好评; 有用:(0)', '计划终究还是赶不上变化，很想去爬山的，可惜还是没去成，呜呜~(>_<)~期待下一次咯', '2014-08-20', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4424', '186*****033', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '难得在海南能看到这么富有人文气息的景点，非常推荐。', '2014-07-26', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4428', '155*****805', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '空气新鲜，环境优雅。赞。', '2014-03-08', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4429', '136****9170', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '真不错，值得一去，同程预约很不错', '2016-02-05', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4430', '137*****075', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '对道教文化感兴趣值得一去', '2013-08-21', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4431', '136*****237', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '带老人小孩坐动车很方便。套票里含中餐，很好！', '2014-02-10', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4432', '182*****710', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '景点不错，用同程网订票取票很快。', '2014-02-28', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4433', '187****6929', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '团购便宜，景点还好，', '2016-02-13', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4434', '186*****095', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '服务不错 空气清新 ', '2014-02-21', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4435', '13891dggauo', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '感觉还是不错的。值得一去。', '2015-02-23', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4436', '186*****627', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '不错，文**峰文化底深，在这里买票很便宜实惠，下次还会再来的', '2014-04-13', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4437', '131*****163', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '这年头都团购了，谁还游击战呀，团购有优势，还不用提前付钱，门口取票。', '2014-04-07', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4438', '152****5954', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '好 快 方便。。。。。。。。。。', '2016-06-23', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4439', '136*****177', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '挺好的 很方便 只需要动手就可以购票 也优惠', '2014-04-28', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4440', '139*****108', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '不错，每年都去，每年都去从这个网上买，超便宜超方便', '2014-09-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4442', '151****8878', '//pic3.40017.cn/member/face/2015/08/31/14/jNDStn.png', '好评; 有用:(0)', '下次带家人一起，空气好', '2015-10-28', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4446', '13862ouqrqj', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '道家文化的游览胜地！', '2015-02-18', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4447', '130****0870', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '方便，省时间！好。。。。。', '2015-11-15', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4448', '同程会员_10A6FB64828', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '出票快！服务态度好！非常赞！感谢同程网', '2016-10-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4449', '156*****637', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '不错，可以走走，感受下道教文化。', '2014-10-02', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4450', '139*****346', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '同程定票真的很方便 快捷。以后还到同程来。', '2014-03-11', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4451', '139*****881', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '很好，网上订票便宜很多', '2014-04-15', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4452', '130*****304', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '时间太紧张了，到了门口没进去。', '2013-02-10', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4453', '139*****243', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '带不同的朋友去过很多次，值得一看。', '2014-05-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4455', '151*****706', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '很快樂，下次我還要去！超級好玩', '2014-02-18', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4456', '158****9992', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '很不错的地方！支持家乡的旅游！', '2016-02-09', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4458', '189*****626', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '没去过的盆友可以去看看，1元不贵。', '2014-08-11', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4459', '同程会员_691A0CE7BA8', '//pic3.40017.cn/member/face/2015/08/27/17/9CS7ZO.png', '好评; 有用:(0)', '团购票比个人票方便很多。', '2016-08-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4460', '13518riqsto', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '定过好多次了，不错的', '2015-01-29', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4461', '135*****846', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '喜欢道教的朋友可以前往参观。', '2013-05-08', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4462', 'AF0C7A2C73548C50', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '中评; 有用:(0)', '里面很大 还行 不过没什么特别的', '2015-02-24', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4463', '134****4468', '//pic3.40017.cn/member/face/2016/04/30/13/bwz6AX.jpg', '好评; 有用:(0)', '计划去，看介绍不错～准备下个月去拍摄', '2016-06-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4464', 'hezongjing', '//upload.17u.com/uploadfile/2014/10/20/7/201410200704227057676.jpg', '好评; 有用:(0)', '非常划算，烧香的好地方。', '2016-07-13', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4465', '185****8688', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '文化气息浓郁，很不错', '2016-01-15', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4466', '151*****117', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '很满意的一次旅行，意头很好步步高升', '2014-02-01', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4467', '189*****178', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '很方便哈！！', '2014-02-16', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4469', 'D062867853A3D4BF', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '还不错、团购很省、以后还会来、', '2015-02-24', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4470', '42A010BE74B76377', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '就是划算，不错很满意.', '2015-04-06', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4471', '152****6155', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '方便快捷，实惠，好，继续努力！', '2016-04-19', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4472', '182*****656', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '公司组织出游滴，感觉不错～', '2014-08-23', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4473', 'B239A62AC529A1D5', '//pic3.40017.cn/member/face/2015/08/27/17/sHIVcY.png', '好评; 有用:(0)', '很好，很满意～～～～～～', '2016-08-22', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4474', '136*****079', '//tcw-public.b0.upaiyun.com/headimg/facedefault.png', '好评; 有用:(0)', '满便宜的，以后就在这定票了', '2014-09-21', '2018-11-02 19:22:59', '21224');
INSERT INTO `tongcheng_wbf` VALUES ('4475', '超级小蚊子', '//pic3.40017.cn/member/face/2017/12/05/16/tcdefault.png', '好评; 有用:(0)', '不错，马上可以兑票成功，方便快捷', '2015-02-19', '2018-11-02 19:22:59', '21224');
