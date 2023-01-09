/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : appointment

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 09/01/2023 13:09:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hobbies
-- ----------------------------
DROP TABLE IF EXISTS `hobbies`;
CREATE TABLE `hobbies`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hobbies
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of images
-- ----------------------------

-- ----------------------------
-- Table structure for nationality
-- ----------------------------
DROP TABLE IF EXISTS `nationality`;
CREATE TABLE `nationality`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nationality
-- ----------------------------
INSERT INTO `nationality` VALUES (1, '01', '汉族', '汉', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (2, '02', '蒙古族', '蒙', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (3, '03', '回族', '回', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (4, '04', '藏族', '藏', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (5, '05', '维吾尔族', '维', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (6, '06', '苗族', '苗', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (7, '07', '彝族', '彝', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (8, '08', '壮族', '壮', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (9, '09', '布依族', '依', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (10, '10', '朝鲜族', '朝', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (11, '11', '满族', '满', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (12, '12', '侗族', '侗', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (13, '13', '瑶族', '瑶', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (14, '14', '白族', '白', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (15, '15', '土家族', '家', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (16, '16', '哈尼族', '尼', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (17, '17', '哈萨克族', '萨', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (18, '18', '傣族', '傣', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (19, '19', '黎族', '黎', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (20, '20', '傈僳族', '僳', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (21, '21', '佤族', '佤', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (22, '22', '畲族', '畲', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (23, '23', '高山族', '高', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (24, '24', '拉祜族', '祜', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (25, '25', '水族', '水', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (26, '26', '东乡族', '东', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (27, '27', '纳西族', '西', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (28, '28', '景颇族', '景', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (29, '29', '柯尔克孜族', '柯', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (30, '30', '土族', '土', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (31, '31', '达斡尔族', '达', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (32, '32', '仫佬族', '仫', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (33, '33', '羌族', '羌', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (34, '34', '布朗族', '朗', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (35, '35', '撒拉族', '撒', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (36, '36', '毛难族', '毛', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (37, '37', '仡佬族', '仡', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (38, '38', '锡伯族', '锡', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (39, '39', '阿昌族', '阿', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (40, '40', '普米族', '普', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (41, '41', '塔吉克族', '吉', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (42, '42', '怒族', '怒', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (43, '43', '乌孜别克族', '乌', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (44, '44', '俄罗斯族', '罗', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (45, '45', '鄂温克族', '温', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (46, '46', '崩龙族', '德', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (47, '47', '保安族', '保', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (48, '48', '裕固族', '裕', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (49, '49', '京族', '京', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (50, '50', '塔塔尔族', '塔', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (51, '51', '独龙族', '龙', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (52, '52', '鄂伦春族', '春', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (53, '53', '赫哲族', '哲', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (54, '54', '门巴族', '门', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (55, '55', '珞巴族', '珞', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (56, '56', '基诺族', '基', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (57, '97', '其他', '其它未识别民族', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (58, '98', '外国血统', '外国人入中国籍', '2023-01-03 11:38:59', NULL);
INSERT INTO `nationality` VALUES (59, '99', '外国国籍', '未入中国籍外国人', '2023-01-03 11:38:59', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` int(16) NOT NULL,
  `wechat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nationality` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` int(2) NOT NULL,
  `height` int(8) NOT NULL,
  `weight` int(11) NOT NULL,
  `married` int(2) NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hobby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `income` int(11) NOT NULL,
  `property` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `smoking` int(11) NOT NULL,
  `drinking` int(11) NOT NULL,
  `album` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `last_login_time` datetime NULL DEFAULT NULL,
  `membership` int(11) NOT NULL,
  `pause` date NULL DEFAULT '1000-01-02',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (00000001, '123', '123', '123', 12334123, '123', '123', '123', 123, '1997-05-24', 123, 123, 123, 123, '123', '123', '123', '123', 123, '123', 123, 123, '123', '2023-01-02 00:00:00', '2023-01-02 00:00:00', 12, '1000-01-02');
INSERT INTO `user` VALUES (00000002, '123', '321', '311', 1231276, '123', '123', '12331', 12, '1997-05-06', 1, 123, 123, 1, '123', '13', '123', '123', 12, '123', 1, 1, '', '2023-01-05 00:00:00', '2023-01-05 00:00:00', 12, NULL);
INSERT INTO `user` VALUES (00000003, '123', '321', '311', 1238978, '123', '123', '12331', 12, '1997-05-06', 1, 123, 123, 1, '123', '13', '123', '123', 12, '123', 1, 1, '', '2023-01-05 00:00:00', '2023-01-05 00:00:00', 12, NULL);

SET FOREIGN_KEY_CHECKS = 1;
