/*
Navicat MySQL Data Transfer

Source Server         : mySql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : db_review

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-06-29 18:47:36
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
INSERT INTO `tb_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2015-06-20 14:14:39');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_answer
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_department`
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mg_id` int(11) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_expert
-- ----------------------------
INSERT INTO `tb_expert` VALUES ('1', '专家1 ', '教授', '文科', '2015', '计算机科学发展与世界', '休眠', '3', '成都市西南民族大学', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '18080438527', null, '0', null, null);
INSERT INTO `tb_expert` VALUES ('2', '专家2', '研究员', '文科', '2015', '计算机软件与世界', '休眠', '11', '成都市西南民族大学', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '18080438527', null, '0', null, null);
INSERT INTO `tb_expert` VALUES ('3', '专家3', '教授', '文科', '2015', '计算机科学发展与世界', '休眠', '23', '成都市西南民族大学', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '18080438527', null, '0', null, null);
INSERT INTO `tb_expert` VALUES ('4', '专家4', '研究员', '文科', '2015', '计算机软件与世界', '休眠', '39', '成都市西南民族大学', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121054', null, '0', null, null);
INSERT INTO `tb_expert` VALUES ('5', '专家5', '研究员', '文科', '2015', '计算机软件与世界', '休眠', '47', '成都市', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121067', null, '0', null, null);
INSERT INTO `tb_expert` VALUES ('6', '专家6', '教授', '文科', '2015', '计算机硬件', '休眠', '51', '成都市', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121054', null, '0', null, null);
INSERT INTO `tb_expert` VALUES ('7', '专家7', '教授', '理科', '2015', '计算机科学发展与世界', '休眠', '65', '成都市', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121054', null, '0', null, null);
INSERT INTO `tb_expert` VALUES ('8', '专家8', '教授', '理科', '2015', '计算机软件与世界', '休眠', '71', '成都市', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121067', null, '0', null, null);
INSERT INTO `tb_expert` VALUES ('9', '专家9', '教授', '理科', '2015', '计算机科学发展与世界', '休眠', '88', '成都市', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '18080438527', null, '0', null, null);
INSERT INTO `tb_expert` VALUES ('10', '专家10', '研究员', '理科', '2015', '计算机软件与世界', '休眠', '96', '成都市西南民族大学', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '136780121054', null, '0', null, null);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_foreign_expert
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_project
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_question
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_question_group
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_review
-- ----------------------------

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
INSERT INTO `tb_site_info` VALUES ('1', '前台title', '西南民族大学 外专项目评审系统');
INSERT INTO `tb_site_info` VALUES ('2', '评审原则（按2/3以上通过原则）', '原则1：若重点票数大于2/3，则该项目最终评为重点项目。\r\n原则2：若不满足原则1，重点+一般的总票数大于2/3，则该项目最终评为一般项目。\r\n原则3：若不满足原则1和原则2，则该项目最终评为未通过项目。');
INSERT INTO `tb_site_info` VALUES ('3', '后台title', '西南民族大学 外专项目后台管理系统');
INSERT INTO `tb_site_info` VALUES ('4', '前台使用说明', '操作流程：\n（1）输入给定的口令，进入评审系统；\n（2）单击“开始评审”按钮后，正式进入评审阶段；\n（3）根据对每个项目的评审，单击选择圈或文字选择相应级别（重点项目有“未通过”、“一般”、“重点”三个级别，一般项目有“未通过”、“一般”二个级别，一般项目默认为“一般”）；\n（4）若对某一项目存在意见，可以在备注框中填写。若无意见，直接进行下一页操作；\n（5）对每一学院的所有项目完成评审后，单击“下一页”，保存评审结果，进入下一个学院的评审；\n（6）依次评审完所有学院，若确认无误，单击“提交评审结果”，完成此次评审工作；若想查看之前的评审结果，可以单击“返回”或“首页”。\n（7）查看评审结果后，若确认无误，单击“退出”，结束此次评审工作。\n\n温馨提示：\n（1）单击“上一页”，可以查看之前的评审结果。\n（2）单击“提交评审结果”按钮后，只能查询评审结果，不能进行修改。\n（3）单击“选择学院”下拉菜单，选择想要跳转的学院，进入相应页面进行评审。\n（4）若已提交评审结果，但查看评审结果时发现错误，请联系管理员，进行修改。');
INSERT INTO `tb_site_info` VALUES ('5', 'front_url', 'gjc.cn');
INSERT INTO `tb_site_info` VALUES ('6', 'arts_wifi', 'waizhuan1');
INSERT INTO `tb_site_info` VALUES ('7', 'science_wifi', 'waizhuan2');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_survey
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_survey_attribute
-- ----------------------------

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
