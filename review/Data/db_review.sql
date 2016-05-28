/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : db_review

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-06-10 13:48:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `a_pwd` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tb_advice`
-- ----------------------------
DROP TABLE IF EXISTS `tb_advice`;
CREATE TABLE `tb_advice` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_id` int(11) NOT NULL,
  `qg_id` int(11) NOT NULL,
  `advice` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_advice
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_answer`
-- ----------------------------
DROP TABLE IF EXISTS `tb_answer`;
CREATE TABLE `tb_answer` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `q_id` int(11) NOT NULL,
  `a_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `a_text` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `a_order` int(11) NOT NULL,
  `qg_id` int(11) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_answer
-- ----------------------------
INSERT INTO `tb_answer` VALUES ('1', '1', '1', '不通过', '1', '1');
INSERT INTO `tb_answer` VALUES ('2', '1', '2', '一般', '2', '1');
INSERT INTO `tb_answer` VALUES ('3', '1', '3', '重点', '3', '1');
INSERT INTO `tb_answer` VALUES ('4', '2', '1', '不通过', '1', '1');
INSERT INTO `tb_answer` VALUES ('5', '2', '2', '一般', '2', '1');
INSERT INTO `tb_answer` VALUES ('6', '2', '3', '重点', '3', '1');
INSERT INTO `tb_answer` VALUES ('7', '3', '1', '不通过', '1', '1');
INSERT INTO `tb_answer` VALUES ('8', '3', '2', '一般', '2', '1');
INSERT INTO `tb_answer` VALUES ('9', '4', '1', '不通过', '1', '2');
INSERT INTO `tb_answer` VALUES ('10', '4', '2', '一般', '2', '2');
INSERT INTO `tb_answer` VALUES ('11', '4', '3', '重点', '3', '2');
INSERT INTO `tb_answer` VALUES ('12', '5', '1', '不通过', '1', '2');
INSERT INTO `tb_answer` VALUES ('13', '5', '2', '一般', '2', '2');
INSERT INTO `tb_answer` VALUES ('14', '5', '3', '重点', '3', '2');
INSERT INTO `tb_answer` VALUES ('15', '6', '1', '不通过', '1', '2');
INSERT INTO `tb_answer` VALUES ('16', '6', '2', '一般', '2', '2');
INSERT INTO `tb_answer` VALUES ('17', '7', '1', '不通过', '1', '2');
INSERT INTO `tb_answer` VALUES ('18', '7', '2', '一般', '2', '2');
INSERT INTO `tb_answer` VALUES ('19', '8', '1', '不通过', '1', '3');
INSERT INTO `tb_answer` VALUES ('20', '8', '2', '一般', '2', '3');
INSERT INTO `tb_answer` VALUES ('21', '8', '3', '重点', '3', '3');
INSERT INTO `tb_answer` VALUES ('22', '9', '1', '不通过', '1', '3');
INSERT INTO `tb_answer` VALUES ('23', '9', '2', '一般', '2', '3');
INSERT INTO `tb_answer` VALUES ('24', '10', '1', '不通过', '1', '3');
INSERT INTO `tb_answer` VALUES ('25', '10', '2', '一般', '2', '3');
INSERT INTO `tb_answer` VALUES ('26', '11', '1', '不通过', '1', '3');
INSERT INTO `tb_answer` VALUES ('27', '11', '2', '一般', '2', '3');
INSERT INTO `tb_answer` VALUES ('28', '11', '3', '重点', '3', '3');
INSERT INTO `tb_answer` VALUES ('29', '12', '1', '不通过', '1', '4');
INSERT INTO `tb_answer` VALUES ('30', '12', '2', '一般', '2', '4');
INSERT INTO `tb_answer` VALUES ('31', '13', '1', '不通过', '1', '4');
INSERT INTO `tb_answer` VALUES ('32', '13', '2', '一般', '2', '4');
INSERT INTO `tb_answer` VALUES ('33', '14', '1', '不通过', '1', '4');
INSERT INTO `tb_answer` VALUES ('34', '14', '2', '一般', '2', '4');
INSERT INTO `tb_answer` VALUES ('35', '14', '3', '重点', '3', '4');
INSERT INTO `tb_answer` VALUES ('36', '15', '1', '不通过', '1', '5');
INSERT INTO `tb_answer` VALUES ('37', '15', '2', '一般', '2', '5');
INSERT INTO `tb_answer` VALUES ('38', '16', '1', '不通过', '1', '5');
INSERT INTO `tb_answer` VALUES ('39', '16', '2', '一般', '2', '5');
INSERT INTO `tb_answer` VALUES ('40', '17', '1', '不通过', '1', '5');
INSERT INTO `tb_answer` VALUES ('41', '17', '2', '一般', '2', '5');
INSERT INTO `tb_answer` VALUES ('42', '17', '3', '重点', '3', '5');
INSERT INTO `tb_answer` VALUES ('43', '18', '1', '不通过', '1', '5');
INSERT INTO `tb_answer` VALUES ('44', '18', '2', '一般', '2', '5');
INSERT INTO `tb_answer` VALUES ('45', '18', '3', '重点', '3', '5');
INSERT INTO `tb_answer` VALUES ('46', '19', '1', '不通过', '1', '6');
INSERT INTO `tb_answer` VALUES ('47', '19', '2', '一般', '2', '6');
INSERT INTO `tb_answer` VALUES ('48', '19', '3', '重点', '3', '6');
INSERT INTO `tb_answer` VALUES ('49', '20', '1', '不通过', '1', '6');
INSERT INTO `tb_answer` VALUES ('50', '20', '2', '一般', '2', '6');
INSERT INTO `tb_answer` VALUES ('51', '21', '1', '不通过', '1', '6');
INSERT INTO `tb_answer` VALUES ('52', '21', '2', '一般', '2', '6');
INSERT INTO `tb_answer` VALUES ('53', '21', '3', '重点', '3', '6');
INSERT INTO `tb_answer` VALUES ('54', '22', '1', '不通过', '1', '7');
INSERT INTO `tb_answer` VALUES ('55', '22', '2', '一般', '2', '7');
INSERT INTO `tb_answer` VALUES ('56', '23', '1', '不通过', '1', '7');
INSERT INTO `tb_answer` VALUES ('57', '23', '2', '一般', '2', '7');
INSERT INTO `tb_answer` VALUES ('58', '23', '3', '重点', '3', '7');
INSERT INTO `tb_answer` VALUES ('59', '24', '1', '不通过', '1', '7');
INSERT INTO `tb_answer` VALUES ('60', '24', '2', '一般', '2', '7');
INSERT INTO `tb_answer` VALUES ('61', '25', '1', '不通过', '1', '8');
INSERT INTO `tb_answer` VALUES ('62', '25', '2', '一般', '2', '8');
INSERT INTO `tb_answer` VALUES ('63', '26', '1', '不通过', '1', '8');
INSERT INTO `tb_answer` VALUES ('64', '26', '2', '一般', '2', '8');
INSERT INTO `tb_answer` VALUES ('65', '26', '3', '重点', '3', '8');
INSERT INTO `tb_answer` VALUES ('66', '27', '1', '不通过', '1', '9');
INSERT INTO `tb_answer` VALUES ('67', '27', '2', '一般', '2', '9');
INSERT INTO `tb_answer` VALUES ('68', '28', '1', '不通过', '1', '9');
INSERT INTO `tb_answer` VALUES ('69', '28', '2', '一般', '2', '9');
INSERT INTO `tb_answer` VALUES ('70', '28', '3', '重点', '3', '9');
INSERT INTO `tb_answer` VALUES ('71', '29', '1', '不通过', '1', '9');
INSERT INTO `tb_answer` VALUES ('72', '29', '2', '一般', '2', '9');
INSERT INTO `tb_answer` VALUES ('73', '30', '1', '不通过', '1', '9');
INSERT INTO `tb_answer` VALUES ('74', '30', '2', '一般', '2', '9');
INSERT INTO `tb_answer` VALUES ('75', '30', '3', '重点', '3', '9');
INSERT INTO `tb_answer` VALUES ('76', '31', '1', '不通过', '1', '10');
INSERT INTO `tb_answer` VALUES ('77', '31', '2', '一般', '2', '10');
INSERT INTO `tb_answer` VALUES ('78', '32', '1', '不通过', '1', '10');
INSERT INTO `tb_answer` VALUES ('79', '32', '2', '一般', '2', '10');
INSERT INTO `tb_answer` VALUES ('80', '32', '3', '重点', '3', '10');
INSERT INTO `tb_answer` VALUES ('81', '33', '1', '不通过', '1', '10');
INSERT INTO `tb_answer` VALUES ('82', '33', '2', '一般', '2', '10');
INSERT INTO `tb_answer` VALUES ('83', '34', '1', '不通过', '1', '11');
INSERT INTO `tb_answer` VALUES ('84', '34', '2', '一般', '2', '11');
INSERT INTO `tb_answer` VALUES ('85', '34', '3', '重点', '3', '11');
INSERT INTO `tb_answer` VALUES ('86', '35', '1', '不通过', '1', '11');
INSERT INTO `tb_answer` VALUES ('87', '35', '2', '一般', '2', '11');
INSERT INTO `tb_answer` VALUES ('88', '36', '1', '不通过', '1', '12');
INSERT INTO `tb_answer` VALUES ('89', '36', '2', '一般', '2', '12');
INSERT INTO `tb_answer` VALUES ('90', '37', '1', '不通过', '1', '12');
INSERT INTO `tb_answer` VALUES ('91', '37', '2', '一般', '2', '12');
INSERT INTO `tb_answer` VALUES ('92', '37', '3', '重点', '3', '12');
INSERT INTO `tb_answer` VALUES ('93', '38', '1', '不通过', '1', '13');
INSERT INTO `tb_answer` VALUES ('94', '38', '2', '一般', '2', '13');
INSERT INTO `tb_answer` VALUES ('95', '38', '3', '重点', '3', '13');
INSERT INTO `tb_answer` VALUES ('96', '39', '1', '不通过', '1', '13');
INSERT INTO `tb_answer` VALUES ('97', '39', '2', '一般', '2', '13');
INSERT INTO `tb_answer` VALUES ('98', '40', '1', '不通过', '1', '13');
INSERT INTO `tb_answer` VALUES ('99', '40', '2', '一般', '2', '13');

