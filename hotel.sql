/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50632
Source Host           : localhost:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2016-11-02 10:27:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_area
-- ----------------------------
DROP TABLE IF EXISTS `t_area`;
CREATE TABLE `t_area` (
  `Id` varchar(50) NOT NULL,
  `ParentId` varchar(50) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL ,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL，
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_area
-- ----------------------------
INSERT INTO `t_area` VALUES ('1', '0', '湖南省', null, '鸣人', '2016-10-13 18:12:32', null, null, null, null, '2016-10-13 18:12:35');
INSERT INTO `t_area` VALUES ('10', '0', '江苏省', null, '鸣人', '2016-10-13 18:20:07', null, null, null, null, '2016-10-13 18:20:08');
INSERT INTO `t_area` VALUES ('11', '0', '湖北省', null, '鸣人', '2016-10-13 18:20:31', null, null, null, null, '2016-10-13 18:20:33');
INSERT INTO `t_area` VALUES ('12', '0', '江西省', null, '鸣人', '2016-10-13 18:20:53', null, null, null, null, '2016-10-13 18:20:56');
INSERT INTO `t_area` VALUES ('13', '0', '浙江省', null, '鸣人', '2016-10-13 18:21:24', null, null, null, null, '2016-10-13 18:21:26');
INSERT INTO `t_area` VALUES ('14', '0', '广东省', null, '鸣人', '2016-10-13 18:21:47', null, null, null, null, '2016-10-13 18:21:52');
INSERT INTO `t_area` VALUES ('15', '0', '云南省', null, '鸣人', '2016-10-13 18:22:12', null, null, null, null, '2016-10-13 18:22:14');
INSERT INTO `t_area` VALUES ('16', '0', '福建省', null, '鸣人', '2016-10-13 18:22:48', null, null, null, null, '2016-10-13 18:22:50');
INSERT INTO `t_area` VALUES ('17', '0', '台湾省', null, '鸣人', '2016-10-13 18:23:20', null, null, null, null, '2016-10-13 18:23:22');
INSERT INTO `t_area` VALUES ('18', '0', '海南省', null, '鸣人', '2016-10-13 18:23:49', null, null, null, null, '2016-10-13 18:23:51');
INSERT INTO `t_area` VALUES ('19', '0', '陕西省', null, '鸣人', '2016-10-13 18:24:21', null, null, null, null, '2016-10-13 18:24:23');
INSERT INTO `t_area` VALUES ('2', '0', '河北省', null, '鸣人', '2016-10-13 18:13:05', null, null, null, null, '2016-10-13 18:13:07');
INSERT INTO `t_area` VALUES ('20', '0', '山西省', null, '鸣人', '2016-10-13 18:25:02', null, null, null, null, '2016-10-13 18:25:04');
INSERT INTO `t_area` VALUES ('21', '0', '四川省', null, '鸣人', '2016-10-13 18:25:52', null, null, null, null, '2016-10-13 18:25:54');
INSERT INTO `t_area` VALUES ('22', '0', '贵州省', null, '鸣人', '2016-10-13 18:26:15', null, null, null, null, '2016-10-13 18:26:17');
INSERT INTO `t_area` VALUES ('23', '0', '安徽省', null, '鸣人', '2016-10-13 18:26:34', null, null, null, null, '2016-10-13 18:26:36');
INSERT INTO `t_area` VALUES ('24', '1', '长沙市', null, '鸣人', '2016-10-13 18:29:01', null, null, null, null, '2016-10-13 18:29:04');
INSERT INTO `t_area` VALUES ('25', '0', '吉首市', null, '鸣人', '2016-10-13 19:12:52', null, null, null, null, '2016-10-13 19:12:54');
INSERT INTO `t_area` VALUES ('26', '1', '耒阳市', null, '鸣人', '2016-10-19 08:26:28', null, null, null, null, '2016-10-19 08:26:30');
INSERT INTO `t_area` VALUES ('27', '3', '济南市', null, 'admin', '2016-10-23 14:49:18', null, null, null, null, '2016-10-23 14:49:20');
INSERT INTO `t_area` VALUES ('28', '3', '青岛市', null, 'admin', '2016-10-23 14:58:25', null, null, null, null, '2016-10-23 14:58:27');
INSERT INTO `t_area` VALUES ('29', '3', '枣庄市', null, 'admin', '2016-10-23 14:59:28', null, null, null, null, '2016-10-23 14:59:28');
INSERT INTO `t_area` VALUES ('3', '0', '山东省', null, '鸣人', '2016-10-13 18:13:29', null, null, null, null, '2016-10-13 18:13:31');
INSERT INTO `t_area` VALUES ('30', '1', '张家界市', null, 'admin', '2016-10-24 14:13:40', null, null, null, null, '2016-10-24 14:13:40');
INSERT INTO `t_area` VALUES ('4', '0', '辽宁省', null, '鸣人', '2016-10-13 18:13:51', null, null, null, null, '2016-10-13 18:13:53');
INSERT INTO `t_area` VALUES ('5', '0', '黑龙江省', null, '鸣人', '2016-10-13 18:15:14', null, null, null, null, '2016-10-13 18:15:21');
INSERT INTO `t_area` VALUES ('6', '0', '吉林省', null, '鸣人', '2016-10-13 18:18:29', null, null, null, null, '2016-10-13 18:18:31');
INSERT INTO `t_area` VALUES ('7', '0', '甘肃省', null, '鸣人', '2016-10-13 18:18:51', null, null, null, null, '2016-10-13 18:18:53');
INSERT INTO `t_area` VALUES ('8', '0', '青海省', null, '鸣人', '2016-10-13 18:19:17', null, null, null, null, '2016-10-13 18:19:19');
INSERT INTO `t_area` VALUES ('9', '0', '河南省', null, '鸣人', '2016-10-13 18:19:42', null, null, null, null, '2016-10-13 18:19:44');

-- ----------------------------
-- Table structure for t_areaarticle
-- ----------------------------
DROP TABLE IF EXISTS `t_areaarticle`;
CREATE TABLE `t_areaarticle` (
  `Id` varchar(50) NOT NULL,
  `Title` varchar(1024) NOT NULL,
  `Content` text NOT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `AreaId` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AreaId` (`AreaId`),
  CONSTRAINT `t_areaarticle_ibfk_1` FOREIGN KEY (`AreaId`) REFERENCES `t_area` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_areaarticle
-- ----------------------------
INSERT INTO `t_areaarticle` VALUES ('2dd93b1215e540b7acc0763bbfc33756', '我的天', '<p>你 可以吗<br/></p>', null, '超管', '2016-10-27 13:55:49', null, null, null, null, '2016-10-27 13:55:49', '15');
INSERT INTO `t_areaarticle` VALUES ('61b0cd0a37b445e5b02c9684fe35b45e', '加油', '<p>hihijjkjmk</p><p><br/></p>', null, '超管', '2016-10-24 18:27:09', 'admin', '2016-10-26 16:33:17', null, null, '2016-10-26 16:33:17', '1');
INSERT INTO `t_areaarticle` VALUES ('7d1cf0d9a02e4ac3a1b938c30fadca00', 'gdgtrh', '<p>htrdhstr<br/></p>', null, '超管', '2016-10-26 16:31:51', null, null, null, null, '2016-10-26 16:31:51', '13');
INSERT INTO `t_areaarticle` VALUES ('a44e82e281aa452f8fa7785223539099', '和嘿嘿', '<p>你说是吗</p><p><br/></p><p><br/></p><p><br/></p>', null, '超管', '2016-10-24 18:28:42', 'admin', '2016-10-24 21:52:25', null, null, '2016-10-24 21:52:25', '26');
INSERT INTO `t_areaarticle` VALUES ('c9ff9808fe11445191c5bb008e936cf8', '<h2 style=\"text-center; font-weight: bold;\">耒阳</h2>', '<p><br/></p><p><br/></p><!--StartFragment--><div class=\"para\" style=\"font-size: 14px;\">耒阳市位于<a target=\"_blank\" href=\"http://baike.baidu.com/subview/9019/13479761.htm\" style=\"color: rgb(19, 110, 194);\">衡阳</a>市南部，<a target=\"_blank\" href=\"http://baike.baidu.com/view/207953.htm\" style=\"color: rgb(19, 110, 194);\">五岭</a>山脉北面，东北邻<a target=\"_blank\" href=\"http://baike.baidu.com/view/367677.htm\" style=\"color: rgb(19, 110, 194);\">安仁</a>县，东南及南面连<a target=\"_blank\" href=\"http://baike.baidu.com/view/623784.htm\" style=\"color: rgb(19, 110, 194);\">永兴县</a>，西南角与<a target=\"_blank\" href=\"http://baike.baidu.com/view/993468.htm\" style=\"color: rgb(19, 110, 194);\">桂阳县</a>接壤，西临<a target=\"_blank\" href=\"http://baike.baidu.com/view/5569074.htm\" style=\"color: rgb(19, 110, 194);\">舂陵水</a>与<a target=\"_blank\" href=\"http://baike.baidu.com/view/589256.htm\" style=\"color: rgb(19, 110, 194);\">常宁市</a>隔河相望，北界<a target=\"_blank\" href=\"http://baike.baidu.com/view/282319.htm\" style=\"color: rgb(19, 110, 194);\">衡南县</a>。耒阳市区现建成区面积50平方公里。素有“<a target=\"_blank\" href=\"http://baike.baidu.com/view/1161499.htm\" style=\"color: rgb(19, 110, 194);\">荆楚</a>名区”、“<a target=\"_blank\" href=\"http://baike.baidu.com/view/598800.htm\" style=\"color: rgb(19, 110, 194);\">三湘</a>古邑”的美称。是湖南省市区面积最大的县级城市、国家级<a target=\"_blank\" href=\"http://baike.baidu.com/subview/300215/5081737.htm\" style=\"color: rgb(19, 110, 194);\">杂交水稻</a>制种基地、中国<a target=\"_blank\" href=\"http://baike.baidu.com/subview/9812/5369968.htm\" style=\"color: rgb(19, 110, 194);\">油茶</a>之乡。<sup style=\"font-size: 12px;\">[1]</sup><a class=\"sup-anchor\" style=\"font-size: 0px;\"> </a></div><div class=\"para\" style=\"font-size: 14px;\">耒阳为中国四大发明之首<a target=\"_blank\" href=\"http://baike.baidu.com/view/1266.htm\" style=\"color: rgb(19, 110, 194);\">造纸术</a>发明家<a target=\"_blank\" href=\"http://baike.baidu.com/subview/5708/6071154.htm\" style=\"color: rgb(19, 110, 194);\">蔡伦</a>的故乡，具有2200多年的历史，因地处<a target=\"_blank\" href=\"http://baike.baidu.com/view/852284.htm\" style=\"color: rgb(19, 110, 194);\">耒水</a>北岸而得名。<sup style=\"font-size: 12px;\">[2]</sup><a class=\"sup-anchor\" style=\"font-size: 0px;\"> </a></div><div class=\"para\" style=\"font-size: 14px;\">2015年9月，《湖南省国土资源厅推进省直管县经济体制改革试点实施方案》出台。根据《方案》，耒阳市成为湖南国土资源省直管县经济体制改革试点县（市）。<sup style=\"font-size: 12px;\">[3]</sup><a class=\"sup-anchor\" style=\"font-size: 0px;\"> </a></div><!--EndFragment--><p><br/></p><p><br/></p>', null, '超管', '2016-10-24 16:51:12', null, null, null, null, '2016-10-24 16:51:12', '26');
INSERT INTO `t_areaarticle` VALUES ('cb4e19883bbf42c48cd1e12a07d37700', '雨还在下', ' <p><br/></p><p>你让步alalaa<br/></p>', null, '超管', '2016-10-24 18:27:23', 'admin', '2016-10-27 13:55:14', null, null, '2016-10-27 13:55:14', '1');
INSERT INTO `t_areaarticle` VALUES ('da5e919be03d4fbaaa0f4ed35693522d', '嘻嘻嘻嘻', '<p><br/></p><p><br/></p><p>我是 <br/></p><p>000000000000000<br/></p><p><br/></p><p>罗</p><p> <br/></p>', null, '超管', '2016-10-24 18:27:30', 'zjjadmin', '2016-10-27 14:11:52', null, null, '2016-10-27 14:11:52', '24');

-- ----------------------------
-- Table structure for t_areaphoto
-- ----------------------------
DROP TABLE IF EXISTS `t_areaphoto`;
CREATE TABLE `t_areaphoto` (
  `Id` varchar(50) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `AreaId` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Url` (`Url`),
  KEY `AreaId` (`AreaId`),
  CONSTRAINT `t_areaphoto_ibfk_1` FOREIGN KEY (`AreaId`) REFERENCES `t_area` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_areaphoto
-- ----------------------------
INSERT INTO `t_areaphoto` VALUES ('344f1c802ac4412280209402db839f1d', 'http://of8rkrh1w.bkt.clouddn.com/2016/9/26/1477471673486E-R.png', null, '超管', '2016-10-26 16:47:55', null, null, null, null, '2016-10-26 16:47:55', '30');
INSERT INTO `t_areaphoto` VALUES ('6cde604ad7284f1d84be929085a5578a', 'http://of8rkrh1w.bkt.clouddn.com/2016/9/27/1477548731700mybatis.png', null, '地管1', '2016-10-27 14:12:13', null, null, null, null, '2016-10-27 14:12:13', '30');
INSERT INTO `t_areaphoto` VALUES ('6db194784c124187b03034f61f870e15', 'http://of8rkrh1w.bkt.clouddn.com/2016/9/24/1477292785102334H.jpg', null, '超管', '2016-10-24 15:06:31', null, null, null, null, '2016-10-24 15:06:31', '24');
INSERT INTO `t_areaphoto` VALUES ('79cadc09823f4ac79e822ca7d2ca6b21', 'http://of8rkrh1w.bkt.clouddn.com/2016/9/24/1477292594288zjj-2.jpg', null, '超管', '2016-10-24 15:03:14', null, null, null, null, '2016-10-24 15:03:14', '30');

-- ----------------------------
-- Table structure for t_authorization
-- ----------------------------
DROP TABLE IF EXISTS `t_authorization`;
CREATE TABLE `t_authorization` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `UserRoleId` varchar(50) NOT NULL,
  `AreaId` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserRoleId` (`UserRoleId`),
  KEY `AreaId` (`AreaId`),
  CONSTRAINT `t_authorization_ibfk_1` FOREIGN KEY (`UserRoleId`) REFERENCES `t_userrole` (`Id`),
  CONSTRAINT `t_authorization_ibfk_2` FOREIGN KEY (`AreaId`) REFERENCES `t_area` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_authorization
-- ----------------------------
INSERT INTO `t_authorization` VALUES ('2', null, '小63', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '0046c8a1a7404c459d0542759c45e47c', '22');
INSERT INTO `t_authorization` VALUES ('3', null, '小18', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '039c1cda57c7496ba98d96e09a842293', '25');
INSERT INTO `t_authorization` VALUES ('4', null, '小xiao21', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '046a80530d0841168ae5cdc7b1d9e50d', '13');
INSERT INTO `t_authorization` VALUES ('5', null, '小xiao33', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '065bd3e2bb5a4f34b7fa2649178d3d71', '1');
INSERT INTO `t_authorization` VALUES ('6', null, '小3', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '08b48f6cd71246be9dc1cb547910f537', '3');
INSERT INTO `t_authorization` VALUES ('7', null, '小11', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '0b37cfa0e1174e1baf5a686b409b29c6', '5');
INSERT INTO `t_authorization` VALUES ('8', null, '小97', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '0ce69ace009945b7bb17fbb7a0c83eb0', '15');
INSERT INTO `t_authorization` VALUES ('9', null, '小xiao37', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0d06c1beccb84815ad1772f14012140c', '20');
INSERT INTO `t_authorization` VALUES ('10', null, '小xiao10', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', '0d52b8e645014459a1e1db74c04b0b12', '3');
INSERT INTO `t_authorization` VALUES ('11', null, '小38', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '0d944254d3234c3094a022ccfd6edc33', '3');
INSERT INTO `t_authorization` VALUES ('12', null, '小83', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '0f8f431b65904a7994c782e3ee39e2cb', '5');
INSERT INTO `t_authorization` VALUES ('13', null, '小49', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '167808bfa3644321a65ebd5edcf52500', '20');
INSERT INTO `t_authorization` VALUES ('14', null, '小94', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '16bfd25f457c4544bd06419f42de9d79', '11');
INSERT INTO `t_authorization` VALUES ('15', null, '小78', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '19cb5729ad3145239c007fc0d226440c', '13');
INSERT INTO `t_authorization` VALUES ('16', null, '小80', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1aa0c67f4bd04a51b5a206c8aca9372a', '15');
INSERT INTO `t_authorization` VALUES ('17', null, '小14', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1abc097c49cd4fbfb10b3e16be261aa7', '23');
INSERT INTO `t_authorization` VALUES ('18', null, '小xiao5', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1d25963c432e4937aa9fc17b378c5726', '21');
INSERT INTO `t_authorization` VALUES ('19', null, '小15', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1e0957f6b9cf4354940e041343d90a3e', '14');
INSERT INTO `t_authorization` VALUES ('20', null, '小xiao38', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1f6c0a4f75274a5991ae76e469885093', '10');
INSERT INTO `t_authorization` VALUES ('21', null, '小xiao39', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '215a85c235684590a9913cc373369388', '14');
INSERT INTO `t_authorization` VALUES ('22', null, '小45', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2271e161e510475c8add5ca45d3e1823', '6');
INSERT INTO `t_authorization` VALUES ('23', null, '小xiao18', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '23a2d81e45224ebaba6018f9a6cf9f1d', '2');
INSERT INTO `t_authorization` VALUES ('24', null, '小90', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '24706047eede4953847f50e8b716a4b1', '26');
INSERT INTO `t_authorization` VALUES ('25', null, '小99', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '26d3ff66469047849d2eb968768276b6', '15');
INSERT INTO `t_authorization` VALUES ('26', null, '小65', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '280c3a8b803b4a84bad98a03cf9e69bf', '2');
INSERT INTO `t_authorization` VALUES ('27', null, '小35', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '281483327f144fa2a23b6a7720056a27', '17');
INSERT INTO `t_authorization` VALUES ('28', null, '小xiao1', '2016-10-22 09:22:49', null, null, null, null, '2016-10-22 09:22:49', '363bdae5b10f40c8abe3b268ea91d017', '18');
INSERT INTO `t_authorization` VALUES ('29', null, '小xiao31', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '36c810765fbf465a804e17b707f29546', '21');
INSERT INTO `t_authorization` VALUES ('30', null, '小6', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '380d177cdc65472c9cd38039a8be4d90', '3');
INSERT INTO `t_authorization` VALUES ('31', null, '小50', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '386f4606faee44ffbb2c72d65d47b28a', '1');
INSERT INTO `t_authorization` VALUES ('32', null, '小xiao25', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '38e83f6fafa349e99d7812bd59ef525c', '19');
INSERT INTO `t_authorization` VALUES ('33', null, '小79', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '395b17db602d48d7b6632cc876563338', '1');
INSERT INTO `t_authorization` VALUES ('34', null, '小xiao19', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '3fbdec21055b493782ce2a6ab6044f55', '14');
INSERT INTO `t_authorization` VALUES ('35', null, '小96', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '424a9df57d8a444786dc7d8cf8da7946', '21');
INSERT INTO `t_authorization` VALUES ('36', null, '小56', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '4871e3a9693a492eb9fe0adda7ac787f', '8');
INSERT INTO `t_authorization` VALUES ('37', null, '小22', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '49b2b3a2db3d4a068d0d3b0addd8d77f', '17');
INSERT INTO `t_authorization` VALUES ('38', null, '小xiao29', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '4a95953bfe6b47dbb9f67320b18cebc4', '7');
INSERT INTO `t_authorization` VALUES ('39', null, '小xiao36', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '4aad7fb02d8740cfb184215d5fc136ca', '10');
INSERT INTO `t_authorization` VALUES ('40', null, '小xiao20', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '4c1b3b63429b4e79ab04ac742c877b08', '10');
INSERT INTO `t_authorization` VALUES ('41', null, '小43', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '51c814204dcc4085aebf37bc528b2642', '3');
INSERT INTO `t_authorization` VALUES ('42', null, '小60', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '537b601a6ec54924866b8df2a71d9293', '16');
INSERT INTO `t_authorization` VALUES ('43', null, '小xiao30', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '53b45b55e6c84f1c80d4e23a99e2977e', '17');
INSERT INTO `t_authorization` VALUES ('44', null, '小42', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '54cc27ce9c514653bf67467aaed37577', '21');
INSERT INTO `t_authorization` VALUES ('45', null, '小66', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '561d9e6fdce94e8a9a08dff4fe2f15d0', '12');
INSERT INTO `t_authorization` VALUES ('46', null, '小87', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '58d9744dbee7439db45508ac1f20645e', '13');
INSERT INTO `t_authorization` VALUES ('47', null, '小52', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '592f5daec8474040aa1c1745ec432e8d', '10');
INSERT INTO `t_authorization` VALUES ('48', null, '小47', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '59fce160317345dfbfeae1779ce493c0', '7');
INSERT INTO `t_authorization` VALUES ('49', null, '小4', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '5abb07a135bb40e4b42871c674f7402b', '19');
INSERT INTO `t_authorization` VALUES ('50', null, '小xiao24', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '61338dd9e2a54347b2a29a2cf89a25da', '24');
INSERT INTO `t_authorization` VALUES ('51', null, '小xiao17', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '64a670d6484346f4bb68e84d01ac1359', '4');
INSERT INTO `t_authorization` VALUES ('52', null, '小34', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6559801f86a940d59bf94c84eef862c2', '4');
INSERT INTO `t_authorization` VALUES ('53', null, '小24', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '66745eeb3f414947bc19079649afb6ba', '6');
INSERT INTO `t_authorization` VALUES ('54', null, '小61', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6b7c011f9765414baba3741bfb32956b', '6');
INSERT INTO `t_authorization` VALUES ('55', null, '小36', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6be4c31b730a4e2eb8a0ed791b09f043', '11');
INSERT INTO `t_authorization` VALUES ('56', null, '小77', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6c53934e0d5e4911b9ae80327611cc24', '19');
INSERT INTO `t_authorization` VALUES ('57', null, '小5', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6cb5bf17b2b5433e9b4328c44328787d', '2');
INSERT INTO `t_authorization` VALUES ('58', null, '小10', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6d27348412bb4223bb4575cbfff87c65', '26');
INSERT INTO `t_authorization` VALUES ('59', null, '小20', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6fbf1cb940a64eeebdf414a8c1cfc7c7', '15');
INSERT INTO `t_authorization` VALUES ('60', null, '小xiao35', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '743020718a7144ff919ec9f5c91cf90e', '11');
INSERT INTO `t_authorization` VALUES ('61', null, '小xiao32', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '7486fa9da5564b0c8b2ed560f0d7a83b', '11');
INSERT INTO `t_authorization` VALUES ('62', null, '小16', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '75e7bc817c654fada65bd2de0b25b6eb', '15');
INSERT INTO `t_authorization` VALUES ('63', null, '小xiao11', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', '7785a1a73a8447eab8130f91ba42d3b8', '14');
INSERT INTO `t_authorization` VALUES ('64', null, '小64', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '79ba02e75818441e80f2088197a0d3fc', '3');
INSERT INTO `t_authorization` VALUES ('65', null, '小12', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '79bad3c7474c404d853f7255d5c0863f', '11');
INSERT INTO `t_authorization` VALUES ('66', null, '小75', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '7a4eeaffe951477885da353c7a32a8d5', '22');
INSERT INTO `t_authorization` VALUES ('67', null, '小31', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '7e7ca8add5cb47498c900492e7941d81', '9');
INSERT INTO `t_authorization` VALUES ('68', null, '小86', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '7ee3cdae2371494aa3042600d9a86794', '13');
INSERT INTO `t_authorization` VALUES ('69', null, '小72', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '8010524fd9204917b01a804426fd7ebd', '18');
INSERT INTO `t_authorization` VALUES ('70', null, '小xiao16', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '871861b22ec64936abe6d9101d101eb0', '6');
INSERT INTO `t_authorization` VALUES ('71', null, '小53', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '8747b09eea014c2e863bc0ad008100ec', '2');
INSERT INTO `t_authorization` VALUES ('72', null, '小44', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '9793bfbbf7c9452b8a6a217a5cdd0e5e', '17');
INSERT INTO `t_authorization` VALUES ('73', null, '小89', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '988b1e3ada1d4d3eac4f3f2eadf2a28f', '18');
INSERT INTO `t_authorization` VALUES ('74', null, '小27', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '9bb2438fd4c0449ba26d74416056ef51', '14');
INSERT INTO `t_authorization` VALUES ('75', null, '小67', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '9dfe7f6b8db244f797b9d541c90be0b9', '3');
INSERT INTO `t_authorization` VALUES ('76', null, '小41', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'a0d095e30f4e4fdc8ea6c66593c3883a', '10');
INSERT INTO `t_authorization` VALUES ('77', null, '小xiao5', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', 'a4038c45a7b745179c83f0cbdc649e77', '7');
INSERT INTO `t_authorization` VALUES ('78', null, '小xiao14', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'a5f8ea9276b7437b95d457dca63c9226', '21');
INSERT INTO `t_authorization` VALUES ('79', null, '小30', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'a69967e119f44e66b52c5237a24c605b', '18');
INSERT INTO `t_authorization` VALUES ('80', null, '小xiao12', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', 'a8d189b37b8545e08925917a4cef7fb2', '4');
INSERT INTO `t_authorization` VALUES ('81', null, '小19', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'aa2deea09c8340829dfc3bee4dfa05c7', '7');
INSERT INTO `t_authorization` VALUES ('82', null, '小29', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'ab645ec4b81242ee90235c70430a736b', '3');
INSERT INTO `t_authorization` VALUES ('83', null, '小92', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'ac072acf611d40198b2ecb903a37bc98', '25');
INSERT INTO `t_authorization` VALUES ('84', null, '小26', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'ac749da2d3f0400f9f102661250b3011', '15');
INSERT INTO `t_authorization` VALUES ('85', null, '小xiao7', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', 'afc80af0d1904e67ab60e93f28a347ed', '23');
INSERT INTO `t_authorization` VALUES ('86', null, '小88', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'b0959ac392a54287bdc43c77870361b2', '18');
INSERT INTO `t_authorization` VALUES ('87', null, '小xiao27', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'b32889051d884f02a26af5388a365813', '11');
INSERT INTO `t_authorization` VALUES ('88', null, '小xiao22', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'bce00b127d364c688e4536ad2999fc14', '6');
INSERT INTO `t_authorization` VALUES ('89', null, '小xiao34', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'bed354aba1e340288ca81c247d54c06a', '3');
INSERT INTO `t_authorization` VALUES ('90', null, '小37', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'c2d8ff4e2cf64bea867375727ccebae0', '3');
INSERT INTO `t_authorization` VALUES ('91', null, '小9', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'c574de8a935a4a8184a92d7577a16caf', '26');
INSERT INTO `t_authorization` VALUES ('92', null, '小95', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'c87d082d538c4f2e8a2f508fa1599828', '18');
INSERT INTO `t_authorization` VALUES ('93', null, '小48', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'cc220206a07948df909c491991536094', '23');
INSERT INTO `t_authorization` VALUES ('94', null, '小25', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'cf4fa26a100945f49f2e6cb27946da80', '18');
INSERT INTO `t_authorization` VALUES ('95', null, '小xiao13', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'd08a0b08a9aa4abf8f3fc2128686b312', '11');
INSERT INTO `t_authorization` VALUES ('96', null, '小58', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'd5032b165be541459d5f17f747ee87e3', '17');
INSERT INTO `t_authorization` VALUES ('97', null, '小1', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'd91a5d1c95e84403bbfc09a930083748', '20');
INSERT INTO `t_authorization` VALUES ('98', null, '小xiao6', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', 'd9d73534632149f5914183fe20d79180', '22');
INSERT INTO `t_authorization` VALUES ('99', null, '小xiao40', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'dd938f4ad351423588e5b03325818840', '12');
INSERT INTO `t_authorization` VALUES ('100', null, '小62', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'df4ca6767e3f46a5afce582cb7fc3d35', '19');
INSERT INTO `t_authorization` VALUES ('101', null, '小70', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'e20e8531b28b4ecf8a6b6617696bc7eb', '26');
INSERT INTO `t_authorization` VALUES ('102', null, '小40', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'e65e879466ee4c16b5da910b0b157407', '2');
INSERT INTO `t_authorization` VALUES ('103', null, '小55', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'e7079a94e312451183e96273af83a9e0', '21');
INSERT INTO `t_authorization` VALUES ('104', null, '小xiao28', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'e9064ae95ee24422a9caeb5c3abbedd3', '10');
INSERT INTO `t_authorization` VALUES ('105', null, '小93', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'f0e64708abb246e2a0c9c503a9bec623', '7');
INSERT INTO `t_authorization` VALUES ('106', null, '小68', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'f18ed8bd523c4079a1b698c139b8a190', '9');
INSERT INTO `t_authorization` VALUES ('107', null, '小xiao26', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'f2f742391f5248048c4d0ae3958e95fd', '11');
INSERT INTO `t_authorization` VALUES ('108', null, '小21', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'f2f8ffd3aded401a9298d49c3d51ef2f', '9');
INSERT INTO `t_authorization` VALUES ('109', null, '小xiao23', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'f3505d595120408aa38bd5651b789403', '2');
INSERT INTO `t_authorization` VALUES ('110', null, '小59', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'f6cd6ae73a574f2db79d666790e2cb66', '15');
INSERT INTO `t_authorization` VALUES ('111', null, '小xiao4', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', 'f70ed6f6373648b5a9760c5281f8d43b', '19');
INSERT INTO `t_authorization` VALUES ('112', null, '小69', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'f8d4bf42b02041c99a8a5f4d228fd9d4', '12');
INSERT INTO `t_authorization` VALUES ('123', '', 'zjjadmin', '2016-10-23 12:16:07', null, null, null, null, '2016-10-23 12:16:10', '0000000000000000000001', '1');
INSERT INTO `t_authorization` VALUES ('125', null, 'jinan', '2016-10-23 15:02:16', null, null, null, null, '2016-10-23 15:02:18', '0000000022222222222222', '10');
INSERT INTO `t_authorization` VALUES ('127', null, 'admin', '2016-10-26 16:36:15', null, null, null, null, '2016-10-26 16:36:15', '0000000000000000000000003333333', '13');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `Id` varchar(50) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `RoomId` varchar(50) NOT NULL,
  `UserId` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `RoomId` (`RoomId`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`RoomId`) REFERENCES `t_room` (`Id`),
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `t_user` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------

-- ----------------------------
-- Table structure for t_commentphoto
-- ----------------------------
DROP TABLE IF EXISTS `t_commentphoto`;
CREATE TABLE `t_commentphoto` (
  `Id` varchar(50) NOT NULL,
  `Url` varchar(50) NOT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `CommentId` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Url` (`Url`),
  KEY `CommentId` (`CommentId`),
  CONSTRAINT `t_commentphoto_ibfk_1` FOREIGN KEY (`CommentId`) REFERENCES `t_comment` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_commentphoto
-- ----------------------------

-- ----------------------------
-- Table structure for t_dicorderstate
-- ----------------------------
DROP TABLE IF EXISTS `t_dicorderstate`;
CREATE TABLE `t_dicorderstate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NodeName` varchar(50) NOT NULL,
  `StateId` tinyint(1) NOT NULL DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `NodeName` (`NodeName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dicorderstate
-- ----------------------------
INSERT INTO `t_dicorderstate` VALUES ('1', '完成', '1', null, 'gees', '2016-10-23 08:25:35', null, null, null, null, '2016-10-23 08:25:40');
INSERT INTO `t_dicorderstate` VALUES ('2', '未完成', '1', null, 'gaa', '2016-10-23 08:26:03', null, null, null, null, '2016-10-23 08:26:06');

-- ----------------------------
-- Table structure for t_dicuserroletype
-- ----------------------------
DROP TABLE IF EXISTS `t_dicuserroletype`;
CREATE TABLE `t_dicuserroletype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NodeName` varchar(50) NOT NULL,
  `StateId` tinyint(1) NOT NULL DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `NodeName` (`NodeName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dicuserroletype
-- ----------------------------
INSERT INTO `t_dicuserroletype` VALUES ('1', '房主', '1', null, '鸣人', '2016-10-13 17:53:31', null, null, null, null, '2016-10-13 17:53:36');
INSERT INTO `t_dicuserroletype` VALUES ('2', '房客', '1', null, '鸣人', '2016-10-13 17:53:53', null, null, null, null, '2016-10-13 17:53:55');
INSERT INTO `t_dicuserroletype` VALUES ('3', '超级管理员', '1', null, '鸣人', '2016-10-13 17:54:19', null, null, null, null, '2016-10-13 17:54:21');
INSERT INTO `t_dicuserroletype` VALUES ('4', '区域管理员', '1', null, '鸣人', '2016-10-13 17:54:36', null, null, null, null, '2016-10-13 17:54:39');

-- ----------------------------
-- Table structure for t_dicuserstate
-- ----------------------------
DROP TABLE IF EXISTS `t_dicuserstate`;
CREATE TABLE `t_dicuserstate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NodeName` varchar(50) NOT NULL,
  `StateId` tinyint(1) NOT NULL DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dicuserstate
-- ----------------------------
INSERT INTO `t_dicuserstate` VALUES ('0', '废弃', '1', null, 'admin', '2016-10-22 09:26:19', null, null, null, null, '2016-10-22 09:26:23');
INSERT INTO `t_dicuserstate` VALUES ('1', '正常', '1', null, 'fsd', '2016-10-21 21:41:52', null, null, null, null, '2016-10-21 21:42:26');
INSERT INTO `t_dicuserstate` VALUES ('2', '冻结', '1', null, 'fsd', '2016-10-21 22:03:49', null, null, null, null, '2016-10-21 22:03:52');
INSERT INTO `t_dicuserstate` VALUES ('3', '异常', '1', null, 'fsd', '2016-10-21 22:04:08', null, null, null, null, '2016-10-21 22:04:13');
INSERT INTO `t_dicuserstate` VALUES ('4', '未知', '1', null, 'admin', '2016-10-22 09:26:15', null, null, null, null, '2016-10-22 09:26:21');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `Id` varchar(50) NOT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `RoomId` varchar(50) NOT NULL,
  `UserId` varchar(50) NOT NULL,
  `OrderStateId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `RoomId` (`RoomId`),
  KEY `UserId` (`UserId`),
  KEY `OrderStateId` (`OrderStateId`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`RoomId`) REFERENCES `t_room` (`Id`),
  CONSTRAINT `t_order_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `t_user` (`Id`),
  CONSTRAINT `t_order_ibfk_3` FOREIGN KEY (`OrderStateId`) REFERENCES `t_dicorderstate` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('13434342', null, 'nona', '2016-10-23 08:32:56', null, null, null, null, '2016-10-23 08:33:00', '3546576', '0d52b8e645014459a1e1db74c04b0b12', '1');
INSERT INTO `t_order` VALUES ('1353454654', null, '战枫', '2016-10-23 08:37:27', null, null, null, null, '2016-10-23 08:37:29', '423534r', '0d52b8e645014459a1e1db74c04b0b12', '1');
INSERT INTO `t_order` VALUES ('142523543', null, '彭辉', '2016-10-23 08:34:23', null, null, null, null, '2016-10-23 08:34:25', '423534r', '0d944254d3234c3094a022ccfd6edc33', '1');
INSERT INTO `t_order` VALUES ('1435454', null, '李嘉欣', '2016-10-23 08:31:54', null, null, null, null, '2016-10-23 08:31:58', '243545', '0d52b8e645014459a1e1db74c04b0b12', '1');
INSERT INTO `t_order` VALUES ('1453531', null, 'naomi', '2016-10-23 08:33:37', null, null, null, null, '2016-10-23 08:33:40', '53464t54', '0d52b8e645014459a1e1db74c04b0b12', '1');
INSERT INTO `t_order` VALUES ('1534534', null, '张三', '2016-10-23 08:27:46', null, null, null, null, '2016-10-23 08:27:49', '25465465', '0ce69ace009945b7bb17fbb7a0c83eb0', '1');
INSERT INTO `t_order` VALUES ('15345431', null, '烈如歌', '2016-10-23 08:36:39', null, null, null, null, '2016-10-23 08:36:41', '243545', '0d06c1beccb84815ad1772f14012140c', '1');
INSERT INTO `t_order` VALUES ('1534645645', null, '苏小涵', '2016-10-23 08:35:09', null, null, null, null, '2016-10-23 08:35:11', '53464t54', '0d52b8e645014459a1e1db74c04b0b12', '1');
INSERT INTO `t_order` VALUES ('23543452', null, '曼夭', '2016-10-23 08:43:17', null, null, null, null, '2016-10-23 08:43:20', '3546576', '0d944254d3234c3094a022ccfd6edc33', '2');
INSERT INTO `t_order` VALUES ('2354365432', null, '楚淡墨', '2016-10-23 08:39:54', null, null, null, null, '2016-10-23 08:39:57', '543546', '0d944254d3234c3094a022ccfd6edc33', '2');
INSERT INTO `t_order` VALUES ('25345321', null, '一笑奈何', '2016-10-23 08:42:32', null, null, null, null, '2016-10-23 08:42:35', '2342123', '0d944254d3234c3094a022ccfd6edc33', '2');
INSERT INTO `t_order` VALUES ('253454', null, '胭脂浓', '2016-10-23 08:38:11', null, null, null, null, '2016-10-23 08:38:14', '25465465', '0d944254d3234c3094a022ccfd6edc33', '2');
INSERT INTO `t_order` VALUES ('25346636', null, '莲绛', '2016-10-23 08:39:14', null, null, null, null, '2016-10-23 08:39:17', '53464t54', '0d944254d3234c3094a022ccfd6edc33', '2');
INSERT INTO `t_order` VALUES ('32536322', null, '微微', '2016-10-23 08:42:01', null, null, null, null, '2016-10-23 08:42:04', '3546576', '0d944254d3234c3094a022ccfd6edc33', '2');
INSERT INTO `t_order` VALUES ('345435221', null, '凤清澜', '2016-10-23 08:41:17', null, null, null, null, '2016-10-23 08:41:20', '543546', '0d944254d3234c3094a022ccfd6edc33', '2');
INSERT INTO `t_order` VALUES ('352354', null, '李倩', '2016-10-23 08:31:00', null, null, null, null, '2016-10-23 08:31:02', '25465465', '0d06c1beccb84815ad1772f14012140c', '1');
INSERT INTO `t_order` VALUES ('353464532', null, '容乐', '2016-10-23 08:44:34', null, null, null, null, '2016-10-23 08:44:36', '423534r', '0d944254d3234c3094a022ccfd6edc33', '2');
INSERT INTO `t_order` VALUES ('35346632', null, '容止', '2016-10-23 08:44:59', null, null, null, null, '2016-10-23 08:45:01', '3546576', '0f8f431b65904a7994c782e3ee39e2cb', '2');
INSERT INTO `t_order` VALUES ('3545463', null, '无忧', '2016-10-23 08:43:43', null, null, null, null, '2016-10-23 08:43:47', '2354654', '0d944254d3234c3094a022ccfd6edc33', '2');
INSERT INTO `t_order` VALUES ('4235345', null, '李四', '2016-10-23 08:30:05', null, null, null, null, '2016-10-23 08:30:07', '53464t54', '0ce69ace009945b7bb17fbb7a0c83eb0', '1');
INSERT INTO `t_order` VALUES ('4546554754', null, '无筹', '2016-10-23 08:45:39', null, null, null, null, '2016-10-23 08:45:43', '3546576', '0d06c1beccb84815ad1772f14012140c', '2');

-- ----------------------------
-- Table structure for t_room
-- ----------------------------
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room` (
  `Id` varchar(50) NOT NULL,
  `RoomName` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Tips` varchar(255) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `UserId` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `t_room_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `t_user` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_room
-- ----------------------------
INSERT INTO `t_room` VALUES ('2342123', '观景居', '223', '美丽', '湖南省张家界市', '提供发票', null, 'etger', '2016-10-22 15:22:30', null, null, null, null, '2016-10-22 15:22:32', '08b48f6cd71246be9dc1cb547910f537');
INSERT INTO `t_room` VALUES ('2354654', '碎玉轩', '266', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'iee', '2016-10-22 15:13:50', null, null, null, null, '2016-10-22 15:13:54', '065bd3e2bb5a4f34b7fa2649178d3d71');
INSERT INTO `t_room` VALUES ('243545', '小草屋', '234', '简洁', '湖南省张家界市', '湖南省张家界市', null, 'gd', '2016-10-22 15:25:13', null, null, null, null, '2016-10-22 15:25:16', '065bd3e2bb5a4f34b7fa2649178d3d71');
INSERT INTO `t_room` VALUES ('2545342', '丛林小屋', '231', '清新宜人', '湖南省张家界市', '提供发票', null, 'ewg', '2016-10-22 15:20:25', null, null, null, null, '2016-10-22 15:20:29', '08b48f6cd71246be9dc1cb547910f537');
INSERT INTO `t_room` VALUES ('25465465', '豪华小宅', '788', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'gew', '2016-10-22 15:15:15', null, null, null, null, '2016-10-22 15:15:18', '039c1cda57c7496ba98d96e09a842293');
INSERT INTO `t_room` VALUES ('3546576', '清风苑', '299', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'ggr', '2016-10-22 15:08:30', null, null, null, null, '2016-10-22 15:08:34', '046a80530d0841168ae5cdc7b1d9e50d');
INSERT INTO `t_room` VALUES ('423534r', '摘星屋', '166', '舒适宜人', '湖南省耒阳市', '提供发票', null, 'wem', '2016-10-22 15:19:16', null, null, null, null, '2016-10-22 15:19:20', '065bd3e2bb5a4f34b7fa2649178d3d71');
INSERT INTO `t_room` VALUES ('53464t54', '温馨小屋', '179', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'woo', '2016-10-22 15:12:46', null, null, null, null, '2016-10-22 15:12:49', '046a80530d0841168ae5cdc7b1d9e50d');
INSERT INTO `t_room` VALUES ('5435443', '望风居', '452', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'nk', '2016-10-22 15:18:09', null, null, null, null, '2016-10-22 15:18:11', '065bd3e2bb5a4f34b7fa2649178d3d71');
INSERT INTO `t_room` VALUES ('543546', '河边小筑', '188', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'sng', '2016-10-22 15:11:36', null, null, null, null, '2016-10-22 15:11:41', '039c1cda57c7496ba98d96e09a842293');

-- ----------------------------
-- Table structure for t_roomphoto
-- ----------------------------
DROP TABLE IF EXISTS `t_roomphoto`;
CREATE TABLE `t_roomphoto` (
  `Id` varchar(50) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `RoomId` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Url` (`Url`),
  KEY `RoomId` (`RoomId`),
  CONSTRAINT `t_roomphoto_ibfk_1` FOREIGN KEY (`RoomId`) REFERENCES `t_room` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_roomphoto
-- ----------------------------

-- ----------------------------
-- Table structure for t_supplies
-- ----------------------------
DROP TABLE IF EXISTS `t_supplies`;
CREATE TABLE `t_supplies` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IsWifi` tinyint(1) NOT NULL DEFAULT '0',
  `IsHot` tinyint(1) NOT NULL DEFAULT '0',
  `IsAriConditioner` tinyint(1) NOT NULL DEFAULT '0',
  `IsIceBox` tinyint(1) NOT NULL DEFAULT '0',
  `IsToiletries` tinyint(1) NOT NULL DEFAULT '0',
  `IsWasher` tinyint(1) NOT NULL DEFAULT '0',
  `IsTelevision` tinyint(1) NOT NULL DEFAULT '0',
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `RoomId` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `RoomId` (`RoomId`),
  CONSTRAINT `t_supplies_ibfk_1` FOREIGN KEY (`RoomId`) REFERENCES `t_room` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_supplies
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `Id` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `RealName` varchar(50) NOT NULL,
  `Sex` varchar(5) NOT NULL,
  `TelPhone` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `UserStateId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserName` (`UserName`),
  UNIQUE KEY `TelPhone` (`TelPhone`),
  UNIQUE KEY `Email` (`Email`),
  KEY `userState_fk` (`UserStateId`),
  CONSTRAINT `userState_fk` FOREIGN KEY (`UserStateId`) REFERENCES `t_dicuserstate` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('00000000000000000000000000', 'admin', '63A9F0EA7BB98050796B649E85481845', '超管', '男', '236565655', 'admin@vip.com', null, 'admin', '2016-10-22 14:21:17', 'admin', '2016-10-26 16:33:44', null, null, '2016-10-22 14:21:23', '1');
INSERT INTO `t_user` VALUES ('00000000000000000000000001', 'zjjadmin', '63A9F0EA7BB98050796B649E85481845', '地管1', '男', '17777777777', 'zjj@vip.com', null, 'zjjadmin', '2016-10-22 14:23:30', null, null, null, null, '2016-10-22 14:23:33', '1');
INSERT INTO `t_user` VALUES ('0000000000000000000000003333333', 'eumji', '63A9F0EA7BB98050796B649E85481845', 'eumji', 'man', '18888888899', '88888@vip.com', null, 'eumji', '2016-10-24 18:18:11', null, null, null, null, '2016-10-24 18:18:14', '1');
INSERT INTO `t_user` VALUES ('0000000000000000222', 'jinan', '63A9F0EA7BB98050796B649E85481845', 'jinan', '女', '1246787666555', '2222@qq.com', null, 'jinan', '2016-10-23 15:03:44', 'jinan', '2016-10-25 21:18:39', null, null, '2016-10-23 15:03:49', '1');
INSERT INTO `t_user` VALUES ('0046c8a1a7404c459d0542759c45e47c', 'test63', '123', '小63', '男', '1357441111163', '12408@qq.com', null, '小63', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('039c1cda57c7496ba98d96e09a842293', 'test18', '123', '小18', '男', '1357441111118', '12363@qq.com', null, '小18', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('046a80530d0841168ae5cdc7b1d9e50d', 'leiyang21', '123', '小xiao21', '女', '1357431111321', '123436@qq.com', null, '小xiao21', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('065bd3e2bb5a4f34b7fa2649178d3d71', 'leiyang33', '123', '小xiao33', '女', '1357431111333', '123448@qq.com', null, '小xiao33', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('08b48f6cd71246be9dc1cb547910f537', 'test3', '123', '小3', '男', '135744111113', '12348@qq.com', null, '小3', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('0b37cfa0e1174e1baf5a686b409b29c6', 'test11', '123', '小11', '男', '1357441111111', '12356@qq.com', null, '小11', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('0ce69ace009945b7bb17fbb7a0c83eb0', 'test97', '123', '小97', '男', '1357441111197', '12442@qq.com', null, '小97', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('0d06c1beccb84815ad1772f14012140c', 'leiyang37', '123', '小xiao37', '女', '1357431111337', '123452@qq.com', null, '小xiao37', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('0d52b8e645014459a1e1db74c04b0b12', 'leiyang10', '123', '小xiao10', '女', '1357431111310', '123425@qq.com', null, '小xiao10', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', '1');
INSERT INTO `t_user` VALUES ('0d944254d3234c3094a022ccfd6edc33', 'test38', '123', '小38', '男', '1357441111138', '12383@qq.com', null, '小38', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('0f8f431b65904a7994c782e3ee39e2cb', 'test83', '123', '小83', '男', '1357441111183', '12428@qq.com', null, '小83', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('167808bfa3644321a65ebd5edcf52500', 'test49', '123', '小49', '男', '1357441111149', '12394@qq.com', null, '小49', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('16bfd25f457c4544bd06419f42de9d79', 'test94', '123', '小94', '男', '1357441111194', '12439@qq.com', null, '小94', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('19cb5729ad3145239c007fc0d226440c', 'test78', '123', '小78', '男', '1357441111178', '12423@qq.com', null, '小78', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('1aa0c67f4bd04a51b5a206c8aca9372a', 'test80', '123', '小80', '男', '1357441111180', '12425@qq.com', null, '小80', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('1abc097c49cd4fbfb10b3e16be261aa7', 'test14', '123', '小14', '男', '1357441111114', '12359@qq.com', null, '小14', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('1d25963c432e4937aa9fc17b378c5726', 'leiyang15', '123', '小xiao15', '女', '1357431111315', '123430@qq.com', null, '小xiao15', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('1e0957f6b9cf4354940e041343d90a3e', 'test15', '123', '小15', '男', '1357441111115', '12360@qq.com', null, '小15', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('1f6c0a4f75274a5991ae76e469885093', 'leiyang38', '123', '小xiao38', '女', '1357431111338', '123453@qq.com', null, '小xiao38', '2016-10-22 09:28:57', 'leiyang38', '2016-10-27 13:57:47', null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('215a85c235684590a9913cc373369388', 'leiyang39', '123', '小xiao39', '女', '1357431111339', '123454@qq.com', null, '小xiao39', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('2271e161e510475c8add5ca45d3e1823', 'test45', '123', '小45', '男', '1357441111145', '12390@qq.com', null, '小45', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('23a2d81e45224ebaba6018f9a6cf9f1d', 'leiyang18', '123', '小xiao18', '女', '1357431111318', '123433@qq.com', null, '小xiao18', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('24706047eede4953847f50e8b716a4b1', 'test90', '123', '小90', '男', '1357441111190', '12435@qq.com', null, '小90', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('26d3ff66469047849d2eb968768276b6', 'test99', '123', '小99', '男', '1357441111199', '12444@qq.com', null, '小99', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('280c3a8b803b4a84bad98a03cf9e69bf', 'test65', '123', '小65', '男', '1357441111165', '12410@qq.com', null, '小65', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('281483327f144fa2a23b6a7720056a27', 'test35', '123', '小35', '男', '1357441111135', '12380@qq.com', null, '小35', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('351c3eb097b3474cb4ef8322de3b4c59', 'zjj025', 'root', '张家界', '男', '13774444444', '4444@qq.com', null, 'admin', '2016-10-25 18:36:49', null, null, null, null, '2016-10-25 18:36:49', '1');
INSERT INTO `t_user` VALUES ('35bb8634e9344860a810dba4087813d3', 'woshicuowude', 'shi', '我是错误的吗', '男', '1234354353', 'awea@ada.com', null, 'admin', '2016-10-25 18:50:46', null, null, null, null, '2016-10-25 18:50:46', '1');
INSERT INTO `t_user` VALUES ('363bdae5b10f40c8abe3b268ea91d017', 'zjj1', '123', '小xiao1', '女', '135743111111', '123456@qq.com', null, '小xiao1', '2016-10-22 09:22:49', null, null, null, null, '2016-10-22 09:22:49', '3');
INSERT INTO `t_user` VALUES ('36c810765fbf465a804e17b707f29546', 'leiyang31', '123', '小xiao31', '女', '1357431111331', '123446@qq.com', null, '小xiao31', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('380d177cdc65472c9cd38039a8be4d90', 'test6', '123', '小6', '男', '135744111116', '12351@qq.com', null, '小6', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('386f4606faee44ffbb2c72d65d47b28a', 'test50', '123', '小50', '男', '1357441111150', '12395@qq.com', null, '小50', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('38e83f6fafa349e99d7812bd59ef525c', 'leiyang25', '123', '小xiao25', '女', '1357431111325', '123440@qq.com', null, '小xiao25', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('395b17db602d48d7b6632cc876563338', 'test79', '123', '小79', '男', '1357441111179', '12424@qq.com', null, '小79', '2016-10-22 07:26:27', 'test79', '2016-10-27 13:58:40', null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('3fbdec21055b493782ce2a6ab6044f55', 'leiyang19', '123', '小xiao19', '女', '1357431111319', '123434@qq.com', null, '小xiao19', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('424a9df57d8a444786dc7d8cf8da7946', 'test96', '123', '小96', '男', '1357441111196', '12441@qq.com', null, '小96', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('4871e3a9693a492eb9fe0adda7ac787f', 'test56', '123', '小56', '男', '1357441111156', '12401@qq.com', null, '小56', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('49b2b3a2db3d4a068d0d3b0addd8d77f', 'test22', '123', '小22', '男', '1357441111122', '12367@qq.com', null, '小22', '2016-10-22 07:26:27', 'test22', '2016-10-26 16:02:32', null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('4a95953bfe6b47dbb9f67320b18cebc4', 'leiyang29', '123', '小xiao29', '女', '1357431111329', '123444@qq.com', null, '小xiao29', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '3');
INSERT INTO `t_user` VALUES ('4aad7fb02d8740cfb184215d5fc136ca', 'leiyang36', '123', '小xiao36', '女', '1357431111336', '123451@qq.com', null, '小xiao36', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('4c1b3b63429b4e79ab04ac742c877b08', 'leiyang20', '123', '小xiao20', '女', '1357431111320', '123435@qq.com', null, '小xiao20', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('51c814204dcc4085aebf37bc528b2642', 'test43', '123', '小43', '男', '1357441111143', '12388@qq.com', null, '小43', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('537b601a6ec54924866b8df2a71d9293', 'test60', '123', '小60', '男', '1357441111160', '12405@qq.com', null, '小60', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('53b45b55e6c84f1c80d4e23a99e2977e', 'leiyang30', '123', '小xiao30', '女', '1357431111330', '123445@qq.com', null, '小xiao30', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '3');
INSERT INTO `t_user` VALUES ('54cc27ce9c514653bf67467aaed37577', 'test42', '123', '小42', '男', '1357441111142', '12387@qq.com', null, '小42', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('561d9e6fdce94e8a9a08dff4fe2f15d0', 'test66', '123', '小66', '男', '1357441111166', '12411@qq.com', null, '小66', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('58d9744dbee7439db45508ac1f20645e', 'test87', '123', '小87', '男', '1357441111187', '12432@qq.com', null, '小87', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('592f5daec8474040aa1c1745ec432e8d', 'test52', '123', '小52', '男', '1357441111152', '12397@qq.com', null, '小52', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('59fce160317345dfbfeae1779ce493c0', 'test47', '123', '小47', '男', '1357441111147', '12392@qq.com', null, '小47', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('5abb07a135bb40e4b42871c674f7402b', 'test4', '123', '小4', '男', '135744111114', '12349@qq.com', null, '小4', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('61338dd9e2a54347b2a29a2cf89a25da', 'leiyang24', '123', '小xiao24', '女', '1357431111324', '123439@qq.com', null, '小xiao24', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '3');
INSERT INTO `t_user` VALUES ('64a670d6484346f4bb68e84d01ac1359', 'leiyang17', '123', '小xiao17', '女', '1357431111317', '123432@qq.com', null, '小xiao17', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '3');
INSERT INTO `t_user` VALUES ('6559801f86a940d59bf94c84eef862c2', 'test34', '123', '小34', '男', '1357441111134', '12379@qq.com', null, '小34', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('66745eeb3f414947bc19079649afb6ba', 'test24', '123', '小24', '男', '1357441111124', '12369@qq.com', null, '小24', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('6b7c011f9765414baba3741bfb32956b', 'test61', '123', '小61', '男', '1357441111161', '12406@qq.com', null, '小61', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('6be4c31b730a4e2eb8a0ed791b09f043', 'test36', '123', '小36', '男', '1357441111136', '12381@qq.com', null, '小36', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('6c53934e0d5e4911b9ae80327611cc24', 'test77', '123', '小77', '男', '1357441111177', '12422@qq.com', null, '小77', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('6cb5bf17b2b5433e9b4328c44328787d', 'test5', '123', '小5', '男', '135744111115', '12350@qq.com', null, '小5', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('6d27348412bb4223bb4575cbfff87c65', 'test10', '123', '小10', '男', '1357441111110', '12355@qq.com', null, '小10', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('6fbf1cb940a64eeebdf414a8c1cfc7c7', 'test20', '123', '小20', '男', '1357441111120', '12365@qq.com', null, '小20', '2016-10-22 07:26:27', 'test20', '2016-10-25 21:00:17', null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('743020718a7144ff919ec9f5c91cf90e', 'leiyang35', '123', '小xiao35', '女', '1357431111335', '123450@qq.com', null, '小xiao35', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('7486fa9da5564b0c8b2ed560f0d7a83b', 'leiyang32', '123', '小xiao32', '女', '1357431111332', '123447@qq.com', null, '小xiao32', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('75e7bc817c654fada65bd2de0b25b6eb', 'test16', '123', '小16', '男', '1357441111116', '12361@qq.com', null, '小16', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('7785a1a73a8447eab8130f91ba42d3b8', 'leiyang11', '123', '小xiao11', '女', '1357431111311', '123426@qq.com', null, '小xiao11', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', '2');
INSERT INTO `t_user` VALUES ('79ba02e75818441e80f2088197a0d3fc', 'test64', '123', '小64', '男', '1357441111164', '12409@qq.com', null, '小64', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('79bad3c7474c404d853f7255d5c0863f', 'test12', '123', '小12', '男', '1357441111112', '12357@qq.com', null, '小12', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('7a4eeaffe951477885da353c7a32a8d5', 'test75', '123', '小75', '男', '1357441111175', '12420@qq.com', null, '小75', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('7e7ca8add5cb47498c900492e7941d81', 'test31', '123', '小31', '男', '1357441111131', '12376@qq.com', null, '小31', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('7ee3cdae2371494aa3042600d9a86794', 'test86', '123', '小86', '男', '1357441111186', '12431@qq.com', null, '小86', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('8010524fd9204917b01a804426fd7ebd', 'test72', '123', '小72', '男', '1357441111172', '12417@qq.com', null, '小72', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('871861b22ec64936abe6d9101d101eb0', 'leiyang16', '123', '小xiao16', '女', '1357431111316', '123431@qq.com', null, '小xiao16', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('8747b09eea014c2e863bc0ad008100ec', 'test53', '123', '小53', '男', '1357441111153', '12398@qq.com', null, '小53', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('8a8b1db509f24924b39698a180e5796a', 'you', '202CB962AC59075B964B07152D234B70', '你好吗', '男', '3437875435', 'wfkslk@ada.com', null, 'admin', '2016-10-26 16:51:39', 'you', '2016-10-27 13:56:21', null, null, '2016-10-26 16:51:39', '1');
INSERT INTO `t_user` VALUES ('9793bfbbf7c9452b8a6a217a5cdd0e5e', 'test44', '123', '小44', '男', '1357441111144', '12389@qq.com', null, '小44', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('988b1e3ada1d4d3eac4f3f2eadf2a28f', 'test89', '123', '小89', '男', '1357441111189', '12434@qq.com', null, '小89', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('9bb2438fd4c0449ba26d74416056ef51', 'test27', '123', '小27', '男', '1357441111127', '12372@qq.com', null, '小27', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('9dfe7f6b8db244f797b9d541c90be0b9', 'test67', '123', '小67', '男', '1357441111167', '12412@qq.com', null, '小67', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('a0d095e30f4e4fdc8ea6c66593c3883a', 'test41', '123', '小41', '男', '1357441111141', '12386@qq.com', null, '小41', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('a4038c45a7b745179c83f0cbdc649e77', 'zjjs5', '123', '小xiao5', '女', '135743111135', '123460@qq.com', null, '小xiao5', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', '3');
INSERT INTO `t_user` VALUES ('a5f8ea9276b7437b95d457dca63c9226', 'leiyang14', '123', '小xiao14', '女', '1357431111314', '123429@qq.com', null, '小xiao14', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '3');
INSERT INTO `t_user` VALUES ('a69967e119f44e66b52c5237a24c605b', 'test30', '123', '小30', '男', '1357441111130', '12375@qq.com', null, '小30', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('a8d189b37b8545e08925917a4cef7fb2', 'leiyang12', '123', '小xiao12', '女', '1357431111312', '123427@qq.com', null, '小xiao12', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', '0');
INSERT INTO `t_user` VALUES ('aa2deea09c8340829dfc3bee4dfa05c7', 'test19', '123', '小19', '男', '1357441111119', '12364@qq.com', null, '小19', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('ab645ec4b81242ee90235c70430a736b', 'test29', '123', '小29', '男', '1357441111129', '12374@qq.com', null, '小29', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('ac072acf611d40198b2ecb903a37bc98', 'test92', '123', '小92', '男', '1357441111192', '12437@qq.com', null, '小92', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('ac749da2d3f0400f9f102661250b3011', 'test26', '123', '小26', '男', '1357441111126', '12371@qq.com', null, '小26', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('afc80af0d1904e67ab60e93f28a347ed', 'zjjs7', '123', '小xiao7', '女', '135743111137', '123462@qq.com', null, '小xiao7', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', '2');
INSERT INTO `t_user` VALUES ('b0959ac392a54287bdc43c77870361b2', 'test88', '123', '小88', '男', '1357441111188', '12433@qq.com', null, '小88', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('b32889051d884f02a26af5388a365813', 'leiyang27', '123', '小xiao27', '女', '1357431111327', '123442@qq.com', null, '小xiao27', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('bce00b127d364c688e4536ad2999fc14', 'leiyang22', '123', '小xiao22', '女', '1357431111322', '123437@qq.com', null, '小xiao22', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('bed354aba1e340288ca81c247d54c06a', 'leiyang34', '123', '小xiao34', '女', '1357431111334', '123449@qq.com', null, '小xiao34', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('c2d8ff4e2cf64bea867375727ccebae0', 'test37', '123', '小37', '男', '1357441111137', '12382@qq.com', null, '小37', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('c574de8a935a4a8184a92d7577a16caf', 'test9', '123', '小9', '男', '135744111119', '12354@qq.com', null, '小9', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('c87d082d538c4f2e8a2f508fa1599828', 'test95', '123', '小95', '男', '1357441111195', '12440@qq.com', null, '小95', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('cc220206a07948df909c491991536094', 'test48', '123', '小48', '男', '1357441111148', '12393@qq.com', null, '小48', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('cf4fa26a100945f49f2e6cb27946da80', 'test25', '123', '小25', '男', '1357441111125', '12370@qq.com', null, '小25', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('d08a0b08a9aa4abf8f3fc2128686b312', 'leiyang13', '123', '小xiao13', '女', '1357431111313', '123428@qq.com', null, '小xiao13', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('d5032b165be541459d5f17f747ee87e3', 'test58', '123', '小58', '男', '1357441111158', '12403@qq.com', null, '小58', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('d91a5d1c95e84403bbfc09a930083748', 'test1', '123', '小1', '男', '135744111111', '12346@qq.com', null, '小1', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('d9d73534632149f5914183fe20d79180', 'zjjs6', '123', '小xiao6', '女', '135743111136', '123461@qq.com', null, '小xiao6', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', '3');
INSERT INTO `t_user` VALUES ('dd938f4ad351423588e5b03325818840', 'leiyang40', '123', '小xiao40', '女', '1357431111340', '123455@qq.com', null, '小xiao40', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('df4ca6767e3f46a5afce582cb7fc3d35', 'test62', '123', '小62', '男', '1357441111162', '12407@qq.com', null, '小62', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('e20e8531b28b4ecf8a6b6617696bc7eb', 'test70', '123', '小70', '男', '1357441111170', '12415@qq.com', null, '小70', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('e65e879466ee4c16b5da910b0b157407', 'test40', '123', '小40', '男', '1357441111140', '12385@qq.com', null, '小40', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('e7079a94e312451183e96273af83a9e0', 'test55', '123', '小55', '男', '1357441111155', '12400@qq.com', null, '小55', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('e9064ae95ee24422a9caeb5c3abbedd3', 'leiyang28', '123', '小xiao28', '女', '1357431111328', '123443@qq.com', null, '小xiao28', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('f0e64708abb246e2a0c9c503a9bec623', 'test93', '123', '小93', '男', '1357441111193', '12438@qq.com', null, '小93', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('f18ed8bd523c4079a1b698c139b8a190', 'test68', '123', '小68', '男', '1357441111168', '12413@qq.com', null, '小68', '2016-10-22 07:26:27', 'test68', '2016-10-26 16:02:52', null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('f2f742391f5248048c4d0ae3958e95fd', 'leiyang26', '123', '小xiao26', '女', '1357431111326', '123441@qq.com', null, '小xiao26', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('f2f8ffd3aded401a9298d49c3d51ef2f', 'test21', '123', '小21', '男', '1357441111121', '12366@qq.com', null, '小21', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('f3505d595120408aa38bd5651b789403', 'leiyang23', '123', '小xiao23', '女', '1357431111323', '123438@qq.com', null, '小xiao23', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('f6cd6ae73a574f2db79d666790e2cb66', 'test59', '123', '小59', '男', '1357441111159', '12404@qq.com', null, '小59', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('f70ed6f6373648b5a9760c5281f8d43b', 'zjjs4', '123', '小xiao4', '女', '135743111134', '123459@qq.com', null, '小xiao4', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', '3');
INSERT INTO `t_user` VALUES ('f8d4bf42b02041c99a8a5f4d228fd9d4', 'test69', '123', '小69', '男', '546762544', '12414@qq.com', null, '小69', '2016-10-22 07:26:27', 'test69', '2016-10-25 21:00:28', null, null, '2016-10-22 07:26:27', '2');

-- ----------------------------
-- Table structure for t_userrole
-- ----------------------------
DROP TABLE IF EXISTS `t_userrole`;
CREATE TABLE `t_userrole` (
  `Id` varchar(50) NOT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `UserId` varchar(50) NOT NULL,
  `UserRoleTypeId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserId` (`UserId`),
  KEY `UserRoleTypeId` (`UserRoleTypeId`),
  CONSTRAINT `t_userrole_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `t_user` (`Id`),
  CONSTRAINT `t_userrole_ibfk_2` FOREIGN KEY (`UserRoleTypeId`) REFERENCES `t_dicuserroletype` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userrole
-- ----------------------------
INSERT INTO `t_userrole` VALUES ('0000000000000000000000', null, 'admin', '2016-10-22 14:21:55', null, null, null, null, '2016-10-22 14:21:58', '00000000000000000000000000', '3');
INSERT INTO `t_userrole` VALUES ('0000000000000000000000003333333', null, 'eumji', '2016-10-24 18:19:09', 'admin', '2016-10-26 16:36:15', null, null, '2016-10-26 16:36:15', '0000000000000000000000003333333', '4');
INSERT INTO `t_userrole` VALUES ('0000000000000000000001', null, 'zjjadmin', '2016-10-22 14:24:08', null, null, null, null, '2016-10-22 14:24:10', '00000000000000000000000001', '4');
INSERT INTO `t_userrole` VALUES ('0000000022222222222222', null, 'jinan', '2016-10-23 15:04:19', null, null, null, null, '2016-10-23 15:04:21', '0000000000000000222', '4');
INSERT INTO `t_userrole` VALUES ('0046c8a1a7404c459d0542759c45e47c', null, '小63', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '0046c8a1a7404c459d0542759c45e47c', '1');
INSERT INTO `t_userrole` VALUES ('039c1cda57c7496ba98d96e09a842293', null, '小18', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '039c1cda57c7496ba98d96e09a842293', '1');
INSERT INTO `t_userrole` VALUES ('046a80530d0841168ae5cdc7b1d9e50d', null, '小xiao21', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '046a80530d0841168ae5cdc7b1d9e50d', '1');
INSERT INTO `t_userrole` VALUES ('065bd3e2bb5a4f34b7fa2649178d3d71', null, '小xiao33', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '065bd3e2bb5a4f34b7fa2649178d3d71', '1');
INSERT INTO `t_userrole` VALUES ('08b48f6cd71246be9dc1cb547910f537', null, '小3', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '08b48f6cd71246be9dc1cb547910f537', '1');
INSERT INTO `t_userrole` VALUES ('0b37cfa0e1174e1baf5a686b409b29c6', null, '小11', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '0b37cfa0e1174e1baf5a686b409b29c6', '2');
INSERT INTO `t_userrole` VALUES ('0ce69ace009945b7bb17fbb7a0c83eb0', null, '小97', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '0ce69ace009945b7bb17fbb7a0c83eb0', '2');
INSERT INTO `t_userrole` VALUES ('0d06c1beccb84815ad1772f14012140c', null, '小xiao37', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0d06c1beccb84815ad1772f14012140c', '2');
INSERT INTO `t_userrole` VALUES ('0d52b8e645014459a1e1db74c04b0b12', null, '小xiao10', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', '0d52b8e645014459a1e1db74c04b0b12', '2');
INSERT INTO `t_userrole` VALUES ('0d944254d3234c3094a022ccfd6edc33', null, '小38', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '0d944254d3234c3094a022ccfd6edc33', '2');
INSERT INTO `t_userrole` VALUES ('0f8f431b65904a7994c782e3ee39e2cb', null, '小83', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '0f8f431b65904a7994c782e3ee39e2cb', '1');
INSERT INTO `t_userrole` VALUES ('167808bfa3644321a65ebd5edcf52500', null, '小49', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '167808bfa3644321a65ebd5edcf52500', '2');
INSERT INTO `t_userrole` VALUES ('16bfd25f457c4544bd06419f42de9d79', null, '小94', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '16bfd25f457c4544bd06419f42de9d79', '1');
INSERT INTO `t_userrole` VALUES ('19cb5729ad3145239c007fc0d226440c', null, '小78', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '19cb5729ad3145239c007fc0d226440c', '2');
INSERT INTO `t_userrole` VALUES ('1aa0c67f4bd04a51b5a206c8aca9372a', null, '小80', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1aa0c67f4bd04a51b5a206c8aca9372a', '2');
INSERT INTO `t_userrole` VALUES ('1abc097c49cd4fbfb10b3e16be261aa7', null, '小14', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1abc097c49cd4fbfb10b3e16be261aa7', '1');
INSERT INTO `t_userrole` VALUES ('1d25963c432e4937aa9fc17b378c5726', null, '小xiao15', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1d25963c432e4937aa9fc17b378c5726', '2');
INSERT INTO `t_userrole` VALUES ('1e0957f6b9cf4354940e041343d90a3e', null, '小15', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1e0957f6b9cf4354940e041343d90a3e', '2');
INSERT INTO `t_userrole` VALUES ('1f6c0a4f75274a5991ae76e469885093', null, '小xiao38', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1f6c0a4f75274a5991ae76e469885093', '1');
INSERT INTO `t_userrole` VALUES ('215a85c235684590a9913cc373369388', null, '小xiao39', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '215a85c235684590a9913cc373369388', '2');
INSERT INTO `t_userrole` VALUES ('2271e161e510475c8add5ca45d3e1823', null, '小45', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2271e161e510475c8add5ca45d3e1823', '2');
INSERT INTO `t_userrole` VALUES ('23a2d81e45224ebaba6018f9a6cf9f1d', null, '小xiao18', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '23a2d81e45224ebaba6018f9a6cf9f1d', '2');
INSERT INTO `t_userrole` VALUES ('24706047eede4953847f50e8b716a4b1', null, '小90', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '24706047eede4953847f50e8b716a4b1', '1');
INSERT INTO `t_userrole` VALUES ('26d3ff66469047849d2eb968768276b6', null, '小99', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '26d3ff66469047849d2eb968768276b6', '2');
INSERT INTO `t_userrole` VALUES ('280c3a8b803b4a84bad98a03cf9e69bf', null, '小65', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '280c3a8b803b4a84bad98a03cf9e69bf', '2');
INSERT INTO `t_userrole` VALUES ('281483327f144fa2a23b6a7720056a27', null, '小35', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '281483327f144fa2a23b6a7720056a27', '2');
INSERT INTO `t_userrole` VALUES ('363bdae5b10f40c8abe3b268ea91d017', null, '小xiao1', '2016-10-22 09:22:49', null, null, null, null, '2016-10-22 09:22:49', '363bdae5b10f40c8abe3b268ea91d017', '1');
INSERT INTO `t_userrole` VALUES ('36c810765fbf465a804e17b707f29546', null, '小xiao31', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '36c810765fbf465a804e17b707f29546', '2');
INSERT INTO `t_userrole` VALUES ('380d177cdc65472c9cd38039a8be4d90', null, '小6', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '380d177cdc65472c9cd38039a8be4d90', '2');
INSERT INTO `t_userrole` VALUES ('386f4606faee44ffbb2c72d65d47b28a', null, '小50', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '386f4606faee44ffbb2c72d65d47b28a', '1');
INSERT INTO `t_userrole` VALUES ('38e83f6fafa349e99d7812bd59ef525c', null, '小xiao25', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '38e83f6fafa349e99d7812bd59ef525c', '2');
INSERT INTO `t_userrole` VALUES ('395b17db602d48d7b6632cc876563338', null, '小79', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '395b17db602d48d7b6632cc876563338', '2');
INSERT INTO `t_userrole` VALUES ('3fbdec21055b493782ce2a6ab6044f55', null, '小xiao19', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '3fbdec21055b493782ce2a6ab6044f55', '1');
INSERT INTO `t_userrole` VALUES ('424a9df57d8a444786dc7d8cf8da7946', null, '小96', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '424a9df57d8a444786dc7d8cf8da7946', '2');
INSERT INTO `t_userrole` VALUES ('4871e3a9693a492eb9fe0adda7ac787f', null, '小56', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '4871e3a9693a492eb9fe0adda7ac787f', '2');
INSERT INTO `t_userrole` VALUES ('49b2b3a2db3d4a068d0d3b0addd8d77f', null, '小22', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '49b2b3a2db3d4a068d0d3b0addd8d77f', '1');
INSERT INTO `t_userrole` VALUES ('4a95953bfe6b47dbb9f67320b18cebc4', null, '小xiao29', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '4a95953bfe6b47dbb9f67320b18cebc4', '1');
INSERT INTO `t_userrole` VALUES ('4aad7fb02d8740cfb184215d5fc136ca', null, '小xiao36', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '4aad7fb02d8740cfb184215d5fc136ca', '2');
INSERT INTO `t_userrole` VALUES ('4c1b3b63429b4e79ab04ac742c877b08', null, '小xiao20', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '4c1b3b63429b4e79ab04ac742c877b08', '2');
INSERT INTO `t_userrole` VALUES ('51c814204dcc4085aebf37bc528b2642', null, '小43', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '51c814204dcc4085aebf37bc528b2642', '2');
INSERT INTO `t_userrole` VALUES ('537b601a6ec54924866b8df2a71d9293', null, '小60', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '537b601a6ec54924866b8df2a71d9293', '2');
INSERT INTO `t_userrole` VALUES ('53b45b55e6c84f1c80d4e23a99e2977e', null, '小xiao30', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '53b45b55e6c84f1c80d4e23a99e2977e', '1');
INSERT INTO `t_userrole` VALUES ('54cc27ce9c514653bf67467aaed37577', null, '小42', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '54cc27ce9c514653bf67467aaed37577', '2');
INSERT INTO `t_userrole` VALUES ('561d9e6fdce94e8a9a08dff4fe2f15d0', null, '小66', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '561d9e6fdce94e8a9a08dff4fe2f15d0', '2');
INSERT INTO `t_userrole` VALUES ('58d9744dbee7439db45508ac1f20645e', null, '小87', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '58d9744dbee7439db45508ac1f20645e', '2');
INSERT INTO `t_userrole` VALUES ('592f5daec8474040aa1c1745ec432e8d', null, '小52', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '592f5daec8474040aa1c1745ec432e8d', '2');
INSERT INTO `t_userrole` VALUES ('59fce160317345dfbfeae1779ce493c0', null, '小47', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '59fce160317345dfbfeae1779ce493c0', '2');
INSERT INTO `t_userrole` VALUES ('5abb07a135bb40e4b42871c674f7402b', null, '小4', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '5abb07a135bb40e4b42871c674f7402b', '2');
INSERT INTO `t_userrole` VALUES ('61338dd9e2a54347b2a29a2cf89a25da', null, '小xiao24', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '61338dd9e2a54347b2a29a2cf89a25da', '2');
INSERT INTO `t_userrole` VALUES ('64a670d6484346f4bb68e84d01ac1359', null, '小xiao17', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '64a670d6484346f4bb68e84d01ac1359', '2');
INSERT INTO `t_userrole` VALUES ('6559801f86a940d59bf94c84eef862c2', null, '小34', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6559801f86a940d59bf94c84eef862c2', '2');
INSERT INTO `t_userrole` VALUES ('66745eeb3f414947bc19079649afb6ba', null, '小24', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '66745eeb3f414947bc19079649afb6ba', '2');
INSERT INTO `t_userrole` VALUES ('6b7c011f9765414baba3741bfb32956b', null, '小61', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6b7c011f9765414baba3741bfb32956b', '2');
INSERT INTO `t_userrole` VALUES ('6be4c31b730a4e2eb8a0ed791b09f043', null, '小36', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6be4c31b730a4e2eb8a0ed791b09f043', '2');
INSERT INTO `t_userrole` VALUES ('6c53934e0d5e4911b9ae80327611cc24', null, '小77', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6c53934e0d5e4911b9ae80327611cc24', '2');
INSERT INTO `t_userrole` VALUES ('6cb5bf17b2b5433e9b4328c44328787d', null, '小5', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6cb5bf17b2b5433e9b4328c44328787d', '2');
INSERT INTO `t_userrole` VALUES ('6d27348412bb4223bb4575cbfff87c65', null, '小10', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6d27348412bb4223bb4575cbfff87c65', '2');
INSERT INTO `t_userrole` VALUES ('6fbf1cb940a64eeebdf414a8c1cfc7c7', null, '小20', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '6fbf1cb940a64eeebdf414a8c1cfc7c7', '1');
INSERT INTO `t_userrole` VALUES ('743020718a7144ff919ec9f5c91cf90e', null, '小xiao35', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '743020718a7144ff919ec9f5c91cf90e', '2');
INSERT INTO `t_userrole` VALUES ('7486fa9da5564b0c8b2ed560f0d7a83b', null, '小xiao32', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '7486fa9da5564b0c8b2ed560f0d7a83b', '2');
INSERT INTO `t_userrole` VALUES ('75e7bc817c654fada65bd2de0b25b6eb', null, '小16', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '75e7bc817c654fada65bd2de0b25b6eb', '2');
INSERT INTO `t_userrole` VALUES ('7785a1a73a8447eab8130f91ba42d3b8', null, '小xiao11', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', '7785a1a73a8447eab8130f91ba42d3b8', '2');
INSERT INTO `t_userrole` VALUES ('79ba02e75818441e80f2088197a0d3fc', null, '小64', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '79ba02e75818441e80f2088197a0d3fc', '2');
INSERT INTO `t_userrole` VALUES ('79bad3c7474c404d853f7255d5c0863f', null, '小12', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '79bad3c7474c404d853f7255d5c0863f', '2');
INSERT INTO `t_userrole` VALUES ('7a4eeaffe951477885da353c7a32a8d5', null, '小75', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '7a4eeaffe951477885da353c7a32a8d5', '2');
INSERT INTO `t_userrole` VALUES ('7e7ca8add5cb47498c900492e7941d81', null, '小31', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '7e7ca8add5cb47498c900492e7941d81', '2');
INSERT INTO `t_userrole` VALUES ('7ee3cdae2371494aa3042600d9a86794', null, '小86', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '7ee3cdae2371494aa3042600d9a86794', '2');
INSERT INTO `t_userrole` VALUES ('8010524fd9204917b01a804426fd7ebd', null, '小72', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '8010524fd9204917b01a804426fd7ebd', '2');
INSERT INTO `t_userrole` VALUES ('810657c0f71d492ab02a6bf0bc8d0a16', null, 'admin', '2016-10-26 16:51:39', null, null, null, null, '2016-10-26 16:51:39', '8a8b1db509f24924b39698a180e5796a', '3');
INSERT INTO `t_userrole` VALUES ('871861b22ec64936abe6d9101d101eb0', null, '小xiao16', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '871861b22ec64936abe6d9101d101eb0', '2');
INSERT INTO `t_userrole` VALUES ('8747b09eea014c2e863bc0ad008100ec', null, '小53', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '8747b09eea014c2e863bc0ad008100ec', '2');
INSERT INTO `t_userrole` VALUES ('9793bfbbf7c9452b8a6a217a5cdd0e5e', null, '小44', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '9793bfbbf7c9452b8a6a217a5cdd0e5e', '2');
INSERT INTO `t_userrole` VALUES ('988b1e3ada1d4d3eac4f3f2eadf2a28f', null, '小89', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '988b1e3ada1d4d3eac4f3f2eadf2a28f', '2');
INSERT INTO `t_userrole` VALUES ('9bb2438fd4c0449ba26d74416056ef51', null, '小27', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '9bb2438fd4c0449ba26d74416056ef51', '2');
INSERT INTO `t_userrole` VALUES ('9dfe7f6b8db244f797b9d541c90be0b9', null, '小67', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '9dfe7f6b8db244f797b9d541c90be0b9', '2');
INSERT INTO `t_userrole` VALUES ('a0d095e30f4e4fdc8ea6c66593c3883a', null, '小41', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'a0d095e30f4e4fdc8ea6c66593c3883a', '2');
INSERT INTO `t_userrole` VALUES ('a4038c45a7b745179c83f0cbdc649e77', null, '小xiao5', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', 'a4038c45a7b745179c83f0cbdc649e77', '2');
INSERT INTO `t_userrole` VALUES ('a5f8ea9276b7437b95d457dca63c9226', null, '小xiao14', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'a5f8ea9276b7437b95d457dca63c9226', '2');
INSERT INTO `t_userrole` VALUES ('a69967e119f44e66b52c5237a24c605b', null, '小30', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'a69967e119f44e66b52c5237a24c605b', '2');
INSERT INTO `t_userrole` VALUES ('a8d189b37b8545e08925917a4cef7fb2', null, '小xiao12', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', 'a8d189b37b8545e08925917a4cef7fb2', '2');
INSERT INTO `t_userrole` VALUES ('aa2deea09c8340829dfc3bee4dfa05c7', null, '小19', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'aa2deea09c8340829dfc3bee4dfa05c7', '2');
INSERT INTO `t_userrole` VALUES ('ab645ec4b81242ee90235c70430a736b', null, '小29', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'ab645ec4b81242ee90235c70430a736b', '2');
INSERT INTO `t_userrole` VALUES ('ac072acf611d40198b2ecb903a37bc98', null, '小92', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'ac072acf611d40198b2ecb903a37bc98', '2');
INSERT INTO `t_userrole` VALUES ('ac749da2d3f0400f9f102661250b3011', null, '小26', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'ac749da2d3f0400f9f102661250b3011', '2');
INSERT INTO `t_userrole` VALUES ('afc80af0d1904e67ab60e93f28a347ed', null, '小xiao7', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', 'afc80af0d1904e67ab60e93f28a347ed', '2');
INSERT INTO `t_userrole` VALUES ('b0959ac392a54287bdc43c77870361b2', null, '小88', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'b0959ac392a54287bdc43c77870361b2', '2');
INSERT INTO `t_userrole` VALUES ('b32889051d884f02a26af5388a365813', null, '小xiao27', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'b32889051d884f02a26af5388a365813', '2');
INSERT INTO `t_userrole` VALUES ('bce00b127d364c688e4536ad2999fc14', null, '小xiao22', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'bce00b127d364c688e4536ad2999fc14', '2');
INSERT INTO `t_userrole` VALUES ('bed354aba1e340288ca81c247d54c06a', null, '小xiao34', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'bed354aba1e340288ca81c247d54c06a', '2');
INSERT INTO `t_userrole` VALUES ('c2d8ff4e2cf64bea867375727ccebae0', null, '小37', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'c2d8ff4e2cf64bea867375727ccebae0', '2');
INSERT INTO `t_userrole` VALUES ('c574de8a935a4a8184a92d7577a16caf', null, '小9', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'c574de8a935a4a8184a92d7577a16caf', '2');
INSERT INTO `t_userrole` VALUES ('c87d082d538c4f2e8a2f508fa1599828', null, '小95', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'c87d082d538c4f2e8a2f508fa1599828', '2');
INSERT INTO `t_userrole` VALUES ('cc220206a07948df909c491991536094', null, '小48', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'cc220206a07948df909c491991536094', '2');
INSERT INTO `t_userrole` VALUES ('cf4fa26a100945f49f2e6cb27946da80', null, '小25', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'cf4fa26a100945f49f2e6cb27946da80', '2');
INSERT INTO `t_userrole` VALUES ('d08a0b08a9aa4abf8f3fc2128686b312', null, '小xiao13', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'd08a0b08a9aa4abf8f3fc2128686b312', '2');
INSERT INTO `t_userrole` VALUES ('d5032b165be541459d5f17f747ee87e3', null, '小58', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'd5032b165be541459d5f17f747ee87e3', '2');
INSERT INTO `t_userrole` VALUES ('d91a5d1c95e84403bbfc09a930083748', null, '小1', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'd91a5d1c95e84403bbfc09a930083748', '2');
INSERT INTO `t_userrole` VALUES ('d9d73534632149f5914183fe20d79180', null, '小xiao6', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', 'd9d73534632149f5914183fe20d79180', '2');
INSERT INTO `t_userrole` VALUES ('dd938f4ad351423588e5b03325818840', null, '小xiao40', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'dd938f4ad351423588e5b03325818840', '2');
INSERT INTO `t_userrole` VALUES ('df4ca6767e3f46a5afce582cb7fc3d35', null, '小62', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'df4ca6767e3f46a5afce582cb7fc3d35', '2');
INSERT INTO `t_userrole` VALUES ('e20e8531b28b4ecf8a6b6617696bc7eb', null, '小70', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'e20e8531b28b4ecf8a6b6617696bc7eb', '2');
INSERT INTO `t_userrole` VALUES ('e65e879466ee4c16b5da910b0b157407', null, '小40', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'e65e879466ee4c16b5da910b0b157407', '2');
INSERT INTO `t_userrole` VALUES ('e7079a94e312451183e96273af83a9e0', null, '小55', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'e7079a94e312451183e96273af83a9e0', '2');
INSERT INTO `t_userrole` VALUES ('e9064ae95ee24422a9caeb5c3abbedd3', null, '小xiao28', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'e9064ae95ee24422a9caeb5c3abbedd3', '2');
INSERT INTO `t_userrole` VALUES ('f0e64708abb246e2a0c9c503a9bec623', null, '小93', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'f0e64708abb246e2a0c9c503a9bec623', '2');
INSERT INTO `t_userrole` VALUES ('f18ed8bd523c4079a1b698c139b8a190', null, '小68', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'f18ed8bd523c4079a1b698c139b8a190', '2');
INSERT INTO `t_userrole` VALUES ('f2f742391f5248048c4d0ae3958e95fd', null, '小xiao26', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'f2f742391f5248048c4d0ae3958e95fd', '2');
INSERT INTO `t_userrole` VALUES ('f2f8ffd3aded401a9298d49c3d51ef2f', null, '小21', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'f2f8ffd3aded401a9298d49c3d51ef2f', '2');
INSERT INTO `t_userrole` VALUES ('f3505d595120408aa38bd5651b789403', null, '小xiao23', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', 'f3505d595120408aa38bd5651b789403', '2');
INSERT INTO `t_userrole` VALUES ('f6cd6ae73a574f2db79d666790e2cb66', null, '小59', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'f6cd6ae73a574f2db79d666790e2cb66', '2');
INSERT INTO `t_userrole` VALUES ('f70ed6f6373648b5a9760c5281f8d43b', null, '小xiao4', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', 'f70ed6f6373648b5a9760c5281f8d43b', '2');
INSERT INTO `t_userrole` VALUES ('f8d4bf42b02041c99a8a5f4d228fd9d4', null, '小69', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'f8d4bf42b02041c99a8a5f4d228fd9d4', '2');
