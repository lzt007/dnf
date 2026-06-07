/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.200.131
 Source Server Type    : MySQL
 Source Server Version : 50527 (5.5.27)
 Source Host           : 192.168.200.131:3306
 Source Schema         : taiwan_billing

 Target Server Type    : MySQL
 Target Server Version : 50527 (5.5.27)
 File Encoding         : 65001

 Date: 31/05/2026 18:49:01
*/

CREATE DATABASE IF NOT EXISTS `taiwan_billing`;
USE `taiwan_billing`;

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cash_cera
-- ----------------------------
DROP TABLE IF EXISTS `cash_cera`;
CREATE TABLE `cash_cera`  (
  `account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cera` int(10) UNSIGNED NOT NULL,
  `mod_tran` bigint(20) UNSIGNED NOT NULL,
  `mod_date` datetime NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`account`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cash_cera
-- ----------------------------
INSERT INTO `cash_cera` VALUES ('18000000', 46400, 256, '2023-12-03 17:13:13', '2023-12-01 10:49:20');
INSERT INTO `cash_cera` VALUES ('18000001', 0, 0, '2026-01-08 17:47:17', '2026-01-08 17:47:17');
INSERT INTO `cash_cera` VALUES ('18000002', 0, 0, '2026-05-21 13:44:30', '2026-05-21 13:44:30');
INSERT INTO `cash_cera` VALUES ('18000003', 0, 0, '2026-05-26 23:04:11', '2026-05-26 23:04:11');
INSERT INTO `cash_cera` VALUES ('18000004', 0, 0, '2026-05-28 18:20:57', '2026-05-28 18:20:57');
INSERT INTO `cash_cera` VALUES ('18000005', 0, 0, '2026-05-29 16:42:50', '2026-05-29 16:42:50');
INSERT INTO `cash_cera` VALUES ('18000006', 0, 0, '2026-05-29 17:56:01', '2026-05-29 17:56:01');
INSERT INTO `cash_cera` VALUES ('18000007', 0, 0, '2026-05-29 17:56:25', '2026-05-29 17:56:25');
INSERT INTO `cash_cera` VALUES ('18000008', 0, 0, '2026-05-29 19:34:04', '2026-05-29 19:34:04');
INSERT INTO `cash_cera` VALUES ('18000009', 0, 0, '2026-05-29 20:19:02', '2026-05-29 20:19:02');
INSERT INTO `cash_cera` VALUES ('18000010', 0, 0, '2026-05-29 20:34:27', '2026-05-29 20:34:27');
INSERT INTO `cash_cera` VALUES ('18000011', 0, 0, '2026-05-29 20:40:39', '2026-05-29 20:40:39');
INSERT INTO `cash_cera` VALUES ('18000012', 0, 0, '2026-05-29 21:32:39', '2026-05-29 21:32:39');
INSERT INTO `cash_cera` VALUES ('18000013', 0, 0, '2026-05-29 21:32:47', '2026-05-29 21:32:47');
INSERT INTO `cash_cera` VALUES ('18000014', 0, 0, '2026-05-29 22:27:54', '2026-05-29 22:27:54');
INSERT INTO `cash_cera` VALUES ('18000015', 0, 0, '2026-05-29 23:01:24', '2026-05-29 23:01:24');
INSERT INTO `cash_cera` VALUES ('18000016', 0, 0, '2026-05-30 03:47:10', '2026-05-30 03:47:10');
INSERT INTO `cash_cera` VALUES ('18000017', 0, 0, '2026-05-30 14:37:01', '2026-05-30 14:37:01');
INSERT INTO `cash_cera` VALUES ('18000018', 0, 0, '2026-05-30 15:31:26', '2026-05-30 15:31:26');
INSERT INTO `cash_cera` VALUES ('18000019', 0, 0, '2026-05-30 15:34:06', '2026-05-30 15:34:06');
INSERT INTO `cash_cera` VALUES ('18000020', 0, 0, '2026-05-30 16:01:01', '2026-05-30 16:01:01');
INSERT INTO `cash_cera` VALUES ('18000021', 0, 0, '2026-05-30 16:47:58', '2026-05-30 16:47:58');
INSERT INTO `cash_cera` VALUES ('18000022', 0, 0, '2026-05-30 17:10:44', '2026-05-30 17:10:44');
INSERT INTO `cash_cera` VALUES ('18000023', 0, 0, '2026-05-30 17:33:08', '2026-05-30 17:33:08');
INSERT INTO `cash_cera` VALUES ('18000024', 0, 0, '2026-05-30 17:41:57', '2026-05-30 17:41:57');
INSERT INTO `cash_cera` VALUES ('18000025', 0, 0, '2026-05-30 17:50:15', '2026-05-30 17:50:15');
INSERT INTO `cash_cera` VALUES ('18000026', 0, 0, '2026-05-30 18:21:24', '2026-05-30 18:21:24');
INSERT INTO `cash_cera` VALUES ('18000027', 0, 0, '2026-05-30 18:50:43', '2026-05-30 18:50:43');
INSERT INTO `cash_cera` VALUES ('18000028', 0, 0, '2026-05-30 19:11:34', '2026-05-30 19:11:34');
INSERT INTO `cash_cera` VALUES ('18000029', 0, 0, '2026-05-30 19:31:36', '2026-05-30 19:31:36');
INSERT INTO `cash_cera` VALUES ('18000030', 0, 0, '2026-05-30 19:37:35', '2026-05-30 19:37:35');
INSERT INTO `cash_cera` VALUES ('18000031', 0, 0, '2026-05-30 19:41:04', '2026-05-30 19:41:04');
INSERT INTO `cash_cera` VALUES ('18000032', 0, 0, '2026-05-30 20:26:28', '2026-05-30 20:26:28');
INSERT INTO `cash_cera` VALUES ('18000033', 0, 0, '2026-05-30 20:26:45', '2026-05-30 20:26:45');
INSERT INTO `cash_cera` VALUES ('18000034', 0, 0, '2026-05-30 20:29:35', '2026-05-30 20:29:35');
INSERT INTO `cash_cera` VALUES ('18000035', 0, 0, '2026-05-30 20:44:57', '2026-05-30 20:44:57');
INSERT INTO `cash_cera` VALUES ('18000036', 0, 0, '2026-05-30 23:00:20', '2026-05-30 23:00:20');

-- ----------------------------
-- Table structure for cash_cera_point
-- ----------------------------
DROP TABLE IF EXISTS `cash_cera_point`;
CREATE TABLE `cash_cera_point`  (
  `account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cera_point` int(10) UNSIGNED NOT NULL,
  `reg_date` datetime NOT NULL,
  `mod_date` datetime NOT NULL,
  PRIMARY KEY (`account`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cash_cera_point
-- ----------------------------
INSERT INTO `cash_cera_point` VALUES ('18000000', 0, '2023-12-01 10:49:20', '2023-12-01 10:49:20');
INSERT INTO `cash_cera_point` VALUES ('18000001', 0, '2026-01-08 17:47:17', '2026-01-08 17:47:17');
INSERT INTO `cash_cera_point` VALUES ('18000002', 0, '2026-05-21 13:44:30', '2026-05-21 13:44:30');
INSERT INTO `cash_cera_point` VALUES ('18000003', 0, '2026-05-26 23:04:11', '2026-05-26 23:04:11');
INSERT INTO `cash_cera_point` VALUES ('18000004', 0, '2026-05-28 18:20:57', '2026-05-28 18:20:57');
INSERT INTO `cash_cera_point` VALUES ('18000005', 0, '2026-05-29 16:42:50', '2026-05-29 16:42:50');
INSERT INTO `cash_cera_point` VALUES ('18000006', 0, '2026-05-29 17:56:01', '2026-05-29 17:56:01');
INSERT INTO `cash_cera_point` VALUES ('18000007', 0, '2026-05-29 17:56:25', '2026-05-29 17:56:25');
INSERT INTO `cash_cera_point` VALUES ('18000008', 0, '2026-05-29 19:34:04', '2026-05-29 19:34:04');
INSERT INTO `cash_cera_point` VALUES ('18000009', 0, '2026-05-29 20:19:02', '2026-05-29 20:19:02');
INSERT INTO `cash_cera_point` VALUES ('18000010', 0, '2026-05-29 20:34:27', '2026-05-29 20:34:27');
INSERT INTO `cash_cera_point` VALUES ('18000011', 0, '2026-05-29 20:40:39', '2026-05-29 20:40:39');
INSERT INTO `cash_cera_point` VALUES ('18000012', 0, '2026-05-29 21:32:39', '2026-05-29 21:32:39');
INSERT INTO `cash_cera_point` VALUES ('18000013', 0, '2026-05-29 21:32:47', '2026-05-29 21:32:47');
INSERT INTO `cash_cera_point` VALUES ('18000014', 0, '2026-05-29 22:27:54', '2026-05-29 22:27:54');
INSERT INTO `cash_cera_point` VALUES ('18000015', 0, '2026-05-29 23:01:24', '2026-05-29 23:01:24');
INSERT INTO `cash_cera_point` VALUES ('18000016', 0, '2026-05-30 03:47:10', '2026-05-30 03:47:10');
INSERT INTO `cash_cera_point` VALUES ('18000017', 0, '2026-05-30 14:37:01', '2026-05-30 14:37:01');
INSERT INTO `cash_cera_point` VALUES ('18000018', 0, '2026-05-30 15:31:26', '2026-05-30 15:31:26');
INSERT INTO `cash_cera_point` VALUES ('18000019', 0, '2026-05-30 15:34:06', '2026-05-30 15:34:06');
INSERT INTO `cash_cera_point` VALUES ('18000020', 0, '2026-05-30 16:01:01', '2026-05-30 16:01:01');
INSERT INTO `cash_cera_point` VALUES ('18000021', 0, '2026-05-30 16:47:58', '2026-05-30 16:47:58');
INSERT INTO `cash_cera_point` VALUES ('18000022', 0, '2026-05-30 17:10:44', '2026-05-30 17:10:44');
INSERT INTO `cash_cera_point` VALUES ('18000023', 0, '2026-05-30 17:33:08', '2026-05-30 17:33:08');
INSERT INTO `cash_cera_point` VALUES ('18000024', 0, '2026-05-30 17:41:57', '2026-05-30 17:41:57');
INSERT INTO `cash_cera_point` VALUES ('18000025', 0, '2026-05-30 17:50:15', '2026-05-30 17:50:15');
INSERT INTO `cash_cera_point` VALUES ('18000026', 0, '2026-05-30 18:21:24', '2026-05-30 18:21:24');
INSERT INTO `cash_cera_point` VALUES ('18000027', 0, '2026-05-30 18:50:43', '2026-05-30 18:50:43');
INSERT INTO `cash_cera_point` VALUES ('18000028', 0, '2026-05-30 19:11:34', '2026-05-30 19:11:34');
INSERT INTO `cash_cera_point` VALUES ('18000029', 0, '2026-05-30 19:31:36', '2026-05-30 19:31:36');
INSERT INTO `cash_cera_point` VALUES ('18000030', 0, '2026-05-30 19:37:35', '2026-05-30 19:37:35');
INSERT INTO `cash_cera_point` VALUES ('18000031', 0, '2026-05-30 19:41:04', '2026-05-30 19:41:04');
INSERT INTO `cash_cera_point` VALUES ('18000032', 0, '2026-05-30 20:26:28', '2026-05-30 20:26:28');
INSERT INTO `cash_cera_point` VALUES ('18000033', 0, '2026-05-30 20:26:45', '2026-05-30 20:26:45');
INSERT INTO `cash_cera_point` VALUES ('18000034', 0, '2026-05-30 20:29:35', '2026-05-30 20:29:35');
INSERT INTO `cash_cera_point` VALUES ('18000035', 0, '2026-05-30 20:44:57', '2026-05-30 20:44:57');
INSERT INTO `cash_cera_point` VALUES ('18000036', 0, '2026-05-30 23:00:20', '2026-05-30 23:00:20');

-- ----------------------------
-- Table structure for cash_transaction
-- ----------------------------
DROP TABLE IF EXISTS `cash_transaction`;
CREATE TABLE `cash_transaction`  (
  `tran_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dummy` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`tran_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 257 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cash_transaction
-- ----------------------------
INSERT INTO `cash_transaction` VALUES (226, 'P');
INSERT INTO `cash_transaction` VALUES (227, 'P');
INSERT INTO `cash_transaction` VALUES (228, 'P');
INSERT INTO `cash_transaction` VALUES (229, 'P');
INSERT INTO `cash_transaction` VALUES (230, 'P');
INSERT INTO `cash_transaction` VALUES (231, 'P');
INSERT INTO `cash_transaction` VALUES (232, 'P');
INSERT INTO `cash_transaction` VALUES (233, 'P');
INSERT INTO `cash_transaction` VALUES (234, 'P');
INSERT INTO `cash_transaction` VALUES (235, 'P');
INSERT INTO `cash_transaction` VALUES (236, 'P');
INSERT INTO `cash_transaction` VALUES (237, 'P');
INSERT INTO `cash_transaction` VALUES (238, 'P');
INSERT INTO `cash_transaction` VALUES (239, 'P');
INSERT INTO `cash_transaction` VALUES (240, 'P');
INSERT INTO `cash_transaction` VALUES (241, 'P');
INSERT INTO `cash_transaction` VALUES (242, 'P');
INSERT INTO `cash_transaction` VALUES (243, 'P');
INSERT INTO `cash_transaction` VALUES (244, 'P');
INSERT INTO `cash_transaction` VALUES (245, 'P');
INSERT INTO `cash_transaction` VALUES (246, 'P');
INSERT INTO `cash_transaction` VALUES (247, 'P');
INSERT INTO `cash_transaction` VALUES (248, 'P');
INSERT INTO `cash_transaction` VALUES (249, 'P');
INSERT INTO `cash_transaction` VALUES (250, 'P');
INSERT INTO `cash_transaction` VALUES (251, 'P');
INSERT INTO `cash_transaction` VALUES (252, 'P');
INSERT INTO `cash_transaction` VALUES (253, 'P');
INSERT INTO `cash_transaction` VALUES (254, 'P');
INSERT INTO `cash_transaction` VALUES (255, 'P');
INSERT INTO `cash_transaction` VALUES (256, 'P');

-- ----------------------------
-- Table structure for cs_table2
-- ----------------------------
DROP TABLE IF EXISTS `cs_table2`;
CREATE TABLE `cs_table2`  (
  `account_id` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charac_id` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cs_table2
-- ----------------------------

-- ----------------------------
-- Table structure for log_error_history
-- ----------------------------
DROP TABLE IF EXISTS `log_error_history`;
CREATE TABLE `log_error_history`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `error_id` int(10) NOT NULL,
  `error_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `error_query` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `proc_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `proc_line` int(10) NOT NULL,
  `query_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `occ_date` datetime NOT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_error_history
-- ----------------------------

-- ----------------------------
-- Table structure for log_gift_history
-- ----------------------------
DROP TABLE IF EXISTS `log_gift_history`;
CREATE TABLE `log_gift_history`  (
  `tran_id` bigint(20) UNSIGNED NOT NULL,
  `tran_state` tinyint(3) UNSIGNED NOT NULL,
  `send_account_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_charac_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recv_account_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `cera` int(10) UNSIGNED NOT NULL,
  `send_befor_cera` int(10) UNSIGNED NOT NULL,
  `send_after_cera` int(10) UNSIGNED NOT NULL,
  `recv_befor_cera` int(10) UNSIGNED NOT NULL,
  `recv_after_cera` int(10) UNSIGNED NOT NULL,
  `query_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `occ_date` datetime NOT NULL,
  PRIMARY KEY (`tran_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'gift history' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_gift_history
-- ----------------------------

-- ----------------------------
-- Table structure for log_item_refund_history
-- ----------------------------
DROP TABLE IF EXISTS `log_item_refund_history`;
CREATE TABLE `log_item_refund_history`  (
  `pf_rel_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `purchase_tran_id` bigint(20) UNSIGNED NOT NULL,
  `recharge_tran_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `occ_date` datetime NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `admin_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  PRIMARY KEY (`pf_rel_id`) USING BTREE,
  INDEX `log_item_refund_history_idx001`(`account_id`) USING BTREE,
  INDEX `log_item_refund_history_ibfk_1`(`purchase_tran_id`) USING BTREE,
  INDEX `log_item_refund_history_ibfk_2`(`recharge_tran_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_item_refund_history
-- ----------------------------

-- ----------------------------
-- Table structure for log_point_history
-- ----------------------------
DROP TABLE IF EXISTS `log_point_history`;
CREATE TABLE `log_point_history`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `charac_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cera_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `command` enum('A','U') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'A(add), U(use)',
  `charge_type` tinyint(4) NOT NULL DEFAULT 0,
  `free_charge_type` tinyint(4) NOT NULL DEFAULT 0,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `query_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_point_history
-- ----------------------------

-- ----------------------------
-- Table structure for log_purchase_history
-- ----------------------------
DROP TABLE IF EXISTS `log_purchase_history`;
CREATE TABLE `log_purchase_history`  (
  `tran_id` bigint(20) UNSIGNED NOT NULL,
  `tran_state` tinyint(3) UNSIGNED NOT NULL,
  `account_id` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charac_id` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `cera` int(10) UNSIGNED NOT NULL,
  `befor_cera` int(10) UNSIGNED NOT NULL,
  `after_cera` int(10) UNSIGNED NOT NULL,
  `query_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `occ_date` datetime NOT NULL,
  PRIMARY KEY (`tran_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'purchase history' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_purchase_history
-- ----------------------------
INSERT INTO `log_purchase_history` VALUES (226, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 11005, 100, 91000, 90900, 'game@127.0.0.1', '2023-12-01 10:51:41');
INSERT INTO `log_purchase_history` VALUES (227, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 7449, 20000, 90900, 70900, 'game@127.0.0.1', '2023-12-01 10:52:24');
INSERT INTO `log_purchase_history` VALUES (228, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10000, 10, 70900, 70890, 'game@127.0.0.1', '2023-12-01 13:17:48');
INSERT INTO `log_purchase_history` VALUES (229, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10001, 20, 70890, 70870, 'game@127.0.0.1', '2023-12-01 13:17:54');
INSERT INTO `log_purchase_history` VALUES (230, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10002, 40, 70870, 70830, 'game@127.0.0.1', '2023-12-01 13:17:57');
INSERT INTO `log_purchase_history` VALUES (231, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10003, 80, 70830, 70750, 'game@127.0.0.1', '2023-12-01 13:18:00');
INSERT INTO `log_purchase_history` VALUES (232, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10004, 160, 70750, 70590, 'game@127.0.0.1', '2023-12-01 13:18:04');
INSERT INTO `log_purchase_history` VALUES (233, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10005, 200, 70590, 70390, 'game@127.0.0.1', '2023-12-01 13:18:07');
INSERT INTO `log_purchase_history` VALUES (234, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10006, 200, 70390, 70190, 'game@127.0.0.1', '2023-12-01 13:18:10');
INSERT INTO `log_purchase_history` VALUES (235, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10007, 200, 70190, 69990, 'game@127.0.0.1', '2023-12-01 13:18:13');
INSERT INTO `log_purchase_history` VALUES (236, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10008, 200, 69990, 69790, 'game@127.0.0.1', '2023-12-01 13:18:16');
INSERT INTO `log_purchase_history` VALUES (237, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10060, 100, 69790, 69690, 'game@127.0.0.1', '2023-12-01 13:18:59');
INSERT INTO `log_purchase_history` VALUES (238, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10061, 100, 69690, 69590, 'game@127.0.0.1', '2023-12-01 13:19:04');
INSERT INTO `log_purchase_history` VALUES (239, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 30109, 200, 69590, 69390, 'game@127.0.0.1', '2023-12-01 15:21:56');
INSERT INTO `log_purchase_history` VALUES (240, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 30015, 300, 69390, 69090, 'game@127.0.0.1', '2023-12-01 15:22:12');
INSERT INTO `log_purchase_history` VALUES (241, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 10033, 525, 69090, 68565, 'game@127.0.0.1', '2023-12-02 15:30:17');
INSERT INTO `log_purchase_history` VALUES (242, 2, '18000000', 'çˆ±å°”å¥Žç‰¹', 9004, 300, 68565, 68265, 'game@127.0.0.1', '2023-12-02 16:52:55');
INSERT INTO `log_purchase_history` VALUES (243, 2, '18000000', 'é˜¿å¡å¤š', 10060, 100, 68265, 68165, 'game@127.0.0.1', '2023-12-02 19:08:53');
INSERT INTO `log_purchase_history` VALUES (244, 2, '18000000', 'é˜¿å¡å¤š', 10061, 100, 68165, 68065, 'game@127.0.0.1', '2023-12-02 19:08:57');
INSERT INTO `log_purchase_history` VALUES (245, 2, '18000000', 'é˜¿å¡å¤š', 10000, 10, 68065, 68055, 'game@127.0.0.1', '2023-12-02 19:09:06');
INSERT INTO `log_purchase_history` VALUES (246, 2, '18000000', 'é˜¿å¡å¤š', 7432, 20000, 68055, 48055, 'game@127.0.0.1', '2023-12-02 19:10:58');
INSERT INTO `log_purchase_history` VALUES (247, 2, '18000000', 'é˜¿å¡å¤š', 10033, 525, 48055, 47530, 'game@127.0.0.1', '2023-12-03 13:20:16');
INSERT INTO `log_purchase_history` VALUES (248, 2, '18000000', 'é˜¿å¡å¤š', 20000, 30, 47530, 47500, 'game@127.0.0.1', '2023-12-03 15:51:23');
INSERT INTO `log_purchase_history` VALUES (249, 2, '18000000', 'é˜¿å¡å¤š', 10001, 20, 47500, 47480, 'game@127.0.0.1', '2023-12-03 17:12:44');
INSERT INTO `log_purchase_history` VALUES (250, 2, '18000000', 'é˜¿å¡å¤š', 10002, 40, 47480, 47440, 'game@127.0.0.1', '2023-12-03 17:12:48');
INSERT INTO `log_purchase_history` VALUES (251, 2, '18000000', 'é˜¿å¡å¤š', 10003, 80, 47440, 47360, 'game@127.0.0.1', '2023-12-03 17:12:55');
INSERT INTO `log_purchase_history` VALUES (252, 2, '18000000', 'é˜¿å¡å¤š', 10004, 160, 47360, 47200, 'game@127.0.0.1', '2023-12-03 17:12:58');
INSERT INTO `log_purchase_history` VALUES (253, 2, '18000000', 'é˜¿å¡å¤š', 10005, 200, 47200, 47000, 'game@127.0.0.1', '2023-12-03 17:13:04');
INSERT INTO `log_purchase_history` VALUES (254, 2, '18000000', 'é˜¿å¡å¤š', 10006, 200, 47000, 46800, 'game@127.0.0.1', '2023-12-03 17:13:07');
INSERT INTO `log_purchase_history` VALUES (255, 2, '18000000', 'é˜¿å¡å¤š', 10007, 200, 46800, 46600, 'game@127.0.0.1', '2023-12-03 17:13:10');
INSERT INTO `log_purchase_history` VALUES (256, 2, '18000000', 'é˜¿å¡å¤š', 10008, 200, 46600, 46400, 'game@127.0.0.1', '2023-12-03 17:13:13');

-- ----------------------------
-- Table structure for log_recharge_history
-- ----------------------------
DROP TABLE IF EXISTS `log_recharge_history`;
CREATE TABLE `log_recharge_history`  (
  `tran_id` bigint(20) UNSIGNED NOT NULL,
  `order_tran_id` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tran_state` tinyint(3) UNSIGNED NOT NULL,
  `account_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charac_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cera` int(10) UNSIGNED NOT NULL,
  `befor_cera` int(10) UNSIGNED NOT NULL,
  `after_cera` int(10) UNSIGNED NOT NULL,
  `charge_type` tinyint(3) UNSIGNED NOT NULL,
  `query_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `occ_date` datetime NOT NULL,
  PRIMARY KEY (`tran_id`) USING BTREE,
  INDEX `log_recharge_history_idx01`(`account_id`) USING BTREE,
  INDEX `log_recharge_history_idx02`(`charac_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'recharge history' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_recharge_history
-- ----------------------------

-- ----------------------------
-- Table structure for log_refund_history
-- ----------------------------
DROP TABLE IF EXISTS `log_refund_history`;
CREATE TABLE `log_refund_history`  (
  `tran_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_tran_id` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `tran_state` tinyint(3) UNSIGNED NOT NULL,
  `query_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `occ_date` datetime NOT NULL,
  PRIMARY KEY (`tran_id`, `account_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_refund_history
-- ----------------------------

-- ----------------------------
-- Table structure for log_transaction_history
-- ----------------------------
DROP TABLE IF EXISTS `log_transaction_history`;
CREATE TABLE `log_transaction_history`  (
  `tran_id` bigint(20) UNSIGNED NOT NULL,
  `tran_type` tinyint(3) UNSIGNED NOT NULL,
  `occ_date` datetime NOT NULL,
  PRIMARY KEY (`tran_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of log_transaction_history
-- ----------------------------
INSERT INTO `log_transaction_history` VALUES (226, 1, '2023-12-01 10:51:41');
INSERT INTO `log_transaction_history` VALUES (227, 1, '2023-12-01 10:52:24');
INSERT INTO `log_transaction_history` VALUES (228, 1, '2023-12-01 13:17:48');
INSERT INTO `log_transaction_history` VALUES (229, 1, '2023-12-01 13:17:54');
INSERT INTO `log_transaction_history` VALUES (230, 1, '2023-12-01 13:17:57');
INSERT INTO `log_transaction_history` VALUES (231, 1, '2023-12-01 13:18:00');
INSERT INTO `log_transaction_history` VALUES (232, 1, '2023-12-01 13:18:04');
INSERT INTO `log_transaction_history` VALUES (233, 1, '2023-12-01 13:18:07');
INSERT INTO `log_transaction_history` VALUES (234, 1, '2023-12-01 13:18:10');
INSERT INTO `log_transaction_history` VALUES (235, 1, '2023-12-01 13:18:13');
INSERT INTO `log_transaction_history` VALUES (236, 1, '2023-12-01 13:18:16');
INSERT INTO `log_transaction_history` VALUES (237, 1, '2023-12-01 13:18:59');
INSERT INTO `log_transaction_history` VALUES (238, 1, '2023-12-01 13:19:04');
INSERT INTO `log_transaction_history` VALUES (239, 1, '2023-12-01 15:21:56');
INSERT INTO `log_transaction_history` VALUES (240, 1, '2023-12-01 15:22:12');
INSERT INTO `log_transaction_history` VALUES (241, 1, '2023-12-02 15:30:17');
INSERT INTO `log_transaction_history` VALUES (242, 1, '2023-12-02 16:52:55');
INSERT INTO `log_transaction_history` VALUES (243, 1, '2023-12-02 19:08:53');
INSERT INTO `log_transaction_history` VALUES (244, 1, '2023-12-02 19:08:57');
INSERT INTO `log_transaction_history` VALUES (245, 1, '2023-12-02 19:09:06');
INSERT INTO `log_transaction_history` VALUES (246, 1, '2023-12-02 19:10:58');
INSERT INTO `log_transaction_history` VALUES (247, 1, '2023-12-03 13:20:16');
INSERT INTO `log_transaction_history` VALUES (248, 1, '2023-12-03 15:51:23');
INSERT INTO `log_transaction_history` VALUES (249, 1, '2023-12-03 17:12:44');
INSERT INTO `log_transaction_history` VALUES (250, 1, '2023-12-03 17:12:48');
INSERT INTO `log_transaction_history` VALUES (251, 1, '2023-12-03 17:12:55');
INSERT INTO `log_transaction_history` VALUES (252, 1, '2023-12-03 17:12:58');
INSERT INTO `log_transaction_history` VALUES (253, 1, '2023-12-03 17:13:04');
INSERT INTO `log_transaction_history` VALUES (254, 1, '2023-12-03 17:13:07');
INSERT INTO `log_transaction_history` VALUES (255, 1, '2023-12-03 17:13:10');
INSERT INTO `log_transaction_history` VALUES (256, 1, '2023-12-03 17:13:13');

-- ----------------------------
-- Procedure structure for usp_balance
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_balance`;
delimiter ;;
CREATE PROCEDURE `usp_balance`(IN p_account VARCHAR(30), 
OUT p_out_cera INTEGER,
OUT p_out_error INTEGER)
BEGIN

DECLARE v_err_line INTEGER;
DECLARE v_err_msg VARCHAR(255);
DECLARE v_query VARCHAR(512);

DECLARE DF_ERROR01 CONDITION FOR SQLSTATE '90DF1';
DECLARE EXIT HANDLER FOR DF_ERROR01
BEGIN
ROLLBACK;

INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, v_err_msg, v_query, 'usp_balance', v_err_line, USER(), NOW());
END;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;

SET p_out_error = 16;
INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, 'Unknow Error.', v_query, 'usp_balance', v_err_line, USER(), NOW());

#RESIGNAL;
END;

DECLARE CONTINUE HANDLER FOR NOT FOUND
BEGIN
SET v_err_line = 40;
SET v_query = CONCAT('INSERT INTO cash_cera(...) VALUES(''', p_account, ''')');
INSERT INTO cash_cera(account, cera, mod_tran, mod_date, reg_date) 
VALUES (p_account, 0, 0, NOW(), NOW());

SET v_err_line = 45;
SET v_query = CONCAT('INSERT INTO cash_cera_point(...) VALUES(''', p_account, ''')');
INSERT INTO cash_cera_point(account, cera_point, mod_date, reg_date) 
VALUES (p_account, 0, NOW(), NOW());
END;

SET v_err_line = 0;
SET v_err_msg = '';
SET v_query = '';

SET p_out_cera = 0;
SET p_out_error = 0;

IF LENGTH(p_account) < 1 THEN
SET p_out_error = 1, v_err_line = 59;
SET v_err_msg = CONCAT('Invalid Parameter. ', p_account);
#SIGNAL SQLSTATE '90DF1';
END IF;

START TRANSACTION;

SET v_err_line = 66;
SET v_query = CONCAT('SELECT cera INTO p_out_cera FROM cash_cera WHERE account = ''', p_account, '''');
SELECT cera INTO p_out_cera FROM cash_cera WHERE account = p_account LOCK IN SHARE MODE;

COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_balance_point
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_balance_point`;
delimiter ;;
CREATE PROCEDURE `usp_balance_point`(IN p_account VARCHAR(30), 
OUT p_out_cera INTEGER,
OUT p_out_cera_point INTEGER,
OUT p_out_error INTEGER)
BEGIN

DECLARE v_err_line INTEGER;
DECLARE v_err_msg VARCHAR(255);
DECLARE v_query VARCHAR(512);

DECLARE DF_ERROR01 CONDITION FOR SQLSTATE '90DF1';
DECLARE EXIT HANDLER FOR DF_ERROR01
BEGIN
ROLLBACK;

INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, v_err_msg, v_query, 'usp_balance_point', v_err_line, USER(), NOW());
END;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;

SET p_out_error = 16;
INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, 'Unknow Error.', v_query, 'usp_balance_point', v_err_line, USER(), NOW());

#RESIGNAL;
END;

DECLARE CONTINUE HANDLER FOR NOT FOUND
BEGIN
SET v_err_line = 41;
SET v_query = CONCAT('INSERT INTO cash_cera(...) VALUES(''', p_account, ''')');
INSERT INTO cash_cera(account, cera, mod_tran, mod_date, reg_date) 
VALUES (p_account, 0, 0, NOW(), NOW());

SET v_err_line = 46;
SET v_query = CONCAT('INSERT INTO cash_cera_point(...) VALUES(''', p_account, ''')');
INSERT INTO cash_cera_point(account, cera_point, mod_date, reg_date) 
VALUES (p_account, 0, NOW(), NOW());
END;

SET v_err_line = 0;
SET v_err_msg = '';
SET v_query = '';

SET p_out_cera = 0;
SET p_out_cera_point = 0;
SET p_out_error = 0;

IF LENGTH(p_account) < 1 THEN
SET p_out_error = 1, v_err_line = 61;
SET v_err_msg = CONCAT('Invalid Parameter. ', p_account);
#SIGNAL SQLSTATE '90DF1';
END IF;

START TRANSACTION;

SET v_err_line = 68;
SET v_query = CONCAT('SELECT a.cera, b.cera_point INTO p_out_cera, p_out_cera_point FROM cash_cera WHERE account = ''', p_account, '''');
SELECT a.cera, b.cera_point INTO p_out_cera, p_out_cera_point 
FROM cash_cera a JOIN cash_cera_point b ON a.account = b.account WHERE a.account = p_account LOCK IN SHARE MODE;

COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_cancel
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_cancel`;
delimiter ;;
CREATE PROCEDURE `usp_cancel`(IN p_tran_id BIGINT UNSIGNED,
OUT p_out_error INTEGER)
BEGIN

DECLARE v_tran_type TINYINT;
DECLARE v_err_line INTEGER;
DECLARE v_err_msg VARCHAR(255);
DECLARE v_query VARCHAR(512);

DECLARE DF_ERROR01 CONDITION FOR SQLSTATE '90DF1';
DECLARE EXIT HANDLER FOR DF_ERROR01
BEGIN
ROLLBACK;

INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, v_err_msg, v_query, 'usp_cancel', v_err_line, USER(), NOW());
END;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK; 

SET p_out_error = 16;
INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, 'Unkonw error.', v_query, 'usp_cancel', v_err_line, USER(), NOW());

#RESIGNAL; 
END;

SET v_err_line = 0;
SET v_err_msg = '';
SET v_query = '';

SET p_out_error = 0;

START TRANSACTION;


SET v_tran_type = NULL;
SET v_query = CONCAT('SELECT tran_type INTO v_tran_type FROM log_transaction_history WHERE tran_id = ', CAST(p_tran_id AS CHAR));
SELECT tran_type INTO v_tran_type 
FROM log_transaction_history WHERE tran_id = p_tran_id;
IF ISNULL(v_tran_type) THEN
SET p_out_error = 19, v_err_line = 52;
SET v_err_msg = CONCAT('Invalid Transaction. ', CAST(p_tran_id AS CHAR));
#SIGNAL SQLSTATE '90DF1';
END IF;

IF (v_tran_type = 1) THEN
SET v_err_line = 58;
SET v_query = CONCAT('UPDATE log_purchase_history SET tran_state = 3 WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' AND tran_state = 1');
UPDATE log_purchase_history SET tran_state = 3 WHERE tran_id = p_tran_id AND tran_state = 1;

ELSEIF (v_tran_type = 2) THEN
SET v_err_line = 63;
SET v_query = CONCAT('UPDATE log_recharge_history SET tran_state = 3 WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' AND tran_state = 1');
UPDATE log_recharge_history SET tran_state = 3 WHERE tran_id = p_tran_id AND tran_state = 1;

ELSEIF (v_tran_type = 3) THEN
SET v_err_line = 68;
SET v_query = CONCAT('UPDATE log_gift_history SET tran_state = 3 WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' AND tran_state = 1');
UPDATE log_gift_history SET tran_state = 3 WHERE tran_id = p_tran_id AND tran_state = 1;

ELSEIF (v_tran_type = 4) THEN
SET v_err_line = 73;
SET v_query = CONCAT('UPDATE log_refund_history SET tran_state = 3 WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' AND tran_state = 1');
UPDATE log_refund_history SET tran_state = 3 WHERE tran_id = p_tran_id AND tran_state = 1;

ELSEIF (v_tran_type < 1) OR (v_tran_type > 4) THEN
SET p_out_error = 21, v_err_line = 78;
SET v_err_msg = CONCAT('Invalid Transaction Type. ', CAST(p_tran_id AS CHAR), ',', CAST(v_tran_type AS CHAR));
#SIGNAL SQLSTATE '90DF1';

END IF;

COMMIT;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_cera_point
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_cera_point`;
delimiter ;;
CREATE PROCEDURE `usp_cera_point`(IN p_account VARCHAR(30),
IN p_charac VARCHAR(30),
IN p_command CHAR,
IN p_price INTEGER UNSIGNED,
IN p_charge_type TINYINT,
IN p_free_charge_type TINYINT,
OUT p_out_error INTEGER)
BEGIN

DECLARE v_cera_point INTEGER UNSIGNED;
DECLARE v_err_line INTEGER;
DECLARE v_err_msg VARCHAR(255);
DECLARE v_query VARCHAR(512);

DECLARE DF_ERROR01 CONDITION FOR SQLSTATE '90DF1';
DECLARE EXIT HANDLER FOR DF_ERROR01
BEGIN
ROLLBACK;
INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, occ_date)
VALUES(p_out_error, v_err_msg, v_query, 'usp_recharge_point', v_err_line, NOW());
END;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK; 
SET p_out_error = 16;
INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, occ_date)
VALUES(p_out_error, 'Unknow Error', v_query, 'usp_recharge_point', 35, NOW());

#RESIGNAL; 
END;

SET v_err_line = 0;
SET v_err_msg = '';
SET v_query = '';

SET p_out_error = 0;

START TRANSACTION;


IF (LENGTH(p_account) < 1) OR (p_price <= 0) THEN
SET p_out_error = 1, v_err_line = 50;
SET v_err_msg = CONCAT('Invalid Parameter. ', p_account, ',', CAST(p_price AS CHAR));
#SIGNAL SQLSTATE '90DF1';
END IF;



IF p_command = 'A' THEN

SET v_query = CONCAT('UPDATE cash_cera_point SET cera_point = cera_point + p_price WHERE account = ''', p_account, '''');
UPDATE cash_cera_point SET cera_point = cera_point + p_price WHERE account = p_account;

SET v_query = CONCAT('INSERT INTO log_cera_point_history(account_id, charac_id, A) VALUES(', p_account, p_charac, ')');
INSERT INTO log_cera_point_history(account_id, charac_id, cera_point, command, charge_type, free_charge_type, reg_date)
VALUES (p_account, p_charac, p_price, 'A', p_charge_type, p_free_charge_type, NOW());

ELSEIF p_command = 'U' THEN

SET v_cera_point = NULL;
SET v_query = CONCAT('SELECT cera_point INTO v_cera_point FROM cash_cera_point WHERE account = ''', p_account, '''');
SELECT cera_point INTO v_cera_point FROM cash_cera_point WHERE account = p_account FOR UPDATE;
IF ISNULL(v_cera_point) THEN
SET p_out_error = 17, v_err_line = 73;
#SIGNAL SQLSTATE '90DF1';
END IF;

IF (v_cera_point < p_price) THEN
SET p_out_error = 3, v_err_line = 79;
SET v_err_msg = CONCAT('Not Enough Point. ', CAST(v_cera_point AS CHAR), ',', CAST(p_price AS CHAR));
#SIGNAL SQLSTATE '90DF1';
END IF;

SET v_query = CONCAT('UPDATE cash_cera_point SET cera_point = cera_point - p_price WHERE account = ''', p_account, '''');
UPDATE cash_cera_point SET cera_point = cera_point - p_price WHERE account = p_account;

SET v_query = CONCAT('INSERT INTO log_cera_point_history(account_id, charac_id, U) VALUES(', p_account, p_charac, ')');
INSERT INTO log_cera_point_history(account_id, charac_id, cera_point, command, charge_type, free_charge_type, reg_date)
VALUES (p_account, p_charac, p_price, 'U', p_charge_type, p_free_charge_type, NOW());
#ELSE
#SIGNAL SQLSTATE '90DF5' SET MESSAGE_TEXT = 'Invalid cera point command.', MYSQL_ERRNO = 9005;
END IF;

COMMIT;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_confirm
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_confirm`;
delimiter ;;
CREATE PROCEDURE `usp_confirm`(IN p_tran_id BIGINT UNSIGNED,
    OUT p_out_error INTEGER)
BEGIN

    DECLARE v_account VARCHAR(30);
    DECLARE v_recv_account VARCHAR(30);
    DECLARE v_cera INTEGER;
    DECLARE v_cur_cera INTEGER;
    DECLARE v_recv_cera INTEGER;
    DECLARE v_tran_type TINYINT;
    DECLARE v_tran_state TINYINT;
    DECLARE v_expired_time INTEGER;
    DECLARE v_occ_date DATETIME;
    DECLARE v_err_line INTEGER;
    DECLARE v_err_msg VARCHAR(255);
    DECLARE v_query VARCHAR(512);

    DECLARE DF_ERROR01 CONDITION FOR SQLSTATE '90DF1';
    DECLARE DF_ERROR02 CONDITION FOR SQLSTATE '90DF2';

    DECLARE EXIT HANDLER FOR DF_ERROR01
    BEGIN
        ROLLBACK;

        INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
        VALUES(p_out_error, v_err_msg, v_query, 'usp_confirm', v_err_line, USER(), NOW());
    END;

    DECLARE EXIT HANDLER FOR DF_ERROR02
    BEGIN
        COMMIT;

        INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
        VALUES(p_out_error, v_err_msg, v_query, 'usp_confirm', v_err_line, USER(), NOW());
    END;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;

        SET p_out_error = 16;
        INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
        VALUES(p_out_error, 'Unknow Error', v_query, 'usp_confirm', v_err_line, USER(), NOW());

        #RESIGNAL;
    END;

    SET v_expired_time = 180;
    SET v_err_line = 0;
    SET v_err_msg = '';
    SET v_query = '';

    SET p_out_error = 0;

    START TRANSACTION;

    
    SET v_tran_type = NULL;
    SET v_query = CONCAT('SELECT tran_type INTO v_tran_type FROM log_transaction_history WHERE tran_id = ', CAST(p_tran_id AS CHAR));
    SELECT tran_type INTO v_tran_type FROM log_transaction_history WHERE tran_id = p_tran_id;
    IF ISNULL(v_tran_type) THEN
        SET p_out_error = 19, v_err_line = 70;
        SET v_err_msg = CONCAT('Invalid Transaction. ', CAST(p_tran_id AS CHAR));
        #SIGNAL SQLSTATE '90DF1';
    END IF;

    IF v_tran_type = 1 THEN
        
        SET v_account = NULL;
        SET v_cera = NULL;
        SET v_tran_state = NULL;
        SET v_occ_date = NULL;

        SET v_query = CONCAT('SELECT account_id, cera, tran_state, occ_date INTO v_account, v_cera, v_tran_state, v_occ_date FROM log_purchase_history WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' AND tran_state = 1');
        SELECT account_id, cera, tran_state, occ_date INTO v_account, v_cera, v_tran_state, v_occ_date
        FROM log_purchase_history
        WHERE tran_id = p_tran_id AND tran_state = 1;
        IF ISNULL(v_account) THEN 
            SET p_out_error = 19, v_err_line = 87;
            SET v_err_msg = CONCAT('Invalid Transaction. Purchase,', CAST(p_tran_id AS CHAR));
            #SIGNAL SQLSTATE '90DF1';
        END IF;

        
        SET v_cur_cera = NULL;
        SET v_query = CONCAT('SELECT cera INTO v_cur_cera FROM cash_cera WHERE account = ', v_account);
        SELECT cera INTO v_cur_cera FROM cash_cera WHERE account = v_account;
        IF ISNULL(v_cur_cera) THEN
            SET p_out_error = 17, v_err_line = 97;
            SET v_err_msg = CONCAT('Invalid Account. Purchase,', v_account);
            #SIGNAL SQLSTATE '90DF1';
        END IF;

        IF v_cur_cera < v_cera THEN
            SET p_out_error = 3, v_err_line = 103;
            SET v_err_msg = CONCAT('Not Enough Cash. Purchase,', CAST(v_cur_cera AS CHAR), ',', CAST(v_cera AS CHAR));
            #SIGNAL SQLSTATE '90DF1';
        END IF;
        
        
        IF ( TIME_TO_SEC(timediff(NOW(),v_occ_date)) > v_expired_time ) THEN
SET v_err_line = 110;
            SET v_query = CONCAT('UPDATE log_purchase_history SET tran_state = 4 WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' tran_state = 1');
            UPDATE log_purchase_history SET tran_state = 4 WHERE tran_id = p_tran_id AND tran_state = 1;

            SET p_out_error = 20, v_err_line = 114;
            SET v_err_msg = CONCAT('Expired transaction. Purchase,', CAST(p_tran_id AS CHAR), ',', DATE_FORMAT(v_occ_date, GET_FORMAT(DATETIME,'INTERNAL')));
            #SIGNAL SQLSTATE '90DF2';
        END IF;

SET v_err_line = 119;
        SET v_query = CONCAT('UPDATE cash_cera SET cera = cera - v_cera, mod_tran = ', CAST(p_tran_id AS CHAR), ', mod_date = NOW() WHERE account = ''', v_account, '''');
        UPDATE cash_cera SET cera = cera - v_cera, mod_tran = p_tran_id, mod_date = NOW() WHERE account = v_account;

SET v_err_line = 123;
        SET v_query = CONCAT('UPDATE log_purchase_history SET tran_state = 2 WHERE tran_id = ', CAST(p_tran_id AS CHAR), '  AND tran_state = 1');
        UPDATE log_purchase_history SET tran_state = 2 WHERE tran_id = p_tran_id AND tran_state = 1;

    ELSEIF v_tran_type = 2 THEN
        
        SET v_account = NULL;
        SET v_cera = NULL;
        SET v_tran_state = NULL;
        SET v_occ_date = NULL;

        SET v_query = CONCAT('SELECT account_id, cera, tran_state, occ_date INTO v_account, v_cera, v_tran_state, v_occ_date FROM log_recharge_history WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' AND tran_state = 1');
        SELECT account_id, cera, tran_state, occ_date INTO v_account, v_cera, v_tran_state, v_occ_date
        FROM log_recharge_history
        WHERE tran_id = p_tran_id AND tran_state = 1;
        IF ISNULL(v_account) THEN 
            SET p_out_error = 19, v_err_line = 139;
            SET v_err_msg = CONCAT('Invalid Transaction. Recharge,', CAST(p_tran_id AS CHAR));
            #SIGNAL SQLSTATE '90DF1';
        END IF;

        
        SET v_cur_cera = NULL;
        SET v_query = CONCAT('SELECT cera INTO v_cur_cera FROM cash_cera WHERE account = ', v_account);
        SELECT cera INTO v_cur_cera FROM cash_cera WHERE account = v_account;
        IF ISNULL(v_cur_cera) THEN
            SET p_out_error = 17, v_err_line = 149;
            SET v_err_msg = CONCAT('Invalid Account. Recharge,', v_account);
            #SIGNAL SQLSTATE '90DF1';
        END IF;

        
        IF ( TIME_TO_SEC(timediff(NOW(),v_occ_date)) > v_expired_time ) THEN
SET v_err_line = 156;
            SET v_query = CONCAT('UPDATE log_recharge_history SET tran_state = 4 WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' tran_state = 1');
            UPDATE log_recharge_history SET tran_state = 4 WHERE tran_id = p_tran_id AND tran_state = 1;

            SET p_out_error = 20, v_err_line = 160;
            SET v_err_msg = CONCAT('Expired transaction. Recharge,', CAST(p_tran_id AS CHAR), ',', DATE_FORMAT(v_occ_date, GET_FORMAT(DATETIME,'INTERNAL')));
            #SIGNAL SQLSTATE '90DF2';
        END IF;

SET v_err_line = 165;
        SET v_query = CONCAT('UPDATE cash_cera SET cera = cera + v_cera, mod_tran = ', CAST(p_tran_id AS CHAR), ', mod_date = NOW() WHERE account = ''', v_account, '''');
        UPDATE cash_cera SET cera = cera + v_cera, mod_tran = p_tran_id, mod_date = NOW() WHERE account = v_account;

SET v_err_line = 169;
        SET v_query = CONCAT('UPDATE log_recharge_history SET tran_state = 2 WHERE tran_id = ', CAST(p_tran_id AS CHAR), '  AND tran_state = 1');
        UPDATE log_recharge_history SET tran_state = 2 WHERE tran_id = p_tran_id AND tran_state = 1;

    ELSEIF v_tran_type = 3 THEN
        
        SET v_account = NULL;
        SET v_recv_account = NULL;
        SET v_cera = NULL;
        SET v_tran_state = NULL;
        SET v_occ_date = NULL;

        SET v_query = CONCAT('SELECT account_id, cera, tran_state, occ_date INTO v_account, v_cera, v_tran_state, v_occ_date FROM log_gift_history WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' AND tran_state = 1');
        SELECT send_account_id, recv_account_id, cera, tran_state, occ_date INTO v_account, v_recv_account, v_cera, v_tran_state, v_occ_date
        FROM log_gift_history
        WHERE tran_id = p_tran_id AND tran_state = 1;
        IF ISNULL(v_account) OR ISNULL(v_recv_account) THEN 
            SET p_out_error = 19, v_err_line = 186;
            SET v_err_msg = CONCAT('Invalid Transaction. Gift,', CAST(p_tran_id AS CHAR));
            #SIGNAL SQLSTATE '90DF1';
        END IF;
        

        SET v_cur_cera = NULL;
        SET v_query = CONCAT('SELECT cera INTO v_cur_cera FROM cash_cera WHERE account = ', v_account);
        SELECT cera INTO v_cur_cera FROM cash_cera WHERE account = v_account;
        IF ISNULL(v_cur_cera) THEN
            SET p_out_error = 17, v_err_line = 196;
            SET v_err_msg = CONCAT('Invalid Account. Gift,', v_account);
            #SIGNAL SQLSTATE '90DF1';
        END IF;

        IF v_cur_cera < v_cera THEN
            SET p_out_error = 3, v_err_line = 202;
            SET v_err_msg = CONCAT('Not Enough Cash. Gift,', CAST(v_cur_cera AS CHAR), ',', CAST(v_cera AS CHAR));
            #SIGNAL SQLSTATE '90DF1';
        END IF;

        
        IF ( TIME_TO_SEC(timediff(NOW(),v_occ_date)) > v_expired_time ) THEN
SET v_err_line = 209;
            SET v_query = CONCAT('UPDATE log_gift_history SET tran_state = 4 WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' tran_state = 1');
            UPDATE log_gift_history SET tran_state = 4 WHERE tran_id = p_tran_id AND tran_state = 1;

            SET p_out_error = 20, v_err_line = 213;
            SET v_err_msg = CONCAT('Expired transaction. Gift,', CAST(p_tran_id AS CHAR), ',', DATE_FORMAT(v_occ_date, GET_FORMAT(DATETIME,'INTERNAL')));
            #SIGNAL SQLSTATE '90DF2';
        END IF;

SET v_err_line = 218;
        SET v_query = CONCAT('UPDATE cash_cera SET cera = cera - v_cera, mod_tran = ', CAST(p_tran_id AS CHAR), ', mod_date = NOW() WHERE account = ''', v_account, '''');
        UPDATE cash_cera SET cera = cera - v_cera, mod_tran = p_tran_id, mod_date = NOW() WHERE account = v_account;

SET v_err_line = 222;
        SET v_query = CONCAT('UPDATE cash_cera SET cera = cera + v_cera, mod_tran = ', CAST(p_tran_id AS CHAR), ', mod_date = NOW() WHERE account = ''', v_account, '''');
        UPDATE cash_cera SET cera = cera + v_cera, mod_tran = p_tran_id, mod_date = NOW() WHERE account = v_recv_account;

SET v_err_line = 226;
        SET v_query = CONCAT('UPDATE log_gift_history SET tran_state = 2 WHERE tran_id = ', CAST(p_tran_id AS CHAR), '  AND tran_state = 1');
        UPDATE log_gift_history SET tran_state = 2 WHERE tran_id = p_tran_id AND tran_state = 1;

    ELSEIF v_tran_type = 4 THEN
                
        SET v_account = NULL;
        SET v_cera = NULL;
        SET v_tran_state = NULL;
        SET v_occ_date = NULL;

        SET v_query = CONCAT('SELECT account_id, cera, tran_state, occ_date INTO v_account, v_cera, v_tran_state, v_occ_date FROM log_purchase_history WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' AND tran_state = 1');
        SELECT account_id, amount, tran_state, occ_date INTO v_account, v_cera, v_tran_state, v_occ_date
        FROM log_refund_history
        WHERE tran_id = p_tran_id AND tran_state = 1;
        IF ISNULL(v_account) THEN  
            SET p_out_error = 22, v_err_line = 242;
            SET v_err_msg = CONCAT('Invalid Transaction. Refund,', CAST(p_tran_id AS CHAR));
            #SIGNAL SQLSTATE '90DF1';
        END IF;

                
        SET v_cur_cera = NULL;
        SET v_query = CONCAT('SELECT cera INTO v_cur_cera FROM cash_cera WHERE account = ', v_account);
        SELECT cera INTO v_cur_cera FROM cash_cera WHERE account = v_account;
        IF ISNULL(v_cur_cera) THEN
            SET p_out_error = 17, v_err_line = 252;
            SET v_err_msg = CONCAT('Invalid Account. Refund,', v_account);
            #SIGNAL SQLSTATE '90DF1';
        END IF;

        IF v_cur_cera < v_cera THEN
            SET p_out_error = 3, v_err_line = 258;
            SET v_err_msg = CONCAT('Not Enough Cash. Refund,', CAST(v_cur_cera AS CHAR), ',', CAST(v_cera AS CHAR));
            #SIGNAL SQLSTATE '90DF1';
        END IF;

                
        IF ( TIME_TO_SEC(timediff(NOW(),v_occ_date)) > v_expired_time ) THEN
SET v_err_line = 265;
            SET v_query = CONCAT('UPDATE log_purchase_history SET tran_state = 4 WHERE tran_id = ', CAST(p_tran_id AS CHAR), ' tran_state = 1');
            UPDATE log_refund_history SET tran_state = 4 WHERE tran_id = p_tran_id AND tran_state = 1;

            SET p_out_error = 20, v_err_line = 269;
            SET v_err_msg = CONCAT('Expired transaction. Refund,', CAST(p_tran_id AS CHAR), ',', DATE_FORMAT(v_occ_date, GET_FORMAT(DATETIME,'INTERNAL')));
            #SIGNAL SQLSTATE '90DF2';
        END IF;

SET v_err_line = 274;
        SET v_query = CONCAT('UPDATE cash_cera SET cera = cera - v_cera, mod_tran = ', CAST(p_tran_id AS CHAR), ', mod_date = NOW() WHERE account = ''', v_account, '''');
        UPDATE cash_cera SET cera = cera - v_cera, mod_tran = p_tran_id, mod_date = NOW() WHERE account = v_account;

SET v_err_line = 278;
        SET v_query = CONCAT('UPDATE log_refund_history SET tran_state = 2 WHERE tran_id = ', CAST(p_tran_id AS CHAR), '  AND tran_state = 1');
        UPDATE log_refund_history SET tran_state = 2 WHERE tran_id = p_tran_id AND tran_state = 1;

    END IF;

    COMMIT;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_gift
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_gift`;
delimiter ;;
CREATE PROCEDURE `usp_gift`(IN p_send_account VARCHAR(30),
IN p_send_charac VARCHAR(30),
IN p_recv_account VARCHAR(30),
IN p_item_id INTEGER UNSIGNED,
IN p_price INTEGER UNSIGNED,
OUT p_out_tran_id BIGINT UNSIGNED,
OUT p_out_error INTEGER)
BEGIN

DECLARE v_sender_cera INTEGER UNSIGNED;
DECLARE v_recver_cera INTEGER UNSIGNED;
DECLARE v_err_line INTEGER;
DECLARE v_err_msg VARCHAR(255);
DECLARE v_query VARCHAR(512);

DECLARE DF_ERROR01 CONDITION FOR SQLSTATE '90DF1';
DECLARE EXIT HANDLER FOR DF_ERROR01
BEGIN
ROLLBACK;

INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, v_err_msg, v_query, 'usp_gift', v_err_line, USER(), NOW());
END;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK; 

SET p_out_error = 16;
INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, 'Unknow Error.', v_query, 'usp_gift', v_err_line, USER(), NOW());

#RESIGNAL; 
END;

SET p_out_tran_id = 0;
SET p_out_error = 0;

SET v_err_line = 0;
SET v_err_msg = '';
SET v_query = '';

START TRANSACTION;


IF (LENGTH(p_send_account) < 1) OR (LENGTH(p_recv_account) < 1) OR (p_price <= 0) THEN
SET p_out_error = 1, v_err_line = 55;
SET v_err_msg = CONCAT('Invalid Parameter. ', p_send_account, ',', p_recv_account, ',', CAST(p_price AS CHAR));
#SIGNAL SQLSTATE '90DF1';
END IF;


SET v_sender_cera = NULL;
SET v_query = CONCAT('SELECT cera INTO v_sender_cera FROM cash_cera WHERE account = ''', p_send_account, '''');
SELECT cera INTO v_sender_cera FROM cash_cera WHERE account = p_send_account;
IF ISNULL(v_sender_cera) THEN
SET p_out_error = 17, v_err_line = 65;
SET v_err_msg = CONCAT('Invalid Account. ', p_send_account);
#SIGNAL SQLSTATE '90DF1';
END IF;

IF v_sender_cera < p_price THEN
SET p_out_error = 3, v_err_line = 71; 
SET v_err_msg = CONCAT('Not Enough Cash. ', CAST(v_sender_cera AS CHAR), ',', CAST(p_price AS CHAR));
#SIGNAL SQLSTATE '90DF1';
END IF;


SET v_recver_cera = NULL;
SET v_query = CONCAT('SELECT cera INTO v_recver_cera FROM cash_cera WHERE account = ''', p_recv_account, '''');
SELECT cera INTO v_recver_cera FROM cash_cera WHERE account = p_recv_account;
IF ISNULL(v_recver_cera) THEN
SET p_out_error = 17, v_err_line = 81;
SET v_err_msg = CONCAT('Invalid Account. ', p_recv_account);
#SIGNAL SQLSTATE '90DF1';
END IF;


SET p_out_tran_id = NULL;
SET v_query = 'INSERT INTO cash_transaction (dummy) VALUES(''G'')';
INSERT INTO cash_transaction (dummy) VALUES('G');
SELECT LAST_INSERT_ID() INTO p_out_tran_id;
IF ISNULL(p_out_tran_id) THEN
SET p_out_error = 18, v_err_line = 92, p_out_tran_id = 0;
SET v_err_msg = 'Fail Generate Transaction. Gift(2)';
#SIGNAL SQLSTATE '90DF1';
END IF;

SET v_err_line = 97;
SET v_query = CONCAT('INSERT INTO log_issue_tran_history(tran_id, tran_type, occ_date) VALUES (', CAST(p_out_tran_id AS CHAR), ' 3, NOW())');
INSERT INTO log_transaction_history(tran_id, tran_type, occ_date) VALUES (p_out_tran_id, 3, NOW());


SET v_err_line = 102;
SET v_query = CONCAT('INSERT INTO log_gift_history(tran_id) VALUES(', CAST(p_out_tran_id AS CHAR), ')');
INSERT INTO log_gift_history(send_account_id, send_charac_id, recv_account_id, 
item_id, cera, 
send_befor_cera, send_after_cera, 
recv_befor_cera, recv_after_cera, 
tran_id, tran_state, query_user, occ_date)
VALUES (p_send_account, p_send_charac, p_recv_account, 
p_item_id, p_price, 
v_sender_cera, v_sender_cera - p_price, 
v_recver_cera, v_recver_cera + p_price, 
p_out_tran_id, 1, USER(), NOW());

COMMIT;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_point_process
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_point_process`;
delimiter ;;
CREATE PROCEDURE `usp_point_process`(IN p_account VARCHAR(30),
    IN p_charac VARCHAR(30),
    IN p_command CHAR,
    IN p_price INTEGER UNSIGNED,
    IN p_charge_type TINYINT,
IN p_item_id INTEGER UNSIGNED,
    IN p_free_charge_type TINYINT,
    OUT p_out_error INTEGER)
BEGIN

    DECLARE v_cera_point INTEGER UNSIGNED;
    DECLARE v_err_line INTEGER;
    DECLARE v_err_msg VARCHAR(255);
    DECLARE v_query VARCHAR(512);

    DECLARE DF_ERROR01 CONDITION FOR SQLSTATE '90DF1';
    DECLARE EXIT HANDLER FOR DF_ERROR01
    BEGIN
ROLLBACK;

        INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
        VALUES(p_out_error, v_err_msg, v_query, 'usp_recharge_point', v_err_line, USER(), NOW());
END;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
ROLLBACK;

        SET p_out_error = 16;
        INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
        VALUES(p_out_error, 'Unknow Error', v_query, 'usp_recharge_point', v_err_line, USER(), NOW());

        #RESIGNAL;
    END;

    SET v_err_line = 0;
    SET v_err_msg = '';
    SET v_query = '';

    SET p_out_error = 0;

    START TRANSACTION;
        
    IF (LENGTH(p_account) < 1) OR (p_price <= 0) THEN
SET p_out_error = 1, v_err_line = 53;
        SET v_err_msg = CONCAT('Invalid Parameter. ', p_account, ',', CAST(p_price AS CHAR));
        #SIGNAL SQLSTATE '90DF1';
    END IF;    

    IF p_command = 'A' THEN

SET v_err_line = 60;
        SET v_query = CONCAT('UPDATE cash_cera_point SET cera_point = cera_point + p_price WHERE account = ''', p_account, '''');
        UPDATE cash_cera_point SET cera_point = cera_point + p_price WHERE account = p_account;

SET v_err_line = 64;
        SET v_query = CONCAT('INSERT INTO log_point_history(account_id, charac_id, A) VALUES(', p_account, p_charac, ')');
        INSERT INTO log_point_history(account_id, charac_id, cera_point, command, charge_type, free_charge_type, query_user, reg_date)
        VALUES (p_account, p_charac, p_price, 'A', p_charge_type, p_free_charge_type, USER(), NOW());
    ELSEIF p_command = 'U' THEN

        SET v_cera_point = NULL;
        SET v_query = CONCAT('SELECT cera_point INTO v_cera_point FROM cash_cera_point WHERE account = ''', p_account, '''');
        SELECT cera_point INTO v_cera_point FROM cash_cera_point WHERE account = p_account LOCK IN SHARE MODE;
        IF ISNULL(v_cera_point) THEN
SET p_out_error = 17, v_err_line = 74;
            SET v_err_msg = CONCAT('Invalid Account. ', p_account);
            #SIGNAL SQLSTATE '90DF1';
END IF;

        IF (v_cera_point < p_price) THEN
SET p_out_error = 4, v_err_line = 80;
            SET v_err_msg = CONCAT('Not Enough Point. ', CAST(v_cera_point AS CHAR), ',', CAST(p_price AS CHAR));
            #SIGNAL SQLSTATE '90DF1';
END IF;

SET v_err_line = 85;
        SET v_query = CONCAT('UPDATE cash_cera_point SET cera_point = cera_point - p_price WHERE account = ''', p_account, '''');
        UPDATE cash_cera_point SET cera_point = cera_point - p_price WHERE account = p_account;

SET v_err_line = 89;
        SET v_query = CONCAT('INSERT INTO log_point_history(account_id, charac_id, U) VALUES(', p_account, p_charac, ')');
        INSERT INTO log_point_history(account_id, charac_id, cera_point, command, charge_type, item_id ,free_charge_type, query_user, reg_date)
        VALUES (p_account, p_charac, p_price, 'U', p_charge_type, p_item_id, p_free_charge_type, USER(), NOW());
#SIGNAL SQLSTATE '90DF5' SET MESSAGE_TEXT = 'Invalid Cera Point Command.', MYSQL_ERRNO = 9005;
    END IF;

    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_purchase
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_purchase`;
delimiter ;;
CREATE PROCEDURE `usp_purchase`(IN p_account VARCHAR(30),
IN p_charac VARCHAR(30),
IN p_item_id INTEGER UNSIGNED,
IN p_price INTEGER UNSIGNED,
OUT p_out_tran_id BIGINT UNSIGNED,
OUT p_out_error INTEGER)
BEGIN

DECLARE v_cera INTEGER UNSIGNED;
DECLARE v_err_line INTEGER;
DECLARE v_err_msg VARCHAR(255);
DECLARE v_query VARCHAR(512);

DECLARE DF_ERROR01 CONDITION FOR SQLSTATE '90DF1';
DECLARE EXIT HANDLER FOR DF_ERROR01
BEGIN
ROLLBACK;

INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES (p_out_error, v_err_msg, v_query, 'usp_purchase', v_err_line, USER(), NOW());
END;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK; 

SET p_out_error = 16;
INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, 'Unknow Error.', v_query, 'usp_purchase', v_err_line, USER(), NOW());

#RESIGNAL; 
END;

SET v_err_line = 0;
SET v_err_msg = '';
SET v_query = '';

SET p_out_tran_id = 0;
SET p_out_error = 0;

START TRANSACTION;


IF (LENGTH(p_account) < 1) OR (p_price <= 0) THEN
SET p_out_error = 1, v_err_line = 53;
SET v_err_msg = CONCAT('Invalid Parameter. ', p_account, ',', CAST(p_price AS CHAR));
#SIGNAL SQLSTATE '90DF1';
END IF;


SET v_cera = NULL;
SET v_query = CONCAT('SELECT cera INTO v_cera FROM cash_cera WHERE account = ''', p_account, '''');
SELECT cera INTO v_cera FROM cash_cera WHERE account = p_account;
IF ISNULL(v_cera) THEN
SET p_out_error = 17, v_err_line = 63;
SET v_err_msg = CONCAT('Invalid Account. ', p_account);
#SIGNAL SQLSTATE '90DF1';
END IF;

IF (v_cera < p_price) THEN
SET p_out_error = 3, v_err_line = 69;
SET v_err_msg = CONCAT('Not Enough Cash. ', CAST(v_cera AS CHAR), ',', CAST(p_price AS CHAR));
#SIGNAL SQLSTATE '90DF1';
END IF;


SET p_out_tran_id = NULL;
SET v_query = 'INSERT INTO cash_transaction (dummy) VALUES(''P'')';
INSERT INTO cash_transaction (dummy) VALUES('P');
SELECT LAST_INSERT_ID() INTO p_out_tran_id;
IF ISNULL(p_out_tran_id) THEN
SET p_out_error = 18, v_err_line = 80, p_out_tran_id = 0;
SET v_err_msg = 'Fail Generate Transaction. Purchase(1)';
#SIGNAL SQLSTATE '90DF1';
END IF;

SET v_err_line = 85;
SET v_query = CONCAT('INSERT INTO log_issue_tran_history(tran_id, tran_type, occ_date) VALUES (', CAST(p_out_tran_id AS CHAR), ' 1, NOW())');
INSERT INTO log_transaction_history(tran_id, tran_type, occ_date) VALUES (p_out_tran_id, 1, NOW());

SET v_err_line = 89;
SET v_query = CONCAT('INSERT INTO log_purchase_history(tran_id) VALUES(', CAST(p_out_tran_id AS CHAR), ')');
INSERT INTO log_purchase_history(account_id, charac_id, item_id, cera, befor_cera, after_cera, tran_id, tran_state, query_user, occ_date)
VALUES (p_account, p_charac, p_item_id, p_price, v_cera, v_cera - p_price, p_out_tran_id, 1, USER(), NOW());

COMMIT;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_recharge
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_recharge`;
delimiter ;;
CREATE PROCEDURE `usp_recharge`(IN p_account VARCHAR(30),
IN p_charac VARCHAR(30),
IN p_order_tran VARCHAR(35),
IN p_price INTEGER UNSIGNED,
IN p_recharge_type TINYINT,
OUT p_out_tran_id BIGINT UNSIGNED,
OUT p_out_error INTEGER)
BEGIN

DECLARE v_cera INTEGER UNSIGNED;
DECLARE v_err_line INTEGER;
DECLARE v_err_msg VARCHAR(255);
DECLARE v_query VARCHAR(512);

DECLARE DF_ERROR01 CONDITION FOR SQLSTATE '90DF1';
DECLARE EXIT HANDLER FOR DF_ERROR01
BEGIN
ROLLBACK;

INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, v_err_msg, v_query, 'usp_recharge', v_err_line, USER(), NOW());
END;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK; 

SET p_out_error = 16;
INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, 'Unknow Error', v_query, 'usp_recharge', v_err_line, USER(), NOW());

#RESIGNAL; 
END;

SET v_err_line = 0;
SET v_err_msg = '';
SET v_query = '';

SET p_out_tran_id = 0;
SET p_out_error = 0;

START TRANSACTION;


IF (LENGTH(p_account) < 1) OR (p_price <= 0) THEN
SET p_out_error = 1, v_err_line = 54;
SET v_err_msg = CONCAT('Invalid Parameter. ', p_account, ',', CAST(p_price AS CHAR));
#SIGNAL SQLSTATE '90DF1';
END IF;


SET v_cera = NULL;
SET v_query = CONCAT('SELECT cera INTO v_cera FROM cash_cera WHERE account = ''', p_account, '''');
SELECT cera INTO v_cera FROM cash_cera WHERE account = p_account;
IF ISNULL(v_cera) THEN
SET p_out_error = 17, v_err_line = 64;
SET v_err_msg = CONCAT('Invalid Account. ', p_account);
#SIGNAL SQLSTATE '90DF1';
END IF;


SET p_out_tran_id = NULL;
SET v_query = 'INSERT INTO cash_transaction (dummy) VALUES(''R'')';
INSERT INTO cash_transaction (dummy) VALUES('R');
SELECT LAST_INSERT_ID() INTO p_out_tran_id;
IF ISNULL(p_out_tran_id) THEN
SET p_out_error = 18, v_err_line = 75, p_out_tran_id = 0;
SET v_err_msg = 'Fail Generate Transaction. Recharge(2)';
#SIGNAL SQLSTATE '90DF1';
END IF;

SET v_err_line = 80;
SET v_query = CONCAT('INSERT INTO log_issue_tran_history(tran_id, tran_type, occ_date) VALUES (', CAST(p_out_tran_id AS CHAR), ', 2, NOW())');
INSERT INTO log_transaction_history(tran_id, tran_type, occ_date) VALUES (p_out_tran_id, 2, NOW());

SET v_err_line = 84;
SET v_query = CONCAT('INSERT INTO log_recharge_history(tran_id, order_tran_id) VALUES(', CAST(p_out_tran_id AS CHAR), ',', p_order_tran, ')');
INSERT INTO log_recharge_history(account_id, charac_id, order_tran_id, cera, befor_cera, after_cera, tran_id, tran_state, charge_type, query_user,occ_date)
VALUES (p_account, p_charac, p_order_tran, p_price, v_cera, v_cera + p_price, p_out_tran_id, 1, p_recharge_type, USER(), NOW());

COMMIT;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_refund
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_refund`;
delimiter ;;
CREATE PROCEDURE `usp_refund`(IN p_account VARCHAR(30),
        IN p_order_tran VARCHAR(35),
        IN p_amount INTEGER UNSIGNED,
        OUT p_out_tran_id BIGINT UNSIGNED,
        OUT p_out_error INTEGER)
BEGIN

    DECLARE v_amount INTEGER UNSIGNED;
    DECLARE v_refund_cnt INTEGER;
    DECLARE v_err_line INTEGER;
    DECLARE v_err_msg VARCHAR(255);
    DECLARE v_query VARCHAR(512);

    DECLARE DF_ERROR01 CONDITION FOR SQLSTATE '90DF1';
    DECLARE EXIT HANDLER FOR DF_ERROR01
    BEGIN
ROLLBACK;

        INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
        VALUES (p_out_error, v_err_msg, v_query, 'usp_refund', v_err_line, USER(), NOW());
    END;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
ROLLBACK;

SET p_out_error = 16;
INSERT INTO log_error_history (error_id, error_msg, error_query, proc_name, proc_line, query_user, occ_date)
VALUES(p_out_error, 'Unknow Error.', v_query, 'usp_refund', v_err_line, USER(), NOW());

        #RESIGNAL;
    END;

    SET v_err_line = 0;
    SET v_err_msg = '';
    SET v_query = '';

    SET p_out_tran_id = 0;
    SET p_out_error = 0;

    START TRANSACTION;
        
    IF (LENGTH(p_account) < 1) OR (p_amount <= 0) THEN
        SET p_out_error = 1, v_err_line = 52;
        SET v_err_msg = CONCAT('Invalid Parameter. ', p_account, ',', CAST(p_amount AS CHAR));
#SIGNAL SQLSTATE '90DF1';
    END IF;
     
    SET v_amount = NULL;
    SET v_query = CONCAT('SELECT cera INTO v_amount FROM cash_cera WHERE account = ''', p_account, '''');
    SELECT cera INTO v_amount FROM cash_cera WHERE account = p_account;
    IF ISNULL(v_amount) THEN
        SET p_out_error = 17, v_err_line = 61;
        SET v_err_msg = CONCAT('Invalid Account. ', p_account);
#SIGNAL SQLSTATE '90DF1';
    END IF;

    IF (v_amount < p_amount) THEN
SET p_out_error = 3, v_err_line = 67;
SET v_err_msg = CONCAT('Not Enough Cash. ', CAST(v_amount AS CHAR), ',', CAST(p_amount AS CHAR));
#SIGNAL SQLSTATE '90DF1';
    END IF;
      
    SET p_out_tran_id = NULL;
    SET v_query = 'INSERT INTO cash_transaction (dummy) VALUES(''F'')';
    INSERT INTO cash_transaction (dummy) VALUES('F');
    SELECT LAST_INSERT_ID() INTO p_out_tran_id;
    IF ISNULL(p_out_tran_id) THEN
        SET p_out_error = 18, v_err_line = 77, p_out_tran_id = 0;
        SET v_err_msg = 'Fail Generate Transaction. Refund(4)';
#SIGNAL SQLSTATE '90DF1';
    END IF;

SET v_err_line = 82;
    SET v_query = CONCAT('INSERT INTO log_issue_tran_history(tran_id, tran_type, occ_date) VALUES (', CAST(p_out_tran_id AS CHAR), ' 4, NOW())');
    INSERT INTO log_transaction_history(tran_id, tran_type, occ_date) VALUES (p_out_tran_id, 4, NOW());

SET v_err_line = 86;
    SET v_query = CONCAT('INSERT INTO log_refund_history(tran_id) VALUES(', CAST(p_out_tran_id AS CHAR), ')');
INSERT INTO log_refund_history(tran_id , account_id, amount, order_tran_id, tran_state, query_user, occ_date)
    VALUES (p_out_tran_id , p_account, p_amount, p_order_tran, 1, USER(), NOW());

    COMMIT;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
