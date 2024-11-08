/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7e4oj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7e4oj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7e4oj`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619156205228 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-23 13:13:24',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-23 13:13:24',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-23 13:13:24',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-23 13:13:24',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-23 13:13:24',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-23 13:13:24',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619156205227,'2021-04-23 13:36:45',1619156104784,'广东省梅州市梅江区江南街道金沙湾国际大酒店-游泳池','刘真','13549636363','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'qichexinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619156241540 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7e4oj/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm7e4oj/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm7e4oj/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussqichexinxi` */

DROP TABLE IF EXISTS `discussqichexinxi`;

CREATE TABLE `discussqichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619156163420 DEFAULT CHARSET=utf8 COMMENT='汽车信息评论表';

/*Data for the table `discussqichexinxi` */

insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-23 13:13:24',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-04-23 13:13:24',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-04-23 13:13:24',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-04-23 13:13:24',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-04-23 13:13:24',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-04-23 13:13:24',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619155087862,'2021-04-23 13:18:07',31,1619155060944,'1','什么情况','什么？');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619156163419,'2021-04-23 13:36:03',31,1619156104784,'2','车子有碰撞吗',NULL);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-04-23 13:13:24',1,'用户名1','留言内容1','测试');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (92,'2021-04-23 13:13:24',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (94,'2021-04-23 13:13:24',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (95,'2021-04-23 13:13:24',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (96,'2021-04-23 13:13:24',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619156049562 DEFAULT CHARSET=utf8 COMMENT='汽车资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-23 13:13:24','标题1','简介1','http://localhost:8080/ssm7e4oj/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (82,'2021-04-23 13:13:24','标题2','简介2','http://localhost:8080/ssm7e4oj/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (83,'2021-04-23 13:13:24','标题3','简介3','http://localhost:8080/ssm7e4oj/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (85,'2021-04-23 13:13:24','标题5','简介5','http://localhost:8080/ssm7e4oj/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (86,'2021-04-23 13:13:24','标题6','简介6','http://localhost:8080/ssm7e4oj/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619156049561,'2021-04-23 13:34:09','新车上架','新车上架 ','http://localhost:8080/ssm7e4oj/upload/1619156030686.jpg','<p>准新车  测试</p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'qichexinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619156246540 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619156215481,'2021-04-23 13:36:55','202142313365339372123','qichexinxi',1619156104784,31,'','http://localhost:8080/ssm7e4oj/upload/qichexinxi_tupian1.jpg',1,99000,99000,99000,99000,1,'未支付','广东省梅州市梅江区江南街道金沙湾国际大酒店-游泳池','13549636363','刘真');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619156246539,'2021-04-23 13:37:26','202142313372397201665','qichexinxi',1619156104784,31,'','http://localhost:8080/ssm7e4oj/upload/qichexinxi_tupian1.jpg',1,99000,99000,99000,99000,1,'已支付','广东省梅州市梅江区江南街道金沙湾国际大酒店-游泳池','13549636363','刘真');

/*Table structure for table `qichepinpai` */

DROP TABLE IF EXISTS `qichepinpai`;

CREATE TABLE `qichepinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619155847327 DEFAULT CHARSET=utf8 COMMENT='汽车品牌';

/*Data for the table `qichepinpai` */

insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (21,'2021-04-23 13:13:24','宝马');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (22,'2021-04-23 13:13:24','奔驰');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (23,'2021-04-23 13:13:24','汽车品牌3');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (24,'2021-04-23 13:13:24','斯巴鲁');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (26,'2021-04-23 13:13:24','汽车品牌6');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (1619155847326,'2021-04-23 13:30:47','丰田');

/*Table structure for table `qichexinxi` */

DROP TABLE IF EXISTS `qichexinxi`;

