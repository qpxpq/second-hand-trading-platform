/*
 Navicat Premium Data Transfer

 Source Server         : itcast
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : keshe20194071102

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 18/11/2021 17:52:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `order_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `product_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buynum` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`, `product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('49644959-e00f-483d-8bc7-fbc846ecb4fe', '1', 71);
INSERT INTO `orderitem` VALUES ('49644959-e00f-483d-8bc7-fbc846ecb4fe', '12', 1);
INSERT INTO `orderitem` VALUES ('49644959-e00f-483d-8bc7-fbc846ecb4fe', '13', 8);
INSERT INTO `orderitem` VALUES ('867fbbc4-6a78-4572-95df-7d49e8235f22', '1', 1);
INSERT INTO `orderitem` VALUES ('f7d8932a-78a5-4628-acc8-282e09e86808', '11', 1);
INSERT INTO `orderitem` VALUES ('f7d8932a-78a5-4628-acc8-282e09e86808', '12', 2);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` double NULL DEFAULT NULL,
  `receiverAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiverName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiverPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paystate` int(0) NULL DEFAULT 0,
  `ordertime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('49644959-e00f-483d-8bc7-fbc846ecb4fe', 921, '黑龙江省大庆市', '111111', '111111', 1, '2021-11-18 13:43:34', 2);
INSERT INTO `orders` VALUES ('867fbbc4-6a78-4572-95df-7d49e8235f22', 11, '黑龙江省大庆市', '111111', '111111', 1, '2021-11-18 19:53:52', 2);
INSERT INTO `orders` VALUES ('f7d8932a-78a5-4628-acc8-282e09e86808', 230, '黑龙江八一农垦大学', '111111', '111111', 1, '2021-11-18 10:48:43', 39);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `category` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pnum` int(0) NULL DEFAULT NULL,
  `imgurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '玩偶', 11, '自营', 1000, '/img/zy/wanou.jpg', '很可爱的玩偶');
INSERT INTO `products` VALUES ('10', '鼠标', 50, '电子产品', 1000, '/img/dianzi/shubiao10.jpg', NULL);
INSERT INTO `products` VALUES ('11', '风扇', 30, '生活用品', 1000, '/img/shenghuo/11.jpg', NULL);
INSERT INTO `products` VALUES ('12', '充电宝', 100, '电子产品', 1000, '/img/dianzi/12.jpg', NULL);
INSERT INTO `products` VALUES ('13', '日用品套装', 5, '生活用品', 1000, '/img/shenghuo/13.jpg', NULL);
INSERT INTO `products` VALUES ('14', '笔记本', 5, '自营', 1000, '/img/zy/14.jpg', NULL);
INSERT INTO `products` VALUES ('15', '书桌', 10, '生活用品', 1000, '/img/shenghuo/15.jpg', NULL);
INSERT INTO `products` VALUES ('16', '晨光笔芯（一盒20支）', 11.9, '自营', 1000, '/img/zy/16.jpg', NULL);
INSERT INTO `products` VALUES ('17', '床头置物架', 13.5, '自营', 1000, '/img/zy/17.jpg', NULL);
INSERT INTO `products` VALUES ('18', '芙丽芳丝水乳洁面护肤套装', 400, '化妆品', 1000, '/img/h/18.jpg', NULL);
INSERT INTO `products` VALUES ('19', '口红（迪奥）', 350, '化妆品', 1000, '/img/h/19.jpg', NULL);
INSERT INTO `products` VALUES ('2', '专升本必刷题英语', 26.9, '自营', 99, '/img/zy/english.jpg', '纸张');
INSERT INTO `products` VALUES ('20', '欧莱雅面膜(15片)', 203, '化妆品', 1000, '/img/h/20.jpg', NULL);
INSERT INTO `products` VALUES ('21', '16色眼影盘', 103, '化妆品', 1000, '/img/h/21.jpg', NULL);
INSERT INTO `products` VALUES ('22', '车模（法拉利）', 200, '其他', 1000, '/img/other/22.jpg', NULL);
INSERT INTO `products` VALUES ('23', '车模（兰博基尼）', 200, '其他', 1000, '/img/other/23.jpg', NULL);
INSERT INTO `products` VALUES ('24', '稿纸', 1, '自营', 1000, '/img/zy/gaozhi.jpg', NULL);
INSERT INTO `products` VALUES ('3', 'JavaWeb', 50, '图书', 1000, '/img/book/javaweb.png', 'java');
INSERT INTO `products` VALUES ('4', 'Python', 50, '图书', 9999, '/img/book/python.jpg', 'python');
INSERT INTO `products` VALUES ('5', 'C++', 50, '图书', 9999, '/img/book/c++.jpg', 'c');
INSERT INTO `products` VALUES ('6', 'Mysql', 50, '图书', 1000, '/img/book/mysql.jpg', 'c');
INSERT INTO `products` VALUES ('7', '台灯', 20, '生活用品', 1000, '/img/shenghuo/taideng.jpg', '学习必备');
INSERT INTO `products` VALUES ('8', '耳机', 10, '电子产品', 1000, '/img/dianzi/erji.jpg', NULL);
INSERT INTO `products` VALUES ('9', '键盘', 100, '电子产品', 1000, '/img/dianzi/jianpan9.png', '机械键盘');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'client',
  `registTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '男', '1111111@qq.com', '111111', 'admin', '2021-11-18 23:40:06');
INSERT INTO `user` VALUES (2, '111111', '123456', '男', '111111@qq.com', '111111', 'client', '2021-11-18 23:40:52');
INSERT INTO `user` VALUES (3, '222222', '123456', '女', '12312312346@qq.com', '12432415132', 'client', '2021-11-18 17:32:37');
INSERT INTO `user` VALUES (4, '333333', '123456', '男', '123123@w.hhh', '18537873816', 'client', '2021-11-18 23:47:59');
INSERT INTO `user` VALUES (5, '444444', '12345678', '男', '1323@w.hhh', '', 'client', '2021-11-18 10:00:18');
INSERT INTO `user` VALUES (6, '555555', '1008611', '男', '1241414@qq.com', '16637873816', 'client', '2021-11-18 20:12:20');
INSERT INTO `user` VALUES (7, 'qwer', '123456', '男', '132123@w.hhh', '123123', 'client', '2021-11-18 10:39:34');
INSERT INTO `user` VALUES (8, 'asdf', '123456', '男', '1243124@w.hhh', '', 'client', '2021-11-18 10:44:15');

SET FOREIGN_KEY_CHECKS = 1;
