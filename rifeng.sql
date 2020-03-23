/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : rifeng

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-03-23 16:28:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cosmo_access
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_access`;
CREATE TABLE `cosmo_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` varchar(50) NOT NULL DEFAULT '',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_access
-- ----------------------------
INSERT INTO `cosmo_access` VALUES ('2', '162', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '161', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '160', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '159', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '157', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '156', '3', '151', '');
INSERT INTO `cosmo_access` VALUES ('2', '155', '3', '151', '');
INSERT INTO `cosmo_access` VALUES ('2', '154', '3', '151', '');
INSERT INTO `cosmo_access` VALUES ('2', '153', '3', '151', '');
INSERT INTO `cosmo_access` VALUES ('2', '152', '3', '151', '');
INSERT INTO `cosmo_access` VALUES ('2', '151', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '150', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '149', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '148', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '147', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '146', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '145', '3', '129', '');
INSERT INTO `cosmo_access` VALUES ('2', '142', '3', '127', '');
INSERT INTO `cosmo_access` VALUES ('2', '140', '3', '126', '');
INSERT INTO `cosmo_access` VALUES ('2', '139', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '129', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '128', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '127', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '126', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '110', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '107', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '88', '3', '81', '');
INSERT INTO `cosmo_access` VALUES ('2', '81', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '30', '3', '2', '');
INSERT INTO `cosmo_access` VALUES ('2', '28', '3', '2', '');
INSERT INTO `cosmo_access` VALUES ('2', '27', '3', '2', '');
INSERT INTO `cosmo_access` VALUES ('2', '26', '3', '2', '');
INSERT INTO `cosmo_access` VALUES ('2', '25', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '24', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '23', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '22', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '21', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '19', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '18', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '17', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '16', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '15', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '14', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '13', '3', '12', '');
INSERT INTO `cosmo_access` VALUES ('2', '12', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '11', '3', '2', '');
INSERT INTO `cosmo_access` VALUES ('2', '8', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '7', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '5', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '4', '3', '3', '');
INSERT INTO `cosmo_access` VALUES ('2', '3', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '2', '2', '1', '');
INSERT INTO `cosmo_access` VALUES ('2', '1', '1', '0', '');

-- ----------------------------
-- Table structure for cosmo_article
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_article`;
CREATE TABLE `cosmo_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `fromlink` varchar(80) NOT NULL DEFAULT '0',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `readgroup` varchar(255) NOT NULL DEFAULT '',
  `readpoint` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cont` text NOT NULL,
  `xz` varchar(255) NOT NULL DEFAULT '',
  `yz` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`lang`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_article
-- ----------------------------
INSERT INTO `cosmo_article` VALUES ('36', '74', '2', 'admin', 'sdarfghjkl1', '', '', '', '0', '', '', '', '', '0', '1', '1', '', '0', '0', '/quyuliebiao_36.html', '0', '1584949266', '1584949266', '', '0', '<ul class=\"submenu\">\r\n	<li>\r\n		address:js;oeihgag\r\n	</li>\r\n	<li>\r\n		telephone ：2555522\r\n	</li>\r\n	<li>\r\n		Fax:aoiheoigh\r\n	</li>\r\n	<li>\r\n		pc:lshejifghn\r\n	</li>\r\n</ul>', '60', '270');
INSERT INTO `cosmo_article` VALUES ('37', '74', '2', 'admin', 'sdarfghjkl2', '', '', '', '0', '', '', '', '', '0', '1', '1', '', '0', '0', '/quyuliebiao_37.html', '0', '1584949318', '1584949318', '', '0', '<ul class=\"submenu\">\r\n	<li>\r\n		address:js;oeihgag\r\n	</li>\r\n	<li>\r\n		telephone ：2555522\r\n	</li>\r\n	<li>\r\n		Fax:aoiheoigh\r\n	</li>\r\n	<li>\r\n		pc:lshejifghn\r\n	</li>\r\n</ul>', '140', '80');
INSERT INTO `cosmo_article` VALUES ('38', '74', '2', 'admin', 'sdarfghjkl3', '', '', '', '0', '', '', '', '', '0', '1', '1', '', '0', '0', '/quyuliebiao_38.html', '0', '1584949350', '1584949350', '', '0', '<ul class=\"submenu\">\r\n	<li>\r\n		address:js;oeihgag\r\n	</li>\r\n	<li>\r\n		telephone ：2555522\r\n	</li>\r\n	<li>\r\n		Fax:aoiheoigh\r\n	</li>\r\n	<li>\r\n		pc:lshejifghn\r\n	</li>\r\n</ul>', '177', '86');