CREATE TABLE `qichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  `chexi` varchar(200) NOT NULL COMMENT '车系',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpaishijian` varchar(200) NOT NULL COMMENT '上牌时间',
  `biaoxianlicheng` varchar(200) NOT NULL COMMENT '表显里程',
  `paifangbiaozhun` varchar(200) DEFAULT NULL COMMENT '排放标准',
  `biansuxiang` varchar(200) DEFAULT NULL COMMENT '变速箱',
  `pailiang` varchar(200) DEFAULT NULL COMMENT '排量',
  `guohu` varchar(200) DEFAULT NULL COMMENT '过户',
  `xiangxixinxi` longtext COMMENT '详细信息',
  `lianxifangshi` varchar(200) NOT NULL COMMENT '联系方式',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619155907431 DEFAULT CHARSET=utf8 COMMENT='汽车信息';

/*Data for the table `qichexinxi` */

insert  into `qichexinxi`(`id`,`addtime`,`qichepinpai`,`chexi`,`tupian`,`shangpaishijian`,`biaoxianlicheng`,`paifangbiaozhun`,`biansuxiang`,`pailiang`,`guohu`,`xiangxixinxi`,`lianxifangshi`,`dizhi`,`ispay`,`thumbsupnum`,`crazilynum`,`price`) values (31,'2021-04-23 13:13:24','汽车品牌3','斯巴鲁','http://localhost:8080/ssm7e4oj/upload/qichexinxi_tupian1.jpg','2020.7','56000','国五','自动','2.0','0','<p>车况 图片</p>','13596963636','广东深圳','未支付',1,1,99000);
insert  into `qichexinxi`(`id`,`addtime`,`qichepinpai`,`chexi`,`tupian`,`shangpaishijian`,`biaoxianlicheng`,`paifangbiaozhun`,`biansuxiang`,`pailiang`,`guohu`,`xiangxixinxi`,`lianxifangshi`,`dizhi`,`ispay`,`thumbsupnum`,`crazilynum`,`price`) values (32,'2021-04-23 13:13:24','奔驰','E300','http://localhost:8080/ssm7e4oj/upload/qichexinxi_tupian2.jpg','2020.7','20000','国六','手自一体','3.0','1','<p>测试</p>','13596963636','广东','未支付',2,2,800000);
insert  into `qichexinxi`(`id`,`addtime`,`qichepinpai`,`chexi`,`tupian`,`shangpaishijian`,`biaoxianlicheng`,`paifangbiaozhun`,`biansuxiang`,`pailiang`,`guohu`,`xiangxixinxi`,`lianxifangshi`,`dizhi`,`ispay`,`thumbsupnum`,`crazilynum`,`price`) values (33,'2021-04-23 13:13:24','汽车品牌3','车系3','http://localhost:8080/ssm7e4oj/upload/qichexinxi_tupian3.jpg','上牌时间3','表显里程3','国一','手动','排量3','过户3','详细信息3','联系方式3','地址3','未支付',3,3,99.9);
insert  into `qichexinxi`(`id`,`addtime`,`qichepinpai`,`chexi`,`tupian`,`shangpaishijian`,`biaoxianlicheng`,`paifangbiaozhun`,`biansuxiang`,`pailiang`,`guohu`,`xiangxixinxi`,`lianxifangshi`,`dizhi`,`ispay`,`thumbsupnum`,`crazilynum`,`price`) values (34,'2021-04-23 13:13:24','汽车品牌4','车系4','http://localhost:8080/ssm7e4oj/upload/qichexinxi_tupian4.jpg','上牌时间4','表显里程4','国一','手动','排量4','过户4','详细信息4','联系方式4','地址4','未支付',4,4,99.9);
insert  into `qichexinxi`(`id`,`addtime`,`qichepinpai`,`chexi`,`tupian`,`shangpaishijian`,`biaoxianlicheng`,`paifangbiaozhun`,`biansuxiang`,`pailiang`,`guohu`,`xiangxixinxi`,`lianxifangshi`,`dizhi`,`ispay`,`thumbsupnum`,`crazilynum`,`price`) values (35,'2021-04-23 13:13:24','汽车品牌5','车系5','http://localhost:8080/ssm7e4oj/upload/qichexinxi_tupian5.jpg','上牌时间5','表显里程5','国一','手动','排量5','过户5','详细信息5','联系方式5','地址5','未支付',5,5,99.9);
insert  into `qichexinxi`(`id`,`addtime`,`qichepinpai`,`chexi`,`tupian`,`shangpaishijian`,`biaoxianlicheng`,`paifangbiaozhun`,`biansuxiang`,`pailiang`,`guohu`,`xiangxixinxi`,`lianxifangshi`,`dizhi`,`ispay`,`thumbsupnum`,`crazilynum`,`price`) values (36,'2021-04-23 13:13:24','汽车品牌6','车系6','http://localhost:8080/ssm7e4oj/upload/qichexinxi_tupian6.jpg','上牌时间6','表显里程6','国一','手动','排量6','过户6','详细信息6','联系方式6','地址6','未支付',6,6,99.9);
insert  into `qichexinxi`(`id`,`addtime`,`qichepinpai`,`chexi`,`tupian`,`shangpaishijian`,`biaoxianlicheng`,`paifangbiaozhun`,`biansuxiang`,`pailiang`,`guohu`,`xiangxixinxi`,`lianxifangshi`,`dizhi`,`ispay`,`thumbsupnum`,`crazilynum`,`price`) values (1619155907430,'2021-04-23 13:31:46','宝马','三系','http://localhost:8080/ssm7e4oj/upload/1619155875970.jpg','2020.3','1000','国六','自动','2.0T','0','<p>测试</p>','1356969696','广东','未支付',0,0,30000);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','315gxdugnbyf9io594rg7s0v4jmftfq5','2021-04-23 13:15:20','2021-04-23 14:30:37');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619155060944,'1','yonghuxinxi','用户信息','7kb4wpq39xj91xscrz0qbldzflr996x0','2021-04-23 13:17:47','2021-04-23 14:17:47');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619156104784,'2','yonghuxinxi','用户信息','ct7a8464zyx72lsr477eyie1fsmo6yo7','2021-04-23 13:35:09','2021-04-23 14:35:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-23 13:13:24');