-- ----------------------------
-- Table structure for `tb_department`
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mg_id` int(11) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES ('1', '生命科学与技术学院', '2');
INSERT INTO `tb_department` VALUES ('2', '政治学院', '1');
INSERT INTO `tb_department` VALUES ('3', '社会学与心理学学院', '1');
INSERT INTO `tb_department` VALUES ('4', '青藏高原研究院', '2');
INSERT INTO `tb_department` VALUES ('5', '艺术学院', '1');
INSERT INTO `tb_department` VALUES ('6', '经济学院', '1');
INSERT INTO `tb_department` VALUES ('7', '管理学院', '1');
INSERT INTO `tb_department` VALUES ('8', '电气信息工程学院', '2');
INSERT INTO `tb_department` VALUES ('9', '计算机科学与技术学院', '2');
INSERT INTO `tb_department` VALUES ('10', '化学与环境保护学院', '2');
INSERT INTO `tb_department` VALUES ('11', '城市规划与建筑学院', '2');
INSERT INTO `tb_department` VALUES ('12', '旅游与历史文化学院', '1');
INSERT INTO `tb_department` VALUES ('13', '文学与新闻传播学院', '1');
INSERT INTO `tb_department` VALUES ('14', '法学院', '1');
INSERT INTO `tb_department` VALUES ('15', '藏学院', '1');
INSERT INTO `tb_department` VALUES ('16', '彝学院', '1');
INSERT INTO `tb_department` VALUES ('17', '外国语学院', '1');

-- ----------------------------
-- Table structure for `tb_expert`
-- ----------------------------
DROP TABLE IF EXISTS `tb_expert`;
CREATE TABLE `tb_expert` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `e_position` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `e_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `e_entry_time` int(11) NOT NULL,
  `e_research` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `e_state` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '无状态' COMMENT '专家状态',
  `e_pwd` int(11) DEFAULT NULL,
  `e_department` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作单位',
  `e_ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `e_tel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `e_del` int(11) DEFAULT '0' COMMENT '为1 代表已删除',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_expert
