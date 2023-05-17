/*
 Navicat Premium Data Transfer

 Source Server         : Xampp
 Source Server Type    : MySQL
 Source Server Version : 100414 (10.4.14-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : elektronik

 Target Server Type    : MySQL
 Target Server Version : 100414 (10.4.14-MariaDB)
 File Encoding         : 65001

 Date: 17/05/2023 22:24:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_barang
-- ----------------------------
DROP TABLE IF EXISTS `tb_barang`;
CREATE TABLE `tb_barang`  (
  `id_barang` int NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_barang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stok` int NOT NULL,
  `harga` decimal(15, 2) NOT NULL,
  `id_suplier` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_barang`) USING BTREE,
  INDEX `FK_barang_suplier`(`id_suplier` ASC) USING BTREE,
  CONSTRAINT `FK_barang_suplier` FOREIGN KEY (`id_suplier`) REFERENCES `tb_suplier` (`id_suplier`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_barang
-- ----------------------------
INSERT INTO `tb_barang` VALUES (9, 'QQD002', 'QLED Quantum Dot 4K UHD TV', 4, 25000000.00, 1);
INSERT INTO `tb_barang` VALUES (10, 'SWP001', 'Single Woofer 12 Inch', 10, 2334000.00, 1);
INSERT INTO `tb_barang` VALUES (11, 'DWP001', 'Double Woofer 10 Inch', 7, 3045000.00, 1);
INSERT INTO `tb_barang` VALUES (12, 'SSP001', 'Speaker Smart Soundbar', 15, 3449000.00, 1);
INSERT INTO `tb_barang` VALUES (20, 'SMGA50', 'Samsung Galaxy A50s', 3, 4200000.00, 5);
INSERT INTO `tb_barang` VALUES (21, 'SMGM13', 'Samsung Galaxy M13', 4, 2700000.00, 5);
INSERT INTO `tb_barang` VALUES (22, 'SAA001', 'Sharp Aquos Android TV 50\" 4K 4T-C50DK1i HDR', 4, 8050000.00, 6);
INSERT INTO `tb_barang` VALUES (23, 'SAC001', 'Sharp AC 2pk AH-A18UCY Turbo Cool', 5, 67650000.00, 6);
INSERT INTO `tb_barang` VALUES (24, 'SMGZ001', 'Samsung Galaxy Z-Flip 128GB', 11, 17500000.00, 5);
INSERT INTO `tb_barang` VALUES (25, 'SMGZ003', 'Samsung Galaxy Z-Flip 256GB', 4, 21100000.00, 5);
INSERT INTO `tb_barang` VALUES (27, 'ACD001', 'Daikin AC 2pk', 4, 3900000.00, 7);
INSERT INTO `tb_barang` VALUES (28, 'KSD001', 'Kulkas Single Door Series', 8, 3250000.00, 9);

-- ----------------------------
-- Table structure for tb_suplier
-- ----------------------------
DROP TABLE IF EXISTS `tb_suplier`;
CREATE TABLE `tb_suplier`  (
  `id_suplier` int NOT NULL AUTO_INCREMENT,
  `nama_suplier` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat_suplier` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_telp` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_suplier`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_suplier
-- ----------------------------
INSERT INTO `tb_suplier` VALUES (1, 'Polytron', 'Jl. Slamet Riyadi No. 408 Solo', '085321005100', 'cs@polytron.co.id');
INSERT INTO `tb_suplier` VALUES (5, 'Samsung', 'Jl. Slamet Riyadi No. 123 Solo', '08000111888', 'cs@samsung.co.id');
INSERT INTO `tb_suplier` VALUES (6, 'Sharp', 'Jl. Samanhudi No. 45 Surakarta', '081111000099', 'cs@sharp.co.id');
INSERT INTO `tb_suplier` VALUES (7, 'Daikin', 'Jl. Ronggowarsito No. 132 Surakarta', '089995555500', 'cs@daikin.co.id');
INSERT INTO `tb_suplier` VALUES (9, 'Midea', 'Jl. Solo-Sukoharjo No. 56 Sukoharjo', '087777774444', 'cs@midea.co.id');
INSERT INTO `tb_suplier` VALUES (10, 'Luby', 'Jl. Ahmad Yani No. 121', '0851231231', 'cs@luby.co.id');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id_user` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','staff','') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'Taufik Ridho', 'taufik', '76868b011b66684d4a91d4ef7e1a2651', 'admin');
INSERT INTO `tb_user` VALUES (17, 'Fauzan Hasyim', 'fauzan', 'd3a33788c755ebcef244fd61c04f408a', 'staff');

SET FOREIGN_KEY_CHECKS = 1;
