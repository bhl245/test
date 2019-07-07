/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : personmanage

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 20/05/2019 08:16:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aId` int(10) NOT NULL AUTO_INCREMENT,
  `aName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');
INSERT INTO `admin` VALUES (2, 'bhl', '123');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `dId` int(10) NOT NULL AUTO_INCREMENT,
  `dName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dTime` date NULL DEFAULT NULL,
  `dDesp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, 'oracle', '2019-05-06', '无');
INSERT INTO `department` VALUES (2, '人力资源', '2019-05-06', '负责人事工作');
INSERT INTO `department` VALUES (3, 'C++', '2019-05-08', '无');
INSERT INTO `department` VALUES (4, 'Java WEB', '2019-05-09', '负责JSP网页');
INSERT INTO `department` VALUES (6, '基础部', '2019-05-10', '负责程序编写的辅助工作');
INSERT INTO `department` VALUES (7, 'PHP', '2019-05-13', '负责PHP网页');
INSERT INTO `department` VALUES (8, 'ASP', '2019-05-13', '负责ASP网页');
INSERT INTO `department` VALUES (9, 'VB', '2019-05-13', 'VB应用程序');
INSERT INTO `department` VALUES (10, 'VC', '2019-05-13', '负责VC应用程序');
INSERT INTO `department` VALUES (11, 'C#', '2019-05-13', '负责C#应用程序');
INSERT INTO `department` VALUES (12, 'ASP.net', '2019-05-13', '负责ASP.net网页');

-- ----------------------------
-- Table structure for punish
-- ----------------------------
DROP TABLE IF EXISTS `punish`;
CREATE TABLE `punish`  (
  `pId` int(11) NOT NULL AUTO_INCREMENT,
  `pTheme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pMoney` int(11) NULL DEFAULT 0,
  `pTime` date NULL DEFAULT NULL,
  `pDesp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of punish
