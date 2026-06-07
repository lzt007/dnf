/*
 Navicat Premium Dump SQL (FIXED)

 Source Server         : 192.168.200.131
 Source Server Type    : MySQL
 Source Server Version : 50527 (5.5.27)
 Source Host           : 192.168.200.131:3306
 Source Schema         : performance_schema

 Target Server Type    : MySQL
 Target Server Version : 50527 (5.5.27)
 File Encoding         : 65001

 Date: 31/05/2026 18:50:35
*/

CREATE DATABASE IF NOT EXISTS `performance_schema_backup`;
USE `performance_schema_backup`;

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cond_instances
-- ----------------------------
DROP TABLE IF EXISTS `cond_instances`;
CREATE TABLE `cond_instances`  (
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cond_instances
-- ----------------------------

-- ----------------------------
-- Table structure for events_waits_current
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_current`;
CREATE TABLE `events_waits_current`  (
  `THREAD_ID` int(11) NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SOURCE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `SPINS` int(10) UNSIGNED NULL DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OBJECT_NAME` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `OPERATION` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `FLAGS` int(10) UNSIGNED NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of events_waits_current
-- ----------------------------

-- ----------------------------
-- Table structure for events_waits_history
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_history`;
CREATE TABLE `events_waits_history`  (
  `THREAD_ID` int(11) NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SOURCE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `SPINS` int(10) UNSIGNED NULL DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OBJECT_NAME` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `OPERATION` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `FLAGS` int(10) UNSIGNED NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of events_waits_history
-- ----------------------------

-- ----------------------------
-- Table structure for events_waits_history_long
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_history_long`;
CREATE TABLE `events_waits_history_long`  (
  `THREAD_ID` int(11) NOT NULL,
  `EVENT_ID` bigint(20) UNSIGNED NOT NULL,
  `EVENT_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SOURCE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIMER_START` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `TIMER_END` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `TIMER_WAIT` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `SPINS` int(10) UNSIGNED NULL DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OBJECT_NAME` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `NESTING_EVENT_ID` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `OPERATION` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `FLAGS` int(10) UNSIGNED NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of events_waits_history_long
-- ----------------------------

-- ----------------------------
-- Table structure for events_waits_summary_by_instance
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_summary_by_instance`;
CREATE TABLE `events_waits_summary_by_instance`  (
  `EVENT_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of events_waits_summary_by_instance
-- ----------------------------

-- ----------------------------
-- Table structure for events_waits_summary_by_thread_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_summary_by_thread_by_event_name`;
CREATE TABLE `events_waits_summary_by_thread_by_event_name`  (
  `THREAD_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of events_waits_summary_by_thread_by_event_name
-- ----------------------------

-- ----------------------------
-- Table structure for events_waits_summary_global_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_summary_global_by_event_name`;
CREATE TABLE `events_waits_summary_global_by_event_name`  (
  `EVENT_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `COUNT_STAR` bigint(20) UNSIGNED NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of events_waits_summary_global_by_event_name
-- ----------------------------

-- ----------------------------
-- Table structure for file_instances
-- ----------------------------
DROP TABLE IF EXISTS `file_instances`;
CREATE TABLE `file_instances`  (
  `FILE_NAME` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EVENT_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OPEN_COUNT` int(10) UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_instances
-- ----------------------------

-- ----------------------------
-- Table structure for file_summary_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `file_summary_by_event_name`;
CREATE TABLE `file_summary_by_event_name`  (
  `EVENT_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_summary_by_event_name
-- ----------------------------

-- ----------------------------
-- Table structure for file_summary_by_instance
-- ----------------------------
DROP TABLE IF EXISTS `file_summary_by_instance`;
CREATE TABLE `file_summary_by_instance`  (
  `FILE_NAME` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EVENT_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `COUNT_READ` bigint(20) UNSIGNED NOT NULL,
  `COUNT_WRITE` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) UNSIGNED NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_summary_by_instance
-- ----------------------------

-- ----------------------------
-- Table structure for mutex_instances
-- ----------------------------
DROP TABLE IF EXISTS `mutex_instances`;
CREATE TABLE `mutex_instances`  (
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `LOCKED_BY_THREAD_ID` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mutex_instances
-- ----------------------------

-- ----------------------------
-- Table structure for performance_timers
-- ----------------------------
DROP TABLE IF EXISTS `performance_timers`;
CREATE TABLE `performance_timers`  (
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TIMER_FREQUENCY` bigint(20) NULL DEFAULT NULL,
  `TIMER_RESOLUTION` bigint(20) NULL DEFAULT NULL,
  `TIMER_OVERHEAD` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of performance_timers
-- ----------------------------
INSERT INTO `performance_timers` VALUES ('CYCLE', NULL, NULL, NULL);
INSERT INTO `performance_timers` VALUES ('NANOSECOND', NULL, NULL, NULL);
INSERT INTO `performance_timers` VALUES ('MICROSECOND', NULL, NULL, NULL);
INSERT INTO `performance_timers` VALUES ('MILLISECOND', NULL, NULL, NULL);
INSERT INTO `performance_timers` VALUES ('TICK', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rwlock_instances
-- ----------------------------
DROP TABLE IF EXISTS `rwlock_instances`;
CREATE TABLE `rwlock_instances`  (
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) NOT NULL,
  `WRITE_LOCKED_BY_THREAD_ID` int(11) NULL DEFAULT NULL,
  `READ_LOCKED_BY_COUNT` int(10) UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rwlock_instances
-- ----------------------------

-- ----------------------------
-- Table structure for setup_consumers
-- ----------------------------
DROP TABLE IF EXISTS `setup_consumers`;
CREATE TABLE `setup_consumers`  (
  `NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ENABLED` enum('YES','NO') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setup_consumers
-- ----------------------------

-- ----------------------------
-- Table structure for setup_instruments
-- ----------------------------
DROP TABLE IF EXISTS `setup_instruments`;
CREATE TABLE `setup_instruments`  (
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ENABLED` enum('YES','NO') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TIMED` enum('YES','NO') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setup_instruments
-- ----------------------------

-- ----------------------------
-- Table structure for setup_timers
-- ----------------------------
DROP TABLE IF EXISTS `setup_timers`;
CREATE TABLE `setup_timers`  (
  `NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setup_timers
-- ----------------------------

-- ----------------------------
-- Table structure for threads
-- ----------------------------
DROP TABLE IF EXISTS `threads`;
CREATE TABLE `threads`  (
  `THREAD_ID` int(11) NOT NULL,
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PROCESSLIST_ID` int(11) NULL DEFAULT NULL,
  `PROCESSLIST_USER` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROCESSLIST_HOST` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROCESSLIST_DB` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROCESSLIST_COMMAND` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROCESSLIST_STATE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROCESSLIST_INFO` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of threads
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
