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

 Date: 29/01/2023 19:34:11
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
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of block
-- ----------------------------
INSERT INTO `block` VALUES (1, 2, 68, '2014-05-25 08:26:44');
INSERT INTO `block` VALUES (2, 1, 56, '2022-06-08 15:06:06');
INSERT INTO `block` VALUES (3, 1, 89, '2004-05-02 20:10:18');
INSERT INTO `block` VALUES (4, 1, 79, '2017-09-28 18:00:10');
INSERT INTO `block` VALUES (5, 1, 66, '2014-03-02 22:08:40');
INSERT INTO `block` VALUES (6, 1, 72, '2017-01-02 06:05:17');
INSERT INTO `block` VALUES (7, 1, 95, '2010-04-27 12:23:50');
INSERT INTO `block` VALUES (8, 1, 52, '2000-12-10 12:44:40');
INSERT INTO `block` VALUES (9, 1, 93, '2016-03-05 08:05:13');
INSERT INTO `block` VALUES (10, 1, 62, '2014-02-26 09:32:30');
INSERT INTO `block` VALUES (11, 100, 1, '2014-05-14 07:42:20');
INSERT INTO `block` VALUES (12, 77, 1, '2000-02-02 03:54:25');
INSERT INTO `block` VALUES (13, 97, 1, '2017-05-15 11:59:23');
INSERT INTO `block` VALUES (14, 61, 1, '2002-11-04 02:23:16');
INSERT INTO `block` VALUES (15, 96, 1, '2007-12-14 08:48:42');
INSERT INTO `block` VALUES (16, 54, 1, '2020-07-16 16:05:33');
INSERT INTO `block` VALUES (17, 81, 1, '2012-05-20 06:58:13');
INSERT INTO `block` VALUES (18, 99, 1, '2014-02-28 01:10:32');
INSERT INTO `block` VALUES (19, 55, 1, '2013-09-06 09:11:35');
INSERT INTO `block` VALUES (20, 82, 1, '2000-10-21 22:12:28');

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `size` bigint(20) NULL DEFAULT NULL,
  `upload_time` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `enable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1',
  `is_delete` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES (1, 'myEndIcon.png', 'http://localhost:9090/file/download/303bf4b7fb3748ab874baef56d2f505d.png', 'png', 68, NULL, '1', '0', '63d7db1ef0cddd11a91bcc2b30580364');
INSERT INTO `files` VALUES (2, 'My icon.png', 'http://localhost:9090/file/download/de9f2e0361fd4f85929a6a4262ef4b09.png', 'png', 60, NULL, '0', '1', '336c92105cd912937790688f9108269c');
INSERT INTO `files` VALUES (3, 'GUNDAM-D-GP02.png', 'http://localhost:9090/file/download/d37e4ac5630f4959b760a2b864fd2e7a.png', 'png', 843, NULL, '1', '0', '1c675c9a16a79295e64cf7cb0f7a321e');
INSERT INTO `files` VALUES (4, 'webp.jpg', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 'jpg', 167, NULL, '1', '0', '77f1d23bb8eba881c4542221d1657f77');
INSERT INTO `files` VALUES (5, '`AHAJX7@[631[4N_2WZ0)SA.bmp', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 'bmp', 485, NULL, '1', '0', '087b445a4415323bb6ed9dde45c7754d');
INSERT INTO `files` VALUES (6, '5UMZS[7P%P]04G02UEWF}BN.bmp', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 'bmp', 601, NULL, '1', '0', 'a5db87d3a675b2ccff2a0c1b1424dda9');
INSERT INTO `files` VALUES (7, '093807gj94kjd39pz38k2r.jpg', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 'jpg', 136, NULL, '1', '0', '63402af5297c623151d624b4fd60ad07');
INSERT INTO `files` VALUES (8, '093809eiw99ppe7e57zwk7.jpg', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 'jpg', 148, NULL, '1', '0', '34eb84ea78ad727571e52d983c7ca1d0');
INSERT INTO `files` VALUES (9, '093809p72lg21lyydd3y33.jpg', 'http://localhost:9090/file/download/bc7b1f65e2664d86972069e72e039622.jpg', 'jpg', 121, NULL, '1', '0', '664228f71035d45a7dac094895aee039');
INSERT INTO `files` VALUES (10, '093809y9r5i6kbetc1z874.jpg', 'http://localhost:9090/file/download/ec762efd0505400db432d5857b892737.jpg', 'jpg', 116, NULL, '1', '0', 'ee619ecf78987e4172740da3b06ef078');
INSERT INTO `files` VALUES (11, '093810dgeevd4et0itvxxb.jpg', 'http://localhost:9090/file/download/751e093c35e84d8492fc4f1f13f3565e.jpg', 'jpg', 120, NULL, '1', '0', '65ef9342c8b8beca17a833182f22efb1');
INSERT INTO `files` VALUES (12, '114605x08te0k6xoh2za0g.jpg', 'http://localhost:9090/file/download/2e88d3d616b6426cafa0a5815e1dc83c.jpg', 'jpg', 205, NULL, '1', '0', '787b7cfcaa3d1e900423af7c3a4598f1');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invitation
-- ----------------------------
INSERT INTO `invitation` VALUES (1, 2, 1, 1, '2023-01-18 01:18:22');
INSERT INTO `invitation` VALUES (4, 1, 3, 0, '2023-01-18 01:18:22');
INSERT INTO `invitation` VALUES (5, 1, 34, 0, '2007-04-17 03:08:02');
INSERT INTO `invitation` VALUES (6, 1, 12, 0, '2016-11-05 22:01:38');
INSERT INTO `invitation` VALUES (7, 1, 14, 1, '2011-06-14 13:23:30');
INSERT INTO `invitation` VALUES (8, 1, 26, 1, '2002-01-12 09:50:33');
INSERT INTO `invitation` VALUES (9, 1, 45, 1, '2013-02-19 04:24:11');
INSERT INTO `invitation` VALUES (10, 1, 50, 1, '2009-06-28 04:40:29');
INSERT INTO `invitation` VALUES (11, 1, 36, 0, '2002-07-03 02:28:32');
INSERT INTO `invitation` VALUES (12, 1, 9, 0, '2010-04-14 20:09:21');
INSERT INTO `invitation` VALUES (13, 1, 15, 1, '2005-09-21 19:32:24');
INSERT INTO `invitation` VALUES (14, 1, 32, 0, '2010-08-27 16:38:26');
INSERT INTO `invitation` VALUES (15, 7, 1, 0, '2002-11-30 09:46:22');
INSERT INTO `invitation` VALUES (16, 17, 1, 0, '2008-08-11 17:17:29');
INSERT INTO `invitation` VALUES (17, 31, 1, 1, '2016-03-24 19:10:48');
INSERT INTO `invitation` VALUES (18, 18, 1, 1, '2009-01-03 16:58:58');
INSERT INTO `invitation` VALUES (19, 48, 1, 1, '2020-01-15 17:15:38');
INSERT INTO `invitation` VALUES (20, 10, 1, 1, '2012-03-31 02:48:44');
INSERT INTO `invitation` VALUES (21, 43, 1, 1, '2017-10-18 15:28:17');
INSERT INTO `invitation` VALUES (22, 8, 4, 0, '2022-01-05 07:33:53');
INSERT INTO `invitation` VALUES (23, 24, 1, 1, '2018-04-13 05:23:58');
INSERT INTO `invitation` VALUES (24, 20, 1, 0, '2016-02-13 08:03:17');

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
  `telephone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `mtime` date NULL DEFAULT NULL,
  `album` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `register_date` date NOT NULL,
  `last_login_time` date NULL DEFAULT NULL,
  `membership` date NULL DEFAULT NULL,
  `pause` date NULL DEFAULT '1000-01-02',
  `manager` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (00000001, '123', '321', '123', '123456', '1234', '123', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 12, '1997-05-06', 1, 123, 123, 1, '123', '13', '123', 'P', 12, '123', 1, 1, '2025-06-20', '1;2;3', '2023-01-02', '2023-01-20', NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000002, '123', '史蒂夫', '311', '1231276', 'BQDdDqM3211EgX', '李敏', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 12, '1997-05-06', 1, 123, 123, 1, 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models ', '1;4;5;6;9', '天河区天河路388号', 'P', 12, 'I destroy my enemies when I make them my friends. Monitored servers include MySQL, MariaDB and SQL S', 1, 1, '2025-06-20', '1;4;5;6', '2023-01-05', '2023-01-05', NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000003, '123', '王府井', '311', '1238978', 'BQDdD31231qMEgX', '张三', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 12, '1997-05-06', 1, 123, 123, 1, 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models ', '1;4;5;6;9', '天河区天河路388号', 'P', 12, 'I destroy my enemies when I make them my friends. Monitored servers include MySQL, MariaDB and SQL S', 1, 1, '2025-06-20', '1;4;5;6', '2023-01-05', '2023-01-05', NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000004, 'AJwy9AYXeO', '彭岚', '41rRRTtb8a', '19005815530', 'NjolbI4LDo', '张子韬', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 3, '1986-02-19', 0, 125, 80, 1, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', '1;4;5;6;9', '白云区小坪东路939号', 'J', 275, 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with po', 0, 2, '2024-02-05', '1;4;5;6', '2022-12-07', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000005, '9SEkxCfuBo', '沈震南', '2TVC5OOnPl', '18379377132', 'BQDdDqMEgX', '任子韬', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 35, '1978-10-05', 1, 247, 100, 0, 'All journeys have secret destinations of which the traveler is unaware. In other words, Navicat prov', '1;4;5;6;9', '成华区双庆路662号', 'D', 380, 'I destroy my enemies when I make them my friends. Monitored servers include MySQL, MariaDB and SQL S', 2, 0, '2024-11-28', '1;4;5;6', '2023-01-02', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000006, 'w2CEcfhV9D', '张睿', '5365n0bIp3', '19485293502', 'fiqctlKVol', 'Carrie Stone', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 3, '1990-07-28', 0, 172, 132, 1, 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/S', '1;4;5;6;9', '天河区天河路388号', 'P', 472, 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in N', 1, 3, '2025-09-18', '1;4;5;6', '2023-01-14', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000007, 'sNA9odm1jC', '赵璐', 'sV1EDHgWEx', '210450012', 'hd0mDi7LgA', 'Theresa Morales', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 9, '1982-05-28', 0, 121, 43, 0, 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models ', '1;4;5;6;9', '浦东新区健祥路787号', 'U', 399, 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models ', 0, 1, '2024-08-02', '1;4;5;6', '2022-12-24', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000008, 'OSd5db9GcZ', '韩致远', 'mxNrNYFHJx', '19645066006', 'kGGrbvqlA9', '龚晓明', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 37, '1970-03-02', 1, 105, 118, 1, 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, or', '1;4;5;6;9', '成华区双庆路894号', 'J', 167, 'Sometimes you win, sometimes you learn. It wasn’t raining when Noah built the ark. Navicat Data Mo', 2, 1, '2025-03-20', '1;4;5;6', '2022-12-01', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000009, 'MuTfB32Q0u', '陶致远', 'qOiziFAIc1', '18973055552', 'Z7sHpLdztM', '杨璐', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 35, '1994-11-15', 0, 116, 45, 1, 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with po', '1;4;5;6;9', '锦江区人民南路四段894号', 'J', 416, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', 2, 2, '2023-04-05', '1;4;5;6', '2023-01-02', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000010, '1o0qpDJ0gH', '潘秀英', 'cbJM9xLumr', '19220596268', '7PJ1Ooqkiy', '尹杰宏', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 54, '1971-08-15', 1, 210, 122, 1, 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models ', '1;4;5;6;9', '东城区东单王府井东街65号', 'P', 934, 'You will succeed because most people are lazy. To get a secure connection, the first thing you need ', 2, 2, '2024-02-04', '1;4;5;6', '2022-12-05', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000011, 'fZBvCgRqVw', '宋嘉伦', 'rmagmZH2Er', '2827277691', 'VpnzpGJtbD', '孙璐', 'http://localhost:9090/file/download/bc7b1f65e2664d86972069e72e039622.jpg', 31, '1964-01-06', 1, 145, 145, 1, 'You will succeed because most people are lazy. All the Navicat Cloud objects are located under diffe', '1;4;5;6;9', '成华区双庆路43号', 'J', 643, 'Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart', 2, 2, '2023-10-30', '1;4;5;6', '2022-12-10', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000012, 'E2F9jz3NsY', '薛岚', 'FqjFNWyzBv', '18980803952', 'PdsOwn3Wcm', '范子异', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 43, '1965-11-11', 1, 246, 43, 0, 'I destroy my enemies when I make them my friends. After logged in the Navicat Cloud feature, the Nav', '1;4;5;6;9', '成华区玉双路6号64号', 'U', 972, 'Sometimes you win, sometimes you learn. Success consists of going from failure to failure without lo', 0, 1, '2025-11-19', '1;4;5;6', '2023-01-16', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000013, 'tftXf4oPG4', '孔宇宁', 'ToKSnXroD1', '15671105678', 'yVEBQzMiL2', '陶睿', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 3, '1961-08-05', 1, 122, 140, 0, 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtu', '1;4;5;6;9', '锦江区人民南路四段631号', 'J', 804, 'You must be the change you wish to see in the world. In the Objects tab, you can use the List List, ', 1, 0, '2024-04-26', '1;4;5;6', '2022-12-03', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000014, '5pyUebo5jS', '蔡致远', '4AQjYMEa2w', '75533504912', 'z64vaWwIEs', 'Lillian Bailey', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 15, '1959-04-08', 0, 139, 89, 0, 'It provides strong authentication and secure encrypted communications between two hosts, known as SS', '1;4;5;6;9', '罗湖区田贝一路557号', 'U', 2, 'Remember that failure is an event, not a person. The Synchronize to Database function will give you ', 1, 0, '2024-09-09', '1;4;5;6', '2023-01-19', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000015, 'q5AAAao0hp', '邹晓明', '7O0gUSORCF', '18477021906', 'kZ5JFMTMl8', 'Wendy Hunt', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 15, '1990-01-19', 1, 177, 143, 0, 'If it scares you, it might be a good thing to try. In the middle of winter I at last discovered that', '1;4;5;6;9', '房山区岳琉路711号', 'U', 150, 'If you wait, all that happens is you get older. Such sessions are also susceptible to session hijack', 2, 0, '2023-08-08', '1;4;5;6', '2023-01-01', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000016, 'YKlkQofgL2', '曹嘉伦', 'YOCWFCTaRO', '19789135771', '1WynBWdUFa', 'Helen Simmons', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 48, '1998-12-27', 1, 234, 49, 1, 'Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart', '1;4;5;6;9', '环区南街二巷617号', 'J', 616, 'Export Wizard allows you to export data from tables, collections, views, or query results to any ava', 0, 2, '2025-04-26', '1;4;5;6', '2022-12-28', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000017, '7b39097rWy', '蒋岚', 'CCOU1cQnnr', '18496053162', 'KCG5W4XNcI', 'Christopher Spencer', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 7, '1992-02-07', 1, 160, 133, 1, 'A man is not old until regrets take the place of dreams. I will greet this day with love in my heart', '1;4;5;6;9', '龙岗区学园一巷252号', 'D', 115, 'Remember that failure is an event, not a person. Champions keep playing until they get it right. Opt', 1, 1, '2024-03-15', '1;4;5;6', '2022-12-02', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000018, 'It2wxTNYnS', '陆安琪', 'NVXTwuF1cc', '13620954783', 'M6PARAaPU3', '蒋子韬', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 7, '1989-09-24', 0, 151, 54, 1, 'In the middle of winter I at last discovered that there was in me an invincible summer. To clear or ', '1;4;5;6;9', '海淀区清河中街68号640号', 'P', 425, 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all', 1, 3, '2025-06-20', '1;4;5;6', '2023-01-12', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000019, '1VybplC4pd', '刘岚', 'VvEybYVUl1', '7558543543', 'tRN85Iv2zR', '郭岚', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 42, '1977-01-31', 1, 105, 78, 0, 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Navicat C', '1;4;5;6;9', '福田区深南大道39号', 'P', 997, 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, or', 0, 0, '2023-11-27', '1;4;5;6', '2022-12-05', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000020, 'CD95aBnAg8', '顾云熙', '6nsyIayXN6', '15104272455', 'x6sTh3tpUz', 'Deborah Ortiz', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 1, '1991-06-12', 1, 154, 53, 0, 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with po', '1;4;5;6;9', '环区南街二巷77号', 'P', 729, 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Creativity ', 1, 1, '2023-06-25', '1;4;5;6', '2023-01-18', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000021, 'KJpmMOjlW3', '陆秀英', '71Ci5WhkWI', '284738316', 'CTnqON9G8V', '胡秀英', 'http://localhost:9090/file/download/bc7b1f65e2664d86972069e72e039622.jpg', 36, '1992-04-03', 0, 131, 65, 1, 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without ', '1;4;5;6;9', '成华区玉双路6号697号', 'U', 369, 'A comfort zone is a beautiful place, but nothing ever grows there. Anyone who has ever made anything', 0, 0, '2024-06-21', '1;4;5;6', '2022-12-20', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000022, 'IAKDHjPRa8', '丁晓明', '2gTNXwVzkq', '17055501178', 'ukNLyOUeAl', '赵璐', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 57, '1972-06-05', 1, 125, 107, 1, 'A man’s best friends are his ten fingers. It wasn’t raining when Noah built the ark. I will gree', '1;4;5;6;9', '天河区大信商圈大信南路963号', 'U', 211, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', 1, 2, '2025-08-22', '1;4;5;6', '2022-12-24', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000023, 'rmvAcOkraX', '钱璐', 'phdqVuT3VI', '17890617076', 'gWsdBD56u3', '顾睿', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 4, '1989-11-26', 1, 229, 95, 1, 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in N', '1;4;5;6;9', '京华商圈华夏街284号', 'J', 559, 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. In t', 1, 0, '2023-06-15', '1;4;5;6', '2022-12-18', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000024, 'NADe416qzA', '姚璐', 'cuSMzHIo0d', '7551902633', 'sS9Xah7AtU', 'Ann Rice', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 49, '1977-01-19', 1, 162, 50, 0, 'Champions keep playing until they get it right. It collects process metrics such as CPU load, RAM us', '1;4;5;6;9', '龙岗区学园一巷824号', 'J', 556, 'Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build hig', 2, 1, '2024-04-20', '1;4;5;6', '2022-12-25', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000025, 'Yjv6ANAPuR', '范璐', 'gVaBE7Kr8i', '15236142407', 'noo5mZ7Sfj', 'Helen Gutierrez', 'http://localhost:9090/file/download/bc7b1f65e2664d86972069e72e039622.jpg', 17, '1994-01-06', 0, 203, 90, 1, 'The past has no power over the present moment. The On Startup feature allows you to control what tab', '1;4;5;6;9', '福田区深南大道471号', 'U', 748, 'If you wait, all that happens is you get older. You can select any connections, objects or projects,', 0, 0, '2023-02-25', '1;4;5;6', '2022-12-14', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000026, 'D1cVliGyO5', '陶宇宁', 'Om3GZ97MoN', '207310368', 'y7v2CaVFTe', 'Francisco Watson', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 9, '1954-02-23', 0, 140, 82, 1, 'The On Startup feature allows you to control what tabs appear when you launch Navicat. I will greet ', '1;4;5;6;9', '白云区机场路棠苑街五巷743号', 'J', 185, 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all', 1, 1, '2023-12-21', '1;4;5;6', '2023-01-13', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000027, 'nKeAht6FYJ', '毛詩涵', 'Ig6ARzGm4E', '2168256794', 'H9HUfd4vIy', 'Joyce Coleman', 'http://localhost:9090/file/download/bc7b1f65e2664d86972069e72e039622.jpg', 5, '1953-10-04', 1, 237, 95, 1, 'Optimism is the one quality more associated with success and happiness than any other. In a Telnet s', '1;4;5;6;9', '黄浦区淮海中路519号', 'J', 724, 'Remember that failure is an event, not a person. Navicat allows you to transfer data from one databa', 0, 1, '2025-03-16', '1;4;5;6', '2022-12-24', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000028, 'c70PSqQ71c', '于安琪', 'OE6sjHNEJm', '18317408372', 'jUacXFPlAP', 'Phillip Griffin', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 17, '1954-07-08', 1, 152, 141, 0, 'You must be the change you wish to see in the world. It provides strong authentication and secure en', '1;4;5;6;9', '海珠区江南西路480号', 'J', 10, 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to ch', 1, 3, '2025-08-01', '1;4;5;6', '2023-01-01', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000029, 'GMGrIwRLid', '龚璐', 't7gtF4pirU', '15934763011', 'vpwG9T7sDZ', '胡岚', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 13, '1952-02-26', 1, 197, 65, 0, 'Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Win', '1;4;5;6;9', '罗湖区清水河一路773号', 'J', 80, 'You will succeed because most people are lazy. Anyone who has never made a mistake has never tried a', 1, 2, '2023-05-24', '1;4;5;6', '2023-01-13', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000030, 'y7UnFBMvrq', '朱致远', '77VPE7eigf', '7605385351', 'cPEwAr6ldu', '钟杰宏', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 9, '1987-08-08', 0, 148, 82, 0, 'Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat Clou', '1;4;5;6;9', '天河区大信商圈大信南路423号', 'D', 772, 'Champions keep playing until they get it right. If the Show objects under schema in navigation pane ', 0, 1, '2024-02-01', '1;4;5;6', '2022-12-31', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000031, 'NH0QhzcipX', '程詩涵', 'AbRX9qHau7', '17960380454', 'RUHDhVRQIl', 'Bernard Garcia', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 10, '1968-01-22', 0, 220, 44, 0, 'Creativity is intelligence having fun. To successfully establish a new connection to local/remote se', '1;4;5;6;9', '福田区景田东一街690号', 'D', 541, 'To connect to a database or schema, simply double-click it in the pane. I destroy my enemies when I ', 2, 1, '2024-01-10', '1;4;5;6', '2023-01-19', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000032, 'BIHyShxKw9', '于云熙', '8JvPG1ly2V', '15296503859', 'Plj8NtjfTz', '陶安琪', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 20, '1985-10-14', 0, 227, 148, 1, 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS ins', '1;4;5;6;9', '黄浦区淮海中路812号', 'J', 575, 'In other words, Navicat provides the ability for data in different databases and/or schemas to be ke', 2, 0, '2025-06-05', '1;4;5;6', '2023-01-13', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000033, '5LiSXp1JSB', '莫云熙', 'OllGZdgO2z', '76946395396', '2vZLyGhOgv', 'Gladys Cook', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 50, '1960-12-14', 1, 119, 73, 0, 'You must be the change you wish to see in the world. Monitored servers include MySQL, MariaDB and SQ', '1;4;5;6;9', '环区南街二巷130号', 'U', 872, 'Sometimes you win, sometimes you learn. To successfully establish a new connection to local/remote s', 0, 0, '2023-02-25', '1;4;5;6', '2022-12-03', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000034, 'dSsESJZv1B', '向宇宁', '4Ob4dT6QYh', '16363273232', '2LXJ6j1BdP', '熊嘉伦', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 10, '1981-10-15', 1, 223, 108, 0, 'Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart', '1;4;5;6;9', '越秀区中山二路691号', 'U', 572, 'Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to ', 2, 3, '2024-01-22', '1;4;5;6', '2023-01-16', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000035, 'EHe03GlibU', '梁震南', '75oyldfBgD', '281015455', 'pzIiZViObd', 'Elizabeth Sanchez', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 14, '1990-09-13', 0, 202, 127, 0, 'Actually it is just in an idea when feel oneself can achieve and cannot achieve. Export Wizard allow', '1;4;5;6;9', '成华区二仙桥东三路49号', 'D', 826, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', 1, 2, '2023-10-24', '1;4;5;6', '2022-12-25', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000036, 'J9EzQb3pFh', '韩安琪', '208Rmc1u2k', '1037616865', 'ICGbjh3Dyh', '方子异', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 13, '1985-04-22', 1, 145, 79, 1, 'The Navigation pane employs tree structure which allows you to take action upon the database and the', '1;4;5;6;9', '海淀区清河中街68号889号', 'D', 631, 'I may not have gone where I intended to go, but I think I have ended up where I needed to be. I may ', 1, 2, '2024-05-06', '1;4;5;6', '2022-12-29', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000037, 'PHW8FpJ4fv', '卢杰宏', 'JFC1xDg9qo', '76998677771', 'FwAPHsOiAO', 'Doris Owens', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 57, '2003-07-12', 0, 243, 58, 1, 'The past has no power over the present moment. Navicat provides a wide range advanced features, such', '1;4;5;6;9', '环区南街二巷719号', 'J', 530, 'Sometimes you win, sometimes you learn. Sometimes you win, sometimes you learn. Navicat Monitor is a', 1, 2, '2025-11-30', '1;4;5;6', '2022-12-01', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000038, 'RnDAVz7qyc', '许云熙', 'QsoLvutXxN', '17545806433', 'SVBF7tNWGw', 'Albert Dunn', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 12, '1955-08-12', 1, 106, 113, 0, 'It provides strong authentication and secure encrypted communications between two hosts, known as SS', '1;4;5;6;9', '珊瑚路358号', 'D', 498, 'HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the ', 2, 2, '2023-10-26', '1;4;5;6', '2022-12-11', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000039, 'xcBVuL7TJx', '钟晓明', 'Ca9MQaOVhY', '2054619647', 'GkEC9vpEjM', 'Elizabeth Rice', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 42, '1998-06-06', 1, 120, 109, 1, 'It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections', '1;4;5;6;9', '白云区小坪东路29号', 'U', 650, 'If you wait, all that happens is you get older. Optimism is the one quality more associated with suc', 0, 1, '2023-02-13', '1;4;5;6', '2022-12-08', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000040, 'QRYJgn0xXI', '石安琪', 'vVfPie1Olf', '75544204996', 'XaB4jqXvep', 'Jesus Crawford', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 39, '1970-04-16', 0, 115, 147, 1, 'Export Wizard allows you to export data from tables, collections, views, or query results to any ava', '1;4;5;6;9', '罗湖区蔡屋围深南东路922号', 'P', 813, 'To start working with your server in Navicat, you should first establish a connection or several con', 0, 2, '2024-09-24', '1;4;5;6', '2023-01-03', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000041, 'OpfTV96MDL', '于秀英', 'xnEbhRIbwy', '212457463', 'zLopxKTTjI', '范宇宁', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 10, '1985-11-27', 0, 176, 145, 1, 'Navicat provides powerful tools for working with queries: Query Editor for editing the query text di', '1;4;5;6;9', '浦东新区健祥路391号', 'J', 868, 'Genius is an infinite capacity for taking pains. I will greet this day with love in my heart. I may ', 2, 3, '2023-09-09', '1;4;5;6', '2022-12-27', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000042, 'Ajv9oClSfM', '曾嘉伦', '0LSfJRpjY0', '13573208034', 'oEcWScX6zi', '卢岚', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 2, '1959-12-08', 1, 152, 117, 0, 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without ', '1;4;5;6;9', '京华商圈华夏街816号', 'J', 997, 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all', 1, 1, '2025-11-18', '1;4;5;6', '2022-12-01', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000043, 'Qpjf4dEfQ9', '熊岚', 'iMelK9oTZY', '19777785415', 'tncUSfjgc5', 'Robert Warren', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 52, '1997-11-28', 1, 177, 143, 0, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', '1;4;5;6;9', '黄浦区淮海中路915号', 'P', 944, 'It wasn’t raining when Noah built the ark. There is no way to happiness. Happiness is the way. The', 2, 1, '2024-03-06', '1;4;5;6', '2022-12-11', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000044, 'zhkl8vEHim', '胡睿', 'i4fEaYMI4H', '211714213', '5VGGoDq6Ug', '魏震南', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 46, '1974-01-18', 1, 203, 140, 0, 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without ', '1;4;5;6;9', '黄浦区淮海中路892号', 'J', 600, 'Creativity is intelligence having fun. In other words, Navicat provides the ability for data in diff', 0, 2, '2024-12-12', '1;4;5;6', '2022-12-25', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000045, 'yYfYHfOJEJ', '郑詩涵', 'sytEZwNIlV', '18082393343', 'otq4o3ejwS', '雷嘉伦', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 7, '1966-04-03', 0, 101, 82, 1, 'To open a query using an external editor, control-click it and select Open with External Editor. You', '1;4;5;6;9', '浦东新区健祥路242号', 'U', 47, 'Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Win', 2, 2, '2025-02-18', '1;4;5;6', '2022-12-24', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000046, 'lhewvLFM5e', '邓致远', 'VOQRSC3K7L', '7556048919', 'r7E9iA9EH0', '郑子异', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 17, '1968-08-28', 1, 217, 122, 1, 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtu', '1;4;5;6;9', '罗湖区田贝一路198号', 'U', 930, 'Navicat Cloud could not connect and access your databases. By which it means, it could only store yo', 1, 0, '2023-05-15', '1;4;5;6', '2023-01-02', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000047, 'OX60APqbPa', '郝詩涵', 'jLPsab1eII', '13340907158', 'bhbtoPb1Hp', 'Don Black', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 9, '1979-12-01', 0, 232, 114, 1, 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, or', '1;4;5;6;9', '延庆区028县道771号', 'U', 680, 'In a Telnet session, all communications, including username and password, are transmitted in plain-t', 2, 0, '2025-07-04', '1;4;5;6', '2022-12-20', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000048, 'e2YCEVwhWS', '常晓明', 'iqAFkwgiio', '17669939453', 'm9YJ3zyMQM', 'Leonard Cole', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 25, '1985-03-01', 0, 178, 53, 0, 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all', '1;4;5;6;9', '西城区复兴门内大街509号', 'J', 312, 'Navicat Monitor can be installed on any local computer or virtual machine and does not require any s', 0, 1, '2023-07-07', '1;4;5;6', '2023-01-08', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000049, 'yx0j0x85mP', '严宇宁', '70WaNoxEmv', '105699925', 'h4iWOpakPO', '郭震南', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 9, '1958-04-30', 0, 128, 80, 0, 'The Information Pane shows the detailed object information, project activities, the DDL of database ', '1;4;5;6;9', '延庆区028县道498号', 'D', 702, 'The Information Pane shows the detailed object information, project activities, the DDL of database ', 3, 3, '2023-10-18', '1;4;5;6', '2022-12-30', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000050, 'a3WyLSn069', '卢璐', 'Uob0qI3JCA', '16444245273', 'ZjccEn3rIA', 'Phillip Wilson', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 25, '1964-04-20', 0, 110, 55, 1, 'The first step is as good as half over. If the Show objects under schema in navigation pane option i', '1;4;5;6;9', '坑美十五巷28号', 'U', 763, 'Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Win', 2, 2, '2025-04-24', '1;4;5;6', '2022-12-05', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000051, '35pM6yXUE6', '马睿', 'KSTfp6QgOI', '1066569490', 'UmQHO7Gba4', '莫安琪', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 1, '1989-08-16', 0, 130, 148, 1, 'Navicat 15 has added support for the system-wide dark mode. All journeys have secret destinations of', '1;4;5;6;9', '东城区东单王府井东街371号', 'P', 640, 'Navicat Cloud could not connect and access your databases. By which it means, it could only store yo', 2, 0, '2024-10-03', '1;4;5;6', '2023-01-03', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000052, 'tCwlkNBtGk', '毛睿', 'HLwsynlbJY', '101756847', '1yYe2atz5h', '姜子韬', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 6, '1977-10-18', 0, 149, 67, 1, 'Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart', '1;4;5;6;9', '东城区东单王府井东街790号', 'D', 980, 'If opportunity doesn’t knock, build a door. The Navigation pane employs tree structure which allow', 1, 2, '2024-02-14', '1;4;5;6', '2022-12-07', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000053, 'eZ4fUfeJ0x', '李宇宁', 'o9k6AwKVVP', '76067872819', 'y4LI2UgRsx', 'Lisa Shaw', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 35, '1959-01-13', 1, 231, 78, 1, 'In other words, Navicat provides the ability for data in different databases and/or schemas to be ke', '1;4;5;6;9', '乐丰六路778号', 'J', 527, 'Flexible settings enable you to set up a custom key for comparison and synchronization. I destroy my', 2, 2, '2024-07-23', '1;4;5;6', '2022-12-16', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000054, '68ZN6JS0R0', '黎杰宏', '95nELdcfSo', '16027162848', 'cre6IgiCuj', '蔡子韬', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 59, '1952-10-01', 1, 151, 77, 1, 'Actually it is just in an idea when feel oneself can achieve and cannot achieve. The Synchronize to ', '1;4;5;6;9', '越秀区中山二路681号', 'P', 547, 'Anyone who has ever made anything of importance was disciplined. If opportunity doesn’t knock, bui', 3, 1, '2025-09-23', '1;4;5;6', '2023-01-10', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000055, 'uPtH4Z65UO', '卢震南', 'DKHGHl87EL', '16311551311', '2CNY34k0Ko', '沈子韬', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 31, '1965-04-21', 0, 184, 82, 0, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', '1;4;5;6;9', '朝阳区三里屯路374号', 'U', 114, 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set th', 0, 2, '2025-08-08', '1;4;5;6', '2023-01-15', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000056, 'xfW3AqvgSm', '赵詩涵', 'HGRY9o8LRC', '2812337344', 'J4uQ1NmzII', '谭震南', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 55, '1970-08-18', 0, 142, 115, 1, 'To connect to a database or schema, simply double-click it in the pane. If opportunity doesn’t kno', '1;4;5;6;9', '锦江区红星路三段138号', 'J', 875, 'To connect to a database or schema, simply double-click it in the pane. Difficult circumstances serv', 0, 2, '2023-04-22', '1;4;5;6', '2022-12-28', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000057, 'ClTKJc43BJ', '贾璐', '8tNV8f5Wt6', '16514156186', 'AxLkjSeoB5', '邵安琪', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 38, '1968-12-08', 1, 193, 84, 1, 'The reason why a great man is great is that he resolves to be a great man. A comfort zone is a beaut', '1;4;5;6;9', '紫马岭商圈中山五路162号', 'J', 384, 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. If your Int', 2, 2, '2024-12-07', '1;4;5;6', '2023-01-17', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000058, 'QI9vpekHAj', '薛杰宏', '5ilkrstaWd', '218538655', '5Cunl1Wcfc', 'Brian Black', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 15, '1992-12-16', 1, 182, 43, 1, 'Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat Clou', '1;4;5;6;9', '黄浦区淮海中路45号', 'P', 569, 'Typically, it is employed as an encrypted version of Telnet. Monitored servers include MySQL, MariaD', 1, 2, '2024-07-30', '1;4;5;6', '2023-01-11', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000059, 'QZ53TCsqsP', '任震南', 'IAxl6g0Q8d', '208035324', 'MO9nh2IfeS', 'James Rice', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 45, '1953-07-25', 1, 109, 96, 1, 'You cannot save people, you can just love them. Navicat Monitor can be installed on any local comput', '1;4;5;6;9', '天河区天河路311号', 'P', 141, 'To connect to a database or schema, simply double-click it in the pane. A man’s best friends are h', 2, 3, '2024-08-06', '1;4;5;6', '2023-01-15', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000060, 'm6mNa5cpwI', '曹杰宏', '9ysduIIKE1', '2837252950', 'bS516q2VtU', '罗宇宁', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 20, '1978-05-30', 0, 204, 134, 0, 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/S', '1;4;5;6;9', '成华区玉双路6号767号', 'D', 994, 'To connect to a database or schema, simply double-click it in the pane. To get a secure connection, ', 0, 2, '2025-06-25', '1;4;5;6', '2023-01-16', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000061, 'MHgkGa18Sl', '崔岚', 'Fu6CplNjrZ', '100500571', 'MVswsDHZLC', '曹嘉伦', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 38, '1979-06-12', 1, 169, 61, 0, 'The Information Pane shows the detailed object information, project activities, the DDL of database ', '1;4;5;6;9', '海淀区清河中街68号692号', 'U', 669, 'Navicat allows you to transfer data from one database and/or schema to another with detailed analyti', 1, 1, '2024-10-03', '1;4;5;6', '2023-01-05', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000062, 'hqnyq0o91M', '杜安琪', 'xcuguvpVd9', '7699292489', 'fa4ztAtv9a', 'Vincent Griffin', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 10, '1963-07-21', 1, 176, 50, 1, 'Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle', '1;4;5;6;9', '坑美十五巷463号', 'J', 94, 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with po', 2, 2, '2023-07-02', '1;4;5;6', '2022-12-05', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000063, 'xj92MeT3kR', '沈致远', 'pxtU3sF4Ak', '16461176827', 'xDu3aonkJg', 'Joel Kim', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 1, '1988-11-17', 1, 172, 78, 0, 'I may not have gone where I intended to go, but I think I have ended up where I needed to be. The Sy', '1;4;5;6;9', '徐汇区虹桥路642号', 'J', 909, 'The Synchronize to Database function will give you a full picture of all database differences. Somet', 3, 1, '2023-10-14', '1;4;5;6', '2022-12-20', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000064, 'n8kbnAR4o1', '孟璐', 'y3XqCo64v8', '7601748473', '0jWTnKHqNJ', '陈致远', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 21, '1955-05-07', 0, 167, 142, 0, 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to ch', '1;4;5;6;9', '京华商圈华夏街644号', 'D', 38, 'The reason why a great man is great is that he resolves to be a great man. After comparing data, the', 2, 2, '2024-03-05', '1;4;5;6', '2023-01-08', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000065, 'A4Cw43jYsV', '高璐', '2hlj6Xw0Kb', '76073127561', 'XRCbaWuoL5', '方秀英', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 54, '1967-08-02', 0, 162, 97, 0, 'The On Startup feature allows you to control what tabs appear when you launch Navicat. The repositor', '1;4;5;6;9', '紫马岭商圈中山五路547号', 'P', 464, 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/S', 0, 0, '2025-12-14', '1;4;5;6', '2022-12-28', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000066, 'sjmtngeU4e', '谢璐', 'JdvLxKlva6', '7601725412', '3GM4i0FGb4', '夏宇宁', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 23, '1954-10-26', 0, 141, 59, 0, 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Monitored', '1;4;5;6;9', '京华商圈华夏街524号', 'J', 627, 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud an', 1, 2, '2024-07-10', '1;4;5;6', '2022-12-30', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000067, 'XFEjIhLsco', '史璐', 'g8yQHZcD8Q', '203283867', '3n1WVVFhCH', '何詩涵', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 3, '1968-04-28', 0, 126, 120, 0, 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all', '1;4;5;6;9', '越秀区中山二路883号', 'P', 576, 'The Synchronize to Database function will give you a full picture of all database differences. Navic', 1, 3, '2024-11-21', '1;4;5;6', '2023-01-06', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000068, '6mbYrAagcc', '尹子韬', 'MaDlsFpeqx', '76989821138', 'WLoXsM9tOn', 'Linda Torres', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 5, '1977-02-04', 1, 141, 55, 0, 'All the Navicat Cloud objects are located under different projects. You can share the project to oth', '1;4;5;6;9', '珊瑚路419号', 'P', 371, 'Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Win', 3, 0, '2025-01-12', '1;4;5;6', '2022-12-02', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000069, '63JS435yHN', '李詩涵', 'tAHUPSOdfx', '15964350351', 'rmAsmm5Fqh', 'Kyle Diaz', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 26, '1977-12-12', 0, 118, 52, 0, 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in N', '1;4;5;6;9', '天河区大信商圈大信南路731号', 'J', 437, 'All journeys have secret destinations of which the traveler is unaware. If the plan doesn’t work, ', 2, 1, '2024-03-06', '1;4;5;6', '2023-01-10', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000070, 'juiriCFCUX', '孙震南', 'wDjZlz4uNa', '15233992496', '5ftuywKWPy', '郭岚', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 49, '1991-09-04', 1, 221, 89, 1, 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set th', '1;4;5;6;9', '徐汇区虹桥路316号', 'D', 411, 'The past has no power over the present moment. To connect to a database or schema, simply double-cli', 2, 1, '2023-12-27', '1;4;5;6', '2022-12-17', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000071, 'dih5AJgKZx', '方子异', '0cZEBLw0tJ', '17638125051', 'HoSxZ6x5RS', 'Melissa Reynolds', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 27, '1955-11-10', 0, 137, 102, 1, 'In other words, Navicat provides the ability for data in different databases and/or schemas to be ke', '1;4;5;6;9', '越秀区中山二路464号', 'U', 643, 'To get a secure connection, the first thing you need to do is to install OpenSSL Library and downloa', 0, 1, '2023-02-19', '1;4;5;6', '2022-12-16', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000072, 'lCiNLJFWKB', '陆岚', 'ZtSFghn7Lk', '17725037158', 'oIwrPNU3Fj', '向震南', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 20, '1981-07-06', 1, 220, 146, 1, 'You will succeed because most people are lazy. Anyone who has ever made anything of importance was d', '1;4;5;6;9', '坑美十五巷442号', 'J', 558, 'The past has no power over the present moment. Difficult circumstances serve as a textbook of life f', 2, 1, '2023-03-15', '1;4;5;6', '2023-01-07', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000073, 'FWKnA5llVy', '于璐', 'Bp3mrcsNyT', '14663481931', '3PqSbr0dqo', 'Angela Gonzalez', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 56, '1983-12-31', 1, 161, 105, 0, 'To open a query using an external editor, control-click it and select Open with External Editor. You', '1;4;5;6;9', '锦江区人民南路四段251号', 'U', 624, 'The past has no power over the present moment. You must be the change you wish to see in the world. ', 2, 1, '2024-11-15', '1;4;5;6', '2022-12-21', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000074, 'i9NZqq3JFa', '叶睿', 'jXhEluR4ov', '207841619', 'exUJHH9rVz', '周詩涵', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 6, '1975-01-28', 0, 183, 75, 1, 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS ins', '1;4;5;6;9', '海珠区江南西路337号', 'J', 886, 'I destroy my enemies when I make them my friends. You can select any connections, objects or project', 1, 2, '2025-04-23', '1;4;5;6', '2023-01-12', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000075, '7glnYmB1qw', '郑璐', 'fTECUTMQTu', '1091234464', '8CiVIm7gGZ', 'Johnny Hernandez', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 35, '2003-02-11', 0, 102, 90, 0, 'Navicat 15 has added support for the system-wide dark mode. You must be the change you wish to see i', '1;4;5;6;9', '东城区东单王府井东街594号', 'P', 591, 'Difficult circumstances serve as a textbook of life for people. To successfully establish a new conn', 0, 1, '2023-01-19', '1;4;5;6', '2022-12-27', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000076, '5nkjykJI1y', '吴杰宏', '9RzEH5iH2h', '13890681729', 'hSpFbLAZZn', 'Robin Ramirez', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 20, '1992-09-01', 0, 236, 139, 1, 'If opportunity doesn’t knock, build a door. HTTP Tunneling is a method for connecting to a server ', '1;4;5;6;9', '东泰五街840号', 'U', 149, 'In a Telnet session, all communications, including username and password, are transmitted in plain-t', 1, 2, '2025-07-06', '1;4;5;6', '2023-01-06', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000077, 'ESumJvRdCX', '李睿', 'ZJgpm4QMpd', '16496206332', 'EJZ2zxSycd', '蒋安琪', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 35, '1970-09-11', 0, 133, 42, 1, 'If it scares you, it might be a good thing to try. All journeys have secret destinations of which th', '1;4;5;6;9', '白云区机场路棠苑街五巷558号', 'U', 485, 'A query is used to extract data from the database in a readable format according to the user\'s reque', 2, 3, '2024-09-11', '1;4;5;6', '2022-12-05', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000078, 'qOllD6S1KR', '向子韬', 'v6e41JIDcq', '7559898150', 'qTN5kCCKYQ', 'Jeff Simmons', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 42, '1972-09-10', 0, 133, 128, 1, 'The Synchronize to Database function will give you a full picture of all database differences. The M', '1;4;5;6;9', '罗湖区蔡屋围深南东路628号', 'U', 634, 'The past has no power over the present moment. You will succeed because most people are lazy. Navica', 1, 2, '2023-07-03', '1;4;5;6', '2023-01-12', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000079, '96mXUb1KtJ', '邓子韬', 'N4ptjCJQLF', '14989917909', 'D57lNPE1UT', 'Eddie Kim', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 50, '1960-04-28', 1, 190, 139, 1, 'Export Wizard allows you to export data from tables, collections, views, or query results to any ava', '1;4;5;6;9', '海淀区清河中街68号860号', 'J', 486, 'The past has no power over the present moment. All the Navicat Cloud objects are located under diffe', 0, 1, '2024-11-12', '1;4;5;6', '2022-12-03', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000080, 'Up5euctsKX', '陈子异', 'XIRp57jzB9', '19121046691', 'v6UnN5mv4F', 'Ronald Morris', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 32, '1991-10-29', 1, 188, 63, 1, 'You can select any connections, objects or projects, and then select the corresponding buttons on th', '1;4;5;6;9', '龙岗区布吉镇西环路433号', 'U', 579, 'The On Startup feature allows you to control what tabs appear when you launch Navicat. If your Inter', 2, 0, '2024-02-20', '1;4;5;6', '2022-12-18', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000081, 't6nQfQFk92', '邹子韬', 'oLXFZsVZca', '7554773761', '7lV5qOWOab', 'Charles Russell', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 7, '1972-01-28', 0, 190, 106, 0, 'Anyone who has ever made anything of importance was disciplined. Navicat Data Modeler is a powerful ', '1;4;5;6;9', '龙岗区学园一巷694号', 'P', 118, 'In the middle of winter I at last discovered that there was in me an invincible summer. Navicat Moni', 2, 1, '2023-06-08', '1;4;5;6', '2022-12-12', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000082, 'hN1Qat9Qqt', '蔡杰宏', 'EzmdbsxDSq', '2811858613', 'Izr4wmsVJA', '杨秀英', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 26, '1984-12-04', 1, 227, 59, 1, 'To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, ', '1;4;5;6;9', '成华区玉双路6号599号', 'P', 478, 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. How we spen', 1, 1, '2025-06-28', '1;4;5;6', '2023-01-15', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000083, 'YMv8RuOrKB', '侯宇宁', 'jvMrr1lQgI', '214250973', 'dX7jyKugQf', '范子异', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 46, '1979-07-06', 1, 162, 43, 1, 'Such sessions are also susceptible to session hijacking, where a malicious user takes over your sess', '1;4;5;6;9', '闵行区宾川路759号', 'D', 477, 'You must be the change you wish to see in the world. I destroy my enemies when I make them my friend', 2, 0, '2025-08-19', '1;4;5;6', '2022-12-15', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000084, 'pUSkc0t9NS', '邵杰宏', 'JTOuniva6A', '19545865333', 'Jo0TIR2M3J', '邹致远', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 31, '1958-08-25', 1, 169, 52, 0, 'All the Navicat Cloud objects are located under different projects. You can share the project to oth', '1;4;5;6;9', '越秀区中山二路143号', 'J', 217, 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without ', 2, 2, '2024-08-03', '1;4;5;6', '2022-12-28', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000085, '3p3tPMKw6w', '陆詩涵', 'Zy3ctyZrvu', '14597061211', 'C8Z2knqPRG', 'Anna Burns', 'http://localhost:9090/file/download/5a5e9752da7049fa884afc3ea5ae55b8.jpg', 13, '1982-11-09', 1, 111, 60, 1, 'Export Wizard allows you to export data from tables, collections, views, or query results to any ava', '1;4;5;6;9', '朝阳区三里屯路748号', 'D', 978, 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you. With its well-d', 3, 1, '2023-05-07', '1;4;5;6', '2022-12-23', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000086, 'lmJMWzWQOC', '胡宇宁', 'CA4TuhDeVu', '13659861247', 'aNiEWMf2kf', '黎秀英', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 51, '1999-04-04', 0, 182, 120, 1, 'Such sessions are also susceptible to session hijacking, where a malicious user takes over your sess', '1;4;5;6;9', '白云区机场路棠苑街五巷341号', 'P', 306, 'Creativity is intelligence having fun. After logged in the Navicat Cloud feature, the Navigation pan', 1, 3, '2023-04-15', '1;4;5;6', '2023-01-18', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000087, 'c2qCbhiNTK', '黎云熙', '9gEfOR1bUb', '17441901213', 'CnRzgB50rT', '龙震南', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 8, '1976-01-26', 1, 105, 144, 0, 'The Main Window consists of several toolbars and panes for you to work on connections, database obje', '1;4;5;6;9', '珊瑚路754号', 'D', 590, 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis. A man is ', 2, 2, '2024-03-02', '1;4;5;6', '2022-12-02', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000088, 'ay7H4NyLB3', '董子韬', 'ULgQEnZJgB', '2199159383', 'CIDrJY1YJF', '袁岚', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 51, '1993-01-23', 1, 163, 109, 0, 'It wasn’t raining when Noah built the ark. Navicat Monitor can be installed on any local computer ', '1;4;5;6;9', '徐汇区虹桥路348号', 'D', 353, 'Actually it is just in an idea when feel oneself can achieve and cannot achieve. It is used while yo', 3, 1, '2025-11-07', '1;4;5;6', '2022-12-10', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000089, 'EoetPI6XuQ', '雷詩涵', 'FEFbBUvu8W', '104930508', 'OXbOy84GQd', 'Amanda West', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 35, '1954-05-27', 1, 122, 124, 1, 'Success consists of going from failure to failure without loss of enthusiasm. The Navigation pane em', '1;4;5;6;9', '延庆区028县道501号', 'U', 373, 'Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle', 0, 2, '2025-12-19', '1;4;5;6', '2022-12-01', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000090, 'Ua5hjum49U', '刘宇宁', 'lEls635Jc3', '76098396275', '3YzgCwZpP7', '沈秀英', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 7, '1992-09-08', 0, 217, 101, 0, 'To start working with your server in Navicat, you should first establish a connection or several con', '1;4;5;6;9', '乐丰六路325号', 'U', 215, 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set th', 1, 2, '2024-09-05', '1;4;5;6', '2023-01-08', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000091, 'TuyGHQ7UcC', '石晓明', 'RFrONgLSAh', '107109956', 'yN8frj5ZTf', '郝云熙', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 37, '1985-08-18', 1, 143, 118, 0, 'I will greet this day with love in my heart. You must be the change you wish to see in the world. It', '1;4;5;6;9', '延庆区028县道939号', 'U', 245, 'To open a query using an external editor, control-click it and select Open with External Editor. You', 1, 1, '2025-04-04', '1;4;5;6', '2022-12-29', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000092, 'eQGRLX9Hth', '孔安琪', 'xYaHTEVKPL', '18191514091', 'DlCemWxvEA', '郝宇宁', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 11, '1977-03-07', 1, 236, 110, 0, 'A man’s best friends are his ten fingers. It is used while your ISPs do not allow direct connectio', '1;4;5;6;9', '黄浦区淮海中路459号', 'P', 49, 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Such', 0, 0, '2023-07-10', '1;4;5;6', '2022-12-25', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000093, 'EQiBg4UKtg', '于秀英', 'fAQGSoJqBz', '2830764901', 'TOx3Fy9pvF', '周子异', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 52, '1992-03-06', 1, 130, 41, 1, 'The first step is as good as half over. I destroy my enemies when I make them my friends. Such sessi', '1;4;5;6;9', '锦江区人民南路四段978号', 'P', 426, 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to ch', 1, 2, '2024-10-11', '1;4;5;6', '2022-12-24', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000094, 'hOtAOO8iKd', '孔致远', '3Who9jzzDw', '2097464407', '5dUh8KJYsx', '余嘉伦', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 56, '1968-09-05', 0, 218, 65, 1, 'If you wait, all that happens is you get older. Anyone who has never made a mistake has never tried ', '1;4;5;6;9', '越秀区中山二路573号', 'U', 477, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', 3, 3, '2023-08-17', '1;4;5;6', '2022-12-27', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000095, 'XY4eVVa3Jp', '朱震南', 'h4uDc8hfmX', '211593980', 's9WagnBqfp', 'April Garcia', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 34, '1956-07-04', 0, 182, 126, 1, 'Navicat Monitor can be installed on any local computer or virtual machine and does not require any s', '1;4;5;6;9', '徐汇区虹桥路153号', 'D', 499, 'If the plan doesn’t work, change the plan, but never the goal. You cannot save people, you can jus', 3, 0, '2025-08-22', '1;4;5;6', '2023-01-02', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000096, 'y8GxUWG4p8', '吕安琪', 'MOGqHaZtXM', '18720330939', '5L9kR6qrMU', 'Lois Warren', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 19, '1956-07-03', 0, 153, 88, 1, 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all', '1;4;5;6;9', '锦江区人民南路四段711号', 'U', 715, 'I will greet this day with love in my heart. It is used while your ISPs do not allow direct connecti', 1, 2, '2023-07-12', '1;4;5;6', '2022-12-27', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000097, 'rWZ2l2sPXf', '夏嘉伦', 'MGC1ETzgGB', '7693481422', 'usv8MSjAF4', 'Nancy Hayes', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 9, '1965-12-13', 1, 147, 94, 1, 'It wasn’t raining when Noah built the ark. Anyone who has never made a mistake has never tried any', '1;4;5;6;9', '坑美十五巷813号', 'D', 109, 'It provides strong authentication and secure encrypted communications between two hosts, known as SS', 3, 2, '2023-10-10', '1;4;5;6', '2022-12-20', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000098, '1eOA6NfvlB', '范岚', 'SLBgWXUBNu', '75553713282', 'XN6B9W62OX', 'Helen Baker', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 38, '1960-02-13', 1, 199, 132, 0, 'Flexible settings enable you to set up a custom key for comparison and synchronization. Always keep ', '1;4;5;6;9', '罗湖区田贝一路327号', 'D', 503, 'It provides strong authentication and secure encrypted communications between two hosts, known as SS', 1, 1, '2024-06-07', '1;4;5;6', '2022-12-16', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000099, '2BCOi75AYt', '周岚', 'qdOeI2pfj6', '18565417640', 'TEAhUMvAlH', '钱云熙', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 12, '1951-10-15', 1, 110, 116, 1, 'Navicat allows you to transfer data from one database and/or schema to another with detailed analyti', '1;4;5;6;9', '紫马岭商圈中山五路366号', 'J', 712, 'Champions keep playing until they get it right. Navicat is a multi-connections Database Administrati', 2, 0, '2024-02-28', '1;4;5;6', '2022-12-09', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000100, 'fknqpcjexf', '任子异', 'tCtR4dMnNa', '2895038768', 'zgCqXRjn3l', 'Gary Allen', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 47, '1957-04-22', 0, 134, 149, 1, 'In a Telnet session, all communications, including username and password, are transmitted in plain-t', '1;4;5;6;9', '成华区双庆路734号', 'U', 746, 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without ', 0, 2, '2023-06-30', '1;4;5;6', '2022-12-28', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000101, '1botJUkg09', '朱璐', 'ir05Vg77Jj', '75570577932', 'eT18R09Ye7', '熊嘉伦', 'http://localhost:9090/file/download/8b30315d127243d085900b3c9d371790.jpg', 45, '1962-01-09', 1, 162, 52, 0, 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set th', '1;4;5;6;9', '福田区深南大道345号', 'P', 850, 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set th', 2, 1, '2024-11-26', '1;4;5;6', '2022-12-26', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000102, 'G72kVeGMZ5', '丁宇宁', '3kbH1BFHVH', '1092410882', '825dW4OAUF', 'Andrea Thomas', 'http://localhost:9090/file/download/bcd85f9d7cbe44ab867a189c39b956f0.jpg', 16, '1959-11-16', 0, 144, 102, 0, 'All the Navicat Cloud objects are located under different projects. You can share the project to oth', '1;4;5;6;9', '东城区东单王府井东街193号', 'J', 607, 'Navicat Cloud could not connect and access your databases. By which it means, it could only store yo', 3, 2, '2025-10-26', '1;4;5;6', '2022-12-28', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000103, 'mXCB99OQcD', '蒋震南', 'Qb2De1QrlS', '13983470522', '69SozHw4qs', '张云熙', 'http://localhost:9090/file/download/1149a93682354df2b0d409903445c0d3.bmp', 56, '1951-01-17', 1, 145, 112, 0, 'If opportunity doesn’t knock, build a door. You must be the change you wish to see in the world. I', '1;4;5;6;9', '海淀区清河中街68号75号', 'D', 465, 'Navicat provides powerful tools for working with queries: Query Editor for editing the query text di', 2, 2, '2025-01-29', '1;4;5;6', '2023-01-04', NULL, NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000104, '123', '321', '311', '123', '123', '123', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 12, '1997-05-06', 1, 123, 123, 1, '123', NULL, '123', 'P', 12, '123', 1, 1, NULL, '', '2023-01-19', '2023-01-29', NULL, '1000-01-02', 0);
INSERT INTO `user` VALUES (00000107, '123', '321', '3131', '15853198730', '1323', '123', 'http://localhost:9090/file/download/a18c694cc8244059954fcab5383f6107.bmp', 12, '1997-05-06', 1, 123, 123, 1, '123', NULL, '123', 'P', 12, '123', 1, 1, NULL, '', '2023-01-19', '2023-01-29', NULL, '1000-01-02', 1);

SET FOREIGN_KEY_CHECKS = 1;
