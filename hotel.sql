/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50632
Source Host           : localhost:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2017-08-03 08:58:40
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
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
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
INSERT INTO `t_areaarticle` VALUES ('1ea0f21f774442f28068ae7d8e722086', '美丽的张家界', '<p></p><div style=\"text-align: left;\">张家界市，地处北纬28°52′—29°48′、东经109°40′—111°20′之间，是湖南省西北部一个正在开发、建设，以发展张家界旅游业为特征的新兴省辖地级市，北邻湖北省。</div><div style=\"text-align: left;\">张家界市位于湖南省西北部，地处<a target=\"_blank\" href=\"http://baike.baidu.com/subview/7240/17383696.htm\" style=\"background-color: rgb(255, 255, 255);\">云贵高原</a>隆起与<a target=\"_blank\" href=\"http://baike.baidu.com/subview/5852/19947133.htm\" style=\"background-color: rgb(255, 255, 255);\">洞庭湖</a>沉降区结合部，介于东经109度40分至111度20分、北纬28度52分至29度48分之间，东接石门、<a target=\"_blank\" href=\"http://baike.baidu.com/view/190836.htm\" style=\"background-color: rgb(255, 255, 255);\">桃源县</a>，南邻<a target=\"_blank\" href=\"http://baike.baidu.com/view/589329.htm\" style=\"background-color: rgb(255, 255, 255);\">沅陵县</a>，北抵湖北省的鹤峰、<a target=\"_blank\" href=\"http://baike.baidu.com/view/261118.htm\" style=\"background-color: rgb(255, 255, 255);\">宣恩县</a>。市界东西最长167公里，南北最宽96公里。张家界市总面积9653平方公里，占湖南省面积的4.5%。</div><p></p><!--EndFragment--><p><br/></p><p><br/></p>', null, '罗迪', '2016-11-06 18:19:03', 'admin', '2016-11-16 11:15:42', null, null, '2016-11-16 11:15:42', '30');
INSERT INTO `t_areaarticle` VALUES ('2dd93b1215e540b7acc0763bbfc33756', '丽江', '<p></p><div class=\"para\" style=\"text-align: left;font-size: 14px;\">丽江市，云南省辖<a target=\"_blank\" href=\"http://baike.baidu.com/view/115772.htm\" style=\"color: rgb(19, 110, 194);\">地级市</a>，位于<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E4%BA%91%E5%8D%97%E7%9C%81\" style=\"color: rgb(19, 110, 194);\">云南省</a>西北部<a target=\"_blank\" href=\"http://baike.baidu.com/subview/7240/17383696.htm\" style=\"color: rgb(19, 110, 194);\">云贵高原</a>与<a target=\"_blank\" href=\"http://baike.baidu.com/view/4979.htm\" style=\"color: rgb(19, 110, 194);\">青藏高原</a>的连接部位，市区中心位于东经100°25\'北纬26°86\'，<a target=\"_blank\" href=\"http://baike.baidu.com/view/378997.htm\" style=\"color: rgb(19, 110, 194);\">海拔高度</a>为2418米。北连<a target=\"_blank\" href=\"http://baike.baidu.com/view/35648.htm\" style=\"color: rgb(19, 110, 194);\">迪庆藏族自治州</a>，南接<a target=\"_blank\" href=\"http://baike.baidu.com/view/161491.htm\" style=\"color: rgb(19, 110, 194);\">大理白族自治州</a>，西邻<a target=\"_blank\" href=\"http://baike.baidu.com/view/602163.htm\" style=\"color: rgb(19, 110, 194);\">怒江傈僳族自治州</a>，东与<a target=\"_blank\" href=\"http://baike.baidu.com/subview/7627/15402623.htm\" style=\"color: rgb(19, 110, 194);\">四川</a><a target=\"_blank\" href=\"http://baike.baidu.com/view/150693.htm\" style=\"color: rgb(19, 110, 194);\">凉山彝族自治州</a>和<a target=\"_blank\" href=\"http://baike.baidu.com/view/26126.htm\" style=\"color: rgb(19, 110, 194);\">攀枝花市</a>接壤。总面积20600平方公里。辖<a target=\"_blank\" href=\"http://baike.baidu.com/view/768816.htm\" style=\"color: rgb(19, 110, 194);\">古城区</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/602638.htm\" style=\"color: rgb(19, 110, 194);\">玉龙纳西族自治县</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/768596.htm\" style=\"color: rgb(19, 110, 194);\">永胜县</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/768820.htm\" style=\"color: rgb(19, 110, 194);\">华坪县</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/602641.htm\" style=\"color: rgb(19, 110, 194);\">宁蒗彝族自治县</a>，共有69个乡（镇）、446个<a target=\"_blank\" href=\"http://baike.baidu.com/view/234359.htm\" style=\"color: rgb(19, 110, 194);\">村民委员会</a>，总人口1244769人（第六次人口普查）。<a target=\"_blank\" href=\"http://baike.baidu.com/view/15218.htm\" style=\"color: rgb(19, 110, 194);\">丽江古城</a>区是中国罕见的保存相当完好的<a target=\"_blank\" href=\"http://baike.baidu.com/view/1917.htm\" style=\"color: rgb(19, 110, 194);\">少数民族</a><a target=\"_blank\" href=\"http://baike.baidu.com/subview/359005/17382561.htm\" style=\"color: rgb(19, 110, 194);\">古城</a>，集中了<a target=\"_blank\" href=\"http://baike.baidu.com/view/1079300.htm\" style=\"color: rgb(19, 110, 194);\">纳西文化</a>的精华，完整地保留了<a target=\"_blank\" href=\"http://baike.baidu.com/subview/6661/5873555.htm\" style=\"color: rgb(19, 110, 194);\">宋</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/subview/6673/5063447.htm\" style=\"color: rgb(19, 110, 194);\">元</a>以来形成的<a target=\"_blank\" href=\"http://baike.baidu.com/view/7923508.htm\" style=\"color: rgb(19, 110, 194);\">历史风貌</a>。</div><div class=\"para\" style=\"text-align: left;font-size: 14px;\">丽江自古以来是<a target=\"_blank\" href=\"http://baike.baidu.com/view/1239.htm\" style=\"color: rgb(19, 110, 194);\">丝绸之路</a>和<a target=\"_blank\" href=\"http://baike.baidu.com/view/2169.htm\" style=\"color: rgb(19, 110, 194);\">茶马古道</a>的中转站，丽江有建于<a target=\"_blank\" href=\"http://baike.baidu.com/subview/24010/18655048.htm\" style=\"color: rgb(19, 110, 194);\">南宋</a>的丽江古城，<a target=\"_blank\" href=\"http://baike.baidu.com/view/2729.htm\" style=\"color: rgb(19, 110, 194);\">纳西族</a>名称叫“<b>巩本知</b>”，“巩本”为<a target=\"_blank\" href=\"http://baike.baidu.com/view/205387.htm\" style=\"color: rgb(19, 110, 194);\">仓廪</a>，“知”即<a target=\"_blank\" href=\"http://baike.baidu.com/subview/55683/11094612.htm\" style=\"color: rgb(19, 110, 194);\">集市</a>，丽江古城曾是仓廪集散之地。</div><!--EndFragment--><p><br/></p><p><br/></p><p><br/></p><p></p>', null, '罗迪', '2016-10-27 13:55:49', 'admin', '2016-11-16 11:15:00', null, null, '2016-11-16 11:15:00', '15');
INSERT INTO `t_areaarticle` VALUES ('61b0cd0a37b445e5b02c9684fe35b45e', '凤凰古城ddd', '<p style=\"text-align: left;\"><a target=\"_blank\" href=\"http://baike.baidu.com/subview/1600/5748918.htm\" style=\"color: rgb(19, 110, 194);\">凤凰古城</a>，位于<a target=\"_blank\" href=\"http://baike.baidu.com/view/14560.htm\" style=\"color: rgb(19, 110, 194);\">湖南省</a><a target=\"_blank\" href=\"http://baike.baidu.com/view/110750.htm\" style=\"color: rgb(19, 110, 194);\">湘西土家族苗族自治州</a>的西南部凤凰县，土地总面积约10平方千米。2010年底约5万人口，由<a target=\"_blank\" href=\"http://baike.baidu.com/view/2725.htm\" style=\"color: rgb(19, 110, 194);\">苗族</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/2717.htm\" style=\"color: rgb(19, 110, 194);\">汉族</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/2724.htm\" style=\"color: rgb(19, 110, 194);\">土家族</a>等28个民族组成，为典型的<a target=\"_blank\" href=\"http://baike.baidu.com/view/1917.htm\" style=\"color: rgb(19, 110, 194);\">少数民族</a>聚居区。<sup style=\"font-size: 12px;\">[1-2]</sup><a class=\"sup-anchor\" style=\"font-size: 0px;\"> </a><br/></p><div class=\"para\" style=\"text-align: left;font-size: 14px;\"><a target=\"_blank\" href=\"http://baike.baidu.com/subview/1600/5748918.htm\" style=\"color: rgb(19, 110, 194);\">凤凰古城</a>，是<a target=\"_blank\" href=\"http://baike.baidu.com/view/353383.htm\" style=\"color: rgb(19, 110, 194);\">国家历史文化名城</a>，首批<a target=\"_blank\" href=\"http://baike.baidu.com/view/3955632.htm\" style=\"color: rgb(19, 110, 194);\">中国旅游强县</a>，<a target=\"_blank\" href=\"http://baike.baidu.com/view/1179508.htm\" style=\"color: rgb(19, 110, 194);\">国家AAAA级景区</a>，湖南省<a target=\"_blank\" href=\"http://baike.baidu.com/view/110750.htm\" style=\"color: rgb(19, 110, 194);\">湘西土家族苗族自治州</a>所辖八县市之一。<sup style=\"font-size: 12px;\">[3]</sup><a class=\"sup-anchor\" style=\"font-size: 0px;\"> </a> 建于清康熙四十三年〔1704年〕。2001年被授予国家历史文化名城称号，<a target=\"_blank\" href=\"http://baike.baidu.com/view/3079752.htm\" style=\"color: rgb(19, 110, 194);\">湖南十大文化遗产</a>之一。曾被<a target=\"_blank\" href=\"http://baike.baidu.com/view/10151.htm\" style=\"color: rgb(19, 110, 194);\">新西兰</a>著名作家<a target=\"_blank\" href=\"http://baike.baidu.com/view/55457.htm\" style=\"color: rgb(19, 110, 194);\">路易·艾黎</a>称赞为中国最美丽的小城，与<a target=\"_blank\" href=\"http://baike.baidu.com/view/18400.htm\" style=\"color: rgb(19, 110, 194);\">云南丽江古城</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/56374.htm\" style=\"color: rgb(19, 110, 194);\">山西平遥古城</a>媲美，享有“北平遥，南凤凰”之美誉。<sup style=\"font-size: 12px;\">[1-2]</sup><a class=\"sup-anchor\" style=\"font-size: 0px;\"> </a> 距<a target=\"_blank\" href=\"http://baike.baidu.com/view/5369650.htm\" style=\"color: rgb(19, 110, 194);\">铜仁凤凰机场</a>27公里，<a target=\"_blank\" href=\"http://baike.baidu.com/view/9512534.htm\" style=\"color: rgb(19, 110, 194);\">张家界荷花国际机场</a>280公里；G209国道，S308省道贯穿全境，枝柳铁路穿境而过，交通便利快捷。<span style=\"text-align: center;\">自2016年4月10日起，凤凰古城将取消景区验票，保留景点验票方式。游客今后进凤凰古城游览不必再购买148元的“捆绑式”大门票</span><sup style=\"text-align: center;font-size: 12px;\">[4]</sup><a class=\"sup-anchor\" style=\"text-align: center;font-size: 0px;\"> </a><span style=\"text-align: center;\"> ，只需要在逛小景点时购买相应的门票。</span></div><!--EndFragment--><p><br/></p><p><br/></p><div class=\"para\" style=\"font-size: 14px;\"></div><!--EndFragment--><p><br/></p><p><br/></p><p></p><p><br/></p>', null, '罗迪', '2016-10-24 18:27:09', 'admin', '2016-11-20 21:19:57', null, null, '2016-11-20 21:19:57', '1');
INSERT INTO `t_areaarticle` VALUES ('a44e82e281aa452f8fa7785223539099', '竹海', '<p></p><div style=\"text-align: left;\">蔡伦竹海位于中南重镇、历史文化名城——<a target=\"_blank\" href=\"http://baike.baidu.com/view/8977.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">耒阳</a>市<a target=\"_blank\" href=\"http://baike.baidu.com/view/2307664.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">黄市镇</a>和<a target=\"_blank\" href=\"http://baike.baidu.com/view/2179185.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">大义乡</a>境内，面积100平方公里，中心景区达66平方公里，集观光、休闲、探险、<a target=\"_blank\" href=\"http://baike.baidu.com/subview/746711/5127749.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">寻宝</a>于一体的复合型旅游风景区，现为<a target=\"_blank\" href=\"http://baike.baidu.com/view/2594132.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">国家AAAA级旅游景区</a>、中国最具魅力生态旅游景点景区、国家级水利风景区、省级风景名胜区、省级森林公园和省级山地车训练基地。筹建国家5A级旅游风景区、国家级风景名胜区、<a target=\"_blank\" href=\"http://baike.baidu.com/view/472526.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">国家森林公园</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/2326620.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">国家矿山公园</a>。蔡伦竹海面积广阔，连片竹林面积达16万亩，是我国连片面积最大的<a target=\"_blank\" href=\"http://baike.baidu.com/view/1554663.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">竹海</a>，有着“亚洲大竹海”、“天然大氧吧”的美誉。<a target=\"_blank\" href=\"http://baike.baidu.com/view/671674.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">京珠高速</a>公路、<a target=\"_blank\" href=\"http://baike.baidu.com/view/11000116.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">京广高铁</a>等并辔而过，<a target=\"_blank\" href=\"http://baike.baidu.com/subview/157662/5120688.htm\" style=\"color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">107国道</a>、320省道和京广铁路交织成网。</div><!--StartFragment--><p><br/></p><p></p><p><br/></p><p><br/></p><p><br/></p>', null, '罗迪', '2016-10-24 18:28:42', 'admin', '2016-11-16 11:13:57', null, null, '2016-11-16 11:13:57', '26');
INSERT INTO `t_areaarticle` VALUES ('cb4e19883bbf42c48cd1e12a07d37700', '衡山', ' <p style=\"text-align: left;\">衡山（Mount Heng），又名<a target=\"_blank\" href=\"http://baike.baidu.com/view/367989.htm\" style=\"color: rgb(19, 110, 194);\">南岳</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/4995498.htm\" style=\"color: rgb(19, 110, 194);\">寿岳</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/subview/93884/5088962.htm\" style=\"color: rgb(19, 110, 194);\">南山</a>，为中国“<a target=\"_blank\" href=\"http://baike.baidu.com/subview/3668/5268274.htm\" style=\"color: rgb(19, 110, 194);\">五岳</a>”之一，位于中国<a target=\"_blank\" href=\"http://baike.baidu.com/view/14560.htm\" style=\"color: rgb(19, 110, 194);\">湖南省</a>中部偏东南部，绵亘于<a target=\"_blank\" href=\"http://baike.baidu.com/subview/9019/13479761.htm\" style=\"color: rgb(19, 110, 194);\">衡阳</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/subview/21265/11318689.htm\" style=\"color: rgb(19, 110, 194);\">湘潭</a>两盆地间,，主体部分在衡阳市<a target=\"_blank\" href=\"http://baike.baidu.com/view/589255.htm\" style=\"color: rgb(19, 110, 194);\">南岳区</a>和衡山、衡阳县境内。衡山的命名，据志书记载，因其位于星座<a target=\"_blank\" href=\"http://baike.baidu.com/view/7896.htm\" style=\"color: rgb(19, 110, 194);\">二十八宿</a>的轸星之翼，“变应玑衡”，“铨德钧物”，犹如<a target=\"_blank\" href=\"http://baike.baidu.com/view/10929.htm\" style=\"color: rgb(19, 110, 194);\">衡器</a>，可称天地，故名衡山。<sup style=\"font-size: 12px;\">[1]</sup><a class=\"sup-anchor\" style=\"font-size: 0px;\"> </a><br/></p><p></p><div class=\"para\" style=\"text-align: left;font-size: 14px;\">衡山是中国著名的<a target=\"_blank\" href=\"http://baike.baidu.com/view/6683.htm\" style=\"color: rgb(19, 110, 194);\">道教</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/4696.htm\" style=\"color: rgb(19, 110, 194);\">佛教</a>圣地，环山有寺、庙、庵、观200多处。衡山山神是古时民间崇拜的火神<a target=\"_blank\" href=\"http://baike.baidu.com/subview/13695/6380266.htm\" style=\"color: rgb(19, 110, 194);\">祝融</a>，他居于衡山，教民用火，化育万物，死后葬于衡山山中，被当地尊称<a target=\"_blank\" href=\"http://baike.baidu.com/view/14755667.htm\" style=\"color: rgb(19, 110, 194);\">南岳圣帝</a>。道教“<a target=\"_blank\" href=\"http://baike.baidu.com/view/321891.htm\" style=\"color: rgb(19, 110, 194);\">三十六洞天</a>，<a target=\"_blank\" href=\"http://baike.baidu.com/view/111882.htm\" style=\"color: rgb(19, 110, 194);\">七十二福地</a>”，有四处位于衡山之中。衡山的地质构造主要是<a target=\"_blank\" href=\"http://baike.baidu.com/view/57659.htm\" style=\"color: rgb(19, 110, 194);\">花岗岩</a>的断裂构造，花岗岩断块组成峰林状的垒形中山地貌，群峰突起，自上而下分为四级阶梯。<sup style=\"font-size: 12px;\">[2]</sup><a class=\"sup-anchor\" style=\"font-size: 0px;\"> </a></div><div class=\"para\" style=\"text-align: left;font-size: 14px;\">衡山介于北纬27°4′-27°20′，东经112°34′-112°44′之间，呈东北—西南走向，北起<a target=\"_blank\" href=\"http://baike.baidu.com/view/589258.htm\" style=\"color: rgb(19, 110, 194);\">衡山县</a><a target=\"_blank\" href=\"http://baike.baidu.com/view/1975667.htm\" style=\"color: rgb(19, 110, 194);\">福田铺乡</a>，南迄<a target=\"_blank\" href=\"http://baike.baidu.com/view/191166.htm\" style=\"color: rgb(19, 110, 194);\">衡阳县</a><a target=\"_blank\" href=\"http://baike.baidu.com/view/83697.htm\" style=\"color: rgb(19, 110, 194);\">樟木乡</a>，西起衡阳县<a target=\"_blank\" href=\"http://baike.baidu.com/subview/99434/5773757.htm\" style=\"color: rgb(19, 110, 194);\">界牌镇</a>，东止衡阳市<a target=\"_blank\" href=\"http://baike.baidu.com/view/589255.htm\" style=\"color: rgb(19, 110, 194);\">南岳区</a>，长38公里，最宽处17公里，总面积640平方公里。衡山主要山峰有<a target=\"_blank\" href=\"http://baike.baidu.com/view/22984.htm\" style=\"color: rgb(19, 110, 194);\">回雁峰</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/114934.htm\" style=\"color: rgb(19, 110, 194);\">祝融峰</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E7%B4%AB%E7%9B%96%E5%B3%B0\" style=\"color: rgb(19, 110, 194);\">紫盖峰</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/43187.htm\" style=\"color: rgb(19, 110, 194);\">岳麓山</a>等，最高峰祝融峰海拔1300.2米。衡山东北坡、东坡、东南坡共计河川26条，经<a target=\"_blank\" href=\"http://baike.baidu.com/subview/9019/13479761.htm\" style=\"color: rgb(19, 110, 194);\">衡阳</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/subview/21265/11318690.htm\" style=\"color: rgb(19, 110, 194);\">湘潭</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/subview/10017/13495681.htm\" style=\"color: rgb(19, 110, 194);\">衡山</a>3县的<a target=\"_blank\" href=\"http://baike.baidu.com/view/40636.htm\" style=\"color: rgb(19, 110, 194);\">易俗河</a>、荆坡河、<a target=\"_blank\" href=\"http://baike.baidu.com/view/1796508.htm\" style=\"color: rgb(19, 110, 194);\">乌石港</a>、龙隐港、萱洲港等注入<a target=\"_blank\" href=\"http://baike.baidu.com/subview/48301/5072135.htm\" style=\"color: rgb(19, 110, 194);\">湘江</a>。<sup style=\"font-size: 12px;\">[3]</sup><a class=\"sup-anchor\" style=\"font-size: 0px;\"> </a></div><div class=\"para\" style=\"text-align: left;font-size: 14px;\">1982年，衡山风景区被列入第一批国家级重点风景名胜区名单；2006年2月，衡山入选首批国家<a target=\"_blank\" href=\"http://baike.baidu.com/view/3741996.htm\" style=\"color: rgb(19, 110, 194);\">自然与文化</a>双遗产名录；2007年5月，衡山风景区被评为首批国家<a target=\"_blank\" href=\"http://baike.baidu.com/view/962123.htm\" style=\"color: rgb(19, 110, 194);\">5A级旅游景区</a>；2007年8月，衡山自然保护区被列为<a target=\"_blank\" href=\"http://baike.baidu.com/view/413177.htm\" style=\"color: rgb(19, 110, 194);\">国家级自然保护区</a>。</div><!--EndFragment--><p><br/></p><p><br/></p><p><br/></p><p></p>', null, '罗迪', '2016-10-24 18:27:23', 'admin', '2016-11-16 11:12:07', null, null, '2016-11-16 11:12:07', '1');
INSERT INTO `t_areaarticle` VALUES ('da5e919be03d4fbaaa0f4ed35693522d', '橘子洲头', '<p><a target=\"_blank\" href=\"http://baike.baidu.com/view/15824.htm\" style=\"text-align: left;color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">橘子洲头</a><span style=\"text-align: left;\">位于</span><a target=\"_blank\" href=\"http://baike.baidu.com/view/23005.htm\" style=\"text-align: left;color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">橘子洲</a><span style=\"text-align: left;\">的南端，橘子洲则位于长沙市区对面的</span><a target=\"_blank\" href=\"http://baike.baidu.com/view/48301.htm\" style=\"text-align: left;color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">湘江</a><span style=\"text-align: left;\">江心，是湘江下游众多冲积</span><a target=\"_blank\" href=\"http://baike.baidu.com/subview/298874/12231275.htm\" style=\"text-align: left;color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">沙洲</a><span style=\"text-align: left;\">之一，也是世界上最大的内陆洲，形成于</span><a target=\"_blank\" href=\"http://baike.baidu.com/view/126386.htm\" style=\"text-align: left;color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">晋惠帝</a><a target=\"_blank\" href=\"http://baike.baidu.com/view/623782.htm\" style=\"text-align: left;color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">永兴</a><span style=\"text-align: left;\">二年（公元305年），距今已有一千六百多年的历史。橘子洲，西望</span><a target=\"_blank\" href=\"http://baike.baidu.com/view/43187.htm\" style=\"text-align: left;color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">岳麓山</a><span style=\"text-align: left;\">，东临长沙城，四面环水，绵延数十里，狭处横约40米，宽处横约140米，形状是一个</span><a target=\"_blank\" href=\"http://baike.baidu.com/subview/60507/5073847.htm\" style=\"text-align: left;color: rgb(19, 110, 194);background-color: rgb(255, 255, 255);\">长岛</a><span style=\"text-align: left;\">，是长沙重要名胜之一，橘子洲介名山城市间，浮袅袅凌波上，被誉为“中国第一洲”。</span><br/></p><!--StartFragment--><p><br/></p><p></p><p> <br/></p>', null, '罗迪', '2016-10-24 18:27:30', 'admin', '2016-11-16 11:13:01', null, null, '2016-11-16 11:13:01', '24');
INSERT INTO `t_areaarticle` VALUES ('ec08d44e640e4b22ae6fb144e27a2477', '张家界地貌', '<p><br/></p><!--StartFragment--><div class=\"para\" style=\"text-align: left;\">张家界市的地层复杂多样，造化了当地的特色景观。主要有山地、岩溶、丘陵、岗地和平原等，山地面积占总面积的76%，其中最具特色的是石英砂岩峰林地貌，为世界罕见。城市地势西北高，沿澧水向东南倾斜。<sup>[5]</sup><a class=\"sup-anchor\"> </a><br/></div><div style=\"text-align: left;\"><br/></div><div class=\"para\" style=\"text-align: left;\">在市域另一个突出的表现是由于地壳上升，溪流向下切割作用加大，来不及将河流拓宽，而使河谷形成隘谷、峡谷。河的谷底极窜成线形，两壁陡峻，滩多水急。张家界市澧水源头、娄水上游、茅岩河段，就是这种河谷地貌。</div><!--EndFragment--><div style=\"text-align: left;\"><br/></div><p><br/></p><div style=\"text-align: left;\"><br/></div><p><br/></p>', null, '罗迪', '2016-11-06 18:25:07', null, null, null, null, '2016-11-06 18:25:07', '30');
INSERT INTO `t_areaarticle` VALUES ('edcfeb3b0e2f4442b716c07718a0be72', '张家界啊啊', '<p><br/></p><!--StartFragment--><div class=\"para\" style=\"text-align: left;\">张家界是<a target=\"_blank\" href=\"http://baike.baidu.com/view/14560.htm\">湖南省</a>辖<a target=\"_blank\" href=\"http://baike.baidu.com/view/115772.htm\">地级市</a>，原名<a target=\"_blank\" href=\"http://baike.baidu.com/view/4948279.htm\">大庸市</a>，辖2个市辖区（<a target=\"_blank\" href=\"http://baike.baidu.com/view/42595.htm\">永定区</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/589296.htm\">武陵源区</a>）、2个县（<a target=\"_blank\" href=\"http://baike.baidu.com/view/993404.htm\">慈利县</a>、<a target=\"_blank\" href=\"http://baike.baidu.com/view/993407.htm\">桑植县</a>）。位于湖南西北部，澧水中上游，属<a target=\"_blank\" href=\"http://baike.baidu.com/view/1408476.htm\">武陵山区</a>腹地。<sup>[1]</sup><a class=\"sup-anchor\"> </a><br/>张家界因旅游建市，是中国最重要的<a target=\"_blank\" href=\"http://baike.baidu.com/view/56429.htm\">旅游城市</a>之一，是湘鄂渝黔革命根据地的发源地和中心区域。</div><div class=\"para\" style=\"text-align: left;\">1982年9月，<a target=\"_blank\" href=\"http://baike.baidu.com/view/109333.htm\">张家界国家森林公园</a>成为中国第一个国家森林公园。</div><div class=\"para\" style=\"text-align: left;\">1988年8月，张家界<a target=\"_blank\" href=\"http://baike.baidu.com/view/142384.htm\">武陵源风景名胜区</a>被列入<a target=\"_blank\" href=\"http://baike.baidu.com/view/442378.htm\">国家重点风景名胜区</a>；1992年，由张家界国家森林公园等三大景区构成的武陵源自然风景区被<a target=\"_blank\" href=\"http://baike.baidu.com/view/10718.htm\">联合国教科文组织</a>列入《<a target=\"_blank\" href=\"http://baike.baidu.com/view/358421.htm\">世界自然遗产</a>名录》；2004年2月，被列入中国首批《<a target=\"_blank\" href=\"http://baike.baidu.com/view/199149.htm\">世界地质公园</a>》；2007年，被列入中国首批国家<a target=\"_blank\" href=\"http://baike.baidu.com/view/962123.htm\">5A级旅游景区</a>。</div><!--EndFragment--><div style=\"text-align: left;\"><br/></div><p><br/></p>', null, '苏小涵', '2016-11-19 09:48:09', 'admin', '2016-11-20 16:25:14', null, null, '2016-11-20 16:25:14', '30');

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
INSERT INTO `t_areaphoto` VALUES ('344f1c802ac4412280209402db839f1d', 'http://of8rkrh1w.bkt.clouddn.com/2016/9/26/1477471673486E-R.png', null, '罗迪', '2016-10-26 16:47:55', null, null, null, null, '2016-10-26 16:47:55', '30');
INSERT INTO `t_areaphoto` VALUES ('6cde604ad7284f1d84be929085a5578a', 'http://of8rkrh1w.bkt.clouddn.com/2016/9/27/1477548731700mybatis.png', null, '苏小涵', '2016-10-27 14:12:13', null, null, null, null, '2016-10-27 14:12:13', '30');
INSERT INTO `t_areaphoto` VALUES ('6db194784c124187b03034f61f870e15', 'http://of8rkrh1w.bkt.clouddn.com/2016/9/24/1477292785102334H.jpg', null, '罗迪', '2016-10-24 15:06:31', null, null, null, null, '2016-10-24 15:06:31', '24');
INSERT INTO `t_areaphoto` VALUES ('79cadc09823f4ac79e822ca7d2ca6b21', 'http://of8rkrh1w.bkt.clouddn.com/2016/9/24/1477292594288zjj-2.jpg', null, '罗迪', '2016-10-24 15:03:14', null, null, null, null, '2016-10-24 15:03:14', '30');
INSERT INTO `t_areaphoto` VALUES ('bea709fba03b4adab1ef95c6a8dcd7ae', 'http://of8rkrh1w.bkt.clouddn.com/2016/10/16/1479266206989mybatis.jpg', null, '罗迪', '2016-11-16 11:16:47', null, null, null, null, '2016-11-16 11:16:47', '11');

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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_authorization` VALUES ('125', null, 'jinan', '2016-10-23 15:02:16', null, null, null, null, '2016-10-23 15:02:18', '0000000022222222222222', '11');
INSERT INTO `t_authorization` VALUES ('127', null, 'admin', '2016-10-26 16:36:15', null, null, null, null, '2016-10-26 16:36:15', '0000000000000000000000003333333', '13');
INSERT INTO `t_authorization` VALUES ('130', null, 'admin', '2016-11-16 11:23:12', null, null, null, null, '2016-11-16 11:23:12', '9656a53225344f1fa11e9fe705326eff', '30');
INSERT INTO `t_authorization` VALUES ('133', null, 'admin', '2016-11-17 18:54:12', null, null, null, null, '2016-11-17 18:54:12', '3cc86b1a3a5e43d3bacfca2c7b2bf49a', '14');
INSERT INTO `t_authorization` VALUES ('134', null, 'admin', '2016-11-21 18:13:11', null, null, null, null, '2016-11-21 18:13:11', 'a4a91e3a3e814ebf8f33c4659a1b1560', '14');

-- ----------------------------
-- Table structure for t_carded
-- ----------------------------
DROP TABLE IF EXISTS `t_carded`;
CREATE TABLE `t_carded` (
  `Id` varchar(50) NOT NULL COMMENT '编号',
  `Name` varchar(1024) NOT NULL COMMENT '姓名',
  `IDNumber` char(18) NOT NULL COMMENT '身份证号码',
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_carded
-- ----------------------------

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
  `ComplaintStateId` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `RoomId` (`RoomId`),
  KEY `UserId` (`UserId`),
  KEY `t_comment_idfk_3` (`ComplaintStateId`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`RoomId`) REFERENCES `t_room` (`Id`),
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `t_user` (`Id`),
  CONSTRAINT `t_comment_idfk_3` FOREIGN KEY (`ComplaintStateId`) REFERENCES `t_complaintstate` (`Id`)
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
-- Table structure for t_complaint
-- ----------------------------
DROP TABLE IF EXISTS `t_complaint`;
CREATE TABLE `t_complaint` (
  `id` varchar(50) NOT NULL COMMENT '投诉编号',
  `title` varchar(1024) NOT NULL COMMENT '投诉标题',
  `content` mediumtext NOT NULL COMMENT '投诉内容',
  `reply` mediumtext COMMENT '投诉回复',
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  `userId` varchar(50) NOT NULL COMMENT '投诉人id',
  `roomId` varchar(50) NOT NULL COMMENT '投诉房间编号',
  `complaintStateId` tinyint(1) NOT NULL COMMENT '投诉的处理状态',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `t_casasdsadasd` (`roomId`),
  KEY `tdasdasdasd` (`complaintStateId`),
  CONSTRAINT `t_casasdsadasd` FOREIGN KEY (`roomId`) REFERENCES `t_room` (`Id`),
  CONSTRAINT `t_complaint_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `t_user` (`Id`),
  CONSTRAINT `tdasdasdasd` FOREIGN KEY (`complaintStateId`) REFERENCES `t_complaintstate` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_complaint