-- ----------------------------
INSERT INTO `tb_expert` VALUES ('1', '专家1 ', '教授', '文科', '2015', '计算机科学发展与世界', '未登录', '1', '成都市西南民族大学', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '18080438527', '1', '0');
INSERT INTO `tb_expert` VALUES ('2', '专家2', '研究员', '文科', '2015', '计算机软件与世界', '未登录', '2', '成都市西南民族大学', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '18080438527', '1', '0');
INSERT INTO `tb_expert` VALUES ('3', '专家3', '教授', '文科', '2015', '计算机科学发展与世界', '未登录', '3', '成都市西南民族大学', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '18080438527', '1', '0');
INSERT INTO `tb_expert` VALUES ('4', '专家4', '研究员', '文科', '2015', '计算机软件与世界', '未登录', '4', '成都市西南民族大学', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121054', '1', '0');
INSERT INTO `tb_expert` VALUES ('5', '专家5', '研究员', '文科', '2015', '计算机软件与世界', '未登录', '5', '成都市', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121067', '1', '0');
INSERT INTO `tb_expert` VALUES ('6', '专家6', '教授', '文科', '2015', '计算机硬件', '未登录', '6', '成都市', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121054', '1', '0');
INSERT INTO `tb_expert` VALUES ('7', '专家7', '教授', '理科', '2015', '计算机科学发展与世界', '未登录', '7', '成都市', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121054', '1', '0');
INSERT INTO `tb_expert` VALUES ('8', '专家8', '教授', '理科', '2015', '计算机软件与世界', '未登录', '8', '成都市', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121067', '1', '0');
INSERT INTO `tb_expert` VALUES ('9', '专家9', '教授', '理科', '2015', '计算机科学发展与世界', '未登录', '9', '成都市', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '18080438527', '1', '0');
INSERT INTO `tb_expert` VALUES ('10', '专家10', '研究员', '理科', '2015', '计算机软件与世界', '未登录', '10', '成都市西南民族大学', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121054', '1', '0');
INSERT INTO `tb_expert` VALUES ('11', '专家11', '', '文科', '0', '', '未登录', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '0');
INSERT INTO `tb_expert` VALUES ('12', '专家12', '', '文科', '0', '', '未登录', '12', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '0');
INSERT INTO `tb_expert` VALUES ('13', '专家13', '', '文科', '0', '', '未登录', '13', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '0');
INSERT INTO `tb_expert` VALUES ('14', '专家14', '', '文科', '0', '', '未登录', '14', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '0');
INSERT INTO `tb_expert` VALUES ('15', '专家15', '', '理科', '0', '', '未登录', '15', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '0');
INSERT INTO `tb_expert` VALUES ('16', '专家16', '', '理科', '0', '', '未登录', '16', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '0');
INSERT INTO `tb_expert` VALUES ('17', '专家17', '', '理科', '0', '', '未登录', '17', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '0');
INSERT INTO `tb_expert` VALUES ('18', '专家18', '', '理科', '0', '', '未登录', '18', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '0');
INSERT INTO `tb_expert` VALUES ('19', '专家19', '', '理科', '0', '', '未登录', '19', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '0');
INSERT INTO `tb_expert` VALUES ('20', '专家20', '', '理科', '0', '', '未登录', '20', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '0');

-- ----------------------------
-- Table structure for `tb_foreign_expert`
-- ----------------------------
DROP TABLE IF EXISTS `tb_foreign_expert`;
CREATE TABLE `tb_foreign_expert` (
  `fe_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fe_passport` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '护照',
  `fe_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fe_workday` int(11) NOT NULL COMMENT '在华天数',
  `fe_nation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fe_education` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`fe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_foreign_expert
-- ----------------------------
INSERT INTO `tb_foreign_expert` VALUES ('1', '0001', 'abc001', 'anne', '11', '加拿大', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('2', '0001', 'abc002', 'alice', '12', '加拿大', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('3', '0001', 'abc003', 'tom', '11', '加拿大', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('4', '0001', 'abc004', 'william', '11', '加拿大', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('5', '0001', 'abc005', 'leon', '13', '加拿大', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('6', '0002', 'abc006', 'lukas', '11', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('7', '0003', 'abc007', 'tim', '32', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('8', '0004', 'abc008', 'finn', '6', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('9', '0005', 'abc009', 'jonas', '19', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('10', '0006', 'abc010', 'felix', '10', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('11', '0007', 'abc011', 'luis', '9', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('12', '0008', 'abc012', 'paul', '21', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('13', '0009', 'abc013', 'julian', '20', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('14', '0010', 'abc014', 'niclas', '11', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('15', '0011', 'abc015', 'max', '30', '德国', '博士后');
INSERT INTO `tb_foreign_expert` VALUES ('16', '0011', 'abc016', 'ben', '30', '德国', '博士后');
INSERT INTO `tb_foreign_expert` VALUES ('17', '0012', 'abc017', 'elias', '14', '法国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('18', '0013', 'abc018', 'jan', '11', '法国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('19', '0014', 'abc019', 'philpp', '5', '法国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('20', '0015', 'abc020', 'noah', '7', '法国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('21', '0016', 'abc021', 'jannick', '15', '瑞士', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('22', '0017', 'abc022', 'david', '17', '瑞士', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('23', '0018', 'abc023', 'leonie', '11', '英国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('24', '0019', 'abc024', 'hanna', '34', '英国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('25', '0020', 'abc025', 'mia', '23', '英国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('26', '0021', 'abc026', 'lena', '12', '英国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('27', '0021', 'abc027', 'lea', '30', '加拿大', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('28', '0021', 'abc028', 'emilie', '30', '加拿大', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('29', '0022', 'abc029', 'lara', '30', '加拿大', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('30', '0023', 'abc030', 'emma', '12', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('31', '0024', 'abc031', 'sara', '9', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('32', '0025', 'abc032', 'laura', '15', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('33', '0026', 'abc033', 'lili', '8', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('34', '0027', 'abc034', 'lina', '6', '美国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('35', '0027', 'abc035', 'marie', '21', '俄罗斯', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('36', '0027', 'abc036', 'sophie', '20', '俄罗斯', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('37', '0027', 'abc037', 'nele', '21', '俄罗斯', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('38', '0028', 'abc038', 'johanna', '19', '俄罗斯', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('39', '0029', 'abc039', 'lisa', '12', '意大利', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('40', '0030', 'abc040', 'sofia', '9', '意大利', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('41', '0031', 'abc041', 'maja', '10', '澳大利亚', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('42', '0032', 'abc042', 'bella', '11', '澳大利亚', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('43', '0033', 'abc043', 'betty', '14', '澳大利亚', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('44', '0034', 'abc044', 'carol', '8', '澳大利亚', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('45', '0035', 'abc045', 'cathy', '6', '澳大利亚', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('46', '0036', 'abc046', 'daisy', '11', '荷兰', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('47', '0037', 'abc047', 'eden', '17', '荷兰', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('48', '0038', 'abc048', 'fanny', '15', '韩国', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('49', '0039', 'abc049', 'flora', '20', '日本', '博士');
INSERT INTO `tb_foreign_expert` VALUES ('50', '0040', 'abc050', 'grace', '24', '美国', '博士');

-- ----------------------------
-- Table structure for `tb_major_group`
-- ----------------------------
DROP TABLE IF EXISTS `tb_major_group`;
CREATE TABLE `tb_major_group` (
  `mg_id` int(11) NOT NULL AUTO_INCREMENT,
  `mg_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_major_group
-- ----------------------------
INSERT INTO `tb_major_group` VALUES ('1', '文科');
INSERT INTO `tb_major_group` VALUES ('2', '理科');

-- ----------------------------
-- Table structure for `tb_project`
-- ----------------------------
DROP TABLE IF EXISTS `tb_project`;
CREATE TABLE `tb_project` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `p_rank` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `p_department` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `p_funds` decimal(10,2) NOT NULL,
  `p_principal` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `p_state` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `p_result` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `r_id` int(11) NOT NULL,
  `is_insert` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_project
-- ----------------------------
INSERT INTO `tb_project` VALUES ('1', '0001', '自感温调试恒温杯', '重点', '计算机科学与技术学院', '10000.00', '刘白', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('2', '0002', '射流空化方法制备石墨烯用于材料防腐蚀的研究', '重点', '计算机科学与技术学院', '9000.00', '王文利', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('3', '0003', '基于图像识别和三维重建的智能导盲系统', '一般', '计算机科学与技术学院', '9600.00', '贺敬凯', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('4', '0004', '基于NFC的签到机', '重点', '外国语学院', '9000.00', '雷国琼', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('5', '0005', '基于四轴飞行器的三维场景重建系统', '重点', '外国语学院', '12000.00', '高潮', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('6', '0006', '全向水下仿生机器鳐鱼', '一般', '外国语学院', '14000.00', '程建伟', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('7', '0007', '基于量子粒子群控制的欠驱动残疾人智能假肢系统', '一般', '外国语学院', '12000.00', '张  建', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('8', '0008', '自动调节尾气稀释参数的稀释采样系统', '重点', '电气信息工程学院', '10000.00', '但唐仁', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('9', '0009', '行波管型热声发动机', '一般', '电气信息工程学院', '8000.00', '彭开慧', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('10', '0010', '温差发电系统在热机废热回收利用上的设计与研究', '一般', '电气信息工程学院', '8000.00', '孙  洁', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('11', '0011', '可收缩桨式先进布局S\\VTOL战斗机验证机 ', '重点', '电气信息工程学院', '10000.00', '房丽娜', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('12', '0012', '新型固定翼直升机复合式飞行器', '一般', '艺术学院', '15000.00', '李  伟', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('13', '0013', '基于光流场的视频搜索', '一般', '艺术学院', '8000.00', '刘晓东', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('14', '0014', '基于即时计算与动态追踪的视觉体验增强', '重点', '艺术学院', '8000.00', '刘云霞', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('15', '0015', '超大容量可加密二维彩码', '一般', '法学院', '4000.00', '黄国伟', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('16', '0016', '自适应像素填充应用技术', '一般', '法学院', '8000.00', '曲绪刚', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('17', '0017', '地理围栏概念下的LBS系统', '重点', '法学院', '6000.00', '张跃宗', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('18', '0018', '个性化聊天表情生成软件', '重点', '法学院', '6700.00', '彭迎春', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('19', '0019', '应用机器视觉的SLAM小车设计', '重点', '经济学院', '10000.00', '王瑞春', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('20', '0020', '全局视觉导航的特种飞行机器人', '一般', '经济学院', '15000.00', '谢  华', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('21', '0021', '北京高校校园手机充电机布局的最优规划与仿真模拟', '重点', '经济学院', '8000.00', '刘  俊', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('22', '0022', '振动耦合被动运动对抗模拟失重尾吊大鼠骨丢失效果的研究', '一般', '管理学院', '10000.00', '管明祥', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('23', '0023', '纳米羟基磷灰石/丝素蛋白复合纳米纤维的制备及其性能研究', '重点', '管理学院', '10000.00', '刘小延', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('24', '0024', '旧城改造中的公民参与模式研究—“参与式改造”初探', '一般', '管理学院', '5000.00', '张竞丹', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('25', '0025', '便携上下楼梯的行李箱', '一般', '生命科学与技术学院', '10000.00', '劳文薇', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('26', '0026', '多自由度全地形探测装置', '重点', '生命科学与技术学院', '15000.00', '潘晓宁', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('27', '0027', '深井救援器', '一般', '化学与环境保护学院', '10000.00', '张劲松', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('28', '0028', '可变压缩比发动机', '重点', '化学与环境保护学院', '12000.00', '耿  壮', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('29', '0029', '海胆型全方位滚动机器人', '一般', '化学与环境保护学院', '10000.00', '刘远东', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('30', '0030', '基于红外双目立体视觉的精准3D绘图系统', '重点', '化学与环境保护学院', '11000.00', '徐秋枫', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('31', '0031', '全固态电致变色器件的制备及性能研究', '一般', '旅游与历史文化学院', '7500.00', '冯艳玲', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('32', '0032', '法学专业实践教育现状研究', '重点', '旅游与历史文化学院', '8000.00', '刘含波', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('33', '0033', '涉罪未成年人社会调查制度研究——以“北京模式”为例', '一般', '旅游与历史文化学院', '8000.00', '陈宝文', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('34', '0034', '城市建设规划中空间权制度的构建', '重点', '政治学院', '8000.00', '谭  旭', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('35', '0035', '基于实地调研的业主维权困境分析', '一般', '政治学院', '8000.00', '何瑞映', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('36', '0036', '合成高指数面纳米金及其表面增强拉曼效应在监测癌症标记蛋白上的应用', '一般', '文学与新闻传播学院', '16000.00', '谭幽燕', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('37', '0037', '利用生物电化学方法对垃圾渗滤液同步除碳脱氮', '重点', '文学与新闻传播学院', '15000.00', '劳政玲', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('38', '0038', '新型量子点敏化太阳能电池的研究', '重点', '城市规划与建筑学院', '15000.00', '姜家吉', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('39', '0039', '自行车娱乐平台（BikeTraveller）', '一般', '城市规划与建筑学院', '10000.00', '李健艺', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('40', '0040', '远程监控机器人', '一般', '城市规划与建筑学院', '10000.00', '周泳全', '0', '', '1', '1');

-- ----------------------------
-- Table structure for `tb_question`
-- ----------------------------
DROP TABLE IF EXISTS `tb_question`;
CREATE TABLE `tb_question` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `qg_id` int(11) NOT NULL,
  `q_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '单选',
  `q_text` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `source_id` int(11) NOT NULL,
  `q_order` int(11) NOT NULL,
  `answer_rule` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '3',
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_question
-- ----------------------------
INSERT INTO `tb_question` VALUES ('1', '1', '1', '单选', '自感温调试恒温杯', '1', '0', '3');
INSERT INTO `tb_question` VALUES ('2', '1', '1', '单选', '射流空化方法制备石墨烯用于材料防腐蚀的研', '2', '0', '3');
INSERT INTO `tb_question` VALUES ('3', '1', '1', '单选', '基于图像识别和三维重建的智能导盲系统', '3', '1', '3');
INSERT INTO `tb_question` VALUES ('4', '2', '2', '单选', '基于NFC的签到机', '4', '0', '3');
INSERT INTO `tb_question` VALUES ('5', '2', '2', '单选', '基于四轴飞行器的三维场景重建系统', '5', '0', '3');
INSERT INTO `tb_question` VALUES ('6', '2', '2', '单选', '全向水下仿生机器鳐鱼', '6', '1', '3');
INSERT INTO `tb_question` VALUES ('7', '2', '2', '单选', '基于量子粒子群控制的欠驱动残疾人智能假肢', '7', '1', '3');
INSERT INTO `tb_question` VALUES ('8', '1', '3', '单选', '自动调节尾气稀释参数的稀释采样系统', '8', '0', '3');
INSERT INTO `tb_question` VALUES ('9', '1', '3', '单选', '行波管型热声发动机', '9', '1', '3');
INSERT INTO `tb_question` VALUES ('10', '1', '3', '单选', '温差发电系统在热机废热回收利用上的设计与', '10', '1', '3');
INSERT INTO `tb_question` VALUES ('11', '1', '3', '单选', '可收缩桨式先进布局S\\VTOL战斗机验证', '11', '0', '3');
INSERT INTO `tb_question` VALUES ('12', '2', '4', '单选', '新型固定翼直升机复合式飞行器', '12', '1', '3');
INSERT INTO `tb_question` VALUES ('13', '2', '4', '单选', '基于光流场的视频搜索', '13', '1', '3');
INSERT INTO `tb_question` VALUES ('14', '2', '4', '单选', '基于即时计算与动态追踪的视觉体验增强', '14', '0', '3');
INSERT INTO `tb_question` VALUES ('15', '2', '5', '单选', '超大容量可加密二维彩码', '15', '1', '3');
INSERT INTO `tb_question` VALUES ('16', '2', '5', '单选', '自适应像素填充应用技术', '16', '1', '3');
INSERT INTO `tb_question` VALUES ('17', '2', '5', '单选', '地理围栏概念下的LBS系统', '17', '0', '3');
INSERT INTO `tb_question` VALUES ('18', '2', '5', '单选', '个性化聊天表情生成软件', '18', '0', '3');
INSERT INTO `tb_question` VALUES ('19', '2', '6', '单选', '应用机器视觉的SLAM小车设计', '19', '0', '3');
INSERT INTO `tb_question` VALUES ('20', '2', '6', '单选', '全局视觉导航的特种飞行机器人', '20', '1', '3');
INSERT INTO `tb_question` VALUES ('21', '2', '6', '单选', '北京高校校园手机充电机布局的最优规划与仿', '21', '0', '3');
INSERT INTO `tb_question` VALUES ('22', '2', '7', '单选', '振动耦合被动运动对抗模拟失重尾吊大鼠骨丢', '22', '1', '3');
INSERT INTO `tb_question` VALUES ('23', '2', '7', '单选', '纳米羟基磷灰石/丝素蛋白复合纳米纤维的制', '23', '0', '3');
INSERT INTO `tb_question` VALUES ('24', '2', '7', '单选', '旧城改造中的公民参与模式研究—“参与式改', '24', '1', '3');
INSERT INTO `tb_question` VALUES ('25', '1', '8', '单选', '便携上下楼梯的行李箱', '25', '1', '3');
INSERT INTO `tb_question` VALUES ('26', '1', '8', '单选', '多自由度全地形探测装置', '26', '0', '3');
INSERT INTO `tb_question` VALUES ('27', '1', '9', '单选', '深井救援器', '27', '1', '3');
INSERT INTO `tb_question` VALUES ('28', '1', '9', '单选', '可变压缩比发动机', '28', '0', '3');
INSERT INTO `tb_question` VALUES ('29', '1', '9', '单选', '海胆型全方位滚动机器人', '29', '1', '3');
INSERT INTO `tb_question` VALUES ('30', '1', '9', '单选', '基于红外双目立体视觉的精准3D绘图系统', '30', '0', '3');
INSERT INTO `tb_question` VALUES ('31', '2', '10', '单选', '全固态电致变色器件的制备及性能研究', '31', '1', '3');
INSERT INTO `tb_question` VALUES ('32', '2', '10', '单选', '法学专业实践教育现状研究', '32', '0', '3');
INSERT INTO `tb_question` VALUES ('33', '2', '10', '单选', '涉罪未成年人社会调查制度研究——以“北京', '33', '1', '3');
INSERT INTO `tb_question` VALUES ('34', '2', '11', '单选', '城市建设规划中空间权制度的构建', '34', '0', '3');
INSERT INTO `tb_question` VALUES ('35', '2', '11', '单选', '基于实地调研的业主维权困境分析', '35', '1', '3');
INSERT INTO `tb_question` VALUES ('36', '2', '12', '单选', '合成高指数面纳米金及其表面增强拉曼效应在', '36', '1', '3');
INSERT INTO `tb_question` VALUES ('37', '2', '12', '单选', '利用生物电化学方法对垃圾渗滤液同步除碳脱', '37', '0', '3');
INSERT INTO `tb_question` VALUES ('38', '1', '13', '单选', '新型量子点敏化太阳能电池的研究', '38', '0', '3');
INSERT INTO `tb_question` VALUES ('39', '1', '13', '单选', '自行车娱乐平台（BikeTravelle', '39', '1', '3');
INSERT INTO `tb_question` VALUES ('40', '1', '13', '单选', '远程监控机器人', '40', '1', '3');

-- ----------------------------
-- Table structure for `tb_question_group`
-- ----------------------------
DROP TABLE IF EXISTS `tb_question_group`;
CREATE TABLE `tb_question_group` (
  `qg_id` int(11) NOT NULL AUTO_INCREMENT,
  `qg_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `s_id` int(11) NOT NULL,
  `qg_order` int(11) NOT NULL COMMENT '分组排序列',
  PRIMARY KEY (`qg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_question_group
-- ----------------------------
INSERT INTO `tb_question_group` VALUES ('1', '计算机科学与技术学院', '1', '0');
INSERT INTO `tb_question_group` VALUES ('2', '外国语学院', '2', '0');
INSERT INTO `tb_question_group` VALUES ('3', '电气信息工程学院', '1', '0');
INSERT INTO `tb_question_group` VALUES ('4', '艺术学院', '2', '0');
INSERT INTO `tb_question_group` VALUES ('5', '法学院', '2', '0');
INSERT INTO `tb_question_group` VALUES ('6', '经济学院', '2', '0');
INSERT INTO `tb_question_group` VALUES ('7', '管理学院', '2', '0');
INSERT INTO `tb_question_group` VALUES ('8', '生命科学与技术学院', '1', '0');
INSERT INTO `tb_question_group` VALUES ('9', '化学与环境保护学院', '1', '0');
INSERT INTO `tb_question_group` VALUES ('10', '旅游与历史文化学院', '2', '0');
INSERT INTO `tb_question_group` VALUES ('11', '政治学院', '2', '0');
INSERT INTO `tb_question_group` VALUES ('12', '文学与新闻传播学院', '2', '0');
INSERT INTO `tb_question_group` VALUES ('13', '城市规划与建筑学院', '1', '0');

-- ----------------------------
-- Table structure for `tb_response`
-- ----------------------------
DROP TABLE IF EXISTS `tb_response`;
CREATE TABLE `tb_response` (
  `response_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `qg_id` int(11) NOT NULL COMMENT '问题分组',
  `q_id` int(11) NOT NULL,
  `answer` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `voter_id` int(11) NOT NULL COMMENT '投票人id',
  `r_state` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`response_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_response
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_review`
-- ----------------------------
DROP TABLE IF EXISTS `tb_review`;
CREATE TABLE `tb_review` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `r_start` datetime NOT NULL,
  `r_end` datetime NOT NULL,
  `r_year` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `r_state` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_review
-- ----------------------------
INSERT INTO `tb_review` VALUES ('1', '2015年外专项目评审活动', '2015-06-10 00:00:00', '2015-06-20 00:00:00', '2015年', '评审开始');

-- ----------------------------
-- Table structure for `tb_rule`
-- ----------------------------
DROP TABLE IF EXISTS `tb_rule`;
CREATE TABLE `tb_rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_content` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `r_id` int(11) NOT NULL COMMENT '评审活动id',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_rule
-- ----------------------------
INSERT INTO `tb_rule` VALUES ('1', '评选规则', '2/3原则', '0');

-- ----------------------------
-- Table structure for `tb_site_info`
-- ----------------------------
DROP TABLE IF EXISTS `tb_site_info`;
CREATE TABLE `tb_site_info` (
  `id` int(11) NOT NULL,
  `info_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_site_info
-- ----------------------------
INSERT INTO `tb_site_info` VALUES ('0', '前台title', '西南民族大学 外专项目评审系统');
INSERT INTO `tb_site_info` VALUES ('1', '前台使用说明', '单击“开始评审”按钮后，正式进入评审阶段。\r\n\r\n重点项目有“未通过”、“一般”、“重点”三个级别，一般项目有“未通过”、“一般”、二个级别。单击选择圈或文字选中相应级别。\r\n\r\n对每一学院的所有项目完成评审后，单击“下一页”，保存评审结果，进入下一个学院的评审，也可单击“上一页”查看之前的评审结果。\r\n\r\n单击“提交评审结果”按钮后，只能查询评审结果，不能进行修改。\r\n\r\n通过每个页面的下拉框，选择跳转的学院，跳转到指定的学院。');
INSERT INTO `tb_site_info` VALUES ('2', '后台title', '西南民族大学 外专项目后台管理系统');

-- ----------------------------
-- Table structure for `tb_survey`
-- ----------------------------
DROP TABLE IF EXISTS `tb_survey`;
CREATE TABLE `tb_survey` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '调查名',
  `s_start` datetime NOT NULL,
  `s_end` datetime NOT NULL,
  `r_id` int(11) NOT NULL,
  `s_state` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `s_remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '调查说明',
  `voter_sum` int(11) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_survey
-- ----------------------------
INSERT INTO `tb_survey` VALUES ('1', '理科2015-06-07 16:56:52', '2015-06-10 00:00:00', '2015-06-20 00:00:00', '1', '评审开始', null, '10');
INSERT INTO `tb_survey` VALUES ('2', '文科2015-06-07 16:56:52', '2015-06-01 00:00:00', '2015-06-20 00:00:00', '1', '评审开始', null, '10');

-- ----------------------------
-- Table structure for `tb_survey_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `tb_survey_attribute`;
CREATE TABLE `tb_survey_attribute` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `a_value` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `s_id` int(11) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_survey_attribute
-- ----------------------------
INSERT INTO `tb_survey_attribute` VALUES ('1', '学科', '理科', '1');
INSERT INTO `tb_survey_attribute` VALUES ('2', '学科', '文科', '2');

-- ----------------------------
-- View structure for `tb_v_expert_advice`
-- ----------------------------
DROP VIEW IF EXISTS `tb_v_expert_advice`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_v_expert_advice` AS select `s`.`e_id` AS `e_id`,`s`.`e_name` AS `e_name`,`a`.`advice` AS `advice`,`m`.`qg_name` AS `qg_name`,`m`.`s_id` AS `s_id`,`s`.`e_type` AS `e_type` from ((`tb_expert` `s` join `tb_advice` `a`) join `tb_question_group` `m`) where ((`a`.`e_id` = `s`.`e_id`) and (`a`.`qg_id` = `m`.`qg_id`)) ;

-- ----------------------------
-- View structure for `tb_v_expert_response`
-- ----------------------------
DROP VIEW IF EXISTS `tb_v_expert_response`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_v_expert_response` AS select `tb_response`.`response_id` AS `response_id`,`tb_response`.`voter_id` AS `e_id`,`tb_response`.`s_id` AS `s_id`,`tb_response`.`q_id` AS `q_id`,`tb_response`.`answer` AS `answer`,`tb_response`.`r_state` AS `r_state`,`tb_response`.`qg_id` AS `qg_id`,`s`.`r_id` AS `r_id`,`g`.`qg_name` AS `qg_name` from ((`tb_response` join `tb_question_group` `g` on((`tb_response`.`qg_id` = `g`.`qg_id`))) join `tb_survey` `s` on((`tb_response`.`s_id` = `s`.`s_id`))) ;

-- ----------------------------
-- View structure for `tb_v_project_major_group`
-- ----------------------------
DROP VIEW IF EXISTS `tb_v_project_major_group`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_v_project_major_group` AS select `s`.`p_id` AS `p_id`,`s`.`p_name` AS `p_name`,`s`.`p_department` AS `p_department`,`s`.`r_id` AS `r_id`,`a`.`mg_id` AS `mg_id`,`m`.`mg_name` AS `mg_name`,`s`.`p_rank` AS `p_rank`,`s`.`p_result` AS `p_result` from ((`tb_project` `s` join `tb_department` `a`) join `tb_major_group` `m`) where ((`a`.`d_name` = `s`.`p_department`) and (`a`.`mg_id` = `m`.`mg_id`)) ;

-- ----------------------------
-- View structure for `tb_v_project_question_response`
-- ----------------------------
DROP VIEW IF EXISTS `tb_v_project_question_response`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_v_project_question_response` AS select `r`.`response_id` AS `response_id`,`r`.`s_id` AS `s_id`,`e`.`e_type` AS `e_type`,`a`.`p_department` AS `p_department`,`a`.`p_number` AS `p_number`,`a`.`p_name` AS `p_name`,`a`.`p_principal` AS `p_principal`,`e`.`e_name` AS `e_name`,`r`.`answer` AS `answer`,`s`.`q_order` AS `q_order` from (((`tb_response` `r` join `tb_expert` `e`) join `tb_question` `s`) join `tb_project` `a`) where ((`s`.`q_id` = `r`.`q_id`) and (`e`.`e_id` = `r`.`voter_id`) and (`a`.`p_id` = `s`.`source_id`)) ;

-- ----------------------------
-- View structure for `tb_v_question_group_major`
-- ----------------------------
DROP VIEW IF EXISTS `tb_v_question_group_major`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_v_question_group_major` AS select `tb_question_group`.`qg_id` AS `qg_id`,`tb_question_group`.`qg_name` AS `qg_name`,`tb_question_group`.`s_id` AS `s_id`,`tb_question_group`.`qg_order` AS `qg_order`,`m`.`a_value` AS `major`,`m`.`r_id` AS `r_id` from (`tb_question_group` join `tb_v_survey_major` `m` on((`tb_question_group`.`s_id` = `m`.`s_id`))) ;

-- ----------------------------
-- View structure for `tb_v_survey_major`
-- ----------------------------
DROP VIEW IF EXISTS `tb_v_survey_major`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_v_survey_major` AS select `s`.`s_id` AS `s_id`,`s`.`s_name` AS `s_name`,`s`.`s_start` AS `s_start`,`s`.`s_end` AS `s_end`,`a`.`a_value` AS `a_value`,`s`.`r_id` AS `r_id` from (`tb_survey` `s` join `tb_survey_attribute` `a`) where ((`a`.`a_name` = '学科') and (`s`.`s_id` = `a`.`s_id`)) ;
