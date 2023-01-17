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

 Date: 18/01/2023 01:31:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for block
-- ----------------------------
DROP TABLE IF EXISTS `block`;
CREATE TABLE `block`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `owner` int(8) NOT NULL,
  `target_user` int(8) NOT NULL,
  `blocking_time` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of block
-- ----------------------------

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `follower` int(8) NOT NULL,
  `target_user` int(8) NOT NULL,
  `following_time` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES (1, 2, 1, '2023-01-18 01:18:22');
INSERT INTO `follow` VALUES (8, 1, 2, '2023-01-18 01:18:22');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user1` int(8) NOT NULL,
  `user2` int(8) NOT NULL,
  `build_time` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friend
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hobbies
-- ----------------------------
INSERT INTO `hobbies` VALUES (1, '橙红', 'The Navigation pane employs tree structure which a', '88045638', '78064842');
INSERT INTO `hobbies` VALUES (2, '亮珊瑚色', 'If opportunity doesn’t knock, build a door.', '91467426', '83701421');
INSERT INTO `hobbies` VALUES (3, '黑色', 'Anyone who has never made a mistake has never trie', '63487173', '64947357');
INSERT INTO `hobbies` VALUES (4, '柠檬绿色', 'In the Objects tab, you can use the List List, Det', '09779993', '42969468');
INSERT INTO `hobbies` VALUES (5, '橄榄色', 'Export Wizard allows you to export data from table', '76397267', '81552558');
INSERT INTO `hobbies` VALUES (6, '庚斯博罗灰', 'HTTP Tunneling is a method for connecting to a ser', '50288051', '79606543');
INSERT INTO `hobbies` VALUES (7, '白色', 'It provides strong authentication and secure encry', '15812800', '51242650');
INSERT INTO `hobbies` VALUES (8, '桃色', 'Optimism is the one quality more associated with s', '09148830', '88736095');
INSERT INTO `hobbies` VALUES (9, '铜色', 'Navicat provides powerful tools for working with q', '39521824', '68450935');
INSERT INTO `hobbies` VALUES (10, '热带橙', 'If the Show objects under schema in navigation pan', '50168133', '35805207');
INSERT INTO `hobbies` VALUES (11, '米色', 'A query is used to extract data from the database ', '66630518', '15962568');
INSERT INTO `hobbies` VALUES (12, '咖啡色', 'What you get by achieving your goals is not as imp', '91619344', '84346488');
INSERT INTO `hobbies` VALUES (13, '桃色', 'Optimism is the one quality more associated with s', '17126708', '61040778');
INSERT INTO `hobbies` VALUES (14, '雾玫瑰色', 'You must be the change you wish to see in the worl', '98415816', '86761636');
INSERT INTO `hobbies` VALUES (15, '暗灰', 'What you get by achieving your goals is not as imp', '16520489', '92171225');
INSERT INTO `hobbies` VALUES (16, '卡其色', 'The Synchronize to Database function will give you', '88613556', '82093564');
INSERT INTO `hobbies` VALUES (17, '亮灰色', 'Optimism is the one quality more associated with s', '01671046', '19520928');
INSERT INTO `hobbies` VALUES (18, '巧克力色', 'Export Wizard allows you to export data from table', '79928001', '80380228');
INSERT INTO `hobbies` VALUES (19, '庚斯博罗灰', 'A man is not old until regrets take the place of d', '08982161', '23912960');
INSERT INTO `hobbies` VALUES (20, '砖红色', 'A man’s best friends are his ten fingers.', '96914086', '37499327');
INSERT INTO `hobbies` VALUES (21, '黑色', 'Success consists of going from failure to failure ', '87515676', '53974781');
INSERT INTO `hobbies` VALUES (22, '褐色', 'I destroy my enemies when I make them my friends.', '61606852', '18725499');
INSERT INTO `hobbies` VALUES (23, '乌贼墨色', 'A query is used to extract data from the database ', '12700733', '71839487');
INSERT INTO `hobbies` VALUES (24, '白烟色', 'If the plan doesn’t work, change the plan, but n', '04318906', '01973261');
INSERT INTO `hobbies` VALUES (25, '驼色', 'Success consists of going from failure to failure ', '21366029', '14813657');
INSERT INTO `hobbies` VALUES (26, '雪色', 'Secure Sockets Layer(SSL) is a protocol for transm', '21138861', '85755795');
INSERT INTO `hobbies` VALUES (27, '卡其色', 'A query is used to extract data from the database ', '74237252', '31898877');
INSERT INTO `hobbies` VALUES (28, '金色', 'It collects process metrics such as CPU load, RAM ', '88028304', '49611497');
INSERT INTO `hobbies` VALUES (29, '黄色', 'There is no way to happiness. Happiness is the way', '56707957', '17490195');
INSERT INTO `hobbies` VALUES (30, '橙红', 'Navicat Data Modeler is a powerful and cost-effect', '79063600', '31582865');
INSERT INTO `hobbies` VALUES (31, '印度红', 'All the Navicat Cloud objects are located under di', '60858766', '07575438');
INSERT INTO `hobbies` VALUES (32, '黄色', 'It can also manage cloud databases such as Amazon ', '74126843', '09946589');
INSERT INTO `hobbies` VALUES (33, '暗灰', 'A man’s best friends are his ten fingers.', '60870985', '48830643');
INSERT INTO `hobbies` VALUES (34, '杏黄', 'Navicat Cloud provides a cloud service for synchro', '37084373', '24276823');
INSERT INTO `hobbies` VALUES (35, '乌贼墨色', 'You will succeed because most people are lazy.', '33615877', '28348227');
INSERT INTO `hobbies` VALUES (36, '蜜橙', 'If you wait, all that happens is you get older.', '79944665', '06237058');
INSERT INTO `hobbies` VALUES (37, '热带橙', 'Navicat Monitor can be installed on any local comp', '59617783', '18916273');
INSERT INTO `hobbies` VALUES (38, '昏灰', 'If your Internet Service Provider (ISP) does not p', '98600956', '38000738');
INSERT INTO `hobbies` VALUES (39, '朱红色', 'Remember that failure is an event, not a person.', '07846526', '30090743');
INSERT INTO `hobbies` VALUES (40, '玫瑰褐', 'Navicat Data Modeler enables you to build high-qua', '49966578', '84477401');
INSERT INTO `hobbies` VALUES (41, '银色', 'Secure Sockets Layer(SSL) is a protocol for transm', '13331011', '08370898');
INSERT INTO `hobbies` VALUES (42, '柿子橙', 'Difficult circumstances serve as a textbook of lif', '96622584', '16093373');
INSERT INTO `hobbies` VALUES (43, '雾玫瑰色', 'The reason why a great man is great is that he res', '29664240', '91271601');
INSERT INTO `hobbies` VALUES (44, '蜜橙', 'To successfully establish a new connection to loca', '26272523', '99245621');
INSERT INTO `hobbies` VALUES (45, '白色', 'How we spend our days is, of course, how we spend ', '41775911', '63646925');
INSERT INTO `hobbies` VALUES (46, '银色', 'You cannot save people, you can just love them.', '64326384', '69923198');
INSERT INTO `hobbies` VALUES (47, '热带橙', 'SQL Editor allows you to create and edit SQL text,', '71462035', '80374362');
INSERT INTO `hobbies` VALUES (48, '亮灰色', 'Navicat Cloud could not connect and access your da', '66498698', '04334334');
INSERT INTO `hobbies` VALUES (49, '杏黄', 'The first step is as good as half over.', '13814785', '85954786');
INSERT INTO `hobbies` VALUES (50, '黄色', 'Navicat 15 has added support for the system-wide d', '48298242', '27913189');
INSERT INTO `hobbies` VALUES (51, '橙红', 'To successfully establish a new connection to loca', '58162989', '20630646');
INSERT INTO `hobbies` VALUES (52, '橙色', 'Success consists of going from failure to failure ', '82675270', '62009973');
INSERT INTO `hobbies` VALUES (53, '银色', 'I will greet this day with love in my heart.', '67483350', '39163270');
INSERT INTO `hobbies` VALUES (54, '印度红', 'In other words, Navicat provides the ability for d', '25572847', '36805934');
INSERT INTO `hobbies` VALUES (55, '橄榄色', 'If you wait, all that happens is you get older.', '97653356', '90038798');
INSERT INTO `hobbies` VALUES (56, '鲜红', 'The Synchronize to Database function will give you', '92401500', '21404740');
INSERT INTO `hobbies` VALUES (57, '驼色', 'It can also manage cloud databases such as Amazon ', '94294710', '18735512');
INSERT INTO `hobbies` VALUES (58, '杏黄', 'SSH serves to prevent such vulnerabilities and all', '90665318', '03320294');
INSERT INTO `hobbies` VALUES (59, '亮灰色', 'I will greet this day with love in my heart.', '34609759', '79556606');
INSERT INTO `hobbies` VALUES (60, '猩红色', 'In the middle of winter I at last discovered that ', '15386250', '16975842');
INSERT INTO `hobbies` VALUES (61, '黄色', 'Instead of wondering when your next vacation is, m', '55120447', '79696978');
INSERT INTO `hobbies` VALUES (62, '铁灰色', 'Navicat Monitor can be installed on any local comp', '65257742', '73642156');
INSERT INTO `hobbies` VALUES (63, '猩红色', 'If the Show objects under schema in navigation pan', '62960487', '37280836');
INSERT INTO `hobbies` VALUES (64, '暗灰', 'In a Telnet session, all communications, including', '52690777', '07797238');
INSERT INTO `hobbies` VALUES (65, '琥珀色', 'I may not have gone where I intended to go, but I ', '76667152', '85262467');
INSERT INTO `hobbies` VALUES (66, '杏黄', 'Navicat allows you to transfer data from one datab', '53487261', '96588161');
INSERT INTO `hobbies` VALUES (67, '琥珀色', 'It can also manage cloud databases such as Amazon ', '12187754', '11583339');
INSERT INTO `hobbies` VALUES (68, '暗灰', 'SQL Editor allows you to create and edit SQL text,', '65826441', '27642421');
INSERT INTO `hobbies` VALUES (69, '鲑红', 'If the plan doesn’t work, change the plan, but n', '70786940', '82402724');
INSERT INTO `hobbies` VALUES (70, '朱红色', 'To successfully establish a new connection to loca', '34422703', '72915586');
INSERT INTO `hobbies` VALUES (71, '玫瑰褐', 'After logged in the Navicat Cloud feature, the Nav', '46994665', '02145187');
INSERT INTO `hobbies` VALUES (72, '褐色', 'Navicat is a multi-connections Database Administra', '20940478', '70591399');
INSERT INTO `hobbies` VALUES (73, '灰色', 'With its well-designed Graphical User Interface(GU', '66874383', '25331010');
INSERT INTO `hobbies` VALUES (74, '桃色', 'Remember that failure is an event, not a person.', '04338676', '24554724');
INSERT INTO `hobbies` VALUES (75, '昏灰', 'HTTP Tunneling is a method for connecting to a ser', '55673573', '35352728');
INSERT INTO `hobbies` VALUES (76, '鲜红', 'Export Wizard allows you to export data from table', '44634859', '80049865');
INSERT INTO `hobbies` VALUES (77, '卡其色', 'I will greet this day with love in my heart.', '68802466', '74345295');
INSERT INTO `hobbies` VALUES (78, '灰色', 'If you wait, all that happens is you get older.', '05866881', '24605771');
INSERT INTO `hobbies` VALUES (79, '红色', 'If the plan doesn’t work, change the plan, but n', '66764989', '29774049');
INSERT INTO `hobbies` VALUES (80, '朱红色', 'Navicat 15 has added support for the system-wide d', '89260741', '32077711');
INSERT INTO `hobbies` VALUES (81, '雪色', 'It wasn’t raining when Noah built the ark.', '40975566', '12648532');
INSERT INTO `hobbies` VALUES (82, '巧克力色', 'You can select any connections, objects or project', '58118631', '37324264');
INSERT INTO `hobbies` VALUES (83, '印度红', 'To successfully establish a new connection to loca', '27481622', '54850723');
INSERT INTO `hobbies` VALUES (84, '砖红色', 'SQL Editor allows you to create and edit SQL text,', '40422220', '24460089');
INSERT INTO `hobbies` VALUES (85, '黄色', 'In other words, Navicat provides the ability for d', '85172240', '34687950');
INSERT INTO `hobbies` VALUES (86, '栗色', 'Instead of wondering when your next vacation is, m', '54059648', '23815856');
INSERT INTO `hobbies` VALUES (87, '铁灰色', 'The reason why a great man is great is that he res', '84406545', '92350100');
INSERT INTO `hobbies` VALUES (88, '橙色', 'Monitored servers include MySQL, MariaDB and SQL S', '25333034', '66606194');
INSERT INTO `hobbies` VALUES (89, '柿子橙', 'If it scares you, it might be a good thing to try.', '54426622', '56548077');
INSERT INTO `hobbies` VALUES (90, '奶油色', 'To connect to a database or schema, simply double-', '31303497', '30703342');
INSERT INTO `hobbies` VALUES (91, '杏黄', 'It provides strong authentication and secure encry', '16393761', '61369108');
INSERT INTO `hobbies` VALUES (92, '鲑红', 'Navicat Monitor can be installed on any local comp', '12689082', '23112757');
INSERT INTO `hobbies` VALUES (93, '鲑红', 'Navicat allows you to transfer data from one datab', '34184043', '42069298');
INSERT INTO `hobbies` VALUES (94, '雾玫瑰色', 'Success consists of going from failure to failure ', '56849595', '84470434');
INSERT INTO `hobbies` VALUES (95, '茉莉黄', 'The Information Pane shows the detailed object inf', '72928345', '40169709');
INSERT INTO `hobbies` VALUES (96, '热带橙', 'How we spend our days is, of course, how we spend ', '54208848', '22260481');
INSERT INTO `hobbies` VALUES (97, '橄榄色', 'With its well-designed Graphical User Interface(GU', '09275466', '35562129');
INSERT INTO `hobbies` VALUES (98, '杏黄', 'It is used while your ISPs do not allow direct con', '58509426', '14627594');
INSERT INTO `hobbies` VALUES (99, '鲜红', 'It wasn’t raining when Noah built the ark.', '83112898', '88038996');
INSERT INTO `hobbies` VALUES (100, '铬黄', 'What you get by achieving your goals is not as imp', '40462306', '01559900');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_time` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of images
-- ----------------------------

