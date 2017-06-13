DROP TABLE IF EXISTS `p0001_admin`;
CREATE TABLE `p0001_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `name` varchar(20) DEFAULT '',
  `pass` varchar(100) DEFAULT '',
  `face` varchar(10) DEFAULT '',
  `realname` varchar(20) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `qq` varchar(20) DEFAULT '',
  `sex` char(2) DEFAULT '',
  `rbac` varchar(255) DEFAULT '',
  `json` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `p0001_item`;
CREATE TABLE `p0001_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `nid` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '1',
  `sortby` int(11) DEFAULT '100',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `image_effect` varchar(255) DEFAULT '',
  `image_align` varchar(255) DEFAULT '',
  `image_padding` int(11) DEFAULT '0',
  `image_bg` varchar(255) DEFAULT '',
  `image_path` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `url_target` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `p0001_item` VALUES("3","0","1","1","100","1492128962","1492128962","诗词之境","logo.png","bounceInDown","center","0","b1.png","data/photo/3","","_blank");
INSERT INTO `p0001_item` VALUES("4","0","1","1","99","1492138251","1492138251","鹤警露","f2.png","fadeInLeft","left","20","b2.png","data/photo/4","","");
INSERT INTO `p0001_item` VALUES("5","0","1","1","98","1492138291","1492138291","桃花溪","f3.png","fadeInRight","right","25","b3.png","data/photo/5","","");
INSERT INTO `p0001_item` VALUES("6","0","1","1","97","1492138339","1492138339","竹窗","f4.png","fadeInLeft","left","20","b4.png","data/photo/6","","");
INSERT INTO `p0001_item` VALUES("7","0","1","1","96","1492138374","1492138374","采莲曲","f5.png","fadeInRight","right","25","b5.png","data/photo/7","","");


DROP TABLE IF EXISTS `p0001_log`;
CREATE TABLE `p0001_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT '0',
  `admin_name` varchar(20) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `table` varchar(20) DEFAULT '',
  `table_id` int(11) DEFAULT '0',
  `ip` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `p0001_site`;
CREATE TABLE `p0001_site` (
  `state` tinyint(1) DEFAULT '1',
  `name` varchar(100) DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p0001_site` VALUES("1","site_name","");
INSERT INTO `p0001_site` VALUES("1","logo","");
INSERT INTO `p0001_site` VALUES("1","domain","qing.com/p0001");
INSERT INTO `p0001_site` VALUES("1","favicon","");
INSERT INTO `p0001_site` VALUES("1","touch_icon","");
INSERT INTO `p0001_site` VALUES("1","title","");
INSERT INTO `p0001_site` VALUES("1","keywords","");
INSERT INTO `p0001_site` VALUES("1","description","");
INSERT INTO `p0001_site` VALUES("1","admin","a:3:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:5:\"admin\";s:4:\"rbac\";s:5:\"super\";}");


DROP TABLE IF EXISTS `p0001_stats`;
CREATE TABLE `p0001_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `screen` varchar(20) DEFAULT '',
  `cookie` varchar(32) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `referer` varchar(255) DEFAULT '',
  `keyword` varchar(255) DEFAULT '',
  `os` varchar(20) DEFAULT '',
  `os_version` varchar(20) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `browser` varchar(20) DEFAULT '',
  `browser_version` varchar(20) DEFAULT '',
  `ip` varchar(20) DEFAULT '',
  `ip_isp` varchar(20) DEFAULT '',
  `ip_country` varchar(20) DEFAULT '',
  `ip_region` varchar(20) DEFAULT '',
  `ip_area` varchar(20) DEFAULT '',
  `ip_city` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `p0001_trash`;
CREATE TABLE `p0001_trash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT '0',
  `admin_name` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `note` varchar(255) DEFAULT '',
  `table` varchar(255) DEFAULT '',
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