-- ----------------------------
-- Table structure for cosmo_attachment
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_attachment`;
CREATE TABLE `cosmo_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(8) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `filepath` varchar(80) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL DEFAULT '',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=837 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_attachment
-- ----------------------------
INSERT INTO `cosmo_attachment` VALUES ('3', '230', '2', '3', 'newUp.png', '/Uploads/201512/567fc608ede1c.png', '1991', 'png', '1', '0', '1', '1451214344', '127.0.0.1', '1');
INSERT INTO `cosmo_attachment` VALUES ('47', '6', '2', '0', 'section-banner.jpg', '/Uploads/201609/57d77651b1e91.jpg', '115208', 'jpg', '1', '0', '1', '1473738321', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('49', '1', '20', '0', '111.jpg', '/Uploads/201609/57d7aca38e5b2.jpg', '263261', 'jpg', '1', '0', '1', '1473752227', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('50', '1', '1', '0', '111.jpg', '/Uploads/201609/57d7acb5403bd.jpg', '263261', 'jpg', '1', '0', '1', '1473752245', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('51', '1', '1', '0', '100.jpg', '/Uploads/201609/57d7ad6b8feda.jpg', '125034', 'jpg', '1', '0', '1', '1473752427', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('52', '1', '21', '21', '111.jpg', '/Uploads/201609/57d7adc076422.jpg', '124810', 'jpg', '1', '0', '1', '1473752512', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('53', '1', '21', '21', '112.jpg', '/Uploads/201609/57d7adf17a5c5.jpg', '67987', 'jpg', '1', '0', '1', '1473752561', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('54', '1', '21', '21', '113.jpg', '/Uploads/201609/57d7ae1725ae7.jpg', '91141', 'jpg', '1', '0', '1', '1473752599', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('55', '1', '22', '22', '112.png', '/Uploads/201609/57d7af4e1a660.png', '3417', 'png', '1', '0', '1', '1473752910', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('56', '1', '22', '22', '113.png', '/Uploads/201609/57d7af79e8d24.png', '3857', 'png', '1', '0', '1', '1473752953', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('57', '1', '22', '22', '114.png', '/Uploads/201609/57d7afd9163c6.png', '4951', 'png', '1', '0', '1', '1473753049', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('58', '1', '22', '22', '114.png', '/Uploads/201609/57d7aff417586.png', '4951', 'png', '1', '0', '1', '1473753076', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('59', '1', '25', '25', '100.jpg', '/Uploads/201609/57d7bd53a3317.jpg', '106191', 'jpg', '1', '1', '1', '1473756499', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('60', '1', '25', '0', '100.jpg', '/Uploads/201609/57d7bd7d8a634.jpg', '106191', 'jpg', '1', '0', '1', '1473756541', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('61', '1', '27', '0', '123.png', '/Uploads/201609/57d7bdcc5b647.png', '486625', 'png', '1', '0', '1', '1473756620', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('62', '1', '29', '0', '111.jpg', '/Uploads/201609/57d7c3e5ccfe6.jpg', '99280', 'jpg', '1', '0', '1', '1473758181', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('63', '1', '30', '0', '100.jpg', '/Uploads/201609/57d7d1a94bba9.jpg', '106191', 'jpg', '1', '0', '1', '1473761705', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('64', '1', '20', '20', 'gf.jpg', '/Uploads/201609/57e227e5e4e00.jpg', '387475', 'jpg', '1', '0', '1', '1474439141', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('65', '1', '22', '22', 'Business-license-.jpg', '/Uploads/201609/57e229a0970b3.jpg', '192521', 'jpg', '1', '0', '1', '1474439584', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('66', '1', '22', '22', 'Guizhou-peak-API-certificate-.jpg', '/Uploads/201609/57e229a1ae022.jpg', '160635', 'jpg', '1', '0', '1', '1474439585', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('67', '1', '22', '22', 'ISO9001.jpg', '/Uploads/201609/57e229a2d1e9b.jpg', '194187', 'jpg', '1', '0', '1', '1474439586', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('68', '1', '22', '22', 'ISO-Ts29001.jpg', '/Uploads/201609/57e229a3ee013.jpg', '197449', 'jpg', '1', '0', '1', '1474439587', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('69', '1', '22', '22', 'NS-1-0129.jpg', '/Uploads/201609/57e229a507cb7.jpg', '227557', 'jpg', '1', '0', '1', '1474439589', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('70', '1', '22', '22', 'Safety-production-standardization-of-three-enterpr', '/Uploads/201609/57e229a620396.jpg', '82650', 'jpg', '1', '0', '1', '1474439590', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('71', '1', '22', '22', 'Guizhou-peak-API-specification-Q1-certificate--249', '/Uploads/201609/57e229a763de7.jpg', '30152', 'jpg', '1', '0', '1', '1474439591', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('110', '230', '1', '7', 'banner02.jpg', '/Uploads/201610/57ff29b63dbfc.jpg', '75669', 'jpg', '1', '0', '1', '1476340150', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('111', '2', '1', '0', '摄图网-在阳光下的新闻.jpg', '/Uploads/201701/58732d7db355b.jpg', '130953', 'jpg', '1', '0', '1', '1483943293', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('112', '6', '2', '0', '摄图网-晚餐海鲜盛宴.jpg', '/Uploads/201701/58732fa5dda84.jpg', '161039', 'jpg', '1', '0', '1', '1483943845', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('119', '7', '25', '0', '摄图网-商务客服形象.jpg', '/Uploads/201701/587339e9ed827.jpg', '53864', 'jpg', '1', '0', '1', '1483946473', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('121', '4', '30', '0', '摄图网-海边美丽的世界.jpg', '/Uploads/201701/587344c52a3f1.jpg', '119628', 'jpg', '1', '0', '1', '1483949253', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('129', '2', '0', '0', 'lgz2_meitu_1_j9hc_meitu_1_ci9g.jpg', '/Uploads/201701/58734b7abe5fa.jpg', '189728', 'jpg', '1', '0', '1', '1483950970', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('148', '6', '2', '0', 'IMG_4506.jpg', '/Uploads/201703/58b6351e3ad5c.jpg', '76070', 'jpg', '1', '0', '1', '1488336158', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('154', '2', '1', '0', '图层-2.jpg', '/Uploads/201703/58b63ba1ee9e1.jpg', '98171', 'jpg', '1', '0', '1', '1488337825', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('155', '2', '45', '0', '摄图网-商务人士讨论开会-(1).jpg', '/Uploads/201703/58b640c09b5b6.jpg', '151904', 'jpg', '1', '0', '1', '1488339136', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('156', '1', '25', '0', '摄图网-智能生活.jpg', '/Uploads/201703/58b6686b1d939.jpg', '37351', 'jpg', '1', '0', '1', '1488349291', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('157', '2', '0', '0', 'banner-assort1.jpg', '/Uploads/201704/58e6ec915b58f.jpg', '202610', 'jpg', '1', '0', '1', '1491528849', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('158', '4', '2', '0', '图层-3.jpg', '/Uploads/201704/58e7613f8df35.jpg', '106702', 'jpg', '1', '0', '1', '1491558719', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('159', '1', '30', '0', '图层-1.jpg', '/Uploads/201704/58e884f98d444.jpg', '37406', 'jpg', '1', '0', '1', '1491633401', '0.0.0.0', '1');
INSERT INTO `cosmo_attachment` VALUES ('578', '10', '0', '0', 'b1.png', '/Uploads/201806/5b2a0152006a6.png', '83453', 'png', '1', '1', '3', '1529479506', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('218', '1', '77', '77', 'GFC-888B.jpg', '/Uploads/201705/590bdd4db1cc9.jpg', '13640', 'jpg', '1', '0', '1', '1493949773', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('219', '1', '77', '77', 'GFC-888a.png', '/Uploads/201705/590bdd5f00ee9.png', '15201', 'png', '1', '0', '1', '1493949791', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('220', '1', '77', '77', 'GFC-888c.png', '/Uploads/201705/590bdd6018587.png', '7378', 'png', '1', '0', '1', '1493949792', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('221', '1', '77', '77', 'GFC-888f.png', '/Uploads/201705/590bdd6062453.png', '6315', 'png', '1', '0', '1', '1493949792', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('222', '1', '77', '77', 'GFC-888A-1.png', '/Uploads/201705/590be5d6c608c.png', '118805', 'png', '1', '0', '1', '1493951958', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('223', '1', '77', '77', '未标题-2.jpg', '/Uploads/201705/590be5e96a5d1.jpg', '18787', 'jpg', '1', '0', '1', '1493951977', '119.129.74.157', '1');
INSERT INTO `cosmo_attachment` VALUES ('224', '230', '1', '7', 'banner01.jpg', '/Uploads/201705/59101012d93da.jpg', '103808', 'jpg', '1', '0', '1', '1494224914', '119.129.75.206', '1');
INSERT INTO `cosmo_attachment` VALUES ('355', '0', '0', '0', '0.png', '/Uploads/201709/59b7b01ff13a2.png', '61223', 'png', '1', '0', '2', '1505210399', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('353', '6', '0', '0', '0.png', '/Uploads/201709/59b7afca7ff33.png', '61223', 'png', '1', '1', '2', '1505210314', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('354', '0', '0', '0', '0.png', '/Uploads/201709/59b7afcdb8536.png', '61223', 'png', '1', '0', '2', '1505210317', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('352', '230', '2', '3', 'm-indexBanner_01.jpg', '/Uploads/201708/59a3b141a079d.jpg', '157819', 'jpg', '1', '0', '3', '1503899969', '192.168.1.50', '1');
INSERT INTO `cosmo_attachment` VALUES ('732', '230', '2', '11', 'banner.jpg', '/Uploads/201810/5bcda1f4e634a.jpg', '187224', 'jpg', '1', '0', '3', '1540202996', '127.0.0.1', '1');
INSERT INTO `cosmo_attachment` VALUES ('731', '230', '2', '10', 'banner.jpg', '/Uploads/201810/5bcda1e670926.jpg', '187224', 'jpg', '1', '0', '3', '1540202982', '127.0.0.1', '1');
INSERT INTO `cosmo_attachment` VALUES ('730', '230', '2', '3', 'banner.jpg', '/Uploads/201810/5bcda1c7383a4.jpg', '187224', 'jpg', '1', '0', '3', '1540202951', '127.0.0.1', '1');
INSERT INTO `cosmo_attachment` VALUES ('761', '230', '1', '7', '20181212155424.jpg', '/Uploads/201812/5c10befba9726.jpg', '1374989', 'jpg', '1', '0', '2', '1544601339', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('321', '1', '74', '74', 'wenyoung whiteboard production line.jpg', '/Uploads/201705/5926796e10f5a.jpg', '144687', 'jpg', '1', '0', '1', '1495693678', '192.154.105.114', '1');
INSERT INTO `cosmo_attachment` VALUES ('329', '6', '0', '0', 'WY-81 with  gliding- magnetic whiteboard  (2).jpg', '/Uploads/201705/5927bdd30d8f4.jpg', '56555', 'jpg', '1', '1', '1', '1495776723', '113.70.215.251', '0');
INSERT INTO `cosmo_attachment` VALUES ('328', '6', '0', '0', 'WY-81 with  gliding- magnetic whiteboard  (1).jpg', '/Uploads/201705/5927bdc98cfe9.jpg', '65250', 'jpg', '1', '1', '1', '1495776713', '113.70.215.251', '0');
INSERT INTO `cosmo_attachment` VALUES ('342', '6', '0', '0', 'WY-99 porcelain MAGNETIC WHITEBOARD (2).jpg', '/Uploads/201705/5927c23d419a8.jpg', '60758', 'jpg', '1', '1', '1', '1495777853', '83.217.10.126', '0');
INSERT INTO `cosmo_attachment` VALUES ('349', '1', '74', '74', 'introduction of wenyoung stationery2.jpg', '/Uploads/201705/5928f0030778e.jpg', '127536', 'jpg', '1', '0', '1', '1495855107', '113.70.215.251', '1');
INSERT INTO `cosmo_attachment` VALUES ('350', '1', '0', '0', 'wenyang showroom.jpg', '/Uploads/201706/593faea04b0da.jpg', '142339', 'jpg', '1', '0', '1', '1497345696', '116.20.230.213', '0');
INSERT INTO `cosmo_attachment` VALUES ('351', '1', '74', '74', 'wenyang showroom.jpg', '/Uploads/201706/593faec12ff48.jpg', '142339', 'jpg', '1', '0', '1', '1497345729', '116.20.230.213', '1');
INSERT INTO `cosmo_attachment` VALUES ('409', '6', '0', '0', '0.png', '/Uploads/201709/59b8aced05856.png', '35249', 'png', '1', '1', '2', '1505275117', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('417', '6', '0', '0', 'GLW修-正方形.jpg', '/Uploads/201709/59b8cd8141914.jpg', '84311', 'jpg', '1', '1', '2', '1505283457', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('418', '6', '0', '0', 'GLW修-正方形.jpg', '/Uploads/201709/59b8ce1581272.jpg', '84311', 'jpg', '1', '1', '2', '1505283605', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('419', '6', '0', '0', 'GLW修-正方形.jpg', '/Uploads/201709/59b8cedaa5c01.jpg', '84311', 'jpg', '1', '1', '2', '1505283802', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('421', '6', '0', '0', 'Colorful-Magnetic-Tempered-Glass-Board (1).jpg', '/Uploads/201709/59b8cf9f95ecb.jpg', '38975', 'jpg', '1', '0', '2', '1505283999', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('422', '6', '0', '0', 'Colorful-Magnetic-Tempered-Glass-Board.jpg', '/Uploads/201709/59b8cf9fca9cd.jpg', '742239', 'jpg', '1', '0', '2', '1505283999', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('423', '6', '0', '0', '309_2643139_09fba13da3b54e3.png', '/Uploads/201709/59b8cfad39e08.png', '230378', 'png', '1', '0', '2', '1505284013', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('424', '6', '0', '0', 'HTB1M_HiKXXXXXXJXVXXq6xXFXXX0.jpg', '/Uploads/201709/59b8cfbc5efe2.jpg', '61473', 'jpg', '1', '0', '2', '1505284028', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('425', '6', '0', '0', 'HTB1ZZupHpXXXXXbapXXq6xXFXXXG.jpg', '/Uploads/201709/59b8cfcd5bac9.jpg', '18482', 'jpg', '1', '0', '2', '1505284045', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('426', '6', '0', '0', 'HTB1M_HiKXXXXXXJXVXXq6xXFXXX0.jpg', '/Uploads/201709/59b8cfd8eec3a.jpg', '61473', 'jpg', '1', '0', '2', '1505284056', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('427', '6', '0', '0', 'Colorful-Magnetic-Tempered-Glass-Board.jpg', '/Uploads/201709/59b8cfe02dff7.jpg', '742239', 'jpg', '1', '0', '2', '1505284064', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('428', '6', '0', '0', 'HTB1ZZupHpXXXXXbapXXq6xXFXXXG.jpg', '/Uploads/201709/59b8cfe8e1d54.jpg', '18482', 'jpg', '1', '0', '2', '1505284072', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('429', '6', '0', '0', '40X40cm-Magnetic-Dry-Erase-Glass-Writing-Board.jpg', '/Uploads/201709/59b8cff3ab4a1.jpg', '154404', 'jpg', '1', '0', '2', '1505284083', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('430', '6', '0', '0', '40X40cm-Magnetic-Dry-Erase-Glass-Writing-Board (1)', '/Uploads/201709/59b8cff3c211d.jpg', '154404', 'jpg', '1', '0', '2', '1505284083', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('431', '6', '0', '0', '309_2643139_09fba13da3b54e3.png', '/Uploads/201709/59b8cffe974c1.png', '230378', 'png', '1', '0', '2', '1505284094', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('432', '6', '0', '0', 'Colorful-Magnetic-Tempered-Glass-Board.jpg', '/Uploads/201709/59b8d00a938be.jpg', '742239', 'jpg', '1', '0', '2', '1505284106', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('433', '6', '0', '0', 'Colorful-Magnetic-Tempered-Glass-Board (1).jpg', '/Uploads/201709/59b8d01bda138.jpg', '38975', 'jpg', '1', '0', '2', '1505284123', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('434', '6', '0', '0', 'HTB1ZZupHpXXXXXbapXXq6xXFXXXG.jpg', '/Uploads/201709/59b8d03401e84.jpg', '18482', 'jpg', '1', '1', '2', '1505284148', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('435', '6', '0', '0', 'HTB1UaHSJVXXXXaSXXXXq6xXFXXXQ.jpg', '/Uploads/201709/59b8d0450cabd.jpg', '29769', 'jpg', '1', '1', '2', '1505284165', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('451', '6', '0', '0', '3.jpg', '/Uploads/201709/59b8f2ae5ac1f.jpg', '85809', 'jpg', '1', '0', '2', '1505292974', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('452', '6', '0', '0', '4.jpg', '/Uploads/201709/59b8f2ae760e3.jpg', '87302', 'jpg', '1', '0', '2', '1505292974', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('450', '6', '0', '0', '2.jpg', '/Uploads/201709/59b8f2ae43947.jpg', '93677', 'jpg', '1', '0', '2', '1505292974', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('449', '6', '0', '0', '1.jpg', '/Uploads/201709/59b8f2ae1fe4e.jpg', '55797', 'jpg', '1', '0', '2', '1505292974', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('467', '6', '0', '0', '0.png', '/Uploads/201709/59b8fa9caae88.png', '35664', 'png', '1', '1', '2', '1505295004', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('505', '6', '0', '0', '1.jpg', '/Uploads/201709/59b9e30ec0a55.jpg', '45074', 'jpg', '1', '0', '2', '1505354510', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('506', '6', '0', '0', '2.jpg', '/Uploads/201709/59b9e30ed8e7d.jpg', '67536', 'jpg', '1', '0', '2', '1505354510', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('507', '6', '0', '0', '3.jpg', '/Uploads/201709/59b9e30eeffd7.jpg', '175764', 'jpg', '1', '0', '2', '1505354510', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('681', '6', '0', '0', 'p20.png', '/Uploads/201806/5b2b12c71877c.png', '15493', 'png', '1', '0', '3', '1529549511', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('680', '6', '0', '0', 'con031.png', '/Uploads/201806/5b2b12bd8c8bb.png', '77209', 'png', '1', '0', '3', '1529549501', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('679', '6', '0', '0', 'con03.png', '/Uploads/201806/5b2b12bd7de58.png', '69872', 'png', '1', '0', '3', '1529549501', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('678', '6', '0', '0', 'con03.png', '/Uploads/201806/5b2b12b135370.png', '69872', 'png', '1', '1', '3', '1529549489', '127.0.0.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('524', '6', '0', '0', '0.png', '/Uploads/201709/59b9e543252fc.png', '57477', 'png', '1', '1', '2', '1505355075', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('554', '6', '0', '0', '1.jpg', '/Uploads/201709/59b9e9b2365be.jpg', '66657', 'jpg', '1', '0', '2', '1505356210', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('555', '6', '0', '0', '2.jpg', '/Uploads/201709/59b9e9b257497.jpg', '59811', 'jpg', '1', '0', '2', '1505356210', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('556', '6', '0', '0', '3.jpg', '/Uploads/201709/59b9e9b33c819.jpg', '134414', 'jpg', '1', '0', '2', '1505356211', '192.168.1.1', '0');
INSERT INTO `cosmo_attachment` VALUES ('702', '230', '1', '7', 'banner.jpg', '/Uploads/201810/5bc85571c69ff.jpg', '1378680', 'jpg', '1', '0', '3', '1539855729', '127.0.0.1', '1');
INSERT INTO `cosmo_attachment` VALUES ('747', '6', '0', '0', '01-GD2.JPG', '/Uploads/201811/5beb9cab3c267.jpg', '153256', 'jpg', '1', '1', '4', '1542167723', '61.140.24.141', '0');
INSERT INTO `cosmo_attachment` VALUES ('762', '230', '1', '7', 'new_20181212155636.jpg', '/Uploads/201812/5c10c091376c2.jpg', '1629902', 'jpg', '1', '0', '2', '1544601745', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('763', '230', '1', '7', 'new_20181212155636.jpg', '/Uploads/201812/5c10c0dad639c.jpg', '758583', 'jpg', '1', '0', '2', '1544601818', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('764', '230', '1', '7', '20181212161857.jpg', '/Uploads/201812/5c10c6375975b.jpg', '1724677', 'jpg', '1', '0', '2', '1544603191', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('765', '230', '1', '7', '20181212161857.jpg', '/Uploads/201812/5c10c6c04a34e.jpg', '468255', 'jpg', '1', '0', '2', '1544603328', '27.45.146.101', '1');
INSERT INTO `cosmo_attachment` VALUES ('768', '230', '1', '7', '20181217165919.jpg', '/Uploads/201812/5c1765b6c33a7.jpg', '514815', 'jpg', '1', '0', '2', '1545037238', '157.61.159.48', '1');
INSERT INTO `cosmo_attachment` VALUES ('770', '230', '1', '7', '20181217170909.jpg', '/Uploads/201812/5c1767d2ee058.jpg', '501013', 'jpg', '1', '0', '2', '1545037778', '157.61.159.48', '1');
INSERT INTO `cosmo_attachment` VALUES ('778', '2', '0', '0', 'Family-members-visit-the-workshop.jpg', '/Uploads/201812/5c25a1f918130.jpg', '142598', 'jpg', '1', '0', '2', '1545970169', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('779', '2', '0', '0', 'Family-members-visit-the-workshop2.jpg', '/Uploads/201812/5c25a1fa3cd5b.jpg', '159655', 'jpg', '1', '0', '2', '1545970170', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('780', '2', '0', '0', 'General-manager\'s-speech.jpg', '/Uploads/201812/5c25a1fa9d2a9.jpg', '98679', 'jpg', '1', '0', '2', '1545970170', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('781', '2', '0', '0', 'Gifts-from-guests.jpg', '/Uploads/201812/5c25a1fc0589f.jpg', '128097', 'jpg', '1', '0', '2', '1545970172', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('782', '2', '0', '0', 'Gifts-from-guestsjpg.jpg', '/Uploads/201812/5c25a1fc78b44.jpg', '110460', 'jpg', '1', '0', '2', '1545970172', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('785', '2', '0', '0', 'Lion-dance.jpg', '/Uploads/201812/5c25a1fe7a8f8.jpg', '124782', 'jpg', '1', '0', '2', '1545970174', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('786', '2', '0', '0', 'Martial-arts-performance.jpg', '/Uploads/201812/5c25a1ff4718a.jpg', '144587', 'jpg', '1', '0', '2', '1545970175', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('787', '2', '0', '0', 'Staff-chorus.jpg', '/Uploads/201812/5c25a20002906.jpg', '99679', 'jpg', '1', '0', '2', '1545970176', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('788', '2', '0', '0', 'Staff-dance-performance.jpg', '/Uploads/201812/5c25a2008a443.jpg', '161741', 'jpg', '1', '0', '2', '1545970176', '120.83.155.3', '0');
INSERT INTO `cosmo_attachment` VALUES ('824', '2', '0', '0', 'news1.jpg', '/Uploads/201904/5cab0cc0b2fe4.jpg', '3841319', 'jpg', '1', '0', '4', '1554713792', '40.83.76.20', '0');
INSERT INTO `cosmo_attachment` VALUES ('829', '230', '2', '13', '���(3).jpg', '/Uploads/201904/5cb3548a66f18.jpg', '55099', 'jpg', '1', '0', '4', '1555256458', '66.42.100.254', '1');
INSERT INTO `cosmo_attachment` VALUES ('830', '230', '2', '13', '���(2).jpg', '/Uploads/201904/5cb35636c2aea.jpg', '1011944', 'jpg', '1', '0', '4', '1555256886', '66.42.100.254', '1');
INSERT INTO `cosmo_attachment` VALUES ('832', '230', '2', '13', '广锻2(5).jpg', '/Uploads/201904/5cb3e9a06768e.jpg', '492493', 'jpg', '1', '0', '4', '1555294624', '52.141.38.119', '1');
INSERT INTO `cosmo_attachment` VALUES ('836', '230', '0', '0', '5dd2735194d4c.jpg', '/Uploads/201912/5dfc6fb6afa98.jpg', '709285', 'jpg', '1', '0', '2', '1576824758', '127.0.0.1', '0');

-- ----------------------------
-- Table structure for cosmo_block
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_block`;
CREATE TABLE `cosmo_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pos` char(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  PRIMARY KEY (`id`),
  KEY `pos` (`pos`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_block
-- ----------------------------
INSERT INTO `cosmo_block` VALUES ('1', 'inf', 'Company information', '0', '', 'Sichuan Huida through mechanical equipment manufacturing Co., Ltd. is a professional engaged in kitchen equipment, kitchen lampblack purification processing and large-scale commercial kitchen equipment R &amp; D and production enterprises');
INSERT INTO `cosmo_block` VALUES ('2', 'code', 'code', '0', '', '');

-- ----------------------------
-- Table structure for cosmo_case
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_case`;
CREATE TABLE `cosmo_case` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pic` mediumtext NOT NULL,
  `Price` varchar(80) NOT NULL DEFAULT '',
  `document` varchar(80) NOT NULL DEFAULT '',
  `msga` text NOT NULL,
  `msgb` text NOT NULL,
  `msgc` mediumtext NOT NULL,
  `msgd` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_case
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_category
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_category`;
CREATE TABLE `cosmo_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlruleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `presentpoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `chargepoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `repeatchargedays` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_category
-- ----------------------------
INSERT INTO `cosmo_category` VALUES ('73', 'Way of working', 'Wayofworking', '', '0', '1', 'Page', '0', '73', '0', '', '', '', '1', '0', '0', '0', '', '0', '/Wayofworking.html', 'list', 'show', '12', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('74', '区域列表', 'quyuliebiao', '', '0', '2', 'Article', '0', '74', '0', '', '', '', '3', '0', '0', '0', '', '0', '/quyuliebiao.html', 'AboutUs', 'AboutUs', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('77', 'BENIFITS', 'BENIFITS', '', '0', '1', 'Page', '0', '77', '0', '', '', '', '2', '0', '0', '0', '', '0', '/BENIFITS.html', 'list', 'show', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('78', 'CONTACT US', 'contact', '', '0', '1', 'Page', '0', '78', '0', '', '', '', '5', '0', '0', '0', '', '0', '/contact.html', 'contact', 'contact', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `cosmo_category` VALUES ('103', 'THANKS', 'thanks', '', '0', '1', 'Page', '0', '103', '0', '', '', '', '100', '0', '0', '0', '', '0', '/thanks.html', 'thank', 'thank', '0', '', '0', '0', '0', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for cosmo_config
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_config`;
CREATE TABLE `cosmo_config` (
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `varname` (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_config
-- ----------------------------
INSERT INTO `cosmo_config` VALUES ('site_name', '网站名称', '2', 'RIFENG ENTERPRISE GROUP CO.LTD', '1');
INSERT INTO `cosmo_config` VALUES ('site_url', '网站网址', '2', '/index.php', '1');
INSERT INTO `cosmo_config` VALUES ('site_email', '站点邮箱', '2', 'stephen-zheng@rifeng.com', '1');
INSERT INTO `cosmo_config` VALUES ('seo_keywords', '关键词', '2', 'RIFENG ENTERPRISE GROUP CO.LTD', '1');
INSERT INTO `cosmo_config` VALUES ('seo_description', '网站简介', '2', 'RIFENG ENTERPRISE GROUP CO.LTD', '1');
INSERT INTO `cosmo_config` VALUES ('mail_type', '邮件发送模式', '4', '1', '0');
INSERT INTO `cosmo_config` VALUES ('mail_server', '邮件服务器', '4', 'smtp.exmail.qq.com', '0');
INSERT INTO `cosmo_config` VALUES ('mail_port', '邮件发送端口', '4', '465', '0');
INSERT INTO `cosmo_config` VALUES ('mail_from', '发件人地址', '4', 'yige@fsqhyl.com', '0');
INSERT INTO `cosmo_config` VALUES ('mail_auth', 'AUTH LOGIN验证', '4', '1', '0');
INSERT INTO `cosmo_config` VALUES ('mail_user', '验证用户名', '4', 'yige@fsqhyl.com', '0');
INSERT INTO `cosmo_config` VALUES ('mail_password', '验证密码', '4', 'VNxW2jYqQDq6ibLn', '0');
INSERT INTO `cosmo_config` VALUES ('attach_maxsize', '允许上传附件大小', '5', '5200000', '0');
INSERT INTO `cosmo_config` VALUES ('attach_allowext', '允许上传附件类型', '5', 'jpg,jpeg,gif,png,doc,docx,rar,zip,swf,pdf', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_enable', '是否开启图片水印', '5', '0', '0');
INSERT INTO `cosmo_config` VALUES ('watemard_text', '水印文字内容', '5', '', '0');
INSERT INTO `cosmo_config` VALUES ('watemard_text_size', '文字大小', '5', '18', '0');
INSERT INTO `cosmo_config` VALUES ('watemard_text_color', 'watemard_text_color', '5', '#FFFFFF', '0');
INSERT INTO `cosmo_config` VALUES ('watemard_text_face', '字体', '5', 'elephant.ttf', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_minwidth', '图片最小宽度', '5', '300', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_minheight', '水印最小高度', '5', '300', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_img', '水印图片名称', '5', 'mark.png', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_pct', '水印透明度', '5', '80', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_quality', 'JPEG 水印质量', '5', '100', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_pospadding', '水印边距', '5', '10', '0');
INSERT INTO `cosmo_config` VALUES ('watermark_pos', '水印位置', '5', '9', '0');
INSERT INTO `cosmo_config` VALUES ('PAGE_LISTROWS', '列表分页数', '6', '15', '0');
INSERT INTO `cosmo_config` VALUES ('URL_MODEL', 'URL访问模式', '6', '2', '0');
INSERT INTO `cosmo_config` VALUES ('URL_PATHINFO_DEPR', '参数分割符', '6', '/', '0');
INSERT INTO `cosmo_config` VALUES ('URL_HTML_SUFFIX', 'URL伪静态后缀', '6', '.html', '0');
INSERT INTO `cosmo_config` VALUES ('TOKEN_ON', '令牌验证', '6', '0', '0');
INSERT INTO `cosmo_config` VALUES ('TOKEN_NAME', '令牌表单字段', '6', '__hash__', '0');
INSERT INTO `cosmo_config` VALUES ('TMPL_CACHE_ON', '模板编译缓存', '6', '0', '0');
INSERT INTO `cosmo_config` VALUES ('TMPL_CACHE_TIME', '模板缓存有效期', '6', '-1', '0');
INSERT INTO `cosmo_config` VALUES ('HTML_CACHE_ON', '静态缓存', '6', '0', '0');
INSERT INTO `cosmo_config` VALUES ('HTML_CACHE_TIME', '缓存有效期', '6', '60', '0');
INSERT INTO `cosmo_config` VALUES ('HTML_READ_TYPE', '缓存读取方式', '6', '0', '0');
INSERT INTO `cosmo_config` VALUES ('HTML_FILE_SUFFIX', '静态文件后缀', '6', '.html', '0');
INSERT INTO `cosmo_config` VALUES ('ADMIN_ACCESS', 'ADMIN_ACCESS', '6', '5e2fa5274ed57f6a4b17f3d5c474c1e2', '0');
INSERT INTO `cosmo_config` VALUES ('DEFAULT_THEME', '默认模板', '6', 'Default', '0');
INSERT INTO `cosmo_config` VALUES ('HOME_ISHTML', '首页生成html', '6', '0', '0');
INSERT INTO `cosmo_config` VALUES ('URL_URLRULE', 'URL', '6', '{$catdir}_{$id}.html|{$catdir}_{$id}-{$page}.html:::{$catdir}.html|{$catdir}-{$page}.html', '0');
INSERT INTO `cosmo_config` VALUES ('DEFAULT_LANG', '默认语言', '6', 'cn', '0');
INSERT INTO `cosmo_config` VALUES ('member_register', '允许新会员注册', '3', '0', '1');
INSERT INTO `cosmo_config` VALUES ('member_emailcheck', '新会员注册需要邮件验证', '3', '0', '1');
INSERT INTO `cosmo_config` VALUES ('member_registecheck', '新会员注册需要审核', '3', '1', '1');
INSERT INTO `cosmo_config` VALUES ('member_login_verify', '注册登陆开启验证码', '3', '1', '1');
INSERT INTO `cosmo_config` VALUES ('member_emailchecktpl', '邮件认证模板', '3', ' 欢迎您注册成为ainaphp用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}', '1');
INSERT INTO `cosmo_config` VALUES ('member_getpwdemaitpl', '密码找回邮件内容', '3', '尊敬的用户{username}，请点击进入<a href=\"{url}\">重置密码</a>,或者将网址复制到浏览器：{url}（链接3天内有效）。<br>感谢您对本站的支持。<br>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　{sitename}<br>此邮件为系统自动邮件，无需回复。', '1');
INSERT INTO `cosmo_config` VALUES ('LAYOUT_ON', '布局模板', '6', '1', '0');
INSERT INTO `cosmo_config` VALUES ('ADMIN_VERIFY', '后台登陆验证码', '6', '1', '0');
INSERT INTO `cosmo_config` VALUES ('name', '公司名称', '1', 'RIFENG ENTERPRISE GROUP CO.LTD', '0');
INSERT INTO `cosmo_config` VALUES ('address', '公司地址', '1', 'No.16,Zumiao Road,Foshan,Guangdong,PR China 528000', '0');
INSERT INTO `cosmo_config` VALUES ('phone', '电话', '1', '0757-82281163', '0');
INSERT INTO `cosmo_config` VALUES ('email', '邮箱', '1', 'stephen-zheng@rifeng.com', '0');
INSERT INTO `cosmo_config` VALUES ('cop', '版权', '1', '© 2018 GUANGDONG METAL FORMING MACHINE WORKS CO.,LTD ALL RIGHT RESERVED', '0');
INSERT INTO `cosmo_config` VALUES ('google', 'Google主页地址', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('facebook', 'Facebook主页地址', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('ins', 'INS主页地址', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('youtube', 'Youtube主页地址', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('twitter', 'Twitter主页地址', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('domestic_fax', 'domestic_fax', '1', '22637568', '0');
INSERT INTO `cosmo_config` VALUES ('shield', '屏蔽关键词空格隔开', '1', '', '0');
INSERT INTO `cosmo_config` VALUES ('phonea', '手机号码', '1', '+86 18603973217', '0');
INSERT INTO `cosmo_config` VALUES ('wwwurl', '官网地址', '1', 'http://en.rifenghq.global-marketing.cn/', '0');
INSERT INTO `cosmo_config` VALUES ('cnname', '中文名称', '1', '日丰企业集团有限公司', '0');

-- ----------------------------
-- Table structure for cosmo_dbsource
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_dbsource`;
CREATE TABLE `cosmo_dbsource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `host` varchar(20) NOT NULL DEFAULT '',
  `port` int(5) unsigned NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `dbname` varchar(50) NOT NULL DEFAULT '',
  `dbtablepre` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_dbsource
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_download
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_download`;
CREATE TABLE `cosmo_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_download
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_field
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_field`;
CREATE TABLE `cosmo_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `ispost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_field
-- ----------------------------
INSERT INTO `cosmo_field` VALUES ('1', '1', 'title', '标题', '', '1', '3', '80', '', '标题必填3-80个字', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'0\',\n  \'size\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('2', '1', 'keywords', '关键词', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('3', '1', 'description', 'SEO简介', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'56\',\n  \'default\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('4', '1', 'content', '内容', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \\\'edittype\\\' => \\\'Xheditor\\\',\n  \\\'toolbar\\\' => \\\'full\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'height\\\' => \\\'\\\',\n  \\\'show_add_description\\\' => \\\'0\\\',\n  \\\'show_auto_thumb\\\' => \\\'0\\\',\n  \\\'showpage\\\' => \\\'1\\\',\n  \\\'enablekeylink\\\' => \\\'0\\\',\n  \\\'replacenum\\\' => \\\'\\\',\n  \\\'enablesaveimage\\\' => \\\'0\\\',\n  \\\'flashupload\\\' => \\\'1\\\',\n  \\\'alowuploadexts\\\' => \\\'jpg,jpeg,gif,doc,rar,zip,xls\\\',\n  \\\'alowuploadlimit\\\' => \\\'\\\',\n)', '1', '', '0', '0', '1');
INSERT INTO `cosmo_field` VALUES ('5', '2', 'catid', '栏目', '', '1', '1', '6', 'digits', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('6', '2', 'title', '标题', '', '1', '0', '0', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('7', '2', 'keywords', '关键词', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)', '1', '', '0', '0', '1');
INSERT INTO `cosmo_field` VALUES ('8', '2', 'description', 'SEO简介', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'56\',\n  \'default\' => \'\',\n)', '1', '', '0', '0', '1');
INSERT INTO `cosmo_field` VALUES ('9', '2', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'show_add_description\' => \'1\',\n  \'show_auto_thumb\' => \'1\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '0', '0', '1');
INSERT INTO `cosmo_field` VALUES ('10', '2', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('11', '2', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '3,4', '0', '0', '1');
INSERT INTO `cosmo_field` VALUES ('12', '2', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '0', '0', '1');
INSERT INTO `cosmo_field` VALUES ('13', '2', 'status', '状态', '', '0', '0', '0', '0', '', '', 'radio', 'array (\n  \\\'options\\\' => \\\'发布|1\r\n暂停发布|0\\\',\n  \\\'fieldtype\\\' => \\\'tinyint\\\',\n  \\\'numbertype\\\' => \\\'1\\\',\n  \\\'labelwidth\\\' => \\\'75\\\',\n  \\\'default\\\' => \\\'1\\\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('14', '2', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '0', '0', '0');
INSERT INTO `cosmo_field` VALUES ('15', '3', 'name', '网站名称', '', '1', '2', '50', '', '', '', 'text', 'array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '1', '1', '0');
INSERT INTO `cosmo_field` VALUES ('16', '3', 'logo', '网站LOGO', '', '0', '0', '0', '', '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,gif,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'0\',\n)', '1', '', '2', '1', '0');
INSERT INTO `cosmo_field` VALUES ('17', '3', 'siteurl', '网站地址', '', '1', '10', '150', 'url', '', '', 'text', 'array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '0');
INSERT INTO `cosmo_field` VALUES ('18', '3', 'typeid', '友情链接分类', '', '0', '0', '0', '', '', '', 'typeid', 'array (\n  \'inputtype\' => \'select\',\n  \'fieldtype\' => \'smallint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)', '1', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('19', '3', 'linktype', '链接类型', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'文字链接|1\r\nLOGO链接|2\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)', '1', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('20', '3', 'siteinfo', '站点简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'3\',\n  \'cols\' => \'60\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '0');
INSERT INTO `cosmo_field` VALUES ('21', '4', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('22', '4', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('23', '4', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cosmo_field` VALUES ('24', '4', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cosmo_field` VALUES ('25', '4', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '1', '1');
INSERT INTO `cosmo_field` VALUES ('26', '4', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('27', '4', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `cosmo_field` VALUES ('28', '4', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `cosmo_field` VALUES ('29', '4', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `cosmo_field` VALUES ('30', '4', 'status', '状态', '', '0', '0', '0', '0', '', '', 'radio', 'array (\n  \\\'options\\\' => \\\'发布|1\r\n暂停发布|0\\\',\n  \\\'fieldtype\\\' => \\\'tinyint\\\',\n  \\\'numbertype\\\' => \\\'1\\\',\n  \\\'labelwidth\\\' => \\\'75\\\',\n  \\\'default\\\' => \\\'1\\\',\n)', '1', '', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('31', '5', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('32', '5', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('33', '5', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cosmo_field` VALUES ('34', '5', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cosmo_field` VALUES ('35', '5', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '1', '1');
INSERT INTO `cosmo_field` VALUES ('36', '5', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('37', '5', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `cosmo_field` VALUES ('38', '5', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `cosmo_field` VALUES ('39', '5', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `cosmo_field` VALUES ('40', '5', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('41', '4', 'pic', '多图', '', '0', '0', '0', '0', '', '', 'images', 'array (\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxnum\\\' => \\\'20\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'jpg,jpeg,gif,png\\\',\n  \\\'watermark\\\' => \\\'0\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '9', '1', '0');
INSERT INTO `cosmo_field` VALUES ('42', '6', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('43', '6', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('44', '6', 'keywords', 'Model', '', '0', '0', '80', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cosmo_field` VALUES ('45', '6', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cosmo_field` VALUES ('46', '6', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '5', '1', '1');
INSERT INTO `cosmo_field` VALUES ('47', '6', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('48', '6', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `cosmo_field` VALUES ('49', '6', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `cosmo_field` VALUES ('50', '6', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `cosmo_field` VALUES ('51', '6', 'status', '状态', '', '0', '0', '0', '0', '', '', 'radio', 'array (\n  \\\'options\\\' => \\\'发布|1\r\n暂停发布|0\\\',\n  \\\'fieldtype\\\' => \\\'tinyint\\\',\n  \\\'numbertype\\\' => \\\'1\\\',\n  \\\'labelwidth\\\' => \\\'75\\\',\n  \\\'default\\\' => \\\'1\\\',\n)', '1', '', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('54', '6', 'pic', '多图', '', '0', '0', '0', '0', '', '', 'images', 'array (\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxnum\\\' => \\\'20\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'jpg,jpeg,gif,png\\\',\n  \\\'watermark\\\' => \\\'0\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '11', '1', '0');
INSERT INTO `cosmo_field` VALUES ('130', '11', 'cont', '内容', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \\\'edittype\\\' => \\\'kindeditor\\\',\n  \\\'toolbar\\\' => \\\'basic\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'height\\\' => \\\'\\\',\n  \\\'show_add_description\\\' => \\\'0\\\',\n  \\\'show_auto_thumb\\\' => \\\'0\\\',\n  \\\'showpage\\\' => \\\'0\\\',\n  \\\'enablekeylink\\\' => \\\'0\\\',\n  \\\'replacenum\\\' => \\\'\\\',\n  \\\'enablesaveimage\\\' => \\\'0\\\',\n  \\\'flashupload\\\' => \\\'0\\\',\n  \\\'alowuploadexts\\\' => \\\'\\\',\n  \\\'alowuploadlimit\\\' => \\\'\\\',\n)', '0', '', '10', '1', '0');
INSERT INTO `cosmo_field` VALUES ('56', '6', 'document', '相关技术信息和下载PDF文档', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'30\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '13', '1', '0');
INSERT INTO `cosmo_field` VALUES ('120', '11', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('121', '11', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('58', '4', 'document', '相关技术信息和下载PDF文档', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'30\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '12', '1', '0');
INSERT INTO `cosmo_field` VALUES ('59', '7', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('60', '7', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('61', '7', 'name', 'Name', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('62', '7', 'com', 'Company', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `cosmo_field` VALUES ('63', '7', 'phone', 'Phone', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('64', '7', 'email', 'Email', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('67', '7', 'message', 'message', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \\\'fieldtype\\\' => \\\'mediumtext\\\',\n  \\\'rows\\\' => \\\'10\\\',\n  \\\'cols\\\' => \\\'150\\\',\n  \\\'default\\\' => \\\'\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('71', '5', 'address', 'address', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('72', '5', 'phone', 'phone', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('73', '5', 'fax', 'fax', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('74', '5', 'email', 'email', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('127', '11', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `cosmo_field` VALUES ('128', '11', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `cosmo_field` VALUES ('126', '11', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `cosmo_field` VALUES ('125', '11', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('122', '11', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cosmo_field` VALUES ('123', '11', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cosmo_field` VALUES ('124', '11', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '0', '1');
INSERT INTO `cosmo_field` VALUES ('93', '7', 'title', '主题', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('94', '8', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('95', '8', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('96', '8', 'title', '推送邮箱', '', '1', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('97', '8', 'remark', '备注', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('129', '11', 'status', '状态', '', '0', '0', '0', '0', '', '', 'radio', 'array (\n  \\\'options\\\' => \\\'发布|1\r\n暂停发布|0\\\',\n  \\\'fieldtype\\\' => \\\'tinyint\\\',\n  \\\'numbertype\\\' => \\\'1\\\',\n  \\\'labelwidth\\\' => \\\'75\\\',\n  \\\'default\\\' => \\\'1\\\',\n)', '1', '', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('117', '10', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `cosmo_field` VALUES ('116', '10', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `cosmo_field` VALUES ('114', '10', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `cosmo_field` VALUES ('115', '10', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `cosmo_field` VALUES ('113', '10', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '0', '1');
INSERT INTO `cosmo_field` VALUES ('112', '10', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `cosmo_field` VALUES ('111', '10', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `cosmo_field` VALUES ('109', '10', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('110', '10', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `cosmo_field` VALUES ('118', '10', 'status', '状态', '', '0', '0', '0', '0', '', '', 'radio', 'array (\n  \\\'options\\\' => \\\'发布|1\r\n暂停发布|0\\\',\n  \\\'fieldtype\\\' => \\\'tinyint\\\',\n  \\\'numbertype\\\' => \\\'1\\\',\n  \\\'labelwidth\\\' => \\\'75\\\',\n  \\\'default\\\' => \\\'1\\\',\n)', '1', '', '99', '1', '1');
INSERT INTO `cosmo_field` VALUES ('119', '10', 'download', 'PDF等文件上传', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'PDF等文件上传\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'10\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt,pdf\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '4', '1', '0');
INSERT INTO `cosmo_field` VALUES ('131', '7', 'files', '附件', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('132', '7', 'forward', '来源页面', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('133', '2', 'cont', '简介', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \\\'edittype\\\' => \\\'kindeditor\\\',\n  \\\'toolbar\\\' => \\\'basic\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'height\\\' => \\\'\\\',\n  \\\'show_add_description\\\' => \\\'0\\\',\n  \\\'show_auto_thumb\\\' => \\\'0\\\',\n  \\\'showpage\\\' => \\\'0\\\',\n  \\\'enablekeylink\\\' => \\\'0\\\',\n  \\\'replacenum\\\' => \\\'\\\',\n  \\\'enablesaveimage\\\' => \\\'0\\\',\n  \\\'flashupload\\\' => \\\'0\\\',\n  \\\'alowuploadexts\\\' => \\\'\\\',\n  \\\'alowuploadlimit\\\' => \\\'\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('134', '2', 'xz', 'X轴坐标', '', '1', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'5\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('135', '2', 'yz', 'Y轴坐标', '', '1', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'5\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `cosmo_field` VALUES ('136', '1', 'cont', '内容', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \\\'edittype\\\' => \\\'Xheditor\\\',\n  \\\'toolbar\\\' => \\\'full\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'height\\\' => \\\'\\\',\n  \\\'show_add_description\\\' => \\\'0\\\',\n  \\\'show_auto_thumb\\\' => \\\'0\\\',\n  \\\'showpage\\\' => \\\'0\\\',\n  \\\'enablekeylink\\\' => \\\'0\\\',\n  \\\'replacenum\\\' => \\\'\\\',\n  \\\'enablesaveimage\\\' => \\\'0\\\',\n  \\\'flashupload\\\' => \\\'1\\\',\n  \\\'alowuploadexts\\\' => \\\'\\\',\n  \\\'alowuploadlimit\\\' => \\\'\\\',\n)', '0', '', '0', '1', '0');

-- ----------------------------
-- Table structure for cosmo_history
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_history`;
CREATE TABLE `cosmo_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cont` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_history
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_jobs
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_jobs`;
CREATE TABLE `cosmo_jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_lang
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_lang`;
CREATE TABLE `cosmo_lang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `mark` varchar(30) NOT NULL DEFAULT '',
  `flag` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `path` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_lang
-- ----------------------------
INSERT INTO `cosmo_lang` VALUES ('1', '中文', 'cn', 'cn.gif', '1', '', '', '1');

-- ----------------------------
-- Table structure for cosmo_link
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_link`;
CREATE TABLE `cosmo_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(80) NOT NULL DEFAULT '',
  `siteurl` varchar(150) NOT NULL DEFAULT '',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `siteinfo` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_link
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_log
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_log`;
CREATE TABLE `cosmo_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `error` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=496 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_log
-- ----------------------------
INSERT INTO `cosmo_log` VALUES ('289', '0', '0', 'duanya', '登录成功', '127.0.0.1', '1539842386');
INSERT INTO `cosmo_log` VALUES ('288', '0', '0', 'duanya', '登录成功', '127.0.0.1', '1539746482');
INSERT INTO `cosmo_log` VALUES ('286', '0', '0', 'duanya', '登录成功', '127.0.0.1', '1539656612');
INSERT INTO `cosmo_log` VALUES ('287', '1', '0', 'duanya', '密码错误:admin123!@3', '127.0.0.1', '1539746474');
INSERT INTO `cosmo_log` VALUES ('290', '0', '0', 'duanya', '登录成功', '127.0.0.1', '1539929948');
INSERT INTO `cosmo_log` VALUES ('291', '0', '0', 'duanya', '登录成功', '127.0.0.1', '1540179827');
INSERT INTO `cosmo_log` VALUES ('292', '0', '0', 'admin', '登录成功', '127.0.0.1', '1540203777');
INSERT INTO `cosmo_log` VALUES ('293', '0', '0', 'admin', '登录成功', '192.168.1.1', '1540456989');
INSERT INTO `cosmo_log` VALUES ('294', '0', '0', 'admin', '登录成功', '192.168.1.1', '1540460630');
INSERT INTO `cosmo_log` VALUES ('295', '0', '0', 'admin', '登录成功', '192.168.1.1', '1540533850');
INSERT INTO `cosmo_log` VALUES ('296', '0', '0', 'admin', '登录成功', '61.140.27.219', '1540782268');
INSERT INTO `cosmo_log` VALUES ('297', '0', '0', 'admin', '登录成功', '61.140.27.219', '1540782346');
INSERT INTO `cosmo_log` VALUES ('298', '0', '0', 'admin', '登录成功', '61.140.27.219', '1540782391');
INSERT INTO `cosmo_log` VALUES ('299', '1', '0', 'rifeng', '密码错误:rifeng#321', '61.140.27.219', '1540782497');
INSERT INTO `cosmo_log` VALUES ('300', '1', '0', 'rifeng', '密码错误:osd@rifeng.cn#321', '61.140.27.219', '1540782504');
INSERT INTO `cosmo_log` VALUES ('301', '0', '0', 'admin', '登录成功', '113.109.79.212', '1540782515');
INSERT INTO `cosmo_log` VALUES ('302', '0', '0', 'rifeng', '登录成功', '61.140.27.219', '1540782649');
INSERT INTO `cosmo_log` VALUES ('303', '0', '0', 'rifeng', '登录成功', '61.140.27.219', '1540785584');
INSERT INTO `cosmo_log` VALUES ('304', '0', '0', 'rifeng', '登录成功', '61.140.27.219', '1540785584');
INSERT INTO `cosmo_log` VALUES ('305', '0', '0', 'admin', '登录成功', '61.140.25.140', '1541142527');
INSERT INTO `cosmo_log` VALUES ('306', '1', '0', 'rifeng', '密码错误:guangdaun#321', '61.140.25.140', '1541148167');
INSERT INTO `cosmo_log` VALUES ('307', '0', '0', 'rifeng', '登录成功', '113.109.79.114', '1541148173');
INSERT INTO `cosmo_log` VALUES ('308', '1', '0', 'admin', '密码错误:admin', '113.109.77.80', '1541486749');
INSERT INTO `cosmo_log` VALUES ('309', '0', '0', 'admin', '登录成功', '113.109.76.37', '1541661616');
INSERT INTO `cosmo_log` VALUES ('310', '1', '0', 'rifeng', '密码错误:guangdaun#123', '61.140.24.141', '1542165045');
INSERT INTO `cosmo_log` VALUES ('311', '1', '0', 'rifeng', '密码错误:guangdaun#321', '61.140.24.141', '1542165048');
INSERT INTO `cosmo_log` VALUES ('312', '0', '0', 'rifeng', '登录成功', '113.109.77.113', '1542165169');
INSERT INTO `cosmo_log` VALUES ('313', '1', '0', 'admin', '密码错误:admin', '113.119.111.101', '1542682252');
INSERT INTO `cosmo_log` VALUES ('314', '1', '0', 'admin', '密码错误:admin', '113.119.111.101', '1542682275');
INSERT INTO `cosmo_log` VALUES ('315', '0', '0', 'rifeng', '登录成功', '61.140.27.103', '1542682299');
INSERT INTO `cosmo_log` VALUES ('316', '0', '0', 'admin', '登录成功', '61.140.26.193', '1543471584');
INSERT INTO `cosmo_log` VALUES ('317', '1', '0', 'admin', '密码错误:cosmop321!', '125.95.12.58', '1544495602');
INSERT INTO `cosmo_log` VALUES ('318', '0', '0', 'admin', '登录成功', '125.95.12.58', '1544495615');
INSERT INTO `cosmo_log` VALUES ('319', '0', '0', 'admin', '登录成功', '27.45.146.101', '1544601280');
INSERT INTO `cosmo_log` VALUES ('320', '0', '0', 'admin', '登录成功', '157.61.159.48', '1545037110');
INSERT INTO `cosmo_log` VALUES ('321', '0', '0', 'admin', '登录成功', '120.83.154.194', '1545383370');
INSERT INTO `cosmo_log` VALUES ('322', '0', '0', 'admin', '登录成功', '120.83.155.3', '1545969723');
INSERT INTO `cosmo_log` VALUES ('323', '0', '0', 'admin', '登录成功', '120.83.155.14', '1546050031');
INSERT INTO `cosmo_log` VALUES ('324', '0', '0', 'admin', '登录成功', '120.83.155.14', '1546054556');
INSERT INTO `cosmo_log` VALUES ('325', '0', '0', 'admin', '登录成功', '221.4.174.100', '1546498499');
INSERT INTO `cosmo_log` VALUES ('326', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1546569076');
INSERT INTO `cosmo_log` VALUES ('327', '0', '0', 'rifeng', '登录成功', '66.42.100.254', '1546617417');
INSERT INTO `cosmo_log` VALUES ('328', '0', '0', 'rifeng', '登录成功', '66.42.100.254', '1546653765');
INSERT INTO `cosmo_log` VALUES ('329', '0', '0', 'rifeng', '登录成功', '66.42.100.254', '1546668347');
INSERT INTO `cosmo_log` VALUES ('330', '0', '0', 'rifeng', '登录成功', '125.95.12.58', '1546668627');
INSERT INTO `cosmo_log` VALUES ('331', '0', '0', 'rifeng', '登录成功', '125.95.12.58', '1546675838');
INSERT INTO `cosmo_log` VALUES ('332', '0', '0', 'rifeng', '登录成功', '66.42.100.254', '1546737392');
INSERT INTO `cosmo_log` VALUES ('333', '0', '0', 'rifeng', '登录成功', '66.42.100.254', '1546753459');
INSERT INTO `cosmo_log` VALUES ('334', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1546822535');
INSERT INTO `cosmo_log` VALUES ('335', '0', '0', 'rifeng', '登录成功', '125.95.12.58', '1546824360');
INSERT INTO `cosmo_log` VALUES ('336', '0', '0', 'admin', '登录成功', '221.4.174.154', '1546831114');
INSERT INTO `cosmo_log` VALUES ('337', '0', '0', 'rifeng', '登录成功', '125.95.12.58', '1546842151');
INSERT INTO `cosmo_log` VALUES ('338', '0', '0', 'rifeng', '登录成功', '125.95.12.58', '1546843991');
INSERT INTO `cosmo_log` VALUES ('339', '0', '0', 'admin', '登录成功', '221.4.174.154', '1546844425');
INSERT INTO `cosmo_log` VALUES ('340', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1546845920');
INSERT INTO `cosmo_log` VALUES ('341', '0', '0', 'rifeng', '登录成功', '66.42.100.254', '1546874308');
INSERT INTO `cosmo_log` VALUES ('342', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1546909041');
INSERT INTO `cosmo_log` VALUES ('343', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1546915996');
INSERT INTO `cosmo_log` VALUES ('344', '0', '0', 'rifeng', '登录成功', '149.28.243.186', '1546924937');
INSERT INTO `cosmo_log` VALUES ('345', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1546929237');
INSERT INTO `cosmo_log` VALUES ('346', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1546939155');
INSERT INTO `cosmo_log` VALUES ('347', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1546995071');
INSERT INTO `cosmo_log` VALUES ('348', '0', '0', 'admin', '登录成功', '221.4.174.45', '1547027610');
INSERT INTO `cosmo_log` VALUES ('349', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1547081796');
INSERT INTO `cosmo_log` VALUES ('350', '0', '0', 'rifeng', '登录成功', '125.95.12.58', '1547107721');
INSERT INTO `cosmo_log` VALUES ('351', '0', '0', 'rifeng', '登录成功', '66.42.100.254', '1547168927');
INSERT INTO `cosmo_log` VALUES ('352', '0', '0', 'rifeng', '登录成功', '125.95.12.58', '1547170039');
INSERT INTO `cosmo_log` VALUES ('353', '0', '0', 'rifeng', '登录成功', '157.61.158.134', '1547213260');
INSERT INTO `cosmo_log` VALUES ('354', '0', '0', 'rifeng', '登录成功', '157.61.158.134', '1547283679');
INSERT INTO `cosmo_log` VALUES ('355', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1547344603');
INSERT INTO `cosmo_log` VALUES ('356', '0', '0', 'rifeng', '登录成功', '66.42.100.254', '1547392388');
INSERT INTO `cosmo_log` VALUES ('357', '0', '0', 'rifeng', '登录成功', '125.95.12.58', '1547431942');
INSERT INTO `cosmo_log` VALUES ('358', '0', '0', 'rifeng', '登录成功', '149.28.243.186', '1547443781');
INSERT INTO `cosmo_log` VALUES ('359', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1547455319');
INSERT INTO `cosmo_log` VALUES ('360', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1547514535');
INSERT INTO `cosmo_log` VALUES ('361', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1547603891');
INSERT INTO `cosmo_log` VALUES ('362', '0', '0', 'rifeng', '登录成功', '157.61.158.77', '1547639457');
INSERT INTO `cosmo_log` VALUES ('363', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1547686772');
INSERT INTO `cosmo_log` VALUES ('364', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1547711264');
INSERT INTO `cosmo_log` VALUES ('365', '0', '0', 'rifeng', '登录成功', '157.61.158.116', '1547729900');
INSERT INTO `cosmo_log` VALUES ('366', '0', '0', 'rifeng', '登录成功', '157.61.158.116', '1547774332');
INSERT INTO `cosmo_log` VALUES ('367', '0', '0', 'rifeng', '登录成功', '157.61.158.116', '1547812858');
INSERT INTO `cosmo_log` VALUES ('368', '0', '0', 'rifeng', '登录成功', '157.61.158.51', '1547859871');
INSERT INTO `cosmo_log` VALUES ('369', '0', '0', 'rifeng', '登录成功', '157.61.158.51', '1547906581');
INSERT INTO `cosmo_log` VALUES ('370', '0', '0', 'rifeng', '登录成功', '157.61.158.51', '1547955994');
INSERT INTO `cosmo_log` VALUES ('371', '0', '0', 'rifeng', '登录成功', '157.61.158.40', '1548029424');
INSERT INTO `cosmo_log` VALUES ('372', '0', '0', 'rifeng', '登录成功', '157.61.158.40', '1548084409');
INSERT INTO `cosmo_log` VALUES ('373', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1548135773');
INSERT INTO `cosmo_log` VALUES ('374', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1548152024');
INSERT INTO `cosmo_log` VALUES ('375', '0', '0', 'rifeng', '登录成功', '157.61.158.61', '1548168186');
INSERT INTO `cosmo_log` VALUES ('376', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1548214057');
INSERT INTO `cosmo_log` VALUES ('377', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1548228015');
INSERT INTO `cosmo_log` VALUES ('378', '0', '0', 'rifeng', '登录成功', '157.61.158.33', '1548256021');
INSERT INTO `cosmo_log` VALUES ('379', '0', '0', 'rifeng', '登录成功', '157.61.158.33', '1548288980');
INSERT INTO `cosmo_log` VALUES ('380', '0', '0', 'rifeng', '登录成功', '157.61.158.33', '1548342765');
INSERT INTO `cosmo_log` VALUES ('381', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1548380553');
INSERT INTO `cosmo_log` VALUES ('382', '0', '0', 'rifeng', '登录成功', '157.61.158.40', '1548427317');
INSERT INTO `cosmo_log` VALUES ('383', '0', '0', 'rifeng', '登录成功', '157.61.158.40', '1548467544');
INSERT INTO `cosmo_log` VALUES ('384', '0', '0', 'rifeng', '登录成功', '157.61.158.40', '1548492082');
INSERT INTO `cosmo_log` VALUES ('385', '0', '0', 'rifeng', '登录成功', '157.61.158.42', '1548504963');
INSERT INTO `cosmo_log` VALUES ('386', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1548555397');
INSERT INTO `cosmo_log` VALUES ('387', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1548582635');
INSERT INTO `cosmo_log` VALUES ('388', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1548686208');
INSERT INTO `cosmo_log` VALUES ('389', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1548754199');
INSERT INTO `cosmo_log` VALUES ('390', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1548770037');
INSERT INTO `cosmo_log` VALUES ('391', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1548819557');
INSERT INTO `cosmo_log` VALUES ('392', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1548950376');
INSERT INTO `cosmo_log` VALUES ('393', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1549109673');
INSERT INTO `cosmo_log` VALUES ('394', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1549209862');
INSERT INTO `cosmo_log` VALUES ('395', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1549294135');
INSERT INTO `cosmo_log` VALUES ('396', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1549897350');
INSERT INTO `cosmo_log` VALUES ('397', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1549952977');
INSERT INTO `cosmo_log` VALUES ('398', '0', '0', 'rifeng', '登录成功', '157.61.158.74', '1550067131');
INSERT INTO `cosmo_log` VALUES ('399', '0', '0', 'rifeng', '登录成功', '149.28.31.22', '1550294694');
INSERT INTO `cosmo_log` VALUES ('400', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1550455162');
INSERT INTO `cosmo_log` VALUES ('401', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1551246514');
INSERT INTO `cosmo_log` VALUES ('402', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1551320643');
INSERT INTO `cosmo_log` VALUES ('403', '0', '0', 'rifeng', '登录成功', '52.141.38.119', '1551420068');
INSERT INTO `cosmo_log` VALUES ('404', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1551860582');
INSERT INTO `cosmo_log` VALUES ('405', '0', '0', 'rifeng', '登录成功', '157.61.158.35', '1552097046');
INSERT INTO `cosmo_log` VALUES ('406', '0', '0', 'rifeng', '登录成功', '157.61.158.170', '1552223606');
INSERT INTO `cosmo_log` VALUES ('407', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1552283212');
INSERT INTO `cosmo_log` VALUES ('408', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1552283422');
INSERT INTO `cosmo_log` VALUES ('409', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1552542171');
INSERT INTO `cosmo_log` VALUES ('410', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1552552311');
INSERT INTO `cosmo_log` VALUES ('411', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1552881018');
INSERT INTO `cosmo_log` VALUES ('412', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1553163865');
INSERT INTO `cosmo_log` VALUES ('413', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1553477959');
INSERT INTO `cosmo_log` VALUES ('414', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1553763269');
INSERT INTO `cosmo_log` VALUES ('415', '0', '0', 'rifeng', '登录成功', '66.42.100.254', '1554043188');
INSERT INTO `cosmo_log` VALUES ('416', '0', '0', 'rifeng', '登录成功', '40.83.76.20', '1554085434');
INSERT INTO `cosmo_log` VALUES ('417', '0', '0', 'rifeng', '登录成功', '149.248.56.171', '1554194148');
INSERT INTO `cosmo_log` VALUES ('418', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1554260869');
INSERT INTO `cosmo_log` VALUES ('419', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1554287546');
INSERT INTO `cosmo_log` VALUES ('420', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1554339153');
INSERT INTO `cosmo_log` VALUES ('421', '0', '0', 'rifeng', '登录成功', '125.95.12.59', '1554342986');
INSERT INTO `cosmo_log` VALUES ('422', '0', '0', 'rifeng', '登录成功', '155.138.212.88', '1554429785');
INSERT INTO `cosmo_log` VALUES ('423', '0', '0', 'rifeng', '登录成功', '155.138.212.88', '1554474462');
INSERT INTO `cosmo_log` VALUES ('424', '0', '0', 'rifeng', '登录成功', '155.138.212.88', '1554560344');
INSERT INTO `cosmo_log` VALUES ('425', '0', '0', 'rifeng', '登录成功', '155.138.212.88', '1554611436');
INSERT INTO `cosmo_log` VALUES ('426', '0', '0', 'rifeng', '登录成功', '40.83.76.20', '1554685974');
INSERT INTO `cosmo_log` VALUES ('427', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1554693129');
INSERT INTO `cosmo_log` VALUES ('428', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1554865376');
INSERT INTO `cosmo_log` VALUES ('429', '0', '0', 'admin', '登录成功', '221.4.174.192', '1554947468');
INSERT INTO `cosmo_log` VALUES ('430', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1554947932');
INSERT INTO `cosmo_log` VALUES ('431', '0', '0', 'rifeng', '登录成功', '149.248.56.171', '1555062668');
INSERT INTO `cosmo_log` VALUES ('432', '0', '0', 'rifeng', '登录成功', '155.138.212.88', '1555239198');
INSERT INTO `cosmo_log` VALUES ('433', '0', '0', 'rifeng', '登录成功', '66.42.100.254', '1555256233');
INSERT INTO `cosmo_log` VALUES ('434', '0', '0', 'rifeng', '登录成功', '52.141.38.119', '1555291198');
INSERT INTO `cosmo_log` VALUES ('435', '0', '0', 'rifeng', '登录成功', '52.141.38.119', '1555294463');
INSERT INTO `cosmo_log` VALUES ('436', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1555315583');
INSERT INTO `cosmo_log` VALUES ('437', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1555315591');
INSERT INTO `cosmo_log` VALUES ('438', '0', '0', 'admin', '登录成功', '27.102.115.183', '1555319094');
INSERT INTO `cosmo_log` VALUES ('439', '1', '0', 'admin', '密码错误:admin', '27.102.115.183', '1555383675');
INSERT INTO `cosmo_log` VALUES ('440', '0', '0', 'admin', '登录成功', '27.102.115.183', '1555383702');
INSERT INTO `cosmo_log` VALUES ('441', '0', '0', 'rifeng', '登录成功', '149.248.56.171', '1555394772');
INSERT INTO `cosmo_log` VALUES ('442', '0', '0', 'admin', '登录成功', '27.102.115.183', '1555399164');
INSERT INTO `cosmo_log` VALUES ('443', '0', '0', 'admin', '登录成功', '27.102.115.183', '1555399632');
INSERT INTO `cosmo_log` VALUES ('444', '0', '0', 'rifeng', '登录成功', '155.138.212.88', '1555852412');
INSERT INTO `cosmo_log` VALUES ('445', '0', '0', 'rifeng', '登录成功', '52.231.201.132', '1555911636');
INSERT INTO `cosmo_log` VALUES ('446', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1556159473');
INSERT INTO `cosmo_log` VALUES ('447', '0', '0', 'rifeng', '登录成功', '149.248.56.171', '1556175326');
INSERT INTO `cosmo_log` VALUES ('448', '0', '0', 'rifeng', '登录成功', '52.141.35.221', '1556509010');
INSERT INTO `cosmo_log` VALUES ('449', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1556592465');
INSERT INTO `cosmo_log` VALUES ('450', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1556605506');
INSERT INTO `cosmo_log` VALUES ('451', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1557132925');
INSERT INTO `cosmo_log` VALUES ('452', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1557135031');
INSERT INTO `cosmo_log` VALUES ('453', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1557392571');
INSERT INTO `cosmo_log` VALUES ('454', '0', '0', 'rifeng', '登录成功', '40.83.76.20', '1557713363');
INSERT INTO `cosmo_log` VALUES ('455', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1557978547');
INSERT INTO `cosmo_log` VALUES ('456', '0', '0', 'rifeng', '登录成功', '47.244.22.99', '1558333599');
INSERT INTO `cosmo_log` VALUES ('457', '0', '0', 'rifeng', '登录成功', '40.83.76.20', '1558339185');
INSERT INTO `cosmo_log` VALUES ('458', '0', '0', 'rifeng', '登录成功', '185.224.248.218', '1558943290');
INSERT INTO `cosmo_log` VALUES ('459', '0', '0', 'rifeng', '登录成功', '52.231.30.157', '1559282405');
INSERT INTO `cosmo_log` VALUES ('460', '0', '0', 'admin', '登录成功', '221.4.174.99', '1559283010');
INSERT INTO `cosmo_log` VALUES ('461', '0', '0', 'rifeng', '登录成功', '221.4.174.99', '1559283247');
INSERT INTO `cosmo_log` VALUES ('462', '0', '0', 'rifeng', '登录成功', '221.4.174.99', '1559283401');
INSERT INTO `cosmo_log` VALUES ('463', '0', '0', 'rifeng', '登录成功', '40.83.76.20', '1559291730');
INSERT INTO `cosmo_log` VALUES ('464', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1559529858');
INSERT INTO `cosmo_log` VALUES ('465', '0', '0', 'rifeng', '登录成功', '125.95.12.58', '1559627748');
INSERT INTO `cosmo_log` VALUES ('466', '0', '0', 'rifeng', '登录成功', '172.104.162.187', '1560136974');
INSERT INTO `cosmo_log` VALUES ('467', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1560734025');
INSERT INTO `cosmo_log` VALUES ('468', '0', '0', 'rifeng', '登录成功', '172.104.162.187', '1561361610');
INSERT INTO `cosmo_log` VALUES ('469', '1', '0', 'aotong26', '密码错误:rifeng#321', '213.183.41.176', '1561448220');
INSERT INTO `cosmo_log` VALUES ('470', '1', '0', 'aotong26', '密码错误:rifeng#321', '213.183.41.176', '1561448225');
INSERT INTO `cosmo_log` VALUES ('471', '1', '0', 'aotong26', '密码错误:rifeng#321', '213.183.41.176', '1561448229');
INSERT INTO `cosmo_log` VALUES ('472', '0', '0', 'rifeng', '登录成功', '213.183.41.176', '1561448234');
INSERT INTO `cosmo_log` VALUES ('473', '0', '0', 'rifeng', '登录成功', '27.45.146.101', '1561964411');
INSERT INTO `cosmo_log` VALUES ('474', '0', '0', 'admin', '登录成功', '221.4.174.190', '1562205921');
INSERT INTO `cosmo_log` VALUES ('475', '0', '0', 'admin', '登录成功', '127.0.0.1', '1567409137');
INSERT INTO `cosmo_log` VALUES ('476', '0', '0', 'admin', '登录成功', '127.0.0.1', '1571794054');
INSERT INTO `cosmo_log` VALUES ('477', '0', '0', 'admin', '登录成功', '127.0.0.1', '1571795257');
INSERT INTO `cosmo_log` VALUES ('478', '0', '0', 'admin', '登录成功', '127.0.0.1', '1573025352');
INSERT INTO `cosmo_log` VALUES ('479', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1574308463');
INSERT INTO `cosmo_log` VALUES ('480', '0', '0', 'admin', '登录成功', '127.0.0.1', '1574308471');
INSERT INTO `cosmo_log` VALUES ('481', '0', '0', 'admin', '登录成功', '127.0.0.1', '1576808960');
INSERT INTO `cosmo_log` VALUES ('482', '1', '0', 'admin', '密码错误:cosmon0321!', '127.0.0.1', '1577409612');
INSERT INTO `cosmo_log` VALUES ('483', '0', '0', 'admin', '登录成功', '127.0.0.1', '1577409622');
INSERT INTO `cosmo_log` VALUES ('484', '0', '0', 'admin', '登录成功', '127.0.0.1', '1577417910');
INSERT INTO `cosmo_log` VALUES ('485', '0', '0', 'admin', '登录成功', '127.0.0.1', '1577756084');
INSERT INTO `cosmo_log` VALUES ('486', '0', '0', 'admin', '登录成功', '127.0.0.1', '1577774682');
INSERT INTO `cosmo_log` VALUES ('487', '0', '0', 'admin', '登录成功', '127.0.0.1', '1577947996');
INSERT INTO `cosmo_log` VALUES ('488', '0', '0', 'admin', '登录成功', '127.0.0.1', '1578042472');
INSERT INTO `cosmo_log` VALUES ('489', '0', '0', 'admin', '登录成功', '127.0.0.1', '1581558660');
INSERT INTO `cosmo_log` VALUES ('490', '1', '0', 'admin', '密码错误:cosmo03211', '127.0.0.1', '1583402461');
INSERT INTO `cosmo_log` VALUES ('491', '0', '0', 'admin', '登录成功', '127.0.0.1', '1583402472');
INSERT INTO `cosmo_log` VALUES ('492', '0', '0', 'admin', '登录成功', '127.0.0.1', '1583476030');
INSERT INTO `cosmo_log` VALUES ('493', '0', '0', 'admin', '登录成功', '127.0.0.1', '1584585000');
INSERT INTO `cosmo_log` VALUES ('494', '0', '0', 'admin', '登录成功', '127.0.0.1', '1584671355');
INSERT INTO `cosmo_log` VALUES ('495', '0', '0', 'rifeng', '登录成功', '127.0.0.1', '1584673410');

-- ----------------------------
-- Table structure for cosmo_mailbox
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_mailbox`;
CREATE TABLE `cosmo_mailbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_mailbox
-- ----------------------------
INSERT INTO `cosmo_mailbox` VALUES ('9', '1', '2', 'admin', '/_9.html', '0', '1546831139', '1584672125', '0', 'stephen-zheng@rifeng.com', '');

-- ----------------------------
-- Table structure for cosmo_menu
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_menu`;
CREATE TABLE `cosmo_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` char(20) NOT NULL DEFAULT '',
  `action` char(20) NOT NULL DEFAULT '',
  `data` char(50) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_menu
-- ----------------------------
INSERT INTO `cosmo_menu` VALUES ('1', '0', 'Index', 'main', 'menuid=42', '1', '1', '0', '快捷入口', '', '0');
INSERT INTO `cosmo_menu` VALUES ('2', '0', 'Config', '', 'menuid=50', '1', '1', '0', '系统设置', '系统设置', '2');
INSERT INTO `cosmo_menu` VALUES ('3', '0', 'Category', '', 'menuid=17', '1', '1', '0', '内容管理', '模型管理', '1');
INSERT INTO `cosmo_menu` VALUES ('5', '0', 'User', '', 'menuid=9', '1', '1', '0', '会员管理', '', '90');
INSERT INTO `cosmo_menu` VALUES ('7', '0', 'Template', 'index', 'menuid=60', '1', '1', '0', '界面管理', '', '99');
INSERT INTO `cosmo_menu` VALUES ('8', '50', 'Config', 'sys', '', '1', '1', '0', '系统参数', '', '0');
INSERT INTO `cosmo_menu` VALUES ('9', '5', 'User', '', '', '1', '1', '0', '会员资料管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('10', '9', 'User', 'add', '', '1', '1', '0', '添加会员', '', '0');
INSERT INTO `cosmo_menu` VALUES ('11', '5', 'Role', '', '', '1', '1', '0', '会员组管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('12', '11', 'Role', 'add', '', '1', '1', '0', '添加会员组', '', '0');
INSERT INTO `cosmo_menu` VALUES ('13', '5', 'Node', '', '', '1', '1', '0', '权限节点管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('14', '13', 'Node', 'add', '', '1', '1', '0', '添加权限节点', '', '0');
INSERT INTO `cosmo_menu` VALUES ('15', '39', 'Menu', 'add', '', '1', '1', '0', '添加菜单', '', '0');
INSERT INTO `cosmo_menu` VALUES ('16', '3', 'Module', '', '', '1', '1', '0', '模型管理', '', '99');
INSERT INTO `cosmo_menu` VALUES ('17', '3', 'Category', '', '', '1', '1', '0', '页面管理', '页面管理', '1');
INSERT INTO `cosmo_menu` VALUES ('18', '16', 'Module', 'add', '', '1', '1', '0', '添加模型', '', '0');
INSERT INTO `cosmo_menu` VALUES ('19', '17', 'Category', 'add', '', '1', '1', '0', '添加栏目', '', '0');
INSERT INTO `cosmo_menu` VALUES ('20', '3', 'Article', '', '', '1', '1', '0', '区域管理', '', '2');
INSERT INTO `cosmo_menu` VALUES ('21', '20', 'Article', 'add', '', '1', '1', '0', '添加区域', '', '0');
INSERT INTO `cosmo_menu` VALUES ('23', '2', 'Posid', '', '', '1', '1', '0', '推荐位管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('24', '23', 'Posid', 'add', '', '1', '1', '0', '添加推荐位', '', '0');
INSERT INTO `cosmo_menu` VALUES ('28', '2', 'Type', '', '', '1', '1', '0', '类别管理', '', '6');
INSERT INTO `cosmo_menu` VALUES ('29', '50', 'Config', 'mail', '', '1', '1', '0', '系统邮箱', '', '0');
INSERT INTO `cosmo_menu` VALUES ('30', '50', 'Config', 'attach', '', '1', '1', '0', '附件配置', '', '0');
INSERT INTO `cosmo_menu` VALUES ('31', '17', 'Category', 'repair_cache', '', '1', '0', '0', '恢复栏目数据', '', '0');
INSERT INTO `cosmo_menu` VALUES ('39', '2', 'Menu', '', '', '1', '1', '0', '后台管理菜单', '后台管理菜单', '11');
INSERT INTO `cosmo_menu` VALUES ('40', '2', 'Index', 'password', '', '1', '1', '0', '修改密码', '', '2');
INSERT INTO `cosmo_menu` VALUES ('41', '2', 'Index', 'profile', '', '1', '1', '0', '个人资料', '', '3');
INSERT INTO `cosmo_menu` VALUES ('42', '1', 'Index', 'main', '', '1', '1', '0', '后台首页', '', '1');
INSERT INTO `cosmo_menu` VALUES ('43', '17', 'Category', 'add', '&type=1', '1', '1', '0', '添加外部链接', '', '0');
INSERT INTO `cosmo_menu` VALUES ('44', '2', 'Database', '', '', '1', '0', '0', '数据库管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('45', '44', 'Database', 'query', '', '1', '1', '0', '执行SQL语句', '', '0');
INSERT INTO `cosmo_menu` VALUES ('46', '44', 'Database', 'recover', '', '1', '1', '0', '恢复数据库', '', '0');
INSERT INTO `cosmo_menu` VALUES ('47', '1', 'Index', 'cache', 'menuid=47', '1', '0', '0', '更新缓存', '', '5');
INSERT INTO `cosmo_menu` VALUES ('48', '51', 'Module', 'add', 'type=2', '1', '1', '0', '创建模块', '', '0');
INSERT INTO `cosmo_menu` VALUES ('50', '2', 'Config', '', '', '1', '1', '0', '站点配置', '', '0');
INSERT INTO `cosmo_menu` VALUES ('52', '28', 'Type', 'add', '', '1', '1', '0', '添加类别', '', '0');
INSERT INTO `cosmo_menu` VALUES ('53', '1', 'Link', 'index', '', '1', '1', '0', '友情链接', '', '10');
INSERT INTO `cosmo_menu` VALUES ('54', '53', 'Link', 'add', '', '1', '1', '0', '添加链接', '', '0');
INSERT INTO `cosmo_menu` VALUES ('59', '50', 'Config', 'add', '', '1', '1', '0', '添加系统变量', '', '99');
INSERT INTO `cosmo_menu` VALUES ('60', '7', 'Template', 'index', '', '1', '1', '0', '界面管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('62', '60', 'Template', 'index', 'type=css', '1', '1', '0', 'CSS管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('63', '60', 'Template', 'index', 'type=js', '1', '1', '0', 'JS管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('67', '2', 'Urlrule', 'index', '', '1', '0', '0', 'URL规则', '', '0');
INSERT INTO `cosmo_menu` VALUES ('68', '67', 'Urlrule', 'add', '', '1', '1', '0', '添加规则', '', '0');
INSERT INTO `cosmo_menu` VALUES ('69', '2', 'Dbsource', 'index', '', '1', '0', '0', 'DB数据源', '', '0');
INSERT INTO `cosmo_menu` VALUES ('70', '69', 'Dbsource', 'add', '', '1', '1', '0', '添加数据源', '', '0');
INSERT INTO `cosmo_menu` VALUES ('71', '2', 'Lang', 'index', '', '1', '0', '0', '多语言管理', '语言管理', '0');
INSERT INTO `cosmo_menu` VALUES ('72', '71', 'Lang', 'add', '', '1', '0', '0', '添加语言', '', '0');
INSERT INTO `cosmo_menu` VALUES ('73', '71', 'Lang', 'param', '', '1', '0', '0', '设置语言包', '', '0');
INSERT INTO `cosmo_menu` VALUES ('74', '1', 'Block', 'index', '', '1', '1', '0', '碎片管理', '', '3');
INSERT INTO `cosmo_menu` VALUES ('75', '74', 'Block', 'add', '', '1', '1', '0', '添加碎片', '', '0');
INSERT INTO `cosmo_menu` VALUES ('77', '1', 'Slide', 'index', '', '1', '1', '0', '幻灯片管理', '', '4');
INSERT INTO `cosmo_menu` VALUES ('78', '77', 'Slide', 'add', '', '1', '1', '0', '添加幻灯片', '', '0');
INSERT INTO `cosmo_menu` VALUES ('83', '1', 'Log', 'index', '', '1', '1', '0', '后台登陆日志', '', '83');
INSERT INTO `cosmo_menu` VALUES ('84', '1', 'Config', '', '', '1', '1', '0', '站点配置', '', '2');
INSERT INTO `cosmo_menu` VALUES ('85', '3', 'Case', 'index', '', '1', '1', '0', '案例管理', '', '9');
INSERT INTO `cosmo_menu` VALUES ('86', '85', 'Case', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('87', '3', 'Jobs', 'index', '', '1', '1', '0', '招聘管理', '', '9');
INSERT INTO `cosmo_menu` VALUES ('88', '87', 'Jobs', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('89', '3', 'Product', 'index', '', '1', '1', '0', '产品管理', '', '9');
INSERT INTO `cosmo_menu` VALUES ('90', '89', 'Product', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('91', '3', 'Message', 'index', '', '1', '1', '0', '留言管理', '', '9');
INSERT INTO `cosmo_menu` VALUES ('92', '91', 'Message', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('93', '3', 'Mailbox', 'index', '', '1', '1', '0', '邮箱管理', '', '9');
INSERT INTO `cosmo_menu` VALUES ('94', '93', 'Mailbox', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('98', '97', 'Download', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('97', '3', 'Download', 'index', '', '1', '1', '0', '下载管理', '', '9');
INSERT INTO `cosmo_menu` VALUES ('99', '3', 'History', 'index', '', '1', '1', '0', 'History', '', '9');
INSERT INTO `cosmo_menu` VALUES ('100', '99', 'History', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `cosmo_menu` VALUES ('101', '3', 'Slide', 'index', '', '1', '1', '0', '幻灯片管理', '', '0');
INSERT INTO `cosmo_menu` VALUES ('102', '101', 'Slide', 'add', '', '1', '1', '0', '添加幻灯片', '', '0');

-- ----------------------------
-- Table structure for cosmo_message
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_message`;
CREATE TABLE `cosmo_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `com` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `dep` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `files` varchar(80) NOT NULL DEFAULT '',
  `forward` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=525 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_message
-- ----------------------------
INSERT INTO `cosmo_message` VALUES ('523', '0', '0', '', '', '0', '1576821325', '1576821325', '1', 'test', '', '13922341786', 'gzzwp@china-est.com', '', '', 'tessfsfsf', '[XXXX]tessfsfsf', '', '');
INSERT INTO `cosmo_message` VALUES ('524', '0', '0', '', '', '0', '1576822084', '1576822084', '1', 'test', '', '13922341786', 'gzzwp@china-est.com', '', '', 'sfsfsfsf', '[]sfsfsfsf', '', '');

-- ----------------------------
-- Table structure for cosmo_module
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_module`;
CREATE TABLE `cosmo_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  `ispost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_module
-- ----------------------------
INSERT INTO `cosmo_module` VALUES ('1', '单页模型', 'Page', '单页模型', '1', '1', '0', '*', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('2', '区域管理', 'Article', '区域管理', '1', '1', '1', 'id,catid,url,title,username,hits,keywords,description,thumb,createtime,status,listorder', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('3', '友情链接', 'Link', '友情链接', '2', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('4', '案例管理', 'Case', '案例', '1', '0', '0', '*', '', '0', '0', '', '0');
INSERT INTO `cosmo_module` VALUES ('5', '招聘管理', 'Jobs', '招聘', '1', '0', '0', '*', '', '0', '0', '', '0');
INSERT INTO `cosmo_module` VALUES ('6', '产品管理', 'Product', '产品', '1', '0', '0', '*', '', '0', '0', '', '0');
INSERT INTO `cosmo_module` VALUES ('7', '留言管理', 'Message', '留言', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `cosmo_module` VALUES ('8', '邮箱管理', 'Mailbox', '邮箱管理', '1', '0', '0', '*', '', '0', '1', '', '1');
INSERT INTO `cosmo_module` VALUES ('10', '下载管理', 'Download', '下载管理', '1', '0', '0', '*', '', '0', '0', '', '0');
INSERT INTO `cosmo_module` VALUES ('11', 'History', 'History', 'History', '1', '0', '0', '*', '', '0', '0', '', '0');

-- ----------------------------
-- Table structure for cosmo_node
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_node`;
CREATE TABLE `cosmo_node` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_node
-- ----------------------------
INSERT INTO `cosmo_node` VALUES ('1', 'Admin', '后台管理', '1', '后台项目', '0', '0', '1', '0');
INSERT INTO `cosmo_node` VALUES ('2', 'Index', '后台默认', '1', '', '0', '1', '2', '1');
INSERT INTO `cosmo_node` VALUES ('3', 'Config', '站点配置', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('4', 'index', '站点配置', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('5', 'sys', '系统参数', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('7', 'add', '添加变量', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('8', 'Menu', '菜单管理', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('11', 'index', '默认动作', '1', '', '0', '2', '3', '1');
INSERT INTO `cosmo_node` VALUES ('12', 'Public', '全局操作', '1', '', '0', '1', '2', '0');
INSERT INTO `cosmo_node` VALUES ('13', 'index', '默认', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('14', 'add', '添加', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('15', 'edit', '编辑', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('16', 'insert', '插入', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('17', 'attach', '附件设置', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('18', 'mail', '系统邮箱', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('19', 'Posid', '推荐位', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('21', 'update', '更新', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('22', 'status', '状态', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('23', 'deleteall', '批量删除', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('24', 'delete', '删除', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('25', 'listorder', '排序', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('26', 'password', '修改密码', '1', '', '0', '2', '3', '1');
INSERT INTO `cosmo_node` VALUES ('27', 'profile', '个人资料', '1', '', '0', '2', '3', '1');
INSERT INTO `cosmo_node` VALUES ('28', 'cache', '更新缓存', '1', '', '0', '2', '3', '1');
INSERT INTO `cosmo_node` VALUES ('30', 'main', '系统信息', '1', '', '0', '2', '3', '1');
INSERT INTO `cosmo_node` VALUES ('40', 'Urlrule', 'URL规则', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('48', 'Dbsource', 'DB数据源', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('55', 'Type', '类别管理', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('65', 'Lang', '多语言管理', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('75', 'Database', '数据库管理', '1', '', '0', '1', '2', '2');
INSERT INTO `cosmo_node` VALUES ('76', 'docommand', '优化操作', '1', '', '0', '75', '3', '2');
INSERT INTO `cosmo_node` VALUES ('77', 'backup', '备份', '1', '', '0', '75', '3', '2');
INSERT INTO `cosmo_node` VALUES ('78', 'recover', '恢复', '1', '', '0', '75', '3', '2');
INSERT INTO `cosmo_node` VALUES ('79', 'query', 'sql查询', '1', '', '0', '75', '3', '2');
INSERT INTO `cosmo_node` VALUES ('80', 'doquery', '运行sql', '1', '', '0', '75', '3', '2');
INSERT INTO `cosmo_node` VALUES ('81', 'Category', '栏目管理', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('88', 'repair_cache', '修复栏目数据', '1', '', '0', '81', '3', '3');
INSERT INTO `cosmo_node` VALUES ('90', 'Module', '模型管理', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('98', 'Field', '模型字段', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('107', 'Page', '单页模型', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('110', 'Article', '文章模型', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('116', 'Link', '友情链接', '1', '', '0', '1', '2', '4');
INSERT INTO `cosmo_node` VALUES ('121', 'User', '会员管理', '1', '', '0', '1', '2', '5');
INSERT INTO `cosmo_node` VALUES ('122', 'Role', '会员组管理', '1', '', '0', '1', '2', '5');
INSERT INTO `cosmo_node` VALUES ('123', 'Node', '节点管理', '1', '', '0', '1', '2', '5');
INSERT INTO `cosmo_node` VALUES ('124', 'Access', '授权查询', '1', '', '0', '1', '2', '5');
INSERT INTO `cosmo_node` VALUES ('126', 'Template', '界面管理', '1', '', '0', '1', '2', '7');
INSERT INTO `cosmo_node` VALUES ('127', 'Theme', '界面管理', '1', '', '0', '1', '2', '7');
INSERT INTO `cosmo_node` VALUES ('128', 'Block', '碎片管理', '1', '', '0', '1', '2', '7');
INSERT INTO `cosmo_node` VALUES ('129', 'Slide', '幻灯片管理', '1', '', '0', '1', '2', '7');
INSERT INTO `cosmo_node` VALUES ('139', 'statusallok', '批量审核', '1', '', '0', '12', '3', '0');
INSERT INTO `cosmo_node` VALUES ('140', 'images', '媒体文件', '1', '', '0', '126', '3', '7');
INSERT INTO `cosmo_node` VALUES ('142', 'index', '列表', '1', '', '0', '127', '3', '7');
INSERT INTO `cosmo_node` VALUES ('145', 'picmanage', '图片管理', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('146', 'addpic', '添加图片', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('147', 'editpic', '编辑图片', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('148', 'insertpic', '插入图片', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('149', 'updatepic', '更新图片', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('150', 'listorder', '图片排序', '1', '', '0', '129', '3', '7');
INSERT INTO `cosmo_node` VALUES ('151', 'Attachment', '附件管理', '1', '', '0', '1', '2', '0');
INSERT INTO `cosmo_node` VALUES ('152', 'index', '默认操作', '1', '', '0', '151', '3', '0');
INSERT INTO `cosmo_node` VALUES ('153', 'upload', '上传文件', '1', '', '0', '151', '3', '0');
INSERT INTO `cosmo_node` VALUES ('154', 'filelist', '浏览文件', '1', '', '0', '151', '3', '0');
INSERT INTO `cosmo_node` VALUES ('155', 'delfile', '删除文件', '1', '', '0', '151', '3', '0');
INSERT INTO `cosmo_node` VALUES ('156', 'cleanfile', '清理文件', '1', '', '0', '151', '3', '0');
INSERT INTO `cosmo_node` VALUES ('157', 'dosite', '保存配置', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('158', 'testmail', '邮件测试', '1', '', '0', '3', '3', '2');
INSERT INTO `cosmo_node` VALUES ('159', 'product', '产品模型', '1', '产品模型', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('160', 'Message', '留言模型', '1', '', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('161', 'Case', '案例模型', '1', 'Case', '0', '1', '2', '3');
INSERT INTO `cosmo_node` VALUES ('162', 'deletepic', '删除图片', '1', '删除图片', '0', '129', '3', '7');

-- ----------------------------
-- Table structure for cosmo_online
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_online`;
CREATE TABLE `cosmo_online` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL,
  `lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_online
-- ----------------------------
INSERT INTO `cosmo_online` VALUES ('27db7e653ef75907bf2db89b1d2665ba', '0', '', '127.0.0.1', '1584950623', '4');
INSERT INTO `cosmo_online` VALUES ('838c490fdccd3bbf32f924f1036a35cd', '0', '', '127.0.0.1', '1584950798', '4');
INSERT INTO `cosmo_online` VALUES ('dc767112aa6ae2f34e69c0922c5ebc4f', '0', '', '127.0.0.1', '1584951737', '4');

-- ----------------------------
-- Table structure for cosmo_page
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_page`;
CREATE TABLE `cosmo_page` (
  `id` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(250) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cont` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_page
-- ----------------------------
INSERT INTO `cosmo_page` VALUES ('1', '关于我们', '', '', '', '<p>\r\n	<span style=\"line-height:2;\">&nbsp; &nbsp;Sichuan Hui Da Tong (Phedaton) Mechanical Equipment Manufacturing Co., Ltd Is located at Chongzhou Industrial port in&nbsp;T EDA, an industrial concentration development area in Sichuan. Established in the year of 2012 with a registered capital of 11 million&nbsp;yuan, Now we’ve reached an annual turnover of $ 90 million, at the same time, we have obtained the import &amp; export certificates issued by the Ministry of Foreign Trade and Economic Cooperation and General Administration of Customs of PRC.</span>\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">&nbsp;&nbsp;We are mainly engaged in research, production and sales of dish-washing machine. With an innovation-driven culture, we’ve been dedicating in laser cutter, Automatic welding machine as well as Highland field kitchen car. Our major products have been widely used for cleaning.</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">Featured with advanced technology, reliable performance and high durability, our Phedaton products earn good reputation. We&nbsp;have 2 in-house manufacturing plants and 2 exhibition centers and over 100 staffs around Chengdu, China.&nbsp;Honored as “High-Tech Enterprise”, we have acquired more than 15 National patents,&nbsp;among which two patents are Municipal Science and Technology Progress Award.</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">&nbsp;&nbsp;Apart from the 2 manufacturing plants, we have a robotics lab, a heavy equipment production base (built by a joint effort with Sichuan Xihe Mechanical and Electrical Equipment Manufacturing Co.,Ltd), and an automation equipment lab (built by a joint effort with Sichuan Agricultural University).Based on a disciplined and professional R&amp;D and production team, we produce and deliver quality products as well as projects, receiving strongly positive feedbacks from clients.</span> \r\n</p>', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('2', '新闻中心', '', '', '', '', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('3', '案例中心', '', '', '', '', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('4', '联系我们', '', '', '', '', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('5', '关于茅台510', '', '', '', '', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('6', '关于茅台510', '', '', '', '', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('14', 'product', '', '', '', '', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('24', 'Video', '', '', '', '', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('25', 'Micro Hi-Fi', '/Uploads/201609/57d7bd53a3317.jpg', '', '', '', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('27', 'MCB1533', '', '', '', '', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('39', '联系我们', '', '', '', '<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n	如有咨询事项，请联系技术客服QQ&nbsp;：3341822209<br />\r\n公司：贵州高峰石油机械股份有限公司<br />\r\n地址：贵州省贵阳市观山湖区长岭南路22号<br />\r\n邮编：550081\r\n</div>\r\n<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n</div>\r\n<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n	<p style=\"padding:0px;margin-top:0px;margin-bottom:10px;\">\r\n		<span style=\"padding:0px;margin:0px;font-weight:700;\">国内</span><br />\r\n电话：86-851-84668339<br />\r\n86-851-84810952<br />\r\n传真：86-851-84668503<br />\r\n86-851-84810845<br />\r\n邮箱：xsb1@gaofeng-petro.com\r\n	</p>\r\n	<p style=\"padding:0px;margin-top:0px;margin-bottom:10px;\">\r\n		&nbsp;\r\n	</p>\r\n</div>\r\n<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"padding:0px;margin:0px;font-weight:700;\">国际</span><br />\r\n电话：86-851-87995502<br />\r\n传真：86-851-87995503<br />\r\n邮箱：sales@gaofeng-petro.com<br />\r\n网址：<a href=\"http://www.gaofeng-petro.com/\" style=\"padding:0px;margin:0px;color:#006FA8;\">www.gaofeng-petro.com</a>\r\n</div>', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('77', 'Highlight', '', '', '', '<p>\r\n	<table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"0\" border=\"1\" bordercolor=\"#FFFFFF\">\r\n		<tbody>\r\n			<tr>\r\n				<td rowspan=\"3\">\r\n					<p>\r\n						<img src=\"/Uploads/201705/590be5d6c608c.png\" style=\"line-height:1.5;\" /> \r\n					</p>\r\n				</td>\r\n				<td style=\"vertical-align:bottom;\">\r\n					<p>\r\n						<img src=\"/Uploads/201705/590be5e96a5d1.jpg\" style=\"line-height:1.5;\" /> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"height:50%;\">\r\n					<h3 style=\"box-sizing:border-box;margin:20px 0px 1rem;padding:0.8rem 0px 1.5rem;font-family:Arial;font-weight:500;line-height:1.1;color:#4EB136;font-size:24px;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#4EB136;white-space:normal;background-color:#FFFFFF;\">\r\n						<span style=\"line-height:3;\">Mobile Flipchart Easel</span> \r\n					</h3>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong><span style=\"font-size:16px;line-height:1.5;\">Board Size:70x100cm(28\"x40\")</span></strong><strong><span style=\"font-size:16px;\"></span></strong> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong><span style=\"font-size:16px;\"></span></strong><strong><span style=\"font-size:16px;line-height:1.5;\">Max Height:195cm(78\")</span></strong> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:0.7rem;\"><strong><span style=\"font-size:16px;\"><img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;max-width:100%;\" /><span style=\"line-height:1.5;\">Board: H</span></span></strong><strong><span style=\"font-size:16px;line-height:1.5;\">igh quality lacquered steel sheet surface with magnetic, aluminum frame, ABS corner;</span></strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong style=\"color:#333333;font-family:Arial;line-height:20px;white-space:normal;background-color:#FFFFFF;\"><span style=\"font-size:16px;line-height:1.5;\">S</span></strong><span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:0.7rem;\"><strong><span style=\"font-size:16px;\"></span><span style=\"font-size:16px;line-height:1.5;\">tand: Steel tube,five star let,dia 5cm castor with brake,height adjustable.Round base dia 68cm(26.7\");</span></strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:16px;line-height:1.5;\"><strong>Accessories: 1 pcs magnetic eraser,3 pcs magnets;</strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:0.7rem;\"><img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;max-width:100%;\" /><strong><span style=\"font-size:16px;line-height:1.5;\">Extra Choice: Extention bar.</span></strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"font-size:14px;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong><span style=\"font-size:16px;line-height:1.5;\">Packing:1set/ctn,0.096cbm/pcs,&nbsp;</span></strong><strong><span style=\"font-size:16px;line-height:1.5;\">G.W.:15.7kgs/set;</span></strong> \r\n					</p>\r\n<br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</p>', '', '0', '<h4 class=\"animate animate-down\">Benifits</h4>                <div class=\"benefits-container\">                    <div class=\"benefit\">                        <img src=\"/Public/www/images/benifits1.png\" alt=\"Safe time\" />                        <h5>EXTEND THE PRODUCT RANGE</h5>                        <p>                            This service plays as the last security of                            product delivery from factory to houses.                            Therefore, we keep the product quality                            under control, from pre-sale to after-sale.                        </p>                    </div>                    <div class=\"benefit\">                        <img src=\"/Public/www/images/benifits2.png\" alt=\"\" />                        <h5>IMPROVE EFFECTIVENESS</h5>                        <p>                            This testing tools with software can                            standardize and simplify the                            acceptance process. Plumbers are able                            to handle more service requirenebts.                        </p>                    </div>                    <div class=\"benefit\">                        <img src=\"/Public/www/images/benifits3.png\" alt=\"\" />                        <h5>FOREVER STORAGE</h5>                        <p>                            The pressure test data will be stored                            in the cloud, the agent can generate                            a PDF report and sent to the registered                            mailbox at any time through the account                        </p>                    </div>                    <div class=\"benefit\">                        <img src=\"/Public/www/images/benifits4.png\" alt=\"Detailed Data Reports\" />                        <h5>TIGHTEN BUSINESS BONDS </h5>                        <p>                            When Safety Shield service become a                            regular part of installation service, the bonds                            between plumber group and the supplier                            are tightened based on the data service.                        </p>                    </div>                </div>');
INSERT INTO `cosmo_page` VALUES ('78', 'Contact', '', 'whiteboard inquiry', '', '', '', '0', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor                                incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.                                Risus commodo viverra maecenas accumsan lacus vel facilisis.');
INSERT INTO `cosmo_page` VALUES ('74', 'AboutUs', '', 'China whiteboard,glass whiteboard,flip chart ,whiteboard manufacturer', 'WeYoung -China whiteboard,glass whiteboard,flip chart manufacturer', '<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201705/5928f0030778e.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:16px;line-height:26.6667px;white-space:normal;\">Established\r\n in Foshan in 1993, one of the most famous industrial cities in China, \r\nWenyang Stationery Manufacturing Co., Ltd. is a manufacturer and \r\nexporter specializing in whiteboards, notice boards, chalk boards, \r\nflip chart easels, whiteboard stands, print racks, magazine stands, \r\nnewspaper stands. Our factory covers an area of 25,000 square meters. As\r\n one of the biggest whiteboard manufacturers and whiteboard standards \r\nsetters in China, we are one of the best producers with the highest \r\nquality standards,and got the certificate of ISO9001:2008,BV CERT,TUV \r\nCERT,SGS CERT.</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201705/5926796e10f5a.jpg\" alt=\"\" /> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;font-family:Arial;line-height:2;\">So far, the products have been exported to\r\n50 countries including USA, Germany, Japan, Australia, UAE, etc. We have\r\nestablished good business relationships with many of the world’s multinational\r\ncompanies such as 3M, Comix,and be a supplier of 2012 LONDON OLYMPIC GAMES and\r\n2016 RIO OLYMPIC GAMES.</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201706/593faec12ff48.jpg\" alt=\"\" /> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;font-family:Arial;line-height:2;\">During the past 24 years, our company has\r\nadhered to the management concept of trust and cooperation, superior product\r\nquality and corporate cultural development for our personnel. Our corporate\r\nvision attracts a group of highly skilled technicians and professional\r\nmanagement staff that are eager and ready to serve our customers.&nbsp; As a result, our product quality meets\r\nworld-class standards. We also offer OEM and custom made services wherein we\r\ntailor the product according to the specifications and design of our clients. </span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;font-family:Arial;line-height:2;\">Honesty as the foundation, credit standing\r\nas rule, quality and quantity assured, development together. We sincerely would\r\nlike to cooperate with you on the basis of mutual benefit. You are warmly\r\nwelcome to visit us.</span> \r\n</p>\r\n<br />', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('103', 'Thanks', '', '', '', '', '', '0', '');
INSERT INTO `cosmo_page` VALUES ('73', 'Way of working', '', '', '', '<div class=\"col-lg-5 col-md-5 animate animate-down\">                        <div class=\"box\">                            <h3>Way of working </h3>                            <p>                                Safe Shield test process may vary from country to country. Here take Australia as an                                example.                            </p>                            <p>                                1.Check the piping system to see whether there is any leakage at the welding points,                                valves                                and                                plugs, then install the Safe Shield device                            </p>                            <p>2.Login the APP and fill in the form</p>                            <p>3.Pressure test stage: Select pressure test group, pressurize the system to setting                                pressure                                then                                start test. The hydrostatic test has one round which lasts 30 mins. </p>                            <p>4.When the pressure testing is completed, it will form a report and clicked to send a PDF                                file to                                tester\'s mailbox.</p>                            <p>Pressure test process can be customized.</p>                        </div>                        <a href=\"#contact\"><img src=\"/Public/www/images/contacts.png\" alt=\"\" /></a>                    </div>                    <div class=\"col-lg-7 col-md-7\">                        <button type=\"button\" class=\"btn btn-primary btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\">                            </button><div class=\"btn-img\">                                <div class=\"img-box\">                                    <img src=\"/Public/www/images/video.png\" alt=\"Video instruction\" />                                    <div class=\"hovers\">                                        <img class=\"btn-play\" src=\"/Public/www/images/btns-play.png\" alt=\"\" />                                    </div>                                </div>                            </div>                                                <!-- Modal -->                        <div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\">                            <div class=\"modal-dialog\" role=\"document\">                                <div class=\"modal-content\">                                    <div class=\"modal-header\">                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span></button>                                    </div>                                    <div class=\"modal-body\">                                        <iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/j6Mua8mybAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe>                                    </div>                                </div>                            </div>                        </div>                    </div>', '', '0', '<div class=\"col-lg-5 col-md-5 animate animate-down\"><div class=\"box\">                            <h3>Way of working </h3>                            <p>                                Safe Shield test process may vary from country to country. Here take Australia as an                                example.                            </p>                            <p>                                1.Check the piping system to see whether there is any leakage at the welding points,                                valves                                and                                plugs, then install the Safe Shield device                            </p>                            <p>2.Login the APP and fill in the form</p>                            <p>3.Pressure test stage: Select pressure test group, pressurize the system to setting                                pressure                                then                                start test. The hydrostatic test has one round which lasts 30 mins. </p>                            <p>4.When the pressure testing is completed, it will form a report and clicked to send a PDF                                file to                                tester\'s mailbox.</p>                            <p>Pressure test process can be customized.</p>                        </div>                        <a href=\"#contact\"><img src=\"/Public/www/images/contacts.png\" alt=\"\" /></a>                    </div>                    <div class=\"col-lg-7 col-md-7\">                        <div class=\"btn btn-primary btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\">                            <div class=\"btn-img\">                                <div class=\"img-box\">                                    <img src=\"/Public/www/images/video.png\" alt=\"Video instruction\" />                                    <div class=\"hovers\">                                        <img class=\"btn-play\" src=\"/Public/www/images/btns-play.png\" alt=\"\" />                                    </div>                                </div>                            </div>                        </div>                        <!-- Modal -->                        <div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\">                            <div class=\"modal-dialog\" role=\"document\">                                <div class=\"modal-content\">                                    <div class=\"modal-header\">                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span></button>                                    </div>                                    <div class=\"modal-body\">                                        <iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/j6Mua8mybAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe>                                    </div>                                </div>                            </div>                        </div>                    </div>');

-- ----------------------------
-- Table structure for cosmo_posid
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_posid`;
CREATE TABLE `cosmo_posid` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `listorder` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_posid
-- ----------------------------
INSERT INTO `cosmo_posid` VALUES ('1', '首页', '0');

-- ----------------------------
-- Table structure for cosmo_product
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_product`;
CREATE TABLE `cosmo_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(80) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pic` mediumtext NOT NULL,
  `Price` varchar(80) NOT NULL DEFAULT '',
  `document` varchar(80) NOT NULL DEFAULT '',
  `msga` varchar(255) NOT NULL DEFAULT '',
  `msgb` varchar(255) NOT NULL DEFAULT '',
  `msgc` varchar(255) NOT NULL DEFAULT '',
  `msgd` varchar(255) NOT NULL DEFAULT '',
  `msge` varchar(255) NOT NULL DEFAULT '',
  `msgf` varchar(255) NOT NULL DEFAULT '',
  `msgg` mediumtext NOT NULL,
  `msgh` mediumtext NOT NULL,
  `msgi` mediumtext NOT NULL,
  `available_one` mediumtext NOT NULL,
  `available_two` text NOT NULL,
  `model` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_product
-- ----------------------------

-- ----------------------------
-- Table structure for cosmo_role
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_role`;
CREATE TABLE `cosmo_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowattachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maxpostnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxmessagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price_y` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_role
-- ----------------------------
INSERT INTO `cosmo_role` VALUES ('1', '超级管理员', '1', '超级管理员', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0.00', '0.00', '0.00');
INSERT INTO `cosmo_role` VALUES ('2', '管理员', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for cosmo_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_role_user`;
CREATE TABLE `cosmo_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_role_user
-- ----------------------------
INSERT INTO `cosmo_role_user` VALUES ('1', '2');
INSERT INTO `cosmo_role_user` VALUES ('2', '4');

-- ----------------------------
-- Table structure for cosmo_slide
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_slide`;
CREATE TABLE `cosmo_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `flashfile` varchar(150) NOT NULL DEFAULT '',
  `xmlfile` varchar(150) NOT NULL DEFAULT '',
  `tpl` varchar(30) NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_slide
-- ----------------------------
INSERT INTO `cosmo_slide` VALUES ('1', '首页banner', '', '', '1', '1920', '720', '5', '1', '0');
INSERT INTO `cosmo_slide` VALUES ('2', '手机版banner', '', '', '1', '22', '22', '5', '1', '0');

-- ----------------------------
-- Table structure for cosmo_slide_data
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_slide_data`;
CREATE TABLE `cosmo_slide_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` tinyint(3) unsigned DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `pic` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL COMMENT '简介',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_slide_data
-- ----------------------------
INSERT INTO `cosmo_slide_data` VALUES ('3', '2', '01', '/Uploads/201810/5bcda1c7383a4.jpg', '', '0', '1', '0', '');
INSERT INTO `cosmo_slide_data` VALUES ('7', '1', 'banner1', '/Public/www/images/banner.png', '', '0', '1', '0', '<div class=\"title\">\r\n	safe shield\r\n</div>\r\n<p>\r\n	a cloud-based intellegent detection\r\n</p>\r\n<p>\r\n	solution for water supply system\r\n</p>\r\n<a class=\"gos\" href=\"#contact\">Let\'s go!</a>');
INSERT INTO `cosmo_slide_data` VALUES ('10', '2', '02', '/Uploads/201810/5bcda1e670926.jpg', '', '0', '1', '0', '');
INSERT INTO `cosmo_slide_data` VALUES ('11', '2', '03', '/Uploads/201810/5bcda1f4e634a.jpg', '', '0', '1', '0', '');
INSERT INTO `cosmo_slide_data` VALUES ('13', '2', 'banner4', '/Uploads/201904/5cb3e9a06768e.jpg', '', '0', '0', '0', '');

-- ----------------------------
-- Table structure for cosmo_type
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_type`;
CREATE TABLE `cosmo_type` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `parentid` (`parentid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_type
-- ----------------------------
INSERT INTO `cosmo_type` VALUES ('1', '友情链接', '0', '友情链接分类', '1', '0', '1');

-- ----------------------------
-- Table structure for cosmo_urlrule
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_urlrule`;
CREATE TABLE `cosmo_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showurlrule` varchar(255) NOT NULL DEFAULT '',
  `showexample` varchar(255) NOT NULL DEFAULT '',
  `listurlrule` varchar(255) NOT NULL DEFAULT '',
  `listexample` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_urlrule
-- ----------------------------
INSERT INTO `cosmo_urlrule` VALUES ('1', '0', '{$catdir}_{$id}.html|{$catdir}_{$id}-{$page}.html', 'news_1.html|news_1-1.html', '{$catdir}.html|{$catdir}-{$page}.html', 'news.html|news-1.html', '0');

-- ----------------------------
-- Table structure for cosmo_user
-- ----------------------------
DROP TABLE IF EXISTS `cosmo_user`;
CREATE TABLE `cosmo_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(50) NOT NULL DEFAULT '',
  `answer` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `web_url` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `last_logintime` int(11) unsigned NOT NULL DEFAULT '0',
  `reg_ip` char(15) NOT NULL DEFAULT '',
  `last_ip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmo_user
-- ----------------------------
INSERT INTO `cosmo_user` VALUES ('4', '2', 'rifeng', '23d2b488011819b8bf942a660c6d61dbf4bdfc9a', 'osd@rifeng.cn', '', '', '', '1', '', '', '', '', '', '142', '1540782434', '0', '1584673410', '61.140.27.219', '127.0.0.1', '1', '0.00', '0', '');
INSERT INTO `cosmo_user` VALUES ('2', '1', 'admin', 'fabaa88b6979f99875d10d053a1b128e90920d98', 'info@cosmoing.com', 'admin', '', '', '1', '', '', '', '', '', '87', '1502869825', '0', '1584671355', '122.97.176.27', '127.0.0.1', '1', '0.00', '0', '');
SET FOREIGN_KEY_CHECKS=1;