-- ----------------------------
INSERT INTO `t_complaint` VALUES ('1', 'dasd', 'dasdasdas', 'dadasd', null, 'admin', '2016-11-22 15:40:00', null, null, 'zjjadmin', '2016-11-22 16:34:08', '2016-11-22 16:34:08', '065bd3e2bb5a4f34b7fa2649178d3d71', '5435443', '1');
INSERT INTO `t_complaint` VALUES ('2', 'mygod', 'hfdhai', 'rgrdsgf', null, 'admin', '2016-11-22 16:54:15', null, null, 'admin', '2016-11-22 16:58:52', '2016-11-22 16:58:52', '039c1cda57c7496ba98d96e09a842293', '25465465', '1');
INSERT INTO `t_complaint` VALUES ('3', 'dha', 'fds', null, null, 'admin', '2016-11-22 17:33:38', null, null, null, null, '2016-11-22 17:33:42', '046a80530d0841168ae5cdc7b1d9e50d', '53464t54', '2');
INSERT INTO `t_complaint` VALUES ('4', 'rw', 'rw', null, null, 'admin', '2016-11-22 17:34:19', null, null, null, null, '2016-11-22 17:34:24', '065bd3e2bb5a4f34b7fa2649178d3d71', '423534r', '2');
INSERT INTO `t_complaint` VALUES ('5', 'frs', 'fdd', '', null, 'admin', '2016-11-22 17:35:20', null, null, 'admin', '2016-11-22 17:37:10', '2016-11-22 17:37:10', '046a80530d0841168ae5cdc7b1d9e50d', '5435443', '3');
INSERT INTO `t_complaint` VALUES ('6', 'dd', 'sg', null, null, 'admin', '2016-11-22 17:35:47', null, null, null, null, '2016-11-22 17:35:50', '0d944254d3234c3094a022ccfd6edc33', '543546', '2');
INSERT INTO `t_complaint` VALUES ('7', 'ffs', 'htr', '我们会好好处理的', null, 'admin', '2016-11-22 17:36:17', null, null, 'zjjadmin', '2016-11-22 17:37:58', '2016-11-22 17:37:58', '16bfd25f457c4544bd06419f42de9d79', '2354654', '1');

