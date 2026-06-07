/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.200.131
 Source Server Type    : MySQL
 Source Server Version : 50527 (5.5.27)
 Source Host           : 192.168.200.131:3306
 Source Schema         : taiwan_game_event

 Target Server Type    : MySQL
 Target Server Version : 50527 (5.5.27)
 File Encoding         : 65001

 Date: 31/05/2026 18:49:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cleanup_constant
-- ----------------------------
DROP TABLE IF EXISTS `cleanup_constant`;
CREATE TABLE `cleanup_constant`  (
  `limit_penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `base1_penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `base2_penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `base3_penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `base4_penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `person_trade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `person_shop_trade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `auction_trade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mail_trade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mail_min_gold` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `abnormal_npc_trade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `abnormal_user_trade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dungeon_clear` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `removal_dungeon_clear` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `penalty_user_trade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `penalty_ghost_clear_n` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `penalty_ghost_clear_m` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `penalty_ghost_clear_l` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pc_room_weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hps_ip_weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `otm_weight_n` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `otm_weight_m` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hack_weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `pvp_penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dungeon_clear_penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `quest_clear_penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reduce_time_date` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reduce_time_penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cleanup_constant
-- ----------------------------

-- ----------------------------
-- Table structure for cleanup_dungeon_list
-- ----------------------------
DROP TABLE IF EXISTS `cleanup_dungeon_list`;
CREATE TABLE `cleanup_dungeon_list`  (
  `dungeon_idx` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cleanup_dungeon_list
-- ----------------------------

-- ----------------------------
-- Table structure for cleanup_penalty_log
-- ----------------------------
DROP TABLE IF EXISTS `cleanup_penalty_log`;
CREATE TABLE `cleanup_penalty_log`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `penalty_point` tinyint(3) NOT NULL DEFAULT 0,
  `current_point` int(11) NOT NULL DEFAULT 0,
  `reset_cnt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cause` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pattern` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `m_id`(`m_id`, `occ_date`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cleanup_penalty_log
-- ----------------------------

-- ----------------------------
-- Table structure for cleanup_user_data
-- ----------------------------
DROP TABLE IF EXISTS `cleanup_user_data`;
CREATE TABLE `cleanup_user_data`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `restriction_cnt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cur_state` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_trade_cnt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `npc_trade_cnt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dungeon_clear_cnt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `last_clear_map_idx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ghost_clear_cnt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `last_penalty_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `other_penalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `other_penalty_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cleanup_user_data
-- ----------------------------

-- ----------------------------
-- Table structure for collect_items
-- ----------------------------
DROP TABLE IF EXISTS `collect_items`;
CREATE TABLE `collect_items`  (
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `total_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cur_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `change_flag` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `full_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`server_info`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of collect_items
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_event_entry_notuse
-- ----------------------------
DROP TABLE IF EXISTS `dnf_event_entry_notuse`;
CREATE TABLE `dnf_event_entry_notuse`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `obtain_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of dnf_event_entry_notuse
-- ----------------------------

-- ----------------------------
-- Table structure for event_1106_idol_bring_count
-- ----------------------------
DROP TABLE IF EXISTS `event_1106_idol_bring_count`;
CREATE TABLE `event_1106_idol_bring_count`  (
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `pot_type` tinyint(4) NOT NULL DEFAULT 0,
  `r_count` int(11) NOT NULL DEFAULT 0,
  `adjust_value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`server_id`, `pot_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1106_idol_bring_count
-- ----------------------------

-- ----------------------------
-- Table structure for event_1107_avenger_plan
-- ----------------------------
DROP TABLE IF EXISTS `event_1107_avenger_plan`;
CREATE TABLE `event_1107_avenger_plan`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1107_avenger_plan
-- ----------------------------

-- ----------------------------
-- Table structure for event_1112_at_mage_12up
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_at_mage_12up`;
CREATE TABLE `event_1112_at_mage_12up`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1112_at_mage_12up
-- ----------------------------

-- ----------------------------
-- Table structure for event_1202_fatigue_attendance
-- ----------------------------
DROP TABLE IF EXISTS `event_1202_fatigue_attendance`;
CREATE TABLE `event_1202_fatigue_attendance`  (
  `occ_day` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fatigue` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`occ_day`, `m_id`) USING BTREE,
  INDEX `m_id`(`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1202_fatigue_attendance
-- ----------------------------

-- ----------------------------
-- Table structure for event_1207_growthweapon
-- ----------------------------
DROP TABLE IF EXISTS `event_1207_growthweapon`;
CREATE TABLE `event_1207_growthweapon`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `growthweapon_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `timepiece` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `infinityweapon_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reward_occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1207_growthweapon
-- ----------------------------

-- ----------------------------
-- Table structure for event_1208_bingo
-- ----------------------------
DROP TABLE IF EXISTS `event_1208_bingo`;
CREATE TABLE `event_1208_bingo`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `board` int(10) UNSIGNED NULL DEFAULT 0,
  `reward` tinyint(4) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`no`) USING BTREE,
  INDEX `id_date`(`m_id`, `occ_date`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1208_bingo
-- ----------------------------

-- ----------------------------
-- Table structure for event_1306_account_reward
-- ----------------------------
DROP TABLE IF EXISTS `event_1306_account_reward`;
CREATE TABLE `event_1306_account_reward`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1306_account_reward
-- ----------------------------
INSERT INTO `event_1306_account_reward` VALUES (18000000, 2, '2023-12-04 08:07:11');
INSERT INTO `event_1306_account_reward` VALUES (18000001, 3, '2026-02-02 18:24:48');
INSERT INTO `event_1306_account_reward` VALUES (18000002, 6, '2026-05-21 17:24:21');
INSERT INTO `event_1306_account_reward` VALUES (18000003, 9, '2026-05-28 17:24:27');
INSERT INTO `event_1306_account_reward` VALUES (18000004, 11, '2026-05-29 23:13:25');
INSERT INTO `event_1306_account_reward` VALUES (18000005, 19, '2026-05-29 16:43:20');
INSERT INTO `event_1306_account_reward` VALUES (18000007, 20, '2026-05-29 19:28:54');
INSERT INTO `event_1306_account_reward` VALUES (18000008, 21, '2026-05-29 20:11:50');
INSERT INTO `event_1306_account_reward` VALUES (18000009, 22, '2026-05-29 20:19:25');
INSERT INTO `event_1306_account_reward` VALUES (18000010, 23, '2026-05-29 20:34:54');
INSERT INTO `event_1306_account_reward` VALUES (18000011, 24, '2026-05-29 20:41:24');
INSERT INTO `event_1306_account_reward` VALUES (18000013, 25, '2026-05-29 21:33:17');
INSERT INTO `event_1306_account_reward` VALUES (18000014, 26, '2026-05-29 22:28:56');
INSERT INTO `event_1306_account_reward` VALUES (18000015, 27, '2026-05-30 22:51:37');
INSERT INTO `event_1306_account_reward` VALUES (18000016, 28, '2026-05-30 03:47:48');
INSERT INTO `event_1306_account_reward` VALUES (18000017, 29, '2026-05-30 14:38:20');
INSERT INTO `event_1306_account_reward` VALUES (18000018, 30, '2026-05-30 15:32:30');
INSERT INTO `event_1306_account_reward` VALUES (18000019, 31, '2026-05-30 15:34:47');
INSERT INTO `event_1306_account_reward` VALUES (18000020, 32, '2026-05-30 16:01:24');
INSERT INTO `event_1306_account_reward` VALUES (18000021, 33, '2026-05-30 16:49:17');
INSERT INTO `event_1306_account_reward` VALUES (18000022, 34, '2026-05-30 17:11:30');
INSERT INTO `event_1306_account_reward` VALUES (18000023, 35, '2026-05-30 17:33:36');
INSERT INTO `event_1306_account_reward` VALUES (18000024, 36, '2026-05-30 17:42:48');
INSERT INTO `event_1306_account_reward` VALUES (18000025, 37, '2026-05-30 17:50:49');
INSERT INTO `event_1306_account_reward` VALUES (18000026, 38, '2026-05-30 18:21:46');
INSERT INTO `event_1306_account_reward` VALUES (18000027, 39, '2026-05-30 18:51:28');
INSERT INTO `event_1306_account_reward` VALUES (18000028, 40, '2026-05-30 19:12:28');
INSERT INTO `event_1306_account_reward` VALUES (18000029, 41, '2026-05-30 19:31:57');
INSERT INTO `event_1306_account_reward` VALUES (18000030, 42, '2026-05-30 19:38:35');
INSERT INTO `event_1306_account_reward` VALUES (18000031, 43, '2026-05-30 19:41:43');
INSERT INTO `event_1306_account_reward` VALUES (18000033, 44, '2026-05-30 20:27:42');
INSERT INTO `event_1306_account_reward` VALUES (18000034, 45, '2026-05-30 20:30:21');
INSERT INTO `event_1306_account_reward` VALUES (18000035, 46, '2026-05-30 20:45:45');
INSERT INTO `event_1306_account_reward` VALUES (18000036, 47, '2026-05-31 18:40:18');

-- ----------------------------
-- Table structure for event_1306_account_reward_2nd
-- ----------------------------
DROP TABLE IF EXISTS `event_1306_account_reward_2nd`;
CREATE TABLE `event_1306_account_reward_2nd`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`, `occ_date`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_1306_account_reward_2nd
-- ----------------------------
INSERT INTO `event_1306_account_reward_2nd` VALUES (18000000, 1, '2023-12-01 10:54:11');
INSERT INTO `event_1306_account_reward_2nd` VALUES (18000000, 1, '2023-12-02 07:45:43');
INSERT INTO `event_1306_account_reward_2nd` VALUES (18000000, 1, '2023-12-03 10:06:04');
INSERT INTO `event_1306_account_reward_2nd` VALUES (18000000, 2, '2023-12-04 06:48:30');
INSERT INTO `event_1306_account_reward_2nd` VALUES (18000004, 12, '2026-05-29 21:19:52');

-- ----------------------------
-- Table structure for event_account_fatigue
-- ----------------------------
DROP TABLE IF EXISTS `event_account_fatigue`;
CREATE TABLE `event_account_fatigue`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fatigue` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_account_fatigue
-- ----------------------------

-- ----------------------------
-- Table structure for event_account_fatigue_reward
-- ----------------------------
DROP TABLE IF EXISTS `event_account_fatigue_reward`;
CREATE TABLE `event_account_fatigue_reward`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_account_fatigue_reward
-- ----------------------------

-- ----------------------------
-- Table structure for event_at_fighter_doll
-- ----------------------------
DROP TABLE IF EXISTS `event_at_fighter_doll`;
CREATE TABLE `event_at_fighter_doll`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_at_fighter_doll
-- ----------------------------

-- ----------------------------
-- Table structure for event_attendance_check_info
-- ----------------------------
DROP TABLE IF EXISTS `event_attendance_check_info`;
CREATE TABLE `event_attendance_check_info`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `base_check_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `base_check_cnt` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_check_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bonus_check_cnt` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_attendance_check_info
-- ----------------------------

-- ----------------------------
-- Table structure for event_clear_quest
-- ----------------------------
DROP TABLE IF EXISTS `event_clear_quest`;
CREATE TABLE `event_clear_quest`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `clear_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[2010-08] ｽﾅﾀﾎｾｾ ﾀﾌｺ･ﾆｮ' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_clear_quest
-- ----------------------------

-- ----------------------------
-- Table structure for event_create_charac
-- ----------------------------
DROP TABLE IF EXISTS `event_create_charac`;
CREATE TABLE `event_create_charac`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`, `server_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[2010-08] ｽﾅﾀﾎｾｾ ﾀﾌｺ･ﾆｮ' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_create_charac
-- ----------------------------

-- ----------------------------
-- Table structure for event_create_dnf_info
-- ----------------------------
DROP TABLE IF EXISTS `event_create_dnf_info`;
CREATE TABLE `event_create_dnf_info`  (
  `event_day` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL,
  `rate` int(10) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`occ_time`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_create_dnf_info
-- ----------------------------

-- ----------------------------
-- Table structure for event_create_dnf_user
-- ----------------------------
DROP TABLE IF EXISTS `event_create_dnf_user`;
CREATE TABLE `event_create_dnf_user`  (
  `occ_date` date NOT NULL,
  `m_id` int(11) NOT NULL,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `occ_time` time NOT NULL,
  PRIMARY KEY (`occ_date`, `m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_create_dnf_user
-- ----------------------------

-- ----------------------------
-- Table structure for event_give_title_twn
-- ----------------------------
DROP TABLE IF EXISTS `event_give_title_twn`;
CREATE TABLE `event_give_title_twn`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_give_title_twn
-- ----------------------------

-- ----------------------------
-- Table structure for event_hero_mission_data
-- ----------------------------
DROP TABLE IF EXISTS `event_hero_mission_data`;
CREATE TABLE `event_hero_mission_data`  (
  `server_group` tinyint(3) UNSIGNED NOT NULL,
  `charac_no` int(10) UNSIGNED NOT NULL,
  `mission` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mod_date` datetime NOT NULL,
  PRIMARY KEY (`server_group`, `charac_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event_hero_mission_data
-- ----------------------------

-- ----------------------------
-- Table structure for event_ingame_history
-- ----------------------------
DROP TABLE IF EXISTS `event_ingame_history`;
CREATE TABLE `event_ingame_history`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `history_1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `history_2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`, `type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_ingame_history
-- ----------------------------

-- ----------------------------
-- Table structure for event_login_reward_in_list
-- ----------------------------
DROP TABLE IF EXISTS `event_login_reward_in_list`;
CREATE TABLE `event_login_reward_in_list`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reward_flag` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_login_reward_in_list
-- ----------------------------

-- ----------------------------
-- Table structure for event_minority_point
-- ----------------------------
DROP TABLE IF EXISTS `event_minority_point`;
CREATE TABLE `event_minority_point`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `point` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_minority_point
-- ----------------------------

-- ----------------------------
-- Table structure for event_ontime_info
-- ----------------------------
DROP TABLE IF EXISTS `event_ontime_info`;
CREATE TABLE `event_ontime_info`  (
  `no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_ontime_info
-- ----------------------------

-- ----------------------------
-- Table structure for event_ontime_item
-- ----------------------------
DROP TABLE IF EXISTS `event_ontime_item`;
CREATE TABLE `event_ontime_item`  (
  `idx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cnt` int(10) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_ontime_item
-- ----------------------------

-- ----------------------------
-- Table structure for event_ontime_user
-- ----------------------------
DROP TABLE IF EXISTS `event_ontime_user`;
CREATE TABLE `event_ontime_user`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_ontime_user
-- ----------------------------

-- ----------------------------
-- Table structure for event_purchase_cnt
-- ----------------------------
DROP TABLE IF EXISTS `event_purchase_cnt`;
CREATE TABLE `event_purchase_cnt`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `purchase_cnt` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_purchase_cnt
-- ----------------------------

-- ----------------------------
-- Table structure for event_reserving_charac_name
-- ----------------------------
DROP TABLE IF EXISTS `event_reserving_charac_name`;
CREATE TABLE `event_reserving_charac_name`  (
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `server_info` tinyint(4) NOT NULL DEFAULT 0,
  `charac_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`server_info`, `charac_name`) USING BTREE,
  INDEX `event_reserving_charac_name_idx001`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event_reserving_charac_name
-- ----------------------------

-- ----------------------------
-- Table structure for event_reserving_charac_name_20130328
-- ----------------------------
DROP TABLE IF EXISTS `event_reserving_charac_name_20130328`;
CREATE TABLE `event_reserving_charac_name_20130328`  (
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `server_info` tinyint(4) NOT NULL DEFAULT 0,
  `charac_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event_reserving_charac_name_20130328
-- ----------------------------

-- ----------------------------
-- Table structure for event_reserving_charac_name_20130329
-- ----------------------------
DROP TABLE IF EXISTS `event_reserving_charac_name_20130329`;
CREATE TABLE `event_reserving_charac_name_20130329`  (
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `server_info` tinyint(4) NOT NULL DEFAULT 0,
  `charac_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`server_info`, `charac_name`) USING BTREE,
  INDEX `event_reserving_charac_name_idx001`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event_reserving_charac_name_20130329
-- ----------------------------

-- ----------------------------
-- Table structure for event_return_user
-- ----------------------------
DROP TABLE IF EXISTS `event_return_user`;
CREATE TABLE `event_return_user`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_return_user
-- ----------------------------

-- ----------------------------
-- Table structure for event_reward_item_arad
-- ----------------------------
DROP TABLE IF EXISTS `event_reward_item_arad`;
CREATE TABLE `event_reward_item_arad`  (
  `event_id` int(10) NOT NULL DEFAULT 0,
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`, `m_id`, `charac_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_reward_item_arad
-- ----------------------------

-- ----------------------------
-- Table structure for event_stamp_checkinfo
-- ----------------------------
DROP TABLE IF EXISTS `event_stamp_checkinfo`;
CREATE TABLE `event_stamp_checkinfo`  (
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `current` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `stamp_checkinfo` binary(96) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  PRIMARY KEY (`charac_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_stamp_checkinfo
-- ----------------------------

-- ----------------------------
-- Table structure for event_stamp_daily
-- ----------------------------
DROP TABLE IF EXISTS `event_stamp_daily`;
CREATE TABLE `event_stamp_daily`  (
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `condition1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `condition2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `condition3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`charac_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_stamp_daily
-- ----------------------------

-- ----------------------------
-- Table structure for event_stamp_reward
-- ----------------------------
DROP TABLE IF EXISTS `event_stamp_reward`;
CREATE TABLE `event_stamp_reward`  (
  `check_step` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_cnt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`check_step`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_stamp_reward
-- ----------------------------

-- ----------------------------
-- Table structure for event_stay_time_charac
-- ----------------------------
DROP TABLE IF EXISTS `event_stay_time_charac`;
CREATE TABLE `event_stay_time_charac`  (
  `m_id` int(10) UNSIGNED NOT NULL,
  `reward_count` int(11) NOT NULL DEFAULT 0,
  `reward_flag` int(11) NOT NULL DEFAULT 0,
  `mod_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '대만 이벤트 [Go Go Fighter] 9:00~9:30 30분 사이 10분간 접속한 케릭터에게 보상 지급' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_stay_time_charac
-- ----------------------------

-- ----------------------------
-- Table structure for event_valentine_vote_base
-- ----------------------------
DROP TABLE IF EXISTS `event_valentine_vote_base`;
CREATE TABLE `event_valentine_vote_base`  (
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stage1` int(11) NOT NULL DEFAULT 0,
  `stage2` int(11) NOT NULL DEFAULT 0,
  `stage3` int(11) NOT NULL DEFAULT 0,
  `stage4` int(11) NOT NULL DEFAULT 0,
  `stage5` int(11) NOT NULL DEFAULT 0,
  `cur_event` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`server_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_valentine_vote_base
-- ----------------------------

-- ----------------------------
-- Table structure for event_valentine_vote_history
-- ----------------------------
DROP TABLE IF EXISTS `event_valentine_vote_history`;
CREATE TABLE `event_valentine_vote_history`  (
  `check_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `vote_A` int(11) NOT NULL DEFAULT 0,
  `vote_B` int(11) NOT NULL DEFAULT 0,
  `vote_C` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`check_date`, `server_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_valentine_vote_history
-- ----------------------------

-- ----------------------------
-- Table structure for event_valentine_vote_history_old
-- ----------------------------
DROP TABLE IF EXISTS `event_valentine_vote_history_old`;
CREATE TABLE `event_valentine_vote_history_old`  (
  `check_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `vote_A` tinyint(4) NOT NULL DEFAULT 0,
  `vote_B` tinyint(4) NOT NULL DEFAULT 0,
  `vote_C` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`check_date`, `server_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_valentine_vote_history_old
-- ----------------------------

-- ----------------------------
-- Table structure for event_valentine_vote_info
-- ----------------------------
DROP TABLE IF EXISTS `event_valentine_vote_info`;
CREATE TABLE `event_valentine_vote_info`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `vote_A` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `vote_B` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `vote_C` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`, `server_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_valentine_vote_info
-- ----------------------------

-- ----------------------------
-- Table structure for event_valentine_vote_info_old
-- ----------------------------
DROP TABLE IF EXISTS `event_valentine_vote_info_old`;
CREATE TABLE `event_valentine_vote_info_old`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `vote_A` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `vote_B` tinyint(4) NOT NULL DEFAULT 0,
  `vote_C` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`, `server_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of event_valentine_vote_info_old
-- ----------------------------

-- ----------------------------
-- Table structure for gm_message
-- ----------------------------
DROP TABLE IF EXISTS `gm_message`;
CREATE TABLE `gm_message`  (
  `event_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `msg_order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `send_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `msg_type` tinyint(4) NOT NULL DEFAULT 0,
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `send_charac_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`, `server_id`, `msg_order`, `send_time`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gm_message
-- ----------------------------

-- ----------------------------
-- Table structure for in_game_ad
-- ----------------------------
DROP TABLE IF EXISTS `in_game_ad`;
CREATE TABLE `in_game_ad`  (
  `banner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `gender` tinyint(4) NOT NULL DEFAULT -1,
  `age` tinyint(4) NOT NULL DEFAULT -1,
  `job` tinyint(4) NOT NULL DEFAULT -1,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `banner_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `item_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `event_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ctrl_banner_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ctrl_event_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ctrl_item_no` int(11) NOT NULL DEFAULT 0,
  `ctrl_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `min_sera` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max_sera` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type_code` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `visible` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `limit_m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `view_code` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `log_flag` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `ex_property` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`banner_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of in_game_ad
-- ----------------------------

-- ----------------------------
-- Table structure for login_common
-- ----------------------------
DROP TABLE IF EXISTS `login_common`;
CREATE TABLE `login_common`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member_bonus_fatigue` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `radio_flag` tinyint(4) NOT NULL DEFAULT 0,
  `daily_point` int(11) NOT NULL DEFAULT 0,
  `acc_point` int(11) NOT NULL DEFAULT 0,
  `random_option_guide` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `event_charac_cnt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `login_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `inform_notice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_common
-- ----------------------------
INSERT INTO `login_common` VALUES (18000000, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', '');
INSERT INTO `login_common` VALUES (18000001, 1767953256, 0, 0, 0, 0, 0, 0, '192.168.200.1', '');
INSERT INTO `login_common` VALUES (18000002, 1779342374, 0, 0, 0, 0, 0, 0, '192.168.200.1', '');
INSERT INTO `login_common` VALUES (18000003, 1779808891, 0, 0, 0, 0, 0, 0, '192.168.200.1', '');
INSERT INTO `login_common` VALUES (18000004, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', '');
INSERT INTO `login_common` VALUES (18000007, 1780054375, 0, 0, 0, 0, 0, 0, '', '');
INSERT INTO `login_common` VALUES (18000008, 1780056131, 0, 0, 0, 0, 0, 0, '192.168.200.1', '');
INSERT INTO `login_common` VALUES (18000015, 0, 0, 0, 0, 0, 0, 0, '192.168.200.1', '');
INSERT INTO `login_common` VALUES (18000017, 1780123046, 0, 0, 0, 0, 0, 0, '192.168.200.1', '');
INSERT INTO `login_common` VALUES (18000020, 1780130063, 0, 0, 0, 0, 0, 0, '', '');
INSERT INTO `login_common` VALUES (18000021, 1780130906, 0, 0, 0, 0, 0, 0, '192.168.200.1', '');
INSERT INTO `login_common` VALUES (18000034, 1780144261, 0, 0, 0, 0, 0, 0, '', '');
INSERT INTO `login_common` VALUES (18000035, 1780145320, 0, 0, 0, 0, 0, 0, '', '');
INSERT INTO `login_common` VALUES (18000036, 1780153605, 0, 0, 0, 0, 0, 0, '192.168.200.1', '');

-- ----------------------------
-- Table structure for mobile_auth_reward_tw
-- ----------------------------
DROP TABLE IF EXISTS `mobile_auth_reward_tw`;
CREATE TABLE `mobile_auth_reward_tw`  (
  `m_id` int(10) UNSIGNED NOT NULL,
  `occ_date` datetime NOT NULL,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of mobile_auth_reward_tw
-- ----------------------------
INSERT INTO `mobile_auth_reward_tw` VALUES (18000000, '2023-12-01 10:49:56');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000001, '2026-02-02 18:24:48');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000002, '2026-05-21 13:45:38');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000003, '2026-05-26 23:04:45');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000004, '2026-05-28 18:21:58');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000005, '2026-05-29 16:43:20');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000007, '2026-05-29 18:01:02');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000008, '2026-05-29 19:34:35');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000009, '2026-05-29 20:19:25');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000010, '2026-05-29 20:34:54');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000011, '2026-05-29 20:41:24');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000013, '2026-05-29 21:33:17');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000014, '2026-05-29 22:28:56');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000015, '2026-05-29 23:01:54');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000016, '2026-05-30 03:47:48');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000017, '2026-05-30 14:38:20');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000018, '2026-05-30 15:32:30');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000019, '2026-05-30 15:34:47');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000020, '2026-05-30 16:01:24');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000021, '2026-05-30 16:49:17');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000022, '2026-05-30 17:11:30');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000023, '2026-05-30 17:33:36');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000024, '2026-05-30 17:42:48');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000025, '2026-05-30 17:50:49');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000026, '2026-05-30 18:21:46');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000027, '2026-05-30 18:51:28');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000028, '2026-05-30 19:12:28');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000029, '2026-05-30 19:31:57');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000030, '2026-05-30 19:38:35');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000031, '2026-05-30 19:41:43');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000033, '2026-05-30 20:27:42');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000034, '2026-05-30 20:30:21');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000035, '2026-05-30 20:45:45');
INSERT INTO `mobile_auth_reward_tw` VALUES (18000036, '2026-05-30 23:01:33');

-- ----------------------------
-- Table structure for pcroom_daily_reward_tw
-- ----------------------------
DROP TABLE IF EXISTS `pcroom_daily_reward_tw`;
CREATE TABLE `pcroom_daily_reward_tw`  (
  `m_id` int(10) UNSIGNED NOT NULL,
  `occ_date` datetime NOT NULL,
  `remain_reward_count` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of pcroom_daily_reward_tw
-- ----------------------------

-- ----------------------------
-- Table structure for return_user
-- ----------------------------
DROP TABLE IF EXISTS `return_user`;
CREATE TABLE `return_user`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expire_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `first_login` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of return_user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
