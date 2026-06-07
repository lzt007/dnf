/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.200.131
 Source Server Type    : MySQL
 Source Server Version : 50527 (5.5.27)
 Source Host           : 192.168.200.131:3306
 Source Schema         : taiwan_cain_auction_cera

 Target Server Type    : MySQL
 Target Server Version : 50527 (5.5.27)
 File Encoding         : 65001

 Date: 31/05/2026 18:48:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auction_average_price
-- ----------------------------
DROP TABLE IF EXISTS `auction_average_price`;
CREATE TABLE `auction_average_price`  (
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `average_price` int(11) NULL DEFAULT NULL,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_id`, `upgrade`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auction_average_price
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history
-- ----------------------------
DROP TABLE IF EXISTS `auction_history`;
CREATE TABLE `auction_history`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `unit_price` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`auction_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auction_history
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201608
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201608`;
CREATE TABLE `auction_history_201608`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction_history_201608
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201903
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201903`;
CREATE TABLE `auction_history_201903`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_201903
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201904
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201904`;
CREATE TABLE `auction_history_201904`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_201904
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201905
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201905`;
CREATE TABLE `auction_history_201905`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_201905
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201906
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201906`;
CREATE TABLE `auction_history_201906`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_201906
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201907
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201907`;
CREATE TABLE `auction_history_201907`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_201907
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201908
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201908`;
CREATE TABLE `auction_history_201908`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_201908
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201909
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201909`;
CREATE TABLE `auction_history_201909`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_201909
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201910
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201910`;
CREATE TABLE `auction_history_201910`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_201910
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201911
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201911`;
CREATE TABLE `auction_history_201911`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_201911
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_201912
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201912`;
CREATE TABLE `auction_history_201912`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `event_type` tinyint(4) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `seal_flag` tinyint(4) NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `owner_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE,
  INDEX `idx_occ_time`(`occ_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_201912
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer`;
CREATE TABLE `auction_history_buyer`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `commission` int(11) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auction_history_buyer
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201608
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201608`;
CREATE TABLE `auction_history_buyer_201608`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auction_history_buyer_201608
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201903
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201903`;
CREATE TABLE `auction_history_buyer_201903`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_buyer_201903
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201904
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201904`;
CREATE TABLE `auction_history_buyer_201904`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_buyer_201904
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201905
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201905`;
CREATE TABLE `auction_history_buyer_201905`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_buyer_201905
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201906
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201906`;
CREATE TABLE `auction_history_buyer_201906`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_buyer_201906
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201907
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201907`;
CREATE TABLE `auction_history_buyer_201907`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_buyer_201907
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201908
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201908`;
CREATE TABLE `auction_history_buyer_201908`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_buyer_201908
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201909
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201909`;
CREATE TABLE `auction_history_buyer_201909`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_buyer_201909
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201910
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201910`;
CREATE TABLE `auction_history_buyer_201910`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_buyer_201910
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201911
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201911`;
CREATE TABLE `auction_history_buyer_201911`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_buyer_201911
-- ----------------------------

-- ----------------------------
-- Table structure for auction_history_buyer_201912
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201912`;
CREATE TABLE `auction_history_buyer_201912`  (
  `auction_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `occ_time` datetime NULL DEFAULT NULL,
  `pre_buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `pre_price` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `pre_buyer_postal_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `idx_auction_id`(`auction_id`) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of auction_history_buyer_201912
-- ----------------------------

-- ----------------------------
-- Table structure for auction_main
-- ----------------------------
DROP TABLE IF EXISTS `auction_main`;
CREATE TABLE `auction_main`  (
  `auction_id` bigint(20) NOT NULL DEFAULT 0,
  `occ_time` datetime NULL DEFAULT NULL,
  `expire_time` int(11) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `owner_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner_type` tinyint(4) NOT NULL DEFAULT 0,
  `owner_nexon_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_id` int(11) NULL DEFAULT NULL,
  `buyer_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` bigint(20) NULL DEFAULT NULL,
  `instant_price` bigint(20) NULL DEFAULT NULL,
  `seal_flag` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `add_info` int(11) NULL DEFAULT NULL,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `amplify_option` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `amplify_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `extend_info` int(10) UNSIGNED NULL DEFAULT NULL,
  `black_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit_price` int(11) NULL DEFAULT NULL,
  `random_option` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(11) NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction_main
-- ----------------------------

-- ----------------------------
-- Table structure for auction_manual_average_price
-- ----------------------------
DROP TABLE IF EXISTS `auction_manual_average_price`;
CREATE TABLE `auction_manual_average_price`  (
  `no` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `upgrade` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `average_price` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `is_apply` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`no`) USING BTREE,
  INDEX `idx_serverid_isapply`(`is_apply`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auction_manual_average_price
-- ----------------------------

-- ----------------------------
-- Table structure for auction_roi_average_price
-- ----------------------------
DROP TABLE IF EXISTS `auction_roi_average_price`;
CREATE TABLE `auction_roi_average_price`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `roi_high_key` bigint(20) NOT NULL DEFAULT 0,
  `roi_low_key` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `roi_index1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `roi_index2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `roi_index3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `average_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `real_purchase_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `seperate_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`no`) USING BTREE,
  UNIQUE INDEX `item_id`(`item_id`, `upgrade`, `roi_high_key`, `roi_low_key`, `roi_index1`, `roi_index2`, `roi_index3`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auction_roi_average_price
-- ----------------------------

-- ----------------------------
-- Table structure for auction_roi_constraint
-- ----------------------------
DROP TABLE IF EXISTS `auction_roi_constraint`;
CREATE TABLE `auction_roi_constraint`  (
  `db_inf_max_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `db_inf_min_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `db_inf_prob` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `db_inf_limit_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `db_inf_base_mul_min_a` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `db_inf_base_mul_max_b` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_update_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auction_roi_constraint
-- ----------------------------

-- ----------------------------
-- Table structure for auction_system_iteminfo
-- ----------------------------
DROP TABLE IF EXISTS `auction_system_iteminfo`;
CREATE TABLE `auction_system_iteminfo`  (
  `sys_auction_id` int(11) NULL DEFAULT 0,
  `probability` smallint(5) UNSIGNED NULL DEFAULT 0,
  `price` int(11) NULL DEFAULT 0,
  `seal_flag` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `item_id` int(10) UNSIGNED NULL DEFAULT 0,
  `add_info` int(11) NULL DEFAULT 0,
  `upgrade` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `seal_cnt` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `endurance` smallint(5) UNSIGNED NULL DEFAULT 0,
  `extend_info` int(10) UNSIGNED NULL DEFAULT 0,
  INDEX `idx1`(`sys_auction_id`, `item_id`) USING BTREE,
  INDEX `idx2`(`item_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auction_system_iteminfo
-- ----------------------------

-- ----------------------------
-- Table structure for auction_system_main
-- ----------------------------
DROP TABLE IF EXISTS `auction_system_main`;
CREATE TABLE `auction_system_main`  (
  `sys_auction_id` int(11) NOT NULL AUTO_INCREMENT,
  `occ_time` datetime NULL DEFAULT '0000-00-00 00:00:00',
  `regist_interval` int(11) NULL DEFAULT 0,
  `regist_time` time NULL DEFAULT '00:00:00',
  `start_date` date NULL DEFAULT '0000-00-00',
  `end_date` date NULL DEFAULT '0000-00-00',
  `expire_interval` smallint(5) UNSIGNED NULL DEFAULT 0,
  `last_auction_time` datetime NULL DEFAULT '0000-00-00 00:00:00',
  `expected_regist_time` time NULL DEFAULT '00:00:00',
  PRIMARY KEY (`sys_auction_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auction_system_main
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
