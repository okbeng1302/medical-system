/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50613
Source Host           : localhost:3306
Source Database       : docdemo

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2018-03-12 14:59:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phoneNumber` int(11) DEFAULT NULL,
  `headPicture` varchar(255) DEFAULT NULL,
  `addDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'system', '123456', '庞嘉', '25', '1383333333', null, null, null, '1');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryImage` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `addDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  `commendState` int(255) DEFAULT NULL,
  `browses` int(255) DEFAULT NULL,
  `likes` int(255) DEFAULT NULL,
  `comments` int(255) DEFAULT NULL,
  `score` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '企鹅我去而且我瞅瞅', '而且汽车', '1', null, null, '', '而且汽车', '2018-01-07 21:37:52', '2018-01-07 21:37:52', '1', '2', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for newscategory
-- ----------------------------
DROP TABLE IF EXISTS `newscategory`;
CREATE TABLE `newscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `addDate` datetime DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newscategory
-- ----------------------------
INSERT INTO `newscategory` VALUES ('1', '气温气温错错错', '驱蚊器完成', '', '2018-01-07 21:37:34', '1');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phonenum` varchar(11) DEFAULT NULL,
  `cid` varchar(25) DEFAULT NULL,
  `wechatnum` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `flood` varchar(255) DEFAULT NULL,
  `menses` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `birthis` varchar(255) DEFAULT NULL,
  `family` varchar(255) DEFAULT NULL,
  `allergy` varchar(255) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `lastcase` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('42', '白亚光', '25', null, '13731709267', '13098876567', 'hh123', '汉', '工程师', '北京', '180', '80', 'O', '', '无', '无', '', '', '2018-03-02', '男', 'b5d960dadd33484190d78ff75734c21f', null, null);
INSERT INTO `patient` VALUES ('46', '牛叶超', '24', null, '1383838438', '13098319989867', 'zz', '少数名族', '智障', '北京', '180', '180', 'A', '无', '无', '无', '无', '无', '2018-03-03', '不明', 'c7f8911d55e6436494064b4a4d78032d', null, '腰疼');
INSERT INTO `patient` VALUES ('48', '庞嘉', '26', null, '21312321312', '2312312', '12312312', '汉', '医生', '任丘', '180', null, '', '', '', '', '', '', '2018-03-04', '男', '621492c4c997443181e194156de3ca48', null, '胖');
INSERT INTO `patient` VALUES ('49', '张三', '25', null, '1383333333', '336737388383', '12131321313', '汉', '司机', '加拿大', '180', '80', 'AB', '无', '无', '无', '无', '无', '2018-03-05', '男', '67a6af144480488db1cce374382023ab', null, '心疼');
INSERT INTO `patient` VALUES ('60', '王五', '38', null, '1111111', '2222222', '3333333', '哈萨克', '骑士', '芬兰', '260', '450', 'A', '', '无', '', '', '', '2018-03-12', '男', '8371a02f72364bd1ad72bd46e57bc2a7', null, '胃疼');
INSERT INTO `patient` VALUES ('61', '李扬', '500', null, '无', '无', '无', '犬', '看家', '任丘', '180', '80', 'O', '', '', '', '', '', '2018-03-06', '不明', '24bca82ce8914a99aa0f5d5d647f2827', null, '脑残');

-- ----------------------------
-- Table structure for patientcase
-- ----------------------------
DROP TABLE IF EXISTS `patientcase`;
CREATE TABLE `patientcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `casename` varchar(255) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `occurancetime` date DEFAULT NULL,
  `maincase` varchar(255) DEFAULT NULL,
  `casehis` varchar(255) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `suggestion` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patientcase
-- ----------------------------
INSERT INTO `patientcase` VALUES ('57', '脑残', 'e57954a7d4d8400480de548ec66f464c', '2018-02-28', '脑残', '脑残', '脑残', '脑残', '', '2018-03-12');
INSERT INTO `patientcase` VALUES ('58', '智障', 'e57954a7d4d8400480de548ec66f464c', null, '智障', '智障', '脑残', '脑残片', '', '2018-03-12');
INSERT INTO `patientcase` VALUES ('59', '多动2', '8371a02f72364bd1ad72bd46e57bc2a7', '2018-02-26', '多动', '脑残', '脑残', '脑残片', '', '2018-03-12');
INSERT INTO `patientcase` VALUES ('60', '胃老疼', '8371a02f72364bd1ad72bd46e57bc2a7', '2018-03-07', '特疼', '无', '饿的', '吃点干脆面', '', '2018-03-12');
INSERT INTO `patientcase` VALUES ('61', '心疼', '67a6af144480488db1cce374382023ab', '2018-03-07', '老疼', '无', '心律不齐', '多喝热水', '', '2018-03-12');
INSERT INTO `patientcase` VALUES ('62', '头疼', 'a7ba3645b782402eb9ecbc63e232e3bd', '2018-02-27', '脑袋疼啊 ', '无', '睡多了', '多喝热水', '', '2018-03-12');
INSERT INTO `patientcase` VALUES ('63', '流口水', '24bca82ce8914a99aa0f5d5d647f2827', '2018-02-27', '流口水', '无', '家族遗传', '就这样吧', '', '2018-03-12');
INSERT INTO `patientcase` VALUES ('64', '胖', '621492c4c997443181e194156de3ca48', '2018-02-28', '特别胖', '无', '吃的太多了', '少吃点吧 兄dei\r\n', '', '2018-03-12');
INSERT INTO `patientcase` VALUES ('65', '腰疼', 'c7f8911d55e6436494064b4a4d78032d', '2018-02-26', '老个腰疼', '无', '您懂得', '您懂得', '', '2018-03-12');
INSERT INTO `patientcase` VALUES ('66', '脑残', '24bca82ce8914a99aa0f5d5d647f2827', '2018-03-05', '脑残', '脑残', '脑残', '没救', '', '2018-03-12');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `headPicture` varchar(255) DEFAULT NULL,
  `addDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
