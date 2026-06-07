/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.200.131
 Source Server Type    : MySQL
 Source Server Version : 50527 (5.5.27)
 Source Host           : 192.168.200.131:3306
 Source Schema         : phpmyadmin

 Target Server Type    : MySQL
 Target Server Version : 50527 (5.5.27)
 File Encoding         : 65001

 Date: 31/05/2026 18:50:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pma_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `pma_bookmark`;
CREATE TABLE `pma_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'Bookmarks' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pma_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for pma_column_info
-- ----------------------------
DROP TABLE IF EXISTS `pma_column_info`;
CREATE TABLE `pma_column_info`  (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `db_name`(`db_name`, `table_name`, `column_name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'Comments for Columns' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pma_column_info
-- ----------------------------

-- ----------------------------
-- Table structure for pma_designer_coords
-- ----------------------------
DROP TABLE IF EXISTS `pma_designer_coords`;
CREATE TABLE `pma_designer_coords`  (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `v` tinyint(4) NULL DEFAULT NULL,
  `h` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`db_name`, `table_name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'Table coordinates for Designer' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pma_designer_coords
-- ----------------------------

-- ----------------------------
-- Table structure for pma_history
-- ----------------------------
DROP TABLE IF EXISTS `pma_history`;
CREATE TABLE `pma_history`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`, `db`, `table`, `timevalue`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'SQL history' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pma_history
-- ----------------------------

-- ----------------------------
-- Table structure for pma_pdf_pages
-- ----------------------------
DROP TABLE IF EXISTS `pma_pdf_pages`;
CREATE TABLE `pma_pdf_pages`  (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`) USING BTREE,
  INDEX `db_name`(`db_name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'PDF Relationpages for PMA' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pma_pdf_pages
-- ----------------------------

-- ----------------------------
-- Table structure for pma_relation
-- ----------------------------
DROP TABLE IF EXISTS `pma_relation`;
CREATE TABLE `pma_relation`  (
  `master_db` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`, `master_table`, `master_field`) USING BTREE,
  INDEX `foreign_field`(`foreign_db`, `foreign_table`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'Relation table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pma_relation
-- ----------------------------

-- ----------------------------
-- Table structure for pma_table_coords
-- ----------------------------
DROP TABLE IF EXISTS `pma_table_coords`;
CREATE TABLE `pma_table_coords`  (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`db_name`, `table_name`, `pdf_page_number`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'Table coordinates for phpMyAdmin\n            PDF output' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pma_table_coords
-- ----------------------------

-- ----------------------------
-- Table structure for pma_table_info
-- ----------------------------
DROP TABLE IF EXISTS `pma_table_info`;
CREATE TABLE `pma_table_info`  (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`, `table_name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'Table    information    for\n            phpMyAdmin' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pma_table_info
-- ----------------------------

-- ----------------------------
-- Table structure for pma_tracking
-- ----------------------------
DROP TABLE IF EXISTS `pma_tracking`;
CREATE TABLE `pma_tracking`  (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `schema_sql` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `data_sql` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`db_name`, `table_name`, `version`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of pma_tracking
-- ----------------------------

-- ----------------------------
-- Table structure for pma_userconfig
-- ----------------------------
DROP TABLE IF EXISTS `pma_userconfig`;
CREATE TABLE `pma_userconfig`  (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'User preferences storage for phpMyAdmin' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pma_userconfig
-- ----------------------------
INSERT INTO `pma_userconfig` VALUES ('root', '2011-05-17 21:15:44', '{\"lang\":\"de\"}');

SET FOREIGN_KEY_CHECKS = 1;
