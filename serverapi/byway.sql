/*
 Navicat Premium Data Transfer

 Source Server         : xingjintao
 Source Server Type    : MySQL
 Source Server Version : 50173
 Source Host           : 115.159.208.167
 Source Database       : byway

 Target Server Type    : MySQL
 Target Server Version : 50173
 File Encoding         : utf-8

 Date: 07/13/2016 11:35:11 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `auth_permission`
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry'), ('2', 'Can change log entry', '1', 'change_logentry'), ('3', 'Can delete log entry', '1', 'delete_logentry'), ('4', 'Can add permission', '2', 'add_permission'), ('5', 'Can change permission', '2', 'change_permission'), ('6', 'Can delete permission', '2', 'delete_permission'), ('7', 'Can add group', '3', 'add_group'), ('8', 'Can change group', '3', 'change_group'), ('9', 'Can delete group', '3', 'delete_group'), ('10', 'Can add user', '4', 'add_user'), ('11', 'Can change user', '4', 'change_user'), ('12', 'Can delete user', '4', 'delete_user'), ('13', 'Can add content type', '5', 'add_contenttype'), ('14', 'Can change content type', '5', 'change_contenttype'), ('15', 'Can delete content type', '5', 'delete_contenttype'), ('16', 'Can add session', '6', 'add_session'), ('17', 'Can change session', '6', 'change_session'), ('18', 'Can delete session', '6', 'delete_session'), ('19', 'Can add customer', '7', 'add_customer'), ('20', 'Can change customer', '7', 'change_customer'), ('21', 'Can delete customer', '7', 'delete_customer'), ('25', 'Can add ship', '9', 'add_ship'), ('26', 'Can change ship', '9', 'change_ship'), ('27', 'Can delete ship', '9', 'delete_ship'), ('28', 'Can add canteen', '10', 'add_canteen'), ('29', 'Can change canteen', '10', 'change_canteen'), ('30', 'Can delete canteen', '10', 'delete_canteen'), ('31', 'Can add order', '11', 'add_order'), ('32', 'Can change order', '11', 'change_order'), ('33', 'Can delete order', '11', 'delete_order'), ('34', 'Can add order record', '12', 'add_orderrecord'), ('35', 'Can change order record', '12', 'change_orderrecord'), ('36', 'Can delete order record', '12', 'delete_orderrecord'), ('37', 'Can add window', '13', 'add_window'), ('38', 'Can change window', '13', 'change_window'), ('39', 'Can delete window', '13', 'delete_window'), ('40', 'Can add category', '14', 'add_category'), ('41', 'Can change category', '14', 'change_category'), ('42', 'Can delete category', '14', 'delete_category'), ('43', 'Can add product', '15', 'add_product'), ('44', 'Can change product', '15', 'change_product'), ('45', 'Can delete product', '15', 'delete_product'), ('46', 'Can add payment record', '16', 'add_paymentrecord'), ('47', 'Can change payment record', '16', 'change_paymentrecord'), ('48', 'Can delete payment record', '16', 'delete_paymentrecord'), ('49', 'Can add window comment', '17', 'add_windowcomment'), ('50', 'Can change window comment', '17', 'change_windowcomment'), ('51', 'Can delete window comment', '17', 'delete_windowcomment'), ('52', 'Can add operator', '18', 'add_operator'), ('53', 'Can change operator', '18', 'change_operator'), ('54', 'Can delete operator', '18', 'delete_operator'), ('55', 'Can add customer', '19', 'add_customer'), ('56', 'Can change customer', '19', 'change_customer'), ('57', 'Can delete customer', '19', 'delete_customer'), ('58', 'Can add ship', '20', 'add_ship'), ('59', 'Can change ship', '20', 'change_ship'), ('60', 'Can delete ship', '20', 'delete_ship'), ('61', 'Can add canteen', '21', 'add_canteen'), ('62', 'Can change canteen', '21', 'change_canteen'), ('63', 'Can delete canteen', '21', 'delete_canteen'), ('64', 'Can add window', '22', 'add_window'), ('65', 'Can change window', '22', 'change_window'), ('66', 'Can delete window', '22', 'delete_window'), ('67', 'Can add category', '23', 'add_category'), ('68', 'Can change category', '23', 'change_category'), ('69', 'Can delete category', '23', 'delete_category'), ('70', 'Can add product', '24', 'add_product'), ('71', 'Can change product', '24', 'change_product'), ('72', 'Can delete product', '24', 'delete_product'), ('73', 'Can add window comment', '25', 'add_windowcomment'), ('74', 'Can change window comment', '25', 'change_windowcomment'), ('75', 'Can delete window comment', '25', 'delete_windowcomment'), ('76', 'Can add operator', '26', 'add_operator'), ('77', 'Can change operator', '26', 'change_operator'), ('78', 'Can delete operator', '26', 'delete_operator'), ('79', 'Can add order', '27', 'add_order'), ('80', 'Can change order', '27', 'change_order'), ('81', 'Can delete order', '27', 'delete_order'), ('82', 'Can add order record', '28', 'add_orderrecord'), ('83', 'Can change order record', '28', 'change_orderrecord'), ('84', 'Can delete order record', '28', 'delete_orderrecord'), ('85', 'Can add payment record', '29', 'add_paymentrecord'), ('86', 'Can change payment record', '29', 'change_paymentrecord'), ('87', 'Can delete payment record', '29', 'delete_paymentrecord'), ('88', 'Can add heat product', '30', 'add_heatproduct'), ('89', 'Can change heat product', '30', 'change_heatproduct'), ('90', 'Can delete heat product', '30', 'delete_heatproduct'), ('91', 'Can add task state', '32', 'add_taskmeta'), ('92', 'Can change task state', '32', 'change_taskmeta'), ('93', 'Can delete task state', '32', 'delete_taskmeta'), ('94', 'Can add saved group result', '33', 'add_tasksetmeta'), ('95', 'Can change saved group result', '33', 'change_tasksetmeta'), ('96', 'Can delete saved group result', '33', 'delete_tasksetmeta'), ('97', 'Can add interval', '34', 'add_intervalschedule'), ('98', 'Can change interval', '34', 'change_intervalschedule'), ('99', 'Can delete interval', '34', 'delete_intervalschedule'), ('100', 'Can add crontab', '35', 'add_crontabschedule'), ('101', 'Can change crontab', '35', 'change_crontabschedule'), ('102', 'Can delete crontab', '35', 'delete_crontabschedule'), ('103', 'Can add periodic tasks', '36', 'add_periodictasks'), ('104', 'Can change periodic tasks', '36', 'change_periodictasks'), ('105', 'Can delete periodic tasks', '36', 'delete_periodictasks'), ('106', 'Can add periodic task', '31', 'add_periodictask'), ('107', 'Can change periodic task', '31', 'change_periodictask'), ('108', 'Can delete periodic task', '31', 'delete_periodictask'), ('109', 'Can add worker', '37', 'add_workerstate'), ('110', 'Can change worker', '37', 'change_workerstate'), ('111', 'Can delete worker', '37', 'delete_workerstate'), ('112', 'Can add task', '38', 'add_taskstate'), ('113', 'Can change task', '38', 'change_taskstate'), ('114', 'Can delete task', '38', 'delete_taskstate'), ('115', 'Can add queue', '39', 'add_queue'), ('116', 'Can change queue', '39', 'change_queue'), ('117', 'Can delete queue', '39', 'delete_queue'), ('118', 'Can add message', '40', 'add_message'), ('119', 'Can change message', '40', 'change_message'), ('120', 'Can delete message', '40', 'delete_message');
COMMIT;

-- ----------------------------
--  Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `auth_user`
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$qBEBx0Sxn15o$uNnzPgCvPt1I3hisuZq/T+NxEn6qLBz3AG8l0yAvvbU=', '2016-07-03 19:23:59', '1', 'admin', '', '', 'yhnkb@hotmail.com', '1', '1', '2016-04-14 02:44:10'), ('2', 'pbkdf2_sha256$24000$HWbedC8Xdwot$XyT6ggQmybjg7BKUqFx6SgJWgzxt3DwgRvcdYz/L8Ps=', '2016-07-04 20:50:29', '0', '13301052@bjtu.edu.cn', '', '', '13301052@bjtu.edu.cn', '0', '1', '2016-05-14 09:21:31'), ('3', 'pbkdf2_sha256$24000$SeBnaGtHX0yF$6oAU5mxp2eB089KyUjrTscaLdzwlXBAMDZgxrv/2fpc=', '2016-06-13 19:22:53', '0', '16301001@bjtu.edu.cn', '', '', '16301001@bjtu.edu.cn', '0', '1', '2016-06-01 11:25:54'), ('4', 'pbkdf2_sha256$24000$F7FXnuDbVBaE$NsxK75nKrMlCJYmhA03UoDn7zSG1EDN8tToAx2yOsb0=', '2016-06-14 23:09:25', '1', 'canadmin', 'canteen', 'admin', 'yhnkb@qq.com', '1', '1', '2016-06-01 22:14:24'), ('9', 'pbkdf2_sha256$24000$pGVf43OXXyqr$+xrZqCO92PHt8z3KzEQLg0I+4KqJN+qZ+IzVCqxpQrI=', '2016-06-16 10:46:55', '0', '13301025@bjtu.edu.cn', '', '', '13301025@bjtu.edu.cn', '0', '1', '2016-06-16 10:45:32');
COMMIT;

-- ----------------------------
--  Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `canteens_canteen`
-- ----------------------------
DROP TABLE IF EXISTS `canteens_canteen`;
CREATE TABLE `canteens_canteen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `canteens_canteen`
-- ----------------------------
BEGIN;
INSERT INTO `canteens_canteen` VALUES ('1', '一食堂', 'testcan1', '/media/canteens/2.jpg', '12306', '十六号宿舍楼旁边', '1'), ('2', '学活食堂', 'testcan2', '/media/canteens/1.jpg', '12306', '学生活动中心一层', '2'), ('3', '东区食堂', 'testcan3', '/media/canteens/3.jpg', '12306', '东校区操场外', '3');
COMMIT;

-- ----------------------------
--  Table structure for `canteens_category`
-- ----------------------------
DROP TABLE IF EXISTS `canteens_category`;
CREATE TABLE `canteens_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `window_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `canteens_category_e60c40fb` (`window_id_id`),
  CONSTRAINT `window_id_id_refs_id_7da0d06e` FOREIGN KEY (`window_id_id`) REFERENCES `canteens_window` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `canteens_category`
-- ----------------------------
BEGIN;
INSERT INTO `canteens_category` VALUES ('1', '热门商品', '1'), ('2', '好吃榜', '1'), ('3', 'hot', '2'), ('4', '风味小吃', '2'), ('5', 'hot', '3'), ('6', '经典菜系', '3'), ('7', '好评榜', '4'), ('8', '营养菜品', '4'), ('9', '超级划算', '5'), ('10', 'hot', '5'), ('11', '超级热门', '6'), ('12', '营养食物', '6'), ('13', 'hot', '7'), ('14', '风味系列', '7'), ('15', 'hot', '8'), ('16', '热门商品', '8'), ('17', '好吃榜', '9'), ('18', 'hot', '9'), ('19', '风味小吃', '10'), ('20', 'hot', '10'), ('21', '经典菜系', '11'), ('22', '好评榜', '11'), ('23', '营养菜品', '12'), ('24', '超级划算', '12'), ('25', 'hot', '13'), ('26', '超级热门', '13'), ('27', '营养食物', '14'), ('28', 'hot', '14'), ('29', '风味系列', '15'), ('30', 'hot', '15');
COMMIT;

-- ----------------------------
--  Table structure for `canteens_heatproduct`
-- ----------------------------
DROP TABLE IF EXISTS `canteens_heatproduct`;
CREATE TABLE `canteens_heatproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `canteens_heatproduct_10a0e6a0` (`product_id_id`),
  CONSTRAINT `product_id_id_refs_id_52330259` FOREIGN KEY (`product_id_id`) REFERENCES `canteens_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `canteens_heatproduct`
-- ----------------------------
BEGIN;
INSERT INTO `canteens_heatproduct` VALUES ('44', '57'), ('43', '79'), ('41', '126'), ('42', '130');
COMMIT;

-- ----------------------------
--  Table structure for `canteens_operator`
-- ----------------------------
DROP TABLE IF EXISTS `canteens_operator`;
CREATE TABLE `canteens_operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `window_id_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `canteens_operator_e60c40fb` (`window_id_id`),
  CONSTRAINT `window_id_id_refs_id_b2730eb5` FOREIGN KEY (`window_id_id`) REFERENCES `canteens_window` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `canteens_product`
-- ----------------------------
DROP TABLE IF EXISTS `canteens_product`;
CREATE TABLE `canteens_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category_id_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `score` double NOT NULL,
  `unit` varchar(10) NOT NULL,
  `sold_num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `canteens_product_ee3b5834` (`category_id_id`),
  CONSTRAINT `category_id_id_refs_id_9207a193` FOREIGN KEY (`category_id_id`) REFERENCES `canteens_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `canteens_product`
-- ----------------------------
BEGIN;
INSERT INTO `canteens_product` VALUES ('1', '红烧脆骨', '1', '红烧类好吃菜品', '/media/products/1.jpg', '10', '5', '袋', '1'), ('2', '番茄鸡蛋', '1', '酸甜口味值得你选择', '/media/products/2.jpg', '10', '4', '袋', '3'), ('3', '麻婆豆腐', '1', '家常菜', '/media/products/3.jpg', '12', '4', '袋', '3'), ('4', '蒜蓉生菜', '1', '柔嫩的青菜', '/media/products/4.jpg', '14', '3', '桶', '5'), ('5', '木须肉', '1', '木须肉好棒', '/media/products/5.jpg', '4', '5', '份', '16'), ('6', '白萝卜丝粉条', '2', '好吃的菜品', '/media/products/6.jpg', '2', '5', '份', '11'), ('7', '韭菜炒千张', '2', '韭菜很赞', '/media/products/7.jpg', '2', '4', '份', '12'), ('8', '海米瓜片', '2', '海米很嫩', '/media/products/8.jpg', '4', '5', '份', '13'), ('9', '红烧鸡块', '2', '鸡块美味', '/media/products/9.jpg', '5', '5', '份', '19'), ('10', '腐竹青菜', '2', '青菜可口', '/media/products/10.jpg', '3', '4', '份', '17'), ('11', '香菇青菜', '3', '香菇味鲜', '/media/products/11.jpg', '2', '5', '份', '21'), ('12', '木耳菜花', '3', '菜花入味', '/media/products/12.jpg', '2', '5', '份', '27'), ('13', '鱼香肉丝', '3', '酸甜口味', '/media/products/13.jpg', '3', '4', '份', '24'), ('14', '胡萝卜粉条', '3', '清淡菜品', '/media/products/14.jpg', '2', '5', '份', '11'), ('15', '酸辣豆芽', '3', '酸辣的开胃菜', '/media/products/15.jpg', '2', '4', '份', '19'), ('16', '蒜泥茄子', '4', '细腻可口的蒜泥茄子', '/media/products/16.jpg', '2', '5', '份', '26'), ('17', '红烧肉', '4', '香嫩可口的红烧肉', '/media/products/17.jpg', '5', '5', '份', '31'), ('18', '炝瓜条', '4', '酸辣的清凉黄瓜', '/media/products/18.jpg', '2', '5', '份', '41'), ('19', '家常豆腐', '4', '家常豆腐值得品尝', '/media/products/19.jpg', '2', '5', '份', '27'), ('20', '西红柿鸡蛋', '4', '番茄炒蛋，别有一番风味', '/media/products/20.jpg', '3', '5', '份', '29'), ('21', '牛奶', '5', '新鲜牛奶', '/media/products/71.jpg', '2', '5', '杯', '67'), ('22', '小米绿豆粥', '5', '绿豆祛暑', '/media/products/72.jpg', '1', '5', '碗', '41'), ('23', '大米绿豆粥', '5', '绿豆祛暑', '/media/products/73.jpg', '1', '5', '碗', '41'), ('24', '紫菜蛋花汤', '5', '好吃的蛋花', '/media/products/74.jpg', '2', '4', '碗', '34'), ('25', '八宝粥', '5', '各种辅料超级棒', '/media/products/75.jpg', '2', '5', '碗', '74'), ('26', '米汤', '6', '大米熬过剩下的米汤', '/media/products/76.jpg', '1', '5', '碗', '12'), ('27', '玉米汤', '6', '玉米面熬出的汤汁，鲜美', '/media/products/77.jpg', '1', '5', '碗', '16'), ('28', '豆浆', '5', '纯大豆磨出的鲜美的豆浆', '/media/products/78.jpg', '2', '5', '杯', '31'), ('29', '鸡蛋汤', '6', '鸡蛋的味道', '/media/products/79.jpg', '1', '5', '碗', '9'), ('30', '南瓜小米汤', '6', '香甜的南瓜', '/media/products/80.jpg', '1', '5', '碗', '11'), ('31', '胡辣汤', '6', '酸辣口味好吃带感', '/media/products/81.jpg', '1', '4', '碗', '16'), ('32', '小米豇豆稀饭', '5', '小米饭，有味道', '/media/products/82.jpg', '2', '4', '碗', '14'), ('33', '黑米粥', '5', '黑米，健康的米', '/media/products/83.jpg', '1', '5', '碗', '19'), ('34', '冰糖大米绿豆粥', '5', '祛暑神器', '/media/products/84.jpg', '2', '5', '碗', '34'), ('35', '红薯小米粥', '5', '甜甜的红薯，美味', '/media/products/85.jpg', '1', '5', '碗', '28'), ('36', '酸辣鸡蛋汤', '6', '酸辣口味带感', '/media/products/86.jpg', '2', '5', '碗', '17'), ('37', '小米姜豆粥', '5', '小米粥，细腻润滑', '/media/products/87.jpg', '1', '5', '碗', '23'), ('38', '茶鸡蛋', '7', '茶叶煮泡出的鸡蛋，有滋味', '/media/products/88.jpg', '1', '5', '个', '37'), ('39', '馒头', '8', '大碱发面馒头', '/media/products/89.jpg', '1', '5', '个', '24'), ('40', '香葱花卷', '8', '带有味道的香葱~', '/media/products/90.jpg', '1', '4', '个', '37'), ('41', '大米', '8', '香米~', '/media/products/91.jpg', '0.23', '4', '两', '200'), ('42', '糖包', '8', '带有甜糖的面类食品', '/media/products/92.jpg', '1', '5', '个', '19'), ('43', '五香花卷', '8', '五香味道的花卷', '/media/products/93.jpg', '1', '5', '个', '17'), ('44', '捞米饭', '8', '汤汁煮泡出的米饭', '/media/products/94.jpg', '1', '5', '两', '97'), ('45', '肉末花卷', '8', '带有肉末的花卷', '/media/products/95.jpg', '1', '4', '个', '18'), ('46', '芝麻蛋糕', '7', '香美芝麻点缀的蛋糕', '/media/products/96.jpg', '1', '5', '个', '47'), ('47', '卤面', '7', '打卤面', '/media/products/97.jpg', '5', '5', '碗', '37'), ('48', '肉笼', '8', '好吃味美的肉笼', '/media/products/98.jpg', '1', '4', '个', '16'), ('49', '煮鸡蛋', '7', '煮鸡蛋', '/media/products/99.jpg', '0.5', '5', '个', '37'), ('50', '豆沙包', '7', '内含甜豆沙的面类食品', '/media/products/100.jpg', '1', '5', '个', '33'), ('51', '香酥饼', '7', '又香又酥的饼子', '/media/products/101.jpg', '1', '5', '个', '39'), ('52', '油丝卷', '7', '北京小吃油丝卷', '/media/products/102.jpg', '1', '4', '个', '11'), ('53', '鸡丁刀削面', '7', '山西特色刀削面', '/media/products/103.jpg', '5', '4', '个', '16'), ('54', '麻酱卷', '7', '味美', '/media/products/104.jpg', '1', '4', '个', '17'), ('55', '油条', '9', '油锅炸出的油条', '/media/products/105.jpg', '1', '5', '根', '19'), ('56', '菜肉包子', '9', '肉馅菜馅都有', '/media/products/106.jpg', '1', '5', '个', '37'), ('57', '扬州炒饭', '10', '虾仁鸡蛋应有尽有', '/media/products/107.jpg', '5', '5', '份', '310'), ('58', '榨菜肉丝汤', '9', '榨菜可口肉丝香美', '/media/products/108.jpg', '4', '5', '碗', '14'), ('59', '荷包蛋', '9', '煎出的荷包蛋', '/media/products/109.jpg', '1', '5', '个', '41'), ('60', '菜包', '9', '菜包', '/media/products/110.jpg', '1', '4', '个', '16'), ('61', '水饺', '10', '各种馅（味道）', '/media/products/111.jpg', '4', '5', '份', '31'), ('62', '麻球', '9', '黏黏的中间有甜豆沙馅好吃', '/media/products/112.jpg', '1', '5', '个', '31'), ('63', '香辣回锅肉', '11', '香辣味道', '/media/products/21.jpg', '5', '4', '份', '14'), ('64', '番茄鸡蛋', '11', '番茄鸡蛋酸甜好吃', '/media/products/22.jpg', '3', '4', '份', '19'), ('65', '雪菜豆腐', '11', '雪菜清淡豆腐嫩滑', '/media/products/23.jpg', '3', '5', '份', '11'), ('66', '香菇油麦菜', '11', '香菇香美', '/media/products/24.jpg', '3', '5', '份', '13'), ('67', '红烧牛肉', '11', '牛肉嫩汁', '/media/products/25.jpg', '6', '5', '份', '19'), ('68', '蒜苗凉粉', '12', '蒜苗嫩凉粉清淡', '/media/products/26.jpg', '2', '5', '份', '11'), ('69', '白菜豆腐炖粉条', '12', '白菜清淡味美', '/media/products/27.jpg', '3', '4', '份', '27'), ('70', '红烧茄子', '12', '茄子香嫩', '/media/products/28.jpg', '3', '4', '份', '21'), ('71', '干炸鱼块', '12', '炸鱼块酥嫩', '/media/products/29.jpg', '5', '4', '份', '15'), ('72', '酸辣瓜片', '12', '酸辣味道的黄瓜片', '/media/products/30.jpg', '2', '5', '份', '16'), ('73', '木耳菜花', '13', '木耳菜花好味道', '/media/products/31.jpg', '2', '5', '份', '14'), ('74', '香菜千张丝', '13', '千张味道香', '/media/products/32.jpg', '2', '4', '份', '6'), ('75', '红烧肉', '13', '味道香美嫩滑', '/media/products/33.jpg', '6', '5', '份', '27'), ('76', '韭菜炒鸡蛋', '13', '韭菜清淡味鲜', '/media/products/34.jpg', '3', '4', '份', '14'), ('77', '酸辣白菜', '13', '酸辣味道好吃', '/media/products/35.jpg', '3', '5', '份', '13'), ('78', '芹菜豆腐条', '14', '芹菜入味', '/media/products/36.jpg', '3', '4', '份', '21'), ('79', '宫保鸡丁', '14', '鸡丁嫩', '/media/products/37.jpg', '5', '4', '份', '320'), ('80', '炝瓜条', '14', '酸辣口味带感', '/media/products/38.jpg', '2', '4', '份', '13'), ('81', '青椒海带丝', '14', '海带鲜美', '/media/products/39.jpg', '2', '5', '份', '23'), ('82', '素炒包菜', '14', '包菜棒', '/media/products/40.jpg', '3', '5', '份', '20'), ('83', '牛奶', '15', '新鲜牛奶', '/media/products/71.jpg', '2', '5', '杯', '67'), ('84', '小米绿豆粥', '15', '绿豆祛暑', '/media/products/72.jpg', '1', '5', '碗', '41'), ('85', '大米绿豆粥', '15', '绿豆祛暑', '/media/products/73.jpg', '1', '5', '碗', '41'), ('86', '紫菜蛋花汤', '15', '好吃的蛋花', '/media/products/74.jpg', '2', '4', '碗', '34'), ('87', '八宝粥', '15', '各种辅料超级棒', '/media/products/75.jpg', '2', '5', '碗', '74'), ('88', '米汤', '15', '大米熬过剩下的米汤', '/media/products/76.jpg', '1', '5', '碗', '12'), ('89', '玉米汤', '16', '玉米面熬出的汤汁，鲜美', '/media/products/77.jpg', '1', '5', '碗', '16'), ('90', '豆浆', '15', '纯大豆磨出的鲜美的豆浆', '/media/products/78.jpg', '2', '5', '杯', '31'), ('91', '鸡蛋汤', '16', '鸡蛋的味道', '/media/products/79.jpg', '1', '5', '碗', '9'), ('92', '南瓜小米汤', '16', '香甜的南瓜', '/media/products/80.jpg', '1', '5', '碗', '11'), ('93', '胡辣汤', '16', '酸辣口味好吃带感', '/media/products/81.jpg', '1', '4', '碗', '16'), ('94', '小米豇豆稀饭', '15', '小米饭，有味道', '/media/products/82.jpg', '2', '4', '碗', '14'), ('95', '黑米粥', '15', '黑米，健康的米', '/media/products/83.jpg', '1', '5', '碗', '19'), ('96', '冰糖大米绿豆粥', '15', '祛暑神器', '/media/products/84.jpg', '2', '5', '碗', '34'), ('97', '红薯小米粥', '15', '甜甜的红薯，美味', '/media/products/85.jpg', '1', '5', '碗', '28'), ('98', '酸辣鸡蛋汤', '16', '酸辣口味带感', '/media/products/86.jpg', '2', '5', '碗', '17'), ('99', '小米姜豆粥', '15', '小米粥，细腻润滑', '/media/products/87.jpg', '1', '5', '碗', '23'), ('100', '茶鸡蛋', '17', '茶叶煮泡出的鸡蛋，有滋味', '/media/products/88.jpg', '1', '5', '个', '37'), ('101', '馒头', '18', '大碱发面馒头', '/media/products/89.jpg', '1', '5', '个', '24'), ('102', '香葱花卷', '18', '带有味道的香葱~', '/media/products/90.jpg', '1', '4', '个', '37'), ('103', '大米', '18', '香米~', '/media/products/91.jpg', '0.23', '4', '两', '200'), ('104', '糖包', '18', '带有甜糖的面类食品', '/media/products/92.jpg', '1', '5', '个', '19'), ('105', '五香花卷', '18', '五香味道的花卷', '/media/products/93.jpg', '1', '5', '个', '17'), ('106', '捞米饭', '18', '汤汁煮泡出的米饭', '/media/products/94.jpg', '1', '5', '两', '97'), ('107', '肉末花卷', '18', '带有肉末的花卷', '/media/products/95.jpg', '1', '4', '个', '18'), ('108', '芝麻蛋糕', '17', '香美芝麻点缀的蛋糕', '/media/products/96.jpg', '1', '5', '个', '47'), ('109', '卤面', '17', '打卤面', '/media/products/97.jpg', '5', '5', '碗', '37'), ('110', '肉笼', '18', '好吃味美的肉笼', '/media/products/98.jpg', '1', '4', '个', '16'), ('111', '煮鸡蛋', '17', '煮鸡蛋', '/media/products/99.jpg', '0.5', '5', '个', '37'), ('112', '豆沙包', '17', '内含甜豆沙的面类食品', '/media/products/100.jpg', '1', '5', '个', '33'), ('113', '香酥饼', '17', '又香又酥的饼子', '/media/products/101.jpg', '1', '5', '个', '39'), ('114', '油丝卷', '17', '北京小吃油丝卷', '/media/products/102.jpg', '1', '4', '个', '11'), ('115', '鸡丁刀削面', '17', '山西特色刀削面', '/media/products/103.jpg', '5', '4', '个', '16'), ('116', '麻酱卷', '17', '味美', '/media/products/104.jpg', '1', '4', '个', '17'), ('117', '油条', '19', '油锅炸出的油条', '/media/products/105.jpg', '1', '5', '根', '19'), ('118', '菜肉包子', '19', '肉馅菜馅都有', '/media/products/106.jpg', '1', '5', '个', '37'), ('119', '扬州炒饭', '20', '虾仁鸡蛋应有尽有', '/media/products/107.jpg', '5', '5', '份', '24'), ('120', '榨菜肉丝汤', '19', '榨菜可口肉丝香美', '/media/products/108.jpg', '4', '5', '碗', '14'), ('121', '荷包蛋', '19', '煎出的荷包蛋', '/media/products/109.jpg', '1', '5', '个', '41'), ('122', '菜包', '19', '菜包', '/media/products/110.jpg', '1', '4', '个', '16'), ('123', '水饺', '20', '各种馅（味道）', '/media/products/111.jpg', '4', '5', '份', '31'), ('124', '麻球', '19', '黏黏的中间有甜豆沙馅好吃', '/media/products/112.jpg', '1', '5', '个', '31'), ('125', '小酥肉', '21', '香酥脆的小酥肉', '/media/products/41.jpg', '6', '5', '份', '21'), ('126', '鱼香茄子', '21', '酸甜口味鱼香茄子', '/media/products/42.jpg', '3', '5', '份', '400'), ('127', '白萝卜粉条', '21', '美味', '/media/products/43.jpg', '2', '4', '份', '11'), ('128', '白菜豆腐炖粉条', '21', '乱炖好吃美味', '/media/products/44.jpg', '3', '5', '份', '22'), ('129', '烤鸡排', '21', '香酥鸡排', '/media/products/45.jpg', '6', '5', '份', '19'), ('130', '西红柿鸡蛋', '22', '酸甜口味西红柿鸡蛋', '/media/products/46.jpg', '3', '5', '份', '330'), ('131', '豆腐泡馅肉', '22', '豆腐泡鲜美', '/media/products/47.jpg', '4', '5', '份', '24'), ('132', '球菜肉丝', '22', '清淡的菜品', '/media/products/48.jpg', '3', '5', '份', '18'), ('133', '肉片炒茭白', '22', '鲜美的肉片炒茭白', '/media/products/49.jpg', '4', '4', '份', '14'), ('134', '清汤虾干', '22', '鲜美虾干', '/media/products/50.jpg', '5', '4', '份', '19'), ('135', '红烧多味干', '23', '红烧美妙味道', '/media/products/51.jpg', '4', '5', '份', '21'), ('136', '牛心菜', '23', '清淡的牛心菜', '/media/products/52.jpg', '2', '4', '份', '23'), ('137', '炸鸡腿', '23', '炸鸡腿美味', '/media/products/53.jpg', '4', '5', '个', '17'), ('138', '土豆牛肉', '23', '入味的土豆，嫩嫩的牛肉好吃', '/media/products/54.jpg', '5', '4', '份', '26'), ('139', '排骨炒青菜', '23', '排骨清淡入味', '/media/products/55.jpg', '6', '4', '份', '37'), ('140', '红肠炒肉', '24', '哈尔滨红肠不一样的感觉', '/media/products/56.jpg', '5', '5', '份', '17'), ('141', '小豆腐', '24', '开胃菜', '/media/products/57.jpg', '2', '5', '份', '27'), ('142', '糖醋排骨', '24', '酸甜口味的糖醋排骨好吃入味', '/media/products/58.jpg', '6', '5', '份', '14'), ('143', '芙蓉蟹棒', '24', '好吃入口酥嫩', '/media/products/59.jpg', '5', '4', '份', '38'), ('144', '甜不辣', '24', '台湾著名小吃', '/media/products/60.jpg', '5', '5', '份', '41'), ('145', '牛奶', '15', '新鲜牛奶', '/media/products/71.jpg', '2', '5', '杯', '67'), ('146', '小米绿豆粥', '15', '绿豆祛暑', '/media/products/72.jpg', '1', '5', '碗', '41'), ('147', '大米绿豆粥', '15', '绿豆祛暑', '/media/products/73.jpg', '1', '5', '碗', '41'), ('148', '紫菜蛋花汤', '15', '好吃的蛋花', '/media/products/74.jpg', '2', '4', '碗', '34'), ('149', '八宝粥', '15', '各种辅料超级棒', '/media/products/75.jpg', '2', '5', '碗', '74'), ('150', '米汤', '15', '大米熬过剩下的米汤', '/media/products/76.jpg', '1', '5', '碗', '12'), ('151', '玉米汤', '16', '玉米面熬出的汤汁，鲜美', '/media/products/77.jpg', '1', '5', '碗', '16'), ('152', '豆浆', '15', '纯大豆磨出的鲜美的豆浆', '/media/products/78.jpg', '2', '5', '杯', '31'), ('153', '鸡蛋汤', '16', '鸡蛋的味道', '/media/products/79.jpg', '1', '5', '碗', '9'), ('154', '南瓜小米汤', '16', '香甜的南瓜', '/media/products/80.jpg', '1', '5', '碗', '11'), ('155', '胡辣汤', '16', '酸辣口味好吃带感', '/media/products/81.jpg', '1', '4', '碗', '16'), ('156', '小米豇豆稀饭', '15', '小米饭，有味道', '/media/products/82.jpg', '2', '4', '碗', '14'), ('157', '黑米粥', '15', '黑米，健康的米', '/media/products/83.jpg', '1', '5', '碗', '19'), ('158', '冰糖大米绿豆粥', '15', '祛暑神器', '/media/products/84.jpg', '2', '5', '碗', '34'), ('159', '红薯小米粥', '15', '甜甜的红薯，美味', '/media/products/85.jpg', '1', '5', '碗', '28'), ('160', '酸辣鸡蛋汤', '16', '酸辣口味带感', '/media/products/86.jpg', '2', '5', '碗', '17'), ('161', '小米姜豆粥', '15', '小米粥，细腻润滑', '/media/products/87.jpg', '1', '5', '碗', '23'), ('162', '茶鸡蛋', '17', '茶叶煮泡出的鸡蛋，有滋味', '/media/products/88.jpg', '1', '5', '个', '37'), ('163', '馒头', '18', '大碱发面馒头', '/media/products/89.jpg', '1', '5', '个', '24'), ('164', '香葱花卷', '18', '带有味道的香葱~', '/media/products/90.jpg', '1', '4', '个', '37'), ('165', '大米', '18', '香米~', '/media/products/91.jpg', '0.23', '4', '两', '200'), ('166', '糖包', '18', '带有甜糖的面类食品', '/media/products/92.jpg', '1', '5', '个', '19'), ('167', '五香花卷', '18', '五香味道的花卷', '/media/products/93.jpg', '1', '5', '个', '17'), ('168', '捞米饭', '18', '汤汁煮泡出的米饭', '/media/products/94.jpg', '1', '5', '两', '97'), ('169', '肉末花卷', '18', '带有肉末的花卷', '/media/products/95.jpg', '1', '4', '个', '18'), ('170', '芝麻蛋糕', '17', '香美芝麻点缀的蛋糕', '/media/products/96.jpg', '1', '5', '个', '47'), ('171', '卤面', '17', '打卤面', '/media/products/97.jpg', '5', '5', '碗', '37'), ('172', '肉笼', '18', '好吃味美的肉笼', '/media/products/98.jpg', '1', '4', '个', '16'), ('173', '煮鸡蛋', '17', '煮鸡蛋', '/media/products/99.jpg', '0.5', '5', '个', '37'), ('174', '豆沙包', '17', '内含甜豆沙的面类食品', '/media/products/100.jpg', '1', '5', '个', '33'), ('175', '香酥饼', '17', '又香又酥的饼子', '/media/products/101.jpg', '1', '5', '个', '39'), ('176', '油丝卷', '17', '北京小吃油丝卷', '/media/products/102.jpg', '1', '4', '个', '11'), ('177', '鸡丁刀削面', '17', '山西特色刀削面', '/media/products/103.jpg', '5', '4', '个', '16'), ('178', '麻酱卷', '17', '味美', '/media/products/104.jpg', '1', '4', '个', '17'), ('179', '油条', '19', '油锅炸出的油条', '/media/products/105.jpg', '1', '5', '根', '19'), ('180', '菜肉包子', '19', '肉馅菜馅都有', '/media/products/106.jpg', '1', '5', '个', '37'), ('181', '扬州炒饭', '20', '虾仁鸡蛋应有尽有', '/media/products/107.jpg', '5', '5', '份', '24'), ('182', '榨菜肉丝汤', '19', '榨菜可口肉丝香美', '/media/products/108.jpg', '4', '5', '碗', '14'), ('183', '荷包蛋', '19', '煎出的荷包蛋', '/media/products/109.jpg', '1', '5', '个', '41'), ('184', '菜包', '19', '菜包', '/media/products/110.jpg', '1', '4', '个', '16'), ('185', '水饺', '20', '各种馅（味道）', '/media/products/111.jpg', '4', '5', '份', '31'), ('186', '麻球', '19', '黏黏的中间有甜豆沙馅好吃', '/media/products/112.jpg', '1', '5', '个', '31');
COMMIT;

-- ----------------------------
--  Table structure for `canteens_window`
-- ----------------------------
DROP TABLE IF EXISTS `canteens_window`;
CREATE TABLE `canteens_window` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `canteen_id_id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `score` double NOT NULL,
  `sold_num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `canteens_window_06d6ffd0` (`canteen_id_id`),
  CONSTRAINT `canteen_id_id_refs_id_8db3d0a1` FOREIGN KEY (`canteen_id_id`) REFERENCES `canteens_canteen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `canteens_window`
-- ----------------------------
BEGIN;
INSERT INTO `canteens_window` VALUES ('1', '风味炒菜', '1', '/media/windows/1.jpg', '4', '100'), ('2', '湘菜系', '1', '/media/windows/2.jpg', '4', '100'), ('3', '鲁菜', '1', '/media/windows/3.jpg', '5', '46'), ('4', '汤水类', '1', '/media/windows/4.jpg', '5', '46'), ('5', '早餐', '1', '/media/windows/5.jpg', '4', '78'), ('6', '鲁菜风光', '2', '/media/windows/6.jpg', '5', '78'), ('7', '粤菜', '2', '/media/windows/7.jpg', '5', '47'), ('8', '汤水类', '2', '/media/windows/8.jpg', '5', '97'), ('9', '主食', '2', '/media/windows/9.jpg', '4', '64'), ('10', '早餐', '2', '/media/windows/10.jpg', '5', '78'), ('11', '风味小炒', '3', '/media/windows/11.jpg', '5', '66'), ('12', '川菜', '3', '/media/windows/12.jpg', '5', '49'), ('13', '汤水类', '3', '/media/windows/13.jpg', '5', '87'), ('14', '主食', '3', '/media/windows/14.jpg', '5', '99'), ('15', '早餐', '3', '/media/windows/15.jpg', '4', '73');
COMMIT;

-- ----------------------------
--  Table structure for `canteens_windowcomment`
-- ----------------------------
DROP TABLE IF EXISTS `canteens_windowcomment`;
CREATE TABLE `canteens_windowcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id_id` int(11) NOT NULL,
  `window_id_id` int(11) NOT NULL,
  `score` double NOT NULL,
  `comment` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `canteens_windowcomment_583d7d5d` (`customer_id_id`),
  KEY `canteens_windowcomment_e60c40fb` (`window_id_id`),
  CONSTRAINT `customer_id_id_refs_id_28231576` FOREIGN KEY (`customer_id_id`) REFERENCES `customers_customer` (`id`),
  CONSTRAINT `window_id_id_refs_id_4fb428c9` FOREIGN KEY (`window_id_id`) REFERENCES `canteens_window` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `celery_taskmeta`
-- ----------------------------
DROP TABLE IF EXISTS `celery_taskmeta`;
CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_2ff6b945` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `celery_tasksetmeta`
-- ----------------------------
DROP TABLE IF EXISTS `celery_tasksetmeta`;
CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_2ff6b945` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `customers_customer`
-- ----------------------------
DROP TABLE IF EXISTS `customers_customer`;
CREATE TABLE `customers_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT '/media/usericon/default.jpg',
  `password` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `customers_customer`
-- ----------------------------
BEGIN;
INSERT INTO `customers_customer` VALUES ('1', 'testuser@gmail.com', '10010', '测试customer', '/media/usericon/default.jpg', '123', '100', '1sdfasdfas', '1'), ('2', '13301052@bjtu.edu.cn', '18813090635', '延昊南', '/media/usericon/default.jpg', '123', '0', 'bGoKEsTIatX', '1'), ('3', '16301001@bjtu.edu.cn', '13745231690', '王小明', '/media/usericon/default.jpg', '123', '0', 'BvKXOptbRTm', '1'), ('4', 'yhnkb@qq.com', '10086', '食堂管理员', '/media/usericon/default.jpg', '123', '0', 'adfas', '1'), ('9', '13301025@bjtu.edu.cn', '18813090585', 'lll', '/media/usericon/default.jpg', '123', '0', 'ZGlhpgibUmf', '1'), ('10', '14301127@bjtu.edu.cn', '18401606083', '刘美娇', '/media/usericon/default.jpg', '123', '0', 'TPvIAaDUkop', '0');
COMMIT;

-- ----------------------------
--  Table structure for `customers_ship`
-- ----------------------------
DROP TABLE IF EXISTS `customers_ship`;
CREATE TABLE `customers_ship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id_id` int(11) NOT NULL,
  `receiver_name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `dormitory_no` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_ship_583d7d5d` (`customer_id_id`),
  CONSTRAINT `customer_id_id_refs_id_69bd5d28` FOREIGN KEY (`customer_id_id`) REFERENCES `customers_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `customers_ship`
-- ----------------------------
BEGIN;
INSERT INTO `customers_ship` VALUES ('1', '1', '测试receiver', '18813090635', '16', '419', '1号床'), ('7', '2', '延昊南', '18813090635', '16', '419', '北京交通大学16号楼419'), ('10', '2', 'test', '123', '12', '3', 'bjtusss'), ('11', '2', 'test2', '123', '12', '2', 'bjtu333'), ('12', '4', '我', 'sss', '111', '12', 'bjtu'), ('13', '2', '延昊南', '18813090635', '16', '419', '门口'), ('19', '9', 'lyh', '18813009077', '16', '419', '1号床');
COMMIT;

-- ----------------------------
--  Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `django_admin_log`
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES ('1', '2016-04-28 10:27:04', '1', '34', '1', 'every 30 seconds', '1', ''), ('2', '2016-04-28 10:27:13', '1', '31', '1', 'test: every 30 seconds', '1', ''), ('3', '2016-04-28 10:30:01', '1', '31', '1', 'test: every 30 seconds', '2', 'Changed regtask.'), ('4', '2016-04-28 10:32:55', '1', '31', '1', 'test: every 30 seconds', '2', 'No fields changed.'), ('5', '2016-04-28 10:33:29', '1', '31', '1', 'test: every 30 seconds', '3', ''), ('6', '2016-04-28 10:33:54', '1', '31', '2', 'test: every 30 seconds', '1', ''), ('7', '2016-04-28 10:36:53', '1', '31', '2', 'test: every 30 seconds', '2', 'No fields changed.'), ('8', '2016-04-28 10:41:59', '1', '31', '2', 'test: every 30 seconds', '2', 'Changed args.'), ('9', '2016-04-28 10:42:55', '1', '31', '2', 'test: every 30 seconds', '2', 'Changed enabled.'), ('10', '2016-05-01 22:09:09', '1', '31', '4', 'update_heat_products: every 30 seconds', '1', ''), ('11', '2016-05-01 22:09:51', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('12', '2016-05-01 22:12:06', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('13', '2016-05-01 22:12:48', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('14', '2016-05-01 22:13:33', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('15', '2016-05-01 22:14:38', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('16', '2016-05-01 22:15:04', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('17', '2016-05-01 22:15:54', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('18', '2016-05-01 22:16:28', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('19', '2016-05-01 22:17:13', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('20', '2016-05-01 22:29:34', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('21', '2016-05-01 22:31:21', '1', '31', '4', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('22', '2016-05-01 22:31:29', '1', '31', '4', 'update_heat_products: every 30 seconds', '3', ''), ('23', '2016-05-01 22:32:01', '1', '31', '5', 'update_heat_products: every 30 seconds', '1', ''), ('24', '2016-05-01 23:00:50', '1', '31', '5', 'update_heat_products: every 30 seconds', '2', 'Changed enabled.'), ('25', '2016-05-12 09:19:18', '1', '34', '2', 'every day', '1', 'Added.'), ('26', '2016-05-24 22:12:35', '1', '31', '5', 'update_heat_products: every day', '2', 'Changed enabled and interval.'), ('27', '2016-05-24 22:12:50', '1', '31', '5', 'update_heat_products: every 30 seconds', '2', 'Changed interval.'), ('28', '2016-05-24 22:14:30', '1', '31', '5', 'update_heat_products: every day', '2', 'Changed interval.');
COMMIT;

-- ----------------------------
--  Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `django_content_type`
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES ('1', 'log entry', 'admin', 'logentry'), ('2', 'permission', 'auth', 'permission'), ('3', 'group', 'auth', 'group'), ('4', 'user', 'auth', 'user'), ('5', 'content type', 'contenttypes', 'contenttype'), ('6', 'session', 'sessions', 'session'), ('7', 'customer', 'users', 'customer'), ('9', 'ship', 'users', 'ship'), ('10', 'canteen', 'mall', 'canteen'), ('11', 'order', 'mall', 'order'), ('12', 'order record', 'mall', 'orderrecord'), ('13', 'window', 'mall', 'window'), ('14', 'category', 'mall', 'category'), ('15', 'product', 'mall', 'product'), ('16', 'payment record', 'mall', 'paymentrecord'), ('17', 'window comment', 'mall', 'windowcomment'), ('18', 'operator', 'mall', 'operator'), ('19', 'customer', 'customers', 'customer'), ('20', 'ship', 'customers', 'ship'), ('21', 'canteen', 'canteens', 'canteen'), ('22', 'window', 'canteens', 'window'), ('23', 'category', 'canteens', 'category'), ('24', 'product', 'canteens', 'product'), ('25', 'window comment', 'canteens', 'windowcomment'), ('26', 'operator', 'canteens', 'operator'), ('27', 'order', 'orders', 'order'), ('28', 'order record', 'orders', 'orderrecord'), ('29', 'payment record', 'payments', 'paymentrecord'), ('30', 'heat product', 'canteens', 'heatproduct'), ('31', 'periodic task', 'djcelery', 'periodictask'), ('32', 'task state', 'djcelery', 'taskmeta'), ('33', 'saved group result', 'djcelery', 'tasksetmeta'), ('34', 'interval', 'djcelery', 'intervalschedule'), ('35', 'crontab', 'djcelery', 'crontabschedule'), ('36', 'periodic tasks', 'djcelery', 'periodictasks'), ('37', 'worker', 'djcelery', 'workerstate'), ('38', 'task', 'djcelery', 'taskstate'), ('39', 'queue', 'django', 'queue'), ('40', 'message', 'django', 'message');
COMMIT;

-- ----------------------------
--  Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `django_session`
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('0h4lt0xknfglitmjfq4xw122q98usizw', 'NWE2MjlmODE2ZjRmM2ExODYxM2EzNzM0ZjFiNzJmYjFjYWMxYzExNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZTZjOWYwOTY5MjczNzM4NWIyOGI3MDA4MmJmOTg4OGFhZjMwMWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-16 10:51:14'), ('0koj9mlnb1rwcb6ve6oa1529av4l0f5z', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 18:30:34'), ('1b9xacnrsud4nj1cb9yfwcr45t1msv9y', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 18:42:09'), ('1i1oaelhx52ji3hh1pxizcd3iapfufqj', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-30 00:43:16'), ('29muidwz7gk2u7vkmupkp5g4fdczzlc9', 'NWE2MjlmODE2ZjRmM2ExODYxM2EzNzM0ZjFiNzJmYjFjYWMxYzExNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZTZjOWYwOTY5MjczNzM4NWIyOGI3MDA4MmJmOTg4OGFhZjMwMWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-20 19:55:15'), ('2m72o6ncp1hvf3rq5ie6ve7diwcq900l', 'OGNmNzRjYzEyYmYwNThmNWY3ZWI5MjA2MWE2MjE2MDE0ODAyZWYxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-14 00:40:31'), ('2ya4w9qum6yfuydrzaefglqnr6hpjugf', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-19 20:39:11'), ('3m1ep8hvqtv9yrlcfe6wy8yopu7n1724', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-28 16:31:24'), ('3u5akkfzt66w8hxwxgyzsugksf1wve16', 'OTVjYmNlNDJhZDBkNjgxM2IwMTA3ZjAxYzliNDQwZWM2OTdjOGY4OTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg1MDFmMDI0MmUxYmM1MTdiMTdlNjA5YWYxYzMzY2U3MTdhZTAyNTMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-06-15 21:29:23'), ('3x7vvzfqdrpn9mk1qxip7fo5hp414e2l', 'YzEzN2I5ZTg1YTAzZjU4NzQwNTdjMTEwNGFjNmRjMjgwMjRmZDI3Yzp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-06-14 04:16:51'), ('42fnxj4hw350c2o6n84ikh8aqvkhe37b', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 18:43:09'), ('4gk9ep6c68ca04cl7mdn7p2hvectveyp', 'OGNmNzRjYzEyYmYwNThmNWY3ZWI5MjA2MWE2MjE2MDE0ODAyZWYxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-08 13:54:13'), ('4qxrzn8x2guu19sbjy5qbkqxt0om9933', 'NWE2MjlmODE2ZjRmM2ExODYxM2EzNzM0ZjFiNzJmYjFjYWMxYzExNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZTZjOWYwOTY5MjczNzM4NWIyOGI3MDA4MmJmOTg4OGFhZjMwMWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-20 19:40:22'), ('57247q8sljfucrfnyl9ergw4l4la53va', 'NzJjZWZiYjQxZjMzYjkxYzUxNGIxYjkwYmE0ZDhiNWZiNTc2OTIwMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwZGRhMDc2YzZjNWVjZWFhM2FjZDI2YTVkNzNjMzBjMjM2NTQyMjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-05-26 09:14:27'), ('5e3lohpikweq1wzbg8eg1iojqrvzqq8q', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-15 22:41:39'), ('6l2k5pxfbblzptuum62ntgkhfofhzivo', 'NWE2MjlmODE2ZjRmM2ExODYxM2EzNzM0ZjFiNzJmYjFjYWMxYzExNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZTZjOWYwOTY5MjczNzM4NWIyOGI3MDA4MmJmOTg4OGFhZjMwMWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-20 19:41:43'), ('8iia5vme4epi22nmwu9meq1s9pvmspeq', 'OGNmNzRjYzEyYmYwNThmNWY3ZWI5MjA2MWE2MjE2MDE0ODAyZWYxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-08 15:01:34'), ('8xcii72et2qykgv3abv9m156rd74i6hp', 'OGNmNzRjYzEyYmYwNThmNWY3ZWI5MjA2MWE2MjE2MDE0ODAyZWYxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-07 21:18:50'), ('9ipkl2q39xse95stznveybl1ksa6yrqm', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 17:33:26'), ('b83aa3t6i5klddcxdm296mwpx8l8mskk', 'OGNmNzRjYzEyYmYwNThmNWY3ZWI5MjA2MWE2MjE2MDE0ODAyZWYxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-08 13:54:53'), ('b83vcijpfneyc9gsb13rsntyl8t7zph4', 'MGRjMjdiZWJlNTNhMzAxNTU4MjJlNWQ0OWYwMDZiM2E1ZTAyM2Q0Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-06-30 10:55:23'), ('b9mwnr1abwfdjib7qg2ljb1550it2p31', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 18:30:44'), ('bj71q5giofy2g2nen2hemgw19m70jss1', 'MGRjMjdiZWJlNTNhMzAxNTU4MjJlNWQ0OWYwMDZiM2E1ZTAyM2Q0Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-06-16 17:37:37'), ('bustm1g6dymmowte7zl8e0vm7w3pjhd3', 'MGRjMjdiZWJlNTNhMzAxNTU4MjJlNWQ0OWYwMDZiM2E1ZTAyM2Q0Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-06-16 10:36:03'), ('c0n165gggyzmfr3h2gebx9gdv1olq00d', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 18:29:53'), ('d002gc287mxsc3qxbugdc9eqn2m0dl2o', 'NWE2MjlmODE2ZjRmM2ExODYxM2EzNzM0ZjFiNzJmYjFjYWMxYzExNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZTZjOWYwOTY5MjczNzM4NWIyOGI3MDA4MmJmOTg4OGFhZjMwMWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-07-17 19:23:59'), ('d6rq5rtehp491e8ljt5heuovip8tt4qr', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-16 08:37:11'), ('dyec53v7aytmlalfvv2rt2zzqlljwyuu', 'ZDUwOWVkNDIxOGJiYjQyNzU5MzI2OTQzMzc1OWI4ZWViZWM2NmExOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YmZiNGUxN2YwYjdiNDlhNWEyNDQxZjQwNzYwMDA4NTIxMzFiZmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2016-06-15 23:00:59'), ('edlekcz3gszar77fu3ahnsg1qad47dnh', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-16 00:25:56'), ('ela8n483tt27rkr0sm49ltt34ve3jlfg', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-07-18 20:50:29'), ('fcy0r95ywwlcaqb3n7lroqylvt0kw5j6', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 17:46:49'), ('g4v80f97eorojei7gy8s7fg31dxoae20', 'OGNmNzRjYzEyYmYwNThmNWY3ZWI5MjA2MWE2MjE2MDE0ODAyZWYxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-08 13:56:30'), ('gkcdp7hmi7mtl9nw3po6g0v4vo40gqqq', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-19 16:24:20'), ('glwper5d0qp3omyzdx2n9n1f1zxa1w78', 'NWE2MjlmODE2ZjRmM2ExODYxM2EzNzM0ZjFiNzJmYjFjYWMxYzExNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZTZjOWYwOTY5MjczNzM4NWIyOGI3MDA4MmJmOTg4OGFhZjMwMWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-20 19:46:44'), ('h1u6aubx1zsojn7qooa0ngdm1d69bef6', 'Yjk3ZjU3NjFjMjMzMWQxOTk2NzY1MGU4YWUwZTc2Y2NiOTQ1NDJkYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZkNzI0ZjNmNDcyMjY3YTZhM2NiNGFkM2I1NDBlNGQ1ZjkyYmRmNTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2016-06-16 10:33:50'), ('itkgj93qd8ebflmrgqkk3wf25cd694j8', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 18:23:18'), ('joljpk7dubhxa9o3oq7avfd8y3ogx1h2', 'OGNmNzRjYzEyYmYwNThmNWY3ZWI5MjA2MWE2MjE2MDE0ODAyZWYxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-08 13:36:22'), ('jsndfzm4m5mh0jaz7htwfcnk206iqf6l', 'MTQzNGJjMWZiNTFlYzk4ZjYzYWQ0ZmVlZmZmM2UwNGNmNGE1Njg2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk3YmM5ZjEyMmMyMjZjMDJjYzc3NDc1YmQwNGEwNGQ3MWQ2ZThjOGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5In0=', '2016-06-30 10:46:55'), ('k18f82h9ylj62pdv8wda9mvd2fqidlyr', 'OTVjYmNlNDJhZDBkNjgxM2IwMTA3ZjAxYzliNDQwZWM2OTdjOGY4OTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg1MDFmMDI0MmUxYmM1MTdiMTdlNjA5YWYxYzMzY2U3MTdhZTAyNTMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-06-15 20:25:23'), ('ksg2cu9lrlkyl7q8wcwdki6dtfpgal41', 'ODljZmUwYzhkMTY1ZTZlYmRhZmRhODVlNDJjZWFlOTE5NzE5YjMxNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2016-05-12 09:06:27'), ('kt01l6a2qvug506pbtyarijt9hj4q15t', 'ODljZmUwYzhkMTY1ZTZlYmRhZmRhODVlNDJjZWFlOTE5NzE5YjMxNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2016-05-20 14:10:18'), ('l23vgyacgyfnwb86nv53m6v8qjmiin8y', 'NWE2MjlmODE2ZjRmM2ExODYxM2EzNzM0ZjFiNzJmYjFjYWMxYzExNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZTZjOWYwOTY5MjczNzM4NWIyOGI3MDA4MmJmOTg4OGFhZjMwMWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-16 08:27:12'), ('l7f6huzl582gbvuimllyokb3l5nmrr5v', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-27 19:10:37'), ('l7hwnli96zkzgxiq410pb45wst6u3mr7', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-16 00:26:36'), ('la9i4gg4ht7ln2mhn109v5m7ivw9582c', 'ZWI2NWRhODk2ZTlhMWQzYmZjNjNiZDU2ZjdiMmE3ZTk4NzQ0NmE0ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU2MWFmODAxMTFmNmVkOTU0OTQxNTdjN2FlMmJiM2MzM2QxOTQ3OWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-05-29 12:21:01'), ('lt2u32cc37qyb1jyu4fcdycxrwzghngg', 'M2NhYzNjZjY4MDc2YWY3NDZkZTlmMGJkZDA4MjZlNTRlYjAzZmY3MTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg1MDFmMDI0MmUxYmM1MTdiMTdlNjA5YWYxYzMzY2U3MTdhZTAyNTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-15 21:09:36'), ('m0y23i02nnue5kzn355ywn0y5h3rnjn0', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-16 09:49:36'), ('m6g3gzzecaoa9ymst13l2iuxwp2ufue6', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 17:48:30'), ('my332rquhmjnjd6dfy2t2aszviz8qxhs', 'OGNmNzRjYzEyYmYwNThmNWY3ZWI5MjA2MWE2MjE2MDE0ODAyZWYxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-14 17:01:41'), ('o1rrphvnwr9nthipk86t33dkwwxj6k6d', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 17:56:45'), ('obz307fumcq0lq6v3uiu9bwjvkvf5svg', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-19 16:24:20'), ('p3wcwg2mfclfcwvtv6uts6yymskrmpzh', 'OGNmNzRjYzEyYmYwNThmNWY3ZWI5MjA2MWE2MjE2MDE0ODAyZWYxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-13 22:15:23'), ('rdh8iempuounyhnly7w05pfnumdv7l15', 'OGNmNzRjYzEyYmYwNThmNWY3ZWI5MjA2MWE2MjE2MDE0ODAyZWYxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlZDc2NjYwYTNlYTU3ZjdkMTFmMzE5M2E0NGViYjk1N2U3OWUzNGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-08 14:38:18'), ('rii8ozxirrn6ralb6flfwdce6lxlq1ju', 'OTVjYmNlNDJhZDBkNjgxM2IwMTA3ZjAxYzliNDQwZWM2OTdjOGY4OTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg1MDFmMDI0MmUxYmM1MTdiMTdlNjA5YWYxYzMzY2U3MTdhZTAyNTMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-06-15 21:06:11'), ('t6xi3947zhxi6pieooymd6zxk0bvmx8n', 'NGE0MjY2ZmJlYmZkNzAzYjBkN2NjMDM1NTdkYTg0ZjY1YTBjYjQ1Nzp7fQ==', '2016-05-18 10:28:24'), ('tvf0z292lr4ohapbsqyaenbdzan7d2nb', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 18:30:20'), ('vfnzfpcl4t5gi67je1p31mnpjh9cvtev', 'MGRjMjdiZWJlNTNhMzAxNTU4MjJlNWQ0OWYwMDZiM2E1ZTAyM2Q0Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-06-29 20:52:58'), ('wnbgbwcmirey7pmbi76jgewxa4xna8a8', 'M2NhYzNjZjY4MDc2YWY3NDZkZTlmMGJkZDA4MjZlNTRlYjAzZmY3MTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg1MDFmMDI0MmUxYmM1MTdiMTdlNjA5YWYxYzMzY2U3MTdhZTAyNTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-15 13:20:35'), ('x26eo7kxbwi2z6ucm9647sj297o77nui', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-16 08:25:57'), ('xolmiz37qzbm0ap6cafp1kts7e4r6f6n', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-27 19:10:37'), ('yy86ubbh40a7p06lfkkc0h6fy4oprgtn', 'NDA4ZDNiZmEzNTk0NTU2YzQ3YWI3NWFlNWY2YzZmMmU1YTExNmI3Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwNWRlMWY4ZDU0NjQwMjY0MTY3ZDcyNTVkYzhlZDJiYjI2Mzc3OWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-07 21:03:45'), ('z7hi1kane2u9ikxmqff8siazi4jy5prj', 'Yzk1ZTE4NTM5MTU2NzRhM2JkOGMwMjJhMDU2OTI2YzBlNTJlOWY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwMDljYTIxODUyMzQyMGY5MGRiMmY2ZGRlZjRlNjJjNDkwMTMwYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-14 18:42:38'), ('zai6i0si04i451mac5wpibmuyc1yrfw5', 'OWY3NjcyM2QxMWMxYWJhZWQ3N2ZlZWQ2OTE1NzFlN2I5ZjgzNjdkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzYwZGY1NWE2OTNjOTQ5NjdmYjkxMmEyNGY5YzI3Njc0NmM5NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-06-29 21:59:03'), ('zizk5de7m92bjzzfl175f89to15w1s5w', 'NWE2MjlmODE2ZjRmM2ExODYxM2EzNzM0ZjFiNzJmYjFjYWMxYzExNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZTZjOWYwOTY5MjczNzM4NWIyOGI3MDA4MmJmOTg4OGFhZjMwMWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-16 10:15:57');
COMMIT;

-- ----------------------------
--  Table structure for `djcelery_crontabschedule`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_crontabschedule`;
CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `djcelery_crontabschedule`
-- ----------------------------
BEGIN;
INSERT INTO `djcelery_crontabschedule` VALUES ('1', '0', '4', '*', '*', '*');
COMMIT;

-- ----------------------------
--  Table structure for `djcelery_intervalschedule`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_intervalschedule`;
CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `djcelery_intervalschedule`
-- ----------------------------
BEGIN;
INSERT INTO `djcelery_intervalschedule` VALUES ('1', '30', 'seconds'), ('2', '1', 'days');
COMMIT;

-- ----------------------------
--  Table structure for `djcelery_periodictask`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictask`;
CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `interval_id` int(11) DEFAULT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictask_8905f60d` (`interval_id`),
  KEY `djcelery_periodictask_7280124f` (`crontab_id`),
  CONSTRAINT `crontab_id_refs_id_286da0d1` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`),
  CONSTRAINT `interval_id_refs_id_1829f358` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `djcelery_periodictask`
-- ----------------------------
BEGIN;
INSERT INTO `djcelery_periodictask` VALUES ('2', 'test', 'icelery.tasks._do_kground_work', '1', null, '[\"Celery Auto\"]', '{}', null, null, null, null, '0', null, '5', '2016-04-28 10:42:58', ''), ('3', 'celery.backend_cleanup', 'celery.backend_cleanup', null, '1', '[]', '{}', null, null, null, null, '1', '2016-07-12 20:00:00', '46', '2016-07-13 04:00:40', ''), ('5', 'update_heat_products', 'icelery.tasks.collect_heat_products', '2', null, '[]', '{}', null, null, null, null, '1', '2016-07-12 10:32:31', '55', '2016-07-12 18:33:46', '');
COMMIT;

-- ----------------------------
--  Table structure for `djcelery_periodictasks`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictasks`;
CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `djcelery_periodictasks`
-- ----------------------------
BEGIN;
INSERT INTO `djcelery_periodictasks` VALUES ('1', '2016-05-30 18:32:31');
COMMIT;

-- ----------------------------
--  Table structure for `djcelery_taskstate`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_taskstate`;
CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_5654bf12` (`state`),
  KEY `djcelery_taskstate_4da47e07` (`name`),
  KEY `djcelery_taskstate_abaacd02` (`tstamp`),
  KEY `djcelery_taskstate_cac6a03d` (`worker_id`),
  KEY `djcelery_taskstate_2ff6b945` (`hidden`),
  CONSTRAINT `worker_id_refs_id_6fd8ce95` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `djcelery_workerstate`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_workerstate`;
CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_11e400ef` (`last_heartbeat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `djkombu_message`
-- ----------------------------
DROP TABLE IF EXISTS `djkombu_message`;
CREATE TABLE `djkombu_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visible` tinyint(1) NOT NULL,
  `sent_at` datetime DEFAULT NULL,
  `payload` longtext NOT NULL,
  `queue_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djkombu_message_5907bb86` (`visible`),
  KEY `djkombu_message_bc4c5ddc` (`sent_at`),
  KEY `djkombu_message_c80a9385` (`queue_id`),
  CONSTRAINT `queue_id_refs_id_88980102` FOREIGN KEY (`queue_id`) REFERENCES `djkombu_queue` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `djkombu_queue`
-- ----------------------------
DROP TABLE IF EXISTS `djkombu_queue`;
CREATE TABLE `djkombu_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `orders_order`
-- ----------------------------
DROP TABLE IF EXISTS `orders_order`;
CREATE TABLE `orders_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id_id` int(11) NOT NULL,
  `canteen_id_id` int(11) NOT NULL,
  `window_id_id` int(11) NOT NULL,
  `combo_id` varchar(255) NOT NULL,
  `nowa_id` int(11) NOT NULL,
  `product_list` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `ship_price` double NOT NULL,
  `promotion` double NOT NULL,
  `total_price` double NOT NULL,
  `if_paid` int(11) NOT NULL,
  `if_self_help` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `expect_time` int(11) NOT NULL,
  `leave_msg` varchar(255) NOT NULL,
  `qr_storage_pre` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_583d7d5d` (`customer_id_id`),
  KEY `orders_order_06d6ffd0` (`canteen_id_id`),
  KEY `orders_order_e60c40fb` (`window_id_id`),
  KEY `orders_order_3ac8a70a` (`address_id`),
  CONSTRAINT `address_id_refs_id_390431b2` FOREIGN KEY (`address_id`) REFERENCES `customers_ship` (`id`),
  CONSTRAINT `canteen_id_id_refs_id_cdaa2e03` FOREIGN KEY (`canteen_id_id`) REFERENCES `canteens_canteen` (`id`),
  CONSTRAINT `customer_id_id_refs_id_514844a4` FOREIGN KEY (`customer_id_id`) REFERENCES `customers_customer` (`id`),
  CONSTRAINT `window_id_id_refs_id_040b7f46` FOREIGN KEY (`window_id_id`) REFERENCES `canteens_window` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `orders_order`
-- ----------------------------
BEGIN;
INSERT INTO `orders_order` VALUES ('81', '2', '1', '4', '1_2_0', '0', '38-2_46-1', '3', '0', '0', '3', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '7', '2016-06-02 10:02:36'), ('82', '2', '1', '1', '1_2_0', '0', '1-1', '10', '0', '0', '10', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '7', '2016-06-02 10:19:28'), ('83', '2', '1', '3', '1_2_0', '0', '21-1_28-1', '4', '0', '0', '4', '0', '0', '1', '59', '', 'api.byway.net.cn/media/qrcode/', '7', '2016-06-02 10:39:08'), ('84', '2', '1', '2', '1_2_0', '0', '11-1_13-1', '5', '0', '0', '5', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-02 19:09:00'), ('85', '2', '1', '2', '1_2_0', '0', '11-1_13-1', '5', '0', '0', '5', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-02 19:09:51'), ('86', '2', '1', '2', '1_2_0', '0', '11-1_13-1', '5', '0', '0', '5', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-02 19:34:27'), ('87', '2', '1', '2', '1_2_0', '0', '11-1_13-1', '5', '0', '0', '5', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-02 19:35:26'), ('88', '3', '1', '1', '1_3_0', '0', '2-1_4-1', '24', '0', '0', '24', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '5', '2016-06-05 15:39:16'), ('89', '2', '1', '3', '1_2_0', '0', '21-1_24-2', '6', '0', '0', '6', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-05 16:24:57'), ('90', '2', '1', '3', '1_2_0', '0', '21-1_24-2', '6', '0', '0', '6', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-05 16:25:07'), ('91', '2', '1', '3', '1_2_0', '0', '21-1_24-2', '6', '0', '0', '6', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-05 16:27:10'), ('92', '2', '1', '2', '1_2_0', '0', '11-1_13-1', '5', '0', '0', '5', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-05 16:51:53'), ('93', '2', '1', '2', '1_2_0', '0', '11-1_13-1', '5', '0', '0', '5', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-05 20:21:08'), ('94', '2', '1', '2', '1_2_0', '0', '11-1_13-1', '5', '0', '0', '5', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-05 20:22:44'), ('95', '2', '1', '3', '1_2_0', '0', '21-1_24-2_28-1', '8', '0', '0', '8', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-05 20:34:21'), ('96', '4', '1', '1', '1_4_0', '0', '1-3', '30', '0', '0', '30', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-06 16:29:41'), ('97', '2', '1', '1', '1_2_0', '0', '1-3', '30', '0', '0', '30', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '3', '2016-06-06 17:32:58'), ('98', '2', '1', '1', '1_2_0', '0', '1-3', '30', '0', '0', '30', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '0', '2016-06-06 17:34:09'), ('99', '2', '1', '4', '1_2_0', '0', '38-1_46-1', '2', '0', '0', '2', '0', '0', '1', '60', '', 'api.byway.net.cn/media/qrcode/', '3', '2016-06-06 17:34:38');
COMMIT;

-- ----------------------------
--  Table structure for `orders_orderproduct`
-- ----------------------------
DROP TABLE IF EXISTS `orders_orderproduct`;
CREATE TABLE `orders_orderproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id_id` int(11) NOT NULL,
  `product_id_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_orderproduct_1b89fe59` (`order_id_id`),
  KEY `orders_orderproduct_10a0e6a0` (`product_id_id`),
  CONSTRAINT `order_id_id_refs_id_fddb4eef` FOREIGN KEY (`order_id_id`) REFERENCES `orders_order` (`id`),
  CONSTRAINT `product_id_id_refs_id_e41bac36` FOREIGN KEY (`product_id_id`) REFERENCES `canteens_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `orders_orderproduct`
-- ----------------------------
BEGIN;
INSERT INTO `orders_orderproduct` VALUES ('139', '81', '38', '2'), ('140', '81', '46', '1'), ('141', '82', '1', '1'), ('142', '83', '21', '1'), ('143', '83', '28', '1'), ('144', '84', '11', '1'), ('145', '84', '13', '1'), ('146', '85', '11', '1'), ('147', '85', '13', '1'), ('148', '86', '11', '1'), ('149', '86', '13', '1'), ('150', '87', '11', '1'), ('151', '87', '13', '1'), ('152', '88', '2', '1'), ('153', '88', '4', '1'), ('154', '89', '21', '1'), ('155', '89', '24', '2'), ('156', '90', '21', '1'), ('157', '90', '24', '2'), ('158', '91', '21', '1'), ('159', '91', '24', '2'), ('160', '92', '11', '1'), ('161', '92', '13', '1'), ('162', '93', '11', '1'), ('163', '93', '13', '1'), ('164', '94', '11', '1'), ('165', '94', '13', '1'), ('166', '95', '21', '1'), ('167', '95', '24', '2'), ('168', '95', '28', '1'), ('169', '96', '1', '3'), ('170', '97', '1', '3'), ('171', '98', '1', '3'), ('172', '99', '38', '1'), ('173', '99', '46', '1');
COMMIT;

-- ----------------------------
--  Table structure for `orders_orderrecord`
-- ----------------------------
DROP TABLE IF EXISTS `orders_orderrecord`;
CREATE TABLE `orders_orderrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `payment_time` datetime DEFAULT NULL,
  `receive_time` datetime DEFAULT NULL,
  `push_time` datetime DEFAULT NULL,
  `pull_time` datetime DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `deliver_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_orderrecord_1b89fe59` (`order_id_id`),
  KEY `orders_orderrecord_8c20921b` (`deliver_id_id`),
  CONSTRAINT `deliver_id_id_refs_id_a56449fa` FOREIGN KEY (`deliver_id_id`) REFERENCES `customers_customer` (`id`),
  CONSTRAINT `order_id_id_refs_id_8c03aa1a` FOREIGN KEY (`order_id_id`) REFERENCES `orders_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `orders_orderrecord`
-- ----------------------------
BEGIN;
INSERT INTO `orders_orderrecord` VALUES ('80', '81', '2016-06-02 10:02:36', null, '2016-06-02 10:05:23', '2016-06-02 10:05:59', '2016-06-02 10:06:24', '2016-06-02 10:06:24', '2016-06-02 10:07:51', '3'), ('81', '82', '2016-06-02 10:19:28', null, '2016-06-02 10:19:54', '2016-06-02 10:20:08', '2016-06-05 21:11:38', '2016-06-05 21:11:38', '2016-06-05 21:12:53', '2'), ('82', '83', '2016-06-02 10:39:08', null, '2016-06-05 21:22:43', '2016-06-05 21:23:02', '2016-06-05 21:23:20', '2016-06-05 21:23:20', '2016-06-05 21:23:37', '2'), ('83', '84', '2016-06-02 19:09:00', null, null, null, null, null, null, null), ('84', '85', '2016-06-02 19:09:51', null, null, null, null, null, null, null), ('85', '86', '2016-06-02 19:34:27', null, null, null, null, null, null, null), ('86', '87', '2016-06-02 19:35:26', null, null, null, null, null, null, null), ('87', '88', '2016-06-05 15:39:16', null, '2016-06-06 15:36:17', '2016-06-06 21:23:14', '2016-06-15 23:43:18', '2016-06-15 23:43:18', null, '2'), ('88', '89', '2016-06-05 16:24:57', null, null, null, null, null, null, null), ('89', '90', '2016-06-05 16:25:07', null, null, null, null, null, null, null), ('90', '91', '2016-06-05 16:27:10', null, null, null, null, null, null, null), ('91', '92', '2016-06-05 16:51:53', null, null, null, null, null, null, null), ('92', '93', '2016-06-05 20:21:08', null, null, null, null, null, null, null), ('93', '94', '2016-06-05 20:22:44', null, null, null, null, null, null, null), ('94', '95', '2016-06-05 20:34:21', null, null, null, null, null, null, null), ('95', '96', '2016-06-06 16:29:41', null, null, null, null, null, null, null), ('96', '97', '2016-06-06 17:32:58', null, '2016-06-06 21:23:10', null, null, null, null, null), ('97', '98', '2016-06-06 17:34:09', null, null, null, null, null, null, null), ('98', '99', '2016-06-06 17:34:38', null, '2016-06-06 21:23:25', null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `payments_paymentrecord`
-- ----------------------------
DROP TABLE IF EXISTS `payments_paymentrecord`;
CREATE TABLE `payments_paymentrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id_id` int(11) NOT NULL,
  `order_id_id` int(11) NOT NULL,
  `pay_way` varchar(50) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id_id` (`order_id_id`),
  KEY `payments_paymentrecord_583d7d5d` (`customer_id_id`),
  CONSTRAINT `customer_id_id_refs_id_591ac5a4` FOREIGN KEY (`customer_id_id`) REFERENCES `customers_customer` (`id`),
  CONSTRAINT `order_id_id_refs_id_4edce9e6` FOREIGN KEY (`order_id_id`) REFERENCES `orders_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

SET FOREIGN_KEY_CHECKS = 1;