-- ----------------------------
INSERT INTO `punish` VALUES (1, '迟到', '惩罚', 50, '2018-09-11', '无');
INSERT INTO `punish` VALUES (2, '羽毛球单打比赛一等奖', '奖励', 0, '2019-05-13', '无');
INSERT INTO `punish` VALUES (3, '羽毛球单打比赛三等奖', '奖励', 0, '2019-05-13', '无');
INSERT INTO `punish` VALUES (4, '缺勤', '惩罚', 100, '2019-05-13', '无');

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit`  (
  `rId` int(11) NOT NULL AUTO_INCREMENT,
  `rName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rSex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rAge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rBirth` date NULL DEFAULT NULL,
  `rJob` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rMajor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rExperience` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rEducation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rTel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rAfterSchool` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rTime` date NULL DEFAULT NULL,
  `rDesp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recruit
-- ----------------------------
INSERT INTO `recruit` VALUES (1, '任*飞1', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-06', '应届毕业生，无工作经验');
INSERT INTO `recruit` VALUES (2, '任*飞2', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-12', '应届毕业生，无工作经验');
INSERT INTO `recruit` VALUES (3, '任*飞3', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-12', '应届毕业生，无工作经验');
INSERT INTO `recruit` VALUES (4, '任*飞4', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-12', '应届毕业生，无工作经验');
INSERT INTO `recruit` VALUES (5, '任*飞5', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-12', '应届毕业生，无工作经验');
INSERT INTO `recruit` VALUES (6, '任*飞6', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-12', '应届毕业生，无工作经验');
INSERT INTO `recruit` VALUES (7, '任*飞7', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-12', '应届毕业生，无工作经验');
INSERT INTO `recruit` VALUES (8, '任*飞8', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-12', '应届毕业生，无工作经验');
INSERT INTO `recruit` VALUES (10, '任*飞10', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-12', '应届毕业生，无工作经验');
INSERT INTO `recruit` VALUES (11, '任*飞11', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-12', '应届毕业生，无工作经验');
INSERT INTO `recruit` VALUES (12, '任*飞12', '男', '23', '1996-07-06', 'Java程序员', '计算机', '无', '本科生', '15012345678', '黄冈科技职业学院', '东坡大道62号', '2019-05-12', '应届毕业生，无工作经验');

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`  (
  `saId` int(11) NOT NULL AUTO_INCREMENT,
  `stId` int(11) NULL DEFAULT NULL,
  `saMonth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `saBasic` int(11) NULL DEFAULT NULL,
  `saOvertime` int(11) NULL DEFAULT 0,
  `saWorking` int(11) NULL DEFAULT 0,
  `saAttendance` int(11) NULL DEFAULT 100,
  `saAbsenteeism` int(11) NULL DEFAULT 0,
  `saInsurance` int(11) NULL DEFAULT 128,
  PRIMARY KEY (`saId`) USING BTREE,
  INDEX `FK_Salary_Staff`(`stId`) USING BTREE,
  CONSTRAINT `FK_Salary_Staff` FOREIGN KEY (`stId`) REFERENCES `staff` (`stId`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES (1, 1, '2018-05', 4500, 0, 0, 100, 0, 128);
INSERT INTO `salary` VALUES (2, 1, '2019-06', 2000, 0, 0, 100, 0, 128);

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `stId` int(10) NOT NULL AUTO_INCREMENT,
  `dId` int(11) NULL DEFAULT NULL,
  `stName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stAge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stSex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stBirth` date NULL DEFAULT NULL,
  `stIDCard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stNation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stMarriage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stPolitical` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stNative` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stTel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `stAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stAfterSchool` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stMajor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stEducation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stStartTime` date NULL DEFAULT NULL,
  `stWork` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stRegister` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stTime` date NULL DEFAULT NULL,
  `stDesp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stId`) USING BTREE,
  INDEX `FK_Staff_Department`(`dId`) USING BTREE,
  CONSTRAINT `FK_Staff_Department` FOREIGN KEY (`dId`) REFERENCES `department` (`dId`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (1, 4, '刘**', '22', '女', '1997-03-06', '420583199703061271', '汉', '未婚', '团员', '湖北', '13812345678', '东坡大道62号', '黄冈科技职业学院', '计算机', '专科生', '2018-05-06', '程序员', 'tsoft', '2019-05-17', '无');
INSERT INTO `staff` VALUES (2, 1, '刘*凯', '25', '男', '1994-08-05', '422723199408051234', '汉', '已婚', '团员', '湖北', '13812345678', '东坡大道62号', '黄冈科技职业学院', '计算机', '专科生', '2017-05-04', '程序员', 'tsoft', '2019-05-10', '无');
INSERT INTO `staff` VALUES (3, 2, '上*凯', '25', '女', '1994-10-01', '422723199410015612', '汉', '未婚', '团员', '湖北', '13812345678', '东坡大道62号', '黄冈科技职业学院', '计算机', '专科生', '2017-05-04', '程序员', 'tsoft', '2019-05-13', '无');
INSERT INTO `staff` VALUES (4, 1, '贺*凯', '25', '男', '1994-08-05', '422723199408051345', '汉', '已婚', '团员', '湖北', '13812345678', '东坡大道62号', '黄冈科技职业学院', '计算机', '专科生', '2017-05-04', '程序员', 'tsoft', '2019-05-16', '无');

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train`  (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `tPerson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tTheme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tPurpose` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tTime` date NULL DEFAULT NULL,
  `tPlace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tParticipant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tDesp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES (1, '总经理', '员工守则', '让员工充分了解员工守则', '2018-05-01', '2205室', '全体员工', '无');
INSERT INTO `train` VALUES (3, '总经理', '工资制度', '让员工了解工资的基本情况', '2019-05-12', '2205室', '全体员工', '无');

SET FOREIGN_KEY_CHECKS = 1;
