/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : sushe

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 25/07/2019 11:54:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `Admin_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_Username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Admin_Password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Admin_Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Admin_Sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Admin_Tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (2, 'admin', 'admin', 'admin', '男', '10086');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `Building_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Building_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Building_Introduction` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Building_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES (3, 'A栋', 'A栋宿舍');
INSERT INTO `building` VALUES (4, 'B栋', 'B栋宿舍');
INSERT INTO `building` VALUES (6, 'C栋', 'C栋宿舍');

-- ----------------------------
-- Table structure for domitory
-- ----------------------------
DROP TABLE IF EXISTS `domitory`;
CREATE TABLE `domitory`  (
  `Domitory_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Domitory_BuildingID` int(11) NULL DEFAULT NULL,
  `Domitory_Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Domitory_Type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Domitory_Number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Domitory_Tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Domitory_ID`) USING BTREE,
  INDEX `fk_b_d`(`Domitory_BuildingID`) USING BTREE,
  CONSTRAINT `fk_b_d` FOREIGN KEY (`Domitory_BuildingID`) REFERENCES `building` (`Building_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of domitory
-- ----------------------------
INSERT INTO `domitory` VALUES (3, 3, '212', '寝室', '8', '1212');
INSERT INTO `domitory` VALUES (4, 4, '510', '寝室', '8', '2510');
INSERT INTO `domitory` VALUES (6, 6, '101', '寝室', '6', '3101');
INSERT INTO `domitory` VALUES (7, 4, '212', '寝室', '8', '2212');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `Log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Log_StudentID` int(11) NULL DEFAULT NULL,
  `Log_TeacherID` int(11) NULL DEFAULT NULL,
  `Log_Date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Log_Remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Log_ID`) USING BTREE,
  INDEX `fk_s_l`(`Log_StudentID`) USING BTREE,
  INDEX `fk_t_l`(`Log_TeacherID`) USING BTREE,
  CONSTRAINT `fk_s_l` FOREIGN KEY (`Log_StudentID`) REFERENCES `student` (`Student_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_t_l` FOREIGN KEY (`Log_TeacherID`) REFERENCES `teacher` (`Teacher_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (2, 3, 2, '2019-7-17', '旷课');
INSERT INTO `log` VALUES (4, 3, 4, '2019-7-22', '迟到');

-- ----------------------------
-- Table structure for out1
-- ----------------------------
DROP TABLE IF EXISTS `out1`;
CREATE TABLE `out1`  (
  `Out_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Out_StudentID` int(11) NULL DEFAULT NULL,
  `Out_Date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Out_Remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Out_ID`) USING BTREE,
  INDEX `fk_s_o`(`Out_StudentID`) USING BTREE,
  CONSTRAINT `fk_s_o` FOREIGN KEY (`Out_StudentID`) REFERENCES `student` (`Student_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of out1
-- ----------------------------
INSERT INTO `out1` VALUES (2, 7, '2019-7-23', '已毕业');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `Student_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Student_DomitoryID` int(11) NULL DEFAULT NULL,
  `Student_Username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Student_Password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Student_Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Student_Sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Student_Class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Student_State` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Student_ID`) USING BTREE,
  INDEX `fk_d_s`(`Student_DomitoryID`) USING BTREE,
  CONSTRAINT `fk_d_s` FOREIGN KEY (`Student_DomitoryID`) REFERENCES `domitory` (`Domitory_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (3, 3, 'zhangsan', '1234', '张三', '男', 'Java2班', '入住');
INSERT INTO `student` VALUES (4, 3, 'lisi', '123', '李四', '男', 'Java2班', '入住');
INSERT INTO `student` VALUES (5, 4, 'wangwu', '123', '王五', '男', 'Java2班', '入住');
INSERT INTO `student` VALUES (7, NULL, 'zhaoliu', '123', '赵六', '女', 'Java2班', '迁出');
INSERT INTO `student` VALUES (9, NULL, 'xiaoming', '123', '小明', '男', 'Java2班', '未入住');
INSERT INTO `student` VALUES (10, NULL, 'xiaohong', '123', '小红', '女', 'Java2班', '未入住');

-- ----------------------------
-- Table structure for tb
-- ----------------------------
DROP TABLE IF EXISTS `tb`;
CREATE TABLE `tb`  (
  `TB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TB_TeacherID` int(11) NULL DEFAULT NULL,
  `TB_BuildingID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`TB_ID`) USING BTREE,
  INDEX `fk_t_t`(`TB_TeacherID`) USING BTREE,
  INDEX `fk_b_t`(`TB_BuildingID`) USING BTREE,
  CONSTRAINT `fk_b_t` FOREIGN KEY (`TB_BuildingID`) REFERENCES `building` (`Building_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_t_t` FOREIGN KEY (`TB_TeacherID`) REFERENCES `teacher` (`Teacher_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb
-- ----------------------------
INSERT INTO `tb` VALUES (2, 2, 3);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `Teacher_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Teacher_Username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Teacher_Password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Teacher_Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Teacher_Sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Teacher_Tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Teacher_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (2, 'Lucy', '123', 'Lucy', '女', '10010');
INSERT INTO `teacher` VALUES (4, 'Jack', '123', 'Jack', '男', '10086');
INSERT INTO `teacher` VALUES (5, 'Smith', '123', 'Smith', '女', '110');

SET FOREIGN_KEY_CHECKS = 1;
