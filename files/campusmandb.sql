/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50041
Source Host           : localhost:3306
Source Database       : campusmandb

Target Server Type    : MYSQL
Target Server Version : 50041
File Encoding         : 65001

Date: 2015-05-12 21:13:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `authority` int(11) NOT NULL,
  `lastlogindate` varchar(255) default NULL,
  `registerdate` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin88', '1', '34235', '4534');
INSERT INTO `admin` VALUES ('2', 'Qikun', 'admin88', '1', null, null);
INSERT INTO `admin` VALUES ('3', '走着', '111111', '2', null, null);
INSERT INTO `admin` VALUES ('4', '好辣', '1234', '1', null, null);
INSERT INTO `admin` VALUES ('5', '伙计', '111111', '1', null, null);
INSERT INTO `admin` VALUES ('6', 'hkhg', '111111', '1', null, null);
INSERT INTO `admin` VALUES ('7', 'sfaf', '1111', '1', null, null);
INSERT INTO `admin` VALUES ('8', 'asfasf', '1111', '1', null, null);
INSERT INTO `admin` VALUES ('9', 'qqqq', '1111', '1', null, null);
INSERT INTO `admin` VALUES ('10', 'wwww', '1111', '1', null, null);
INSERT INTO `admin` VALUES ('11', 'rrrr', '1111', '1', null, null);

