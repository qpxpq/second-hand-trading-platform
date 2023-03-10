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
INSERT INTO `orders` VALUES ('49644959-e00f-483d-8bc7-fbc846ecb4fe', 921, '?????????????????????', '111111', '111111', 1, '2021-11-18 13:43:34', 2);
INSERT INTO `orders` VALUES ('867fbbc4-6a78-4572-95df-7d49e8235f22', 11, '?????????????????????', '111111', '111111', 1, '2021-11-18 19:53:52', 2);
INSERT INTO `orders` VALUES ('f7d8932a-78a5-4628-acc8-282e09e86808', 230, '???????????????????????????', '111111', '111111', 1, '2021-11-18 10:48:43', 39);

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
INSERT INTO `products` VALUES ('1', '??????', 11, '??????', 1000, '/img/zy/wanou.jpg', '??????????????????');
INSERT INTO `products` VALUES ('10', '??????', 50, '????????????', 1000, '/img/dianzi/shubiao10.jpg', NULL);
INSERT INTO `products` VALUES ('11', '??????', 30, '????????????', 1000, '/img/shenghuo/11.jpg', NULL);
INSERT INTO `products` VALUES ('12', '?????????', 100, '????????????', 1000, '/img/dianzi/12.jpg', NULL);
INSERT INTO `products` VALUES ('13', '???????????????', 5, '????????????', 1000, '/img/shenghuo/13.jpg', NULL);
INSERT INTO `products` VALUES ('14', '?????????', 5, '??????', 1000, '/img/zy/14.jpg', NULL);
INSERT INTO `products` VALUES ('15', '??????', 10, '????????????', 1000, '/img/shenghuo/15.jpg', NULL);
INSERT INTO `products` VALUES ('16', '?????????????????????20??????', 11.9, '??????', 1000, '/img/zy/16.jpg', NULL);
INSERT INTO `products` VALUES ('17', '???????????????', 13.5, '??????', 1000, '/img/zy/17.jpg', NULL);
INSERT INTO `products` VALUES ('18', '????????????????????????????????????', 400, '?????????', 1000, '/img/h/18.jpg', NULL);
INSERT INTO `products` VALUES ('19', '??????????????????', 350, '?????????', 1000, '/img/h/19.jpg', NULL);
INSERT INTO `products` VALUES ('2', '????????????????????????', 26.9, '??????', 99, '/img/zy/english.jpg', '??????');
INSERT INTO `products` VALUES ('20', '???????????????(15???)', 203, '?????????', 1000, '/img/h/20.jpg', NULL);
INSERT INTO `products` VALUES ('21', '16????????????', 103, '?????????', 1000, '/img/h/21.jpg', NULL);
INSERT INTO `products` VALUES ('22', '?????????????????????', 200, '??????', 1000, '/img/other/22.jpg', NULL);
INSERT INTO `products` VALUES ('23', '????????????????????????', 200, '??????', 1000, '/img/other/23.jpg', NULL);
INSERT INTO `products` VALUES ('24', '??????', 1, '??????', 1000, '/img/zy/gaozhi.jpg', NULL);
INSERT INTO `products` VALUES ('3', 'JavaWeb', 50, '??????', 1000, '/img/book/javaweb.png', 'java');
INSERT INTO `products` VALUES ('4', 'Python', 50, '??????', 9999, '/img/book/python.jpg', 'python');
INSERT INTO `products` VALUES ('5', 'C++', 50, '??????', 9999, '/img/book/c++.jpg', 'c');
INSERT INTO `products` VALUES ('6', 'Mysql', 50, '??????', 1000, '/img/book/mysql.jpg', 'c');
INSERT INTO `products` VALUES ('7', '??????', 20, '????????????', 1000, '/img/shenghuo/taideng.jpg', '????????????');
INSERT INTO `products` VALUES ('8', '??????', 10, '????????????', 1000, '/img/dianzi/erji.jpg', NULL);
INSERT INTO `products` VALUES ('9', '??????', 100, '????????????', 1000, '/img/dianzi/jianpan9.png', '????????????');

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
INSERT INTO `user` VALUES (1, 'admin', '123456', '???', '1111111@qq.com', '111111', 'admin', '2021-11-18 23:40:06');
INSERT INTO `user` VALUES (2, '111111', '123456', '???', '111111@qq.com', '111111', 'client', '2021-11-18 23:40:52');
INSERT INTO `user` VALUES (3, '222222', '123456', '???', '12312312346@qq.com', '12432415132', 'client', '2021-11-18 17:32:37');
INSERT INTO `user` VALUES (4, '333333', '123456', '???', '123123@w.hhh', '18537873816', 'client', '2021-11-18 23:47:59');
INSERT INTO `user` VALUES (5, '444444', '12345678', '???', '1323@w.hhh', '', 'client', '2021-11-18 10:00:18');
INSERT INTO `user` VALUES (6, '555555', '1008611', '???', '1241414@qq.com', '16637873816', 'client', '2021-11-18 20:12:20');
INSERT INTO `user` VALUES (7, 'qwer', '123456', '???', '132123@w.hhh', '123123', 'client', '2021-11-18 10:39:34');
INSERT INTO `user` VALUES (8, 'asdf', '123456', '???', '1243124@w.hhh', '', 'client', '2021-11-18 10:44:15');

SET FOREIGN_KEY_CHECKS = 1;
