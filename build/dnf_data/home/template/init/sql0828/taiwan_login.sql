/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.200.131
 Source Server Type    : MySQL
 Source Server Version : 50527 (5.5.27)
 Source Host           : 192.168.200.131:3306
 Source Schema         : taiwan_login

 Target Server Type    : MySQL
 Target Server Version : 50527 (5.5.27)
 File Encoding         : 65001

 Date: 31/05/2026 18:49:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for allow_proxy_user
-- ----------------------------
DROP TABLE IF EXISTS `allow_proxy_user`;
CREATE TABLE `allow_proxy_user`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of allow_proxy_user
-- ----------------------------

-- ----------------------------
-- Table structure for auto_punish_blackip_info
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_blackip_info`;
CREATE TABLE `auto_punish_blackip_info`  (
  `ip` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `start_ip` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `end_ip` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `apply_flag` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ip`, `start_ip`, `end_ip`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auto_punish_blackip_info
-- ----------------------------

-- ----------------------------
-- Table structure for auto_punish_first_user
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_first_user`;
CREATE TABLE `auto_punish_first_user`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hack_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `punish_flag` tinyint(4) NOT NULL DEFAULT 0,
  `hack_sub_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hack_sub_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`, `hack_type`, `hack_sub_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auto_punish_first_user
-- ----------------------------