-- ----------------------------
-- Table structure for `banji`
-- ----------------------------
DROP TABLE IF EXISTS `banji`;
CREATE TABLE `banji` (
  `id` int(11) NOT NULL auto_increment,
  `kemuid` int(11) NOT NULL default '0',
  `xueqi` varchar(255) default NULL,
  `bj_mingzi` varchar(255) default NULL,
  `sk_jiaoshi` varchar(255) default NULL,
  `sk_shijian` varchar(255) default NULL,
  `keshi` int(11) default '0',
  `kk_shijian` varchar(255) default NULL,
  `zhuangtai` varchar(255) default NULL,
  `zd_renshu` int(11) default '0',
  `dq_renshu` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banji
-- ----------------------------
INSERT INTO `banji` VALUES ('1', '1', '14B', '歌舞14B1', '李某某，王某某', '星期六', '16', '2014-08-02  13:30:00', '已删除', '25', '16');
INSERT INTO `banji` VALUES ('2', '1', '14B', '歌舞14B2', '张某某，何某某', '星期天', '16', '2014-08-03  09:30:00', '已开班', '25', '19');
INSERT INTO `banji` VALUES ('4', '6', '15B', '舞蹈15B1', '王某，陈某', '星期六', '17', '2015-10-10  13:30:00', '未开班', '25', '4');
INSERT INTO `banji` VALUES ('5', '10', '15B', '足球15B1', '陈欧，陈军', '星期四', '16', '2015-05-06  08:30:00', '已开班', '25', '2');
INSERT INTO `banji` VALUES ('6', '9', '15B', '围棋15B1', '张某', '星期一', '11', '2017-12-09  13:30:00', '未开班', '25', '4');
INSERT INTO `banji` VALUES ('7', '7', '15B', '合唱15B3', '张某', '星期四', '16', '2015-09-09  09:30:00', '未开班', '25', '3');
INSERT INTO `banji` VALUES ('8', '8', '15B', '象棋15B1', '何某', '星期三', '15', '2015-09-21  13:30:00', '未开班', '30', '0');
INSERT INTO `banji` VALUES ('9', '11', '15B', '钢琴15B2', '杨过', '星期六', '16', '2005-09-05  13:30:33', '未开班', '25', '1');
INSERT INTO `banji` VALUES ('10', '13', '16B', '软件工程16B1', '曾谋', '星期二', '16', '1991-09-04  09:30:00', '已删除', '16', '0');

-- ----------------------------
-- Table structure for `guanliyuan`
-- ----------------------------
DROP TABLE IF EXISTS `guanliyuan`;
CREATE TABLE `guanliyuan` (
  `id` int(11) NOT NULL auto_increment,
  `gly_mingzi` varchar(255) default NULL,
  `mima` varchar(255) default NULL,
  `quanxian` int(11) default '0',
  `scdl_shijian` varchar(255) default NULL,
  `zc_shijian` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guanliyuan
-- ----------------------------
INSERT INTO `guanliyuan` VALUES ('1', 'admin', 'admin88', '1', null, null);

-- ----------------------------
-- Table structure for `jiaoshi`
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi` (
  `ID` int(11) NOT NULL,
  `xingming` varchar(255) default NULL,
  `zhiwu` varchar(255) default NULL,
  `shoukezhuanye` varchar(255) default NULL,
  `shoukebanji` varchar(255) default NULL,
  `keshibiaozhun` varchar(255) default NULL,
  `leixing` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------

-- ----------------------------
-- Table structure for `kemu`
-- ----------------------------
DROP TABLE IF EXISTS `kemu`;
CREATE TABLE `kemu` (
  `id` int(11) NOT NULL auto_increment,
  `xiaoquid` int(11) NOT NULL,
  `km_mingzi` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kemu
-- ----------------------------
INSERT INTO `kemu` VALUES ('1', '1', '歌舞');
INSERT INTO `kemu` VALUES ('2', '1', '钢琴');
INSERT INTO `kemu` VALUES ('3', '1', '朗诵');
INSERT INTO `kemu` VALUES ('4', '1', '民族舞');
INSERT INTO `kemu` VALUES ('5', '1', '合唱');
INSERT INTO `kemu` VALUES ('6', '2', '舞蹈');
INSERT INTO `kemu` VALUES ('7', '2', '合唱');
INSERT INTO `kemu` VALUES ('8', '2', '象棋');
INSERT INTO `kemu` VALUES ('9', '3', '围棋');
INSERT INTO `kemu` VALUES ('10', '3', '足球');
INSERT INTO `kemu` VALUES ('11', '3', '钢琴');
INSERT INTO `kemu` VALUES ('13', '15', '软件工程');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ID` int(11) NOT NULL auto_increment,
  `xingming` varchar(255) default NULL,
  `xingbie` varchar(255) default NULL,
  `cs_riqi` varchar(255) default NULL,
  `xiaoqu` varchar(255) default NULL,
  `banji` varchar(255) default NULL,
  `sk_jiaoshi` varchar(255) default NULL,
  `dizhi` varchar(255) default NULL,
  `gd_dianhua` varchar(255) default NULL,
  `mq_shouji` varchar(255) default NULL,
  `fq_shouji` varchar(255) default NULL,
  `youeryuan` varchar(255) default NULL,
  `zc_shijian` varchar(255) default NULL,
  `sf_biaozhun` varchar(255) default NULL,
  `keci` int(11) default '0',
  `dycsk_shijian` varchar(255) default NULL,
  `beizhu` varchar(255) default NULL,
  `zhaopian` varchar(255) default NULL,
  `jingli` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '起坤', '男', '19910904', '海事大学', '软件工程', '曾老师', '浦东新区', '18221105276', '143434234', '2342355', '安工程', '20150830', '50', '20150923', '234234', 'fsfsf', 'fasf', '饿饿啊是');
INSERT INTO `student` VALUES ('2', '太郎', '男', '1990年9月', '海事临港', '计算机', '曾老师', '临港新城', '12412412441', '23234234234', '34234234', '海南', '2015年4月', '70', '16', '8月3', '发生的发生的发生', 'sdflkjisndfiiu', '水电费水电费水电费水电费');
INSERT INTO `student` VALUES ('3', '陈军', '男', '1991年12月', '海事临港', '计算机理论', '曾老师', '海港大道', '893903', '2342342342', '23234134', '盐城', '2015年4月22日', null, '17', '8月9日', '我们不是在网上买的', 'fsdfsdf', null);
INSERT INTO `student` VALUES ('4', '敦耀', '男', '1832年23', '', '', '', '', '', '', '', '', '', null, '16', '', '', '', null);

-- ----------------------------
-- Table structure for `xiaoqu`
-- ----------------------------
DROP TABLE IF EXISTS `xiaoqu`;
CREATE TABLE `xiaoqu` (
  `id` int(11) NOT NULL auto_increment,
  `xq_mingzi` varchar(255) default NULL,
  `suoxie` varchar(255) default NULL,
  `dizhi` varchar(255) default NULL,
  `dianhua` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xiaoqu
-- ----------------------------
INSERT INTO `xiaoqu` VALUES ('1', '飞童凡响尚城校', '尚城', '松江区九亭镇涞寅路658弄39号绿庭尚城中心会所三楼', '021-67606466/18821200098');
INSERT INTO `xiaoqu` VALUES ('2', '飞童凡响浅水湾校', '浅水湾', '普陀区宜昌路179号浅水湾文化艺术中心五楼', '18821200600');
INSERT INTO `xiaoqu` VALUES ('3', '飞童凡响浅浦东碧云校', '碧云', '浦东新区碧云路333弄5号B102室中天碧云苑内', '18821200600');
INSERT INTO `xiaoqu` VALUES ('15', '临港新城', '海事', '海港大道', '');

-- ----------------------------
-- Table structure for `xuesheng`
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL auto_increment,
  `xiaoquID` int(11) NOT NULL,
  `xingming` varchar(255) default NULL,
  `xingbie` varchar(255) default NULL,
  `cs_riqi` varchar(255) default NULL,
  `dizhi` varchar(255) default NULL,
  `gd_dianhua` varchar(255) default NULL,
  `mq_shouji` varchar(255) default NULL,
  `fq_shouji` varchar(255) default NULL,
  `youeryuan` varchar(255) default NULL,
  `zc_shijian` varchar(255) default NULL,
  `zhaopian` varchar(255) default NULL,
  `jingli` varchar(255) default NULL,
  `beizhu` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES ('16', '2', '史诗儿', '女', '1991-09-04', '绿庭45号601', '', '18602164489', '13671556616', '', null, null, '', '');
INSERT INTO `xuesheng` VALUES ('2', '1', '郑绍辉', '男', '2009-12-02', '绿庭17号2702', '67752338', '13817169438', '13564401728', null, null, null, '好样的', '');
INSERT INTO `xuesheng` VALUES ('3', '3', '起坤', '男', '1991-09-04', '海事大学', '', '18221105276', '', null, null, null, '很好', '');
INSERT INTO `xuesheng` VALUES ('13', '2', '敦耀', '男', '1991-09-04', '临港新城', '', '', '', '', null, null, '', '');
INSERT INTO `xuesheng` VALUES ('18', '3', '陈军', '男', '1991-09-04', '临港新城', '178223443', '', '', '海事', null, null, '', '');

-- ----------------------------
-- Table structure for `xuesheng_banji`
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng_banji`;
CREATE TABLE `xuesheng_banji` (
  `id` int(11) NOT NULL auto_increment,
  `xueshengid` int(11) default NULL,
  `banjiid` int(11) default NULL,
  `xuefei` float default '0',
  `shoukuanren` varchar(255) default NULL,
  `queqinliang` int(11) default '0',
  `qq_beizhu` varchar(500) default NULL,
  `pingjia` varchar(300) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuesheng_banji
-- ----------------------------
INSERT INTO `xuesheng_banji` VALUES ('10', '3', '6', '0', '霍某', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('11', '3', '5', '0', '霍某', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('12', '17', '7', '0', '张某', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('13', '17', '4', '0', '张某', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('14', '17', '7', '0', '张某', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('15', '4', '7', '0', '张某', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('16', '4', '4', '0', '张某', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('17', '3', '5', '0', '张某', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('18', '3', '6', '0', '张某', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('19', '18', '6', '0', '张其坤', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('20', '18', '9', '0', '王某', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('21', '4', '4', '0', '', '0', null, null);
INSERT INTO `xuesheng_banji` VALUES ('22', '13', '4', '0', '何某', '0', null, null);
