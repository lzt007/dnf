/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.200.131
 Source Server Type    : MySQL
 Source Server Version : 50527 (5.5.27)
 Source Host           : 192.168.200.131:3306
 Source Schema         : taiwan_prod

 Target Server Type    : MySQL
 Target Server Version : 50527 (5.5.27)
 File Encoding         : 65001

 Date: 31/05/2026 18:50:03
*/
CREATE DATABASE IF NOT EXISTS `taiwan_prod`;
USE `taiwan_prod`;

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dnf_item_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_info`;
CREATE TABLE `dnf_item_info`  (
  `it_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `it_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `it_eng_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `it_explain` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `master_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sub_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `job` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `revert` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `skill` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `create_ratio` float NOT NULL DEFAULT 0,
  `rarity` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(6) NOT NULL DEFAULT 0,
  `price` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cash` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `medal` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `durability` smallint(6) NOT NULL DEFAULT 0,
  `cooltime` smallint(6) NOT NULL DEFAULT 0,
  `hp_max` smallint(6) NOT NULL DEFAULT 0,
  `mp_max` smallint(6) NOT NULL DEFAULT 0,
  `phy_att` smallint(6) NOT NULL DEFAULT 0,
  `phy_def` smallint(6) NOT NULL DEFAULT 0,
  `mag_att` smallint(6) NOT NULL DEFAULT 0,
  `mag_def` smallint(6) NOT NULL DEFAULT 0,
  `equip_phy_att` smallint(6) NOT NULL DEFAULT 0,
  `equip_phy_def` smallint(6) NOT NULL DEFAULT 0,
  `equip_mag_att` smallint(6) NOT NULL DEFAULT 0,
  `equip_mag_def` smallint(6) NOT NULL DEFAULT 0,
  `ref_fire` tinyint(4) NOT NULL DEFAULT 0,
  `ref_water` tinyint(4) NOT NULL DEFAULT 0,
  `ref_dark` tinyint(4) NOT NULL DEFAULT 0,
  `ref_light` tinyint(4) NOT NULL DEFAULT 0,
  `ref_all` tinyint(4) NOT NULL DEFAULT 0,
  `ref_slow` tinyint(4) NOT NULL DEFAULT 0,
  `ref_freeze` tinyint(4) NOT NULL DEFAULT 0,
  `ref_poison` tinyint(4) NOT NULL DEFAULT 0,
  `ref_stun` tinyint(4) NOT NULL DEFAULT 0,
  `ref_cus` tinyint(4) NOT NULL DEFAULT 0,
  `ref_blind` tinyint(4) NOT NULL DEFAULT 0,
  `ref_lite` tinyint(4) NOT NULL DEFAULT 0,
  `ref_ston` tinyint(4) NOT NULL DEFAULT 0,
  `ref_sleep` tinyint(4) NOT NULL DEFAULT 0,
  `ref_deekement` tinyint(4) NOT NULL DEFAULT 0,
  `ref_deadlystrike` tinyint(4) NOT NULL DEFAULT 0,
  `ref_bleeding` tinyint(4) NOT NULL DEFAULT 0,
  `ref_confuse` tinyint(4) NOT NULL DEFAULT 0,
  `ref_hold` tinyint(4) NOT NULL DEFAULT 0,
  `ref_all_stat` tinyint(4) NOT NULL DEFAULT 0,
  `ref_pierce` smallint(6) NOT NULL DEFAULT 0,
  `ref_stuck` smallint(6) NOT NULL DEFAULT 0,
  `inven_max` smallint(6) NOT NULL DEFAULT 0,
  `hp_regenrate` smallint(6) NOT NULL DEFAULT 0,
  `mp_regenrate` smallint(6) NOT NULL DEFAULT 0,
  `mov_speed` smallint(6) NOT NULL DEFAULT 0,
  `att_speed` smallint(6) NOT NULL DEFAULT 0,
  `quest` smallint(6) NOT NULL DEFAULT 0,
  `hit_recovery` smallint(6) NOT NULL DEFAULT 0,
  `jump` smallint(6) NOT NULL DEFAULT 0,
  `att_element` enum('Void','Fire','Water','Dark','Light') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Void',
  `att_active_status` smallint(6) NOT NULL DEFAULT 0,
  `att_active_status_ratio` float NOT NULL DEFAULT 0,
  `att_active_status_pow` smallint(6) NOT NULL DEFAULT 0,
  `att_backforce` smallint(6) NOT NULL DEFAULT 0,
  `att_upforce` smallint(6) NOT NULL DEFAULT 0,
  `att_hp_drain` tinyint(4) NOT NULL DEFAULT 0,
  `att_mp_drain` tinyint(4) NOT NULL DEFAULT 0,
  `criticalhit_rate` float NOT NULL DEFAULT 0,
  `stuck_rate` float NOT NULL DEFAULT 0,
  `att_defenseIgnore` tinyint(4) NOT NULL DEFAULT 0,
  `skill_levelup` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `set_type` enum('n','y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'n',
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`it_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dnf_item_info
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_item_info_ability
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_info_ability`;
CREATE TABLE `dnf_item_info_ability`  (
  `it_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ability_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ability_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `job` tinyint(4) NOT NULL DEFAULT 0,
  `skill_index` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ability_sign` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ability_add` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`it_no`, `ability_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dnf_item_info_ability
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_item_info_master
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_info_master`;
CREATE TABLE `dnf_item_info_master`  (
  `master_no` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sub_no` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `master_explain` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`master_no`, `sub_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dnf_item_info_master
-- ----------------------------

-- ----------------------------
-- Table structure for prod_ability_info
-- ----------------------------
DROP TABLE IF EXISTS `prod_ability_info`;
CREATE TABLE `prod_ability_info`  (
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `it_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `job` tinyint(4) NOT NULL DEFAULT 0,
  `grow_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ability_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ipg_no`, `job`, `grow_type`, `ability_no`) USING BTREE,
  INDEX `id_it_no`(`it_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of prod_ability_info
-- ----------------------------

-- ----------------------------
-- Table structure for prod_bonus_info
-- ----------------------------
DROP TABLE IF EXISTS `prod_bonus_info`;
CREATE TABLE `prod_bonus_info`  (
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_rate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ipg_no`, `bonus_ipg_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of prod_bonus_info
-- ----------------------------

-- ----------------------------
-- Table structure for prod_buy_user
-- ----------------------------
DROP TABLE IF EXISTS `prod_buy_user`;
CREATE TABLE `prod_buy_user`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sex` enum('m','f') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'm',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `first_buy_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_buy_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`) USING BTREE,
  INDEX `idx_sex`(`birthday`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prod_buy_user
-- ----------------------------
INSERT INTO `prod_buy_user` VALUES (18000000, '18000000', '', '0000-00-00', '2023-12-01 10:51:41', '2023-12-03 17:13:13');
INSERT INTO `prod_buy_user` VALUES (18000003, '18000003', '', '0000-00-00', '2026-05-27 21:01:09', '2026-05-27 23:25:08');
INSERT INTO `prod_buy_user` VALUES (18000004, '18000004', '', '0000-00-00', '2026-05-28 18:25:04', '2026-05-28 21:01:54');
INSERT INTO `prod_buy_user` VALUES (18000015, '18000015', '', '0000-00-00', '2026-05-29 23:15:30', '2026-05-30 22:21:46');
INSERT INTO `prod_buy_user` VALUES (18000035, '18000035', '', '0000-00-00', '2026-05-30 20:46:40', '2026-05-30 20:46:40');
INSERT INTO `prod_buy_user` VALUES (18000036, '18000036', '', '0000-00-00', '2026-05-30 23:03:23', '2026-05-30 23:03:23');

-- ----------------------------
-- Table structure for prod_info
-- ----------------------------
DROP TABLE IF EXISTS `prod_info`;
CREATE TABLE `prod_info`  (
  `prod_part_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `prod_step` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `it_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `prod_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `master_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sub_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `job` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `set_flag` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sell_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `prod_stat` tinyint(4) NOT NULL DEFAULT 0,
  `prod_gold` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_winpoint` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_price` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_cnt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_supply` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `public_flag` tinyint(4) NOT NULL DEFAULT 0,
  `prod_limit_flag` tinyint(4) NOT NULL DEFAULT 0,
  `prod_period` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bonus_weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_rate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_flag` tinyint(4) NOT NULL DEFAULT 0,
  `prod_explain` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `regist_user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `regist_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mod_user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mod_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ipg_no`) USING BTREE,
  INDEX `idx_prod_step`(`prod_step`) USING BTREE,
  INDEX `idx_prod_part_id`(`prod_part_id`) USING BTREE,
  INDEX `idx_it_no`(`it_no`) USING BTREE,
  INDEX `idx_master_type`(`master_type`) USING BTREE,
  INDEX `idx_sub_type`(`sub_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prod_info
-- ----------------------------

-- ----------------------------
-- Table structure for prod_job_ability_info
-- ----------------------------
DROP TABLE IF EXISTS `prod_job_ability_info`;
CREATE TABLE `prod_job_ability_info`  (
  `job` tinyint(4) NOT NULL DEFAULT 0,
  `grow_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `skill_index` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `skill_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`job`, `grow_type`, `skill_index`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prod_job_ability_info
-- ----------------------------

-- ----------------------------
-- Table structure for prod_master
-- ----------------------------
DROP TABLE IF EXISTS `prod_master`;
CREATE TABLE `prod_master`  (
  `prod_part_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_part_script` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `prod_part_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`prod_part_id`) USING BTREE,
  UNIQUE INDEX `prod_part_name`(`prod_part_name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prod_master
-- ----------------------------

-- ----------------------------
-- Table structure for prod_mod_history
-- ----------------------------
DROP TABLE IF EXISTS `prod_mod_history`;
CREATE TABLE `prod_mod_history`  (
  `mod_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `prod_part_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `prod_step` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `it_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `prod_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `master_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sub_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `job` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `set_flag` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sell_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `prod_stat` tinyint(4) NOT NULL DEFAULT 0,
  `prod_gold` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_winpoint` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_price` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_cnt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_supply` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `public_flag` tinyint(4) NOT NULL DEFAULT 0,
  `prod_limit_flag` tinyint(4) NOT NULL DEFAULT 0,
  `prod_period` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prod_icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bonus_weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_rate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_flag` tinyint(4) NOT NULL DEFAULT 0,
  `prod_explain` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mod_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mod_user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mod_explain` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mod_time`, `prod_part_id`, `ipg_no`) USING BTREE,
  INDEX `idx_prod_step`(`prod_step`) USING BTREE,
  INDEX `idx_prod_part_id`(`prod_part_id`) USING BTREE,
  INDEX `idx_it_no`(`it_no`) USING BTREE,
  INDEX `idx_master_type`(`master_type`) USING BTREE,
  INDEX `idx_sub_type`(`sub_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prod_mod_history
-- ----------------------------

-- ----------------------------
-- Table structure for prod_sale_daily
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_daily`;
CREATE TABLE `prod_sale_daily`  (
  `sale_date` date NOT NULL DEFAULT '0000-00-00',
  `slot_part_code` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `volume` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `un_m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `un_charac` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`sale_date`, `ipg_no`) USING BTREE,
  INDEX `idx_slot_part_code`(`slot_part_code`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of prod_sale_daily
-- ----------------------------

-- ----------------------------
-- Table structure for prod_sale_daily_detail
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_daily_detail`;
CREATE TABLE `prod_sale_daily_detail`  (
  `sale_date` date NOT NULL DEFAULT '0000-00-00',
  `slot_part_code` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sex` enum('m','f') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'm',
  `age` tinyint(4) NOT NULL DEFAULT 0,
  `job` tinyint(4) NOT NULL DEFAULT 0,
  `volume` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`sale_date`, `ipg_no`, `sex`, `age`, `job`) USING BTREE,
  INDEX `idx_slot_part_code`(`slot_part_code`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of prod_sale_daily_detail
-- ----------------------------

-- ----------------------------
-- Table structure for prod_sale_entry_124
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_124`;
CREATE TABLE `prod_sale_entry_124`  (
  `agency_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `job` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `grow_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buy_type` tinyint(4) NOT NULL DEFAULT 0,
  `gift_server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gift_get_charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sale_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `charge_price` int(11) NOT NULL DEFAULT 0,
  `free_price` int(11) NOT NULL DEFAULT 0,
  `count_no` smallint(6) NOT NULL DEFAULT 0,
  `each_price` mediumint(9) NOT NULL DEFAULT 0,
  `price_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `seal_flag` tinyint(4) NOT NULL DEFAULT 0,
  `slot_part_type` tinyint(4) NOT NULL DEFAULT 0,
  `slot_part_code` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `buy_method_type` tinyint(4) NOT NULL DEFAULT 0,
  `prod_part_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `prize_flag` tinyint(4) NOT NULL DEFAULT 0,
  `new_flag` tinyint(4) NOT NULL DEFAULT 0,
  `result_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `result_message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`agency_no`) USING BTREE,
  INDEX `idx_ipg_no`(`ipg_no`) USING BTREE,
  INDEX `idx_m_id`(`m_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_agency_no`(`agency_no`) USING BTREE,
  INDEX `idx_prod_part_id`(`prod_part_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prod_sale_entry_124
-- ----------------------------

-- ----------------------------
-- Table structure for prod_sale_entry_131
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_131`;
CREATE TABLE `prod_sale_entry_131`  (
  `agency_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `job` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `grow_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buy_type` tinyint(4) NOT NULL DEFAULT 0,
  `gift_server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gift_get_charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sale_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `charge_price` int(11) NOT NULL DEFAULT 0,
  `free_price` int(11) NOT NULL DEFAULT 0,
  `count_no` smallint(6) NOT NULL DEFAULT 0,
  `each_price` mediumint(9) NOT NULL DEFAULT 0,
  `price_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `seal_flag` tinyint(4) NOT NULL DEFAULT 0,
  `slot_part_type` tinyint(4) NOT NULL DEFAULT 0,
  `slot_part_code` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `buy_method_type` tinyint(4) NOT NULL DEFAULT 0,
  `prod_part_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `prize_flag` tinyint(4) NOT NULL DEFAULT 0,
  `new_flag` tinyint(4) NOT NULL DEFAULT 0,
  `result_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `result_message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tran_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`agency_no`) USING BTREE,
  INDEX `idx_ipg_no`(`ipg_no`) USING BTREE,
  INDEX `idx_m_id`(`m_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_agency_no`(`agency_no`) USING BTREE,
  INDEX `idx_prod_part_id`(`prod_part_id`) USING BTREE,
  INDEX `idx_tran_id`(`tran_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prod_sale_entry_131
-- ----------------------------

-- ----------------------------
-- Table structure for prod_sale_entry_132
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_132`;
CREATE TABLE `prod_sale_entry_132`  (
  `agency_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `job` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `grow_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buy_type` tinyint(4) NOT NULL DEFAULT 0,
  `gift_server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gift_get_charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sale_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `charge_price` int(11) NOT NULL DEFAULT 0,
  `free_price` int(11) NOT NULL DEFAULT 0,
  `count_no` smallint(6) NOT NULL DEFAULT 0,
  `each_price` mediumint(9) NOT NULL DEFAULT 0,
  `price_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `seal_flag` tinyint(4) NOT NULL DEFAULT 0,
  `slot_part_type` tinyint(4) NOT NULL DEFAULT 0,
  `slot_part_code` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `buy_method_type` tinyint(4) NOT NULL DEFAULT 0,
  `prod_part_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `prize_flag` tinyint(4) NOT NULL DEFAULT 0,
  `new_flag` tinyint(4) NOT NULL DEFAULT 0,
  `result_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `result_message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tran_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`agency_no`) USING BTREE,
  INDEX `idx_ipg_no`(`ipg_no`) USING BTREE,
  INDEX `idx_m_id`(`m_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_agency_no`(`agency_no`) USING BTREE,
  INDEX `idx_prod_part_id`(`prod_part_id`) USING BTREE,
  INDEX `idx_tran_id`(`tran_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prod_sale_entry_132
-- ----------------------------

-- ----------------------------
-- Table structure for prod_sale_entry_133
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_133`;
CREATE TABLE `prod_sale_entry_133`  (
  `agency_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `job` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `grow_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buy_type` tinyint(4) NOT NULL DEFAULT 0,
  `gift_server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gift_get_charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sale_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `charge_price` int(11) NOT NULL DEFAULT 0,
  `free_price` int(11) NOT NULL DEFAULT 0,
  `count_no` smallint(6) NOT NULL DEFAULT 0,
  `each_price` mediumint(9) NOT NULL DEFAULT 0,
  `price_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `seal_flag` tinyint(4) NOT NULL DEFAULT 0,
  `slot_part_type` tinyint(4) NOT NULL DEFAULT 0,
  `slot_part_code` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `buy_method_type` tinyint(4) NOT NULL DEFAULT 0,
  `prod_part_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `prize_flag` tinyint(4) NOT NULL DEFAULT 0,
  `new_flag` tinyint(4) NOT NULL DEFAULT 0,
  `result_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `result_message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tran_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`agency_no`) USING BTREE,
  INDEX `idx_ipg_no`(`ipg_no`) USING BTREE,
  INDEX `idx_m_id`(`m_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_agency_no`(`agency_no`) USING BTREE,
  INDEX `idx_prod_part_id`(`prod_part_id`) USING BTREE,
  INDEX `idx_tran_id`(`tran_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prod_sale_entry_133
-- ----------------------------

-- ----------------------------
-- Table structure for prod_sale_entry_134
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_134`;
CREATE TABLE `prod_sale_entry_134`  (
  `agency_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `job` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `grow_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buy_type` tinyint(4) NOT NULL DEFAULT 0,
  `gift_server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gift_get_charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sale_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `charge_price` int(11) NOT NULL DEFAULT 0,
  `free_price` int(11) NOT NULL DEFAULT 0,
  `count_no` smallint(6) NOT NULL DEFAULT 0,
  `each_price` mediumint(9) NOT NULL DEFAULT 0,
  `price_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `seal_flag` tinyint(4) NOT NULL DEFAULT 0,
  `slot_part_type` tinyint(4) NOT NULL DEFAULT 0,
  `slot_part_code` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `buy_method_type` tinyint(4) NOT NULL DEFAULT 0,
  `prod_part_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `prize_flag` tinyint(4) NOT NULL DEFAULT 0,
  `new_flag` tinyint(4) NOT NULL DEFAULT 0,
  `result_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `result_message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tran_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`agency_no`) USING BTREE,
  INDEX `idx_ipg_no`(`ipg_no`) USING BTREE,
  INDEX `idx_m_id`(`m_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_agency_no`(`agency_no`) USING BTREE,
  INDEX `idx_prod_part_id`(`prod_part_id`) USING BTREE,
  INDEX `idx_tran_id`(`tran_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prod_sale_entry_134
-- ----------------------------

-- ----------------------------
-- Table structure for prod_set_info
-- ----------------------------
DROP TABLE IF EXISTS `prod_set_info`;
CREATE TABLE `prod_set_info`  (
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `consist_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fix_flag` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ipg_no`, `consist_ipg_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of prod_set_info
-- ----------------------------

-- ----------------------------
-- Table structure for pu_user_list
-- ----------------------------
DROP TABLE IF EXISTS `pu_user_list`;
CREATE TABLE `pu_user_list`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of pu_user_list
-- ----------------------------

-- ----------------------------
-- Table structure for slot_bonus_info
-- ----------------------------
DROP TABLE IF EXISTS `slot_bonus_info`;
CREATE TABLE `slot_bonus_info`  (
  `slot_part_code` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_rate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`slot_part_code`, `bonus_ipg_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of slot_bonus_info
-- ----------------------------

-- ----------------------------
-- Table structure for slot_info
-- ----------------------------
DROP TABLE IF EXISTS `slot_info`;
CREATE TABLE `slot_info`  (
  `slot_part_code` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `slot_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot_position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot1_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `slot1_rate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `regist_user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `regist_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mod_user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mod_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`slot_part_code`, `slot_num`, `slot_position`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slot_info
-- ----------------------------

-- ----------------------------
-- Table structure for slot_master
-- ----------------------------
DROP TABLE IF EXISTS `slot_master`;
CREATE TABLE `slot_master`  (
  `slot_part_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot_part_code` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `slot_part_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `slot_part_step` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot_part_script` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `slot_npc_no` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `slot_sell_item_type` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `slot_set_flag` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot_price` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `slot_bonus_rate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `slot_it_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `slot_it_cnt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot_stat` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`slot_part_code`) USING BTREE,
  UNIQUE INDEX `slot_part_name`(`slot_part_name`) USING BTREE,
  INDEX `idx_slot_part_step`(`slot_part_step`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slot_master
-- ----------------------------

-- ----------------------------
-- Table structure for slot_mod_history
-- ----------------------------
DROP TABLE IF EXISTS `slot_mod_history`;
CREATE TABLE `slot_mod_history`  (
  `mod_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `slot_part_code` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `slot_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot_position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot1_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `slot1_rate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `mod_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mod_user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mod_explain` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mod_time`, `slot_part_code`, `slot_num`, `slot_position`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slot_mod_history
-- ----------------------------

-- ----------------------------
-- Table structure for slot_prod_ability_info
-- ----------------------------
DROP TABLE IF EXISTS `slot_prod_ability_info`;
CREATE TABLE `slot_prod_ability_info`  (
  `slot_part_code` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `slot_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot_position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot_ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `job` tinyint(4) NOT NULL DEFAULT 0,
  `grow_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ability_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`slot_part_code`, `slot_num`, `slot_position`, `slot_ipg_no`, `job`, `grow_type`, `ability_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of slot_prod_ability_info
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
