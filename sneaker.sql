/*
 Navicat Premium Data Transfer

 Source Server         : goproject
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost
 Source Database       : sneaker

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : utf-8

 Date: 08/26/2018 10:37:21 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `tt_order_address`
-- ----------------------------
DROP TABLE IF EXISTS `tt_order_address`;
CREATE TABLE `tt_order_address` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(32) NOT NULL DEFAULT '' COMMENT '收货人名称',
  `user_id` int(12) NOT NULL COMMENT '用户id',
  `adress` varchar(128) NOT NULL COMMENT '收货地址',
  `phone` varchar(16) NOT NULL COMMENT '号码',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='收货地址表';

-- ----------------------------
--  Table structure for `tt_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tt_order_detail`;
CREATE TABLE `tt_order_detail` (
  `detail_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `order_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `product_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `product_name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '当前价格,单位分',
  `product_quantity` int(11) NOT NULL COMMENT '数量',
  `product_icon` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '小图',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`detail_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `tt_order_detail`
-- ----------------------------
BEGIN;
INSERT INTO `tt_order_detail` VALUES ('1533269897014298295', '1533269897011208147', '1', 'zx750', '699.00', '1', '/image', '2018-07-26 18:53:10', '2018-07-26 18:53:15'), ('1533269897019845377', '1533269897011208147', '223', 'air Jordan11', '1499.00', '1', '/image/nike/aj', '2018-08-02 12:20:07', '2018-08-02 12:20:10'), ('1533270032405583475', '1533270032344672947', '1', 'zx750', '699.00', '1', '/image', '2018-08-03 12:20:32', '2018-08-03 12:20:32'), ('1533270032411555383', '1533270032344672947', '223', 'air Jordan11', '1499.00', '1', '/image/nike/aj', '2018-08-03 12:20:32', '2018-08-03 12:20:32'), ('1533276908068531073', '1533276908006684900', '1', 'zx750', '699.00', '1', '/image', '2018-08-03 14:15:08', '2018-08-03 14:15:08'), ('1533276908076148317', '1533276908006684900', '223', 'air Jordan11', '1499.00', '1', '/image/nike/aj', '2018-08-03 14:15:08', '2018-08-03 14:15:08'), ('1533283991120548532', '1533283991065286414', '1', 'zx750', '699.00', '1', '/image', '2018-08-03 16:13:11', '2018-08-03 16:13:11'), ('1533283991133342818', '1533283991065286414', '223', 'air Jordan11', '1499.00', '1', '/image/nike/aj', '2018-08-03 16:13:11', '2018-08-03 16:13:11'), ('1533284000808638666', '1533284000805780114', '1', 'zx750', '699.00', '1', '/image', '2018-08-03 16:13:20', '2018-08-03 16:13:20'), ('1533284000815113212', '1533284000805780114', '223', 'air Jordan11', '1499.00', '1', '/image/nike/aj', '2018-08-03 16:13:20', '2018-08-03 16:13:20'), ('1533291109893118139', '1533291109835344718', '1', 'zx750', '699.00', '1', '/image', '2018-08-03 18:11:49', '2018-08-03 18:11:49'), ('1533291109905139005', '1533291109835344718', '122', 'yezzy椰子500', '1999.00', '2', '/image/adidas', '2018-08-03 18:11:49', '2018-08-03 18:11:49'), ('1534156842741993175', '1534156842629805739', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:40:42', '2018-08-13 18:40:42'), ('1534156842769920715', '1534156842629805739', '122', 'yezzy椰子500', '1999.00', '2', '/image/adidas', '2018-08-13 18:40:42', '2018-08-13 18:40:42'), ('1534156849243642101', '1534156849241472415', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:40:49', '2018-08-13 18:40:49'), ('1534156849248340811', '1534156849241472415', '122', 'yezzy椰子500', '1999.00', '2', '/image/adidas', '2018-08-13 18:40:49', '2018-08-13 18:40:49'), ('1534157008716117921', '1534157008672274313', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:43:28', '2018-08-13 18:43:28'), ('1534157008725998641', '1534157008672274313', '122', 'yezzy椰子500', '1999.00', '2', '/image/adidas', '2018-08-13 18:43:28', '2018-08-13 18:43:28'), ('1534157118296833493', '1534157118294264003', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:45:18', '2018-08-13 18:45:18'), ('1534157118303245088', '1534157118294264003', '122', 'yezzy椰子500', '1999.00', '2', '/image/adidas', '2018-08-13 18:45:18', '2018-08-13 18:45:18'), ('1534157121135292587', '1534157121132384937', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:45:21', '2018-08-13 18:45:21'), ('1534157121143531115', '1534157121132384937', '122', 'yezzy椰子500', '1999.00', '2', '/image/adidas', '2018-08-13 18:45:21', '2018-08-13 18:45:21'), ('1534157244404520380', '1534157244403616536', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:47:24', '2018-08-13 18:47:24'), ('1534157244405951206', '1534157244403616536', '122', 'yezzy椰子500', '1999.00', '2', '/image/adidas', '2018-08-13 18:47:24', '2018-08-13 18:47:24'), ('1534157244415877680', '1534157244414137072', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:47:24', '2018-08-13 18:47:24'), ('1534157244416296094', '1534157244414137072', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:47:24', '2018-08-13 18:47:24'), ('1534157275337477975', '1534157275336371617', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:47:55', '2018-08-13 18:47:55'), ('1534157275340356020', '1534157275336371617', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:47:55', '2018-08-13 18:47:55'), ('1534157285585733609', '1534157285584886158', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:05', '2018-08-13 18:48:05'), ('1534157285587851884', '1534157285584886158', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:05', '2018-08-13 18:48:05'), ('1534157285816799070', '1534157285815549360', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:05', '2018-08-13 18:48:05'), ('1534157285818879085', '1534157285815549360', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:05', '2018-08-13 18:48:05'), ('1534157285981588464', '1534157285980142232', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:05', '2018-08-13 18:48:05'), ('1534157285984743631', '1534157285980142232', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:05', '2018-08-13 18:48:05'), ('1534157286156106175', '1534157286155948567', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286158597525', '1534157286155948567', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286333502894', '1534157286332455338', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286335255651', '1534157286332455338', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286497549654', '1534157286495178187', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286499575381', '1534157286495178187', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286653569737', '1534157286652487957', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286654782700', '1534157286652487957', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286827645187', '1534157286826930390', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286830112869', '1534157286826930390', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157287001317390', '1534157287000915424', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287002940135', '1534157287000915424', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287184579497', '1534157287183421545', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287188886088', '1534157287183421545', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287370961965', '1534157287369794124', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287372168268', '1534157287369794124', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287533284757', '1534157287532883569', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287535443137', '1534157287532883569', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287713591538', '1534157287709434575', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287716322552', '1534157287709434575', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287884902885', '1534157287883336594', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287886987152', '1534157287883336594', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157288069323194', '1534157288067129577', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288070732382', '1534157288067129577', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288232199878', '1534157288230220675', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288235495463', '1534157288230220675', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288400196564', '1534157288398976720', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288413360810', '1534157288398976720', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288569439814', '1534157288568906687', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288571181587', '1534157288568906687', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288738626460', '1534157288737213918', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288740771291', '1534157288737213918', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288898284342', '1534157288898281919', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288900992579', '1534157288898281919', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157289068134737', '1534157289067178513', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:48:09', '2018-08-13 18:48:09'), ('1534157289069533614', '1534157289067178513', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:48:09', '2018-08-13 18:48:09'), ('1534157555761773873', '1534157555760691292', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:52:35', '2018-08-13 18:52:35'), ('1534157555763570257', '1534157555760691292', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:52:35', '2018-08-13 18:52:35'), ('1534157591518519113', '1534157591469443487', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:53:11', '2018-08-13 18:53:11'), ('1534157591526256767', '1534157591469443487', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:53:11', '2018-08-13 18:53:11'), ('1534157600484454807', '1534157600481362083', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:53:20', '2018-08-13 18:53:20'), ('1534157600491838183', '1534157600481362083', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:53:20', '2018-08-13 18:53:20'), ('1534157607354692329', '1534157607352466257', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:53:27', '2018-08-13 18:53:27'), ('1534157607367956339', '1534157607352466257', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:53:27', '2018-08-13 18:53:27'), ('1534157607758669242', '1534157607756493553', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:53:27', '2018-08-13 18:53:27'), ('1534157607768642325', '1534157607756493553', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:53:27', '2018-08-13 18:53:27'), ('1534157608183653857', '1534157608181336425', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:53:28', '2018-08-13 18:53:28'), ('1534157608190644276', '1534157608181336425', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:53:28', '2018-08-13 18:53:28'), ('1534157608583237546', '1534157608581556497', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 18:53:28', '2018-08-13 18:53:28'), ('1534157608588474659', '1534157608581556497', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 18:53:28', '2018-08-13 18:53:28'), ('1534170773845514515', '1534170773778105261', '1', 'zx750', '699.00', '1', '/image', '2018-08-13 22:32:53', '2018-08-13 22:32:53'), ('1534170773870830589', '1534170773778105261', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-13 22:32:53', '2018-08-13 22:32:53'), ('1534217611251908214', '1534217611191385875', '1', 'zx750', '699.00', '1', '/image', '2018-08-14 11:33:31', '2018-08-14 11:33:31'), ('1534217611271955865', '1534217611191385875', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-14 11:33:31', '2018-08-14 11:33:31'), ('1534220603251969620', '1534220603249762821', '1', 'zx750', '699.00', '1', '/image', '2018-08-14 12:23:23', '2018-08-14 12:23:23'), ('1534220603260709407', '1534220603249762821', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-14 12:23:23', '2018-08-14 12:23:23'), ('1534225409777189007', '1534225409709452313', '1', 'zx750', '699.00', '1', '/image', '2018-08-14 13:43:29', '2018-08-14 13:43:29'), ('1534225409790255956', '1534225409709452313', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-14 13:43:29', '2018-08-14 13:43:29'), ('1534231865057273919', '1534231865054277243', '223', 'air Jordan11', '1499.00', '1', '/image/nike/aj', '2018-08-14 15:31:05', '2018-08-14 15:31:05'), ('1534231865070618019', '1534231865054277243', '233', 'AJ1', '1599.00', '1', '/image/nike/aj', '2018-08-14 15:31:05', '2018-08-14 15:31:05'), ('1534931870388274003', '1534931870385975778', '1', 'zx750', '699.00', '1', '/image', '2018-08-22 17:57:50', '2018-08-22 17:57:50'), ('1534931870412230081', '1534931870385975778', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-22 17:57:50', '2018-08-22 17:57:50'), ('1535011592307957484', '1535011592301988512', '1', 'zx750', '699.00', '1', '/image', '2018-08-23 16:06:32', '2018-08-23 16:06:32'), ('1535011592323567257', '1535011592301988512', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-23 16:06:32', '2018-08-23 16:06:32'), ('1535018045772975160', '1535018045764550149', '1', 'zx750', '699.00', '1', '/image', '2018-08-23 17:54:05', '2018-08-23 17:54:05'), ('1535018045781799006', '1535018045764550149', '122', 'yezzy椰子500', '1999.00', '1', '/image/adidas', '2018-08-23 17:54:05', '2018-08-23 17:54:05'), ('1535018615948433334', '1535018615945600901', '223', 'air Jordan11', '1499.00', '1', '/image/nike/aj', '2018-08-23 18:03:35', '2018-08-23 18:03:35'), ('1535018615960682431', '1535018615945600901', '233', 'AJ1', '1599.00', '1', '/image/nike/aj', '2018-08-23 18:03:35', '2018-08-23 18:03:35');
COMMIT;

-- ----------------------------
--  Table structure for `tt_order_master`
-- ----------------------------
DROP TABLE IF EXISTS `tt_order_master`;
CREATE TABLE `tt_order_master` (
  `order_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `buyer_name` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '买家名字',
  `buyer_phone` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '买家电话',
  `buyer_address` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '买家地址',
  `buyer_openid` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '买家id',
  `order_amount` decimal(8,2) NOT NULL COMMENT '订单总金额',
  `order_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单状态, 默认为新下单',
  `pay_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态, 默认未支付',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`order_id`),
  KEY `idx_buyer_openid` (`buyer_openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `tt_order_master`
-- ----------------------------
BEGIN;
INSERT INTO `tt_order_master` VALUES ('1533284000805780114', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2198.00', '0', '0', '2018-08-03 16:13:20', '2018-08-03 16:13:20'), ('1533291109835344718', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '4697.00', '2', '0', '2018-08-03 18:11:49', '2018-08-03 18:18:58'), ('1534156842629805739', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '4697.00', '0', '0', '2018-08-13 18:40:42', '2018-08-13 18:40:42'), ('1534156849241472415', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '4697.00', '0', '0', '2018-08-13 18:40:49', '2018-08-13 18:40:49'), ('1534157008672274313', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '4697.00', '0', '0', '2018-08-13 18:43:28', '2018-08-13 18:43:28'), ('1534157118294264003', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '4697.00', '0', '0', '2018-08-13 18:45:18', '2018-08-13 18:45:18'), ('1534157121132384937', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '4697.00', '0', '0', '2018-08-13 18:45:21', '2018-08-13 18:45:21'), ('1534157244403616536', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '4697.00', '0', '0', '2018-08-13 18:47:24', '2018-08-13 18:47:24'), ('1534157244414137072', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:47:24', '2018-08-13 18:47:24'), ('1534157275336371617', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:47:55', '2018-08-13 18:47:55'), ('1534157285584886158', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:05', '2018-08-13 18:48:05'), ('1534157285815549360', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:05', '2018-08-13 18:48:05'), ('1534157285980142232', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:05', '2018-08-13 18:48:05'), ('1534157286155948567', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286332455338', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286495178187', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286652487957', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157286826930390', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:06', '2018-08-13 18:48:06'), ('1534157287000915424', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287183421545', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287369794124', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287532883569', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287709434575', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157287883336594', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:07', '2018-08-13 18:48:07'), ('1534157288067129577', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288230220675', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288398976720', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288568906687', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288737213918', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157288898281919', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:08', '2018-08-13 18:48:08'), ('1534157289067178513', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:48:09', '2018-08-13 18:48:09'), ('1534157555760691292', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:52:35', '2018-08-13 18:52:35'), ('1534157591469443487', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:53:11', '2018-08-13 18:53:11'), ('1534157600481362083', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:53:20', '2018-08-13 18:53:20'), ('1534157607352466257', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:53:27', '2018-08-13 18:53:27'), ('1534157607756493553', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:53:27', '2018-08-13 18:53:27'), ('1534157608181336425', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:53:28', '2018-08-13 18:53:28'), ('1534157608581556497', '收货人员', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 18:53:28', '2018-08-13 18:53:28'), ('1534170773778105261', '收货人员mq', '135757557', '这是收货地址mq', 'wx1827218312378', '2698.00', '0', '0', '2018-08-13 22:32:53', '2018-08-13 22:32:53'), ('1534217611191385875', '收货人员mq', '135757557', '这是收货地址mq', 'wx1827218312378', '2698.00', '0', '0', '2018-08-14 11:33:31', '2018-08-14 11:33:31'), ('1534220603249762821', '收货人员mq', '135757557', '这是收货地址mq', 'wx1827218312378', '2698.00', '0', '0', '2018-08-14 12:23:23', '2018-08-14 12:23:23'), ('1534225409709452313', '收货人员mq', '135757557', '这是收货地址mq', 'wx1827218312378', '2698.00', '0', '0', '2018-08-14 13:43:29', '2018-08-14 13:43:29'), ('1534231865054277243', '收货人员mq', '135757557', '这是收货地址mq', 'wx1827218312378', '3098.00', '0', '0', '2018-08-14 15:31:05', '2018-08-14 15:31:05'), ('1534931870385975778', '周先生', '135757557', '这是收货地址', 'wx1827218312378', '2698.00', '2', '0', '2018-08-22 17:57:50', '2018-08-22 17:58:13'), ('1535011592301988512', '周先生', '135757557', '这是收货地址', '1534325821745303440', '2698.00', '0', '0', '2018-08-23 16:06:32', '2018-08-23 16:06:32'), ('1535018045764550149', '周先生', '135757557', '这是收货地址', '1534325821745303440', '2698.00', '0', '0', '2018-08-23 17:54:05', '2018-08-23 17:54:05'), ('1535018615945600901', '收货人员mq', '135757557', '这是收货地址mq', 'wx1827218312378', '3098.00', '0', '0', '2018-08-23 18:03:35', '2018-08-23 18:03:35');
COMMIT;

-- ----------------------------
--  Table structure for `tt_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `tt_product_category`;
CREATE TABLE `tt_product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '类目名字',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `uqe_category_type` (`category_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `tt_product_category`
-- ----------------------------
BEGIN;
INSERT INTO `tt_product_category` VALUES ('1', '休闲鞋', '1', '2018-07-26 17:17:53', '2018-07-26 17:17:56'), ('2', '运动鞋', '2', '2018-07-26 17:21:08', '2018-07-26 17:21:11'), ('3', 'air Jordan', '11', '2018-08-02 11:07:22', '2018-08-02 11:07:26'), ('4', 'yezzy ', '22', '2018-08-02 11:07:59', '2018-08-02 11:08:01');
COMMIT;

-- ----------------------------
--  Table structure for `tt_product_info`
-- ----------------------------
DROP TABLE IF EXISTS `tt_product_info`;
CREATE TABLE `tt_product_info` (
  `product_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `product_name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '单价',
  `product_stock` int(11) NOT NULL COMMENT '库存',
  `product_description` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `product_icon` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '小图',
  `product_status` tinyint(3) DEFAULT '0' COMMENT '商品状态,0正常1下架',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `tt_product_info`
-- ----------------------------
BEGIN;
INSERT INTO `tt_product_info` VALUES ('1', 'zx750', '699.00', '8', 'zx系列', '/image', '0', '1', '2018-07-26 18:53:10', '2018-08-23 17:54:05'), ('111', 'zx630', '899.00', '110', 'zx系列', '/image', '0', '1', '2018-08-10 15:04:55', '2018-08-13 18:47:25'), ('122', 'yezzy椰子500', '1999.00', '8', '三叶草', '/image/adidas', '0', '22', '2018-08-02 12:21:30', '2018-08-23 17:54:05'), ('223', 'air Jordan11', '1499.00', '93', 'air Jordan', '/image/nike/aj', '0', '11', '2018-08-02 12:20:07', '2018-08-23 18:03:35'), ('233', 'AJ1', '1599.00', '95', 'air Jordan', '/image/nike/aj', '0', '11', '2018-08-02 12:19:03', '2018-08-23 18:03:35');
COMMIT;

-- ----------------------------
--  Table structure for `tt_user`
-- ----------------------------
DROP TABLE IF EXISTS `tt_user`;
CREATE TABLE `tt_user` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '用户id',
  `user_name` varchar(32) COLLATE utf8_bin DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8_bin DEFAULT '' COMMENT '密码',
  `role` tinyint(1) NOT NULL COMMENT '1买家 2管理员',
  `wx_openid` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'wxopenid',
  `head_image` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '头像',
  `login_count` int(11) DEFAULT NULL COMMENT '登陆次数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `tt_user`
-- ----------------------------
BEGIN;
INSERT INTO `tt_user` VALUES ('1534325821745303440', 'zzl', '77efb622dd4b2893e9979da5b629d529', '1', null, '/image', '0', '2018-08-15 17:37:02', '2018-08-15 17:37:01'), ('1534325856245904736', 'zl', '77efb622dd4b2893e9979da5b629d529', '1', null, '/image', '0', '2018-08-15 17:37:36', '2018-08-15 17:37:36'), ('1534326559746745347', 'llz', '77efb622dd4b2893e9979da5b629d529', '1', null, '/image', '0', '2018-08-15 17:49:20', '2018-08-15 17:49:19'), ('1534386880674499131', 'qwe', 'b7797cce01b4b131b433b6acf4add449', '1', null, '/image', '0', '2018-08-16 10:34:41', '2018-08-16 10:34:40');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
