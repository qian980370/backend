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

 Date: 10/02/2023 16:21:26
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
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of block
-- ----------------------------
INSERT INTO `block` VALUES (1, 1, 68, '2014-05-25 08:26:44');
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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES (1, 'myEndIcon.png', '303bf4b7fb3748ab874baef56d2f505d.png', 'png', 68, '', '1', '0', '63d7db1ef0cddd11a91bcc2b30580364');
INSERT INTO `files` VALUES (2, 'My icon.png', 'de9f2e0361fd4f85929a6a4262ef4b09.png', 'png', 60, '', '0', '1', '336c92105cd912937790688f9108269c');
INSERT INTO `files` VALUES (3, 'GUNDAM-D-GP02.png', 'd37e4ac5630f4959b760a2b864fd2e7a.png', 'png', 843, '', '1', '0', '1c675c9a16a79295e64cf7cb0f7a321e');
INSERT INTO `files` VALUES (4, 'webp.jpg', 'bcd85f9d7cbe44ab867a189c39b956f0.jpg', 'jpg', 167, '', '1', '0', '77f1d23bb8eba881c4542221d1657f77');
INSERT INTO `files` VALUES (5, '`AHAJX7@[631[4N_2WZ0)SA.bmp', 'a18c694cc8244059954fcab5383f6107.bmp', 'bmp', 485, '', '1', '0', '087b445a4415323bb6ed9dde45c7754d');
INSERT INTO `files` VALUES (6, '5UMZS[7P%P]04G02UEWF}BN.bmp', '1149a93682354df2b0d409903445c0d3.bmp', 'bmp', 601, '', '1', '0', 'a5db87d3a675b2ccff2a0c1b1424dda9');
INSERT INTO `files` VALUES (7, '093807gj94kjd39pz38k2r.jpg', '8b30315d127243d085900b3c9d371790.jpg', 'jpg', 136, '', '1', '0', '63402af5297c623151d624b4fd60ad07');
INSERT INTO `files` VALUES (8, '093809eiw99ppe7e57zwk7.jpg', '5a5e9752da7049fa884afc3ea5ae55b8.jpg', 'jpg', 148, '', '1', '0', '34eb84ea78ad727571e52d983c7ca1d0');
INSERT INTO `files` VALUES (9, '093809p72lg21lyydd3y33.jpg', 'bc7b1f65e2664d86972069e72e039622.jpg', 'jpg', 121, '', '1', '0', '664228f71035d45a7dac094895aee039');
INSERT INTO `files` VALUES (10, '093809y9r5i6kbetc1z874.jpg', 'ec762efd0505400db432d5857b892737.jpg', 'jpg', 116, '', '1', '0', 'ee619ecf78987e4172740da3b06ef078');
INSERT INTO `files` VALUES (11, '093810dgeevd4et0itvxxb.jpg', '751e093c35e84d8492fc4f1f13f3565e.jpg', 'jpg', 120, '', '1', '0', '65ef9342c8b8beca17a833182f22efb1');
INSERT INTO `files` VALUES (12, '114605x08te0k6xoh2za0g.jpg', '2e88d3d616b6426cafa0a5815e1dc83c.jpg', 'jpg', 205, '', '1', '0', '787b7cfcaa3d1e900423af7c3a4598f1');
INSERT INTO `files` VALUES (19, 'cz.jpeg', 'cc104248c93a465bbef3b6cc86686d4a.jpeg', 'jpeg', 6, '', '1', '0', '8578a9e48010b343e4bc57510556a934');
INSERT INTO `files` VALUES (20, 'photo-Zirui Chen.jpg', 'cd441bf19e3b486d8306a00309906047.jpg', 'jpg', 72, '', '1', '0', 'f1021fd4cc75c3fc1cae5fdcf332b179');
INSERT INTO `files` VALUES (21, 'photo.jpg', '7adb31d291144ab191e070ac37a72abd.jpg', 'jpg', 126, '', '1', '0', 'b72ddafdb44180eb31fb899a77d93ea9');
INSERT INTO `files` VALUES (22, 'czym.jpeg', '4a920f09fee54690ba91c1cd7fe0d86f.jpeg', 'jpeg', 6, '', '1', '0', 'a26d45959ab4478242411b0142bdd78f');
INSERT INTO `files` VALUES (23, 'cz2.jpeg', '891336f02d694cdaa3e18662c72f00c9.jpeg', 'jpeg', 6, '', '1', '0', 'c84bb8f9457fe2bfcc4161dd93e9302d');
INSERT INTO `files` VALUES (24, 'cz1.jpeg', '1c3b28ef70c3476fab179ff23aa92487.jpeg', 'jpeg', 6, '', '1', '0', 'e1763615f526f19ff45f931e0cacd023');
INSERT INTO `files` VALUES (25, 'download (1).jpeg', '33d9eb07cc6c4e9b8e257470954dd75c.jpeg', 'jpeg', 5, '', '1', '0', '1d76116f2ed4200512d82d224a99c92d');
INSERT INTO `files` VALUES (26, 'download.jpeg', '9c7e800443b84272bb7525114ac76b88.jpeg', 'jpeg', 7, '', '1', '0', '823dc0f6c420b3710346899506da2bea');
INSERT INTO `files` VALUES (27, 'images.jpeg', '291d56830c894a759407cd9214ad6ec8.jpeg', 'jpeg', 5, '', '1', '0', '5b2979c421f1f62f9127747ae229e38a');
INSERT INTO `files` VALUES (28, 'images (1).jpeg', '76124e6a5996475ea3fe4adc0f85ae10.jpeg', 'jpeg', 6, '', '1', '0', '4c968f5a590ea567a15accd7673a5cb0');
INSERT INTO `files` VALUES (29, 'WechatIMG15.jpeg', 'e080389fc97d4f7ea7a8e6d5bc5ade01.jpeg', 'jpeg', 296, '', '1', '0', 'e43b941ee6e88d67b68511d0779d0012');
INSERT INTO `files` VALUES (30, 'WechatIMG13.jpeg', '106f799c1d2a469b940373209373aa41.jpeg', 'jpeg', 530, '', '1', '0', '87ba00354cea12dffa0fe6047fa14206');
INSERT INTO `files` VALUES (31, 'WechatIMG17.jpeg', '7a9661d1d0ec42d49d101d4fdd3d66d2.jpeg', 'jpeg', 427, '', '1', '0', '081fb695bd324117ad22d4ab760c1972');
INSERT INTO `files` VALUES (32, 'WechatIMG21.jpeg', '1194ed73b2fe44fb97b7acd5b04511c7.jpeg', 'jpeg', 84, '', '1', '0', '98ed0d4b3dc7f3acfff7df374a133080');
INSERT INTO `files` VALUES (33, 'WechatIMG23.jpeg', 'af2c8ac230874df3a4906438f2c6e6c3.jpeg', 'jpeg', 365, '', '1', '0', '19c2765e8cb67443045897c34a47469f');
INSERT INTO `files` VALUES (34, 'WechatIMG25.jpeg', '11eeddd329f4469e87ba1d62306580c0.jpeg', 'jpeg', 39, '', '1', '0', 'b6a21503b7f87ead7cc245927b94c84e');
INSERT INTO `files` VALUES (35, 'WechatIMG27.jpeg', '5082f124dc844f2eb180613419a94c4b.jpeg', 'jpeg', 391, '', '1', '0', '88e48ebe5a4f86f73cde201cfb029a38');
INSERT INTO `files` VALUES (36, 'WechatIMG29.jpeg', '806b8e82face44aa80392fc50fdf914d.jpeg', 'jpeg', 131, '', '1', '0', '7cfdecd917cce52ed0143f8da5be9fc1');
INSERT INTO `files` VALUES (37, 'WechatIMG33.jpeg', '93a0c9a778fd4dd5b877edbe0a46f2ad.jpeg', 'jpeg', 488, '', '1', '0', '5a491d9f41b35502f0c7af2338c81fb7');
INSERT INTO `files` VALUES (38, 'WechatIMG34.jpeg', '88f09554e5c64e33bf81581665701c93.jpeg', 'jpeg', 370, '', '1', '0', '24a10bc2e54eeda5f7c09eda55f705bf');
INSERT INTO `files` VALUES (39, 'WechatIMG36.jpeg', '9f849a7ce2e447ad9f7e799f0c428294.jpeg', 'jpeg', 289, '', '1', '0', 'fc748dc829ffa4c89f56374fddad3d2b');
INSERT INTO `files` VALUES (40, 'WechatIMG38.jpeg', '56a08eb2819e4f9ab2e962084f43fcfb.jpeg', 'jpeg', 252, '', '1', '0', 'd66983441779520b3f451063c6676462');
INSERT INTO `files` VALUES (41, 'WechatIMG39.jpeg', '91bd2035904f4084b0d9975066349442.jpeg', 'jpeg', 123, '', '1', '0', '59cf270e3ff340c78d63c4cc28720890');
INSERT INTO `files` VALUES (42, 'WechatIMG41.jpeg', 'f6f336877e8b4b8cb876dbeefc06068d.jpeg', 'jpeg', 669, '', '1', '0', 'af97ca0fa7afe1aac5e03f3300703aea');
INSERT INTO `files` VALUES (43, 'WechatIMG43.jpeg', '8d5975ce80d24e3f90358617249cfb22.jpeg', 'jpeg', 38, '', '1', '0', '8fac98e19d5d39ebaef70d861ce77149');
INSERT INTO `files` VALUES (44, 'WechatIMG45.jpeg', '786bacc33efe4e959b35d65ab395baf2.jpeg', 'jpeg', 65, '', '1', '0', '661202b61a8c2579047c57daddfe9c07');
INSERT INTO `files` VALUES (45, 'WechatIMG47.jpeg', 'bf6076834d594d9197f7f169014ac44e.jpeg', 'jpeg', 197, '', '1', '0', '2eae27c995bcec41fbb8bde2943ce0c1');
INSERT INTO `files` VALUES (46, '19f7ae0627b1f8b6f91442501c0c6dff.jpg', 'acaa4969486a40a3a55518fc1aaef62f.jpg', 'jpg', 215, '', '1', '0', '593f733cbc988926dad8a85965fd222b');
INSERT INTO `files` VALUES (47, '81f6c2e64853cc1775ea19c867bee964.jpg', '045d5f188550479a9b6e388bcfc2df7e.jpg', 'jpg', 557, '', '1', '0', '74b675cee40dfd5deaa661a5cc45f8bf');
INSERT INTO `files` VALUES (48, '8524610eedd469fa5491b8d621c4b8cc.jpg', '3541b2d9e0f646779c0c52b98f3f1eb8.jpg', 'jpg', 918, '', '1', '0', '7151babf58b52181e1dbd4a011ab6033');
INSERT INTO `files` VALUES (49, 'c6fc0523a47ae1652988216b159c4fba.jpg', '0756e71c1aac47a7ac4e451c3f3bc405.jpg', 'jpg', 84, '', '1', '0', 'a6b7403217a1e68b5c3ffd8ef07bd0de');
INSERT INTO `files` VALUES (50, '546fbc301ffa5594fbb5df470e504372.jpg', 'cd55907eb0df4782bcafb3dd2f0f891a.jpg', 'jpg', 214, '', '1', '0', 'ef92a2090ba32525fb676de6357c88f2');
INSERT INTO `files` VALUES (51, '7fb12df190c3f41aa0f971df6cacee32.jpg', '3f548ca540f14b49896a51f05af49892.jpg', 'jpg', 59, '', '1', '0', 'f3ff311758176455dba9054acfd632f9');
INSERT INTO `files` VALUES (52, '1259e407358130a84d83dea38da6539d.jpg', 'bc0a1b2d891e43e58d7f299fd8e77348.jpg', 'jpg', 60, '', '1', '0', '5a5278244d91566200f35a0eac947e73');
INSERT INTO `files` VALUES (53, '4c4a834bf995d25151b70c73ded7d71b.jpg', '7a8d09a1e9fc443a88086d123e16d9f6.jpg', 'jpg', 465, '', '1', '0', '24925138ffdcb3d48959f59c80b73667');
INSERT INTO `files` VALUES (54, '5ee5e223c1cb8a0d864295305e227ce9.jpg', 'b921d46474ec4a83920aa30574012381.jpg', 'jpg', 166, '', '1', '0', '901f8d93ecdd71eb1f164217bbd302f6');
INSERT INTO `files` VALUES (55, '09150c11e8e98ddb9d5c0df52db6f58f.jpg', '588bac69c3ed48adbd7b3f132193a738.jpg', 'jpg', 148, '', '1', '0', '62f441e67351177ad43e042bdf34b89d');
INSERT INTO `files` VALUES (56, '2a80d02247aca74549d15a8f7e221c4d.jpg', '55b3948248a84cd483a1df23c83d5372.jpg', 'jpg', 39, '', '1', '0', '3f4b112b8405f1d40553d1e95d2eee83');
INSERT INTO `files` VALUES (57, '240577bbec3ba1ecab57e71fba4cec96.jpg', 'e38a835eb4254076b707c194f32e8174.jpg', 'jpg', 108, '', '1', '0', '2f36f5d950106b7f1872a60c57e1c89e');
INSERT INTO `files` VALUES (58, 'b79b42d04cc7f3bca80208a70f6f0f9d.jpg', 'd1ecc4cf74184a7ab9c324da19e2cc8a.jpg', 'jpg', 65, '', '1', '0', 'bd6fa0466c93f9c63fe4dcac1f77990d');
INSERT INTO `files` VALUES (59, 'b4d63a50694f544e4333883dd8e1f855.jpg', '8767e014443c4b68b08130c2c4744f74.jpg', 'jpg', 71, '', '1', '0', 'ff06e16403ffed5d123d5c7052e1889a');
INSERT INTO `files` VALUES (60, '9d1c33ff255aecf77a35c8bd946230ff.jpg', 'a469d91a78104c88b03831079fe74855.jpg', 'jpg', 103, '', '1', '0', 'b548927137ecaf9be45e78666559dbae');
INSERT INTO `files` VALUES (61, 'c6d0ff6072e2bc18ebc6d7fcc2c1077c.jpg', '98939390802d408f816f79706b339900.jpg', 'jpg', 32, '', '1', '0', 'e3ec00b7df57268c593012ce0bc44455');
INSERT INTO `files` VALUES (62, '9cd87cf434209e0c1ac64c60c4c41041.jpg', '5fce2991ea31483696e0ed37031562e6.jpg', 'jpg', 254, '', '1', '0', '6a4f31e667b1dbc968729d84c2414791');
INSERT INTO `files` VALUES (63, '74bd95e9fcbed0362daf8fb8ac555f6e.jpg', 'c4fffcbeeaa44f14956e3a6d0a565d51.jpg', 'jpg', 44, '', '1', '0', 'dd4941145e2b41fb1a5ca3c8aec315f8');
INSERT INTO `files` VALUES (64, '69766976431da3bfb87f390a97e67da2.jpg', '158bf8d74cac497da4b1836048b26dca.jpg', 'jpg', 114, '', '1', '0', '86096219adfa8d66fcd7969b691fee1d');
INSERT INTO `files` VALUES (65, '222038a319e47172d78cdef27dddc885.jpg', '9b24c32cfd4646ac89d5cf09bde6232c.jpg', 'jpg', 224, '', '1', '0', '8052758e1c5b036d0832af375ba8257d');
INSERT INTO `files` VALUES (66, '3646b9175eedc11019141997790d9875.jpg', '94822be11eaf4bccb6eb62e0b7da4851.jpg', 'jpg', 86, '', '1', '0', '6ee4a28398127dc48b956e76101d8441');
INSERT INTO `files` VALUES (67, '02161b10a2e81e636a377f6a2e075360.jpg', '847f2ca891904a68845bc862ef0c9d6f.jpg', 'jpg', 198, '', '1', '0', '4285002e4bc4cdb1ff69e7bb4af27aca');
INSERT INTO `files` VALUES (68, '8829f946ce4cf2961bc1d86c6a9f80c3.jpg', '70a240069d0d4366809bb1804226b9ea.jpg', 'jpg', 179, '', '1', '0', '5a0a42eec96a702e886ef2d12d23418b');
INSERT INTO `files` VALUES (69, 'a14c2eb4be025416dbafd5ccdfdf590a.jpg', '967b056534274bb7ab337be4e0061c11.jpg', 'jpg', 146, '', '1', '0', 'b62bbaf12422f4d618844af75a1e3e0b');
INSERT INTO `files` VALUES (70, '4fa8cbbed440c820c04b6b543c7c0713.jpg', 'edeff0705cab4b07916f9186b00d64e9.jpg', 'jpg', 162, '', '1', '0', 'a9412a671006f40aa075c34d80ca6590');
INSERT INTO `files` VALUES (71, 'f0ccff3e9a6548128415d85de95d3b24.jpg', '0f387478c45a4539a93a2f58344bf464.jpg', 'jpg', 200, '', '1', '0', 'a229bb9f1a0109fec272732b15221169');
INSERT INTO `files` VALUES (72, '0071dd740761548fe2b5bf892e60ad79.jpg', '9d9fea78160242938ebaa649752c4251.jpg', 'jpg', 328, '', '1', '0', 'dba442f0d5fbe391daa4fb4fe9204e93');
INSERT INTO `files` VALUES (73, '71dcbe94c5f9178774636ffc0624b130.jpg', '49836851062a48919b9b627b192b556d.jpg', 'jpg', 210, '', '1', '0', '74d471e0fb63812421ab5e058f33e13e');
INSERT INTO `files` VALUES (74, '0b061c0151bfed003fe7fed30accef14.jpg', '50190262c1e346c3befdf5a651406b58.jpg', 'jpg', 331, '', '1', '0', 'b41e9bf58f48e0c3ea8537233bcc137f');
INSERT INTO `files` VALUES (75, 'e2ff66b002b6524f8d718ff2eb20e820.jpg', 'a75e103ab1504dd196cac87a9b1ec358.jpg', 'jpg', 482, '', '1', '0', '88594029292e2ed147c374bb4bb8ac39');
INSERT INTO `files` VALUES (76, '675affeccef2dcc6284ff90f8064edb2.jpg', 'b8e10635598b4ffe8f610de22020c744.jpg', 'jpg', 924, '', '1', '0', '9148a05b49c79c58ed4018cf3a11c8db');
INSERT INTO `files` VALUES (77, '3fe9897c33699eba1ebafbabf59dc499.jpg', 'ee336ab35db8405c95e5e3ea68927acb.jpg', 'jpg', 659, '', '1', '0', 'dab2c5ae4a09033b26771d9e211a7978');
INSERT INTO `files` VALUES (78, '2b8c8e59650e99a0d40b5f6bc77680dd.jpg', 'd117aff2ea804cd390824e6a1b0d9081.jpg', 'jpg', 273, '', '1', '0', '1b3b824cafa7d7ca4a3bc54ee6bea7d6');
INSERT INTO `files` VALUES (79, 'ee12ce6a8ac76ba510b2b335ce5b0386.jpg', 'fa86c35ababa4c07aa12251af9eed6a4.jpg', 'jpg', 479, '', '1', '0', 'c8a7fdeffe4c906451548b0607503f50');
INSERT INTO `files` VALUES (80, '86364f809d98707a24be5a3230d6607f.jpg', 'eb21613c33da41288eb28c856a5c42f4.jpg', 'jpg', 151, '', '1', '0', 'a5e58da531a1d83ec6617c8b51011f26');
INSERT INTO `files` VALUES (81, '006f4ca257854faa833d292f5c5c4bdd.jpg', '7dc15a67c0cf4500a2edf07c5a26f62d.jpg', 'jpg', 687, '', '1', '0', '8f272d50b0b9467b95b8f57198e09e3e');
INSERT INTO `files` VALUES (82, 'c7433a8ba8e75c67e5ea6f8f76923220.jpg', 'b0b08468dc67490dbbaae2dfb1a9c263.jpg', 'jpg', 210, '', '1', '0', '297de437d03e8bde0b7c30d6ce29a307');
INSERT INTO `files` VALUES (83, '1b540b48042558512c3725573802db43.jpg', '73c9cd3302204562b050f63b5518846d.jpg', 'jpg', 109, '', '1', '0', '0063abccef7161c90f4f16a3189f8f79');
INSERT INTO `files` VALUES (84, 'f2d0add63a5a178f14287cf7ab51ed90.jpg', 'ba11d154b93f408b9a59a71b4ad3ec42.jpg', 'jpg', 324, '', '1', '0', '350ce59204e0c25c7422b80cafaa70ca');
INSERT INTO `files` VALUES (85, '656becac65dce2934390eb4f22c6bd8c.jpg', '83562e0763154a55bc84f636ac5512e6.jpg', 'jpg', 155, '', '1', '0', '7c02eea21b0a34cea8f77b8358ad5f22');
INSERT INTO `files` VALUES (86, '16bfe638f3f907b4f88fee8eb54807ca.jpg', '6712e6b20fb84d8fbb09e5a69cb3753d.jpg', 'jpg', 176, '', '1', '0', '5aa76fb7dc8ea2232a661822079c3ad7');
INSERT INTO `files` VALUES (87, '2b661439e6d8071409acf4d34d262d9a.jpg', '6cb211159e674fbda273c52309935bae.jpg', 'jpg', 780, '', '1', '0', 'f17c291db86364a54a464e92d9e5f3e4');
INSERT INTO `files` VALUES (88, 'a07a7dd08bbe8986e8c3055dd6bc3170.jpg', 'e27e48301b4e49e48416d248852bb6d4.jpg', 'jpg', 122, '', '1', '0', '636281ac6d8af6d3eeb410ce14caebce');
INSERT INTO `files` VALUES (89, 'fd29f5887c5fc3897804d883053ab6d6.jpg', '10754d3d23594dffa4e792d59d94eefa.jpg', 'jpg', 110, '', '1', '0', '917183da61573a59e12727eddaddcc25');
INSERT INTO `files` VALUES (90, '26d343989eba95f1378f5a99f8965720.jpg', '07ebbf451bb74a16ab78c908962df3b2.jpg', 'jpg', 90, '', '1', '0', 'd2eb9aeb07d2dc92d96e37233f417ca7');
INSERT INTO `files` VALUES (91, '3c967966407e851e34b316d20201bbc8.jpg', '729ac7c09a1b45728a060982b1f07916.jpg', 'jpg', 126, '', '1', '0', '3907c7cf832b23f91d9038edfc01fef4');
INSERT INTO `files` VALUES (92, '6e92f3341c6ec468e6edd2124906f7d9.jpg', '81d7dfad81724286b4226b840f60c6ec.jpg', 'jpg', 88, '', '1', '0', '80f16a9cd56423c314b01f619cb743a8');
INSERT INTO `files` VALUES (93, 'c5f410bc2d720cb2b7db428faf8ef15d.jpg', 'e69e38973869479eab76e7a67d7514ec.jpg', 'jpg', 969, '', '1', '0', 'fdc912bd5af152a450c3fb7edc3a1b6b');
INSERT INTO `files` VALUES (94, '5971ea1acf9a8027be2cac0ad96a9da6.jpg', '39523a1d8b2f46f8b91873c5ec745e33.jpg', 'jpg', 470, '', '1', '0', '735ebf3020e3add71da33507cea02ae2');
INSERT INTO `files` VALUES (95, 'ed3164a35c416bec075a40a0e2442ad5.jpg', '18d92adb7af849959cc9a7ea516b1619.jpg', 'jpg', 64, '', '1', '0', '919b23b9c145c84c1149295c16bb35ca');
INSERT INTO `files` VALUES (96, '409f1baeeffe90c5771dc876aa347a32.jpg', '0644d5d19f21430e9f4535b9aef54b90.jpg', 'jpg', 263, '', '1', '0', 'd1fa878265a38b96e641542a1e29efea');
INSERT INTO `files` VALUES (97, 'd4f89ad2ce6551d082d4f6707d13c268.jpg', 'ff479f52e56147a382481e5a5e4081ab.jpg', 'jpg', 282, '', '1', '0', '4277e4a370c03ae6e03ef20fdab0b384');
INSERT INTO `files` VALUES (98, '6b082bc900c608ad041d0faa94226035.jpg', '42003a4515b54c969f1ae0ee3233832d.jpg', 'jpg', 55, '', '1', '0', '502762ae63e82dc5ae7c0bae5cc1b9c4');
INSERT INTO `files` VALUES (99, 'cad598db33dbb686afb428494e213b43.jpg', '1446725e6c0142d3b6c0b23e8047ec61.jpg', 'jpg', 134, '', '1', '0', '2f5b063be6622f6cc85eafe23fb8c94b');
INSERT INTO `files` VALUES (100, 'b77d32cb3b255316a81d04a5d852749b.jpg', '2e46e21e9aac4e3793c8eb88b0eb4ad2.jpg', 'jpg', 83, '', '1', '0', '0a3564aed5909b542fde6db7d092a1c0');
INSERT INTO `files` VALUES (101, '3aa14e3c8f3eba4a02447d5ad6db6e88.jpg', 'd041c3511c684bdab4a28d741f2625f8.jpg', 'jpg', 42, '', '1', '0', '2e37d9a5613e291d6b15fe8a15dbb013');
INSERT INTO `files` VALUES (102, 'c5d57c8403caa39c77551bb21ab62dc6.jpg', '686cf7045e6648d09f071ee7dc788393.jpg', 'jpg', 181, '', '1', '0', '2b5f2b59081239da532680bc72741a94');
INSERT INTO `files` VALUES (103, 'cf88c9f9bca410f41fa334f6e7179fa2.jpg', '84807dcd10f644f9a615aea1d7d6aad0.jpg', 'jpg', 692, '', '1', '0', 'b4bcdbc06ce84e5a98e51958011e9f2e');
INSERT INTO `files` VALUES (104, '8b7eeb6d6f870c0bd5235341e7d74a44.jpg', '2f4a1bbe1ca1449c8781479fc9b7344b.jpg', 'jpg', 33, '', '1', '0', 'e3e2bf019249fa7dd42e8589a43f3d78');
INSERT INTO `files` VALUES (105, '63399049aa0eba4491fc7adfa9b2c79f.jpg', 'da135e14aa024218a130e1326e267723.jpg', 'jpg', 393, '', '1', '0', '04f5773101b10430bd6ba446d5e75df5');
INSERT INTO `files` VALUES (106, 'fd4eda5e10976405fdd4a472d9b8d8ef.jpg', 'eba1453cd233462899063fb0bd6d82d6.jpg', 'jpg', 29, '', '1', '0', 'af9248af1d238cc2e07bbf26395e8f5c');
INSERT INTO `files` VALUES (107, 'a3196e150a7384d9ca3092aa09a3b2e8.jpg', '96904d59c67942e69f6419a6065a3123.jpg', 'jpg', 58, '', '1', '0', '268c0ce568cd504307fc04f721a70960');
INSERT INTO `files` VALUES (108, 'b3e0e01d6a3593e8783ea19741d71e3f.jpg', '2572dad66cc540a68d25827311c4e29a.jpg', 'jpg', 34, '', '1', '0', '69e4d7314aafecf7fc76217f7f4e3037');
INSERT INTO `files` VALUES (109, '0230b8358ed62569d98b1ab092ef4b70.jpg', '90bc501a018843129c9204ee884db023.jpg', 'jpg', 176, '', '1', '0', 'a6dc06432d2d6ed8d8b8746b6bb2ee49');
INSERT INTO `files` VALUES (110, '21d70f55e1f805382385921297d621a8.jpg', 'fdce7adda6ce4470924703162a64a02d.jpg', 'jpg', 54, '', '1', '0', '13c7e94cdbfc6f7edbd6672bdf64f49b');
INSERT INTO `files` VALUES (111, '62c80594ffc0507fb4d641616aee7b2c.jpg', '8fa881c62f9145ce9e3d34ca4da557dd.jpg', 'jpg', 33, '', '1', '0', '5fb16c76647b0c308c857a8f37d77135');
INSERT INTO `files` VALUES (112, '60f85ba4ac1920b1ab7270bc242397d1.jpg', 'c5c38894e4944ca7933694e1d632a5e2.jpg', 'jpg', 69, '', '1', '0', 'ae58a51efc8dab865b8122a0c239b1a9');
INSERT INTO `files` VALUES (113, 'a064609da226e0261bc20be90a603e51.jpg', '08033e5316c14677abbad64a7bf360ba.jpg', 'jpg', 30, '', '1', '0', '187e4e0de1c1189ce9edb8ca516b0eef');
INSERT INTO `files` VALUES (114, 'a92d6944d902649aa0f200ac239e4e72.jpg', 'ae3699eeddeb47eb9c59216caca44ffc.jpg', 'jpg', 37, '', '1', '0', 'a405e5ec3872386a56e50c6af62c8873');
INSERT INTO `files` VALUES (115, 'c233c50300c3c92502bd6ddb91260b7e.jpg', '8c8b7a4b0a0a4be0a920c8331e2a99a1.jpg', 'jpg', 145, '', '1', '0', '53ffe0ee842def87b5e799ef2bdebf9f');
INSERT INTO `files` VALUES (116, '903cce7ee77c9880e8d5e26abf259a2b.jpg', '5774ddda673740cfa9b335d7ed7b13dd.jpg', 'jpg', 249, '', '1', '0', 'e47fed9efe2f825616324d297b2c97e1');
INSERT INTO `files` VALUES (117, '920deead00bb2f370ce729924246aa40.jpg', 'ddb18126e8cd49e1b827035fcf734cba.jpg', 'jpg', 45, '', '1', '0', '0912aa2392b22de5d6c1d4995fa4339d');
INSERT INTO `files` VALUES (118, 'd13899474decb17bb82aefa9896d54cd.jpg', 'b9f6d3f36cc14cb6a58b1e3de1f56b3b.jpg', 'jpg', 89, '', '1', '0', 'f36162a15038434f426bbbed532ff36b');
INSERT INTO `files` VALUES (119, 'c7401a17a164f9a0f8f454d3139c05d6.jpg', 'ec53d48594bc4145b941ca3746110621.jpg', 'jpg', 22, '', '1', '0', 'b5a95c55f6ec33495a0835949c943835');
INSERT INTO `files` VALUES (120, '1a4185d1b6b1e6b070e9b28a471e004c.jpg', '317879a29d324cdaa9b52c8c6760bd7a.jpg', 'jpg', 794, '', '1', '0', '6605c186e2ed8b4048b7d9a7feb2e34c');
INSERT INTO `files` VALUES (121, 'bd8ce3b6148c4679c5fa8b062523ddd6.jpg', '02980f0e3312465989ef94158f40226f.jpg', 'jpg', 688, '', '1', '0', '1be4ae7a94a8b0fde0554ba35d1ac4f4');
INSERT INTO `files` VALUES (122, '7e5dd0dbbde091e3426dd8e6c0011956.jpg', '818598d784914cdf9e3e1be8a1213603.jpg', 'jpg', 133, '', '1', '0', 'f728e35823cb2aa4940bc1d7b4dda3f7');
INSERT INTO `files` VALUES (123, '09b4f223cd18075b30b11c5182a86021.jpg', '90c5c90aba9b4779b2e1527f518ad584.jpg', 'jpg', 3556, '', '1', '0', '8799966570ea2b8e8bae4f2f68f7d240');
INSERT INTO `files` VALUES (124, 'WechatIMG49.jpeg', '6e17e78277f94586bd1ddf03ec1ab260.jpeg', 'jpeg', 4512, '', '1', '0', '848051aed6373c726d1e3f310c83e6d4');
INSERT INTO `files` VALUES (125, '1bae03ba4c547229759431d2e2613862.jpg', '8398bd8aa38942feb510bdf29cbbda94.jpg', 'jpg', 2290, '', '1', '0', '9d2888cab035462907793a71796c9be1');
INSERT INTO `files` VALUES (126, '7748afc3f94668de101cdae8d111b5c2.jpg', '13aa2b77ea85419b945b79db1a65ec8b.jpg', 'jpg', 4570, '', '1', '0', 'e11d8315f46046ad6b72fa506aa2022a');
INSERT INTO `files` VALUES (127, '1abd9076b608c699e69fbcc7876ed690.jpg', 'b06aea949810448fbab943a010d6d703.jpg', 'jpg', 1126, '', '1', '0', 'b297b0702735866c7ba4d29123b10fe1');
INSERT INTO `files` VALUES (128, '47d73176e59a0750e47d04e546f06397.jpg', 'e95833e5410348ebb6ecac271413ec39.jpg', 'jpg', 3361, '', '1', '0', 'b0dc1afe36c26c122678e92b479e70a7');
INSERT INTO `files` VALUES (129, '9cb68440e45deac2d8795d41361118f8.jpg', 'ba103303e583484a8c7d1fd0baf7baf2.jpg', 'jpg', 5730, '', '1', '0', '72f7dff47ab8e23299cf074fafe580ff');
INSERT INTO `files` VALUES (130, 'adcf873fb5cdf230425f91fd19c63041.jpg', '8ba4504bc04a4bfd985e4f50a79e3a10.jpg', 'jpg', 5700, '', '1', '0', '6bef431dc4a31e3e7ad5b94e65d3a2b8');
INSERT INTO `files` VALUES (131, '44c4b448826d3434766a56464de9dfcd.jpg', '43c7f2c4e7824a2c9a55452ac6c7c730.jpg', 'jpg', 2737, '', '1', '0', 'e0374ed878e544351b6fff0f7cb52520');
INSERT INTO `files` VALUES (132, '4e9a216c7f6be1aac979ec044fa704c4.jpg', '768e01357c6141af92ed22441330caf5.jpg', 'jpg', 4359, '', '1', '0', 'f057dc2b89e7542900197b5b37acb089');
INSERT INTO `files` VALUES (133, '4be1e2e6fd8b266d0e7d14400d5b49b1.jpg', 'fe08a623177143e3b6ee8be7a9e18853.jpg', 'jpg', 4507, '', '1', '0', '1cc4bbfd4c1d3c7148f579c9693b1394');
INSERT INTO `files` VALUES (134, 'ab14b9fa866368b1280883fc818452de.jpg', 'd7717f8345d74d439685f084bc6b657f.jpg', 'jpg', 1402, '', '1', '0', '1f4092b3c0354c3e3ca56b5eedc28e8c');
INSERT INTO `files` VALUES (136, '屏幕截图 2023-02-10 154850.png', 'b090b10e252d4eeab2ef2458081724c8.png', 'png', 59, NULL, '1', '0', '2168712ccc22efa4a5bb288fd337affb');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `invitation` VALUES (13, 1, 15, 2, '2005-09-21 19:32:24');
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
  `nickname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nationality` int(11) NULL DEFAULT NULL,
  `birthdate` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(2) NOT NULL,
  `height` int(8) NOT NULL,
  `weight` int(11) NOT NULL,
  `married` int(2) NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hobby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `income` int(11) NULL DEFAULT NULL,
  `property` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `smoking` int(11) NULL DEFAULT NULL,
  `drinking` int(11) NULL DEFAULT NULL,
  `mtime` date NULL DEFAULT NULL,
  `album` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `register_date` date NOT NULL,
  `last_login_time` date NULL DEFAULT NULL,
  `membership` date NULL DEFAULT NULL,
  `pause` date NULL DEFAULT '1000-01-02',
  `manager` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (00000001, '123', '陈梓慧', '20293', '999088', '13230988', '陈梓慧', NULL, 12, '1994-11-01', 1, 123, 123, 0, '本科毕业，高1.6米左右 在梅师附小教书，在编英语老师 性格比较开朗，喜欢运动，家里两姐弟，和父母同住。', '13;', '123', 'P', 12, '123', 1, 1, '1000-01-01', '29;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000002, '123', '匿名', '311', '1231276', 'BQDdDqM3211EgX', '匿名', NULL, 12, '1996-01-01', 1, 123, 123, 0, '96年独生女，身高163，在梅县创文办工作，是编外人员（不是正式事业编），妈妈家庭主妇，爸爸是梅县区信访的公务员。', '1;4;5;6;9', '天河区天河路388号', 'P', 12, 'I destroy my enemies when I make them my friends. Monitored servers include MySQL, MariaDB and SQL S', 1, 1, '1000-01-01', '30;;;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000004, '123', '匿名', '41rRRTtb8a', '190058155', 'NjolbI4LDo', '匿名', NULL, 3, '1993-09-01', 0, 125, 80, 0, '1993年9月，本科毕业，兴宁人，现国企工作，兴趣爱好：游泳、健身、篮球、旅游。姐姐是医生，妹妹从事摄影工作，梅城国企，身高174。', '1;4;5;6;9', '白云区小坪东路939号', 'J', 275, 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with po', 0, 2, '1000-01-01', '31;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000005, '123', '匿名', '2TVC5OOnPl', '183793771', 'BQDdDqMEgX', '匿名', NULL, 35, '1992-01-01', 1, 247, 100, 0, '92年出生，在梅江区街道上班，身高162cm', '1;4;5;6;9', '成华区双庆路662号', 'D', 380, 'I destroy my enemies when I make them my friends. Monitored servers include MySQL, MariaDB and SQL S', 2, 0, '1000-01-01', '32;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000006, '123', '匿名', '5365n0bIp3', '194852935', 'fiqctlKVol', '匿名', NULL, 3, '1988-01-01', 1, 172, 132, 0, '兹有88年软妹纸一枚，身高160，企业财务管理人员，心地善良，善解人意，经济独立，无负担。跑得了半马，爬得上名山，亦下得厅堂～', '1;4;5;6;9', '天河区天河路388号', 'P', 472, 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in N', 1, 3, '1000-01-01', '33;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000007, '123', '匿名', 'sV1EDHgWEx', '210450012', 'hd0mDi7LgA', '匿名', NULL, 9, '1984-03-09', 0, 121, 43, 0, '1984年3月9日出生，梅州蕉岭人，本科毕业，在元知科技公司上班。', '1;4;5;6;9', '浦东新区健祥路787号', 'U', 399, 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models ', 0, 1, '1000-01-01', '34;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000008, '123', '匿名', 'mxNrNYFHJx', '196450660', 'kGGrbvqlA9', '匿名', NULL, 37, '1994-01-01', 1, 105, 118, 0, '女孩子在汉剧院工作，28岁，1米66。', '1;4;5;6;9', '成华区双庆路894号', 'J', 167, 'Sometimes you win, sometimes you learn. It wasn’t raining when Noah built the ark. Navicat Data Mo', 2, 1, '1000-01-01', '35;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000009, '123', '钟天生', 'qOiziFAIc1', '189730555', 'Z7sHpLdztM', '钟天生', NULL, 35, '1990-01-01', 0, 116, 45, 0, '钟天生，90年，属马，性格脾气良好，喜欢干净、整洁的工作和生活环境。工作上努力搬砖，积极完成上级安排的任务，为了换几两碎银维持生活。工作之余会通过运动（如爬山、打羽毛球、骑自行车等）锻炼身体和缓解身体的疲惫。老家农村的，从小在农村长大，初中高中在镇上上学，家里排行老三，在那个年代属于典型的超生人口。从小跟80尾90初的同伴长大。希望另一半能够彼此尊重、理解、包容对方，能够通过沟通去解决问题。', '1;4;5;6;9', '锦江区人民南路四段894号', 'J', 416, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', 2, 2, '1000-01-01', '36;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000010, '123', '匿名', 'cbJM9xLumr', '192205962', '7PJ1Ooqkiy', '匿名', NULL, 54, '1984-01-01', 0, 210, 122, 0, '1984年生，男，未婚，大埔人，在深圳自己做生意，两个妹妹已婚。', '1;4;5;6;9', '东城区东单王府井东街65号', 'P', 934, 'You will succeed because most people are lazy. To get a secure connection, the first thing you need ', 2, 2, '1000-01-01', '37;38;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000011, '123', '胡剑龙', 'rmagmZH2Er', '28272776', 'VpnzpGJtbD', '胡剑龙', NULL, 31, '1986-01-01', 0, 145, 145, 0, '胡剑龙，86年的，身高173，梅州高速做路政（国企单位）工作稳定，家里有房，有代步小车，家里没什么负担，姐姐已成家，想找90左右，身高160左右，性格人品单纯一点的女生，其它的就看缘分', '1;4;5;6;9', '成华区双庆路43号', 'J', 643, 'Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart', 2, 2, '1000-01-01', '39;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000012, '123', '陈婷', 'FqjFNWyzBv', '189808039', 'PdsOwn3Wcm', '陈婷', NULL, 43, '1991-01-01', 1, 246, 43, 0, '陈婷，91年生，华农毕业，在深圳一家医院任职。姐、弟均结婚生孩。', '1;4;5;6;9', '成华区玉双路6号64号', 'U', 972, 'Sometimes you win, sometimes you learn. Success consists of going from failure to failure without lo', 0, 1, '1000-01-01', '40;41;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000013, '123', '陈忠辉', 'ToKSnXroD1', '156711056', 'yVEBQzMiL2', '陈忠辉', NULL, 3, '1991-01-01', 0, 122, 140, 0, '陈忠辉，1991年出生，在深圳房产公司做销售，出入2万以上，近期打算在梅州购房', '1;4;5;6;9', '锦江区人民南路四段631号', 'J', 804, 'You must be the change you wish to see in the world. In the Objects tab, you can use the List List, ', 1, 0, '1000-01-01', '42;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000014, '123', '匿名', '4AQjYMEa2w', '755335049', 'z64vaWwIEs', '匿名', NULL, 15, '1984-01-01', 1, 139, 89, 0, '女，84年生，未婚，公益一类事业单位，有房有车，颜值高，看看有无合适男士，不介意有婚史。', '1;4;5;6;9', '罗湖区田贝一路557号', 'U', 2, 'Remember that failure is an event, not a person. The Synchronize to Database function will give you ', 1, 0, '1000-01-01', '43;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000015, '123', '匿名', '7O0gUSORCF', '184770219', 'kZ5JFMTMl8', '匿名', NULL, 15, '1991-01-01', 1, 177, 143, 0, '91年12月出生，梅县白渡人，1.6高，在化妆品公司上班', '1;4;5;6;9', '房山区岳琉路711号', 'U', 150, 'If you wait, all that happens is you get older. Such sessions are also susceptible to session hijack', 2, 0, '1000-01-01', '44;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000016, '123', '李慎', 'YOCWFCTaRO', '197891357', '1WynBWdUFa', '李慎', NULL, 48, '1991-01-01', 0, 234, 49, 0, '李慎91年，市供电，166cm，广东海洋大学本科，想找梅城工作，体制内或者国企，156-163，90后，文静一点', '1;4;5;6;9', '环区南街二巷617号', 'J', 616, 'Export Wizard allows you to export data from tables, collections, views, or query results to any ava', 0, 2, '1000-01-01', '45;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000017, '123', '邓先生', 'CCOU1cQnnr', '184960531', 'KCG5W4XNcI', '邓先生', NULL, 7, '1958-01-01', 0, 160, 133, 0, '邓先生65岁，未婚，患有轻度小儿麻痹，有一姐轻度弱智已嫁人，有一弟弟30多年前去了澳洲，也不回来了，父母老年病10多年，都是他来照顾，父亲前年90多岁才走，母亲97岁，是今年才走，因为要照顾老人，所以一直也没有结婚，今年母亲也走了，就想找个能生小孩的老婆。在广州有两套房子，约7位数的存款。', '1;4;5;6;9', '龙岗区学园一巷252号', 'D', 115, 'Remember that failure is an event, not a person. Champions keep playing until they get it right. Opt', 1, 1, '1000-01-01', '124;;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000018, '123', '匿名', 'NVXTwuF1cc', '136209547', 'M6PARAaPU3', '匿名', NULL, 7, '1990-09-24', 1, 151, 54, 0, '90年  1.58米  离婚带着个三岁的男孩，她在黄塘上班，在编护士', '1;4;5;6;9', '海淀区清河中街68号640号', 'P', 425, 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all', 1, 3, '1000-01-01', '46;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000019, '123', '匿名', 'VvEybYVUl1', '755854354', 'tRN85Iv2zR', '匿名', NULL, 42, '1996-01-01', 1, 105, 78, 0, '1996年/蕉岭人/本科毕业\n家人在蕉岭，自己在梅县德兴小学工作，是一名小学英语老师，个人比较随和爱笑，两姐妹，姐姐医生，父母工厂上班，平时喜欢打羽毛球，也会去跳爵士舞', '1;4;5;6;9', '福田区深南大道39号', 'P', 997, 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, or', 0, 0, '1000-01-01', '47;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000020, '123', '姗姗', '6nsyIayXN6', '151042724', 'x6sTh3tpUz', '姗姗', NULL, 1, '1999-01-01', 1, 154, 53, 0, '姗姗  梅江区人99年 本科  身高1.70  独生女平远环保局公务员  人美性格好', '1;4;5;6;9', '环区南街二巷77号', 'P', 729, 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Creativity ', 1, 1, '1000-01-01', '48;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000021, '123', '匿名', '71Ci5WhkWI', '284738316', 'CTnqON9G8V', '匿名', NULL, 36, '1996-01-01', 1, 131, 65, 0, '细妹净身高158厘米，出生于1996年属鼠，籍贯梅县松口镇，毕业于中大南方学院英语本科专业，现在径心中心小学任教英语并担班主任。母亲（雁洋人）父母共同经营一间理发店，细妹还有一个弟弟在读大学，现住江南。', '1;4;5;6;9', '成华区玉双路6号697号', 'U', 369, 'A comfort zone is a beautiful place, but nothing ever grows there. Anyone who has ever made anything', 0, 0, '1000-01-01', '49;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000022, '123', '李慧敏', '2gTNXwVzkq', '170555011', 'ukNLyOUeAl', '李慧敏', NULL, 57, '1995-01-01', 1, 125, 107, 0, '李慧敏，95年5月生，毕业于广东医科大学药学专业，临床药学方向。现在平远县长田卫生院（事业编）药房上班，上24小时班后休息两天，属于轮班制上班。联系电话18823002101，微信同号', '1;4;5;6;9', '天河区大信商圈大信南路963号', 'U', 211, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', 1, 2, '1000-01-01', '50;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000023, '123', '匿名', 'phdqVuT3VI', '178906170', 'gWsdBD56u3', '匿名', NULL, 4, '1992-01-01', 1, 229, 95, 0, '这个女孩是我兴田街道办的好朋友，1992年出生的，属猴，公务员，老家兴宁黄槐，家里有矿的，家境可以，兴宁御福铭砥是她姐夫开发的，性格很好，开朗大方，以前谈恋爱眼界高，看主席手里有指标么￼，帮她介绍下，她目前抽调到梅州市委办文电法规科￼，谢谢你！', '1;4;5;6;9', '京华商圈华夏街284号', 'J', 559, 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. In t', 1, 0, '1000-01-01', '51;52;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000024, '123', '黄程强', 'cuSMzHIo0d', '755190263', 'sS9Xah7AtU', '黄程强', NULL, 49, '1993-01-01', 0, 162, 50, 0, '黄程强，祖籍兴宁人，93年生，属猴，身高174，大学本科，技校老师（现骋任，可考编），父同校，母企业会计，华侨城有房有店，皇家名典有房，有车。', '1;4;5;6;9', '龙岗区学园一巷824号', 'J', 556, 'Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build hig', 2, 1, '1000-01-01', '53;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000025, '123', '匿名', 'gVaBE7Kr8i', '152361424', 'noo5mZ7Sfj', '匿名', NULL, 17, '1990-01-01', 1, 203, 90, 0, '1990年生，身高159，本科学历，兴宁国企上班，周末住梅城。想找在梅城或者兴宁体制内工作，专科及以上学历，身高170以上，不抽烟喝酒，年龄相仿聊得来的男生。', '1;4;5;6;9', '福田区深南大道471号', 'U', 748, 'If you wait, all that happens is you get older. You can select any connections, objects or projects,', 0, 0, '1000-01-01', '54;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000026, '123', '匿名', 'Om3GZ97MoN', '207310368', 'y7v2CaVFTe', '匿名', NULL, 9, '1992-01-01', 1, 140, 82, 0, '92年出生，身高162左右，中山大学硕士，对另一半的要求：身高170以上，长相入眼，不抽烟、不沉迷游戏；有一份稳定的工作；人品好', '1;4;5;6;9', '白云区机场路棠苑街五巷743号', 'J', 185, 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all', 1, 1, '1000-01-01', '55;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000027, '123', '匿名', 'Ig6ARzGm4E', '216825679', 'H9HUfd4vIy', '匿名', NULL, 5, '1989-01-01', 1, 237, 95, 0, '1989年11月，独生女，畲江镇高新区广梅园小学，英语老师，身高160，51公斤。已购房车，性格开朗活泼、爱运动、写毛笔字、阅读', '1;4;5;6;9', '黄浦区淮海中路519号', 'J', 724, 'Remember that failure is an event, not a person. Navicat allows you to transfer data from one databa', 0, 1, '1000-01-01', '56;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000028, '123', '匿名', 'OE6sjHNEJm', '183174083', 'jUacXFPlAP', '匿名', NULL, 17, '1993-01-01', 0, 152, 141, 0, '93年的，身高172厘米，梅江区国土资源部的公务员，省考考上来的，', '1;4;5;6;9', '海珠区江南西路480号', 'J', 10, 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to ch', 1, 3, '1000-01-01', '57;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000029, '123', '匿名', 't7gtF4pirU', '159347630', 'vpwG9T7sDZ', '匿名', NULL, 13, '1989-01-01', 0, 197, 65, 0, '男生89年  1.75左右 现在在五华当特警  爸是大埔中学老师 客天下有房  两兄弟 人性好 ', '1;4;5;6;9', '罗湖区清水河一路773号', 'J', 80, 'You will succeed because most people are lazy. Anyone who has never made a mistake has never tried a', 1, 2, '1000-01-01', '58;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000030, '123', '匿名', '77VPE7eigf', '760538535', 'cPEwAr6ldu', '匿名', NULL, 9, '1994-01-01', 1, 148, 82, 0, '我的朋友女儿深圳中行上班94年出生，老家五华，父母在梅州有单', '1;4;5;6;9', '天河区大信商圈大信南路423号', 'D', 772, 'Champions keep playing until they get it right. If the Show objects under schema in navigation pane ', 0, 1, '1000-01-01', '59;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000031, '123', '匿名', 'AbRX9qHau7', '179603804', 'RUHDhVRQIl', '匿名', NULL, 10, '1996-01-01', 0, 220, 44, 0, '96年男生，本科学历，嘉元科技财务部工作，身高1.71米。梅城有房有车', '1;4;5;6;9', '福田区景田东一街690号', 'D', 541, 'To connect to a database or schema, simply double-click it in the pane. I destroy my enemies when I ', 2, 1, '1000-01-01', '60;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000032, '123', '胡明珠', '8JvPG1ly2V', '152965038', 'Plj8NtjfTz', '胡明珠', NULL, 20, '1996-01-01', 1, 227, 148, 0, '胡明珠，梅州五华县人，1996年出生，27虚岁，身高163，本科财务管理毕业，梅州粤海水务财务部上班，', '1;4;5;6;9', '黄浦区淮海中路812号', 'J', 575, 'In other words, Navicat provides the ability for data in different databases and/or schemas to be ke', 2, 0, '1000-01-01', '61;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000033, '123', '婉玲', 'OllGZdgO2z', '769463953', '2vZLyGhOgv', '婉玲', NULL, 50, '1994-01-01', 1, 119, 73, 0, '婉玲，29岁，160cm  商务英语本科毕业，佛山高明人，在当地外资企业做企业社会责任管理工作，平时喜欢看书摄影看展览93年属鸡，有一个哥哥已婚，父亲银行工作未退休，母亲家庭主妇', '1;4;5;6;9', '环区南街二巷130号', 'U', 872, 'Sometimes you win, sometimes you learn. To successfully establish a new connection to local/remote s', 0, 0, '1000-01-01', '62;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000034, '123', '匿名', '4Ob4dT6QYh', '163632732', '2LXJ6j1BdP', '匿名', NULL, 10, '1995-01-01', 0, 223, 108, 0, '1995年12月，身高1.74米，毕业于华南农业大学电气工程专业（本科），现就职于广东电视台技术检测部（八乡山车转台，现梅州电视台借用）', '1;4;5;6;9', '越秀区中山二路691号', 'U', 572, 'Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to ', 2, 3, '1000-01-01', '63;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000035, '123', '匿名', '75oyldfBgD', '281015455', 'pzIiZViObd', '匿名', NULL, 14, '1989-01-01', 0, 202, 127, 0, '89年生，兴宁人，在广州一家医院任部门经理。看有无在广州工作或愿意来广州工作的女孩，最好是独生女。', '1;4;5;6;9', '成华区二仙桥东三路49号', 'D', 826, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', 1, 2, '1000-01-01', '64;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000036, '123', '匿名', '208Rmc1u2k', '103761686', 'ICGbjh3Dyh', '匿名', NULL, 13, '1992-01-01', 0, 145, 79, 0, '蕉岭人，92年，1米72，他从小到大都是年级第一名，高考没发挥好，考到暨南大学，现在在佛山电信上班，没有不良嗜好，理科生不善表达，很优秀很自律的人￼家有一兄，', '1;4;5;6;9', '海淀区清河中街68号889号', 'D', 631, 'I may not have gone where I intended to go, but I think I have ended up where I needed to be. I may ', 1, 2, '1000-01-01', '65;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000037, '123', '匿名', 'JFC1xDg9qo', '769986777', 'FwAPHsOiAO', '匿名', NULL, 57, '1991-01-01', 1, 243, 58, 0, '1991年生，属羊，身高160，梅县人，家在梅江区，华农本科毕业，现为蕉岭在编英语老师，性格开朗，喜欢音乐、美食和旅游。', '1;4;5;6;9', '环区南街二巷719号', 'J', 530, 'Sometimes you win, sometimes you learn. Sometimes you win, sometimes you learn. Navicat Monitor is a', 1, 2, '1000-01-01', '66;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000038, '123', '匿名', 'QsoLvutXxN', '175458064', 'SVBF7tNWGw', '匿名', NULL, 12, '1996-01-01', 1, 106, 113, 0, '1996年（属猪），梅江区人，身高153，蕉岭在编老师，性格活泼开朗，兴趣爱好是打游戏和旅游，无不良嗜好，会做家务会做饭。希望找一个性格温和、身高在1.70以上，有单位的。', '1;4;5;6;9', '珊瑚路358号', 'D', 498, 'HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the ', 2, 2, '1000-01-01', '67;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000039, '123', '陈晓芸', 'Ca9MQaOVhY', '205461964', 'GkEC9vpEjM', '陈晓芸', NULL, 42, '1992-01-01', 1, 120, 109, 0, '陈晓芸，92年生人，广东汕头人，英语语言文学商务英语专业，工作是影视灯外贸行业，174比较高，然后是喜欢打网球，跑步，看英剧', '1;4;5;6;9', '白云区小坪东路29号', 'U', 650, 'If you wait, all that happens is you get older. Optimism is the one quality more associated with suc', 0, 1, '1000-01-01', '68;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000040, '123', '匿名', 'vVfPie1Olf', '755442049', 'XaB4jqXvep', '匿名', NULL, 39, '1990-01-01', 0, 115, 147, 0, '黄塘医院数据中心，本科学历，身高1米72左右，独生子，人比较老实，性格偏内向。希望找一个事业单位或者行政机关的公务员，女孩要性格好，本科以上学历，身高1米6以上，最好长得中上等，最好是漂亮点。', '1;4;5;6;9', '罗湖区蔡屋围深南东路922号', 'P', 813, 'To start working with your server in Navicat, you should first establish a connection or several con', 0, 2, '1000-01-01', '69;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000041, '123', '陈燕', 'xnEbhRIbwy', '212457463', 'zLopxKTTjI', '陈燕', NULL, 10, '1990-01-01', 1, 176, 145, 0, '陈燕，江西寻乌人，1990年12月出生，身高153，性格温和，目前在平远县行政单位工作，喜欢旅游，也喜欢宅家，希望找一个身高172左右，年纪相仿（不介意比我小），性格阳光，爱运动，能一起定居生活在梅城的伴侣。', '1;4;5;6;9', '浦东新区健祥路391号', 'J', 868, 'Genius is an infinite capacity for taking pains. I will greet this day with love in my heart. I may ', 2, 3, '1000-01-01', '123;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000042, '123', '匿名', '0LSfJRpjY0', '135732080', 'oEcWScX6zi', '匿名', NULL, 2, '1995-01-01', 0, 152, 117, 0, '嘉大老师，1995年，山东人，硕士研究生，173', '1;4;5;6;9', '京华商圈华夏街816号', 'J', 997, 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all', 1, 1, '1000-01-01', '70;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000043, '123', '匿名', 'iMelK9oTZY', '197777854', 'tncUSfjgc5', '匿名', NULL, 52, '1996-01-01', 0, 177, 143, 0, '国企单位嘉应控股集团下属单位  96年27岁，高1.73，有一姐已结婚，西桥有屋有车有店，富力城有套房，父国企上班，妈做生意，已有领退休金。', '1;4;5;6;9', '黄浦区淮海中路915号', 'P', 944, 'It wasn’t raining when Noah built the ark. There is no way to happiness. Happiness is the way. The', 2, 1, '1000-01-01', '71;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000044, '123', '匿名', 'i4fEaYMI4H', '211714213', '5VGGoDq6Ug', '匿名', NULL, 46, '1999-01-01', 1, 203, 140, 0, '99年女生，1米64，蕉岭人。今年本科应届毕业，目前在中行培训，准备入职。父亲供电退休，母亲金融国企的中层干部', '1;4;5;6;9', '黄浦区淮海中路892号', 'J', 600, 'Creativity is intelligence having fun. In other words, Navicat provides the ability for data in diff', 0, 2, '1000-01-01', '72;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000045, '123', '丘儒霖', 'sytEZwNIlV', '180823933', 'otq4o3ejwS', '丘儒霖', NULL, 7, '1995-01-01', 0, 101, 82, 0, '丘儒霖，梅江区人，1995年生，身高1.76独生子，本科学历，公务员，现在大埔县光德镇政府工作，父亲在金融部门工作，母亲事业单位退休。', '1;4;5;6;9', '浦东新区健祥路242号', 'U', 47, 'Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Win', 2, 2, '1000-01-01', '73;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000046, '123', '张龙飞', 'VOQRSC3K7L', '75560489', 'r7E9iA9EH0', '张龙飞', NULL, 17, '1997-01-01', 0, 217, 122, 0, '姓名张龙飞，出生年1997年2月24日，身高171cm，大专学历，在梅城工作，男生在建设企业做资料员', '1;4;5;6;9', '罗湖区田贝一路198号', 'U', 930, 'Navicat Cloud could not connect and access your databases. By which it means, it could only store yo', 1, 0, '1000-01-01', '74;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000047, '123', '匿名', 'jLPsab1eII', '133409071', 'bhbtoPb1Hp', '匿名', NULL, 9, '1992-01-01', 0, 232, 114, 0, '出生年月：1992.5\n学历：硕士\n工作：兴宁公务员\n身高体重：172cm 60kg', '1;4;5;6;9', '延庆区028县道771号', 'U', 680, 'In a Telnet session, all communications, including username and password, are transmitted in plain-t', 2, 0, '1000-01-01', '125;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000048, '123', '罗沁青', 'iqAFkwgiio', '176699394', 'm9YJ3zyMQM', '罗沁青', NULL, 25, '1994-01-01', 1, 178, 53, 0, '罗沁青，94年3年出生，华农毕业，16年考进税局，现梅江区税务局上班。', '1;4;5;6;9', '西城区复兴门内大街509号', 'J', 312, 'Navicat Monitor can be installed on any local computer or virtual machine and does not require any s', 0, 1, '1000-01-01', '75;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000049, '123', '李世铎', '70WaNoxEmv', '105699925', 'h4iWOpakPO', '李世铎', NULL, 9, '1994-01-01', 0, 128, 80, 1, '李世铎\n性别：男\n出生年：1994\n星座：白羊\n是否有婚史：离异\n身高(cm)：173\n毕业院校：北京师范大学珠海分校\n所在区域：梅州\n家乡：梅州\n工作：运营\n收入：6k\n车房情况：有房有车\n关于自己(性格/爱好/闪光点等)：开朗，温柔，喜欢研究菜品\n我的理想型（可接受的年龄，身高范围）：可以接受95后\n我的签名栏：\n \n自我介绍：喜欢锻炼，看电影。发现新鲜事物，热爱生活。比较养生', '1;4;5;6;9', '延庆区028县道498号', 'D', 702, 'The Information Pane shows the detailed object information, project activities, the DDL of database ', 3, 3, '1000-01-01', '76;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000050, '123', '匿名', 'Uob0qI3JCA', '164442452', 'ZjccEn3rIA', '匿名', NULL, 25, '1981-01-01', 1, 110, 55, 1, '某女，81年，梅县外国语学校教师。离异无孩，研究生', '1;4;5;6;9', '坑美十五巷28号', 'U', 763, 'Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Win', 2, 2, '1000-01-01', '77;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000051, '123', '匿名', 'KSTfp6QgOI', '106656949', 'UmQHO7Gba4', '匿名', NULL, 1, '1989-01-01', 0, 130, 148, 0, '89年，大学本科毕业，现就职于梅平高速正编干部（办公室人员），176cm', '1;4;5;6;9', '东城区东单王府井东街371号', 'P', 640, 'Navicat Cloud could not connect and access your databases. By which it means, it could only store yo', 2, 0, '1000-01-01', '78;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000052, '123', '陈剑聪', 'HLwsynlbJY', '101756847', '1yYe2atz5h', '陈剑聪', NULL, 6, '1988-01-01', 0, 149, 67, 0, '陈剑聪，1988年01月出生，176.66，本科毕业于广东金融学院，现就职于梅州市园林绿化中心。', '1;4;5;6;9', '东城区东单王府井东街790号', 'D', 980, 'If opportunity doesn’t knock, build a door. The Navigation pane employs tree structure which allow', 1, 2, '1000-01-01', '79;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000053, '123', '匿名', 'o9k6AwKVVP', '760678728', 'y4LI2UgRsx', '匿名', NULL, 35, '1993-01-01', 1, 231, 78, 0, '女，93年，大学毕业，现就职于田家炳医院检验科，身高1.57米，性格温柔，长相甜美，母亲是医生，父亲是公务员', '1;4;5;6;9', '乐丰六路778号', 'J', 527, 'Flexible settings enable you to set up a custom key for comparison and synchronization. I destroy my', 2, 2, '1000-01-01', '80;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000054, '123', '匿名', '95nELdcfSo', '160271628', 'cre6IgiCuj', '匿名', NULL, 59, '1994-01-01', 1, 151, 77, 0, '嘉应学院老师，文学专业研究生学历，94年，身高164，汕头人', '1;4;5;6;9', '越秀区中山二路681号', 'P', 547, 'Anyone who has ever made anything of importance was disciplined. If opportunity doesn’t knock, bui', 3, 1, '1000-01-01', '81;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000055, '123', '匿名', 'DKHGHl87EL', '163115513', '2CNY34k0Ko', '匿名', NULL, 31, '1989-04-21', 0, 184, 82, 0, '某男，1989年2月出生。黑龙江齐齐哈尔人，身高178，体重150，独生子，身材匀称，儒雅帅气，有良好的家教，性格偏安静，喜欢运动。2021年7月博士毕业，现嘉应大学任教。寻研究生或以上学历，身高1米6以上，工作稳定知书达礼外貌甜美的女孩。', '1;4;5;6;9', '朝阳区三里屯路374号', 'U', 114, 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set th', 0, 2, '1000-01-01', '82;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000056, '123', '匿名', 'HGRY9o8LRC', '281233734', 'J4uQ1NmzII', '匿名', NULL, 55, '1994-01-01', 1, 142, 115, 0, '梅江区西阳镇人 1994年6月 大埔事业编 167cm高 有点点重', '1;4;5;6;9', '锦江区红星路三段138号', 'J', 875, 'To connect to a database or schema, simply double-click it in the pane. Difficult circumstances serv', 0, 2, '1000-01-01', '83;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000057, '123', '匿名', '8tNV8f5Wt6', '165141561', 'AxLkjSeoB5', '匿名', NULL, 38, '1987-01-01', 1, 193, 84, 0, '87年，硕士，河南，嘉应学院教师。', '1;4;5;6;9', '紫马岭商圈中山五路162号', 'J', 384, 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. If your Int', 2, 2, '1000-01-01', '84;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000058, '123', '匿名', '5ilkrstaWd', '218538655', '5Cunl1Wcfc', '匿名', NULL, 15, '1978-01-01', 0, 182, 43, 0, '梅县区在编老师  78年属马 未婚 身高1.65米  姐姐及姐夫也是当老师  ', '1;4;5;6;9', '黄浦区淮海中路45号', 'P', 569, 'Typically, it is employed as an encrypted version of Telnet. Monitored servers include MySQL, MariaD', 1, 2, '1000-01-01', '85;;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000059, '123', '匿名', 'IAxl6g0Q8d', '208035324', 'MO9nh2IfeS', '匿名', NULL, 45, '1992-01-01', 1, 109, 96, 0, '31岁属猴\n身高1.65米\n学历：嘉应大学毕业\n就职：奥园文案策划', '1;4;5;6;9', '天河区天河路311号', 'P', 141, 'To connect to a database or schema, simply double-click it in the pane. A man’s best friends are h', 2, 3, '1000-01-01', '86;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000060, '123', '谢晓峰', '9ysduIIKE1', '283725295', 'bS516q2VtU', '谢晓峰', NULL, 20, '1986-01-01', 0, 204, 134, 0, '谢晓峰/1986年11月/中南大学土木工程研究生毕业，江西广昌人。工程师，在编人员在梅州市城市测绘与地理信息中心工作，借调在梅州市自然资源局。两姐弟，父亲老师，已退休，母亲持家。个人性格稍安静些，平时喜欢跑步，打打羽毛球。\n有房有车，房买在恒大  来梅州工作很多年了，户口在这里，在梅城定居  性格也很好。', '1;4;5;6;9', '成华区玉双路6号767号', 'D', 994, 'To connect to a database or schema, simply double-click it in the pane. To get a secure connection, ', 0, 2, '1000-01-01', '126;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000061, '123', '钟燕', 'Fu6CplNjrZ', '100500571', 'MVswsDHZLC', '钟燕', NULL, 38, '1990-01-01', 1, 169, 61, 0, '钟燕 90年出生，五华人，广州大学教育学硕士，现梅州市艺术学校教师。群里有好介绍么？', '1;4;5;6;9', '海淀区清河中街68号692号', 'U', 669, 'Navicat allows you to transfer data from one database and/or schema to another with detailed analyti', 1, 1, '1000-01-01', '127;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000062, '123', '匿名', 'xcuguvpVd9', '769929248', 'fa4ztAtv9a', '匿名', NULL, 10, '1994-01-01', 1, 176, 50, 0, '1994年5月，大埔银江人，身高158，在作新小学任教。没有什么特别要求，公务员、事业编、国企都可以，最好在梅城上班的。', '1;4;5;6;9', '坑美十五巷463号', 'J', 94, 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with po', 2, 2, '1000-01-01', '87;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000063, '123', '匿名', 'pxtU3sF4Ak', '164611768', 'xDu3aonkJg', '匿名', NULL, 1, '1997-01-01', 0, 172, 78, 0, '兴宁人，身高170，97出生，本科毕业，梅县区公路事务中心正编人员，家里四个兄弟姐妹。', '1;4;5;6;9', '徐汇区虹桥路642号', 'J', 909, 'The Synchronize to Database function will give you a full picture of all database differences. Somet', 3, 1, '1000-01-01', '88;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000064, '123', '黄云璐', 'y3XqCo64v8', '760174847', '0jWTnKHqNJ', '黄云璐', NULL, 21, '1992-01-01', 1, 167, 142, 0, '黄云璐，1992年6月出生，本科毕业后赴澳大利亚莫纳什大学留学，硕士学位，现就职于广东梅州高新技术产业园区财政局投资审核中心。', '1;4;5;6;9', '京华商圈华夏街644号', 'D', 38, 'The reason why a great man is great is that he resolves to be a great man. After comparing data, the', 2, 2, '1000-01-01', '89;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000065, '123', '匿名', '2hlj6Xw0Kb', '760731275', 'XRCbaWuoL5', '匿名', NULL, 54, '1996-01-01', 1, 162, 97, 0, '女，本地人，96年12月出生，独生女。本科毕业后就职于梅州日报社，收入稳定，性格温和偏内向。公务员家庭，梅城有车有房。要求男方门当户对，有编制。', '1;4;5;6;9', '紫马岭商圈中山五路547号', 'P', 464, 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/S', 0, 0, '1000-01-01', '128;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000066, '123', '匿名', 'JdvLxKlva6', '760172541', '3GM4i0FGb4', '匿名', NULL, 23, '1994-01-01', 1, 141, 59, 0, '1994年4月/吉林艺术学院舞蹈表演与教学研究专业研究生毕业，黑龙江省大庆人，身高1.65。嘉应学院音乐与舞蹈学院舞蹈专业教师，独生子女，父母均在黑龙江大庆工作。个人性格偏安静，平时喜欢偶尔运动旅游。', '1;4;5;6;9', '京华商圈华夏街524号', 'J', 627, 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud an', 1, 2, '1000-01-01', '129;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000067, '123', '匿名', 'g8yQHZcD8Q', '203283867', '3n1WVVFhCH', '匿名', NULL, 3, '1994-01-01', 0, 126, 120, 0, '94年，梅县区科工商务局上班，独生子。', '1;4;5;6;9', '越秀区中山二路883号', 'P', 576, 'The Synchronize to Database function will give you a full picture of all database differences. Navic', 1, 3, '1000-01-01', '90;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000068, '123', '李钦涛', 'MaDlsFpeqx', '769898211', 'WLoXsM9tOn', '李钦涛', NULL, 5, '1989-01-01', 0, 141, 55, 1, '李钦涛，34，离异无小孩 两兄妹 自己开传媒公司  有房有车  条件好', '1;4;5;6;9', '珊瑚路419号', 'P', 371, 'Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Win', 3, 0, '1000-01-01', '91;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000069, '123', '匿名', 'tAHUPSOdfx', '159643503', 'rmAsmm5Fqh', '匿名', NULL, 26, '1991-01-01', 1, 118, 52, 0, '91年2月岀生，华师增城学院本科毕业，现第二中医院科室上日班，不用上夜班的，星期六日休息。父亲中学老师，母亲烟厂退休在家。', '1;4;5;6;9', '天河区大信商圈大信南路731号', 'J', 437, 'All journeys have secret destinations of which the traveler is unaware. If the plan doesn’t work, ', 2, 1, '1000-01-01', '92;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000070, '123', '匿名', 'wDjZlz4uNa', '152339924', '5ftuywKWPy', '匿名', NULL, 49, '1997-01-01', 0, 221, 89, 0, '五华  97年  事业编城管', '1;4;5;6;9', '徐汇区虹桥路316号', 'D', 411, 'The past has no power over the present moment. To connect to a database or schema, simply double-cli', 2, 1, '1000-01-01', '93;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000071, '123', '匿名', '0cZEBLw0tJ', '176381250', 'HoSxZ6x5RS', '匿名', NULL, 27, '1994-01-01', 0, 137, 102, 0, '男生94年 29虚岁，身高1.75嘉应大学本科毕业，现在五华县城教体育，家在梅城，有房有车 五华也有别墅 家境非常好', '1;4;5;6;9', '越秀区中山二路464号', 'U', 643, 'To get a secure connection, the first thing you need to do is to install OpenSSL Library and downloa', 0, 1, '1000-01-01', '94;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000072, '123', '匿名', 'ZtSFghn7Lk', '177250371', 'oIwrPNU3Fj', '匿名', NULL, 20, '1995-01-01', 1, 220, 146, 0, '1995年5月/吉林艺术学院研究生毕业，吉林人，身高165，嘉应学院音乐与舞蹈学院舞蹈教师，独生女，父母均在吉林，个人性格偏开朗，喜欢适当运动和接触一些新鲜事物。', '1;4;5;6;9', '坑美十五巷442号', 'J', 558, 'The past has no power over the present moment. Difficult circumstances serve as a textbook of life f', 2, 1, '1000-01-01', '95;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000073, '123', '匿名', 'Bp3mrcsNyT', '146634819', '3PqSbr0dqo', '匿名', NULL, 56, '1995-01-01', 0, 161, 105, 0, '95年，梅县人，专科学历，身高170，家族经营药业，自己开药行老板，男孩踏实肯干，性格开朗活泼，家庭条件好，想找公职人员女老师为佳', '1;4;5;6;9', '锦江区人民南路四段251号', 'U', 624, 'The past has no power over the present moment. You must be the change you wish to see in the world. ', 2, 1, '1000-01-01', '96;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000074, '123', '黄志芳', 'jXhEluR4ov', '207841619', 'exUJHH9rVz', '黄志芳', NULL, 6, '1989-01-01', 0, 183, 75, 0, '黄志芳，1989年2月出生，2015年本硕毕业于广东工业大学集成电路工程专业，2015年—2017年在工信部电子五所工作，2017年回到嘉应学院从事辅导员工作，父亲母亲均已退休，有一个姐姐，房子车子已购置。', '1;4;5;6;9', '海珠区江南西路337号', 'J', 886, 'I destroy my enemies when I make them my friends. You can select any connections, objects or project', 1, 2, '1000-01-01', '130;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000075, '123', '古凤霞', 'fTECUTMQTu', '109123446', '8CiVIm7gGZ', '古凤霞', NULL, 35, '1987-01-01', 1, 102, 90, 0, '古凤霞，1987年10月，梅县人，本科毕业，梅州市教育局干部。', '1;4;5;6;9', '东城区东单王府井东街594号', 'P', 591, 'Difficult circumstances serve as a textbook of life for people. To successfully establish a new conn', 0, 1, '1000-01-01', '97;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000076, '123', '匿名', '9RzEH5iH2h', '138906817', 'hSpFbLAZZn', '匿名', NULL, 20, '1990-01-01', 1, 236, 139, 0, '1990年1月/中山大学中国现当代文学专业研究生毕业，河南南阳人， 身高1.57。嘉应学院文学院专业教师，有一弟弟，大学毕业后工作，父母均在广东工作。个人性格偏安静，喜欢看看书做些自己的事情。', '1;4;5;6;9', '东泰五街840号', 'U', 149, 'In a Telnet session, all communications, including username and password, are transmitted in plain-t', 1, 2, '1000-01-01', '98;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000077, '123', '匿名', 'ZJgpm4QMpd', '164962063', 'EJZ2zxSycd', '匿名', NULL, 35, '1992-01-01', 1, 133, 42, 0, '92年，身高162，独生女，烟厂办公室上班（非正式编），父母都是烟厂正编职工，家庭条件不错，性格温柔', '1;4;5;6;9', '白云区机场路棠苑街五巷558号', 'U', 485, 'A query is used to extract data from the database in a readable format according to the user\'s reque', 2, 3, '1000-01-01', '99;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000078, '123', '匿名', 'v6e41JIDcq', '755989815', 'qTN5kCCKYQ', '匿名', NULL, 42, '1996-01-01', 1, 133, 128, 0, '96年，身高1米63，在粤海水务正式编制，父母都是公务员', '1;4;5;6;9', '罗湖区蔡屋围深南东路628号', 'U', 634, 'The past has no power over the present moment. You will succeed because most people are lazy. Navica', 1, 2, '1000-01-01', '131;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000079, '123', '罗奇琨', 'N4ptjCJQLF', '149899179', 'D57lNPE1UT', '罗奇琨', NULL, 50, '1995-01-01', 0, 190, 139, 0, '罗奇琨:95年7月出生。175米，梅江区西阳三峰发电厂在编人员  母亲老师丶父亲工程师。均身体健康。现有丨套步梯，丨套电梯房，丨辆车。', '1;4;5;6;9', '海淀区清河中街68号860号', 'J', 486, 'The past has no power over the present moment. All the Navicat Cloud objects are located under diffe', 0, 1, '1000-01-01', '100;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000080, '123', '匿名', 'XIRp57jzB9', '191210466', 'v6UnN5mv4F', '匿名', NULL, 32, '1995-01-01', 1, 188, 63, 0, '95年，身高165，专科学历，在家里公司财务，家境很好，女孩很漂亮性格很好', '1;4;5;6;9', '龙岗区布吉镇西环路433号', 'U', 579, 'The On Startup feature allows you to control what tabs appear when you launch Navicat. If your Inter', 2, 0, '1000-01-01', '101;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000081, '123', '匿名', 'oLXFZsVZca', '281185861', '7lV5qOWOab', '匿名', NULL, 7, '1994-01-01', 1, 190, 106, 0, '兴宁妹里，94年的，在大埔税所上班，身高1.62，有律师证。爸爸是兴宁农发行行长，妈妈老师。想找梅城优质男生', '1;4;5;6;9', '龙岗区学园一巷694号', 'P', 118, 'In the middle of winter I at last discovered that there was in me an invincible summer. Navicat Moni', 2, 1, '1000-01-01', '102;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000082, '123', '匿名', 'EzmdbsxDSq', '281185862', 'Izr4wmsVJA', '匿名', NULL, 26, '1995-01-01', 0, 227, 59, 0, '县住建局95年(暂时非在编) 本科 身高1.78 爸是校长  有房有车 ', '1;4;5;6;9', '成华区玉双路6号599号', 'P', 478, 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. How we spen', 1, 1, '1000-01-01', '132;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000083, '123', '匿名', 'jvMrr1lQgI', '214250973', 'dX7jyKugQf', '匿名', NULL, 46, '1993-01-01', 1, 162, 43, 0, '93年属鸡 身高1.63 梅江区在编英语老师', '1;4;5;6;9', '闵行区宾川路759号', 'D', 477, 'You must be the change you wish to see in the world. I destroy my enemies when I make them my friend', 2, 0, '1000-01-01', '103;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000084, '123', '匿名', 'JTOuniva6A', '195458653', 'Jo0TIR2M3J', '匿名', NULL, 31, '1991-01-01', 0, 169, 52, 0, '嘉应学院老师，河源龙川人，研究生学历，91年，身高172', '1;4;5;6;9', '越秀区中山二路143号', 'J', 217, 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without ', 2, 2, '1000-01-01', '104;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000085, '123', '匿名', 'Zy3ctyZrvu', '145970612', 'C8Z2knqPRG', '匿名', NULL, 13, '1992-01-01', 1, 111, 60, 0, '92年，身高162，独生女，烟厂办公室上班（非正式编），父母都是烟厂正编职工，家庭条件不错，性格温柔', '1;4;5;6;9', '朝阳区三里屯路748号', 'D', 978, 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you. With its well-d', 3, 1, '1000-01-01', '105;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000086, '123', '匿名', 'CA4TuhDeVu', '136598612', 'aNiEWMf2kf', '匿名', NULL, 51, '1994-01-01', 0, 182, 120, 0, '属狗，今年29岁，兴宁人，在上海\n原上海警备区民兵装备仓库', '1;4;5;6;9', '白云区机场路棠苑街五巷341号', 'P', 306, 'Creativity is intelligence having fun. After logged in the Navicat Cloud feature, the Navigation pan', 1, 3, '1000-01-01', '106;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000087, '123', '匿名', '9gEfOR1bUb', '174419012', 'CnRzgB50rT', '匿名', NULL, 8, '1985-01-01', 1, 105, 144, 0, '85年属牛 未婚 身高1.58米 蕉岭人 黄塘医院主任医师 性格好 觅优质老男生或离异无小孩的也可以', '1;4;5;6;9', '珊瑚路754号', 'D', 590, 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis. A man is ', 2, 2, '1000-01-01', '107;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000088, '123', '匿名', 'ULgQEnZJgB', '219915938', 'CIDrJY1YJF', '匿名', NULL, 51, '1991-01-01', 1, 163, 109, 0, '嘉大教师，研究生学历，91年，身高163，梅州本地人，性格活泼可爱，希望找本科以上学历，身高173以上有稳定工作的男孩', '1;4;5;6;9', '徐汇区虹桥路348号', 'D', 353, 'Actually it is just in an idea when feel oneself can achieve and cannot achieve. It is used while yo', 3, 1, '1000-01-01', '108;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000089, '123', '匿名', 'FEFbBUvu8W', '104930508', 'OXbOy84GQd', '匿名', NULL, 35, '1989-01-01', 0, 122, 124, 0, '嘉大老师，博士，89年，五花人，身高168', '1;4;5;6;9', '延庆区028县道501号', 'U', 373, 'Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle', 0, 2, '1000-01-01', '109;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000090, '123', '匿名', 'lEls635Jc3', '760983962', '3YzgCwZpP7', '匿名', NULL, 7, '1995-01-01', 1, 217, 101, 0, '女孩属猪95年，在安信证券，身高1米6，一位讲师', '1;4;5;6;9', '乐丰六路325号', 'U', 215, 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set th', 1, 2, '1000-01-01', '110;111;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000091, '123', '匿名', 'RFrONgLSAh', '107109956', 'yN8frj5ZTf', '匿名', NULL, 37, '1990-01-01', 1, 143, 118, 0, '大龄女青年，90年的，身高1.58，身材属于苗条型  梅州市中医院在编检验科医生 她是独生女，住中高峰，自已家有房子，她的要求，男方要有1.68米以上，要有一定的文化程度，有稳定的工作', '1;4;5;6;9', '延庆区028县道939号', 'U', 245, 'To open a query using an external editor, control-click it and select Open with External Editor. You', 1, 1, '1000-01-01', '112;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000092, '123', '匿名', 'xYaHTEVKPL', '181915140', 'DlCemWxvEA', '匿名', NULL, 11, '1993-01-01', 1, 236, 110, 0, '朋友女儿，93年生，人民医院公职护士，党员，身高米五多，家庭条件好，能力强，想帮忙介绍个三十左右的男的哇。', '1;4;5;6;9', '黄浦区淮海中路459号', 'P', 49, 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Such', 0, 0, '1000-01-01', '113;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000093, '123', '匿名', 'fAQGSoJqBz', '283076490', 'TOx3Fy9pvF', '匿名', NULL, 52, '1991-03-06', 0, 130, 41, 0, '嘉应大学老师，32虚岁（属羊）身高1.7米，中山大学本硕博毕业，祖藉丰顺，独生子，父母也是教师。希望找有缘的广东藉，年龄28虚岁（属猪）的女孩子，最好家里还有兄弟姐妹的比较好。\n学历本科或以上，老师公务员最佳', '1;4;5;6;9', '锦江区人民南路四段978号', 'P', 426, 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to ch', 1, 2, '1000-01-01', '114;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000094, '123', '匿名', '3Who9jzzDw', '209746440', '5dUh8KJYsx', '匿名', NULL, 56, '1989-01-01', 1, 218, 65, 0, '出生年月：1989年11月 未婚 \n身高：167cm 体重：55kg \n本科：广东警官学院  \n研究生：广西大学、英国埃克塞特大学 \n执业：专职律师 \n\n贵州遵义人，北京律师事务所广州办事处；父母为遵义市退休公务员\n已经在广州买了九十平方米的套房，是我广州小区里的邻居\n是个才貌双全的高材女生', '1;4;5;6;9', '越秀区中山二路573号', 'U', 477, 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your conne', 3, 3, '1000-01-01', '115;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000095, '123', '刘海燕', 'h4uDc8hfmX', '211593980', 's9WagnBqfp', '刘海燕', NULL, 34, '1988-01-01', 1, 182, 126, 0, '刘海燕，1988年12月出生，兴宁新圩人，嘉应学院小学教育本科毕业，2012年7月参加工作，2019年3月加入中国共产党，在兴宁市教育局工作，身高158cm，体重67kg。', '1;4;5;6;9', '徐汇区虹桥路153号', 'D', 499, 'If the plan doesn’t work, change the plan, but never the goal. You cannot save people, you can jus', 3, 0, '1000-01-01', '133;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000096, '123', '匿名', 'MOGqHaZtXM', '187203309', '5L9kR6qrMU', '匿名', NULL, 19, '1971-01-01', 0, 153, 88, 0, '兴宁市侨联党组成员、秘书长、办公室主任陈金浩，71年10月，一女儿女方抚养，有车无房。\n本人嘉应大学政法系法律专业毕业，毕业后分配到乡镇，曾任办公室主任，后调进侨联工作。唯一的兴趣爱好就是酷爱篮球运动', '1;4;5;6;9', '锦江区人民南路四段711号', 'U', 715, 'I will greet this day with love in my heart. It is used while your ISPs do not allow direct connecti', 1, 2, '1000-01-01', '116;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000097, '123', '匿名', 'MGC1ETzgGB', '769348142', 'usv8MSjAF4', '匿名', NULL, 9, '1993-01-01', 1, 147, 94, 0, '我女儿93年11月生的，市直局公务员，高160', '1;4;5;6;9', '坑美十五巷813号', 'D', 109, 'It provides strong authentication and secure encrypted communications between two hosts, known as SS', 3, 2, '1000-01-01', '117;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000098, '123', '匿名', 'SLBgWXUBNu', '755537132', 'XN6B9W62OX', '匿名', NULL, 38, '1995-01-01', 0, 199, 132, 0, '男孩：28岁(属鸡)，梅州粤运，某科室，副科。\n\n想找在梅城工作的端庄、善良、文静的女青年，最好是24岁(属牛)，26岁(属猪)，也可以29岁(属猴)，拜托', '1;4;5;6;9', '罗湖区田贝一路327号', 'D', 503, 'It provides strong authentication and secure encrypted communications between two hosts, known as SS', 1, 1, '1000-01-01', '118;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000099, '123', '匿名', 'qdOeI2pfj6', '185654176', 'TEAhUMvAlH', '匿名', NULL, 12, '1989-01-01', 0, 110, 116, 0, '胡先生，男，1989年生，本科毕业，身高165cm。自己公司：梅州大生科技有限公司和梅州千丰科技有限公司', '1;4;5;6;9', '紫马岭商圈中山五路366号', 'J', 712, 'Champions keep playing until they get it right. Navicat is a multi-connections Database Administrati', 2, 0, '1000-01-01', '134;;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000100, '123', '匿名', 'tCtR4dMnNa', '289503876', 'zgCqXRjn3l', '匿名', NULL, 47, '1992-01-01', 0, 134, 149, 0, '92年10月，丰顺县纪委公务员，身高174cm，体重145斤，丰顺县留隍人，父母个体户经营，有一弟弟一妹妹，现有车无房，可首付供房。\n\n条件的话，年龄在92年及以下（非95年的，老家长辈有习俗小三岁不好，会比较麻烦￼），身高158至166，有稳定工作。￼主要还是看是否能聊得来', '1;4;5;6;9', '成华区双庆路734号', 'U', 746, 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without ', 0, 2, '1000-01-01', '119;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000101, '123', '匿名', 'ir05Vg77Jj', '755705779', 'eT18R09Ye7', '匿名', NULL, 45, '1994-01-01', 1, 162, 52, 0, ' 梅江区 在编英语老师 94年  身高1.60左右 开朗乐观', '1;4;5;6;9', '福田区深南大道345号', 'P', 850, 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set th', 2, 1, '1000-01-01', '120;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000102, '123', '匿名', '3kbH1BFHVH', '109241088', '825dW4OAUF', '匿名', NULL, 16, '1991-01-01', 1, 144, 102, 0, '俞老师，梅江区人，32岁属马   大埔中学教书  自己买了一部小车  父母均健壮，家中有一胞弟。', '1;4;5;6;9', '东城区东单王府井东街193号', 'J', 607, 'Navicat Cloud could not connect and access your databases. By which it means, it could only store yo', 3, 2, '1000-01-01', '121;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000103, '123', '肖嘉婷', 'Qb2De1QrlS', '139834705', '69SozHw4qs', '肖嘉婷', NULL, 56, '1994-01-01', 1, 145, 112, 0, '肖嘉婷，94年2月出生，在中山一院外科ICU工作5年多，拥有中山医学院本科毕业文凭和学士学位证书，二姐弟，弟弟在佛山科技大学读大二。在农村长大，由农村高中考出，所有同学中就数她最优秀，最初虽然只达到大专成绩考上梅州市嘉学院医学院护理专业，但全班没有一个男同学超过她了。因成绩好，由中山一院直接从梅州卫校招去实习，由于工作积极，实习时工作相片还发过南方日报，后来选择科室，她又主动说要到最辛苦的ICU做起', '1;4;5;6;9', '海淀区清河中街68号75号', 'D', 465, 'Navicat provides powerful tools for working with queries: Query Editor for editing the query text di', 2, 2, '1000-01-01', '122;', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 0);
INSERT INTO `user` VALUES (00000104, '12345', '管理员', 'Qb2De1QrlS', '19384225', '69SozHw4qs', '管理员', NULL, 56, '1951-01-17', 1, 145, 112, 0, 'If opportunity doesn’t knock, build a door. You must be the change you wish to see in the world. I', '1;4;5;6;9', '海淀区清河中街68号75号', 'D', 465, 'Navicat provides powerful tools for working with queries: Query Editor for editing the query text di', 2, 2, '1000-01-01', '1;4;5;6', '1000-01-01', '1000-01-01', '1000-01-01', '1000-01-01', 1);

SET FOREIGN_KEY_CHECKS = 1;
