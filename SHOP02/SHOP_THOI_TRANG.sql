/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : shop_thoi_trang

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2017-01-16 13:25:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id_banner` bigint(20) NOT NULL,
  `name_banner` char(20) default NULL,
  `date` char(20) default NULL,
  `image` char(20) NOT NULL,
  `description` char(20) default NULL,
  PRIMARY KEY  (`id_banner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id_cate` bigint(20) NOT NULL,
  `name_cate` varchar(50) default NULL,
  `slug_cate` char(50) default NULL,
  `id_par_cate` bigint(20) NOT NULL,
  PRIMARY KEY  (`id_cate`),
  KEY `id_par_cate` (`id_par_cate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Áo sơmi', 'ao-somi-nam', '1');
INSERT INTO `categories` VALUES ('2', 'Áo sơmi', 'ao-somi-nu', '2');
INSERT INTO `categories` VALUES ('3', 'Áo thun', 'ao-thun-nam', '1');
INSERT INTO `categories` VALUES ('4', 'Áo thun', 'ao-thun-nu', '2');
INSERT INTO `categories` VALUES ('5', 'Áo thun', 'ao-thun-tre-em', '3');
INSERT INTO `categories` VALUES ('6', 'Áo khoác', 'ao-khoac-nam', '1');
INSERT INTO `categories` VALUES ('7', 'Áo khoác', 'ao-khoac-nu', '2');
INSERT INTO `categories` VALUES ('8', 'Quần jean', 'quan-jean-nam', '1');
INSERT INTO `categories` VALUES ('9', 'Quần jean', 'quan-jean-nu', '2');
INSERT INTO `categories` VALUES ('10', 'Quần jean', 'quan-jean-tre-em', '3');
INSERT INTO `categories` VALUES ('11', 'Quần tây', 'quan-tay-nam', '1');
INSERT INTO `categories` VALUES ('12', 'Quần short', 'quan-short', '2');
INSERT INTO `categories` VALUES ('13', 'Váy', 'vay', '2');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id_customer` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `name_customer` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `phone` char(20) NOT NULL,
  PRIMARY KEY  (`id_customer`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id_employ` bigint(20) NOT NULL,
  `id_level` bigint(20) NOT NULL,
  `name_employ` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `phone` char(20) default NULL,
  `sex` tinyint(1) default NULL,
  `image` char(50) NOT NULL,
  `username` char(20) NOT NULL,
  PRIMARY KEY  (`id_employ`),
  KEY `id_level` (`id_level`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('1', '1', 'Đinh Thành Nhân', '', '0923850210', '1', 'Chua-co', 'thanhnhan2605');
INSERT INTO `employees` VALUES ('2', '2', '1311060126', '', '', '1', 'Chua-co', '1311060126');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id_fb` bigint(20) NOT NULL,
  `title_fb` char(20) default NULL,
  `content_fb` char(20) NOT NULL,
  `email` char(20) NOT NULL,
  PRIMARY KEY  (`id_fb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for levels
-- ----------------------------
DROP TABLE IF EXISTS `levels`;
CREATE TABLE `levels` (
  `id_level` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` char(20) default NULL,
  PRIMARY KEY  (`id_level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of levels
-- ----------------------------
INSERT INTO `levels` VALUES ('1', 'Quản lý shop', 'Quản lý toàn bộ hệ t');
INSERT INTO `levels` VALUES ('2', 'Nhân viên đăng bài', 'Chỉ được quyền đăng');
INSERT INTO `levels` VALUES ('3', 'Nhân viên bán hàng', 'Phụ trách xem xét, k');

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `id_order` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `quatity` char(20) NOT NULL,
  `unit_price` char(20) default NULL,
  PRIMARY KEY  (`id_order`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------
INSERT INTO `orderdetails` VALUES ('1482294830808', '7', '1', '200000.0');
INSERT INTO `orderdetails` VALUES ('1484287969849', '6', '2', '200000.0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id_order` bigint(20) NOT NULL,
  `id_customer` bigint(20) NOT NULL,
  `date` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `total` char(20) default NULL,
  PRIMARY KEY  (`id_order`),
  KEY `id_customer` (`id_customer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1255', '1', '2016-12-21 09:22:41', '1', '100.0');
INSERT INTO `orders` VALUES ('1225', '1', '2016-12-21 09:23:06', '1', '100.0');
INSERT INTO `orders` VALUES ('1482294830808', '0', '2016-12-21 11:33:50', '0', '200000.0');
INSERT INTO `orders` VALUES ('1484287969849', '0', '2017-01-13 13:12:49', '0', '400000.0');

-- ----------------------------
-- Table structure for parent_categories
-- ----------------------------
DROP TABLE IF EXISTS `parent_categories`;
CREATE TABLE `parent_categories` (
  `id_par_cate` bigint(20) NOT NULL,
  `name_par_cate` varchar(50) NOT NULL,
  `slug_par_cate` char(50) default NULL,
  PRIMARY KEY  (`id_par_cate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parent_categories
-- ----------------------------
INSERT INTO `parent_categories` VALUES ('1', 'Sản phẩm nữ', 'san-pham-nu');
INSERT INTO `parent_categories` VALUES ('2', 'Sản phẩm nam', 'san-pham-nam');
INSERT INTO `parent_categories` VALUES ('3', 'Sản phẩm trẻ em', 'san-pham-tre-em');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id_post` bigint(20) NOT NULL,
  `id_employ` bigint(20) NOT NULL,
  `title_post` varchar(50) NOT NULL,
  `content_post` text NOT NULL,
  `slug_post` char(20) default NULL,
  PRIMARY KEY  (`id_post`),
  KEY `id_employ` (`id_employ`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id_product` bigint(20) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `price` decimal(10,0) default NULL,
  `slug_product` char(50) default NULL,
  `image` char(50) default NULL,
  `description` text,
  `id_sup` bigint(20) NOT NULL,
  `id_cate` bigint(20) NOT NULL,
  `date_update` datetime NOT NULL,
  PRIMARY KEY  (`id_product`),
  UNIQUE KEY `id_product` (`id_product`),
  KEY `id_sup` (`id_sup`),
  KEY `id_cate` (`id_cate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Áo sơ mi trắng', '200000', 'so-mi-trang-01', 'somi01.jpg', 'Áo thời trang', '1', '1', '2016-11-30 00:00:00');
INSERT INTO `products` VALUES ('2', 'Áo sơ mi đen', '200000', 'so-mi-den-01', 'somi02.jpg', 'Áo thời trang', '1', '1', '2016-11-29 00:00:00');
INSERT INTO `products` VALUES ('3', 'Áo sơ mi xanh', '200000', 'so-mi-xanh-01', 'somi02.jpg', 'Áo thời trang', '1', '1', '2016-03-28 00:00:00');
INSERT INTO `products` VALUES ('4', 'Áo sơ mi vàng', '200000', 'so-mi-vang-01', 'somi02.jpg', 'Áo thời trang', '2', '2', '2016-12-01 00:00:00');
INSERT INTO `products` VALUES ('5', 'Áo sơ mi hồng', '200000', 'so-mi-hong-01', 'somi02.jpg', 'Áo thời trang', '2', '3', '2016-10-29 00:00:00');
INSERT INTO `products` VALUES ('6', 'Áo sơ mi tím', '200000', 'so-mi-tim-01', 'somi02.jpg', 'Áo thời trang', '3', '3', '2016-12-17 00:00:00');
INSERT INTO `products` VALUES ('7', 'Áo sơ mi đỏ', '200000', 'so-mi-do-01', 'somi02.jpg', 'Áo thời trang', '3', '3', '2016-12-20 00:00:00');
INSERT INTO `products` VALUES ('8', 'Áo sơ mi nâu', '200000', 'so-mi-nau-01', 'somi02.jpg', 'Áo thời trang', '4', '3', '2016-08-10 00:00:00');
INSERT INTO `products` VALUES ('9', 'Áo sơ mi cam', '200000', 'so-mi-cam-01', 'somi02.jpg', 'Áo thời trang', '4', '3', '2016-07-12 00:00:00');
INSERT INTO `products` VALUES ('10', 'Áo sơ mi xanh nhạt', '200000', 'so-mi-xanh-nhat-01', 'somi02.jpg', 'Áo thời trang', '5', '3', '2016-12-11 00:00:00');
INSERT INTO `products` VALUES ('11', 'Áo sơ mi hồng phấn', '200000', 'so-mi-hong-phan-01', 'somi02.jpg', 'Áo thời trang', '5', '3', '2016-12-15 00:00:00');

-- ----------------------------
-- Table structure for supplies
-- ----------------------------
DROP TABLE IF EXISTS `supplies`;
CREATE TABLE `supplies` (
  `id_sup` bigint(20) NOT NULL,
  `name_sup` varchar(50) NOT NULL,
  `address_sup` text,
  `phone` char(20) NOT NULL,
  `slug_sup` char(50) default NULL,
  PRIMARY KEY  (`id_sup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplies
-- ----------------------------
INSERT INTO `supplies` VALUES ('1', 'Hollister', '', '123', 'san-pham-hollister');
INSERT INTO `supplies` VALUES ('2', 'Nike', '', '124', 'san-pham-nike');
INSERT INTO `supplies` VALUES ('3', 'Addidas', '', '125', 'san-pham-addidas');
INSERT INTO `supplies` VALUES ('4', 'Converse', '', '126', 'san-pham-converse');
INSERT INTO `supplies` VALUES ('5', 'Lascote', '', '127', 'san-pham-lascote');
INSERT INTO `supplies` VALUES ('6', 'H&M', '', '128', 'san-pham-h-m');
INSERT INTO `supplies` VALUES ('7', 'Zara', '', '129', 'san-pham-zara');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` bigint(20) NOT NULL,
  `username` char(20) NOT NULL,
  `password` char(20) NOT NULL,
  `email` char(50) NOT NULL,
  PRIMARY KEY  (`id_user`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'khachhang01', 'khachhang01', 'khachhang01@gmail.com');
INSERT INTO `users` VALUES ('2', 'khachhang02', 'khachhang02', 'khachhang02@gmail.com');
INSERT INTO `users` VALUES ('3', 'khachhang03', 'khachhang03', 'khachhang03@gmail.com');
INSERT INTO `users` VALUES ('1484287837323', 'Ã¡dasd', 'adadaadad', 'Ã¡dada');
INSERT INTO `users` VALUES ('1484287872779', 'mmmmmmm', 'mmmmmmmmm', 'mmmmmmmmm');

-- ----------------------------
-- Table structure for user_staff
-- ----------------------------
DROP TABLE IF EXISTS `user_staff`;
CREATE TABLE `user_staff` (
  `username` char(20) NOT NULL,
  `password` char(20) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_staff
-- ----------------------------
INSERT INTO `user_staff` VALUES ('thanhnhan2605', 'abc123');
INSERT INTO `user_staff` VALUES ('1311060126', '1311060126');
INSERT INTO `user_staff` VALUES ('hutech2016', 'khoacntt');
