/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.200.131
 Source Server Type    : MySQL
 Source Server Version : 50527 (5.5.27)
 Source Host           : 192.168.200.131:3306
 Source Schema         : taiwan_siroco

 Target Server Type    : MySQL
 Target Server Version : 50527 (5.5.27)
 File Encoding         : 65001

 Date: 31/05/2026 18:50:17
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blacklist
-- ----------------------------
DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE `blacklist`  (
  `BID` int(11) NOT NULL AUTO_INCREMENT,
  `BUID` int(11) NOT NULL,
  `BMac_md5` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`BID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for member_play_info
-- ----------------------------
DROP TABLE IF EXISTS `member_play_info`;
CREATE TABLE `member_play_info`  (
  `MID` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL,
  `play_count` int(11) NOT NULL,
  `charac_num` int(11) NOT NULL,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login_time` datetime NULL DEFAULT NULL,
  `mac_addr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ap_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sims` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reg_time` date NOT NULL,
  `charac_no` int(11) NOT NULL,
  `charac_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` tinyint(4) NOT NULL,
  PRIMARY KEY (`MID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of member_play_info
-- ----------------------------

-- ----------------------------
-- Table structure for new_cdk
-- ----------------------------
DROP TABLE IF EXISTS `new_cdk`;
CREATE TABLE `new_cdk`  (
  `CID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ç¼–å·',
  `CIMEI` int(11) NOT NULL COMMENT 'CDKç¼–å·',
  `CRenum` int(11) NOT NULL COMMENT 'åŒä¸€ç”¨æˆ·é¢†å–æ¬¡æ•°',
  `CTitle` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'CDKæ ‡é¢˜',
  `CCdk` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'CDKå†…å®¹',
  `CCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ç‰©å“ä»£ç ',
  `CNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ç‰©å“æ•°é‡',
  `CStreng` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'å¼ºåŒ–',
  `CForging` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'é”»é€ ',
  `CRedtype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'çº¢å­—ç±»åž‹',
  `CRednum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'çº¢å­—æ•°å€¼',
  `CLock` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'æ˜¯å¦å°è£…',
  `CGold` int(11) NOT NULL COMMENT 'é‡‘å¸',
  `CReward` int(11) NOT NULL COMMENT 'é¢†å–ç¤¼åŒ…çš„UID',
  PRIMARY KEY (`CID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of new_cdk
-- ----------------------------

-- ----------------------------
-- Table structure for waigua_feature
-- ----------------------------
DROP TABLE IF EXISTS `waigua_feature`;
CREATE TABLE `waigua_feature`  (
  `m_id` int(11) NOT NULL,
  `charac_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kaigua_time` datetime NOT NULL,
  `test_method` int(11) NOT NULL,
  `kaigua_feature` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of waigua_feature
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
