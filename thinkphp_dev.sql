/*
 Navicat Premium Data Transfer

 Source Server         : 新创动力
 Source Server Type    : MySQL
 Source Server Version : 50556
 Source Host           : 140.210.2.6:3306
 Source Schema         : thinkphp_dev

 Target Server Type    : MySQL
 Target Server Version : 50556
 File Encoding         : 65001

 Date: 08/04/2019 16:45:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tp_address
-- ----------------------------
DROP TABLE IF EXISTS `tp_address`;
CREATE TABLE `tp_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `tel` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `sheng` int(11) NOT NULL DEFAULT 0 COMMENT '省id',
  `city` int(11) NOT NULL DEFAULT 0 COMMENT '市id',
  `quyu` int(11) NOT NULL DEFAULT 0 COMMENT '区域id',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货地址（不加省市区）',
  `address_xq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省市区+详细地址',
  `code` int(11) NOT NULL DEFAULT 0 COMMENT '邮政编号',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `is_default` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否默认地址 1默认',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 139 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_address
-- ----------------------------
INSERT INTO `tp_address` VALUES (106, '测试', '15088888888', 43, 44, 47, '测试测试', '河北省 石家庄市 桥东区 测试测试', 130103, 8, 1);
INSERT INTO `tp_address` VALUES (107, 'test', '15088888888', 22, 23, 25, 'test', '天津 天津 河东区 test', 120102, 4, 1);
INSERT INTO `tp_address` VALUES (108, '桑瑞恒', '18146559572', 1, 2, 7, '十里河', '北京 北京 朝阳区 十里河', 110105, 3, 1);
INSERT INTO `tp_address` VALUES (111, '喇叭', '13213666', 1, 2, 7, '东方郁金香', '北京 北京 朝阳区 东方郁金香', 110105, 19, 1);
INSERT INTO `tp_address` VALUES (110, '桑瑞恒', '18146559572', 1, 2, 3, '几点开始就换来的是', '北京 北京 东城区 几点开始就换来的是', 110101, 11, 1);
INSERT INTO `tp_address` VALUES (112, '陆新', '18612011641', 1, 2, 15, '天通苑五区', '北京 北京 昌平区 天通苑五区', 110114, 12, 1);
INSERT INTO `tp_address` VALUES (138, '吃饭', '18600752164', 1, 2, 3, '常出现', '北京 北京 东城区 常出现', 110101, 18, 1);
INSERT INTO `tp_address` VALUES (126, '明下午', '17806075275', 1, 1, 1, '名字', '北京 北京 北京 名字', 0, 10, 0);
INSERT INTO `tp_address` VALUES (127, '李玖哲', '17806060606', 1, 1, 1, '救护', '北京 北京 北京 救护', 0, 10, 0);
INSERT INTO `tp_address` VALUES (136, '111111111', '17809090909', 1, 1, 1, '9', '北京 北京 北京 9', 0, 10, 0);
INSERT INTO `tp_address` VALUES (137, 'jhg', '17809090909', 1, 1, 1, '9u7', '北京 北京 北京 9u7', 0, 10, 1);
INSERT INTO `tp_address` VALUES (130, 'qqq', '17845678909', 1, 1, 1, 'gfx', '北京 北京 北京 gfx', 0, 10, 0);

-- ----------------------------
-- Table structure for tp_admin
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin`  (
  `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `pword` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属角色id',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, NULL);
INSERT INTO `tp_admin` VALUES (2, 'test', '21232f297a57a5a743894a0e4a801fc3', 1, NULL);
INSERT INTO `tp_admin` VALUES (3, 'jianglibin', 'e10adc3949ba59abbe56e057f20f883e', 4, NULL);
INSERT INTO `tp_admin` VALUES (4, 'test1', 'e10adc3949ba59abbe56e057f20f883e', 4, 1481183995);

-- ----------------------------
-- Table structure for tp_admin_app
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_app`;
CREATE TABLE `tp_admin_app`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统名称',
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `bname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备案人',
  `nyear` int(11) NULL DEFAULT 0,
  `start_time` int(10) NOT NULL DEFAULT 0 COMMENT '项目开通时间',
  `end_time` int(10) NOT NULL DEFAULT 0 COMMENT '项目到期时间',
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中心认证照',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `iphone_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `android_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iphone_version` int(5) NOT NULL DEFAULT 1,
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `android_version` int(5) NOT NULL DEFAULT 0,
  `android_version2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `logo2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `view_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iphone_app_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `android_app_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `android_appkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `android_master_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iphone_pem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weixinid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信号',
  `baiduid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '百度市场id',
  `baidukey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '百度市场key',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'key=（appkey-1）*2',
  `ispcshop` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否开通pc',
  `current_version` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '5.0.00' COMMENT '当前版本',
  `tuiguang` tinyint(2) NOT NULL DEFAULT 0 COMMENT '开通推广',
  `pcnav_color` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'c81622' COMMENT 'pc版导航条颜色',
  `ahover_color` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'f97293' COMMENT 'pc版导航条鼠标hover值',
  `theme_color` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#21b7a1' COMMENT 'app主题颜色',
  `version` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3058 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_admin_app
-- ----------------------------
INSERT INTO `tp_admin_app` VALUES (3057, 29, '小程序', '小程序', '小程序', 3, 1493913600, 1588608000, 'UploadFiles/app_zhengshu/20160720/1468997491.jpg', '小程序', 1468997498, NULL, 'com.pts.LianShang.yl3057', 1, NULL, 1, '1', 'UploadFiles/pack/ic_launcher_144.png,UploadFiles/pack/ic_launcher_114.png,UploadFiles/pack/ic_launch', 'UploadFiles/pack/splash_2208.png,UploadFiles/pack/splash_1136.png,UploadFiles/pack/splash_960.png', 'https://itunes.apple.com/cn/app/yang-lao/id1116965974?mt=8 ', 'http://42.96.193.246/down/small/3057.apk', 'c8933e5dc3af0792dec75cb6', 'e072b826c12a3f8210a6cc9a', NULL, '', '', '', NULL, 1, '5.1.00', 0, 'c81622', 'f97293', '#CC0000', '1');

-- ----------------------------
-- Table structure for tp_attribute
-- ----------------------------
DROP TABLE IF EXISTS `tp_attribute`;
CREATE TABLE `tp_attribute`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '属性名称',
  `attr_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `pro_id` int(11) NULL DEFAULT 0 COMMENT '产品ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_attribute
-- ----------------------------
INSERT INTO `tp_attribute` VALUES (1, '颜色', 1501480206, 279);
INSERT INTO `tp_attribute` VALUES (2, '尺寸', 1501480206, 279);
INSERT INTO `tp_attribute` VALUES (3, '颜色', 1501487712, 273);
INSERT INTO `tp_attribute` VALUES (4, '颜色', 1501902603, 6);
INSERT INTO `tp_attribute` VALUES (5, '尺寸', 1501902603, 6);
INSERT INTO `tp_attribute` VALUES (6, '颜色', 1501913955, 5);
INSERT INTO `tp_attribute` VALUES (7, '尺寸', 1501913955, 5);
INSERT INTO `tp_attribute` VALUES (8, '测试', 1504277190, 6);
INSERT INTO `tp_attribute` VALUES (9, 'test', 1504444113, 5);
INSERT INTO `tp_attribute` VALUES (10, 'testtest', 1504445723, 6);
INSERT INTO `tp_attribute` VALUES (11, '颜色', 1504507293, 9);
INSERT INTO `tp_attribute` VALUES (12, '颜色', 1504509199, 8);
INSERT INTO `tp_attribute` VALUES (13, '颜色', 1553658509, 10);
INSERT INTO `tp_attribute` VALUES (14, '颜色', 1553918223, 11);
INSERT INTO `tp_attribute` VALUES (15, '颜色', 1554090175, 13);
INSERT INTO `tp_attribute` VALUES (16, '颜色', 1554090317, 12);
INSERT INTO `tp_attribute` VALUES (17, '分类', 1554109667, 16);
INSERT INTO `tp_attribute` VALUES (18, '规格', 1554109842, 15);
INSERT INTO `tp_attribute` VALUES (19, '规格', 1554112216, 18);
INSERT INTO `tp_attribute` VALUES (20, '颜色', 1554113518, 21);
INSERT INTO `tp_attribute` VALUES (21, '颜色', 1554114077, 22);
INSERT INTO `tp_attribute` VALUES (22, '颜色', 1554114531, 23);
INSERT INTO `tp_attribute` VALUES (23, '颜色', 1554176918, 24);
INSERT INTO `tp_attribute` VALUES (24, '规格', 1554188701, 27);
INSERT INTO `tp_attribute` VALUES (25, '颜色', 1554190579, 29);
INSERT INTO `tp_attribute` VALUES (26, '颜色', 1554191555, 30);

-- ----------------------------
-- Table structure for tp_brand
-- ----------------------------
DROP TABLE IF EXISTS `tp_brand`;
CREATE TABLE `tp_brand`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '产品品牌表',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌名称',
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `type` tinyint(2) NULL DEFAULT 0 COMMENT '是否推荐',
  `addtime` int(11) NULL DEFAULT NULL COMMENT '添加时间',
  `shop_id` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '店铺id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_brand
-- ----------------------------
INSERT INTO `tp_brand` VALUES (14, 'novo', NULL, 0, 1554196756, 0);
INSERT INTO `tp_brand` VALUES (15, '艾柏梵', NULL, 0, 1554196767, 0);
INSERT INTO `tp_brand` VALUES (13, 'CANMAKE井田', NULL, 0, 1554196746, 0);
INSERT INTO `tp_brand` VALUES (5, 'svk', 'UploadFiles/brand/20190330/1553927669103333.jpg', 0, 1553927669, 0);
INSERT INTO `tp_brand` VALUES (6, 'JMsolution', 'UploadFiles/brand/20190401/1554102672434388.jpg', 0, 1554102672, 0);
INSERT INTO `tp_brand` VALUES (7, '玛丽黛佳', 'UploadFiles/brand/20190401/1554114790118876.jpg', 0, 1554114790, 0);
INSERT INTO `tp_brand` VALUES (8, '卡姿兰', 'UploadFiles/brand/20190401/1554114805744715.jpg', 0, 1554114805, 0);
INSERT INTO `tp_brand` VALUES (9, '玛丽黛佳', NULL, 0, 1554196631, 0);
INSERT INTO `tp_brand` VALUES (10, '爱敬', NULL, 0, 1554196699, 0);
INSERT INTO `tp_brand` VALUES (11, '泊泉雅', NULL, 0, 1554196709, 0);
INSERT INTO `tp_brand` VALUES (12, '火烈鸟', NULL, 0, 1554196723, 0);
INSERT INTO `tp_brand` VALUES (16, '一叶子', NULL, 0, 1554196776, 0);
INSERT INTO `tp_brand` VALUES (17, '一叶子', NULL, 0, 1554196789, 0);
INSERT INTO `tp_brand` VALUES (18, 'suikone', NULL, 0, 1554196830, 0);
INSERT INTO `tp_brand` VALUES (19, '日本SANA莎娜', NULL, 0, 1554196846, 0);
INSERT INTO `tp_brand` VALUES (20, 'nyx', NULL, 0, 1554196855, 0);
INSERT INTO `tp_brand` VALUES (21, '娥佩兰', NULL, 0, 1554197081, 0);
INSERT INTO `tp_brand` VALUES (22, 'BOB', NULL, 0, 1554197227, 0);
INSERT INTO `tp_brand` VALUES (23, '日本BCL', NULL, 0, 1554197389, 0);

-- ----------------------------
-- Table structure for tp_category
-- ----------------------------
DROP TABLE IF EXISTS `tp_category`;
CREATE TABLE `tp_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `tid` int(11) NOT NULL DEFAULT 0 COMMENT '父级分类id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '栏目名称',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `concent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '栏目简介',
  `bz_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `bz_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注字段',
  `bz_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `bz_4` tinyint(2) NOT NULL DEFAULT 0 COMMENT '备用字段',
  `bz_5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐略缩图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_category
-- ----------------------------
INSERT INTO `tp_category` VALUES (1, 0, '产品一级分类（系统分类）', 0, 0, '', '', NULL, '', 0, NULL);
INSERT INTO `tp_category` VALUES (33, 1, '面膜', 0, 1554102571, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (40, 1, '气垫', 0, 1554193153, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (41, 1, '爽肤水', 0, 1554193168, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (35, 1, '眼影', 0, 1554111889, '', 'UploadFiles/category/20190401/1554111889215014.jpg', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (44, 33, '面膜', 0, 1554196869, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (45, 35, '眼影', 0, 1554196878, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (42, 1, '腮红', 0, 1554193178, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (51, 1, '睫毛膏', 0, 1554197173, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (38, 1, '眼线笔', 0, 1554114881, '', 'UploadFiles/category/20190401/1554114881100100.jpg', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (39, 1, '眉笔', 0, 1554193109, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (46, 38, '眼线笔', 0, 1554196889, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (47, 39, '眉笔', 0, 1554196911, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (48, 40, '气垫', 0, 1554196922, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (49, 41, '爽肤水', 0, 1554196935, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (50, 42, '腮红', 0, 1554196948, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (52, 51, '睫毛膏', 0, 1554197188, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (16, 0, '专题分类', 1, 1553659123, '专题分类介绍', 'UploadFiles/category/20190327/1553659123964895.jpeg', NULL, NULL, 1, NULL);
INSERT INTO `tp_category` VALUES (17, 16, '当季新品', 0, 1553659170, '当季新品介绍', 'UploadFiles/category/20190327/1553659170104206.jpeg', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (18, 16, '护肤脸霜', 0, 1553668808, '护肤脸霜介绍', 'UploadFiles/category/20190327/1553668808499837.jpeg', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (19, 16, '彩妆分类', 0, 1553668852, '彩妆分类介绍', 'UploadFiles/category/20190327/1553668852731939.jpeg', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (20, 16, '七折专区', 0, 1553668899, '七折专区介绍', 'UploadFiles/category/20190327/1553668899293994.jpeg', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (21, 16, '面膜精品', 0, 1553668948, '面膜精品英文', 'UploadFiles/category/20190327/1553668948668793.jpeg', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (22, 1, '洁面仪', 0, 1553915336, '', '', NULL, NULL, 1, NULL);
INSERT INTO `tp_category` VALUES (23, 1, '毛孔清洁仪', 0, 1553915472, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (24, 1, '美眼仪', 0, 1553915483, '', '', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (25, 22, 'svk 洁面仪', 0, 1553915936, '', 'UploadFiles/category/20190330/1553915936446278.jpg', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (26, 23, 'svk 毛孔清洁仪', 0, 1553915955, '', 'UploadFiles/category/20190330/1553915955913588.jpg', NULL, NULL, 0, NULL);
INSERT INTO `tp_category` VALUES (27, 24, 'svk 美眼仪', 0, 1553915973, '', 'UploadFiles/category/20190330/1553915973100258.jpg', NULL, NULL, 0, NULL);

-- ----------------------------
-- Table structure for tp_catimg
-- ----------------------------
DROP TABLE IF EXISTS `tp_catimg`;
CREATE TABLE `tp_catimg`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类产品推荐表',
  `pro_id` int(11) NOT NULL DEFAULT 0 COMMENT '产品ID',
  `cat_id` int(11) NULL DEFAULT 0 COMMENT '分类ID',
  `img_str` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '推荐图片',
  `addtime` int(11) NULL DEFAULT 0 COMMENT '添加时间',
  `state` tinyint(2) NULL DEFAULT 1 COMMENT '状态，1正常 0取消推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_catimg
-- ----------------------------
INSERT INTO `tp_catimg` VALUES (1, 6, 7, ',UploadFiles/product/category/20170804/1501811247248554.jpg,UploadFiles/product/category/20170804/1501811250927356.jpg', 1501811250, 1);
INSERT INTO `tp_catimg` VALUES (2, 1, 4, ',UploadFiles/product/category/20170804/1501816937182712.jpg', 1501816937, 1);
INSERT INTO `tp_catimg` VALUES (3, 5, 5, ',UploadFiles/product/category/20170804/1501817262531129.jpg,UploadFiles/product/category/20170804/1501817262124228.jpg', 1501817262, 1);

-- ----------------------------
-- Table structure for tp_china_city
-- ----------------------------
DROP TABLE IF EXISTS `tp_china_city`;
CREATE TABLE `tp_china_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `tid` int(11) NULL DEFAULT 0 COMMENT '父级id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3537 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中国省市区地址联动表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_china_city
-- ----------------------------
INSERT INTO `tp_china_city` VALUES (1, 0, '北京', '110000', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2, 1, '北京', '110100', 'B', 1);
INSERT INTO `tp_china_city` VALUES (3, 2, '东城区', '110101', 'D', 0);
INSERT INTO `tp_china_city` VALUES (4, 2, '西城区', '110102', 'X', 0);
INSERT INTO `tp_china_city` VALUES (5, 2, '崇文区', '110103', 'S', 0);
INSERT INTO `tp_china_city` VALUES (6, 2, '宣武区', '110104', 'X', 0);
INSERT INTO `tp_china_city` VALUES (7, 2, '朝阳区', '110105', 'C', 0);
INSERT INTO `tp_china_city` VALUES (8, 2, '丰台区', '110106', 'F', 0);
INSERT INTO `tp_china_city` VALUES (9, 2, '石景山区', '110107', 'S', 0);
INSERT INTO `tp_china_city` VALUES (10, 2, '海淀区', '110108', 'H', 0);
INSERT INTO `tp_china_city` VALUES (11, 2, '门头沟区', '110109', 'M', 0);
INSERT INTO `tp_china_city` VALUES (12, 2, '房山区', '110111', 'F', 0);
INSERT INTO `tp_china_city` VALUES (13, 2, '通州区', '110112', 'T', 0);
INSERT INTO `tp_china_city` VALUES (14, 2, '顺义区', '110113', 'S', 0);
INSERT INTO `tp_china_city` VALUES (15, 2, '昌平区', '110114', 'C', 0);
INSERT INTO `tp_china_city` VALUES (16, 2, '大兴区', '110115', 'D', 0);
INSERT INTO `tp_china_city` VALUES (17, 2, '怀柔区', '110116', 'H', 0);
INSERT INTO `tp_china_city` VALUES (18, 2, '平谷区', '110117', 'P', 0);
INSERT INTO `tp_china_city` VALUES (19, 1, '县', '110200', 'X', 0);
INSERT INTO `tp_china_city` VALUES (20, 19, '密云县', '110228', 'M', 0);
INSERT INTO `tp_china_city` VALUES (21, 19, '延庆县', '110229', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (22, 0, '天津', '120000', 'T', 0);
INSERT INTO `tp_china_city` VALUES (23, 22, '天津', '120100', 'T', 1);
INSERT INTO `tp_china_city` VALUES (24, 23, '和平区', '120101', 'H', 0);
INSERT INTO `tp_china_city` VALUES (25, 23, '河东区', '120102', 'H', 0);
INSERT INTO `tp_china_city` VALUES (26, 23, '河西区', '120103', 'H', 0);
INSERT INTO `tp_china_city` VALUES (27, 23, '南开区', '120104', 'N', 0);
INSERT INTO `tp_china_city` VALUES (28, 23, '河北区', '120105', 'H', 0);
INSERT INTO `tp_china_city` VALUES (29, 23, '红桥区', '120106', 'H', 0);
INSERT INTO `tp_china_city` VALUES (30, 23, '塘沽区', '120107', 'T', 0);
INSERT INTO `tp_china_city` VALUES (31, 23, '汉沽区', '120108', 'H', 0);
INSERT INTO `tp_china_city` VALUES (32, 23, '大港区', '120109', 'D', 0);
INSERT INTO `tp_china_city` VALUES (33, 23, '东丽区', '120110', 'D', 0);
INSERT INTO `tp_china_city` VALUES (34, 23, '西青区', '120111', 'X', 0);
INSERT INTO `tp_china_city` VALUES (35, 23, '津南区', '120112', 'J', 0);
INSERT INTO `tp_china_city` VALUES (36, 23, '北辰区', '120113', 'B', 0);
INSERT INTO `tp_china_city` VALUES (37, 23, '武清区', '120114', 'W', 0);
INSERT INTO `tp_china_city` VALUES (38, 23, '宝坻区', '120115', 'B', 0);
INSERT INTO `tp_china_city` VALUES (39, 22, '县', '120200', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (40, 39, '宁河县', '120221', 'N', 0);
INSERT INTO `tp_china_city` VALUES (41, 39, '静海县', '120223', 'J', 0);
INSERT INTO `tp_china_city` VALUES (42, 39, '蓟县', '120225', 'X', 0);
INSERT INTO `tp_china_city` VALUES (43, 0, '河北省', '130000', 'H', 0);
INSERT INTO `tp_china_city` VALUES (44, 43, '石家庄市', '130100', 'S', 0);
INSERT INTO `tp_china_city` VALUES (46, 44, '长安区', '130102', 'C', 0);
INSERT INTO `tp_china_city` VALUES (47, 44, '桥东区', '130103', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (48, 44, '桥西区', '130104', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (49, 44, '新华区', '130105', 'X', 0);
INSERT INTO `tp_china_city` VALUES (50, 44, '井陉矿区', '130107', 'J', 0);
INSERT INTO `tp_china_city` VALUES (51, 44, '裕华区', '130108', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (52, 44, '井陉县', '130121', 'J', 0);
INSERT INTO `tp_china_city` VALUES (53, 44, '正定县', '130123', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (54, 44, '栾城县', '130124', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (55, 44, '行唐县', '130125', 'X', 0);
INSERT INTO `tp_china_city` VALUES (56, 44, '灵寿县', '130126', 'L', 0);
INSERT INTO `tp_china_city` VALUES (57, 44, '高邑县', '130127', 'G', 0);
INSERT INTO `tp_china_city` VALUES (58, 44, '深泽县', '130128', 'S', 0);
INSERT INTO `tp_china_city` VALUES (59, 44, '赞皇县', '130129', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (60, 44, '无极县', '130130', 'W', 0);
INSERT INTO `tp_china_city` VALUES (61, 44, '平山县', '130131', 'P', 0);
INSERT INTO `tp_china_city` VALUES (62, 44, '元氏县', '130132', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (63, 44, '赵县', '130133', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (64, 44, '辛集市', '130181', 'X', 0);
INSERT INTO `tp_china_city` VALUES (65, 44, '藁城市', '130182', 'G', 0);
INSERT INTO `tp_china_city` VALUES (66, 44, '晋州市', '130183', 'J', 0);
INSERT INTO `tp_china_city` VALUES (67, 44, '新乐市', '130184', 'X', 0);
INSERT INTO `tp_china_city` VALUES (68, 44, '鹿泉市', '130185', 'L', 0);
INSERT INTO `tp_china_city` VALUES (69, 43, '唐山市', '130200', 'T', 0);
INSERT INTO `tp_china_city` VALUES (71, 69, '路南区', '130202', 'L', 0);
INSERT INTO `tp_china_city` VALUES (72, 69, '路北区', '130203', 'L', 0);
INSERT INTO `tp_china_city` VALUES (73, 69, '古冶区', '130204', 'G', 0);
INSERT INTO `tp_china_city` VALUES (74, 69, '开平区', '130205', 'P', 0);
INSERT INTO `tp_china_city` VALUES (75, 69, '丰南区', '130207', 'F', 0);
INSERT INTO `tp_china_city` VALUES (76, 69, '丰润区', '130208', 'F', 0);
INSERT INTO `tp_china_city` VALUES (77, 69, '滦县', '130223', 'L', 0);
INSERT INTO `tp_china_city` VALUES (78, 69, '滦南县', '130224', 'L', 0);
INSERT INTO `tp_china_city` VALUES (79, 69, '乐亭县', '130225', 'L', 0);
INSERT INTO `tp_china_city` VALUES (80, 69, '迁西县', '130227', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (81, 69, '玉田县', '130229', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (82, 69, '唐海县', '130230', 'T', 0);
INSERT INTO `tp_china_city` VALUES (83, 69, '遵化市', '130281', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (84, 69, '迁安市', '130283', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (85, 43, '秦皇岛市', '130300', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (87, 85, '海港区', '130302', 'H', 0);
INSERT INTO `tp_china_city` VALUES (88, 85, '山海关区', '130303', 'S', 0);
INSERT INTO `tp_china_city` VALUES (89, 85, '北戴河区', '130304', 'D', 0);
INSERT INTO `tp_china_city` VALUES (90, 85, '青龙满族自治县', '130321', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (91, 85, '昌黎县', '130322', 'C', 0);
INSERT INTO `tp_china_city` VALUES (92, 85, '抚宁县', '130323', 'F', 0);
INSERT INTO `tp_china_city` VALUES (93, 85, '卢龙县', '130324', 'L', 0);
INSERT INTO `tp_china_city` VALUES (94, 43, '邯郸市', '130400', 'G', 0);
INSERT INTO `tp_china_city` VALUES (96, 94, '邯山区', '130402', 'G', 0);
INSERT INTO `tp_china_city` VALUES (97, 94, '丛台区', '130403', 'C', 0);
INSERT INTO `tp_china_city` VALUES (98, 94, '复兴区', '130404', 'F', 0);
INSERT INTO `tp_china_city` VALUES (99, 94, '峰峰矿区', '130406', 'F', 0);
INSERT INTO `tp_china_city` VALUES (100, 94, '邯郸县', '130421', 'G', 0);
INSERT INTO `tp_china_city` VALUES (101, 94, '临漳县', '130423', 'L', 0);
INSERT INTO `tp_china_city` VALUES (102, 94, '成安县', '130424', 'C', 0);
INSERT INTO `tp_china_city` VALUES (103, 94, '大名县', '130425', 'D', 0);
INSERT INTO `tp_china_city` VALUES (104, 94, '涉县', '130426', 'S', 0);
INSERT INTO `tp_china_city` VALUES (105, 94, '磁县', '130427', 'C', 0);
INSERT INTO `tp_china_city` VALUES (106, 94, '肥乡县', '130428', 'F', 0);
INSERT INTO `tp_china_city` VALUES (107, 94, '永年县', '130429', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (108, 94, '邱县', '130430', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (109, 94, '鸡泽县', '130431', 'J', 0);
INSERT INTO `tp_china_city` VALUES (110, 94, '广平县', '130432', 'G', 0);
INSERT INTO `tp_china_city` VALUES (111, 94, '馆陶县', '130433', 'G', 0);
INSERT INTO `tp_china_city` VALUES (112, 94, '魏县', '130434', 'W', 0);
INSERT INTO `tp_china_city` VALUES (113, 94, '曲周县', '130435', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (114, 94, '武安市', '130481', 'W', 0);
INSERT INTO `tp_china_city` VALUES (115, 43, '邢台市', '130500', 'X', 0);
INSERT INTO `tp_china_city` VALUES (117, 115, '桥东区', '130502', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (118, 115, '桥西区', '130503', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (119, 115, '邢台县', '130521', 'X', 0);
INSERT INTO `tp_china_city` VALUES (120, 115, '临城县', '130522', 'L', 0);
INSERT INTO `tp_china_city` VALUES (121, 115, '内丘县', '130523', 'N', 0);
INSERT INTO `tp_china_city` VALUES (122, 115, '柏乡县', '130524', 'B', 0);
INSERT INTO `tp_china_city` VALUES (123, 115, '隆尧县', '130525', 'L', 0);
INSERT INTO `tp_china_city` VALUES (124, 115, '任县', '130526', 'R', 0);
INSERT INTO `tp_china_city` VALUES (125, 115, '南和县', '130527', 'N', 0);
INSERT INTO `tp_china_city` VALUES (126, 115, '宁晋县', '130528', 'N', 0);
INSERT INTO `tp_china_city` VALUES (127, 115, '巨鹿县', '130529', 'J', 0);
INSERT INTO `tp_china_city` VALUES (128, 115, '新河县', '130530', 'X', 0);
INSERT INTO `tp_china_city` VALUES (129, 115, '广宗县', '130531', 'G', 0);
INSERT INTO `tp_china_city` VALUES (130, 115, '平乡县', '130532', 'P', 0);
INSERT INTO `tp_china_city` VALUES (131, 115, '威县', '130533', 'W', 0);
INSERT INTO `tp_china_city` VALUES (132, 115, '清河县', '130534', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (133, 115, '临西县', '130535', 'L', 0);
INSERT INTO `tp_china_city` VALUES (134, 115, '南宫市', '130581', 'N', 0);
INSERT INTO `tp_china_city` VALUES (135, 115, '沙河市', '130582', 'S', 0);
INSERT INTO `tp_china_city` VALUES (136, 43, '保定市', '130600', 'B', 0);
INSERT INTO `tp_china_city` VALUES (138, 136, '新市区', '130602', 'X', 0);
INSERT INTO `tp_china_city` VALUES (139, 136, '北市区', '130603', 'B', 0);
INSERT INTO `tp_china_city` VALUES (140, 136, '南市区', '130604', 'N', 0);
INSERT INTO `tp_china_city` VALUES (141, 136, '满城县', '130621', 'M', 0);
INSERT INTO `tp_china_city` VALUES (142, 136, '清苑县', '130622', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (143, 136, '涞水县', '130623', 'L', 0);
INSERT INTO `tp_china_city` VALUES (144, 136, '阜平县', '130624', 'F', 0);
INSERT INTO `tp_china_city` VALUES (145, 136, '徐水县', '130625', 'X', 0);
INSERT INTO `tp_china_city` VALUES (146, 136, '定兴县', '130626', 'D', 0);
INSERT INTO `tp_china_city` VALUES (147, 136, '唐县', '130627', 'T', 0);
INSERT INTO `tp_china_city` VALUES (148, 136, '高阳县', '130628', 'G', 0);
INSERT INTO `tp_china_city` VALUES (149, 136, '容城县', '130629', 'R', 0);
INSERT INTO `tp_china_city` VALUES (150, 136, '涞源县', '130630', 'L', 0);
INSERT INTO `tp_china_city` VALUES (151, 136, '望都县', '130631', 'W', 0);
INSERT INTO `tp_china_city` VALUES (152, 136, '安新县', '130632', 'A', 0);
INSERT INTO `tp_china_city` VALUES (153, 136, '易县', '130633', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (154, 136, '曲阳县', '130634', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (155, 136, '蠡县', '130635', 'L', 0);
INSERT INTO `tp_china_city` VALUES (156, 136, '顺平县', '130636', 'S', 0);
INSERT INTO `tp_china_city` VALUES (157, 136, '博野县', '130637', 'B', 0);
INSERT INTO `tp_china_city` VALUES (158, 136, '雄县', '130638', 'X', 0);
INSERT INTO `tp_china_city` VALUES (159, 136, '涿州市', '130681', 'C', 0);
INSERT INTO `tp_china_city` VALUES (160, 136, '定州市', '130682', 'D', 0);
INSERT INTO `tp_china_city` VALUES (161, 136, '安国市', '130683', 'A', 0);
INSERT INTO `tp_china_city` VALUES (162, 136, '高碑店市', '130684', 'G', 0);
INSERT INTO `tp_china_city` VALUES (163, 43, '张家口市', '130700', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (165, 163, '桥东区', '130702', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (166, 163, '桥西区', '130703', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (167, 163, '宣化区', '130705', 'X', 0);
INSERT INTO `tp_china_city` VALUES (168, 163, '下花园区', '130706', 'X', 0);
INSERT INTO `tp_china_city` VALUES (169, 163, '宣化县', '130721', 'X', 0);
INSERT INTO `tp_china_city` VALUES (170, 163, '张北县', '130722', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (171, 163, '康保县', '130723', 'K', 0);
INSERT INTO `tp_china_city` VALUES (172, 163, '沽源县', '130724', 'G', 0);
INSERT INTO `tp_china_city` VALUES (173, 163, '尚义县', '130725', 'S', 0);
INSERT INTO `tp_china_city` VALUES (174, 163, '蔚县', '130726', 'W', 0);
INSERT INTO `tp_china_city` VALUES (175, 163, '阳原县', '130727', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (176, 163, '怀安县', '130728', 'H', 0);
INSERT INTO `tp_china_city` VALUES (177, 163, '万全县', '130729', 'W', 0);
INSERT INTO `tp_china_city` VALUES (178, 163, '怀来县', '130730', 'H', 0);
INSERT INTO `tp_china_city` VALUES (179, 163, '涿鹿县', '130731', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (180, 163, '赤城县', '130732', 'C', 0);
INSERT INTO `tp_china_city` VALUES (181, 163, '崇礼县', '130733', 'C', 0);
INSERT INTO `tp_china_city` VALUES (182, 43, '承德市', '130800', 'C', 0);
INSERT INTO `tp_china_city` VALUES (184, 182, '双桥区', '130802', 'S', 0);
INSERT INTO `tp_china_city` VALUES (185, 182, '双滦区', '130803', 'S', 0);
INSERT INTO `tp_china_city` VALUES (186, 182, '鹰手营子矿区', '130804', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (187, 182, '承德县', '130821', 'C', 0);
INSERT INTO `tp_china_city` VALUES (188, 182, '兴隆县', '130822', 'X', 0);
INSERT INTO `tp_china_city` VALUES (189, 182, '平泉县', '130823', 'P', 0);
INSERT INTO `tp_china_city` VALUES (190, 182, '滦平县', '130824', 'L', 0);
INSERT INTO `tp_china_city` VALUES (191, 182, '隆化县', '130825', 'L', 0);
INSERT INTO `tp_china_city` VALUES (192, 182, '丰宁满族自治县', '130826', 'F', 0);
INSERT INTO `tp_china_city` VALUES (193, 182, '宽城满族自治县', '130827', 'K', 0);
INSERT INTO `tp_china_city` VALUES (194, 182, '围场满族蒙古族自治县', '130828', 'W', 0);
INSERT INTO `tp_china_city` VALUES (195, 43, '沧州市', '130900', 'C', 0);
INSERT INTO `tp_china_city` VALUES (197, 195, '新华区', '130902', 'X', 0);
INSERT INTO `tp_china_city` VALUES (198, 195, '运河区', '130903', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (199, 195, '沧县', '130921', 'C', 0);
INSERT INTO `tp_china_city` VALUES (200, 195, '青县', '130922', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (201, 195, '东光县', '130923', 'D', 0);
INSERT INTO `tp_china_city` VALUES (202, 195, '海兴县', '130924', 'H', 0);
INSERT INTO `tp_china_city` VALUES (203, 195, '盐山县', '130925', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (204, 195, '肃宁县', '130926', 'S', 0);
INSERT INTO `tp_china_city` VALUES (205, 195, '南皮县', '130927', 'N', 0);
INSERT INTO `tp_china_city` VALUES (206, 195, '吴桥县', '130928', 'W', 0);
INSERT INTO `tp_china_city` VALUES (207, 195, '献县', '130929', 'X', 0);
INSERT INTO `tp_china_city` VALUES (208, 195, '孟村回族自治县', '130930', 'M', 0);
INSERT INTO `tp_china_city` VALUES (209, 195, '泊头市', '130981', 'B', 0);
INSERT INTO `tp_china_city` VALUES (210, 195, '任丘市', '130982', 'R', 0);
INSERT INTO `tp_china_city` VALUES (211, 195, '黄骅市', '130983', 'H', 0);
INSERT INTO `tp_china_city` VALUES (212, 195, '河间市', '130984', 'H', 0);
INSERT INTO `tp_china_city` VALUES (213, 43, '廊坊市', '131000', 'L', 0);
INSERT INTO `tp_china_city` VALUES (215, 213, '安次区', '131002', 'A', 0);
INSERT INTO `tp_china_city` VALUES (216, 213, '广阳区', '131003', 'G', 0);
INSERT INTO `tp_china_city` VALUES (217, 213, '固安县', '131022', 'G', 0);
INSERT INTO `tp_china_city` VALUES (218, 213, '永清县', '131023', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (219, 213, '香河县', '131024', 'X', 0);
INSERT INTO `tp_china_city` VALUES (220, 213, '大城县', '131025', 'D', 0);
INSERT INTO `tp_china_city` VALUES (221, 213, '文安县', '131026', 'W', 0);
INSERT INTO `tp_china_city` VALUES (222, 213, '大厂回族自治县', '131028', 'D', 0);
INSERT INTO `tp_china_city` VALUES (223, 213, '霸州市', '131081', 'B', 0);
INSERT INTO `tp_china_city` VALUES (224, 213, '三河市', '131082', 'S', 0);
INSERT INTO `tp_china_city` VALUES (225, 43, '衡水市', '131100', 'H', 0);
INSERT INTO `tp_china_city` VALUES (227, 225, '桃城区', '131102', 'T', 0);
INSERT INTO `tp_china_city` VALUES (228, 225, '枣强县', '131121', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (229, 225, '武邑县', '131122', 'W', 0);
INSERT INTO `tp_china_city` VALUES (230, 225, '武强县', '131123', 'W', 0);
INSERT INTO `tp_china_city` VALUES (231, 225, '饶阳县', '131124', 'R', 0);
INSERT INTO `tp_china_city` VALUES (232, 225, '安平县', '131125', 'A', 0);
INSERT INTO `tp_china_city` VALUES (233, 225, '故城县', '131126', 'G', 0);
INSERT INTO `tp_china_city` VALUES (234, 225, '景县', '131127', 'J', 0);
INSERT INTO `tp_china_city` VALUES (235, 225, '阜城县', '131128', 'F', 0);
INSERT INTO `tp_china_city` VALUES (236, 225, '冀州市', '131181', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (237, 225, '深州市', '131182', 'S', 0);
INSERT INTO `tp_china_city` VALUES (238, 0, '山西省', '140000', 'S', 0);
INSERT INTO `tp_china_city` VALUES (239, 238, '太原市', '140100', 'T', 0);
INSERT INTO `tp_china_city` VALUES (241, 239, '小店区', '140105', 'X', 0);
INSERT INTO `tp_china_city` VALUES (242, 239, '迎泽区', '140106', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (243, 239, '杏花岭区', '140107', 'X', 0);
INSERT INTO `tp_china_city` VALUES (244, 239, '尖草坪区', '140108', 'J', 0);
INSERT INTO `tp_china_city` VALUES (245, 239, '万柏林区', '140109', 'W', 0);
INSERT INTO `tp_china_city` VALUES (246, 239, '晋源区', '140110', 'J', 0);
INSERT INTO `tp_china_city` VALUES (247, 239, '清徐县', '140121', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (248, 239, '阳曲县', '140122', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (249, 239, '娄烦县', '140123', 'L', 0);
INSERT INTO `tp_china_city` VALUES (250, 239, '古交市', '140181', 'G', 0);
INSERT INTO `tp_china_city` VALUES (251, 238, '大同市', '140200', 'D', 0);
INSERT INTO `tp_china_city` VALUES (253, 251, '城区', '140202', 'C', 0);
INSERT INTO `tp_china_city` VALUES (254, 251, '矿区', '140203', 'K', 0);
INSERT INTO `tp_china_city` VALUES (255, 251, '南郊区', '140211', 'N', 0);
INSERT INTO `tp_china_city` VALUES (256, 251, '新荣区', '140212', 'X', 0);
INSERT INTO `tp_china_city` VALUES (257, 251, '阳高县', '140221', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (258, 251, '天镇县', '140222', 'T', 0);
INSERT INTO `tp_china_city` VALUES (259, 251, '广灵县', '140223', 'G', 0);
INSERT INTO `tp_china_city` VALUES (260, 251, '灵丘县', '140224', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (261, 251, '浑源县', '140225', 'H', 0);
INSERT INTO `tp_china_city` VALUES (262, 251, '左云县', '140226', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (263, 251, '大同县', '140227', 'D', 0);
INSERT INTO `tp_china_city` VALUES (264, 238, '阳泉市', '140300', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (266, 264, '城区', '140302', 'C', 0);
INSERT INTO `tp_china_city` VALUES (267, 264, '矿区', '140303', 'K', 0);
INSERT INTO `tp_china_city` VALUES (268, 264, '郊区', '140311', 'J', 0);
INSERT INTO `tp_china_city` VALUES (269, 264, '平定县', '140321', 'P', 0);
INSERT INTO `tp_china_city` VALUES (270, 264, '盂县', '140322', 'M', 0);
INSERT INTO `tp_china_city` VALUES (271, 238, '长治市', '140400', 'C', 0);
INSERT INTO `tp_china_city` VALUES (273, 271, '城区', '140402', 'C', 0);
INSERT INTO `tp_china_city` VALUES (274, 271, '郊区', '140411', 'J', 0);
INSERT INTO `tp_china_city` VALUES (275, 271, '长治县', '140421', 'C', 0);
INSERT INTO `tp_china_city` VALUES (276, 271, '襄垣县', '140423', 'X', 0);
INSERT INTO `tp_china_city` VALUES (277, 271, '屯留县', '140424', 'C', 0);
INSERT INTO `tp_china_city` VALUES (278, 271, '平顺县', '140425', 'P', 0);
INSERT INTO `tp_china_city` VALUES (279, 271, '黎城县', '140426', 'L', 0);
INSERT INTO `tp_china_city` VALUES (280, 271, '壶关县', '140427', 'H', 0);
INSERT INTO `tp_china_city` VALUES (281, 271, '长子县', '140428', 'C', 0);
INSERT INTO `tp_china_city` VALUES (282, 271, '武乡县', '140429', 'W', 0);
INSERT INTO `tp_china_city` VALUES (283, 271, '沁县', '140430', 'X', 0);
INSERT INTO `tp_china_city` VALUES (284, 271, '沁源县', '140431', 'X', 0);
INSERT INTO `tp_china_city` VALUES (285, 271, '潞城市', '140481', 'L', 0);
INSERT INTO `tp_china_city` VALUES (286, 238, '晋城市', '140500', 'J', 0);
INSERT INTO `tp_china_city` VALUES (288, 286, '城区', '140502', 'C', 0);
INSERT INTO `tp_china_city` VALUES (289, 286, '沁水县', '140521', 'X', 0);
INSERT INTO `tp_china_city` VALUES (290, 286, '阳城县', '140522', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (291, 286, '陵川县', '140524', 'L', 0);
INSERT INTO `tp_china_city` VALUES (292, 286, '泽州县', '140525', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (293, 286, '高平市', '140581', 'G', 0);
INSERT INTO `tp_china_city` VALUES (294, 238, '朔州市', '140600', 'S', 0);
INSERT INTO `tp_china_city` VALUES (296, 294, '朔城区', '140602', 'S', 0);
INSERT INTO `tp_china_city` VALUES (297, 294, '平鲁区', '140603', 'P', 0);
INSERT INTO `tp_china_city` VALUES (298, 294, '山阴县', '140621', 'S', 0);
INSERT INTO `tp_china_city` VALUES (299, 294, '应县', '140622', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (300, 294, '右玉县', '140623', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (301, 294, '怀仁县', '140624', 'H', 0);
INSERT INTO `tp_china_city` VALUES (302, 238, '晋中市', '140700', 'J', 0);
INSERT INTO `tp_china_city` VALUES (304, 302, '榆次区', '140702', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (305, 302, '榆社县', '140721', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (306, 302, '左权县', '140722', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (307, 302, '和顺县', '140723', 'H', 0);
INSERT INTO `tp_china_city` VALUES (308, 302, '昔阳县', '140724', 'X', 0);
INSERT INTO `tp_china_city` VALUES (309, 302, '寿阳县', '140725', 'S', 0);
INSERT INTO `tp_china_city` VALUES (310, 302, '太谷县', '140726', 'T', 0);
INSERT INTO `tp_china_city` VALUES (311, 302, '祁县', '140727', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (312, 302, '平遥县', '140728', 'P', 0);
INSERT INTO `tp_china_city` VALUES (313, 302, '灵石县', '140729', 'L', 0);
INSERT INTO `tp_china_city` VALUES (314, 302, '介休市', '140781', 'J', 0);
INSERT INTO `tp_china_city` VALUES (315, 238, '运城市', '140800', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (317, 315, '盐湖区', '140802', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (318, 315, '临猗县', '140821', 'L', 0);
INSERT INTO `tp_china_city` VALUES (319, 315, '万荣县', '140822', 'W', 0);
INSERT INTO `tp_china_city` VALUES (320, 315, '闻喜县', '140823', 'W', 0);
INSERT INTO `tp_china_city` VALUES (321, 315, '稷山县', '140824', 'S', 0);
INSERT INTO `tp_china_city` VALUES (322, 315, '新绛县', '140825', 'X', 0);
INSERT INTO `tp_china_city` VALUES (323, 315, '绛县', '140826', 'X', 0);
INSERT INTO `tp_china_city` VALUES (324, 315, '垣曲县', '140827', 'H', 0);
INSERT INTO `tp_china_city` VALUES (325, 315, '夏县', '140828', 'X', 0);
INSERT INTO `tp_china_city` VALUES (326, 315, '平陆县', '140829', 'P', 0);
INSERT INTO `tp_china_city` VALUES (327, 315, '芮城县', '140830', 'R', 0);
INSERT INTO `tp_china_city` VALUES (328, 315, '永济市', '140881', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (329, 315, '河津市', '140882', 'H', 0);
INSERT INTO `tp_china_city` VALUES (330, 238, '忻州市', '140900', 'X', 0);
INSERT INTO `tp_china_city` VALUES (332, 330, '忻府区', '140902', 'X', 0);
INSERT INTO `tp_china_city` VALUES (333, 330, '定襄县', '140921', 'D', 0);
INSERT INTO `tp_china_city` VALUES (334, 330, '五台县', '140922', 'W', 0);
INSERT INTO `tp_china_city` VALUES (335, 330, '代县', '140923', 'D', 0);
INSERT INTO `tp_china_city` VALUES (336, 330, '繁峙县', '140924', 'F', 0);
INSERT INTO `tp_china_city` VALUES (337, 330, '宁武县', '140925', 'N', 0);
INSERT INTO `tp_china_city` VALUES (338, 330, '静乐县', '140926', 'J', 0);
INSERT INTO `tp_china_city` VALUES (339, 330, '神池县', '140927', 'S', 0);
INSERT INTO `tp_china_city` VALUES (340, 330, '五寨县', '140928', 'W', 0);
INSERT INTO `tp_china_city` VALUES (341, 330, '岢岚县', '140929', 'K', 0);
INSERT INTO `tp_china_city` VALUES (342, 330, '河曲县', '140930', 'H', 0);
INSERT INTO `tp_china_city` VALUES (343, 330, '保德县', '140931', 'B', 0);
INSERT INTO `tp_china_city` VALUES (344, 330, '偏关县', '140932', 'P', 0);
INSERT INTO `tp_china_city` VALUES (345, 330, '原平市', '140981', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (346, 238, '临汾市', '141000', 'L', 0);
INSERT INTO `tp_china_city` VALUES (348, 346, '尧都区', '141002', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (349, 346, '曲沃县', '141021', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (350, 346, '翼城县', '141022', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (351, 346, '襄汾县', '141023', 'X', 0);
INSERT INTO `tp_china_city` VALUES (352, 346, '洪洞县', '141024', 'H', 0);
INSERT INTO `tp_china_city` VALUES (353, 346, '古县', '141025', 'G', 0);
INSERT INTO `tp_china_city` VALUES (354, 346, '安泽县', '141026', 'A', 0);
INSERT INTO `tp_china_city` VALUES (355, 346, '浮山县', '141027', 'F', 0);
INSERT INTO `tp_china_city` VALUES (356, 346, '吉县', '141028', 'J', 0);
INSERT INTO `tp_china_city` VALUES (357, 346, '乡宁县', '141029', 'X', 0);
INSERT INTO `tp_china_city` VALUES (358, 346, '大宁县', '141030', 'D', 0);
INSERT INTO `tp_china_city` VALUES (359, 346, '隰县', '141031', 'X', 0);
INSERT INTO `tp_china_city` VALUES (360, 346, '永和县', '141032', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (361, 346, '蒲县', '141033', 'P', 0);
INSERT INTO `tp_china_city` VALUES (362, 346, '汾西县', '141034', 'F', 0);
INSERT INTO `tp_china_city` VALUES (363, 346, '侯马市', '141081', 'H', 0);
INSERT INTO `tp_china_city` VALUES (364, 346, '霍州市', '141082', 'H', 0);
INSERT INTO `tp_china_city` VALUES (365, 238, '吕梁市', '141100', 'L', 0);
INSERT INTO `tp_china_city` VALUES (367, 365, '离石区', '141102', 'L', 0);
INSERT INTO `tp_china_city` VALUES (368, 365, '文水县', '141121', 'W', 0);
INSERT INTO `tp_china_city` VALUES (369, 365, '交城县', '141122', 'J', 0);
INSERT INTO `tp_china_city` VALUES (370, 365, '兴县', '141123', 'X', 0);
INSERT INTO `tp_china_city` VALUES (371, 365, '临县', '141124', 'L', 0);
INSERT INTO `tp_china_city` VALUES (372, 365, '柳林县', '141125', 'L', 0);
INSERT INTO `tp_china_city` VALUES (373, 365, '石楼县', '141126', 'S', 0);
INSERT INTO `tp_china_city` VALUES (374, 365, '岚县', '141127', 'L', 0);
INSERT INTO `tp_china_city` VALUES (375, 365, '方山县', '141128', 'F', 0);
INSERT INTO `tp_china_city` VALUES (376, 365, '中阳县', '141129', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (377, 365, '交口县', '141130', 'J', 0);
INSERT INTO `tp_china_city` VALUES (378, 365, '孝义市', '141181', 'X', 0);
INSERT INTO `tp_china_city` VALUES (379, 365, '汾阳市', '141182', 'F', 0);
INSERT INTO `tp_china_city` VALUES (380, 0, '内蒙古自治区', '150000', 'N', 0);
INSERT INTO `tp_china_city` VALUES (381, 380, '呼和浩特市', '150100', 'H', 0);
INSERT INTO `tp_china_city` VALUES (383, 381, '新城区', '150102', 'X', 0);
INSERT INTO `tp_china_city` VALUES (384, 381, '回民区', '150103', 'H', 0);
INSERT INTO `tp_china_city` VALUES (385, 381, '玉泉区', '150104', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (386, 381, '赛罕区', '150105', 'S', 0);
INSERT INTO `tp_china_city` VALUES (387, 381, '土默特左旗', '150121', 'T', 0);
INSERT INTO `tp_china_city` VALUES (388, 381, '托克托县', '150122', 'T', 0);
INSERT INTO `tp_china_city` VALUES (389, 381, '和林格尔县', '150123', 'H', 0);
INSERT INTO `tp_china_city` VALUES (390, 381, '清水河县', '150124', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (391, 381, '武川县', '150125', 'W', 0);
INSERT INTO `tp_china_city` VALUES (392, 380, '包头市', '150200', 'B', 0);
INSERT INTO `tp_china_city` VALUES (394, 392, '东河区', '150202', 'D', 0);
INSERT INTO `tp_china_city` VALUES (395, 392, '昆都仑区', '150203', 'K', 0);
INSERT INTO `tp_china_city` VALUES (396, 392, '青山区', '150204', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (397, 392, '石拐区', '150205', 'S', 0);
INSERT INTO `tp_china_city` VALUES (398, 392, '白云鄂博矿区', '150206', 'B', 0);
INSERT INTO `tp_china_city` VALUES (399, 392, '九原区', '150207', 'J', 0);
INSERT INTO `tp_china_city` VALUES (400, 392, '土默特右旗', '150221', 'T', 0);
INSERT INTO `tp_china_city` VALUES (401, 392, '固阳县', '150222', 'G', 0);
INSERT INTO `tp_china_city` VALUES (402, 392, '达尔罕茂明安联合旗', '150223', 'D', 0);
INSERT INTO `tp_china_city` VALUES (403, 380, '乌海市', '150300', 'W', 0);
INSERT INTO `tp_china_city` VALUES (405, 403, '海勃湾区', '150302', 'H', 0);
INSERT INTO `tp_china_city` VALUES (406, 403, '海南区', '150303', 'H', 0);
INSERT INTO `tp_china_city` VALUES (407, 403, '乌达区', '150304', 'W', 0);
INSERT INTO `tp_china_city` VALUES (408, 380, '赤峰市', '150400', 'C', 0);
INSERT INTO `tp_china_city` VALUES (410, 408, '红山区', '150402', 'H', 0);
INSERT INTO `tp_china_city` VALUES (411, 408, '元宝山区', '150403', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (412, 408, '松山区', '150404', 'S', 0);
INSERT INTO `tp_china_city` VALUES (413, 408, '阿鲁科尔沁旗', '150421', 'A', 0);
INSERT INTO `tp_china_city` VALUES (414, 408, '巴林左旗', '150422', 'B', 0);
INSERT INTO `tp_china_city` VALUES (415, 408, '巴林右旗', '150423', 'B', 0);
INSERT INTO `tp_china_city` VALUES (416, 408, '林西县', '150424', 'L', 0);
INSERT INTO `tp_china_city` VALUES (417, 408, '克什克腾旗', '150425', 'K', 0);
INSERT INTO `tp_china_city` VALUES (418, 408, '翁牛特旗', '150426', 'W', 0);
INSERT INTO `tp_china_city` VALUES (419, 408, '喀喇沁旗', '150428', 'K', 0);
INSERT INTO `tp_china_city` VALUES (420, 408, '宁城县', '150429', 'N', 0);
INSERT INTO `tp_china_city` VALUES (421, 408, '敖汉旗', '150430', 'A', 0);
INSERT INTO `tp_china_city` VALUES (422, 380, '通辽市', '150500', 'T', 0);
INSERT INTO `tp_china_city` VALUES (424, 422, '科尔沁区', '150502', 'K', 0);
INSERT INTO `tp_china_city` VALUES (425, 422, '科尔沁左翼中旗', '150521', 'K', 0);
INSERT INTO `tp_china_city` VALUES (426, 422, '科尔沁左翼后旗', '150522', 'K', 0);
INSERT INTO `tp_china_city` VALUES (427, 422, '开鲁县', '150523', 'K', 0);
INSERT INTO `tp_china_city` VALUES (428, 422, '库伦旗', '150524', 'K', 0);
INSERT INTO `tp_china_city` VALUES (429, 422, '奈曼旗', '150525', 'N', 0);
INSERT INTO `tp_china_city` VALUES (430, 422, '扎鲁特旗', '150526', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (431, 422, '霍林郭勒市', '150581', 'H', 0);
INSERT INTO `tp_china_city` VALUES (432, 380, '鄂尔多斯市', '150600', 'E', 0);
INSERT INTO `tp_china_city` VALUES (434, 432, '东胜区', '150602', 'D', 0);
INSERT INTO `tp_china_city` VALUES (435, 432, '达拉特旗', '150621', 'D', 0);
INSERT INTO `tp_china_city` VALUES (436, 432, '准格尔旗', '150622', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (437, 432, '鄂托克前旗', '150623', 'E', 0);
INSERT INTO `tp_china_city` VALUES (438, 432, '鄂托克旗', '150624', 'E', 0);
INSERT INTO `tp_china_city` VALUES (439, 432, '杭锦旗', '150625', 'H', 0);
INSERT INTO `tp_china_city` VALUES (440, 432, '乌审旗', '150626', 'W', 0);
INSERT INTO `tp_china_city` VALUES (441, 432, '伊金霍洛旗', '150627', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (442, 380, '呼伦贝尔市', '150700', 'H', 0);
INSERT INTO `tp_china_city` VALUES (444, 442, '海拉尔区', '150702', 'H', 0);
INSERT INTO `tp_china_city` VALUES (445, 442, '阿荣旗', '150721', 'A', 0);
INSERT INTO `tp_china_city` VALUES (446, 442, '莫力达瓦达斡尔族自治旗', '150722', 'M', 0);
INSERT INTO `tp_china_city` VALUES (447, 442, '鄂伦春自治旗', '150723', 'E', 0);
INSERT INTO `tp_china_city` VALUES (448, 442, '鄂温克族自治旗', '150724', 'E', 0);
INSERT INTO `tp_china_city` VALUES (449, 442, '陈巴尔虎旗', '150725', 'C', 0);
INSERT INTO `tp_china_city` VALUES (450, 442, '新巴尔虎左旗', '150726', 'X', 0);
INSERT INTO `tp_china_city` VALUES (451, 442, '新巴尔虎右旗', '150727', 'X', 0);
INSERT INTO `tp_china_city` VALUES (452, 442, '满洲里市', '150781', 'M', 0);
INSERT INTO `tp_china_city` VALUES (453, 442, '牙克石市', '150782', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (454, 442, '扎兰屯市', '150783', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (455, 442, '额尔古纳市', '150784', 'E', 0);
INSERT INTO `tp_china_city` VALUES (456, 442, '根河市', '150785', 'G', 0);
INSERT INTO `tp_china_city` VALUES (457, 380, '巴彦淖尔市', '150800', 'B', 0);
INSERT INTO `tp_china_city` VALUES (459, 457, '临河区', '150802', 'L', 0);
INSERT INTO `tp_china_city` VALUES (460, 457, '五原县', '150821', 'W', 0);
INSERT INTO `tp_china_city` VALUES (461, 457, '磴口县', '150822', 'D', 0);
INSERT INTO `tp_china_city` VALUES (462, 457, '乌拉特前旗', '150823', 'W', 0);
INSERT INTO `tp_china_city` VALUES (463, 457, '乌拉特中旗', '150824', 'W', 0);
INSERT INTO `tp_china_city` VALUES (464, 457, '乌拉特后旗', '150825', 'W', 0);
INSERT INTO `tp_china_city` VALUES (465, 457, '杭锦后旗', '150826', 'H', 0);
INSERT INTO `tp_china_city` VALUES (466, 380, '乌兰察布市', '150900', 'W', 0);
INSERT INTO `tp_china_city` VALUES (468, 466, '集宁区', '150902', 'J', 0);
INSERT INTO `tp_china_city` VALUES (469, 466, '卓资县', '150921', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (470, 466, '化德县', '150922', 'H', 0);
INSERT INTO `tp_china_city` VALUES (471, 466, '商都县', '150923', 'S', 0);
INSERT INTO `tp_china_city` VALUES (472, 466, '兴和县', '150924', 'X', 0);
INSERT INTO `tp_china_city` VALUES (473, 466, '凉城县', '150925', 'L', 0);
INSERT INTO `tp_china_city` VALUES (474, 466, '察哈尔右翼前旗', '150926', 'C', 0);
INSERT INTO `tp_china_city` VALUES (475, 466, '察哈尔右翼中旗', '150927', 'C', 0);
INSERT INTO `tp_china_city` VALUES (476, 466, '察哈尔右翼后旗', '150928', 'C', 0);
INSERT INTO `tp_china_city` VALUES (477, 466, '四子王旗', '150929', 'S', 0);
INSERT INTO `tp_china_city` VALUES (478, 466, '丰镇市', '150981', 'F', 0);
INSERT INTO `tp_china_city` VALUES (479, 380, '兴安盟', '152200', 'X', 0);
INSERT INTO `tp_china_city` VALUES (480, 479, '乌兰浩特市', '152201', 'W', 0);
INSERT INTO `tp_china_city` VALUES (481, 479, '阿尔山市', '152202', 'A', 0);
INSERT INTO `tp_china_city` VALUES (482, 479, '科尔沁右翼前旗', '152221', 'K', 0);
INSERT INTO `tp_china_city` VALUES (483, 479, '科尔沁右翼中旗', '152222', 'K', 0);
INSERT INTO `tp_china_city` VALUES (484, 479, '扎赉特旗', '152223', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (485, 479, '突泉县', '152224', 'T', 0);
INSERT INTO `tp_china_city` VALUES (486, 380, '锡林郭勒盟', '152500', 'X', 0);
INSERT INTO `tp_china_city` VALUES (487, 486, '二连浩特市', '152501', 'E', 0);
INSERT INTO `tp_china_city` VALUES (488, 486, '锡林浩特市', '152502', 'X', 0);
INSERT INTO `tp_china_city` VALUES (489, 486, '阿巴嘎旗', '152522', 'A', 0);
INSERT INTO `tp_china_city` VALUES (490, 486, '苏尼特左旗', '152523', 'S', 0);
INSERT INTO `tp_china_city` VALUES (491, 486, '苏尼特右旗', '152524', 'S', 0);
INSERT INTO `tp_china_city` VALUES (492, 486, '东乌珠穆沁旗', '152525', 'D', 0);
INSERT INTO `tp_china_city` VALUES (493, 486, '西乌珠穆沁旗', '152526', 'X', 0);
INSERT INTO `tp_china_city` VALUES (494, 486, '太仆寺旗', '152527', 'T', 0);
INSERT INTO `tp_china_city` VALUES (495, 486, '镶黄旗', '152528', 'X', 0);
INSERT INTO `tp_china_city` VALUES (496, 486, '正镶白旗', '152529', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (497, 486, '正蓝旗', '152530', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (498, 486, '多伦县', '152531', 'D', 0);
INSERT INTO `tp_china_city` VALUES (499, 380, '阿拉善盟', '152900', 'A', 0);
INSERT INTO `tp_china_city` VALUES (500, 499, '阿拉善左旗', '152921', 'A', 0);
INSERT INTO `tp_china_city` VALUES (501, 499, '阿拉善右旗', '152922', 'A', 0);
INSERT INTO `tp_china_city` VALUES (502, 499, '额济纳旗', '152923', 'E', 0);
INSERT INTO `tp_china_city` VALUES (503, 0, '辽宁省', '210000', 'L', 0);
INSERT INTO `tp_china_city` VALUES (504, 503, '沈阳市', '210100', 'S', 0);
INSERT INTO `tp_china_city` VALUES (506, 504, '和平区', '210102', 'H', 0);
INSERT INTO `tp_china_city` VALUES (507, 504, '沈河区', '210103', 'S', 0);
INSERT INTO `tp_china_city` VALUES (508, 504, '大东区', '210104', 'D', 0);
INSERT INTO `tp_china_city` VALUES (509, 504, '皇姑区', '210105', 'H', 0);
INSERT INTO `tp_china_city` VALUES (510, 504, '铁西区', '210106', 'T', 0);
INSERT INTO `tp_china_city` VALUES (511, 504, '苏家屯区', '210111', 'S', 0);
INSERT INTO `tp_china_city` VALUES (512, 504, '东陵区', '210112', 'D', 0);
INSERT INTO `tp_china_city` VALUES (513, 504, '沈北新区', '210113', 'S', 0);
INSERT INTO `tp_china_city` VALUES (514, 504, '于洪区', '210114', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (515, 504, '辽中县', '210122', 'L', 0);
INSERT INTO `tp_china_city` VALUES (516, 504, '康平县', '210123', 'K', 0);
INSERT INTO `tp_china_city` VALUES (517, 504, '法库县', '210124', 'F', 0);
INSERT INTO `tp_china_city` VALUES (518, 504, '新民市', '210181', 'X', 0);
INSERT INTO `tp_china_city` VALUES (519, 503, '大连市', '210200', 'D', 0);
INSERT INTO `tp_china_city` VALUES (521, 519, '中山区', '210202', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (522, 519, '西岗区', '210203', 'X', 0);
INSERT INTO `tp_china_city` VALUES (523, 519, '沙河口区', '210204', 'S', 0);
INSERT INTO `tp_china_city` VALUES (524, 519, '甘井子区', '210211', 'G', 0);
INSERT INTO `tp_china_city` VALUES (525, 519, '旅顺口区', '210212', 'L', 0);
INSERT INTO `tp_china_city` VALUES (526, 519, '金州区', '210213', 'J', 0);
INSERT INTO `tp_china_city` VALUES (527, 519, '长海县', '210224', 'C', 0);
INSERT INTO `tp_china_city` VALUES (528, 519, '瓦房店市', '210281', 'W', 0);
INSERT INTO `tp_china_city` VALUES (529, 519, '普兰店市', '210282', 'P', 0);
INSERT INTO `tp_china_city` VALUES (530, 519, '庄河市', '210283', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (531, 503, '鞍山市', '210300', 'A', 0);
INSERT INTO `tp_china_city` VALUES (533, 531, '铁东区', '210302', 'T', 0);
INSERT INTO `tp_china_city` VALUES (534, 531, '铁西区', '210303', 'T', 0);
INSERT INTO `tp_china_city` VALUES (535, 531, '立山区', '210304', 'L', 0);
INSERT INTO `tp_china_city` VALUES (536, 531, '千山区', '210311', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (537, 531, '台安县', '210321', 'T', 0);
INSERT INTO `tp_china_city` VALUES (538, 531, '岫岩满族自治县', '210323', 'X', 0);
INSERT INTO `tp_china_city` VALUES (539, 531, '海城市', '210381', 'H', 0);
INSERT INTO `tp_china_city` VALUES (540, 503, '抚顺市', '210400', 'F', 0);
INSERT INTO `tp_china_city` VALUES (542, 540, '新抚区', '210402', 'X', 0);
INSERT INTO `tp_china_city` VALUES (543, 540, '东洲区', '210403', 'D', 0);
INSERT INTO `tp_china_city` VALUES (544, 540, '望花区', '210404', 'W', 0);
INSERT INTO `tp_china_city` VALUES (545, 540, '顺城区', '210411', 'S', 0);
INSERT INTO `tp_china_city` VALUES (546, 540, '抚顺县', '210421', 'F', 0);
INSERT INTO `tp_china_city` VALUES (547, 540, '新宾满族自治县', '210422', 'X', 0);
INSERT INTO `tp_china_city` VALUES (548, 540, '清原满族自治县', '210423', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (549, 503, '本溪市', '210500', 'B', 0);
INSERT INTO `tp_china_city` VALUES (551, 549, '平山区', '210502', 'P', 0);
INSERT INTO `tp_china_city` VALUES (552, 549, '溪湖区', '210503', 'X', 0);
INSERT INTO `tp_china_city` VALUES (553, 549, '明山区', '210504', 'M', 0);
INSERT INTO `tp_china_city` VALUES (554, 549, '南芬区', '210505', 'N', 0);
INSERT INTO `tp_china_city` VALUES (555, 549, '本溪满族自治县', '210521', 'B', 0);
INSERT INTO `tp_china_city` VALUES (556, 549, '桓仁满族自治县', '210522', 'H', 0);
INSERT INTO `tp_china_city` VALUES (557, 503, '丹东市', '210600', 'D', 0);
INSERT INTO `tp_china_city` VALUES (559, 557, '元宝区', '210602', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (560, 557, '振兴区', '210603', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (561, 557, '振安区', '210604', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (562, 557, '宽甸满族自治县', '210624', 'K', 0);
INSERT INTO `tp_china_city` VALUES (563, 557, '东港市', '210681', 'D', 0);
INSERT INTO `tp_china_city` VALUES (564, 557, '凤城市', '210682', 'F', 0);
INSERT INTO `tp_china_city` VALUES (565, 503, '锦州市', '210700', 'J', 0);
INSERT INTO `tp_china_city` VALUES (567, 565, '古塔区', '210702', 'G', 0);
INSERT INTO `tp_china_city` VALUES (568, 565, '凌河区', '210703', 'L', 0);
INSERT INTO `tp_china_city` VALUES (569, 565, '太和区', '210711', 'T', 0);
INSERT INTO `tp_china_city` VALUES (570, 565, '黑山县', '210726', 'H', 0);
INSERT INTO `tp_china_city` VALUES (571, 565, '义县', '210727', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (572, 565, '凌海市', '210781', 'L', 0);
INSERT INTO `tp_china_city` VALUES (573, 565, '北镇市', '210782', 'B', 0);
INSERT INTO `tp_china_city` VALUES (574, 503, '营口市', '210800', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (576, 574, '站前区', '210802', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (577, 574, '西市区', '210803', 'X', 0);
INSERT INTO `tp_china_city` VALUES (578, 574, '鲅鱼圈区', '210804', 'B', 0);
INSERT INTO `tp_china_city` VALUES (579, 574, '老边区', '210811', 'L', 0);
INSERT INTO `tp_china_city` VALUES (580, 574, '盖州市', '210881', 'G', 0);
INSERT INTO `tp_china_city` VALUES (581, 574, '大石桥市', '210882', 'D', 0);
INSERT INTO `tp_china_city` VALUES (582, 503, '阜新市', '210900', 'F', 0);
INSERT INTO `tp_china_city` VALUES (584, 582, '海州区', '210902', 'H', 0);
INSERT INTO `tp_china_city` VALUES (585, 582, '新邱区', '210903', 'X', 0);
INSERT INTO `tp_china_city` VALUES (586, 582, '太平区', '210904', 'T', 0);
INSERT INTO `tp_china_city` VALUES (587, 582, '清河门区', '210905', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (588, 582, '细河区', '210911', 'X', 0);
INSERT INTO `tp_china_city` VALUES (589, 582, '阜新蒙古族自治县', '210921', 'F', 0);
INSERT INTO `tp_china_city` VALUES (590, 582, '彰武县', '210922', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (591, 503, '辽阳市', '211000', 'L', 0);
INSERT INTO `tp_china_city` VALUES (593, 591, '白塔区', '211002', 'B', 0);
INSERT INTO `tp_china_city` VALUES (594, 591, '文圣区', '211003', 'W', 0);
INSERT INTO `tp_china_city` VALUES (595, 591, '宏伟区', '211004', 'H', 0);
INSERT INTO `tp_china_city` VALUES (596, 591, '弓长岭区', '211005', 'G', 0);
INSERT INTO `tp_china_city` VALUES (597, 591, '太子河区', '211011', 'T', 0);
INSERT INTO `tp_china_city` VALUES (598, 591, '辽阳县', '211021', 'L', 0);
INSERT INTO `tp_china_city` VALUES (599, 591, '灯塔市', '211081', 'D', 0);
INSERT INTO `tp_china_city` VALUES (600, 503, '盘锦市', '211100', 'P', 0);
INSERT INTO `tp_china_city` VALUES (602, 600, '双台子区', '211102', 'S', 0);
INSERT INTO `tp_china_city` VALUES (603, 600, '兴隆台区', '211103', 'X', 0);
INSERT INTO `tp_china_city` VALUES (604, 600, '大洼县', '211121', 'D', 0);
INSERT INTO `tp_china_city` VALUES (605, 600, '盘山县', '211122', 'P', 0);
INSERT INTO `tp_china_city` VALUES (606, 503, '铁岭市', '211200', 'T', 0);
INSERT INTO `tp_china_city` VALUES (608, 606, '银州区', '211202', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (609, 606, '清河区', '211204', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (610, 606, '铁岭县', '211221', 'T', 0);
INSERT INTO `tp_china_city` VALUES (611, 606, '西丰县', '211223', 'X', 0);
INSERT INTO `tp_china_city` VALUES (612, 606, '昌图县', '211224', 'C', 0);
INSERT INTO `tp_china_city` VALUES (613, 606, '调兵山市', '211281', 'D', 0);
INSERT INTO `tp_china_city` VALUES (614, 606, '开原市', '211282', 'K', 0);
INSERT INTO `tp_china_city` VALUES (615, 503, '朝阳市', '211300', 'C', 0);
INSERT INTO `tp_china_city` VALUES (617, 615, '双塔区', '211302', 'S', 0);
INSERT INTO `tp_china_city` VALUES (618, 615, '龙城区', '211303', 'L', 0);
INSERT INTO `tp_china_city` VALUES (619, 615, '朝阳县', '211321', 'C', 0);
INSERT INTO `tp_china_city` VALUES (620, 615, '建平县', '211322', 'J', 0);
INSERT INTO `tp_china_city` VALUES (621, 615, '喀喇沁左翼蒙古族自治县', '211324', 'K', 0);
INSERT INTO `tp_china_city` VALUES (622, 615, '北票市', '211381', 'B', 0);
INSERT INTO `tp_china_city` VALUES (623, 615, '凌源市', '211382', 'L', 0);
INSERT INTO `tp_china_city` VALUES (624, 503, '葫芦岛市', '211400', 'H', 0);
INSERT INTO `tp_china_city` VALUES (626, 624, '连山区', '211402', 'L', 0);
INSERT INTO `tp_china_city` VALUES (627, 624, '龙港区', '211403', 'L', 0);
INSERT INTO `tp_china_city` VALUES (628, 624, '南票区', '211404', 'N', 0);
INSERT INTO `tp_china_city` VALUES (629, 624, '绥中县', '211421', 'S', 0);
INSERT INTO `tp_china_city` VALUES (630, 624, '建昌县', '211422', 'J', 0);
INSERT INTO `tp_china_city` VALUES (631, 624, '兴城市', '211481', 'X', 0);
INSERT INTO `tp_china_city` VALUES (632, 0, '吉林省', '220000', 'J', 0);
INSERT INTO `tp_china_city` VALUES (633, 632, '长春市', '220100', 'C', 0);
INSERT INTO `tp_china_city` VALUES (635, 633, '南关区', '220102', 'N', 0);
INSERT INTO `tp_china_city` VALUES (636, 633, '宽城区', '220103', 'K', 0);
INSERT INTO `tp_china_city` VALUES (637, 633, '朝阳区', '220104', 'C', 0);
INSERT INTO `tp_china_city` VALUES (638, 633, '二道区', '220105', 'E', 0);
INSERT INTO `tp_china_city` VALUES (639, 633, '绿园区', '220106', 'L', 0);
INSERT INTO `tp_china_city` VALUES (640, 633, '双阳区', '220112', 'S', 0);
INSERT INTO `tp_china_city` VALUES (641, 633, '农安县', '220122', 'N', 0);
INSERT INTO `tp_china_city` VALUES (642, 633, '九台市', '220181', 'J', 0);
INSERT INTO `tp_china_city` VALUES (643, 633, '榆树市', '220182', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (644, 633, '德惠市', '220183', 'D', 0);
INSERT INTO `tp_china_city` VALUES (645, 632, '吉林市', '220200', 'J', 0);
INSERT INTO `tp_china_city` VALUES (647, 645, '昌邑区', '220202', 'C', 0);
INSERT INTO `tp_china_city` VALUES (648, 645, '龙潭区', '220203', 'L', 0);
INSERT INTO `tp_china_city` VALUES (649, 645, '船营区', '220204', 'C', 0);
INSERT INTO `tp_china_city` VALUES (650, 645, '丰满区', '220211', 'F', 0);
INSERT INTO `tp_china_city` VALUES (651, 645, '永吉县', '220221', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (652, 645, '蛟河市', '220281', 'J', 0);
INSERT INTO `tp_china_city` VALUES (653, 645, '桦甸市', '220282', 'H', 0);
INSERT INTO `tp_china_city` VALUES (654, 645, '舒兰市', '220283', 'S', 0);
INSERT INTO `tp_china_city` VALUES (655, 645, '磐石市', '220284', 'P', 0);
INSERT INTO `tp_china_city` VALUES (656, 632, '四平市', '220300', 'S', 0);
INSERT INTO `tp_china_city` VALUES (658, 656, '铁西区', '220302', 'T', 0);
INSERT INTO `tp_china_city` VALUES (659, 656, '铁东区', '220303', 'T', 0);
INSERT INTO `tp_china_city` VALUES (660, 656, '梨树县', '220322', 'L', 0);
INSERT INTO `tp_china_city` VALUES (661, 656, '伊通满族自治县', '220323', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (662, 656, '公主岭市', '220381', 'G', 0);
INSERT INTO `tp_china_city` VALUES (663, 656, '双辽市', '220382', 'S', 0);
INSERT INTO `tp_china_city` VALUES (664, 632, '辽源市', '220400', 'L', 0);
INSERT INTO `tp_china_city` VALUES (666, 664, '龙山区', '220402', 'L', 0);
INSERT INTO `tp_china_city` VALUES (667, 664, '西安区', '220403', 'X', 0);
INSERT INTO `tp_china_city` VALUES (668, 664, '东丰县', '220421', 'D', 0);
INSERT INTO `tp_china_city` VALUES (669, 664, '东辽县', '220422', 'D', 0);
INSERT INTO `tp_china_city` VALUES (670, 632, '通化市', '220500', 'T', 0);
INSERT INTO `tp_china_city` VALUES (672, 670, '东昌区', '220502', 'D', 0);
INSERT INTO `tp_china_city` VALUES (673, 670, '二道江区', '220503', 'E', 0);
INSERT INTO `tp_china_city` VALUES (674, 670, '通化县', '220521', 'T', 0);
INSERT INTO `tp_china_city` VALUES (675, 670, '辉南县', '220523', 'H', 0);
INSERT INTO `tp_china_city` VALUES (676, 670, '柳河县', '220524', 'L', 0);
INSERT INTO `tp_china_city` VALUES (677, 670, '梅河口市', '220581', 'M', 0);
INSERT INTO `tp_china_city` VALUES (678, 670, '集安市', '220582', 'J', 0);
INSERT INTO `tp_china_city` VALUES (679, 632, '白山市', '220600', 'B', 0);
INSERT INTO `tp_china_city` VALUES (681, 679, '八道江区', '220602', 'B', 0);
INSERT INTO `tp_china_city` VALUES (682, 679, '江源区', '220605', 'J', 0);
INSERT INTO `tp_china_city` VALUES (683, 679, '抚松县', '220621', 'F', 0);
INSERT INTO `tp_china_city` VALUES (684, 679, '靖宇县', '220622', 'J', 0);
INSERT INTO `tp_china_city` VALUES (685, 679, '长白朝鲜族自治县', '220623', 'C', 0);
INSERT INTO `tp_china_city` VALUES (686, 679, '临江市', '220681', 'L', 0);
INSERT INTO `tp_china_city` VALUES (687, 632, '松原市', '220700', 'S', 0);
INSERT INTO `tp_china_city` VALUES (689, 687, '宁江区', '220702', 'N', 0);
INSERT INTO `tp_china_city` VALUES (690, 687, '前郭尔罗斯蒙古族自治县', '220721', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (691, 687, '长岭县', '220722', 'C', 0);
INSERT INTO `tp_china_city` VALUES (692, 687, '乾安县', '220723', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (693, 687, '扶余县', '220724', 'F', 0);
INSERT INTO `tp_china_city` VALUES (694, 632, '白城市', '220800', 'B', 0);
INSERT INTO `tp_china_city` VALUES (696, 694, '洮北区', '220802', 'T', 0);
INSERT INTO `tp_china_city` VALUES (697, 694, '镇赉县', '220821', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (698, 694, '通榆县', '220822', 'T', 0);
INSERT INTO `tp_china_city` VALUES (699, 694, '洮南市', '220881', 'T', 0);
INSERT INTO `tp_china_city` VALUES (700, 694, '大安市', '220882', 'D', 0);
INSERT INTO `tp_china_city` VALUES (701, 632, '延边朝鲜族自治州', '222400', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (702, 701, '延吉市', '222401', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (703, 701, '图们市', '222402', 'T', 0);
INSERT INTO `tp_china_city` VALUES (704, 701, '敦化市', '222403', 'D', 0);
INSERT INTO `tp_china_city` VALUES (705, 701, '珲春市', '222404', 'H', 0);
INSERT INTO `tp_china_city` VALUES (706, 701, '龙井市', '222405', 'L', 0);
INSERT INTO `tp_china_city` VALUES (707, 701, '和龙市', '222406', 'H', 0);
INSERT INTO `tp_china_city` VALUES (708, 701, '汪清县', '222424', 'W', 0);
INSERT INTO `tp_china_city` VALUES (709, 701, '安图县', '222426', 'A', 0);
INSERT INTO `tp_china_city` VALUES (710, 0, '黑龙江省', '230000', 'H', 0);
INSERT INTO `tp_china_city` VALUES (711, 710, '哈尔滨市', '230100', 'H', 0);
INSERT INTO `tp_china_city` VALUES (713, 711, '道里区', '230102', 'D', 0);
INSERT INTO `tp_china_city` VALUES (714, 711, '南岗区', '230103', 'N', 0);
INSERT INTO `tp_china_city` VALUES (715, 711, '道外区', '230104', 'D', 0);
INSERT INTO `tp_china_city` VALUES (716, 711, '平房区', '230108', 'P', 0);
INSERT INTO `tp_china_city` VALUES (717, 711, '松北区', '230109', 'S', 0);
INSERT INTO `tp_china_city` VALUES (718, 711, '香坊区', '230110', 'X', 0);
INSERT INTO `tp_china_city` VALUES (719, 711, '呼兰区', '230111', 'H', 0);
INSERT INTO `tp_china_city` VALUES (720, 711, '阿城区 ', '230112', 'A', 0);
INSERT INTO `tp_china_city` VALUES (721, 711, '依兰县', '230123', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (722, 711, '方正县', '230124', 'F', 0);
INSERT INTO `tp_china_city` VALUES (723, 711, '宾县', '230125', 'B', 0);
INSERT INTO `tp_china_city` VALUES (724, 711, '巴彦县', '230126', 'B', 0);
INSERT INTO `tp_china_city` VALUES (725, 711, '木兰县', '230127', 'M', 0);
INSERT INTO `tp_china_city` VALUES (726, 711, '通河县', '230128', 'T', 0);
INSERT INTO `tp_china_city` VALUES (727, 711, '延寿县', '230129', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (728, 711, '双城市', '230182', 'S', 0);
INSERT INTO `tp_china_city` VALUES (729, 711, '尚志市', '230183', 'S', 0);
INSERT INTO `tp_china_city` VALUES (730, 711, '五常市', '230184', 'W', 0);
INSERT INTO `tp_china_city` VALUES (731, 710, '齐齐哈尔市', '230200', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (733, 731, '龙沙区', '230202', 'L', 0);
INSERT INTO `tp_china_city` VALUES (734, 731, '建华区', '230203', 'J', 0);
INSERT INTO `tp_china_city` VALUES (735, 731, '铁锋区', '230204', 'T', 0);
INSERT INTO `tp_china_city` VALUES (736, 731, '昂昂溪区', '230205', 'A', 0);
INSERT INTO `tp_china_city` VALUES (737, 731, '富拉尔基区', '230206', 'F', 0);
INSERT INTO `tp_china_city` VALUES (738, 731, '碾子山区', '230207', 'N', 0);
INSERT INTO `tp_china_city` VALUES (739, 731, '梅里斯达斡尔族区', '230208', 'M', 0);
INSERT INTO `tp_china_city` VALUES (740, 731, '龙江县', '230221', 'L', 0);
INSERT INTO `tp_china_city` VALUES (741, 731, '依安县', '230223', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (742, 731, '泰来县', '230224', 'T', 0);
INSERT INTO `tp_china_city` VALUES (743, 731, '甘南县', '230225', 'G', 0);
INSERT INTO `tp_china_city` VALUES (744, 731, '富裕县', '230227', 'F', 0);
INSERT INTO `tp_china_city` VALUES (745, 731, '克山县', '230229', 'K', 0);
INSERT INTO `tp_china_city` VALUES (746, 731, '克东县', '230230', 'K', 0);
INSERT INTO `tp_china_city` VALUES (747, 731, '拜泉县', '230231', 'B', 0);
INSERT INTO `tp_china_city` VALUES (748, 731, '讷河市', '230281', 'N', 0);
INSERT INTO `tp_china_city` VALUES (749, 710, '鸡西市', '230300', 'J', 0);
INSERT INTO `tp_china_city` VALUES (751, 749, '鸡冠区', '230302', 'J', 0);
INSERT INTO `tp_china_city` VALUES (752, 749, '恒山区', '230303', 'H', 0);
INSERT INTO `tp_china_city` VALUES (753, 749, '滴道区', '230304', 'D', 0);
INSERT INTO `tp_china_city` VALUES (754, 749, '梨树区', '230305', 'L', 0);
INSERT INTO `tp_china_city` VALUES (755, 749, '城子河区', '230306', 'C', 0);
INSERT INTO `tp_china_city` VALUES (756, 749, '麻山区', '230307', 'M', 0);
INSERT INTO `tp_china_city` VALUES (757, 749, '鸡东县', '230321', 'J', 0);
INSERT INTO `tp_china_city` VALUES (758, 749, '虎林市', '230381', 'H', 0);
INSERT INTO `tp_china_city` VALUES (759, 749, '密山市', '230382', 'M', 0);
INSERT INTO `tp_china_city` VALUES (760, 710, '鹤岗市', '230400', 'H', 0);
INSERT INTO `tp_china_city` VALUES (762, 760, '向阳区', '230402', 'X', 0);
INSERT INTO `tp_china_city` VALUES (763, 760, '工农区', '230403', 'G', 0);
INSERT INTO `tp_china_city` VALUES (764, 760, '南山区', '230404', 'N', 0);
INSERT INTO `tp_china_city` VALUES (765, 760, '兴安区', '230405', 'X', 0);
INSERT INTO `tp_china_city` VALUES (766, 760, '东山区', '230406', 'D', 0);
INSERT INTO `tp_china_city` VALUES (767, 760, '兴山区', '230407', 'X', 0);
INSERT INTO `tp_china_city` VALUES (768, 760, '萝北县', '230421', 'L', 0);
INSERT INTO `tp_china_city` VALUES (769, 760, '绥滨县', '230422', 'S', 0);
INSERT INTO `tp_china_city` VALUES (770, 710, '双鸭山市', '230500', 'S', 0);
INSERT INTO `tp_china_city` VALUES (772, 770, '尖山区', '230502', 'J', 0);
INSERT INTO `tp_china_city` VALUES (773, 770, '岭东区', '230503', 'L', 0);
INSERT INTO `tp_china_city` VALUES (774, 770, '四方台区', '230505', 'S', 0);
INSERT INTO `tp_china_city` VALUES (775, 770, '宝山区', '230506', 'B', 0);
INSERT INTO `tp_china_city` VALUES (776, 770, '集贤县', '230521', 'J', 0);
INSERT INTO `tp_china_city` VALUES (777, 770, '友谊县', '230522', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (778, 770, '宝清县', '230523', 'B', 0);
INSERT INTO `tp_china_city` VALUES (779, 770, '饶河县', '230524', 'R', 0);
INSERT INTO `tp_china_city` VALUES (780, 710, '大庆市', '230600', 'D', 0);
INSERT INTO `tp_china_city` VALUES (782, 780, '萨尔图区', '230602', 'S', 0);
INSERT INTO `tp_china_city` VALUES (783, 780, '龙凤区', '230603', 'L', 0);
INSERT INTO `tp_china_city` VALUES (784, 780, '让胡路区', '230604', 'R', 0);
INSERT INTO `tp_china_city` VALUES (785, 780, '红岗区', '230605', 'H', 0);
INSERT INTO `tp_china_city` VALUES (786, 780, '大同区', '230606', 'D', 0);
INSERT INTO `tp_china_city` VALUES (787, 780, '肇州县', '230621', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (788, 780, '肇源县', '230622', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (789, 780, '林甸县', '230623', 'L', 0);
INSERT INTO `tp_china_city` VALUES (790, 780, '杜尔伯特蒙古族自治县', '230624', 'D', 0);
INSERT INTO `tp_china_city` VALUES (791, 710, '伊春市', '230700', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (793, 791, '伊春区', '230702', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (794, 791, '南岔区', '230703', 'N', 0);
INSERT INTO `tp_china_city` VALUES (795, 791, '友好区', '230704', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (796, 791, '西林区', '230705', 'X', 0);
INSERT INTO `tp_china_city` VALUES (797, 791, '翠峦区', '230706', 'C', 0);
INSERT INTO `tp_china_city` VALUES (798, 791, '新青区', '230707', 'X', 0);
INSERT INTO `tp_china_city` VALUES (799, 791, '美溪区', '230708', 'M', 0);
INSERT INTO `tp_china_city` VALUES (800, 791, '金山屯区', '230709', 'J', 0);
INSERT INTO `tp_china_city` VALUES (801, 791, '五营区', '230710', 'W', 0);
INSERT INTO `tp_china_city` VALUES (802, 791, '乌马河区', '230711', 'W', 0);
INSERT INTO `tp_china_city` VALUES (803, 791, '汤旺河区', '230712', 'T', 0);
INSERT INTO `tp_china_city` VALUES (804, 791, '带岭区', '230713', 'D', 0);
INSERT INTO `tp_china_city` VALUES (805, 791, '乌伊岭区', '230714', 'W', 0);
INSERT INTO `tp_china_city` VALUES (806, 791, '红星区', '230715', 'H', 0);
INSERT INTO `tp_china_city` VALUES (807, 791, '上甘岭区', '230716', 'S', 0);
INSERT INTO `tp_china_city` VALUES (808, 791, '嘉荫县', '230722', 'J', 0);
INSERT INTO `tp_china_city` VALUES (809, 791, '铁力市', '230781', 'T', 0);
INSERT INTO `tp_china_city` VALUES (810, 710, '佳木斯市', '230800', 'J', 0);
INSERT INTO `tp_china_city` VALUES (812, 810, '向阳区', '230803', 'X', 0);
INSERT INTO `tp_china_city` VALUES (813, 810, '前进区', '230804', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (814, 810, '东风区', '230805', 'D', 0);
INSERT INTO `tp_china_city` VALUES (815, 810, '郊区', '230811', 'J', 0);
INSERT INTO `tp_china_city` VALUES (816, 810, '桦南县', '230822', 'H', 0);
INSERT INTO `tp_china_city` VALUES (817, 810, '桦川县', '230826', 'H', 0);
INSERT INTO `tp_china_city` VALUES (818, 810, '汤原县', '230828', 'T', 0);
INSERT INTO `tp_china_city` VALUES (819, 810, '抚远县', '230833', 'F', 0);
INSERT INTO `tp_china_city` VALUES (820, 810, '同江市', '230881', 'T', 0);
INSERT INTO `tp_china_city` VALUES (821, 810, '富锦市', '230882', 'F', 0);
INSERT INTO `tp_china_city` VALUES (822, 710, '七台河市', '230900', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (824, 822, '新兴区', '230902', 'X', 0);
INSERT INTO `tp_china_city` VALUES (825, 822, '桃山区', '230903', 'T', 0);
INSERT INTO `tp_china_city` VALUES (826, 822, '茄子河区', '230904', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (827, 822, '勃利县', '230921', 'B', 0);
INSERT INTO `tp_china_city` VALUES (828, 710, '牡丹江市', '231000', 'M', 0);
INSERT INTO `tp_china_city` VALUES (830, 828, '东安区', '231002', 'D', 0);
INSERT INTO `tp_china_city` VALUES (831, 828, '阳明区', '231003', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (832, 828, '爱民区', '231004', 'A', 0);
INSERT INTO `tp_china_city` VALUES (833, 828, '西安区', '231005', 'X', 0);
INSERT INTO `tp_china_city` VALUES (834, 828, '东宁县', '231024', 'D', 0);
INSERT INTO `tp_china_city` VALUES (835, 828, '林口县', '231025', 'L', 0);
INSERT INTO `tp_china_city` VALUES (836, 828, '绥芬河市', '231081', 'S', 0);
INSERT INTO `tp_china_city` VALUES (837, 828, '海林市', '231083', 'H', 0);
INSERT INTO `tp_china_city` VALUES (838, 828, '宁安市', '231084', 'N', 0);
INSERT INTO `tp_china_city` VALUES (839, 828, '穆棱市', '231085', 'M', 0);
INSERT INTO `tp_china_city` VALUES (840, 710, '黑河市', '231100', 'H', 0);
INSERT INTO `tp_china_city` VALUES (842, 840, '爱辉区', '231102', 'A', 0);
INSERT INTO `tp_china_city` VALUES (843, 840, '嫩江县', '231121', 'N', 0);
INSERT INTO `tp_china_city` VALUES (844, 840, '逊克县', '231123', 'X', 0);
INSERT INTO `tp_china_city` VALUES (845, 840, '孙吴县', '231124', 'S', 0);
INSERT INTO `tp_china_city` VALUES (846, 840, '北安市', '231181', 'B', 0);
INSERT INTO `tp_china_city` VALUES (847, 840, '五大连池市', '231182', 'W', 0);
INSERT INTO `tp_china_city` VALUES (848, 710, '绥化市', '231200', 'S', 0);
INSERT INTO `tp_china_city` VALUES (850, 848, '北林区', '231202', 'B', 0);
INSERT INTO `tp_china_city` VALUES (851, 848, '望奎县', '231221', 'W', 0);
INSERT INTO `tp_china_city` VALUES (852, 848, '兰西县', '231222', 'L', 0);
INSERT INTO `tp_china_city` VALUES (853, 848, '青冈县', '231223', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (854, 848, '庆安县', '231224', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (855, 848, '明水县', '231225', 'M', 0);
INSERT INTO `tp_china_city` VALUES (856, 848, '绥棱县', '231226', 'S', 0);
INSERT INTO `tp_china_city` VALUES (857, 848, '安达市', '231281', 'A', 0);
INSERT INTO `tp_china_city` VALUES (858, 848, '肇东市', '231282', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (859, 848, '海伦市', '231283', 'H', 0);
INSERT INTO `tp_china_city` VALUES (860, 710, '大兴安岭地区', '232700', 'D', 0);
INSERT INTO `tp_china_city` VALUES (861, 860, '加格达奇区', '232701', 'J', 0);
INSERT INTO `tp_china_city` VALUES (862, 860, '松岭区', '232702', 'S', 0);
INSERT INTO `tp_china_city` VALUES (863, 860, '新林区', '232703', 'X', 0);
INSERT INTO `tp_china_city` VALUES (864, 860, '呼中区', '232704', 'H', 0);
INSERT INTO `tp_china_city` VALUES (865, 860, '呼玛县', '232721', 'H', 0);
INSERT INTO `tp_china_city` VALUES (866, 860, '塔河县', '232722', 'D', 0);
INSERT INTO `tp_china_city` VALUES (867, 860, '漠河县', '232723', 'M', 0);
INSERT INTO `tp_china_city` VALUES (868, 0, '上海市', '310000', 'S', 0);
INSERT INTO `tp_china_city` VALUES (869, 868, '上海市', '310000', 'S', 1);
INSERT INTO `tp_china_city` VALUES (870, 869, '黄浦区', '310101', 'H', 0);
INSERT INTO `tp_china_city` VALUES (871, 869, '卢湾区', '310103', 'L', 0);
INSERT INTO `tp_china_city` VALUES (872, 869, '徐汇区', '310104', 'X', 0);
INSERT INTO `tp_china_city` VALUES (873, 869, '长宁区', '310105', 'C', 0);
INSERT INTO `tp_china_city` VALUES (874, 869, '静安区', '310106', 'J', 0);
INSERT INTO `tp_china_city` VALUES (875, 869, '普陀区', '310107', 'P', 0);
INSERT INTO `tp_china_city` VALUES (876, 869, '闸北区', '310108', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (877, 869, '虹口区', '310109', 'H', 0);
INSERT INTO `tp_china_city` VALUES (878, 869, '杨浦区', '310110', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (879, 869, '闵行区', '310112', 'M', 0);
INSERT INTO `tp_china_city` VALUES (880, 869, '宝山区', '310113', 'B', 0);
INSERT INTO `tp_china_city` VALUES (881, 869, '嘉定区', '310114', 'J', 0);
INSERT INTO `tp_china_city` VALUES (882, 869, '浦东新区', '310115', 'P', 0);
INSERT INTO `tp_china_city` VALUES (883, 869, '金山区', '310116', 'J', 0);
INSERT INTO `tp_china_city` VALUES (884, 869, '松江区', '310117', 'S', 0);
INSERT INTO `tp_china_city` VALUES (885, 869, '青浦区', '310118', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (886, 869, '南汇区', '310119', 'N', 0);
INSERT INTO `tp_china_city` VALUES (887, 869, '奉贤区', '310120', 'F', 0);
INSERT INTO `tp_china_city` VALUES (888, 868, '县', '310200', 'X', 0);
INSERT INTO `tp_china_city` VALUES (889, 888, '崇明县', '310230', 'C', 0);
INSERT INTO `tp_china_city` VALUES (890, 0, '江苏省', '320000', 'J', 0);
INSERT INTO `tp_china_city` VALUES (891, 890, '南京市', '320100', 'N', 0);
INSERT INTO `tp_china_city` VALUES (893, 891, '玄武区', '320102', 'X', 0);
INSERT INTO `tp_china_city` VALUES (894, 891, '白下区', '320103', 'B', 0);
INSERT INTO `tp_china_city` VALUES (895, 891, '秦淮区', '320104', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (896, 891, '建邺区', '320105', 'J', 0);
INSERT INTO `tp_china_city` VALUES (897, 891, '鼓楼区', '320106', 'G', 0);
INSERT INTO `tp_china_city` VALUES (898, 891, '下关区', '320107', 'X', 0);
INSERT INTO `tp_china_city` VALUES (899, 891, '浦口区', '320111', 'P', 0);
INSERT INTO `tp_china_city` VALUES (900, 891, '栖霞区', '320113', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (901, 891, '雨花台区', '320114', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (902, 891, '江宁区', '320115', 'J', 0);
INSERT INTO `tp_china_city` VALUES (903, 891, '六合区', '320116', 'L', 0);
INSERT INTO `tp_china_city` VALUES (904, 891, '溧水县', '320124', 'L', 0);
INSERT INTO `tp_china_city` VALUES (905, 891, '高淳县', '320125', 'G', 0);
INSERT INTO `tp_china_city` VALUES (906, 890, '无锡市', '320200', 'W', 0);
INSERT INTO `tp_china_city` VALUES (908, 906, '崇安区', '320202', 'C', 0);
INSERT INTO `tp_china_city` VALUES (909, 906, '南长区', '320203', 'N', 0);
INSERT INTO `tp_china_city` VALUES (910, 906, '北塘区', '320204', 'B', 0);
INSERT INTO `tp_china_city` VALUES (911, 906, '锡山区', '320205', 'X', 0);
INSERT INTO `tp_china_city` VALUES (912, 906, '惠山区', '320206', 'H', 0);
INSERT INTO `tp_china_city` VALUES (913, 906, '滨湖区', '320211', 'B', 0);
INSERT INTO `tp_china_city` VALUES (914, 906, '江阴市', '320281', 'J', 0);
INSERT INTO `tp_china_city` VALUES (915, 906, '宜兴市', '320282', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (916, 890, '徐州市', '320300', 'X', 0);
INSERT INTO `tp_china_city` VALUES (918, 916, '鼓楼区', '320302', 'G', 0);
INSERT INTO `tp_china_city` VALUES (919, 916, '云龙区', '320303', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (920, 916, '九里区', '320304', 'J', 0);
INSERT INTO `tp_china_city` VALUES (921, 916, '贾汪区', '320305', 'J', 0);
INSERT INTO `tp_china_city` VALUES (922, 916, '泉山区', '320311', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (923, 916, '丰县', '320321', 'F', 0);
INSERT INTO `tp_china_city` VALUES (924, 916, '沛县', '320322', 'P', 0);
INSERT INTO `tp_china_city` VALUES (925, 916, '铜山县', '320323', 'T', 0);
INSERT INTO `tp_china_city` VALUES (926, 916, '睢宁县', '320324', 'S', 0);
INSERT INTO `tp_china_city` VALUES (927, 916, '新沂市', '320381', 'X', 0);
INSERT INTO `tp_china_city` VALUES (928, 916, '邳州市', '320382', 'P', 0);
INSERT INTO `tp_china_city` VALUES (929, 890, '常州市', '320400', 'C', 0);
INSERT INTO `tp_china_city` VALUES (931, 929, '天宁区', '320402', 'T', 0);
INSERT INTO `tp_china_city` VALUES (932, 929, '钟楼区', '320404', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (933, 929, '戚墅堰区', '320405', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (934, 929, '新北区', '320411', 'X', 0);
INSERT INTO `tp_china_city` VALUES (935, 929, '武进区', '320412', 'W', 0);
INSERT INTO `tp_china_city` VALUES (936, 929, '溧阳市', '320481', 'L', 0);
INSERT INTO `tp_china_city` VALUES (937, 929, '金坛市', '320482', 'J', 0);
INSERT INTO `tp_china_city` VALUES (938, 890, '苏州市', '320500', 'S', 0);
INSERT INTO `tp_china_city` VALUES (940, 938, '沧浪区', '320502', 'C', 0);
INSERT INTO `tp_china_city` VALUES (941, 938, '平江区', '320503', 'P', 0);
INSERT INTO `tp_china_city` VALUES (942, 938, '金阊区', '320504', 'J', 0);
INSERT INTO `tp_china_city` VALUES (943, 938, '虎丘区', '320505', 'H', 0);
INSERT INTO `tp_china_city` VALUES (944, 938, '吴中区', '320506', 'W', 0);
INSERT INTO `tp_china_city` VALUES (945, 938, '相城区', '320507', 'X', 0);
INSERT INTO `tp_china_city` VALUES (946, 938, '常熟市', '320581', 'C', 0);
INSERT INTO `tp_china_city` VALUES (947, 938, '张家港市', '320582', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (948, 938, '昆山市', '320583', 'K', 0);
INSERT INTO `tp_china_city` VALUES (949, 938, '吴江市', '320584', 'W', 0);
INSERT INTO `tp_china_city` VALUES (950, 938, '太仓市', '320585', 'T', 0);
INSERT INTO `tp_china_city` VALUES (951, 890, '南通市', '320600', 'N', 0);
INSERT INTO `tp_china_city` VALUES (953, 951, '崇川区', '320602', 'C', 0);
INSERT INTO `tp_china_city` VALUES (954, 951, '港闸区', '320611', 'G', 0);
INSERT INTO `tp_china_city` VALUES (955, 951, '海安县', '320621', 'H', 0);
INSERT INTO `tp_china_city` VALUES (956, 951, '如东县', '320623', 'R', 0);
INSERT INTO `tp_china_city` VALUES (957, 951, '启东市', '320681', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (958, 951, '如皋市', '320682', 'R', 0);
INSERT INTO `tp_china_city` VALUES (959, 951, '通州市', '320683', 'T', 0);
INSERT INTO `tp_china_city` VALUES (960, 951, '海门市', '320684', 'H', 0);
INSERT INTO `tp_china_city` VALUES (961, 890, '连云港市', '320700', 'L', 0);
INSERT INTO `tp_china_city` VALUES (963, 961, '连云区', '320703', 'L', 0);
INSERT INTO `tp_china_city` VALUES (964, 961, '新浦区', '320705', 'X', 0);
INSERT INTO `tp_china_city` VALUES (965, 961, '海州区', '320706', 'H', 0);
INSERT INTO `tp_china_city` VALUES (966, 961, '赣榆县', '320721', 'G', 0);
INSERT INTO `tp_china_city` VALUES (967, 961, '东海县', '320722', 'D', 0);
INSERT INTO `tp_china_city` VALUES (968, 961, '灌云县', '320723', 'G', 0);
INSERT INTO `tp_china_city` VALUES (969, 961, '灌南县', '320724', 'G', 0);
INSERT INTO `tp_china_city` VALUES (970, 890, '淮安市', '320800', 'H', 0);
INSERT INTO `tp_china_city` VALUES (972, 970, '清河区', '320802', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (973, 970, '楚州区', '320803', 'C', 0);
INSERT INTO `tp_china_city` VALUES (974, 970, '淮阴区', '320804', 'H', 0);
INSERT INTO `tp_china_city` VALUES (975, 970, '清浦区', '320811', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (976, 970, '涟水县', '320826', 'L', 0);
INSERT INTO `tp_china_city` VALUES (977, 970, '洪泽县', '320829', 'H', 0);
INSERT INTO `tp_china_city` VALUES (978, 970, '盱眙县', '320830', 'X', 0);
INSERT INTO `tp_china_city` VALUES (979, 970, '金湖县', '320831', 'J', 0);
INSERT INTO `tp_china_city` VALUES (980, 890, '盐城市', '320900', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (982, 980, '亭湖区', '320902', 'T', 0);
INSERT INTO `tp_china_city` VALUES (983, 980, '盐都区', '320903', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (984, 980, '响水县', '320921', 'X', 0);
INSERT INTO `tp_china_city` VALUES (985, 980, '滨海县', '320922', 'B', 0);
INSERT INTO `tp_china_city` VALUES (986, 980, '阜宁县', '320923', 'F', 0);
INSERT INTO `tp_china_city` VALUES (987, 980, '射阳县', '320924', 'S', 0);
INSERT INTO `tp_china_city` VALUES (988, 980, '建湖县', '320925', 'J', 0);
INSERT INTO `tp_china_city` VALUES (989, 980, '东台市', '320981', 'D', 0);
INSERT INTO `tp_china_city` VALUES (990, 980, '大丰市', '320982', 'D', 0);
INSERT INTO `tp_china_city` VALUES (991, 890, '扬州市', '321000', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (993, 991, '广陵区', '321002', 'G', 0);
INSERT INTO `tp_china_city` VALUES (994, 991, '邗江区', '321003', 'H', 0);
INSERT INTO `tp_china_city` VALUES (995, 991, '维扬区', '321011', 'W', 0);
INSERT INTO `tp_china_city` VALUES (996, 991, '宝应县', '321023', 'B', 0);
INSERT INTO `tp_china_city` VALUES (997, 991, '仪征市', '321081', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (998, 991, '高邮市', '321084', 'G', 0);
INSERT INTO `tp_china_city` VALUES (999, 991, '江都市', '321088', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1000, 890, '镇江市', '321100', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1002, 1000, '京口区', '321102', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1003, 1000, '润州区', '321111', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1004, 1000, '丹徒区', '321112', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1005, 1000, '丹阳市', '321181', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1006, 1000, '扬中市', '321182', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1007, 1000, '句容市', '321183', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1008, 890, '泰州市', '321200', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1010, 1008, '海陵区', '321202', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1011, 1008, '高港区', '321203', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1012, 1008, '兴化市', '321281', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1013, 1008, '靖江市', '321282', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1014, 1008, '泰兴市', '321283', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1015, 1008, '姜堰市', '321284', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1016, 890, '宿迁市', '321300', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1018, 1016, '宿城区', '321302', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1019, 1016, '宿豫区', '321311', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1020, 1016, '沭阳县', '321322', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1021, 1016, '泗阳县', '321323', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1022, 1016, '泗洪县', '321324', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1023, 0, '浙江省', '330000', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1024, 1023, '杭州市', '330100', 'H', 1);
INSERT INTO `tp_china_city` VALUES (1026, 1024, '上城区', '330102', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1027, 1024, '下城区', '330103', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1028, 1024, '江干区', '330104', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1029, 1024, '拱墅区', '330105', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1030, 1024, '西湖区', '330106', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1031, 1024, '滨江区', '330108', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1032, 1024, '萧山区', '330109', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1033, 1024, '余杭区', '330110', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1034, 1024, '桐庐县', '330122', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1035, 1024, '淳安县', '330127', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1036, 1024, '建德市', '330182', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1037, 1024, '富阳市', '330183', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1038, 1024, '临安市', '330185', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1039, 1023, '宁波市', '330200', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1041, 1039, '海曙区', '330203', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1042, 1039, '江东区', '330204', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1043, 1039, '江北区', '330205', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1044, 1039, '北仑区', '330206', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1045, 1039, '镇海区', '330211', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1046, 1039, '鄞州区', '330212', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1047, 1039, '象山县', '330225', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1048, 1039, '宁海县', '330226', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1049, 1039, '余姚市', '330281', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1050, 1039, '慈溪市', '330282', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1051, 1039, '奉化市', '330283', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1052, 1023, '温州市', '330300', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1054, 1052, '鹿城区', '330302', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1055, 1052, '龙湾区', '330303', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1056, 1052, '瓯海区', '330304', 'O', 0);
INSERT INTO `tp_china_city` VALUES (1057, 1052, '洞头县', '330322', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1058, 1052, '永嘉县', '330324', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1059, 1052, '平阳县', '330326', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1060, 1052, '苍南县', '330327', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1061, 1052, '文成县', '330328', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1062, 1052, '泰顺县', '330329', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1063, 1052, '瑞安市', '330381', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1064, 1052, '乐清市', '330382', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1065, 1023, '嘉兴市', '330400', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1067, 1065, '南湖区', '330402', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1068, 1065, '秀洲区', '330411', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1069, 1065, '嘉善县', '330421', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1070, 1065, '海盐县', '330424', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1071, 1065, '海宁市', '330481', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1072, 1065, '平湖市', '330482', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1073, 1065, '桐乡市', '330483', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1074, 1023, '湖州市', '330500', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1076, 1074, '吴兴区', '330502', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1077, 1074, '南浔区', '330503', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1078, 1074, '德清县', '330521', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1079, 1074, '长兴县', '330522', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1080, 1074, '安吉县', '330523', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1081, 1023, '绍兴市', '330600', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1083, 1081, '越城区', '330602', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1084, 1081, '绍兴县', '330621', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1085, 1081, '新昌县', '330624', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1086, 1081, '诸暨市', '330681', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1087, 1081, '上虞市', '330682', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1088, 1081, '嵊州市', '330683', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1089, 1023, '金华市', '330700', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1091, 1089, '婺城区', '330702', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1092, 1089, '金东区', '330703', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1093, 1089, '武义县', '330723', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1094, 1089, '浦江县', '330726', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1095, 1089, '磐安县', '330727', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1096, 1089, '兰溪市', '330781', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1097, 1089, '义乌市', '330782', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1098, 1089, '东阳市', '330783', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1099, 1089, '永康市', '330784', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1100, 1023, '衢州市', '330800', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1102, 1100, '柯城区', '330802', 'K', 0);
INSERT INTO `tp_china_city` VALUES (1103, 1100, '衢江区', '330803', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1104, 1100, '常山县', '330822', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1105, 1100, '开化县', '330824', 'K', 0);
INSERT INTO `tp_china_city` VALUES (1106, 1100, '龙游县', '330825', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1107, 1100, '江山市', '330881', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1108, 1023, '舟山市', '330900', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1110, 1108, '定海区', '330902', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1111, 1108, '普陀区', '330903', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1112, 1108, '岱山县', '330921', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1113, 1108, '嵊泗县', '330922', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1114, 1023, '台州市', '331000', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1116, 1114, '椒江区', '331002', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1117, 1114, '黄岩区', '331003', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1118, 1114, '路桥区', '331004', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1119, 1114, '玉环县', '331021', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1120, 1114, '三门县', '331022', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1121, 1114, '天台县', '331023', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1122, 1114, '仙居县', '331024', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1123, 1114, '温岭市', '331081', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1124, 1114, '临海市', '331082', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1125, 1023, '丽水市', '331100', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1127, 1125, '莲都区', '331102', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1128, 1125, '青田县', '331121', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1129, 1125, '缙云县', '331122', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1130, 1125, '遂昌县', '331123', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1131, 1125, '松阳县', '331124', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1132, 1125, '云和县', '331125', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1133, 1125, '庆元县', '331126', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1134, 1125, '景宁畲族自治县', '331127', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1135, 1125, '龙泉市', '331181', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1136, 0, '安徽省', '340000', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1137, 1136, '合肥市', '340100', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1139, 1137, '瑶海区', '340102', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1140, 1137, '庐阳区', '340103', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1141, 1137, '蜀山区', '340104', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1142, 1137, '包河区', '340111', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1143, 1137, '长丰县', '340121', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1144, 1137, '肥东县', '340122', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1145, 1137, '肥西县', '340123', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1146, 1136, '芜湖市', '340200', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1148, 1146, '镜湖区', '340202', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1149, 1146, '弋江区', '340203', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1150, 1146, '鸠江区', '340207', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1151, 1146, '三山区', '340208', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1152, 1146, '芜湖县', '340221', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1153, 1146, '繁昌县', '340222', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1154, 1146, '南陵县', '340223', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1155, 1136, '蚌埠市', '340300', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1157, 1155, '龙子湖区', '340302', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1158, 1155, '蚌山区', '340303', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1159, 1155, '禹会区', '340304', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1160, 1155, '淮上区', '340311', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1161, 1155, '怀远县', '340321', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1162, 1155, '五河县', '340322', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1163, 1155, '固镇县', '340323', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1164, 1136, '淮南市', '340400', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1166, 1164, '大通区', '340402', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1167, 1164, '田家庵区', '340403', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1168, 1164, '谢家集区', '340404', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1169, 1164, '八公山区', '340405', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1170, 1164, '潘集区', '340406', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1171, 1164, '凤台县', '340421', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1172, 1136, '马鞍山市', '340500', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1174, 1172, '金家庄区', '340502', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1175, 1172, '花山区', '340503', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1176, 1172, '雨山区', '340504', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1177, 1172, '当涂县', '340521', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1178, 1136, '淮北市', '340600', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1180, 1178, '杜集区', '340602', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1181, 1178, '相山区', '340603', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1182, 1178, '烈山区', '340604', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1183, 1178, '濉溪县', '340621', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1184, 1136, '铜陵市', '340700', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1186, 1184, '铜官山区', '340702', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1187, 1184, '狮子山区', '340703', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1188, 1184, '郊区', '340711', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1189, 1184, '铜陵县', '340721', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1190, 1136, '安庆市', '340800', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1192, 1190, '迎江区', '340802', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1193, 1190, '大观区', '340803', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1194, 1190, '宜秀区', '340811', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1195, 1190, '怀宁县', '340822', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1196, 1190, '枞阳县', '340823', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1197, 1190, '潜山县', '340824', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1198, 1190, '太湖县', '340825', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1199, 1190, '宿松县', '340826', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1200, 1190, '望江县', '340827', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1201, 1190, '岳西县', '340828', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1202, 1190, '桐城市', '340881', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1203, 1136, '黄山市', '341000', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1205, 1203, '屯溪区', '341002', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1206, 1203, '黄山区', '341003', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1207, 1203, '徽州区', '341004', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1208, 1203, '歙县', '341021', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1209, 1203, '休宁县', '341022', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1210, 1203, '黟县', '341023', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1211, 1203, '祁门县', '341024', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1212, 1136, '滁州市', '341100', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1214, 1212, '琅琊区', '341102', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1215, 1212, '南谯区', '341103', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1216, 1212, '来安县', '341122', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1217, 1212, '全椒县', '341124', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1218, 1212, '定远县', '341125', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1219, 1212, '凤阳县', '341126', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1220, 1212, '天长市', '341181', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1221, 1212, '明光市', '341182', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1222, 1136, '阜阳市', '341200', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1224, 1222, '颍州区', '341202', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1225, 1222, '颍东区', '341203', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1226, 1222, '颍泉区', '341204', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1227, 1222, '临泉县', '341221', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1228, 1222, '太和县', '341222', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1229, 1222, '阜南县', '341225', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1230, 1222, '颍上县', '341226', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1231, 1222, '界首市', '341282', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1232, 1136, '宿州市', '341300', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1234, 1232, '埇桥区', '341302', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1235, 1232, '砀山县', '341321', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1236, 1232, '萧县', '341322', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1237, 1232, '灵璧县', '341323', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1238, 1232, '泗县', '341324', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1239, 1136, '巢湖市', '341400', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1241, 1239, '居巢区', '341402', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1242, 1239, '庐江县', '341421', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1243, 1239, '无为县', '341422', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1244, 1239, '含山县', '341423', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1245, 1239, '和县', '341424', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1246, 1136, '六安市', '341500', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1248, 1246, '金安区', '341502', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1249, 1246, '裕安区', '341503', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1250, 1246, '寿县', '341521', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1251, 1246, '霍邱县', '341522', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1252, 1246, '舒城县', '341523', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1253, 1246, '金寨县', '341524', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1254, 1246, '霍山县', '341525', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1255, 1136, '亳州市', '341600', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1257, 1255, '谯城区', '341602', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1258, 1255, '涡阳县', '341621', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1259, 1255, '蒙城县', '341622', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1260, 1255, '利辛县', '341623', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1261, 1136, '池州市', '341700', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1263, 1261, '贵池区', '341702', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1264, 1261, '东至县', '341721', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1265, 1261, '石台县', '341722', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1266, 1261, '青阳县', '341723', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1267, 1136, '宣城市', '341800', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1269, 1267, '宣州区', '341802', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1270, 1267, '郎溪县', '341821', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1271, 1267, '广德县', '341822', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1272, 1267, '泾县', '341823', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1273, 1267, '绩溪县', '341824', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1274, 1267, '旌德县', '341825', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1275, 1267, '宁国市', '341881', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1276, 0, '福建省', '350000', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1277, 1276, '福州市', '350100', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1279, 1277, '鼓楼区', '350102', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1280, 1277, '台江区', '350103', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1281, 1277, '仓山区', '350104', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1282, 1277, '马尾区', '350105', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1283, 1277, '晋安区', '350111', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1284, 1277, '闽侯县', '350121', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1285, 1277, '连江县', '350122', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1286, 1277, '罗源县', '350123', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1287, 1277, '闽清县', '350124', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1288, 1277, '永泰县', '350125', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1289, 1277, '平潭县', '350128', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1290, 1277, '福清市', '350181', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1291, 1277, '长乐市', '350182', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1292, 1276, '厦门市', '350200', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1294, 1292, '思明区', '350203', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1295, 1292, '海沧区', '350205', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1296, 1292, '湖里区', '350206', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1297, 1292, '集美区', '350211', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1298, 1292, '同安区', '350212', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1299, 1292, '翔安区', '350213', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1300, 1276, '莆田市', '350300', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1302, 1300, '城厢区', '350302', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1303, 1300, '涵江区', '350303', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1304, 1300, '荔城区', '350304', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1305, 1300, '秀屿区', '350305', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1306, 1300, '仙游县', '350322', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1307, 1276, '三明市', '350400', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1309, 1307, '梅列区', '350402', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1310, 1307, '三元区', '350403', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1311, 1307, '明溪县', '350421', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1312, 1307, '清流县', '350423', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1313, 1307, '宁化县', '350424', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1314, 1307, '大田县', '350425', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1315, 1307, '尤溪县', '350426', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1316, 1307, '沙县', '350427', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1317, 1307, '将乐县', '350428', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1318, 1307, '泰宁县', '350429', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1319, 1307, '建宁县', '350430', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1320, 1307, '永安市', '350481', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1321, 1276, '泉州市', '350500', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1323, 1321, '鲤城区', '350502', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1324, 1321, '丰泽区', '350503', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1325, 1321, '洛江区', '350504', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1326, 1321, '泉港区', '350505', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1327, 1321, '惠安县', '350521', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1328, 1321, '安溪县', '350524', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1329, 1321, '永春县', '350525', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1330, 1321, '德化县', '350526', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1331, 1321, '金门县', '350527', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1332, 1321, '石狮市', '350581', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1333, 1321, '晋江市', '350582', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1334, 1321, '南安市', '350583', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1335, 1276, '漳州市', '350600', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1337, 1335, '芗城区', '350602', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1338, 1335, '龙文区', '350603', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1339, 1335, '云霄县', '350622', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1340, 1335, '漳浦县', '350623', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1341, 1335, '诏安县', '350624', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1342, 1335, '长泰县', '350625', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1343, 1335, '东山县', '350626', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1344, 1335, '南靖县', '350627', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1345, 1335, '平和县', '350628', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1346, 1335, '华安县', '350629', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1347, 1335, '龙海市', '350681', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1348, 1276, '南平市', '350700', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1350, 1348, '延平区', '350702', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1351, 1348, '顺昌县', '350721', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1352, 1348, '浦城县', '350722', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1353, 1348, '光泽县', '350723', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1354, 1348, '松溪县', '350724', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1355, 1348, '政和县', '350725', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1356, 1348, '邵武市', '350781', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1357, 1348, '武夷山市', '350782', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1358, 1348, '建瓯市', '350783', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1359, 1348, '建阳市', '350784', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1360, 1276, '龙岩市', '350800', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1362, 1360, '新罗区', '350802', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1363, 1360, '长汀县', '350821', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1364, 1360, '永定县', '350822', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1365, 1360, '上杭县', '350823', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1366, 1360, '武平县', '350824', 'E', 0);
INSERT INTO `tp_china_city` VALUES (1367, 1360, '连城县', '350825', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1368, 1360, '漳平市', '350881', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1369, 1276, '宁德市', '350900', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1371, 1369, '蕉城区', '350902', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1372, 1369, '霞浦县', '350921', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1373, 1369, '古田县', '350922', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1374, 1369, '屏南县', '350923', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1375, 1369, '寿宁县', '350924', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1376, 1369, '周宁县', '350925', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1377, 1369, '柘荣县', '350926', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1378, 1369, '福安市', '350981', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1379, 1369, '福鼎市', '350982', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1380, 0, '江西省', '360000', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1381, 1380, '南昌市', '360100', 'N', 1);
INSERT INTO `tp_china_city` VALUES (1383, 1381, '东湖区', '360102', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1384, 1381, '西湖区', '360103', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1385, 1381, '青云谱区', '360104', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1386, 1381, '湾里区', '360105', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1387, 1381, '青山湖区', '360111', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1388, 1381, '南昌县', '360121', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1389, 1381, '新建县', '360122', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1390, 1381, '安义县', '360123', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1391, 1381, '进贤县', '360124', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1392, 1380, '景德镇市', '360200', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1394, 1392, '昌江区', '360202', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1395, 1392, '珠山区', '360203', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1396, 1392, '浮梁县', '360222', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1397, 1392, '乐平市', '360281', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1398, 1380, '萍乡市', '360300', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1400, 1398, '安源区', '360302', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1401, 1398, '湘东区', '360313', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1402, 1398, '莲花县', '360321', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1403, 1398, '上栗县', '360322', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1404, 1398, '芦溪县', '360323', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1405, 1380, '九江市', '360400', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1407, 1405, '庐山区', '360402', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1408, 1405, '浔阳区', '360403', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1409, 1405, '九江县', '360421', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1410, 1405, '武宁县', '360423', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1411, 1405, '修水县', '360424', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1412, 1405, '永修县', '360425', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1413, 1405, '德安县', '360426', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1414, 1405, '星子县', '360427', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1415, 1405, '都昌县', '360428', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1416, 1405, '湖口县', '360429', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1417, 1405, '彭泽县', '360430', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1418, 1405, '瑞昌市', '360481', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1419, 1380, '新余市', '360500', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1421, 1419, '渝水区', '360502', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1422, 1419, '分宜县', '360521', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1423, 1380, '鹰潭市', '360600', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1425, 1423, '月湖区', '360602', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1426, 1423, '余江县', '360622', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1427, 1423, '贵溪市', '360681', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1428, 1380, '赣州市', '360700', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1430, 1428, '章贡区', '360702', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1431, 1428, '赣县', '360721', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1432, 1428, '信丰县', '360722', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1433, 1428, '大余县', '360723', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1434, 1428, '上犹县', '360724', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1435, 1428, '崇义县', '360725', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1436, 1428, '安远县', '360726', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1437, 1428, '龙南县', '360727', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1438, 1428, '定南县', '360728', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1439, 1428, '全南县', '360729', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1440, 1428, '宁都县', '360730', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1441, 1428, '于都县', '360731', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1442, 1428, '兴国县', '360732', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1443, 1428, '会昌县', '360733', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1444, 1428, '寻乌县', '360734', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1445, 1428, '石城县', '360735', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1446, 1428, '瑞金市', '360781', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1447, 1428, '南康市', '360782', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1448, 1380, '吉安市', '360800', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1450, 1448, '吉州区', '360802', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1451, 1448, '青原区', '360803', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1452, 1448, '吉安县', '360821', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1453, 1448, '吉水县', '360822', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1454, 1448, '峡江县', '360823', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1455, 1448, '新干县', '360824', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1456, 1448, '永丰县', '360825', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1457, 1448, '泰和县', '360826', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1458, 1448, '遂川县', '360827', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1459, 1448, '万安县', '360828', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1460, 1448, '安福县', '360829', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1461, 1448, '永新县', '360830', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1462, 1448, '井冈山市', '360881', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1463, 1380, '宜春市', '360900', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1465, 1463, '袁州区', '360902', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1466, 1463, '奉新县', '360921', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1467, 1463, '万载县', '360922', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1468, 1463, '上高县', '360923', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1469, 1463, '宜丰县', '360924', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1470, 1463, '靖安县', '360925', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1471, 1463, '铜鼓县', '360926', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1472, 1463, '丰城市', '360981', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1473, 1463, '樟树市', '360982', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1474, 1463, '高安市', '360983', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1475, 1380, '抚州市', '361000', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1477, 1475, '临川区', '361002', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1478, 1475, '南城县', '361021', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1479, 1475, '黎川县', '361022', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1480, 1475, '南丰县', '361023', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1481, 1475, '崇仁县', '361024', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1482, 1475, '乐安县', '361025', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1483, 1475, '宜黄县', '361026', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1484, 1475, '金溪县', '361027', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1485, 1475, '资溪县', '361028', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1486, 1475, '东乡县', '361029', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1487, 1475, '广昌县', '361030', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1488, 1380, '上饶市', '361100', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1490, 1488, '信州区', '361102', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1491, 1488, '上饶县', '361121', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1492, 1488, '广丰县', '361122', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1493, 1488, '玉山县', '361123', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1494, 1488, '铅山县', '361124', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1495, 1488, '横峰县', '361125', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1496, 1488, '弋阳县', '361126', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1497, 1488, '余干县', '361127', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1498, 1488, '鄱阳县', '361128', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1499, 1488, '万年县', '361129', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1500, 1488, '婺源县', '361130', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1501, 1488, '德兴市', '361181', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1502, 0, '山东省', '370000', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1503, 1502, '济南市', '370100', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1505, 1503, '历下区', '370102', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1506, 1503, '市中区', '370103', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1507, 1503, '槐荫区', '370104', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1508, 1503, '天桥区', '370105', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1509, 1503, '历城区', '370112', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1510, 1503, '长清区', '370113', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1511, 1503, '平阴县', '370124', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1512, 1503, '济阳县', '370125', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1513, 1503, '商河县', '370126', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1514, 1503, '章丘市', '370181', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1515, 1502, '青岛市', '370200', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1517, 1515, '市南区', '370202', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1518, 1515, '市北区', '370203', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1519, 1515, '四方区', '370205', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1520, 1515, '黄岛区', '370211', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1521, 1515, '崂山区', '370212', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1522, 1515, '李沧区', '370213', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1523, 1515, '城阳区', '370214', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1524, 1515, '胶州市', '370281', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1525, 1515, '即墨市', '370282', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1526, 1515, '平度市', '370283', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1527, 1515, '胶南市', '370284', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1528, 1515, '莱西市', '370285', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1529, 1502, '淄博市', '370300', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1531, 1529, '淄川区', '370302', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1532, 1529, '张店区', '370303', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1533, 1529, '博山区', '370304', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1534, 1529, '临淄区', '370305', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1535, 1529, '周村区', '370306', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1536, 1529, '桓台县', '370321', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1537, 1529, '高青县', '370322', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1538, 1529, '沂源县', '370323', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1539, 1502, '枣庄市', '370400', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1541, 1539, '市中区', '370402', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1542, 1539, '薛城区', '370403', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1543, 1539, '峄城区', '370404', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1544, 1539, '台儿庄区', '370405', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1545, 1539, '山亭区', '370406', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1546, 1539, '滕州市', '370481', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1547, 1502, '东营市', '370500', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1549, 1547, '东营区', '370502', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1550, 1547, '河口区', '370503', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1551, 1547, '垦利县', '370521', 'K', 0);
INSERT INTO `tp_china_city` VALUES (1552, 1547, '利津县', '370522', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1553, 1547, '广饶县', '370523', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1554, 1502, '烟台市', '370600', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1556, 1554, '芝罘区', '370602', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1557, 1554, '福山区', '370611', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1558, 1554, '牟平区', '370612', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1559, 1554, '莱山区', '370613', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1560, 1554, '长岛县', '370634', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1561, 1554, '龙口市', '370681', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1562, 1554, '莱阳市', '370682', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1563, 1554, '莱州市', '370683', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1564, 1554, '蓬莱市', '370684', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1565, 1554, '招远市', '370685', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1566, 1554, '栖霞市', '370686', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1567, 1554, '海阳市', '370687', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1568, 1502, '潍坊市', '370700', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1570, 1568, '潍城区', '370702', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1571, 1568, '寒亭区', '370703', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1572, 1568, '坊子区', '370704', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1573, 1568, '奎文区', '370705', 'K', 0);
INSERT INTO `tp_china_city` VALUES (1574, 1568, '临朐县', '370724', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1575, 1568, '昌乐县', '370725', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1576, 1568, '青州市', '370781', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1577, 1568, '诸城市', '370782', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1578, 1568, '寿光市', '370783', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1579, 1568, '安丘市', '370784', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1580, 1568, '高密市', '370785', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1581, 1568, '昌邑市', '370786', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1582, 1502, '济宁市', '370800', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1584, 1582, '市中区', '370802', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1585, 1582, '任城区', '370811', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1586, 1582, '微山县', '370826', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1587, 1582, '鱼台县', '370827', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1588, 1582, '金乡县', '370828', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1589, 1582, '嘉祥县', '370829', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1590, 1582, '汶上县', '370830', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1591, 1582, '泗水县', '370831', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1592, 1582, '梁山县', '370832', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1593, 1582, '曲阜市', '370881', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1594, 1582, '兖州市', '370882', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1595, 1582, '邹城市', '370883', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1596, 1502, '泰安市', '370900', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1598, 1596, '泰山区', '370902', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1599, 1596, '岱岳区', '370911', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1600, 1596, '宁阳县', '370921', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1601, 1596, '东平县', '370923', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1602, 1596, '新泰市', '370982', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1603, 1596, '肥城市', '370983', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1604, 1502, '威海市', '371000', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1606, 1604, '环翠区', '371002', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1607, 1604, '文登市', '371081', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1608, 1604, '荣成市', '371082', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1609, 1604, '乳山市', '371083', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1610, 1502, '日照市', '371100', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1612, 1610, '东港区', '371102', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1613, 1610, '岚山区', '371103', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1614, 1610, '五莲县', '371121', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1615, 1610, '莒县', '371122', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1616, 1502, '莱芜市', '371200', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1618, 1616, '莱城区', '371202', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1619, 1616, '钢城区', '371203', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1620, 1502, '临沂市', '371300', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1622, 1620, '兰山区', '371302', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1623, 1620, '罗庄区', '371311', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1624, 1620, '河东区', '371312', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1625, 1620, '沂南县', '371321', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1626, 1620, '郯城县', '371322', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1627, 1620, '沂水县', '371323', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1628, 1620, '苍山县', '371324', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1629, 1620, '费县', '371325', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1630, 1620, '平邑县', '371326', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1631, 1620, '莒南县', '371327', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1632, 1620, '蒙阴县', '371328', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1633, 1620, '临沭县', '371329', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1634, 1502, '德州市', '371400', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1636, 1634, '德城区', '371402', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1637, 1634, '陵县', '371421', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1638, 1634, '宁津县', '371422', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1639, 1634, '庆云县', '371423', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1640, 1634, '临邑县', '371424', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1641, 1634, '齐河县', '371425', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1642, 1634, '平原县', '371426', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1643, 1634, '夏津县', '371427', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1644, 1634, '武城县', '371428', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1645, 1634, '乐陵市', '371481', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1646, 1634, '禹城市', '371482', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1647, 1502, '聊城市', '371500', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1649, 1647, '东昌府区', '371502', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1650, 1647, '阳谷县', '371521', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1651, 1647, '莘县', '371522', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1652, 1647, '茌平县', '371523', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1653, 1647, '东阿县', '371524', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1654, 1647, '冠县', '371525', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1655, 1647, '高唐县', '371526', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1656, 1647, '临清市', '371581', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1657, 1502, '滨州市', '371600', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1659, 1657, '滨城区', '371602', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1660, 1657, '惠民县', '371621', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1661, 1657, '阳信县', '371622', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1662, 1657, '无棣县', '371623', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1663, 1657, '沾化县', '371624', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1664, 1657, '博兴县', '371625', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1665, 1657, '邹平县', '371626', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1666, 1502, '菏泽市', '371700', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1668, 1666, '牡丹区', '371702', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1669, 1666, '曹县', '371721', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1670, 1666, '单县', '371722', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1671, 1666, '成武县', '371723', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1672, 1666, '巨野县', '371724', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1673, 1666, '郓城县', '371725', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1674, 1666, '鄄城县', '371726', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1675, 1666, '定陶县', '371727', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1676, 1666, '东明县', '371728', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1677, 0, '河南省', '410000', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1678, 1677, '郑州市', '410100', 'Z', 1);
INSERT INTO `tp_china_city` VALUES (1680, 1678, '中原区', '410102', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1681, 1678, '二七区', '410103', 'E', 0);
INSERT INTO `tp_china_city` VALUES (1682, 1678, '管城回族区', '410104', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1683, 1678, '金水区', '410105', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1684, 1678, '上街区', '410106', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1685, 1678, '惠济区', '410108', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1686, 1678, '中牟县', '410122', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1687, 1678, '巩义市', '410181', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1688, 1678, '荥阳市', '410182', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1689, 1678, '新密市', '410183', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1690, 1678, '新郑市', '410184', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1691, 1678, '登封市', '410185', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1692, 1677, '开封市', '410200', 'K', 0);
INSERT INTO `tp_china_city` VALUES (1694, 1692, '龙亭区', '410202', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1695, 1692, '顺河回族区', '410203', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1696, 1692, '鼓楼区', '410204', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1697, 1692, '禹王台区', '410205', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1698, 1692, '金明区', '410211', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1699, 1692, '杞县', '410221', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1700, 1692, '通许县', '410222', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1701, 1692, '尉氏县', '410223', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1702, 1692, '开封县', '410224', 'K', 0);
INSERT INTO `tp_china_city` VALUES (1703, 1692, '兰考县', '410225', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1704, 1677, '洛阳市', '410300', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1706, 1704, '老城区', '410302', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1707, 1704, '西工区', '410303', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1708, 1704, '瀍河回族区', '410304', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1709, 1704, '涧西区', '410305', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1710, 1704, '吉利区', '410306', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1711, 1704, '洛龙区', '410311', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1712, 1704, '孟津县', '410322', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1713, 1704, '新安县', '410323', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1714, 1704, '栾川县', '410324', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1715, 1704, '嵩县', '410325', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1716, 1704, '汝阳县', '410326', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1717, 1704, '宜阳县', '410327', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1718, 1704, '洛宁县', '410328', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1719, 1704, '伊川县', '410329', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1720, 1704, '偃师市', '410381', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1721, 1677, '平顶山市', '410400', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1723, 1721, '新华区', '410402', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1724, 1721, '卫东区', '410403', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1725, 1721, '石龙区', '410404', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1726, 1721, '湛河区', '410411', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1727, 1721, '宝丰县', '410421', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1728, 1721, '叶县', '410422', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1729, 1721, '鲁山县', '410423', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1730, 1721, '郏县', '410425', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1731, 1721, '舞钢市', '410481', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1732, 1721, '汝州市', '410482', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1733, 1677, '安阳市', '410500', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1735, 1733, '文峰区', '410502', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1736, 1733, '北关区', '410503', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1737, 1733, '殷都区', '410505', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1738, 1733, '龙安区', '410506', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1739, 1733, '安阳县', '410522', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1740, 1733, '汤阴县', '410523', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1741, 1733, '滑县', '410526', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1742, 1733, '内黄县', '410527', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1743, 1733, '林州市', '410581', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1744, 1677, '鹤壁市', '410600', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1746, 1744, '鹤山区', '410602', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1747, 1744, '山城区', '410603', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1748, 1744, '淇滨区', '410611', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1749, 1744, '浚县', '410621', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1750, 1744, '淇县', '410622', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1751, 1677, '新乡市', '410700', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1753, 1751, '红旗区', '410702', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1754, 1751, '卫滨区', '410703', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1755, 1751, '凤泉区', '410704', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1756, 1751, '牧野区', '410711', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1757, 1751, '新乡县', '410721', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1758, 1751, '获嘉县', '410724', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1759, 1751, '原阳县', '410725', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1760, 1751, '延津县', '410726', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1761, 1751, '封丘县', '410727', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1762, 1751, '长垣县', '410728', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1763, 1751, '卫辉市', '410781', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1764, 1751, '辉县市', '410782', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1765, 1677, '焦作市', '410800', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1767, 1765, '解放区', '410802', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1768, 1765, '中站区', '410803', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1769, 1765, '马村区', '410804', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1770, 1765, '山阳区', '410811', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1771, 1765, '修武县', '410821', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1772, 1765, '博爱县', '410822', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1773, 1765, '武陟县', '410823', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1774, 1765, '温县', '410825', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1775, 1765, '沁阳市', '410882', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1776, 1765, '孟州市', '410883', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1777, 1677, '濮阳市', '410900', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1779, 1777, '华龙区', '410902', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1780, 1777, '清丰县', '410922', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1781, 1777, '南乐县', '410923', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1782, 1777, '范县', '410926', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1783, 1777, '台前县', '410927', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1784, 1777, '濮阳县', '410928', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1785, 1677, '许昌市', '411000', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1787, 1785, '魏都区', '411002', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1788, 1785, '许昌县', '411023', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1789, 1785, '鄢陵县', '411024', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1790, 1785, '襄城县', '411025', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1791, 1785, '禹州市', '411081', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1792, 1785, '长葛市', '411082', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1793, 1677, '漯河市', '411100', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1795, 1793, '源汇区', '411102', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1796, 1793, '郾城区', '411103', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1797, 1793, '召陵区', '411104', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1798, 1793, '舞阳县', '411121', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1799, 1793, '临颍县', '411122', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1800, 1677, '三门峡市', '411200', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1802, 1800, '湖滨区', '411202', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1803, 1800, '渑池县', '411221', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1804, 1800, '陕县', '411222', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1805, 1800, '卢氏县', '411224', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1806, 1800, '义马市', '411281', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1807, 1800, '灵宝市', '411282', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1808, 1677, '南阳市', '411300', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1810, 1808, '宛城区', '411302', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1811, 1808, '卧龙区', '411303', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1812, 1808, '南召县', '411321', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1813, 1808, '方城县', '411322', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1814, 1808, '西峡县', '411323', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1815, 1808, '镇平县', '411324', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1816, 1808, '内乡县', '411325', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1817, 1808, '淅川县', '411326', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1818, 1808, '社旗县', '411327', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1819, 1808, '唐河县', '411328', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1820, 1808, '新野县', '411329', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1821, 1808, '桐柏县', '411330', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1822, 1808, '邓州市', '411381', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1823, 1677, '商丘市', '411400', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1825, 1823, '梁园区', '411402', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1826, 1823, '睢阳区', '411403', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1827, 1823, '民权县', '411421', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1828, 1823, '睢县', '411422', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1829, 1823, '宁陵县', '411423', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1830, 1823, '柘城县', '411424', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1831, 1823, '虞城县', '411425', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1832, 1823, '夏邑县', '411426', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1833, 1823, '永城市', '411481', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1834, 1677, '信阳市', '411500', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1836, 1834, '浉河区', '411502', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1837, 1834, '平桥区', '411503', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1838, 1834, '罗山县', '411521', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1839, 1834, '光山县', '411522', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1840, 1834, '新县', '411523', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1841, 1834, '商城县', '411524', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1842, 1834, '固始县', '411525', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1843, 1834, '潢川县', '411526', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1844, 1834, '淮滨县', '411527', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1845, 1834, '息县', '411528', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1846, 1677, '周口市', '411600', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1848, 1846, '川汇区', '411602', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1849, 1846, '扶沟县', '411621', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1850, 1846, '西华县', '411622', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1851, 1846, '商水县', '411623', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1852, 1846, '沈丘县', '411624', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1853, 1846, '郸城县', '411625', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1854, 1846, '淮阳县', '411626', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1855, 1846, '太康县', '411627', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1856, 1846, '鹿邑县', '411628', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1857, 1846, '项城市', '411681', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1858, 1677, '驻马店市', '411700', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1860, 1858, '驿城区', '411702', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1861, 1858, '西平县', '411721', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1862, 1858, '上蔡县', '411722', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1863, 1858, '平舆县', '411723', 'P', 0);
INSERT INTO `tp_china_city` VALUES (1864, 1858, '正阳县', '411724', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1865, 1858, '确山县', '411725', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1866, 1858, '泌阳县', '411726', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1867, 1858, '汝南县', '411727', 'R', 0);
INSERT INTO `tp_china_city` VALUES (1868, 1858, '遂平县', '411728', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1869, 1858, '新蔡县', '411729', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1870, 1677, '省直辖县级行政区划', '419000', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1871, 1870, '济源市', '419001', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1872, 0, '湖北省', '420000', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1873, 1872, '武汉市', '420100', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1875, 1873, '江岸区', '420102', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1876, 1873, '江汉区', '420103', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1877, 1873, '硚口区', '420104', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1878, 1873, '汉阳区', '420105', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1879, 1873, '武昌区', '420106', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1880, 1873, '青山区', '420107', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1881, 1873, '洪山区', '420111', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1882, 1873, '东西湖区', '420112', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1883, 1873, '汉南区', '420113', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1884, 1873, '蔡甸区', '420114', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1885, 1873, '江夏区', '420115', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1886, 1873, '黄陂区', '420116', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1887, 1873, '新洲区', '420117', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1888, 1872, '黄石市', '420200', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1890, 1888, '黄石港区', '420202', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1891, 1888, '西塞山区', '420203', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1892, 1888, '下陆区', '420204', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1893, 1888, '铁山区', '420205', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1894, 1888, '阳新县', '420222', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1895, 1888, '大冶市', '420281', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1896, 1872, '十堰市', '420300', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1898, 1896, '茅箭区', '420302', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1899, 1896, '张湾区', '420303', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1900, 1896, '郧县', '420321', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1901, 1896, '郧西县', '420322', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1902, 1896, '竹山县', '420323', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1903, 1896, '竹溪县', '420324', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1904, 1896, '房县', '420325', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1905, 1896, '丹江口市', '420381', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1906, 1872, '宜昌市', '420500', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1908, 1906, '西陵区', '420502', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1909, 1906, '伍家岗区', '420503', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1910, 1906, '点军区', '420504', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1911, 1906, '猇亭区', '420505', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1912, 1906, '夷陵区', '420506', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1913, 1906, '远安县', '420525', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1914, 1906, '兴山县', '420526', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1915, 1906, '秭归县', '420527', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1916, 1906, '长阳土家族自治县', '420528', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1917, 1906, '五峰土家族自治县', '420529', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1918, 1906, '宜都市', '420581', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1919, 1906, '当阳市', '420582', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1920, 1906, '枝江市', '420583', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1921, 1872, '襄樊市', '420600', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1923, 1921, '襄城区', '420602', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1924, 1921, '樊城区', '420606', 'F', 0);
INSERT INTO `tp_china_city` VALUES (1925, 1921, '襄阳区', '420607', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1926, 1921, '南漳县', '420624', 'N', 0);
INSERT INTO `tp_china_city` VALUES (1927, 1921, '谷城县', '420625', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1928, 1921, '保康县', '420626', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1929, 1921, '老河口市', '420682', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1930, 1921, '枣阳市', '420683', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1931, 1921, '宜城市', '420684', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1932, 1872, '鄂州市', '420700', 'E', 0);
INSERT INTO `tp_china_city` VALUES (1934, 1932, '梁子湖区', '420702', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1935, 1932, '华容区', '420703', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1936, 1932, '鄂城区', '420704', 'E', 0);
INSERT INTO `tp_china_city` VALUES (1937, 1872, '荆门市', '420800', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1939, 1937, '东宝区', '420802', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1940, 1937, '掇刀区', '420804', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1941, 1937, '京山县', '420821', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1942, 1937, '沙洋县', '420822', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1943, 1937, '钟祥市', '420881', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1944, 1872, '孝感市', '420900', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1946, 1944, '孝南区', '420902', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1947, 1944, '孝昌县', '420921', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1948, 1944, '大悟县', '420922', 'D', 0);
INSERT INTO `tp_china_city` VALUES (1949, 1944, '云梦县', '420923', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1950, 1944, '应城市', '420981', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1951, 1944, '安陆市', '420982', 'A', 0);
INSERT INTO `tp_china_city` VALUES (1952, 1944, '汉川市', '420984', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1953, 1872, '荆州市', '421000', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1955, 1953, '沙市区', '421002', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1956, 1953, '荆州区', '421003', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1957, 1953, '公安县', '421022', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1958, 1953, '监利县', '421023', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1959, 1953, '江陵县', '421024', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1960, 1953, '石首市', '421081', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1961, 1953, '洪湖市', '421083', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1962, 1953, '松滋市', '421087', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1963, 1872, '黄冈市', '421100', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1965, 1963, '黄州区', '421102', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1966, 1963, '团风县', '421121', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1967, 1963, '红安县', '421122', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1968, 1963, '罗田县', '421123', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1969, 1963, '英山县', '421124', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (1970, 1963, '浠水县', '421125', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1971, 1963, '蕲春县', '421126', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1972, 1963, '黄梅县', '421127', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1973, 1963, '麻城市', '421181', 'M', 0);
INSERT INTO `tp_china_city` VALUES (1974, 1963, '武穴市', '421182', 'W', 0);
INSERT INTO `tp_china_city` VALUES (1975, 1872, '咸宁市', '421200', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1977, 1975, '咸安区', '421202', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1978, 1975, '嘉鱼县', '421221', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1979, 1975, '通城县', '421222', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1980, 1975, '崇阳县', '421223', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1981, 1975, '通山县', '421224', 'T', 0);
INSERT INTO `tp_china_city` VALUES (1982, 1975, '赤壁市', '421281', 'C', 0);
INSERT INTO `tp_china_city` VALUES (1983, 1872, '随州市', '421300', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1985, 1983, '曾都区', '421302', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (1986, 1983, '广水市', '421381', 'G', 0);
INSERT INTO `tp_china_city` VALUES (1987, 1872, '恩施土家族苗族自治州', '422800', 'E', 0);
INSERT INTO `tp_china_city` VALUES (1988, 1987, '恩施市', '422801', 'E', 0);
INSERT INTO `tp_china_city` VALUES (1989, 1987, '利川市', '422802', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1990, 1987, '建始县', '422822', 'J', 0);
INSERT INTO `tp_china_city` VALUES (1991, 1987, '巴东县', '422823', 'B', 0);
INSERT INTO `tp_china_city` VALUES (1992, 1987, '宣恩县', '422825', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1993, 1987, '咸丰县', '422826', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1994, 1987, '来凤县', '422827', 'L', 0);
INSERT INTO `tp_china_city` VALUES (1995, 1987, '鹤峰县', '422828', 'H', 0);
INSERT INTO `tp_china_city` VALUES (1996, 1872, '省直辖县级行政区划', '429000', 'S', 0);
INSERT INTO `tp_china_city` VALUES (1997, 1996, '仙桃市', '429004', 'X', 0);
INSERT INTO `tp_china_city` VALUES (1998, 1996, '潜江市', '429005', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (1999, 1996, '天门市', '429006', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2000, 1996, '神农架林区', '429021', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2001, 0, '湖南省', '430000', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2002, 2001, '长沙市', '430100', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2004, 2002, '芙蓉区', '430102', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2005, 2002, '天心区', '430103', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2006, 2002, '岳麓区', '430104', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2007, 2002, '开福区', '430105', 'K', 0);
INSERT INTO `tp_china_city` VALUES (2008, 2002, '雨花区', '430111', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2009, 2002, '长沙县', '430121', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2010, 2002, '望城县', '430122', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2011, 2002, '宁乡县', '430124', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2012, 2002, '浏阳市', '430181', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2013, 2001, '株洲市', '430200', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2015, 2013, '荷塘区', '430202', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2016, 2013, '芦淞区', '430203', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2017, 2013, '石峰区', '430204', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2018, 2013, '天元区', '430211', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2019, 2013, '株洲县', '430221', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2020, 2013, '攸县', '430223', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2021, 2013, '茶陵县', '430224', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2022, 2013, '炎陵县', '430225', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2023, 2013, '醴陵市', '430281', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2024, 2001, '湘潭市', '430300', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2026, 2024, '雨湖区', '430302', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2027, 2024, '岳塘区', '430304', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2028, 2024, '湘潭县', '430321', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2029, 2024, '湘乡市', '430381', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2030, 2024, '韶山市', '430382', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2031, 2001, '衡阳市', '430400', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2033, 2031, '珠晖区', '430405', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2034, 2031, '雁峰区', '430406', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2035, 2031, '石鼓区', '430407', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2036, 2031, '蒸湘区', '430408', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2037, 2031, '南岳区', '430412', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2038, 2031, '衡阳县', '430421', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2039, 2031, '衡南县', '430422', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2040, 2031, '衡山县', '430423', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2041, 2031, '衡东县', '430424', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2042, 2031, '祁东县', '430426', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2043, 2031, '耒阳市', '430481', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2044, 2031, '常宁市', '430482', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2045, 2001, '邵阳市', '430500', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2047, 2045, '双清区', '430502', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2048, 2045, '大祥区', '430503', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2049, 2045, '北塔区', '430511', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2050, 2045, '邵东县', '430521', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2051, 2045, '新邵县', '430522', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2052, 2045, '邵阳县', '430523', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2053, 2045, '隆回县', '430524', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2054, 2045, '洞口县', '430525', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2055, 2045, '绥宁县', '430527', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2056, 2045, '新宁县', '430528', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2057, 2045, '城步苗族自治县', '430529', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2058, 2045, '武冈市', '430581', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2059, 2001, '岳阳市', '430600', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2061, 2059, '岳阳楼区', '430602', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2062, 2059, '云溪区', '430603', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2063, 2059, '君山区', '430611', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2064, 2059, '岳阳县', '430621', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2065, 2059, '华容县', '430623', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2066, 2059, '湘阴县', '430624', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2067, 2059, '平江县', '430626', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2068, 2059, '汨罗市', '430681', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2069, 2059, '临湘市', '430682', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2070, 2001, '常德市', '430700', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2072, 2070, '武陵区', '430702', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2073, 2070, '鼎城区', '430703', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2074, 2070, '安乡县', '430721', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2075, 2070, '汉寿县', '430722', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2076, 2070, '澧县', '430723', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2077, 2070, '临澧县', '430724', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2078, 2070, '桃源县', '430725', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2079, 2070, '石门县', '430726', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2080, 2070, '津市市', '430781', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2081, 2001, '张家界市', '430800', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2083, 2081, '永定区', '430802', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2084, 2081, '武陵源区', '430811', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2085, 2081, '慈利县', '430821', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2086, 2081, '桑植县', '430822', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2087, 2001, '益阳市', '430900', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2089, 2087, '资阳区', '430902', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2090, 2087, '赫山区', '430903', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2091, 2087, '南县', '430921', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2092, 2087, '桃江县', '430922', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2093, 2087, '安化县', '430923', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2094, 2087, '沅江市', '430981', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2095, 2001, '郴州市', '431000', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2097, 2095, '北湖区', '431002', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2098, 2095, '苏仙区', '431003', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2099, 2095, '桂阳县', '431021', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2100, 2095, '宜章县', '431022', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2101, 2095, '永兴县', '431023', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2102, 2095, '嘉禾县', '431024', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2103, 2095, '临武县', '431025', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2104, 2095, '汝城县', '431026', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2105, 2095, '桂东县', '431027', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2106, 2095, '安仁县', '431028', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2107, 2095, '资兴市', '431081', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2108, 2001, '永州市', '431100', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2110, 2108, '零陵区', '431102', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2111, 2108, '冷水滩区', '431103', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2112, 2108, '祁阳县', '431121', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2113, 2108, '东安县', '431122', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2114, 2108, '双牌县', '431123', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2115, 2108, '道县', '431124', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2116, 2108, '江永县', '431125', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2117, 2108, '宁远县', '431126', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2118, 2108, '蓝山县', '431127', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2119, 2108, '新田县', '431128', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2120, 2108, '江华瑶族自治县', '431129', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2121, 2001, '怀化市', '431200', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2123, 2121, '鹤城区', '431202', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2124, 2121, '中方县', '431221', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2125, 2121, '沅陵县', '431222', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2126, 2121, '辰溪县', '431223', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2127, 2121, '溆浦县', '431224', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2128, 2121, '会同县', '431225', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2129, 2121, '麻阳苗族自治县', '431226', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2130, 2121, '新晃侗族自治县', '431227', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2131, 2121, '芷江侗族自治县', '431228', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2132, 2121, '靖州苗族侗族自治县', '431229', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2133, 2121, '通道侗族自治县', '431230', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2134, 2121, '洪江市', '431281', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2135, 2001, '娄底市', '431300', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2137, 2135, '娄星区', '431302', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2138, 2135, '双峰县', '431321', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2139, 2135, '新化县', '431322', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2140, 2135, '冷水江市', '431381', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2141, 2135, '涟源市', '431382', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2142, 2001, '湘西土家族苗族自治州', '433100', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2143, 2142, '吉首市', '433101', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2144, 2142, '泸溪县', '433122', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2145, 2142, '凤凰县', '433123', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2146, 2142, '花垣县', '433124', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2147, 2142, '保靖县', '433125', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2148, 2142, '古丈县', '433126', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2149, 2142, '永顺县', '433127', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2150, 2142, '龙山县', '433130', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2151, 0, '广东省', '440000', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2152, 2151, '广州市', '440100', 'G', 1);
INSERT INTO `tp_china_city` VALUES (2154, 2152, '荔湾区', '440103', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2155, 2152, '越秀区', '440104', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2156, 2152, '海珠区', '440105', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2157, 2152, '天河区', '440106', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2158, 2152, '白云区', '440111', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2159, 2152, '黄埔区', '440112', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2160, 2152, '番禺区', '440113', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2161, 2152, '花都区', '440114', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2162, 2152, '南沙区', '440115', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2163, 2152, '萝岗区', '440116', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2164, 2152, '增城市', '440183', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2165, 2152, '从化市', '440184', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2166, 2151, '韶关市', '440200', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2168, 2166, '武江区', '440203', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2169, 2166, '浈江区', '440204', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2170, 2166, '曲江区', '440205', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2171, 2166, '始兴县', '440222', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2172, 2166, '仁化县', '440224', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2173, 2166, '翁源县', '440229', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2174, 2166, '乳源瑶族自治县', '440232', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2175, 2166, '新丰县', '440233', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2176, 2166, '乐昌市', '440281', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2177, 2166, '南雄市', '440282', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2178, 2151, '深圳市', '440300', 'S', 1);
INSERT INTO `tp_china_city` VALUES (2180, 2178, '罗湖区', '440303', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2181, 2178, '福田区', '440304', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2182, 2178, '南山区', '440305', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2183, 2178, '宝安区', '440306', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2184, 2178, '龙岗区', '440307', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2185, 2178, '盐田区', '440308', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2186, 2151, '珠海市', '440400', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2188, 2186, '香洲区', '440402', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2189, 2186, '斗门区', '440403', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2190, 2186, '金湾区', '440404', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2191, 2151, '汕头市', '440500', 'S', 1);
INSERT INTO `tp_china_city` VALUES (2193, 2191, '龙湖区', '440507', 'l', 0);
INSERT INTO `tp_china_city` VALUES (2194, 2191, '金平区', '440511', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2195, 2191, '濠江区', '440512', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2196, 2191, '潮阳区', '440513', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2197, 2191, '潮南区', '440514', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2198, 2191, '澄海区', '440515', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2199, 2191, '南澳县', '440523', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2200, 2151, '佛山市', '440600', 'F', 1);
INSERT INTO `tp_china_city` VALUES (2202, 2200, '禅城区', '440604', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2203, 2200, '南海区', '440605', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2204, 2200, '顺德区', '440606', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2205, 2200, '三水区', '440607', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2206, 2200, '高明区', '440608', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2207, 2151, '江门市', '440700', 'J', 1);
INSERT INTO `tp_china_city` VALUES (2209, 2207, '蓬江区', '440703', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2210, 2207, '江海区', '440704', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2211, 2207, '新会区', '440705', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2212, 2207, '台山市', '440781', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2213, 2207, '开平市', '440783', 'K', 0);
INSERT INTO `tp_china_city` VALUES (2214, 2207, '鹤山市', '440784', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2215, 2207, '恩平市', '440785', 'E', 0);
INSERT INTO `tp_china_city` VALUES (2216, 2151, '湛江市', '440800', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2218, 2216, '赤坎区', '440802', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2219, 2216, '霞山区', '440803', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2220, 2216, '坡头区', '440804', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2221, 2216, '麻章区', '440811', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2222, 2216, '遂溪县', '440823', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2223, 2216, '徐闻县', '440825', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2224, 2216, '廉江市', '440881', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2225, 2216, '雷州市', '440882', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2226, 2216, '吴川市', '440883', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2227, 2151, '茂名市', '440900', 'M', 1);
INSERT INTO `tp_china_city` VALUES (2229, 2227, '茂南区', '440902', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2230, 2227, '茂港区', '440903', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2231, 2227, '电白县', '440923', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2232, 2227, '高州市', '440981', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2233, 2227, '化州市', '440982', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2234, 2227, '信宜市', '440983', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2235, 2151, '肇庆市', '441200', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2237, 2235, '端州区', '441202', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2238, 2235, '鼎湖区', '441203', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2239, 2235, '广宁县', '441223', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2240, 2235, '怀集县', '441224', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2241, 2235, '封开县', '441225', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2242, 2235, '德庆县', '441226', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2243, 2235, '高要市', '441283', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2244, 2235, '四会市', '441284', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2245, 2151, '惠州市', '441300', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2247, 2245, '惠城区', '441302', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2248, 2245, '惠阳区', '441303', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2249, 2245, '博罗县', '441322', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2250, 2245, '惠东县', '441323', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2251, 2245, '龙门县', '441324', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2252, 2151, '梅州市', '441400', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2254, 2252, '梅江区', '441402', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2255, 2252, '梅县', '441421', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2256, 2252, '大埔县', '441422', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2257, 2252, '丰顺县', '441423', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2258, 2252, '五华县', '441424', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2259, 2252, '平远县', '441426', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2260, 2252, '蕉岭县', '441427', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2261, 2252, '兴宁市', '441481', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2262, 2151, '汕尾市', '441500', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2264, 2262, '城区', '441502', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2265, 2262, '海丰县', '441521', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2266, 2262, '陆河县', '441523', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2267, 2262, '陆丰市', '441581', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2268, 2151, '河源市', '441600', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2270, 2268, '源城区', '441602', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2271, 2268, '紫金县', '441621', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2272, 2268, '龙川县', '441622', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2273, 2268, '连平县', '441623', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2274, 2268, '和平县', '441624', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2275, 2268, '东源县', '441625', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2276, 2151, '阳江市', '441700', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2278, 2276, '江城区', '441702', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2279, 2276, '阳西县', '441721', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2280, 2276, '阳东县', '441723', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2281, 2276, '阳春市', '441781', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2282, 2151, '清远市', '441800', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2284, 2282, '清城区', '441802', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2285, 2282, '佛冈县', '441821', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2286, 2282, '阳山县', '441823', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2287, 2282, '连山壮族瑶族自治县', '441825', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2288, 2282, '连南瑶族自治县', '441826', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2289, 2282, '清新县', '441827', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2290, 2282, '英德市', '441881', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2291, 2282, '连州市', '441882', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2292, 2151, '东莞市', '441900', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2293, 2151, '中山市', '442000', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2294, 2151, '潮州市', '445100', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2296, 2294, '湘桥区', '445102', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2297, 2294, '潮安县', '445121', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2298, 2294, '饶平县', '445122', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2299, 2151, '揭阳市', '445200', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2301, 2299, '榕城区', '445202', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2302, 2299, '揭东县', '445221', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2303, 2299, '揭西县', '445222', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2304, 2299, '惠来县', '445224', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2305, 2299, '普宁市', '445281', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2306, 2151, '云浮市', '445300', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2308, 2306, '云城区', '445302', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2309, 2306, '新兴县', '445321', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2310, 2306, '郁南县', '445322', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2311, 2306, '云安县', '445323', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2312, 2306, '罗定市', '445381', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2313, 0, '广西壮族自治区', '450000', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2314, 2313, '南宁市', '450100', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2316, 2314, '兴宁区', '450102', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2317, 2314, '青秀区', '450103', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2318, 2314, '江南区', '450105', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2319, 2314, '西乡塘区', '450107', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2320, 2314, '良庆区', '450108', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2321, 2314, '邕宁区', '450109', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2322, 2314, '武鸣县', '450122', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2323, 2314, '隆安县', '450123', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2324, 2314, '马山县', '450124', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2325, 2314, '上林县', '450125', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2326, 2314, '宾阳县', '450126', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2327, 2314, '横县', '450127', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2328, 2313, '柳州市', '450200', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2330, 2328, '城中区', '450202', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2331, 2328, '鱼峰区', '450203', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2332, 2328, '柳南区', '450204', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2333, 2328, '柳北区', '450205', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2334, 2328, '柳江县', '450221', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2335, 2328, '柳城县', '450222', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2336, 2328, '鹿寨县', '450223', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2337, 2328, '融安县', '450224', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2338, 2328, '融水苗族自治县', '450225', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2339, 2328, '三江侗族自治县', '450226', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2340, 2313, '桂林市', '450300', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2342, 2340, '秀峰区', '450302', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2343, 2340, '叠彩区', '450303', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2344, 2340, '象山区', '450304', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2345, 2340, '七星区', '450305', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2346, 2340, '雁山区', '450311', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2347, 2340, '阳朔县', '450321', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2348, 2340, '临桂县', '450322', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2349, 2340, '灵川县', '450323', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2350, 2340, '全州县', '450324', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2351, 2340, '兴安县', '450325', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2352, 2340, '永福县', '450326', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2353, 2340, '灌阳县', '450327', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2354, 2340, '龙胜各族自治县', '450328', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2355, 2340, '资源县', '450329', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2356, 2340, '平乐县', '450330', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2357, 2340, '荔蒲县', '450331', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2358, 2340, '恭城瑶族自治县', '450332', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2359, 2313, '梧州市', '450400', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2361, 2359, '万秀区', '450403', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2362, 2359, '蝶山区', '450404', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2363, 2359, '长洲区', '450405', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2364, 2359, '苍梧县', '450421', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2365, 2359, '藤县', '450422', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2366, 2359, '蒙山县', '450423', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2367, 2359, '岑溪市', '450481', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2368, 2313, '北海市', '450500', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2370, 2368, '海城区', '450502', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2371, 2368, '银海区', '450503', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2372, 2368, '铁山港区', '450512', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2373, 2368, '合浦县', '450521', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2374, 2313, '防城港市', '450600', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2376, 2374, '港口区', '450602', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2377, 2374, '防城区', '450603', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2378, 2374, '上思县', '450621', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2379, 2374, '东兴市', '450681', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2380, 2313, '钦州市', '450700', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2382, 2380, '钦南区', '450702', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2383, 2380, '钦北区', '450703', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2384, 2380, '灵山县', '450721', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2385, 2380, '浦北县', '450722', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2386, 2313, '贵港市', '450800', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2388, 2386, '港北区', '450802', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2389, 2386, '港南区', '450803', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2390, 2386, '覃塘区', '450804', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2391, 2386, '平南县', '450821', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2392, 2386, '桂平市', '450881', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2393, 2313, '玉林市', '450900', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2395, 2393, '玉州区', '450902', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2396, 2393, '容县', '450921', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2397, 2393, '陆川县', '450922', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2398, 2393, '博白县', '450923', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2399, 2393, '兴业县', '450924', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2400, 2393, '北流市', '450981', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2401, 2313, '百色市', '451000', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2403, 2401, '右江区', '451002', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2404, 2401, '田阳县', '451021', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2405, 2401, '田东县', '451022', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2406, 2401, '平果县', '451023', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2407, 2401, '德保县', '451024', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2408, 2401, '靖西县', '451025', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2409, 2401, '那坡县', '451026', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2410, 2401, '凌云县', '451027', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2411, 2401, '乐业县', '451028', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2412, 2401, '田林县', '451029', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2413, 2401, '西林县', '451030', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2414, 2401, '隆林各族自治县', '451031', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2415, 2313, '贺州市', '451100', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2417, 2415, '八步区', '451102', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2418, 2415, '昭平县', '451121', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2419, 2415, '钟山县', '451122', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2420, 2415, '富川瑶族自治县', '451123', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2421, 2313, '河池市', '451200', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2423, 2421, '金城江区', '451202', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2424, 2421, '南丹县', '451221', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2425, 2421, '天峨县', '451222', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2426, 2421, '凤山县', '451223', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2427, 2421, '东兰县', '451224', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2428, 2421, '罗城仫佬族自治县', '451225', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2429, 2421, '环江毛南族自治县', '451226', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2430, 2421, '巴马瑶族自治县', '451227', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2431, 2421, '都安瑶族自治县', '451228', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2432, 2421, '大化瑶族自治县', '451229', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2433, 2421, '宜州市', '451281', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2434, 2313, '来宾市', '451300', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2436, 2434, '兴宾区', '451302', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2437, 2434, '忻城县', '451321', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2438, 2434, '象州县', '451322', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2439, 2434, '武宣县', '451323', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2440, 2434, '金秀瑶族自治县', '451324', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2441, 2434, '合山市', '451381', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2442, 2313, '崇左市', '451400', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2444, 2442, '江洲区', '451402', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2445, 2442, '扶绥县', '451421', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2446, 2442, '宁明县', '451422', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2447, 2442, '龙州县', '451423', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2448, 2442, '大新县', '451424', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2449, 2442, '天等县', '451425', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2450, 2442, '凭祥市', '451481', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2451, 0, '海南省', '460000', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2452, 2451, '海口市', '460100', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2454, 2452, '秀英区', '460105', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2455, 2452, '龙华区', '460106', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2456, 2452, '琼山区', '460107', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2457, 2452, '美兰区', '460108', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2458, 2451, '三亚市', '460200', 'S', 1);
INSERT INTO `tp_china_city` VALUES (2460, 2451, '省直辖县级行政区划', '469000', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2461, 2460, '五指山市', '469001', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2462, 2460, '琼海市', '469002', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2463, 2460, '儋州市', '469003', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2464, 2460, '文昌市', '469005', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2465, 2460, '万宁市', '469006', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2466, 2460, '东方市', '469007', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2467, 2460, '定安县', '469021', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2468, 2460, '屯昌县', '469022', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2469, 2460, '澄迈县', '469023', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2470, 2460, '临高县', '469024', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2471, 2460, '白沙黎族自治县', '469025', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2472, 2460, '昌江黎族自治县', '469026', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2473, 2460, '乐东黎族自治县', '469027', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2474, 2460, '陵水黎族自治县', '469028', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2475, 2460, '保亭黎族苗族自治县', '469029', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2476, 2460, '琼中黎族苗族自治县', '469030', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2477, 2460, '西沙群岛', '469031', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2478, 2460, '南沙群岛', '469032', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2479, 2460, '中沙群岛的岛礁及其海域', '469033', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2480, 0, '重庆市', '500000', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2481, 2480, '重庆市', '500000', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2482, 2481, '万州区', '500101', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2483, 2481, '涪陵区', '500102', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2484, 2481, '渝中区', '500103', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2485, 2481, '大渡口区', '500104', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2486, 2481, '江北区', '500105', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2487, 2481, '沙坪坝区', '500106', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2488, 2481, '九龙坡区', '500107', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2489, 2481, '南岸区', '500108', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2490, 2481, '北碚区', '500109', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2491, 2481, '万盛区', '500110', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2492, 2481, '双桥区', '500111', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2493, 2481, '渝北区', '500112', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2494, 2481, '巴南区', '500113', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2495, 2481, '黔江区', '500114', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2496, 2481, '长寿区', '500115', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2497, 2481, '江津区', '500116', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2498, 2481, '合川区', '500117', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2499, 2481, '永川区', '500118', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2500, 2481, '南川区', '500119', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2501, 2480, '县', '500200', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2502, 2501, '綦江县', '500222', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2503, 2501, '潼南县', '500223', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2504, 2501, '铜梁县', '500224', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2505, 2501, '大足县', '500225', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2506, 2501, '荣昌县', '500226', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2507, 2501, '璧山县', '500227', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2508, 2501, '梁平县', '500228', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2509, 2501, '城口县', '500229', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2510, 2501, '丰都县', '500230', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2511, 2501, '垫江县', '500231', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2512, 2501, '武隆县', '500232', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2513, 2501, '忠县', '500233', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2514, 2501, '开县', '500234', 'K', 0);
INSERT INTO `tp_china_city` VALUES (2515, 2501, '云阳县', '500235', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2516, 2501, '奉节县', '500236', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2517, 2501, '巫山县', '500237', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2518, 2501, '巫溪县', '500238', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2519, 2501, '石柱土家族自治县', '500240', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2520, 2501, '秀山土家族苗族自治县', '500241', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2521, 2501, '酉阳土家族苗族自治县', '500242', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2522, 2501, '彭水苗族土家族自治县', '500243', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2523, 0, '四川省', '510000', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2524, 2523, '成都市', '510100', 'C', 1);
INSERT INTO `tp_china_city` VALUES (2526, 2524, '锦江区', '510104', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2527, 2524, '青羊区', '510105', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2528, 2524, '金牛区', '510106', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2529, 2524, '武侯区', '510107', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2530, 2524, '成华区', '510108', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2531, 2524, '龙泉驿区', '510112', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2532, 2524, '青白江区', '510113', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2533, 2524, '新都区', '510114', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2534, 2524, '温江区', '510115', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2535, 2524, '金堂县', '510121', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2536, 2524, '双流县', '510122', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2537, 2524, '郫县', '510124', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2538, 2524, '大邑县', '510129', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2539, 2524, '蒲江县', '510131', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2540, 2524, '新津县', '510132', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2541, 2524, '都江堰市', '510181', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2542, 2524, '彭州市', '510182', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2543, 2524, '邛崃市', '510183', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2544, 2524, '崇州市', '510184', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2545, 2523, '自贡市', '510300', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2547, 2545, '自流井区', '510302', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2548, 2545, '贡井区', '510303', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2549, 2545, '大安区', '510304', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2550, 2545, '沿滩区', '510311', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2551, 2545, '荣县', '510321', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2552, 2545, '富顺县', '510322', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2553, 2523, '攀枝花市', '510400', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2555, 2553, '东区', '510402', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2556, 2553, '西区', '510403', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2557, 2553, '仁和区', '510411', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2558, 2553, '米易县', '510421', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2559, 2553, '盐边县', '510422', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2560, 2523, '泸州市', '510500', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2562, 2560, '江阳区', '510502', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2563, 2560, '纳溪区', '510503', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2564, 2560, '龙马潭区', '510504', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2565, 2560, '泸县', '510521', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2566, 2560, '合江县', '510522', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2567, 2560, '叙永县', '510524', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2568, 2560, '古蔺县', '510525', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2569, 2523, '德阳市', '510600', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2571, 2569, '旌阳区', '510603', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2572, 2569, '中江县', '510623', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2573, 2569, '罗江县', '510626', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2574, 2569, '广汉市', '510681', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2575, 2569, '什邡市', '510682', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2576, 2569, '绵竹市', '510683', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2577, 2523, '绵阳市', '510700', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2579, 2577, '涪城区', '510703', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2580, 2577, '游仙区', '510704', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2581, 2577, '三台县', '510722', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2582, 2577, '盐亭县', '510723', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2583, 2577, '安县', '510724', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2584, 2577, '梓潼县', '510725', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2585, 2577, '北川羌族自治县', '510726', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2586, 2577, '平武县', '510727', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2587, 2577, '江油市', '510781', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2588, 2523, '广元市', '510800', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2590, 2588, '市中区', '510802', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2591, 2588, '元坝区', '510811', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2592, 2588, '朝天区', '510812', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2593, 2588, '旺苍县', '510821', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2594, 2588, '青川县', '510822', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2595, 2588, '剑阁县', '510823', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2596, 2588, '苍溪县', '510824', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2597, 2523, '遂宁市', '510900', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2599, 2597, '船山区', '510903', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2600, 2597, '安居区', '510904', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2601, 2597, '蓬溪县', '510921', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2602, 2597, '射洪县', '510922', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2603, 2597, '大英县', '510923', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2604, 2523, '内江市', '511000', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2606, 2604, '市中区', '511002', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2607, 2604, '东兴区', '511011', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2608, 2604, '威远县', '511024', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2609, 2604, '资中县', '511025', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2610, 2604, '隆昌县', '511028', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2611, 2523, '乐山市', '511100', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2613, 2611, '市中区', '511102', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2614, 2611, '沙湾区', '511111', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2615, 2611, '五通桥区', '511112', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2616, 2611, '金口河区', '511113', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2617, 2611, '犍为县', '511123', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2618, 2611, '井研县', '511124', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2619, 2611, '夹江县', '511126', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2620, 2611, '沐川县', '511129', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2621, 2611, '峨边彝族自治县', '511132', 'E', 0);
INSERT INTO `tp_china_city` VALUES (2622, 2611, '马边彝族自治县', '511133', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2623, 2611, '峨眉山市', '511181', 'E', 0);
INSERT INTO `tp_china_city` VALUES (2624, 2523, '南充市', '511300', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2626, 2624, '顺庆区', '511302', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2627, 2624, '高坪区', '511303', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2628, 2624, '嘉陵区', '511304', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2629, 2624, '南部县', '511321', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2630, 2624, '营山县', '511322', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2631, 2624, '蓬安县', '511323', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2632, 2624, '仪陇县', '511324', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2633, 2624, '西充县', '511325', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2634, 2624, '阆中市', '511381', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2635, 2523, '眉山市', '511400', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2637, 2635, '东坡区', '511402', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2638, 2635, '仁寿县', '511421', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2639, 2635, '彭山县', '511422', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2640, 2635, '洪雅县', '511423', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2641, 2635, '丹棱县', '511424', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2642, 2635, '青神县', '511425', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2643, 2523, '宜宾市', '511500', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2645, 2643, '翠屏区', '511502', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2646, 2643, '宜宾县', '511521', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2647, 2643, '南溪县', '511522', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2648, 2643, '江安县', '511523', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2649, 2643, '长宁县', '511524', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2650, 2643, '高县', '511525', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2651, 2643, '珙县', '511526', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2652, 2643, '筠连县', '511527', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2653, 2643, '兴文县', '511528', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2654, 2643, '屏山县', '511529', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2655, 2523, '广安市', '511600', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2657, 2655, '广安区', '511602', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2658, 2655, '岳池县', '511621', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2659, 2655, '武胜县', '511622', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2660, 2655, '邻水县', '511623', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2661, 2655, '华蓥市', '511681', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2662, 2523, '达州市', '511700', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2664, 2662, '通川区', '511702', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2665, 2662, '达县', '511721', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2666, 2662, '宣汉县', '511722', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2667, 2662, '开江县', '511723', 'K', 0);
INSERT INTO `tp_china_city` VALUES (2668, 2662, '大竹县', '511724', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2669, 2662, '渠县', '511725', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2670, 2662, '万源市', '511781', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2671, 2523, '雅安市', '511800', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2673, 2671, '雨城区', '511802', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2674, 2671, '名山县', '511821', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2675, 2671, '荥经县', '511822', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2676, 2671, '汉源县', '511823', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2677, 2671, '石棉县', '511824', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2678, 2671, '天全县', '511825', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2679, 2671, '芦山县', '511826', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2680, 2671, '宝兴县', '511827', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2681, 2523, '巴中市', '511900', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2683, 2681, '巴州区', '511902', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2684, 2681, '通江县', '511921', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2685, 2681, '南江县', '511922', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2686, 2681, '平昌县', '511923', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2687, 2523, '资阳市', '512000', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2689, 2687, '雁江区', '512002', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2690, 2687, '安岳县', '512021', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2691, 2687, '乐至县', '512022', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2692, 2687, '简阳市', '512081', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2693, 2523, '阿坝藏族羌族自治州', '513200', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2694, 2693, '汶川县', '513221', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2695, 2693, '理县', '513222', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2696, 2693, '茂县', '513223', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2697, 2693, '松潘县', '513224', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2698, 2693, '九寨沟县', '513225', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2699, 2693, '金川县', '513226', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2700, 2693, '小金县', '513227', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2701, 2693, '黑水县', '513228', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2702, 2693, '马尔康县', '513229', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2703, 2693, '壤塘县', '513230', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2704, 2693, '阿坝县', '513231', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2705, 2693, '若尔盖县', '513232', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2706, 2693, '红原县', '513233', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2707, 2523, '甘孜藏族自治州', '513300', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2708, 2707, '康定县', '513321', 'K', 0);
INSERT INTO `tp_china_city` VALUES (2709, 2707, '泸定县', '513322', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2710, 2707, '丹巴县', '513323', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2711, 2707, '九龙县', '513324', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2712, 2707, '雅江县', '513325', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2713, 2707, '道孚县', '513326', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2714, 2707, '炉霍县', '513327', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2715, 2707, '甘孜县', '513328', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2716, 2707, '新龙县', '513329', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2717, 2707, '德格县', '513330', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2718, 2707, '白玉县', '513331', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2719, 2707, '石渠县', '513332', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2720, 2707, '色达县', '513333', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2721, 2707, '理塘县', '513334', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2722, 2707, '巴塘县', '513335', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2723, 2707, '乡城县', '513336', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2724, 2707, '稻城县', '513337', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2725, 2707, '得荣县', '513338', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2726, 2523, '凉山彝族自治州', '513400', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2727, 2726, '西昌市', '513401', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2728, 2726, '木里藏族自治县', '513422', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2729, 2726, '盐源县', '513423', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2730, 2726, '德昌县', '513424', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2731, 2726, '会理县', '513425', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2732, 2726, '会东县', '513426', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2733, 2726, '宁南县', '513427', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2734, 2726, '普格县', '513428', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2735, 2726, '布拖县', '513429', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2736, 2726, '金阳县', '513430', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2737, 2726, '昭觉县', '513431', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2738, 2726, '喜德县', '513432', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2739, 2726, '冕宁县', '513433', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2740, 2726, '越西县', '513434', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2741, 2726, '甘洛县', '513435', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2742, 2726, '美姑县', '513436', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2743, 2726, '雷波县', '513437', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2744, 0, '贵州省', '520000', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2745, 2744, '贵阳市', '520100', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2747, 2745, '南明区', '520102', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2748, 2745, '云岩区', '520103', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2749, 2745, '花溪区', '520111', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2750, 2745, '乌当区', '520112', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2751, 2745, '白云区', '520113', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2752, 2745, '小河区', '520114', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2753, 2745, '开阳县', '520121', 'K', 0);
INSERT INTO `tp_china_city` VALUES (2754, 2745, '息烽县', '520122', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2755, 2745, '修文县', '520123', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2756, 2745, '清镇市', '520181', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2757, 2744, '六盘水市', '520200', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2758, 2757, '钟山区', '520201', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2759, 2757, '六枝特区', '520203', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2760, 2757, '水城县', '520221', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2761, 2757, '盘县', '520222', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2762, 2744, '遵义市', '520300', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2764, 2762, '红花岗区', '520302', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2765, 2762, '汇川区', '520303', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2766, 2762, '遵义县', '520321', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2767, 2762, '桐梓县', '520322', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2768, 2762, '绥阳县', '520323', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2769, 2762, '正安县', '520324', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2770, 2762, '道真仡佬族苗族自治县', '520325', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2771, 2762, '务川仡佬族苗族自治县', '520326', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2772, 2762, '凤冈县', '520327', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2773, 2762, '湄潭县', '520328', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2774, 2762, '余庆县', '520329', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2775, 2762, '习水县', '520330', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2776, 2762, '赤水市', '520381', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2777, 2762, '仁怀市', '520382', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2778, 2744, '安顺市', '520400', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2780, 2778, '西秀区', '520402', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2781, 2778, '平坝县', '520421', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2782, 2778, '普定县', '520422', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2783, 2778, '镇宁布依族苗族自治县', '520423', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2784, 2778, '关岭布依族苗族自治县', '520424', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2785, 2778, '紫云苗族布依族自治县', '520425', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2786, 2744, '铜仁地区', '522200', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2787, 2786, '铜仁市', '522201', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2788, 2786, '江口县', '522222', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2789, 2786, '玉屏侗族自治县', '522223', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2790, 2786, '石阡县', '522224', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2791, 2786, '思南县', '522225', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2792, 2786, '印江土家族苗族自治县', '522226', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2793, 2786, '德江县', '522227', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2794, 2786, '沿河土家族自治县', '522228', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2795, 2786, '松桃苗族自治县', '522229', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2796, 2786, '万山特区', '522230', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2797, 2744, '黔西南布依族苗族自治州', '522300', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2798, 2797, '兴义市', '522301', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2799, 2797, '兴仁县', '522322', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2800, 2797, '普安县', '522323', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2801, 2797, '晴隆县', '522324', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2802, 2797, '贞丰县', '522325', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2803, 2797, '望谟县', '522326', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2804, 2797, '册亨县', '522327', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2805, 2797, '安龙县', '522328', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2806, 2744, '毕节地区', '522400', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2807, 2806, '毕节市', '522401', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2808, 2806, '大方县', '522422', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2809, 2806, '黔西县', '522423', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2810, 2806, '金沙县', '522424', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2811, 2806, '织金县', '522425', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2812, 2806, '纳雍县', '522426', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2813, 2806, '威宁彝族回族苗族自治县', '522427', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2814, 2806, '赫章县', '522428', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2815, 2744, '黔东南苗族侗族自治州', '522600', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2816, 2815, '凯里市', '522601', 'K', 0);
INSERT INTO `tp_china_city` VALUES (2817, 2815, '黄平县', '522622', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2818, 2815, '施秉县', '522623', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2819, 2815, '三穗县', '522624', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2820, 2815, '镇远县', '522625', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2821, 2815, '岑巩县', '522626', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2822, 2815, '天柱县', '522627', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2823, 2815, '锦屏县', '522628', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2824, 2815, '剑河县', '522629', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2825, 2815, '台江县', '522630', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2826, 2815, '黎平县', '522631', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2827, 2815, '榕江县', '522632', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2828, 2815, '从江县', '522633', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2829, 2815, '雷山县', '522634', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2830, 2815, '麻江县', '522635', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2831, 2815, '丹寨县', '522636', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2832, 2744, '黔南布依族苗族自治州', '522700', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2833, 2832, '都匀市', '522701', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2834, 2832, '福泉市', '522702', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2835, 2832, '荔波县', '522722', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2836, 2832, '贵定县', '522723', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2837, 2832, '瓮安县', '522725', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2838, 2832, '独山县', '522726', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2839, 2832, '平塘县', '522727', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2840, 2832, '罗甸县', '522728', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2841, 2832, '长顺县', '522729', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2842, 2832, '龙里县', '522730', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2843, 2832, '惠水县', '522731', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2844, 2832, '三都水族自治县', '522732', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2845, 0, '云南省', '530000', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2846, 2845, '昆明市', '530100', 'K', 0);
INSERT INTO `tp_china_city` VALUES (2848, 2846, '五华区', '530102', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2849, 2846, '盘龙区', '530103', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2850, 2846, '官渡区', '530111', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2851, 2846, '西山区', '530112', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2852, 2846, '东川区', '530113', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2853, 2846, '呈贡县', '530121', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2854, 2846, '晋宁县', '530122', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2855, 2846, '富民县', '530124', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2856, 2846, '宜良县', '530125', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2857, 2846, '石林彝族自治县', '530126', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2858, 2846, '嵩明县', '530127', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2859, 2846, '禄劝彝族苗族自治县', '530128', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2860, 2846, '寻甸回族彝族自治县', '530129', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2861, 2846, '安宁市', '530181', 'A', 0);
INSERT INTO `tp_china_city` VALUES (2862, 2845, '曲靖市', '530300', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2864, 2862, '麒麟区', '530302', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2865, 2862, '马龙县', '530321', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2866, 2862, '陆良县', '530322', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2867, 2862, '师宗县', '530323', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2868, 2862, '罗平县', '530324', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2869, 2862, '富源县', '530325', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2870, 2862, '会泽县', '530326', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2871, 2862, '沾益县', '530328', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2872, 2862, '宣威市', '530381', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2873, 2845, '玉溪市', '530400', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2875, 2873, '红塔区', '530402', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2876, 2873, '江川县', '530421', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2877, 2873, '澄江县', '530422', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2878, 2873, '通海县', '530423', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2879, 2873, '华宁县', '530424', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2880, 2873, '易门县', '530425', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2881, 2873, '峨山彝族自治县', '530426', 'E', 0);
INSERT INTO `tp_china_city` VALUES (2882, 2873, '新平彝族傣族自治县', '530427', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2883, 2873, '元江哈尼族彝族傣族自治县', '530428', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2884, 2845, '保山市', '530500', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2886, 2884, '隆阳区', '530502', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2887, 2884, '施甸县', '530521', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2888, 2884, '腾冲县', '530522', 'T', 0);
INSERT INTO `tp_china_city` VALUES (2889, 2884, '龙陵县', '530523', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2890, 2884, '昌宁县', '530524', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2891, 2845, '昭通市', '530600', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2893, 2891, '昭阳区', '530602', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2894, 2891, '鲁甸县', '530621', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2895, 2891, '巧家县', '530622', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2896, 2891, '盐津县', '530623', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2897, 2891, '大关县', '530624', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2898, 2891, '永善县', '530625', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2899, 2891, '绥江县', '530626', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2900, 2891, '镇雄县', '530627', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2901, 2891, '彝良县', '530628', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2902, 2891, '威信县', '530629', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2903, 2891, '水富县', '530630', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2904, 2845, '丽江市', '530700', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2906, 2904, '古城区', '530702', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2907, 2904, '玉龙纳西族自治县', '530721', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2908, 2904, '永胜县', '530722', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2909, 2904, '华坪县', '530723', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2910, 2904, '宁蒗彝族自治县', '530724', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2911, 2845, '普洱市', '530800', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2913, 2911, '思茅区', '530802', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2914, 2911, '宁洱哈尼族彝族自治县', '530821', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2915, 2911, '墨江哈尼族自治县', '530822', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2916, 2911, '景东彝族自治县', '530823', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2917, 2911, '景谷傣族彝族自治县', '530824', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2918, 2911, '镇沅彝族哈尼族拉祜族自治县', '530825', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2919, 2911, '江城哈尼族彝族自治县', '530826', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2920, 2911, '孟连傣族拉祜族佤族自治县', '530827', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2921, 2911, '澜沧拉祜族自治县', '530828', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2922, 2911, '西盟佤族自治县', '530829', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2923, 2845, '临沧市', '530900', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2925, 2923, '临翔区', '530902', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2926, 2923, '凤庆县', '530921', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2927, 2923, '云县', '530922', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2928, 2923, '永德县', '530923', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2929, 2923, '镇康县', '530924', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (2930, 2923, '双江拉祜族佤族布朗族傣族自治县', '530925', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2931, 2923, '耿马傣族佤族自治县', '530926', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2932, 2923, '沧源佤族自治县', '530927', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2933, 2845, '楚雄彝族自治州', '532300', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2934, 2933, '楚雄市', '532301', 'C', 0);
INSERT INTO `tp_china_city` VALUES (2935, 2933, '双柏县', '532322', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2936, 2933, '牟定县', '532323', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2937, 2933, '南华县', '532324', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2938, 2933, '姚安县', '532325', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2939, 2933, '大姚县', '532326', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2940, 2933, '永仁县', '532327', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2941, 2933, '元谋县', '532328', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2942, 2933, '武定县', '532329', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2943, 2933, '禄丰县', '532331', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2944, 2845, '红河哈尼族彝族自治州', '532500', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2945, 2944, '个旧市', '532501', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2946, 2944, '开远市', '532502', 'K', 0);
INSERT INTO `tp_china_city` VALUES (2947, 2944, '蒙自县', '532522', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2948, 2944, '屏边苗族自治县', '532523', 'P', 0);
INSERT INTO `tp_china_city` VALUES (2949, 2944, '建水县', '532524', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2950, 2944, '石屏县', '532525', 'S', 0);
INSERT INTO `tp_china_city` VALUES (2951, 2944, '弥勒县', '532526', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2952, 2944, '泸西县', '532527', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2953, 2944, '元阳县', '532528', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2954, 2944, '红河县', '532529', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2955, 2944, '金平苗族瑶族傣族自治县', '532530', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2956, 2944, '绿春县', '532531', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2957, 2944, '河口瑶族自治县', '532532', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2958, 2845, '文山壮族苗族自治州', '532600', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2959, 2958, '文山县', '532621', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2960, 2958, '砚山县', '532622', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2961, 2958, '西畴县', '532623', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2962, 2958, '麻栗坡县', '532624', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2963, 2958, '马关县', '532625', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2964, 2958, '丘北县', '532626', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (2965, 2958, '广南县', '532627', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2966, 2958, '富宁县', '532628', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2967, 2845, '西双版纳傣族自治州', '532800', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2968, 2967, '景洪市', '532801', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2969, 2967, '勐海县', '532822', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2970, 2967, '勐腊县', '532823', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2971, 2845, '大理白族自治州', '532900', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2972, 2971, '大理市', '532901', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2973, 2971, '漾濞彝族自治县', '532922', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2974, 2971, '祥云县', '532923', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2975, 2971, '宾川县', '532924', 'B', 0);
INSERT INTO `tp_china_city` VALUES (2976, 2971, '弥渡县', '532925', 'M', 0);
INSERT INTO `tp_china_city` VALUES (2977, 2971, '南涧彝族自治县', '532926', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2978, 2971, '巍山彝族回族自治县', '532927', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2979, 2971, '永平县', '532928', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2980, 2971, '云龙县', '532929', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2981, 2971, '洱源县', '532930', 'E', 0);
INSERT INTO `tp_china_city` VALUES (2982, 2971, '剑川县', '532931', 'J', 0);
INSERT INTO `tp_china_city` VALUES (2983, 2971, '鹤庆县', '532932', 'H', 0);
INSERT INTO `tp_china_city` VALUES (2984, 2845, '德宏傣族景颇族自治州', '533100', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2985, 2984, '瑞丽市', '533102', 'R', 0);
INSERT INTO `tp_china_city` VALUES (2986, 2984, '潞西市', '533103', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2987, 2984, '梁河县', '533122', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2988, 2984, '盈江县', '533123', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (2989, 2984, '陇川县', '533124', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2990, 2845, '怒江傈僳族自治州', '533300', 'N', 0);
INSERT INTO `tp_china_city` VALUES (2991, 2990, '泸水县', '533321', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2992, 2990, '福贡县', '533323', 'F', 0);
INSERT INTO `tp_china_city` VALUES (2993, 2990, '贡山独龙族怒族自治县', '533324', 'G', 0);
INSERT INTO `tp_china_city` VALUES (2994, 2990, '兰坪白族普米族自治县', '533325', 'L', 0);
INSERT INTO `tp_china_city` VALUES (2995, 2845, '迪庆藏族自治州', '533400', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2996, 2995, '香格里拉县', '533421', 'X', 0);
INSERT INTO `tp_china_city` VALUES (2997, 2995, '德钦县', '533422', 'D', 0);
INSERT INTO `tp_china_city` VALUES (2998, 2995, '维西傈僳族自治县', '533423', 'W', 0);
INSERT INTO `tp_china_city` VALUES (2999, 0, '西藏自治区', '540000', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3000, 2999, '拉萨市', '540100', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3002, 3000, '城关区', '540102', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3003, 3000, '林周县', '540121', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3004, 3000, '当雄县', '540122', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3005, 3000, '尼木县', '540123', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3006, 3000, '曲水县', '540124', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3007, 3000, '堆龙德庆县', '540125', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3008, 3000, '达孜县', '540126', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3009, 3000, '墨竹工卡县', '540127', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3010, 2999, '昌都地区', '542100', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3011, 3010, '昌都县', '542121', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3012, 3010, '江达县', '542122', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3013, 3010, '贡觉县', '542123', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3014, 3010, '类乌齐县', '542124', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3015, 3010, '丁青县', '542125', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3016, 3010, '察雅县', '542126', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3017, 3010, '八宿县', '542127', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3018, 3010, '左贡县', '542128', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3019, 3010, '芒康县', '542129', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3020, 3010, '洛隆县', '542132', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3021, 3010, '边坝县', '542133', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3022, 2999, '山南地区', '542200', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3023, 3022, '乃东县', '542221', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3024, 3022, '扎囊县', '542222', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3025, 3022, '贡嘎县', '542223', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3026, 3022, '桑日县', '542224', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3027, 3022, '琼结县', '542225', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3028, 3022, '曲松县', '542226', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3029, 3022, '措美县', '542227', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3030, 3022, '洛扎县', '542228', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3031, 3022, '加查县', '542229', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3032, 3022, '隆子县', '542231', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3033, 3022, '错那县', '542232', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3034, 3022, '浪卡子县', '542233', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3035, 2999, '日喀则地区', '542300', 'R', 0);
INSERT INTO `tp_china_city` VALUES (3036, 3035, '日喀则市', '542301', 'R', 0);
INSERT INTO `tp_china_city` VALUES (3037, 3035, '南木林县', '542322', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3038, 3035, '江孜县', '542323', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3039, 3035, '定日县', '542324', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3040, 3035, '萨迦县', '542325', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3041, 3035, '拉孜县', '542326', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3042, 3035, '昂仁县', '542327', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3043, 3035, '谢通门县', '542328', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3044, 3035, '白朗县', '542329', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3045, 3035, '仁布县', '542330', 'R', 0);
INSERT INTO `tp_china_city` VALUES (3046, 3035, '康马县', '542331', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3047, 3035, '定结县', '542332', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3048, 3035, '仲巴县', '542333', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3049, 3035, '亚东县', '542334', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3050, 3035, '吉隆县', '542335', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3051, 3035, '聂拉木县', '542336', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3052, 3035, '萨嘎县', '542337', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3053, 3035, '岗巴县', '542338', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3054, 2999, '那曲地区', '542400', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3055, 3054, '那曲县', '542421', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3056, 3054, '嘉黎县', '542422', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3057, 3054, '比如县', '542423', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3058, 3054, '聂荣县', '542424', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3059, 3054, '安多县', '542425', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3060, 3054, '申扎县', '542426', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3061, 3054, '索县', '542427', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3062, 3054, '班戈县', '542428', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3063, 3054, '巴青县', '542429', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3064, 3054, '尼玛县', '542430', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3065, 2999, '阿里地区', '542500', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3066, 3065, '普兰县', '542521', 'P', 0);
INSERT INTO `tp_china_city` VALUES (3067, 3065, '札达县', '542522', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3068, 3065, '噶尔县', '542523', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3069, 3065, '日土县', '542524', 'R', 0);
INSERT INTO `tp_china_city` VALUES (3070, 3065, '革吉县', '542525', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3071, 3065, '改则县', '542526', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3072, 3065, '措勤县', '542527', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3073, 2999, '林芝地区', '542600', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3074, 3073, '林芝县', '542621', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3075, 3073, '工布江达县', '542622', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3076, 3073, '米林县', '542623', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3077, 3073, '墨脱县', '542624', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3078, 3073, '波密县', '542625', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3079, 3073, '察隅县', '542626', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3080, 3073, '朗县', '542627', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3081, 0, '陕西省', '610000', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3082, 3081, '西安市', '610100', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3084, 3082, '新城区', '610102', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3085, 3082, '碑林区', '610103', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3086, 3082, '莲湖区', '610104', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3087, 3082, '灞桥区', '610111', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3088, 3082, '未央区', '610112', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3089, 3082, '雁塔区', '610113', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3090, 3082, '阎良区', '610114', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3091, 3082, '临潼区', '610115', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3092, 3082, '长安区', '610116', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3093, 3082, '蓝田县', '610122', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3094, 3082, '周至县', '610124', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3095, 3082, '户县', '610125', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3096, 3082, '高陵县', '610126', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3097, 3081, '铜川市', '610200', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3099, 3097, '王益区', '610202', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3100, 3097, '印台区', '610203', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3101, 3097, '耀州区', '610204', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3102, 3097, '宜君县', '610222', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3103, 3081, '宝鸡市', '610300', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3105, 3103, '渭滨区', '610302', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3106, 3103, '金台区', '610303', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3107, 3103, '陈仓区', '610304', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3108, 3103, '凤翔县', '610322', 'F', 0);
INSERT INTO `tp_china_city` VALUES (3109, 3103, '岐山县', '610323', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3110, 3103, '扶风县', '610324', 'F', 0);
INSERT INTO `tp_china_city` VALUES (3111, 3103, '眉县', '610326', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3112, 3103, '陇县', '610327', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3113, 3103, '千阳县', '610328', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3114, 3103, '麟游县', '610329', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3115, 3103, '凤县', '610330', 'F', 0);
INSERT INTO `tp_china_city` VALUES (3116, 3103, '太白县', '610331', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3117, 3081, '咸阳市', '610400', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3119, 3117, '秦都区', '610402', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3120, 3117, '杨凌区', '610403', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3121, 3117, '渭城区', '610404', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3122, 3117, '三原县', '610422', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3123, 3117, '泾阳县', '610423', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3124, 3117, '乾县', '610424', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3125, 3117, '礼泉县', '610425', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3126, 3117, '永寿县', '610426', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3127, 3117, '彬县', '610427', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3128, 3117, '长武县', '610428', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3129, 3117, '旬邑县', '610429', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3130, 3117, '淳化县', '610430', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3131, 3117, '武功县', '610431', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3132, 3117, '兴平市', '610481', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3133, 3081, '渭南市', '610500', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3135, 3133, '临渭区', '610502', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3136, 3133, '华县', '610521', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3137, 3133, '潼关县', '610522', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3138, 3133, '大荔县', '610523', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3139, 3133, '合阳县', '610524', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3140, 3133, '澄城县', '610525', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3141, 3133, '蒲城县', '610526', 'P', 0);
INSERT INTO `tp_china_city` VALUES (3142, 3133, '白水县', '610527', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3143, 3133, '富平县', '610528', 'F', 0);
INSERT INTO `tp_china_city` VALUES (3144, 3133, '韩城市', '610581', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3145, 3133, '华阴市', '610582', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3146, 3081, '延安市', '610600', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3148, 3146, '宝塔区', '610602', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3149, 3146, '延长县', '610621', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3150, 3146, '延川县', '610622', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3151, 3146, '子长县', '610623', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3152, 3146, '安塞县', '610624', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3153, 3146, '志丹县', '610625', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3154, 3146, '吴起县', '610626', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3155, 3146, '甘泉县', '610627', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3156, 3146, '富县', '610628', 'F', 0);
INSERT INTO `tp_china_city` VALUES (3157, 3146, '洛川县', '610629', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3158, 3146, '宜川县', '610630', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3159, 3146, '黄龙县', '610631', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3160, 3146, '黄陵县', '610632', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3161, 3081, '汉中市', '610700', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3163, 3161, '汉台区', '610702', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3164, 3161, '南郑县', '610721', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3165, 3161, '城固县', '610722', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3166, 3161, '洋县', '610723', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3167, 3161, '西乡县', '610724', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3168, 3161, '勉县', '610725', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3169, 3161, '宁强县', '610726', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3170, 3161, '略阳县', '610727', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3171, 3161, '镇巴县', '610728', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3172, 3161, '留坝县', '610729', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3173, 3161, '佛坪县', '610730', 'F', 0);
INSERT INTO `tp_china_city` VALUES (3174, 3081, '榆林市', '610800', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3176, 3174, '榆阳区', '610802', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3177, 3174, '神木县', '610821', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3178, 3174, '府谷县', '610822', 'F', 0);
INSERT INTO `tp_china_city` VALUES (3179, 3174, '横山县', '610823', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3180, 3174, '靖边县', '610824', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3181, 3174, '定边县', '610825', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3182, 3174, '绥德县', '610826', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3183, 3174, '米脂县', '610827', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3184, 3174, '佳县', '610828', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3185, 3174, '吴堡县', '610829', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3186, 3174, '清涧县', '610830', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3187, 3174, '子洲县', '610831', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3188, 3081, '安康市', '610900', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3190, 3188, '汉滨区', '610902', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3191, 3188, '汉阴县', '610921', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3192, 3188, '石泉县', '610922', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3193, 3188, '宁陕县', '610923', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3194, 3188, '紫阳县', '610924', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3195, 3188, '岚皋县', '610925', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3196, 3188, '平利县', '610926', 'P', 0);
INSERT INTO `tp_china_city` VALUES (3197, 3188, '镇坪县', '610927', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3198, 3188, '旬阳县', '610928', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3199, 3188, '白河县', '610929', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3200, 3081, '商洛市', '611000', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3202, 3200, '商州区', '611002', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3203, 3200, '洛南县', '611021', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3204, 3200, '丹凤县', '611022', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3205, 3200, '商南县', '611023', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3206, 3200, '山阳县', '611024', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3207, 3200, '镇安县', '611025', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3208, 3200, '柞水县', '611026', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3209, 0, '甘肃省', '620000', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3210, 3209, '兰州市', '620100', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3212, 3210, '城关区', '620102', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3213, 3210, '七里河区', '620103', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3214, 3210, '西固区', '620104', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3215, 3210, '安宁区', '620105', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3216, 3210, '红古区', '620111', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3217, 3210, '永登县', '620121', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3218, 3210, '皋兰县', '620122', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3219, 3210, '榆中县', '620123', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3220, 3209, '嘉峪关市', '620200', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3222, 3209, '金昌市', '620300', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3224, 3222, '金川区', '620302', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3225, 3222, '永昌县', '620321', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3226, 3209, '白银市', '620400', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3228, 3226, '白银区', '620402', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3229, 3226, '平川区', '620403', 'P', 0);
INSERT INTO `tp_china_city` VALUES (3230, 3226, '靖远县', '620421', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3231, 3226, '会宁县', '620422', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3232, 3226, '景泰县', '620423', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3233, 3209, '天水市', '620500', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3235, 3233, '秦州区', '620502', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3236, 3233, '麦积区', '620503', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3237, 3233, '清水县', '620521', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3238, 3233, '秦安县', '620522', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3239, 3233, '甘谷县', '620523', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3240, 3233, '武山县', '620524', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3241, 3233, '张家川回族自治县', '620525', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3242, 3209, '武威市', '620600', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3244, 3242, '凉州区', '620602', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3245, 3242, '民勤县', '620621', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3246, 3242, '古浪县', '620622', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3247, 3242, '天祝藏族自治县', '620623', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3248, 3209, '张掖市', '620700', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3250, 3248, '甘州区', '620702', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3251, 3248, '肃南裕固族自治县', '620721', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3252, 3248, '民乐县', '620722', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3253, 3248, '临泽县', '620723', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3254, 3248, '高台县', '620724', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3255, 3248, '山丹县', '620725', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3256, 3209, '平凉市', '620800', 'P', 0);
INSERT INTO `tp_china_city` VALUES (3258, 3256, '崆峒区', '620802', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3259, 3256, '泾川县', '620821', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3260, 3256, '灵台县', '620822', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3261, 3256, '崇信县', '620823', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3262, 3256, '华亭县', '620824', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3263, 3256, '庄浪县', '620825', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3264, 3256, '静宁县', '620826', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3265, 3209, '酒泉市', '620900', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3267, 3265, '肃州区', '620902', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3268, 3265, '金塔县', '620921', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3269, 3265, '瓜州县', '620922', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3270, 3265, '肃北蒙古族自治县', '620923', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3271, 3265, '阿克塞哈萨克族自治县', '620924', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3272, 3265, '玉门市', '620981', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3273, 3265, '敦煌市', '620982', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3274, 3209, '庆阳市', '621000', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3276, 3274, '西峰区', '621002', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3277, 3274, '庆城县', '621021', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3278, 3274, '环县', '621022', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3279, 3274, '华池县', '621023', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3280, 3274, '合水县', '621024', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3281, 3274, '正宁县', '621025', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3282, 3274, '宁县', '621026', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3283, 3274, '镇原县', '621027', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3284, 3209, '定西市', '621100', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3286, 3284, '安定区', '621102', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3287, 3284, '通渭县', '621121', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3288, 3284, '陇西县', '621122', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3289, 3284, '渭源县', '621123', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3290, 3284, '临洮县', '621124', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3291, 3284, '漳县', '621125', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3292, 3284, '岷县', '621126', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3293, 3209, '陇南市', '621200', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3295, 3293, '武都区', '621202', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3296, 3293, '成县', '621221', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3297, 3293, '文县', '621222', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3298, 3293, '宕昌县', '621223', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3299, 3293, '康县', '621224', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3300, 3293, '西和县', '621225', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3301, 3293, '礼县', '621226', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3302, 3293, '徽县', '621227', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3303, 3293, '两当县', '621228', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3304, 3209, '临夏回族自治州', '622900', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3305, 3304, '临夏市', '622901', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3306, 3304, '临夏县', '622921', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3307, 3304, '康乐县', '622922', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3308, 3304, '永靖县', '622923', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3309, 3304, '广河县', '622924', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3310, 3304, '和政县', '622925', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3311, 3304, '东乡族自治县', '622926', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3312, 3304, '积石山保安族东乡族撒拉族自治县', '622927', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3313, 3209, '甘南藏族自治州', '623000', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3314, 3313, '合作市', '623001', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3315, 3313, '临潭县', '623021', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3316, 3313, '卓尼县', '623022', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3317, 3313, '舟曲县', '623023', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3318, 3313, '迭部县', '623024', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3319, 3313, '玛曲县', '623025', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3320, 3313, '碌曲县', '623026', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3321, 3313, '夏河县', '623027', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3322, 0, '青海省', '630000', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3323, 3322, '西宁市', '630100', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3325, 3323, '城东区', '630102', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3326, 3323, '城中区', '630103', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3327, 3323, '城西区', '630104', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3328, 3323, '城北区', '630105', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3329, 3323, '大通回族土族自治县', '630121', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3330, 3323, '湟中县', '630122', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3331, 3323, '湟源县', '630123', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3332, 3322, '海东地区', '632100', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3333, 3332, '平安县', '632121', 'P', 0);
INSERT INTO `tp_china_city` VALUES (3334, 3332, '民和回族土族自治县', '632122', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3335, 3332, '乐都县', '632123', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3336, 3332, '互助土族自治县', '632126', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3337, 3332, '化隆回族自治县', '632127', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3338, 3332, '循化撒拉族自治县', '632128', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3339, 3322, '海北藏族自治州', '632200', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3340, 3339, '门源回族自治县', '632221', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3341, 3339, '祁连县', '632222', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3342, 3339, '海晏县', '632223', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3343, 3339, '刚察县', '632224', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3344, 3322, '黄南藏族自治州', '632300', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3345, 3344, '同仁县', '632321', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3346, 3344, '尖扎县', '632322', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3347, 3344, '泽库县', '632323', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3348, 3344, '河南蒙古族自治县', '632324', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3349, 3322, '海南藏族自治州', '632500', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3350, 3349, '共和县', '632521', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3351, 3349, '同德县', '632522', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3352, 3349, '贵德县', '632523', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3353, 3349, '兴海县', '632524', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3354, 3349, '贵南县', '632525', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3355, 3322, '果洛藏族自治州', '632600', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3356, 3355, '玛沁县', '632621', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3357, 3355, '班玛县', '632622', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3358, 3355, '甘德县', '632623', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3359, 3355, '达日县', '632624', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3360, 3355, '久治县', '632625', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3361, 3355, '玛多县', '632626', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3362, 3322, '玉树藏族自治州', '632700', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3363, 3362, '玉树县', '632721', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3364, 3362, '杂多县', '632722', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3365, 3362, '称多县', '632723', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3366, 3362, '治多县', '632724', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3367, 3362, '囊谦县', '632725', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3368, 3362, '曲麻莱县', '632726', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3369, 3322, '海西蒙古族藏族自治州', '632800', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3370, 3369, '格尔木市', '632801', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3371, 3369, '德令哈市', '632802', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3372, 3369, '乌兰县', '632821', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3373, 3369, '都兰县', '632822', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3374, 3369, '天峻县', '632823', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3375, 0, '宁夏回族自治区', '640000', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3376, 3375, '银川市', '640100', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3378, 3376, '兴庆区', '640104', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3379, 3376, '西夏区', '640105', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3380, 3376, '金凤区', '640106', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3381, 3376, '永宁县', '640121', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3382, 3376, '贺兰县', '640122', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3383, 3376, '灵武市', '640181', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3384, 3375, '石嘴山市', '640200', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3386, 3384, '大武口区', '640202', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3387, 3384, '惠农区', '640205', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3388, 3384, '平罗县', '640221', 'P', 0);
INSERT INTO `tp_china_city` VALUES (3389, 3375, '吴忠市', '640300', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3391, 3389, '利通区', '640302', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3392, 3389, '盐池县', '640323', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3393, 3389, '同心县', '640324', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3394, 3389, '青铜峡市', '640381', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3395, 3375, '固原市', '640400', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3397, 3395, '原州区', '640402', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3398, 3395, '西吉县', '640422', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3399, 3395, '隆德县', '640423', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3400, 3395, '泾源县', '640424', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3401, 3395, '彭阳县', '640425', 'P', 0);
INSERT INTO `tp_china_city` VALUES (3402, 3375, '中卫市', '640500', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3404, 3402, '沙坡头区', '640502', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3405, 3402, '中宁县', '640521', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3406, 3402, '海原县', '640522', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3407, 0, '新疆维吾尔自治区', '650000', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3408, 3407, '乌鲁木齐市', '650100', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3410, 3408, '天山区', '650102', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3411, 3408, '沙依巴克区', '650103', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3412, 3408, '新市区', '650104', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3413, 3408, '水磨沟区', '650105', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3414, 3408, '头屯河区', '650106', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3415, 3408, '达坂城区', '650107', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3416, 3408, '米东区', '650109', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3417, 3408, '乌鲁木齐县', '650121', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3418, 3407, '克拉玛依市', '650200', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3420, 3418, '独山子区', '650202', 'D', 0);
INSERT INTO `tp_china_city` VALUES (3421, 3418, '克拉玛依区', '650203', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3422, 3418, '白碱滩区', '650204', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3423, 3418, '乌尔禾区', '650205', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3424, 3407, '吐鲁番地区', '652100', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3425, 3424, '吐鲁番市', '652101', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3426, 3424, '鄯善县', '652122', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3427, 3424, '托克逊县', '652123', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3428, 3407, '哈密地区', '652200', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3429, 3428, '哈密市', '652201', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3430, 3428, '巴里坤哈萨克自治县', '652222', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3431, 3428, '伊吾县', '652223', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3432, 3407, '昌吉回族自治州', '652300', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3433, 3432, '昌吉市', '652301', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3434, 3432, '阜康市', '652302', 'F', 0);
INSERT INTO `tp_china_city` VALUES (3435, 3432, '呼图壁县', '652323', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3436, 3432, '玛纳斯县', '652324', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3437, 3432, '奇台县', '652325', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3438, 3432, '吉木萨尔县', '652327', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3439, 3432, '木垒哈萨克自治县', '652328', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3440, 3407, '博尔塔拉蒙古自治州', '652700', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3441, 3440, '博乐市', '652701', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3442, 3440, '精河县', '652722', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3443, 3440, '温泉县', '652723', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3444, 3407, '巴音郭楞蒙古自治州', '652800', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3445, 3444, '库尔勒市', '652801', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3446, 3444, '轮台县', '652822', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3447, 3444, '尉犁县', '652823', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3448, 3444, '若羌县', '652824', 'R', 0);
INSERT INTO `tp_china_city` VALUES (3449, 3444, '且末县', '652825', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3450, 3444, '焉耆回族自治县', '652826', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3451, 3444, '和静县', '652827', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3452, 3444, '和硕县', '652828', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3453, 3444, '博湖县', '652829', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3454, 3407, '阿克苏地区', '652900', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3455, 3454, '阿克苏市', '652901', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3456, 3454, '温宿县', '652922', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3457, 3454, '库车县', '652923', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3458, 3454, '沙雅县', '652924', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3459, 3454, '新和县', '652925', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3460, 3454, '拜城县', '652926', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3461, 3454, '乌什县', '652927', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3462, 3454, '阿瓦提县', '652928', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3463, 3454, '柯坪县', '652929', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3464, 3407, '克孜勒苏柯尔克孜自治州', '653000', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3465, 3464, '阿图什市', '653001', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3466, 3464, '阿克陶县', '653022', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3467, 3464, '阿合奇县', '653023', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3468, 3464, '乌恰县', '653024', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3469, 3407, '喀什地区', '653100', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3470, 3469, '喀什市', '653101', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3471, 3469, '疏附县', '653121', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3472, 3469, '疏勒县', '653122', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3473, 3469, '英吉沙县', '653123', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3474, 3469, '泽普县', '653124', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3475, 3469, '莎车县', '653125', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3476, 3469, '叶城县', '653126', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3477, 3469, '麦盖提县', '653127', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3478, 3469, '岳普湖县', '653128', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3479, 3469, '伽师县', '653129', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3480, 3469, '巴楚县', '653130', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3481, 3469, '塔什库尔干塔吉克自治县', '653131', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3482, 3407, '和田地区', '653200', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3483, 3482, '和田市', '653201', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3484, 3482, '和田县', '653221', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3485, 3482, '墨玉县', '653222', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3486, 3482, '皮山县', '653223', 'P', 0);
INSERT INTO `tp_china_city` VALUES (3487, 3482, '洛浦县', '653224', 'L', 0);
INSERT INTO `tp_china_city` VALUES (3488, 3482, '策勒县', '653225', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3489, 3482, '于田县', '653226', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3490, 3482, '民丰县', '653227', 'M', 0);
INSERT INTO `tp_china_city` VALUES (3491, 3407, '伊犁哈萨克自治州', '654000', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3492, 3491, '伊宁市', '654002', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3493, 3491, '奎屯市', '654003', 'K', 0);
INSERT INTO `tp_china_city` VALUES (3494, 3491, '伊宁县', '654021', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3495, 3491, '察布查尔锡伯自治县', '654022', 'C', 0);
INSERT INTO `tp_china_city` VALUES (3496, 3491, '霍城县', '654023', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3497, 3491, '巩留县', '654024', 'G', 0);
INSERT INTO `tp_china_city` VALUES (3498, 3491, '新源县', '654025', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3499, 3491, '昭苏县', '654026', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3500, 3491, '特克斯县', '654027', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3501, 3491, '尼勒克县', '654028', 'N', 0);
INSERT INTO `tp_china_city` VALUES (3502, 3407, '塔城地区', '654200', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3503, 3502, '塔城市', '654201', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3504, 3502, '乌苏市', '654202', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3505, 3502, '额敏县', '654221', 'E', 0);
INSERT INTO `tp_china_city` VALUES (3506, 3502, '沙湾县', '654223', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3507, 3502, '托里县', '654224', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3508, 3502, '裕民县', '654225', 'Y', 0);
INSERT INTO `tp_china_city` VALUES (3509, 3502, '和布克赛尔蒙古自治县', '654226', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3510, 3407, '阿勒泰地区', '654300', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3511, 3510, '阿勒泰市', '654301', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3512, 3510, '布尔津县', '654321', 'B', 0);
INSERT INTO `tp_china_city` VALUES (3513, 3510, '富蕴县', '654322', 'F', 0);
INSERT INTO `tp_china_city` VALUES (3514, 3510, '福海县', '654323', 'F', 0);
INSERT INTO `tp_china_city` VALUES (3515, 3510, '哈巴河县', '654324', 'H', 0);
INSERT INTO `tp_china_city` VALUES (3516, 3510, '青河县', '654325', 'Q', 0);
INSERT INTO `tp_china_city` VALUES (3517, 3510, '吉木乃县', '654326', 'J', 0);
INSERT INTO `tp_china_city` VALUES (3518, 3407, '自治区直辖县级行政区划', '659000', 'Z', 0);
INSERT INTO `tp_china_city` VALUES (3519, 3518, '石河子市', '659001', 'S', 0);
INSERT INTO `tp_china_city` VALUES (3520, 3518, '阿拉尔市', '659002', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3521, 3518, '图木舒克市', '659003', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3522, 3518, '五家渠市', '659004', 'W', 0);
INSERT INTO `tp_china_city` VALUES (3523, 0, '台湾省', '710000', 'T', 0);
INSERT INTO `tp_china_city` VALUES (3524, 0, '香港特别行政区', '810000', 'X', 0);
INSERT INTO `tp_china_city` VALUES (3525, 0, '澳门特别行政区', '820000', 'A', 0);
INSERT INTO `tp_china_city` VALUES (3526, 2292, '莞城区', NULL, 'G', 0);
INSERT INTO `tp_china_city` VALUES (3527, 2292, '常平镇', NULL, 'C', 0);
INSERT INTO `tp_china_city` VALUES (3528, 2292, '塘厦镇', NULL, 'T', 0);
INSERT INTO `tp_china_city` VALUES (3529, 2292, '万江区', NULL, 'W', 0);
INSERT INTO `tp_china_city` VALUES (3530, 2292, '虎门镇', NULL, 'F', 0);
INSERT INTO `tp_china_city` VALUES (3531, 2293, '石岐街道', NULL, 'S', 0);
INSERT INTO `tp_china_city` VALUES (3532, 2293, '东区街道', NULL, 'D', 0);
INSERT INTO `tp_china_city` VALUES (3533, 2293, '西区街道', NULL, 'X', 0);
INSERT INTO `tp_china_city` VALUES (3534, 2293, '南区街道', NULL, 'N', 0);
INSERT INTO `tp_china_city` VALUES (3535, 2293, '五桂山街道', NULL, 'W', 0);
INSERT INTO `tp_china_city` VALUES (3536, 2293, '中山港街道', NULL, 'Z', 0);

-- ----------------------------
-- Table structure for tp_group_join_users
-- ----------------------------
DROP TABLE IF EXISTS `tp_group_join_users`;
CREATE TABLE `tp_group_join_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参团记录ID',
  `group_open_id` int(11) NOT NULL DEFAULT 0 COMMENT '开团ID',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '会员ID',
  `pid` int(10) NOT NULL DEFAULT 0 COMMENT '商品ID',
  `buy_count` int(10) NOT NULL DEFAULT 0 COMMENT '已购数量',
  `price` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '商品单价',
  `amount` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '总金额',
  `pay_time` int(10) NOT NULL DEFAULT 0 COMMENT '购买时间',
  `pay_state` int(2) NOT NULL DEFAULT 0 COMMENT '1:待付款 2:已支付 3:取消',
  `order_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付单号,关联order表的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tp_group_joins
-- ----------------------------
DROP TABLE IF EXISTS `tp_group_joins`;
CREATE TABLE `tp_group_joins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '拼团信息表',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '商品id',
  `group_count` int(11) NOT NULL DEFAULT 0 COMMENT '多少人成团',
  `group_price` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '成团的价格',
  `price` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '单独购买的价格',
  `starttime` int(10) NOT NULL DEFAULT 0 COMMENT '开始时间',
  `endtime` int(10) NOT NULL DEFAULT 0 COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tp_group_joins_open
-- ----------------------------
DROP TABLE IF EXISTS `tp_group_joins_open`;
CREATE TABLE `tp_group_joins_open`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '开团信息表',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '商品id',
  `group_id` int(11) NOT NULL DEFAULT 0 COMMENT '团购活动id',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '团长id',
  `need_count` int(10) NOT NULL DEFAULT 0 COMMENT '成团人数',
  `buy_count` int(10) NOT NULL DEFAULT 0 COMMENT '已购买人数',
  `time` int(10) NOT NULL DEFAULT 0 COMMENT '购买时间',
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '0:报名中 1:待付款 2:已支付 3:取消 4:过期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tp_guanggao
-- ----------------------------
DROP TABLE IF EXISTS `tp_guanggao`;
CREATE TABLE `tp_guanggao`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '子页广告管理表',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告名称',
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'index' COMMENT '广告类型',
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '链接值',
  `position` tinyint(2) UNSIGNED NULL DEFAULT 1 COMMENT '广告位置 1首页轮播',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_guanggao
-- ----------------------------
INSERT INTO `tp_guanggao` VALUES (5, '首页轮播', 'UploadFiles/adv/20190401/1554085390832152.jpg', 0, 1000, 'index', '12', 1);
INSERT INTO `tp_guanggao` VALUES (8, '首页轮播', 'UploadFiles/adv/20190401/1554085704892294.jpg', 0, 0, '', '11', 1);
INSERT INTO `tp_guanggao` VALUES (9, '首页轮播', 'UploadFiles/adv/20190401/1554085942835564.jpg', 0, 0, '', '13', 1);

-- ----------------------------
-- Table structure for tp_guige
-- ----------------------------
DROP TABLE IF EXISTS `tp_guige`;
CREATE TABLE `tp_guige`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格id',
  `pid` int(11) NOT NULL COMMENT '产品id',
  `attr_id` int(11) NULL DEFAULT 0 COMMENT '产品属性id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格名称',
  `price` decimal(9, 2) NULL DEFAULT 0.00 COMMENT '规格价格',
  `stock` int(11) UNSIGNED NOT NULL COMMENT '库存',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性图片',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_guige
-- ----------------------------
INSERT INTO `tp_guige` VALUES (1, 279, 1, '卡其色', 190.00, 99, 'UploadFiles/attribute/20170731/1501480303329500.jpg', 1501480206);
INSERT INTO `tp_guige` VALUES (2, 279, 1, '天蓝色', 199.00, 90, NULL, 1501480206);
INSERT INTO `tp_guige` VALUES (3, 279, 1, '咖啡色', 198.00, 100, NULL, 1501480206);
INSERT INTO `tp_guige` VALUES (4, 279, 2, 'M', 197.00, 97, NULL, 1501480206);
INSERT INTO `tp_guige` VALUES (5, 279, 2, 'S', 196.00, 96, NULL, 1501480206);
INSERT INTO `tp_guige` VALUES (6, 279, 2, 'L', 195.00, 95, NULL, 1501480206);
INSERT INTO `tp_guige` VALUES (7, 279, 2, 'XL', 194.00, 94, NULL, 1501480206);
INSERT INTO `tp_guige` VALUES (8, 273, 3, '咖啡色', 0.70, 17, NULL, 1501487712);
INSERT INTO `tp_guige` VALUES (9, 273, 3, '酒红色', 0.70, 17, NULL, 1501487712);
INSERT INTO `tp_guige` VALUES (10, 273, 3, '军绿色', 0.70, 17, NULL, 1501487712);
INSERT INTO `tp_guige` VALUES (11, 273, 3, '天蓝色', 0.70, 17, NULL, 1501487712);
INSERT INTO `tp_guige` VALUES (12, 273, 3, '卡其色', 0.70, 17, NULL, 1501487712);
INSERT INTO `tp_guige` VALUES (13, 6, 4, '白色', 749.00, 0, NULL, 1501902603);
INSERT INTO `tp_guige` VALUES (14, 6, 4, '黑色', 729.00, 93, NULL, 1501902603);
INSERT INTO `tp_guige` VALUES (15, 6, 5, '35', 739.00, 94, NULL, 1501902603);
INSERT INTO `tp_guige` VALUES (16, 6, 5, '36', 740.00, 95, NULL, 1501902603);
INSERT INTO `tp_guige` VALUES (17, 6, 5, '37', 741.00, 96, NULL, 1501902603);
INSERT INTO `tp_guige` VALUES (18, 6, 5, '38', 742.00, 97, NULL, 1501902603);
INSERT INTO `tp_guige` VALUES (19, 6, 5, '39', 745.00, 100, NULL, 1501902638);
INSERT INTO `tp_guige` VALUES (25, 5, 6, '白色', 838.00, 349, NULL, 1501914314);
INSERT INTO `tp_guige` VALUES (26, 5, 6, '黑色', 838.00, 349, NULL, 1501914314);
INSERT INTO `tp_guige` VALUES (27, 5, 7, '36', 838.00, 349, NULL, 1501914314);
INSERT INTO `tp_guige` VALUES (28, 5, 7, '37', 838.00, 349, NULL, 1501914314);
INSERT INTO `tp_guige` VALUES (29, 5, 7, '38', 838.00, 349, NULL, 1501914314);
INSERT INTO `tp_guige` VALUES (30, 5, 7, '39', 838.00, 349, NULL, 1501914314);
INSERT INTO `tp_guige` VALUES (36, 6, 10, 'ttt', 749.00, 97, NULL, 1504445723);
INSERT INTO `tp_guige` VALUES (34, 5, 9, 'ddddd', 838.00, 349, NULL, 1504444113);
INSERT INTO `tp_guige` VALUES (35, 5, 9, 'bbbbb', 838.00, 349, NULL, 1504444113);
INSERT INTO `tp_guige` VALUES (37, 6, 10, 'ggg', 749.00, 97, NULL, 1504445723);
INSERT INTO `tp_guige` VALUES (38, 9, 11, '红', 0.01, 999, NULL, 1504507293);
INSERT INTO `tp_guige` VALUES (39, 9, 11, '黑', 100.00, 999, NULL, 1504507293);
INSERT INTO `tp_guige` VALUES (40, 9, 11, '白', 100.00, 999, NULL, 1504507293);
INSERT INTO `tp_guige` VALUES (41, 8, 12, '黑', 0.01, 1, NULL, 1504509199);
INSERT INTO `tp_guige` VALUES (42, 8, 12, '银', 0.01, 200, NULL, 1504509199);
INSERT INTO `tp_guige` VALUES (43, 10, 13, '黑色', 999.00, 20, NULL, 1553658509);
INSERT INTO `tp_guige` VALUES (44, 11, 14, '樱花粉', 369.00, 100, NULL, 1553918223);
INSERT INTO `tp_guige` VALUES (45, 11, 14, '薄荷绿', 369.00, 100, NULL, 1553918223);
INSERT INTO `tp_guige` VALUES (62, 16, 17, '西柚款', 73.00, 100, NULL, 1554109667);
INSERT INTO `tp_guige` VALUES (59, 13, 15, '樱花粉', 299.00, 100, NULL, 1554090573);
INSERT INTO `tp_guige` VALUES (60, 13, 15, '薄荷绿', 299.00, 100, NULL, 1554090573);
INSERT INTO `tp_guige` VALUES (61, 16, 17, '青柠款', 73.00, 100, NULL, 1554109667);
INSERT INTO `tp_guige` VALUES (58, 12, 16, '薄荷绿', 799.00, 100, NULL, 1554090317);
INSERT INTO `tp_guige` VALUES (57, 12, 16, '樱花粉', 799.00, 100, NULL, 1554090317);
INSERT INTO `tp_guige` VALUES (63, 16, 17, '牛油果款', 73.00, 100, NULL, 1554109667);
INSERT INTO `tp_guige` VALUES (64, 16, 17, '奇异果款', 73.00, 100, NULL, 1554109667);
INSERT INTO `tp_guige` VALUES (65, 15, 18, '冰凝叶子', 110.00, 100, NULL, 1554109842);
INSERT INTO `tp_guige` VALUES (66, 15, 18, '再生桃花', 110.00, 100, NULL, 1554109842);
INSERT INTO `tp_guige` VALUES (67, 18, 19, '流行金棕', 80.00, 999999, NULL, 1554112216);
INSERT INTO `tp_guige` VALUES (68, 18, 19, '酒红金属', 80.00, 999999, NULL, 1554112216);
INSERT INTO `tp_guige` VALUES (69, 18, 19, '抒情米橘', 80.00, 999999, NULL, 1554112216);
INSERT INTO `tp_guige` VALUES (70, 18, 19, '静紫民谣', 80.00, 999999, NULL, 1554112216);
INSERT INTO `tp_guige` VALUES (71, 21, 20, '黑色', 69.00, 999999, NULL, 1554113518);
INSERT INTO `tp_guige` VALUES (72, 21, 20, '棕色', 69.00, 999999, NULL, 1554113518);
INSERT INTO `tp_guige` VALUES (73, 22, 21, '暖杏色', 80.00, 999999, NULL, 1554114077);
INSERT INTO `tp_guige` VALUES (74, 22, 21, '杏色芙蓉', 80.00, 999999, NULL, 1554114077);
INSERT INTO `tp_guige` VALUES (75, 22, 21, '果酱梅红', 80.00, 999999, NULL, 1554114077);
INSERT INTO `tp_guige` VALUES (76, 23, 22, '01#桃色春光', 20.00, 999999, NULL, 1554114531);
INSERT INTO `tp_guige` VALUES (77, 23, 22, '02#欲望艳彩阳', 20.00, 999999, NULL, 1554114531);
INSERT INTO `tp_guige` VALUES (78, 23, 22, '03#戈壁干玫瑰', 20.00, 999999, NULL, 1554114531);
INSERT INTO `tp_guige` VALUES (79, 23, 22, '04#海市蜃楼', 20.00, 999999, NULL, 1554114531);
INSERT INTO `tp_guige` VALUES (80, 24, 23, '蓝色', 15.00, 999999, NULL, 1554176918);
INSERT INTO `tp_guige` VALUES (81, 24, 23, '红色', 15.00, 999999, NULL, 1554176918);
INSERT INTO `tp_guige` VALUES (82, 27, 24, '滋润型', 56.00, 999999, NULL, 1554188701);
INSERT INTO `tp_guige` VALUES (83, 27, 24, '清爽型', 56.00, 999999, NULL, 1554188701);
INSERT INTO `tp_guige` VALUES (85, 29, 25, '亮肤色', 129.00, 999999, NULL, 1554190646);
INSERT INTO `tp_guige` VALUES (86, 29, 25, '柔粉色', 129.00, 999999, NULL, 1554190646);
INSERT INTO `tp_guige` VALUES (87, 29, 25, '自然色', 129.00, 999999, NULL, 1554190646);
INSERT INTO `tp_guige` VALUES (88, 29, 25, '小麦色', 129.00, 999999, NULL, 1554190646);
INSERT INTO `tp_guige` VALUES (89, 30, 26, '#13 亮白色(白盒)', 138.00, 999999, NULL, 1554191555);
INSERT INTO `tp_guige` VALUES (90, 30, 26, '#21 象牙白(白盒)', 138.00, 999999, NULL, 1554191555);
INSERT INTO `tp_guige` VALUES (91, 30, 26, '#23 自然色(白盒)', 138.00, 999999, NULL, 1554191555);

-- ----------------------------
-- Table structure for tp_indexpro
-- ----------------------------
DROP TABLE IF EXISTS `tp_indexpro`;
CREATE TABLE `tp_indexpro`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '首页推荐图',
  `pro_id` int(11) NOT NULL DEFAULT 0 COMMENT '产品ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '推荐标题',
  `intro` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `fontsize` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字体大小',
  `fontcolor` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字体颜色',
  `introsize` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告词大小',
  `introcolor` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司词颜色',
  `type` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跳转事件',
  `val` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跳转值',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `state` tinyint(2) NULL DEFAULT 1 COMMENT '显示状态 1正常  0隐藏',
  `addtime` int(11) NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tp_menu
-- ----------------------------
DROP TABLE IF EXISTS `tp_menu`;
CREATE TABLE `tp_menu`  (
  `menu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父类id',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `controller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '方法',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控制器与方法url,如 c/a,b/d',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '菜单显示状态: 0不显示,1显示',
  `power` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '是否启用, 0关闭,1开启',
  `step` tinyint(3) UNSIGNED NULL DEFAULT 0 COMMENT '排序权重,0-255, 越小菜单越靠前',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_menu
-- ----------------------------
INSERT INTO `tp_menu` VALUES (1, 0, '权限管理', '', '', '/', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (2, 1, '菜单管理', 'Menu', 'index', 'Menu/index', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (3, 1, '角色管理', 'Role', 'index', 'Role/index', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (4, 0, '后台人员管理', '', '', '/', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (5, 4, '后台人员列表', 'Admin', 'index', 'Admin/index', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (6, 2, '添加菜单', 'Menu', 'add', 'Menu/add', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (9, 5, '后台用户添加', 'Admin', 'add', 'Admin/add', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (15, 2, '添加子菜单', 'Menu', 'addChild', 'Menu/addChild', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (16, 2, '删除菜单', 'Menu', 'del', 'Menu/del', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (17, 2, '编辑菜单', 'Menu', 'edit', 'Menu/edit', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (18, 3, '配置权限', 'Role', 'privilegeEdit', 'Role/privilegeEdit', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (21, 3, '添加角色', 'Role', 'add', 'Role/add', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (22, 3, '删除角色', 'Role', 'del', 'Role/del', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (23, 3, '编辑角色', 'Role', 'edit', 'Role/edit', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (25, 5, '后台人员编辑', 'Admin', 'edit', 'Admin/edit', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (26, 5, '后台人员删除', 'Admin', 'del', 'Admin/del', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (27, 0, '用户管理', '', '', '/', 1, 1, 30);
INSERT INTO `tp_menu` VALUES (28, 27, '用户列表', 'User', 'userList', 'User/userList', 1, 1, 1);
INSERT INTO `tp_menu` VALUES (29, 28, '删除用户', 'User', 'del', 'User/del', 1, 1, 2);
INSERT INTO `tp_menu` VALUES (30, 0, '品牌管理', '', '', '/', 1, 1, 4);
INSERT INTO `tp_menu` VALUES (31, 30, '品牌列表', 'Brand', 'index', 'Brand/index', 1, 1, 8);
INSERT INTO `tp_menu` VALUES (32, 31, '删除品牌', 'Brand', 'del', 'Brand/del', 1, 1, 2);
INSERT INTO `tp_menu` VALUES (33, 30, '添加品牌', 'Brand', 'add', 'Brand/add', 1, 1, 2);
INSERT INTO `tp_menu` VALUES (34, 0, '分类管理', '', '', '/', 1, 1, 7);
INSERT INTO `tp_menu` VALUES (35, 34, '分类列表', 'Category', 'index', 'Category/index', 1, 1, 3);
INSERT INTO `tp_menu` VALUES (36, 34, '添加分类', 'Category', 'add', 'Category/add', 1, 1, 1);
INSERT INTO `tp_menu` VALUES (37, 0, '产品管理', '', '', '/', 1, 1, 8);
INSERT INTO `tp_menu` VALUES (38, 37, '添加产品', 'Product', 'add', 'Product/add', 1, 1, 1);
INSERT INTO `tp_menu` VALUES (39, 37, '产品列表', 'Product', 'index', 'Product/index', 1, 1, 2);
INSERT INTO `tp_menu` VALUES (40, 0, '优惠券管理', '', '', '/', 1, 1, 9);
INSERT INTO `tp_menu` VALUES (41, 40, '添加优惠券', 'Voucher', 'add', 'Voucher/add', 1, 1, 1);
INSERT INTO `tp_menu` VALUES (42, 40, '优惠券列表', 'Voucher', 'index', 'Voucher/index', 1, 1, 2);
INSERT INTO `tp_menu` VALUES (43, 0, '广告管理', '', '', '/', 1, 1, 10);
INSERT INTO `tp_menu` VALUES (44, 43, '添加广告', 'Guanggao', 'add', 'Guanggao/add', 1, 1, 1);
INSERT INTO `tp_menu` VALUES (45, 43, '广告列表', 'Guanggao', 'index', 'Guanggao/index', 1, 1, 2);
INSERT INTO `tp_menu` VALUES (46, 0, '订单管理', '', '', '/', 1, 1, 11);
INSERT INTO `tp_menu` VALUES (47, 46, '订单列表', 'Order', 'index', 'Order/index', 1, 1, 1);
INSERT INTO `tp_menu` VALUES (48, 0, '数据统计', '', '', '/', 1, 1, 50);
INSERT INTO `tp_menu` VALUES (49, 48, '订单统计', 'Statistics', 'order_count', 'Statistics/order_count', 1, 1, 1);
INSERT INTO `tp_menu` VALUES (50, 48, '用户统计', 'Statistics', 'user_count', 'Statistics/user_count', 1, 1, 3);
INSERT INTO `tp_menu` VALUES (51, 0, '评论管理', '', '', '/', 1, 1, 200);
INSERT INTO `tp_menu` VALUES (52, 51, '所有评论', 'Comment', 'index', 'Comment/index', 1, 1, 1);
INSERT INTO `tp_menu` VALUES (53, 0, '文章管理', '', '', '/', 1, 1, 201);
INSERT INTO `tp_menu` VALUES (54, 53, '文章分类', 'NewsCate', 'index', 'NewsCate/index', 1, 1, 1);
INSERT INTO `tp_menu` VALUES (55, 53, '添加分类', 'NewsCate', 'add', 'NewsCate/add', 1, 1, 2);
INSERT INTO `tp_menu` VALUES (56, 53, '全部文章', 'News', 'index', 'News/index', 1, 1, 3);
INSERT INTO `tp_menu` VALUES (57, 53, '添加文章', 'News', 'add', 'News/add', 1, 1, 5);
INSERT INTO `tp_menu` VALUES (58, 0, '快递管理', '', '', '/', 1, 1, 210);
INSERT INTO `tp_menu` VALUES (59, 58, '所有快递', 'Post', 'index', 'Post/index', 1, 1, 1);
INSERT INTO `tp_menu` VALUES (60, 58, '添加快递', 'Post', 'add', 'Post/add', 1, 1, 3);
INSERT INTO `tp_menu` VALUES (61, 0, '专题管理', '', '', '/', 1, 1, 10);
INSERT INTO `tp_menu` VALUES (62, 61, '专题列表', 'Theme', 'index', 'Theme/index', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (63, 61, '添加专题', 'Theme', 'add', 'Theme/add', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (64, 62, '修改专题', 'Theme', 'edit', 'Theme/edit', 1, 1, 0);
INSERT INTO `tp_menu` VALUES (65, 62, '删除专题', 'Theme', 'del', 'Theme/del', 1, 1, 0);

-- ----------------------------
-- Table structure for tp_news
-- ----------------------------
DROP TABLE IF EXISTS `tp_news`;
CREATE TABLE `tp_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '新闻分类ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新闻标题',
  `digest` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '新闻内容',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '发表时间',
  `click` int(11) NOT NULL DEFAULT 0 COMMENT '点击量',
  `pinglun` int(11) NOT NULL DEFAULT 0 COMMENT '评论数量',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介图片',
  `source` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tp_news_cat
-- ----------------------------
DROP TABLE IF EXISTS `tp_news_cat`;
CREATE TABLE `tp_news_cat`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '新闻分类表',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `addtime` int(11) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tp_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_order`;
CREATE TABLE `tp_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_sn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `pay_sn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付单号',
  `shop_id` int(11) NOT NULL DEFAULT 0 COMMENT '商家ID',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `price` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `amount` decimal(9, 2) NULL DEFAULT 0.00 COMMENT '优惠后价格',
  `addtime` int(10) NOT NULL DEFAULT 0 COMMENT '购买时间',
  `del` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除状态',
  `type` enum('weixin','alipay','cash') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'weixin' COMMENT '支付方式',
  `price_h` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '真实支付金额',
  `vid` int(11) NULL DEFAULT 0 COMMENT '优惠券ID',
  `receiver` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `tel` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `address_xq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址详情',
  `code` int(11) NOT NULL COMMENT '邮编',
  `post` int(11) NULL DEFAULT NULL COMMENT '快递ID',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '买家留言',
  `post_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮费信息',
  `product_num` int(11) NOT NULL DEFAULT 1 COMMENT '商品数量',
  `trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信交易单号',
  `kuaidi_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递名称',
  `kuaidi_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运单号',
  `back` enum('1','2','0') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '标识客户是否有发起退款1申请退款 2已退款',
  `back_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退款原因',
  `back_addtime` int(11) NULL DEFAULT 0 COMMENT '申请退款时间',
  `order_type` tinyint(2) NULL DEFAULT 1 COMMENT '订单类型 1普通订单',
  `prepay_id` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '支付状态：1 未付款，2 已付款，3 退款中，4 已退款',
  `post_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '物流状态：1 待发货，2 已发货，3 已收货，4 已退货',
  `comment_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '评价状态：1 待评价，2 已评价',
  `exchange_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '交易状态：1 交易中，2 交易完成，3 交易取消，4 交易关闭',
  `status` tinyint(2) NOT NULL DEFAULT 10 COMMENT '订单状态{0,已取消10未付款20代发货30待收货40待评价50交易完成51交易关闭',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 463 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_order
-- ----------------------------
INSERT INTO `tp_order` VALUES (1, '2017080454485057', NULL, 0, 3, 2336.00, 2336.00, 1501829574, 0, 'weixin', 0.00, 0, '测试', '1350000000', '河北省 秦皇岛市 山海关区 的挂号信复合型出第三方官方闪电发货', 130303, 0, '测试下单', '', 3, NULL, NULL, NULL, '2', '没有原因', 1501895560, 1, NULL, 2, 1, 1, 1, 20);
INSERT INTO `tp_order` VALUES (2, '2017080510054525', NULL, 0, 3, 749.00, 749.00, 1501918557, 0, 'weixin', 0.00, 0, '李嘉欣', '13500002266', '广东省 广州市 天河区 科韵路黄埔大道中', 440106, 0, '属性测试', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (3, '2017090452535099', NULL, 0, 4, 100.00, 100.00, 1504509092, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (4, '2017090449101102', NULL, 0, 4, 0.01, 0.01, 1504509265, 0, 'weixin', 0.01, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, '4005052001201709040164592767', NULL, NULL, '1', NULL, 0, 1, NULL, 2, 1, 1, 1, 20);
INSERT INTO `tp_order` VALUES (5, '2017090498100541', NULL, 0, 3, 200.00, 200.00, 1504509579, 0, 'weixin', 0.00, 0, '测试', '1350000000', '河北省 秦皇岛市 山海关区 的挂号信复合型出第三方官方闪电发货', 130303, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (6, '2017090451489898', NULL, 0, 3, 6999.00, 6999.00, 1504510755, 0, 'weixin', 0.00, 0, '测试', '1350000000', '河北省 秦皇岛市 山海关区 的挂号信复合型出第三方官方闪电发货', 130303, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (7, '2017090410257100', NULL, 0, 3, 7996.00, 7996.00, 1504510927, 0, 'weixin', 0.00, 0, '测试', '1350000000', '河北省 秦皇岛市 山海关区 的挂号信复合型出第三方官方闪电发货', 130303, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (8, '2017090410157102', NULL, 0, 3, 6999.00, 6999.00, 1504511806, 0, 'weixin', 0.00, 0, 'hi里咯', '还回', '辽宁省 沈阳市 和平区 是', 210102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (9, '2017090498535410', NULL, 0, 3, 0.01, 0.01, 1504512411, 0, 'weixin', 0.00, 0, 'hi里咯', '还回', '辽宁省 沈阳市 和平区 是', 210102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (10, '2017090410151100', NULL, 0, 3, 100.00, 100.00, 1504513086, 0, 'weixin', 0.00, 0, 'hi里咯', '还回', '辽宁省 沈阳市 和平区 是', 210102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (11, '2017090410097989', NULL, 0, 3, 10099.00, 10099.00, 1504514669, 0, 'weixin', 0.00, 0, '测试', '1350000000', '河北省 秦皇岛市 山海关区 的挂号信复合型出第三方官方闪电发货', 130303, 0, '', '', 32, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (12, '2017090457565054', NULL, 0, 3, 6999.00, 6999.00, 1504514745, 0, 'weixin', 0.00, 0, '测试', '1350000000', '河北省 秦皇岛市 山海关区 的挂号信复合型出第三方官方闪电发货', 130303, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (13, '2017090410155525', NULL, 0, 3, 100.00, 100.00, 1504516462, 0, 'weixin', 0.00, 0, '测试', '1350000000', '河北省 秦皇岛市 山海关区 的挂号信复合型出第三方官方闪电发货', 130303, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (14, '2017090456995256', NULL, 0, 3, 114.00, 114.00, 1504517112, 0, 'weixin', 0.00, 0, '测试', '1350000000', '河北省 秦皇岛市 山海关区 的挂号信复合型出第三方官方闪电发货', 130303, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (15, '2017090456100551', NULL, 0, 3, 11994.00, 11994.00, 1504517144, 0, 'weixin', 0.00, 0, '测试', '1350000000', '河北省 秦皇岛市 山海关区 的挂号信复合型出第三方官方闪电发货', 130303, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (16, '2017090449519949', NULL, 0, 3, 22429.00, 22429.00, 1504517329, 0, 'weixin', 0.00, 0, 'hi里咯', '还回', '辽宁省 沈阳市 和平区 是', 210102, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (17, '2017090455499854', NULL, 0, 3, 100.00, 100.00, 1504519335, 0, 'weixin', 0.00, 0, 'hi里咯', '还回', '辽宁省 沈阳市 和平区 是', 210102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (18, '2017090453575155', NULL, 0, 3, 100.00, 100.00, 1504520533, 0, 'weixin', 0.00, 0, 'hi里咯', '还回', '辽宁省 沈阳市 和平区 是', 210102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (19, '2017090454102514', NULL, 0, 3, 200.00, 200.00, 1504527542, 0, 'weixin', 0.00, 0, '张三三', '13333333333', '河北省 承德市 承德县 幸福大街33号', 130821, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (20, '2017090410210151', NULL, 0, 3, 816.00, 816.00, 1504531423, 0, 'weixin', 0.00, 0, '张三三', '13333333333', '河北省 承德市 承德县 幸福大街33号', 130821, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (21, '2017090599519910', NULL, 0, 3, 6999.00, 6999.00, 1504543676, 0, 'weixin', 0.00, 0, 'test', '15200000000', '北京 北京 西城区 123', 110102, 0, 'fawef ', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (22, '2017090597515210', NULL, 0, 3, 0.03, 0.03, 1504568650, 0, 'weixin', 0.00, 0, 'test1', '15000000000', '河北省 唐山市 路北区 123', 130203, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (23, '2017090598535797', NULL, 0, 3, 0.01, 0.01, 1504574491, 0, 'weixin', 0.00, 0, 'test', '15200000000', '北京 北京 西城区 123', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (24, '2017090510197102', NULL, 0, 3, 6704.00, 6704.00, 1504576894, 0, 'weixin', 0.00, 0, 'test1', '15000000000', '河北省 唐山市 路北区 123', 130203, 0, '', '', 8, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (25, '2017090557985256', NULL, 0, 3, 0.01, 0.01, 1504577593, 0, 'weixin', 0.00, 0, 'test1', '15000000000', '河北省 唐山市 路北区 123', 130203, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (26, '2017090548554952', NULL, 0, 1, 0.03, 0.03, 1504582560, 0, 'weixin', 0.00, 0, '111', '1111111111111', '北京 北京 县 111111111111111', 110200, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (27, '2017090553102481', NULL, 0, 3, 0.01, 0.01, 1504584021, 0, 'weixin', 0.00, 0, 'test', '15200000000', '北京 北京 西城区 123', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (28, '2017090598561019', NULL, 0, 3, 20992.03, 20992.03, 1504589163, 0, 'weixin', 0.00, 0, 'test', '15200000000', '北京 北京 西城区 123', 110102, 0, '', '', 11, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (29, '2017090555100565', NULL, 0, 3, 0.01, 0.01, 1504590663, 0, 'weixin', 0.00, 0, 'test', '15200000000', '北京 北京 西城区 123', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (30, '2017090553565050', NULL, 0, 3, 7199.00, 7199.00, 1504590997, 0, 'weixin', 0.00, 0, 'test1', '15000000000', '河北省 唐山市 路北区 123', 130203, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (31, '2017090551505453', NULL, 0, 3, 114.00, 114.00, 1504591027, 0, 'weixin', 0.00, 0, 'asd', 'asdas', '山西省 太原市 杏花岭区 asdsadas', 140107, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (32, '2017090549549848', NULL, 0, 3, 3998.00, 3998.00, 1504591057, 0, 'weixin', 0.00, 0, 'asd', 'asdas', '山西省 太原市 杏花岭区 asdsadas', 140107, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (33, '2017090550985450', NULL, 0, 1, 1432.00, 1432.00, 1504591138, 0, 'weixin', 0.00, 0, '111', '1111111111111', '北京 北京 县 111111111111111', 110200, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (34, '2017090553494850', NULL, 0, 3, 0.01, 0.01, 1504591365, 0, 'weixin', 0.00, 0, 'aaa', '111', '天津 县 宁河县 aaaaaaaaaaaaaaa', 120221, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (35, '2017090510056555', NULL, 0, 3, 13998.00, 13998.00, 1504591949, 0, 'weixin', 0.00, 0, 'aaa', '111', '天津 县 宁河县 aaaaaaaaaaaaaaa', 120221, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (36, '2017090510149569', NULL, 0, 1, 0.03, 0.03, 1504593598, 0, 'weixin', 0.00, 0, '111', '1111111111111', '北京 北京 县 111111111111111', 110200, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (37, '2017090555495253', NULL, 0, 1, 1600.00, 1600.00, 1504593943, 0, 'weixin', 0.00, 0, '111', '1111111111111', '北京 北京 县 111111111111111', 110200, 0, '', '', 16, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (38, '2017090553499948', NULL, 0, 3, 2348.01, 2348.01, 1504594021, 0, 'weixin', 0.00, 0, 'test1', '15000000000', '河北省 唐山市 路北区 123', 130203, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (39, '2017090598505654', NULL, 0, 3, 200.00, 200.00, 1504596059, 0, 'weixin', 0.00, 0, 'test1', '15000000000', '河北省 唐山市 路北区 123', 130203, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (40, '2017090598565199', NULL, 0, 3, 684.00, 684.00, 1504596139, 0, 'weixin', 0.00, 0, 'test1', '15000000000', '河北省 唐山市 路北区 123', 130203, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (41, '2017090557101531', NULL, 0, 3, 114.01, 114.01, 1504598329, 0, 'weixin', 0.00, 0, 'test1', '15000000000', '河北省 唐山市 路北区 123', 130203, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (42, '2017090599100101', NULL, 0, 3, 0.01, 0.01, 1504598716, 0, 'weixin', 0.00, 0, 'test1', '15000000000', '河北省 唐山市 路北区 123', 130203, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (43, '2017090510210199', NULL, 0, 3, 2413.00, 2413.00, 1504598799, 0, 'weixin', 0.00, 0, 'test1', '15000000000', '河北省 唐山市 路北区 123', 130203, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (44, '2017090510257521', NULL, 0, 1, 1170.11, 1170.11, 1504600959, 0, 'weixin', 0.00, 0, '111', '1111111111111', '北京 北京 县 111111111111111', 110200, 0, '', '', 22, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (45, '2017090556545610', NULL, 0, 3, 0.01, 0.01, 1504601720, 0, 'weixin', 0.00, 0, '33', '333', '河北省 邯郸市 邯郸县 3333', 130421, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (46, '2017090551979810', NULL, 0, 1, 13998.00, 13998.00, 1504603939, 0, 'weixin', 0.00, 0, '111', '1111111111111', '北京 北京 县 111111111111111', 110200, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (47, '2017090549565654', NULL, 0, 3, 4190.00, 4190.00, 1504614993, 0, 'weixin', 0.00, 0, '33', '333', '河北省 邯郸市 邯郸县 3333', 130421, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (48, '2017090510210050', NULL, 0, 1, 1999.00, 1999.00, 1504615567, 0, 'weixin', 0.00, 0, '111', '1111111111111', '北京 北京 县 111111111111111', 110200, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (49, '2017090610098555', NULL, 0, 3, 100.00, 100.00, 1504628109, 0, 'weixin', 0.00, 0, '33', '333', '河北省 邯郸市 邯郸县 3333', 130421, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (50, '2017090653495597', NULL, 0, 3, 1999.00, 1999.00, 1504632373, 0, 'weixin', 0.00, 0, '33', '333', '河北省 邯郸市 邯郸县 3333', 130421, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (51, '2017090697485757', NULL, 0, 3, 300.00, 300.00, 1504663898, 0, 'weixin', 0.00, 0, '33', '333', '河北省 邯郸市 邯郸县 3333', 130421, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (52, '2017090651485353', NULL, 0, 3, 0.01, 0.01, 1504667347, 0, 'weixin', 0.00, 0, '33', '333', '河北省 邯郸市 邯郸县 3333', 130421, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (53, '2017090610253101', NULL, 0, 3, 0.03, 0.03, 1504669423, 0, 'weixin', 0.00, 0, '33', '333', '河北省 邯郸市 邯郸县 3333', 130421, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (54, '2017090654555697', NULL, 0, 1, 200.00, 200.00, 1504670310, 0, 'weixin', 0.00, 0, '111', '1111111111111', '北京 北京 县 111111111111111', 110200, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (55, '2017090649505157', NULL, 0, 1, 100.00, 100.00, 1504676625, 0, 'weixin', 0.00, 0, '111', '1111111111111', '北京 北京 县 111111111111111', 110200, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (56, '2017090648101505', NULL, 0, 3, 0.01, 0.01, 1504677200, 0, 'weixin', 0.00, 0, 'rfdfd', '13333333333', '天津 县 静海县 efdfdggbb', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (57, '2017090697519756', NULL, 0, 3, 100.01, 100.01, 1504679002, 0, 'weixin', 0.00, 0, '赤溪', '123546878631', '天津 县 宁河县 二月份有肝 我肤堙dsa', 120221, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (58, '2017090654541001', NULL, 0, 3, 200.00, 200.00, 1504680230, 0, 'weixin', 0.00, 0, 'rfdfd', '13333333333', '天津 县 静海县 efdfdggbb', 120223, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (59, '2017090649505451', NULL, 0, 3, 2799.00, 2799.00, 1504682833, 0, 'weixin', 0.00, 0, 'rfdfd', '13333333333', '天津 县 静海县 efdfdggbb', 120223, 0, '', '', 9, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (60, '2017090649515751', NULL, 0, 3, 1999.00, 1999.00, 1504682913, 0, 'weixin', 0.00, 0, 'rfdfd', '13333333333', '天津 县 静海县 efdfdggbb', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (61, '2017090698575149', NULL, 0, 3, 200.00, 200.00, 1504683387, 0, 'weixin', 0.00, 0, 'rfdfd', '13333333333', '天津 县 静海县 efdfdggbb', 120223, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (62, '2017090699559953', NULL, 0, 3, 500.00, 500.00, 1504684876, 0, 'weixin', 0.00, 0, 'going', '15957184751', '山西省 阳泉市 郊区 going 您的光临', 140311, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (63, '2017090610198101', NULL, 0, 3, 300.00, 300.00, 1504685614, 0, 'weixin', 0.00, 0, 'dad', '13651907604', '甘肃省 金昌市 永昌县 1234555656', 620321, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (64, '2017090699971019', NULL, 0, 3, 1432.00, 1432.00, 1504686620, 0, 'weixin', 0.00, 0, 'dad', '13651907604', '甘肃省 金昌市 永昌县 1234555656', 620321, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (65, '2017090656509857', NULL, 0, 3, 1999.00, 1999.00, 1504687608, 0, 'weixin', 0.00, 0, 'dad', '13651907604', '甘肃省 金昌市 永昌县 1234555656', 620321, 0, 'adkadkandandnadiaiduauoilpapd[[', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (66, '2017090656509810', NULL, 0, 3, 1999.00, 1999.00, 1504687608, 0, 'weixin', 0.00, 0, 'dad', '13651907604', '甘肃省 金昌市 永昌县 1234555656', 620321, 0, 'adkadkandandnadiaiduauoilpapd[[', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (67, '2017090656985248', NULL, 0, 3, 114.00, 114.00, 1504687816, 0, 'weixin', 0.00, 0, 'dad', '13651907604', '甘肃省 金昌市 永昌县 1234555656', 620321, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (68, '2017090648559848', NULL, 0, 3, 1999.00, 1999.00, 1504688256, 0, 'weixin', 0.00, 0, 'dad', '13651907604', '甘肃省 金昌市 永昌县 1234555656', 620321, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (69, '2017090699525648', NULL, 0, 3, 13998.00, 13998.00, 1504689372, 0, 'weixin', 0.00, 0, 'dad', '13651907604', '甘肃省 金昌市 永昌县 1234555656', 620321, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (70, '2017090610154544', NULL, 0, 3, 0.11, 0.11, 1504689470, 0, 'weixin', 0.00, 0, 'dad', '13651907604', '甘肃省 金昌市 永昌县 1234555656', 620321, 0, '', '', 11, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (71, '2017090610249995', NULL, 0, 3, 114.00, 114.00, 1504689855, 0, 'weixin', 0.00, 0, '1225', '13651907604', '天津 县 蓟县 asdadaw', 120225, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (72, '2017090657985710', NULL, 0, 3, 1999.00, 1999.00, 1504689929, 0, 'weixin', 0.00, 0, '1225', '13651907604', '天津 县 蓟县 asdadaw', 120225, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (73, '2017090656985010', NULL, 0, 3, 6999.00, 6999.00, 1504690088, 0, 'weixin', 0.00, 0, '1225', '13651907604', '天津 县 蓟县 asdadaw', 120225, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (74, '2017090697975410', NULL, 0, 3, 6999.00, 6999.00, 1504690186, 0, 'weixin', 0.00, 0, '1225', '13651907604', '天津 县 蓟县 asdadaw', 120225, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (75, '2017090698509810', NULL, 0, 3, 100.00, 100.00, 1504690763, 0, 'weixin', 0.00, 0, '1225', '13651907604', '天津 县 蓟县 asdadaw', 120225, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (76, '2017090697574855', NULL, 0, 3, 100.00, 100.00, 1504690794, 0, 'weixin', 0.00, 0, '1225', '13651907604', '天津 县 蓟县 asdadaw', 120225, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (77, '2017090651491005', NULL, 0, 3, 100.00, 100.00, 1504690867, 0, 'weixin', 0.00, 0, '1225', '13651907604', '天津 县 蓟县 asdadaw', 120225, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (78, '2017090649984949', NULL, 0, 3, 838.00, 838.00, 1504691121, 0, 'weixin', 0.00, 0, '1225', '13651907604', '天津 县 蓟县 asdadaw', 120225, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (79, '2017090653525757', NULL, 0, 3, 13998.00, 13998.00, 1504693477, 0, 'weixin', 0.00, 0, '1225', '13651907604', '天津 县 蓟县 asdadaw', 120225, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (80, '2017090610110049', NULL, 0, 3, 1999.00, 1999.00, 1504695950, 0, 'weixin', 0.00, 0, '1225', '13651907604', '天津 县 蓟县 asdadaw', 120225, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (81, '2017090653525597', NULL, 0, 1, 13998.00, 13998.00, 1504713173, 0, 'weixin', 0.00, 0, '11111', '111111', '北京 北京 朝阳区 1111111111', 110105, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (82, '2017090710197975', NULL, 0, 1, 200.00, 200.00, 1504749166, 0, 'weixin', 0.00, 0, '11111', '111111', '北京 北京 朝阳区 1111111111', 110105, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (83, '2017090755100100', NULL, 0, 3, 0.02, 0.02, 1504749783, 0, 'weixin', 0.00, 0, '44', '4444', '天津 天津 河东区 4442', 120102, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (84, '2017090750501015', NULL, 0, 1, 100.00, 100.00, 1504751394, 0, 'weixin', 0.00, 0, '11111', '111111', '北京 北京 朝阳区 1111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (85, '2017090710098484', NULL, 0, 3, 0.01, 0.01, 1504753373, 0, 'weixin', 0.00, 0, '11', '111111111111', '天津 天津 河东区 11111111111111', 120102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (86, '2017090755545357', NULL, 0, 3, 100.00, 100.00, 1504754247, 0, 'weixin', 0.00, 0, '11', '111111111111', '天津 天津 河东区 11111111111111', 120102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (87, '2017090755102491', NULL, 0, 1, 1999.00, 1999.00, 1504754359, 0, 'weixin', 0.00, 0, '11111', '111111', '北京 北京 朝阳区 1111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (88, '2017090752531024', NULL, 0, 1, 100.00, 100.00, 1504754564, 0, 'weixin', 0.00, 0, '11111', '111111', '北京 北京 朝阳区 1111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (89, '2017090756994951', NULL, 0, 3, 0.01, 0.01, 1504754760, 0, 'weixin', 0.00, 0, '11', '111111111111', '天津 天津 河东区 11111111111111', 120102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (90, '2017090756534997', NULL, 0, 3, 228.00, 228.00, 1504754808, 0, 'weixin', 0.00, 0, '11', '111111111111', '天津 天津 河东区 11111111111111', 120102, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (91, '2017090710154575', NULL, 0, 3, 100.00, 100.00, 1504755278, 0, 'weixin', 0.00, 0, '啊啊', '13803472048', '山西省 太原市 小店区 杀杀杀', 140105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (92, '2017090750974810', NULL, 0, 1, 838.00, 838.00, 1504756338, 0, 'weixin', 0.00, 0, '11111', '111111', '北京 北京 朝阳区 1111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (93, '2017090757514848', NULL, 0, 3, 114.00, 114.00, 1504762601, 0, 'weixin', 0.00, 0, '1213', '123123122', '内蒙古自治区 乌海市 乌达区 lkkl', 150304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (94, '2017090752101975', NULL, 0, 3, 838.00, 838.00, 1504762676, 0, 'weixin', 0.00, 0, '1213', '123123122', '内蒙古自治区 乌海市 乌达区 lkkl', 150304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (95, '2017090710197995', NULL, 0, 3, 228.00, 228.00, 1504762750, 0, 'weixin', 0.00, 0, '1213', '123123122', '内蒙古自治区 乌海市 乌达区 lkkl', 150304, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (96, '2017090797531015', NULL, 0, 1, 100.00, 100.00, 1504764026, 0, 'weixin', 0.00, 0, '11111', '111111', '北京 北京 朝阳区 1111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (97, '2017090757555698', NULL, 0, 3, 514.01, 514.01, 1504777257, 0, 'weixin', 0.00, 0, '胡', '15839264328', '河南省 郑州市 金水区 升龙广场', 410105, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (98, '2017090751491004', NULL, 0, 3, 0.02, 0.02, 1504778467, 0, 'weixin', 0.00, 0, '胡', '15839264328', '河南省 郑州市 金水区 升龙广场', 410105, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (99, '2017090756101575', NULL, 0, 3, 1432.00, 1432.00, 1504797800, 0, 'weixin', 0.00, 0, '4444', '4444', '山西省 长治市 长治县 787887888', 140421, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (100, '2017090756101534', NULL, 0, 3, 2148.00, 2148.00, 1504798120, 0, 'weixin', 0.00, 0, '4444', '4444', '山西省 长治市 长治县 787887888', 140421, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (101, '2017090757984857', NULL, 0, 3, 0.02, 0.02, 1504799545, 0, 'weixin', 0.00, 0, '4444', '4444', '山西省 长治市 长治县 787887888', 140421, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (102, '2017090854565756', NULL, 0, 3, 0.01, 0.01, 1504805942, 0, 'weixin', 0.00, 0, '4444', '4444', '山西省 长治市 长治县 787887888', 140421, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (103, '2017090856481005', NULL, 0, 3, 0.01, 0.01, 1504836184, 0, 'weixin', 0.00, 0, '胡先生', '15839264328', '河南省 郑州市 管城回族区 升龙广场', 410104, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (104, '2017090897515150', NULL, 0, 3, 0.01, 0.01, 1504836282, 0, 'weixin', 0.00, 0, '胡先生', '15839264328', '河南省 郑州市 管城回族区 升龙广场', 410104, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (105, '2017090852501025', NULL, 0, 3, 1200.00, 1200.00, 1504838468, 0, 'weixin', 0.00, 0, '胡先生', '15839264328', '河南省 郑州市 管城回族区 升龙广场', 410104, 0, '', '', 12, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (106, '2017090810155971', NULL, 0, 3, 13998.00, 13998.00, 1504839646, 0, 'weixin', 0.00, 0, '林先生', '13113673638', '广东省 深圳市 龙岗区 深圳信息职业技术学院', 440307, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (107, '2017090854565510', NULL, 0, 3, 100.00, 100.00, 1504839798, 0, 'weixin', 0.00, 0, '林先生', '13113673638', '广东省 深圳市 龙岗区 深圳信息职业技术学院', 440307, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (108, '2017090810252579', NULL, 0, 3, 0.01, 0.01, 1504840959, 0, 'weixin', 0.00, 0, '林先生', '13113673638', '广东省 深圳市 龙岗区 深圳信息职业技术学院', 440307, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (109, '2017090855565610', NULL, 0, 3, 114.00, 114.00, 1504850743, 0, 'weixin', 0.00, 0, '11', '22', '天津 天津 河东区 12323232', 120102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (110, '2017090856505710', NULL, 0, 3, 716.00, 716.00, 1504851048, 0, 'weixin', 0.00, 0, '11', '22', '天津 天津 河东区 12323232', 120102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (111, '2017090849509898', NULL, 0, 3, 1999.00, 1999.00, 1504851281, 0, 'weixin', 0.00, 0, '11', '22', '天津 天津 河东区 12323232', 120102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (112, '2017090857999756', NULL, 0, 3, 300.00, 300.00, 1504851353, 0, 'weixin', 0.00, 0, '11', '22', '天津 天津 河东区 12323232', 120102, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (113, '2017090899495654', NULL, 0, 3, 716.00, 716.00, 1504851916, 0, 'weixin', 0.00, 0, '就就', '009999999999999', '河北省 秦皇岛市 北戴河区 急急急 就', 130304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (114, '2017090857534999', NULL, 0, 3, 0.08, 0.08, 1504852121, 0, 'weixin', 0.00, 0, '就就', '009999999999999', '河北省 秦皇岛市 北戴河区 急急急 就', 130304, 0, '', '', 8, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (115, '2017090898525256', NULL, 0, 1, 114.00, 114.00, 1504853931, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (116, '2017090849501015', NULL, 0, 3, 300.00, 300.00, 1504853937, 0, 'weixin', 0.00, 0, '慧眼识父亲', '18218655663', '北京 北京 平谷区 国际华城你就把v那你你爸爸', 110117, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (117, '2017090850559752', NULL, 0, 3, 6999.00, 6999.00, 1504857362, 0, 'weixin', 0.00, 0, 'sada', 'sada', '河北省 秦皇岛市 山海关区 das', 130303, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (118, '2017090849575753', NULL, 0, 3, 0.05, 0.05, 1504858369, 0, 'weixin', 0.00, 0, '123123', '23123123123', '河北省 秦皇岛市 北戴河区 3123213123', 130304, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (119, '2017090849481001', NULL, 0, 3, 100.00, 100.00, 1504859121, 0, 'weixin', 0.00, 0, '123123', '23123123123', '河北省 秦皇岛市 北戴河区 3123213123', 130304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (120, '2017090855549855', NULL, 0, 3, 0.01, 0.01, 1504859143, 0, 'weixin', 0.00, 0, '123123', '23123123123', '河北省 秦皇岛市 北戴河区 3123213123', 130304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (121, '2017090899101975', NULL, 0, 3, 1999.00, 1999.00, 1504859148, 0, 'weixin', 0.00, 0, '123123', '23123123123', '河北省 秦皇岛市 北戴河区 3123213123', 130304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (122, '2017090851495155', NULL, 0, 3, 684.00, 684.00, 1504859155, 0, 'weixin', 0.00, 0, '123123', '23123123123', '河北省 秦皇岛市 北戴河区 3123213123', 130304, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (123, '2017090857495298', NULL, 0, 3, 1999.00, 1999.00, 1504859161, 0, 'weixin', 0.00, 0, '123123', '23123123123', '河北省 秦皇岛市 北戴河区 3123213123', 130304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (124, '2017090810110048', NULL, 0, 3, 838.00, 838.00, 1504859166, 0, 'weixin', 0.00, 0, '123123', '23123123123', '河北省 秦皇岛市 北戴河区 3123213123', 130304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (125, '2017090854100975', NULL, 0, 3, 0.01, 0.01, 1504859270, 0, 'weixin', 0.00, 0, '123123', '23123123123', '河北省 秦皇岛市 北戴河区 3123213123', 130304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (126, '2017090852101511', NULL, 0, 3, 200.00, 200.00, 1504859716, 0, 'weixin', 0.00, 0, '123123', '23123123123', '河北省 秦皇岛市 北戴河区 3123213123', 130304, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (127, '2017090856985110', NULL, 0, 1, 500.00, 500.00, 1504862616, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (128, '2017090857989755', NULL, 0, 1, 400.00, 400.00, 1504872361, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (129, '2017090998495310', NULL, 0, 1, 100.00, 100.00, 1504918555, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (130, '2017090955575550', NULL, 0, 3, 0.03, 0.03, 1504918631, 0, 'weixin', 0.00, 0, '胡', '13137722473', '河北省 唐山市 路北区 shengl', 130203, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (131, '2017090952102491', NULL, 0, 1, 1999.00, 1999.00, 1504921556, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (132, '2017090955495050', NULL, 0, 1, 1676.00, 1676.00, 1504928103, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (133, '2017090951559910', NULL, 0, 3, 0.02, 0.02, 1504938307, 0, 'weixin', 0.00, 0, '小明', '15603006667', '广东省 深圳市 南山区 123', 440305, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (134, '2017090998505349', NULL, 0, 3, 700.00, 700.00, 1504941307, 0, 'weixin', 0.00, 0, '陈冠希', '15603006666', '河北省 唐山市 路南区 唐家湾镇下栅村 5巷26号', 130202, 0, '', '', 7, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (135, '2017090910149100', NULL, 0, 3, 3998.00, 3998.00, 1504942334, 0, 'weixin', 0.00, 0, '陈冠希', '15603006666', '河北省 唐山市 路南区 唐家湾镇下栅村 5巷26号', 130202, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (136, '2017090956524998', NULL, 0, 1, 1999.00, 1999.00, 1504944408, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (137, '2017090910153495', NULL, 0, 3, 100.00, 100.00, 1504946142, 0, 'weixin', 0.00, 0, '陈冠希', '15603006666', '河北省 唐山市 路南区 唐家湾镇下栅村 5巷26号', 130202, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (138, '2017090997485154', NULL, 0, 3, 0.02, 0.02, 1504947738, 0, 'weixin', 0.00, 0, '陈冠希', '15603006666', '河北省 唐山市 路南区 唐家湾镇下栅村 5巷26号', 130202, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (139, '2017090910155495', NULL, 0, 3, 100.00, 100.00, 1504951886, 0, 'weixin', 0.00, 0, '测试', '15817737700', '广东省 深圳市 南山区 智能ABC区', 440305, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (140, '2017091097485248', NULL, 0, 1, 16097.00, 16097.00, 1505005354, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (141, '2017091053974897', NULL, 0, 1, 100.00, 100.00, 1505007941, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (142, '2017091055101514', NULL, 0, 1, 3998.00, 3998.00, 1505011239, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (143, '2017091054100521', NULL, 0, 3, 28296.00, 28296.00, 1505041398, 0, 'weixin', 0.00, 0, '阿达', '15888888', '天津 县 静海县 规划局附加费工会经费光喝酒', 120223, 0, '', '', 7, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (144, '2017091052545052', NULL, 0, 3, 0.01, 0.01, 1505046356, 0, 'weixin', 0.00, 0, '阿达', '15888888', '天津 县 静海县 规划局附加费工会经费光喝酒', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (145, '2017091054485551', NULL, 0, 4, 100.00, 80.00, 1505046886, 0, 'weixin', 0.00, 1, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (146, '2017091099521029', NULL, 0, 4, 0.01, 0.01, 1505046956, 0, 'weixin', 0.01, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, '4005052001201709101374739842', NULL, NULL, '0', NULL, 0, 1, NULL, 2, 1, 1, 1, 20);
INSERT INTO `tp_order` VALUES (147, '2017091097535054', NULL, 0, 1, 0.01, 0.01, 1505048202, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (148, '2017091054100102', NULL, 0, 3, 300.00, 300.00, 1505052646, 0, 'weixin', 0.00, 0, 'dsada', 'dssssssssss', '天津 县 静海县 dsaaaaaaaaaaaa', 120223, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (149, '2017091010053102', NULL, 0, 3, 0.01, 0.01, 1505052669, 0, 'weixin', 0.00, 0, 'dsada', 'dssssssssss', '天津 县 静海县 dsaaaaaaaaaaaa', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (150, '2017091156565599', NULL, 0, 3, 6999.00, 6999.00, 1505073512, 0, 'weixin', 0.00, 0, 'dsada', 'dssssssssss', '天津 县 静海县 dsaaaaaaaaaaaa', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (151, '2017091148495152', NULL, 0, 3, 100.00, 100.00, 1505073536, 0, 'weixin', 0.00, 0, 'dsada', 'dssssssssss', '天津 县 静海县 dsaaaaaaaaaaaa', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (152, '2017091199565556', NULL, 0, 3, 570.00, 570.00, 1505073996, 0, 'weixin', 0.00, 0, 'dsada', 'dssssssssss', '天津 县 静海县 dsaaaaaaaaaaaa', 120223, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (153, '2017091110248981', NULL, 0, 3, 6999.00, 6999.00, 1505074063, 0, 'weixin', 0.00, 0, 'dsada', 'dssssssssss', '天津 县 静海县 dsaaaaaaaaaaaa', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (154, '2017091155985556', NULL, 0, 1, 114.00, 114.00, 1505089351, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (155, '2017091152100101', NULL, 0, 3, 6999.00, 6999.00, 1505092244, 0, 'weixin', 0.00, 0, 'dsada', 'dssssssssss', '天津 县 静海县 dsaaaaaaaaaaaa', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (156, '2017091198100574', NULL, 0, 3, 838.01, 838.01, 1505092443, 0, 'weixin', 0.00, 0, 'dsada', 'dssssssssss', '天津 县 静海县 dsaaaaaaaaaaaa', 120223, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (157, '2017091156979754', NULL, 0, 3, 13998.00, 13998.00, 1505092456, 0, 'weixin', 0.00, 0, 'dsada', 'dssssssssss', '天津 县 静海县 dsaaaaaaaaaaaa', 120223, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (158, '2017091154555151', NULL, 0, 1, 0.02, 0.02, 1505093350, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (159, '2017091153995052', NULL, 0, 3, 0.01, 0.01, 1505093445, 0, 'weixin', 0.00, 0, '阿达', '15888888', '天津 县 静海县 规划局附加费工会经费光喝酒', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (160, '2017091151515549', NULL, 0, 3, 0.01, 0.01, 1505094755, 0, 'weixin', 0.00, 0, 'dsada', 'dssssssssss', '天津 县 静海县 dsaaaaaaaaaaaa', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (161, '2017091148100569', NULL, 0, 3, 0.02, 0.02, 1505095936, 0, 'weixin', 0.00, 0, 'basfgdasas', '2462534534', '山西省 大同市 矿区 4hrdfbhxcbdf', 140203, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (162, '2017091110049495', NULL, 0, 1, 0.01, 0.01, 1505108461, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (163, '2017091150481025', NULL, 0, 3, 0.01, 0.01, 1505113746, 0, 'weixin', 0.00, 0, 'zz', '158741236', '山西省 阳泉市 郊区 210', 140311, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (164, '2017091157494897', NULL, 0, 3, 200.00, 200.00, 1505113785, 0, 'weixin', 0.00, 0, 'zz', '158741236', '山西省 阳泉市 郊区 210', 140311, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (165, '2017091154549752', NULL, 0, 3, 838.00, 838.00, 1505116806, 0, 'weixin', 0.00, 0, 'zz', '158741236', '山西省 阳泉市 郊区 210', 140311, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (166, '2017091153515655', NULL, 0, 1, 600.00, 600.00, 1505117237, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (167, '2017091157481025', NULL, 0, 3, 35982.00, 35982.00, 1505117417, 0, 'weixin', 0.00, 0, 'zz', '158741236', '山西省 阳泉市 郊区 210', 140311, 0, '', '', 18, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (168, '2017091150495651', NULL, 0, 3, 838.00, 838.00, 1505117778, 0, 'weixin', 0.00, 0, 'zz', '158741236', '山西省 阳泉市 郊区 210', 140311, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (169, '2017091154101100', NULL, 0, 3, 6999.00, 6999.00, 1505118102, 0, 'weixin', 0.00, 0, 'zz', '158741236', '山西省 阳泉市 郊区 210', 140311, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (170, '2017091149101571', NULL, 0, 3, 0.02, 0.02, 1505118337, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (171, '2017091151100981', NULL, 0, 3, 200.00, 200.00, 1505118723, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (172, '2017091151101534', NULL, 0, 1, 1676.00, 1676.00, 1505120003, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (173, '2017091197494951', NULL, 0, 3, 6999.00, 6999.00, 1505120778, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (174, '2017091197505397', NULL, 0, 3, 4296.00, 4296.00, 1505121754, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (175, '2017091156501025', NULL, 0, 3, 2527.00, 2527.00, 1505121928, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (176, '2017091150505254', NULL, 0, 1, 300.00, 300.00, 1505122770, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (177, '2017091150995450', NULL, 0, 3, 300.00, 300.00, 1505123346, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (178, '2017091197505354', NULL, 0, 1, 100.00, 100.00, 1505123562, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (179, '2017091110210153', NULL, 0, 1, 0.07, 0.07, 1505131359, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 7, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (180, '2017091157971025', NULL, 0, 1, 300.00, 300.00, 1505133049, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (181, '2017091110110251', NULL, 0, 3, 0.01, 0.01, 1505133310, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (182, '2017091153501004', NULL, 0, 3, 500.00, 500.00, 1505135637, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (183, '2017091110051519', NULL, 0, 1, 1676.00, 1676.00, 1505137485, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (184, '2017091153534810', NULL, 0, 1, 1432.00, 1432.00, 1505137509, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (185, '2017091150995156', NULL, 0, 3, 1999.00, 1999.00, 1505140722, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (186, '2017091150505355', NULL, 0, 3, 838.00, 838.00, 1505143826, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (187, '2017091253994851', NULL, 0, 3, 838.00, 838.00, 1505179749, 0, 'weixin', 0.00, 0, '111', '11', '天津 天津 和平区 11', 120101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (188, '2017091256101524', NULL, 0, 3, 7213.03, 7213.03, 1505179784, 0, 'weixin', 0.00, 0, '111', '11', '天津 天津 和平区 11', 120101, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (189, '2017091252554848', NULL, 0, 3, 3998.00, 3998.00, 1505181732, 0, 'weixin', 0.00, 0, '何健林', '13265163015', '广东省 广州市 天河区 132', 440106, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (190, '2017091253565357', NULL, 0, 3, 0.01, 0.01, 1505184197, 0, 'weixin', 0.00, 0, '11', '11', '北京 北京 东城区 1', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (191, '2017091298985151', NULL, 0, 3, 798.00, 798.00, 1505184235, 0, 'weixin', 0.00, 0, '11', '11', '北京 北京 东城区 1', 110101, 0, '', '', 7, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (192, '2017091257515656', NULL, 0, 3, 1999.00, 1999.00, 1505198169, 0, 'weixin', 0.00, 0, '刘锦涛', '15229123550', '山西省 临汾市 汾西县 112324542', 141034, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (193, '2017091253485353', NULL, 0, 3, 300.00, 300.00, 1505200197, 0, 'weixin', 0.00, 0, '111', '11', '北京 北京 东城区 11', 110101, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (194, '2017091210199971', NULL, 0, 1, 400.00, 400.00, 1505200446, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (195, '2017091210010110', NULL, 0, 1, 900.00, 900.00, 1505201757, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 9, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (196, '2017091253505210', NULL, 0, 3, 900.00, 900.00, 1505202229, 0, 'weixin', 0.00, 0, '李1', '18263957925', '山东省 临沂市 兰山区 联安大厦10楼', 371302, 0, '', '', 9, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (197, '2017091297994910', NULL, 0, 3, 6999.00, 6999.00, 1505203978, 0, 'weixin', 0.00, 0, '李1', '18263957925', '山东省 临沂市 兰山区 联安大厦10楼', 371302, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (198, '2017091251101525', NULL, 0, 3, 1999.00, 1999.00, 1505204035, 0, 'weixin', 0.00, 0, '李1', '18263957925', '山东省 临沂市 兰山区 联安大厦10楼', 371302, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (199, '2017091257511015', NULL, 0, 1, 100.00, 100.00, 1505204121, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (200, '2017091253485556', NULL, 0, 3, 50280.00, 50280.00, 1505205493, 0, 'weixin', 0.00, 0, '李1', '18263957925', '山东省 临沂市 兰山区 联安大厦10楼', 371302, 0, '', '', 60, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (201, '2017091298985499', NULL, 0, 3, 1400.00, 1400.00, 1505207019, 0, 'weixin', 0.00, 0, '李1', '18263957925', '山东省 临沂市 兰山区 联安大厦10楼', 371302, 0, '', '', 14, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (202, '2017091249519810', NULL, 0, 3, 100.00, 100.00, 1505207169, 0, 'weixin', 0.00, 0, '李1', '18263957925', '山东省 临沂市 兰山区 联安大厦10楼', 371302, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (203, '2017091249995648', NULL, 0, 3, 200.00, 200.00, 1505207233, 0, 'weixin', 0.00, 0, '李1', '18263957925', '山东省 临沂市 兰山区 联安大厦10楼', 371302, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (204, '2017091257484850', NULL, 0, 3, 200.00, 200.00, 1505207272, 0, 'weixin', 0.00, 0, '李1', '18263957925', '山东省 临沂市 兰山区 联安大厦10楼', 371302, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (205, '2017091252101551', NULL, 0, 3, 200.00, 200.00, 1505207348, 0, 'weixin', 0.00, 0, '李1', '18263957925', '山东省 临沂市 兰山区 联安大厦10楼', 371302, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (206, '2017091248100489', NULL, 0, 1, 9995.00, 9995.00, 1505209008, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (207, '2017091257499748', NULL, 0, 3, 41994.00, 41994.00, 1505220681, 0, 'weixin', 0.00, 0, 'rfgdfgfv', '53t3656545', '天津 天津 宝坻区 dcfvf', 120115, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (208, '2017091248495298', NULL, 0, 3, 100.00, 100.00, 1505220800, 0, 'weixin', 0.00, 0, 'rfgdfgfv', '53t3656545', '天津 天津 宝坻区 dcfvf', 120115, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (209, '2017091256984948', NULL, 0, 3, 600.00, 600.00, 1505226872, 0, 'weixin', 0.00, 0, 'rfgdfgfv', '53t3656545', '天津 天津 宝坻区 dcfvf', 120115, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (210, '2017091356555250', NULL, 0, 3, 114.00, 114.00, 1505238152, 0, 'weixin', 0.00, 0, 'rfgdfgfv', '53t3656545', '天津 天津 宝坻区 dcfvf', 120115, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (211, '2017091310110051', NULL, 0, 1, 0.02, 0.02, 1505244638, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (212, '2017091356485452', NULL, 0, 3, 6999.00, 6999.00, 1505268856, 0, 'weixin', 0.00, 0, '来来来', '1225', '北京 北京 东城区 啦啦啦啦', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (213, '2017091349554897', NULL, 0, 1, 500.00, 500.00, 1505270225, 0, 'weixin', 0.00, 0, '11', '2222', '北京 县 延庆县 22222', 110229, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (214, '2017091397531014', NULL, 0, 3, 100.00, 100.00, 1505270330, 0, 'weixin', 0.00, 0, '来来来', '1225', '北京 北京 东城区 啦啦啦啦', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (215, '2017091310298102', NULL, 0, 3, 0.06, 0.06, 1505270383, 0, 'weixin', 0.00, 0, '来来来', '1225', '北京 北京 东城区 啦啦啦啦', 110101, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (216, '2017091350575653', NULL, 0, 3, 838.00, 838.00, 1505272066, 0, 'weixin', 0.00, 0, '555', '555', '山西省 阳泉市 矿区 888', 140303, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (217, '2017091357485353', NULL, 0, 3, 100.00, 100.00, 1505272665, 0, 'weixin', 0.00, 0, 'jason', '12345678901', '吉林省 通化市 柳河县 fff', 220524, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (218, '2017091351521005', NULL, 0, 3, 1999.00, 1999.00, 1505275971, 0, 'weixin', 0.00, 0, 'jason', '12345678901', '吉林省 通化市 柳河县 fff', 220524, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (219, '2017091348101100', NULL, 0, 3, 1432.00, 1432.00, 1505293712, 0, 'weixin', 0.00, 0, '1111111', '22222222222222', '北京 北京 崇文区 22222222222', 110103, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (220, '2017091356971004', NULL, 0, 3, 500.00, 500.00, 1505294728, 0, 'weixin', 0.00, 0, '1111111', '22222222222222', '北京 北京 崇文区 22222222222', 110103, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (221, '2017091353551015', NULL, 0, 3, 6999.00, 6999.00, 1505298533, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (222, '2017091355100481', NULL, 0, 3, 8934.01, 8934.01, 1505299959, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 7, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (223, '2017091397495497', NULL, 0, 3, 200.00, 200.00, 1505303242, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (224, '2017091354485210', NULL, 0, 3, 100.00, 100.00, 1505303318, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (225, '2017091351511005', NULL, 0, 3, 100.00, 100.00, 1505304387, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (226, '2017091348514810', NULL, 0, 3, 300.00, 300.00, 1505314464, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (227, '2017091355975451', NULL, 0, 3, 0.03, 0.03, 1505318231, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (228, '2017091354535597', NULL, 0, 3, 100.00, 100.00, 1505318262, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (229, '2017091498519957', NULL, 0, 3, 838.00, 838.00, 1505339883, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (230, '2017091454489849', NULL, 0, 3, 500.00, 500.00, 1505349574, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (231, '2017091457991015', NULL, 0, 3, 2413.01, 2413.01, 1505357049, 0, 'weixin', 0.00, 0, '何先生', '15737719961', '北京 北京 西城区 测试地址', 110102, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (232, '2017091455515355', NULL, 0, 3, 114.00, 114.00, 1505359255, 0, 'weixin', 0.00, 0, '阿西坝', '123', '重庆市 重庆市 九龙坡区 九龙坡大道2号', 500107, 0, '阿西坝哟', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (233, '2017091455481011', NULL, 0, 3, 0.01, 0.01, 1505359671, 0, 'weixin', 0.00, 0, '阿西坝', '123', '重庆市 重庆市 九龙坡区 九龙坡大道2号', 500107, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (234, '2017091410053100', NULL, 0, 3, 4296.00, 4296.00, 1505360077, 0, 'weixin', 0.00, 0, '阿西坝', '123', '重庆市 重庆市 九龙坡区 九龙坡大道2号', 500107, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (235, '2017091457491001', NULL, 0, 3, 100.00, 100.00, 1505372569, 0, 'weixin', 0.00, 0, 'ewq', 'wqe', '北京 北京 东城区 weqeqe', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (236, '2017091499525148', NULL, 0, 3, 0.01, 0.01, 1505372764, 0, 'weixin', 0.00, 0, 'ewq', 'wqe', '北京 北京 东城区 weqeqe', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (237, '2017091410051995', NULL, 0, 3, 838.00, 838.00, 1505373245, 0, 'weixin', 0.00, 0, 'ewq', 'qwe', '辽宁省 营口市 盖州市 龙泰家世界', 210881, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (238, '2017091453511015', NULL, 0, 3, 0.01, 0.01, 1505373317, 0, 'weixin', 0.00, 0, 'ewq', 'qwe', '辽宁省 营口市 盖州市 龙泰家世界', 210881, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (239, '2017091449101559', NULL, 0, 3, 100.00, 100.00, 1505373649, 0, 'weixin', 0.00, 0, 'ewq', 'qwe', '辽宁省 营口市 盖州市 龙泰家世界', 210881, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (240, '2017091454534853', NULL, 0, 3, 0.01, 0.01, 1505374230, 0, 'weixin', 0.00, 0, 'dfgdfg', '151485641564554', '河北省 秦皇岛市 北戴河区 zdfbdgbdfbd', 130304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (241, '2017091410155100', NULL, 0, 3, 0.01, 0.01, 1505375470, 0, 'weixin', 0.00, 0, 'dfgdfg', '151485641564554', '河北省 秦皇岛市 北戴河区 zdfbdgbdfbd', 130304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (242, '2017091410252485', NULL, 0, 1, 0.02, 0.02, 1505379295, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, 'sdfds', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (243, '2017091452100534', NULL, 0, 3, 5997.00, 5997.00, 1505380484, 0, 'weixin', 0.00, 0, 'dfgdfg', '151485641564554', '河北省 秦皇岛市 北戴河区 zdfbdgbdfbd', 130304, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (244, '2017091453514856', NULL, 0, 3, 1600.01, 1600.01, 1505380501, 0, 'weixin', 0.00, 0, 'dfgdfg', '151485641564554', '河北省 秦皇岛市 北戴河区 zdfbdgbdfbd', 130304, 0, '', '', 17, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (245, '2017091448101574', NULL, 0, 1, 0.01, 0.01, 1505380800, 0, 'weixin', 0.00, 0, '在', '18725006799', '云南省 昆明市 五华区 在一起就', 530102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (246, '2017091497485349', NULL, 0, 3, 7996.00, 7996.00, 1505383146, 0, 'weixin', 0.00, 0, '李思思', '18463371501', '河北省 唐山市 崇文区 那时快结婚时开始的加快速度进', 110103, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (247, '2017091448975697', NULL, 0, 3, 300.00, 300.00, 1505383168, 0, 'weixin', 0.00, 0, '李思思', '18463371501', '河北省 唐山市 崇文区 那时快结婚时开始的加快速度进', 110103, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (248, '2017091410057101', NULL, 0, 3, 1999.00, 1999.00, 1505384669, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (249, '2017091410056499', NULL, 0, 3, 0.01, 0.01, 1505385197, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (250, '2017091410053999', NULL, 0, 3, 0.01, 0.01, 1505387901, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (251, '2017091455485010', NULL, 0, 1, 0.01, 0.01, 1505389255, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (252, '2017091498505650', NULL, 0, 3, 838.00, 838.00, 1505392059, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (253, '2017091497565610', NULL, 0, 3, 500.00, 500.00, 1505393242, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (254, '2017091410299535', NULL, 0, 1, 0.01, 0.01, 1505394575, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (255, '2017091410098101', NULL, 0, 1, 700.00, 700.00, 1505396461, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 7, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (256, '2017091553495756', NULL, 0, 3, 100.00, 100.00, 1505405909, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (257, '2017091555100985', NULL, 0, 3, 6999.00, 6999.00, 1505420023, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (258, '2017091510057101', NULL, 0, 3, 2627.00, 2627.00, 1505420109, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 7, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (259, '2017091598985450', NULL, 0, 1, 2113.02, 2113.02, 1505436475, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (260, '2017091551499957', NULL, 0, 3, 3702.00, 3702.00, 1505440867, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (261, '2017091597100484', NULL, 0, 3, 114.00, 114.00, 1505441242, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (262, '2017091553491001', NULL, 0, 3, 0.01, 0.01, 1505441541, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (263, '2017091598495497', NULL, 0, 1, 228.00, 228.00, 1505442635, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (264, '2017091597535199', NULL, 0, 3, 0.01, 0.01, 1505443018, 0, 'weixin', 0.00, 0, '11111', '111', '北京 北京 朝阳区 111111111', 110105, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (265, '2017091557975455', NULL, 0, 1, 0.02, 0.02, 1505446617, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (266, '2017091510150519', NULL, 0, 1, 400.00, 400.00, 1505447054, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (267, '2017091552529899', NULL, 0, 1, 100.00, 100.00, 1505447108, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (268, '2017091555514897', NULL, 0, 1, 6999.00, 6999.00, 1505447159, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (269, '2017091597535410', NULL, 0, 1, 1999.00, 1999.00, 1505448058, 0, 'weixin', 0.00, 0, 'ce', 'ee', '天津 县 静海县 2341414', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (270, '2017091510155989', NULL, 0, 1, 100.00, 100.00, 1505461694, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (271, '2017091548555351', NULL, 0, 1, 1999.00, 1999.00, 1505461712, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (272, '2017091599102515', NULL, 0, 1, 0.06, 0.06, 1505461964, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 6, NULL, NULL, NULL, '1', 'tuikuan', 1505656369, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (273, '2017091510299579', NULL, 0, 1, 13998.00, 13998.00, 1505462015, 0, 'weixin', 0.00, 0, 'fanhu', '18500704678', '北京 北京 西城区 wwew', 110102, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (274, '2017091510157555', NULL, 0, 3, 2148.00, 2148.00, 1505476894, 0, 'weixin', 0.00, 0, 'test', '11111', '天津 天津 河东区 test', 120102, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (275, '2017091510148979', NULL, 0, 3, 456.00, 456.00, 1505476926, 0, 'weixin', 0.00, 0, 'test', '11111', '天津 天津 河东区 test', 120102, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (276, '2017091549521009', NULL, 0, 3, 10997.03, 10997.03, 1505476993, 0, 'weixin', 0.00, 0, 'test', '11111', '天津 天津 河东区 test', 120102, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (277, '2017091510149525', NULL, 0, 3, 5997.00, 5997.00, 1505481790, 0, 'weixin', 0.00, 0, 'test', '11111', '天津 天津 河东区 test', 120102, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (278, '2017091653100565', NULL, 0, 3, 0.02, 0.02, 1505526421, 0, 'weixin', 0.00, 0, '1', '1', '天津 天津 河西区 1111', 120103, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (279, '2017091650100525', NULL, 0, 3, 1999.00, 1999.00, 1505530034, 0, 'weixin', 0.00, 0, '余博', '13228071807', '北京 北京 西城区 天安门广场', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (280, '2017091652101102', NULL, 0, 3, 500.00, 500.00, 1505534468, 0, 'weixin', 0.00, 0, '余博', '13228071807', '北京 北京 西城区 天安门广场', 110102, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (281, '2017091654971029', NULL, 0, 3, 114.00, 114.00, 1505542950, 0, 'weixin', 0.00, 0, '余博', '13228071807', '北京 北京 西城区 天安门广场', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (282, '2017091656545356', NULL, 0, 3, 716.00, 716.00, 1505551912, 0, 'weixin', 0.00, 0, '说的', '18435155689', '北京 北京 东城区 我额', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (283, '2017091698529910', NULL, 0, 3, 0.01, 0.01, 1505551947, 0, 'weixin', 0.00, 0, '说的', '18435155689', '北京 北京 东城区 我额', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (284, '2017091610210110', NULL, 0, 3, 1999.00, 1999.00, 1505554431, 0, 'weixin', 0.00, 0, '认为嗯嗯', '23232323', '北京 北京 东城区 问问', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (285, '2017091652971029', NULL, 0, 3, 114.00, 114.00, 1505555156, 0, 'weixin', 0.00, 0, '认为嗯嗯', '23232323', '北京 北京 东城区 问问', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (286, '2017091697529853', NULL, 0, 3, 12172.00, 12172.00, 1505559242, 0, 'weixin', 0.00, 0, '认为嗯嗯', '23232323', '北京 北京 东城区 问问', 110101, 0, '', '', 17, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (287, '2017091649525750', NULL, 0, 3, 314.00, 314.00, 1505577505, 0, 'weixin', 0.00, 0, '说的', '18435155689', '北京 北京 东城区 我额', 110101, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (288, '2017091655544898', NULL, 0, 3, 100.00, 100.00, 1505577527, 0, 'weixin', 0.00, 0, '说的', '18435155689', '北京 北京 东城区 我额', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (289, '2017091757551004', NULL, 0, 1, 2142.00, 2142.00, 1505577897, 0, 'weixin', 0.00, 0, 'we', 'we w', '北京 北京 西城区 sws w', 110102, 0, '', '', 21, NULL, NULL, NULL, '1', 'jjjjjj', 1505656330, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (290, '2017091710154511', NULL, 0, 3, 200.00, 200.00, 1505578510, 0, 'weixin', 0.00, 0, '说的', '18435155689', '北京 北京 东城区 我额', 110101, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (291, '2017091710110051', NULL, 0, 1, 100.00, 100.00, 1505578702, 0, 'weixin', 0.00, 0, 'we', 'we w', '北京 北京 西城区 sws w', 110102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (292, '2017091748521011', NULL, 0, 3, 100.00, 100.00, 1505578752, 0, 'weixin', 0.00, 0, '认为嗯嗯', '23232323', '北京 北京 东城区 问问', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (293, '2017091798549810', NULL, 0, 3, 0.01, 0.01, 1505615291, 0, 'weixin', 0.00, 0, '认为嗯嗯', '23232323', '北京 北京 东城区 问问', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (294, '2017091753984950', NULL, 0, 1, 2514.02, 2514.02, 1505619557, 0, 'weixin', 0.00, 0, 'we', 'we w', '北京 北京 西城区 sws w', 110102, 0, '', '', 5, NULL, NULL, NULL, '1', '测试啦', 1505655132, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (295, '2017091756559853', NULL, 0, 3, 100.00, 100.00, 1505621672, 0, 'weixin', 0.00, 0, '说的', '18435155689', '北京 北京 东城区 我额', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (296, '2017091750485010', NULL, 0, 3, 228.00, 228.00, 1505625666, 0, 'weixin', 0.00, 0, '说的', '18435155689', '北京 北京 东城区 我额', 110101, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (297, '2017091754515651', NULL, 0, 3, 200.00, 200.00, 1505636758, 0, 'weixin', 0.00, 0, '说的', '18435155689', '北京 北京 东城区 我额', 110101, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (298, '2017091797565250', NULL, 0, 3, 838.00, 838.00, 1505645306, 0, 'weixin', 0.00, 0, '认为嗯嗯', '23232323', '北京 北京 东城区 问问', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (299, '2017091797495454', NULL, 0, 3, 114.00, 114.00, 1505657146, 0, 'weixin', 0.00, 0, '说的', '18435155689', '北京 北京 东城区 我额', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (300, '2017091897985549', NULL, 0, 3, 200.00, 200.00, 1505672490, 0, 'weixin', 0.00, 0, '陆宇彬', '18607884510', '河北省 唐山市 路北区 中山路4号', 130203, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (301, '2017091810153101', NULL, 0, 3, 100.00, 100.00, 1505672942, 0, 'weixin', 0.00, 0, '陆宇彬', '18607884510', '河北省 唐山市 路北区 中山路4号', 130203, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (302, '2017091849975357', NULL, 0, 3, 838.00, 838.00, 1505699841, 0, 'weixin', 0.00, 0, '的', '18435155689', '北京 北京 东城区 我去玩', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (303, '2017091899974955', NULL, 0, 3, 0.04, 0.04, 1505700316, 0, 'weixin', 0.00, 0, '梁雄', '18435155689', '北京 北京 海淀区 海淀文化艺术大厦', 110108, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (304, '2017091856971015', NULL, 0, 3, 6999.00, 6999.00, 1505702408, 0, 'weixin', 0.00, 0, '的', '18435155689', '北京 北京 东城区 我去玩', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (305, '2017091810151505', NULL, 0, 3, 300.00, 300.00, 1505702702, 0, 'weixin', 0.00, 0, '梁雄', '18435155689', '北京 北京 海淀区 海淀文化艺术大厦', 110108, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (306, '2017091897985210', NULL, 0, 3, 798.00, 798.00, 1505710858, 0, 'weixin', 0.00, 0, '梁雄', '18435155689', '北京 北京 海淀区 海淀文化艺术大厦', 110108, 0, '', '', 7, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (307, '2017091854100985', NULL, 0, 3, 13998.00, 13998.00, 1505711478, 0, 'weixin', 0.00, 0, '梁雄', '18435155689', '北京 北京 海淀区 海淀文化艺术大厦', 110108, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (308, '2017091810099569', NULL, 0, 3, 0.01, 0.01, 1505714301, 0, 'weixin', 0.00, 0, 'asdsa', 'sadsadsa', '北京 北京 崇文区 sdasdsa', 110103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (309, '2017091810097569', NULL, 0, 1, 100.00, 100.00, 1505715101, 0, 'weixin', 0.00, 0, 'dw d', 'de', '北京 北京 东城区 ew ', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (310, '2017091852501001', NULL, 0, 3, 570.00, 570.00, 1505715524, 0, 'weixin', 0.00, 0, 'asdsa', 'sadsadsa', '北京 北京 崇文区 sdasdsa', 110103, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (311, '2017091810110010', NULL, 0, 3, 3998.00, 3998.00, 1505716542, 0, 'weixin', 0.00, 0, 'asdsa', 'sadsadsa', '北京 北京 崇文区 sdasdsa', 110103, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (312, '2017091852989756', NULL, 0, 1, 3998.00, 3998.00, 1505716820, 0, 'weixin', 0.00, 0, 'dw d', 'de', '北京 北京 东城区 ew ', 110101, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (313, '2017091899579951', NULL, 0, 3, 314.01, 314.01, 1505717132, 0, 'weixin', 0.00, 0, '当代', '15635854512', '山西省 长治市 襄垣县 41', 140423, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (314, '2017091856991029', NULL, 0, 3, 0.04, 0.04, 1505717288, 0, 'weixin', 0.00, 0, '当代', '15635854512', '山西省 长治市 襄垣县 41', 140423, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (315, '2017091849569810', NULL, 0, 1, 100.00, 1.00, 1505717681, 0, 'weixin', 0.00, 3, 'dw d', 'de', '北京 北京 东城区 ew ', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (316, '2017091899559754', NULL, 0, 1, 200.00, 200.00, 1505717724, 0, 'weixin', 0.00, 0, 'dw d', 'de', '北京 北京 东城区 ew ', 110101, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (317, '2017091851974810', NULL, 0, 3, 70090.01, 70090.01, 1505717923, 0, 'weixin', 0.00, 0, '123', '13500000000', '天津 县 静海县 123', 120223, 0, '', '', 12, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (318, '2017091856100565', NULL, 0, 3, 6999.00, 6999.00, 1505718952, 0, 'weixin', 0.00, 0, '123', '13500000000', '天津 县 静海县 123', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (319, '2017091897485449', NULL, 0, 1, 200.00, 200.00, 1505720970, 0, 'weixin', 0.00, 0, 'dw d', 'de', '北京 北京 东城区 ew ', 110101, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (320, '2017091899565255', NULL, 0, 3, 100.01, 100.01, 1505722108, 0, 'weixin', 0.00, 0, '123', '13500000000', '天津 县 静海县 123', 120223, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (321, '2017091897555210', NULL, 0, 1, 200.00, 200.00, 1505722842, 0, 'weixin', 0.00, 0, 'dw d', 'de', '北京 北京 东城区 ew ', 110101, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (322, '2017091810199101', NULL, 0, 3, 0.02, 0.02, 1505723822, 0, 'weixin', 0.00, 0, '123', '13500000000', '天津 县 静海县 123', 120223, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (323, '2017091852569856', NULL, 0, 3, 100.00, 100.00, 1505725652, 0, 'weixin', 0.00, 0, '123', '13500000000', '天津 县 静海县 123', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (324, '2017091857485754', NULL, 0, 3, 100.00, 100.00, 1505725689, 0, 'weixin', 0.00, 0, '123', '13500000000', '天津 县 静海县 123', 120223, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (325, '2017091857531015', NULL, 0, 3, 300.09, 300.09, 1505726137, 0, 'weixin', 0.00, 0, '11', '111111111111111', '北京 北京 丰台区 111111111111', 110106, 0, '', '', 12, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (326, '2017091854485148', NULL, 0, 3, 0.01, 0.01, 1505727478, 0, 'weixin', 0.00, 0, '11', '111111111111111', '北京 北京 丰台区 111111111111', 110106, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (327, '2017091810051999', NULL, 0, 3, 1676.00, 1676.00, 1505747725, 0, 'weixin', 0.00, 0, '赵俊', '18659269821', '福建省 福州市 鼓楼区 软件园A区', 350102, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (328, '2017091998100535', NULL, 0, 3, 1999.00, 1999.00, 1505762427, 0, 'weixin', 0.00, 0, '赵俊', '18659269821', '福建省 福州市 鼓楼区 软件园A区', 350102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (329, '2017091949100534', NULL, 0, 3, 1432.00, 1432.00, 1505784129, 0, 'weixin', 0.00, 0, '赵俊', '18659269821', '福建省 福州市 鼓楼区 软件园A区', 350102, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (330, '2017091955545655', NULL, 0, 3, 400.00, 400.00, 1505784871, 0, 'weixin', 0.00, 0, '赵俊', '18659269821', '福建省 福州市 鼓楼区 软件园A区', 350102, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (331, '2017091955979910', NULL, 0, 3, 952.00, 952.00, 1505786887, 0, 'weixin', 0.00, 0, '赵俊', '18659269821', '福建省 福州市 鼓楼区 软件园A区', 350102, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (332, '2017091953561019', NULL, 0, 3, 100.00, 100.00, 1505787237, 0, 'weixin', 0.00, 0, '赵俊', '18659269821', '福建省 福州市 鼓楼区 软件园A区', 350102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (333, '2017091910010148', NULL, 0, 3, 0.01, 0.01, 1505787869, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (334, '2017091952539851', NULL, 0, 3, 0.01, 0.01, 1505787924, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (335, '2017091957995710', NULL, 0, 3, 1999.00, 1999.00, 1505788057, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (336, '2017091957575510', NULL, 0, 3, 0.01, 0.01, 1505788681, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (337, '2017091949985410', NULL, 0, 3, 3998.00, 3998.00, 1505788721, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (338, '2017091957541009', NULL, 0, 3, 0.02, 0.02, 1505788921, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (339, '2017091999101575', NULL, 0, 3, 100.00, 100.00, 1505789212, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (340, '2017091950565456', NULL, 0, 3, 100.00, 100.00, 1505789266, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (341, '2017091952981025', NULL, 0, 3, 13998.00, 13998.00, 1505789716, 0, 'weixin', 0.00, 0, '2222', '222222222', '天津 天津 和平区 222222222222222222', 120101, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (342, '2017091910098501', NULL, 0, 3, 6999.00, 6999.00, 1505791533, 0, 'weixin', 0.00, 0, '2222', '222222222', '天津 天津 和平区 222222222222222222', 120101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (343, '2017091910256495', NULL, 0, 3, 716.00, 716.00, 1505791567, 0, 'weixin', 0.00, 0, '2222', '222222222', '天津 天津 和平区 222222222222222222', 120101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (344, '2017091955100484', NULL, 0, 3, 716.00, 716.00, 1505791591, 0, 'weixin', 0.00, 0, '2222', '222222222', '天津 天津 和平区 222222222222222222', 120101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (345, '2017091954555654', NULL, 0, 3, 114.00, 114.00, 1505791606, 0, 'weixin', 0.00, 0, '2222', '222222222', '天津 天津 和平区 222222222222222222', 120101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (346, '2017091997544897', NULL, 0, 3, 0.05, 0.05, 1505792890, 0, 'weixin', 0.00, 0, '2222', '222222222', '天津 天津 和平区 222222222222222222', 120101, 0, '', '', 5, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (347, '2017091948575597', NULL, 0, 3, 200.00, 200.00, 1505801824, 0, 'weixin', 0.00, 0, '2222', '222222222', '天津 天津 和平区 222222222222222222', 120101, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (348, '2017091955985610', NULL, 0, 3, 100.00, 100.00, 1505802903, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (349, '2017091910056981', NULL, 0, 3, 2148.00, 2148.00, 1505803101, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (350, '2017091951555710', NULL, 0, 3, 400.00, 400.00, 1505803171, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (351, '2017091910049561', NULL, 0, 3, 100.00, 100.00, 1505803197, 0, 'weixin', 0.00, 0, '测试', '18038389287', '福建省 莆田市 荔城区 哈哈傻哈哈', 350304, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (352, '2017091955509797', NULL, 0, 3, 0.03, 0.03, 1505815463, 0, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (353, '2017091910153101', NULL, 0, 3, 200.00, 200.00, 1505818142, 0, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (354, '2017091956999753', NULL, 0, 3, 200.00, 200.00, 1505819640, 1, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (355, '2017091957971025', NULL, 0, 3, 24423.00, 24423.00, 1505819737, 0, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 11, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (356, '2017091910010053', NULL, 0, 3, 114.00, 114.00, 1505821869, 1, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (357, '2017091951519710', NULL, 0, 3, 100.00, 100.00, 1505822163, 0, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (358, '2017091910057505', NULL, 0, 3, 100.00, 100.00, 1505822301, 0, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (359, '2017091997494997', NULL, 0, 3, 228.00, 228.00, 1505824890, 0, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (360, '2017091910010199', NULL, 0, 3, 3998.00, 3998.00, 1505824909, 0, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (361, '2017091954559749', NULL, 0, 3, 0.01, 0.01, 1505826758, 0, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (362, '2017092057985098', NULL, 0, 3, 0.03, 0.03, 1505839353, 0, 'weixin', 0.00, 0, 'xmm', '18404983954', '陕西省 西安市 莲湖区 dddddddddd', 610104, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (363, '2017092051531015', NULL, 0, 3, 1790.01, 1790.01, 1505871283, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (364, '2017092010197579', NULL, 0, 3, 400.00, 400.00, 1505871502, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 4, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (365, '2017092097555050', NULL, 0, 3, 798.00, 798.00, 1505872186, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 7, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (366, '2017092097101995', NULL, 0, 3, 1554.00, 1554.00, 1505872938, 0, 'weixin', 0.00, 0, 'hxf', '15435896359', '山西省 朔州市 平鲁区 1123', 140603, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (367, '2017092057495710', NULL, 0, 3, 100.01, 100.01, 1505875849, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (368, '2017092054975655', NULL, 0, 3, 0.03, 0.03, 1505877078, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (369, '2017092052515657', NULL, 0, 3, 200.00, 200.00, 1505877956, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (370, '2017092048975348', NULL, 0, 3, 0.01, 0.01, 1505878224, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (371, '2017092049561024', NULL, 0, 3, 838.00, 838.00, 1505878497, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (372, '2017092050521005', NULL, 0, 3, 7837.00, 7837.00, 1505878674, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (373, '2017092098491015', NULL, 0, 3, 114.00, 114.00, 1505879531, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (374, '2017092055525799', NULL, 0, 3, 0.02, 0.02, 1505879575, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (375, '2017092051555255', NULL, 0, 3, 0.01, 0.01, 1505884035, 0, 'weixin', 0.00, 0, 'dd', '15738963887', '辽宁省 丹东市 凤城市 ad', 210682, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (376, '2017092051535757', NULL, 0, 3, 342.00, 342.00, 1505886115, 0, 'weixin', 0.00, 0, 'ee', '15738963887', '河北省 秦皇岛市 北戴河区 ww', 130304, 0, '', '', 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (377, '2017092051529856', NULL, 0, 3, 0.02, 0.02, 1505892659, 0, 'weixin', 0.00, 0, '张三', '18722222222', '安徽省 合肥市 蜀山区 文一名门首府', 340104, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (378, '2017092049515453', NULL, 0, 3, 600.00, 600.00, 1505894417, 0, 'weixin', 0.00, 0, '李四', '18888888855', '北京 北京 东城区 详细地址的啦', 110101, 0, '', '', 6, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (379, '2017092050991015', NULL, 0, 3, 100.00, 100.00, 1505895090, 0, 'weixin', 0.00, 0, '李四', '18888888855', '北京 北京 东城区 详细地址的啦', 110101, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (380, '2017092752545753', NULL, 0, 4, 0.01, 0.01, 1506501492, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (381, '2017092756485510', NULL, 0, 4, 100.00, 0.01, 1506501512, 0, 'weixin', 0.00, 3, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (382, '2017092799525554', NULL, 0, 4, 0.01, 0.01, 1506501564, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (383, '2017092957515610', NULL, 0, 8, 0.01, 0.01, 1506668777, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (384, '2017092998101534', NULL, 0, 8, 0.01, 0.01, 1506668859, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (385, '2017092953985049', NULL, 0, 8, 100.00, 100.00, 1506668869, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (386, '2017092951979810', NULL, 0, 8, 0.01, 0.01, 1506668915, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (387, '2017100652515756', NULL, 0, 4, 0.01, 0.01, 1507220932, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (388, '2017100699564849', NULL, 0, 4, 0.01, 0.01, 1507220956, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (389, '2017100655549910', NULL, 0, 4, 838.00, 838.00, 1507221095, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (390, '2017100650494853', NULL, 0, 8, 0.01, 0.01, 1507221138, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (391, '2017100657504948', NULL, 0, 8, 0.01, 0.01, 1507221193, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (392, '2017100698515555', NULL, 0, 8, 100.00, 100.00, 1507221259, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 3, 0);
INSERT INTO `tp_order` VALUES (393, '2017100698991025', NULL, 0, 8, 716.00, 716.00, 1507221291, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (394, '2017100655974810', NULL, 0, 4, 716.00, 716.00, 1507221367, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (395, '2017100610150102', NULL, 0, 8, 0.01, 0.01, 1507221614, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (396, '2017100697485499', NULL, 0, 8, 0.01, 0.01, 1507221690, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (397, '2017100610155539', NULL, 0, 8, 0.01, 0.01, 1507221710, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (398, '2017100656571015', NULL, 0, 8, 716.00, 716.00, 1507221752, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (399, '2017100652981005', NULL, 0, 8, 739.00, 739.00, 1507222148, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (400, '2017100656995210', NULL, 0, 8, 716.00, 716.00, 1507222280, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (401, '2017100697489955', NULL, 0, 8, 716.00, 716.00, 1507222362, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (402, '2017100648515698', NULL, 0, 8, 6999.00, 6999.00, 1507222416, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (403, '2017100648975710', NULL, 0, 8, 0.01, 0.01, 1507256576, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (404, '2017100610252575', NULL, 0, 8, 0.01, 0.01, 1507256831, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (405, '2017100699494957', NULL, 0, 8, 0.01, 0.01, 1507257036, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (406, '2017100654100575', NULL, 0, 8, 0.01, 0.01, 1507257094, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (407, '2017100648541029', NULL, 0, 8, 0.01, 0.01, 1507257184, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (408, '2017100697515348', NULL, 0, 8, 0.01, 0.01, 1507257322, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (409, '2017100698495652', NULL, 0, 8, 0.00, 0.00, 1507257323, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 0, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (410, '2017100655491001', NULL, 0, 8, 0.01, 0.01, 1507257447, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (411, '2017100650101984', NULL, 0, 8, 0.01, 0.01, 1507258194, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (412, '2017100649519751', NULL, 0, 4, 0.01, 0.01, 1507258721, 0, 'weixin', 0.01, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, '4200000016201710066437386082', NULL, NULL, '0', NULL, 0, 1, NULL, 2, 1, 1, 1, 20);
INSERT INTO `tp_order` VALUES (413, '2017100610057514', NULL, 0, 4, 200.00, 200.00, 1507258797, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 2, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (414, '2017100653494910', NULL, 0, 4, 100.00, 100.00, 1507259557, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (415, '2017100648494949', NULL, 0, 4, 100.00, 100.00, 1507259856, 0, 'weixin', 0.00, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (416, '2017100699504848', NULL, 0, 4, 0.01, 0.01, 1507265484, 0, 'weixin', 0.01, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, '4200000013201710066428759736', NULL, NULL, '0', NULL, 0, 1, NULL, 2, 1, 1, 1, 20);
INSERT INTO `tp_order` VALUES (417, '2017100657100102', NULL, 0, 4, 0.01, 0.01, 1507265705, 0, 'weixin', 0.01, 0, '小明', '15088888888', '河北省 石家庄市 长安区 永安路123号5楼', 130102, 0, '', '', 1, '4200000009201710066426223856', '顺丰', '12312321', '0', NULL, 0, 1, NULL, 2, 2, 1, 1, 30);
INSERT INTO `tp_order` VALUES (418, '2017100650554854', NULL, 0, 8, 0.01, 0.01, 1507269474, 0, 'weixin', 0.00, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 0, '', '', 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (419, '2018030148995148', NULL, 0, 4, 0.01, 0.01, 1519898128, 0, 'weixin', 0.01, 0, 'test', '15088888888', '天津 天津 河东区 test', 120102, 4, '', '', 1, '4200000065201803010690488736', '中通快递', '528046542306', '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 30);
INSERT INTO `tp_order` VALUES (420, '2018030554101100', NULL, 0, 8, 0.01, 0.01, 1520222054, 0, 'weixin', 0.01, 0, '测试', '15088888888', '河北省 石家庄市 桥东区 测试测试', 130103, 4, '', '', 1, '4200000057201803053005330871', '中通快递', '528046542306', '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 30);
INSERT INTO `tp_order` VALUES (421, '2019032810152975', NULL, 0, 3, 100.00, 100.00, 1553757982, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 朝阳区 十里河', 110105, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (422, '2019032849505298', NULL, 0, 3, 100.00, 100.00, 1553758193, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 朝阳区 十里河', 110105, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (423, '2019032899985254', NULL, 0, 3, 100.00, 100.00, 1553758396, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 朝阳区 十里河', 110105, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (424, '2019032851574848', NULL, 0, 9, 100.00, 100.00, 1553759523, 0, 'weixin', 0.00, 0, 'hjklh', '13156343747', '北京 北京 东城区 1313', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (425, '2019032855575497', NULL, 0, 11, 100.00, 100.00, 1553760087, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (426, '2019032899100985', NULL, 0, 11, 100.00, 100.00, 1553760640, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (427, '2019032856539756', NULL, 0, 11, 100.00, 100.00, 1553760840, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (428, '2019032855985052', NULL, 0, 11, 100.00, 100.00, 1553762199, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (429, '2019032853102505', NULL, 0, 11, 100.00, 100.00, 1553762277, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (430, '2019032899489957', NULL, 0, 11, 100.00, 100.00, 1553762380, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (431, '2019032850571009', NULL, 0, 11, 100.00, 100.00, 1553762466, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (432, '2019032898539997', NULL, 0, 11, 100.00, 100.00, 1553762523, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (433, '2019032850564998', NULL, 0, 11, 100.00, 100.00, 1553762610, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (434, '2019032850525298', NULL, 0, 11, 100.00, 100.00, 1553762770, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (435, '2019032850534854', NULL, 0, 11, 100.00, 100.00, 1553763762, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (436, '2019032849495354', NULL, 0, 9, 0.01, 0.01, 1553766705, 0, 'weixin', 0.00, 0, 'hjklh', '13156343747', '北京 北京 东城区 1313', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (437, '2019032856974897', NULL, 0, 11, 0.01, 0.01, 1553766824, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (438, '2019032898569949', NULL, 0, 11, 0.01, 0.01, 1553766971, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (439, '2019032897101545', NULL, 0, 11, 0.01, 0.01, 1553767226, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (440, '2019032854524950', NULL, 0, 11, 0.01, 0.01, 1553768262, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (441, '2019032810257499', NULL, 0, 9, 0.01, 0.01, 1553768399, 0, 'weixin', 0.00, 0, 'hjklh', '13156343747', '北京 北京 东城区 1313', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (442, '2019032852515298', NULL, 0, 9, 0.01, 0.01, 1553768436, 0, 'weixin', 0.01, 0, 'hjklh', '13156343747', '北京 北京 东城区 1313', 110101, 0, '', NULL, 1, '4200000300201903283597563508', NULL, NULL, '2', '买错了', 1553768476, 1, NULL, 1, 1, 1, 1, 20);
INSERT INTO `tp_order` VALUES (443, '2019032952984899', NULL, 0, 11, 0.01, 0.01, 1553824692, 0, 'weixin', 0.01, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 4, '', NULL, 1, '4200000295201903299274737440', '中通快递', '123456', '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 40);
INSERT INTO `tp_order` VALUES (444, '2019032952989910', NULL, 0, 11, 0.01, 0.01, 1553825108, 0, 'weixin', 0.01, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, '4200000289201903294895777495', NULL, NULL, '2', '拍错了', 1553825224, 1, NULL, 1, 1, 1, 1, 20);
INSERT INTO `tp_order` VALUES (445, '2019032949565754', NULL, 0, 11, 0.01, 0.01, 1553826561, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (446, '2019032955481005', NULL, 0, 9, 0.01, 0.01, 1553843879, 0, 'weixin', 0.01, 0, 'hjklh', '13156343747', '北京 北京 东城区 1313', 110101, 0, '', NULL, 1, '4200000290201903298647345434', NULL, NULL, '2', '滚滚滚滚', 1553843904, 1, NULL, 1, 1, 1, 1, 20);
INSERT INTO `tp_order` VALUES (447, '2019032954555110', NULL, 0, 9, 999.02, 999.02, 1553855238, 0, 'weixin', 0.00, 0, 'hjklh', '13156343747', '北京 北京 东城区 1313', 110101, 0, '我没有钱支付 可以帮我付了吗', NULL, 3, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (448, '2019033055999710', NULL, 0, 11, 0.01, 0.01, 1553917015, 0, 'weixin', 0.01, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 5, '', NULL, 1, '4200000293201903306305665614', '圆通快递', '800705274074585991', '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 30);
INSERT INTO `tp_order` VALUES (449, '2019033010054575', NULL, 0, 11, 0.01, 0.01, 1553929725, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (450, '2019033049985410', NULL, 0, 11, 0.01, 0.01, 1553930065, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (451, '2019033049525157', NULL, 0, 11, 0.01, 0.01, 1553930241, 0, 'weixin', 0.01, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, '4200000305201903309824599320', NULL, NULL, '1', '1111', 1553930290, 1, NULL, 1, 1, 1, 1, 20);
INSERT INTO `tp_order` VALUES (452, '2019033053985448', NULL, 0, 11, 0.01, 0.01, 1553935157, 0, 'weixin', 0.01, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, '4200000290201903300565840279', NULL, NULL, '2', '不要了', 1553935194, 1, NULL, 1, 1, 1, 1, 20);
INSERT INTO `tp_order` VALUES (453, '2019040199505452', NULL, 0, 9, 299.00, 299.00, 1554089452, 0, 'weixin', 0.00, 0, 'hjklh', '13156343747', '北京 北京 东城区 1313', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (454, '2019040155499951', NULL, 0, 9, 799.00, 799.00, 1554089479, 0, 'weixin', 0.00, 0, 'hjklh', '13156343747', '北京 北京 东城区 1313', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (455, '2019040153485610', NULL, 0, 9, 799.00, 799.00, 1554089509, 0, 'weixin', 0.00, 0, 'hjklh', '13156343747', '北京 北京 东城区 1313', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (456, '2019040198995457', NULL, 0, 11, 369.00, 369.00, 1554089515, 0, 'weixin', 0.00, 0, '桑瑞恒', '18146559572', '北京 北京 东城区 几点开始就换来的是', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (457, '2019040153515648', NULL, 0, 9, 369.00, 369.00, 1554089525, 0, 'weixin', 0.00, 0, 'hjklh', '13156343747', '北京 北京 东城区 1313', 110101, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (458, '2019040253495448', NULL, 0, 19, 15.00, 15.00, 1554187413, 0, 'weixin', 0.00, 0, '喇叭', '13213666', '北京 北京 朝阳区 东方郁金香', 110105, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (459, '2019040310153574', NULL, 0, 12, 73.00, 73.00, 1554286030, 0, 'weixin', 0.00, 0, '陆新', '18612011641', '北京 北京 昌平区 天通苑五区', 110114, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (460, '2019040410055541', NULL, 0, 10, 299.00, 299.00, 1554372381, 0, 'weixin', 0.00, 0, '111111111', '17809090909', '北京 北京 北京 9', 0, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);
INSERT INTO `tp_order` VALUES (461, '2019040457995210', NULL, 0, 10, 138.00, 138.00, 1554372521, 0, 'weixin', 0.00, 0, 'jhg', '17809090909', '北京 北京 北京 9u7', 0, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 10);
INSERT INTO `tp_order` VALUES (462, '2019040556521014', NULL, 0, 12, 160.00, 160.00, 1554456424, 0, 'weixin', 0.00, 0, '陆新', '18612011641', '北京 北京 昌平区 天通苑五区', 110114, 0, '', NULL, 1, NULL, NULL, NULL, '0', NULL, 0, 1, NULL, 1, 1, 1, 1, 0);

-- ----------------------------
-- Table structure for tp_order_product
-- ----------------------------
DROP TABLE IF EXISTS `tp_order_product`;
CREATE TABLE `tp_order_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单商品信息表',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '商品id',
  `order_id` int(11) NOT NULL DEFAULT 0 COMMENT '订单id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品名称',
  `price` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `photo_x` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图',
  `pro_buff` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品属性',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `num` int(11) NOT NULL DEFAULT 1 COMMENT '购买数量',
  `pro_guige` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格id和规格名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 523 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_order_product
-- ----------------------------
INSERT INTO `tp_order_product` VALUES (4, 9, 3, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '黑', 1504509092, 1, '');
INSERT INTO `tp_order_product` VALUES (5, 8, 4, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1504509265, 1, '');
INSERT INTO `tp_order_product` VALUES (6, 9, 5, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504509579, 2, '');
INSERT INTO `tp_order_product` VALUES (7, 2, 6, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504510755, 1, '');
INSERT INTO `tp_order_product` VALUES (8, 4, 7, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1504510927, 4, '');
INSERT INTO `tp_order_product` VALUES (9, 2, 8, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504511806, 1, '');
INSERT INTO `tp_order_product` VALUES (10, 8, 9, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504512411, 1, '');
INSERT INTO `tp_order_product` VALUES (11, 9, 10, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504513086, 1, '');
INSERT INTO `tp_order_product` VALUES (12, 9, 11, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504514669, 31, '');
INSERT INTO `tp_order_product` VALUES (13, 2, 11, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504514669, 1, '');
INSERT INTO `tp_order_product` VALUES (14, 2, 12, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504514745, 1, '');
INSERT INTO `tp_order_product` VALUES (15, 9, 13, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504516462, 1, '');
INSERT INTO `tp_order_product` VALUES (16, 7, 14, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504517112, 1, '');
INSERT INTO `tp_order_product` VALUES (17, 6, 15, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504517144, 6, '');
INSERT INTO `tp_order_product` VALUES (18, 2, 16, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504517329, 3, '');
INSERT INTO `tp_order_product` VALUES (19, 3, 16, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1504517329, 2, '');
INSERT INTO `tp_order_product` VALUES (20, 9, 17, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504519335, 1, '');
INSERT INTO `tp_order_product` VALUES (21, 9, 18, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504520533, 1, '');
INSERT INTO `tp_order_product` VALUES (22, 9, 19, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504527542, 2, '');
INSERT INTO `tp_order_product` VALUES (23, 9, 20, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504531423, 1, '');
INSERT INTO `tp_order_product` VALUES (24, 3, 20, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1504531424, 1, '');
INSERT INTO `tp_order_product` VALUES (25, 2, 21, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504543676, 1, '');
INSERT INTO `tp_order_product` VALUES (26, 8, 22, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504568650, 3, '');
INSERT INTO `tp_order_product` VALUES (27, 8, 23, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504574491, 1, '');
INSERT INTO `tp_order_product` VALUES (28, 5, 24, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1504576894, 8, '');
INSERT INTO `tp_order_product` VALUES (29, 8, 25, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504577593, 1, '');
INSERT INTO `tp_order_product` VALUES (30, 8, 26, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504582560, 3, '');
INSERT INTO `tp_order_product` VALUES (31, 8, 27, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504584021, 1, '');
INSERT INTO `tp_order_product` VALUES (32, 6, 28, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504589163, 7, '');
INSERT INTO `tp_order_product` VALUES (33, 8, 28, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504589163, 3, '');
INSERT INTO `tp_order_product` VALUES (34, 2, 28, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504589163, 1, '');
INSERT INTO `tp_order_product` VALUES (35, 8, 29, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504590663, 1, '');
INSERT INTO `tp_order_product` VALUES (36, 2, 30, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504590997, 1, '');
INSERT INTO `tp_order_product` VALUES (37, 9, 30, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504590997, 2, '');
INSERT INTO `tp_order_product` VALUES (38, 7, 31, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504591027, 1, '');
INSERT INTO `tp_order_product` VALUES (39, 6, 32, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504591057, 2, '');
INSERT INTO `tp_order_product` VALUES (40, 3, 33, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1504591138, 2, '');
INSERT INTO `tp_order_product` VALUES (41, 8, 34, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504591365, 1, '');
INSERT INTO `tp_order_product` VALUES (42, 2, 35, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504591949, 2, '');
INSERT INTO `tp_order_product` VALUES (43, 8, 36, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504593598, 3, '');
INSERT INTO `tp_order_product` VALUES (44, 9, 37, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504593943, 16, '');
INSERT INTO `tp_order_product` VALUES (45, 8, 38, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504594021, 1, '');
INSERT INTO `tp_order_product` VALUES (46, 9, 38, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504594021, 2, '');
INSERT INTO `tp_order_product` VALUES (47, 3, 38, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1504594021, 3, '');
INSERT INTO `tp_order_product` VALUES (48, 9, 39, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504596059, 2, '');
INSERT INTO `tp_order_product` VALUES (49, 7, 40, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504596139, 6, '');
INSERT INTO `tp_order_product` VALUES (50, 7, 41, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504598329, 1, '');
INSERT INTO `tp_order_product` VALUES (51, 8, 41, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504598330, 1, '');
INSERT INTO `tp_order_product` VALUES (52, 8, 42, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504598716, 1, '');
INSERT INTO `tp_order_product` VALUES (53, 7, 43, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504598799, 1, '');
INSERT INTO `tp_order_product` VALUES (54, 9, 43, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504598800, 3, '');
INSERT INTO `tp_order_product` VALUES (55, 6, 43, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504598800, 1, '');
INSERT INTO `tp_order_product` VALUES (56, 7, 44, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504600959, 5, '');
INSERT INTO `tp_order_product` VALUES (57, 8, 44, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504600959, 11, '');
INSERT INTO `tp_order_product` VALUES (58, 9, 44, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504600959, 6, '');
INSERT INTO `tp_order_product` VALUES (59, 8, 45, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504601720, 1, '');
INSERT INTO `tp_order_product` VALUES (60, 2, 46, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504603939, 2, '');
INSERT INTO `tp_order_product` VALUES (61, 5, 47, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1504614993, 5, '');
INSERT INTO `tp_order_product` VALUES (62, 6, 48, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504615567, 1, '');
INSERT INTO `tp_order_product` VALUES (63, 9, 49, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504628109, 1, '');
INSERT INTO `tp_order_product` VALUES (64, 4, 50, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1504632373, 1, '');
INSERT INTO `tp_order_product` VALUES (65, 9, 51, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504663898, 3, '');
INSERT INTO `tp_order_product` VALUES (66, 8, 52, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504667347, 1, '');
INSERT INTO `tp_order_product` VALUES (67, 8, 53, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504669423, 3, '');
INSERT INTO `tp_order_product` VALUES (68, 9, 54, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504670310, 2, '');
INSERT INTO `tp_order_product` VALUES (69, 9, 55, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504676625, 1, '');
INSERT INTO `tp_order_product` VALUES (70, 8, 56, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504677200, 1, '');
INSERT INTO `tp_order_product` VALUES (71, 9, 57, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504679002, 1, '');
INSERT INTO `tp_order_product` VALUES (72, 8, 57, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504679002, 1, '');
INSERT INTO `tp_order_product` VALUES (73, 9, 58, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504680230, 2, '');
INSERT INTO `tp_order_product` VALUES (74, 4, 59, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1504682833, 1, '');
INSERT INTO `tp_order_product` VALUES (75, 9, 59, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504682833, 8, '');
INSERT INTO `tp_order_product` VALUES (76, 6, 60, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504682913, 1, '');
INSERT INTO `tp_order_product` VALUES (77, 9, 61, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504683387, 2, '');
INSERT INTO `tp_order_product` VALUES (78, 9, 62, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504684876, 5, '');
INSERT INTO `tp_order_product` VALUES (79, 9, 63, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504685614, 3, '');
INSERT INTO `tp_order_product` VALUES (80, 3, 64, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1504686620, 2, '');
INSERT INTO `tp_order_product` VALUES (81, 6, 65, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504687608, 1, '');
INSERT INTO `tp_order_product` VALUES (82, 6, 66, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504687608, 1, '');
INSERT INTO `tp_order_product` VALUES (83, 7, 67, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504687816, 1, '');
INSERT INTO `tp_order_product` VALUES (84, 4, 68, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1504688256, 1, '');
INSERT INTO `tp_order_product` VALUES (85, 2, 69, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504689372, 2, '');
INSERT INTO `tp_order_product` VALUES (86, 8, 70, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504689470, 11, '');
INSERT INTO `tp_order_product` VALUES (87, 7, 71, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504689855, 1, '');
INSERT INTO `tp_order_product` VALUES (88, 6, 72, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504689929, 1, '');
INSERT INTO `tp_order_product` VALUES (89, 2, 73, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504690088, 1, '');
INSERT INTO `tp_order_product` VALUES (90, 2, 74, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504690186, 1, '');
INSERT INTO `tp_order_product` VALUES (91, 9, 75, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504690763, 1, '');
INSERT INTO `tp_order_product` VALUES (92, 9, 76, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504690794, 1, '');
INSERT INTO `tp_order_product` VALUES (93, 9, 77, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504690867, 1, '');
INSERT INTO `tp_order_product` VALUES (94, 5, 78, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1504691121, 1, '');
INSERT INTO `tp_order_product` VALUES (95, 2, 79, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504693477, 2, '');
INSERT INTO `tp_order_product` VALUES (96, 4, 80, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1504695950, 1, '');
INSERT INTO `tp_order_product` VALUES (97, 2, 81, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504713173, 2, '');
INSERT INTO `tp_order_product` VALUES (98, 9, 82, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504749166, 2, '');
INSERT INTO `tp_order_product` VALUES (99, 8, 83, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504749783, 2, '');
INSERT INTO `tp_order_product` VALUES (100, 9, 84, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504751394, 1, '');
INSERT INTO `tp_order_product` VALUES (101, 8, 85, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504753373, 1, '');
INSERT INTO `tp_order_product` VALUES (102, 9, 86, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504754247, 1, '');
INSERT INTO `tp_order_product` VALUES (103, 6, 87, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504754359, 1, '');
INSERT INTO `tp_order_product` VALUES (104, 9, 88, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504754564, 1, '');
INSERT INTO `tp_order_product` VALUES (105, 8, 89, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504754760, 1, '');
INSERT INTO `tp_order_product` VALUES (106, 7, 90, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504754808, 2, '');
INSERT INTO `tp_order_product` VALUES (107, 9, 91, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504755278, 1, '');
INSERT INTO `tp_order_product` VALUES (108, 5, 92, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1504756338, 1, '');
INSERT INTO `tp_order_product` VALUES (109, 7, 93, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504762601, 1, '');
INSERT INTO `tp_order_product` VALUES (110, 5, 94, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1504762676, 1, '');
INSERT INTO `tp_order_product` VALUES (111, 7, 95, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504762750, 2, '');
INSERT INTO `tp_order_product` VALUES (112, 9, 96, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504764026, 1, '');
INSERT INTO `tp_order_product` VALUES (113, 7, 97, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504777257, 1, '');
INSERT INTO `tp_order_product` VALUES (114, 9, 97, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504777257, 4, '');
INSERT INTO `tp_order_product` VALUES (115, 8, 97, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504777257, 1, '');
INSERT INTO `tp_order_product` VALUES (116, 8, 98, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504778467, 2, '');
INSERT INTO `tp_order_product` VALUES (117, 3, 99, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1504797800, 2, '');
INSERT INTO `tp_order_product` VALUES (118, 3, 100, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1504798120, 3, '');
INSERT INTO `tp_order_product` VALUES (119, 8, 101, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504799545, 2, '');
INSERT INTO `tp_order_product` VALUES (120, 8, 102, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504805942, 1, '');
INSERT INTO `tp_order_product` VALUES (121, 8, 103, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504836184, 1, '');
INSERT INTO `tp_order_product` VALUES (122, 8, 104, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504836282, 1, '');
INSERT INTO `tp_order_product` VALUES (123, 9, 105, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504838468, 12, '');
INSERT INTO `tp_order_product` VALUES (124, 2, 106, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504839646, 2, '');
INSERT INTO `tp_order_product` VALUES (125, 9, 107, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504839798, 1, '');
INSERT INTO `tp_order_product` VALUES (126, 8, 108, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504840959, 1, '');
INSERT INTO `tp_order_product` VALUES (127, 7, 109, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504850743, 1, '');
INSERT INTO `tp_order_product` VALUES (128, 3, 110, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1504851048, 1, '');
INSERT INTO `tp_order_product` VALUES (129, 6, 111, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504851281, 1, '');
INSERT INTO `tp_order_product` VALUES (130, 9, 112, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504851353, 3, '');
INSERT INTO `tp_order_product` VALUES (131, 3, 113, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1504851916, 1, '');
INSERT INTO `tp_order_product` VALUES (132, 8, 114, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504852121, 8, '');
INSERT INTO `tp_order_product` VALUES (133, 7, 115, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504853931, 1, '');
INSERT INTO `tp_order_product` VALUES (134, 9, 116, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504853937, 3, '');
INSERT INTO `tp_order_product` VALUES (135, 2, 117, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1504857362, 1, '');
INSERT INTO `tp_order_product` VALUES (136, 8, 118, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504858369, 5, '');
INSERT INTO `tp_order_product` VALUES (137, 9, 119, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504859121, 1, '');
INSERT INTO `tp_order_product` VALUES (138, 8, 120, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504859143, 1, '');
INSERT INTO `tp_order_product` VALUES (139, 6, 121, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504859148, 1, '');
INSERT INTO `tp_order_product` VALUES (140, 7, 122, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1504859155, 6, '');
INSERT INTO `tp_order_product` VALUES (141, 4, 123, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1504859161, 1, '');
INSERT INTO `tp_order_product` VALUES (142, 5, 124, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1504859166, 1, '');
INSERT INTO `tp_order_product` VALUES (143, 8, 125, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504859270, 1, '');
INSERT INTO `tp_order_product` VALUES (144, 9, 126, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504859716, 2, '');
INSERT INTO `tp_order_product` VALUES (145, 9, 127, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504862616, 5, '');
INSERT INTO `tp_order_product` VALUES (146, 9, 128, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504872361, 4, '');
INSERT INTO `tp_order_product` VALUES (147, 9, 129, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504918555, 1, '');
INSERT INTO `tp_order_product` VALUES (148, 8, 130, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504918631, 3, '');
INSERT INTO `tp_order_product` VALUES (149, 6, 131, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504921556, 1, '');
INSERT INTO `tp_order_product` VALUES (150, 5, 132, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1504928103, 2, '');
INSERT INTO `tp_order_product` VALUES (151, 8, 133, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504938307, 2, '');
INSERT INTO `tp_order_product` VALUES (152, 9, 134, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504941307, 7, '');
INSERT INTO `tp_order_product` VALUES (153, 4, 135, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1504942334, 2, '');
INSERT INTO `tp_order_product` VALUES (154, 6, 136, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1504944408, 1, '');
INSERT INTO `tp_order_product` VALUES (155, 9, 137, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504946142, 1, '');
INSERT INTO `tp_order_product` VALUES (156, 8, 138, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1504947738, 2, '');
INSERT INTO `tp_order_product` VALUES (157, 9, 139, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1504951886, 1, '');
INSERT INTO `tp_order_product` VALUES (158, 9, 140, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505005354, 1, '');
INSERT INTO `tp_order_product` VALUES (159, 4, 140, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505005354, 1, '');
INSERT INTO `tp_order_product` VALUES (160, 2, 140, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505005354, 2, '');
INSERT INTO `tp_order_product` VALUES (161, 9, 141, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505007941, 1, '');
INSERT INTO `tp_order_product` VALUES (162, 6, 142, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505011239, 2, '');
INSERT INTO `tp_order_product` VALUES (163, 2, 143, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505041398, 4, '');
INSERT INTO `tp_order_product` VALUES (164, 9, 143, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505041399, 3, '');
INSERT INTO `tp_order_product` VALUES (165, 8, 144, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505046356, 1, '');
INSERT INTO `tp_order_product` VALUES (166, 9, 145, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '红', 1505046886, 1, '');
INSERT INTO `tp_order_product` VALUES (167, 8, 146, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1505046956, 1, '');
INSERT INTO `tp_order_product` VALUES (168, 8, 147, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505048202, 1, '');
INSERT INTO `tp_order_product` VALUES (169, 9, 148, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505052646, 3, '');
INSERT INTO `tp_order_product` VALUES (170, 8, 149, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505052669, 1, '');
INSERT INTO `tp_order_product` VALUES (171, 2, 150, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505073512, 1, '');
INSERT INTO `tp_order_product` VALUES (172, 9, 151, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505073536, 1, '');
INSERT INTO `tp_order_product` VALUES (173, 7, 152, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505073996, 5, '');
INSERT INTO `tp_order_product` VALUES (174, 2, 153, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505074063, 1, '');
INSERT INTO `tp_order_product` VALUES (175, 7, 154, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505089351, 1, '');
INSERT INTO `tp_order_product` VALUES (176, 2, 155, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505092244, 1, '');
INSERT INTO `tp_order_product` VALUES (177, 8, 156, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505092443, 1, '');
INSERT INTO `tp_order_product` VALUES (178, 5, 156, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505092443, 1, '');
INSERT INTO `tp_order_product` VALUES (179, 2, 157, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505092456, 2, '');
INSERT INTO `tp_order_product` VALUES (180, 8, 158, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505093350, 2, '');
INSERT INTO `tp_order_product` VALUES (181, 8, 159, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505093445, 1, '');
INSERT INTO `tp_order_product` VALUES (182, 8, 160, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505094755, 1, '');
INSERT INTO `tp_order_product` VALUES (183, 8, 161, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505095936, 2, '');
INSERT INTO `tp_order_product` VALUES (184, 8, 162, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505108461, 1, '');
INSERT INTO `tp_order_product` VALUES (185, 8, 163, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505113746, 1, '');
INSERT INTO `tp_order_product` VALUES (186, 9, 164, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505113785, 2, '');
INSERT INTO `tp_order_product` VALUES (187, 5, 165, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505116806, 1, '');
INSERT INTO `tp_order_product` VALUES (188, 9, 166, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505117237, 6, '');
INSERT INTO `tp_order_product` VALUES (189, 6, 167, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505117417, 18, '');
INSERT INTO `tp_order_product` VALUES (190, 5, 168, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505117778, 1, '');
INSERT INTO `tp_order_product` VALUES (191, 2, 169, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505118102, 1, '');
INSERT INTO `tp_order_product` VALUES (192, 8, 170, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505118337, 2, '');
INSERT INTO `tp_order_product` VALUES (193, 9, 171, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505118723, 2, '');
INSERT INTO `tp_order_product` VALUES (194, 5, 172, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505120003, 2, '');
INSERT INTO `tp_order_product` VALUES (195, 2, 173, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505120778, 1, '');
INSERT INTO `tp_order_product` VALUES (196, 3, 174, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505121754, 6, '');
INSERT INTO `tp_order_product` VALUES (197, 7, 175, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505121928, 2, '');
INSERT INTO `tp_order_product` VALUES (198, 9, 175, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505121928, 3, '');
INSERT INTO `tp_order_product` VALUES (199, 6, 175, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505121928, 1, '');
INSERT INTO `tp_order_product` VALUES (200, 9, 176, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505122770, 3, '');
INSERT INTO `tp_order_product` VALUES (201, 9, 177, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505123346, 3, '');
INSERT INTO `tp_order_product` VALUES (202, 9, 178, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505123562, 1, '');
INSERT INTO `tp_order_product` VALUES (203, 8, 179, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505131359, 7, '');
INSERT INTO `tp_order_product` VALUES (204, 9, 180, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505133049, 3, '');
INSERT INTO `tp_order_product` VALUES (205, 8, 181, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505133310, 1, '');
INSERT INTO `tp_order_product` VALUES (206, 9, 182, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505135637, 5, '');
INSERT INTO `tp_order_product` VALUES (207, 5, 183, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505137485, 2, '');
INSERT INTO `tp_order_product` VALUES (208, 3, 184, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505137509, 2, '');
INSERT INTO `tp_order_product` VALUES (209, 4, 185, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505140722, 1, '');
INSERT INTO `tp_order_product` VALUES (210, 5, 186, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505143826, 1, '');
INSERT INTO `tp_order_product` VALUES (211, 5, 187, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505179749, 1, '');
INSERT INTO `tp_order_product` VALUES (212, 7, 188, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505179784, 1, '');
INSERT INTO `tp_order_product` VALUES (213, 8, 188, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505179785, 3, '');
INSERT INTO `tp_order_product` VALUES (214, 2, 188, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505179785, 1, '');
INSERT INTO `tp_order_product` VALUES (215, 9, 188, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505179785, 1, '');
INSERT INTO `tp_order_product` VALUES (216, 4, 189, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505181732, 2, '');
INSERT INTO `tp_order_product` VALUES (217, 8, 190, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505184197, 1, '');
INSERT INTO `tp_order_product` VALUES (218, 7, 191, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505184235, 7, '');
INSERT INTO `tp_order_product` VALUES (219, 6, 192, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505198169, 1, '');
INSERT INTO `tp_order_product` VALUES (220, 9, 193, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505200197, 3, '');
INSERT INTO `tp_order_product` VALUES (221, 9, 194, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505200446, 4, '');
INSERT INTO `tp_order_product` VALUES (222, 9, 195, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505201757, 9, '');
INSERT INTO `tp_order_product` VALUES (223, 9, 196, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505202229, 9, '');
INSERT INTO `tp_order_product` VALUES (224, 2, 197, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505203978, 1, '');
INSERT INTO `tp_order_product` VALUES (225, 6, 198, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505204035, 1, '');
INSERT INTO `tp_order_product` VALUES (226, 9, 199, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505204121, 1, '');
INSERT INTO `tp_order_product` VALUES (227, 5, 200, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505205493, 60, '');
INSERT INTO `tp_order_product` VALUES (228, 9, 201, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505207019, 14, '');
INSERT INTO `tp_order_product` VALUES (229, 9, 202, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505207169, 1, '');
INSERT INTO `tp_order_product` VALUES (230, 9, 203, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505207233, 2, '');
INSERT INTO `tp_order_product` VALUES (231, 9, 204, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505207273, 2, '');
INSERT INTO `tp_order_product` VALUES (232, 9, 205, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505207348, 2, '');
INSERT INTO `tp_order_product` VALUES (233, 6, 206, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505209008, 5, '');
INSERT INTO `tp_order_product` VALUES (234, 2, 207, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505220681, 6, '');
INSERT INTO `tp_order_product` VALUES (235, 9, 208, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505220800, 1, '');
INSERT INTO `tp_order_product` VALUES (236, 9, 209, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505226872, 6, '');
INSERT INTO `tp_order_product` VALUES (237, 7, 210, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505238152, 1, '');
INSERT INTO `tp_order_product` VALUES (238, 8, 211, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505244638, 2, '');
INSERT INTO `tp_order_product` VALUES (239, 2, 212, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505268856, 1, '');
INSERT INTO `tp_order_product` VALUES (240, 9, 213, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505270225, 5, '');
INSERT INTO `tp_order_product` VALUES (241, 9, 214, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505270330, 1, '');
INSERT INTO `tp_order_product` VALUES (242, 8, 215, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505270383, 6, '');
INSERT INTO `tp_order_product` VALUES (243, 5, 216, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505272066, 1, '');
INSERT INTO `tp_order_product` VALUES (244, 9, 217, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505272665, 1, '');
INSERT INTO `tp_order_product` VALUES (245, 4, 218, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505275971, 1, '');
INSERT INTO `tp_order_product` VALUES (246, 3, 219, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505293712, 2, '');
INSERT INTO `tp_order_product` VALUES (247, 9, 220, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505294728, 5, '');
INSERT INTO `tp_order_product` VALUES (248, 2, 221, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505298533, 1, '');
INSERT INTO `tp_order_product` VALUES (249, 8, 222, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505299959, 1, '');
INSERT INTO `tp_order_product` VALUES (250, 6, 222, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505299959, 4, '');
INSERT INTO `tp_order_product` VALUES (251, 9, 222, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505299959, 1, '');
INSERT INTO `tp_order_product` VALUES (252, 5, 222, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505299960, 1, '');
INSERT INTO `tp_order_product` VALUES (253, 9, 223, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505303242, 2, '');
INSERT INTO `tp_order_product` VALUES (254, 9, 224, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505303318, 1, '');
INSERT INTO `tp_order_product` VALUES (255, 9, 225, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505304387, 1, '');
INSERT INTO `tp_order_product` VALUES (256, 9, 226, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505314464, 3, '');
INSERT INTO `tp_order_product` VALUES (257, 8, 227, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505318231, 3, '');
INSERT INTO `tp_order_product` VALUES (258, 9, 228, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505318262, 1, '');
INSERT INTO `tp_order_product` VALUES (259, 5, 229, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505339883, 1, '');
INSERT INTO `tp_order_product` VALUES (260, 9, 230, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505349574, 5, '');
INSERT INTO `tp_order_product` VALUES (261, 8, 231, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505357049, 1, '');
INSERT INTO `tp_order_product` VALUES (262, 9, 231, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505357050, 3, '');
INSERT INTO `tp_order_product` VALUES (263, 6, 231, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505357050, 1, '');
INSERT INTO `tp_order_product` VALUES (264, 7, 231, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505357050, 1, '');
INSERT INTO `tp_order_product` VALUES (265, 7, 232, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505359255, 1, '');
INSERT INTO `tp_order_product` VALUES (266, 8, 233, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505359671, 1, '');
INSERT INTO `tp_order_product` VALUES (267, 3, 234, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505360077, 6, '');
INSERT INTO `tp_order_product` VALUES (268, 9, 235, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505372569, 1, '');
INSERT INTO `tp_order_product` VALUES (269, 8, 236, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505372764, 1, '');
INSERT INTO `tp_order_product` VALUES (270, 5, 237, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505373245, 1, '');
INSERT INTO `tp_order_product` VALUES (271, 8, 238, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505373317, 1, '');
INSERT INTO `tp_order_product` VALUES (272, 9, 239, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505373649, 1, '');
INSERT INTO `tp_order_product` VALUES (273, 8, 240, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505374230, 1, '');
INSERT INTO `tp_order_product` VALUES (274, 8, 241, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505375470, 1, '');
INSERT INTO `tp_order_product` VALUES (275, 8, 242, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505379295, 2, '');
INSERT INTO `tp_order_product` VALUES (276, 6, 243, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505380484, 3, '');
INSERT INTO `tp_order_product` VALUES (277, 9, 244, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505380501, 16, '');
INSERT INTO `tp_order_product` VALUES (278, 8, 244, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505380501, 1, '');
INSERT INTO `tp_order_product` VALUES (279, 8, 245, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505380800, 1, '');
INSERT INTO `tp_order_product` VALUES (280, 4, 246, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505383146, 4, '');
INSERT INTO `tp_order_product` VALUES (281, 9, 247, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505383168, 3, '');
INSERT INTO `tp_order_product` VALUES (282, 6, 248, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505384669, 1, '');
INSERT INTO `tp_order_product` VALUES (283, 8, 249, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505385197, 1, '');
INSERT INTO `tp_order_product` VALUES (284, 8, 250, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505387901, 1, '');
INSERT INTO `tp_order_product` VALUES (285, 8, 251, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505389255, 1, '');
INSERT INTO `tp_order_product` VALUES (286, 5, 252, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505392059, 1, '');
INSERT INTO `tp_order_product` VALUES (287, 9, 253, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505393242, 5, '');
INSERT INTO `tp_order_product` VALUES (288, 8, 254, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505394575, 1, '');
INSERT INTO `tp_order_product` VALUES (289, 9, 255, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505396461, 7, '');
INSERT INTO `tp_order_product` VALUES (290, 9, 256, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505405909, 1, '');
INSERT INTO `tp_order_product` VALUES (291, 2, 257, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505420023, 1, '');
INSERT INTO `tp_order_product` VALUES (292, 4, 258, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505420109, 1, '');
INSERT INTO `tp_order_product` VALUES (293, 9, 258, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505420109, 4, '');
INSERT INTO `tp_order_product` VALUES (294, 7, 258, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505420109, 2, '');
INSERT INTO `tp_order_product` VALUES (295, 6, 259, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505436475, 1, '');
INSERT INTO `tp_order_product` VALUES (296, 7, 259, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505436475, 1, '');
INSERT INTO `tp_order_product` VALUES (297, 8, 259, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505436475, 2, '');
INSERT INTO `tp_order_product` VALUES (298, 5, 260, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505440867, 1, '');
INSERT INTO `tp_order_product` VALUES (299, 3, 260, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505440867, 4, '');
INSERT INTO `tp_order_product` VALUES (300, 7, 261, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505441242, 1, '');
INSERT INTO `tp_order_product` VALUES (301, 8, 262, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505441541, 1, '');
INSERT INTO `tp_order_product` VALUES (302, 7, 263, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505442635, 2, '');
INSERT INTO `tp_order_product` VALUES (303, 8, 264, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505443018, 1, '');
INSERT INTO `tp_order_product` VALUES (304, 8, 265, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505446617, 2, '');
INSERT INTO `tp_order_product` VALUES (305, 9, 266, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505447054, 4, '');
INSERT INTO `tp_order_product` VALUES (306, 9, 267, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505447108, 1, '');
INSERT INTO `tp_order_product` VALUES (307, 2, 268, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505447159, 1, '');
INSERT INTO `tp_order_product` VALUES (308, 6, 269, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505448058, 1, '');
INSERT INTO `tp_order_product` VALUES (309, 9, 270, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505461694, 1, '');
INSERT INTO `tp_order_product` VALUES (310, 4, 271, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505461712, 1, '');
INSERT INTO `tp_order_product` VALUES (311, 8, 272, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505461964, 6, '');
INSERT INTO `tp_order_product` VALUES (312, 2, 273, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505462015, 2, '');
INSERT INTO `tp_order_product` VALUES (313, 3, 274, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505476894, 3, '');
INSERT INTO `tp_order_product` VALUES (314, 7, 275, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505476926, 4, '');
INSERT INTO `tp_order_product` VALUES (315, 8, 276, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505476993, 3, '');
INSERT INTO `tp_order_product` VALUES (316, 2, 276, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505476993, 1, '');
INSERT INTO `tp_order_product` VALUES (317, 6, 276, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505476993, 2, '');
INSERT INTO `tp_order_product` VALUES (318, 4, 277, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505481790, 3, '');
INSERT INTO `tp_order_product` VALUES (319, 8, 278, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505526421, 2, '');
INSERT INTO `tp_order_product` VALUES (320, 4, 279, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505530034, 1, '');
INSERT INTO `tp_order_product` VALUES (321, 9, 280, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505534468, 5, '');
INSERT INTO `tp_order_product` VALUES (322, 7, 281, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505542950, 1, '');
INSERT INTO `tp_order_product` VALUES (323, 3, 282, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505551912, 1, '');
INSERT INTO `tp_order_product` VALUES (324, 8, 283, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505551947, 1, '');
INSERT INTO `tp_order_product` VALUES (325, 6, 284, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505554431, 1, '');
INSERT INTO `tp_order_product` VALUES (326, 7, 285, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505555156, 1, '');
INSERT INTO `tp_order_product` VALUES (327, 3, 286, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505559242, 17, '');
INSERT INTO `tp_order_product` VALUES (328, 9, 287, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505577505, 2, '');
INSERT INTO `tp_order_product` VALUES (329, 7, 287, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505577505, 1, '');
INSERT INTO `tp_order_product` VALUES (330, 9, 288, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505577527, 1, '');
INSERT INTO `tp_order_product` VALUES (331, 9, 289, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505577897, 18, '');
INSERT INTO `tp_order_product` VALUES (332, 7, 289, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505577897, 3, '');
INSERT INTO `tp_order_product` VALUES (333, 9, 290, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505578510, 2, '');
INSERT INTO `tp_order_product` VALUES (334, 9, 291, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505578702, 1, '');
INSERT INTO `tp_order_product` VALUES (335, 9, 292, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505578752, 1, '');
INSERT INTO `tp_order_product` VALUES (336, 8, 293, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505615291, 1, '');
INSERT INTO `tp_order_product` VALUES (337, 8, 294, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505619557, 2, '');
INSERT INTO `tp_order_product` VALUES (338, 5, 294, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505619557, 3, '');
INSERT INTO `tp_order_product` VALUES (339, 9, 295, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505621672, 1, '');
INSERT INTO `tp_order_product` VALUES (340, 7, 296, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505625666, 2, '');
INSERT INTO `tp_order_product` VALUES (341, 9, 297, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505636758, 2, '');
INSERT INTO `tp_order_product` VALUES (342, 5, 298, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505645306, 1, '');
INSERT INTO `tp_order_product` VALUES (343, 7, 299, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505657146, 1, '');
INSERT INTO `tp_order_product` VALUES (344, 9, 300, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505672490, 2, '');
INSERT INTO `tp_order_product` VALUES (345, 9, 301, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505672942, 1, '');
INSERT INTO `tp_order_product` VALUES (346, 5, 302, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505699841, 1, '');
INSERT INTO `tp_order_product` VALUES (347, 8, 303, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505700316, 4, '');
INSERT INTO `tp_order_product` VALUES (348, 2, 304, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505702408, 1, '');
INSERT INTO `tp_order_product` VALUES (349, 9, 305, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505702702, 3, '');
INSERT INTO `tp_order_product` VALUES (350, 7, 306, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505710858, 7, '');
INSERT INTO `tp_order_product` VALUES (351, 2, 307, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505711478, 2, '');
INSERT INTO `tp_order_product` VALUES (352, 8, 308, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505714301, 1, '');
INSERT INTO `tp_order_product` VALUES (353, 9, 309, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505715101, 1, '');
INSERT INTO `tp_order_product` VALUES (354, 7, 310, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505715524, 5, '');
INSERT INTO `tp_order_product` VALUES (355, 6, 311, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505716542, 2, '');
INSERT INTO `tp_order_product` VALUES (356, 6, 312, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505716820, 2, '');
INSERT INTO `tp_order_product` VALUES (357, 8, 313, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505717132, 1, '');
INSERT INTO `tp_order_product` VALUES (358, 7, 313, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505717132, 1, '');
INSERT INTO `tp_order_product` VALUES (359, 9, 313, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505717132, 2, '');
INSERT INTO `tp_order_product` VALUES (360, 8, 314, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505717288, 4, '');
INSERT INTO `tp_order_product` VALUES (361, 9, 315, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505717681, 1, '');
INSERT INTO `tp_order_product` VALUES (362, 9, 316, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505717724, 2, '');
INSERT INTO `tp_order_product` VALUES (363, 2, 317, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505717923, 10, '');
INSERT INTO `tp_order_product` VALUES (364, 9, 317, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505717923, 1, '');
INSERT INTO `tp_order_product` VALUES (365, 8, 317, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505717923, 1, '');
INSERT INTO `tp_order_product` VALUES (366, 2, 318, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505718952, 1, '');
INSERT INTO `tp_order_product` VALUES (367, 9, 319, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505720970, 2, '');
INSERT INTO `tp_order_product` VALUES (368, 9, 320, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505722108, 1, '');
INSERT INTO `tp_order_product` VALUES (369, 8, 320, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505722108, 1, '');
INSERT INTO `tp_order_product` VALUES (370, 9, 321, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505722842, 2, '');
INSERT INTO `tp_order_product` VALUES (371, 8, 322, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505723822, 2, '');
INSERT INTO `tp_order_product` VALUES (372, 9, 323, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505725652, 1, '');
INSERT INTO `tp_order_product` VALUES (373, 9, 324, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505725689, 1, '');
INSERT INTO `tp_order_product` VALUES (374, 8, 325, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505726137, 9, '');
INSERT INTO `tp_order_product` VALUES (375, 9, 325, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505726137, 3, '');
INSERT INTO `tp_order_product` VALUES (376, 8, 326, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505727478, 1, '');
INSERT INTO `tp_order_product` VALUES (377, 5, 327, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505747725, 2, '');
INSERT INTO `tp_order_product` VALUES (378, 6, 328, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505762427, 1, '');
INSERT INTO `tp_order_product` VALUES (379, 3, 329, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505784129, 2, '');
INSERT INTO `tp_order_product` VALUES (380, 9, 330, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505784871, 4, '');
INSERT INTO `tp_order_product` VALUES (381, 7, 331, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505786887, 1, '');
INSERT INTO `tp_order_product` VALUES (382, 5, 331, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505786887, 1, '');
INSERT INTO `tp_order_product` VALUES (383, 9, 332, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505787237, 1, '');
INSERT INTO `tp_order_product` VALUES (384, 8, 333, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505787869, 1, '');
INSERT INTO `tp_order_product` VALUES (385, 8, 334, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505787924, 1, '');
INSERT INTO `tp_order_product` VALUES (386, 4, 335, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505788057, 1, '');
INSERT INTO `tp_order_product` VALUES (387, 8, 336, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505788681, 1, '');
INSERT INTO `tp_order_product` VALUES (388, 4, 337, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505788721, 2, '');
INSERT INTO `tp_order_product` VALUES (389, 8, 338, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505788921, 2, '');
INSERT INTO `tp_order_product` VALUES (390, 9, 339, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505789212, 1, '');
INSERT INTO `tp_order_product` VALUES (391, 9, 340, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505789266, 1, '');
INSERT INTO `tp_order_product` VALUES (392, 2, 341, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505789716, 2, '');
INSERT INTO `tp_order_product` VALUES (393, 2, 342, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505791533, 1, '');
INSERT INTO `tp_order_product` VALUES (394, 3, 343, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505791567, 1, '');
INSERT INTO `tp_order_product` VALUES (395, 3, 344, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505791591, 1, '');
INSERT INTO `tp_order_product` VALUES (396, 7, 345, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505791606, 1, '');
INSERT INTO `tp_order_product` VALUES (397, 8, 346, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505792890, 5, '');
INSERT INTO `tp_order_product` VALUES (398, 9, 347, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505801824, 2, '');
INSERT INTO `tp_order_product` VALUES (399, 9, 348, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505802903, 1, '');
INSERT INTO `tp_order_product` VALUES (400, 3, 349, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505803101, 3, '');
INSERT INTO `tp_order_product` VALUES (401, 9, 350, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505803171, 4, '');
INSERT INTO `tp_order_product` VALUES (402, 9, 351, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505803197, 1, '');
INSERT INTO `tp_order_product` VALUES (403, 8, 352, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505815463, 3, '');
INSERT INTO `tp_order_product` VALUES (404, 9, 353, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505818142, 2, '');
INSERT INTO `tp_order_product` VALUES (405, 9, 354, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505819640, 2, '');
INSERT INTO `tp_order_product` VALUES (406, 2, 355, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505819737, 1, '');
INSERT INTO `tp_order_product` VALUES (407, 3, 355, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505819737, 2, '');
INSERT INTO `tp_order_product` VALUES (408, 4, 355, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505819737, 8, '');
INSERT INTO `tp_order_product` VALUES (409, 7, 356, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505821869, 1, '');
INSERT INTO `tp_order_product` VALUES (410, 9, 357, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505822163, 1, '');
INSERT INTO `tp_order_product` VALUES (411, 9, 358, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505822301, 1, '');
INSERT INTO `tp_order_product` VALUES (412, 7, 359, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505824890, 2, '');
INSERT INTO `tp_order_product` VALUES (413, 4, 360, 'Xiaomi/小米 小米手机5c ', 1999.00, 'UploadFiles/product/20170904/1504504304322640.jpg', '', 1505824909, 1, '');
INSERT INTO `tp_order_product` VALUES (414, 6, 360, 'Xiaomi/小米 小米手机5S ', 1999.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '', 1505824910, 1, '');
INSERT INTO `tp_order_product` VALUES (415, 8, 361, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505826758, 1, '');
INSERT INTO `tp_order_product` VALUES (416, 8, 362, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505839353, 3, '');
INSERT INTO `tp_order_product` VALUES (417, 5, 363, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505871283, 2, '');
INSERT INTO `tp_order_product` VALUES (418, 8, 363, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505871283, 1, '');
INSERT INTO `tp_order_product` VALUES (419, 7, 363, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505871283, 1, '');
INSERT INTO `tp_order_product` VALUES (420, 9, 364, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505871502, 4, '');
INSERT INTO `tp_order_product` VALUES (421, 7, 365, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505872186, 7, '');
INSERT INTO `tp_order_product` VALUES (422, 5, 366, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505872938, 1, '');
INSERT INTO `tp_order_product` VALUES (423, 3, 366, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', '', 1505872939, 1, '');
INSERT INTO `tp_order_product` VALUES (424, 8, 367, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505875849, 1, '');
INSERT INTO `tp_order_product` VALUES (425, 9, 367, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505875849, 1, '');
INSERT INTO `tp_order_product` VALUES (426, 8, 368, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505877078, 3, '');
INSERT INTO `tp_order_product` VALUES (427, 9, 369, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505877956, 2, '');
INSERT INTO `tp_order_product` VALUES (428, 8, 370, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505878224, 1, '');
INSERT INTO `tp_order_product` VALUES (429, 5, 371, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505878497, 1, '');
INSERT INTO `tp_order_product` VALUES (430, 2, 372, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', '', 1505878674, 1, '');
INSERT INTO `tp_order_product` VALUES (431, 5, 372, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '', 1505878674, 1, '');
INSERT INTO `tp_order_product` VALUES (432, 7, 373, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505879531, 1, '');
INSERT INTO `tp_order_product` VALUES (433, 8, 374, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505879575, 2, '');
INSERT INTO `tp_order_product` VALUES (434, 8, 375, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505884035, 1, '');
INSERT INTO `tp_order_product` VALUES (435, 7, 376, '小米无线鼠标', 114.00, 'UploadFiles/product/20170904/1504503660992853.jpg', '', 1505886115, 3, '');
INSERT INTO `tp_order_product` VALUES (436, 8, 377, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '', 1505892659, 2, '');
INSERT INTO `tp_order_product` VALUES (437, 9, 378, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505894417, 6, '');
INSERT INTO `tp_order_product` VALUES (438, 9, 379, '小米耳机', 100.00, 'UploadFiles/product/20170904/1504508707734064.jpg', '', 1505895090, 1, '');
INSERT INTO `tp_order_product` VALUES (439, 8, 380, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1506501492, 1, '');
INSERT INTO `tp_order_product` VALUES (440, 9, 381, '小米耳机', 100.00, 'UploadFiles/product/20170924/1506246358426375.jpg', '红', 1506501512, 1, '');
INSERT INTO `tp_order_product` VALUES (441, 8, 382, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1506501564, 1, '');
INSERT INTO `tp_order_product` VALUES (442, 8, 383, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1506668777, 1, '');
INSERT INTO `tp_order_product` VALUES (443, 8, 384, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1506668859, 1, '');
INSERT INTO `tp_order_product` VALUES (444, 9, 385, '小米耳机', 100.00, 'UploadFiles/product/20170924/1506246358426375.jpg', '红', 1506668869, 1, '');
INSERT INTO `tp_order_product` VALUES (445, 8, 386, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1506668915, 1, '');
INSERT INTO `tp_order_product` VALUES (446, 8, 387, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507220932, 1, '');
INSERT INTO `tp_order_product` VALUES (447, 8, 388, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507220956, 1, '');
INSERT INTO `tp_order_product` VALUES (448, 5, 389, 'Xiaomi/小米 小米手机6 ', 838.00, 'UploadFiles/product/20170904/1504504192181461.jpg', '白色,37,ddddd', 1507221095, 1, '');
INSERT INTO `tp_order_product` VALUES (449, 8, 390, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1507221138, 1, '');
INSERT INTO `tp_order_product` VALUES (450, 8, 391, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507221193, 1, '');
INSERT INTO `tp_order_product` VALUES (451, 9, 392, '小米耳机', 100.00, 'UploadFiles/product/20171005/1507214553746343.png', '白', 1507221259, 1, '');
INSERT INTO `tp_order_product` VALUES (452, 3, 393, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', 'undefined', 1507221291, 1, '');
INSERT INTO `tp_order_product` VALUES (453, 3, 394, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', 'undefined', 1507221367, 1, '');
INSERT INTO `tp_order_product` VALUES (454, 8, 395, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1507221614, 1, '');
INSERT INTO `tp_order_product` VALUES (455, 8, 396, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507221690, 1, '');
INSERT INTO `tp_order_product` VALUES (456, 8, 397, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1507221710, 1, '');
INSERT INTO `tp_order_product` VALUES (457, 3, 398, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', 'undefined', 1507221752, 1, '');
INSERT INTO `tp_order_product` VALUES (458, 6, 399, 'Xiaomi/小米 小米手机5S ', 739.00, 'UploadFiles/product/20170904/1504504100894562.jpg', '黑色,35', 1507222148, 1, '');
INSERT INTO `tp_order_product` VALUES (459, 3, 400, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', 'undefined', 1507222280, 1, '');
INSERT INTO `tp_order_product` VALUES (460, 3, 401, '小米路由器 ', 716.00, 'UploadFiles/product/20170904/1504504499809397.jpg', 'undefined', 1507222362, 1, '');
INSERT INTO `tp_order_product` VALUES (461, 2, 402, 'Xiaomi/小米 小米笔记本2017', 6999.00, 'UploadFiles/product/20170904/1504504635281852.jpg', 'undefined', 1507222416, 1, '');
INSERT INTO `tp_order_product` VALUES (462, 8, 403, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507256576, 1, '');
INSERT INTO `tp_order_product` VALUES (463, 8, 404, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507256831, 1, '');
INSERT INTO `tp_order_product` VALUES (464, 8, 405, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507257036, 1, '');
INSERT INTO `tp_order_product` VALUES (465, 8, 406, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507257094, 1, '');
INSERT INTO `tp_order_product` VALUES (466, 8, 407, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507257184, 1, '');
INSERT INTO `tp_order_product` VALUES (467, 8, 408, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507257322, 1, '');
INSERT INTO `tp_order_product` VALUES (468, 8, 410, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1507257447, 1, '');
INSERT INTO `tp_order_product` VALUES (469, 8, 411, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507258194, 1, '');
INSERT INTO `tp_order_product` VALUES (470, 8, 412, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1507258721, 1, '');
INSERT INTO `tp_order_product` VALUES (471, 9, 413, '小米耳机', 100.00, 'UploadFiles/product/20171005/1507214553746343.png', '黑', 1507258797, 2, '');
INSERT INTO `tp_order_product` VALUES (472, 9, 414, '小米耳机', 100.00, 'UploadFiles/product/20171005/1507214553746343.png', '黑', 1507259557, 1, '');
INSERT INTO `tp_order_product` VALUES (473, 9, 415, '小米耳机', 100.00, 'UploadFiles/product/20171005/1507214553746343.png', '黑', 1507259856, 1, '');
INSERT INTO `tp_order_product` VALUES (474, 8, 416, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507265484, 1, '');
INSERT INTO `tp_order_product` VALUES (475, 8, 417, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '黑', 1507265705, 1, '');
INSERT INTO `tp_order_product` VALUES (476, 8, 418, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1507269474, 1, '');
INSERT INTO `tp_order_product` VALUES (477, 8, 419, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1519898128, 1, '');
INSERT INTO `tp_order_product` VALUES (478, 8, 420, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1520222054, 1, '');
INSERT INTO `tp_order_product` VALUES (479, 9, 421, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '白', 1553757982, 1, '');
INSERT INTO `tp_order_product` VALUES (480, 9, 422, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '黑', 1553758193, 1, '');
INSERT INTO `tp_order_product` VALUES (481, 9, 423, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '白', 1553758396, 1, '');
INSERT INTO `tp_order_product` VALUES (482, 9, 424, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '黑', 1553759523, 1, '');
INSERT INTO `tp_order_product` VALUES (483, 9, 425, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '白', 1553760087, 1, '');
INSERT INTO `tp_order_product` VALUES (484, 9, 426, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553760697, 1, '');
INSERT INTO `tp_order_product` VALUES (485, 9, 427, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '白', 1553760840, 1, '');
INSERT INTO `tp_order_product` VALUES (486, 9, 428, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '黑', 1553762199, 1, '');
INSERT INTO `tp_order_product` VALUES (487, 9, 429, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '黑', 1553762277, 1, '');
INSERT INTO `tp_order_product` VALUES (488, 9, 430, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '黑', 1553762380, 1, '');
INSERT INTO `tp_order_product` VALUES (489, 9, 431, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '黑', 1553762466, 1, '');
INSERT INTO `tp_order_product` VALUES (490, 9, 432, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '白', 1553762523, 1, '');
INSERT INTO `tp_order_product` VALUES (491, 9, 433, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '黑', 1553762610, 1, '');
INSERT INTO `tp_order_product` VALUES (492, 9, 434, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '黑', 1553762770, 1, '');
INSERT INTO `tp_order_product` VALUES (493, 9, 435, '小米耳机', 100.00, 'UploadFiles/product/20171006/1507266331441311.jpg', '黑', 1553763762, 1, '');
INSERT INTO `tp_order_product` VALUES (494, 9, 436, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553766705, 1, '');
INSERT INTO `tp_order_product` VALUES (495, 9, 437, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553766824, 1, '');
INSERT INTO `tp_order_product` VALUES (496, 9, 438, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553766971, 1, '');
INSERT INTO `tp_order_product` VALUES (497, 9, 439, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553767226, 1, '');
INSERT INTO `tp_order_product` VALUES (498, 9, 440, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553768262, 1, '');
INSERT INTO `tp_order_product` VALUES (499, 9, 441, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553768399, 1, '');
INSERT INTO `tp_order_product` VALUES (500, 9, 442, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553768436, 1, '');
INSERT INTO `tp_order_product` VALUES (501, 9, 443, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553824692, 1, '');
INSERT INTO `tp_order_product` VALUES (502, 9, 444, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553825108, 1, '');
INSERT INTO `tp_order_product` VALUES (503, 9, 445, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553826561, 1, '');
INSERT INTO `tp_order_product` VALUES (504, 9, 446, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553843879, 1, '');
INSERT INTO `tp_order_product` VALUES (505, 9, 447, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553855238, 1, '');
INSERT INTO `tp_order_product` VALUES (506, 10, 447, '小米9', 999.00, 'UploadFiles/product/20190327/1553658426988699.jpeg', '黑色', 1553855238, 1, '');
INSERT INTO `tp_order_product` VALUES (507, 8, 447, 'Xiaomi/小米 小米笔记本AIR （测试使用，不发货）', 0.01, 'UploadFiles/product/20170904/1504503771414744.jpg', '银', 1553855238, 1, '');
INSERT INTO `tp_order_product` VALUES (508, 9, 448, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553917015, 1, '');
INSERT INTO `tp_order_product` VALUES (509, 9, 449, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553929725, 1, '');
INSERT INTO `tp_order_product` VALUES (510, 9, 450, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553930065, 1, '');
INSERT INTO `tp_order_product` VALUES (511, 9, 451, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553930241, 1, '');
INSERT INTO `tp_order_product` VALUES (512, 9, 452, '小米耳机', 0.01, 'UploadFiles/product/20171006/1507266331441311.jpg', '红', 1553935157, 1, '');
INSERT INTO `tp_order_product` VALUES (513, 13, 453, 'SVK美眼仪', 299.00, 'UploadFiles/product/20190330/1553928299241782.jpg', 'undefined', 1554089452, 1, '');
INSERT INTO `tp_order_product` VALUES (514, 12, 454, 'KANDICE 超声波毛孔离子清洁器', 799.00, 'UploadFiles/product/20190330/1553927504706301.jpg', 'undefined', 1554089479, 1, '');
INSERT INTO `tp_order_product` VALUES (515, 12, 455, 'KANDICE 超声波毛孔离子清洁器', 799.00, 'UploadFiles/product/20190330/1553927504706301.jpg', 'undefined', 1554089509, 1, '');
INSERT INTO `tp_order_product` VALUES (516, 11, 456, 'SVK洗脸洁面仪电动洗硅胶美容仪Cutily柯缇尔', 369.00, 'UploadFiles/product/20190330/1553916859754083.jpg', '樱花粉', 1554089515, 1, '');
INSERT INTO `tp_order_product` VALUES (517, 11, 457, 'SVK洗脸洁面仪电动洗硅胶美容仪Cutily柯缇尔', 369.00, 'UploadFiles/product/20190330/1553916859754083.jpg', '薄荷绿', 1554089525, 1, '');
INSERT INTO `tp_order_product` VALUES (518, 24, 458, 'BOB蚕丝睫毛膏', 15.00, 'UploadFiles/product/20190402/1554176756924697.jpg', '红色', 1554187413, 1, '');
INSERT INTO `tp_order_product` VALUES (519, 16, 459, '日本BCL早安面膜女Saborino免洗60秒', 73.00, 'UploadFiles/product/20190402/1554197436298141.jpg', '牛油果款', 1554286030, 1, '');
INSERT INTO `tp_order_product` VALUES (520, 13, 460, 'SVK美眼仪', 299.00, 'UploadFiles/product/20190330/1553928299241782.jpg', '樱花粉', 1554372381, 1, '');
INSERT INTO `tp_order_product` VALUES (521, 30, 461, '爱敬age20\'s气垫bb霜', 138.00, 'UploadFiles/product/20190402/1554191353609565.jpg', '#13 亮白色(白盒)', 1554372521, 1, '');
INSERT INTO `tp_order_product` VALUES (522, 19, 462, '玛丽黛佳网红眼影盘九色', 160.00, 'UploadFiles/product/20190401/1554112853205875.jpg', 'undefined', 1554456424, 1, '');

-- ----------------------------
-- Table structure for tp_post
-- ----------------------------
DROP TABLE IF EXISTS `tp_post`;
CREATE TABLE `tp_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物流快递表',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '快递名称',
  `price` decimal(11, 0) NOT NULL DEFAULT 0 COMMENT '价格',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `price_max` decimal(11, 0) NOT NULL DEFAULT 0 COMMENT '满多少包邮',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '商品ID',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_post
-- ----------------------------
INSERT INTO `tp_post` VALUES (1, '顺丰快递（满388包邮）', 12, 0, 388, 0, NULL);
INSERT INTO `tp_post` VALUES (2, 'EMS', 22, 0, 0, 0, NULL);
INSERT INTO `tp_post` VALUES (3, '顺丰生鲜', 0, 0, 0, 44, NULL);
INSERT INTO `tp_post` VALUES (4, '中通快递', 0, 0, 0, 0, 'ZTO');
INSERT INTO `tp_post` VALUES (5, '圆通快递', 12, 0, 0, 0, 'YTO');

-- ----------------------------
-- Table structure for tp_pro_attr
-- ----------------------------
DROP TABLE IF EXISTS `tp_pro_attr`;
CREATE TABLE `tp_pro_attr`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '产品属性组合',
  `pid` int(11) NULL DEFAULT 0 COMMENT '产品ID',
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '属性组合',
  `addtime` int(11) NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_pro_attr
-- ----------------------------
INSERT INTO `tp_pro_attr` VALUES (2, 5, 'a:64:{i:0;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,36,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:1;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,36,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:2;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,36,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:3;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,36,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:4;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,37,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:5;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,37,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:6;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,37,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:7;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,37,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:8;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,38,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:9;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,38,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:10;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,38,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:11;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,38,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:12;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,39,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:13;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,39,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:14;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,39,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:15;a:3:{s:7:\"gg_name\";s:19:\"白色,白色,39,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:16;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,36,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:17;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,36,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:18;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,36,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:19;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,36,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:20;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,37,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:21;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,37,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:22;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,37,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:23;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,37,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:24;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,38,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:25;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,38,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:26;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,38,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:27;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,38,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:28;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,39,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:29;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,39,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:30;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,39,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:31;a:3:{s:7:\"gg_name\";s:19:\"白色,黑色,39,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:32;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,36,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:33;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,36,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:34;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,36,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:35;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,36,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:36;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,37,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:37;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,37,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:38;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,37,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:39;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,37,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:40;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,38,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:41;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,38,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:42;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,38,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:43;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,38,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:44;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,39,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:45;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,39,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:46;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,39,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:47;a:3:{s:7:\"gg_name\";s:19:\"黑色,白色,39,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:48;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,36,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:49;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,36,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:50;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,36,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:51;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,36,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:52;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,37,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:53;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,37,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:54;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,37,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:55;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,37,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:56;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,38,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:57;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,38,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:58;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,38,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:59;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,38,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:60;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,39,36\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:61;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,39,37\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:62;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,39,38\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}i:63;a:3:{s:7:\"gg_name\";s:19:\"黑色,黑色,39,39\";s:5:\"price\";s:6:\"838.00\";s:5:\"stock\";s:3:\"349\";}}', 1501914315);
INSERT INTO `tp_pro_attr` VALUES (3, 5, NULL, 0);
INSERT INTO `tp_pro_attr` VALUES (4, 5, NULL, 0);
INSERT INTO `tp_pro_attr` VALUES (5, 5, NULL, 0);
INSERT INTO `tp_pro_attr` VALUES (6, 5, NULL, 0);
INSERT INTO `tp_pro_attr` VALUES (7, 5, NULL, 0);
INSERT INTO `tp_pro_attr` VALUES (8, 5, NULL, 0);
INSERT INTO `tp_pro_attr` VALUES (9, 5, NULL, 0);
INSERT INTO `tp_pro_attr` VALUES (10, 5, NULL, 0);

-- ----------------------------
-- Table structure for tp_product
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品表',
  `shop_id` int(11) NOT NULL DEFAULT 0 COMMENT '商铺id',
  `brand_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '品牌ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品名称',
  `intro` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告语',
  `pro_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品编号',
  `price` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `price_yh` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '优惠价格',
  `price_jf` int(11) NOT NULL DEFAULT 0 COMMENT '赠送积分',
  `photo_x` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小图',
  `photo_d` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大图',
  `photo_string` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片组',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品详情',
  `addtime` int(11) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(11) NOT NULL COMMENT '修改时间',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `renqi` int(11) NOT NULL DEFAULT 0 COMMENT '人气',
  `shiyong` int(11) NOT NULL DEFAULT 0 COMMENT '购买数',
  `num` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `type` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否推荐 1推荐  0不推荐',
  `is_hottype` tinyint(2) NULL DEFAULT 0 COMMENT '热推',
  `del` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除状态',
  `del_time` int(10) NULL DEFAULT 0 COMMENT '删除时间',
  `is_buff` tinyint(2) NULL DEFAULT 0 COMMENT '是否启动产品属性',
  `pro_buff` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品属性',
  `cid` int(11) NOT NULL COMMENT '分类id',
  `company` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `is_show` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否新品',
  `is_down` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '下架状态',
  `is_hot` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '是否热卖',
  `pro_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '产品类型 1普通商品 2预售产品 3批发采购 4新人体验',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES (30, 0, 10, '爱敬age20\'s气垫bb霜', '好用不浮粉', '0', 250.00, 138.00, 0, 'UploadFiles/product/20190402/1554191353609565.jpg', 'UploadFiles/product/20190402/1554191353744310.jpg', ',UploadFiles/product/20190402/1554191353390071.jpg,UploadFiles/product/20190402/1554191353335898.jpg,UploadFiles/product/20190402/1554191353793382.jpg,UploadFiles/product/20190402/1554191353666141.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01PpoLGA1XyNXa6lRdc_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01PpoLGA1XyNXa6lRdc_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN010UmIwx1XyNXd0ZPg3_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN010UmIwx1XyNXd0ZPg3_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01me2Q3R1XyNXcWEdIQ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01me2Q3R1XyNXcWEdIQ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01B1MOhq1XyNXdbBUnV_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01B1MOhq1XyNXdbBUnV_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01i7zA5Y1XyNXdsDWUO_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01i7zA5Y1XyNXdsDWUO_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01zigoAZ1XyNXbBgICw_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01zigoAZ1XyNXbBgICw_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01wnzaGZ1XyNXUT6Svp_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01wnzaGZ1XyNXUT6Svp_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01naalUg1XyNXa6mqvN_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01naalUg1XyNXa6mqvN_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01fpk6el1XyNXcPRVPk_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01fpk6el1XyNXcPRVPk_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN014Gy1og1XyNXdsCeSw_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN014Gy1og1XyNXdsCeSw_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01dlnOlW1XyNXbZa9kV_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01dlnOlW1XyNXbZa9kV_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01P2Zoyy1XyNXcWDtbY_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01P2Zoyy1XyNXcWDtbY_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554191353, 1554364955, 0, 0, 1, 999998, 0, 0, 0, 0, 1, NULL, 48, '韩国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (31, 0, 20, 'NYX 多色眼影盘', '', '0', 149.00, 120.00, 0, 'UploadFiles/product/20190402/1554193004194549.png', 'UploadFiles/product/20190402/1554193004573467.png', ',UploadFiles/product/20190402/1554193004145179.png,UploadFiles/product/20190402/1554193004930744.png,UploadFiles/product/20190402/1554193004725354.png,UploadFiles/product/20190402/1554193004418159.png,UploadFiles/product/20190402/1554193004809888.png', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01cWBALf1XyNXcZ47hB_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01cWBALf1XyNXcZ47hB_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01rOy9lk1XyNXaxsGB4_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01rOy9lk1XyNXaxsGB4_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01GbxDud1XyNXcSK9AH_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01GbxDud1XyNXcSK9AH_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN0169F45g1XyNXduvINR_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN0169F45g1XyNXduvINR_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01jQCbQV1XyNXUVuPXY_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01jQCbQV1XyNXUVuPXY_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN018Vy0Gf1XyNXde283E_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN018Vy0Gf1XyNXde283E_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN017Dpmp31XyNXbEbLt9_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN017Dpmp31XyNXbEbLt9_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01IUilJh1XyNXcQR7v1_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01IUilJh1XyNXcQR7v1_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01r0KyNJ1XyNXa9ZBgt_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01r0KyNJ1XyNXa9ZBgt_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554193004, 1554364946, 0, 0, 0, 999999, 0, 0, 0, 0, 0, NULL, 45, '美国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (32, 0, 12, '网红火烈鸟雾眉笔', '', '0', 35.00, 29.00, 0, 'UploadFiles/product/20190402/1554193877300276.jpg', 'UploadFiles/product/20190402/1554193877609488.jpg', ',UploadFiles/product/20190402/1554193877864362.jpg,UploadFiles/product/20190402/1554193877950125.jpg,UploadFiles/product/20190402/1554193877821934.jpg,UploadFiles/product/20190402/1554193877737245.jpg,UploadFiles/product/20190402/1554193877848509.jpg,UploadFiles/product/20190402/1554193877508382.jpg,UploadFiles/product/20190402/1554193877845343.jpg,UploadFiles/product/20190402/1554193877712278.jpg,UploadFiles/product/20190402/1554193877670764.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01tD0fBq1XyNXbG1hev_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01tD0fBq1XyNXbG1hev_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01wRDxdX1XyNXd4uYGN_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01wRDxdX1XyNXd4uYGN_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01ZmUpv41XyNXcRnFIV_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01ZmUpv41XyNXcRnFIV_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01hlnVSj1XyNXdfPen6_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01hlnVSj1XyNXdfPen6_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01AaelKV1XyNXcaUGra_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01AaelKV1XyNXcaUGra_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN011hEL8Q1XyNXdwGsSY_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN011hEL8Q1XyNXdwGsSY_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01DKkKNK1XyNXbdkQFm_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01DKkKNK1XyNXbdkQFm_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01RpJwLf1XyNXaAuhZR_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01RpJwLf1XyNXaAuhZR_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01uJ7aCG1XyNXbdhXUU_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01uJ7aCG1XyNXbdhXUU_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01cLldRj1XyNXazGONw_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01cLldRj1XyNXazGONw_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN019n8xBQ1XyNXdwJh4h_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN019n8xBQ1XyNXdwJh4h_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01Jejh6W1XyNXcRoWKm_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01Jejh6W1XyNXcRoWKm_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554193877, 1554364935, 0, 0, 0, 999999, 0, 0, 0, 0, 0, NULL, 47, '中国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (26, 0, 11, '泊泉雅彩妆5件套', '', '0', 49.90, 30.00, 0, 'UploadFiles/product/20190402/1554187504321921.jpg', 'UploadFiles/product/20190402/1554187504355272.jpg', ',UploadFiles/product/20190402/1554187504144223.jpg,UploadFiles/product/20190402/1554187504988585.jpg,UploadFiles/product/20190402/1554187504217978.jpg,UploadFiles/product/20190402/1554187504253889.jpg,UploadFiles/product/20190402/1554187504388498.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01KAQZMt1XyNXa0Ljlp_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01KAQZMt1XyNXa0Ljlp_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN019u05W01XyNXaofLTs_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN019u05W01XyNXaofLTs_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01pXYIdf1XyNXZelPWD_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01pXYIdf1XyNXZelPWD_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01VktRDa1XyNXbS9jUR_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01VktRDa1XyNXbS9jUR_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01Zzqkag1XyNXYsQ3bH_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01Zzqkag1XyNXYsQ3bH_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01Vaz8l01XyNXa0KvwA_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01Vaz8l01XyNXa0KvwA_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01SnnAg91XyNXcu33ry_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01SnnAg91XyNXcu33ry_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN015kDzl71XyNXdloI71_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN015kDzl71XyNXdloI71_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01PQOvdA1XyNXb5LI0O_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01PQOvdA1XyNXb5LI0O_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01aaSWvb1XyNXYsQ7lr_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01aaSWvb1XyNXYsQ7lr_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01B11Mwd1XyNXcJ5tbU_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01B11Mwd1XyNXcJ5tbU_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01qe61YV1XyNXdlntCa_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01qe61YV1XyNXdlntCa_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01mSnv0U1XyNXUMc86F_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01mSnv0U1XyNXUMc86F_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554187504, 1554365012, 0, 0, 0, 999999, 0, 0, 0, 0, 0, NULL, 47, '中国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (27, 0, 19, '日本SANA莎娜豆乳爽肤水', '无色素 无香料 无矿 无油', '0', 108.00, 56.00, 0, 'UploadFiles/product/20190402/1554188641996145.jpg', 'UploadFiles/product/20190402/1554188641660498.jpg', ',UploadFiles/product/20190402/1554188641716290.jpg,UploadFiles/product/20190402/1554188641674085.jpg,UploadFiles/product/20190402/1554188641274251.jpg', '<br data-cke-eol=\"1\" /><p><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01kXDgy81XyNXYuFmiP_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01kXDgy81XyNXYuFmiP_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01ct33Nf1XyNXbU0KYP_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01ct33Nf1XyNXbU0KYP_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01PcqEJ41XyNXdngQuZ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01PcqEJ41XyNXdngQuZ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN0187N7uj1XyNXYuFaGT_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN0187N7uj1XyNXYuFaGT_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01PiS8H91XyNXcw0qMS_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01PiS8H91XyNXcw0qMS_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01p1SZRv1XyNXcw23A5_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01p1SZRv1XyNXcw23A5_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01lZDXu21XyNXe7LbEp_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01lZDXu21XyNXe7LbEp_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01E95fWv1XyNXbUtSvj_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01E95fWv1XyNXbUtSvj_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01LYylzN1XyNXdng68I_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01LYylzN1XyNXdng68I_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01CTtvc21XyNXZgiaTm_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01CTtvc21XyNXZgiaTm_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01qNhw8M1XyNXe7MKyc_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01qNhw8M1XyNXe7MKyc_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN017lS9gp1XyNXbTzf1V_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN017lS9gp1XyNXbTzf1V_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01tbx1kK1XyNXdnf1cS_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01tbx1kK1XyNXdnf1cS_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /></p>', 1554188641, 1554364998, 0, 0, 0, 999999, 0, 0, 0, 0, 1, NULL, 49, '日本', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (28, 0, 21, '娥佩兰薏仁水', '薏米水补水保湿娥佩兰爽肤水', '0', 69.90, 50.00, 0, 'UploadFiles/product/20190402/1554189450908988.jpg', 'UploadFiles/product/20190402/1554189450198648.jpg', ',UploadFiles/product/20190402/1554189450469847.jpg,UploadFiles/product/20190402/1554189450460159.jpg,UploadFiles/product/20190402/1554189450910305.jpg,UploadFiles/product/20190402/1554189450974287.jpg', '<br data-cke-eol=\"1\" /><p><img data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01J5thXT1XyNXcKkGTz_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01J5thXT1XyNXcKkGTz_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" style=\"max-width: 750px;\" /><img data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN018nPcZ51XyNXcMU1dp_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN018nPcZ51XyNXcMU1dp_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" style=\"max-width: 750px;\" /><img data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01m9A7mM1XyNXa3pucL_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01m9A7mM1XyNXa3pucL_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" style=\"max-width: 750px;\" /><img data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01JDGHGj1XyNXbVdIjL_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01JDGHGj1XyNXbVdIjL_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" style=\"max-width: 750px;\" /><img data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01oHFUF81XyNXcMVMn4_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01oHFUF81XyNXcMVMn4_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" style=\"max-width: 750px;\" /><img data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01wjLdBb1XyNXbSICnA_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01wjLdBb1XyNXbSICnA_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" style=\"max-width: 750px;\" /><br /></p>', 1554189450, 1554364988, 0, 0, 0, 999999, 0, 0, 0, 0, 0, NULL, 49, '日本', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (29, 0, 7, '玛丽黛佳红参小蘑菇头', '让天下没有难上的妆', '0', 199.00, 129.00, 0, 'UploadFiles/product/20190402/1554193063905069.jpg', 'UploadFiles/product/20190402/1554193063545328.jpg', ',UploadFiles/product/20190402/1554190386315803.jpg,UploadFiles/product/20190402/1554190386988350.jpg,UploadFiles/product/20190402/1554190386254142.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01JKDJpr1XyNXcUrAdc_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01JKDJpr1XyNXcUrAdc_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01El1jq71XyNXcO9c7v_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01El1jq71XyNXcO9c7v_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01tguBqX1XyNXZjmeFt_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01tguBqX1XyNXZjmeFt_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01BPN6oc1XyNXbTuuM4_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01BPN6oc1XyNXbTuuM4_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN0166ceSe1XyNXatjXOA_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN0166ceSe1XyNXatjXOA_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01BnR5f01XyNXbANvxr_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01BnR5f01XyNXbANvxr_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN014oEAOP1XyNXa5SHBD_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN014oEAOP1XyNXa5SHBD_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN018QTxBF1XyNXczH7T1_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN018QTxBF1XyNXczH7T1_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01ba4Iph1XyNXbAPTZI_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01ba4Iph1XyNXbAPTZI_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN018tahhA1XyNXa5QbFR_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN018tahhA1XyNXa5QbFR_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01Sa8yQ01XyNXatlx5C_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01Sa8yQ01XyNXatlx5C_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554190386, 1554364970, 0, 0, 0, 999999, 0, 0, 0, 0, 1, NULL, 48, '中国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (25, 0, 18, '苏卡娜睫毛膏', '出众不止一点点 浓密 纤长 卷翘', '0', 69.00, 12.90, 0, 'UploadFiles/product/20190402/1554177875409330.jpg', 'UploadFiles/product/20190402/1554177875282854.jpg', ',UploadFiles/product/20190402/1554177875896374.jpg,UploadFiles/product/20190402/1554177875684757.jpg,UploadFiles/product/20190402/1554177875403359.jpg,UploadFiles/product/20190402/1554177875373898.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01gd45p71XyNXcfCqes_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01gd45p71XyNXcfCqes_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01KtxCgn1XyNXdFumBG_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01KtxCgn1XyNXdFumBG_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01pWeuCo1XyNXZPxPpH_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01pWeuCo1XyNXZPxPpH_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01xnWf8m1XyNXbEYgA9_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01xnWf8m1XyNXbEYgA9_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN019ZXKjh1XyNXYdkiwG_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN019ZXKjh1XyNXYdkiwG_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01wnK5Ue1XyNXaZt67K_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01wnK5Ue1XyNXaZt67K_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01M9VwkG1XyNXaZu6T0_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01M9VwkG1XyNXaZu6T0_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01twBlnT1XyNXdXAy9Z_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01twBlnT1XyNXdXAy9Z_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01KWDtFO1XyNXc4JZtO_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01KWDtFO1XyNXc4JZtO_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01hl1YdS1XyNXaZuAd3_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01hl1YdS1XyNXaZuAd3_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01ohoIwP1XyNXdFtMw6_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01ohoIwP1XyNXdFtMw6_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01RxNTeA1XyNXYdjiZx_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01RxNTeA1XyNXYdjiZx_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01KyTJDl1XyNXU7lS5J_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01KyTJDl1XyNXU7lS5J_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01oscCOk1XyNXdqZghz_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01oscCOk1XyNXdqZghz_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554177875, 1554365022, 0, 0, 0, 999999, 0, 0, 0, 0, 0, NULL, 52, '中国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (24, 0, 22, 'BOB蚕丝睫毛膏', '自然妆 不假妆', '0', 79.00, 15.00, 0, 'UploadFiles/product/20190402/1554191899145684.jpg', 'UploadFiles/product/20190402/1554191899890051.jpg', ',UploadFiles/product/20190402/1554191899340953.jpg,UploadFiles/product/20190402/1554191899847264.jpg,UploadFiles/product/20190402/1554191899500242.jpg,UploadFiles/product/20190402/1554191899558122.jpg,UploadFiles/product/20190402/1554191899244488.jpg', '<p><br /></p><p><br /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN015f9Ntf1XyNXTvxPyO_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN015f9Ntf1XyNXTvxPyO_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN018wv7Bn1XyNXYRlHOr_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN018wv7Bn1XyNXYRlHOr_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN010v0Qjv1XyNXaeGWlP_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN010v0Qjv1XyNXaeGWlP_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN016AXSg91XyNXcTLf0r_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN016AXSg91XyNXcTLf0r_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01uLY2Y61XyNXdeaucZ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01uLY2Y61XyNXdeaucZ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01wTfB7W1XyNXaO8Q4b_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01wTfB7W1XyNXaO8Q4b_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN016HSZL81XyNXd46L6A_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN016HSZL81XyNXd46L6A_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01JfxrEd1XyNXbyWfiP_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01JfxrEd1XyNXbyWfiP_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01GlIkPN1XyNXYRmp0Z_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01GlIkPN1XyNXYRmp0Z_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01CTpK9A1XyNXaO7HPg_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01CTpK9A1XyNXaO7HPg_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01f8lXdm1XyNXb2fPPZ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01f8lXdm1XyNXb2fPPZ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01v6xJAC1XyNXbsExeC_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01v6xJAC1XyNXbsExeC_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01AXElH21XyNXaO7Y54_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01AXElH21XyNXaO7Y54_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01z3zqOd1XyNXTvxHgj_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01z3zqOd1XyNXTvxHgj_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01TiCigJ1XyNXaO8YOl_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01TiCigJ1XyNXaO8YOl_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01f8L2NP1XyNXcTLKG0_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01f8L2NP1XyNXcTLKG0_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01zIGZ6j1XyNXZZwKf0_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01zIGZ6j1XyNXZZwKf0_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN0134zjWQ1XyNXaeIXYC_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN0134zjWQ1XyNXaeIXYC_!!388042992.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a2126o.11854294.0.i9.493b4831aH2KbD\" alt=\"\" width=\"100%\" /></p><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN013Dsqg31XyNXbyWCbd_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN013Dsqg31XyNXbyWCbd_!!388042992.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a2126o.11854294.0.i5.493b4831aH2KbD\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN015f9Ntf1XyNXTvxPyO_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN015f9Ntf1XyNXTvxPyO_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN018wv7Bn1XyNXYRlHOr_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN018wv7Bn1XyNXYRlHOr_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN010v0Qjv1XyNXaeGWlP_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN010v0Qjv1XyNXaeGWlP_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN016AXSg91XyNXcTLf0r_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN016AXSg91XyNXcTLf0r_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01uLY2Y61XyNXdeaucZ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01uLY2Y61XyNXdeaucZ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01wTfB7W1XyNXaO8Q4b_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01wTfB7W1XyNXaO8Q4b_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN016HSZL81XyNXd46L6A_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN016HSZL81XyNXd46L6A_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01JfxrEd1XyNXbyWfiP_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01JfxrEd1XyNXbyWfiP_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01GlIkPN1XyNXYRmp0Z_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01GlIkPN1XyNXYRmp0Z_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01CTpK9A1XyNXaO7HPg_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01CTpK9A1XyNXaO7HPg_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01f8lXdm1XyNXb2fPPZ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01f8lXdm1XyNXb2fPPZ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01v6xJAC1XyNXbsExeC_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01v6xJAC1XyNXbsExeC_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01AXElH21XyNXaO7Y54_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01AXElH21XyNXaO7Y54_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01z3zqOd1XyNXTvxHgj_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01z3zqOd1XyNXTvxHgj_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01TiCigJ1XyNXaO8YOl_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01TiCigJ1XyNXaO8YOl_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01f8L2NP1XyNXcTLKG0_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01f8L2NP1XyNXcTLKG0_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01zIGZ6j1XyNXZZwKf0_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01zIGZ6j1XyNXZZwKf0_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN0134zjWQ1XyNXaeIXYC_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN0134zjWQ1XyNXaeIXYC_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554176756, 1554365040, 0, 0, 1, 999998, 0, 0, 0, 0, 1, NULL, 52, '中国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (22, 0, 13, 'CANMAKE/井田 花瓣雕刻五色腮红', '防水持久珠光哑光日本多色胭脂盘', '0', 99.00, 80.00, 0, 'UploadFiles/product/20190401/1554114242287676.jpg', 'UploadFiles/product/20190401/1554114242361902.jpg', ',UploadFiles/product/20190401/1554114242613724.jpg,UploadFiles/product/20190401/1554114242285739.jpg,UploadFiles/product/20190401/1554114242257580.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN010ZxOgY1XyNXaIPPdE_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN010ZxOgY1XyNXaIPPdE_!!388042992.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a2126o.11854294.0.i7.744e48311yTHUQ\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01YVy1Ss1XyNXcvOBXK_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01YVy1Ss1XyNXcvOBXK_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01QefmIT1XyNXTDEdGz_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01QefmIT1XyNXTDEdGz_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01hCa0uu1XyNXb9L2G9_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01hCa0uu1XyNXb9L2G9_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01gPXjf11XyNXYVHCQE_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01gPXjf11XyNXYVHCQE_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01488gDv1XyNXaIQcUw_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01488gDv1XyNXaIQcUw_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01ObY4sD1XyNXbFIP2O_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01ObY4sD1XyNXbFIP2O_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN0177LDy11XyNXaIShKi_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN0177LDy11XyNXaIShKi_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01ITiW3G1XyNXXj5eQF_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01ITiW3G1XyNXXj5eQF_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01igoRxJ1XyNXYrTWgG_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01igoRxJ1XyNXYrTWgG_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554113744, 1554197281, 0, 0, 0, 999999, 0, 0, 0, 0, 1, NULL, 50, '日本', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (23, 0, 14, 'novo甜蜜粉嫩渐变腮红', '有料 有颜值 ', '0', 68.00, 20.00, 0, 'UploadFiles/product/20190401/1554114479883163.jpg', 'UploadFiles/product/20190401/1554114479120261.jpg', ',UploadFiles/product/20190401/1554114479135395.jpg,UploadFiles/product/20190401/1554114479453803.jpg,UploadFiles/product/20190401/1554114479593643.jpg,UploadFiles/product/20190401/1554114479748998.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01NfETXQ1XyNXYsUttY_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01NfETXQ1XyNXYsUttY_!!388042992.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a2126o.11854294.0.i8.744e48311yTHUQ\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01Xb4u261XyNXaJOAOK_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01Xb4u261XyNXaJOAOK_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN012LuCPA1XyNXbGDCV5_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN012LuCPA1XyNXbGDCV5_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01HQmTEv1XyNXTEGHBk_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01HQmTEv1XyNXTEGHBk_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN011e1AIQ1XyNXZwNdWH_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN011e1AIQ1XyNXZwNdWH_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01zx1Yom1XyNXbAIqlI_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01zx1Yom1XyNXbAIqlI_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01phPdD41XyNXZwMper_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01phPdD41XyNXZwMper_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01RikbIJ1XyNXZwMA5u_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01RikbIJ1XyNXZwMA5u_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01Y8CTX51XyNXbAHyjq_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01Y8CTX51XyNXbAHyjq_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN0131YJGy1XyNXcdEPIL_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN0131YJGy1XyNXcdEPIL_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01hgJRUH1XyNXaG0aKX_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01hgJRUH1XyNXaG0aKX_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01FCEmWw1XyNXaJO6FJ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01FCEmWw1XyNXaJO6FJ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01JgHa4I1XyNXXjzVGy_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01JgHa4I1XyNXXjzVGy_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01enx6S81XyNXb8cih5_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01enx6S81XyNXb8cih5_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554114479, 1554197264, 0, 0, 0, 999999, 0, 0, 0, 0, 1, NULL, 50, '中国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (20, 0, 7, '玛丽黛佳眼线笔', '持妆 显色 新手福音', '0', 68.00, 49.00, 0, 'UploadFiles/product/20190401/1554113186774154.jpg', 'UploadFiles/product/20190401/1554113186506790.jpg', ',UploadFiles/product/20190401/1554113186238366.jpg,UploadFiles/product/20190401/1554113186389065.jpg,UploadFiles/product/20190401/1554113186698399.jpg,UploadFiles/product/20190401/1554113186371480.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01BnSr1n1XyNXaJ36NJ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01BnSr1n1XyNXaJ36NJ_!!388042992.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a2126o.11854294.0.i6.744e48311yTHUQ\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01YANxf71XyNXaHnDB4_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01YANxf71XyNXaHnDB4_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01Wafyg11XyNXTCXXDf_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01Wafyg11XyNXTCXXDf_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN014lQ3T51XyNXXiTJfI_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN014lQ3T51XyNXXiTJfI_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01AWQoIp1XyNXTCZgFc_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01AWQoIp1XyNXTCZgFc_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01BFjNey1XyNXTCZ4qW_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01BFjNey1XyNXTCZ4qW_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01WbkLTX1XyNXYUejQK_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01WbkLTX1XyNXYUejQK_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01b3w2mv1XyNXYqpmbn_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01b3w2mv1XyNXYqpmbn_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN015fuGXj1XyNXb76jDn_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN015fuGXj1XyNXb76jDn_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01FHwFks1XyNXaEMLBY_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01FHwFks1XyNXaEMLBY_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01oqeRWn1XyNXcKBi3I_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01oqeRWn1XyNXcKBi3I_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554113186, 1554197323, 0, 0, 0, 999999, 0, 0, 0, 0, 0, NULL, 46, '中国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (21, 0, 13, 'CANMAKE井田 眼线笔', '内外眼线 一笔搞定', '0', 88.00, 69.00, 0, 'UploadFiles/product/20190401/1554113482387769.jpg', 'UploadFiles/product/20190401/1554113482790224.jpg', ',UploadFiles/product/20190401/1554113482725131.jpg,UploadFiles/product/20190401/1554113482975553.jpg,UploadFiles/product/20190401/1554113482684364.jpg,UploadFiles/product/20190401/1554113482829396.jpg,UploadFiles/product/20190401/1554113482328051.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01bs4RWQ1XyNXXirUCq_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01bs4RWQ1XyNXXirUCq_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01PBp0CG1XyNXYV1Yjf_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01PBp0CG1XyNXYV1Yjf_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554113482, 1554197297, 0, 0, 0, 999999, 0, 0, 0, 0, 1, NULL, 46, '日本', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (15, 0, 15, 'AbyBOM艾柏梵超能婴儿再生叶子 桃花面膜', '补水舒缓 再生修复', '0', 269.00, 110.00, 0, 'UploadFiles/product/20190401/1554104501761377.jpg', 'UploadFiles/product/20190401/1554104501240329.jpg', ',UploadFiles/product/20190401/1554104501445970.jpg,UploadFiles/product/20190401/1554104501311887.jpg,UploadFiles/product/20190401/1554104501474774.jpg,UploadFiles/product/20190401/1554104501582020.jpg,UploadFiles/product/20190401/1554104501701934.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01ogsnaL1XyNXbVAnzy_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01ogsnaL1XyNXbVAnzy_!!388042992.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a2126o.11854294.0.i2.744e4831CaQPCz\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01qsgMHO1XyNXauHCHx_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01qsgMHO1XyNXauHCHx_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01rnY1gp1XyNXcN7qfJ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01rnY1gp1XyNXcN7qfJ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01sJJFD81XyNXXUOlsd_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01sJJFD81XyNXXUOlsd_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01sklgju1XyNXc5V65r_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01sklgju1XyNXc5V65r_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN018J2UUa1XyNXb06NCX_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN018J2UUa1XyNXb06NCX_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01xH2AmO1XyNXa4Xq3I_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01xH2AmO1XyNXa4Xq3I_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN017NWoHL1XyNXZPwtHa_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN017NWoHL1XyNXZPwtHa_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01K0j34w1XyNXYcObz9_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01K0j34w1XyNXYcObz9_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01E52W6A1XyNXXUOVG7_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01E52W6A1XyNXXUOVG7_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01zwfqkz1XyNXa3AYx2_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01zwfqkz1XyNXa3AYx2_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN013kEcW61XyNXasYJE4_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN013kEcW61XyNXasYJE4_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN013XY0XQ1XyNXZPvooe_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN013XY0XQ1XyNXZPvooe_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01q4slsk1XyNXa4XuEq_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01q4slsk1XyNXa4XuEq_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554104501, 1554197453, 0, 0, 0, 999999, 0, 0, 0, 0, 1, NULL, 44, '韩国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (16, 0, 23, '日本BCL早安面膜女Saborino免洗60秒', '专属肌肤的六十秒早餐', '0', 139.00, 73.00, 0, 'UploadFiles/product/20190402/1554197436298141.jpg', 'UploadFiles/product/20190402/1554197436416401.jpg', ',UploadFiles/product/20190401/1554105632451018.jpg,UploadFiles/product/20190401/1554105632766332.jpg,UploadFiles/product/20190401/1554105632159417.jpg,UploadFiles/product/20190401/1554105632141858.jpg,UploadFiles/product/20190401/1554105632669130.jpg', '<p><img align=\"\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN015X1gzl1XyNXbXOtht_!!388042992.jpg\" style=\"\" alt=\"\" width=\"100%\" /><img align=\"\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN010jwlYR1XyNXciO2Qe_!!388042992.jpg\" style=\"max-width:750px\" alt=\"\" width=\"100%\" /><img align=\"\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01ea12TX1XyNXa5MRJO_!!388042992.jpg\" style=\"max-width:750px\" alt=\"\" width=\"100%\" /><img align=\"\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN017OO3Uu1XyNXa5JxVV_!!388042992.jpg\" style=\"max-width:750px\" alt=\"\" width=\"100%\" /><img align=\"\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN011OKchK1XyNXcPGmBC_!!388042992.jpg\" style=\"max-width:750px\" alt=\"\" width=\"100%\" /><img align=\"\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01QA94lm1XyNXZiRt31_!!388042992.jpg\" style=\"max-width:750px\" alt=\"\" width=\"100%\" /><img align=\"\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01CcNhrn1XyNXa29bRU_!!388042992.jpg\" style=\"max-width:750px\" alt=\"\" width=\"100%\" /><img align=\"\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01FDAFpx1XyNXc7fIhl_!!388042992.jpg\" style=\"max-width:750px\" alt=\"\" width=\"100%\" /><img align=\"\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01tJbKFY1XyNXa6g5lG_!!388042992.jpg\" style=\"max-width:750px\" alt=\"\" width=\"100%\" /><img align=\"\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01U9FMIn1XyNXZiRYJ5_!!388042992.jpg\" style=\"max-width:750px\" alt=\"\" width=\"100%\" /></p>', 1554105632, 1554198291, 0, 0, 1, 999998, 0, 0, 0, 0, 1, NULL, 44, '日本', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (17, 0, 16, '一叶子植物酵素补水面膜', '清颜净肤炭黑面膜', '0', 79.00, 49.00, 0, 'UploadFiles/product/20190401/1554110936667602.jpg', 'UploadFiles/product/20190401/1554110936532575.jpg', ',UploadFiles/product/20190401/1554110936562730.jpg,UploadFiles/product/20190401/1554110936165083.jpg,UploadFiles/product/20190401/1554110936522335.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN011QukPA1XyNXcqrxv1_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN011QukPA1XyNXcqrxv1_!!388042992.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a2126o.11854294.0.i3.744e48311yTHUQ\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN019kuSPd1XyNXXeluyg_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN019kuSPd1XyNXXeluyg_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01qz8JDE1XyNXbg0HR2_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01qz8JDE1XyNXbg0HR2_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN019PBLFa1XyNXaDuCJQ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN019PBLFa1XyNXaDuCJQ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01MQaow01XyNXYn5tvb_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01MQaow01XyNXYn5tvb_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01099lLE1XyNXaDuw4W_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01099lLE1XyNXaDuw4W_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01QHOHn41XyNXT8oFxf_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01QHOHn41XyNXT8oFxf_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554110936, 1554197372, 0, 0, 0, 999999, 0, 0, 0, 0, 0, NULL, 44, '中国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (18, 0, 8, '卡姿兰四色眼影盘', '个性电眼 无妆不欢', '0', 109.00, 80.00, 0, 'UploadFiles/product/20190401/1554112094818871.jpg', 'UploadFiles/product/20190401/1554112094754619.jpg', ',UploadFiles/product/20190401/1554112094235743.jpg,UploadFiles/product/20190401/1554112094688584.jpg,UploadFiles/product/20190401/1554112094995947.jpg', '<br data-cke-eol=\"1\" /><p><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01gMCaRx1XyNXaCMoZT_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01gMCaRx1XyNXaCMoZT_!!388042992.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a2126o.11854294.0.i4.744e48311yTHUQ\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01Y3kDKL1XyNXZsfMeI_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01Y3kDKL1XyNXZsfMeI_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01pnoOsL1XyNXaCNt3i_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01pnoOsL1XyNXaCNt3i_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01UyYYHt1XyNXZcQLSn_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01UyYYHt1XyNXZcQLSn_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN017FUt081XyNXb6cnUe_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN017FUt081XyNXb6cnUe_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01SCVoW01XyNXbhqXsl_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01SCVoW01XyNXbhqXsl_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01AZwx1W1XyNXXgTrES_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01AZwx1W1XyNXXgTrES_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01aPdUp61XyNXcsjdcF_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01aPdUp61XyNXcsjdcF_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN016Lij6F1XyNXYSiczf_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN016Lij6F1XyNXYSiczf_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01AnmxEG1XyNXb6cSjc_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01AnmxEG1XyNXb6cSjc_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01W6Ifbp1XyNXZseh6V_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01W6Ifbp1XyNXZseh6V_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN019PUkQg1XyNXb53qYZ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN019PUkQg1XyNXb53qYZ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN0141K9JI1XyNXcsiIVe_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN0141K9JI1XyNXcsiIVe_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN011rcaap1XyNXZsdQ72_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN011rcaap1XyNXZsdQ72_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01REsf5E1XyNXaCPdCD_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01REsf5E1XyNXaCPdCD_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /></p>', 1554112094, 1554197358, 0, 0, 0, 999999, 0, 0, 0, 0, 1, NULL, 45, '中国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (19, 0, 9, '玛丽黛佳网红眼影盘九色', '九色随心 百变有我 一盘在手 拥有网红流行色', '0', 169.00, 160.00, 0, 'UploadFiles/product/20190401/1554112853205875.jpg', 'UploadFiles/product/20190401/1554112853617703.jpg', ',UploadFiles/product/20190401/1554112853685153.jpg,UploadFiles/product/20190401/1554112853644235.jpg,UploadFiles/product/20190401/1554112853720102.jpg,UploadFiles/product/20190401/1554112853946465.jpg,UploadFiles/product/20190401/1554112853349870.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01R2AYEO1XyNXcJTOxq_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01R2AYEO1XyNXcJTOxq_!!388042992.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a2126o.11854294.0.i5.744e48311yTHUQ\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01tRulRP1XyNXbDusGq_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01tRulRP1XyNXbDusGq_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01x1cCRf1XyNXXhjSiW_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01x1cCRf1XyNXXhjSiW_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01fWvB3B1XyNXb6K7m6_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01fWvB3B1XyNXb6K7m6_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01vbhlB91XyNXaIDc6W_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01vbhlB91XyNXaIDc6W_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01uv5X1n1XyNXcarJWo_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01uv5X1n1XyNXcarJWo_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01AW2H3F1XyNXb7tbwx_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01AW2H3F1XyNXb7tbwx_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01Piuic41XyNXaH2gd1_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01Piuic41XyNXaH2gd1_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01uwZa6F1XyNXcu1fEW_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01uwZa6F1XyNXcu1fEW_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN018IYqiN1XyNXXhij16_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN018IYqiN1XyNXXhij16_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01zISK0y1XyNXTBmbjI_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01zISK0y1XyNXTBmbjI_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01DR1BhY1XyNXZdiAbt_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01DR1BhY1XyNXZdiAbt_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01ISCMVw1XyNXbjBvIf_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01ISCMVw1XyNXbjBvIf_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01ANIrFf1XyNXcarNhO_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01ANIrFf1XyNXcarNhO_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554112853, 1554197340, 0, 0, 1, 999998, 0, 0, 0, 0, 0, NULL, 45, '中国', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (14, 0, 6, 'JM蜂胶水光补水面膜', '打造蜂蜜般的光彩肌肤', '0', 199.00, 79.00, 0, 'UploadFiles/product/20190401/1554103216176811.jpg', 'UploadFiles/product/20190401/1554103216498999.jpg', ',UploadFiles/product/20190401/1554103216616764.jpg,UploadFiles/product/20190401/1554103216992463.jpg,UploadFiles/product/20190401/1554103216800626.jpg', '<img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN012zodr11XyNXcJQief_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN012zodr11XyNXcJQief_!!388042992.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a2126o.11854294.0.i2.744e48310DDuVD\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01QXIqFw1XyNXYYjdJk_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01QXIqFw1XyNXYYjdJk_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01MbgUBn1XyNXZzeyig_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01MbgUBn1XyNXZzeyig_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01J61WYg1XyNXbRbC7T_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01J61WYg1XyNXbRbC7T_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01UXrYfN1XyNXawVYZz_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01UXrYfN1XyNXawVYZz_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01JJ2IDI1XyNXaoyUxk_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01JJ2IDI1XyNXaoyUxk_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01ZDwDMC1XyNXbRbnWZ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01ZDwDMC1XyNXbRbnWZ_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01yzRILn1XyNXa0wYFK_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01yzRILn1XyNXa0wYFK_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN013nqBUn1XyNXXQoxbB_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN013nqBUn1XyNXXQoxbB_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><img style=\"max-width:750px\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01gLfjpe1XyNXcJQqyb_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01gLfjpe1XyNXcJQqyb_!!388042992.jpg\" align=\"absmiddle\" alt=\"\" width=\"100%\" /><br />', 1554102872, 1554197471, 0, 0, 0, 999999, 0, 0, 0, 0, 0, NULL, 44, '韩国', 0, 0, 0, 1);
INSERT INTO `tp_product` VALUES (11, 0, 5, 'SVK洗脸洁面仪电动洗硅胶美容仪Cutily柯缇尔', '三效合一声波洁面仪 深度清洁 按摩舒缓 热敷导入', '0', 599.00, 369.00, 0, 'UploadFiles/product/20190330/1553916859754083.jpg', 'UploadFiles/product/20190330/1553916859808783.jpg', 'UploadFiles/product/20190330/1553916859242050.jpg,UploadFiles/product/20190330/1553917374146296.jpg,UploadFiles/product/20190330/1553917374572169.jpg,UploadFiles/product/20190330/1553917374182879.jpg,UploadFiles/product/20190330/1553917374880710.jpg,UploadFiles/product/20190330/1553917374916065.jpg,UploadFiles/product/20190330/1553917374729298.jpg,UploadFiles/product/20190330/1553917374959782.jpg', '<img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01F9pKEc1XyNX169G29_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01F9pKEc1XyNX169G29_!!388042992.gif\" style=\"max-width: 750.0px;\" data-spm-anchor-id=\"a2126o.11854294.0.i0.12864831x9RVyC\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01TjtKr21XyNWsLOV85_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01TjtKr21XyNWsLOV85_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01EuYoI11XyNX1697jB_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01EuYoI11XyNX1697jB_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01UgkOei1XyNWxsfvBY_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01UgkOei1XyNWxsfvBY_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN015tfFwI1XyNWzGG6oe_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN015tfFwI1XyNWzGG6oe_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01HhAbhS1XyNX16Avy2_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01HhAbhS1XyNX16Avy2_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN010PZZ0G1XyNWzypyil_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN010PZZ0G1XyNWzypyil_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN010sJDsy1XyNX16AbBF_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN010sJDsy1XyNX16AbBF_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01tLdLvM1XyNX1euLay_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01tLdLvM1XyNX1euLay_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01WWOsRs1XyNWzG3XOA_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01WWOsRs1XyNWzG3XOA_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01BorafO1XyNWzG2SrH_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01BorafO1XyNWzG2SrH_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01GKk3Nm1XyNWxVOrjB_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01GKk3Nm1XyNWxVOrjB_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01iYsz491XyNX169eza_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01iYsz491XyNX169eza_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01kqgdfs1XyNWsLMxXr_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01kqgdfs1XyNWsLMxXr_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01XeNrFo1XyNWxVPs7M_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01XeNrFo1XyNWxVPs7M_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01dlOie91XyNWzGGJJ4_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01dlOie91XyNWzGGJJ4_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01BKnDv61XyNX0awN3X_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01BKnDv61XyNX0awN3X_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01E8aQPT1XyNX16BCc6_!!388042992.gif\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01E8aQPT1XyNX16BCc6_!!388042992.gif\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01GYKX7s1XyNWyrGN0k_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01GYKX7s1XyNWyrGN0k_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" />​​​​​​​<br />', 1553916859, 1553927920, 0, 1, 2, 999997, 1, 1, 0, 0, 1, NULL, 25, '法国 巴黎', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (12, 0, 5, 'KANDICE 超声波毛孔离子清洁器', '深层清洁 呵护你干净的面孔', '0', 799.00, 799.00, 0, 'UploadFiles/product/20190330/1553927504706301.jpg', 'UploadFiles/product/20190330/1553927504837605.jpg', ',UploadFiles/product/20190330/1553927504105013.jpg,UploadFiles/product/20190330/1553927504762841.jpg,UploadFiles/product/20190330/1553927504135242.jpg,UploadFiles/product/20190330/1553927504687458.jpg,UploadFiles/product/20190330/1553927504477307.jpg,UploadFiles/product/20190330/1553927504778036.jpg,UploadFiles/product/20190330/1553927504540454.jpg,UploadFiles/product/20190330/1553927504906738.jpg', '<img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01Se3paU1XyNXSbUMG3_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01Se3paU1XyNXSbUMG3_!!388042992.jpg\" style=\"max-width: 750.0px;\" data-spm-anchor-id=\"a2126o.11854294.0.i0.45bf4831KvFFuB\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01Mg2Tnw1XyNXQqzCo3_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01Mg2Tnw1XyNXQqzCo3_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01LQjyd11XyNXTS7V0K_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01LQjyd11XyNXTS7V0K_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01U3Wwas1XyNXQqxf9M_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01U3Wwas1XyNXQqxf9M_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01DK6KrL1XyNXREVIkb_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01DK6KrL1XyNXREVIkb_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01Ub9raj1XyNXTS6QUE_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01Ub9raj1XyNXTS6QUE_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01pICpU01XyNXTTxIgV_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01pICpU01XyNXTTxIgV_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01G19xeJ1XyNXTa4blP_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01G19xeJ1XyNXTa4blP_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" />​​​​​​​<br />', 1553927504, 1553927691, 0, 0, 2, 999997, 1, 1, 0, 0, 1, NULL, 26, '法国 巴黎', 1, 0, 1, 1);
INSERT INTO `tp_product` VALUES (13, 0, 5, 'SVK美眼仪', '淡化黑眼圈 眼袋,眼周轮廓护理', '0', 399.00, 299.00, 0, 'UploadFiles/product/20190330/1553928299241782.jpg', 'UploadFiles/product/20190330/1553928299483909.jpg', ',UploadFiles/product/20190330/1553928299662775.jpg,UploadFiles/product/20190330/1553928299923045.jpg,UploadFiles/product/20190330/1553928299886786.jpg,UploadFiles/product/20190330/1553928299780310.jpg,UploadFiles/product/20190330/1553928299553355.jpg,UploadFiles/product/20190330/1553928299943366.jpg,UploadFiles/product/20190330/1553928299845322.jpg,UploadFiles/product/20190330/1553928299426162.jpg', '<br data-cke-eol=\"1\" /><p><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN015ncYgc1XyNXQ6SMwl_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN015ncYgc1XyNXQ6SMwl_!!388042992.jpg\" style=\"max-width: 750.0px;\" data-spm-anchor-id=\"a2126o.11854294.0.i0.2ba44831aNIsnj\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01EKDtdi1XyNXTTwhOK_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01EKDtdi1XyNXTTwhOK_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN013LjPZq1XyNXU5aQXA_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN013LjPZq1XyNXU5aQXA_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01zmxajM1XyNXQr2UgL_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01zmxajM1XyNXQr2UgL_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01Avki021XyNXVCzkdl_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01Avki021XyNXVCzkdl_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01ILU6KR1XyNXTS8ZeS_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01ILU6KR1XyNXTS8ZeS_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01wgO95E1XyNXS22dbp_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01wgO95E1XyNXS22dbp_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01xB6GmT1XyNXVCzoo7_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01xB6GmT1XyNXVCzoo7_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01tiggqf1XyNXSbWZd1_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01tiggqf1XyNXSbWZd1_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01fB7zBN1XyNXUd9Siv_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01fB7zBN1XyNXUd9Siv_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01z6vRBl1XyNXUdBPHJ_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01z6vRBl1XyNXUdBPHJ_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01EhVqeN1XyNXSbXFFF_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN01EhVqeN1XyNXSbXFFF_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01TofHVi1XyNXTTyyim_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01TofHVi1XyNXTTyyim_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01AuavZO1XyNXREWZpO_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i4/388042992/O1CN01AuavZO1XyNXREWZpO_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01mtHPXZ1XyNXUdC4sL_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i3/388042992/O1CN01mtHPXZ1XyNXUdC4sL_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN011BTofe1XyNXSHGPw0_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i2/388042992/O1CN011BTofe1XyNXSHGPw0_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /><img align=\"absmiddle\" data-cke-saved-src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01yC4ywC1XyNXUdBXbp_!!388042992.jpg\" src=\"https://img.alicdn.com/imgextra/i1/388042992/O1CN01yC4ywC1XyNXUdBXbp_!!388042992.jpg\" style=\"max-width: 750.0px;\" alt=\"\" width=\"100%\" /></p>', 1553928299, 1553928299, 0, 0, 2, 999997, 1, 1, 0, 0, 1, NULL, 27, '法国 巴黎', 1, 0, 1, 1);

-- ----------------------------
-- Table structure for tp_product_dp
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_dp`;
CREATE TABLE `tp_product_dp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品评论表',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '会员id',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '商品id',
  `order_id` int(11) NULL DEFAULT 0 COMMENT '评论订单id',
  `num` int(11) NOT NULL DEFAULT 1 COMMENT '评分数',
  `concent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '评论时间',
  `audit` tinyint(2) NOT NULL DEFAULT 0 COMMENT '审核状态',
  `reply_status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '回复状态',
  `reply_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `reply_time` int(11) NOT NULL DEFAULT 0 COMMENT '回复时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tp_product_sc
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_sc`;
CREATE TABLE `tp_product_sc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品收藏表',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '商品ID',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '状态 1正常 0删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 512 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_product_sc
-- ----------------------------
INSERT INTO `tp_product_sc` VALUES (7, 281, 2, 1);
INSERT INTO `tp_product_sc` VALUES (8, 287, 3, 1);
INSERT INTO `tp_product_sc` VALUES (10, 5, 1, 1);
INSERT INTO `tp_product_sc` VALUES (268, 6, 1, 1);
INSERT INTO `tp_product_sc` VALUES (17, 282, 2, 1);
INSERT INTO `tp_product_sc` VALUES (232, 2, 1, 1);
INSERT INTO `tp_product_sc` VALUES (374, 9, 3, 1);
INSERT INTO `tp_product_sc` VALUES (366, 5, 3, 1);
INSERT INTO `tp_product_sc` VALUES (491, 13, 21, 1);
INSERT INTO `tp_product_sc` VALUES (487, 13, 20, 1);
INSERT INTO `tp_product_sc` VALUES (484, 14, 18, 1);
INSERT INTO `tp_product_sc` VALUES (474, 12, 10, 1);

-- ----------------------------
-- Table structure for tp_program
-- ----------------------------
DROP TABLE IF EXISTS `tp_program`;
CREATE TABLE `tp_program`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '小程序配置表',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小程序名称',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '负责人',
  `describe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简单描述',
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `copyright` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版权信息',
  `service_wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '平台客服微信号',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '平台客服电话',
  `uptime` int(11) NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_program
-- ----------------------------
INSERT INTO `tp_program` VALUES (1, '蓝果小镇商城', 'catfeeds', '蓝果小镇商城，电子产品专卖', 'UploadFiles/logo/1501669240147747.png', 'Copyright © 2017蓝果小镇', 'catfeeds', '15088888888', 1504505362);

-- ----------------------------
-- Table structure for tp_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_role`;
CREATE TABLE `tp_role`  (
  `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_role
-- ----------------------------
INSERT INTO `tp_role` VALUES (1, '超级管理员');
INSERT INTO `tp_role` VALUES (4, '测试人员1');

-- ----------------------------
-- Table structure for tp_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tp_role_menu`;
CREATE TABLE `tp_role_menu`  (
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色id',
  `menu_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '菜单id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单对应表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_role_menu
-- ----------------------------
INSERT INTO `tp_role_menu` VALUES (3, 1);
INSERT INTO `tp_role_menu` VALUES (3, 2);
INSERT INTO `tp_role_menu` VALUES (3, 6);
INSERT INTO `tp_role_menu` VALUES (3, 3);
INSERT INTO `tp_role_menu` VALUES (3, 4);
INSERT INTO `tp_role_menu` VALUES (3, 5);
INSERT INTO `tp_role_menu` VALUES (3, 9);
INSERT INTO `tp_role_menu` VALUES (4, 1);
INSERT INTO `tp_role_menu` VALUES (4, 2);
INSERT INTO `tp_role_menu` VALUES (4, 17);
INSERT INTO `tp_role_menu` VALUES (4, 16);
INSERT INTO `tp_role_menu` VALUES (4, 15);
INSERT INTO `tp_role_menu` VALUES (4, 6);
INSERT INTO `tp_role_menu` VALUES (4, 3);
INSERT INTO `tp_role_menu` VALUES (4, 23);
INSERT INTO `tp_role_menu` VALUES (4, 22);
INSERT INTO `tp_role_menu` VALUES (4, 21);
INSERT INTO `tp_role_menu` VALUES (4, 18);
INSERT INTO `tp_role_menu` VALUES (4, 30);
INSERT INTO `tp_role_menu` VALUES (4, 31);
INSERT INTO `tp_role_menu` VALUES (4, 32);

-- ----------------------------
-- Table structure for tp_search_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_search_record`;
CREATE TABLE `tp_search_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '搜索记录表',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '会员ID',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '搜索内容',
  `num` int(11) NOT NULL DEFAULT 1 COMMENT '搜索次数',
  `addtime` int(11) NULL DEFAULT 0 COMMENT '搜索时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_search_record
-- ----------------------------
INSERT INTO `tp_search_record` VALUES (7, 4, '小米', 1, 1504509512);
INSERT INTO `tp_search_record` VALUES (8, 4, '笔记本', 2, 1504509521);
INSERT INTO `tp_search_record` VALUES (9, 4, 'n', 1, 1504509544);
INSERT INTO `tp_search_record` VALUES (10, 1, '书包', 3, 1504509722);
INSERT INTO `tp_search_record` VALUES (12, 1, '小', 2, 1504601577);
INSERT INTO `tp_search_record` VALUES (13, 1, '小米', 31, 1504685665);
INSERT INTO `tp_search_record` VALUES (14, 3, '书包', 1, 1504685761);
INSERT INTO `tp_search_record` VALUES (15, 3, '小小米', 1, 1504695292);
INSERT INTO `tp_search_record` VALUES (16, 3, '小', 1, 1504695298);
INSERT INTO `tp_search_record` VALUES (17, 3, '小米耳机', 1, 1504695363);
INSERT INTO `tp_search_record` VALUES (18, 3, '124', 1, 1504752784);
INSERT INTO `tp_search_record` VALUES (19, 3, '小米', 54, 1504752811);
INSERT INTO `tp_search_record` VALUES (20, 1, 'xsdsdsdd', 8, 1504755773);
INSERT INTO `tp_search_record` VALUES (21, 1, '手机', 11, 1505090163);
INSERT INTO `tp_search_record` VALUES (22, 3, '手机', 26, 1505186349);
INSERT INTO `tp_search_record` VALUES (23, 1, 'ss', 1, 1505283784);
INSERT INTO `tp_search_record` VALUES (24, 3, '笔记本', 4, 1505283802);
INSERT INTO `tp_search_record` VALUES (26, 1, '鞋子', 7, 1505490704);
INSERT INTO `tp_search_record` VALUES (27, 1, '高帮鞋', 6, 1505490717);
INSERT INTO `tp_search_record` VALUES (28, 1, '笔记本', 12, 1505490724);
INSERT INTO `tp_search_record` VALUES (29, 1, '电脑', 3, 1505490757);
INSERT INTO `tp_search_record` VALUES (30, 1, 'sssssssss', 2, 1505534198);
INSERT INTO `tp_search_record` VALUES (31, 1, '你好', 4, 1505534215);
INSERT INTO `tp_search_record` VALUES (32, 1, '操你妈', 1, 1505535215);
INSERT INTO `tp_search_record` VALUES (33, 1, 'shouji手机', 2, 1505573232);
INSERT INTO `tp_search_record` VALUES (34, 1, 'ww', 6, 1505806702);
INSERT INTO `tp_search_record` VALUES (35, 3, 'xsdsdsdd', 1, 1505807012);
INSERT INTO `tp_search_record` VALUES (36, 3, '电脑', 3, 1505807890);
INSERT INTO `tp_search_record` VALUES (37, 3, 'nihO', 2, 1505808198);
INSERT INTO `tp_search_record` VALUES (38, 3, '您好', 1, 1505808204);
INSERT INTO `tp_search_record` VALUES (39, 10, '小米', 2, 1553840170);
INSERT INTO `tp_search_record` VALUES (40, 10, '11111111111111111', 1, 1553840201);
INSERT INTO `tp_search_record` VALUES (41, 9, '小米', 33, 1553840209);
INSERT INTO `tp_search_record` VALUES (42, 9, '电脑', 1, 1553840224);
INSERT INTO `tp_search_record` VALUES (43, 10, '手机', 3, 1553840231);
INSERT INTO `tp_search_record` VALUES (44, 9, '手机', 16, 1553840232);
INSERT INTO `tp_search_record` VALUES (45, 10, '电脑', 10, 1553840258);
INSERT INTO `tp_search_record` VALUES (46, 12, '书包', 3, 1553964351);
INSERT INTO `tp_search_record` VALUES (47, 9, '洁面仪', 57, 1554090388);
INSERT INTO `tp_search_record` VALUES (48, 9, 'ddddddd', 1, 1554102965);
INSERT INTO `tp_search_record` VALUES (49, 9, 'xsdsdsdd', 3, 1554102986);
INSERT INTO `tp_search_record` VALUES (50, 9, '洗护', 12, 1554103080);
INSERT INTO `tp_search_record` VALUES (51, 9, '洁', 7, 1554103703);
INSERT INTO `tp_search_record` VALUES (52, 19, '小米', 1, 1554187720);
INSERT INTO `tp_search_record` VALUES (53, 19, '洁面仪', 2, 1554187724);
INSERT INTO `tp_search_record` VALUES (54, 9, '洁面', 5, 1554190183);
INSERT INTO `tp_search_record` VALUES (55, 12, '面膜', 2, 1554286521);
INSERT INTO `tp_search_record` VALUES (56, 12, '眉笔', 1, 1554286534);
INSERT INTO `tp_search_record` VALUES (57, 18, '小米', 1, 1554287383);
INSERT INTO `tp_search_record` VALUES (58, 18, 'skg', 6, 1554287407);
INSERT INTO `tp_search_record` VALUES (59, 9, '洗', 1, 1554376534);

-- ----------------------------
-- Table structure for tp_shangchang
-- ----------------------------
DROP TABLE IF EXISTS `tp_shangchang`;
CREATE TABLE `tp_shangchang`  (
  `id` int(11) NOT NULL,
  `cid` int(11) NULL DEFAULT 0 COMMENT '店铺类别id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺名称',
  `uname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '负责人名称',
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺LOGO',
  `vip_char` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺公告、广告图',
  `sheng` int(11) NOT NULL DEFAULT 0 COMMENT '省id',
  `city` int(11) NULL DEFAULT 0 COMMENT '市id',
  `quyu` int(11) NULL DEFAULT 0 COMMENT '区域id',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `address_xq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省市区+地址',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `location_x` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '纬度',
  `location_y` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '经度',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '创建日期',
  `updatetime` int(11) NOT NULL DEFAULT 0 COMMENT '更新日期',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '店铺介绍',
  `intro` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺广告语',
  `grade` int(2) NOT NULL DEFAULT 10 COMMENT '评分等级1~10',
  `tel` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `utel` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人手机',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '显示/隐藏',
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  `wx_appid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'APPID',
  `wx_mch_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信支付商户号',
  `wx_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'API密钥',
  `wx_secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'AppSecret是APPID对应的接口密码'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_shangchang
-- ----------------------------
INSERT INTO `tp_shangchang` VALUES (9, 1, '北京大帝都高级旗舰店', '串串香', 'UploadFiles/shop/logo/20170508/1494227348768908.jpg', 'UploadFiles/shop/20170508/1494227348490053.jpg', 1, 2, 3, '天安门广场附近王府井知道吗', '北京 北京 东城区 天安门广场附近王府井知道吗', 496, '116.417491', '39.924232', 1466825048, 1494227348, '<p><span style=\"font-size:18px;\">北京大帝都高级旗舰店</span></p><p><span style=\"font-size:12px;\">大帝都 就是飞讯呢</span><br /></p>', '大帝都 就是飞讯呢', 10, '13926154675', '13926154675', 1, 0, '', NULL, NULL, NULL, NULL);
INSERT INTO `tp_shangchang` VALUES (35, 2, 'CBD阿里斯门迪品牌店', '牛德福', 'UploadFiles/shop/logo/20170508/1494229934647258.jpg', 'UploadFiles/shop/20170508/1494230002408295.jpg', 2151, 2152, 2161, '什么路什么街什么商业中心附近', '广东省 广州市 花都区 什么路什么街什么商业中心附近', 400, '113.168356', '23.382594', 1467969795, 1494230002, '<span style=\"font-size:18px;\">CBD阿里斯门迪品牌店</span>', '什么品牌好 什么好品牌', 10, '13311112334', '13311112334', 1, 1, '', NULL, NULL, NULL, NULL);
INSERT INTO `tp_shangchang` VALUES (36, 1, '广州国际贸易进出口', 'nick张', 'UploadFiles/shop/logo/20170508/1494229710369534.jpg', 'UploadFiles/shop/20170508/1494230066358172.jpg', 2151, 2152, 2157, 'CBD国际金融中心大楼', '广东省 广州市 天河区 CBD国际金融中心大楼', 100, '113.327464', '23.137898', 1468026641, 1494230066, '<span style=\"font-size:18px;\">广州国际贸易进出口</span>', '国际品牌 你要的这里有', 10, '02044556678', '13928712222', 1, 0, '', NULL, NULL, NULL, NULL);
INSERT INTO `tp_shangchang` VALUES (39, 2, 'GGN乖乖女自营产品专营店', '曹先生', 'UploadFiles/shop/logo/20170508/1494229020632699.jpg', 'UploadFiles/shop/20170508/1494229020424246.png', 2151, 2152, 2159, '黄埔公园附近', '广东省 广州市 黄埔区 黄埔公园附近', 500, '113.456676', '23.104064', 1468217700, 1494229020, '<p><span style=\"font-size:18px;\">GGN乖乖女自营产品专营店</span></p><p><span style=\"font-size:18px;\"><br /></span></p>', '阿斯顿撒通过 健康不好', 10, '02022221145', '13654547676', 1, 1, '', NULL, NULL, NULL, NULL);
INSERT INTO `tp_shangchang` VALUES (45, 1, 'CBG藏宝阁搜索专营店', '白先生', 'UploadFiles/shop/logo/20170508/1494227020306856.jpg', 'UploadFiles/shop/20170508/1494227020836280.jpg', 2151, 2152, 2158, '你看着办白云山附近', '广东省 广州市 白云区 你看着办白云山附近', 48, '113.304324', '23.186209', 1472105436, 1494227020, '<p><span style=\"font-size:18px;\">CBG藏宝阁搜索专营店</span></p><p><span style=\"font-size:18px;\"><br /></span></p>', '呵呵呵呵呵 哈哈哈哈哈', 10, '02084796015', '13455568787', 1, 1, '', NULL, NULL, NULL, NULL);
INSERT INTO `tp_shangchang` VALUES (46, 2, 'KKBS维护卡斯马专营店', 'mini先生', 'UploadFiles/shop/logo/20170508/1494225499674202.jpg', 'UploadFiles/shop/20170508/1494225499169062.jpg', 2151, 2207, 2209, '东方广场还发广播站A区喽', '广东省 江门市 蓬江区 东方广场还发广播站A区喽', 150, '113.080682', '22.592643', 1473057266, 1494225499, '<p><span style=\"font-size:18px;\">东方广场还发广播站A区喽</span></p><p>曾经的曾经 现在的现在曾经的曾经 现在的现在曾经的曾经 现在的现在曾经的曾经 现在的现在<br /></p><p style=\"margin: 0px; padding: 0px;\"></p>', '曾经的曾经 现在的现在', 10, '13532323545', '13532323545', 1, 1, '', NULL, NULL, NULL, NULL);
INSERT INTO `tp_shangchang` VALUES (47, 1, 'KO打卡机阿斯顿旗舰店', '爱尚先生', 'UploadFiles/shop/logo/20170508/1494225236944805.jpg', 'UploadFiles/shop/20170508/1494225236615782.jpg', 2151, 2166, 2168, '步步高高对面街道cc', '广东省 韶关市 武江区 步步高高对面街道cc', 650, '113.601555', '24.826763', 1473842739, 1494225236, '&nbsp;易岛通（海南）旅游科技有限公司是一家旅游度假、养生休闲综合服务平台，总部位于海南的省会城市海口。<br />易岛通度假项目依托海南独特的地理区位、自然环境、天然资源等优势，建设丰富而又舒适的多元化度假场所，同时将海南岛纯天然的优质产品配套推出，开创全新的吃住玩一体化服务的“自助餐式”度假新体验。易岛通度假综合服务平台将通过大数据、云技术、物联网及各种领先的移动网络信息技术，全方位打造和提供线上线下预定、购买、交流、互动、互助服务模式，并将服务推向广大社区的千家万户。<br />&nbsp;<br />老人收住类型：生活自理<br />老人入住指南：三亚，乐东，琼海，琼中，文昌，五指山，万宁，儋州<br />房型：单人间、双人间、公寓<br />床位数：20000<br />收费标准： 999（七天） 9999（63天） 59800（2460天）<br />特色服务：接送服务，活动服务，棋牌室、麻将室、舞蹈室、排练厅、音像制作室<br />医疗护理（如果您机构可以提供）：基地有医疗人员<br /><p>保险：购买人身安全保险</p><p><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141646386637.jpg\" alt=\"\" /><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141646512845.jpg\" alt=\"\" /><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141646573553.jpg\" alt=\"\" /><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141647068364.jpg\" alt=\"\" /><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141648064119.jpg\" alt=\"\" /><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141648123339.jpg\" alt=\"\" /><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141648189118.jpg\" alt=\"\" /><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141648265046.jpg\" alt=\"\" /><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141648311531.jpg\" alt=\"\" /><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141648384419.jpg\" alt=\"\" /><img src=\"http://lscy5.caeac.com.cn/app/62/3057c1502ae5a4d514baec129f72948c266e/UploadFiles/day_160914/201609141648546246.jpg\" alt=\"\" /><br /></p>', '高高兴兴玩 开开心心买', 10, '13232454675', '13232454675', 1, 0, '', NULL, NULL, NULL, NULL);
INSERT INTO `tp_shangchang` VALUES (48, 2, 'MNMX模拟梦想直营店', '小先生', 'UploadFiles/shop/logo/20170508/1494215970977911.jpg', 'UploadFiles/shop/20170508/1494215970509487.jpg', 2151, 2152, 2157, '一片汪洋大海附近地址', '广东省 广州市 天河区 一片汪洋大海附近地址', 650, '113.344855', '23.125336', 1476168943, 1494231948, '<p><span style=\"font-family:Microsoft YaHei;font-size:18px;\">MNMX模拟梦想直营店&nbsp;</span></p><p><span style=\"font-size:12px;\">玩玩玩玩玩 买买买买买</span><br /></p>', '玩玩玩玩玩 买买买买买', 10, '13866544322', '13866544322', 1, 1, '', NULL, NULL, NULL, NULL);
INSERT INTO `tp_shangchang` VALUES (49, 1, 'SCC部分对方官方旗舰店', 'Mr . xiao', 'UploadFiles/shop/logo/20170508/1494215671720469.jpg', 'UploadFiles/shop/20170508/1494215671616059.jpg', 2151, 2152, 2160, '南村', '广东省 广州市 番禺区 南村', 200, '113.385674', '23.007963', 1477293664, 1494215671, 'SCC部分对方官方旗舰店', '吃吃吃吃吃 呜呜呜呜网', 10, '13755446677', '13755446677', 1, 0, '', NULL, NULL, NULL, NULL);
INSERT INTO `tp_shangchang` VALUES (50, 2, 'ZHXZ最好选择我的店', '测试先生', 'UploadFiles/shop/logo/20170428/1493347023276929.jpg', 'UploadFiles/shop/20170428/1493347024426958.png', 2151, 2152, 2157, '好的味道好的街道好的号', '广东省 广州市 天河区 好的味道好的街道好的号', 88, '113.380159', '22.998499', 1493346749, 1494230955, '<span style=\"font-size:18px;\"><strong>ZHXZ最好选择我的店</strong></span>', '给自己一个惊喜，给世界一个惊喜', 10, '13812423423', '13412423423', 1, 0, '34536465', NULL, NULL, NULL, NULL);
INSERT INTO `tp_shangchang` VALUES (0, 1, '官方自营商铺', 'Catfeeds', 'UploadFiles/shop/20170508/1494227348490053.jpg', 'UploadFiles/shop/20170508/1494227348490053.jpg', 1, 2, 3, '天安门广场附近王府井', '北京 北京 东城区 天安门广场附近王府', 1000, '116.417491', '39.924232', 1466825048, 1466825048, '<p><span style=\"font-size:18px;\">北京大帝都高级旗舰店</span>', '大帝都 就是飞讯呢', 10, '15088888888', '15088888888', 1, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL');

-- ----------------------------
-- Table structure for tp_shangchang_dp
-- ----------------------------
DROP TABLE IF EXISTS `tp_shangchang_dp`;
CREATE TABLE `tp_shangchang_dp`  (
  `id` int(11) NOT NULL COMMENT '店铺收藏表',
  `shop_id` int(11) NOT NULL DEFAULT 0 COMMENT '商铺id',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '会员id',
  `grade` int(11) NOT NULL DEFAULT 0 COMMENT '评分数',
  `concent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `addtime` int(11) NULL DEFAULT NULL,
  `audit` tinyint(2) NOT NULL DEFAULT 0 COMMENT '审核状态'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tp_shangchang_sc
-- ----------------------------
DROP TABLE IF EXISTS `tp_shangchang_sc`;
CREATE TABLE `tp_shangchang_sc`  (
  `id` int(11) NOT NULL COMMENT '会员店铺收藏记录表',
  `shop_id` int(11) NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '收藏状态 1收藏 0删除'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_shangchang_sc
-- ----------------------------
INSERT INTO `tp_shangchang_sc` VALUES (1, 47, 5, 1);

-- ----------------------------
-- Table structure for tp_shopping_char
-- ----------------------------
DROP TABLE IF EXISTS `tp_shopping_char`;
CREATE TABLE `tp_shopping_char`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车表',
  `pid` int(11) NOT NULL COMMENT '商品ID',
  `price` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '商品单价',
  `num` int(11) NOT NULL DEFAULT 1 COMMENT '数量',
  `buff` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性（序列化格式）',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `shop_id` int(11) NOT NULL DEFAULT 0 COMMENT '商家ID',
  `type` tinyint(2) NULL DEFAULT 2 COMMENT '0是热卖，1是团购，2是普通商品',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 972 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_shopping_char
-- ----------------------------
INSERT INTO `tp_shopping_char` VALUES (1, 6, 749.00, 9, '白色,36', 1502337207, 2, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (2, 6, 739.00, 1, '黑色,35', 1502347016, 2, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (3, 6, 749.00, 1, '白色,37', 1502439423, 2, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (101, 6, 1999.00, 1, '', 1504602703, 155, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (105, 8, 0.01, 2, '', 1504621823, 56, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (106, 9, 100.00, 2, '', 1504621832, 56, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (107, 6, 1999.00, 1, '', 1504621838, 56, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (108, 5, 838.00, 1, '', 1504621863, 56, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (109, 2, 6999.00, 1, '', 1504621867, 56, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (110, 3, 716.00, 1, '', 1504621870, 56, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (608, 9, 100.00, 2, '', 1505494155, 16, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (617, 6, 1999.00, 1, '', 1505546551, 16, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (837, 8, 0.01, 6, '', 1505891717, 1, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (848, 8, 0.01, 1, '银', 1506331160, 1, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (886, 4, 1999.00, 2, 'undefined', 1507266463, 8, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (938, 13, 299.00, 2, 'undefined', 1553943778, 14, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (952, 14, 79.00, 13, 'undefined', 1554169130, 18, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (953, 13, 299.00, 1, '樱花粉', 1554169676, 18, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (955, 13, 299.00, 1, '薄荷绿', 1554187144, 19, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (961, 27, 56.00, 2, '清爽型', 1554286362, 12, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (962, 11, 369.00, 1, '薄荷绿', 1554287253, 18, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (963, 13, 299.00, 1, '樱花粉', 1554287257, 9, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (964, 16, 73.00, 1, '西柚款', 1554291245, 12, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (965, 16, 73.00, 1, '西柚款', 1554347812, 30, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (967, 29, 129.00, 1, '亮肤色', 1554369831, 10, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (968, 15, 110.00, 1, '冰凝叶子', 1554369990, 10, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (969, 16, 73.00, 1, '西柚款', 1554370142, 10, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (970, 12, 799.00, 1, '樱花粉', 1554370212, 10, 0, 1);
INSERT INTO `tp_shopping_char` VALUES (971, 11, 369.00, 1, '樱花粉', 1554370431, 10, 0, 1);

-- ----------------------------
-- Table structure for tp_theme
-- ----------------------------
DROP TABLE IF EXISTS `tp_theme`;
CREATE TABLE `tp_theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `theme_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `theme_addtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `proid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `theme_position` int(11) NULL DEFAULT NULL COMMENT '1:顶部  2:底部',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专题表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_theme
-- ----------------------------
INSERT INTO `tp_theme` VALUES (17, '洁面仪', 'UploadFiles/theme/20190403/1554257159307761.png', '1553755864', '13,12,11', 1);
INSERT INTO `tp_theme` VALUES (18, '清洁仪', 'UploadFiles/theme/20190403/1554257138730687.png', '1553755896', '13,12,11', 1);
INSERT INTO `tp_theme` VALUES (19, '美眼仪', 'UploadFiles/theme/20190403/1554257111821002.png', '1553755928', '13', 1);
INSERT INTO `tp_theme` VALUES (30, '当季新品', NULL, '1553943517', '13,12,11', 2);
INSERT INTO `tp_theme` VALUES (31, '面膜', 'UploadFiles/theme/20190403/1554257271814843.png', '1554102462', '17,16,15,14', 1);
INSERT INTO `tp_theme` VALUES (32, '气垫', 'UploadFiles/theme/20190403/1554257074365639.png', '1554193331', '30,29', 1);
INSERT INTO `tp_theme` VALUES (33, '眼影', 'UploadFiles/theme/20190403/1554257063896024.png', '1554193416', '31,19,18', 1);
INSERT INTO `tp_theme` VALUES (34, '眉笔', 'UploadFiles/theme/20190403/1554257049773038.png', '1554193527', '32,26', 1);
INSERT INTO `tp_theme` VALUES (35, '睫毛膏', 'UploadFiles/theme/20190403/1554257039624107.png', '1554194078', '26,25,24', 1);
INSERT INTO `tp_theme` VALUES (36, '眼线笔', 'UploadFiles/theme/20190403/1554257027251478.png', '1554194087', '21,20', 1);
INSERT INTO `tp_theme` VALUES (37, '腮红', 'UploadFiles/theme/20190403/1554257008996559.png', '1554194099', '23,22', 1);
INSERT INTO `tp_theme` VALUES (38, '爽肤水', 'UploadFiles/theme/20190403/1554256995351027.png', '1554194115', '28,27', 0);
INSERT INTO `tp_theme` VALUES (39, '更多商品', 'UploadFiles/theme/20190403/1554257315351920.png', '1554257315', '32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13', 1);

-- ----------------------------
-- Table structure for tp_themerelation
-- ----------------------------
DROP TABLE IF EXISTS `tp_themerelation`;
CREATE TABLE `tp_themerelation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专题与商品管理表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_themerelation
-- ----------------------------
INSERT INTO `tp_themerelation` VALUES (1, 6, 8);
INSERT INTO `tp_themerelation` VALUES (2, 6, 7);

-- ----------------------------
-- Table structure for tp_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表：包括后台管理员、商家会员和普通会员',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登陆账号',
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'MD5密码',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '创建日期',
  `jifen` int(11) NULL DEFAULT 0 COMMENT '积分',
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `tel` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `qq_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'qq',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sex` tinyint(2) NOT NULL DEFAULT 0 COMMENT '性别',
  `del` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '授权ID',
  `source` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '第三方平台(微信，QQ)',
  `authtype` tinyint(2) NULL DEFAULT 0 COMMENT '手机验证状态 0未验证 1已验证',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES (1, 'aa', 'aa', 'aa', 0, 0, NULL, NULL, '0', NULL, 0, 1, '', '', 0);
INSERT INTO `tp_user` VALUES (2, '小伙伴', '小伙伴', '', 1494210088, 0, 'http://wx.qlogo.cn/mmopen/vi_32/6Dq9DIIcGyQiaEA4JicN48rEQ1bwm33s2cGkzHlSLkUOPwktluYXmf84fiaILKMUCb5SSvOHmxxenE4MlelQhibBqg/0', NULL, '0', NULL, 1, 1, 'oQukL0fa013osRbWSdIPaUt88JZE', 'wx', 0);
INSERT INTO `tp_user` VALUES (3, '小伙伴', '小伙伴', '', 1496195940, 0, 'http://wx.qlogo.cn/mmhead/icXtjp9jsR5RylwDhXjxFtIL70hvKaibowUZYFsD9shibBiaQyqvD1zRng/132', '', '0', NULL, 1, 0, 'undefined', 'wx', 0);
INSERT INTO `tp_user` VALUES (4, '寒星晓月', '寒星晓月', '', 1504507903, 0, 'https://wx.qlogo.cn/mmopen/vi_32/bNXk3a3kE8ib81wvORGUZCDWEXiarGZShmPbuae54G2Ue0GmxWrzuwSYEb9ugiaTClvcoWq5FVFoT3cHhH3VaSENA/0', NULL, '0', NULL, 1, 0, 'oOG4L0cwMz5Z8JXDEjJHxfTqAuSc', 'wx', 0);
INSERT INTO `tp_user` VALUES (5, '刘 辰', '刘 辰', '', 1504785418, 0, 'https://wx.qlogo.cn/mmopen/vi_32/l7V1Ss2ql2KvFiaPgA5RztibwQbtx4XO92Cmep99gtAvXtFiaLvMrkueUooF38xEmiaCyicDuHvia8ozcjBfnKGZDmicQ/0', NULL, '0', NULL, 1, 0, 'oMQkB0WiJRoI8ri53bfkADxdRfw4', 'wx', 0);
INSERT INTO `tp_user` VALUES (6, '静待，属于我的阳光', '静待，属于我的阳光', '', 1505206253, 0, 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaELSVFgoJETMROXw4NEvTPeKO79wH9b75ukAMpobtaAxsXAicW5mTGZic23zzJk9iagBFMBuY2ekyJibMg/0', NULL, '0', NULL, 2, 0, 'oXhP90MrG-GbVD_KHHRIu1HDsXG4', 'wx', 0);
INSERT INTO `tp_user` VALUES (7, '覃健豪', '覃健豪', '', 1505458125, 0, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoZWMtLznN3B9yALPFNBMyyYb783IYmGhibU3Vy03KO8iaRrHzFwMtxDNOM7ydvR4CjgttRWJSmjRpA/0', NULL, '0', NULL, 1, 0, 'oolfy0BLnbiX-pAya1FIABDEBF-4', 'wx', 0);
INSERT INTO `tp_user` VALUES (8, 'Catfeeds', 'Catfeeds', '', 1506348375, 0, 'https://wx.qlogo.cn/mmopen/vi_32/pnNTuaCyYuKstYIjfvqQw8oSB4kqEeiaiarogmd42jib2rCSZQK9qlaeicicD5TGhtBhiaDPXGndHPa1MN4zp4EXSKWQ/0', NULL, '0', NULL, 1, 0, 'oOG4L0RcfRAVyjXKP_cshN5Q3by0', 'wx', 0);
INSERT INTO `tp_user` VALUES (9, '%F0%9F%8D%8E%E6%9C%88%E6%9C%88', '%F0%9F%8D%8E%E6%9C%88%E6%9C%88', NULL, 1553747995, 0, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ6HVAP67T8icweicicoyK5j4hZX2EnEXse3jORianSH86S1wuvgmVjejfL9iaTyU2LA0icic36fwFHhbFAA/132', NULL, '0', NULL, 2, 0, 'oAUYK427kWpI-E89oE6lL2nBJgUQ', 'wx', 0);
INSERT INTO `tp_user` VALUES (10, '%E7%BA%BD%E7%BA%A6%E7%9A%84%E5%8F%B8%E6%9C%BA%E9%A9%BE%E7%9D%80%E5%8C%97%E4%BA%AC%E7%9A%84%E6%A2%A6', '%E7%BA%BD%E7%BA%A6%E7%9A%84%E5%8F%B8%E6%9C%BA%E9%A9%BE%E7%9D%80%E5%8C%97%E4%BA%AC%E7%9A%84%E6%A2%A6', NULL, 1553756393, 0, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTINa1YwVqjX2velXu9j7wchycRDS9uJH24e8eb6UEwWocXRWhlHeuu4yZ7hdl1vLTY7obFTNZovpw/132', NULL, '0', NULL, 2, 0, 'oAUYK4z9Bl1NqEoWFOUygo9jijGo', 'wx', 0);
INSERT INTO `tp_user` VALUES (11, 'Kyrie', 'Kyrie', NULL, 1553759983, 0, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJlowDQ3e31zoOUhTKibRUJMLicQN5Ws8MoQy73qn977MHMLicoHZOhicWNJXZKSIicMiciaiakiaHmocuuUng/132', NULL, '0', NULL, 1, 0, 'oAUYK48kg6SWJ2vz8IOcYkanOAE4', 'wx', 0);
INSERT INTO `tp_user` VALUES (12, '%E9%99%86%E6%96%B0', '%E9%99%86%E6%96%B0', NULL, 1553913502, 0, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqzHicDgqdIN04SC9wQpnwo3892h3N2EeI8IVZyS9u3HI0gzuiaSKTahSGsjmcmtrrj3bqPUhLkJNOw/132', NULL, '0', NULL, 1, 0, 'oAUYK46HZz6Kz4jdI1-IjFW_Lmco', 'wx', 0);
INSERT INTO `tp_user` VALUES (13, '%E9%99%88%E5%B9%BC%E9%A2%96', '%E9%99%88%E5%B9%BC%E9%A2%96', NULL, 1553943028, 0, 'https://wx.qlogo.cn/mmhead/gLvf8VjL5HenECYNrfbE5F4PLzpxDQoyEOCicwNhHG5M/132', NULL, '0', NULL, 0, 0, 'oAUYK4yrbxQNC-gX-7PxqNAGdz5U', 'wx', 0);
INSERT INTO `tp_user` VALUES (14, '%E5%91%A8%E6%96%B0%E7%A7%80', '%E5%91%A8%E6%96%B0%E7%A7%80', NULL, 1553943735, 0, 'https://wx.qlogo.cn/mmhead/icJLK8H7nxV2Q2zumr2Hl8pmDGenR806ibiapH2TzRnof4/132', NULL, '0', NULL, 0, 0, 'oAUYK49QjOk87ZxTY-HkudLVS0Zs', 'wx', 0);
INSERT INTO `tp_user` VALUES (15, '%E5%BC%A0%E7%9B%9B%E8%B4%9E', '%E5%BC%A0%E7%9B%9B%E8%B4%9E', NULL, 1554014774, 0, 'https://wx.qlogo.cn/mmhead/Yat8gMKUmCBMiczvzQuAoGHEwEBtibYHEQ97WJK4AYxZQ/132', NULL, '0', NULL, 0, 0, 'oAUYK405-E1RdIur7E65TGgjjXoU', 'wx', 0);
INSERT INTO `tp_user` VALUES (16, '%E9%BB%84%E9%83%81%E6%83%9F', '%E9%BB%84%E9%83%81%E6%83%9F', NULL, 1554121680, 0, 'https://wx.qlogo.cn/mmhead/m6tZI5ybGiar0ibMKWbq0UiaibBfeCG893rnDl2LRiaVyjzI/132', NULL, '0', NULL, 0, 0, 'oAUYK40Gy9ikMckENiXl6Dc0WN_g', 'wx', 0);
INSERT INTO `tp_user` VALUES (17, '%E5%93%81%E7%A9%BA', '%E5%93%81%E7%A9%BA', NULL, 1554124072, 0, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoBXOTib9pFLeRoCIsG1VjhgAsIFnicCOQPLOw47EzT12ZxmhEC79aEyvPKyp4JwhDhCjkeAzoC3zxw/132', NULL, '0', NULL, 1, 0, 'oAUYK41fOLQCDeFjhx0bp2FpwZ84', 'wx', 0);
INSERT INTO `tp_user` VALUES (18, 'young+lau.', 'young+lau.', NULL, 1554168991, 0, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eo5JHsqY8bB1ickIfOhKgcAdwhfkwzIBdicmPC243eJGa2QVRIhmTibbPOw1mFwq4mz4CgqFmBwZLNoQ/132', NULL, '0', NULL, 1, 0, 'oAUYK4zRDoJy0oBSqcRcBKIhAvJw', 'wx', 0);
INSERT INTO `tp_user` VALUES (19, '%C2%B9%E2%81%B9%E2%81%B9%E2%81%B6Y%E2%82%81%E2%82%80.%E2%82%83%E2%82%80', '%C2%B9%E2%81%B9%E2%81%B9%E2%81%B6Y%E2%82%81%E2%82%80.%E2%82%83%E2%82%80', NULL, 1554187079, 0, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIom2FuNABocet1jANrWvPAibQGjsic2A1yicxb18iaeErm5skhjDD8sMBsYHbvSjCcrXxxpZ5o5bnDCw/132', NULL, '0', NULL, 1, 0, 'oAUYK46b_pCm1EyiKXYGfG3LKv5M', 'wx', 0);
INSERT INTO `tp_user` VALUES (20, '%E5%88%98%E5%BF%85%E9%A1%BA', '%E5%88%98%E5%BF%85%E9%A1%BA', NULL, 1554190294, 0, 'https://wx.qlogo.cn/mmhead/g06zFiamyUg1niaAsUHibpQ57TjO2iaLeb7icDX0p3BTAjFA/132', NULL, '0', NULL, 0, 0, 'oAUYK40ROhqyTVhFyKt5Xy3Dlr14', 'wx', 0);
INSERT INTO `tp_user` VALUES (21, '%E5%A7%9A%E5%A5%95%E7%BF%94', '%E5%A7%9A%E5%A5%95%E7%BF%94', NULL, 1554191468, 0, 'https://wx.qlogo.cn/mmhead/EtvrU2NHUj28MONYaFQO2mv0X9Fr0aBZ3QDZTzvPurM/132', NULL, '0', NULL, 0, 0, 'oAUYK47bqFnS9fGyOzMZXlWPpgI4', 'wx', 0);
INSERT INTO `tp_user` VALUES (22, '%E5%BC%BA%E9%AA%8F%E5%AE%9C', '%E5%BC%BA%E9%AA%8F%E5%AE%9C', NULL, 1554199637, 0, 'https://wx.qlogo.cn/mmhead/hrOia9MVVnoUH89JiaQrGrMuH3X7KK9wdYfsyoPciaK8CY/132', NULL, '0', NULL, 0, 0, 'oAUYK45mWRydaotD4YH6hJEOBp0g', 'wx', 0);
INSERT INTO `tp_user` VALUES (23, '%E9%99%88%E5%AE%B6%E4%BC%9F', '%E9%99%88%E5%AE%B6%E4%BC%9F', NULL, 1554203068, 0, 'https://wx.qlogo.cn/mmhead/Lg6fhYf0Xic8QaOibXuHOt9QWWpOudPgNIiaz4xEIVW2t8/132', NULL, '0', NULL, 0, 0, 'oAUYK4xkynhDE2ZdjGOaUJ8wWkzI', 'wx', 0);
INSERT INTO `tp_user` VALUES (24, '%E6%9D%8E%E5%AE%97%E9%9C%9E', '%E6%9D%8E%E5%AE%97%E9%9C%9E', NULL, 1554207743, 0, 'https://wx.qlogo.cn/mmhead/R5NLiarpuCvmvanTCzsdkL2LC3rS3WWTLLaAzbOyRWEI/132', NULL, '0', NULL, 0, 0, 'oAUYK49ry9Pn_eC5jSd65HPuC-pY', 'wx', 0);
INSERT INTO `tp_user` VALUES (25, '%E7%8E%8B%E5%BA%86%E6%80%A1', '%E7%8E%8B%E5%BA%86%E6%80%A1', NULL, 1554255806, 0, 'https://wx.qlogo.cn/mmhead/eDBat2Xg9ssW1KMVzIesdbcbico3918sqOSocJjVc72c/132', NULL, '0', NULL, 0, 0, 'oAUYK42yT8ciNRNOKzJhlHo0sODs', 'wx', 0);
INSERT INTO `tp_user` VALUES (26, '%E9%99%88%E6%B0%B8%E6%B5%B7', '%E9%99%88%E6%B0%B8%E6%B5%B7', NULL, 1554259514, 0, 'https://wx.qlogo.cn/mmhead/mkicXlnp9JBX85EjISeLEEfqQZ2mAazibgksMK6L8vhS8/132', NULL, '0', NULL, 0, 0, 'oAUYK41hrEe-RelMNyALEJ9Gz9OU', 'wx', 0);
INSERT INTO `tp_user` VALUES (27, '%E6%AC%A7%E9%98%B3%E5%A3%AB%E7%90%B3', '%E6%AC%A7%E9%98%B3%E5%A3%AB%E7%90%B3', NULL, 1554259530, 0, 'https://wx.qlogo.cn/mmhead/vOjebicWVgzBzD9FIKXOP4VOETQaHVplnLnMnGtF5Aq8/132', NULL, '0', NULL, 0, 0, 'oAUYK4565w-_woOume6g3jF6171Q', 'wx', 0);
INSERT INTO `tp_user` VALUES (28, '%E8%AE%B8%E6%83%A0%E4%BF%8A', '%E8%AE%B8%E6%83%A0%E4%BF%8A', NULL, 1554303789, 0, 'https://wx.qlogo.cn/mmhead/7Z0CVz9Tfibmvtd03Cib5USiaPSxtY6rbxjtict7S8MhZHw/132', NULL, '0', NULL, 0, 0, 'oAUYK445uS-7t61iPqxW1vT3xjMQ', 'wx', 0);
INSERT INTO `tp_user` VALUES (29, '%E7%8E%8B%E9%9B%85%E7%AD%91', '%E7%8E%8B%E9%9B%85%E7%AD%91', NULL, 1554316562, 0, 'https://wx.qlogo.cn/mmhead/bIM0pMDP9kKT8Np5jlTKGufvqqicBD33LQ6Ch2FS3L7U/132', NULL, '0', NULL, 0, 0, 'oAUYK4-9jFaVa_E57hWY_Cr3rnxU', 'wx', 0);
INSERT INTO `tp_user` VALUES (30, '%E5%BC%A0%E4%BA%91%E9%A3%9E', '%E5%BC%A0%E4%BA%91%E9%A3%9E', NULL, 1554347718, 0, 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIIicNayXyQhNvDr2QoktQgZPbibhlhjUjYsPpcbK0XRoAXHz7s8StOdTcn9ongxpsibxwB6YIkP4niaA/132', NULL, '0', NULL, 1, 0, 'oAUYK45LYMML8tGHtAkYV3Jawa5s', 'wx', 0);
INSERT INTO `tp_user` VALUES (31, '%E8%B4%BE%E6%B6%9B+-+Justin+Jia', '%E8%B4%BE%E6%B6%9B+-+Justin+Jia', NULL, 1554347857, 0, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoYgoLBNE7K7jjHQH89nZOtHlYY0qs3vsPU9ibq5NFT567sWhuwj4v9GNuSYeSwQVdicmSQynVfMq1w/132', NULL, '0', NULL, 1, 0, 'oAUYK44G_iCOcnZhRU1YyFbzU9LQ', 'wx', 0);
INSERT INTO `tp_user` VALUES (32, '%E8%B0%A2%E5%B3%BB%E5%AE%B9', '%E8%B0%A2%E5%B3%BB%E5%AE%B9', NULL, 1554353127, 0, 'https://wx.qlogo.cn/mmhead/GSwFtl95CZ1ibB5fQAfY3MPLJLOl0DLjQvPmcReB2yEw/132', NULL, '0', NULL, 0, 0, 'oAUYK4zKAUd6b38DyAhUAbrg4jj8', 'wx', 0);
INSERT INTO `tp_user` VALUES (33, '%E6%AF%9B%E5%BF%97%E4%BC%9F', '%E6%AF%9B%E5%BF%97%E4%BC%9F', NULL, 1554378972, 0, 'https://wx.qlogo.cn/mmhead/OSQoG0ZomJnNfNs8GMSicdXhTOoTWvvItcFVaMFiamWibg/132', NULL, '0', NULL, 0, 0, 'oAUYK45wL9sWsQnWCCGHbaSuVVSw', 'wx', 0);
INSERT INTO `tp_user` VALUES (34, '%E9%98%99%E5%8D%8F%E5%85%B4', '%E9%98%99%E5%8D%8F%E5%85%B4', NULL, 1554385346, 0, 'https://wx.qlogo.cn/mmhead/yPZVjafrictzned8cvDQhNURSOUspnMGG3E1dMiaFQoyk/132', NULL, '0', NULL, 0, 0, 'oAUYK49JSN4drRsPlElPi-BFOl-o', 'wx', 0);
INSERT INTO `tp_user` VALUES (35, '%E6%9C%B1%E7%BE%8E%E5%90%9B', '%E6%9C%B1%E7%BE%8E%E5%90%9B', NULL, 1554578391, 0, 'https://wx.qlogo.cn/mmhead/RXcf295oF0QdfXLVIy9lM1DDlXM6U6BSV1cbJUvZqrg/132', NULL, '0', NULL, 0, 0, 'oAUYK42vfcCHIPd0lsZVFmW-nMs0', 'wx', 0);
INSERT INTO `tp_user` VALUES (36, '%E8%AE%B8%E5%AE%B6%E6%85%A7', '%E8%AE%B8%E5%AE%B6%E6%85%A7', NULL, 1554578411, 0, 'https://wx.qlogo.cn/mmhead/icnCfQN9IFpm24AYuILyvLBzX8q9ygubxFscytJpVuU0/132', NULL, '0', NULL, 0, 0, 'oAUYK4wcB-ZFiw1HnX2wwoaYodiI', 'wx', 0);
INSERT INTO `tp_user` VALUES (37, '%E7%8E%8B%E6%98%86%E9%9C%96', '%E7%8E%8B%E6%98%86%E9%9C%96', NULL, 1554579583, 0, 'https://wx.qlogo.cn/mmhead/HwkaLG2b2LpoygibaCcvqPSzl6mibv9BRXvCZlleUaWHg/132', NULL, '0', NULL, 0, 0, 'oAUYK4-kDd05zpj7BN0G3LserIH8', 'wx', 0);
INSERT INTO `tp_user` VALUES (38, '%E5%88%98%E5%AD%90%E6%85%A7', '%E5%88%98%E5%AD%90%E6%85%A7', NULL, 1554580813, 0, 'https://wx.qlogo.cn/mmhead/4Ubxb7tXiaiaOYC2XlU80c4aMBlniaSR8kAgXuu8fMK0ib4/132', NULL, '0', NULL, 0, 0, 'oAUYK416goo_LAFE19hNnmKQX4wU', 'wx', 0);
INSERT INTO `tp_user` VALUES (39, '%E5%88%98%E9%9B%85%E5%8E%9F', '%E5%88%98%E9%9B%85%E5%8E%9F', NULL, 1554581110, 0, 'https://wx.qlogo.cn/mmhead/MRM9D5Qariav8gT1vZRldC5DE7msc3lCWCE08m6wAn4o/132', NULL, '0', NULL, 0, 0, 'oAUYK4-GAXeyq0lyx_y4yZXo-bkc', 'wx', 0);
INSERT INTO `tp_user` VALUES (40, '%E6%BD%98%E9%95%BF%E8%8F%81', '%E6%BD%98%E9%95%BF%E8%8F%81', NULL, 1554586629, 0, 'https://wx.qlogo.cn/mmhead/y2LTzicPJyUzbaibczCKiaKxXNuC8ARUiaBCDJrEQbjuT2E/132', NULL, '0', NULL, 0, 0, 'oAUYK46eJKFUUndh9FVBf_OGmEX4', 'wx', 0);
INSERT INTO `tp_user` VALUES (41, '%E9%99%88%E5%86%A0%E5%BF%97', '%E9%99%88%E5%86%A0%E5%BF%97', NULL, 1554587382, 0, 'https://wx.qlogo.cn/mmhead/NbGnmgiabEU9vzFk9kl7nIPW2GGk9lLgdD3EzTBg0HWg/132', NULL, '0', NULL, 0, 0, 'oAUYK4yeCWKXpIW4YbMQxe1tJCxA', 'wx', 0);
INSERT INTO `tp_user` VALUES (42, '%E6%9D%8E%E6%B7%91%E7%BE%8E', '%E6%9D%8E%E6%B7%91%E7%BE%8E', NULL, 1554587410, 0, 'https://wx.qlogo.cn/mmhead/VBNr6hwXvHaFcaJhzjZNxDXps3tpZT0ULPymq5tsnNU/132', NULL, '0', NULL, 0, 0, 'oAUYK46Rcb8lIFaFZLvx_QmxrlWM', 'wx', 0);

-- ----------------------------
-- Table structure for tp_user_voucher
-- ----------------------------
DROP TABLE IF EXISTS `tp_user_voucher`;
CREATE TABLE `tp_user_voucher`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '会员优惠券领取记录',
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `vid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券id',
  `shop_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商铺ID',
  `full_money` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '满多少钱',
  `amount` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '减多少钱',
  `start_time` int(11) NULL DEFAULT 0 COMMENT '开始时间',
  `end_time` int(11) NULL DEFAULT 0 COMMENT '结束时间',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '领取时间',
  `status` tinyint(2) UNSIGNED NULL DEFAULT 1 COMMENT '使用状态 1未使用 2已使用 3已失效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tp_user_voucher
-- ----------------------------
INSERT INTO `tp_user_voucher` VALUES (4, 4, 1, 0, 100.00, 20.00, 1499702400, 1514735999, 1504508037, 1);
INSERT INTO `tp_user_voucher` VALUES (5, 4, 2, 0, 100.00, 10.00, 1503849600, 1598025599, 1504508038, 1);
INSERT INTO `tp_user_voucher` VALUES (6, 4, 3, 0, 100.00, 99.99, 1504454400, 1514390399, 1504508876, 1);
INSERT INTO `tp_user_voucher` VALUES (7, 1, 3, 0, 100.00, 99.00, 1504454400, 1514390399, 1505661395, 1);
INSERT INTO `tp_user_voucher` VALUES (8, 8, 3, 0, 100.00, 99.00, 1504454400, 1514390399, 1506348807, 1);
INSERT INTO `tp_user_voucher` VALUES (9, 8, 2, 0, 100.00, 10.00, 1503849600, 1598025599, 1507224841, 1);

-- ----------------------------
-- Table structure for tp_voucher
-- ----------------------------
DROP TABLE IF EXISTS `tp_voucher`;
CREATE TABLE `tp_voucher`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '店铺优惠券表',
  `shop_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠券名称',
  `full_money` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '满多少钱',
  `amount` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '减多少钱',
  `start_time` int(11) NOT NULL DEFAULT 0 COMMENT '开始时间',
  `end_time` int(11) NOT NULL DEFAULT 0 COMMENT '结束时间',
  `point` int(11) NULL DEFAULT 0 COMMENT '所需积分',
  `count` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '发行数量',
  `receive_num` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '领取数量',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '优惠券类型',
  `del` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态',
  `proid` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '产品ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_voucher
-- ----------------------------
INSERT INTO `tp_voucher` VALUES (1, 0, '新人首次购买优惠', 100.00, 20.00, 1499702400, 1514735999, 0, 99999, 5, 1499736291, 1, 1, 'all');
INSERT INTO `tp_voucher` VALUES (2, 0, '双11优惠券', 100.00, 10.00, 1503849600, 1598025599, 0, 1000, 2, 1503917290, 1, 0, '5,4,3,2');
INSERT INTO `tp_voucher` VALUES (3, 0, '手机节日价', 100.00, 99.00, 1504454400, 1514390399, 0, 1000, 3, 1504508109, 1, 0, 'all');
INSERT INTO `tp_voucher` VALUES (4, 0, '11111', 11.00, 1.00, 1553616000, 1553788799, 0, 12111, 0, 1553673638, 1, 0, '4,3,2');
INSERT INTO `tp_voucher` VALUES (5, 0, '满10减1', 10.00, 1.00, 1554307200, 1554479999, 0, 100, 0, 1554342402, 1, 0, 'all');

-- ----------------------------
-- Table structure for tp_web
-- ----------------------------
DROP TABLE IF EXISTS `tp_web`;
CREATE TABLE `tp_web`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '单网页信息表：关于我们、客服中心等',
  `pid` int(11) NULL DEFAULT 0,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称1',
  `ename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传文件路径',
  `linkurl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '展示图',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `concent` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容介绍',
  `addtime` int(11) NULL DEFAULT 0 COMMENT '发表时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_web
-- ----------------------------
INSERT INTO `tp_web` VALUES (1, 0, '关于我们', '', NULL, NULL, 0, '<p></p><p><span style=\"font-family:宋体;font-size:10.5000pt;\"><img src=\"/minigucixie/Data/UploadFiles/Uploads/day_170803/201708031142575992.jpg\" alt=\"\" /><br /></span></p><p><span style=\"font-family:宋体;font-size:10.5000pt;\">手机号码：</span></p><p><span style=\"font-family:宋体;font-size:10.5000pt;\">电话号码：</span></p><p><span style=\"font-family:宋体;font-size:10.5000pt;\"><span style=\"font-family:宋体;\">店铺地址：广州市荔湾区中山八路荔湖大厦南座2楼B2048档</span></span></p><br />', 1501731779);
INSERT INTO `tp_web` VALUES (3, 0, '首页视频管理', 'UploadFiles/vedio/20170802/vedio_5171501667394.mp4', '', 'UploadFiles/vedio/20170803/vedio_8401501724293.png', 0, NULL, 1501724299);

-- ----------------------------
-- Table structure for tp_wechat_template_message
-- ----------------------------
DROP TABLE IF EXISTS `tp_wechat_template_message`;
CREATE TABLE `tp_wechat_template_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `template_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '模板ID',
  `key_words` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关键词',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
