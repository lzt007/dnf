/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.200.131
 Source Server Type    : MySQL
 Source Server Version : 50527 (5.5.27)
 Source Host           : 192.168.200.131:3306
 Source Schema         : taiwan_se_event

 Target Server Type    : MySQL
 Target Server Version : 50527 (5.5.27)
 File Encoding         : 65001

 Date: 31/05/2026 18:50:09
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for event_1112_ontime_info
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_info`;
CREATE TABLE `event_1112_ontime_info`  (
  `no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_info
-- ----------------------------

-- ----------------------------
-- Table structure for event_1112_ontime_reward_user
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_reward_user`;
CREATE TABLE `event_1112_ontime_reward_user`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `recv_no` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_reward_user
-- ----------------------------

-- ----------------------------
-- Table structure for event_1112_ontime_user_0
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_0`;
CREATE TABLE `event_1112_ontime_user_0`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_user_0
-- ----------------------------
INSERT INTO `event_1112_ontime_user_0` VALUES (18000000, 1);
INSERT INTO `event_1112_ontime_user_0` VALUES (18000010, 1);
INSERT INTO `event_1112_ontime_user_0` VALUES (18000020, 1);
INSERT INTO `event_1112_ontime_user_0` VALUES (18000030, 1);

-- ----------------------------
-- Table structure for event_1112_ontime_user_1
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_1`;
CREATE TABLE `event_1112_ontime_user_1`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_user_1
-- ----------------------------
INSERT INTO `event_1112_ontime_user_1` VALUES (18000001, 1);
INSERT INTO `event_1112_ontime_user_1` VALUES (18000011, 1);
INSERT INTO `event_1112_ontime_user_1` VALUES (18000021, 1);
INSERT INTO `event_1112_ontime_user_1` VALUES (18000031, 1);

-- ----------------------------
-- Table structure for event_1112_ontime_user_2
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_2`;
CREATE TABLE `event_1112_ontime_user_2`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_user_2
-- ----------------------------
INSERT INTO `event_1112_ontime_user_2` VALUES (18000002, 1);
INSERT INTO `event_1112_ontime_user_2` VALUES (18000022, 1);

-- ----------------------------
-- Table structure for event_1112_ontime_user_3
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_3`;
CREATE TABLE `event_1112_ontime_user_3`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_user_3
-- ----------------------------
INSERT INTO `event_1112_ontime_user_3` VALUES (18000003, 1);
INSERT INTO `event_1112_ontime_user_3` VALUES (18000013, 1);
INSERT INTO `event_1112_ontime_user_3` VALUES (18000023, 1);
INSERT INTO `event_1112_ontime_user_3` VALUES (18000033, 1);

-- ----------------------------
-- Table structure for event_1112_ontime_user_4
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_4`;
CREATE TABLE `event_1112_ontime_user_4`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_user_4
-- ----------------------------
INSERT INTO `event_1112_ontime_user_4` VALUES (18000004, 1);
INSERT INTO `event_1112_ontime_user_4` VALUES (18000014, 1);
INSERT INTO `event_1112_ontime_user_4` VALUES (18000024, 1);
INSERT INTO `event_1112_ontime_user_4` VALUES (18000034, 1);

-- ----------------------------
-- Table structure for event_1112_ontime_user_5
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_5`;
CREATE TABLE `event_1112_ontime_user_5`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_user_5
-- ----------------------------
INSERT INTO `event_1112_ontime_user_5` VALUES (18000005, 1);
INSERT INTO `event_1112_ontime_user_5` VALUES (18000015, 1);
INSERT INTO `event_1112_ontime_user_5` VALUES (18000025, 1);
INSERT INTO `event_1112_ontime_user_5` VALUES (18000035, 1);

-- ----------------------------
-- Table structure for event_1112_ontime_user_6
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_6`;
CREATE TABLE `event_1112_ontime_user_6`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_user_6
-- ----------------------------
INSERT INTO `event_1112_ontime_user_6` VALUES (18000016, 1);
INSERT INTO `event_1112_ontime_user_6` VALUES (18000026, 1);
INSERT INTO `event_1112_ontime_user_6` VALUES (18000036, 1);

-- ----------------------------
-- Table structure for event_1112_ontime_user_7
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_7`;
CREATE TABLE `event_1112_ontime_user_7`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_user_7
-- ----------------------------
INSERT INTO `event_1112_ontime_user_7` VALUES (18000007, 1);
INSERT INTO `event_1112_ontime_user_7` VALUES (18000017, 1);
INSERT INTO `event_1112_ontime_user_7` VALUES (18000027, 1);

-- ----------------------------
-- Table structure for event_1112_ontime_user_8
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_8`;
CREATE TABLE `event_1112_ontime_user_8`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_user_8
-- ----------------------------
INSERT INTO `event_1112_ontime_user_8` VALUES (18000008, 1);
INSERT INTO `event_1112_ontime_user_8` VALUES (18000018, 1);
INSERT INTO `event_1112_ontime_user_8` VALUES (18000028, 1);

-- ----------------------------
-- Table structure for event_1112_ontime_user_9
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_9`;
CREATE TABLE `event_1112_ontime_user_9`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_ontime_user_9
-- ----------------------------
INSERT INTO `event_1112_ontime_user_9` VALUES (18000009, 1);
INSERT INTO `event_1112_ontime_user_9` VALUES (18000019, 1);
INSERT INTO `event_1112_ontime_user_9` VALUES (18000029, 1);

-- ----------------------------
-- Table structure for event_ontime_item
-- ----------------------------
DROP TABLE IF EXISTS `event_ontime_item`;
CREATE TABLE `event_ontime_item`  (
  `idx` int(10) UNSIGNED NOT NULL DEFAULT 8211,
  `cnt` int(10) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_ontime_item
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
