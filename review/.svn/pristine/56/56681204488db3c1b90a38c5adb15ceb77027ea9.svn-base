/*
Navicat MySQL Data Transfer

Source Server         : mySql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : db_review

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-06-29 19:06:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `a_pwd` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', '5aab65ea71f5913e0255760b7b06c1b8', '2015-06-29 18:49:57');

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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_answer
-- ----------------------------
INSERT INTO `tb_answer` VALUES ('1', '1', '1', '不通过', '1', '1');
INSERT INTO `tb_answer` VALUES ('2', '1', '2', '一般', '2', '1');
INSERT INTO `tb_answer` VALUES ('3', '1', '3', '重点', '3', '1');
INSERT INTO `tb_answer` VALUES ('4', '2', '1', '不通过', '1', '2');
INSERT INTO `tb_answer` VALUES ('5', '2', '2', '一般', '2', '2');
INSERT INTO `tb_answer` VALUES ('6', '3', '1', '不通过', '1', '3');
INSERT INTO `tb_answer` VALUES ('7', '3', '2', '一般', '2', '3');
INSERT INTO `tb_answer` VALUES ('8', '3', '3', '重点', '3', '3');
INSERT INTO `tb_answer` VALUES ('9', '4', '1', '不通过', '1', '4');
INSERT INTO `tb_answer` VALUES ('10', '4', '2', '一般', '2', '4');
INSERT INTO `tb_answer` VALUES ('11', '4', '3', '重点', '3', '4');
INSERT INTO `tb_answer` VALUES ('12', '5', '1', '不通过', '1', '5');
INSERT INTO `tb_answer` VALUES ('13', '5', '2', '一般', '2', '5');
INSERT INTO `tb_answer` VALUES ('14', '5', '3', '重点', '3', '5');
INSERT INTO `tb_answer` VALUES ('15', '6', '1', '不通过', '1', '6');
INSERT INTO `tb_answer` VALUES ('16', '6', '2', '一般', '2', '6');
INSERT INTO `tb_answer` VALUES ('17', '6', '3', '重点', '3', '6');
INSERT INTO `tb_answer` VALUES ('18', '7', '1', '不通过', '1', '7');
INSERT INTO `tb_answer` VALUES ('19', '7', '2', '一般', '2', '7');
INSERT INTO `tb_answer` VALUES ('20', '7', '3', '重点', '3', '7');
INSERT INTO `tb_answer` VALUES ('21', '8', '1', '不通过', '1', '5');
INSERT INTO `tb_answer` VALUES ('22', '8', '2', '一般', '2', '5');
INSERT INTO `tb_answer` VALUES ('23', '9', '1', '不通过', '1', '2');
INSERT INTO `tb_answer` VALUES ('24', '9', '2', '一般', '2', '2');
INSERT INTO `tb_answer` VALUES ('25', '10', '1', '不通过', '1', '7');
INSERT INTO `tb_answer` VALUES ('26', '10', '2', '一般', '2', '7');
INSERT INTO `tb_answer` VALUES ('27', '11', '1', '不通过', '1', '8');
INSERT INTO `tb_answer` VALUES ('28', '11', '2', '一般', '2', '8');
INSERT INTO `tb_answer` VALUES ('29', '11', '3', '重点', '3', '8');
INSERT INTO `tb_answer` VALUES ('30', '12', '1', '不通过', '1', '2');
INSERT INTO `tb_answer` VALUES ('31', '12', '2', '一般', '2', '2');
INSERT INTO `tb_answer` VALUES ('32', '12', '3', '重点', '3', '2');
INSERT INTO `tb_answer` VALUES ('33', '13', '1', '不通过', '1', '2');
INSERT INTO `tb_answer` VALUES ('34', '13', '2', '一般', '2', '2');
INSERT INTO `tb_answer` VALUES ('35', '14', '1', '不通过', '1', '9');
INSERT INTO `tb_answer` VALUES ('36', '14', '2', '一般', '2', '9');
INSERT INTO `tb_answer` VALUES ('37', '14', '3', '重点', '3', '9');
INSERT INTO `tb_answer` VALUES ('38', '15', '1', '不通过', '1', '10');
INSERT INTO `tb_answer` VALUES ('39', '15', '2', '一般', '2', '10');
INSERT INTO `tb_answer` VALUES ('40', '16', '1', '不通过', '1', '2');
INSERT INTO `tb_answer` VALUES ('41', '16', '2', '一般', '2', '2');
INSERT INTO `tb_answer` VALUES ('42', '16', '3', '重点', '3', '2');
INSERT INTO `tb_answer` VALUES ('43', '17', '1', '不通过', '1', '10');
INSERT INTO `tb_answer` VALUES ('44', '17', '2', '一般', '2', '10');
INSERT INTO `tb_answer` VALUES ('45', '18', '1', '不通过', '1', '11');
INSERT INTO `tb_answer` VALUES ('46', '18', '2', '一般', '2', '11');
INSERT INTO `tb_answer` VALUES ('47', '19', '1', '不通过', '1', '12');
INSERT INTO `tb_answer` VALUES ('48', '19', '2', '一般', '2', '12');
INSERT INTO `tb_answer` VALUES ('49', '20', '1', '不通过', '1', '13');
INSERT INTO `tb_answer` VALUES ('50', '20', '2', '一般', '2', '13');
INSERT INTO `tb_answer` VALUES ('51', '21', '1', '不通过', '1', '14');
INSERT INTO `tb_answer` VALUES ('52', '21', '2', '一般', '2', '14');
INSERT INTO `tb_answer` VALUES ('53', '21', '3', '重点', '3', '14');
INSERT INTO `tb_answer` VALUES ('54', '22', '1', '不通过', '1', '3');
INSERT INTO `tb_answer` VALUES ('55', '22', '2', '一般', '2', '3');
INSERT INTO `tb_answer` VALUES ('56', '23', '1', '不通过', '1', '9');
INSERT INTO `tb_answer` VALUES ('57', '23', '2', '一般', '2', '9');
INSERT INTO `tb_answer` VALUES ('58', '23', '3', '重点', '3', '9');
INSERT INTO `tb_answer` VALUES ('59', '24', '1', '不通过', '1', '11');
INSERT INTO `tb_answer` VALUES ('60', '24', '2', '一般', '2', '11');
INSERT INTO `tb_answer` VALUES ('61', '24', '3', '重点', '3', '11');
INSERT INTO `tb_answer` VALUES ('62', '25', '1', '不通过', '1', '9');
INSERT INTO `tb_answer` VALUES ('63', '25', '2', '一般', '2', '9');
INSERT INTO `tb_answer` VALUES ('64', '25', '3', '重点', '3', '9');
INSERT INTO `tb_answer` VALUES ('65', '26', '1', '不通过', '1', '10');
INSERT INTO `tb_answer` VALUES ('66', '26', '2', '一般', '2', '10');
INSERT INTO `tb_answer` VALUES ('67', '26', '3', '重点', '3', '10');
INSERT INTO `tb_answer` VALUES ('68', '27', '1', '不通过', '1', '10');
INSERT INTO `tb_answer` VALUES ('69', '27', '2', '一般', '2', '10');
INSERT INTO `tb_answer` VALUES ('70', '27', '3', '重点', '3', '10');
INSERT INTO `tb_answer` VALUES ('71', '28', '1', '不通过', '1', '15');
INSERT INTO `tb_answer` VALUES ('72', '28', '2', '一般', '2', '15');
INSERT INTO `tb_answer` VALUES ('73', '29', '1', '不通过', '1', '12');
INSERT INTO `tb_answer` VALUES ('74', '29', '2', '一般', '2', '12');
INSERT INTO `tb_answer` VALUES ('75', '29', '3', '重点', '3', '12');
INSERT INTO `tb_answer` VALUES ('76', '30', '1', '不通过', '1', '7');
INSERT INTO `tb_answer` VALUES ('77', '30', '2', '一般', '2', '7');
INSERT INTO `tb_answer` VALUES ('78', '31', '1', '不通过', '1', '14');
INSERT INTO `tb_answer` VALUES ('79', '31', '2', '一般', '2', '14');
INSERT INTO `tb_answer` VALUES ('80', '31', '3', '重点', '3', '14');
INSERT INTO `tb_answer` VALUES ('81', '32', '1', '不通过', '1', '6');
INSERT INTO `tb_answer` VALUES ('82', '32', '2', '一般', '2', '6');
INSERT INTO `tb_answer` VALUES ('83', '33', '1', '不通过', '1', '5');
INSERT INTO `tb_answer` VALUES ('84', '33', '2', '一般', '2', '5');
INSERT INTO `tb_answer` VALUES ('85', '34', '1', '不通过', '1', '10');
INSERT INTO `tb_answer` VALUES ('86', '34', '2', '一般', '2', '10');
INSERT INTO `tb_answer` VALUES ('87', '35', '1', '不通过', '1', '12');
INSERT INTO `tb_answer` VALUES ('88', '35', '2', '一般', '2', '12');
INSERT INTO `tb_answer` VALUES ('89', '36', '1', '不通过', '1', '7');
INSERT INTO `tb_answer` VALUES ('90', '36', '2', '一般', '2', '7');
INSERT INTO `tb_answer` VALUES ('91', '36', '3', '重点', '3', '7');
INSERT INTO `tb_answer` VALUES ('92', '37', '1', '不通过', '1', '11');
INSERT INTO `tb_answer` VALUES ('93', '37', '2', '一般', '2', '11');
INSERT INTO `tb_answer` VALUES ('94', '38', '1', '不通过', '1', '12');
INSERT INTO `tb_answer` VALUES ('95', '38', '2', '一般', '2', '12');
INSERT INTO `tb_answer` VALUES ('96', '38', '3', '重点', '3', '12');
INSERT INTO `tb_answer` VALUES ('97', '39', '1', '不通过', '1', '2');
INSERT INTO `tb_answer` VALUES ('98', '39', '2', '一般', '2', '2');
INSERT INTO `tb_answer` VALUES ('99', '39', '3', '重点', '3', '2');
INSERT INTO `tb_answer` VALUES ('100', '40', '1', '不通过', '1', '3');
INSERT INTO `tb_answer` VALUES ('101', '40', '2', '一般', '2', '3');
INSERT INTO `tb_answer` VALUES ('102', '41', '1', '不通过', '1', '13');
INSERT INTO `tb_answer` VALUES ('103', '41', '2', '一般', '2', '13');
INSERT INTO `tb_answer` VALUES ('104', '41', '3', '重点', '3', '13');
INSERT INTO `tb_answer` VALUES ('105', '42', '1', '不通过', '1', '16');
INSERT INTO `tb_answer` VALUES ('106', '42', '2', '一般', '2', '16');
INSERT INTO `tb_answer` VALUES ('107', '42', '3', '重点', '3', '16');
INSERT INTO `tb_answer` VALUES ('108', '43', '1', '不通过', '1', '16');
INSERT INTO `tb_answer` VALUES ('109', '43', '2', '一般', '2', '16');
INSERT INTO `tb_answer` VALUES ('110', '44', '1', '不通过', '1', '16');
INSERT INTO `tb_answer` VALUES ('111', '44', '2', '一般', '2', '16');
INSERT INTO `tb_answer` VALUES ('112', '45', '1', '不通过', '1', '15');
INSERT INTO `tb_answer` VALUES ('113', '45', '2', '一般', '2', '15');
INSERT INTO `tb_answer` VALUES ('114', '45', '3', '重点', '3', '15');
INSERT INTO `tb_answer` VALUES ('115', '46', '1', '不通过', '1', '17');
INSERT INTO `tb_answer` VALUES ('116', '46', '2', '一般', '2', '17');
INSERT INTO `tb_answer` VALUES ('117', '46', '3', '重点', '3', '17');
INSERT INTO `tb_answer` VALUES ('118', '47', '1', '不通过', '1', '16');
INSERT INTO `tb_answer` VALUES ('119', '47', '2', '一般', '2', '16');
INSERT INTO `tb_answer` VALUES ('120', '48', '1', '不通过', '1', '12');
INSERT INTO `tb_answer` VALUES ('121', '48', '2', '一般', '2', '12');
INSERT INTO `tb_answer` VALUES ('122', '49', '1', '不通过', '1', '8');
INSERT INTO `tb_answer` VALUES ('123', '49', '2', '一般', '2', '8');
INSERT INTO `tb_answer` VALUES ('124', '50', '1', '不通过', '1', '9');
INSERT INTO `tb_answer` VALUES ('125', '50', '2', '一般', '2', '9');
INSERT INTO `tb_answer` VALUES ('126', '50', '3', '重点', '3', '9');
INSERT INTO `tb_answer` VALUES ('127', '51', '1', '不通过', '1', '18');
INSERT INTO `tb_answer` VALUES ('128', '51', '2', '一般', '2', '18');
INSERT INTO `tb_answer` VALUES ('129', '51', '3', '重点', '3', '18');
INSERT INTO `tb_answer` VALUES ('130', '52', '1', '不通过', '1', '15');
INSERT INTO `tb_answer` VALUES ('131', '52', '2', '一般', '2', '15');
INSERT INTO `tb_answer` VALUES ('132', '53', '1', '不通过', '1', '6');
INSERT INTO `tb_answer` VALUES ('133', '53', '2', '一般', '2', '6');
INSERT INTO `tb_answer` VALUES ('134', '54', '1', '不通过', '1', '6');
INSERT INTO `tb_answer` VALUES ('135', '54', '2', '一般', '2', '6');
INSERT INTO `tb_answer` VALUES ('136', '54', '3', '重点', '3', '6');
INSERT INTO `tb_answer` VALUES ('137', '55', '1', '不通过', '1', '6');
INSERT INTO `tb_answer` VALUES ('138', '55', '2', '一般', '2', '6');
INSERT INTO `tb_answer` VALUES ('139', '55', '3', '重点', '3', '6');
INSERT INTO `tb_answer` VALUES ('140', '56', '1', '不通过', '1', '6');
INSERT INTO `tb_answer` VALUES ('141', '56', '2', '一般', '2', '6');
INSERT INTO `tb_answer` VALUES ('142', '57', '1', '不通过', '1', '9');
INSERT INTO `tb_answer` VALUES ('143', '57', '2', '一般', '2', '9');
INSERT INTO `tb_answer` VALUES ('144', '57', '3', '重点', '3', '9');
INSERT INTO `tb_answer` VALUES ('145', '58', '1', '不通过', '1', '13');
INSERT INTO `tb_answer` VALUES ('146', '58', '2', '一般', '2', '13');
INSERT INTO `tb_answer` VALUES ('147', '59', '1', '不通过', '1', '4');
INSERT INTO `tb_answer` VALUES ('148', '59', '2', '一般', '2', '4');
INSERT INTO `tb_answer` VALUES ('149', '59', '3', '重点', '3', '4');
INSERT INTO `tb_answer` VALUES ('150', '60', '1', '不通过', '1', '4');
INSERT INTO `tb_answer` VALUES ('151', '60', '2', '一般', '2', '4');

-- ----------------------------
-- Table structure for `tb_department`
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mg_id` int(11) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
INSERT INTO `tb_department` VALUES ('15', '藏学学院', '1');
INSERT INTO `tb_department` VALUES ('16', '彝学学院', '1');
INSERT INTO `tb_department` VALUES ('17', '外国语学院', '1');
INSERT INTO `tb_department` VALUES ('18', '西南民族研究院', '1');
INSERT INTO `tb_department` VALUES ('19', '研究生院', '1');
INSERT INTO `tb_department` VALUES ('20', '体育学院', '1');

-- ----------------------------
-- Table structure for `tb_expert`
-- ----------------------------
DROP TABLE IF EXISTS `tb_expert`;
CREATE TABLE `tb_expert` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `e_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `e_entry_time` int(11) DEFAULT NULL,
  `e_research` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_state` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '休眠' COMMENT '专家状态',
  `e_pwd` int(11) DEFAULT NULL,
  `e_department` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作单位',
  `e_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `e_tel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `e_del` int(11) DEFAULT '0' COMMENT '为1 代表已删除',
  `last_time` datetime DEFAULT NULL COMMENT '最近在线时间',
  `heart_state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否在线',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_expert
-- ----------------------------
INSERT INTO `tb_expert` VALUES ('11', '曾明', null, '文科', null, null, '未登录', '894340', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('12', '李耿年', null, '文科', null, null, '未登录', '199464', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('13', '蔡伟民', null, '文科', null, null, '未登录', '278601', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('14', '张明善', null, '文科', null, null, '未登录', '380644', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('15', '何雄浪', null, '文科', null, null, '未登录', '407352', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('16', '黄立', null, '文科', null, null, '未登录', '563907', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('17', '刘德昌', null, '文科', null, null, '未登录', '604750', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('18', '覃建雄', null, '文科', null, null, '休眠', '758063', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('19', '高小华', null, '文科', null, null, '休眠', '816034', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('20', '袁阳', null, '文科', null, null, '未登录', '902829', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('21', '土登彭措', null, '文科', null, null, '未登录', '103082', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('22', '罗曲', null, '文科', null, null, '未登录', '115058', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('23', '田耕宇', null, '文科', null, null, '未登录', '120266', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('24', '刘俊哲', null, '文科', null, null, '未登录', '135606', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('25', '蒋彬', null, '文科', null, null, '未登录', '149319', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('26', '陈卯轩', null, '文科', null, null, '未登录', '156397', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('27', '王永', null, '理科', null, null, '未登录', '169500', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('28', '丁克毅', null, '理科', null, null, '未登录', '176574', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('29', '彭良福', null, '理科', null, null, '未登录', '185382', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('30', '王晓玲', null, '理科', null, null, '未登录', '191915', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('31', '崔梦天', null, '理科', null, null, '未登录', '205346', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('32', '岳华', null, '理科', null, null, '未登录', '211384', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('33', '杨旭明', null, '理科', null, null, '未登录', '223784', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('34', '李键', null, '理科', null, null, '未登录', '237295', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('35', '王建红', null, '理科', null, null, '未登录', '245306', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('36', '方定志', null, '理科', null, null, '未登录', '259286', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('37', '邱延峻', null, '理科', null, null, '未登录', '266046', null, null, null, null, null, null, '1', '0', null, null);
INSERT INTO `tb_expert` VALUES ('38', '姚洪武', null, '理科', null, null, '未登录', '270875', null, null, null, null, null, null, '1', '0', null, null);

-- ----------------------------
-- Table structure for `tb_foreign_expert`
-- ----------------------------
DROP TABLE IF EXISTS `tb_foreign_expert`;
CREATE TABLE `tb_foreign_expert` (
  `p_id` int(11) NOT NULL,
  `fe_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fe_passport` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '护照',
  `fe_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fe_workday` int(11) NOT NULL COMMENT '在华天数',
  `fe_nation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fe_education` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学历',
  `r_id` int(11) NOT NULL,
  `p_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`fe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_foreign_expert
-- ----------------------------
INSERT INTO `tb_foreign_expert` VALUES ('1', '1', null, 'QC553595', 'BAOLUO MA', '11', '加拿大', '博士', '1', '青藏高原特有草种抗逆性研究');
INSERT INTO `tb_foreign_expert` VALUES ('1', '2', null, 'GG088433', 'CYNTHIA GRANT', '13', '加拿大', '博士', '1', '青藏高原特有草种抗逆性研究');
INSERT INTO `tb_foreign_expert` VALUES ('1', '3', null, 'GM149753', 'BRUCE COULMAN', '13', '加拿大', '博士', '1', '青藏高原特有草种抗逆性研究');
INSERT INTO `tb_foreign_expert` VALUES ('1', '4', null, 'WG093084', 'SHABTAI BITTMAN', '13', '加拿大', '博士', '1', '青藏高原特有草种抗逆性研究');
INSERT INTO `tb_foreign_expert` VALUES ('1', '5', null, 'GA671755', 'PHILIPPE SEGUIN', '13', '加拿大', '博士', '1', '青藏高原特有草种抗逆性研究');
INSERT INTO `tb_foreign_expert` VALUES ('2', '6', null, 'WM414523', 'XIAN-JUN  ZHENG', '65', '加拿大', '博士', '1', '等离子体在聚变中的应用研究');
INSERT INTO `tb_foreign_expert` VALUES ('3', '7', null, '505309529', 'STEVE NEWMAN', '32', '美国', '博士', '1', '英国诗歌：从王政复辟到新批评');
INSERT INTO `tb_foreign_expert` VALUES ('4', '8', null, 'CH1H59KFL', 'ANDREAS BUTZ', '6', '德国', '博士', '1', '国外人机交互工程人才培养模式的引入与实践');
INSERT INTO `tb_foreign_expert` VALUES ('4', '9', null, 'CFGPKM5CK', 'HEINRICH HUßMANN', '32', '德国', '博士', '1', '国外人机交互工程人才培养模式的引入与实践');
INSERT INTO `tb_foreign_expert` VALUES ('5', '10', null, '427626911', 'TONGCHUAN HE', '122', '美国', '博士', '1', '藏药波棱瓜子抗肝损伤机理研究');
INSERT INTO `tb_foreign_expert` VALUES ('6', '11', null, '15FV10099', 'CHRISTOPHE,GUY,EDOUARD,ROGER', '31', '法国', '硕士', '1', '纪实摄影的图片编辑与叙事功能研究');
INSERT INTO `tb_foreign_expert` VALUES ('7', '12', null, '435759165', 'SHI HAINING', '45', '美国', '博士', '1', '青藏高原食源性病原菌病原生物学及防控');
INSERT INTO `tb_foreign_expert` VALUES ('8', '13', null, 'LN891349', 'ALAN HSU', '60', '新西兰', '博士', '1', '呼吸系统疾病的治疗和植物药物开发');
INSERT INTO `tb_foreign_expert` VALUES ('9', '14', null, 'G50709596', '徐淑岩', '14', '中国', '博士', '1', '先进等离子技术在环境保护以及新鲜食品生产处理中的应用');
INSERT INTO `tb_foreign_expert` VALUES ('10', '15', null, 'QK205032', 'JIM HU', '10', '加拿大', '博士', '1', '宿主对病毒载体介导的基因转移的免疫应答');
INSERT INTO `tb_foreign_expert` VALUES ('11', '16', null, 'TK1665770', '康噶楚称格桑', '32', '日本', '博士', '1', '日本藏学研究之佛教经典文献研究');
INSERT INTO `tb_foreign_expert` VALUES ('12', '17', null, '', 'ZHIGANG WANG', '47', '美国', '博士', '1', '多任务实时操作系统与TI DSP处理器控制系统规划');
INSERT INTO `tb_foreign_expert` VALUES ('13', '18', null, 'G37585356 (UK0472794)', 'G37585356', '10', '中国', '博士', '1', '纳米半导体表征');
INSERT INTO `tb_foreign_expert` VALUES ('14', '19', null, '', 'LEVINE, NANCY ELAINE', '26', '美国', '博士', '1', '边地社会的亲属体系及其实践：基于康却与帊域的比较研究');
INSERT INTO `tb_foreign_expert` VALUES ('14', '20', null, '', 'SHERRY B. ORTNER', '26', '美国', '博士', '1', '边地社会的亲属体系及其实践：基于康却与帊域的比较研究');
INSERT INTO `tb_foreign_expert` VALUES ('14', '21', null, '', 'STÉPHANE GROS', '26', '法国', '博士', '1', '边地社会的亲属体系及其实践：基于康却与帊域的比较研究');
INSERT INTO `tb_foreign_expert` VALUES ('15', '22', null, '', 'PLOYSRI PORANANOND', '16', '泰国', '博士', '1', '旅游、传统与文化变迁：中国与泰国的比较研究');
INSERT INTO `tb_foreign_expert` VALUES ('16', '23', null, '', 'LIU LI CHUAN', '367', '美国', '博士', '1', '测控系统中的信号检测与处理');
INSERT INTO `tb_foreign_expert` VALUES ('17', '24', null, '', 'ANDREAS GRUSCHKE', '21', '德国', '博士', '1', '跨文化视野下中德两国出境旅游发展比较研究');
INSERT INTO `tb_foreign_expert` VALUES ('17', '25', null, '', 'ASTRID ZIMMERMANN', '21', '德国', '硕士', '1', '跨文化视野下中德两国出境旅游发展比较研究');
INSERT INTO `tb_foreign_expert` VALUES ('18', '26', null, 'M7778589', 'RAM HAIKAI TANE', '5', '澳大利亚', '硕士', '1', '基于GIS和大数据的川西少数民族地区流域景观规划研究');
INSERT INTO `tb_foreign_expert` VALUES ('19', '27', null, 'KJ 0090907', '林孟秋', '7', '中国香港', '博士', '1', '社会工作成长小组介入大学生自我认同与成长问题的实践研究');
INSERT INTO `tb_foreign_expert` VALUES ('20', '28', null, 'G36177413', 'CHEN YUEYUN', '42', '美国', '博士', '1', '中国化工业环境污染责任保险类金融衍生品设计研究');
INSERT INTO `tb_foreign_expert` VALUES ('20', '29', null, 'EA531056', 'DOBBS PETER ERIC', '40', '新西兰', '硕士', '1', '中国化工业环境污染责任保险类金融衍生品设计研究');
INSERT INTO `tb_foreign_expert` VALUES ('21', '30', null, '', 'DUH, BAU-RUEI', '15', '中国台湾', '博士', '1', '中国哲学方法论研究');
INSERT INTO `tb_foreign_expert` VALUES ('22', '31', null, 'TK2741779', 'SAKAMOTO MASARU', '8', '日本', '博士', '1', '日本上代文学研究');
INSERT INTO `tb_foreign_expert` VALUES ('23', '32', null, '', 'DAVID GELLNER', '31', '英国', '博士', '1', '边疆社会知识形态的宗教人类学探讨');
INSERT INTO `tb_foreign_expert` VALUES ('23', '33', null, '', 'GANANATH OBEYESEKERE', '62', '美国', '博士', '1', '边疆社会知识形态的宗教人类学探讨');
INSERT INTO `tb_foreign_expert` VALUES ('23', '34', null, '', 'FREDERICK DAMON', '31', '美国', '博士', '1', '边疆社会知识形态的宗教人类学探讨');
INSERT INTO `tb_foreign_expert` VALUES ('24', '35', null, 'CF1T168VH', 'BREUSTE JURGEN HEINZ', '31', '德国', '博士', '1', '中奥岷江上游民族地区生态城镇发展与生态服务系统研究');
INSERT INTO `tb_foreign_expert` VALUES ('25', '36', null, '', 'CAROLINE HUMPHREY', '32', '英国', '博士', '1', '比较视野下的环境感知与灾变应对');
INSERT INTO `tb_foreign_expert` VALUES ('25', '37', null, '', 'GEOFFREY SAMUEL', '32', '英国', '博士', '1', '比较视野下的环境感知与灾变应对');
INSERT INTO `tb_foreign_expert` VALUES ('25', '38', null, '', 'SANDRINE REVET', '32', '法国', '博士', '1', '比较视野下的环境感知与灾变应对');
INSERT INTO `tb_foreign_expert` VALUES ('26', '39', null, '', 'MELVYN GOLDSTEIN', '32', '美国', '博士', '1', '藏彝走廊的族群和谐互动与多元宗教实践');
INSERT INTO `tb_foreign_expert` VALUES ('26', '40', null, '', 'TONI HUBER', '1', '德国', '博士', '1', '藏彝走廊的族群和谐互动与多元宗教实践');
INSERT INTO `tb_foreign_expert` VALUES ('26', '41', null, '', 'NICOLAS SIHLE', '32', '法国', '博士', '1', '藏彝走廊的族群和谐互动与多元宗教实践');
INSERT INTO `tb_foreign_expert` VALUES ('27', '42', null, '', 'GRAY TUTTLE', '31', '美国', '博士', '1', '边地社会的信仰.实践与知识互动——基于汉藏社会的比较研究');
INSERT INTO `tb_foreign_expert` VALUES ('27', '43', null, '', 'ZHEJI', '31', '法国', '博士', '1', '边地社会的信仰.实践与知识互动——基于汉藏社会的比较研究');
INSERT INTO `tb_foreign_expert` VALUES ('27', '44', null, '', 'CHARLENE MAKLEY', '31', '美国', '博士', '1', '边地社会的信仰.实践与知识互动——基于汉藏社会的比较研究');
INSERT INTO `tb_foreign_expert` VALUES ('28', '45', null, '', 'TH0496030', '19', '日本', '博士', '1', '彝族传统文化与彝日双语教育研究');
INSERT INTO `tb_foreign_expert` VALUES ('29', '46', null, 'WN709101', 'MICHAEL CHI KEUNG. LEE', '31', '加拿大', '硕士', '1', '基于行动研究的学校心理健康教育—来自加拿大的经验');
INSERT INTO `tb_foreign_expert` VALUES ('30', '47', null, '79826450', 'ALEXANDER RODRIGUEZ-PALACIOS', '8', '哥伦比亚', '博士', '1', '绵羊肺炎支原体免疫蛋白组学研究');
INSERT INTO `tb_foreign_expert` VALUES ('31', '48', null, '', 'ANDREW WARD', '22', '英国', '硕士', '1', '哲学硕士点专业外语');
INSERT INTO `tb_foreign_expert` VALUES ('32', '49', null, 'TH5278003', 'IWAHORI  KEIKO', '13', '日本', '学士', '1', '中国古筝在世界的传播');
INSERT INTO `tb_foreign_expert` VALUES ('33', '50', null, '642103879', 'XIAOHUI WEI', '22', '美国', '博士', '1', '天然药物的新药开发研究');
INSERT INTO `tb_foreign_expert` VALUES ('34', '51', null, 'G57031490', 'WANG XUEFENG', '8', '英国', '博士', '1', '大数据背景下创意城市发展政策与机遇研究');
INSERT INTO `tb_foreign_expert` VALUES ('35', '52', null, '', '王智弘', '375', '中国台湾', '博士', '1', '心理咨询助人伦理培训与研究');
INSERT INTO `tb_foreign_expert` VALUES ('36', '53', null, 'GF981769', 'WU BIN', '46', '加拿大', '博士', '1', '现代动物胚胎学与胚胎移植技术（课程）英文教学');
INSERT INTO `tb_foreign_expert` VALUES ('36', '54', null, '496293403', 'JUMING ZHONG', '37', '美国', '博士', '1', '现代动物胚胎学与胚胎移植技术（课程）英文教学');
INSERT INTO `tb_foreign_expert` VALUES ('37', '55', null, '07445887', '林宜萱', '7', '中国台湾', '硕士', '1', '城市生活空间建筑学研究方法的精品联合教学');
INSERT INTO `tb_foreign_expert` VALUES ('38', '56', null, '306605011', 'NIEH/LAINIENHWA', '182', '中国台湾', '博士', '1', '表达性艺术治疗中的艺术媒材分析与应用研究');
INSERT INTO `tb_foreign_expert` VALUES ('39', '57', null, '', 'WEI LUO', '7', '美国', '博士', '1', '基于地理信息遥感遥测技术的青藏高原环境监测及评价');
INSERT INTO `tb_foreign_expert` VALUES ('40', '58', null, '', 'DENISE GIMPEL', '5', '英国', '博士', '1', '跨文化交际：理论与实践');
INSERT INTO `tb_foreign_expert` VALUES ('41', '59', null, '488873558', 'TAO ZHA', '30', '美国', '博士', '1', '经济学与金融学创新平台建设项目（一）：中国宏观经济的趋势与周期特征');
INSERT INTO `tb_foreign_expert` VALUES ('41', '60', null, 'G19638831', 'JIANJUN MIAO', '60', '中国', '博士', '1', '经济学与金融学创新平台建设项目（一）：中国宏观经济的趋势与周期特征');
INSERT INTO `tb_foreign_expert` VALUES ('41', '61', null, '488927360', 'KAIJI CHEN', '11', '美国', '博士', '1', '经济学与金融学创新平台建设项目（一）：中国宏观经济的趋势与周期特征');
INSERT INTO `tb_foreign_expert` VALUES ('42', '62', null, '109584265', 'JUN LIU', '59', '英国', '博士', '1', '电子商务中的顾客满意度测评理论与比较应用研究');
INSERT INTO `tb_foreign_expert` VALUES ('42', '63', null, '14AR78967', 'XIANYI ZENG', '45', '法国', '博士', '1', '电子商务中的顾客满意度测评理论与比较应用研究');
INSERT INTO `tb_foreign_expert` VALUES ('42', '64', null, '10AT47283', 'LUDOVIC KOEHL', '45', '法国', '博士', '1', '电子商务中的顾客满意度测评理论与比较应用研究');
INSERT INTO `tb_foreign_expert` VALUES ('43', '65', null, 'M90739512', '孙志凤', '11', '韩国', '博士', '1', '韩国高等教育管理政策研究');
INSERT INTO `tb_foreign_expert` VALUES ('43', '66', null, 'M72555812', 'SEONG TAEJE', '17', '韩国', '博士', '1', '韩国高等教育管理政策研究');
INSERT INTO `tb_foreign_expert` VALUES ('44', '67', null, '452411804', 'LI RENGEN', '30', '美国', '博士', '1', '经济全球化视野下的MBA硕士研究生职业生涯辅导');
INSERT INTO `tb_foreign_expert` VALUES ('45', '68', null, '', '马克.本德尔', '32', '美国', '博士', '1', '西南民族大学彝学学院与俄亥俄州立大学东亚系国际化教育理论与实践——以“中美大学生彝英双语国际文化交流活动为例”');
INSERT INTO `tb_foreign_expert` VALUES ('46', '69', null, 'M58863158', 'HONG', '7', '韩国', '博士', '1', '中国当代境内外藏族文学中的家国意识研究');
INSERT INTO `tb_foreign_expert` VALUES ('47', '70', null, '03696926', '徐仁辉', '31', '中国台湾', '博士', '1', '两岸关于MPA教学与实践问题比较——基于多民族现状视角');
INSERT INTO `tb_foreign_expert` VALUES ('48', '71', null, 'GK842602', 'DAVID C. H. CHONG', '16', '加拿大', '硕士', '1', '中-加青少年社会工作与临床心理咨询实践研究');
INSERT INTO `tb_foreign_expert` VALUES ('49', '72', null, '', 'MICHAEL GOLDSTEIN', '93', '美国', '博士', '1', '加州大学洛杉矶分校研究生教育教学及传统医学使用研究');
INSERT INTO `tb_foreign_expert` VALUES ('50', '73', null, '', 'LO GIANG PAO', '10', '越南', '博士', '1', '越南彝族社会历史变迁');
INSERT INTO `tb_foreign_expert` VALUES ('50', '74', null, '', 'NGUYENVAN CAN', '10', '越南', '博士', '1', '越南彝族社会历史变迁');
INSERT INTO `tb_foreign_expert` VALUES ('50', '75', null, '', 'NGUYEN SHIHONG', '10', '越南', '学士', '1', '越南彝族社会历史变迁');
INSERT INTO `tb_foreign_expert` VALUES ('51', '76', null, '', 'MAIR VICTOR', '30', '美国', '博士', '1', '敦煌西域所出汉文献之民族关系史料校注及研究');
INSERT INTO `tb_foreign_expert` VALUES ('51', '77', null, '', '高田时雄', '30', '日本', '博士', '1', '敦煌西域所出汉文献之民族关系史料校注及研究');
INSERT INTO `tb_foreign_expert` VALUES ('52', '78', null, '', '松冈格', '11', '日本', '博士', '1', '彝日双语专业教育教学理论与实践研究');
INSERT INTO `tb_foreign_expert` VALUES ('53', '79', null, 'YA6347619', 'ALESSANDRA MADELLA', '30', '意大利', '博士', '1', '符号学和修辞学视野下的视觉传达设计');
INSERT INTO `tb_foreign_expert` VALUES ('54', '80', null, 'BA402044', 'PATEL.ISHU', '47', '加拿大', '硕士', '1', '动画专业创作型进阶教学模式应用研究');
INSERT INTO `tb_foreign_expert` VALUES ('55', '81', null, '406335222', 'MATTHEW QUICK', '60', '美国', '博士', '1', '艺术学院声乐艺术指导');
INSERT INTO `tb_foreign_expert` VALUES ('56', '82', null, '', '月冈贞夫', '7', '日本', '学士', '1', '日本动漫发展与商业发展研究');
INSERT INTO `tb_foreign_expert` VALUES ('57', '83', null, '', 'A.O.SMITH', '21', '美国', '博士', '1', '泸沽湖及周边地区族群关系研究');
INSERT INTO `tb_foreign_expert` VALUES ('57', '84', null, '', 'S.M.HOFFMAN', '21', '美国', '博士', '1', '泸沽湖及周边地区族群关系研究');
INSERT INTO `tb_foreign_expert` VALUES ('57', '85', null, '', 'MICHAEL ROWLANDS', '21', '美国', '博士', '1', '泸沽湖及周边地区族群关系研究');
INSERT INTO `tb_foreign_expert` VALUES ('57', '86', null, '', 'CHUANGANG SHI', '21', '美国', '博士', '1', '泸沽湖及周边地区族群关系研究');
INSERT INTO `tb_foreign_expert` VALUES ('57', '87', null, '', 'RUI HAO', '21', '美国', '博士', '1', '泸沽湖及周边地区族群关系研究');
INSERT INTO `tb_foreign_expert` VALUES ('58', '88', null, '', 'WEI LI', '25', '中国', '博士', '1', '西方金融企业绩效评价体系及在中国应用研究');
INSERT INTO `tb_foreign_expert` VALUES ('59', '89', null, '16794686', 'NUMMENMAA', '365', '芬兰', '博士', '1', '基于信任模型的云平台下软件可靠性及测试技术研究研究');
INSERT INTO `tb_foreign_expert` VALUES ('60', '90', null, '', 'ATTAHIRU SULE ALFA', '8', '加拿大', '博士', '1', 'Algorithm for Computing the Queue Length Distribution ---Matrix Geometric Solution');

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
  `p_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_rank` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `p_department` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `p_funds` decimal(10,2) NOT NULL,
  `p_principal` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `p_state` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `p_result` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `r_id` int(11) NOT NULL,
  `is_insert` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_project
-- ----------------------------
INSERT INTO `tb_project` VALUES ('1', null, '青藏高原特有草种抗逆性研究', '重点', '青藏高原研究院', '160000.00', '周青平', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('2', null, '等离子体在聚变中的应用研究', '一般', '电气信息工程学院', '43900.00', '苗峰', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('3', null, '英国诗歌：从王政复辟到新批评', '重点', '外国语学院', '110000.00', '黄立', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('4', null, '国外人机交互工程人才培养模式的引入与实践', '重点', '计算机科学与技术学院', '172440.00', '陈雅茜', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('5', null, '藏药波棱瓜子抗肝损伤机理研究', '重点', '化学与环境保护学院', '126000.00', '顾健', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('6', null, '纪实摄影的图片编辑与叙事功能研究', '重点', '艺术学院', '98000.00', '贺飞', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('7', null, '青藏高原食源性病原菌病原生物学及防控', '重点', '生命科学与技术学院', '85200.00', '汤承', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('8', null, '呼吸系统疾病的治疗和植物药物开发', '一般', '化学与环境保护学院', '45000.00', '曾锐', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('9', null, '先进等离子技术在环境保护以及新鲜食品生产处理中的应用', '一般', '电气信息工程学院', '20200.00', '刘以良', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('10', null, '宿主对病毒载体介导的基因转移的免疫应答', '一般', '生命科学与技术学院', '38000.00', '王利', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('11', null, '日本藏学研究之佛教经典文献研究', '重点', '藏学学院', '50000.00', '万果', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('12', null, '多任务实时操作系统与TI DSP处理器控制系统规划', '重点', '电气信息工程学院', '160000.00', '彭安金', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('13', null, '纳米半导体表征', '一般', '电气信息工程学院', '25000.00', '徐明', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('14', null, '边地社会的亲属体系及其实践：基于康却与帊域的比较研究', '重点', '西南民族研究院', '160000.00', '王正宇', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('15', null, '旅游、传统与文化变迁：中国与泰国的比较研究', '一般', '旅游与历史文化学院', '31500.00', '阳宁东', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('16', null, '测控系统中的信号检测与处理', '重点', '电气信息工程学院', '160000.00', '罗翠华', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('17', null, '跨文化视野下中德两国出境旅游发展比较研究', '一般', '旅游与历史文化学院', '45000.00', '邓文', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('18', null, '基于GIS和大数据的川西少数民族地区流域景观规划研究', '一般', '城市规划与建筑学院', '33500.00', '王长柳', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('19', null, '社会工作成长小组介入大学生自我认同与成长问题的实践研究', '一般', '社会学与心理学学院', '45000.00', '唐美静', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('20', null, '中国化工业环境污染责任保险类金融衍生品设计研究', '一般', '经济学院', '150000.00', '蒲成毅', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('21', null, '中国哲学方法论研究', '重点', '政治学院', '74000.00', '段吉福', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('22', null, '日本上代文学研究', '一般', '外国语学院', '39700.00', '卢顺维', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('23', null, '边疆社会知识形态的宗教人类学探讨', '重点', '西南民族研究院', '160000.00', '张原', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('24', null, '中奥岷江上游民族地区生态城镇发展与生态服务系统研究', '重点', '城市规划与建筑学院', '109000.00', '赵兵', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('25', null, '比较视野下的环境感知与灾变应对', '重点', '西南民族研究院', '160000.00', '汤芸', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('26', null, '藏彝走廊的族群和谐互动与多元宗教实践', '重点', '旅游与历史文化学院', '160000.00', '郭建勋', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('27', null, '边地社会的信仰.实践与知识互动——基于汉藏社会的比较研究', '重点', '旅游与历史文化学院', '155100.00', '梁艳', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('28', null, '彝族传统文化与彝日双语教育研究', '一般', '彝学学院', '40000.00', '莫色木加', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('29', null, '基于行动研究的学校心理健康教育—来自加拿大的经验', '重点', '社会学与心理学学院', '45000.00', '韩佩玉', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('30', null, '绵羊肺炎支原体免疫蛋白组学研究', '一般', '生命科学与技术学院', '32500.00', '杨发龙', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('31', null, '哲学硕士点专业外语', '重点', '政治学院', '63000.00', '李蜀人', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('32', null, '中国古筝在世界的传播', '一般', '艺术学院', '45000.00', '吴丹', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('33', null, '天然药物的新药开发研究', '一般', '化学与环境保护学院', '40000.00', '吕露阳', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('34', null, '大数据背景下创意城市发展政策与机遇研究', '一般', '旅游与历史文化学院', '27300.00', '李俊', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('35', null, '心理咨询助人伦理培训与研究', '一般', '社会学与心理学学院', '45000.00', '张海滨', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('36', null, '现代动物胚胎学与胚胎移植技术（课程）英文教学', '重点', '生命科学与技术学院', '109200.00', '郝葆青', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('37', null, '城市生活空间建筑学研究方法的精品联合教学', '一般', '城市规划与建筑学院', '24300.00', '华益', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('38', null, '表达性艺术治疗中的艺术媒材分析与应用研究', '重点', '社会学与心理学学院', '178000.00', '王晓刚', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('39', null, '基于地理信息遥感遥测技术的青藏高原环境监测及评价', '重点', '电气信息工程学院', '160000.00', '公岷', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('40', null, '跨文化交际：理论与实践', '一般', '外国语学院', '38125.00', '张军', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('41', null, '经济学与金融学创新平台建设项目（一）：中国宏观经济的趋势与周期特征', '重点', '经济学院', '135000.00', '杜海韬', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('42', null, '电子商务中的顾客满意度测评理论与比较应用研究', '重点', '管理学院', '78000.00', '刘晓红', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('43', null, '韩国高等教育管理政策研究', '一般', '管理学院', '45000.00', '蒋明', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('44', null, '经济全球化视野下的MBA硕士研究生职业生涯辅导', '一般', '管理学院', '45000.00', '黄华', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('45', null, '西南民族大学彝学学院与俄亥俄州立大学东亚系国际化教育理论与实践——以“中美大学生彝英双语国际文化交流活动为例”', '重点', '彝学学院', '160000.00', '罗庆春', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('46', null, '中国当代境内外藏族文学中的家国意识研究', '重点', '文学与新闻传播学院', '49000.00', '涂鸿', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('47', null, '两岸关于MPA教学与实践问题比较——基于多民族现状视角', '一般', '管理学院', '56000.00', '张为波', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('48', null, '中-加青少年社会工作与临床心理咨询实践研究', '一般', '社会学与心理学学院', '47900.00', '陈勇', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('49', null, '加州大学洛杉矶分校研究生教育教学及传统医学使用研究', '一般', '藏学学院', '50000.00', '泽茸足', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('50', null, '越南彝族社会历史变迁', '重点', '西南民族研究院', '60000.00', '蔡华', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('51', null, '敦煌西域所出汉文献之民族关系史料校注及研究', '重点', '研究生院', '138000.00', '王启涛', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('52', null, '彝日双语专业教育教学理论与实践研究', '一般', '彝学学院', '40000.00', '胡芳梅', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('53', null, '符号学和修辞学视野下的视觉传达设计', '一般', '艺术学院', '30000.00', '周文晓', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('54', null, '动画专业创作型进阶教学模式应用研究', '重点', '艺术学院', '116000.00', '周舟', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('55', null, '艺术学院声乐艺术指导', '重点', '艺术学院', '113000.00', '符辉', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('56', null, '日本动漫发展与商业发展研究', '一般', '艺术学院', '58700.00', '龙丽娜', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('57', null, '泸沽湖及周边地区族群关系研究', '重点', '西南民族研究院', '160000.00', '杨正文', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('58', null, '西方金融企业绩效评价体系及在中国应用研究', '一般', '经济学院', '40000.00', '范钛', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('59', null, '基于信任模型的云平台下软件可靠性及测试技术研究研究', '重点', '计算机科学与技术学院', '130000.00', '殷锋', '0', '', '1', '1');
INSERT INTO `tb_project` VALUES ('60', null, 'Algorithm for Computing the Queue Length Distribution ---Matrix Geometric Solution', '一般', '计算机科学与技术学院', '15000.00', '程江', '0', '', '1', '1');

-- ----------------------------
-- Table structure for `tb_question`
-- ----------------------------
DROP TABLE IF EXISTS `tb_question`;
CREATE TABLE `tb_question` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `qg_id` int(11) NOT NULL,
  `q_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '单选',
  `q_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source_id` int(11) NOT NULL,
  `q_order` int(11) NOT NULL,
  `answer_rule` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '3',
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_question
-- ----------------------------
INSERT INTO `tb_question` VALUES ('1', '1', '1', '单选', '青藏高原特有草种抗逆性研究', '1', '0', '3');
INSERT INTO `tb_question` VALUES ('2', '1', '2', '单选', '等离子体在聚变中的应用研究', '2', '1', '3');
INSERT INTO `tb_question` VALUES ('3', '2', '3', '单选', '英国诗歌：从王政复辟到新批评', '3', '0', '3');
INSERT INTO `tb_question` VALUES ('4', '1', '4', '单选', '国外人机交互工程人才培养模式的引入与实践', '4', '0', '3');
INSERT INTO `tb_question` VALUES ('5', '1', '5', '单选', '藏药波棱瓜子抗肝损伤机理研究', '5', '0', '3');
INSERT INTO `tb_question` VALUES ('6', '2', '6', '单选', '纪实摄影的图片编辑与叙事功能研究', '6', '0', '3');
INSERT INTO `tb_question` VALUES ('7', '1', '7', '单选', '青藏高原食源性病原菌病原生物学及防控', '7', '0', '3');
INSERT INTO `tb_question` VALUES ('8', '1', '5', '单选', '呼吸系统疾病的治疗和植物药物开发', '8', '1', '3');
INSERT INTO `tb_question` VALUES ('9', '1', '2', '单选', '先进等离子技术在环境保护以及新鲜食品生产处理中的应用', '9', '1', '3');
INSERT INTO `tb_question` VALUES ('10', '1', '7', '单选', '宿主对病毒载体介导的基因转移的免疫应答', '10', '1', '3');
INSERT INTO `tb_question` VALUES ('11', '2', '8', '单选', '日本藏学研究之佛教经典文献研究', '11', '0', '3');
INSERT INTO `tb_question` VALUES ('12', '1', '2', '单选', '多任务实时操作系统与TI DSP处理器控制系统规划', '12', '0', '3');
INSERT INTO `tb_question` VALUES ('13', '1', '2', '单选', '纳米半导体表征', '13', '1', '3');
INSERT INTO `tb_question` VALUES ('14', '2', '9', '单选', '边地社会的亲属体系及其实践：基于康却与帊域的比较研究', '14', '0', '3');
INSERT INTO `tb_question` VALUES ('15', '2', '10', '单选', '旅游、传统与文化变迁：中国与泰国的比较研究', '15', '1', '3');
INSERT INTO `tb_question` VALUES ('16', '1', '2', '单选', '测控系统中的信号检测与处理', '16', '0', '3');
INSERT INTO `tb_question` VALUES ('17', '2', '10', '单选', '跨文化视野下中德两国出境旅游发展比较研究', '17', '1', '3');
INSERT INTO `tb_question` VALUES ('18', '1', '11', '单选', '基于GIS和大数据的川西少数民族地区流域景观规划研究', '18', '1', '3');
INSERT INTO `tb_question` VALUES ('19', '2', '12', '单选', '社会工作成长小组介入大学生自我认同与成长问题的实践研究', '19', '1', '3');
INSERT INTO `tb_question` VALUES ('20', '2', '13', '单选', '中国化工业环境污染责任保险类金融衍生品设计研究', '20', '1', '3');
INSERT INTO `tb_question` VALUES ('21', '2', '14', '单选', '中国哲学方法论研究', '21', '0', '3');
INSERT INTO `tb_question` VALUES ('22', '2', '3', '单选', '日本上代文学研究', '22', '1', '3');
INSERT INTO `tb_question` VALUES ('23', '2', '9', '单选', '边疆社会知识形态的宗教人类学探讨', '23', '0', '3');
INSERT INTO `tb_question` VALUES ('24', '1', '11', '单选', '中奥岷江上游民族地区生态城镇发展与生态服务系统研究', '24', '0', '3');
INSERT INTO `tb_question` VALUES ('25', '2', '9', '单选', '比较视野下的环境感知与灾变应对', '25', '0', '3');
INSERT INTO `tb_question` VALUES ('26', '2', '10', '单选', '藏彝走廊的族群和谐互动与多元宗教实践', '26', '0', '3');
INSERT INTO `tb_question` VALUES ('27', '2', '10', '单选', '边地社会的信仰.实践与知识互动——基于汉藏社会的比较研究', '27', '0', '3');
INSERT INTO `tb_question` VALUES ('28', '2', '15', '单选', '彝族传统文化与彝日双语教育研究', '28', '1', '3');
INSERT INTO `tb_question` VALUES ('29', '2', '12', '单选', '基于行动研究的学校心理健康教育—来自加拿大的经验', '29', '0', '3');
INSERT INTO `tb_question` VALUES ('30', '1', '7', '单选', '绵羊肺炎支原体免疫蛋白组学研究', '30', '1', '3');
INSERT INTO `tb_question` VALUES ('31', '2', '14', '单选', '哲学硕士点专业外语', '31', '0', '3');
INSERT INTO `tb_question` VALUES ('32', '2', '6', '单选', '中国古筝在世界的传播', '32', '1', '3');
INSERT INTO `tb_question` VALUES ('33', '1', '5', '单选', '天然药物的新药开发研究', '33', '1', '3');
INSERT INTO `tb_question` VALUES ('34', '2', '10', '单选', '大数据背景下创意城市发展政策与机遇研究', '34', '1', '3');
INSERT INTO `tb_question` VALUES ('35', '2', '12', '单选', '心理咨询助人伦理培训与研究', '35', '1', '3');
INSERT INTO `tb_question` VALUES ('36', '1', '7', '单选', '现代动物胚胎学与胚胎移植技术（课程）英文教学', '36', '0', '3');
INSERT INTO `tb_question` VALUES ('37', '1', '11', '单选', '城市生活空间建筑学研究方法的精品联合教学', '37', '1', '3');
INSERT INTO `tb_question` VALUES ('38', '2', '12', '单选', '表达性艺术治疗中的艺术媒材分析与应用研究', '38', '0', '3');
INSERT INTO `tb_question` VALUES ('39', '1', '2', '单选', '基于地理信息遥感遥测技术的青藏高原环境监测及评价', '39', '0', '3');
INSERT INTO `tb_question` VALUES ('40', '2', '3', '单选', '跨文化交际：理论与实践', '40', '1', '3');
INSERT INTO `tb_question` VALUES ('41', '2', '13', '单选', '经济学与金融学创新平台建设项目（一）：中国宏观经济的趋势与周期特征', '41', '0', '3');
INSERT INTO `tb_question` VALUES ('42', '2', '16', '单选', '电子商务中的顾客满意度测评理论与比较应用研究', '42', '0', '3');
INSERT INTO `tb_question` VALUES ('43', '2', '16', '单选', '韩国高等教育管理政策研究', '43', '1', '3');
INSERT INTO `tb_question` VALUES ('44', '2', '16', '单选', '经济全球化视野下的MBA硕士研究生职业生涯辅导', '44', '1', '3');
INSERT INTO `tb_question` VALUES ('45', '2', '15', '单选', '西南民族大学彝学学院与俄亥俄州立大学东亚系国际化教育理论与实践——以“中美大学生彝英双语国际文化交流活动为例”', '45', '0', '3');
INSERT INTO `tb_question` VALUES ('46', '2', '17', '单选', '中国当代境内外藏族文学中的家国意识研究', '46', '0', '3');
INSERT INTO `tb_question` VALUES ('47', '2', '16', '单选', '两岸关于MPA教学与实践问题比较——基于多民族现状视角', '47', '1', '3');
INSERT INTO `tb_question` VALUES ('48', '2', '12', '单选', '中-加青少年社会工作与临床心理咨询实践研究', '48', '1', '3');
INSERT INTO `tb_question` VALUES ('49', '2', '8', '单选', '加州大学洛杉矶分校研究生教育教学及传统医学使用研究', '49', '1', '3');
INSERT INTO `tb_question` VALUES ('50', '2', '9', '单选', '越南彝族社会历史变迁', '50', '0', '3');
INSERT INTO `tb_question` VALUES ('51', '2', '18', '单选', '敦煌西域所出汉文献之民族关系史料校注及研究', '51', '0', '3');
INSERT INTO `tb_question` VALUES ('52', '2', '15', '单选', '彝日双语专业教育教学理论与实践研究', '52', '1', '3');
INSERT INTO `tb_question` VALUES ('53', '2', '6', '单选', '符号学和修辞学视野下的视觉传达设计', '53', '1', '3');
INSERT INTO `tb_question` VALUES ('54', '2', '6', '单选', '动画专业创作型进阶教学模式应用研究', '54', '0', '3');
INSERT INTO `tb_question` VALUES ('55', '2', '6', '单选', '艺术学院声乐艺术指导', '55', '0', '3');
INSERT INTO `tb_question` VALUES ('56', '2', '6', '单选', '日本动漫发展与商业发展研究', '56', '1', '3');
INSERT INTO `tb_question` VALUES ('57', '2', '9', '单选', '泸沽湖及周边地区族群关系研究', '57', '0', '3');
INSERT INTO `tb_question` VALUES ('58', '2', '13', '单选', '西方金融企业绩效评价体系及在中国应用研究', '58', '1', '3');
INSERT INTO `tb_question` VALUES ('59', '1', '4', '单选', '基于信任模型的云平台下软件可靠性及测试技术研究研究', '59', '0', '3');
INSERT INTO `tb_question` VALUES ('60', '1', '4', '单选', 'Algorithm for Computing the Queue Length Distribution ---Matrix Geometric Solution', '60', '1', '3');

-- ----------------------------
-- Table structure for `tb_question_group`
-- ----------------------------
DROP TABLE IF EXISTS `tb_question_group`;
CREATE TABLE `tb_question_group` (
  `qg_id` int(11) NOT NULL AUTO_INCREMENT,
  `qg_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `s_id` int(11) NOT NULL,
  `qg_order` int(11) NOT NULL COMMENT '分组排序列',
  PRIMARY KEY (`qg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_question_group
-- ----------------------------
INSERT INTO `tb_question_group` VALUES ('1', '青藏高原研究院', '1', '6');
INSERT INTO `tb_question_group` VALUES ('2', '电气信息工程学院', '1', '2');
INSERT INTO `tb_question_group` VALUES ('3', '外国语学院', '2', '3');
INSERT INTO `tb_question_group` VALUES ('4', '计算机科学与技术学院', '1', '4');
INSERT INTO `tb_question_group` VALUES ('5', '化学与环境保护学院', '1', '1');
INSERT INTO `tb_question_group` VALUES ('6', '艺术学院', '2', '2');
INSERT INTO `tb_question_group` VALUES ('7', '生命科学与技术学院', '1', '3');
INSERT INTO `tb_question_group` VALUES ('8', '藏学学院', '2', '9');
INSERT INTO `tb_question_group` VALUES ('9', '西南民族研究院', '2', '11');
INSERT INTO `tb_question_group` VALUES ('10', '旅游与历史文化学院', '2', '1');
INSERT INTO `tb_question_group` VALUES ('11', '城市规划与建筑学院', '1', '5');
INSERT INTO `tb_question_group` VALUES ('12', '社会学与心理学学院', '2', '6');
INSERT INTO `tb_question_group` VALUES ('13', '经济学院', '2', '5');
INSERT INTO `tb_question_group` VALUES ('14', '政治学院', '2', '8');
INSERT INTO `tb_question_group` VALUES ('15', '彝学学院', '2', '9');
INSERT INTO `tb_question_group` VALUES ('16', '管理学院', '2', '7');
INSERT INTO `tb_question_group` VALUES ('17', '文学与新闻传播学院', '2', '4');
INSERT INTO `tb_question_group` VALUES ('18', '研究生院', '2', '12');

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
  `r_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `r_start` datetime NOT NULL,
  `r_end` datetime NOT NULL,
  `r_year` int(11) NOT NULL,
  `r_state` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `review_year` int(11) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_review
-- ----------------------------
INSERT INTO `tb_review` VALUES ('1', '2016年西南民族大学外专引智项目评审活动', '2015-06-29 19:01:51', '2015-07-06 19:01:51', '2016', '新建', '2015');

-- ----------------------------
-- Table structure for `tb_rule`
-- ----------------------------
DROP TABLE IF EXISTS `tb_rule`;
CREATE TABLE `tb_rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `r_id` int(11) DEFAULT NULL COMMENT '评审活动id',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_rule
-- ----------------------------
INSERT INTO `tb_rule` VALUES ('1', '2/3原则', '以原定专家数为基数', '0');
INSERT INTO `tb_rule` VALUES ('2', '2/3原则', '以实际投票人数为基数', '0');

-- ----------------------------
-- Table structure for `tb_site_info`
-- ----------------------------
DROP TABLE IF EXISTS `tb_site_info`;
CREATE TABLE `tb_site_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_site_info
-- ----------------------------
INSERT INTO `tb_site_info` VALUES ('1', '前台title', '西南民族大学 外专引智项目评审系统');
INSERT INTO `tb_site_info` VALUES ('2', '评审原则（按2/3以上通过原则）', '原则1：若重点票数大于2/3，则该项目最终评为重点项目。\r\n原则2：若不满足原则1，重点+一般的总票数大于2/3，则该项目最终评为一般项目。\r\n原则3：若不满足原则1和原则2，则该项目最终评为未通过项目。');
INSERT INTO `tb_site_info` VALUES ('3', '后台title', '西南民族大学 外专引智项目后台管理系统');
INSERT INTO `tb_site_info` VALUES ('4', '前台使用说明', '操作流程：\n（1）输入您的评审口令，进入评审系统；\n（2）单击“开始评审”按钮，正式进入评审；\n（3）对每个项目，选择相应级别进行评审；\n（4）若有意见，可在备注框内注明；\n（5）一个学院的所有项目评审完成后，单击“下一页”进入下一个学院的评审；\n（6）依次评审完所有学院，确认无误后单击“提交评审结果”，完成此次评审工作。');
INSERT INTO `tb_site_info` VALUES ('5', 'front_url', '211.83.241.141');
INSERT INTO `tb_site_info` VALUES ('6', 'arts_wifi', 'guojiao_1_2G');
INSERT INTO `tb_site_info` VALUES ('7', 'science_wifi', 'guojiao_2_2G');

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
INSERT INTO `tb_survey` VALUES ('1', '理科2015-06-29 19:03:39', '2015-06-29 19:01:51', '2015-07-06 19:01:51', '1', '新建', null, '0');
INSERT INTO `tb_survey` VALUES ('2', '文科2015-06-29 19:03:40', '2015-06-29 19:01:51', '2015-07-06 19:01:51', '1', '新建', null, '0');

-- ----------------------------
-- Table structure for `tb_survey_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `tb_survey_attribute`;
CREATE TABLE `tb_survey_attribute` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `a_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_v_project_question_response` AS select `r`.`response_id` AS `response_id`,`r`.`s_id` AS `s_id`,`e`.`e_type` AS `e_type`,`a`.`p_department` AS `p_department`,`s`.`q_id` AS `q_id`,`a`.`p_name` AS `p_name`,`a`.`p_principal` AS `p_principal`,`e`.`e_name` AS `e_name`,`r`.`answer` AS `answer`,`s`.`q_order` AS `q_order` from (((`tb_response` `r` join `tb_expert` `e`) join `tb_question` `s`) join `tb_project` `a`) where ((`s`.`q_id` = `r`.`q_id`) and (`e`.`e_id` = `r`.`voter_id`) and (`a`.`p_id` = `s`.`source_id`)) ;

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