-- ----------------------------
-- Table structure for auto_punish_hack_full_ip
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_hack_full_ip`;
CREATE TABLE `auto_punish_hack_full_ip`  (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `hack_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hack_sub_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `full_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`occ_date`, `hack_type`, `hack_sub_type`, `full_ip`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auto_punish_hack_full_ip
-- ----------------------------

-- ----------------------------
-- Table structure for auto_punish_hack_info
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_hack_info`;
CREATE TABLE `auto_punish_hack_info`  (
  `hack_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `etc` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `apply_flag` tinyint(4) NOT NULL DEFAULT 0,
  `hack_sub_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hack_sub_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`hack_type`, `apply_flag`, `hack_sub_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auto_punish_hack_info
-- ----------------------------

-- ----------------------------
-- Table structure for auto_punish_hack_ip
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_hack_ip`;
CREATE TABLE `auto_punish_hack_ip`  (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `hack_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hack_sub_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `c_class_ip` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`occ_date`, `hack_type`, `hack_sub_type`, `c_class_ip`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auto_punish_hack_ip
-- ----------------------------

-- ----------------------------
-- Table structure for auto_punish_second_log
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_second_log`;
CREATE TABLE `auto_punish_second_log`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `hack_m_id` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trade_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_gold` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`, `hack_m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auto_punish_second_log
-- ----------------------------

-- ----------------------------
-- Table structure for auto_punish_second_user
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_second_user`;
CREATE TABLE `auto_punish_second_user`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_trade_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_trade_gold` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `trade_gold` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `punish_flag` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE,
  INDEX `idx_punish_flag`(`punish_flag`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auto_punish_second_user
-- ----------------------------

-- ----------------------------
-- Table structure for churn_member_info
-- ----------------------------
DROP TABLE IF EXISTS `churn_member_info`;
CREATE TABLE `churn_member_info`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `accrue_cera` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `play_info` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `first_reward_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_reward_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `add_info` tinyint(4) NOT NULL DEFAULT 0,
  `luck_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_update_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `second_reward_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quest_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of churn_member_info
-- ----------------------------
INSERT INTO `churn_member_info` VALUES (18000000, 44600, '000000000000000000000000011111', 0, 0, 0, 0, 0, 0, 0, 1701643035, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000001, 0, '000111110001110000000001110001', 0, 0, 0, 0, 0, 0, 0, 1770027625, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000002, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1779342319, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000003, 0, '000000000000000000000000001111', 0, 0, 0, 0, 0, 0, 0, 1779898540, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000004, 0, '000000000000000000000000000111', 0, 0, 0, 0, 0, 0, 0, 1779986949, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000005, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780044191, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000007, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780048855, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000008, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780054465, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000009, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780057156, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000010, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780058083, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000011, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780058476, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000013, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780061588, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000014, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780064923, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000015, 0, '000000000000000000000000000111', 0, 0, 0, 0, 0, 0, 0, 1780071285, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000016, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780084048, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000017, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780123031, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000018, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780126338, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000019, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780126480, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000020, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780128075, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000021, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780130894, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000022, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780132280, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000023, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780133608, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000024, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780134160, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000025, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780134640, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000026, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780136498, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000027, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780138280, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000028, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780139540, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000029, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780140707, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000030, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780141107, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000031, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780141295, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000033, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780144053, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000034, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780144212, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000035, 0, '000000000000000000000000000011', 0, 0, 0, 0, 0, 0, 0, 1780145138, 0, 0);
INSERT INTO `churn_member_info` VALUES (18000036, 0, '000000000000000000000000000111', 0, 0, 0, 0, 0, 0, 0, 1780202704, 0, 0);

-- ----------------------------
-- Table structure for churn_reward_history
-- ----------------------------
DROP TABLE IF EXISTS `churn_reward_history`;
CREATE TABLE `churn_reward_history`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `add_info` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `luck_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reward_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cera` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`, `occ_time`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of churn_reward_history
-- ----------------------------

-- ----------------------------
-- Table structure for churn_reward_manager
-- ----------------------------
DROP TABLE IF EXISTS `churn_reward_manager`;
CREATE TABLE `churn_reward_manager`  (
  `min_day` tinyint(4) NOT NULL DEFAULT 0,
  `max_day` tinyint(4) NOT NULL DEFAULT 0,
  `min_val` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max_val` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `add_info` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `luck_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quest_id` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`min_day`, `max_day`, `min_val`, `max_val`, `quest_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of churn_reward_manager
-- ----------------------------

-- ----------------------------
-- Table structure for churn_system_manager
-- ----------------------------
DROP TABLE IF EXISTS `churn_system_manager`;
CREATE TABLE `churn_system_manager`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `weekday_var_a` int(11) NOT NULL DEFAULT 0,
  `weekday_var_b` int(11) NOT NULL DEFAULT 0,
  `weekday_var_c` int(11) NOT NULL DEFAULT 0,
  `weekend_var_x` int(11) NOT NULL DEFAULT 0,
  `weekend_var_y` int(11) NOT NULL DEFAULT 0,
  `weekend_var_z` int(11) NOT NULL DEFAULT 0,
  `next_reward_day` int(11) NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state_flag` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of churn_system_manager
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_event_entry
-- ----------------------------
DROP TABLE IF EXISTS `dnf_event_entry`;
CREATE TABLE `dnf_event_entry`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `obtain_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`, `m_id`) USING BTREE,
  INDEX `idx_m_id`(`m_id`) USING BTREE,
  INDEX `idx_charac_no`(`charac_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of dnf_event_entry
-- ----------------------------
INSERT INTO `dnf_event_entry` VALUES (50023, 18000000, '2023-12-01 15:21:56', 0, 1, '2023-12-01 15:21:56');
INSERT INTO `dnf_event_entry` VALUES (50010, 18000000, '2023-12-01 15:22:12', 0, 1, '2023-12-01 15:22:12');

-- ----------------------------
-- Table structure for event_server_message
-- ----------------------------
DROP TABLE IF EXISTS `event_server_message`;
CREATE TABLE `event_server_message`  (
  `server_info` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `channel_no` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `kind` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `message_index` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `charac_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `message` char(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_server_message
-- ----------------------------

-- ----------------------------
-- Table structure for gm_manifest
-- ----------------------------
DROP TABLE IF EXISTS `gm_manifest`;
CREATE TABLE `gm_manifest`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gm_manifest
-- ----------------------------

-- ----------------------------
-- Table structure for hack_cleanpad_ratio_info
-- ----------------------------
DROP TABLE IF EXISTS `hack_cleanpad_ratio_info`;
CREATE TABLE `hack_cleanpad_ratio_info`  (
  `hack_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `value` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`hack_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hack_cleanpad_ratio_info
-- ----------------------------

-- ----------------------------
-- Table structure for human_certify_try_count
-- ----------------------------
DROP TABLE IF EXISTS `human_certify_try_count`;
CREATE TABLE `human_certify_try_count`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of human_certify_try_count
-- ----------------------------
INSERT INTO `human_certify_try_count` VALUES (18000000, 4);

-- ----------------------------
-- Table structure for ip_monitor_punish
-- ----------------------------
DROP TABLE IF EXISTS `ip_monitor_punish`;
CREATE TABLE `ip_monitor_punish`  (
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `m_id_cnt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ip`, `type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ip_monitor_punish
-- ----------------------------

-- ----------------------------
-- Table structure for log_growth
-- ----------------------------
DROP TABLE IF EXISTS `log_growth`;
CREATE TABLE `log_growth`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `charac_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `job` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `grow_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`, `server_info`, `charac_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_growth
-- ----------------------------

-- ----------------------------
-- Table structure for log_query_dbmw_ref
-- ----------------------------
DROP TABLE IF EXISTS `log_query_dbmw_ref`;
CREATE TABLE `log_query_dbmw_ref`  (
  `query_hash` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `q_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `query` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`q_id`) USING BTREE,
  UNIQUE INDEX `query_hash`(`query_hash`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_query_dbmw_ref
-- ----------------------------

-- ----------------------------
-- Table structure for log_query_ref
-- ----------------------------
DROP TABLE IF EXISTS `log_query_ref`;
CREATE TABLE `log_query_ref`  (
  `query_hash` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `q_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `query` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`q_id`) USING BTREE,
  UNIQUE INDEX `query_hash`(`query_hash`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 328 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_query_ref
-- ----------------------------
INSERT INTO `log_query_ref` VALUES ('*B8583582EDEAD9C', 1, 'seLect slang from slang_list_name');
INSERT INTO `log_query_ref` VALUES ('*D97DCEA3E7673B2', 2, 'seLect @@identity');
INSERT INTO `log_query_ref` VALUES ('*1A3E38BFC88DE52', 3, 'seLect slang from slang_list');
INSERT INTO `log_query_ref` VALUES ('*1682A2ECA954997', 4, 'seLect m_id, level from gm_manifest');
INSERT INTO `log_query_ref` VALUES ('*C0D155921D7BA43', 5, 'seLect level, exp from monster_reward_ref');
INSERT INTO `log_query_ref` VALUES ('*89D927522E9A6A5', 6, 'upDate login_account_%d set login_status=0 where m_channel_no=%d');
INSERT INTO `log_query_ref` VALUES ('*EC2BF0BDCB96F85', 7, 'seLect event_id, event_name from dnf_event_info');
INSERT INTO `log_query_ref` VALUES ('*9D85D7D192A29BF', 8, 'seLect event_type, parameter1, parameter2 from dnf_event_log where end_time = 0 and server_id in (0,%d) and unix_timestamp() >= start_time order by start_time');
INSERT INTO `log_query_ref` VALUES ('*0049E86CEB03667', 9, 'seLect guild_id, guild_name, lev , power_side, guild_agit_flag from guild_info where expire_flag = 0 and server_id = %d');
INSERT INTO `log_query_ref` VALUES ('*B228608CBA743A8', 10, 'seLect * from in_game_ad where visible = 1');
INSERT INTO `log_query_ref` VALUES ('*B36C615E3CBDD69', 11, 'seLect item_id,upgrade,average_price from auction_average_price');
INSERT INTO `log_query_ref` VALUES ('*EB71B0B0D318301', 12, 'seLect ip,start_ip,end_ip from auto_punish_blackip_info where apply_flag=1 limit %d');
INSERT INTO `log_query_ref` VALUES ('*861800114BD642A', 13, 'seLect hack_type,cnt,etc,hack_sub_type,hack_sub_cnt,apply_flag, ip_cnt from auto_punish_hack_info where apply_flag > 0');
INSERT INTO `log_query_ref` VALUES ('*B95FCD30ACC980F', 14, 'seLect hack_type,value from hack_cleanpad_ratio_info');
INSERT INTO `log_query_ref` VALUES ('*6863ACC34007C7E', 15, 'seLect ip, type, m_id_cnt, unix_timestamp(start_time), unix_timestamp(end_time) from ip_monitor_punish ORDER BY start_time ASC');
INSERT INTO `log_query_ref` VALUES ('*CF8023F3B73003B', 16, 'seLect charac_no from charac_tower_despair_apc limit 10');
INSERT INTO `log_query_ref` VALUES ('*ED663684CAD3B3B', 17, 'seLect category, restrict_code, restrict_value from dnf_restrict_state where server_group=%d');
INSERT INTO `log_query_ref` VALUES ('*BDC65252D0C038C', 18, 'seLect country_code from geo_allow_country where server_group = %d');
INSERT INTO `log_query_ref` VALUES ('*3CB80E282B6B059', 19, 'inSert into game_channel (gc_no,gc_now,gc_ip,gc_port,gc_max,gc_game,gc_channel,gc_ch_group,gc_channeltype,gc_up_time, gc_type) values(%d,0,\'%s\',%d,%d,%d,\'%s\',%d,\'%s\',now(),%d)');
INSERT INTO `log_query_ref` VALUES ('*A28EF36E2AA4850', 20, 'inSert into channel_occ_info (gc_no, age, occ_num) values %s');
INSERT INTO `log_query_ref` VALUES ('*0340E761AD8683E', 21, 'upDate channel_occ_info set occ_num = 0 where gc_no = %d');
INSERT INTO `log_query_ref` VALUES ('*8CA61ABBABFC1AE', 22, 'seLect kind, message_index, charac_name, message, unix_timestamp(update_time) from event_server_message where server_info=%d and (channel_no=%d or channel_no=0)');
INSERT INTO `log_query_ref` VALUES ('*668641EC066211D', 23, ' seLect category, code, state from server_state_info where end_time >= now()');
INSERT INTO `log_query_ref` VALUES ('*2B4EF13CA44D8B5', 24, 'inSert into log_response_time_%s(channel_no,occ_time,packet_id,packet_count,total_response_time,avg_response_time) values%s');
INSERT INTO `log_query_ref` VALUES ('*A430F68539EA10B', 25, 'seLect optimum_gold_supply, over_gold from auto_market_condition_ctrl limit 1');
INSERT INTO `log_query_ref` VALUES ('*BDD5075C427A5B1', 26, 'seLect total_gold, auction_gold, optimum_gold_supply, over_gold, gold_phase, item_phase, durability_phase from auto_market_condition_ctrl_daily where occ_time >= DATE_SUB(CURDATE(), INTERVAL 1 DAY) order by occ_time limit 2');
INSERT INTO `log_query_ref` VALUES ('*D9FDAFDD29F1CDA', 27, 'inSert ignore into dnf_restrict_state (server_group , category , restrict_code , restrict_value , mod_date , reg_date) values(%d, %d, %d, \'%d\', now(), now())');
INSERT INTO `log_query_ref` VALUES ('*C498B459FC6FB60', 28, 'inSert ignore into dnf_restrict_info (category , restrict_code , restrict_str , reg_date) values(%d, %d, \'%s\', now())');
INSERT INTO `log_query_ref` VALUES ('*FE9E568D694D9BE', 29, 'upDate client_down set occ_count = occ_count+%d where occ_date = cast(now() as date)');
INSERT INTO `log_query_ref` VALUES ('*AEA3E6A45377B58', 30, 'inSert into log_query_stat(occ_time,q_id,total,response_time,gc_no) values(from_unixtime(%d),%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*3E5F283A8C3D2C1', 31, 'seLect count(*) from charac_tower_rank where tower_index=%d and part_type=%d');
INSERT INTO `log_query_ref` VALUES ('*4BDD1A8E6B6297B', 32, 'seLect b.rank,a.tower_index, a.member_info_%d,a.stage_%d,a.play_time_%d from charac_tower_record a,charac_tower_rank b where b.tower_index=%d and b.tower_index=a.tower_index and (b.rank>5 and (b.rank%%%d)=0) and a.charac_no=b.charac_no and b.part_type=%d order by b.rank asc limit %d');
INSERT INTO `log_query_ref` VALUES ('*39636577CD2E623', 33, 'seLect b.rank,a.tower_index, a.member_info_%d,a.stage_%d,a.play_time_%d from charac_tower_record a,charac_tower_rank_top5 b where b.tower_index=%d and b.tower_index=a.tower_index and b.rank<=5 and a.charac_no=b.charac_no and b.part_type=%d order by b.rank asc limit %d');
INSERT INTO `log_query_ref` VALUES ('*6F0167591240276', 34, 'upDate game_channel set gc_now=%d,gc_up_time=now(),gc_swordman_cnt=%d,gc_fighter_cnt=%d,gc_gunner_cnt=%d,gc_mage_cnt=%d,gc_priest_cnt=%d,gc_at_gunner_cnt=%d,gc_thief_cnt=%d,gc_hangame=%d,gc_nexon=%d where gc_no=%d');
INSERT INTO `log_query_ref` VALUES ('*EDEA5AEAFDFCBE8', 35, 'seLect m_id, passwd,first_ssn, second_ssn,DATE_FORMAT(from_unixtime(reg_date),\'%%Y%%m%%d%%H\'),user_name,email,hangame_flag,reg_date from  member_info  where  user_id=\'%s\' and hangame_flag=%d');
INSERT INTO `log_query_ref` VALUES ('*564DFD026EEB2BD', 36, 'seLect login_time,expire_time,report_cnt,last_play_time,account_fail,total_account_fail,reliable_flag,trade_gold_daily,login_ip,security_flag,dungeon_gain_gold,school_id,rating,tutorial_skipable,event_charac_flag from %s where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*88E4626AB3C330E', 37, 'seLect m_id from member_white_account where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*C8BE6995508778D', 38, 'inSert into %s(m_id, login_time, login_ip) values(%s, %d, \'%s\') on duplicate key upDate login_time=%d, login_ip=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('*D1DCFEA6BC37D05', 39, 'seLect punish_type, unix_timestamp(occ_time), punish_value, apply_flag, unix_timestamp(start_time), unix_timestamp(end_time) from member_punish_info where m_id=%s and apply_flag>=1 LIMIT %d');
INSERT INTO `log_query_ref` VALUES ('*D0940D92B1930FB', 40, 'seLect unix_timestamp(last_check_time), unix_timestamp(m_opt_reg), unix_timestamp(pc_opt_reg), unix_timestamp(security_card_reg), unix_timestamp(goblin_pass_mod), unix_timestamp(member_pc_reg), unix_timestamp(gatekeeper_otp_reg), goblin_validity_time>unix_timestamp(now()), security_card_validity_time>unix_timestamp(now()), validity_ip from member_security_grade where m_id = %s ');
INSERT INTO `log_query_ref` VALUES ('*0866AB6194418A6', 41, 'seLect event_id,unix_timestamp(occ_date),server_id,charac_no,unix_timestamp(obtain_date) from dnf_event_entry where m_id=%s and server_id in(0,%d)');
INSERT INTO `log_query_ref` VALUES ('*30CB1A14F25A5BC', 42, 'seLect info,hash_key,password(info),slot_effect_count,charac_slot_limit from charac_view where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*EA33583E60E9654', 43, 'seLect message_flag from charac_link_message where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*D3319F44B2FBBB3', 44, 'inSert into charac_link_message(m_id,message_flag) values(%s,0)');
INSERT INTO `log_query_ref` VALUES ('*9D5A23A13D6029C', 45, 'seLect accrue_cera, play_info, last_reward_time, first_reward_time, luck_point, last_update_time, add_info, second_reward_time, quest_time from churn_member_info where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*E25513B709637AC', 46, 'inSert into churn_member_info(m_id,accrue_cera,play_info,last_reward_time,first_reward_time,server_id,charac_no,item_id,add_info,luck_point,last_update_time,second_reward_time) values(%s,0,\'%s\',0,0,0,0,0,0,0,0,0)');
INSERT INTO `log_query_ref` VALUES ('*B3D29C5E2CFE7B3', 47, 'seLect cleanpad_point from member_login where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*0D8A2642B652F86', 48, 'seLect count(*) from geo_allow where allow_ip = \'%s\'');
INSERT INTO `log_query_ref` VALUES ('*0CEBE556A8B0174', 49, 'insert into member_join_info(m_id, reg_date, ip) values(%d, now(), \'%s\')');
INSERT INTO `log_query_ref` VALUES ('*3E8762F35887514', 50, 'seLect unix_timestamp(expire_time), first_login from return_user where m_id=%s and expire_time > now()');
INSERT INTO `log_query_ref` VALUES ('*7D66076A1D3D723', 51, 'seLect  member_bonus_fatigue , update_time , login_ip , inform_notice  from login_common where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*33E242F4260B9DC', 52, 'seLect check_count from check_pick_up_random_option_item where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('*E148337C1C4591F', 53, 'seLect last_no from event_1112_ontime_user_%u where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*3C5730B00B20137', 54, 'inSert into event_1112_ontime_user_%u(m_id,last_no) values (%s,%u )');
INSERT INTO `log_query_ref` VALUES ('*BB2C4492FBACE57', 55, 'seLect type , history_1 ,history_2 from event_ingame_history where m_id=%s order by type desc');
INSERT INTO `log_query_ref` VALUES ('*6BE2AE99B9806B8', 56, 'upDate login_common set login_ip=\'%s\' where m_id=%u');
INSERT INTO `log_query_ref` VALUES ('*2DEAF1FBE9ECC24', 57, 'upDate login_account_%d set m_channel_no=%d,login_status=1,last_login_date=now(),login_ip=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*568E105C6E49B0D', 58, 'inSert into login_account_%d (m_id,m_channel_no,login_status,last_login_date,login_ip) values(%s,%d,1,now(),\'%s\')');
INSERT INTO `log_query_ref` VALUES ('*12CCE217D251A93', 59, 'seLect option_1,option_3,shortcut_emoticon from %s where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('*F642FD22657BFE6', 60, 'upDate churn_member_info set play_info =\'%s\', last_update_time=%u where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*BA8974100570DB9', 61, 'seLect capacity, money, cargo from account_cargo where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('*75078C8B6AB83EC', 62, 'seLect hack_type,cnt from dnf_hack_log where m_id=%s and (hack_type>=%d and hack_type<%d) and occ_date=CAST(DATE_FORMAT(now(), \'%%Y-%%m-%%d\') AS CHAR)');
INSERT INTO `log_query_ref` VALUES ('*353051563A61124', 63, 'upDate member_login set cleanpad_point=%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*5737CFAF398B024', 64, 'upDate %s set login_time=%d, expire_time=%d, last_play_time=%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*B29B72BC433D669', 65, 'upDate login_account_%d set m_channel_no=%d,login_status=%d,last_login_date=now() where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*1A6B30790E8151C', 66, 'upDate member_play_info set play_time=play_time+%d,play_count=play_count+1,trade_cnt=trade_cnt+%d, exp=exp+%u, used_fatigue=used_fatigue+%u, ting_count=ting_count+%d, ip=\'%s\', last_play_time=%u, end_ip=\'%s\', mac_addr=\'%s\', server_id = %d where occ_date=cast(now() as date) and m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*471E71B1417EE32', 67, 'inSert into member_play_info(occ_date,m_id,play_time,play_count,trade_cnt,exp,used_fatigue,ting_count, ip, last_play_time, pcbang_flag, end_ip, mac_addr, server_id) values(cast(now() as date),%s,%d,1,%d,%u,%u,%d,\'%s\', %u, %d, \'%s\', \'%s\',%d)');
INSERT INTO `log_query_ref` VALUES ('*8C68BEE5B843CB4', 68, 'upDate login_common set member_bonus_fatigue=%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*51CF0BA67D8149C', 69, 'inSert into login_common(m_id,member_bonus_fatigue,update_time) values(%s,%d,unix_timestamp(now()))');
INSERT INTO `log_query_ref` VALUES ('*A17AC54BB22555F', 70, 'upDate %s set expire_time=%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*BD83AB96A6726BD', 71, 'upDate member_security_card set validity_time=unix_timestamp(now())+%d where m_id=%s and apply_flag=1');
INSERT INTO `log_query_ref` VALUES ('*F6A965C84BF873A', 72, 'upDate member_mousepass set validity_time=unix_timestamp(now())+%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*8BC4C91D778EBE4', 73, 'upDate game_channel set gc_now=0,gc_ip=\'%s\',gc_port=%d,gc_max=%d,gc_game=%d,gc_channel=\'%s\',gc_ch_group=%d,gc_channeltype=\'%s\',gc_up_time=now(),gc_type=%d where gc_no=%d');
INSERT INTO `log_query_ref` VALUES ('*9F24D6FDD3CBB20', 74, 'inSert into dnf_dbq_log(occ_time,channel_no,dbq) values(NOW(),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*6773E38D9FBFF0B', 75, 'inSert into log_game_channel(gc_up_time,gc_game,gc_no,gc_channel,gc_ch_group,gc_ip,gc_now,gc_new,gc_out) values(now(),%d,%d,\'%s\',%d,\'%s\',%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*4F8D59BAEEDD8BF', 76, 'seLect count, unix_timestamp(last_access_time) from limit_create_character where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*6FCDD1351CE70C3', 77, 'seLect count(*) from charac_info where m_id=%s and delete_flag=0');
INSERT INTO `log_query_ref` VALUES ('*9B532D58147AB8E', 78, 'seLect delete_flag from %s.charac_info where charac_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('*80A292621858C9E', 79, 'inSert into charac_info (m_id,charac_name,job,sex,maxHP,maxMP,phy_attack,phy_defense,mag_attack,mag_defense,element_resist,spec_property,inven_weight,hp_regen,mp_regen,move_speed,attack_speed,cast_speed,hit_recovery,jump,charac_weight,max_fatigue,create_time,expert_job,event_charac_level) values(%s,\'%s\',%d,%d,%d,%u,%d,%d,%d,%d,\'%s\',\'%s\',%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,NOW(),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*F333A424343897E', 80, 'inSert into charac_stat (charac_no,HP, forbidden_to_play, forbidden_due_to) values(%d,100,0,0)');
INSERT INTO `log_query_ref` VALUES ('*1FE889E4A44E945', 81, 'inSert into inventory (charac_no, inventory,coin) values(%u, \'%s\',%d)');
INSERT INTO `log_query_ref` VALUES ('*0886551D3574D19', 82, 'inSert into charac_inven_expand(charac_no,cargo,cargo_capacity,jewel) values(%u,\'\',0,\'\')');
INSERT INTO `log_query_ref` VALUES ('*CBA2F6168DA3330', 83, 'upDate inventory set equipslot=\'%s\' where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*5F7EF9CED9C9810', 84, 'inSert into skill (charac_no, remain_sp ,skill_slot, skill_slot_2nd) values(%u,%u, \'%s\', \'%s\')');
INSERT INTO `log_query_ref` VALUES ('*6C23CB9728674FD', 85, 'inSert into pvp_result (charac_no) values(%u)');
INSERT INTO `log_query_ref` VALUES ('*AAB936D95D03884', 86, 'seLect * from member_dungeon where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*BF3101E9BF92946', 87, 'inSert into member_dungeon (m_id,dungeon) values (%s,\'\')');
INSERT INTO `log_query_ref` VALUES ('*212BFB5CD9391F4', 88, 'inSert into new_charac_quest(charac_no, clear_quest) values(%u,\'\')');
INSERT INTO `log_query_ref` VALUES ('*8479FEE928048C2', 89, 'inSert into charac_npc(charac_no,npc_cnt,npc_data) values(%d,0,\'\')');
INSERT INTO `log_query_ref` VALUES ('*79247043844DD1C', 90, 'upDate limit_create_character set count=count+1, last_access_time=now() where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*522CA6408A3BB8D', 91, 'inSert into limit_create_character(m_id, count, last_access_time) values(%s, 1, now() )');
INSERT INTO `log_query_ref` VALUES ('*AA4DC6312B0C1D7', 92, 'upDate charac_view set info=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*2828FB81EF97A47', 93, 'inSert into charac_view(m_id,info) values(%s,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('*6FDB1156CD1B096', 94, 'seLect key_option from member_key_option where m_id = %s and key_type = %d');
INSERT INTO `log_query_ref` VALUES ('*05E8F5A2887666A', 95, 'seLect charac_no,charac_name,job,lev,grow_type,maxHP,maxMP,phy_attack,phy_defense,mag_attack,mag_defense,inven_weight,hp_regen,mp_regen,move_speed, attack_speed, cast_speed, hit_recovery, jump, charac_weight, max_fatigue, create_time,guild_id,guild_right,max_premium_fatigue,member_flag,element_resist,spec_property,m_id,expert_job, skill_tree_index, event_charac_level, guild_secede from charac_info where charac_no=%d and delete_flag!=1');
INSERT INTO `log_query_ref` VALUES ('*7C164A853A62E80', 96, 'seLect village,exp,HP,fatigue,premium_fatigue,unix_timestamp(last_play_time),used_fatigue,tutorial_flag,trade_gold_total,trade_gold_daily,open_flag,chaos_point,chaos_exp,chaos_mode_count,chaos_kill_count,chaos_die_count,unix_timestamp(chaos_die_time),assault_count,luck_point,dungeon_play_count,unix_timestamp(chaos_kill_time),help_abuse_ratio,help_abuse_exp,expert_job_exp,fatigue_battery_charging,escalade_tutorial_flag,power_war_point,village_prev,power_war_assault_count,power_war_assault_victory_count,unix_timestamp(last_play_time_powerwar),fatigue_grownup_buff,emotion,add_slot_flag,member_dungeon_flag,member_bonus_fatigue,last_play_dungeon_index, add_equipslot_flag, channel_equipslot_switch, expand_equipslot_switch, visible_flags, growth_power_reward, unix_timestamp(chaos_respon_time) from charac_stat where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*8BB198BC538003B', 97, 'seLect black_point,offset_point,unix_timestamp(problem_child_time) from charac_black_info where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('*D000424F1E5E4FE', 98, 'seLect money,coin,inventory,equipslot,pay_coin,event_coin,creature,creature_flag,inventory_capacity from inventory where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*36390EB93F160D3', 99, 'seLect ifnull(min(avatar_coin),0) as avatar_coin from member_avatar_coin where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('*649FA4CF665AA88', 100, 'seLect slot,it_id,unix_timestamp(expire_date),ability_no,ipg_agency_no,unix_timestamp(reg_date),ui_id,clear_avatar_id,jewel_socket,item_lock_key, hidden_option, emblem_endurance, color1, color2, trade_restrict from user_items where charac_no=%u and expire_date>now() and stat=0 limit %d');
INSERT INTO `log_query_ref` VALUES ('*1305E6FD9E0A6E0', 101, 'seLect cargo_capacity,cargo,jewel,expand_equipslot from charac_inven_expand where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*E65B749D250A384', 102, 'seLect item_lock_info  from charac_item_lock_info where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*87949C4632B909B', 103, 'seLect max_equip_level from charac_manage_info where charac_no = %d');
INSERT INTO `log_query_ref` VALUES ('*694F379E098E87E', 104, 'seLect charac_no, clear_quest,play_1, play_1_trigger, play_2, play_2_trigger, play_3, play_3_trigger, play_4, play_4_trigger, play_5, play_5_trigger,play_6, play_6_trigger, play_7, play_7_trigger, play_8, play_8_trigger, play_9, play_9_trigger, play_10, play_10_trigger,play_11, play_11_trigger, play_12, play_12_trigger, play_13, play_13_trigger, play_14, play_14_trigger, play_15, play_15_trigger,play_16, play_16_trigger, play_17, play_17_trigger, play_18, play_18_trigger, play_19, play_19_trigger, play_20, play_20_trigger,urgentQuestIndex,quest_notify from new_charac_quest  where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*4FD6DD20307227E', 105, 'seLect dungeon from member_dungeon where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*650D17063FE5B17', 106, 'seLect boss_info, named_info, apc_boss_info from charac_kill_monster_info where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*14C6FF15FBFC12C', 107, 'inSert into charac_kill_monster_info (charac_no) values(%u)');
INSERT INTO `log_query_ref` VALUES ('*8E88FA18C510556', 108, 'select ridable_id, ticket_free, ticket_cera, 				  star_game, star_cera, star_usable, 				  survival_best, star_reset_count, is_unlock_stage_effect, 				  stage_list, slot_list, buy_item_list, reward_list 				  from charac_advance_altar					  where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*15B14AFB6ED4FC1', 109, 'seLect win,lose,pvp_point,pvp_grade,avg_kill_count,avg_buf_count,avg_debuf_count,avg_heal_count,avg_counter_count,avg_back_atk_count,avg_union_hit_count,avg_overkill_count,avg_combo_count,avg_aerial_count,avg_attacked_count,avg_deal_damage,avg_technic,avg_style,avg_hit_penalty,pvp_count,win_point,pvp_grade_ext,unix_timestamp(last_play_time),play_count,play_time,unix_timestamp(pvp_grade_ext_update_time) from pvp_result where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*6C0BEC32ED9F159', 110, 'seLect cooltime_item, effect_item, check_flag from charac_item_stat where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*07AFB07DBC65EDB', 111, 'seLect remain_sp,skill_slot,remain_sp_2nd, skill_slot_2nd, remain_sfp_1st, remain_sfp_2nd, skill_command, skill_slot_lethe, lethe_flag, skill_slot_lethe_2nd, lethe_flag_2nd,script_version from %s where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*A1F42D127A9198D', 112, 'seLect clear_cnt from event_dungeon_clear where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*129F502F8C11EFE', 113, 'seLect redeem_info from charac_inven_expand where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*525715341690085', 114, 'seLect pvp_mission_info from fair_pvp_score where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*D91AAA585221014', 115, 'seLect unix_timestamp(first_layer_start_date),today_enter_count,last_clear_layer,enter_count_by_week,unix_timestamp(m_date),unix_timestamp(last_clear_date) from charac_tower_despair where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*B5ACE8F8933D4D9', 116, 'seLect attack_count, revenge_dungeon from village_attack_dungeon 						   where occ_date = \'%s\' and charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*1F85B727DA6B39E', 117, 'seLect private_win,private_lose,private_draw,relay_battle_win, relay_battle_lose, relay_battle_draw,relay_battle_2kill, relay_battle_3kill, successive_win, max_successive_win, job_score,daily_play_count, unix_timestamp(last_play_time), give_item from fair_pvp_score where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*87F4624D7196F88', 118, 'inSert into fair_pvp_score (charac_no) values(%u)');
INSERT INTO `log_query_ref` VALUES ('*AFBA91E55BCE673', 119, 'seLect weapon, cloth, leather, light_armor, heavy_armor, plate, amulet, wrist, ring, support, magic_stone from item_making_skill_info where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*1F9F869853FB30A', 120, 'seLect qp, init_count, max_hp, max_mp, psy_attack, psy_defense, mag_attack, mag_defence, move_speed, attack_speed, hp_regen, mp_regen, all_element_resist, fire_element_resist, water_element_resist, light_element_resist, dark_element_resist, all_element_attack,fire_element_attack, water_element_attack, light_element_attack, dark_element_attack, psy_critical, mag_critical, good_hit , evasion , hit_recovery , separate_psy_mag_attack , quest_piece from charac_quest_shop where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*35B7616EED5F352', 121, 'seLect general_section, specific_section, despair, event from charac_titlebook where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*A87B4A75010E355', 122, 'seLect achievement, unix_timestamp(last_update_time) from charac_achievement where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*CC8B459EF6F2F95', 123, 'seLect m_id from event_1107_avenger_plan where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*D6FAB89779A40FD', 124, 'seLect option_type, value_1 from aura_avatar_option where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*08852DD9D1CBED9', 125, 'seLect options , best_clear_time, blue_marble_enter_count, charac_inform_notice from charac_option where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*E421B65CB676688', 126, 'seLect gage from member_booster_gage where m_id=%u');
INSERT INTO `log_query_ref` VALUES ('*050D7A72626D7EB', 127, 'seLect id,it_id,stack_count,event_code from charac_event_items where charac_no=%d and delete_flag=0 limit %d');
INSERT INTO `log_query_ref` VALUES ('*6905051F282F689', 128, 'seLect tower_index, 		member_info_1,stage_1,play_time_1, 		member_info_2,stage_2,play_time_2, 		member_info_3,stage_3,play_time_3, 		member_info_4,stage_4,play_time_4 		from charac_tower_record where charac_no=%d limit %d');
INSERT INTO `log_query_ref` VALUES ('*B533D08A98CC52C', 129, 'seLect DATE_FORMAT(from_unixtime(reg_date),\'%%Y%%m%%d%%H\') ,reg_date from member_info where m_id=%d');
INSERT INTO `log_query_ref` VALUES ('*71B33EC3586BB17', 130, 'seLect postal_id,unix_timestamp(occ_time),send_charac_no,seal_flag,item_id,add_info,endurance,upgrade,gold,send_charac_name,unlimit_flag,avata_flag,creature_flag,letter_id,extend_info,item_guid,amplify_option,amplify_value,random_option,seperate_upgrade,type from postal where receive_charac_no=%d and delete_flag=0 %s and (unlimit_flag=1 or occ_time>subdate(now(),interval 15 day)) order by postal_id limit %d');
INSERT INTO `log_query_ref` VALUES ('*75EA84F23D20259', 131, 'seLect letter_id,send_charac_no,send_charac_name,letter_text,unix_timestamp(reg_date),stat from letter where (charac_no=%d and stat = 3) or (charac_no=%d and letter_id > %d and reg_date>subdate(now(),interval %d day)) order by letter_id');
INSERT INTO `log_query_ref` VALUES ('*5E0CA0F3E5300A9', 132, 'upDate member_key_option set key_option=\'%s\' where m_id=%s and key_type=%d');
INSERT INTO `log_query_ref` VALUES ('*CE94EE86D8B15BE', 133, 'inSert into member_key_option(m_id, key_type, key_option) values(%s,%d,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('*809DE78DC90E221', 134, 'seLect store, use_doll from store where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('*C3D33DDEDABE200', 135, 'upDate %s set shortcut_emoticon=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*37458875A1038D0', 136, 'inSert into %s(m_id, shortcut_emoticon) values(%s,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('*2F6074AB3B90893', 137, 'seLect week_point,week_enter_count,week_use_gold,unix_timestamp(last_play_date),enter_count,rank,reward,reward_item_id,reward_gold from charac_blood_dungeon_reward where charac_no=%d and week_occ_date = cast(from_unixtime(%d) as date)');
INSERT INTO `log_query_ref` VALUES ('*C2D8D2936541F6D', 138, 'seLect rank,reward,reward_item_id,reward_gold from charac_blood_dungeon_reward where charac_no=%d and week_occ_date = cast(from_unixtime(%d) as date)');
INSERT INTO `log_query_ref` VALUES ('*1A40A3D0F03DEF4', 139, ' seLect event_id, charac_no from event_reward_item_arad  where (m_id = %u and end_date > from_unixtime(%u))  order by occ_date desc limit 10 ');
INSERT INTO `log_query_ref` VALUES ('*07624510784C702', 140, 'upDate %s set charac_no=%u, occ_date=now() where m_id=%u');
INSERT INTO `log_query_ref` VALUES ('*E590CB17E293787', 141, 'inSert into %s(m_id, charac_no, occ_date) values(%u, %u, now())');
INSERT INTO `log_query_ref` VALUES ('*FF94EBEB9221631', 142, 'seLect ipg_no, count, next_date from account_cerashop_restrict where m_id = %u and end_date > UNIX_TIMESTAMP() limit 10');
INSERT INTO `log_query_ref` VALUES ('*B5640B169FC2666', 143, 'seLect ipg_no, count, next_date from charac_cerashop_restrict where charac_no = %u and end_date > UNIX_TIMESTAMP() limit 10');
INSERT INTO `log_query_ref` VALUES ('*80C73FECCABA3F1', 144, 'seLect m_id from mobile_auth_reward_tw where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*29220699254C9C1', 145, 'inSert into mobile_auth_reward_tw(m_id,occ_date) VALUES(%s,now())');
INSERT INTO `log_query_ref` VALUES ('*8C7DF0C570EA7AE', 146, 'inSert into letter(charac_no,send_charac_no,send_charac_name,letter_text,reg_date,stat) values(%d,%d,\'%s\',\'%s\',from_unixtime(%d),%d)');
INSERT INTO `log_query_ref` VALUES ('*92489EA005903C1', 147, 'inSert into postal(occ_time,send_charac_no,receive_charac_no,seal_flag,item_id,add_info,endurance,upgrade ,amplify_option,amplify_value,gold,send_charac_name,creature_flag,avata_flag,letter_id,extend_info,item_guid,random_option,seperate_upgrade,unlimit_flag) values %s');
INSERT INTO `log_query_ref` VALUES ('*B4911272DAD50B5', 148, 'seLect miles from member_miles where m_id = %u');
INSERT INTO `log_query_ref` VALUES ('*67A02944012343D', 149, 'inSert into member_miles (m_id, miles, daily_miles) values (%u, 0, 0)');
INSERT INTO `log_query_ref` VALUES ('*4444F1021F41B71', 150, 'deLete from letter where charac_no=%d and reg_date<subdate(now(),interval %d day) and stat=%d');
INSERT INTO `log_query_ref` VALUES ('*596B7A7E73B8AAF', 151, 'seLect letter_id,send_charac_no,send_charac_name,letter_text,unix_timestamp(reg_date),stat from letter where (charac_no=%d and stat = 3) or (charac_no=%d and reg_date>subdate(now(),interval %d day)) order by letter_id');
INSERT INTO `log_query_ref` VALUES ('*2A8AA52E10A1057', 152, 'upDate letter set stat=%d where letter_id=%d');
INSERT INTO `log_query_ref` VALUES ('*A310703E99DFB8A', 153, 'deLete from letter where letter_id = %d');
INSERT INTO `log_query_ref` VALUES ('*D7DA33A416F3D2A', 154, 'upDate charac_info set lev=%d,grow_type=%d,maxHP=%d,maxMP=%d,phy_attack=%d,phy_defense=%d,mag_attack=%d,mag_defense=%d,inven_weight=%d,hp_regen=%d,mp_regen=%d,move_speed=%d,attack_speed=%d,cast_speed=%d,hit_recovery=%d,jump=%d,charac_weight=%d,element_resist=\'%s\',spec_property=\'%s\',max_premium_fatigue=%d,guild_right=%d,expert_job=%d,skill_tree_index=%d, event_charac_level=%d where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*E2B77616B53A789', 155, 'upDate charac_stat set village=%d,exp=%d,HP=%d,fatigue=%d,premium_fatigue=%d,last_play_time=from_unixtime(%d),used_fatigue=%d,tutorial_flag=%d,trade_gold_total=%d,trade_gold_total_billion=trade_gold_total_billion+%d,trade_gold_daily=%d,help_abuse_ratio=%d,help_abuse_exp=%d,chaos_point=%d,chaos_exp=%d,chaos_mode_count=%d,chaos_kill_count=%d,chaos_die_count=%d,chaos_die_time=from_unixtime(%d),assault_count=%d,luck_point=%d,dungeon_play_count=%d,chaos_kill_time=from_unixtime(%d),expert_job_exp=%d,open_flag=%d,fatigue_battery_charging=%d,escalade_tutorial_flag=\'%s\',power_war_point=%d,village_prev=%d,power_war_assault_count=%d,power_war_assault_victory_count=%d,last_play_time_powerwar=from_unixtime(%d),fatigue_grownup_buff=%d, emotion=%d, add_slot_flag=%d, member_dungeon_flag=%d, member_bonus_fatigue=%d, last_play_dungeon_index=%u, add_equipslot_flag=%d, channel_equipslot_switch=%d, expand_equipslot_switch=%d, visible_flags=%d, growth_power_reward=%d, chaos_respon_time=from_unixtime(%d) where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*ED163853BC75E97', 156, 'upDate %s set expire_time=%d,last_play_time=%d,report_cnt=%d,trade_gold_daily=%d,dungeon_gain_gold=%d,rating=%f,tutorial_skipable=%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*E6162ADE91B7746', 157, 'upDate charac_inven_expand set expand_equipslot=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*5693D22737AB34B', 158, 'upDate charac_stat set channel_equipslot_switch=%d, expand_equipslot_switch=%d where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*3B231024A8A4495', 159, 'upDate inventory set money=%u,coin=%d,pay_coin=%d,event_coin=%d,equipslot=\'%s\',inventory=\'%s\',creature=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*C3E93F3C1D7D962', 160, 'inSert into member_avatar_coin (m_id , avatar_coin ) values (%s , %u) on duplicate key upDate avatar_coin = %u ');
INSERT INTO `log_query_ref` VALUES ('*72902F3BE34AE6E', 161, 'upDate charac_inven_expand set cargo_capacity=%d,cargo=\'%s\',jewel=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*2D1936103F95274', 162, 'upDate %s set remain_sp=%u,skill_slot=\'%s\',remain_sp_2nd=%u, skill_slot_2nd=\'%s\', remain_sfp_1st=%u, remain_sfp_2nd=%u, skill_command =\'%s\',script_version=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*107E3DA9031127B', 163, 'upDate new_charac_quest set clear_quest=\'%s\', play_1=%d, play_1_trigger=%d, play_2=%d, play_2_trigger=%d, play_3=%d, play_3_trigger=%d, play_4=%d, play_4_trigger=%d, play_5=%d, play_5_trigger=%d,play_6=%d, play_6_trigger=%d, play_7=%d, play_7_trigger=%d, play_8=%d, play_8_trigger=%d, play_9=%d, play_9_trigger=%d, play_10=%d, play_10_trigger=%d, play_11=%d, play_11_trigger=%d, play_12=%d, play_12_trigger=%d, play_13=%d, play_13_trigger=%d, play_14=%d, play_14_trigger=%d, play_15=%d, play_15_trigger=%d,play_16=%d, play_16_trigger=%d, play_17=%d, play_17_trigger=%d, play_18=%d, play_18_trigger=%d, play_19=%d, play_19_trigger=%d, play_20=%d, play_20_trigger=%d,urgentQuestIndex=%d,quest_notify=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*66C50E7C7937392', 164, 'upDate login_common set inform_notice = \'%s\' where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('*E877FBA8A8CD8DC', 165, 'inSert into login_common(m_id, inform_notice) values(%s, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('*1B44B175A6FD0DC', 166, 'upDate fair_pvp_score set pvp_mission_info=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*2677DC6369817CB', 167, 'upDate charac_quest_shop set qp=%u, init_count=%u, max_hp=%d, max_mp=%d, psy_attack=%d, psy_defense=%d, mag_attack=%d, mag_defence=%d, move_speed=%d, attack_speed=%d, hp_regen=%d, mp_regen=%d, all_element_resist=%d, fire_element_resist=%d, water_element_resist=%d, light_element_resist=%d, dark_element_resist=%d, all_element_attack=%d,fire_element_attack=%d, water_element_attack=%d, light_element_attack=%d, dark_element_attack=%d, psy_critical=%d, mag_critical=%d, good_hit=%d, evasion=%d, hit_recovery=%d, separate_psy_mag_attack=%d, quest_piece=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*FC26C8B8A0B88F2', 168, 'inSert into charac_quest_shop(charac_no, qp, init_count, max_hp, max_mp, psy_attack, psy_defense, mag_attack, mag_defence, move_speed, attack_speed, hp_regen, mp_regen, all_element_resist, fire_element_resist, water_element_resist, light_element_resist, dark_element_resist, all_element_attack,fire_element_attack, water_element_attack, light_element_attack, dark_element_attack, psy_critical, mag_critical, good_hit , evasion , hit_recovery , separate_psy_mag_attack , quest_piece) values(%u, %u, %u, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)');
INSERT INTO `log_query_ref` VALUES ('*8152AFD38279FF4', 169, 'upDate charac_titlebook set general_section=\'%s\', specific_section=\'%s\', despair=\'%s\', event=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*9A65A92006556AE', 170, 'inSert into charac_titlebook(charac_no, general_section, specific_section, despair, event) values(%u, \'%s\',\'%s\',\'%s\',\'%s\')');
INSERT INTO `log_query_ref` VALUES ('*B84F688F158F40D', 171, 'upDate charac_achievement set achievement=\'%s\', last_update_time=now() where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*4A611DB1073E4CA', 172, 'inSert into charac_achievement(charac_no, achievement, last_update_time) values(%u, \'%s\', now())');
INSERT INTO `log_query_ref` VALUES ('*1DBB3332898974A', 173, 'upDate member_booster_gage set gage=%u where m_id=%u');
INSERT INTO `log_query_ref` VALUES ('*3C589E7B9E99282', 174, 'inSert into member_booster_gage(m_id, gage) values(%u, %u)');
INSERT INTO `log_query_ref` VALUES ('*F3A63FFB9E44B38', 175, 'upDate charac_option set charac_inform_notice=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*74E42EA509FD80B', 176, 'inSert into charac_option(charac_no, options, best_clear_time, blue_marble_enter_count, charac_inform_notice) values (%u, \'%s\', \'%s\', 0, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('*ECDA6299A85BD66', 177, 'upDate event_dungeon_clear set clear_cnt=%d, update_time=now() where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*725DE8C94D94865', 178, 'inSert into event_dungeon_clear(charac_no, clear_cnt, update_time) values(%u, %d, now())');
INSERT INTO `log_query_ref` VALUES ('*435C259A7B3486E', 179, 'upDate charac_option set blue_marble_enter_count = %u where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*85BC1AFB4D2BE51', 180, 'inSert into charac_option(charac_no, blue_marble_enter_count) values(%u, %u)');
INSERT INTO `log_query_ref` VALUES ('*49546969A5DD98F', 181, 'upDate dnf_hack_log set charac_no=%d,last_time=now(),cnt=cnt+%d,etc=%d where m_id=%s and hack_type=%d and occ_date=CAST(DATE_FORMAT(now(), \'%%Y-%%m-%%d\') AS CHAR)');
INSERT INTO `log_query_ref` VALUES ('*2C07A8F701A304B', 182, 'upDate inventory set inventory_capacity=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*FAE28CE7F757B41', 183, 'inSert into dnf_hack_log(m_id,charac_no,hack_type,occ_date,last_time,etc,cnt) values(%s,%d,%d,cast(now() as date),now(),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*5C4B2E64CA6AEC0', 184, 'inSert into concurrent_user_status(occ_time,player_status,dungeon_index,channel_no,occ_count) values(from_unixtime(%d),%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*6C8081DFDB9D713', 185, 'upDate charac_stat set total_play_time=total_play_time + %d where charac_no = %d');
INSERT INTO `log_query_ref` VALUES ('*60DB0F10EDC448F', 186, 'upDate charac_info set lev=%d,grow_type=%d,maxHP=%d,maxMP=%d,phy_attack=%d,phy_defense=%d,mag_attack=%d,mag_defense=%d,inven_weight=%d,hp_regen=%d,mp_regen=%d,move_speed=%d,attack_speed=%d,cast_speed=%d,hit_recovery=%d,jump=%d,charac_weight=%d,element_resist=\'%s\',spec_property=\'%s\', expert_job=%d, skill_tree_index=%d where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*F4D2D7CCB565418', 187, 'upDate charac_dimension_inout set dungeon1=%d, dungeon2=%d, dungeon3=%d,  dungeon4=%d, dungeon5=%d, dungeon6=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*B1191B13D592881', 188, 'inSert into charac_dimension_inout(charac_no,dungeon1,dungeon2,dungeon3,dungeon4,dungeon5,dungeon6) values(%u,%d,%d,%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*23F1D2E96A1D4E6', 189, 'upDate charac_blood_inout set dungeon1=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*E9597EA4F3E496A', 190, 'inSert into charac_blood_inout(charac_no,dungeon1) values(%u,%d)');
INSERT INTO `log_query_ref` VALUES ('*CE5B6D15C17B4F5', 191, 'upDate postal set delete_flag=%d where receive_charac_no=%d and unlimit_flag=0 and occ_time<subdate(now(),interval %d day) and delete_flag=0');
INSERT INTO `log_query_ref` VALUES ('*4C8E98F10603242', 192, 'seLect best_round, best_time, dungeon_index from charac_blood_best_record where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*2B534EE3F2819BA', 193, 'seLect dungeon1, dungeon2, dungeon3, dungeon4, dungeon5, dungeon6 from charac_dimension_inout where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*2324A8CC67B0CAC', 194, 'seLect dungeon1 from charac_blood_inout where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*8BDC6E486E5C079', 195, 'upDate postal set delete_flag=%d,receive_time=now() where postal_id=%d');
INSERT INTO `log_query_ref` VALUES ('*B8DB75581AC59AB', 196, 'inSert into charac_inven_expand(charac_no, expand_equipslot) values(%u, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('*F91F1B254BBA6D2', 197, 'upDate new_charac_quest set play_1=%d, play_1_trigger=%d, play_2=%d, play_2_trigger=%d, play_3=%d, play_3_trigger=%d, play_4=%d, play_4_trigger=%d, play_5=%d, play_5_trigger=%d,play_6=%d, play_6_trigger=%d, play_7=%d, play_7_trigger=%d, play_8=%d, play_8_trigger=%d, play_9=%d, play_9_trigger=%d, play_10=%d, play_10_trigger=%d, play_11=%d, play_11_trigger=%d, play_12=%d, play_12_trigger=%d, play_13=%d, play_13_trigger=%d, play_14=%d, play_14_trigger=%d, play_15=%d, play_15_trigger=%d,play_16=%d, play_16_trigger=%d, play_17=%d, play_17_trigger=%d, play_18=%d, play_18_trigger=%d, play_19=%d, play_19_trigger=%d, play_20=%d, play_20_trigger=%d,urgentQuestIndex=%d,quest_notify=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*B74418D92D02EB8', 198, 'seLect mercenary_start_time,mercenary_finish_time,mercenary_area,mercenary_period from charac_link_bonus where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*41F34E69DAC7E85', 199, 'seLect slot,it_id from user_items where charac_no=%u and expire_date>now() and stat=0 order by slot limit 8');
INSERT INTO `log_query_ref` VALUES ('*95522829D697611', 200, 'inSert into charac_link_bonus (charac_no,mercenary_start_time,mercenary_finish_time,mercenary_area,mercenary_period) values(%u,0,0,-1,-1)');
INSERT INTO `log_query_ref` VALUES ('*7528CEC0129BDF7', 201, 'inSert into channel_lev_status(occ_time,channel_no,lev,occ_count) values(from_unixtime(%d),%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*C54D5136A65C8D6', 202, 'inSert into postal(occ_time,send_charac_no,receive_charac_no,seal_flag,item_id,add_info,endurance,upgrade,amplify_option,amplify_value,gold,send_charac_name,creature_flag,avata_flag,letter_id,extend_info,item_guid,random_option,seperate_upgrade,unlimit_flag) values(from_unixtime(%d),%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,\'%s\',%d,%d,%d,%d,\'%s\',\'%s\',%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*1C27A2E86DA4FEA', 203, 'inSert into dnf_event_entry(event_id,m_id,occ_date,server_id,charac_no,obtain_date) values(%d,%s,from_unixtime(%d),%d,%d,from_unixtime(%d))');
INSERT INTO `log_query_ref` VALUES ('*BB89673DA996520', 204, 'upDate member_premium set service_end=from_unixtime(%d) where event_id=%d and pre_type=%d and m_id=%s and service_end>from_unixtime(%d) and server_id=%d');
INSERT INTO `log_query_ref` VALUES ('*43D527158EFDE8E', 205, 'inSert into member_premium(pre_type,m_id,service_start,service_end,event_id,server_id) values(%d,%s,from_unixtime(%d),from_unixtime(%d),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*D7CE7B3A3EAE7E2', 206, 'inSert into user_items (charac_no,slot,it_id,expire_date,obtain_from,reg_date,ability_no,ipg_agency_no,stat,jewel_socket,hidden_option,emblem_endurance) values(%u,%d,%u,\'%s\',%d,now(),%d,\'%s\',%d,\'%s\',%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*D87DE738A5105BA', 207, 'upDate inventory set creature_flag=%d where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('*E1F6AB44BD18A12', 208, 'inSert into creature_items(charac_no,slot,it_id,expire_date,delete_date,reg_date,name,stomach,exp,endurance,no_charge,stat,creature_type)values(%d,%d,%d,%s,%s,NOW(),\'%s\',%d,%d,%d,0,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*DA7B4E2EF5C5020', 209, 'seLect m_id from charac_info where charac_name=\'%s\' limit 1');
INSERT INTO `log_query_ref` VALUES ('*1208AA972642038', 210, 'inSert into log_item_drop(occ_date,channel_no,drop_type,stackable_common,stackable_uncommon,stackable_rare,stackable_unique,stackable_epic,stackable_chronicle,equip_common,equip_uncommon,equip_rare,equip_unique,equip_epic,equip_chronicle,recipe_common,recipe_uncommon,recipe_rare,recipe_unique,recipe_epic,recipe_chronicle,artifact_common,artifact_uncommon,artifact_rare,artifact_unique,artifact_epic,artifact_chronicle) values(cast(now() as date),%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*89F08B63BD3DEB9', 211, 'seLect slot,it_id,name,stomach,exp,endurance,creature_type,ui_id,no_charge,stat,item_lock_key,unix_timestamp(expire_date) from creature_items where charac_no=%u and stat = 0 and expire_date>now()');
INSERT INTO `log_query_ref` VALUES ('*01D6DC594F607DE', 212, 'seLect * from account_cargo where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('*F35873546885FB1', 213, 'inSert into account_cargo(m_id, capacity, money, occ_time, cargo) values(%s, %d, 0, now(),\'\')');
INSERT INTO `log_query_ref` VALUES ('*63D4D51BF744635', 214, 'upDate account_cargo set capacity=%u, money=%u, cargo=\'%s\' where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('*4FA45F1082D8AA7', 215, 'upDate charac_item_stat set cooltime_item=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*8A8C33105D2106D', 216, 'inSert into charac_item_stat(charac_no, cooltime_item) values(%u, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('*89CBFC4FA25801C', 217, 'upDate charac_item_stat set effect_item=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*EEFA5ABF8FC3559', 218, 'upDate inventory set money=%u,coin=%d,pay_coin=%d,event_coin=%d  where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*13FDB0AD697C530', 219, 'inSert into log_dungeon_entrance_hour(channel_no,occ_date,dungeon_index,hour_enter_count, cnt_enter_count) values %s');
INSERT INTO `log_query_ref` VALUES ('*6C336D345592277', 220, 'inSert into dungeon_fail(occ_date,lev,occ_count) values(cast(now() as date),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*B9E9269B3B17A86', 221, 'inSert into log_nat_stat(occ_time,nat_type,nat_cnt) values(from_unixtime(%d),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*33F88971BC16C37', 222, 'upDate member_play_info set play_time=play_time+%d,play_count=play_count+1,trade_cnt=trade_cnt+%d, exp=exp+%u, used_fatigue=used_fatigue+%u, ting_count=ting_count+%d, ip=\'%s\', last_play_time=%u, pcbang_flag=%d, end_ip=\'%s\', mac_addr=\'%s\', server_id = %d where occ_date=cast(now() as date) and m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*935F55732A8212D', 223, 'seLect pre_type,unix_timestamp(service_start),unix_timestamp(service_end) from member_premium where m_id=%s and event_id=%d and service_end>now() and server_id in(0,%d) order by service_end desc limit 1');
INSERT INTO `log_query_ref` VALUES ('*538A7000D086E9C', 224, 'upDate user_items set slot=%d,clear_avatar_id=%d where ui_id=%d');
INSERT INTO `log_query_ref` VALUES ('*C234634EB3EF2CF', 225, 'upDate user_items set color1=%d, color2=%d where ui_id=%d and charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('*DAF56D495D5BE5E', 226, 'upDate charac_inven_expand set redeem_info=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*0F01063EFCEA827', 227, 'upDate pvp_result set win=%d,lose=%d,pvp_point=%d,pvp_grade=%d,avg_kill_count=%d,avg_buf_count=%d,avg_debuf_count=%d,avg_heal_count=%d,avg_counter_count=%d,avg_back_atk_count=%d,avg_union_hit_count=%d,avg_overkill_count=%d,avg_combo_count=%d,avg_aerial_count=%d,avg_attacked_count=%d,avg_deal_damage=%d,avg_technic=%d,avg_style=%d,avg_hit_penalty=%d,pvp_count=%d,win_point=%d,last_play_time=from_unixtime(%d), play_count=%u,play_time=%u where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*9546A54099578B6', 228, 'inSert into log_vending_stat(occ_date,channel_no,item_id,cnt) values(cast(now() as date),%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*FF8EB0042217C32', 229, 'seLect board,reward from event_1208_bingo where m_id = %s and occ_date > from_unixtime(%u)');
INSERT INTO `log_query_ref` VALUES ('*B26030D83EA111A', 230, 'seLect server_id, charac_no, job_type, charac_name from event_1208_growthcreature where m_id = %d');
INSERT INTO `log_query_ref` VALUES ('*3E94BFC2721137C', 231, 'upDate charac_kill_monster_info set boss_info=\'%s\', named_info=\'%s\', apc_boss_info=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*E8C22A4B067409F', 232, 'seLect fatigue_quantity from %s where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('*3978D3E988AD7FB', 233, 'upDate %s set fatigue_quantity=%u where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*65E9FF185E5761C', 234, 'inSert into log_item_develop(occ_time,it_no,server_id,charac_no,charac_name,develop,sucess_flag) values(now(),%d,%d,%d,\'%s\',%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*E4E401D28FDEDFE', 235, 'upDate member_miles set miles = %d where m_id = %u');
INSERT INTO `log_query_ref` VALUES ('*841DE833E1606E9', 236, 'upDate churn_member_info set accrue_cera= accrue_cera+%u where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*A626D68E3A3DF9A', 237, ' upDate prod_buy_user  set user_id = \'%s\', sex = %d, birthday = \'%s\', last_buy_time = now()  where m_id = %d ');
INSERT INTO `log_query_ref` VALUES ('*2AE033EFB2601FF', 238, 'seLect m_id, user_id from prod_buy_user where m_id = %d');
INSERT INTO `log_query_ref` VALUES ('*B5274CBD7AB4163', 239, ' inSert into prod_buy_user ( m_id, user_id, sex, birthday, first_buy_time, last_buy_time )  values(%d, \'%s\', %d, \'%s\', now(), now() ) ');
INSERT INTO `log_query_ref` VALUES ('*6EB2D50034CF63C', 240, ' insert into prod_sale_entry_%s  ( agency_no, seal_flag, sale_time, price, slot_part_type, slot_part_code, ipg_no, bonus_ipg_no, m_id, user_id  , server_id, charac_no, job, grow_type, level, prize_flag, new_flag, result_code, result_message, gift_server_info, gift_get_charac_no  , charge_price, free_price, count_no, each_price, price_type, user_ip, buy_type, tran_id )  values( \'%s\', %d, now(), %d, %d, %d, %d, %d, %d, \'%s\', %d, %d, %d, %d, %d, %d, %d, %d, \'%s\', %d, %d, %d, %d, %d, %d, %d, \'%s\', %u, %u ) ');
INSERT INTO `log_query_ref` VALUES ('*98EB906EB20ED76', 241, ' insert into prod_sale_entry_073 ( agency_no, seal_flag, sale_time, price, slot_part_type, slot_part_code, ipg_no, bonus_ipg_no, m_id, user_id, server_id, charac_no, job, prize_flag, new_flag, result_code, result_message )  values( \'%s\', %d, now(), %d, %d, %d, %d, %d, %d, \'%s\', %d, %d, %d, %d, %d, %d, \'%s\' ) ');
INSERT INTO `log_query_ref` VALUES ('*04C8F4745CA0D4B', 242, 'seLect m_id from pu_user_list where m_id = %u');
INSERT INTO `log_query_ref` VALUES ('*4697985DEE03DB5', 243, 'inSert into pu_user_list(m_id) values(%u)');
INSERT INTO `log_query_ref` VALUES ('*B414CE655CA1473', 244, 'inSert into fair_pvp_score(charac_no, pvp_mission_info) values(%u, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('*A2407F189110D72', 245, 'upDate aura_avatar_option set value_1=%d where charac_no=%u and option_type = %d');
INSERT INTO `log_query_ref` VALUES ('*3B0EEA466FC46AC', 246, 'inSert into aura_avatar_option(charac_no,option_type,value_1) values(%u,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*08B6509F643EDC5', 247, 'upDate creature_items set slot=%d where ui_id=%d');
INSERT INTO `log_query_ref` VALUES ('*D1216270FE01A05', 248, 'upDate creature_items set exp=%d,stomach=%d where ui_id=%d');
INSERT INTO `log_query_ref` VALUES ('*B0DBCB038F57FC5', 249, 'upDate charac_info set max_premium_fatigue=%d,guild_right=%d,event_charac_level=%d where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*E6D9900D08F11A5', 250, 'deLete from dnf_event_entry where m_id=%s and event_id=%d');
INSERT INTO `log_query_ref` VALUES ('*3B93C3A5B2599D9', 251, 'upDate charac_link_bonus set mercenary_start_time=%d,mercenary_finish_time=%d,mercenary_area=%d,mercenary_period=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*0C9D0F93259A030', 252, 'upDate inventory set money=%u,equipslot=\'%s\',inventory=\'%s\',creature=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*48291F7C652CACC', 253, 'upDate member_security_grade set goblin_validity_time		=unix_timestamp(now())+%d , validity_ip = \'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*6CD0BD2FF4B7FE7', 254, 'upDate member_dungeon set dungeon=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*679C2EE43100F0C', 255, 'upDate charac_option set best_clear_time = \'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*90B9295BC785DEC', 256, 'seLect selected, cube_type from cube_premium where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*BC35DAEC3D783B2', 257, 'inSert into log_dungeon_entrance(channel_no,occ_date,dungeon_index,enter_count, exercise_count) values%s');
INSERT INTO `log_query_ref` VALUES ('*A8A249DC70BC695', 258, 'upDate log_level_dungeon_play_count set total_charac_count=total_charac_count+%d,total_dungeon_play_count=total_dungeon_play_count+%d where level=%d');
INSERT INTO `log_query_ref` VALUES ('*E4E9C7F6B6357C7', 259, 'inSert into log_level_dungeon_play_count (level,total_charac_count,total_dungeon_play_count) values(%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*ED96AC3F6EB984D', 260, 'inSert into log_dungeon_exp(occ_time,channel_no,lev,exp,fatigue,user_count) values%s');
INSERT INTO `log_query_ref` VALUES ('*ED4DFE0996CA893', 261, 'upDate charac_option set options = \'%s\' where charac_no= %u');
INSERT INTO `log_query_ref` VALUES ('*ABEC1827B54B3C1', 262, 'inSert into charac_option(charac_no, options) values(%u,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('*4193EC0E22D4571', 263, 'seLect guild_id from charac_info where charac_no = %d');
INSERT INTO `log_query_ref` VALUES ('*BE8F27F96664EF7', 264, 'seLect event_charac_level from charac_info where m_id=%s and charac_no=%d and delete_flag=0');
INSERT INTO `log_query_ref` VALUES ('*FD0EEB44052CFB9', 265, 'upDate charac_info set delete_time=now(),delete_flag=1 where charac_no=%u and m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*FCA5669B7457B40', 266, 'deLete from dnf_master_charac where m_id=\'%u\' and server_id=\'%u\' and charac_no=\'%u\'');
INSERT INTO `log_query_ref` VALUES ('*DCAAC04A27376A1', 267, 'deLete from charac_option where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('*D29ED43C668F478', 268, 'inSert into log_gameserver_load_stat set occ_time=now(), server_id=%d, channel_no=%d, dbq_cnt=%d, logdbq_cnt=%d, netq_cnt=%d, packetq_cnt=%d');
INSERT INTO `log_query_ref` VALUES ('*D0344EB0A5C9608', 269, 'upDate dungeon_fail set occ_count = occ_count + %d where occ_date = now() and lev = %d');
INSERT INTO `log_query_ref` VALUES ('*0B7E0266F22B65D', 270, 'inSert into check_pick_up_random_option_item(m_id, check_count) values(%s, %u)');
INSERT INTO `log_query_ref` VALUES ('*DA77C655431313C', 271, 'seLect cnt from dnf_hack_log where m_id=%s and hack_type=%d and occ_date=CAST(DATE_FORMAT(now(), \'%%Y-%%m-%%d\') AS CHAR)');
INSERT INTO `log_query_ref` VALUES ('*2082233080AA18B', 272, 'inSert into re_stamina_shusia(occ_date,lev,occ_count) values(cast(now() as date),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*BA52BDB7FCA3B8C', 273, 'seLect combo_idx, value1, value2, value3, value4, value5, value6 from %s where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*30C94FAE31A946D', 274, 'upDate %s set value1 = %d, value2 = %d, value3 = %d, value4 = %d, value5 = %d, value6 = %d where charac_no = %u and combo_idx = %d');
INSERT INTO `log_query_ref` VALUES ('*8A933A8B6A650DD', 275, 'inSert into %s(charac_no, combo_idx, value1, value2, value3, value4, value5, value6) values(%u, %d, %d, %d, %d, %d, %d, %d)');
INSERT INTO `log_query_ref` VALUES ('*51C260B7135B773', 276, 'upDate %s set option_1=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*E5D393976B6CB71', 277, 'inSert into charac_manage_info(charac_no, tag_charac_no, striker_skill_index, max_equip_level) values(%u,%u,%u,%u)');
INSERT INTO `log_query_ref` VALUES ('*83B3484B080B1D1', 278, 'upDate charac_expert_job set expert_job_giveup_cnt=%d, expert_job_info=%d, expert_job_info_ex=%d, recipe=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*2C05CED687CF0AF', 279, 'inSert into charac_expert_job(charac_no, expert_job_giveup_cnt, expert_job_info, expert_job_info_ex, recipe) values(%u, %d, %d, %d, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('*A6C02D1FCC9D4CB', 280, 'seLect expert_job_giveup_cnt, expert_job_info, expert_job_info_ex, recipe  from charac_expert_job where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('*96F7B846CA490A4', 281, 'seLect skill_tree_index from charac_info where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*130ADAFDEC59BE1', 282, 'seLect %s from skill where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('*F5C80FD4FCA608E', 283, 'seLect charac_no, charac_name, job, lev, grow_type, skill_tree_index, maxHP, maxMP, phy_attack, phy_defense, mag_attack, mag_defense, element_resist, spec_property, inven_weight, hp_regen, mp_regen, move_speed, attack_speed, cast_speed, hit_recovery, jump, charac_weight from charac_info where charac_no = %d and delete_flag != 1');
INSERT INTO `log_query_ref` VALUES ('*7E5858E0B2BCADF', 284, 'seLect equipslot from inventory where charac_no = %d');
INSERT INTO `log_query_ref` VALUES ('*A905C56F50923AA', 285, 'seLect m_id from event_1306_account_reward_2nd where m_id=%s and occ_date > FROM_UNIXTIME(%d)');
INSERT INTO `log_query_ref` VALUES ('*7D9D7F41EEB73DB', 286, 'inSert into event_1306_account_reward_2nd (m_id , charac_no , occ_date ) values (%s , %u , now())');
INSERT INTO `log_query_ref` VALUES ('*DABEF5DCAE0F3F5', 287, 'seLect skill_slot, skill_slot_2nd from skill where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*28021D97848CCCD', 288, 'inSert into crash_down_by_dungeon(occ_time,dungeon_index,down_count) values(from_unixtime(%d),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*CAF7FA796DDAE0E', 289, 'inSert into crash_down_by_packet(occ_date,packet_index,down_count) values(cast(now() as date),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*B7A30BD84F36BA4', 290, 'inSert into crash_down_by_playstatus(occ_date,play_status,down_count) values(cast(now() as date),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*4BB18AD9EDB83B4', 291, 'upDate charac_info set charac_name=\'%s\' where charac_no=%d and delete_flag=0');
INSERT INTO `log_query_ref` VALUES ('*EE6F4CA3B59D329', 292, 'seLect guild_id from guild_member where charac_no=%d and member_flag=1 and server_id=%d');
INSERT INTO `log_query_ref` VALUES ('*67F5D83DC0D82AD', 293, 'seLect delete_flag,m_id,charac_no,job,lev,grow_type,sex from charac_info where charac_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('*9668AD8A0FCF479', 294, 'INSERT INTO item_making_skill_info (charac_no, weapon, cloth, leather, light_armor, heavy_armor, plate, amulet, wrist, ring, support, magic_stone) VALUES (1, 140, 140, 140, 140, 140, 140, 140, 140, 140, 140, 140) ON DUPLICATE KEY UPDATE weapon = VALUES(weapon),cloth = VALUES(cloth), leather = VALUES(leather), light_armor = VALUES(light_armor), heavy_armor = VALUES(heavy_armor), plate = VALUES(plate), amulet = VALUES(amulet), wrist = VALUES(wrist), ring = VALUES(ring), support = VALUES(support), magic_stone = VALUES(magic_stone)');
INSERT INTO `log_query_ref` VALUES ('*DF48663F1259EB3', 295, 'update pvp_result set win=win+1,pvp_point=500,pvp_grade=1,play_count=play_count+1,pvp_count=pvp_count+1,win_point=win_point+10 where charac_no=1\n');
INSERT INTO `log_query_ref` VALUES ('*9FD18B14BFA31FF', 296, 'update pvp_result set win=win+1,pvp_point=1000,pvp_grade=2,play_count=play_count+1,pvp_count=pvp_count+1,win_point=win_point+10 where charac_no=1\n');
INSERT INTO `log_query_ref` VALUES ('*4774599D6A3B5E5', 297, 'inSert into charac_option(charac_no, best_clear_time) values(%u, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('*B20A31EC1C085E0', 298, 'upDate human_certify_try_count set count = count + 1 where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('*24222030A915134', 299, 'inSert into human_certify_try_count(m_id, count) values(%s, 1)');
INSERT INTO `log_query_ref` VALUES ('*187ED5FD6C7F2DD', 300, 'seLect charac_no,lev,delete_flag,m_id from charac_info where charac_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('*149ADD7CE086FD3', 301, 'seLect count(*) from charac_black_list where m_id = %s and charac_no = %d');
INSERT INTO `log_query_ref` VALUES ('*74FEB6E057B237F', 302, 'upDate account_cargo set capacity = %d where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('*79549E43400F7DB', 303, 'upDate charac_manage_info set tag_charac_no=%u, striker_skill_index=%u, max_equip_level=%u where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*0E2905D6D400EAF', 304, 'upDate charac_tower_record set member_info_%d=\'%s\',stage_%d=%d,play_time_%d=%d,occ_time_%d=now() where charac_no=%d and tower_index=%d and stage_%d<=%d');
INSERT INTO `log_query_ref` VALUES ('*A424BCB1EDEFC01', 305, 'inSert into charac_tower_record(charac_no,tower_index,member_info_%d,stage_%d,play_time_%d,occ_time_%d) values(%d,%d,\'%s\',%d,%d,now())');
INSERT INTO `log_query_ref` VALUES ('*9430AA6E69BAF43', 306, 'seLect m_id from allow_proxy_user where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('*B4CF7CFA55B6639', 307, 'inSert into dnf_proxy_log values(now(),%s,\'%s\',\'%s\',%d)');
INSERT INTO `log_query_ref` VALUES ('*ADC0BFFF250AB61', 308, 'inSert into member_avatar_coin (m_id , avatar_coin ) values (%u , %u) on duplicate key upDate avatar_coin = %u ');
INSERT INTO `log_query_ref` VALUES ('*4F2ADE9DC2DCC48', 309, 'select inventory_v132,inventory_layout_version from inventory where charac_no=%u limit 1');
INSERT INTO `log_query_ref` VALUES ('*FD0F2AB737A6E68', 310, 'upDate inventory set inventory_v132=\'%s\',inventory_layout_version=132 where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*E88B4DBE0B8F9BC', 311, 'upDate account_cerashop_restrict set count=%u, next_date=%d, last_access_date=UNIX_TIMESTAMP() where m_id = %u and ipg_no=%u');
INSERT INTO `log_query_ref` VALUES ('*38A186C82EEF384', 312, 'inSert into account_cerashop_restrict(m_id, ipg_no, count, next_date, end_date, last_access_date) values(%u, %u, %u, %d, %d, UNIX_TIMESTAMP())');
INSERT INTO `log_query_ref` VALUES ('*E0B255B4B8DE128', 313, 'upDate creature_items set %s where ui_id=%d');
INSERT INTO `log_query_ref` VALUES ('*E2E8E45B4D14BD7', 314, 'select ui_id,bag_slot from charac_weapon_avatar_slot where charac_no=%u limit 1');
INSERT INTO `log_query_ref` VALUES ('*86572D76A46A4B9', 315, 'select ui_id from user_items where charac_no=%u and slot=%d and it_id=%u limit 1');
INSERT INTO `log_query_ref` VALUES ('*EFDD7A9AC4BD8E2', 316, 'inSert into charac_inven_expand(charac_no, cargo, cargo_capacity, jewel, current_equipslot, switch_equipslot, expand_equipslot, redeem_info) values(%u, \'%s\', %d, \'%s\', \'\', \'\', \'\', \'\') on duplicate key upDate cargo=values(cargo), cargo_capacity=values(cargo_capacity), jewel=values(jewel)');
INSERT INTO `log_query_ref` VALUES ('*DB92F9C55732E90', 317, 'inSert into charac_weapon_avatar_slot(charac_no, slot, ui_id, bag_slot) values(%u, 100, %u, %d) on duplicate key upDate slot=values(slot), ui_id=values(ui_id), bag_slot=values(bag_slot)');
INSERT INTO `log_query_ref` VALUES ('*B228809A825AD8D', 318, 'update user_items set slot=%d where charac_no=%u and ui_id=%u');
INSERT INTO `log_query_ref` VALUES ('*6FB33D6C74A5E43', 319, 'inSert into charac_inven_expand(charac_no, cargo, cargo_capacity, jewel, current_equipslot, switch_equipslot, expand_equipslot, redeem_info) values(%u, \'\', 0, \'\', \'\', \'\', \'%s\', \'\') on duplicate key upDate expand_equipslot=values(expand_equipslot)');
INSERT INTO `log_query_ref` VALUES ('*315EF2080F10885', 320, 'select it_id,slot from user_items where charac_no=%u and ui_id=%u limit 1');
INSERT INTO `log_query_ref` VALUES ('*D89551B86A6DFD6', 321, 'delete from charac_weapon_avatar_slot where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('*4D65940C0B104F6', 322, 'inSert into charac_weapon_avatar_slot(charac_no, slot, ui_id, bag_slot, item_record) values(%u, 100, %u, %d, unhex(\'%s\')) on duplicate key upDate slot=values(slot), ui_id=values(ui_id), bag_slot=values(bag_slot), item_record=values(item_record)');
INSERT INTO `log_query_ref` VALUES ('*7F70DC54B8E872E', 323, 'select item_record from charac_weapon_avatar_slot where charac_no=%u and ui_id=%u limit 1');
INSERT INTO `log_query_ref` VALUES ('*2B529A1822D994F', 324, 'seLect ui_id,unix_timestamp(reg_date),unix_timestamp(expire_date),ipg_agency_no,jewel_socket from user_items where charac_no=%d and ui_id %s');
INSERT INTO `log_query_ref` VALUES ('*90F24F570BC2939', 325, 'inSert into user_items (charac_no,slot,it_id,expire_date,obtain_from,reg_date,ability_no,ipg_agency_no,stat,jewel_socket,hidden_option,emblem_endurance) values(%u,%d,%u,from_unixtime(\'%s\'),%d,now(),%d,\'%s\',%d,\'%s\',%d,%d)');
INSERT INTO `log_query_ref` VALUES ('*CDA855C8AAF59B9', 326, 'update charac_advance_altar 				  set ticket_free = %d, ticket_cera = %d, 				  star_game = %d, star_cera = %d, star_usable = %d, 				  survival_best = %d, star_reset_count = %d, is_unlock_stage_effect = %d, 				  stage_list = \'%s\', 				  slot_list = \'%s\', 				  buy_item_list = \'%s\', 				  reward_list = \'%s\' 				  where charac_no = %u and ridable_id = %d');
INSERT INTO `log_query_ref` VALUES ('*7DD9E9F2DC0FEE8', 327, 'insert into charac_advance_altar 						  (charac_no, ridable_id, 						  ticket_free, ticket_cera, 						  star_game, star_cera, star_usable, 						  survival_best, star_reset_count, is_unlock_stage_effect, 						  stage_list, 						  slot_list, 						  buy_item_list, 						  reward_list) 						  values 						  (%u, %d, 						  %d, %d, 						  %d, %d, %d,						  %d, %d, %d, 						  \'%s\', 						  \'%s\', 						  \'%s\', 						  \'%s\')');

-- ----------------------------
-- Table structure for log_query_ref~
-- ----------------------------
DROP TABLE IF EXISTS `log_query_ref~`;
CREATE TABLE `log_query_ref~`  (
  `query_hash` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `q_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `query` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`q_id`) USING BTREE,
  UNIQUE INDEX `query_hash`(`query_hash`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_query_ref~
-- ----------------------------

-- ----------------------------
-- Table structure for login_account_1
-- ----------------------------
DROP TABLE IF EXISTS `login_account_1`;
CREATE TABLE `login_account_1`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `m_channel_no` int(11) NOT NULL DEFAULT 0,
  `login_status` tinyint(1) NOT NULL DEFAULT 0,
  `last_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_account_1
-- ----------------------------

-- ----------------------------
-- Table structure for login_account_2
-- ----------------------------
DROP TABLE IF EXISTS `login_account_2`;
CREATE TABLE `login_account_2`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `m_channel_no` int(11) NOT NULL DEFAULT 0,
  `login_status` tinyint(1) NOT NULL DEFAULT 0,
  `last_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_account_2
-- ----------------------------

-- ----------------------------
-- Table structure for login_account_3
-- ----------------------------
DROP TABLE IF EXISTS `login_account_3`;
CREATE TABLE `login_account_3`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `m_channel_no` int(11) NOT NULL DEFAULT 0,
  `login_status` tinyint(1) NOT NULL DEFAULT 0,
  `last_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_account_3
-- ----------------------------
INSERT INTO `login_account_3` VALUES (18000000, 3011, 0, '2023-12-04 08:43:02', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000001, 3011, 0, '2026-02-02 18:26:38', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000002, 3011, 0, '2026-05-21 17:24:25', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000003, 3011, 0, '2026-05-28 18:17:27', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000004, 3011, 0, '2026-05-29 23:13:35', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000005, 3011, 0, '2026-05-29 16:43:11', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000007, 3011, 0, '2026-05-29 19:32:55', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000008, 3011, 0, '2026-05-29 20:13:16', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000009, 3011, 0, '2026-05-29 20:19:16', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000010, 3011, 0, '2026-05-29 20:34:43', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000011, 3011, 0, '2026-05-29 20:41:16', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000013, 3011, 0, '2026-05-29 21:33:08', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000014, 3011, 0, '2026-05-29 22:28:43', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000015, 3011, 0, '2026-05-30 22:51:31', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000016, 3011, 0, '2026-05-30 03:47:28', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000017, 3011, 0, '2026-05-30 14:38:09', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000018, 3011, 0, '2026-05-30 15:32:18', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000019, 3011, 0, '2026-05-30 15:34:40', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000020, 3011, 0, '2026-05-30 16:34:23', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000021, 3011, 0, '2026-05-30 16:49:07', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000022, 3011, 0, '2026-05-30 17:11:20', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000023, 3011, 0, '2026-05-30 17:33:28', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000024, 3011, 0, '2026-05-30 17:42:40', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000025, 3011, 0, '2026-05-30 17:50:40', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000026, 3011, 0, '2026-05-30 18:21:38', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000027, 3011, 0, '2026-05-30 18:51:20', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000028, 3011, 0, '2026-05-30 19:12:20', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000029, 3011, 0, '2026-05-30 19:31:47', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000030, 3011, 0, '2026-05-30 19:38:27', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000031, 3011, 0, '2026-05-30 19:41:35', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000033, 3011, 0, '2026-05-30 20:27:33', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000034, 3011, 0, '2026-05-30 20:31:01', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000035, 3011, 0, '2026-05-30 20:48:40', '192.168.200.1');
INSERT INTO `login_account_3` VALUES (18000036, 3011, 1, '2026-05-31 18:40:13', '192.168.200.1');

-- ----------------------------
-- Table structure for login_history
-- ----------------------------
DROP TABLE IF EXISTS `login_history`;
CREATE TABLE `login_history`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_time` int(11) NOT NULL DEFAULT 0,
  `trigger` tinyint(4) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of login_history
-- ----------------------------

-- ----------------------------
-- Table structure for member_captcha_info
-- ----------------------------
DROP TABLE IF EXISTS `member_captcha_info`;
CREATE TABLE `member_captcha_info`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cert_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fail_count` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of member_captcha_info
-- ----------------------------

-- ----------------------------
-- Table structure for member_doubt_trade
-- ----------------------------
DROP TABLE IF EXISTS `member_doubt_trade`;
CREATE TABLE `member_doubt_trade`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `last_update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `over_count` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of member_doubt_trade
-- ----------------------------

-- ----------------------------
-- Table structure for member_game_option
-- ----------------------------
DROP TABLE IF EXISTS `member_game_option`;
CREATE TABLE `member_game_option`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `option_1` blob NOT NULL,
  `option_2` blob NOT NULL,
  `option_3` blob NOT NULL,
  `shortcut_emoticon` blob NOT NULL,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_game_option
-- ----------------------------
INSERT INTO `member_game_option` VALUES (18000000, 0x48000000789C63646064F85FCFCC90028408F0BF9E112C0E81AC50B117CC20F114A00C02304221004AF10E1A, '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000001, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000002, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000003, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000004, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000005, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000007, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000008, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000009, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000010, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000011, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000013, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000014, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000015, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000016, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000017, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000018, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000019, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000020, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000021, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000022, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000023, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000024, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000025, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000026, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000027, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000028, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000029, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000030, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000031, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000033, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000034, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000035, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
INSERT INTO `member_game_option` VALUES (18000036, '', '', '', 0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);

-- ----------------------------
-- Table structure for member_key_option
-- ----------------------------
DROP TABLE IF EXISTS `member_key_option`;
CREATE TABLE `member_key_option`  (
  `m_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `key_type` tinyint(4) NOT NULL DEFAULT 0,
  `key_option` blob NOT NULL,
  PRIMARY KEY (`m_id`, `key_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_key_option
-- ----------------------------

-- ----------------------------
-- Table structure for member_login
-- ----------------------------
DROP TABLE IF EXISTS `member_login`;
CREATE TABLE `member_login`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `login_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_play_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_account_fail` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `account_fail` tinyint(4) NOT NULL DEFAULT 0,
  `report_cnt` int(11) NOT NULL DEFAULT 0,
  `reliable_flag` tinyint(4) NOT NULL DEFAULT 0,
  `trade_gold_daily` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_gift_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gift_cnt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `login_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `security_flag` tinyint(4) NOT NULL DEFAULT 0,
  `power_side` tinyint(4) NOT NULL DEFAULT 0,
  `dungeon_gain_gold` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `school_id` int(11) NOT NULL DEFAULT 0,
  `rating` float NOT NULL DEFAULT 0,
  `cleanpad_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tutorial_skipable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `event_charac_flag` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `garena_token_key` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_login
-- ----------------------------
INSERT INTO `member_login` VALUES (18000000, 1435583760, 1701650582, 1701650582, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 4830541, 0, 0, 1, '1', 0, 0);
INSERT INTO `member_login` VALUES (18000001, 1435583760, 1770027997, 1770027997, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 1, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000002, 1435583760, 1779355465, 1779355464, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 1, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000003, 1435583760, 1779960526, 1779960525, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 1, '1', 0, 0);
INSERT INTO `member_login` VALUES (18000004, 1435583760, 1780067615, 1780067614, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 38, 0, 0, 1, '1', 0, 0);
INSERT INTO `member_login` VALUES (18000005, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000007, 1435583760, 1780054375, 1780054375, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 1, '1', 0, 0);
INSERT INTO `member_login` VALUES (18000008, 1435583760, 1780056796, 1780056794, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 1, '1', 0, 0);
INSERT INTO `member_login` VALUES (18000009, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000010, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000011, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000013, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000014, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000015, 1435583760, 1780152585, 1780152585, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 150, 0, 0, 1, '1', 0, 0);
INSERT INTO `member_login` VALUES (18000016, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000017, 1435583760, 1780123070, 1780123070, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 1, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000018, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000019, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000020, 1435583760, 1780130063, 1780130063, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 1, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000021, 1435583760, 1780130936, 1780130936, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 1, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000022, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000023, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000024, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000025, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000026, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000027, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000028, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000029, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000030, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000031, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000032, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000033, 1435583760, 0, 0, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 0, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000034, 1435583760, 1780144261, 1780144260, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 1, '0', 0, 0);
INSERT INTO `member_login` VALUES (18000035, 1435583760, 1780145320, 1780145320, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 0, 0, 0, 1, '1', 0, 0);
INSERT INTO `member_login` VALUES (18000036, 1435583760, 1780224622, 1780224442, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', 0, 0, 71, 0, 0, 1, '1', 0, 0);

-- ----------------------------
-- Table structure for member_login_backup
-- ----------------------------
DROP TABLE IF EXISTS `member_login_backup`;
CREATE TABLE `member_login_backup`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `login_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_play_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_account_fail` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `account_fail` tinyint(4) NOT NULL DEFAULT 0,
  `report_cnt` int(11) NOT NULL DEFAULT 0,
  `reliable_flag` tinyint(4) NOT NULL DEFAULT 0,
  `trade_gold_daily` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_gift_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gift_cnt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `login_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `security_flag` tinyint(4) NOT NULL DEFAULT 0,
  `power_side` tinyint(4) NOT NULL DEFAULT 0,
  `dungeon_gain_gold` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `school_id` int(11) NOT NULL DEFAULT 0,
  `rating` float NOT NULL DEFAULT 0,
  `cleanpad_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tutorial_skipable` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_login_backup
-- ----------------------------

-- ----------------------------
-- Table structure for member_mousepass
-- ----------------------------
DROP TABLE IF EXISTS `member_mousepass`;
CREATE TABLE `member_mousepass`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `mousepass` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fail_cnt` tinyint(4) NOT NULL DEFAULT 0,
  `cancel_cnt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `version_info` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `validity_time` int(11) NOT NULL DEFAULT 0,
  `reward_time` int(11) NOT NULL DEFAULT 0,
  `enable_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_mousepass
-- ----------------------------

-- ----------------------------
-- Table structure for member_mousepass_history
-- ----------------------------
DROP TABLE IF EXISTS `member_mousepass_history`;
CREATE TABLE `member_mousepass_history`  (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `m_id` int(11) NOT NULL DEFAULT 0,
  `pre_mousepass` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `modify_type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_mousepass_history
-- ----------------------------

-- ----------------------------
-- Table structure for member_play_info
-- ----------------------------
DROP TABLE IF EXISTS `member_play_info`;
CREATE TABLE `member_play_info`  (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `m_id` int(11) NOT NULL DEFAULT 0,
  `play_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `play_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_cnt` int(11) NOT NULL DEFAULT 0,
  `exp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `used_fatigue` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `last_play_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pcbang_flag` tinyint(4) NOT NULL DEFAULT 0,
  `end_ip` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ting_count` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `mac_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`occ_date`, `m_id`) USING BTREE,
  INDEX `idx_m_id`(`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_play_info
-- ----------------------------
INSERT INTO `member_play_info` VALUES ('2023-12-01', 18000000, 23477, 15, 0, 6715808, 246, '192.168.200', 1701433485, 1, '1', 0, 'E32AB35C634E099BEA7241E3AF89E2A3C726082A7337858DAF1064BCB7025B40', 3);
INSERT INTO `member_play_info` VALUES ('2023-12-02', 18000000, 40833, 6, 0, 26373120, 364, '192.168.200', 1701517491, 1, '1', 0, 'E32AB35C634E099BEA7241E3AF89E2A3C726082A7337858DAF1064BCB7025B40', 3);
INSERT INTO `member_play_info` VALUES ('2023-12-03', 18000000, 20364, 15, 0, 127850354, 223, '192.168.200', 1701601888, 1, '1', 2, 'E32AB35C634E099BEA7241E3AF89E2A3C726082A7337858DAF1064BCB7025B40', 3);
INSERT INTO `member_play_info` VALUES ('2023-12-04', 18000000, 5113, 3, 0, 16057172, 166, '192.168.200', 1701647564, 1, '1', 0, 'E32AB35C634E099BEA7241E3AF89E2A3C726082A7337858DAF1064BCB7025B40', 3);
INSERT INTO `member_play_info` VALUES ('2026-01-09', 18000001, 0, 3, 0, 0, 0, '192.168.200', 1767955296, 0, '1', 3, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-01-10', 18000001, 3, 8, 0, 0, 0, '192.168.200', 1768052292, 0, '1', 8, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-01-11', 18000001, 7, 49, 0, 0, 0, '192.168.200', 1768128577, 0, '1', 49, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-01-15', 18000001, 3, 19, 0, 0, 0, '192.168.200', 1768475399, 0, '1', 19, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-01-16', 18000001, 2, 23, 0, 0, 0, '192.168.200', 1768558772, 0, '1', 23, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-01-17', 18000001, 0, 4, 0, 0, 0, '192.168.200', 1768630908, 0, '1', 4, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-01-27', 18000001, 1, 1, 0, 0, 0, '192.168.200', 1769507244, 0, '1', 1, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-01-28', 18000001, 464, 86, 0, 0, 0, '192.168.200', 1769611693, 0, '1', 82, '19A422F95B7CC3243FE9AE29ECF69AD0EBD3206A1CAB3F57438C75097BE3BB73', 3);
INSERT INTO `member_play_info` VALUES ('2026-01-29', 18000001, 391, 7, 0, 0, 0, '192.168.200', 1769653475, 0, '1', 7, '19A422F95B7CC3243FE9AE29ECF69AD0EBD3206A1CAB3F57438C75097BE3BB73', 3);
INSERT INTO `member_play_info` VALUES ('2026-02-02', 18000001, 367, 3, 0, 0, 0, '192.168.200', 1770027831, 0, '1', 1, '19A422F95B7CC3243FE9AE29ECF69AD0EBD3206A1CAB3F57438C75097BE3BB73', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-21', 18000002, 64, 2, 0, 156, 0, '192.168.200', 1779355455, 0, '1', 0, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-26', 18000003, 1018, 1, 0, 190000156, 0, '192.168.200', 1779807873, 0, '1', 1, '19A422F95B7CC3243FE9AE29ECF69AD0EBD3206A1CAB3F57438C75097BE3BB73', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-27', 18000003, 5432, 26, 0, 110011524, 0, '192.168.200', 1779895366, 0, '1', 26, 'F765DE8F186793DA2BEF73C7B629C3182651AF637CB3F20A6AD057B1C43EF4AA', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-28', 18000003, 3301, 14, 0, 648980, 0, '192.168.200', 1779960260, 0, '1', 14, 'F765DE8F186793DA2BEF73C7B629C3182651AF637CB3F20A6AD057B1C43EF4AA', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-28', 18000004, 6038, 9, 0, 321402332, 0, '192.168.200', 1779977920, 0, '1', 9, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-29', 18000004, 6513, 39, 0, 3210, 5, '192.168.200', 1780067599, 0, '1', 36, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-29', 18000015, 822, 8, 0, 50003189, 9, '192.168.200', 1780069808, 0, '1', 8, 'D715968B4BC721A01C0F873C3280270B35535CA609E81B45676427C3D2127B88', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-29', 18000007, 247, 1, 0, 70000156, 0, '192.168.200', 1780054128, 0, '1', 1, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-29', 18000008, 491, 2, 0, 40000156, 0, '192.168.200', 1780056704, 0, '1', 2, 'D715968B4BC721A01C0F873C3280270B35535CA609E81B45676427C3D2127B88', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-30', 18000015, 6876, 61, 0, 270000138, 6, '192.168.200', 1780152274, 0, '1', 60, '19A422F95B7CC3243FE9AE29ECF69AD0EBD3206A1CAB3F57438C75097BE3BB73', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-30', 18000017, 32, 2, 0, 0, 0, '192.168.200', 1780123053, 0, '1', 2, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-30', 18000020, 13, 1, 0, 0, 0, '192.168.200', 1780130050, 0, '1', 1, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-30', 18000021, 25, 2, 0, 0, 0, '192.168.200', 1780130923, 0, '1', 2, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-30', 18000034, 48, 1, 0, 158, 0, '192.168.200', 1780144212, 0, '1', 1, '19A422F95B7CC3243FE9AE29ECF69AD0EBD3206A1CAB3F57438C75097BE3BB73', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-30', 18000035, 182, 1, 0, 80000156, 0, '192.168.200', 1780145138, 0, '1', 1, '', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-30', 18000036, 579, 4, 0, 230000239, 3, '192.168.200', 1780154456, 0, '1', 4, '19A422F95B7CC3243FE9AE29ECF69AD0EBD3206A1CAB3F57438C75097BE3BB73', 3);
INSERT INTO `member_play_info` VALUES ('2026-05-31', 18000036, 4200, 14, 0, 90000055, 17, '192.168.200', 1780223031, 0, '1', 14, '19A422F95B7CC3243FE9AE29ECF69AD0EBD3206A1CAB3F57438C75097BE3BB73', 3);

-- ----------------------------
-- Table structure for member_play_info_del
-- ----------------------------
DROP TABLE IF EXISTS `member_play_info_del`;
CREATE TABLE `member_play_info_del`  (
  `sdate` date NOT NULL DEFAULT '0000-00-00',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `m_id` int(11) NOT NULL DEFAULT 0,
  `play_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `play_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_cnt` int(11) NOT NULL DEFAULT 0,
  `exp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `used_fatigue` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `last_play_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pcbang_flag` tinyint(4) NOT NULL DEFAULT 0,
  `end_ip` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ting_count` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `mac_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sdate`, `occ_date`, `m_id`) USING BTREE,
  INDEX `idx_m_id`(`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_play_info_del
-- ----------------------------

-- ----------------------------
-- Table structure for member_premium
-- ----------------------------
DROP TABLE IF EXISTS `member_premium`;
CREATE TABLE `member_premium`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `pre_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `service_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `service_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`, `pre_type`, `server_id`, `m_id`, `service_start`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of member_premium
-- ----------------------------
INSERT INTO `member_premium` VALUES (50023, 12, 0, 18000000, '2023-12-01 15:21:56', '2023-12-16 15:21:56');
INSERT INTO `member_premium` VALUES (50010, 27, 0, 18000000, '2023-12-01 15:22:12', '2023-12-16 15:22:12');

-- ----------------------------
-- Table structure for member_premium_old
-- ----------------------------
DROP TABLE IF EXISTS `member_premium_old`;
CREATE TABLE `member_premium_old`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `pre_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `service_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `service_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`event_id`, `pre_type`, `server_id`, `m_id`, `service_start`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of member_premium_old
-- ----------------------------

-- ----------------------------
-- Table structure for member_security_card
-- ----------------------------
DROP TABLE IF EXISTS `member_security_card`;
CREATE TABLE `member_security_card`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cert_key` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `server_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fail_cnt` tinyint(4) NOT NULL DEFAULT 0,
  `re_issue_cnt` tinyint(4) NOT NULL DEFAULT 0,
  `last_issue_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `validity_time` int(11) NOT NULL DEFAULT 0,
  `apply_flag` tinyint(4) NOT NULL DEFAULT 0,
  `cancel_cnt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `web_flag` tinyint(4) NOT NULL DEFAULT 0,
  `cert_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`) USING BTREE,
  INDEX `idx_phone`(`phone`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_security_card
-- ----------------------------

-- ----------------------------
-- Table structure for member_security_card_history
-- ----------------------------
DROP TABLE IF EXISTS `member_security_card_history`;
CREATE TABLE `member_security_card_history`  (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `m_id` int(11) NOT NULL DEFAULT 0,
  `modify_type` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`occ_time`, `m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of member_security_card_history
-- ----------------------------

-- ----------------------------
-- Table structure for nexon_none_memner_restriction
-- ----------------------------
DROP TABLE IF EXISTS `nexon_none_memner_restriction`;
CREATE TABLE `nexon_none_memner_restriction`  (
  `m_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `charac_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_trade_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_trade_gold` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `trade_count` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `nexon_user` tinyint(4) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of nexon_none_memner_restriction
-- ----------------------------

-- ----------------------------
-- Table structure for village_attacked_charac_point_rank
-- ----------------------------
DROP TABLE IF EXISTS `village_attacked_charac_point_rank`;
CREATE TABLE `village_attacked_charac_point_rank`  (
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hunting_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`server_info`, `occ_date`, `charac_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of village_attacked_charac_point_rank
-- ----------------------------

-- ----------------------------
-- Table structure for village_attacked_server_point_rank
-- ----------------------------
DROP TABLE IF EXISTS `village_attacked_server_point_rank`;
CREATE TABLE `village_attacked_server_point_rank`  (
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `hunting_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`server_info`, `occ_date`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of village_attacked_server_point_rank
-- ----------------------------

-- ----------------------------
-- Table structure for village_attacked_server_time_rank
-- ----------------------------
DROP TABLE IF EXISTS `village_attacked_server_time_rank`;
CREATE TABLE `village_attacked_server_time_rank`  (
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `clear_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`server_info`, `occ_date`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of village_attacked_server_time_rank
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
