/*
 Navicat Premium Data Transfer

 Source Server         : chenyicai
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : glmc

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 29/08/2021 15:16:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'root', 'glmcbx');
INSERT INTO `admin` VALUES (2, 'wzh', 'wzh1234');

-- ----------------------------
-- Table structure for bxd
-- ----------------------------
DROP TABLE IF EXISTS `bxd`;
CREATE TABLE `bxd`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sbsj` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '申报时间',
  `eid` int(0) NULL DEFAULT NULL,
  `xxdd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地点',
  `yysj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约时间（不是具体时间，是字符串）公共区域不用',
  `dict_id` int(0) NULL DEFAULT NULL,
  `dictitem_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bxlb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报修类别',
  `bxnr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报修内容',
  `sp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频（视频地址）',
  `tp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片（图片地址）',
  `sbr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '申报人',
  `shy1state` int(0) NULL DEFAULT 0 COMMENT '0未审核，1审核通过，2审核未通过',
  `sbrxh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '申报人学号',
  `hc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '耗材使用',
  `gs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工时',
  `jid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接单人ybid',
  `shy1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sbrsj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '申报人手机号码',
  `shy2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shy2state` int(0) NULL DEFAULT 0 COMMENT '0未审核，1审核通过，2审核未通过',
  `wxsj` timestamp(0) NULL DEFAULT NULL COMMENT '维修时间(或者是撤销时间）',
  `cxsy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '撤销事由',
  `pj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价星际',
  `pjnr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价内容',
  `pjzj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价追加',
  `state` int(0) NOT NULL DEFAULT 1 COMMENT '1已派单，2已维修，3撤销单，4已验收，5不通过验收',
  `fgts` int(0) NULL DEFAULT 15 COMMENT '返工天数',
  `jdsj` timestamp(0) NULL DEFAULT NULL,
  `yssj` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 213 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报修单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bxd
-- ----------------------------
INSERT INTO `bxd` VALUES (2, '2021-08-14 18:18:49', 10, '123', '123', 2, '2', '2-2', '123', '', '', '王佐鸿', 0, '1700730135', NULL, NULL, '123123', '38714856', '18273878982', '4019283', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-08-14 18:18:49', NULL);
INSERT INTO `bxd` VALUES (3, '2021-08-14 18:18:49', 10, '123', '123', 2, '3', '2-3', '123', '', '', '王佐鸿', 0, '1700730135', NULL, NULL, '123123', '4019283', '18273878982', '38714856', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-08-14 18:18:49', NULL);
INSERT INTO `bxd` VALUES (4, '2021-08-14 18:18:49', 10, '123', '123', 2, '3', '2-3', '123', '', '', '王佐鸿', 0, '1700730135', NULL, NULL, '123123', '38714856', '18273878721', '4019283', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-08-14 18:18:49', NULL);
INSERT INTO `bxd` VALUES (5, '2021-08-14 18:18:49', 10, '123', '123', 6, '1', '6-1', '123', '', '', '王佐鸿', 0, '1700730135', '539-0.231|578-0.31', '1.3', '41790787', '4019283', '18273878982', '38714856', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-08-14 18:18:49', NULL);
INSERT INTO `bxd` VALUES (6, '2021-08-14 18:18:49', 10, '123', '123', 2, '2', '2-2', '123', '', '', '王佐鸿', 0, '1700730135', NULL, NULL, '41790787', '38714856', '18273878982', '4019283', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-08-14 18:18:49', NULL);
INSERT INTO `bxd` VALUES (7, '2021-08-14 18:18:49', 10, '123', '123', 6, '1', '6-1', '123', '', '', '王佐鸿', 0, '1700730135', NULL, NULL, '41790787', '4019283', '18278368572', '38714856', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-08-14 18:18:49', NULL);
INSERT INTO `bxd` VALUES (8, '2021-08-14 18:18:49', 10, '123', '123', 6, '1', '6-1', '123', '', '', '王佐鸿', 0, '1700730135', NULL, NULL, '123123', '38714856', '18273878982', '4019283', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-08-14 18:18:49', NULL);
INSERT INTO `bxd` VALUES (9, '2021-08-14 18:18:49', 10, '123', '123', 6, '1', '6-1', '123', '', '', '王佐鸿', 0, '1700730135', NULL, NULL, '123123', '4019283', '18278367572', '38714856', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-08-14 18:18:49', NULL);
INSERT INTO `bxd` VALUES (10, '2021-08-14 18:18:49', 10, '18278367572', '18278367572', 6, '1', '6-1', '18278367572', '', '', '王佐鸿', 0, '1700730135', '1-0.0000', '0', '41790787', '4019283', '18278367572', '38714856', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-08-14 18:18:49', NULL);
INSERT INTO `bxd` VALUES (11, '2021-08-14 18:18:49', 10, '18278367572', '18278367572', 6, '1', '6-1', '123', '', '', '王佐鸿', 0, '1700730135', '123-1.01', '0.1', '41790787', '38714856', '18278367572', '4019283', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-08-14 18:18:49', NULL);
INSERT INTO `bxd` VALUES (12, '2021-08-14 18:18:49', 10, '18278367572', '18278367572', 6, '1', '6-1', '123', '', '', '王佐鸿', 0, '1700730135', NULL, NULL, '123123', '38714856', '18278367572', '4019283', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-06-18 08:50:00', NULL);
INSERT INTO `bxd` VALUES (13, '2021-08-14 18:18:49', 10, '18278367572', '18278367572', 1, '1', '1-1', '18278367572', '', '', '王佐鸿', 0, '1700730135', NULL, NULL, '123123', '38714856', '18278367572', '4019283', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-06-18 08:50:01', NULL);
INSERT INTO `bxd` VALUES (146, '2021-06-16 12:33:34', 10, '18278478738', '234234', 2, '3', '2-3', '5142', '', '', '中核 张岩', 0, '212016505', NULL, NULL, '123123', '4019283', '18278368762', '38714856', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-06-18 08:47:11', NULL);
INSERT INTO `bxd` VALUES (147, '2021-06-16 12:33:52', 10, '18278342', '124214', 3, '3', '3-3', '124124', '', '', '中核 张岩', 0, '212016505', NULL, NULL, '123123', '38714856', '18278378762', '4019283', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-06-18 08:43:22', NULL);
INSERT INTO `bxd` VALUES (148, '2021-06-16 12:34:31', 10, '18278378982', '12412412', 2, '2', '2-2', '1827124', '', '', '中核 张岩', 0, '212016505', NULL, '', '123123', '4019283', '18278378982', '38714856', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-06-18 08:50:02', NULL);
INSERT INTO `bxd` VALUES (149, '2021-06-16 12:34:33', 10, '124124', '124124', 2, '2', '2-2', '124124', '', '', '中核 张岩', 0, '212016505', NULL, '', '123123', '4019283', '18278378782', '38714856', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-06-18 08:43:17', NULL);
INSERT INTO `bxd` VALUES (210, '2021-06-17 12:24:31', 10, '111', '2021-06-15 星期二 11', 1, '1', '1-1', 'fanggong', '', '', '王佐鸿', 0, '1700730135', '228-1|252-1|返工耗材:388-1|383-1', '0.2', '41790787', '38714856', '17798980098', '128374187', 0, '2021-06-17 12:23:32', NULL, NULL, NULL, NULL, 2, 9, '2021-06-17 12:24:31', NULL);
INSERT INTO `bxd` VALUES (211, '2021-06-17 11:27:42', 10, '2222222222222', '2021-06-17 星期四 2222222222222', 1, '1', '1-1', '222222222222222', '', '', '王佐鸿', 0, '1700730135', '294-1|320-1', '0.2', '123123', '38714856', '17787879987', '4019283', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-06-18 09:09:32', NULL);
INSERT INTO `bxd` VALUES (212, '2021-06-17 12:54:17', 10, '阿魏酸多', '2021-06-17 星期四 沙发先', 1, '1', '1-1', '斯蒂芬', '', '', '王佐鸿', 0, '1700730135', '', NULL, '41790787', '182928314', '17788989909', '128374187', 0, NULL, NULL, NULL, NULL, NULL, 1, 15, '2021-06-17 04:54:54', NULL);

-- ----------------------------
-- Table structure for bxqy
-- ----------------------------
DROP TABLE IF EXISTS `bxqy`;
CREATE TABLE `bxqy`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `qy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域名称',
  `qylb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域类别',
  `xq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '校区',
  `x` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后台管理x坐标',
  `y` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后台管理Y坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报修区域' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bxqy
-- ----------------------------
INSERT INTO `bxqy` VALUES (1, '操场', '学习区', '临桂校区', '479', '314');
INSERT INTO `bxqy` VALUES (2, '办公楼', '办公区', '临桂校区', '653', '446');
INSERT INTO `bxqy` VALUES (5, '体育馆', '生活区', '临桂校区', '828', '135');
INSERT INTO `bxqy` VALUES (11, '1-1宿舍', '生活区', '临桂校区', '641', '267');

-- ----------------------------
-- Table structure for cet
-- ----------------------------
DROP TABLE IF EXISTS `cet`;
CREATE TABLE `cet`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `examid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `allgrade` int(0) NULL DEFAULT 0,
  `lisen` int(0) NULL DEFAULT 0,
  `read` int(0) NULL DEFAULT 0,
  `write` int(0) NULL DEFAULT 0,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cet
-- ----------------------------

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict`  (
  `itemID` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `itemCode` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '唯一标识UUID',
  `DICT_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字典名称',
  `DICT_CODE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字典编码',
  `DICT_ISTREE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `DICT_DESCRIPTION` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `CREATER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `itemCreateAt` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `UPDATER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `itemUpdateAt` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`itemID`, `itemCode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES (1, '93d08e7c-8f61-4577-83f5-0645bc1fbf10', '物业维修', 'wywx', '0', '物业维修', 'admin', '2021-08-14 18:18:49', 'admin', '2021-08-14 18:18:49');
INSERT INTO `dict` VALUES (2, '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', '水电维修', 'sdwx', '0', '水电维修', 'admin', '2021-08-14 18:18:49', 'admin', '2021-08-14 18:18:49');
INSERT INTO `dict` VALUES (3, 'ad67fe23-a10b-43a4-ae9b-2bdb22e6f8df', '热水维修', 'rswx', '0', '热水维修', 'admin', '2021-08-14 18:18:49', 'admin', '2021-08-14 18:18:49');
INSERT INTO `dict` VALUES (4, '4629ce86-c0d8-461c-8a81-554ab3cbcd70', '家电维修', 'jdwx', '0', '家电维修', 'admin', '2021-08-14 18:18:49', 'admin', '2021-08-14 18:18:49');
INSERT INTO `dict` VALUES (5, 'c4ddb90-e032-406d-b8aa-4d62e0028887', '空调维修', 'ktwx', '0', '空调维修', 'admin', '2021-08-14 18:18:49', 'admin', '2021-08-14 18:18:49');
INSERT INTO `dict` VALUES (6, 'c7aa1dad-e0e6-48f4-9cc9-5aa3f753f304', '其他', 'qt', '0', '其他', 'admin', '2021-08-14 18:18:49', 'admin', '2021-08-14 18:18:49');

-- ----------------------------
-- Table structure for dictitem
-- ----------------------------
DROP TABLE IF EXISTS `dictitem`;
CREATE TABLE `dictitem`  (
  `itemID` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `itemCode` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '唯一标识UUID',
  `DICT_CODE` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '关联dict表中的itemCode字段',
  `DITEM_CODE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字典项编码',
  `DITEM_VALUE` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字典项的值',
  `DITEM_PCODE` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '父级CODE，关联本表的itemCode',
  `CREATER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `itemCreateAt` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `UPDATER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `itemUpdateAt` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`itemID`, `itemCode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictitem
-- ----------------------------
INSERT INTO `dictitem` VALUES (1, '93defb3c-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', '1', '家具', '', 'admin', '2020-12-11 23:36:03', 'admin', '2020-12-11 23:40:41');
INSERT INTO `dictitem` VALUES (2, '940b9788-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', '2', '腻子', '', 'admin', '2020-12-11 23:36:03', 'admin', '2020-12-11 23:40:41');
INSERT INTO `dictitem` VALUES (3, '947ab849-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', '3', '墙砖', '', 'admin', '2020-12-11 23:36:04', 'admin', '2020-12-11 23:40:41');
INSERT INTO `dictitem` VALUES (4, '94d4f7f0-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', '4', '地砖', '', 'admin', '2020-12-11 23:36:05', 'admin', '2020-12-11 23:40:41');
INSERT INTO `dictitem` VALUES (5, '94fb2cc2-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', '5', '木地板', '', 'admin', '2020-12-11 23:36:05', 'admin', '2020-12-11 23:40:41');
INSERT INTO `dictitem` VALUES (6, '95529cc6-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', '6', '地板胶', '', 'admin', '2020-12-11 23:36:05', 'admin', '2020-12-11 23:40:42');
INSERT INTO `dictitem` VALUES (7, '95965237-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', '7', '锁', '', 'admin', '2020-12-11 23:36:06', 'admin', '2020-12-11 23:40:42');
INSERT INTO `dictitem` VALUES (8, '95d5d3ab-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', '8', '门', '', 'admin', '2020-12-11 23:36:06', 'admin', '2020-12-11 23:40:42');
INSERT INTO `dictitem` VALUES (9, '9615a7dd-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', '9', '窗', '', 'admin', '2020-12-11 23:36:07', 'admin', '2020-12-11 23:40:42');
INSERT INTO `dictitem` VALUES (10, '9652a92f-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a10', '洗手池', '', 'admin', '2020-12-11 23:36:07', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (11, '96b1cb6f-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a11', '蹲便器', '', 'admin', '2020-12-11 23:36:08', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (12, '96d71679-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a12', '小便器', '', 'admin', '2020-12-11 23:36:08', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (13, '974b4bdd-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a13', '马桶', '', 'admin', '2020-12-11 23:36:09', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (14, '9784be4c-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a14', '栏杆', '', 'admin', '2020-12-11 23:36:09', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (15, '97c40347-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a15', '窗帘', '', 'admin', '2020-12-11 23:36:10', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (16, '9838610b-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a16', '漏水渗水', '', 'admin', '2020-12-11 23:36:10', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (17, '98733b2b-3bc6-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a17', '管道堵塞', '', 'admin', '2020-12-11 23:36:11', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (18, '0f79a02d-3bc7-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a18', '下水管', '', 'admin', '2020-12-11 23:39:30', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (19, '106d8a32-3bc7-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a19', '吊顶', '', 'admin', '2020-12-11 23:39:32', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (20, '10c6b579-3bc7-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a20', '玻璃碎裂', '', 'admin', '2020-12-11 23:39:33', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (21, '113858eb-3bc7-11eb-8db1-00163e108e2b', '93d08e7c-8f61-4577-83f5-0645bc1fbf10', 'a21', '其他', '', 'admin', '2020-12-11 23:39:33', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (22, '3d0e4f92-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', '1', '水龙头', '', 'admin', '2020-12-11 23:40:47', 'admin', '2020-12-11 23:48:08');
INSERT INTO `dictitem` VALUES (23, '3d52fa6e-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', '2', '阀门', '', 'admin', '2020-12-11 23:40:47', 'admin', '2020-12-11 23:48:09');
INSERT INTO `dictitem` VALUES (24, '3d711389-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', '3', '冲水阀', '', 'admin', '2020-12-11 23:40:48', 'admin', '2020-12-11 23:48:10');
INSERT INTO `dictitem` VALUES (25, '3da3de5a-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', '4', '管道', '', 'admin', '2020-12-11 23:40:48', 'admin', '2020-12-11 23:48:11');
INSERT INTO `dictitem` VALUES (26, '3dd5b0dc-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', '5', '照明灯', '', 'admin', '2020-12-11 23:40:48', 'admin', '2020-12-11 23:48:12');
INSERT INTO `dictitem` VALUES (27, '3e2e94bd-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', '6', '开关', '', 'admin', '2020-12-11 23:40:49', 'admin', '2020-12-11 23:48:16');
INSERT INTO `dictitem` VALUES (28, '3eb1c3cf-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', '7', '空气开关', '', 'admin', '2020-12-11 23:40:50', 'admin', '2020-12-11 23:48:17');
INSERT INTO `dictitem` VALUES (29, '3ed8319e-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', '8', '漏电保护开关', '', 'admin', '2020-12-11 23:40:50', 'admin', '2020-12-11 23:48:19');
INSERT INTO `dictitem` VALUES (30, '3f100cdd-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', '9', '线路', '', 'admin', '2020-12-11 23:40:50', 'admin', '2020-12-11 23:48:20');
INSERT INTO `dictitem` VALUES (31, '3f47fead-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', 'a10', '插座', '', 'admin', '2020-12-11 23:40:51', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (32, '3f80141a-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', 'a11', '风扇', '', 'admin', '2020-12-11 23:40:51', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (33, '3ff7c340-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', 'a12', '断电', '', 'admin', '2020-12-11 23:40:52', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (34, '403149db-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', 'a13', '排气扇', '', 'admin', '2020-12-11 23:40:52', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (35, '404da077-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', 'a14', '排风机', '', 'admin', '2020-12-11 23:40:52', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (36, '406c8138-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', 'a15', '紫外灯', '', 'admin', '2020-12-11 23:40:53', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (37, '409688bc-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', 'a16', '加装插座', '', 'admin', '2020-12-11 23:40:53', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (38, '40b7f86f-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', 'a17', '路灯', '', 'admin', '2020-12-11 23:40:53', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (39, '41b481a0-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', 'a18', '配电柜', '', 'admin', '2020-12-11 23:40:55', 'admin', '2021-05-02 06:33:55');
INSERT INTO `dictitem` VALUES (40, '4210ed1f-3bc7-11eb-8db1-00163e108e2b', '86ddcecb-11b4-4ada-899b-a5df9cacd8d1', 'a19', '其他', '', 'admin', '2020-12-11 23:40:55', 'admin', '2021-05-02 06:33:56');
INSERT INTO `dictitem` VALUES (41, '4282fbd1-3bc7-11eb-8db1-00163e108e2b', 'ad67fe23-a10b-43a4-ae9b-2bdb22e6f8df', '1', '无热水', '', 'admin', '2020-12-11 23:40:56', 'admin', '2020-12-11 23:48:36');
INSERT INTO `dictitem` VALUES (42, '433d9c24-3bc7-11eb-8db1-00163e108e2b', 'ad67fe23-a10b-43a4-ae9b-2bdb22e6f8df', '2', '热水水流小', '', 'admin', '2020-12-11 23:40:57', 'admin', '2020-12-11 23:48:38');
INSERT INTO `dictitem` VALUES (43, '4372b4d2-3bc7-11eb-8db1-00163e108e2b', 'ad67fe23-a10b-43a4-ae9b-2bdb22e6f8df', '3', '热水温度低', '', 'admin', '2020-12-11 23:40:58', 'admin', '2020-12-11 23:48:39');
INSERT INTO `dictitem` VALUES (44, '4420e4e4-3bc7-11eb-8db1-00163e108e2b', 'ad67fe23-a10b-43a4-ae9b-2bdb22e6f8df', '4', '花洒软管漏水', '', 'admin', '2020-12-11 23:40:59', 'admin', '2020-12-11 23:48:41');
INSERT INTO `dictitem` VALUES (45, 'ac420e60-3bc7-11eb-8db1-00163e108e2b', 'ad67fe23-a10b-43a4-ae9b-2bdb22e6f8df', '5', '热水阀', '', 'admin', '2020-12-11 23:43:53', 'admin', '2020-12-11 23:48:42');
INSERT INTO `dictitem` VALUES (46, 'ac6ed38d-3bc7-11eb-8db1-00163e108e2b', 'ad67fe23-a10b-43a4-ae9b-2bdb22e6f8df', '6', '热水表', '', 'admin', '2020-12-11 23:43:54', 'admin', '2020-12-11 23:48:44');
INSERT INTO `dictitem` VALUES (47, 'ac9e69d8-3bc7-11eb-8db1-00163e108e2b', 'ad67fe23-a10b-43a4-ae9b-2bdb22e6f8df', '7', '其他', '', 'admin', '2020-12-11 23:43:54', 'admin', '2020-12-11 23:48:45');
INSERT INTO `dictitem` VALUES (48, 'ad39e8f9-3bc7-11eb-8db1-00163e108e2b', '4629ce86-c0d8-461c-8a81-554ab3cbcd70', '1', '冰箱', '', 'admin', '2020-12-11 23:43:55', 'admin', '2020-12-11 23:48:47');
INSERT INTO `dictitem` VALUES (49, 'ad60289c-3bc7-11eb-8db1-00163e108e2b', '4629ce86-c0d8-461c-8a81-554ab3cbcd70', '2', '洗衣机', '', 'admin', '2020-12-11 23:43:55', 'admin', '2020-12-11 23:48:48');
INSERT INTO `dictitem` VALUES (50, 'ad955f18-3bc7-11eb-8db1-00163e108e2b', '4629ce86-c0d8-461c-8a81-554ab3cbcd70', '3', '油烟机', '', 'admin', '2020-12-11 23:43:56', 'admin', '2020-12-11 23:48:50');
INSERT INTO `dictitem` VALUES (51, 'ade16475-3bc7-11eb-8db1-00163e108e2b', '4629ce86-c0d8-461c-8a81-554ab3cbcd70', '4', '电磁炉', '', 'admin', '2020-12-11 23:43:56', 'admin', '2020-12-11 23:48:51');
INSERT INTO `dictitem` VALUES (52, 'ae1b615a-3bc7-11eb-8db1-00163e108e2b', '4629ce86-c0d8-461c-8a81-554ab3cbcd70', '5', '烘干机', '', 'admin', '2020-12-11 23:43:57', 'admin', '2020-12-11 23:48:53');
INSERT INTO `dictitem` VALUES (53, 'ae72eea6-3bc7-11eb-8db1-00163e108e2b', '4629ce86-c0d8-461c-8a81-554ab3cbcd70', '6', '其他', '', 'admin', '2020-12-11 23:43:57', 'admin', '2020-12-11 23:48:55');
INSERT INTO `dictitem` VALUES (54, 'aed6ba83-3bc7-11eb-8db1-00163e108e2b', 'c4ddb90-e032-406d-b8aa-4d62e0028887', '1', '宿舍格力空调', '', 'admin', '2020-12-11 23:43:58', 'admin', '2020-12-11 23:48:56');
INSERT INTO `dictitem` VALUES (55, 'af0ee1e8-3bc7-11eb-8db1-00163e108e2b', 'c4ddb90-e032-406d-b8aa-4d62e0028887', '2', '宿舍美的空调', '', 'admin', '2020-12-11 23:43:58', 'admin', '2020-12-11 23:48:58');
INSERT INTO `dictitem` VALUES (56, 'af4caa10-3bc7-11eb-8db1-00163e108e2b', 'c4ddb90-e032-406d-b8aa-4d62e0028887', '3', '办公空调', '', 'admin', '2020-12-11 23:43:59', 'admin', '2020-12-11 23:49:00');
INSERT INTO `dictitem` VALUES (57, 'af8259e7-3bc7-11eb-8db1-00163e108e2b', 'c4ddb90-e032-406d-b8aa-4d62e0028887', '4', '中央空调', '', 'admin', '2020-12-11 23:43:59', 'admin', '2020-12-11 23:49:02');
INSERT INTO `dictitem` VALUES (58, 'afbbfe6e-3bc7-11eb-8db1-00163e108e2b', 'c4ddb90-e032-406d-b8aa-4d62e0028887', '5', '其他', '', 'admin', '2020-12-11 23:43:59', 'admin', '2020-12-11 23:49:04');
INSERT INTO `dictitem` VALUES (59, 'b032385b-3bc7-11eb-8db1-00163e108e2b', 'c7aa1dad-e0e6-48f4-9cc9-5aa3f753f304', '1', '其他', '', 'admin', '2020-12-11 23:44:00', 'admin', '2020-12-11 23:49:06');

-- ----------------------------
-- Table structure for ewm
-- ----------------------------
DROP TABLE IF EXISTS `ewm`;
CREATE TABLE `ewm`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `qid` int(0) NOT NULL COMMENT '区域id',
  `xxdd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二维码详细地点（不等于报修的详细地点）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '二维码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ewm
-- ----------------------------
INSERT INTO `ewm` VALUES (1, 1, '1栋大门');
INSERT INTO `ewm` VALUES (2, 3, '测试');
INSERT INTO `ewm` VALUES (3, 3, 'qqq');
INSERT INTO `ewm` VALUES (4, 2, '大门');
INSERT INTO `ewm` VALUES (5, 1, '路灯');
INSERT INTO `ewm` VALUES (10, 11, '502宿舍');

-- ----------------------------
-- Table structure for hc
-- ----------------------------
DROP TABLE IF EXISTS `hc`;
CREATE TABLE `hc`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `mc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '材料名称',
  `jg` double NOT NULL COMMENT '价格',
  `dw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `kc` int(0) NOT NULL DEFAULT 0 COMMENT '库存',
  `lb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '耗材类别',
  `xh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '耗材型号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 766 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '耗材' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hc
-- ----------------------------
INSERT INTO `hc` VALUES (1, '无需耗材', 0, '', 0, '0', '0');
INSERT INTO `hc` VALUES (226, '户配电箱,12位成套配电箱安装,悬挂嵌入式,含空气开关安装费,不含空气开关材料费,空气开关另计材料价。', 372.0634, '台', 0, '1', '1');
INSERT INTO `hc` VALUES (227, '空调小型空开盒,悬挂嵌入式,含空气开关安装费,不含空气开关材料费,空气开关另计材料价。', 33.7818, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (228, '控制开关,1P32A小型断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 34.7456, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (229, '控制开关,2P32A小型断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 52.6552, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (230, '控制开关,3P32A小型断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 63.3668, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (231, '控制开关,4P32A小型断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 73.7124, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (232, '控制开关,1P63A小型断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 61.7808, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (233, '控制开关,2P63A小型断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 72.407, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (234, '控制开关,3P63A小型断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 83.1186, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (235, '控制开关,4P63A小型断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 93.4642, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (236, '控制开关,CDM1 100A/3300空气开关,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 168.8846, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (237, '控制开关,CDM1 200A/3300空气开关,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 348.0172, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (238, '控制开关,CDM1 250A/4300空气开关,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 409.005, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (239, '控制开关,1P+N32A漏电断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 74.2126, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (240, '控制开关,2P32A漏电断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 82.716, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (241, '控制开关,3P32A漏电断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 120.719, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (242, '控制开关,4P32A漏电断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 154.94, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (243, '控制开关,1P+N63A漏电断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 91.988, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (244, '控制开关,2P63A漏电断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 104.798, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (245, '控制开关,3P63A漏电断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 140.2024, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (246, '控制开关,4P63A漏电断路器,适用于原有配电箱新增,新装全套配电箱不得逐个套用。', 187.087, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (247, '插座,网络插口单口', 62.7446, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (248, '插座,网络插口双口', 64.7088, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (249, '凿槽、刨沟及恢复  砖结构 管径20mm以内', 11.8462, 'm', 0, '1', '1');
INSERT INTO `hc` VALUES (250, '凿槽、刨沟及恢复  砖结构 管径32mm以内', 15.4574, 'm', 0, '1', '1');
INSERT INTO `hc` VALUES (251, '凿槽、刨沟及恢复  砖结构 管径50mm以内', 19.215, 'm', 0, '1', '1');
INSERT INTO `hc` VALUES (252, '凿槽、刨沟及恢复  混凝土结构 管径20mm以内', 19.9958, 'm', 0, '1', '1');
INSERT INTO `hc` VALUES (253, '凿槽、刨沟及恢复  混凝土结构 管径32mm以内', 26.1568, 'm', 0, '1', '1');
INSERT INTO `hc` VALUES (254, '凿槽、刨沟及恢复  混凝土结构 管径50mm以内', 36.8196, 'm', 0, '1', '1');
INSERT INTO `hc` VALUES (255, '打孔、打洞  砌筑结构打洞（孔）公称直径（25mm以内）', 15.0426, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (256, '打孔、打洞  砌筑结构打洞（孔）公称直径（50mm以内）', 17.7266, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (257, '打孔、打洞  砌筑结构打洞（孔）公称直径（100mm以内）', 27.0962, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (258, '打孔、打洞  砌筑结构打洞（孔）公称直径（150mm以内）', 33.0986, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (259, '打孔、打洞  混凝土楼板钻孔机钻孔 钻孔直径（63mm以内）', 53.8508, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (260, '打孔、打洞  混凝土楼板钻孔机钻孔 钻孔直径（83mm以内）', 72.6632, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (261, '打孔、打洞  混凝土楼板钻孔机钻孔 钻孔直径（108mm以内）', 95.2332, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (262, '打孔、打洞  混凝土楼板钻孔机钻孔 钻孔直径（132mm以内）', 108.0554, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (263, '打孔、打洞  混凝土楼板钻孔机钻孔 钻孔直径（200mm以内）', 128.6734, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (264, '打孔、打洞  混凝土墙钻孔机钻孔 钻孔直径（63mm以内）', 149.8404, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (265, '打孔、打洞  混凝土墙钻孔机钻孔 钻孔直径（83mm以内）', 197.2618, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (266, '打孔、打洞  混凝土墙钻孔机钻孔 钻孔直径（132mm以内）', 257.2126, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (267, '打孔、打洞  混凝土墙钻孔机钻孔 钻孔直径（132mm以内）', 285.6508, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (268, '打孔、打洞  混凝土墙钻孔机钻孔 钻孔直径（200mm以内）', 340.5874, '个', 0, '1', '1');
INSERT INTO `hc` VALUES (269, 'LED吸顶灯 12W,含接线盒、驱动器及光源', 82.9234, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (270, 'LED吸顶灯 18W,含接线盒、驱动器及光源', 92.7444, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (271, 'LED吸顶灯 24W,含接线盒、驱动器及光源', 98.1856, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (272, '座灯头15W,含接线盒、驱动器及光源', 27.3524, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (273, '吸顶式LED筒灯5W,含接线盒、驱动器及光源', 38.7716, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (274, '吸顶式LED筒灯9W,含接线盒、驱动器及光源', 50.7642, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (275, '吸顶式LED筒灯12W,含接线盒、驱动器及光源', 59.4872, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (276, '吸顶式LED筒灯16W,含接线盒、驱动器及光源', 75.8474, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (277, '嵌入式LED筒灯5W,含接线盒、驱动器及光源', 49.2026, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (278, '嵌入式LED筒灯9W,含接线盒、驱动器及光源', 61.1952, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (279, '嵌入式LED筒灯12W,含接线盒、驱动器及光源', 69.9182, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (280, '嵌入式LED筒灯16W,含接线盒、驱动器及光源', 86.2784, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (281, '吸顶式LED射灯5W,含接线盒、驱动器及光源,品牌相当于或由于欧普', 58.2062, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (282, '轨道式LED射灯5W,含接线盒、驱动器及光源,品牌相当于或由于欧普', 56.3884, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (283, '轨道式LED射灯7W,含接线盒、驱动器及光源,品牌相当于或由于欧普', 60.085, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (284, '射灯轨道,含接线盒、驱动器及光源,品牌相当于或由于欧普,1套为1米价格,如单套长度大于1米,每米按15.9元增加,不得增加套数。', 41.1262, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (285, 'T5 LED日光灯管1*14,安装方式：吸顶安装', 61.5856, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (286, 'T5 LED日光灯管1*28,安装方式：吸顶安装', 65.941, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (287, 'T8 LED日光灯管1*16,安装方式：吸顶安装', 60.4998, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (288, 'T8 LED日光灯管1*30,安装方式：吸顶安装', 64.8552, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (289, 'T8 LED日光灯管2*16,安装方式：吸顶安装', 104.3954, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (290, 'T8 LED日光灯管2*30,安装方式：吸顶安装', 126.209, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (291, 'LED平板灯300*300  16W,安装方式：安装在轻钢龙骨上', 94.2328, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (292, 'LED平板灯300*600  24W,安装方式：安装在轻钢龙骨上', 168.1648, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (293, 'LED平板灯600*600 48W,安装方式：安装在轻钢龙骨上', 208.3272, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (294, 'LED平板灯600*600 60W,安装方式：安装在轻钢龙骨上', 235.5942, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (295, '双头应急灯', 162.5894, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (296, '应急疏散指示标志灯', 105.6764, '套', 0, '1', '1');
INSERT INTO `hc` VALUES (297, '排气扇', 128.1488, '台', 0, '1', '1');
INSERT INTO `hc` VALUES (298, '吊风扇,钻石牌 三叶1400mm', 132.37, '台', 0, '1', '1');
INSERT INTO `hc` VALUES (299, '宿舍楼顶风扇,钻石牌 五叶 16寸55W', 181.17, '台', 0, '1', '1');
INSERT INTO `hc` VALUES (300, '壁扇,钻石牌 五叶 16寸55W', 194.956, '台', 0, '1', '1');
INSERT INTO `hc` VALUES (302, '风扇调速开关,安装方式:明装', 27.4134, '套', 0, '1', '2');
INSERT INTO `hc` VALUES (303, '照明开关一位单控,安装方式:明装', 25.437, '套', 0, '1', '2');
INSERT INTO `hc` VALUES (304, '照明开关二位单控,安装方式:明装', 29.5484, '套', 0, '1', '2');
INSERT INTO `hc` VALUES (305, '照明开关三位单控,安装方式:明装', 36.478, '套', 0, '1', '2');
INSERT INTO `hc` VALUES (306, '照明开关四位单控,安装方式:明装', 43.6882, '套', 0, '1', '2');
INSERT INTO `hc` VALUES (307, '线槽20*10', 10.1138, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (308, '线槽14*24', 11.529, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (309, '线槽15*30', 12.7368, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (310, '线槽39*19', 13.2004, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (311, '线槽59*22', 18.2756, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (312, '线槽100*27', 31.476, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (313, '配线 BV-2.5mm2,敷设方式:线槽配线 照明线路', 3.843, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (314, '配线 BV-4mm2,敷设方式:线槽配线 照明线路', 5.6364, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (315, '配线 BV-2.5mm2,敷设方式:线槽配线 动力线路', 3.6844, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (316, '配线 BV-4mm2,敷设方式:线槽配线 动力线路', 5.2094, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (317, '配线 BV-6mm2,敷设方式:线槽配线 动力线路', 7.259, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (318, '配线 BV-10mm2,敷设方式:线槽配线 动力线路', 12.2976, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (319, '网线,敷设方式:线槽配线', 5.5266, 'm', 0, '1', '2');
INSERT INTO `hc` VALUES (320, '5孔插座,安装方式:明装', 32.025, '套', 0, '1', '2');
INSERT INTO `hc` VALUES (321, '7孔插座,安装方式:明装', 38.3934, '套', 0, '1', '2');
INSERT INTO `hc` VALUES (322, '5孔带开关,安装方式:明装', 42.6024, '套', 0, '1', '2');
INSERT INTO `hc` VALUES (323, '3孔空调插座16A,安装方式:明装', 42.0168, '套', 0, '1', '2');
INSERT INTO `hc` VALUES (325, '照明开关一位单控,安装方式:暗装', 27.938, '套', 0, '1', '3');
INSERT INTO `hc` VALUES (326, '照明开关二位单控,安装方式:暗装', 31.7078, '套', 0, '1', '3');
INSERT INTO `hc` VALUES (327, '照明开关三位单控,安装方式:暗装', 38.247, '套', 0, '1', '3');
INSERT INTO `hc` VALUES (328, '照明开关四位单控,安装方式:暗装', 45.445, '套', 0, '1', '3');
INSERT INTO `hc` VALUES (329, '网线,敷设方式:管内穿放', 5.3924, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (330, '5孔插座,安装方式:明装', 30.8416, '套', 0, '1', '3');
INSERT INTO `hc` VALUES (331, '7孔插座,安装方式:暗装', 44.8716, '套', 0, '1', '3');
INSERT INTO `hc` VALUES (332, '5孔带开关,安装方式:暗装', 43.8712, '套', 0, '1', '3');
INSERT INTO `hc` VALUES (333, '3孔空调插座16A,安装方式:暗装', 45.994, '套', 0, '1', '3');
INSERT INTO `hc` VALUES (334, '配线 BV-1.5mm2,敷设方式:管内穿线 照明线路', 2.6352, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (335, '配线 BV-2.5mm2,敷设方式:管内穿线 照明线路', 3.6478, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (336, '配线 BV-4mm2,敷设方式:管内穿线 照明线路', 5.0996, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (337, '配线 BV-1.5mm2,敷设方式:管内穿线 动力线路', 2.5864, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (338, '配线 BV-2.5mm2,敷设方式:管内穿线 动力线路', 3.5502, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (339, '配线 BV-4mm2,敷设方式:管内穿线 动力线路', 5.0752, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (340, '配线 BV-6mm2,敷设方式:管内穿线 动力线路', 7.1004, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (341, '配线 BV-10mm2,敷设方式:管内穿线 动力线路', 12.3586, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (342, 'PVC线管暗配 16以内', 9.5282, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (343, 'PVC线管暗配 20以内', 10.7848, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (344, 'PVC线管暗配 25以内', 12.383, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (345, 'PVC线管暗配 32以内', 15.0914, 'm', 0, '1', '3');
INSERT INTO `hc` VALUES (347, 'PP－R给水管1.25MPA 外径20以内', 25.376, 'm', 0, '1', '4');
INSERT INTO `hc` VALUES (348, 'PP－R给水管1.25MPA 外径25以内', 26.8034, 'm', 0, '1', '4');
INSERT INTO `hc` VALUES (349, 'PP－R给水管1.25MPA 外径32以内', 32.8546, 'm', 0, '1', '4');
INSERT INTO `hc` VALUES (350, 'PP－R给水管1.25MPA 外径40以内', 39.5524, 'm', 0, '1', '4');
INSERT INTO `hc` VALUES (351, 'PP－R给水管1.25MPA 外径50以内', 61.061, 'm', 0, '1', '4');
INSERT INTO `hc` VALUES (352, 'PVC承插塑料排水管 外径50以内', 34.465, 'm', 0, '1', '4');
INSERT INTO `hc` VALUES (353, 'PVC承插塑料排水管 外径75以内', 51.0692, 'm', 0, '1', '4');
INSERT INTO `hc` VALUES (354, 'PVC承插塑料排水管 外径110以内', 74.4322, 'm', 0, '1', '4');
INSERT INTO `hc` VALUES (355, 'PVC承插塑料排水管 外径160以内', 121.6096, 'm', 0, '1', '4');
INSERT INTO `hc` VALUES (356, 'PVC承插塑料排水管 外径200以内', 165.3588, 'm', 0, '1', '4');
INSERT INTO `hc` VALUES (357, '水表直径15以内', 117.9984, '组', 0, '1', '4');
INSERT INTO `hc` VALUES (358, '水表直径20以内', 145.9974, '组', 0, '1', '4');
INSERT INTO `hc` VALUES (359, '水表直径50以内', 612.684, '组', 0, '1', '4');
INSERT INTO `hc` VALUES (360, '水表直径100以内', 1023.6654, '组', 0, '1', '4');
INSERT INTO `hc` VALUES (361, '螺纹阀门直径15以内', 26.3032, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (362, '螺纹阀门直径20以内', 30.1706, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (363, '螺纹阀门直径25以内', 39.1986, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (364, '螺纹阀门直径32以内', 52.5088, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (365, '螺纹阀门直径40以内', 78.995, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (366, '螺纹阀门直径50以内', 99.9668, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (367, '螺纹阀门直径65以内', 151.768, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (368, '螺纹阀门直径80以内', 229.6406, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (369, '螺纹阀门直径100以内', 368.0618, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (370, '立式洗脸盆带高颈弯头水嘴', 303.9142, '套', 0, '1', '4');
INSERT INTO `hc` VALUES (371, '蹲式大便器带水箱及配件', 419.0456, '套', 0, '1', '4');
INSERT INTO `hc` VALUES (372, '挂式小便器带冲水阀及配件', 300.6934, '套', 0, '1', '4');
INSERT INTO `hc` VALUES (373, '立式小便器带冲水阀及配件', 366.1464, '套', 0, '1', '4');
INSERT INTO `hc` VALUES (374, '精铜主体冷热成套淋浴器', 337.2568, '套', 0, '1', '4');
INSERT INTO `hc` VALUES (375, '塑料水龙头', 9.638, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (376, '普通水龙头铜镀铬', 16.5188, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (377, '水龙头鸭嘴式', 87.9864, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (378, '水龙头高颈弯头式', 124.9524, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (379, '排水栓安装 排水栓 带存水弯 32,切管、上零件、安装、与下水管连接、试水。', 30.7074, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (380, '不锈钢地漏Φ50', 76.0548, '个', 0, '1', '4');
INSERT INTO `hc` VALUES (381, '消火栓 SN65,箱体材质为304不锈钢 1250*730*120,带压力表', 1322.2116, '套', 0, '1', '4');
INSERT INTO `hc` VALUES (383, '低压配电柜拆除', 323.9986, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (384, '成套配电箱拆除  悬挂嵌入式(半周长m)0.5,工作内容：凿墙洞,拆除', 68.876, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (385, '成套配电箱拆除  悬挂嵌入式(半周长m)1.0,工作内容：凿墙洞,拆除', 100.098, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (386, '成套配电箱拆除  悬挂嵌入式(半周长m)1.5,工作内容：凿墙洞,拆除', 151.3664, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (387, '成套配电箱拆除  悬挂嵌入式(半周长m)2.5,工作内容：凿墙洞,拆除', 182.5884, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (388, '成套配电箱拆除  悬挂明装式(半周长m)0.5', 44.6622, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (389, '成套配电箱拆除  悬挂明装式(半周长m)1.0', 65.4724, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (390, '成套配电箱拆除  悬挂明装式(半周长m)1.5', 100.1114, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (391, '金属桥架拆除 槽式、托盘式桥架(宽+高mm以下)150', 14.3648, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (392, '金属桥架拆除 槽式、托盘式桥架(宽+高mm以下)400', 23.6376, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (393, '成套配电箱拆除  悬挂明装式(半周长m)2.5', 120.9082, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (394, '铜芯电力电缆拆除(截面mm2以下)10,工作内容：防火堵洞材料、电缆头、电缆等拆除', 3.0418, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (395, '铜芯电力电缆拆除(截面mm2以下)16,工作内容：防火堵洞材料、电缆头、电缆等拆除', 3.3232, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (396, '铜芯电力电缆拆除(截面mm2以下)35,工作内容：防火堵洞材料、电缆头、电缆等拆除', 4.3952, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (397, '低压配电柜拆除,工作内容：防火堵洞材料、电缆头、电缆等拆除', 6.7402, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (398, '铜芯电力电缆拆除(截面mm2以下)120,工作内容：防火堵洞材料、电缆头、电缆等拆除', 12.1806, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (399, '铜芯电力电缆拆除(截面mm2以下)150,工作内容：防火堵洞材料、电缆头、电缆等拆除', 15.7584, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (400, '铜芯电力电缆拆除(截面mm2以下)185,工作内容：防火堵洞材料、电缆头、电缆等拆除', 19.1084, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (401, '铜芯电力电缆拆除(截面mm2以下)240,工作内容：防火堵洞材料、电缆头、电缆等拆除', 23.7582, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (402, '刚性阻燃管拆除  砖、混凝土结构明配、吊棚内敷设(公称口径mm以内)15', 3.082, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (403, '刚性阻燃管拆除  砖、混凝土结构明配、吊棚内敷设(公称口径mm以内)25', 3.8056, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (404, '塑料线槽拆除  宽×高(mm以内)10×20', 3.1624, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (405, '塑料线槽拆除  宽×高(mm以内)22×59', 4.0066, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (406, '塑料线槽拆除  宽×高(mm以内)32×120', 5.3734, 'm', 0, '2', '1');
INSERT INTO `hc` VALUES (407, '标志、诱导装饰灯、应急灯拆除', 12.2342, '套', 0, '2', '1');
INSERT INTO `hc` VALUES (408, '荧光灯具拆除  单管', 11.7116, '套', 0, '2', '1');
INSERT INTO `hc` VALUES (409, '荧光灯具拆除  二管', 16.2944, '套', 0, '2', '1');
INSERT INTO `hc` VALUES (410, '荧光灯具拆除  三管', 20.1134, '套', 0, '2', '1');
INSERT INTO `hc` VALUES (411, '开关、插座拆除', 5.2126, '套', 0, '2', '1');
INSERT INTO `hc` VALUES (412, '风扇拆除 吊风扇', 20.8102, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (413, '风扇拆除 轴流排气扇', 18.7332, '台', 0, '2', '1');
INSERT INTO `hc` VALUES (415, '塑料给水管拆除  公称外径(mm以内)25,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 4.087, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (416, '塑料给水管拆除  公称外径(mm以内)40,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 6.097, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (417, '塑料给水管拆除  公称外径(mm以内)63,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 7.4772, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (418, '塑料给水管拆除  公称外径(mm以内)90,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 8.7368, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (419, '塑料给水管拆除  公称外径(mm以内)110,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 10.2376, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (420, '钢塑复合给水管拆除  公称直径(mm以内)20,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 6.0702, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (421, '钢塑复合给水管拆除  公称直径(mm以内)32,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 9.112, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (422, '钢塑复合给水管拆除  公称直径(mm以内)50,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 10.586, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (423, '钢塑复合给水管拆除  公称直径(mm以内)80,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 15.5038, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (424, '钢塑复合给水管拆除  公称直径(mm以内)100,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 21.775, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (425, '钢塑复合给水管拆除  公称直径(mm以内)150,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 26.9206, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (426, '铸铁排水管拆除  公称直径(mm以内)50,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 21.7482, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (427, '铸铁排水管拆除  公称直径(mm以内)75,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 25.9826, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (428, '铸铁排水管拆除  公称直径(mm以内)100,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 33.4598, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (429, '塑料排水管拆除  公称外径(mm以内)110,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 41.3926, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (430, '塑料排水管拆除  公称外径(mm以内)50,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 6.5124, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (431, '塑料排水管拆除  公称外径(mm以内)75,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 8.844, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (432, '塑料排水管拆除  公称外径(mm以内)110,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 9.916, 'm', 0, '2', '2');
INSERT INTO `hc` VALUES (433, '螺纹水表拆除(公称直径mm以内)25', 6.5124, '个', 0, '2', '2');
INSERT INTO `hc` VALUES (434, '螺纹水表拆除(公称直径mm以内)50', 15.8924, '个', 0, '2', '2');
INSERT INTO `hc` VALUES (435, '法兰阀门拆除  公称直径(mm以内)50', 21.0782, '个', 0, '2', '2');
INSERT INTO `hc` VALUES (436, '焊接法兰水表拆除(公称直径mm以内)100', 65.4456, '个', 0, '2', '2');
INSERT INTO `hc` VALUES (437, '蹲式大便器拆除,工作内容：按序拆除', 51.2818, '组', 0, '2', '2');
INSERT INTO `hc` VALUES (438, '成套淋浴器拆除', 15.2224, '套', 0, '2', '2');
INSERT INTO `hc` VALUES (439, '蹲式大便器拆除,工作内容：按序拆除', 104.721, '套', 0, '2', '2');
INSERT INTO `hc` VALUES (440, '坐式大便器拆除,工作内容：按序拆除', 56.8428, '套', 0, '2', '2');
INSERT INTO `hc` VALUES (441, '小便器拆除  挂斗式,工作内容：按序拆除', 41.2452, '套', 0, '2', '2');
INSERT INTO `hc` VALUES (442, '小便器拆除  立式,工作内容：按序拆除', 45.3992, '套', 0, '2', '2');
INSERT INTO `hc` VALUES (443, '水龙头拆除,工作内容：拆排水管、堵链、存水弯、排水栓等零配件', 4.154, '个', 0, '2', '2');
INSERT INTO `hc` VALUES (444, '排水栓拆除,工作内容：拆排水管、堵链、存水弯、排水栓等零配件', 9.3666, '个', 0, '2', '2');
INSERT INTO `hc` VALUES (446, '铜管拆除  公称直径(mm以内)50,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 9.6748, 'm', 0, '2', '3');
INSERT INTO `hc` VALUES (447, '铜管拆除  公称直径(mm以内)80,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 12.596, 'm', 0, '2', '3');
INSERT INTO `hc` VALUES (448, '铜管拆除  公称直径(mm以内)100,工作内容：泄水,打凿过墙（楼板）洞,拆除管卡、管道', 18.3446, 'm', 0, '2', '3');
INSERT INTO `hc` VALUES (449, '干粉灭火器拆除,工作内容：打凿,拆除灭火器', 6.2444, '具', 0, '2', '3');
INSERT INTO `hc` VALUES (450, '室内消火栓拆除  明装,工作内容：打凿,拆除消火栓、箱体、水龙带等配件', 104.6406, '套', 0, '2', '3');
INSERT INTO `hc` VALUES (451, '室内消火栓拆除  暗装,工作内容：打凿,拆除消火栓、箱体、水龙带等配件', 165.9322, '套', 0, '2', '3');
INSERT INTO `hc` VALUES (453, '拆除基础 混凝土 基础,拆除或拆碎基础、断钢筋、剔凿', 364.5125, 'm3', 0, '3', '1');
INSERT INTO `hc` VALUES (454, '拆除砌体 砖墙,拆墙、柱及附着其上的装饰层', 81.8875, 'm3', 0, '3', '1');
INSERT INTO `hc` VALUES (455, '拆除砌体 砖柱,拆墙、柱及附着其上的装饰层', 112.7875, 'm3', 0, '3', '1');
INSERT INTO `hc` VALUES (456, '拆除砌体 砌块墙,拆墙、柱及附着其上的装饰层', 52.825, 'm3', 0, '3', '1');
INSERT INTO `hc` VALUES (457, '拆除砌体 砌块柱,拆墙、柱及附着其上的装饰层', 72.9125, 'm3', 0, '3', '1');
INSERT INTO `hc` VALUES (458, '拆除砌体 零星砌体,拆墙及附着其上的装饰层', 104.6, 'm3', 0, '3', '1');
INSERT INTO `hc` VALUES (459, '现浇钢筋混凝土拆除 钢筋混凝土,破碎混凝土,断钢筋、剔凿、清理渣土', 484.2625, 'm3', 0, '3', '1');
INSERT INTO `hc` VALUES (460, '现浇钢筋混凝土拆除 钢筋混凝土,破碎混凝土,断钢筋、剔凿、清理渣土', 124.325, 'm3', 0, '3', '1');
INSERT INTO `hc` VALUES (461, '屋面拆除 彩钢夹心屋面板,拆除混凝土屋面板、找平层及防水层', 5.2875, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (462, '屋面拆除 镀锌瓦垄铁皮、单层彩钢屋面板,拆除混凝土屋面板、找平层及防水层', 3.5125, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (463, '屋面拆除 架空隔热层 架空阶砖,拆除架空阶砖、架空隔热板及巷砖,清理表面', 14.2625, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (464, '屋面拆除 铁皮檐沟、斜沟,拆除檐沟、沟嘴、雨水口、水斗', 4.225, 'm', 0, '3', '1');
INSERT INTO `hc` VALUES (465, '屋面拆除 雨水口,拆除檐沟、沟嘴、雨水口、水斗', 7.75, '个', 0, '3', '1');
INSERT INTO `hc` VALUES (466, '铲除卷材、涂膜防水层 无砂石保护层,铲除卷材防水层或涂膜防水层（不包括铲除找平层）,', 4.7625, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (467, '铲除卷材、涂膜防水层 带砂石保护层,铲除卷材防水层或涂膜防水层（不包括铲除找平层）', 7.4, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (468, '铲除卷材、涂膜防水层 天沟、檐沟,铲除卷材防水层或涂膜防水层（不包括铲除找平层）', 5.2875, 'm', 0, '3', '1');
INSERT INTO `hc` VALUES (469, '楼地面垫层拆除 灰土', 158.4875, 'm3', 0, '3', '1');
INSERT INTO `hc` VALUES (470, '楼地面垫层拆除 炉渣', 75.725, 'm3', 0, '3', '1');
INSERT INTO `hc` VALUES (471, '楼地面面层拆除 面砖,拆除面层(含结合层及找平层)', 22.0125, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (472, '楼地面面层拆除 预制水磨石、石材面层,拆除面层(含结合层及找平层)', 26.6125, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (473, '楼地面面层拆除 水泥阶砖、红阶砖,拆除面层(含结合层及找平层）', 7.4, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (474, '地板拆除 带龙骨 木地板,1.地板拆除包括：龙骨、垫木、毛板、面板（或面层）及踢脚板的全部拆除。 2.塑料地板拆除。', 5.2875, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (475, '地板拆除 不带龙骨木地板,1.地板拆除包括：龙骨、垫木、毛板、面板（或面层）及踢脚板的全部拆除。 2.塑料地板拆除。', 3.7875, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (476, '地板拆除 塑料地板,1.地板拆除包括：龙骨、垫木、毛板、面板（或面层）及踢脚板的全部拆除。 2.塑料地板拆除。', 2.2, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (477, '地毯拆除', 2.725, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (478, '明（暗）沟、散水拆除 砖砌明（暗）沟', 11.5375, 'm', 0, '3', '1');
INSERT INTO `hc` VALUES (479, '明（暗）沟、散水拆除 混凝土明（暗）沟', 24.5625, 'm', 0, '3', '1');
INSERT INTO `hc` VALUES (480, '明（暗）沟、散水拆除 砖散水', 7.225, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (481, '明（暗）沟、散水拆除 混凝土散水', 16.525, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (482, '墙柱面铲除 抹灰砂浆', 8.4375, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (483, '墙柱面铲除 各种块料面砖', 31.7, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (484, '墙柱面铲除 石材', 44.3875, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (485, '拆除 木骨架墙', 26.9375, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (486, '拆除 金属骨架隔墙', 20.775, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (487, '拆除 轻质板式隔墙', 10.5625, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (488, '拆除 隔断,隔扇、隔墙、护墙板面层及龙骨的拆除', 5.2875, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (489, '清理涂料层 内墙', 5.0625, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (490, '清理涂料层 外墙', 10.125, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (491, '揭撕墙纸、墙布', 2.65, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (492, '天棚拆除 木龙骨 板条,天棚吊杆、骨架及面层的全部拆除', 4.225, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (493, '天棚拆除 木龙骨 胶合板、埃特板,天棚吊杆、骨架及面层的全部拆除', 4.325, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (494, '天棚拆除 木龙骨 石膏板,天棚吊杆、骨架及面层的全部拆除', 5.2875, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (495, '天棚拆除 金属龙骨 金属面层,1.天棚吊杆、骨架及面层的全部拆除。2. 铲除天棚砂浆。', 6.35, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (496, '天棚拆除 金属龙骨 胶合板、埃特板,1.天棚吊杆、骨架及面层的全部拆除。2. 铲除天棚砂浆。', 4.7625, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (497, '天棚拆除 石膏板,1.天棚吊杆、骨架及面层的全部拆除。2. 铲除天棚砂浆。', 5.8125, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (498, '天棚拆除 铲除抹灰砂浆', 9.975, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (499, '天棚拆除 清理涂料层,1. 清理涂料层：涂料铲除、打磨、剔凿。2. 揭撕墙纸。', 5.9875, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (500, '天棚拆除 揭撕墙纸、墙布,1. 清理涂料层：涂料铲除、打磨、剔凿。2. 揭撕墙纸。', 3.125, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (501, '拆除木门窗 整樘门（含门头亮子）,1．门、窗框及扇的整体拆除或单项拆除。', 21.125, '樘', 0, '3', '1');
INSERT INTO `hc` VALUES (502, '拆除木门窗 整樘窗（含门头亮子）,1．门、窗框及扇的整体拆除或单项拆除。', 20.075, '樘', 0, '3', '1');
INSERT INTO `hc` VALUES (503, '拆除 钢门,门窗框扇整体拆除及连接件拆除', 33.0125, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (504, '拆除 钢窗,门窗框扇整体拆除及连接件拆除', 31.7, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (505, '拆除 铝合金 门窗,门窗框扇整体拆除及连接件拆除', 26.4125, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (506, '拆除 窗栅、防盗网,门窗框扇、钢栅整体拆除及连接件拆除', 22.1875, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (507, '拆除 窗帘盒,1．窗帘盒、窗台板拆除包括主附件拆除。2．筒子板拆除包括面层及骨架拆除。', 5.6375, 'm', 0, '3', '1');
INSERT INTO `hc` VALUES (508, '拆除 钢栏杆,1.木扶手拆除包括木扶手和扶手垫板的拆除。2.栏杆的拆除包括栏杆及扶手全部拆除。', 18.5, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (509, '油漆层清除 单层 木门窗,涂刷脱漆剂、刮铲旧油膜、打磨、擦洗', 22.8625, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (510, '旧漆面清除 单层钢门窗,涂刷脱漆剂、刮铲旧油膜、打磨、擦洗', 14.85, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (511, '旧漆面清除 钢栏门、栏杆,涂刷脱漆剂、刮铲旧油膜、打磨、擦洗', 12.9375, 'm2', 0, '3', '1');
INSERT INTO `hc` VALUES (513, '履带式液压岩石破碎机拆除 混凝土垫层、地坪,全部拆除,破碎、废渣清理成堆。', 70.1125, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (514, '履带式液压岩石破碎机拆除 混凝土基础,全部拆除,破碎、废渣清理成堆。', 93, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (515, '履带式液压岩石破碎机拆除 钢筋混凝土基础,全部拆除,破碎、废渣清理成堆。', 136.2375, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (516, '履带式液压岩石破碎机拆除 砖基础、灰土垫层、三合土垫层,全部拆除,破碎、废渣清理成堆。', 75.2, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (517, '履带式液压岩石破碎机拆除 毛石基础,全部拆除,破碎、废渣清理成堆。', 89.1875, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (518, '履带式液压岩石破碎机拆除 混凝土,全部拆除,破碎、废渣清理成堆。', 76.475, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (519, '履带式液压岩石破碎机拆除 钢筋混凝土,全部拆除,破碎、废渣清理成堆。', 110.8, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (520, '履带式液压岩石破碎机拆除 砖、砌块砌体,全部拆除,破碎、废渣清理成堆。', 48.5125, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (521, '履带式液压岩石破碎机拆除 石砌体,全部拆除,破碎、废渣清理成堆。', 62.4875, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (522, '风动凿岩机拆除 混凝土垫层、地坪,全部拆除,破碎、废渣清理成堆。', 133.7, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (523, '风动凿岩机拆除 混凝土基础,全部拆除,破碎、废渣清理成堆。', 178.5, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (524, '风动凿岩机拆除 钢筋混凝土基础,全部拆除,破碎、废渣清理成堆。', 266.65, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (525, '风动凿岩机拆除 砖基础、灰土垫层、三合土垫层,全部拆除,破碎、废渣清理成堆。', 143.9875, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (526, '风动凿岩机拆除 毛石基础,全部拆除,破碎、废渣清理成堆。', 172.825, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (527, '风动凿岩机拆除 混凝土,全部拆除,破碎、废渣清理成堆。', 166.7375, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (528, '风动凿岩机拆除 钢筋混凝土,全部拆除,破碎、废渣清理成堆。', 239.6625, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (529, '风动凿岩机拆除 砖、砌块砌体,全部拆除,破碎、废渣清理成堆。', 103.575, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (530, '风动凿岩机拆除 石砌体,全部拆除,破碎、废渣清理成堆。', 131.675, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (531, '拆除 木柜（破坏性拆除）,按垂直投影面积计算', 18.75, 'm2', 0, '3', '2');
INSERT INTO `hc` VALUES (532, '人工拆除卫生间蹲位,含拆除卫生间蹲便器、防水层、填充层、面层,凹坑内所有回填物清理干净,废渣清理成堆、运至楼底,工程量按蹲位个数计算', 327, '个', 0, '3', '2');
INSERT INTO `hc` VALUES (533, '建筑垃圾外运,新型智能环保渣土车挖、装、运,含垃圾消纳费,运距10KM', 53.955, 'm3', 0, '3', '2');
INSERT INTO `hc` VALUES (534, '建筑垃圾外运,农用车,含装车费 垃圾消纳费,运距10KM', 218, '车', 0, '3', '2');
INSERT INTO `hc` VALUES (535, '人工平整场地', 7.006, 'm2', 0, '4', '1');
INSERT INTO `hc` VALUES (536, '人工挖一般土方,1.土壤类别:三类土,2.挖土深度:1.5M以内', 29.4252, 'm3', 0, '4', '1');
INSERT INTO `hc` VALUES (537, '人工挖沟槽土方,1.土壤类别:三类土,2.挖土深度:2M以内', 37.5596, 'm3', 0, '4', '1');
INSERT INTO `hc` VALUES (538, '土（石）方运输,液压挖掘机挖土 斗容量1m3 自卸汽车运土(运距1km以内) 8t', 11.7056, 'm3', 0, '4', '1');
INSERT INTO `hc` VALUES (539, '自卸汽车运土方(每增加1km运距) 8t', 2.232, 'km', 0, '4', '1');
INSERT INTO `hc` VALUES (540, '液压挖掘机挖土斗容量(0.4m3)', 5.3444, 'm3', 0, '4', '1');
INSERT INTO `hc` VALUES (541, '液压挖掘机挖土斗容量(0.8m3)', 4.774, 'm3', 0, '4', '1');
INSERT INTO `hc` VALUES (542, '液压挖掘机挖土斗容量(1.0m3)', 4.5012, 'm3', 0, '4', '1');
INSERT INTO `hc` VALUES (543, '液压挖掘机挖土斗容量(1.25m3)', 4.4268, 'm3', 0, '4', '1');
INSERT INTO `hc` VALUES (544, '原土回填方 夯填', 25.7548, 'm3', 0, '4', '1');
INSERT INTO `hc` VALUES (545, '人工回填沟槽(基坑) 天然砂石', 118.4448, 'm3', 0, '4', '1');
INSERT INTO `hc` VALUES (546, '人工回填沟槽(基坑) 砾(碎)石', 138.7188, 'm3', 0, '4', '1');
INSERT INTO `hc` VALUES (548, '多孔砖墙,砖品种、规格、强度等级:多孔页岩砖240*115*90mm,墙体厚度:115mm', 653.4924, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (549, '多孔砖墙,砖品种、规格、强度等级:多孔页岩砖240*190*90mm,墙体厚度:190mm', 549.32, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (550, '多孔砖墙,砖品种、规格、强度等级:多孔页岩砖240*115*90mm,墙体厚度:190mm', 615.7344, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (551, '零星砌砖,砖品种、规格、强度等级:多孔页岩砖240*115*90mm,适用于台阶挡墙、梯带、厕所蹲台、池槽、转胎膜、花台、花池、楼梯栏板、阳台栏板、地垄墙及支撑地楞的砖墩,0.3m2以内的空洞墙填塞、小便槽、灯箱、垃圾箱、房上烟囱及毛石墙的门窗立边、窗台虎头砖', 700.6124, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (552, '砖砌台阶,砖品种、规格、强度等级:多孔页岩砖240*115*90mm,按水平投影面积计算', 203.9056, 'm2', 0, '4', '2');
INSERT INTO `hc` VALUES (553, '砖砌明沟 多孔砖11.5cm壁厚 内空260×120mm,1.挖土、填土、运土、原土夯实。,2.铺设垫层。,3.调运砂浆、铺砂浆、运砖、砌砖。,4.水泥砂浆抹面。', 60.9708, 'm', 0, '4', '2');
INSERT INTO `hc` VALUES (554, '砖砌明沟 多孔砖11.5cm壁厚 沟深每增加10mm,1.挖土、填土、运土、原土夯实。,2.铺设垫层。,3.调运砂浆、铺砂浆、运砖、砌砖。,4.水泥砂浆抹面。', 2.5668, 'm', 0, '4', '2');
INSERT INTO `hc` VALUES (555, '砌块墙,小型空心砌块墙 墙体厚度 12cm', 469.7368, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (556, '砌块墙,小型空心砌块墙 墙体厚度 19cm', 503.4276, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (557, '砌块墙,小型空心砌块墙 墙体厚度 24cm', 376.898, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (558, '垫层,垫层材料种类、配合比、厚度:300mm厚3:7灰土,分两步夯实', 249.7856, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (559, '垫层,砂石垫层', 242.8416, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (560, '碎石垫层 干铺', 201.0908, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (561, '砾(碎)石垫层 灌浆 水泥石灰砂浆中砂M5', 285.262, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (562, '砖砌地沟', 602.0696, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (563, '砖砌检查井', 722.8828, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (564, '沟槽铸铁盖板及安装,球墨铸铁雨水平箅400*700  ≥B125kn', 226.9324, '个', 0, '4', '2');
INSERT INTO `hc` VALUES (565, '垫层,混凝土种类:非泵送商品砼,混凝土强度等级:C15', 585.404, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (566, '独立基础,混凝土种类:非泵送商品砼,混凝土强度等级:C30', 577.7656, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (567, '圈梁(反边),混凝土种类:非泵送商品砼,混凝土强度等级:C20,适用于栏杆基座', 655.6004, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (568, '过梁,单件体积:0.4m3内,安装高度:3.6m以内,混凝土种类:非泵送商品砼,混凝土强度等级:C20,含钢筋', 1175.9788, 'm3', 0, '4', '2');
INSERT INTO `hc` VALUES (569, '现浇构件圆钢筋制安 φ10以内', 6805.2192, 't', 0, '4', '2');
INSERT INTO `hc` VALUES (570, '现浇构件圆钢筋制安 φ10以上', 6564.002, 't', 0, '4', '2');
INSERT INTO `hc` VALUES (571, '现浇构件螺纹钢制安 10以内', 7373.2012, 't', 0, '4', '2');
INSERT INTO `hc` VALUES (572, '现浇构件螺纹钢制安 10以上', 6616.6524, 't', 0, '4', '2');
INSERT INTO `hc` VALUES (573, '铁件 预埋铁件', 11564.1284, 't', 0, '4', '2');
INSERT INTO `hc` VALUES (574, '彩钢屋面板 单层底板,1.型材品种、规格:压型彩钢板0.476mm', 69.812, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (575, '屋面涂膜防水,防水膜品种:聚合物水泥防水涂料,涂膜厚度、遍数或层数:1.5mm厚', 35.0176, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (576, '屋面卷材防水,2厚单面自粘聚合物改性沥青防水卷材（聚氨酯）一道', 52.5636, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (577, '屋面涂膜防水,2厚聚氨酯防水涂膜一道', 40.6224, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (578, '屋面刚性层,刚性层厚度:40mm厚,砂浆、混凝土种类:非泵送商品砼,砂浆配合比、混凝土强度等级:C20细石混凝土,嵌缝材料种类:每6m*6m设分格缝,缝宽20,嵌防水油膏,200mm宽沥青防水卷材盖缝,钢筋规格、型号:φ4双向@100mm', 62.3844, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (579, '干铺无纺布,干铺聚酯纤维无纺布一层', 4.3276, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (580, '平面砂浆找平层,找平层厚度、砂浆种类、配合比:20mm厚1:3水泥砂浆', 19.158, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (581, '屋面刚性层,刚性层厚度:20mm厚,砂浆配合比、混凝土强度等级:1:2水泥砂浆抹平压光,塑料油膏分格', 26.9948, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (582, '瓦屋面,瓦品种、规格:西式陶瓦屋面瓦,铜线固定屋面瓦,粘结层砂浆的配合比:20厚1:3水泥砂浆保护层', 169.8924, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (583, '瓦屋面,瓦品种、规格:水泥彩瓦,铜线固定屋面瓦,粘结层砂浆的配合比:20厚1:3水泥砂浆保护层', 114.9232, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (584, '圆脊,脊类型、位置:坡屋面屋脊,脊件类型、规格尺寸:西式陶瓦圆脊', 115.1464, 'm', 0, '4', '3');
INSERT INTO `hc` VALUES (585, '圆脊,脊类型、位置:坡屋面屋脊,脊件类型、规格尺寸:水泥彩瓦', 65.1124, 'm', 0, '4', '3');
INSERT INTO `hc` VALUES (586, '楼(地)面涂膜防水,1.5厚聚氨酯防水涂料', 33.914, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (587, '墙面涂膜防水,1.5厚聚氨酯防水涂料', 39.6428, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (588, '楼(地)面卷材防水(平面),2厚自粘聚合物改性沥青防水卷材（聚氨酯）一道', 58.1188, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (589, '下沉式卫生间防水及回填,刷基层处理剂一遍,地面1.5厚聚氨酯防水涂料（墙面另计）,人工回填沟槽(基坑) 陶瓷颗粒,细石混凝土找平层 40mm,（地面瓷砖另计）', 148.0436, 'm2', 0, '4', '3');
INSERT INTO `hc` VALUES (590, '保温隔热屋面,绝热挤塑聚苯乙烯泡沫板52厚', 46.1652, 'm2', 0, '4', '4');
INSERT INTO `hc` VALUES (591, '外墙保温隔热墙面,保温隔热材料品种、规格及厚度:无机保温砂浆25mm厚,增强网及抗裂防水砂浆种类:抗裂砂浆5mm（内嵌耐碱玻纤网格布）,刷专用界面剂一遍', 71.0272, 'm2', 0, '4', '4');
INSERT INTO `hc` VALUES (592, '建筑垃圾外运,新型智能环保渣土车挖、装、运,含垃圾消纳费,运距10KM', 53.955, 'm3', 0, '4', '5');
INSERT INTO `hc` VALUES (593, '建筑垃圾外运,农用车,含装车费 垃圾消纳费,运距10KM', 218, '车', 0, '4', '5');
INSERT INTO `hc` VALUES (594, '外装修钢管脚手架高度(h) 10m以内', 17.0376, 'm2', 0, '4', '6');
INSERT INTO `hc` VALUES (595, '外装修钢管脚手架高度(h) 20m以内', 17.9676, 'm2', 0, '4', '6');
INSERT INTO `hc` VALUES (596, '外装修钢管脚手架高度(h) 30m以内', 20.2492, 'm2', 0, '4', '6');
INSERT INTO `hc` VALUES (597, '外装修钢管脚手架高度(h) 40m以内', 22.506, 'm2', 0, '4', '6');
INSERT INTO `hc` VALUES (598, '内装修钢管脚手架 3.6m以上', 4.4516, 'm2', 0, '4', '6');
INSERT INTO `hc` VALUES (599, '钢管满堂脚手架 基本层 高3.6m', 17.1492, 'm2', 0, '4', '6');
INSERT INTO `hc` VALUES (600, '钢管满堂脚手架 每增加一层 高1.2m', 4.5756, 'm2', 0, '4', '6');
INSERT INTO `hc` VALUES (601, '外装饰吊篮', 31.744, 'm2', 0, '4', '6');
INSERT INTO `hc` VALUES (602, '混凝土基础垫层 木模板木支撑', 31.0124, 'm2', 0, '4', '7');
INSERT INTO `hc` VALUES (603, '独立基础 胶合板模板 木支撑', 51.894, 'm2', 0, '4', '7');
INSERT INTO `hc` VALUES (604, '矩形柱 胶合板模板 木支撑', 58.7264, 'm2', 0, '4', '7');
INSERT INTO `hc` VALUES (605, '圈梁（反边） 直形 胶合板模板 木支撑', 50.8276, 'm2', 0, '4', '7');
INSERT INTO `hc` VALUES (606, '过梁 木模板', 362.204, 'm3', 0, '4', '7');
INSERT INTO `hc` VALUES (607, '天棚补漏,凿孔、水性或油性聚氨酯环氧树脂高压注浆,含措施费,4.5米以内', 170, 'm', 0, '4', '8');
INSERT INTO `hc` VALUES (608, '外墙及侧壁补漏,打凿清理面层砂浆,金汤水不漏,青龙聚合物JS防水,防水砂浆恢复,含措施费', 350, 'm2', 0, '4', '8');
INSERT INTO `hc` VALUES (609, '履带式反铲挖掘机 斗容量0.23立方米', 1300, '台班', 0, '4', '8');
INSERT INTO `hc` VALUES (610, '履带式反铲挖掘机 斗容量0.4立方米', 1500, '台班', 0, '4', '8');
INSERT INTO `hc` VALUES (611, '履带式反铲挖掘机 斗容量0.6立方米', 2000, '台班', 0, '4', '8');
INSERT INTO `hc` VALUES (612, '履带式反铲挖掘机 斗容量1立方米', 2400, '台班', 0, '4', '8');
INSERT INTO `hc` VALUES (613, '汽车式起重机5T', 550, '台班', 0, '4', '8');
INSERT INTO `hc` VALUES (614, '汽车式起重机12T', 1300, '台班', 0, '4', '8');
INSERT INTO `hc` VALUES (615, '人工挖一般土方 三类土', 24.1164, 'm3', 0, '5', '1');
INSERT INTO `hc` VALUES (616, '人工挖沟槽、基坑土方 三类土', 42.5488, 'm3', 0, '5', '1');
INSERT INTO `hc` VALUES (617, '路床(槽)整形', 2.4708, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (618, '混凝土垫层,混凝土种类、强度等级:C15 商品普通砼', 466.9, 'm3', 0, '5', '1');
INSERT INTO `hc` VALUES (619, '碎石垫层,厚度:200mm', 43.094, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (620, '碎石垫层,厚度:150mm', 34.2664, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (621, '碎石垫层,厚度:100mm', 25.4272, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (622, '水泥稳定碎石,水泥含量:6%,石料规格:碎石 5～40mm,厚度:200mm', 53.9632, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (623, '水泥稳定碎石,水泥含量:6%,石料规格:碎石 5～40mm,厚度:150mm', 42.1312, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (624, '水泥稳定碎石,水泥含量:6%,石料规格:碎石 5～40mm,厚度:100mm', 32.3756, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (625, '水泥混凝土路面 厚度20cm C25商品砼', 107.2652, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (626, '水泥混凝土路面 厚度15cm C25商品砼', 82.0584, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (627, '水泥混凝土路面 每增1cm C25商品砼', 5.1272, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (628, '水泥混凝土路面 厚度20cm C20商品砼', 104.0404, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (629, '水泥混凝土路面 厚度15cm C20商品砼', 79.6456, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (630, '水泥混凝土路面 每增1cm C20商品砼', 4.9648, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (631, '喷洒乳化沥青下封层', 4.9648, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (632, '喷洒乳化沥青粘油层', 2.1924, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (633, '中粒式沥青混凝土路面 人工摊铺 厚5cm,中粒式沥青混凝AC-16', 84.2856, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (634, '中粒式沥青混凝土路面 人工摊铺 每增减1cm,中粒式沥青混凝AC-16', 16.5184, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (635, '细粒式沥青混凝土路面 人工摊铺 厚5cm,细粒式沥青混凝AC-13', 91.06, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (636, '细粒式沥青混凝土路面 人工摊铺 每增减0.5cm,细粒式沥青混凝AC-13', 8.9784, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (637, '中粒式沥青混凝土路面 机械摊铺 厚5cm,中粒式沥青混凝AC-16', 81.9424, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (638, '中粒式沥青混凝土路面 机械摊铺 每增减1cm,中粒式沥青混凝AC-16', 16.1936, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (639, '细粒式沥青混凝土路面 机械摊铺 厚5cm,细粒式沥青混凝AC-13', 87.696, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (640, '细粒式沥青混凝土路面 机械摊铺 每增减0.5cm,细粒式沥青混凝AC-13', 8.7348, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (641, '人行道块料铺设(甲供材),1、面层材料种类：230*115*55红色透水砖通体,粗砂灌缝,2、30厚1:4干硬性水泥砂浆', 28.6752, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (642, '人行道块料铺设,1、面层材料种类：230*115*55红色透水砖通体,粗砂灌缝,2、30厚1:4干硬性水泥砂浆', 106.0704, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (643, '石材面层(甲供材),1、面层材料种类：4cm以内石材铺设,2、砂浆强度等级：30厚1:4干硬性水泥砂浆结合层', 37.6768, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (644, '石材面层(甲供材),1、面层材料种类：6cm以内石材铺设,2、砂浆强度等级：30厚1:4干硬性水泥砂浆结合层', 40.484, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (645, '石材面层,1.600*300*50青石板,细毛面,2.30厚1:3干硬性水泥砂浆', 105.2468, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (646, '石材面层,1、面层材料种类：400*200*20光面蒙古黑压边,2、砂浆强度等级：30厚1:4干硬性水泥砂浆结合层', 326.656, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (647, '石材面层,1、面层材料种类：500*500*20芝麻白花岗岩,2、砂浆强度等级：30厚1:4干硬性水泥砂浆结合层', 144.304, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (648, '石材面层,1、面层材料种类：500*500*20烧面黄锈石花岗岩,2、砂浆强度等级：30厚1:4干硬性水泥砂浆结合层', 193.8592, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (649, '石材面层,1、面层材料种类：500*500*20麻灰花岗岩,2、砂浆强度等级：30厚1:4干硬性水泥砂浆结合层', 123.4704, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (650, '石材面层,1、面层材料种类：黄锈石600*600*50,2、砂浆强度等级：30厚1:4干硬性水泥砂浆结合层', 464.348, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (651, '石材面层,1、面层材料种类：中国红600*600*50,2、砂浆强度等级：30厚1:4干硬性水泥砂浆结合层', 487.896, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (652, '石材压顶,600*400*50光面黄锈石花岗岩压顶,20厚1：3水泥砂浆', 434.7448, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (653, '石材压顶,600*400*50光面钟山青花岗岩压顶,20厚1：3水泥砂浆', 271.0804, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (654, '石材墙面,450*100*20光面黄锈石花岗岩贴面,20厚1：3水泥砂浆结合层', 191.9916, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (655, '石材墙面,450*100*20光面芝麻灰花岗岩贴面,20厚1：3水泥砂浆结合层', 121.6028, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (656, '石材墙面,450*100*20光面芝麻白花岗岩贴面,20厚1：3水泥砂浆结合层', 142.4364, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (657, '安砌侧(平、缘)石,1、500*250*120花岗岩路缘石,2、20厚1:3水泥砂浆粘结层,3、垫层厚度：50厚C15混凝土垫层', 63.4984, 'm', 0, '5', '1');
INSERT INTO `hc` VALUES (658, '安砌侧(平、缘)石,1、500*350*80花岗岩路平石,2、20厚1:3水泥砂浆粘结层,3、垫层厚度：50厚C15混凝土垫层', 61.2248, 'm', 0, '5', '1');
INSERT INTO `hc` VALUES (659, '标线,百色热熔标线道路漆', 42.9084, 'm2', 0, '5', '1');
INSERT INTO `hc` VALUES (660, '建筑垃圾外运,新型智能环保渣土车挖、装、运,含垃圾消纳费,运距10KM', 53.955, 'm3', 0, '5', '1');
INSERT INTO `hc` VALUES (661, '建筑垃圾外运,农用车,含装车费 垃圾消纳费,运距10KM', 218, '车', 0, '5', '1');
INSERT INTO `hc` VALUES (662, '水泥砂浆楼地面,找平层厚度、砂浆种类、配合比:20厚1:2水泥砂浆', 20.9169, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (663, '水泥砂浆楼地面,找平层厚度、砂浆种类、配合比:20厚1:2.5水泥砂浆', 20.574, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (664, '水泥砂浆楼地面,找平层厚度、砂浆种类、配合比:20厚1:3水泥砂浆', 19.7993, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (665, '墙面涂膜防水,防水膜品种:水泥基防水涂料,涂膜厚度、遍数:1.5mm', 41.402, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (666, '块料楼地面,找平层厚度、砂浆种类、配合比:20厚1:4干硬性水泥砂浆,面层材料品种、规格、颜色:800*800抛光砖,品牌相当于或优于“新中源”“冠珠”“马可波罗”', 176.0093, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (667, '块料楼地面,找平层厚度、砂浆种类、配合比:20厚1:4干硬性水泥砂浆,面层材料品种、规格、颜色:600*600抛光砖,品牌相当于或优于“新中源”“冠珠”“马可波罗”', 160.9725, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (668, '块料楼地面,找平层厚度、砂浆种类、配合比:20厚1:4干硬性水泥砂浆,面层材料品种、规格、颜色:300*300防滑砖,品牌相当于或优于“新中源”“冠珠”“马可波罗”', 127.4953, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (669, '块料楼梯面,找平层厚度、砂浆种类、配合比:20厚1:4干硬性水泥砂浆,面层材料品种、规格、颜色:600*600抛光砖,品牌相当于或优于“新中源”“冠珠”“马可波罗”,按楼梯水平投影面积计算', 270.3957, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (670, '零星面砖,找平层厚度、砂浆种类、配合比:20厚1:4干硬性水泥砂浆,面层材料品种、规格、颜色:600*600抛光砖,适用于单个面积在0.5m2以内且定额未列的少量分散楼地面工程,品牌相当于或优于“新中源”“冠珠”“马可波罗”', 255.4224, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (671, '零星面砖,找平层厚度、砂浆种类、配合比:20厚1:4干硬性水泥砂浆,面层材料品种、规格、颜色:300*300防滑砖,适用于单个面积在0.5m2以内且定额未列的少量分散楼地面工程,品牌相当于或优于“新中源”“冠珠”“马可波罗”', 215.7476, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (672, '块料台阶面,找平层厚度、砂浆种类、配合比:20厚1:4干硬性水泥砂浆,面层材料品种、规格、颜色:600*600抛光砖,品牌相当于或优于“新中源”“冠珠”“马可波罗”,按楼梯水平投影面积计算', 251.206, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (673, '块料台阶面,找平层厚度、砂浆种类、配合比:20厚1:4干硬性水泥砂浆,面层材料品种、规格、颜色:300*300防滑砖,品牌相当于或优于“新中源”“冠珠”“马可波罗”,按楼梯水平投影面积计算', 198.2978, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (674, '块料踢脚线,粘贴层厚度、材料种类:17mm厚1:3水泥砂浆,3-4mm厚1:1水泥砂浆加水重20%建筑胶镶贴,面层材料品种、规格、颜色:8-10mm厚面砖,水泥浆擦缝,品牌相当于或优于“新中源”“冠珠”“马可波罗”', 186.0423, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (675, '水泥砂浆踢脚线,清理基层,1：2水泥砂浆', 61.1251, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (676, '0.5mm304不锈钢踢脚线,成品踢脚线含底板', 223.2914, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (677, '自流坪楼地面,水泥砂浆界面剂抹平,3mm水泥基自流平一道', 25.0317, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (678, 'PVC塑胶地面,2mm厚一体同心PVC地板胶,品牌相当于或优于“LG”“福洁”', 225.4631, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (679, '复合木地板,含踢脚线、防潮地膜,品牌相当于或优于“大自然”', 243.2558, 'm2', 0, '5', '2');
INSERT INTO `hc` VALUES (680, '铝合金收口条,30mm收口条,部位：木地板与其他地面或柜子接口处', 10.6553, 'm', 0, '5', '2');
INSERT INTO `hc` VALUES (681, '墙面一般抹灰,底层厚度、砂浆种类、配合比:15mm厚1:1:6水泥石灰砂浆,面层厚度、砂浆种类、配合比:5mm厚1:0.5:3水泥石灰砂浆', 31.3182, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (682, '块料墙面,安装方式:15mm厚1:3干混水泥砂浆、3~4mm厚1:1干混水泥砂浆加水重20%建筑胶镶贴,面层材料品种、规格、颜色:4-5mm厚瓷砖,瓷砖规格300*600mm,缝宽、嵌缝材料种类:白水泥浆擦缝,品牌相当于或优于“新中源”“冠珠”“马可波罗”', 141.859, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (683, '块料墙面,安装方式:15mm厚1:3干混水泥砂浆、3~4mm厚1:1干混水泥砂浆加水重20%建筑胶镶贴,面层材料品种、规格、颜色:4-5mm厚瓷砖,瓷砖规格300*450mm,缝宽、嵌缝材料种类:白水泥浆擦缝,品牌相当于或优于“新中源”“冠珠”“马可波罗”', 138.8745, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (684, '墙面砂浆防水(防潮),1.防水层做法:干粉类聚合物水泥防水砂浆,2.砂浆厚度、配合比:5mm厚', 25.6667, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (685, '外墙块料墙面,安装方式:15mm厚1:3水泥砂浆,缝宽5mm擦缝', 138.8745, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (686, '玻镁板隔墙,50mm厚玻镁彩钢板(中间龙骨支撑）,A级防火等级,钢板厚度0.426mm厚,隔断双边均有吊顶时高至较高吊顶底否则高至梁板底,所有阴角封R50铝合金内圆弧,内圆弧三维交汇处安装铝合金三通,表面涂层应具有抗静电性能,可防止有害颗粒被吸附到墙体表面', 214.4395, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (687, '木隔断龙骨 断面7.5c以内 木龙骨平均中距300mm以内', 46.6725, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (688, '轻钢龙骨 中距(mm) 竖603横1500', 88.773, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (689, '型钢龙骨 中距(mm) 单向1500', 57.3405, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (690, '板基层 纸面石膏板12mm,龙骨上钉基层', 28.829, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (691, '板基层 大芯板12mm,龙骨上钉基层', 43.0022, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (692, '板基层 大芯板15mm,龙骨上钉基层', 50.2539, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (693, '板基层 胶合板 5mm,龙骨上钉基层', 30.5308, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (694, '板基层 胶合板 9mm,龙骨上钉基层', 35.5473, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (695, '3mm铝塑板墙面 胶合板基层上', 119.888, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (696, '3mm铝塑板墙面 木龙骨基层上', 115.2144, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (697, '5mm胶合板面 墙面、墙裙,贴或钉面层、钉压条、清理等全部操作过程。', 40.6781, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (698, '12mm纸面石膏板墙面,铺钉面层、钉压条、清理等全部操作过程。', 35.1028, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (699, '埃特板 6mm墙面,铺钉面层、钉压条、清理等全部操作过程。', 51.5747, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (700, '埃特板 8mm墙面,铺钉面层、钉压条、清理等全部操作过程。', 43.6499, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (701, '卫生间隔断 成品浴厕隔断,12厚二代抗倍特板隔断,含隔断门及不锈钢配件', 219.9767, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (702, '包柱子,木龙骨,5mm胶合板基层,9.5mm纸面石膏板面层', 145.8849, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (703, '包柱子,木龙骨,5mm胶合板基层,8mm埃特板面层', 157.3657, 'm2', 0, '5', '3');
INSERT INTO `hc` VALUES (704, '轻钢龙骨吊顶,1.吊顶形式、吊杆规格、高度:不上人型 平面,2.龙骨材料种类、规格、中距:装配式u型轻钢龙骨中距600以上', 51.6636, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (705, '轻钢龙骨吊顶,1.吊顶形式、吊杆规格、高度:不上人型 平面,2.龙骨材料种类、规格、中距:装配式u型轻钢龙骨中距600', 63.4746, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (706, '轻钢龙骨吊顶,1.吊顶形式、吊杆规格、高度:不上人型 跌级,2.龙骨材料种类、规格、中距:装配式u型轻钢龙骨中距600', 74.3585, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (707, '轻钢龙骨吊顶,1.吊顶形式、吊杆规格、高度:不上人型 平面,2.龙骨材料种类、规格、中距:装配式u型轻钢龙骨中距300', 83.8073, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (708, '吊顶天棚基层,阻燃12厘板安装在轻钢龙骨上', 34.0868, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (709, '吊顶天棚基层,阻燃9厘板安装在轻钢龙骨上', 34.0868, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (710, '吊顶天棚基层,阻燃5厘板安装在轻钢龙骨上', 34.0868, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (711, '吊顶天棚面层,9.5mm纸面石膏板 安装在轻钢龙骨上', 34.2519, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (712, '吊顶天棚面层,9.5mm纸面石膏板 安装在基层板上', 38.9763, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (713, '吊顶天棚面层,6mm硅酸钙板 安装在轻钢龙骨上', 36.0299, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (714, '吊顶天棚面层,6mm硅酸钙板 安装在基层板上', 40.7543, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (715, '吊顶天棚面层,8mm硅酸钙板 安装在轻钢龙骨上', 38.8747, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (716, '吊顶天棚面层,8mm硅酸钙板 安装在基层板上', 43.5991, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (717, '吊顶天棚面层,6mm埃特板 安装在轻钢龙骨上', 53.1368, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (718, '吊顶天棚面层,6mm埃特板 安装在基层板上', 57.8612, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (719, '铝扣板吊顶,面层材料品种、规格:铝扣板1200*600,铝扣板厚0.8mm', 116.3447, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (720, '铝扣板吊顶,面层材料品种、规格:铝扣板600*600,铝扣板厚0.8mm', 114.9096, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (721, '铝扣板吊顶,面层材料品种、规格:铝扣板300*300,铝扣板厚0.8mm', 92.1131, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (722, '玻镁彩钢板吊顶,具体做法详见吊顶大样图,50mm厚玻镁彩钢板(中间龙骨支撑）,A级防火等级,钢板厚度0.426mm厚,表面涂层应具有抗静电性能,可防止有害颗粒被吸附到墙体表面,吊顶四周与墙面交角封R50铝合金角线,角线转角处用球面,含骨架、吊杆等', 260.1595, 'm2', 0, '5', '4');
INSERT INTO `hc` VALUES (723, '木窗帘盒,15mm大芯板打底 9.5mm纸面石膏板', 56.5658, 'm', 0, '5', '4');
INSERT INTO `hc` VALUES (724, '木窗帘盒,15mm大芯板打底 6mm埃特板', 65.024, 'm', 0, '5', '4');
INSERT INTO `hc` VALUES (725, '墙体满刮腻子,清理、修补基层、满刮腻子、罩面、抛光。,腻子种类:白色钢化腻子,刮腻子遍数:2遍', 14.2748, 'm2', 0, '5', '5');
INSERT INTO `hc` VALUES (726, '天棚满刮腻子,清理、修补基层、满刮腻子、罩面、抛光。,腻子种类:白色钢化腻子,刮腻子遍数:2遍', 16.4973, 'm2', 0, '5', '5');
INSERT INTO `hc` VALUES (727, '外墙腻子乳胶漆,清理、修补基层、满刮腻子、罩面、抛光。,腻子种类:白色钢化腻子2遍,1底2面外墙弹性涂料,品牌:相当于或优于“多乐士”、“立邦”', 39.0017, 'm2', 0, '5', '5');
INSERT INTO `hc` VALUES (728, '内墙面、天棚面涂料,清扫、配浆、找补腻子、照灯打磨、刷乳胶漆,乳胶漆1底2面,品牌:相当于或优于“多乐士”、“立邦”', 21.2217, 'm2', 0, '5', '5');
INSERT INTO `hc` VALUES (729, '金属面油漆,红丹防锈漆一遍 调和漆两遍', 14.6812, 'm2', 0, '5', '5');
INSERT INTO `hc` VALUES (730, '木材面漆,底油一遍、调和漆二遍', 30.7086, 'm2', 0, '5', '5');
INSERT INTO `hc` VALUES (736, '花岗岩洗漱台,钢骨架,面挂蒙古黑石材1.8mm,蒙古黑挡水条', 1106.3732, 'm2', 0, '5', '6');
INSERT INTO `hc` VALUES (737, '成品实木门,含制作、安装、运输、五金配件等,含门窗周边塞缝,含实木门套,优质执手锁', 788.2382, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (738, '钢质防盗门,含制作、安装、运输、五金配件等,含门窗周边塞缝,配B级锁具、猫眼,符合国家丁级防盗门标准,品牌相当于或优于“王力”“星月神”“盼盼”', 669.3535, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (739, '46系列铝合金地弹门,钢化玻璃8mm,铝材厚度2.0mm,含制作、安装、运输、五金配件等,含门窗周边塞缝,品牌相当于或优于“南南”', 568.4139, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (740, '50系列铝合金平开门,5+6A+5钢化中空玻璃,洞口面积≤2m2,铝材厚度2.0mm,含制作、安装、运输、五金配件等,含门窗周边塞缝,品牌相当于或优于“南南”', 558.292, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (741, '90系列铝合金推拉门,5+6A+5钢化中空玻璃,铝材厚度2.0mm,含制作、安装、运输、五金配件等,含门窗周边塞缝,品牌相当于或优于“南南”', 441.0964, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (742, '90系列铝合金推拉窗,5+6A+5中空玻璃,洞口面积≤2m2,铝材厚度1.4mm,含制作、安装、运输、五金配件等,含门窗周边塞缝,品牌相当于或优于“南南”', 460.0575, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (743, '90系列铝合金推拉窗,5+6A+5中空玻璃,洞口面积＞2m2,铝材厚度1.4mm,含制作、安装、运输、五金配件等,含门窗周边塞缝,品牌相当于或优于“南南”', 417.4744, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (744, '45系列铝合金百叶窗,洞口面积≤2m2,外框为38*25管,含制作、安装、运输、五金配件等,品牌相当于或优于“南南”', 286.1056, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (745, '45系列铝合金百叶窗,洞口面积＞2m2,外框为38*25管,含制作、安装、运输、五金配件等,品牌相当于或优于“南南”', 265.3411, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (746, '普通纱扇纱窗,铝材厚度1.4mm,含制作、安装、运输、五金配件等,品牌相当于或优于“南南”', 66.9036, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (747, '金刚纱扇纱窗,铝材厚度1.4mm,含制作、安装、运输、五金配件等,品牌相当于或优于“南南”', 136.7536, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (748, '外墙真石漆,外墙防水腻子两遍、腻子面打磨,涂抗碱底漆一遍、面漆两遍、防尘罩面漆一遍,相当于或由于“东瀛”', 65.4, 'm2', 0, '5', '7');
INSERT INTO `hc` VALUES (749, '5mm浮法玻璃,玻璃主材价格,用于调差', 43.4038, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (750, '8mm浮法玻璃,玻璃主材价格,用于调差', 77.172, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (751, '8mm钢化玻璃,玻璃主材价格,用于调差', 96.465, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (752, '10mm钢化玻璃,玻璃主材价格,用于调差', 106.1115, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (753, '12mm钢化玻璃,玻璃主材价格,用于调差', 115.7471, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (754, '中空玻璃5mm+6mm+5mm,玻璃主材价格,用于调差', 110.9293, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (755, '中空玻璃5mm+9mm+5mm,玻璃主材价格,用于调差', 115.7471, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (756, '钢化中空玻璃5mm+6mm+5mm,玻璃主材价格,用于调差', 125.3936, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (757, '钢化中空玻璃5mm+9mm+5mm,玻璃主材价格,用于调差', 130.2223, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (758, 'LOW-E中空玻璃5mm+9mm+5mm,玻璃主材价格,用于调差', 135.0401, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (759, 'LOW-E中空玻璃6mm+9mm+6mm,玻璃主材价格,用于调差', 149.5153, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (760, '钢化LOW-E中空玻璃5mm+9mm+5mm,玻璃主材价格,用于调差', 154.3331, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (761, '钢化LOW-E中空玻璃6mm+9mm+6mm,玻璃主材价格,用于调差', 173.6261, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (762, '钢化夹胶玻璃5mm+0.76PVB+5mm,玻璃主材价格,用于调差', 149.5153, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (763, '钢化夹胶玻璃6mm+0.76PVB+6mm,玻璃主材价格,用于调差', 168.8083, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (764, '磨砂玻璃5mm,玻璃主材价格,用于调差', 53.0503, 'm2', 0, '5', '8');
INSERT INTO `hc` VALUES (765, '磨砂玻璃6mm,玻璃主材价格,用于调差', 62.6968, 'm2', 0, '5', '8');

-- ----------------------------
-- Table structure for jdr
-- ----------------------------
DROP TABLE IF EXISTS `jdr`;
CREATE TABLE `jdr`  (
  `ybid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '易班id',
  `gh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `xm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `sj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `yx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '1在职，2休假，3离职',
  `ywfw` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '（业务范围）1,2,4,8,16,32,64',
  PRIMARY KEY (`ybid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '接单人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jdr
-- ----------------------------
INSERT INTO `jdr` VALUES ('123123', '1232132', '测试2', '18278378721', '728172812@qq.com', '1', '1-1|1-2|1-3|1-4|1-5|1-6|1-7|1-8|1-9|1-a10|1-a11|1-a12|1-a13|1-a14|1-a15|1-a16|1-a17|1-a18|1-a19|1-a20|1-a21|2-1|2-2|2-3|2-4|2-5|2-6|2-7|2-8|2-9|2-a10|2-a11|2-a12|2-a13|2-a14|2-a15|2-a16|2-a17|2-a18|2-a19|3-1|3-2|3-3|3-4|3-5|3-6|3-7|4-1|4-2|4-3|4-4|4-5|4-6|5-1|5-2|5-3|5-4|5-5|6-1');
INSERT INTO `jdr` VALUES ('12387321', '123123', '·111', '18278178271', '728172871@qq.com', '1', '1-1|1-2|1-3|1-4|1-5|1-6|1-7|1-8|1-9|1-a10|1-a11|1-a12|1-a13|1-a14|1-a15|1-a16|1-a17|1-a18|1-a19|1-a20|1-a21|2-1|2-2|2-3|2-4|2-5|2-6|2-7|2-8|2-9|2-a10|2-a11|2-a12|2-a13|2-a14|2-a15|2-a16|2-a17|2-a18|2-a19|3-1|3-2|3-3|3-4|3-5|3-6|3-7|4-1|4-2|4-3|4-4|4-5|4-6|5-1|5-2|5-3|5-4|5-5|6-1');
INSERT INTO `jdr` VALUES ('1827362', '1700410404', '老黄', '18211114035', '8271829381@qq.com', '1', '2-2|1-1');
INSERT INTO `jdr` VALUES ('2754625', '1700610606', '兰师傅', '17787988867', '56667882235@qq.com', '1', '1-1|1-2|3-1|3-2|3-3');
INSERT INTO `jdr` VALUES ('4019283', '1700710707', '李四', '18278376526', '8273918276@qq.com', '1', '1-1');
INSERT INTO `jdr` VALUES ('41790787', '212016505', '中核 张岩', '18076757568', '497635775@qq.com', '1', '1-1|1-2|1-3|1-4|1-5|1-6|1-7|1-8|1-9|1-a10|1-a11|1-a12|1-a13|1-a14|1-a15|1-a16|1-a17|1-a18|1-a19|1-a20|1-a21|2-1|2-2|2-3|2-4|2-5|2-6|2-7|2-8|2-9|2-a10|2-a11|2-a12|2-a13|2-a14|2-a15|2-a16|2-a17|2-a18|2-a19|3-1|3-2|3-3|3-4|3-5|3-6|3-7|4-1|4-2|4-3|4-4|4-5|4-6|5-1|5-2|5-3|5-4|5-5|6-1');
INSERT INTO `jdr` VALUES ('7263526', '1700210202', '王五', '19203827421', '823178351@qq.com', '1', '1-1');
INSERT INTO `jdr` VALUES ('7281928', '1700310303', '老丁', '19283947862', '918273621@qq.com', '1', '4-2|4-1|3-1|3-2|1-1');
INSERT INTO `jdr` VALUES ('7584746', '1700510505', '张大爷', '18898987764', '556667785@qq.com', '1', '2-1|2-1|3-2|2-1|3-1|3-2');
INSERT INTO `jdr` VALUES ('827182721', '1728837821', '测试', '18273878271', '728172817@qq.com', '1', '4-1|4-2|4-3|4-4|4-5|4-6|5-1|5-2|5-3|5-4|5-5');
INSERT INTO `jdr` VALUES ('8768987', '1788767652', '老张叔', '18278768765', '827878672@qq.com', '1', '2-2|1-3');
INSERT INTO `jdr` VALUES ('8976564', '1700110101', '张三', '19283712352', '823178231@qq.com', '1', '2-3|2-4|2-5|1-4|1-9|4-2|3-2|3-6');

-- ----------------------------
-- Table structure for qdb
-- ----------------------------
DROP TABLE IF EXISTS `qdb`;
CREATE TABLE `qdb`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `qdsj` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '签到时间',
  `shyid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核员id',
  `xq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '校区',
  `state` int(0) NOT NULL DEFAULT 1 COMMENT '1签到，2签退',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '审核员签到表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qdb
-- ----------------------------
INSERT INTO `qdb` VALUES (55, '2021-08-14 18:18:49', '41790787', '临桂校区', 1);
INSERT INTO `qdb` VALUES (56, '2021-08-14 18:18:49', '4019283', '临桂校区', 1);
INSERT INTO `qdb` VALUES (57, '2021-08-14 18:18:49', '41790787', '临桂校区', 1);
INSERT INTO `qdb` VALUES (58, '2021-05-01 16:58:39', '41790787', '临桂校区', 1);
INSERT INTO `qdb` VALUES (59, '2021-05-14 03:35:35', '38714856', '临桂校区', 1);
INSERT INTO `qdb` VALUES (60, '2021-05-14 03:36:00', '4019283', '临桂校区', 1);
INSERT INTO `qdb` VALUES (61, '2021-08-14 18:18:49', '41790787', '临桂校区', 1);
INSERT INTO `qdb` VALUES (62, '2021-06-02 07:32:42', '123123', '临桂校区', 1);
INSERT INTO `qdb` VALUES (63, '2021-06-01 07:32:42', '123123', '临桂校区', 2);
INSERT INTO `qdb` VALUES (64, '2021-06-02 07:32:42', '38714856', '临桂校区', 1);
INSERT INTO `qdb` VALUES (65, '2021-06-02 07:32:42', '38714856', '临桂校区', 2);
INSERT INTO `qdb` VALUES (66, '2021-06-18 16:53:11', '123123', '临桂校区', 1);

-- ----------------------------
-- Table structure for qm_book
-- ----------------------------
DROP TABLE IF EXISTS `qm_book`;
CREATE TABLE `qm_book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xq` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qm_book
-- ----------------------------
INSERT INTO `qm_book` VALUES (3, '桂林医学院大学生安全管理规定及温馨告示', '<p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">为进一步加强我院大学生安全教育和管理，维护学院的安定、稳定和正常的教学、生活秩序，确保广大学生的生命财产安全，根据《普通高等学校学生管理规定》（教育部令第41号）、《学生伤害事故处理办法》（教育部令第12号）、《高等学校学生行为准则》及自治区有关文件要求，结合我院实际，现将桂林医学院大学生安全管理规定温馨告示如下：</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-family: 黑体; font-size: 21px;\">一、防溺水</span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（一）不私自下水游泳，不在校园水系游泳。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（二）不擅自与他人结伴游泳。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（三）不到无安全设施、无救援人员的水域游泳。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（四）不到不熟悉的水域游泳。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（五）不私自到学校周边山上、水库游玩，预防山洪和溺水事故。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（六）不熟悉水性的学生不擅自下水施救。遇到同伴溺水时避免手拉手盲目施救，要智慧救援，要立即寻求成人帮助。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（七）学会基本的自护、自救方法。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-family: 黑体; font-size: 21px;\">二、防火</span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（一）不购买、接触、携带易燃、易爆、有毒、有害等危险物品、化学药品。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（二）不在宿舍存放或使用大功率电器、炉灶或其他易燃、易爆危险物品。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（三）不私接电线、私自移动、改装宿舍固定设施。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（四）离开宿舍时及时关好所有电源。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（五）办公室、教室、宿舍等公共场所严禁吸烟，不得在宿舍及校园内外焚烧垃圾、杂物等。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-family: 黑体; font-size: 21px;\">三、防盗</span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（一）根据学院统一安排的宿舍、床位进行住宿，不得容留校外人员、异性在宿舍过夜。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（二）不在校外住宿，因特殊情况需校外住宿的，按学院规定履行申请手续，并于学院批准后方可校外住宿。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（三）大额现金、手机、电脑、银行卡（折）等贵重物品妥善保管，不随意放置于教室、宿舍桌面等易失窃之处。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（四）无人在宿舍时要锁好柜子、抽屉，关好门窗，夜间睡觉时锁好宿舍门；就餐时注意保管好自己的物品。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（五）一旦发生盗窃案件，应立即向学院保卫处报告，同时封锁和保护现场，积极配合相关部门的调查。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-family: 黑体; font-size: 21px;\">四、防骗</span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（一）不将个人证件及个人信息资料如家庭住址、父母电话、本人手机号等随意提供给他人，以防被人以招聘、社会实践等活动为名陷入传销活动。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（二）防止以“求助”或利诱为名的诈骗行为，一旦发现可疑，应及时向辅导员、父母或保卫处（派出所）报告。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（四）不轻信网络、手机上发来的莫名中奖信息；不轻信张贴广告、电话中的勤工助学、求职应聘等信息。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（五）诚信做人，踏实做事，不以任何欺骗手段获取他人钱、财、物等。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-family: 黑体; font-size: 21px;\">五、防传销</span></p><p style=\"line-height: 37px; text-indent: 32px;\"><span style=\"font-family: 宋体;\"><span style=\"color: black; font-size: 21px;\">&nbsp;</span><span style=\"color: black; font-size: 21px;\">（一）认真学习防传销的知识，了解传销的本质，认清传销真面目。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（二）认清传销的行骗常见方法，避免传销的陷阱。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（三）坚决抵制非法传销诱惑。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（四）积极宣传防传销知识，让身边更多的人认识了解传销，让不法分子无机可乘。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-family: 黑体; font-size: 21px;\">六、注意交通安全</span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">严格遵守交通规则，不乘坐无牌、无证、超载等存在安全隐患车辆，不违规驾驶电动车和摩托车等。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-family: 黑体; font-size: 21px;\">七、注意饮食卫生</span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">养成良好的饮食习惯，不暴饮暴食，不得在学生公寓饮酒，严禁酗酒。要注意饮食卫生，不喝生水，不吃变质、腐烂的食物，不随意购买、食用街头（校园周边围墙边）小摊贩出售的无卫生许可证的食品、饮料等，以防疾病的发生。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-family: 黑体; font-size: 21px;\">八、防人身侵害和防受骗</span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">注意外出往返途中人身和财物安全，不参与违法活动，不参与打架斗殴，不到非法营业性娱乐场所玩耍，提高防范人身侵害、防受骗和自护自救的意识和能力。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-family: 黑体; font-size: 21px;\">九、正确合法上网</span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">不登录不健康网站，不玩不良网络游戏，不浏览、不制作、不传播不良信息，不长时间上网，增强对不良信息的辨别能力，增强自护意识。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><strong><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">十、其他</span></span></strong></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（一）在校期间，严禁擅自离校，因特殊情况需离校的，必须按规定履行请假手续并经批准后方可离开；严禁无故旷课，因特殊原因无法正常到课的，需按规定事前履行请假手续。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（二）不在校园、楼道、教室等场所进行危险性游戏、操作或攀爬；不攀爬建筑物或其他设施等。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（三）考试期间不夹带、抄袭、由他人代考、替他人代考、组织作弊等考试舞弊行为。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（四）不参加非法邪教、传销等组织；未经有关部门批准，不在校园内举行集会、演讲、游行、示威等相关活动。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（五）主动了解网贷危害，一旦陷入网贷，及时与家长、辅导员反映情况，取得帮助。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（六）参加文明健康的娱乐活动，不参加任何形式的赌博活动；不观看、传播和复制淫秽、封建、反动图书和音像制品等。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（七）有特异体质或特殊疾病不适合参加相关运动的（包括已经突发、偶发过的或常发的疾病），应及时告知辅导员或体育老师，必要时应办理休学调养手续。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">（八）在假期外出旅行，要注意自身的生命安全和财产安全以及防止意外事故的发生。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">未尽事宜，以《桂林医学院学生管理文件汇编》为准。</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">&nbsp;</span></span></p><p style=\"line-height: 37px; text-indent: 43px;\"><span style=\"color: black; font-size: 21px;\"><span style=\"font-family: 宋体;\">本人已经知晓以上所有管理规定和温馨告示，并保证严格遵守，且已将上述内容如实告知家长。若因违反以上管理规定而引发的不良后果，本人愿意承担相应责任。</span></span></p><p></p>', '2018-03-20 18:07:24');

-- ----------------------------
-- Table structure for qm_canvas
-- ----------------------------
DROP TABLE IF EXISTS `qm_canvas`;
CREATE TABLE `qm_canvas`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `bid` int(0) NOT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `CBFP`(`bid`) USING BTREE,
  CONSTRAINT `CBFP` FOREIGN KEY (`bid`) REFERENCES `qm_book` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qm_canvas
-- ----------------------------
INSERT INTO `qm_canvas` VALUES (6, 3, '3264600', '郑正鹏', NULL, NULL, NULL, '1527764643265', '2018-06-01 03:04:03');
INSERT INTO `qm_canvas` VALUES (7, 3, '16116011053', '温逸菡', NULL, NULL, NULL, '1535165242486', '2018-08-25 18:47:23');
INSERT INTO `qm_canvas` VALUES (8, 3, '452226199809045440', '何东岚', NULL, NULL, NULL, '1539182813218', '2018-10-11 06:46:53');
INSERT INTO `qm_canvas` VALUES (9, 3, '450923200002094869', '廖蔓芸', NULL, NULL, NULL, '1539182849316', '2018-10-11 06:47:29');
INSERT INTO `qm_canvas` VALUES (10, 3, '450722199904111514', '黄家宁', NULL, NULL, NULL, '1539183134344', '2018-10-11 06:52:14');
INSERT INTO `qm_canvas` VALUES (11, 3, '450421199806244521', '罗晓莲', NULL, NULL, NULL, '1539183598289', '2018-10-11 06:59:58');
INSERT INTO `qm_canvas` VALUES (12, 3, '17111031033', '廖梁琦', NULL, NULL, NULL, '1539183722294', '2018-10-11 07:02:02');
INSERT INTO `qm_canvas` VALUES (13, 3, '45270219990714457X', '周浩', NULL, NULL, NULL, '1539183725741', '2018-10-11 07:02:05');
INSERT INTO `qm_canvas` VALUES (14, 3, '452631199901283145', '黄飞飞', NULL, NULL, NULL, '1539183974983', '2018-10-11 07:06:14');
INSERT INTO `qm_canvas` VALUES (15, 3, '452126199908013027', '林婷', NULL, NULL, NULL, '1539184249044', '2018-10-11 07:10:49');
INSERT INTO `qm_canvas` VALUES (16, 3, '340321200001066531', '唐瑞', NULL, NULL, NULL, '1539184327450', '2018-10-11 07:12:07');
INSERT INTO `qm_canvas` VALUES (17, 3, '450881199908035323', '徐金月', NULL, NULL, NULL, '1539184481220', '2018-10-11 07:14:41');
INSERT INTO `qm_canvas` VALUES (18, 3, '430521199910126850', '申志远', NULL, NULL, NULL, '1539184531514', '2018-10-11 07:15:31');
INSERT INTO `qm_canvas` VALUES (19, 3, '452123200002115269', '唐娅琳', NULL, NULL, NULL, '1539185122552', '2018-10-11 07:25:22');
INSERT INTO `qm_canvas` VALUES (20, 3, '17111011053', '罗丹玲', NULL, NULL, NULL, '1539185535875', '2018-10-11 07:32:15');
INSERT INTO `qm_canvas` VALUES (21, 3, '452730199910165027', '石晶莹', NULL, NULL, NULL, '1539185583970', '2018-10-11 07:33:03');
INSERT INTO `qm_canvas` VALUES (22, 3, '460104200007140317', '钟捷斌', NULL, NULL, NULL, '1539185839701', '2018-10-11 07:37:19');
INSERT INTO `qm_canvas` VALUES (23, 3, '17113021031', '李彦滢', NULL, NULL, NULL, '1539185909589', '2018-10-11 07:38:29');
INSERT INTO `qm_canvas` VALUES (24, 3, '450922199910120514', '李玉南', NULL, NULL, NULL, '1539186067945', '2018-10-11 07:41:07');
INSERT INTO `qm_canvas` VALUES (25, 3, '17118041040', '阳智强', NULL, NULL, NULL, '1539186370320', '2018-10-11 07:46:10');
INSERT INTO `qm_canvas` VALUES (26, 3, '450881200005125024', '黄江梅', NULL, NULL, NULL, '1539186518677', '2018-10-11 07:48:38');
INSERT INTO `qm_canvas` VALUES (27, 3, '452123199906093124', '李芯园', NULL, NULL, NULL, '1539186762287', '2018-10-11 07:52:42');
INSERT INTO `qm_canvas` VALUES (28, 3, '469024199911056810', '陈海明', NULL, NULL, NULL, '1539186781085', '2018-10-11 07:53:01');
INSERT INTO `qm_canvas` VALUES (29, 3, '452126199905180321', '凌乐', NULL, NULL, NULL, '1539187310737', '2018-10-11 08:01:50');
INSERT INTO `qm_canvas` VALUES (30, 3, '18451122150704', '廖娟婷', NULL, NULL, NULL, '1539188574246', '2018-10-11 08:22:54');
INSERT INTO `qm_canvas` VALUES (31, 3, '533222199906110027', '龚月', NULL, NULL, NULL, '1539190695958', '2018-10-11 08:58:15');
INSERT INTO `qm_canvas` VALUES (32, 3, '17115011066', '陈智洋', NULL, NULL, NULL, '1539216752762', '2018-10-11 16:12:32');
INSERT INTO `qm_canvas` VALUES (33, 3, '18451023150924', '廖显科', NULL, NULL, NULL, '1539218160665', '2018-10-11 16:36:00');
INSERT INTO `qm_canvas` VALUES (34, 3, '452122199904183621', '雷雯', NULL, NULL, NULL, '1539218221006', '2018-10-11 16:37:01');
INSERT INTO `qm_canvas` VALUES (35, 3, '450922200002161519', '谢天龙', NULL, NULL, NULL, '1539218242612', '2018-10-11 16:37:22');
INSERT INTO `qm_canvas` VALUES (36, 3, '450922199909100874', '黄华先', NULL, NULL, NULL, '1539323626928', '2018-10-12 21:53:46');
INSERT INTO `qm_canvas` VALUES (37, 3, '45012719991124092X', '陈金玲', NULL, NULL, NULL, '1539324993584', '2018-10-12 22:16:33');

-- ----------------------------
-- Table structure for shy
-- ----------------------------
DROP TABLE IF EXISTS `shy`;
CREATE TABLE `shy`  (
  `ybid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '易班id',
  `gh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `xm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `zw` int(0) NOT NULL DEFAULT 1 COMMENT '1普通职员，2高级职员',
  `xq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前校区',
  `x` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'X坐标',
  `y` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Y坐标',
  PRIMARY KEY (`ybid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '审核员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shy
-- ----------------------------
INSERT INTO `shy` VALUES ('38714856', '212012503', '徐仰月', 1, '临桂校区', NULL, NULL);
INSERT INTO `shy` VALUES ('4019283', '1700837625', '丁审核', 1, '临桂校区', NULL, NULL);
INSERT INTO `shy` VALUES ('41820927', '212014505', '马良', 1, '临桂校区', NULL, NULL);

-- ----------------------------
-- Table structure for xlyy
-- ----------------------------
DROP TABLE IF EXISTS `xlyy`;
CREATE TABLE `xlyy`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `one` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `two` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` timestamp(0) NULL DEFAULT NULL,
  `state` int(0) NOT NULL DEFAULT 0,
  `xq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xlyy
-- ----------------------------
INSERT INTO `xlyy` VALUES (1, '李由', '17118031084', '心理测验', '心理健康状况测查', '17774713300', '2018-04-24 16:30:00', 0, '临桂校区', '17公共事业管理', NULL);
INSERT INTO `xlyy` VALUES (2, '李由', '17118031084', '', '', '', '2018-04-27 23:00:00', 0, '临桂校区', '', NULL);
INSERT INTO `xlyy` VALUES (3, '邓榕', '1543053', '心理咨询', '', '18290069274', '2018-05-22 03:30:00', 0, '临桂校区', '卫检', NULL);
INSERT INTO `xlyy` VALUES (4, '黄馨漫', '17118041020', '心理测验', '人格测验', '18897730053', '2018-06-02 03:30:00', 0, '临桂校区', '17社会工作', NULL);
INSERT INTO `xlyy` VALUES (5, '陈静华', '1511161', '心理咨询', NULL, '18174168835', '2018-10-03 23:30:00', 0, '乐群校区', '15临床一班', NULL);
INSERT INTO `xlyy` VALUES (6, '陈静华', '1511161', '心理咨询', '人际关系咨询', '18174168835', '2018-10-10 23:00:00', 0, '乐群校区', '15临床一班', NULL);
INSERT INTO `xlyy` VALUES (7, '胡志琼', '17113014386', '心理测验', '人格测验', '1777477220', '2018-10-13 18:00:00', 0, '临桂校区', '17护本四', NULL);

SET FOREIGN_KEY_CHECKS = 1;
