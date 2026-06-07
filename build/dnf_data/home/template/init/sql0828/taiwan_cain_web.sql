/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.200.131
 Source Server Type    : MySQL
 Source Server Version : 50527 (5.5.27)
 Source Host           : 192.168.200.131:3306
 Source Schema         : taiwan_cain_web

 Target Server Type    : MySQL
 Target Server Version : 50527 (5.5.27)
 File Encoding         : 65001

 Date: 31/05/2026 18:49:29
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for avatar_select_ability
-- ----------------------------
DROP TABLE IF EXISTS `avatar_select_ability`;
CREATE TABLE `avatar_select_ability`  (
  `it_no` int(11) NOT NULL DEFAULT 0,
  `ability_no` int(11) NOT NULL DEFAULT 0,
  `ability_type` tinyint(4) NOT NULL DEFAULT 0,
  `rate_change` tinyint(4) NOT NULL DEFAULT 0,
  `value` float NOT NULL DEFAULT 0,
  `job` tinyint(4) NOT NULL DEFAULT 0,
  `skill_index` int(11) NOT NULL DEFAULT 0,
  `skill_level` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`it_no`, `ability_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of avatar_select_ability
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_aicharacter_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_aicharacter_info`;
CREATE TABLE `dnf_aicharacter_info`  (
  `idx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ai_name_kr` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dnf_aicharacter_info
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_artifact_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_artifact_info`;
CREATE TABLE `dnf_artifact_info`  (
  `it_id` int(11) NOT NULL DEFAULT 0,
  `creature_min_level` int(11) NOT NULL DEFAULT 0,
  `physical_attack` int(11) NOT NULL DEFAULT 0,
  `magical_attack` int(11) NOT NULL DEFAULT 0,
  `skill_consume_mp_rate` float NOT NULL DEFAULT 0,
  `skill_charge_time_rate` float NOT NULL DEFAULT 0,
  `skill_overcharge_time_rate` float NOT NULL DEFAULT 0,
  `experience_amount` float NOT NULL DEFAULT 0,
  `physical_critical_hit` float NOT NULL DEFAULT 0,
  `magical_critical_hit` float NOT NULL DEFAULT 0,
  `stuck` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`it_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of dnf_artifact_info
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_creature_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_creature_info`;
CREATE TABLE `dnf_creature_info`  (
  `it_id` int(11) NOT NULL DEFAULT 0,
  `creature_id` smallint(6) NOT NULL DEFAULT 0,
  `creature_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skill_recovery_time` int(11) NOT NULL DEFAULT 0,
  `overskill_recovery_time` int(11) NOT NULL DEFAULT 0,
  `artifact_slot` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `learn_overskill_level` smallint(6) NOT NULL DEFAULT 0,
  `skill_info` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `overskill_info` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `piercing` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skill_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skill_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `overskill_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `overskill_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skill_level_values` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `overskill_level_values` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `evolution_creature_id` smallint(6) NOT NULL DEFAULT 0,
  `evolution_level` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`it_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dnf_creature_info
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_item_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_info`;
CREATE TABLE `dnf_item_info`  (
  `it_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `it_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `it_eng_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `it_explain` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `master_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sub_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `job` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `revert` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `skill` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `create_ratio` float NOT NULL DEFAULT 0,
  `rarity` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(6) NOT NULL DEFAULT 0,
  `price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
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
  `att_element` enum('','','','','') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
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
  `skill_levelup` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `set_type` enum('n','y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'n',
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `jewel_type` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `detail_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `flavor_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `anti_evil` int(11) NOT NULL DEFAULT 0,
  `value` int(11) NOT NULL DEFAULT 0,
  `required_skill` int(11) NOT NULL DEFAULT -1,
  `need_material` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `physical_absolute_damage` int(11) NOT NULL DEFAULT 0,
  `physical_damage_reduce` int(11) NOT NULL DEFAULT 0,
  `physical_absolute_defense` int(11) NOT NULL DEFAULT 0,
  `magical_absolute_damage` int(11) NOT NULL DEFAULT 0,
  `magical_damage_reduce` int(11) NOT NULL DEFAULT 0,
  `magical_absolute_defense` int(11) NOT NULL DEFAULT 0,
  `fire_attack` int(11) NOT NULL DEFAULT 0,
  `water_attack` int(11) NOT NULL DEFAULT 0,
  `dark_attack` int(11) NOT NULL DEFAULT 0,
  `light_attack` int(11) NOT NULL DEFAULT 0,
  `weapon_break_resistance` int(11) NOT NULL DEFAULT 0,
  `armor_break_resistance` int(11) NOT NULL DEFAULT 0,
  `all_activestatus_resistance` int(11) NOT NULL DEFAULT 0,
  `rigidity` int(11) NOT NULL DEFAULT 0,
  `item_aura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `magical_critical_hit` float NOT NULL DEFAULT 0,
  `set_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `set_item` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fullset_basic_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fullset_detail_explain` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parameter_basic_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `parameter_detail_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `part_set_index` int(11) NOT NULL DEFAULT 0,
  `skill_data_up` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hide_equipment` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `db_piece_count` tinyint(4) NOT NULL DEFAULT 0,
  `set_item_master` int(11) NOT NULL DEFAULT 0,
  `it_set_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ani_variation` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ani_variation_expand` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ani_variation2` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ani_variation_expand2` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hide_growtype_avatar` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `room_list_move_speed_rate` float NOT NULL DEFAULT 0,
  `icon_mark_number` tinyint(4) NOT NULL DEFAULT 0,
  `extra_icon_idx_list` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hp_max_rate` float NOT NULL DEFAULT 0,
  `mp_max_rate` float NOT NULL DEFAULT 0,
  `all_attack` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`it_no`, `it_set_no`, `db_piece_count`) USING BTREE,
  INDEX `idx_type`(`master_type`, `sub_type`) USING BTREE,
  INDEX `idx_rarity`(`rarity`) USING BTREE,
  INDEX `idx_level`(`level`) USING BTREE,
  INDEX `idx_phy_att`(`phy_att`) USING BTREE,
  INDEX `idx_phy_def`(`phy_def`) USING BTREE,
  INDEX `idx_mag_att`(`mag_att`) USING BTREE,
  INDEX `idx_mag_def`(`mag_def`) USING BTREE,
  INDEX `idx_mov_speed`(`mov_speed`) USING BTREE,
  INDEX `idx_att_speed`(`att_speed`) USING BTREE,
  INDEX `idx_quest`(`quest`) USING BTREE,
  INDEX `idx_att_element`(`att_element`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dnf_item_info
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_item_info_master
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_info_master`;
CREATE TABLE `dnf_item_info_master`  (
  `master_no` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sub_no` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `master_explain` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`master_no`, `sub_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dnf_item_info_master
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_item_price
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_price`;
CREATE TABLE `dnf_item_price`  (
  `it_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `it_cnt` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `cera_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ipg_no`) USING BTREE,
  INDEX `idx1`(`it_no`, `it_cnt`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of dnf_item_price
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_monster_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_monster_info`;
CREATE TABLE `dnf_monster_info`  (
  `idx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mon_name_kr` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dnf_monster_info
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_old_equip_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_old_equip_info`;
CREATE TABLE `dnf_old_equip_info`  (
  `it_id` int(11) NOT NULL DEFAULT 0,
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
  `ref_fire` smallint(6) NOT NULL DEFAULT 0,
  `ref_water` smallint(6) NOT NULL DEFAULT 0,
  `ref_dark` smallint(6) NOT NULL DEFAULT 0,
  `ref_light` smallint(6) NOT NULL DEFAULT 0,
  `ref_all_elements` smallint(6) NOT NULL DEFAULT 0,
  `ref_slow` smallint(6) NOT NULL DEFAULT 0,
  `ref_freeze` smallint(6) NOT NULL DEFAULT 0,
  `ref_poison` smallint(6) NOT NULL DEFAULT 0,
  `ref_stun` smallint(6) NOT NULL DEFAULT 0,
  `ref_curse` smallint(6) NOT NULL DEFAULT 0,
  `ref_blind` smallint(6) NOT NULL DEFAULT 0,
  `ref_lightning` smallint(6) NOT NULL DEFAULT 0,
  `ref_stone` smallint(6) NOT NULL DEFAULT 0,
  `ref_sleep` smallint(6) NOT NULL DEFAULT 0,
  `ref_burn` smallint(6) NOT NULL DEFAULT 0,
  `ref_weapon_break` smallint(6) NOT NULL DEFAULT 0,
  `ref_bleeding` smallint(6) NOT NULL DEFAULT 0,
  `ref_pierce` smallint(6) NOT NULL DEFAULT 0,
  `ref_stuck` smallint(6) NOT NULL DEFAULT 0,
  `ref_confuse` smallint(6) NOT NULL DEFAULT 0,
  `ref_hold` smallint(6) NOT NULL DEFAULT 0,
  `ref_armor_break` smallint(6) NOT NULL DEFAULT 0,
  `ref_all_state` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`it_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of dnf_old_equip_info
-- ----------------------------

-- ----------------------------
-- Table structure for dnf_town_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_town_info`;
CREATE TABLE `dnf_town_info`  (
  `idx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `town_name_kr` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dnf_town_info
-- ----------------------------

-- ----------------------------
-- Table structure for equip_mapping_info
-- ----------------------------
DROP TABLE IF EXISTS `equip_mapping_info`;
CREATE TABLE `equip_mapping_info`  (
  `equip_idx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mapping_idx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`equip_idx`) USING BTREE,
  INDEX `mapping_idx`(`mapping_idx`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of equip_mapping_info
-- ----------------------------

-- ----------------------------
-- Table structure for exp_level_ref
-- ----------------------------
DROP TABLE IF EXISTS `exp_level_ref`;
CREATE TABLE `exp_level_ref`  (
  `exp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lev` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`exp`) USING BTREE,
  INDEX `idx_lev`(`lev`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of exp_level_ref
-- ----------------------------

-- ----------------------------
-- Table structure for guild_board_info
-- ----------------------------
DROP TABLE IF EXISTS `guild_board_info`;
CREATE TABLE `guild_board_info`  (
  `board_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `board_type` tinyint(4) NOT NULL DEFAULT 0,
  `board_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `create_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seq` tinyint(4) NOT NULL DEFAULT 0,
  `modify_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_auth` tinyint(4) NOT NULL DEFAULT 0,
  `content_auth` tinyint(4) NOT NULL DEFAULT 0,
  `write_auth` tinyint(4) NOT NULL DEFAULT 0,
  `comment_flag` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`board_id`) USING BTREE,
  INDEX `idx_guild_id`(`guild_id`) USING BTREE,
  INDEX `idx_seq`(`seq`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_board_info
-- ----------------------------

-- ----------------------------
-- Table structure for guild_memo
-- ----------------------------
DROP TABLE IF EXISTS `guild_memo`;
CREATE TABLE `guild_memo`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `charac_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charac_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nick_name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `memo` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job` tinyint(4) NULL DEFAULT 0,
  `grow_type` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`no`) USING BTREE,
  INDEX `idx_guild_id`(`guild_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_memo
-- ----------------------------

-- ----------------------------
-- Table structure for item_part_set
-- ----------------------------
DROP TABLE IF EXISTS `item_part_set`;
CREATE TABLE `item_part_set`  (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `part_set_index` int(11) NOT NULL DEFAULT 0,
  `part_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `part_type` int(11) NOT NULL DEFAULT 0,
  `part_grade` int(11) NOT NULL DEFAULT 0,
  `part_rarity` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1979 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_part_set
-- ----------------------------

-- ----------------------------
-- Table structure for random_option_ref
-- ----------------------------
DROP TABLE IF EXISTS `random_option_ref`;
CREATE TABLE `random_option_ref`  (
  `random_option_index` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `random_option_value` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `random_option_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`random_option_index`, `random_option_value`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of random_option_ref
-- ----------------------------

-- ----------------------------
-- Table structure for skill_info
-- ----------------------------
DROP TABLE IF EXISTS `skill_info`;
CREATE TABLE `skill_info`  (
  `job_index` int(11) NOT NULL DEFAULT 0,
  `skill_index` int(11) NOT NULL DEFAULT 0,
  `module_type` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `basic_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skill_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `purchase_cost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `skill_class` int(11) NOT NULL DEFAULT 0,
  `growtype_maximum_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `second_growtype_maximum_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skill_fitness_growtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skill_fitness_second_growtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `consume_item` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `required_level` tinyint(4) NOT NULL DEFAULT 0,
  `required_level_range` tinyint(4) NOT NULL DEFAULT 0,
  `pre_required_skill` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `consume_mp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cool_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `casting_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `command_key_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skill_command_advantage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `static_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_cool_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`job_index`, `skill_index`, `module_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill_info
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