/*Table structure for table `yonghuxinxi` */

DROP TABLE IF EXISTS `yonghuxinxi`;

CREATE TABLE `yonghuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `youxiang` varchar(200) NOT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619156104785 DEFAULT CHARSET=utf8 COMMENT='用户信息';

/*Data for the table `yonghuxinxi` */

insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`dizhi`,`youxiang`,`money`) values (11,'2021-04-23 13:13:24','用户信息1','123456','姓名1','男','13823888881','地址1','773890001@qq.com',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`dizhi`,`youxiang`,`money`) values (12,'2021-04-23 13:13:24','用户信息2','123456','姓名2','男','13823888882','地址2','773890002@qq.com',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`dizhi`,`youxiang`,`money`) values (13,'2021-04-23 13:13:24','用户信息3','123456','姓名3','男','13823888883','地址3','773890003@qq.com',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`dizhi`,`youxiang`,`money`) values (14,'2021-04-23 13:13:24','用户信息4','123456','姓名4','男','13823888884','地址4','773890004@qq.com',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`dizhi`,`youxiang`,`money`) values (15,'2021-04-23 13:13:24','用户信息5','123456','姓名5','男','13823888885','地址5','773890005@qq.com',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`dizhi`,`youxiang`,`money`) values (16,'2021-04-23 13:13:24','用户信息6','123456','姓名6','男','13823888886','地址6','773890006@qq.com',100);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`dizhi`,`youxiang`,`money`) values (1619155060944,'2021-04-23 13:17:40','1','1','1',NULL,'13549061881','广东','13549061881@139.com',0);
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`dizhi`,`youxiang`,`money`) values (1619156104784,'2021-04-23 13:35:04','2','2','2','男','13579696969','广东','13579696969@139.com',601000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
