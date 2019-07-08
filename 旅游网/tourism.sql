/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : tourism

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 08/07/2019 17:25:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `carId` int(11) NOT NULL AUTO_INCREMENT,
  `custId` int(11) NOT NULL,
  `lineId` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` datetime(0) NOT NULL,
  PRIMARY KEY (`carId`) USING BTREE,
  INDEX `fk_c_c`(`custId`) USING BTREE,
  INDEX `fk_l_c`(`lineId`) USING BTREE,
  CONSTRAINT `fk_c_c` FOREIGN KEY (`custId`) REFERENCES `customer` (`custId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_l_c` FOREIGN KEY (`lineId`) REFERENCES `line` (`lineId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `custId` int(11) NOT NULL AUTO_INCREMENT,
  `custAccount` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custName` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custPassword` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custSex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custIDCard` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custTel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custType` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`custId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'admin', 'admin', 'admin', '男', '420583123456781010', '15012345678', 1);
INSERT INTO `customer` VALUES (2, 'jack123', 'jack', '123456', '男', '420583200012345678', '15012345678', 0);
INSERT INTO `customer` VALUES (3, 'lll123', 'lili', '123456', '男', '123456781234567812', '15012345678', 0);

-- ----------------------------
-- Table structure for line
-- ----------------------------
DROP TABLE IF EXISTS `line`;
CREATE TABLE `line`  (
  `lineId` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lineTypeId` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lineName` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `days` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vehicle` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `arrange` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NOT NULL,
  `teamBuy` int(10) NULL DEFAULT 0,
  `teamBuyPrice` decimal(10, 2) NULL DEFAULT NULL,
  `beginTime` date NULL DEFAULT NULL,
  `endTime` date NULL DEFAULT NULL,
  `onTime` datetime(0) NOT NULL,
  PRIMARY KEY (`lineId`) USING BTREE,
  INDEX `FKd7h38nar3c77x5uw44ddn6nyf`(`lineTypeId`) USING BTREE,
  CONSTRAINT `fk_ly_l` FOREIGN KEY (`lineTypeId`) REFERENCES `linetype` (`lineTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of line
-- ----------------------------
INSERT INTO `line` VALUES ('1005', '1001', '神农架3日游', '3天', '飞机', '', '', '', 500.00, 1, 500.00, '2019-07-02', '2019-07-04', '2019-07-08 04:03:31');
INSERT INTO `line` VALUES ('101', '1002', '北京3日游', '3天', '飞机', '', '北京，简称“京”，是中华人民共和国的首都，是全国的政治中心、文化中心，国家中心城市、超大城市，是世界著名古都和现代化国际城市。地处华北大平原的北部，北纬39度56分、东经116度20分，东面与天津市毗连，其余均与河北省相邻。', '', 3000.00, 1, 1899.00, '2019-07-05', '2019-07-07', '2019-07-02 07:07:23');
INSERT INTO `line` VALUES ('102', '1002', '北京5日游', '5天', '飞机', '', '北京的著名景点等你来', '', 5500.00, 1, 3499.00, '2019-07-02', '2019-07-06', '2019-07-04 09:53:50');
INSERT INTO `line` VALUES ('103', '1001', '神农架3日游', '3天', '火车', '', '神农架四大必去景点，风景优美，是旅游的不二之地', '', 2500.00, 0, NULL, NULL, NULL, '2019-07-04 09:50:35');

-- ----------------------------
-- Table structure for linetype
-- ----------------------------
DROP TABLE IF EXISTS `linetype`;
CREATE TABLE `linetype`  (
  `lineTypeId` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lineTypeName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` datetime(0) NOT NULL,
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`lineTypeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of linetype
-- ----------------------------
INSERT INTO `linetype` VALUES ('1001', '省内游', '2019-07-04 05:03:19', 'ht/images/gg.png');
INSERT INTO `linetype` VALUES ('1002', '境内游', '2019-07-04 05:03:38', 'ht/images/nc.jpeg');
INSERT INTO `linetype` VALUES ('1565', '国内游', '2019-07-08 04:02:58', 'ht/images/bjxz.jpg');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `odId` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custId` int(11) NOT NULL,
  `lineName` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `orderDate` datetime(0) NOT NULL,
  `travelDate` datetime(0) NOT NULL,
  `total` decimal(10, 2) NOT NULL,
  `lineId` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` int(50) NOT NULL,
  PRIMARY KEY (`odId`) USING BTREE,
  INDEX `fk_c_o`(`custId`) USING BTREE,
  INDEX `fk_l_o`(`lineId`) USING BTREE,
  CONSTRAINT `fk_c_o` FOREIGN KEY (`custId`) REFERENCES `customer` (`custId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_l_o` FOREIGN KEY (`lineId`) REFERENCES `line` (`lineId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ot_detail
-- ----------------------------
DROP TABLE IF EXISTS `ot_detail`;
CREATE TABLE `ot_detail`  (
  `otId` int(11) NOT NULL AUTO_INCREMENT,
  `odId` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `touristId` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`otId`) USING BTREE,
  INDEX `fk_o_o`(`odId`) USING BTREE,
  INDEX `fk_t_o`(`touristId`) USING BTREE,
  CONSTRAINT `fk_o_o` FOREIGN KEY (`odId`) REFERENCES `orderdetail` (`odId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_t_o` FOREIGN KEY (`touristId`) REFERENCES `tourist` (`touristId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `pictureId` int(11) NOT NULL AUTO_INCREMENT,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lineId` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pictureId`) USING BTREE,
  INDEX `fk_l_p`(`lineId`) USING BTREE,
  CONSTRAINT `fk_l_p` FOREIGN KEY (`lineId`) REFERENCES `line` (`lineId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES (1, '人民大会堂', 'ht/imagesrmdht.png', '101');
INSERT INTO `picture` VALUES (2, '故宫', 'ht/imagesgg.png', '101');
INSERT INTO `picture` VALUES (3, '北京西站', 'ht/imagesbjxz.jpg', '101');
INSERT INTO `picture` VALUES (4, '长城', 'ht/imagescc.jpeg', '101');
INSERT INTO `picture` VALUES (5, '王府井', 'ht/imageswfj.png', '102');
INSERT INTO `picture` VALUES (6, '鸟巢', 'ht/imagesnc.jpeg', '102');
INSERT INTO `picture` VALUES (7, '天安门', 'ht/imagestam.png', '102');
INSERT INTO `picture` VALUES (8, '天坛', 'ht/imagestt.jpg', '102');
INSERT INTO `picture` VALUES (9, '天生桥', 'ht/imagestsq.jpg', '103');
INSERT INTO `picture` VALUES (10, '大九湖', 'ht/imagesdjh.jpg', '103');
INSERT INTO `picture` VALUES (11, '神农坛', 'ht/imagesslt.jpg', '103');
INSERT INTO `picture` VALUES (12, '天燕', 'ht/imagesty.jpg', '103');
INSERT INTO `picture` VALUES (13, '4', 'ht/imagesrmdht.png', '1005');
INSERT INTO `picture` VALUES (14, '3', 'ht/imagestsq.jpg', '1005');
INSERT INTO `picture` VALUES (15, '1', 'ht/imagestsq.jpg', '1005');
INSERT INTO `picture` VALUES (16, '2', 'ht/imagesdjh.jpg', '1005');

-- ----------------------------
-- Table structure for tourist
-- ----------------------------
DROP TABLE IF EXISTS `tourist`;
CREATE TABLE `tourist`  (
  `touristId` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IdCard` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`touristId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tourist
-- ----------------------------
INSERT INTO `tourist` VALUES ('2001', '420583123456781234', '15012345678', 'jack');

SET FOREIGN_KEY_CHECKS = 1;
