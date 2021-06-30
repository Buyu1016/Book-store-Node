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

 Date: 30/06/2021 19:01:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `imgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `press` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '人民邮电出版社',
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '黑马程序员',
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NOT NULL,
  `updatedAt` datetime(0) NOT NULL,
  `deletedAt` datetime(0) NULL DEFAULT NULL,
  `BookTypeId` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `BookTypeId`(`BookTypeId`) USING BTREE,
  CONSTRAINT `books_ibfk_21` FOREIGN KEY (`BookTypeId`) REFERENCES `booktype` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'Python', 'http://resource.ityxb.com/assets/addons/cms/img/noimage.jpg', '人民邮电出版社', 'ISBN：978-7-115-56206-7', '黑马程序员', '39.80', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 8);
INSERT INTO `books` VALUES (2, 'ASP就业实例教程第2版', 'http://resource.ityxb.com/uploads/book/asp2/book.png', '人民邮电出版社', 'ISBN：978-7–115-55605-9', '黑马程序员 ', '39.80', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 15);
INSERT INTO `books` VALUES (3, 'Web前端模块化开发教程', 'http://resource.ityxb.com/uploads/book/nodejs/book.png', '人民邮电出版社\r\n\r\n', 'ISBN：978-7-115-56462-7', '黑马程序员', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5);
INSERT INTO `books` VALUES (4, 'Laravel框架开发实战', 'http://resource.ityxb.com/uploads/book/laravel/book.png', '人民邮电出版社', 'ISBN：978-7-115-56326-2', '黑马程序员', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 12);
INSERT INTO `books` VALUES (5, 'Python数据可视化', 'http://resource.ityxb.com/uploads/book/data_visualization/book.png', '人民邮电出版社', 'ISBN：978-7-115-54513-8', '黑马程序员', '49.80', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 8);
INSERT INTO `books` VALUES (6, '淘宝天猫店实用教程：配色、布局、修图、装修', 'http://resource.ityxb.com/uploads/book/tbmg2/book.jpg', '清华大学出版社', 'ISBN：978-7-302-56666-3', '黑马程序员', '59.90', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 11);
INSERT INTO `books` VALUES (7, 'Promiere Pro CC视频剪辑案例教程', 'http://resource.ityxb.com/uploads/book/premiere/book.png', '人民邮电出版社', 'ISBN：978-7-115-54739-2', '黑马程序员', '59.80', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 9);
INSERT INTO `books` VALUES (8, 'HTML+CSS+JavaScript网页制作案例教程(第二版)', 'http://resource.ityxb.com/uploads/book/HTML_CSS_JS_3/book.png', '人民邮电出版社', 'ISBN：978-7-115-54739-2', '黑马程序员', '59.80 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5);
INSERT INTO `books` VALUES (9, 'PHP+MySQL动态网站开发', 'http://resource.ityxb.com/uploads/book/php_mysql2/book.png', '人民邮电出版社', 'ISBN：978-7-115-55127-6', '黑马程序员', '49.80', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 12);
INSERT INTO `books` VALUES (10, '响应式Web开发项目教程（HTML5+CSS3+Bootstrap）（第2版）', 'http://resource.ityxb.com/uploads/book/responsive2/book.png', '人民邮电出版社', 'ISBN：978-7-115-55396-6', '黑马程序员', '49.80 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5);
INSERT INTO `books` VALUES (11, 'Bootstrap响应式Web开发', 'http://resource.ityxb.com/uploads/book/bootstrap/book.png', '人民邮电出版社', 'ISBN：978-7-115-54783-5', '黑马程序员', '42.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5);
INSERT INTO `books` VALUES (12, 'C++程序设计教程（第2版）', 'http://resource.ityxb.com/uploads/book/c++2/book.png', '人民邮电出版社', 'ISBN：978-7-115-54752-1', '黑马程序员', '49.80 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 10);
INSERT INTO `books` VALUES (13, 'Python快速编程入门第2版', 'http://resource.ityxb.com/uploads/book/python2/book.png', '人民邮电出版社', 'ISBN：978-7-115-54752-1', '黑马程序员', '49.80 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 8);
INSERT INTO `books` VALUES (14, '跨境电子商务 亚马逊运营推广', 'http://resource.ityxb.com/uploads/book/KJDS/book.png', '清华大学出版社', 'ISBN：978-7-302-56636-6', '黑马程序员', '49.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 11);
INSERT INTO `books` VALUES (15, 'Java基础案例教程（第2版）', 'http://resource.ityxb.com/uploads/book/java2anli/book.png', '人民邮电出版社', 'ISBN：978-7-115-54747-7', '黑马程序员', '59.80 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3);
INSERT INTO `books` VALUES (16, 'C#程序设计基础入门教程（第2版）', 'http://resource.ityxb.com/uploads/20201105/74c562e2703d53451a86edffa88c58aa.png', '人民邮电出版社', 'ISBN：978-7-115-54350-9', '黑马程序员', '59.80 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 14);
INSERT INTO `books` VALUES (17, '微信运营实战教程', 'http://resource.ityxb.com/uploads/book/weixinyunying/book.png', '清华大学出版社', 'ISBN：978-7-302-56263-4', '黑马程序员', '49.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 11);
INSERT INTO `books` VALUES (18, 'NoSQL数据库技术与应用', 'http://resource.ityxb.com/uploads/20200924/aad54c2a809edb58c18fa08b4d8140de.png', '清华大学出版社', 'ISBN：978-7-302-56351-8', '黑马程序员', '79.80', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 6);
INSERT INTO `books` VALUES (19, 'PHP网站开发实例教程（第2版）', 'http://resource.ityxb.com/uploads/book/php_web2/book.png', '人民邮电出版社', 'ISBN：978-7-115-53020-2', '黑马程序员', '49.80', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 12);
INSERT INTO `books` VALUES (20, '淘宝天猫店运营：产品营销、物流建设、客服管理', 'http://resource.ityxb.com/uploads/book/taobaotianmaodianyunying/book.jpg', '人民邮电出版社', 'ISBN：978-7-302-55316-8', '黑马程序员', '39.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 11);
INSERT INTO `books` VALUES (21, 'Python Web企业级项目开发教程（Django版）', 'http://resource.ityxb.com/uploads/book/django/book.png', '中国铁道出版社', 'ISBN：978-7-113-26726-1', '黑马程序员', '56.00', '2021-06-24 13:55:59', '2021-06-24 13:55:59', NULL, 8);
INSERT INTO `books` VALUES (22, 'ThinkPHP5框架原理与实战 ', 'http://resource.ityxb.com/uploads/book/tp5/book.jpg', '中国铁道出版社', 'ISBN：978-7-113-25971-6 ', '黑马程序员', '55.00', '2021-06-24 14:14:36', '2021-06-24 14:14:36', NULL, 12);
INSERT INTO `books` VALUES (23, 'Hadoop大数据技术原理与应用', 'http://resource.ityxb.com/uploads/20190318/ad459a2a1fd3d73f452c315d40e68e6c.png', '清华大学出版社', 'ISBN：978-7-302-52440-3', '黑马程序员', '49.00', '2021-06-24 14:15:58', '2021-06-24 14:15:58', NULL, 6);
INSERT INTO `books` VALUES (24, 'C语言开发基础教程（Dev-C++）（第2版）', 'http://resource.ityxb.com/uploads/20181205/7f7ea3c9cdede01fcf652baa41d8c687.png', '人民邮电出版社', 'ISBN：978-7-115-50202-5', '黑马程序员', '49.80', '2021-06-24 14:17:01', '2021-06-24 14:17:01', NULL, 10);
INSERT INTO `books` VALUES (25, '微信小程序开发实战', 'http://resource.ityxb.com/uploads/book/wxapp/book.jpg', '人民邮电出版社', 'ISBN：978-7-115-50203-2', '黑马程序员', '49.80', '2021-06-24 14:17:47', '2021-06-24 14:17:47', NULL, 5);
INSERT INTO `books` VALUES (26, 'MySQL数据库原理、设计与应用', 'http://resource.ityxb.com/uploads/book/mysql2/book.jpg', '清华大学出版社', 'ISBN： 978-7-302-52376-5 ', '黑马程序员', '59.50', '2021-06-24 14:18:56', '2021-06-24 14:18:56', NULL, 7);
INSERT INTO `books` VALUES (27, 'Android项目实战——手机安全卫士（Android Studio）（第2版）', 'http://resource.ityxb.com/uploads/20191113/11aa8648e42978b4aee94a66169b05e9.png', '中国铁道出版社', 'ISBN：978-7-113-26279-2', '黑马程序员', '58.00', '2021-06-24 14:21:08', '2021-06-24 14:21:08', NULL, 4);
INSERT INTO `books` VALUES (28, ' Kotlin从基础到实战', 'http://resource.ityxb.com/uploads/20181205/bcf53865f3b5f2b50b8645e25d4d2f4f.png', '人民邮电出版社', 'ISBN：978-7-115-49440-5', '黑马程序员', '59.80', '2021-06-24 14:22:02', '2021-06-24 14:22:02', NULL, 4);
INSERT INTO `books` VALUES (29, 'Android移动应用基础教程(Android Studio)(第2版)', 'http://resource.ityxb.com/uploads/book/android_studio/book.jpg', '中国铁道出版社', 'ISBN：978-7-113-25250-2 ', '黑马程序员', '59.00', '2021-06-24 14:23:00', '2021-06-24 14:23:00', NULL, 4);
INSERT INTO `books` VALUES (30, 'Android企业级项目实战教程', 'http://resource.ityxb.com/uploads/20181203/c5637177f399f4ef061fb79ff4aca9e0.jpg', '清华大学出版社', 'ISBN：978-7-302-49120-0', '黑马程序员', '49.50', '2021-06-24 14:23:42', '2021-06-24 14:23:42', NULL, 4);
INSERT INTO `books` VALUES (31, 'Android项目实战——博学谷', 'http://resource.ityxb.com/uploads/book/android_bxg/book.jpg', '中国铁道出版社', 'ISBN：978-7-113-23102-6', '黑马程序员', '45.00', '2021-06-24 14:24:33', '2021-06-24 14:24:33', NULL, 4);
INSERT INTO `books` VALUES (32, '大数据项目实战', 'http://resource.ityxb.com/uploads/20190923/7065f6377bdbe4e8eec1b3184083a5ba.png', '清华大学出版社', 'ISBN：978-7-302-55093-8', '黑马程序员', '39.00', '2021-06-24 14:26:20', '2021-06-24 14:26:20', NULL, 6);
INSERT INTO `books` VALUES (33, '数据清洗', 'http://resource.ityxb.com/uploads/20190923/1eca6d1ca1b0b3bf1724cb7457dacbe2.png', '清华大学出版社', 'ISBN：978-7-302-55087-7', '黑马程序员', '58.00', '2021-06-24 14:26:57', '2021-06-24 14:26:57', NULL, 6);
INSERT INTO `books` VALUES (34, 'Spark大数据分析与实战', 'http://resource.ityxb.com/uploads/book/spark/book.jpg', '清华大学出版社', 'ISBN：978-7-302-53432-7', '黑马程序员', '49.00', '2021-06-24 14:27:29', '2021-06-24 14:27:29', NULL, 6);
INSERT INTO `books` VALUES (35, 'MySQL数据库入门', 'http://resource.ityxb.com/uploads/book/mysql/book.jpg', '清华大学出版社', 'ISBN：978-7-302-38795-4', '黑马程序员', '40.00', '2021-06-24 14:29:48', '2021-06-24 14:29:48', NULL, 7);
INSERT INTO `books` VALUES (36, 'Photoshop 图像处理案例教程（第二版）', 'http://resource.ityxb.com/uploads/book/pstxcl/book.jpg', '中国铁道出版社', 'ISBN：978-7-113-26645-5', '黑马程序员', '69.80', '2021-06-24 14:31:54', '2021-06-24 14:31:54', NULL, 9);
INSERT INTO `books` VALUES (37, 'Photoshop CS6图像设计案例教程（第二版）', 'http://resource.ityxb.com/uploads/book/pscs6txsj/book.jpg', '中国铁道出版社', 'ISBN：978-7-113-26086-6', '黑马程序员', '49.80', '2021-06-24 14:32:40', '2021-06-24 14:32:40', NULL, 9);
INSERT INTO `books` VALUES (38, '互联网产品设计思维与实践', 'http://resource.ityxb.com/uploads/book/hlwcp/book.jpg', '清华大学出版社', 'ISBN：978-7-302-53433-4', '黑马程序员', '39.00 ', '2021-06-24 14:33:18', '2021-06-24 14:33:18', NULL, 9);
INSERT INTO `books` VALUES (39, 'C++程序设计教程（第2版）', 'http://resource.ityxb.com/uploads/book/c++2/book.png', '人民邮电出版社', 'ISBN：978-7-115-54969-3', '黑马程序员', '49.80', '2021-06-24 14:34:50', '2021-06-24 14:34:50', NULL, 10);
INSERT INTO `books` VALUES (40, 'C语言程序设计立体化教程', 'http://resource.ityxb.com/uploads/book/c_language/c_language.png', '中国铁道出版社', 'ISBN：978-7-113-26282-2', '黑马程序员', '56.00', '2021-06-24 14:35:36', '2021-06-24 14:35:36', NULL, 10);
INSERT INTO `books` VALUES (41, '软件测试', 'http://resource.ityxb.com/uploads/20190923/35277bb4a98215c71f33e469d2451421.png', '人民邮电出版社', 'ISBN：978-7-115-51523-0', '黑马程序员', '42.00', '2021-06-24 14:36:17', '2021-06-24 14:36:17', NULL, 10);
INSERT INTO `books` VALUES (42, 'Objective-C程序设计案例教程', 'http://resource.ityxb.com/uploads/book/oc_new2/book.jpg', '清华大学出版社', 'ISBN：978-7-302-47610-8', '黑马程序员', '49.00', '2021-06-24 14:37:39', '2021-06-24 14:37:39', NULL, 13);
INSERT INTO `books` VALUES (43, '基于Swift语言的iOS App 商业实战教程', 'http://resource.ityxb.com/uploads/20181203/f8dc9ab53022f6a17a3b31c6036c8ccc.jpg', '人民邮电出版社', 'ISBN：978-7-115-44093-8', '黑马程序员', '74.00 ', '2021-06-24 14:38:11', '2021-06-24 14:38:11', NULL, 13);
INSERT INTO `books` VALUES (44, 'Swift项目开发基础教程', 'http://resource.ityxb.com/uploads/book/swift/book.jpg', '人民邮电出版社', 'ISBN：978-7-115-41960-6', '传智博客', '49.80', '2021-06-24 14:39:15', '2021-06-24 14:39:15', NULL, 13);
INSERT INTO `books` VALUES (45, 'Swift项目开发基础教程', 'http://resource.ityxb.com/uploads/book/swift/book.jpg', '人民邮电出版社', 'ISBN：978-7-115-41960-6', '传智博客', '49.80', '2021-06-24 14:39:57', '2021-06-24 14:39:57', NULL, 13);
INSERT INTO `books` VALUES (46, 'C#程序设计基础入门教程', 'http://resource.ityxb.com/uploads/book/net/book.jpg', '人民邮电出版社', 'ISBN：978-7-115-35624-6', '传智播客高教产品研发部', '45.00', '2021-06-24 14:41:00', '2021-06-24 14:41:00', NULL, 14);
INSERT INTO `books` VALUES (47, 'ASP.NET就业实例教程', 'http://resource.ityxb.com/uploads/book/asp/book.jpg', '人民邮电出版社', 'ISBN：978-7-115-29575-0', '传智播客高教产品研发部', '38.00', '2021-06-24 14:42:03', '2021-06-24 14:42:03', NULL, 15);
INSERT INTO `books` VALUES (48, '计算机组装与维护', 'http://resource.ityxb.com/uploads/book/package/book.jpg', '人民邮电出版社', 'ISBN：978-7-115-49442-9', '黑马程序员', '49.80', '2021-06-24 14:43:24', '2021-06-24 14:43:24', NULL, 16);
INSERT INTO `books` VALUES (49, '计算机网络技术及应用', 'http://resource.ityxb.com/uploads/book/computerInternet/book.jpg', '人民邮电出版社', 'ISBN：978-7-115-49441-2', '黑马程序员', '39.80', '2021-06-24 14:43:59', '2021-06-24 14:43:59', NULL, 17);

SET FOREIGN_KEY_CHECKS = 1;
