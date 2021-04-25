/*
Navicat MySQL Data Transfer

Source Server         : zero
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2021-04-15 23:12:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bgm
-- ----------------------------
DROP TABLE IF EXISTS `bgm`;
CREATE TABLE `bgm` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgm
-- ----------------------------
INSERT INTO `bgm` VALUES ('1001', '三无', '风月本是故人心.mp3', '/bgm/风月本是故人心.mp3');
INSERT INTO `bgm` VALUES ('1002', '桃花笑', '桃花笑.mp3', '/bgm/桃花笑.mp3');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) DEFAULT NULL,
  `label` varchar(22) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '知识分享', '\r\nknowledge', '一起来分享一下叭', '/images/knowledge.jpg', '2020-12-01 20:31:57', '0');
INSERT INTO `category` VALUES ('2', '自然风光', '\r\nscenery', '一起来分享一下叭', '/images/scenery.jpg', '2020-12-01 20:32:58', '0');
INSERT INTO `category` VALUES ('3', '默认其他', 'define', '一起来分享一下叭', '/images/define.jpg', '2020-12-01 20:33:01', '0');
INSERT INTO `category` VALUES ('4', '更多内容', 'more', '一起来分享一下叭', '/images/more.jpg', '2020-12-24 17:23:31', '0');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` varchar(20) DEFAULT NULL,
  `video_id` varchar(20) DEFAULT NULL,
  `from_user_id` varchar(20) DEFAULT NULL,
  `comment` text,
  `create_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('210304F9MR66ZKWH', '21030172AATZ1WH0', '210226HC2PRH73TC', '12333112的', '2021-03-04 20:06:01');
INSERT INTO `comments` VALUES ('210304FAM2NR5DS8', '21030172AATZ1WH0', '210226HC2PRH73TC', '好吧', '2021-03-04 20:08:57');
INSERT INTO `comments` VALUES ('210304FATB1KTXP0', '21030172AATZ1WH0', '210226HC2PRH73TC', '11', '2021-03-04 20:09:31');
INSERT INTO `comments` VALUES ('210306859G6S3YA8', '210306850M433WPH', '210226HC2PRH73TC', '真美啊', '2021-03-06 11:28:36');
INSERT INTO `comments` VALUES ('21030685B12G29KP', '210306850M433WPH', '210226HC2PRH73TC', '我的天', '2021-03-06 11:28:45');
INSERT INTO `comments` VALUES ('21030685STSYP8SW', '21030682DM8DZTC0', '210226DSW5CR763C', '哥古古怪怪', '2021-03-06 11:30:01');
INSERT INTO `comments` VALUES ('210307ATB2X8RZ54', '2103067M15BKP7TC', '210226HC2PRH73TC', '加油＾０＾~', '2021-03-07 15:10:57');
INSERT INTO `comments` VALUES ('210307AX253DX4ZC', '2103067Y2B2WDC4H', '210226DSW5CR763C', '加油加油', '2021-03-07 15:16:00');
INSERT INTO `comments` VALUES ('210307AXNXN10N7C', '21030684ATSTYNC0', '210226HC2PRH73TC', '加油武汉', '2021-03-07 15:17:54');
INSERT INTO `comments` VALUES ('210307AXXSGP3CM8', '2103067Y2B2WDC4H', '210226HC2PRH73TC', '绿水青山就是金山银山', '2021-03-07 15:18:32');
INSERT INTO `comments` VALUES ('2103108WXADXGK68', '2103067Y2B2WDC4H', '210226DSW5CR763C', '中国加油', '2021-03-10 12:27:20');
INSERT INTO `comments` VALUES ('210311HC1GKBP754', '2103067Y2B2WDC4H', '210226HC2PRH73TC', '加油＾０＾~，中国最棒', '2021-03-11 23:01:19');
INSERT INTO `comments` VALUES ('210311HCNKR7WHM8', '210306850M433WPH', '210226HC2PRH73TC', '武汉加油＾０＾~', '2021-03-11 23:03:15');
INSERT INTO `comments` VALUES ('210311HDR1YTHSFW', '210310AXN9G5MA80', '210226DSW5CR763C', '加油，武汉', '2021-03-11 23:06:25');
INSERT INTO `comments` VALUES ('210311HFHP9ZTZMW', '210306850M433WPH', '210226DSW5CR763C', '爱你武汉', '2021-03-11 23:08:57');
INSERT INTO `comments` VALUES ('210409ARHAC1AZXP', '210311HG7WYNZDKP', '210226HC2PRH73TC', '测试', '2021-04-09 15:05:30');

-- ----------------------------
-- Table structure for search_records
-- ----------------------------
DROP TABLE IF EXISTS `search_records`;
CREATE TABLE `search_records` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of search_records
-- ----------------------------
INSERT INTO `search_records` VALUES ('2103046G3C8896K4', '测试');
INSERT INTO `search_records` VALUES ('2103046G93YKP6FW', '测试');
INSERT INTO `search_records` VALUES ('210304DF4PH8FT9P', '测试');
INSERT INTO `search_records` VALUES ('2103067MXXT2FMRP', '环保');
INSERT INTO `search_records` VALUES ('2103067N06T9MF5P', '保护');
INSERT INTO `search_records` VALUES ('2103067ZK7CB3Z9P', '测试');
INSERT INTO `search_records` VALUES ('210306820T93KPM8', '环保');
INSERT INTO `search_records` VALUES ('21030685ZS7W30X4', '环保');
INSERT INTO `search_records` VALUES ('210307ATH2SS99WH', '环保');
INSERT INTO `search_records` VALUES ('210307ATKGH5NXAW', '武汉');
INSERT INTO `search_records` VALUES ('210307AY0655SY80', '武汉');
INSERT INTO `search_records` VALUES ('210307AY1SNRMXYW', '测试');
INSERT INTO `search_records` VALUES ('210307AY6ZHX7PDP', '测试');
INSERT INTO `search_records` VALUES ('210307AYXAFG75D4', '测试');
INSERT INTO `search_records` VALUES ('210307AYXXTHHPX4', '武汉');
INSERT INTO `search_records` VALUES ('2103108X3D07MRAW', '武汉');
INSERT INTO `search_records` VALUES ('2103108X6Z51H280', '测试');
INSERT INTO `search_records` VALUES ('21031119G9068NHH', '测试');
INSERT INTO `search_records` VALUES ('210311G58XMPBK68', '武汉');
INSERT INTO `search_records` VALUES ('210311HCW4YT6G54', '武汉');
INSERT INTO `search_records` VALUES ('210311HCXW3Z51AW', '测试');
INSERT INTO `search_records` VALUES ('210311HFTC0CX6K4', '环保');
INSERT INTO `search_records` VALUES ('210311HFWMD1HKYW', '环保');
INSERT INTO `search_records` VALUES ('210311HFYDRP0Y3C', '武汉');
INSERT INTO `search_records` VALUES ('210311HFZPDF0SW0', '测试');
INSERT INTO `search_records` VALUES ('210410A94NN4Y0SW', '测试');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户id',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `face_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `fans_counts` int(11) DEFAULT NULL COMMENT '粉丝数',
  `follow_counts` int(11) DEFAULT NULL COMMENT '关注人',
  `receive_like_counts` int(11) DEFAULT NULL COMMENT '获赞量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('210226DSW5CR763C', 'lisi', '4QrcOUm6Wau+VuBX8g+IPg==', '/210226DSW5CR763C/face/YBbB7E3byxlta9b782c7c04c4cbffac5d77dd4710bce.jpg', 'lisi', '2', '1', '4');
INSERT INTO `users` VALUES ('210226HC2PRH73TC', 'abc', 'kAFQmDzST7DWlj99KOF/cg==', '/210226HC2PRH73TC/face/FqJVEujng60J283a006b0a7bfd766abf29c89a5ac54c.jpg', 'abc', '1', '1', '7');
INSERT INTO `users` VALUES ('2103067MAW3C7TC0', 'test', 'CY9rzUYh03PK3k6DJie09g==', '/2103067MAW3C7TC0/face/tmp_7a0a3cc715bfea889a124c45feba3a157060eeb2e26abbc2.jpg', 'test', '0', '1', '0');
INSERT INTO `users` VALUES ('21031076121Z6T0H', 'xhl', 'ICy5YqxZB1uWSwcVLSNLcA==', null, 'xhl', '0', '0', '0');
INSERT INTO `users` VALUES ('21031115ARGAMN2W', '123', 'ICy5YqxZB1uWSwcVLSNLcA==', null, '123', '0', '0', '0');

-- ----------------------------
-- Table structure for users_fans
-- ----------------------------
DROP TABLE IF EXISTS `users_fans`;
CREATE TABLE `users_fans` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `user_id` varchar(64) DEFAULT NULL,
  `fan_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_fans
-- ----------------------------
INSERT INTO `users_fans` VALUES ('21030681169553031168', '210226DSW5CR763C', '2103067MAW3C7TC0');
INSERT INTO `users_fans` VALUES ('210311174842263371776', '210226HC2PRH73TC', '210226DSW5CR763C');
INSERT INTO `users_fans` VALUES ('210409114077877665792', '210226DSW5CR763C', '210226HC2PRH73TC');

-- ----------------------------
-- Table structure for users_like_videos
-- ----------------------------
DROP TABLE IF EXISTS `users_like_videos`;
CREATE TABLE `users_like_videos` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `user_id` varchar(64) DEFAULT NULL,
  `video_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_like_videos
-- ----------------------------
INSERT INTO `users_like_videos` VALUES ('210304CA65Z3SN2W', '210226HC2PRH73TC', '210301742YZ36T0H');
INSERT INTO `users_like_videos` VALUES ('2103067MRWPHHBR4', '2103067MAW3C7TC0', '2103067FZ9PF51P0');
INSERT INTO `users_like_videos` VALUES ('21030685X2Y92HSW', '210226DSW5CR763C', '21030682DM8DZTC0');
INSERT INTO `users_like_videos` VALUES ('210307AT4N59WYCH', '210226HC2PRH73TC', '2103067TYY7KMBHH');
INSERT INTO `users_like_videos` VALUES ('210307AT92S3HMK4', '210226HC2PRH73TC', '2103067M15BKP7TC');
INSERT INTO `users_like_videos` VALUES ('210307AX11AH02K4', '210226DSW5CR763C', '2103067Y2B2WDC4H');
INSERT INTO `users_like_videos` VALUES ('210311HBYP4Z7NTC', '210226HC2PRH73TC', '2103067Y2B2WDC4H');
INSERT INTO `users_like_videos` VALUES ('210311HCKYR0BC00', '210226HC2PRH73TC', '210306850M433WPH');
INSERT INTO `users_like_videos` VALUES ('210311HDNM4PDR8H', '210226DSW5CR763C', '210310AXN9G5MA80');
INSERT INTO `users_like_videos` VALUES ('210311HFGARRZZ9P', '210226DSW5CR763C', '210306850M433WPH');
INSERT INTO `users_like_videos` VALUES ('210409ARG3CNW0ZC', '210226HC2PRH73TC', '210311HG7WYNZDKP');

-- ----------------------------
-- Table structure for users_report
-- ----------------------------
DROP TABLE IF EXISTS `users_report`;
CREATE TABLE `users_report` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `deal_user_id` varchar(64) DEFAULT NULL,
  `deal_video_id` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `userid` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_report
-- ----------------------------
INSERT INTO `users_report` VALUES ('210304F75021HWDP', '210226DSW5CR763C', '21030172AATZ1WH0', '违法信息', '123', '210226HC2PRH73TC', '2021-03-04 19:58:32');
INSERT INTO `users_report` VALUES ('210311HC4T471BF8', '210226HC2PRH73TC', '2103067Y2B2WDC4H', '不实信息', '测试', '210226HC2PRH73TC', '2021-03-11 23:01:40');
INSERT INTO `users_report` VALUES ('210311HCRN0R6800', '210226HC2PRH73TC', '210306850M433WPH', '垃圾营销', '测试测试', '210226HC2PRH73TC', '2021-03-11 23:03:28');
INSERT INTO `users_report` VALUES ('210311HDT1MCMBXP', '210226HC2PRH73TC', '210310AXN9G5MA80', '垃圾营销', 'test', '210226DSW5CR763C', '2021-03-11 23:06:38');
INSERT INTO `users_report` VALUES ('210311HFPMACZGXP', '210226HC2PRH73TC', '210306850M433WPH', '不实信息', '测试', '210226DSW5CR763C', '2021-03-11 23:09:22');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '视频id',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布者id',
  `audio_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '背景音乐',
  `video_filter` varchar(128) DEFAULT NULL,
  `video_category` varchar(128) DEFAULT NULL,
  `video_desc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述内容',
  `video_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路径',
  `video_seconds` float(6,2) DEFAULT NULL COMMENT '播放时间',
  `video_width` int(6) DEFAULT NULL COMMENT '宽',
  `video_height` int(6) DEFAULT NULL COMMENT '高',
  `cover_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面',
  `like_counts` bigint(20) unsigned DEFAULT NULL COMMENT '点赞',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('21030172AATZ1WH0', '210226DSW5CR763C', '1002', 'define', 'define', '测试测试测试测试', '/210226DSW5CR763C/video/26198d0e-4932-479f-87d9-7d3cde769cf7.mp4', '3.84', '540', '960', '/210226DSW5CR763C/video/IDE6nUFfkWxi184bddacec28f8c2bfba02405a846af8bc247cee-21d6-40db-a79f-dd46b0c9bf8c.jpg', '0', '1', '2021-03-01 09:55:37');
INSERT INTO `videos` VALUES ('210301742YZ36T0H', '210226DSW5CR763C', '1002', 'define', 'define', '测试', '/210226DSW5CR763C/video/5056ea99-2a34-42e5-af89-6fda49045992.mp4', '3.84', '540', '960', '/210226DSW5CR763C/video/QWAJEo70VHZu184bddacec28f8c2bfba02405a846af819d52a96-03ff-410f-8eb8-1636d6f78937.jpg', '1', '1', '2021-03-01 10:00:49');
INSERT INTO `videos` VALUES ('2103067FZ9PF51P0', '210226DSW5CR763C', '', 'define', 'knowledge', '垃圾分类，我们每个人都有责任。#环保', '/210226DSW5CR763C/video/tmp_686c72dc29fc131707499c3822072b74c51afd5dcf681b51.mp4', '28.00', '384', '664', '/210226DSW5CR763C/video/tmp_686c72dc29fc131707499c3822072b74c51afd5dcf681b5134eb4f7b-23e7-4687-a031-63b1285f919c.jpg', '1', '1', '2021-03-06 10:33:27');
INSERT INTO `videos` VALUES ('2103067M15BKP7TC', '210226DSW5CR763C', '', 'define', 'knowledge', '保护动物，人人有责。#环保', '/210226DSW5CR763C/video/tmp_7db54fe904ccffe4819b93f92976bf676283ad2396d305c5.mp4', '26.00', '384', '664', '/210226DSW5CR763C/video/tmp_7db54fe904ccffe4819b93f92976bf676283ad2396d305c5f39a906b-e8f7-43f8-87ea-648a736384ac.jpg', '1', '1', '2021-03-06 10:42:40');
INSERT INTO `videos` VALUES ('2103067TYY7KMBHH', '210226HC2PRH73TC', '', 'define', 'knowledge', '保护环境，反对捕鲸。#环保', '/210226HC2PRH73TC/video/tmp_b68bc12a064a378f447b2537a8e25bf658dad5234d4445e3.mp4', '25.00', '384', '664', '/210226HC2PRH73TC/video/tmp_b68bc12a064a378f447b2537a8e25bf658dad5234d4445e368570982-1579-450d-81bf-4375fdc96cdb.jpg', '1', '1', '2021-03-06 11:00:26');
INSERT INTO `videos` VALUES ('2103067WW2PKCMY8', '210226HC2PRH73TC', '', 'define', 'knowledge', '浪费可耻，节约为荣。拒绝浪费粮食，节约从我做起！#环保', '/210226HC2PRH73TC/video/tmp_98dffc5d2e060754dc7785e5201d3c212609044f95eaed69.mp4', '29.00', '448', '664', '/210226HC2PRH73TC/video/tmp_98dffc5d2e060754dc7785e5201d3c212609044f95eaed69a1acc1c7-cfaa-4819-af83-35778bb6c5bd.jpg', '0', '1', '2021-03-06 11:03:08');
INSERT INTO `videos` VALUES ('2103067Y2B2WDC4H', '210226HC2PRH73TC', '', 'define', 'knowledge', '赵立坚：低碳日，节能减排从我做起，从身边小事做起，赞起来！#环保', '/210226HC2PRH73TC/video/tmp_2f81376bdc801e0275906941132b8bfdf4a6dee69f9ff5ed.mp4', '29.00', '384', '664', '/210226HC2PRH73TC/video/tmp_2f81376bdc801e0275906941132b8bfdf4a6dee69f9ff5edac71b0c4-98ff-4f7a-aa42-7c40029b1aba.jpg', '2', '1', '2021-03-06 11:06:49');
INSERT INTO `videos` VALUES ('2103067Z1YHG3GHH', '210226HC2PRH73TC', '', 'define', 'scenery', '对祖国表白，国之美。#中国', '/210226HC2PRH73TC/video/tmp_6bfa05d9124eab8a0be29eea9d69873f3b573825cd8fc4da.mp4', '25.00', '384', '664', '/210226HC2PRH73TC/video/tmp_6bfa05d9124eab8a0be29eea9d69873f3b573825cd8fc4da3f74c07e-7837-4d55-b0ba-801b81f11c04.jpg', '0', '1', '2021-03-06 11:09:46');
INSERT INTO `videos` VALUES ('21030681FTPNSXKP', '210226HC2PRH73TC', '', 'define', 'scenery', '冬日暖阳下的武汉，东湖边的梧桐树。诉说着这一年沉甸甸的故事。#武汉 #湖北', '/210226HC2PRH73TC/video/tmp_0c22fe8d5b47744ca6d8da9e66d3229e66ffa1a2ae6734f4.mp4', '18.00', '360', '640', '/210226HC2PRH73TC/video/tmp_0c22fe8d5b47744ca6d8da9e66d3229e66ffa1a2ae6734f4cb710a0b-7631-4072-9dbf-812c7d097ee2.jpg', '0', '1', '2021-03-06 11:17:09');
INSERT INTO `videos` VALUES ('21030682DM8DZTC0', '210226HC2PRH73TC', '', 'define', 'scenery', '你打算什么时候带你心爱的人来东湖磨山上坐缆车看风景啊！#武汉 #湖北', '/210226HC2PRH73TC/video/tmp_cbf1cd119e468773311239c3d91d41cadf4fed15bda24576.mp4', '16.00', '360', '640', '/210226HC2PRH73TC/video/tmp_cbf1cd119e468773311239c3d91d41cadf4fed15bda24576e4f2f83c-96b9-47d9-b33c-6c48ef886dbf.jpg', '1', '1', '2021-03-06 11:20:02');
INSERT INTO `videos` VALUES ('21030683RHC82NR4', '210226HC2PRH73TC', '', 'define', 'scenery', '春满大地，最美武汉。#武汉', '/210226HC2PRH73TC/video/tmp_0f0da34dc8d049fb30db55f3a353576c64419d5961979dc1.mp4', '11.00', '640', '360', '/210226HC2PRH73TC/video/tmp_0f0da34dc8d049fb30db55f3a353576c64419d5961979dc1430ab6a2-c86d-463e-9b85-8a32f34e27a2.jpg', '0', '1', '2021-03-06 11:23:53');
INSERT INTO `videos` VALUES ('21030684ATSTYNC0', '210226HC2PRH73TC', '', 'define', 'scenery', '没有一个冬天不可逾越，没有一个春天不会来临。#武汉', '/210226HC2PRH73TC/video/tmp_c2d6509c83b2be2446552e862fa85dd6234b6ec6e8c568a4.mp4', '29.00', '540', '304', '/210226HC2PRH73TC/video/tmp_c2d6509c83b2be2446552e862fa85dd6234b6ec6e8c568a4ce7e206f-62b9-433c-92dd-e7939aa16a90.jpg', '0', '1', '2021-03-06 11:25:44');
INSERT INTO `videos` VALUES ('210306850M433WPH', '210226HC2PRH73TC', '', 'define', 'scenery', '东湖梅园重新绽放，春天又来了。#武汉', '/210226HC2PRH73TC/video/tmp_f838c88f83bde3b9b0ca4db17578375acc3d19e3e983d0ba.mp4', '18.00', '360', '640', '/210226HC2PRH73TC/video/tmp_f838c88f83bde3b9b0ca4db17578375acc3d19e3e983d0bab13d07d7-eee0-4cf7-9ff2-314e697fa3cd.jpg', '2', '1', '2021-03-06 11:27:39');
INSERT INTO `videos` VALUES ('210310AXN9G5MA80', '210226HC2PRH73TC', '1002', 'define', 'scenery', '', '/210226HC2PRH73TC/video/e0b561c9-c940-45e4-b372-9f3eb900234b.mp4', '15.93', '360', '640', '/210226HC2PRH73TC/video/SJxtbtepec2H296f61ef6e70c30f991bc14f0dc1b3c37cc22442-7052-4e5b-a5c9-fb40887bd4a2.jpg', '1', '1', '2021-03-10 15:17:50');
INSERT INTO `videos` VALUES ('210311HG7WYNZDKP', '210226DSW5CR763C', '1002', 'black', 'knowledge', '', '/210226DSW5CR763C/video/9e528a08-18ff-48b4-aee5-041cfa952a72.mp4', '6.00', '540', '1200', '/210226DSW5CR763C/video/tmp_aac145fee3ddf267b94b1dd2ecc8c5b236bbc686a667c4e4fbac8516-b9e9-41e8-9d61-6042536a5dce.jpg', '1', '1', '2021-03-11 23:11:00');
