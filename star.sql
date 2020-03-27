/*
 Navicat Premium Data Transfer

 Source Server         : sys
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : star

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 27/03/2020 15:34:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (17);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17288 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `id` bigint(20) NOT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (5, 0, NULL);
INSERT INTO `person` VALUES (6, 0, NULL);
INSERT INTO `person` VALUES (7, 0, NULL);
INSERT INTO `person` VALUES (8, 0, NULL);
INSERT INTO `person` VALUES (9, 0, NULL);
INSERT INTO `person` VALUES (10, 0, NULL);
INSERT INTO `person` VALUES (16, 22, '1111');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `data_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(255) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '-', '全部', 1, '2018-11-23 11:04:37', 'admin');
INSERT INTO `role` VALUES (2, '普通用户', '-', '自定义', 2, '2018-11-23 13:09:06', 'common');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `menu_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_menu` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父菜单',
  `perms` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单权限',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建日期',
  `gmt_modified` datetime(0) NOT NULL COMMENT '修改日期',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '首页', '0', 'dashboard', '2019-07-02 20:12:26', '2019-07-02 20:12:28');
INSERT INTO `sys_menu` VALUES (2, '游戏管理', '0', NULL, '2019-07-02 13:59:35', '2019-07-02 13:59:37');
INSERT INTO `sys_menu` VALUES (3, '安卓游戏管理', '1', NULL, '2019-07-02 14:03:36', '2019-07-02 14:03:40');
INSERT INTO `sys_menu` VALUES (4, 'iOS游戏管理', '1', NULL, '2019-07-02 14:04:59', '2019-07-02 14:05:02');
INSERT INTO `sys_menu` VALUES (5, '标签管理', '1', NULL, '2019-07-02 14:06:45', '2019-07-02 14:06:48');
INSERT INTO `sys_menu` VALUES (6, '渠道数据管理', '1', NULL, '2019-07-02 14:07:35', '2019-07-02 14:07:38');
INSERT INTO `sys_menu` VALUES (7, '玩家管理', '0', NULL, '2019-07-02 14:08:48', '2019-07-02 14:08:51');
INSERT INTO `sys_menu` VALUES (8, '玩家列表', '1', NULL, '2019-07-02 14:09:37', '2019-07-02 14:09:39');
INSERT INTO `sys_menu` VALUES (9, '激活列表', '1', NULL, '2019-07-02 14:10:11', '2019-07-02 14:10:13');
INSERT INTO `sys_menu` VALUES (10, '数据中心', '0', NULL, '2019-07-02 14:14:09', '2019-07-02 14:14:12');
INSERT INTO `sys_menu` VALUES (12, '交易数据', '1', NULL, '2019-07-02 14:15:40', '2019-07-02 14:15:43');
INSERT INTO `sys_menu` VALUES (15, '数据中心', '1', NULL, '2019-07-02 14:17:16', '2019-07-02 14:17:19');
INSERT INTO `sys_menu` VALUES (16, '系统管理', '0', NULL, '2019-07-02 14:18:03', '2019-07-02 14:18:05');
INSERT INTO `sys_menu` VALUES (17, '用户管理', '1', NULL, '2019-07-02 14:18:28', '2019-07-02 14:18:32');
INSERT INTO `sys_menu` VALUES (18, '角色管理', '1', NULL, '2019-07-02 14:18:57', '2019-07-02 14:18:59');
INSERT INTO `sys_menu` VALUES (19, '系统监控', '0', NULL, '2019-07-02 14:19:52', '2019-07-02 14:19:54');
INSERT INTO `sys_menu` VALUES (20, '定时任务', '1', NULL, '2019-07-02 14:20:23', '2019-07-02 14:20:25');
INSERT INTO `sys_menu` VALUES (21, '操作日志', '1', NULL, '2019-07-02 14:20:59', '2019-07-02 14:21:01');
INSERT INTO `sys_menu` VALUES (23, '编辑用户', '2', 'sys_user_modify', '2019-07-02 14:23:23', '2019-07-02 14:23:26');
INSERT INTO `sys_menu` VALUES (24, '新增用户', '2', 'sys_user_create', '2019-07-02 14:23:53', '2019-07-02 14:23:55');
INSERT INTO `sys_menu` VALUES (25, '删除用户', '2', 'sys_user_delete', '2019-07-02 14:24:25', '2019-07-02 14:24:27');
INSERT INTO `sys_menu` VALUES (27, '用户列表', '2', 'sys_user_list', '2019-07-02 14:25:39', '2019-07-02 14:25:41');
INSERT INTO `sys_menu` VALUES (28, '删除角色', '2', 'sys_role_delete', '2019-07-02 14:26:06', '2019-07-02 14:26:09');
INSERT INTO `sys_menu` VALUES (29, '新增角色', '2', 'sys_role_create', '2019-07-02 14:26:35', '2019-07-02 14:26:38');
INSERT INTO `sys_menu` VALUES (30, '编辑角色', '2', 'sys_role_modify', '2019-07-02 14:27:07', '2019-07-02 14:27:09');
INSERT INTO `sys_menu` VALUES (32, '角色列表', '2', 'sys_role_list', '2019-07-02 14:27:48', '2019-07-02 14:27:49');
INSERT INTO `sys_menu` VALUES (33, '日志列表', '2', 'sys_log_list', '2019-07-02 14:28:25', '2019-07-02 14:28:26');
INSERT INTO `sys_menu` VALUES (35, '定时任务列表', '2', 'sys_job_list', '2019-07-02 14:29:34', '2019-07-02 14:29:39');
INSERT INTO `sys_menu` VALUES (36, '定时任务日志列表', '2', 'sys_job_log_list', '2019-07-02 14:30:07', '2019-07-02 14:30:09');
INSERT INTO `sys_menu` VALUES (37, '新增定时任务', '2', 'sys_job_create', '2019-07-02 14:30:31', '2019-07-02 14:30:32');
INSERT INTO `sys_menu` VALUES (38, '修改定时任务', '2', 'sys_job_modify', '2019-07-02 14:30:51', '2019-07-02 14:30:52');
INSERT INTO `sys_menu` VALUES (39, '更改定时任务状态', '2', 'sys_job_modify_status', '2019-07-02 14:31:11', '2019-07-02 14:31:13');
INSERT INTO `sys_menu` VALUES (40, '执行一次定时任务', '2', 'sys_job_exec', '2019-07-02 14:31:32', '2019-07-02 14:31:34');
INSERT INTO `sys_menu` VALUES (41, '删除定时任务', '2', 'sys_job_delete', '2019-07-02 14:31:55', '2019-07-02 14:31:57');
INSERT INTO `sys_menu` VALUES (42, '玩家列表', '2', 'player_list', '2019-07-02 14:32:58', '2019-07-02 14:33:00');
INSERT INTO `sys_menu` VALUES (43, '玩家详情', '2', 'player_detail', '2019-07-02 14:36:56', '2019-07-02 14:36:58');
INSERT INTO `sys_menu` VALUES (44, '修改玩家密码', '2', 'player_modify_password', '2019-07-02 14:37:48', '2019-07-02 14:37:49');
INSERT INTO `sys_menu` VALUES (45, '绑定玩家手机', '2', 'player_modify_mobile', '2019-07-02 14:38:53', '2019-07-02 14:38:55');
INSERT INTO `sys_menu` VALUES (46, '冻结玩家', '2', 'player_modify_status', '2019-07-02 14:39:40', '2019-07-02 14:39:42');
INSERT INTO `sys_menu` VALUES (47, '归档游戏', '2', 'android_game_delete', '2019-07-02 14:40:55', '2019-07-02 14:40:56');
INSERT INTO `sys_menu` VALUES (48, '新增游戏', '2', 'android_game_create', '2019-07-02 14:40:55', '2019-07-02 14:40:56');
INSERT INTO `sys_menu` VALUES (49, '编辑游戏', '2', 'android_game_modify', '2019-07-02 14:43:21', '2019-07-02 14:43:23');
INSERT INTO `sys_menu` VALUES (50, '变更对接参数', '2', 'android_game_modify_app_secret', '2019-07-02 14:45:09', '2019-07-02 14:45:11');
INSERT INTO `sys_menu` VALUES (51, '游戏标签列表', '2', 'android_game_tags', '2019-07-02 14:45:55', '2019-07-02 14:45:57');
INSERT INTO `sys_menu` VALUES (52, '变更游戏标签', '2', 'android_game_modify_tag', '2019-07-02 14:47:04', '2019-07-02 14:47:07');
INSERT INTO `sys_menu` VALUES (53, '归档游戏', '2', 'game_delete', '2019-07-02 14:53:52', '2019-07-02 14:53:54');
INSERT INTO `sys_menu` VALUES (54, '新增游戏', '2', 'game_create', '2019-07-02 14:54:27', '2019-07-02 14:54:30');
INSERT INTO `sys_menu` VALUES (55, '编辑游戏', '2', 'game_modify', '2019-07-02 14:54:54', '2019-07-02 14:54:59');
INSERT INTO `sys_menu` VALUES (57, '变更对接参数', '2', 'game_modify_app_secret', '2019-07-02 14:56:22', '2019-07-02 14:56:25');
INSERT INTO `sys_menu` VALUES (58, '查询对接参数', '2', 'game_get_app_secret', '2019-07-02 14:56:44', '2019-07-02 14:56:46');
INSERT INTO `sys_menu` VALUES (59, '游戏列表', '2', 'android_game_list', '2019-07-02 14:57:34', '2019-07-02 14:57:38');
INSERT INTO `sys_menu` VALUES (60, '游戏列表', '2', 'game_list', '2019-07-02 14:57:55', '2019-07-02 14:57:57');
INSERT INTO `sys_menu` VALUES (62, '删除标签', '2', 'game_tag_delete', '2019-07-02 14:59:08', '2019-07-02 14:59:12');
INSERT INTO `sys_menu` VALUES (63, '新增标签', '2', 'game_tag_create', '2019-07-02 14:59:31', '2019-07-02 14:59:33');
INSERT INTO `sys_menu` VALUES (64, '编辑标签', '2', 'game_tag_modify', '2019-07-02 14:59:55', '2019-07-02 14:59:57');
INSERT INTO `sys_menu` VALUES (65, '标签列表', '2', 'game_tag_list', '2019-07-02 15:00:18', '2019-07-02 15:00:19');
INSERT INTO `sys_menu` VALUES (66, '变更游戏标签', '2', 'game_modify_tag', '2019-07-02 15:01:14', '2019-07-02 15:01:16');
INSERT INTO `sys_menu` VALUES (67, '游戏标签列表', '2', 'game_tags', '2019-07-02 15:01:36', '2019-07-02 15:01:38');
INSERT INTO `sys_menu` VALUES (68, '变更支付配置', '2', 'game_version_pay_config_modify', '2019-07-02 15:02:02', '2019-07-02 15:02:04');
INSERT INTO `sys_menu` VALUES (71, '删除支付配置', '2', 'game_version_pay_config_delete', '2019-07-02 15:04:31', '2019-07-02 15:04:34');
INSERT INTO `sys_menu` VALUES (74, '锁定游戏', '2', 'game_lock', '2019-07-02 15:05:54', '2019-07-02 15:05:56');
INSERT INTO `sys_menu` VALUES (75, '归档恢复', '2', 'android_game_delete_recover', '2019-07-02 15:06:11', '2019-07-02 15:06:13');
INSERT INTO `sys_menu` VALUES (76, '归档恢复', '2', 'game_delete_recover', '2019-07-02 15:06:38', '2019-07-02 15:06:39');
INSERT INTO `sys_menu` VALUES (77, '锁定恢复', '2', 'game_lock_recover', '2019-07-02 15:07:04', '2019-07-02 15:07:05');
INSERT INTO `sys_menu` VALUES (78, 'LTV数据', '2', 'center_ltv_list', '2019-07-02 15:07:44', '2019-07-02 15:07:46');
INSERT INTO `sys_menu` VALUES (79, '激活列表', '2', 'init_list', '2019-07-02 15:08:29', '2019-07-02 15:08:32');
INSERT INTO `sys_menu` VALUES (80, '渠道数据列表', '2', 'channel_list', '2019-07-02 15:09:03', '2019-07-02 15:09:05');
INSERT INTO `sys_menu` VALUES (81, '新增渠道数据', '2', 'channel_create', '2019-07-02 15:09:46', '2019-07-02 15:09:47');
INSERT INTO `sys_menu` VALUES (82, '修改渠道数据', '2', 'channel_modify', '2019-07-02 15:10:14', '2019-07-02 15:10:16');
INSERT INTO `sys_menu` VALUES (83, '删除渠道数据', '2', 'channel_delete', '2019-07-02 15:10:35', '2019-07-02 15:10:37');
INSERT INTO `sys_menu` VALUES (84, '新增渠道数据后台', '2', 'sys_user_channel_create', '2019-07-02 15:11:07', '2019-07-02 15:11:08');
INSERT INTO `sys_menu` VALUES (85, '首页', '1', 'dashboard', '2019-07-02 20:18:32', '2019-07-02 20:18:34');
INSERT INTO `sys_menu` VALUES (86, '查询对接参数', '2', 'android_game_get_app_secret', '2019-07-03 13:37:10', '2019-07-03 13:37:12');
INSERT INTO `sys_menu` VALUES (88, '未发货订单', '1', NULL, '2019-07-02 14:10:11', '2019-07-02 14:10:13');
INSERT INTO `sys_menu` VALUES (90, '重新发货', '2', 'order_ship_retry', '2019-07-02 14:38:53', '2019-07-02 14:38:55');

-- ----------------------------
-- Table structure for sys_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一主键',
  `menu_id` int(11) NULL DEFAULT NULL COMMENT '菜单id',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 557 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------
INSERT INTO `sys_menu_role` VALUES (202, 12, 2);
INSERT INTO `sys_menu_role` VALUES (208, 15, 2);
INSERT INTO `sys_menu_role` VALUES (209, 78, 2);
INSERT INTO `sys_menu_role` VALUES (211, 10, 2);
INSERT INTO `sys_menu_role` VALUES (279, 16, 20);
INSERT INTO `sys_menu_role` VALUES (280, 17, 20);
INSERT INTO `sys_menu_role` VALUES (281, 27, 20);
INSERT INTO `sys_menu_role` VALUES (282, 24, 20);
INSERT INTO `sys_menu_role` VALUES (283, 23, 20);
INSERT INTO `sys_menu_role` VALUES (284, 25, 20);
INSERT INTO `sys_menu_role` VALUES (285, 84, 20);
INSERT INTO `sys_menu_role` VALUES (286, 18, 20);
INSERT INTO `sys_menu_role` VALUES (287, 32, 20);
INSERT INTO `sys_menu_role` VALUES (288, 29, 20);
INSERT INTO `sys_menu_role` VALUES (289, 30, 20);
INSERT INTO `sys_menu_role` VALUES (290, 28, 20);
INSERT INTO `sys_menu_role` VALUES (291, -666666, 20);
INSERT INTO `sys_menu_role` VALUES (314, 59, 14);
INSERT INTO `sys_menu_role` VALUES (315, -666666, 14);
INSERT INTO `sys_menu_role` VALUES (316, 2, 14);
INSERT INTO `sys_menu_role` VALUES (317, 3, 14);
INSERT INTO `sys_menu_role` VALUES (374, 80, 17);
INSERT INTO `sys_menu_role` VALUES (375, 82, 17);
INSERT INTO `sys_menu_role` VALUES (376, -666666, 17);
INSERT INTO `sys_menu_role` VALUES (377, 2, 17);
INSERT INTO `sys_menu_role` VALUES (378, 6, 17);
INSERT INTO `sys_menu_role` VALUES (387, 42, 18);
INSERT INTO `sys_menu_role` VALUES (388, 43, 18);
INSERT INTO `sys_menu_role` VALUES (389, 46, 18);
INSERT INTO `sys_menu_role` VALUES (390, 9, 18);
INSERT INTO `sys_menu_role` VALUES (391, 79, 18);
INSERT INTO `sys_menu_role` VALUES (392, -666666, 18);
INSERT INTO `sys_menu_role` VALUES (393, 7, 18);
INSERT INTO `sys_menu_role` VALUES (394, 8, 18);
INSERT INTO `sys_menu_role` VALUES (403, 15, 19);
INSERT INTO `sys_menu_role` VALUES (404, 78, 19);
INSERT INTO `sys_menu_role` VALUES (405, -666666, 19);
INSERT INTO `sys_menu_role` VALUES (406, 10, 19);
INSERT INTO `sys_menu_role` VALUES (516, 1, 21);
INSERT INTO `sys_menu_role` VALUES (517, 85, 21);
INSERT INTO `sys_menu_role` VALUES (518, 59, 21);
INSERT INTO `sys_menu_role` VALUES (519, 60, 21);
INSERT INTO `sys_menu_role` VALUES (520, 65, 21);
INSERT INTO `sys_menu_role` VALUES (521, 6, 21);
INSERT INTO `sys_menu_role` VALUES (522, 80, 21);
INSERT INTO `sys_menu_role` VALUES (523, 81, 21);
INSERT INTO `sys_menu_role` VALUES (524, 82, 21);
INSERT INTO `sys_menu_role` VALUES (525, 83, 21);
INSERT INTO `sys_menu_role` VALUES (526, 42, 21);
INSERT INTO `sys_menu_role` VALUES (527, 9, 21);
INSERT INTO `sys_menu_role` VALUES (528, 79, 21);
INSERT INTO `sys_menu_role` VALUES (529, -666666, 21);
INSERT INTO `sys_menu_role` VALUES (530, 2, 21);
INSERT INTO `sys_menu_role` VALUES (531, 3, 21);
INSERT INTO `sys_menu_role` VALUES (532, 4, 21);
INSERT INTO `sys_menu_role` VALUES (533, 5, 21);
INSERT INTO `sys_menu_role` VALUES (534, 7, 21);
INSERT INTO `sys_menu_role` VALUES (535, 8, 21);
INSERT INTO `sys_menu_role` VALUES (552, 60, 15);
INSERT INTO `sys_menu_role` VALUES (553, 55, 15);
INSERT INTO `sys_menu_role` VALUES (554, -666666, 15);
INSERT INTO `sys_menu_role` VALUES (555, 2, 15);
INSERT INTO `sys_menu_role` VALUES (556, 4, 15);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '修改时间',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `uk_sys_role_role_name`(`role_name`) USING BTREE COMMENT '角色名唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '2019-04-03 16:30:22', '2019-04-03 16:39:32', '超级管理员');
INSERT INTO `sys_role` VALUES (2, '渠道数据后台', '2019-04-03 16:30:22', '2019-07-03 17:27:16', '渠道数据后台');
INSERT INTO `sys_role` VALUES (14, '安卓游戏管理', '2019-07-04 09:31:57', '2019-07-04 09:40:07', '');
INSERT INTO `sys_role` VALUES (15, 'ios游戏管理', '2019-07-04 09:32:12', '2019-07-04 15:40:16', '');
INSERT INTO `sys_role` VALUES (17, '渠道数据管理', '2019-07-04 09:32:35', '2019-07-04 10:12:12', '');
INSERT INTO `sys_role` VALUES (18, '玩家管理', '2019-07-04 09:32:50', '2019-07-04 10:13:56', '');
INSERT INTO `sys_role` VALUES (19, '数据中心', '2019-07-04 09:33:02', '2019-07-04 10:15:20', '');
INSERT INTO `sys_role` VALUES (20, '系统管理', '2019-07-04 09:33:20', '2019-07-04 09:33:20', '');
INSERT INTO `sys_role` VALUES (21, '商务', '2019-07-04 10:17:28', '2019-07-04 14:08:21', '');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `status` tinyint(4) NOT NULL COMMENT '用户状态 1-正常 0-冻结',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `uk_sys_user_username`(`username`) USING BTREE COMMENT '用户名唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (43, 'channel', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-03 17:03:36', '2019-07-03 17:03:36');
INSERT INTO `sys_user` VALUES (44, 'shouye', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 09:33:45', '2019-07-04 09:33:45');
INSERT INTO `sys_user` VALUES (45, 'android', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 09:34:01', '2019-07-04 09:34:01');
INSERT INTO `sys_user` VALUES (46, 'ios', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 09:34:13', '2019-07-04 09:34:13');
INSERT INTO `sys_user` VALUES (47, 'biaoqian', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 09:34:28', '2019-07-04 09:34:28');
INSERT INTO `sys_user` VALUES (48, 'qudaoshuju', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 09:34:38', '2019-07-04 09:34:38');
INSERT INTO `sys_user` VALUES (49, 'wanjiaguanli', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 09:34:47', '2019-07-04 09:34:47');
INSERT INTO `sys_user` VALUES (50, 'shujuzhongxin', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 09:34:59', '2019-07-04 09:34:59');
INSERT INTO `sys_user` VALUES (51, 'xitongguanli', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 09:35:13', '2019-07-04 09:35:13');
INSERT INTO `sys_user` VALUES (52, '商务吧', '96e79218965eb72c92a549dd5a330112', 1, '2019-07-04 10:17:56', '2019-07-04 10:17:56');
INSERT INTO `sys_user` VALUES (53, '葬爱家族', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 10:39:35', '2019-07-04 10:39:35');
INSERT INTO `sys_user` VALUES (59, 'xt070401', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 14:05:26', '2019-07-04 14:51:24');
INSERT INTO `sys_user` VALUES (62, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 15:10:34', '2019-07-04 15:10:34');
INSERT INTO `sys_user` VALUES (63, '521', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-07-04 15:12:00', '2019-07-04 15:12:00');
INSERT INTO `sys_user` VALUES (65, 'sdd', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-09-02 14:56:48', '2019-09-02 14:56:48');
INSERT INTO `sys_user` VALUES (66, '至尊123', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-09-23 16:32:50', '2019-09-23 17:42:53');
INSERT INTO `sys_user` VALUES (69, '123', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-09-23 19:51:01', '2019-09-23 19:53:52');
INSERT INTO `sys_user` VALUES (70, '456', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-09-23 20:07:19', '2019-09-23 20:07:19');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (93, 43, 2);
INSERT INTO `sys_user_role` VALUES (95, 45, 14);
INSERT INTO `sys_user_role` VALUES (96, 46, 15);
INSERT INTO `sys_user_role` VALUES (98, 48, 17);
INSERT INTO `sys_user_role` VALUES (99, 49, 18);
INSERT INTO `sys_user_role` VALUES (100, 50, 19);
INSERT INTO `sys_user_role` VALUES (101, 51, 20);
INSERT INTO `sys_user_role` VALUES (102, 52, 21);
INSERT INTO `sys_user_role` VALUES (103, 53, 2);
INSERT INTO `sys_user_role` VALUES (111, 59, 1);
INSERT INTO `sys_user_role` VALUES (114, 62, 1);
INSERT INTO `sys_user_role` VALUES (115, 63, 1);
INSERT INTO `sys_user_role` VALUES (118, 65, 2);
INSERT INTO `sys_user_role` VALUES (125, 66, 2);
INSERT INTO `sys_user_role` VALUES (127, 69, 2);
INSERT INTO `sys_user_role` VALUES (128, 70, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `avatar_id` bigint(20) NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `enabled` bigint(20) NULL DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `dept_id` bigint(20) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `last_password_reset_time` datetime(0) NULL DEFAULT NULL COMMENT '最后修改密码的日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_kpubos9gc2cvtkb0thktkbkes`(`email`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `FK5rwmryny6jthaaxkogownknqp`(`dept_id`) USING BTREE,
  INDEX `FKfftoc2abhot8f2wu6cl9a5iky`(`job_id`) USING BTREE,
  INDEX `FKpq2dhypk2qgt68nauh2by22jb`(`avatar_id`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`avatar_id`) REFERENCES `user_avatar` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 2, 'hongren24@163.com', 1, 'e10adc3949ba59abbe56e057f20f883e', 'admin', 2, '15861885785', 11, '2019-11-19 09:11:56', '2019-05-18 17:34:21');
INSERT INTO `user` VALUES (3, NULL, 'test@eladmin.net', 1, 'e10adc3949ba59abbe56e057f20f883e', 'test', 2, '17777777777', 12, '2018-12-27 20:05:26', '2019-04-01 09:15:24');

SET FOREIGN_KEY_CHECKS = 1;
