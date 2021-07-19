/*
 Navicat Premium Data Transfer

 Source Server         : MySQL_Tencent
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 42.193.113.35:3306
 Source Schema         : score

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 19/07/2021 10:10:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score`  (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `score_value` int(11) NULL DEFAULT NULL COMMENT '成绩值',
  `score_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成绩类别1习题 2测验 3考试',
  `student_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生成绩表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES (4, 88, '2', 201723135);
INSERT INTO `t_score` VALUES (6, 100, '3', 201723131);
INSERT INTO `t_score` VALUES (7, 100, '1', 201723132);
INSERT INTO `t_score` VALUES (8, 45, '1', 201723131);
INSERT INTO `t_score` VALUES (9, 50, '2', 201723131);
INSERT INTO `t_score` VALUES (11, 70, '2', 201723132);
INSERT INTO `t_score` VALUES (12, 80, '3', 201723132);
INSERT INTO `t_score` VALUES (16, 100, '1', 201717120);
INSERT INTO `t_score` VALUES (17, 100, '2', 201717120);
INSERT INTO `t_score` VALUES (18, 100, '3', 201717120);
INSERT INTO `t_score` VALUES (19, 16, '1', 270170106);
INSERT INTO `t_score` VALUES (20, 3, '2', 270170106);
INSERT INTO `t_score` VALUES (21, 100, '3', 270170106);
INSERT INTO `t_score` VALUES (22, 16, '1', 270170106);
INSERT INTO `t_score` VALUES (23, 96, '1', 2021002);
INSERT INTO `t_score` VALUES (24, 90, '2', 2021002);
INSERT INTO `t_score` VALUES (25, 85, '3', 2021002);
INSERT INTO `t_score` VALUES (26, 80, '1', 201717101);
INSERT INTO `t_score` VALUES (27, 84, '2', 201717101);
INSERT INTO `t_score` VALUES (28, 87, '3', 201717101);

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `student_no` int(11) NOT NULL COMMENT '学号',
  `student_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `student_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `stu_pass` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除状态',
  PRIMARY KEY (`student_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES (2021002, '晨光', '男', '2021002');
INSERT INTO `t_student` VALUES (201717101, '程艳', '女', '201717101');
INSERT INTO `t_student` VALUES (201717120, '王磊磊', '男', NULL);
INSERT INTO `t_student` VALUES (201723131, '黄梦歌', '女', '201723131');
INSERT INTO `t_student` VALUES (201723132, '张三', '男', '201723132');
INSERT INTO `t_student` VALUES (201723133, '李四', '男', '201723133');
INSERT INTO `t_student` VALUES (201723134, '王五', '男', '201723134');
INSERT INTO `t_student` VALUES (201723135, '马六', '女', '201723135');
INSERT INTO `t_student` VALUES (201723136, 'lisa', '女', '201723136');
INSERT INTO `t_student` VALUES (201723137, '艾琳', '女', NULL);
INSERT INTO `t_student` VALUES (201723138, '老李', '男', NULL);
INSERT INTO `t_student` VALUES (201723139, '李思思', '女', '201723139');
INSERT INTO `t_student` VALUES (201723142, '袁华', '男', '201723142');
INSERT INTO `t_student` VALUES (201723143, '秋雅', '女', NULL);
INSERT INTO `t_student` VALUES (201723145, '阿庆', '男', NULL);
INSERT INTO `t_student` VALUES (201723147, 'lisi', '男', '201723147');
INSERT INTO `t_student` VALUES (201723155, '黄三', '男', '201723155');
INSERT INTO `t_student` VALUES (270117010, '陈冠', '男', '270117010');
INSERT INTO `t_student` VALUES (270170106, '坤坤', '男', '270170106');
INSERT INTO `t_student` VALUES (2017231388, '李达', '男', '2017231388');
INSERT INTO `t_student` VALUES (2017231888, '阿涛', '男', NULL);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass_word` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '123456');

SET FOREIGN_KEY_CHECKS = 1;