-- ----------------------------
-- Table structure for invitation
-- ----------------------------
DROP TABLE IF EXISTS `invitation`;
CREATE TABLE `invitation`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender` int(8) NOT NULL,
  `receiver` int(8) NOT NULL,
  `state` int(2) NOT NULL DEFAULT 0,
  `build_time` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invitation
-- ----------------------------
INSERT INTO `invitation` VALUES (1, 2, 1, 1, '2023-01-18 01:18:22');
INSERT INTO `invitation` VALUES (4, 1, 3, 0, '2023-01-18 01:23:35');

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
  `birthdate` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `register_date` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_time` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `membership` int(11) NOT NULL,
  `pause` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1000-01-02',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (00000001, '123', '123', '123', 12334123, '123', '123', '123', 123, '1997-05-24', 123, 123, 123, 123, '123', '', '123', '123', 123, '123', 123, 123, '123', '2023-01-02 00:00:00', '2023-01-02 00:00:00', 12, '1000-01-02');
INSERT INTO `user` VALUES (00000002, '123', '321', '311', 1231276, '123', '123', '12331', 12, '1997-05-06', 1, 123, 123, 1, '123', '13', '123', '123', 12, '123', 1, 1, '', '2023-01-05 00:00:00', '2023-01-05 00:00:00', 12, NULL);
INSERT INTO `user` VALUES (00000003, '123', '321', '311', 1238978, '123', '123', '12331', 12, '1997-05-06', 1, 123, 123, 1, '123', '13', '123', '123', 12, '123', 1, 1, '', '2023-01-05 00:00:00', '2023-01-05 00:00:00', 12, NULL);

SET FOREIGN_KEY_CHECKS = 1;
