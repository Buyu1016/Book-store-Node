/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 30/06/2021 19:01:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for booktype
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdAt` datetime(0) NOT NULL,
  `updatedAt` datetime(0) NOT NULL,
  `deletedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES (3, 'Java', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (4, 'Android', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (5, 'Web前端', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (6, '大数据', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (7, '数据库', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (8, 'Python', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (9, 'UI设计', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (10, 'C/C++', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (11, '电商/新媒体', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (12, 'PHP', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (13, 'IOS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (14, 'C#', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (15, 'ASP.NET', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (16, '硬件与维护', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `booktype` VALUES (17, '网络与通信', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

SET FOREIGN_KEY_CHECKS = 1;