-- ----------------------------
-- Table structure for t_complaintstate
-- ----------------------------
DROP TABLE IF EXISTS `t_complaintstate`;
CREATE TABLE `t_complaintstate` (
  `Id` tinyint(1) NOT NULL COMMENT '投诉状态的编号',
  `NodeName` varchar(128) NOT NULL COMMENT '状态内容',
  `StateId` tinyint(1) DEFAULT '1' COMMENT '投诉状态的状态',
  `Remark` varchar(50) DEFAULT NULL,
  `Creator` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Editor` varchar(50) DEFAULT NULL,
  `EditDate` datetime DEFAULT NULL,
  `Checker` varchar(50) DEFAULT NULL,
  `CheckDate` datetime DEFAULT NULL,
  `OperateDate` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `Id_2` (`Id`),
  KEY `Id_3` (`Id`),
  KEY `Id_4` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_complaintstate
-- ----------------------------
INSERT INTO `t_complaintstate` VALUES ('1', '已处理', '1', null, 'admin', '2016-11-22 11:21:36', null, null, null, null, '2016-11-22 11:21:43');
INSERT INTO `t_complaintstate` VALUES ('2', '待处理', '1', null, 'admin', '2016-11-22 11:22:02', null, null, null, null, '2016-11-22 11:22:04');
INSERT INTO `t_complaintstate` VALUES ('3', '处理中', '1', null, 'admin', '2016-11-22 11:22:18', null, null, null, null, '2016-11-22 11:22:20');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dicorderstate
-- ----------------------------
INSERT INTO `t_dicorderstate` VALUES ('1', '已完成', '1', null, 'gees', '2016-10-23 08:25:35', null, null, null, null, '2016-10-23 08:25:40');
INSERT INTO `t_dicorderstate` VALUES ('2', '未完成', '1', null, 'gaa', '2016-10-23 08:26:03', null, null, null, null, '2016-10-23 08:26:06');
INSERT INTO `t_dicorderstate` VALUES ('3', '已取消', '1', null, 'gwe', '2016-11-06 14:07:32', null, null, null, null, '2016-11-06 14:07:37');
INSERT INTO `t_dicorderstate` VALUES ('4', '待支付', '1', null, 'gfh', '2016-11-21 09:30:16', null, null, null, null, '2016-11-21 09:30:19');
INSERT INTO `t_dicorderstate` VALUES ('5', '已支付', '1', null, 'hsf', '2016-11-21 09:30:40', null, null, null, null, '2016-11-21 09:30:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dicuserstate
-- ----------------------------
INSERT INTO `t_dicuserstate` VALUES ('1', '正常', '1', null, 'fsd', '2016-10-21 21:41:52', null, null, null, null, '2016-10-21 21:42:26');
INSERT INTO `t_dicuserstate` VALUES ('2', '冻结', '1', null, 'fsd', '2016-10-21 22:03:49', null, null, null, null, '2016-10-21 22:03:52');
INSERT INTO `t_dicuserstate` VALUES ('3', '异常', '1', null, 'fsd', '2016-10-21 22:04:08', null, null, null, null, '2016-10-21 22:04:13');
INSERT INTO `t_dicuserstate` VALUES ('4', '未知', '1', null, 'admin', '2016-10-22 09:26:15', null, null, null, null, '2016-10-22 09:26:21');
INSERT INTO `t_dicuserstate` VALUES ('5', '废弃', '1', null, 'admin', '2016-10-22 09:26:19', null, null, null, null, '2016-10-22 09:26:23');
INSERT INTO `t_dicuserstate` VALUES ('6', '待核验', '1', '房主注册时状态', 'admin', '2016-11-21 17:04:44', null, null, null, null, '2016-11-21 17:04:51');
INSERT INTO `t_dicuserstate` VALUES ('7', '已通过', '1', '管理员审核房主通过', 'admin', '2016-11-21 17:05:14', null, null, null, null, '2016-11-21 17:05:17');
INSERT INTO `t_dicuserstate` VALUES ('8', '未通过', '1', '房主注册信息未审核通过', 'admin', '2016-11-21 17:05:37', null, null, null, null, '2016-11-21 17:05:42');

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
INSERT INTO `t_order` VALUES ('142523543', null, '彭辉', '2016-10-23 08:34:23', null, null, null, null, '2016-10-23 08:34:25', '423534r', '0d944254d3234c3094a022ccfd6edc33', '3');
INSERT INTO `t_order` VALUES ('1453531', null, 'naomi', '2016-10-23 08:33:37', null, null, null, null, '2016-10-23 08:33:40', '53464t54', '0d52b8e645014459a1e1db74c04b0b12', '1');
INSERT INTO `t_order` VALUES ('1534534', null, '张三', '2016-10-23 08:27:46', null, null, null, null, '2016-10-23 08:27:49', '25465465', '0ce69ace009945b7bb17fbb7a0c83eb0', '1');
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
  `roomState` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `t_room_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `t_user` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_room
-- ----------------------------
INSERT INTO `t_room` VALUES ('2342123', '观景居', '223', '美丽', '湖南省张家界市', '提供发票', null, 'etger', '2016-10-22 15:22:30', null, null, null, null, '2016-10-22 15:22:32', '08b48f6cd71246be9dc1cb547910f537', '1');
INSERT INTO `t_room` VALUES ('2354654', '碎玉轩', '266', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'iee', '2016-10-22 15:13:50', null, null, null, null, '2016-10-22 15:13:54', '065bd3e2bb5a4f34b7fa2649178d3d71', '1');
INSERT INTO `t_room` VALUES ('2545342', '丛林小屋', '231', '清新宜人', '湖南省张家界市', '提供发票', null, 'ewg', '2016-10-22 15:20:25', null, null, null, null, '2016-10-22 15:20:29', '08b48f6cd71246be9dc1cb547910f537', '0');
INSERT INTO `t_room` VALUES ('25465465', '豪华小宅', '788', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'gew', '2016-10-22 15:15:15', null, null, null, null, '2016-10-22 15:15:18', '039c1cda57c7496ba98d96e09a842293', '0');
INSERT INTO `t_room` VALUES ('3546576', '清风苑', '299', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'ggr', '2016-10-22 15:08:30', null, null, null, null, '2016-10-22 15:08:34', '046a80530d0841168ae5cdc7b1d9e50d', '1');
INSERT INTO `t_room` VALUES ('423534r', '摘星屋', '166', '舒适宜人', '湖南省耒阳市', '提供发票', null, 'wem', '2016-10-22 15:19:16', null, null, null, null, '2016-10-22 15:19:20', '065bd3e2bb5a4f34b7fa2649178d3d71', '0');
INSERT INTO `t_room` VALUES ('53464t54', '温馨小屋', '179', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'woo', '2016-10-22 15:12:46', null, null, null, null, '2016-10-22 15:12:49', '046a80530d0841168ae5cdc7b1d9e50d', '1');
INSERT INTO `t_room` VALUES ('5435443', '望风居', '452', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'nk', '2016-10-22 15:18:09', null, null, null, null, '2016-10-22 15:18:11', '065bd3e2bb5a4f34b7fa2649178d3d71', '1');
INSERT INTO `t_room` VALUES ('543546', '河边小筑', '188', '舒适宜人', '湖南省吉首市凤凰县', '提供发票', null, 'sng', '2016-10-22 15:11:36', null, null, null, null, '2016-10-22 15:11:41', '039c1cda57c7496ba98d96e09a842293', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_supplies
-- ----------------------------
INSERT INTO `t_supplies` VALUES ('1', '0', '0', '0', '0', '0', '0', '0', '默认0不提供该服务', 'admin', '2016-11-21 18:17:56', null, null, null, null, '2016-11-21 18:17:52', '2342123');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `Id` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `RealName` varchar(50) DEFAULT NULL,
  `IDNumber` char(18) DEFAULT NULL,
  `Sex` varchar(5) DEFAULT NULL,
  `TelPhone` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
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
INSERT INTO `t_user` VALUES ('00000000000000000000000000', 'admin', '63A9F0EA7BB98050796B649E85481845', '罗迪', '0', '男', '236565655', 'hrfhedrgh@qq.com', null, 'admin', '2016-10-22 14:21:17', 'admin', '2016-11-20 16:22:27', null, null, '2016-10-22 14:21:23', '1');
INSERT INTO `t_user` VALUES ('00000000000000000000000001', 'zjjadmin', '63A9F0EA7BB98050796B649E85481845', '苏小涵', '0', '男', '17777777777', 'zjj@vip.com', null, 'zjjadmin', '2016-10-22 14:23:30', null, null, null, null, '2016-10-22 14:23:33', '1');
INSERT INTO `t_user` VALUES ('0000000000000000000000003333333', 'eumji', '63A9F0EA7BB98050796B649E85481845', '廖志敏', '0', '男', '18888888899', '88888@vip.com', null, 'eumji', '2016-10-24 18:18:11', null, null, null, null, '2016-10-24 18:18:14', '1');
INSERT INTO `t_user` VALUES ('0000000000000000222', 'jinan', '63A9F0EA7BB98050796B649E85481845', '马晓丽', '0', '女', '1246787666555', '2222@qq.com', null, 'jinan', '2016-10-23 15:03:44', 'jinan', '2016-10-25 21:18:39', null, null, '2016-10-23 15:03:49', '1');
INSERT INTO `t_user` VALUES ('0046c8a1a7404c459d0542759c45e47c', 'test63', '123', '展颜', '0', '女', '1357441111163', '12408@qq.com', null, '小63', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('039c1cda57c7496ba98d96e09a842293', 'test18', '123', '邢强', '0', '男', '1357441111118', '12363@qq.com', null, '小18', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('046a80530d0841168ae5cdc7b1d9e50d', 'leiyang21', '123', '曲晓玲', '0', '女', '1357431111321', '123436@qq.com', null, '小xiao21', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('065bd3e2bb5a4f34b7fa2649178d3d71', 'leiyang33', '123', '刘慧芳', '0', '女', '1357431111333', '123448@qq.com', null, '小xiao33', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('08b48f6cd71246be9dc1cb547910f537', 'test3', '123', '朱欣', '0', '男', '135744111113', '12348@qq.com', null, '小3', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('0b37cfa0e1174e1baf5a686b409b29c6', 'test11', '123', '王天成', '0', '男', '1357441111111', '12356@qq.com', null, '小11', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('0c1b2bc07c6d4d9f9407ce839c04013d', 'bird', '202CB962AC59075B964B07152D234B70', '康倩', '0', '女', '156451548152', '545125@qq.com', null, 'admin', '2016-11-17 19:03:35', null, null, null, null, '2016-11-17 19:03:35', '1');
INSERT INTO `t_user` VALUES ('0ce69ace009945b7bb17fbb7a0c83eb0', 'test97', '123', '张伟', '0', '男', '1357441111197', '12442@qq.com', null, '小97', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('0d06c1beccb84815ad1772f14012140c', 'leiyang37', '123', '童佳倩', '0', '女', '1357431111337', '123452@qq.com', null, '小xiao37', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('0d52b8e645014459a1e1db74c04b0b12', 'leiyang10', '123', '吴萌', '0', '女', '1357431111310', '123425@qq.com', null, '小xiao10', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', '1');
INSERT INTO `t_user` VALUES ('0d944254d3234c3094a022ccfd6edc33', 'test38', '123', '何春香', '0', '女', '1357441111138', '12383@qq.com', null, '小38', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('0f8f431b65904a7994c782e3ee39e2cb', 'test83', '123', '罗青', '0', '男', '1357441111183', '12428@qq.com', null, '小83', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('13949d11f5394dec8e53cc318a99b727', 'gewsgfew', 'E10ADC3949BA59ABBE56E057F20F883E', '萝莉', '0', '女', '741251581', 'hsrhbrf@qq.com', null, 'admin', '2016-11-02 11:56:51', null, null, null, null, '2016-11-02 11:56:51', '1');
INSERT INTO `t_user` VALUES ('167808bfa3644321a65ebd5edcf52500', 'test49', '123', '刘英波', '0', '男', '1357441111149', '12394@qq.com', null, '小49', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('16bfd25f457c4544bd06419f42de9d79', 'test94', '123', '张博', '0', '男', '1357441111194', '12439@qq.com', null, '小94', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('19cb5729ad3145239c007fc0d226440c', 'test78', '123', '陈波', '0', '男', '1357441111178', '12423@qq.com', null, '小78', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('1aa0c67f4bd04a51b5a206c8aca9372a', 'test80', '123', '张建党', '0', '男', '1357441111180', '12425@qq.com', null, '小80', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('1abc097c49cd4fbfb10b3e16be261aa7', 'test14', '123', '卞九平', '0', '男', '1357441111114', '12359@qq.com', null, '小14', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('1d25963c432e4937aa9fc17b378c5726', 'leiyang15', '123', '李娟', '0', '女', '1357431111315', '123430@qq.com', null, '小xiao15', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('1e0957f6b9cf4354940e041343d90a3e', 'test15', '123', '邓德祥', '0', '男', '1357441111115', '12360@qq.com', null, '小15', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('1f6c0a4f75274a5991ae76e469885093', 'leiyang38', '123', '刘梅', '0', '女', '1357431111338', '123453@qq.com', null, '小xiao38', '2016-10-22 09:28:57', 'leiyang38', '2016-10-27 13:57:47', null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('215a85c235684590a9913cc373369388', 'leiyang39', '123', '王丽娟', '0', '女', '1357431111339', '123454@qq.com', null, '小xiao39', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('2271e161e510475c8add5ca45d3e1823', 'test45', '123', '徐传峰', '0', '男', '1357441111145', '12390@qq.com', null, '小45', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('23a2d81e45224ebaba6018f9a6cf9f1d', 'leiyang18', '123', '闫静', '0', '女', '1357431111318', '123433@qq.com', null, '小xiao18', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('24706047eede4953847f50e8b716a4b1', 'test90', '123', '刘铁成', '0', '男', '1357441111190', '12435@qq.com', null, '小90', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('26d3ff66469047849d2eb968768276b6', 'test99', '123', '王广义', '0', '男', '1357441111199', '12444@qq.com', null, '小99', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('280c3a8b803b4a84bad98a03cf9e69bf', 'test65', '123', '王德军', '0', '男', '1357441111165', '12410@qq.com', null, '小65', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('281483327f144fa2a23b6a7720056a27', 'test35', '123', '温真', '0', '男', '1357441111135', '12380@qq.com', null, '小35', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('351c3eb097b3474cb4ef8322de3b4c59', 'zjj025', 'root', '黄刚', '0', '男', '13774444444', '4444@qq.com', null, 'admin', '2016-10-25 18:36:49', null, null, null, null, '2016-10-25 18:36:49', '1');
INSERT INTO `t_user` VALUES ('35bb8634e9344860a810dba4087813d3', 'woshicuowude', 'shi', '黄飞', '0', '男', '1234354353', 'awea@ada.com', null, 'admin', '2016-10-25 18:50:46', null, null, null, null, '2016-10-25 18:50:46', '1');
INSERT INTO `t_user` VALUES ('363bdae5b10f40c8abe3b268ea91d017', 'zjj1', '123', '张爱萍', '0', '女', '135743111111', '123456@qq.com', null, '小xiao1', '2016-10-22 09:22:49', null, null, null, null, '2016-10-22 09:22:49', '3');
INSERT INTO `t_user` VALUES ('36c810765fbf465a804e17b707f29546', 'leiyang31', '123', '周素芳', '0', '女', '1357431111331', '123446@qq.com', null, '小xiao31', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('380d177cdc65472c9cd38039a8be4d90', 'test6', '123', '郑芳芳', '0', '女', '135744111116', '12351@qq.com', null, '小6', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('386f4606faee44ffbb2c72d65d47b28a', 'test50', '123', '李斌', '0', '男', '1357441111150', '12395@qq.com', null, '小50', '2016-10-22 07:26:27', 'test50', '2016-11-20 18:22:31', null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('38e83f6fafa349e99d7812bd59ef525c', 'leiyang25', '123', '崔静', '0', '女', '1357431111325', '123440@qq.com', null, '小xiao25', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('395b17db602d48d7b6632cc876563338', 'test79', '123', '张星星', '0', '男', '1357441111179', '12424@qq.com', null, '小79', '2016-10-22 07:26:27', 'test79', '2016-10-27 13:58:40', null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('3fbdec21055b493782ce2a6ab6044f55', 'leiyang19', '123', '王娜', '0', '女', '1357431111319', '123434@qq.com', null, '小xiao19', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('424a9df57d8a444786dc7d8cf8da7946', 'test96', '123', '孟凡', '0', '男', '1357441111196', '12441@qq.com', null, '小96', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('4871e3a9693a492eb9fe0adda7ac787f', 'test56', '123', '程光', '0', '男', '1357441111156', '12401@qq.com', null, '小56', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('49b2b3a2db3d4a068d0d3b0addd8d77f', 'test22', '123', '张建', '0', '男', '1357441111122', '12367@qq.com', null, '小22', '2016-10-22 07:26:27', 'test22', '2016-11-18 15:25:03', null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('4a95953bfe6b47dbb9f67320b18cebc4', 'leiyang29', '123', '王秋霞', '0', '女', '1357431111329', '123444@qq.com', null, '小xiao29', '2016-10-22 09:28:57', 'leiyang29', '2016-11-22 17:25:48', null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('4aad7fb02d8740cfb184215d5fc136ca', 'leiyang36', '123', '盛萱', '0', '女', '1357431111336', '123451@qq.com', null, '小xiao36', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('4c1b3b63429b4e79ab04ac742c877b08', 'leiyang20', '123', '徐君蕾', '0', '女', '1357431111320', '123435@qq.com', null, '小xiao20', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('51c814204dcc4085aebf37bc528b2642', 'test43', '123', '王鹏', '0', '男', '1357441111143', '12388@qq.com', null, '小43', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('537b601a6ec54924866b8df2a71d9293', 'test60', '123', '赵润', '0', '男', '1357441111160', '12405@qq.com', null, '小60', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('53b45b55e6c84f1c80d4e23a99e2977e', 'leiyang30', '123', '陈瑞静', '0', '女', '1357431111330', '123445@qq.com', null, '小xiao30', '2016-10-22 09:28:57', 'leiyang30', '2016-11-22 17:25:43', null, null, '2016-10-22 09:28:57', '3');
INSERT INTO `t_user` VALUES ('54cc27ce9c514653bf67467aaed37577', 'test42', '123', '张亮', '0', '男', '1357441111142', '12387@qq.com', null, '小42', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('561d9e6fdce94e8a9a08dff4fe2f15d0', 'test66', '123', '王景杰', '0', '男', '1357441111166', '12411@qq.com', null, '小66', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('58d9744dbee7439db45508ac1f20645e', 'test87', '123', '王华', '0', '男', '1357441111187', '12432@qq.com', null, '小87', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('592f5daec8474040aa1c1745ec432e8d', 'test52', '123', '李子昌', '0', '男', '1357441111152', '12397@qq.com', null, '小52', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('59fce160317345dfbfeae1779ce493c0', 'test47', '123', '杨思涛', '0', '男', '1357441111147', '12392@qq.com', null, '小47', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('5abb07a135bb40e4b42871c674f7402b', 'test4', '123', '卢家豪', '0', '男', '135744111114', '12349@qq.com', null, '小4', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('5f17264082d04a6f90c025b8d0fa1956', 'linda', '202CB962AC59075B964B07152D234B70', '崔楠', '0', '女', '45120215', '4515125@qq.com', null, 'admin', '2016-11-17 18:54:12', null, null, null, null, '2016-11-17 18:54:12', '1');
INSERT INTO `t_user` VALUES ('61338dd9e2a54347b2a29a2cf89a25da', 'leiyang24', '123', '裴秀智', '0', '女', '1357431111324', '123439@qq.com', null, '小xiao24', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '3');
INSERT INTO `t_user` VALUES ('64a670d6484346f4bb68e84d01ac1359', 'leiyang17', '123', '解树', '0', '女', '1357431111317', '123432@qq.com', null, '小xiao17', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '3');
INSERT INTO `t_user` VALUES ('6559801f86a940d59bf94c84eef862c2', 'test34', '123', '张旭', '0', '男', '1357441111134', '12379@qq.com', null, '小34', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('66745eeb3f414947bc19079649afb6ba', 'test24', '123', '张恒', '0', '男', '1357441111124', '12369@qq.com', null, '小24', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('6b7c011f9765414baba3741bfb32956b', 'test61', '123', '沈天龙', '0', '男', '1357441111161', '12406@qq.com', null, '小61', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('6be4c31b730a4e2eb8a0ed791b09f043', 'test36', '123', '卢阳', '0', '男', '1357441111136', '12381@qq.com', null, '小36', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('6c53934e0d5e4911b9ae80327611cc24', 'test77', '123', '徐毅', '0', '男', '1357441111177', '12422@qq.com', null, '小77', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('6cb5bf17b2b5433e9b4328c44328787d', 'test5', '123', '黄成龙', '0', '男', '135744111115', '12350@qq.com', null, '小5', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('6d27348412bb4223bb4575cbfff87c65', 'test10', '123', '徐杰', '0', '男', '1357441111110', '12355@qq.com', null, '小10', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('6e59d3994d234335b10a85d131fab1a5', 'kiki', '202CB962AC59075B964B07152D234B70', '杨柳', '0', '女', '451216125', '4435464@163.com', null, 'admin', '2016-11-17 18:43:26', null, null, null, null, '2016-11-17 18:43:26', '1');
INSERT INTO `t_user` VALUES ('6fbf1cb940a64eeebdf414a8c1cfc7c7', 'test20', '123', '顾毅', '0', '男', '1357441111120', '12365@qq.com', null, '小20', '2016-10-22 07:26:27', 'test20', '2016-11-22 17:27:34', null, null, '2016-10-22 07:26:27', '8');
INSERT INTO `t_user` VALUES ('743020718a7144ff919ec9f5c91cf90e', 'leiyang35', '123', '裴诗韵', '0', '女', '1357431111335', '123450@qq.com', null, '小xiao35', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('7486fa9da5564b0c8b2ed560f0d7a83b', 'leiyang32', '123', '张茜', '0', '女', '1357431111332', '123447@qq.com', null, '小xiao32', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('75e7bc817c654fada65bd2de0b25b6eb', 'test16', '123', '曹禺', '0', '男', '1357441111116', '12361@qq.com', null, '小16', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('7785a1a73a8447eab8130f91ba42d3b8', 'leiyang11', '123', '宋伊人', '0', '女', '1357431111311', '123426@qq.com', null, '小xiao11', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', '2');
INSERT INTO `t_user` VALUES ('79ba02e75818441e80f2088197a0d3fc', 'test64', '123', '郭予涛', '0', '男', '1357441111164', '12409@qq.com', null, '小64', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('79bad3c7474c404d853f7255d5c0863f', 'test12', '123', '刘哲', '0', '男', '1357441111112', '12357@qq.com', null, '小12', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('7a4eeaffe951477885da353c7a32a8d5', 'test75', '123', '陆鑫宇', '0', '男', '1357441111175', '12420@qq.com', null, '小75', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('7e7ca8add5cb47498c900492e7941d81', 'test31', '123', '顾佳颖', '0', '男', '1357441111131', '12376@qq.com', null, '小31', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('7ee3cdae2371494aa3042600d9a86794', 'test86', '123', '钱伟', '0', '男', '1357441111186', '12431@qq.com', null, '小86', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('8010524fd9204917b01a804426fd7ebd', 'test72', '123', '吴昊', '0', '男', '1357441111172', '12417@qq.com', null, '小72', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('871861b22ec64936abe6d9101d101eb0', 'leiyang16', '123', '江瑾瑜', '0', '女', '1357431111316', '123431@qq.com', null, '小xiao16', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('8747b09eea014c2e863bc0ad008100ec', 'test53', '123', '周家', '0', '男', '1357441111153', '12398@qq.com', null, '小53', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('8ab06292a8644f0194bc78450e9cbe16', 'Jack', '202CB962AC59075B964B07152D234B70', '张翔宇', '0', '男', '45125451202', '4451215452qq.com', null, 'admin', '2016-11-16 11:23:12', null, null, null, null, '2016-11-16 11:23:12', '1');
INSERT INTO `t_user` VALUES ('9793bfbbf7c9452b8a6a217a5cdd0e5e', 'test44', '123', '蔡明', '0', '男', '1357441111144', '12389@qq.com', null, '小44', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('988b1e3ada1d4d3eac4f3f2eadf2a28f', 'test89', '123', '徐于哲', '0', '男', '1357441111189', '12434@qq.com', null, '小89', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('9bb2438fd4c0449ba26d74416056ef51', 'test27', '123', '戴浩', '0', '男', '1357441111127', '12372@qq.com', null, '小27', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('9d974ca0e1e14e999eba7c285f28369a', '巴卫', '202CB962AC59075B964B07152D234B70', '顾一', '0', '男', '1234667566', '45121411@qq.com', null, 'admin', '2016-11-16 11:18:47', null, null, null, null, '2016-11-16 11:18:47', '1');
INSERT INTO `t_user` VALUES ('9dfe7f6b8db244f797b9d541c90be0b9', 'test67', '123', '曹杰', '0', '男', '1357441111167', '12412@qq.com', null, '小67', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('a0d095e30f4e4fdc8ea6c66593c3883a', 'test41', '123', '陈杰', '0', '男', '1357441111141', '12386@qq.com', null, '小41', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('a4038c45a7b745179c83f0cbdc649e77', 'zjjs5', '123', '王苏', '0', '女', '135743111135', '123460@qq.com', null, '小xiao5', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', '3');
INSERT INTO `t_user` VALUES ('a5f8ea9276b7437b95d457dca63c9226', 'leiyang14', '123', '刘雪', '0', '女', '1357431111314', '123429@qq.com', null, '小xiao14', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '3');
INSERT INTO `t_user` VALUES ('a69967e119f44e66b52c5237a24c605b', 'test30', '123', '张若昀', '0', '男', '1357441111130', '12375@qq.com', null, '小30', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('a8d189b37b8545e08925917a4cef7fb2', 'leiyang12', '123', '唐艺昕', '0', '女', '1357431111312', '123427@qq.com', null, '小xiao12', '2016-10-22 09:28:56', null, null, null, null, '2016-10-22 09:28:56', '0');
INSERT INTO `t_user` VALUES ('aa2deea09c8340829dfc3bee4dfa05c7', 'test19', '123', '李彦希', '0', '男', '1357441111119', '12364@qq.com', null, '小19', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('ab645ec4b81242ee90235c70430a736b', 'test29', '123', '张凯', '0', '男', '1357441111129', '12374@qq.com', null, '小29', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('ac072acf611d40198b2ecb903a37bc98', 'test92', '123', '江洪', '0', '男', '1357441111192', '12437@qq.com', null, '小92', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('ac749da2d3f0400f9f102661250b3011', 'test26', '123', '高云翔', '0', '男', '1357441111126', '12371@qq.com', null, '小26', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('afc80af0d1904e67ab60e93f28a347ed', 'zjjs7', '123', '刘霞', '0', '女', '135743111137', '123462@qq.com', null, '小xiao7', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', '2');
INSERT INTO `t_user` VALUES ('b0959ac392a54287bdc43c77870361b2', 'test88', '123', '蒋广涛', '0', '男', '1357441111188', '12433@qq.com', null, '小88', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('b32889051d884f02a26af5388a365813', 'leiyang27', '123', '林岚', '0', '女', '1357431111327', '123442@qq.com', null, '小xiao27', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('b7f63faf3c5d46dca3d6038f59bd5a54', 'nainaisheng', 'E10ADC3949BA59ABBE56E057F20F883E', '吴映洁', '0', '女', '451356562', '54646354654@qq.com', null, 'admin', '2016-11-02 12:01:00', null, null, null, null, '2016-11-02 12:01:00', '1');
INSERT INTO `t_user` VALUES ('bce00b127d364c688e4536ad2999fc14', 'leiyang22', '123', '王玲', '0', '女', '1357431111322', '123437@qq.com', null, '小xiao22', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('bed354aba1e340288ca81c247d54c06a', 'leiyang34', '123', '白珊', '0', '女', '1357431111334', '123449@qq.com', null, '小xiao34', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('c2d8ff4e2cf64bea867375727ccebae0', 'test37', '123', '陆贾', '0', '男', '1357441111137', '12382@qq.com', null, '小37', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('c574de8a935a4a8184a92d7577a16caf', 'test9', '123', '彦杰', '0', '男', '135744111119', '12354@qq.com', null, '小9', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('c87d082d538c4f2e8a2f508fa1599828', 'test95', '123', '高湛', '0', '男', '1357441111195', '12440@qq.com', null, '小95', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('c9be67d9ca094321bb689a0c79483915', 'oye', '202CB962AC59075B964B07152D234B70', '刘翔', '0', '男', '153775836753', '35436252@qq.com', null, 'admin', '2016-11-17 18:40:01', null, null, null, null, '2016-11-17 18:40:01', '1');
INSERT INTO `t_user` VALUES ('cc220206a07948df909c491991536094', 'test48', '123', '高彦', '0', '男', '1357441111148', '12393@qq.com', null, '小48', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('cf4fa26a100945f49f2e6cb27946da80', 'test25', '123', '高杰', '0', '男', '1357441111125', '12370@qq.com', null, '小25', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('d08a0b08a9aa4abf8f3fc2128686b312', 'leiyang13', '123', '刘昭君', '0', '女', '1357431111313', '123428@qq.com', null, '小xiao13', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('d5032b165be541459d5f17f747ee87e3', 'test58', '123', '周航', '0', '男', '1357441111158', '12403@qq.com', null, '小58', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('d91a5d1c95e84403bbfc09a930083748', 'test1', '123', '李鹏', '0', '男', '135744111111', '12346@qq.com', null, '小1', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('d9d73534632149f5914183fe20d79180', 'zjjs6', '123', '王璇', '0', '女', '135743111136', '123461@qq.com', null, '小xiao6', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', '3');
INSERT INTO `t_user` VALUES ('dd938f4ad351423588e5b03325818840', 'leiyang40', '123', '张艺芳', '0', '女', '1357431111340', '123455@qq.com', null, '小xiao40', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('df4ca6767e3f46a5afce582cb7fc3d35', 'test62', '123', '张艺兴', '0', '男', '1357441111162', '12407@qq.com', null, '小62', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('e20e8531b28b4ecf8a6b6617696bc7eb', 'test70', '123', '吴亦凡', '0', '男', '1357441111170', '12415@qq.com', null, '小70', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('e65e879466ee4c16b5da910b0b157407', 'test40', '123', '黄子韬', '0', '男', '1357441111140', '12385@qq.com', null, '小40', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('e7079a94e312451183e96273af83a9e0', 'test55', '123', '鹿晗', '0', '男', '1357441111155', '12400@qq.com', null, '小55', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '3');
INSERT INTO `t_user` VALUES ('e9064ae95ee24422a9caeb5c3abbedd3', 'leiyang28', '123', '郑秀晶', '0', '女', '1357431111328', '123443@qq.com', null, '小xiao28', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '2');
INSERT INTO `t_user` VALUES ('f0e64708abb246e2a0c9c503a9bec623', 'test93', '123', '孙家岩', '0', '男', '1357441111193', '12438@qq.com', null, '小93', '2016-10-22 07:26:27', 'test93', '2016-11-19 15:43:38', null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('f18ed8bd523c4079a1b698c139b8a190', 'test68', '123', '周雨辰', '0', '男', '1357441111168', '12413@qq.com', null, '小68', '2016-10-22 07:26:27', 'test68', '2016-10-26 16:02:52', null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('f2f742391f5248048c4d0ae3958e95fd', 'leiyang26', '123', '郑秀妍', '0', '女', '1357431111326', '123441@qq.com', null, '小xiao26', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '0');
INSERT INTO `t_user` VALUES ('f2f8ffd3aded401a9298d49c3d51ef2f', 'test21', '123', '李博一', '0', '男', '1357441111121', '12366@qq.com', null, '小21', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '2');
INSERT INTO `t_user` VALUES ('f3505d595120408aa38bd5651b789403', 'leiyang23', '123', '于波', '0', '女', '1357431111323', '123438@qq.com', null, '小xiao23', '2016-10-22 09:28:57', 'leiyang23', '2016-11-06 14:41:30', null, null, '2016-10-22 09:28:57', '1');
INSERT INTO `t_user` VALUES ('f6cd6ae73a574f2db79d666790e2cb66', 'test59', '123', '崔哲', '0', '男', '1357441111159', '12404@qq.com', null, '小59', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '1');
INSERT INTO `t_user` VALUES ('f70ed6f6373648b5a9760c5281f8d43b', 'zjjs4', '123', '张翔', '0', '女', '135743111134', '123459@qq.com', null, '小xiao4', '2016-10-22 09:26:41', 'zjjs4', '2016-11-10 16:14:55', null, null, '2016-10-22 09:26:41', '2');
INSERT INTO `t_user` VALUES ('f8d4bf42b02041c99a8a5f4d228fd9d4', 'test69', '123', '玉博瑄', '0', '男', '546762544', '12414@qq.com', null, '小69', '2016-10-22 07:26:27', 'test69', '2016-11-22 17:17:43', null, null, '2016-10-22 07:26:27', '1');

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
INSERT INTO `t_userrole` VALUES ('0d0a5a31582e4e07acb221bf370f29e6', null, 'admin', '2016-11-17 19:03:35', null, null, null, null, '2016-11-17 19:03:35', '0c1b2bc07c6d4d9f9407ce839c04013d', '3');
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
INSERT INTO `t_userrole` VALUES ('2f19cd3732ef4e3f89fa27837b61b371', null, 'admin', '2016-11-17 18:43:26', 'admin', '2016-11-22 17:32:26', null, null, '2016-11-22 17:32:26', '6e59d3994d234335b10a85d131fab1a5', '3');
INSERT INTO `t_userrole` VALUES ('363bdae5b10f40c8abe3b268ea91d017', null, '小xiao1', '2016-10-22 09:22:49', null, null, null, null, '2016-10-22 09:22:49', '363bdae5b10f40c8abe3b268ea91d017', '1');
INSERT INTO `t_userrole` VALUES ('36c810765fbf465a804e17b707f29546', null, '小xiao31', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '36c810765fbf465a804e17b707f29546', '2');
INSERT INTO `t_userrole` VALUES ('380d177cdc65472c9cd38039a8be4d90', null, '小6', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '380d177cdc65472c9cd38039a8be4d90', '2');
INSERT INTO `t_userrole` VALUES ('386f4606faee44ffbb2c72d65d47b28a', null, '小50', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '386f4606faee44ffbb2c72d65d47b28a', '1');
INSERT INTO `t_userrole` VALUES ('38e83f6fafa349e99d7812bd59ef525c', null, '小xiao25', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '38e83f6fafa349e99d7812bd59ef525c', '2');
INSERT INTO `t_userrole` VALUES ('395b17db602d48d7b6632cc876563338', null, '小79', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '395b17db602d48d7b6632cc876563338', '2');
INSERT INTO `t_userrole` VALUES ('3cc86b1a3a5e43d3bacfca2c7b2bf49a', null, 'admin', '2016-11-17 18:54:12', null, null, null, null, '2016-11-17 18:54:12', '5f17264082d04a6f90c025b8d0fa1956', '4');
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
INSERT INTO `t_userrole` VALUES ('871861b22ec64936abe6d9101d101eb0', null, '小xiao16', '2016-10-22 09:28:57', null, null, null, null, '2016-10-22 09:28:57', '871861b22ec64936abe6d9101d101eb0', '2');
INSERT INTO `t_userrole` VALUES ('8747b09eea014c2e863bc0ad008100ec', null, '小53', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '8747b09eea014c2e863bc0ad008100ec', '2');
INSERT INTO `t_userrole` VALUES ('94075f1eb55b486c866c6b9fadd4b713', null, 'admin', '2016-11-02 11:56:51', 'admin', '2016-11-09 21:59:59', null, null, '2016-11-09 21:59:59', '13949d11f5394dec8e53cc318a99b727', '3');
INSERT INTO `t_userrole` VALUES ('9656a53225344f1fa11e9fe705326eff', null, 'admin', '2016-11-16 11:23:12', null, null, null, null, '2016-11-16 11:23:12', '8ab06292a8644f0194bc78450e9cbe16', '4');
INSERT INTO `t_userrole` VALUES ('9793bfbbf7c9452b8a6a217a5cdd0e5e', null, '小44', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '9793bfbbf7c9452b8a6a217a5cdd0e5e', '2');
INSERT INTO `t_userrole` VALUES ('988b1e3ada1d4d3eac4f3f2eadf2a28f', null, '小89', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '988b1e3ada1d4d3eac4f3f2eadf2a28f', '2');
INSERT INTO `t_userrole` VALUES ('9b5b6db5634e49d7ac22537a1b727d19', null, 'admin', '2016-11-02 12:01:00', 'admin', '2016-11-21 18:12:53', null, null, '2016-11-21 18:12:53', 'b7f63faf3c5d46dca3d6038f59bd5a54', '3');
INSERT INTO `t_userrole` VALUES ('9bb2438fd4c0449ba26d74416056ef51', null, '小27', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '9bb2438fd4c0449ba26d74416056ef51', '2');
INSERT INTO `t_userrole` VALUES ('9dfe7f6b8db244f797b9d541c90be0b9', null, '小67', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', '9dfe7f6b8db244f797b9d541c90be0b9', '2');
INSERT INTO `t_userrole` VALUES ('a0d095e30f4e4fdc8ea6c66593c3883a', null, '小41', '2016-10-22 07:26:27', null, null, null, null, '2016-10-22 07:26:27', 'a0d095e30f4e4fdc8ea6c66593c3883a', '2');
INSERT INTO `t_userrole` VALUES ('a4038c45a7b745179c83f0cbdc649e77', null, '小xiao5', '2016-10-22 09:26:41', null, null, null, null, '2016-10-22 09:26:41', 'a4038c45a7b745179c83f0cbdc649e77', '2');
INSERT INTO `t_userrole` VALUES ('a4a91e3a3e814ebf8f33c4659a1b1560', null, 'admin', '2016-11-17 18:40:01', 'admin', '2016-11-21 18:13:11', null, null, '2016-11-21 18:13:11', 'c9be67d9ca094321bb689a0c79483915', '4');
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
INSERT INTO `t_userrole` VALUES ('c2c2b4fe6b6c433aa96afcb4a8cac6a1', null, 'admin', '2016-11-16 11:18:47', 'admin', '2016-11-20 16:27:19', null, null, '2016-11-20 16:27:19', '9d974ca0e1e14e999eba7c285f28369a', '3');
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
